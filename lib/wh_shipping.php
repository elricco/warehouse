<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of wh_shipping
 *
 * @author wolfgang
 */
class wh_shipping {
    
    public static function get_cost() {
        
        // Nach Stück
        if (rex_config::get('warehouse','shipping_mode') == 'pieces') {
            $cart = warehouse::get_cart();
            $sum_pcs = 0;
            foreach ($cart as $ci) {
                if ((int) $ci['free_shipping'] < 1) {
                    $sum_pcs += $ci['count'];
                }
            }
            if ($shipping = self::check_val($sum_pcs)) {
                return $shipping;
            }
        // Nach Betrag (Brutto)
        } elseif (rex_config::get('warehouse','shipping_mode') == 'order_total') {
            $sum_brutto = warehouse::get_sub_total();
            $shipping = self::check_val($sum_brutto);
            if ($shipping !== false) {
                return $shipping;
            }            
        }
        return rex_config::get('warehouse', 'shipping');
    }
    
    /**
     * Führt den Vergleich auf Basis der in den Settings gesetzten json Parameter durch
     * 
     * @param type $check_val
     * @return boolean
     */
    private static function check_val($check_val) {
        $shipping_params = json_decode(rex_config::get('warehouse','shipping_parameters'));
        foreach ($shipping_params as $param) {
            switch ($param[0]) {
                case '>':
                    if ((int) $check_val > (int) $param[1]) {
                        return $param[2];
                    }
                    break;
                case '>=':
                    if ((int) $check_val >= (int) $param[1]) {
                        return $param[2];
                    }
                    break;
                case '<':
                    if ($check_val < $param[1]) {
                        return $param[2];
                    }
                    break;
                case '<=':
                    if ($check_val <= $param[1]) {
                        return $param[2];
                    }
                    break;
                case '=':
                    if ($check_val == $param[1]) {
                        return $param[2];
                    }
                    break;
            }
        }
        return false;        
    }
    
    
}
