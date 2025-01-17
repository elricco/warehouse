<?php

class wh_articles extends \rex_yform_manager_dataset {

    public function get_val($key) {
        if ($this->{$key}) {
            return $this->{$key};
        } else {
            return 'nicht gefunden';
        }
    }

    public function get_art_id() {
        if (isset($this->var_id)) {
            return $this->id . '__' . $this->var_id;
        } else {
            return $this->id;
        }
    }

    public function get_name() {
        if (isset($this->var_id)) {
            return $this->art_name . ' - ' . $this->var_name;
        } else {
            return $this->art_name;
        }
    }

    public function get_image() {
        if (isset($this->var_id) && $this->var_image) {
            return $this->var_image;
        } else {
            return $this->image;
        }
    }

    public function get_gallery() {
        if ($this->var_id && $this->var_gallery) {
            return $this->var_gallery;
        } else {
            return $this->gallery;
        }
    }

    public function get_price($with_currency = false) {
        if ($with_currency) {
            return rex_config::get('warehouse', 'currency_symbol') . '&nbsp;<span class="product_price">' . (isset($this->var_price) && $this->var_price ? $this->var_price : $this->price) . '</span>';
        }
        return $this->var_price ?: $this->price;
    }

    public function get_price_netto() {
        $brutto_price = $this->get_price();
        $tax = rex_config::get('warehouse', 'tax_value');
        $factor = (100 + $tax) / 100;
        return round($brutto_price / $factor, 2);
    }

    public function get_tax_value() {
        return $this->get_price() - $this->get_price_netto();
    }

    /**
     * Bei Variantenartikeln: articleid__varianteid
     * @param type $article_id
     * @return type
     */
    public static function get_article($article_id = '') {
        if (strpos($article_id, '__')) {
            $art_id = explode('__', $article_id);
        } else {
            $art_id = [$article_id];
        }
//        dump($art_id); exit;
        return self::get_articles(0, $art_id, true);
    }

    /**
     * 
     * @param type $cat_id  - ausgewählt in der Moduleingabe
     * @param type $article_id
     * @param type $find_one
     * @param type $with_attributes
     * @param type $articles_only - liefert nur Artikel - keine Varianten
     * @return type
     */
    public static function get_articles($cat_id = 0, $article_id = [], $find_one = false, $with_attributes = false, $articles_only = false) {
        $clang = rex_clang::getCurrentId();
        if ($articles_only) {
            $data = self::query()
                    ->alias('art')
                    ->leftJoin('rex_wh_categories', 'cat', 'art.category_id', 'cat.id')
                    ->select('art.name_' . $clang, 'art_name')
                    ->select('cat.name_' . $clang, 'cat_name')
                    ->select('cat.id', 'cat_id')
                    ->select('art.description_' . $clang, 'art_description')
                    ->select('art.longtext_' . $clang, 'art_longtext')
                    ->orderBy('art.prio')
                    ->where('art.status',1)
            ;
        } else {
            $data = self::query()
                    ->alias('art')
                    ->leftJoin('rex_wh_article_variants', 'var', 'art.id', 'var.parent_id')
                    ->leftJoin('rex_wh_categories', 'cat', 'art.category_id', 'cat.id')
                    ->select('art.name_' . $clang, 'art_name')
                    ->select('art.description_' . $clang, 'art_description')
                    ->select('art.longtext_' . $clang, 'art_longtext')
                    ->select('var.name_' . $clang, 'var_name')
                    ->select('var.image', 'var_image')
                    ->select('var.freeprice', 'var_freeprice')
                    ->select('var.id', 'var_id')
                    ->select('var.whvarid', 'var_whvarid')
                    ->select('var.price', 'var_price')
                    ->select('var.gallery', 'var_gallery')
                    ->select('cat.name_' . $clang, 'cat_name')
                    ->select('cat.id', 'cat_id')
                    ->orderBy('art.prio')
                    ->orderBy('var.prio')
                    ->where('art.status',1)
            ;
        }



        if ($cat_id) {
//            $data->where('art.category_id', $cat_id);
            $data->whereRaw('FIND_IN_SET(:cat_id,art.category_id)', ['cat_id'=>$cat_id]);
        }
        if (count($article_id) == 2) {
            $data->where('art.id', $article_id[0]);
            $data->where('var.id', $article_id[1]);
        } elseif (count($article_id) == 1) {
            $data->where('art.id', $article_id[0]);
        }

//       dump($data->getQuery()); exit;

        if ($find_one) {
            return $data->findOne();
        }

        $articles = $data->find();

        // Attribute nur abrufen, wenn sie gebraucht werden
        if ($with_attributes) {
            foreach ($articles as $k => $v) {
                $articles[$k]->attributes = self::get_attributes_for_article($v);
            }
        }

        return $articles;
    }

    public function get_variants() {
        
    }
    
    public static function get_selected_attributes($article, $attr_ids) {
        // wenn in der attr_id ## vorkommen, sind sie aus einem Select und müssen erst entschlüsselt werden.
        // 1. Wert ist wh_attributes.id, 2. Wert der Value
        $clang = rex_clang::getCurrentId();
        $widget_data = self::query(rex::getTable('wh_attribute_values'))
            ->alias('av')
            ->leftJoin('rex_wh_attributes', 'at', 'av.attribute_id', 'at.id')
            ->select('at.name_' . $clang, 'at_name')
            ->select('at.unit', 'at_unit')
            ->select('at.type', 'at_type')
            ->select('at.orderable', 'at_orderable')
            ->select('at.whattrid', 'at_whattrid')
            ->whereRaw('FIND_IN_SET (value, "'.implode(',',$attr_ids).'")')
            ->where('av.article_id', $article->id)
            ->orderBy('at.prio')
            ->orderBy('av.prio')
            ->find();
        $select_data = self::select_selected_attributes($attr_ids);
        return [$widget_data,$select_data];
    }
    
    
    public static function select_selected_attributes ($attr_ids) {
        // wenn in der attr_id ~~ vorkommen, sind sie aus einem Select und müssen erst entschlüsselt werden.
        // 1. Wert ist wh_attributes.id, 2. Wert der Value
        $result = [];
        foreach ($attr_ids as $k=>$attr_id) {
            // unpassende rauswerfen
            if (strpos($attr_id,'~') === false) {
                continue;
            }
            list($main_id,$attr_val) = explode('~~',$attr_id);
            $result[] = self::get_attribute($main_id,$attr_val);
        }
        return $result;        
    }
    
    public static function get_attribute($id,$attr_val) {
        $at = self::query(rex::getTable('wh_attributes'))
            ->where('id', $id)
            ->findOne()
            ;
        $values = self::attr_to_array($at->values);
        $at->value = $values[$attr_val];
        $at->attr_id = $attr_val;
        return $at;        
    }
    
    

    public static function get_attributes_for_article($article) {
//        dump($article->id); exit;
        $clang = rex_clang::getCurrentId();
        
        $atg = self::query(rex::getTable('wh_attributegroups'))
            ->where('id', $article->attributegroup_id)
            ->findOne()
            ;
        
        if (!$atg) {
            return [];
        }
        
        $at = self::query(rex::getTable('wh_attributes'))
            ->alias('at')
            ->whereRaw('FIND_IN_SET (id, "'.$atg->attributes.'")')
            ->find()
            ;
        
        $outdata = [];
        
        foreach ($at as $k=>$attr) {
            $data = self::query(rex::getTable('wh_attribute_values'))
                ->alias('av')
                ->leftJoin('rex_wh_attributes', 'at', 'av.attribute_id', 'at.id')
                ->select('at.name_' . $clang, 'at_name')
                ->select('at.unit', 'at_unit')
                ->select('at.type', 'at_type')
                ->select('at.orderable', 'at_orderable')
                ->select('at.whattrid', 'at_whattrid')
                ->where('av.attribute_id', $attr->id)
                ->where('av.article_id', $article->id)
                ->orderBy('at.prio')
                ->orderBy('av.prio')
                ->find();
            $outdata[] = [
                'attr'=>$attr->getData(),
                'data'=>$data
                ];
        }
        
        return $outdata;
    }
    
    public static function attr_to_array($values) {
        $a1 = explode('|',$values);
        $out = [];
        foreach ($a1 as $v) {
            $a2 = explode('=',$v);
            if (isset($a2[1])) {
                $out[$a2[1]] = $a2[0];
            } else {
                $out[$a2[0]] = $a2[0];                
            }
        }
        return $out;
    }
    

}
