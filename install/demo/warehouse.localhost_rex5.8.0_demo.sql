## Redaxo Database Dump Version 5
## Prefix rex_
## charset utf-8

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `rex_action`;
CREATE TABLE `rex_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `preview` text,
  `presave` text,
  `postsave` text,
  `previewmode` tinyint(4) DEFAULT NULL,
  `presavemode` tinyint(4) DEFAULT NULL,
  `postsavemode` tinyint(4) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_article`;
CREATE TABLE `rex_article` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `catname` varchar(255) NOT NULL,
  `catpriority` int(10) unsigned NOT NULL,
  `startarticle` tinyint(1) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `template_id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  `yrewrite_url` text NOT NULL,
  `yrewrite_canonical_url` text NOT NULL,
  `yrewrite_priority` varchar(5) NOT NULL,
  `yrewrite_changefreq` varchar(10) NOT NULL,
  `yrewrite_title` varchar(191) NOT NULL,
  `yrewrite_description` text NOT NULL,
  `yrewrite_index` tinyint(1) NOT NULL,
  `art_online_from` text,
  `art_online_to` text,
  `art_description` text,
  `cat_menu_type` varchar(255) DEFAULT '',
  `ycom_auth_type` int(11) NOT NULL,
  `ycom_group_type` int(11) NOT NULL,
  `ycom_groups` text NOT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `find_articles` (`id`,`clang_id`),
  KEY `id` (`id`),
  KEY `clang_id` (`clang_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article` WRITE;
/*!40000 ALTER TABLE `rex_article` DISABLE KEYS */;
INSERT INTO `rex_article` VALUES 
  (1,1,0,'Produkte','Produkte',2,1,1,'|',1,'2019-07-14 18:21:41','2019-07-31 10:45:05',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','|1|2|',0,0,''),
  (2,2,0,'Shop','Shop',7,1,1,'|',1,'2019-07-14 18:21:51','2019-07-25 19:06:35',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','|0|',0,0,''),
  (3,3,2,'Warenkorb','Shop',0,0,2,'|2|',1,'2019-07-14 18:22:53','2019-07-25 19:06:35',1,1,'wolfgang','wolfgang',0,'','','','weekly','','',-1,'','','','',0,0,''),
  (4,4,2,'Adresseingabe','Shop',0,0,3,'|2|',1,'2019-07-14 18:23:04','2019-07-25 19:06:35',1,1,'wolfgang','wolfgang',0,'','','','weekly','','',-1,'','','','',0,0,''),
  (5,5,2,'Zusammenfassung','Shop',0,0,4,'|2|',1,'2019-07-14 18:23:09','2019-07-25 19:06:35',1,1,'wolfgang','wolfgang',0,'','','','weekly','','',-1,'','','','',0,0,''),
  (6,6,2,'Paypal Start','Shop',0,0,5,'|2|',1,'2019-07-14 18:23:13','2019-07-25 19:06:35',1,1,'wolfgang','wolfgang',0,'','','','weekly','','',-1,'','','','',0,0,''),
  (7,7,2,'Paypal Fehler','Shop',0,0,6,'|2|',1,'2019-07-14 18:23:18','2019-07-25 19:06:35',1,1,'wolfgang','wolfgang',0,'','','','weekly','','',-1,'','','','',0,0,''),
  (8,8,2,'Paypal Zahlung erfolgt','Shop',0,0,7,'|2|',1,'2019-07-14 18:23:24','2019-07-25 19:06:35',1,1,'wolfgang','wolfgang',0,'','','','weekly','','',-1,'','','','',0,0,''),
  (9,9,2,'Danke','Shop',0,0,8,'|2|',1,'2019-07-14 18:23:28','2019-08-01 11:08:41',1,1,'wolfgang','wolfgang',0,'','','','weekly','','',-1,'','','','',0,0,''),
  (10,10,0,'Home','Home',1,1,1,'|',1,'2019-07-14 18:25:50','2019-08-03 10:15:48',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','|1|',0,0,''),
  (11,11,0,'404 - Seite nicht gefunden','',0,0,1,'|',1,'2019-07-14 18:25:57','2019-07-14 18:26:52',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (12,12,0,'Versandkosten','Versandkosten',6,1,1,'|',1,'2019-07-29 13:17:24','2019-08-03 16:46:09',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','|4|',0,0,''),
  (13,13,0,'Impressum','Impressum',3,1,1,'|',1,'2019-07-31 10:54:21','2019-08-01 09:44:45',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','|4|',0,0,''),
  (14,14,0,'Datenschutz','Datenschutz',4,1,1,'|',1,'2019-07-31 11:04:14','2019-08-01 10:23:52',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','|4|',0,0,''),
  (15,15,0,'AGB','AGB',5,1,1,'|',1,'2019-07-31 15:13:06','2019-08-01 10:48:36',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','|4|',0,0,''),
  (16,16,2,'Giropay Start','Shop',0,0,9,'|2|',1,'2019-08-22 12:40:29','2019-08-22 12:55:22',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (17,17,2,'Giropay Fehler','Shop',0,0,10,'|2|',1,'2019-08-22 12:40:40','2019-08-22 12:41:00',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (18,18,2,'Giropay Notify','Shop',0,0,11,'|2|',1,'2019-08-22 12:40:56','2019-09-02 08:17:01',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (19,19,0,'Community','Community',8,1,1,'|',0,'2019-09-01 11:30:47','2019-09-01 11:30:47',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','||',0,0,''),
  (20,20,19,'Login','Community',0,0,2,'|19|',1,'2019-09-01 11:30:54','2019-09-01 11:47:30',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (21,21,19,'Registrieren','Community',0,0,3,'|19|',1,'2019-09-01 11:31:01','2019-09-01 16:39:25',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (22,22,19,'Registrierungsbestätigung','Community',0,0,4,'|19|',1,'2019-09-01 11:31:07','2019-09-01 11:49:08',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (23,23,19,'Logout','Community',0,0,5,'|19|',1,'2019-09-01 11:31:13','2019-09-01 11:51:27',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (24,24,19,'Profil','Community',0,0,6,'|19|',1,'2019-09-01 11:31:17','2019-09-01 16:54:23',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (25,25,19,'Meine Bestellungen','Community',0,0,7,'|19|',1,'2019-09-01 11:31:22','2019-09-01 11:31:33',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (26,26,19,'Willkommen','Community',0,0,8,'|19|',1,'2019-09-01 11:34:43','2019-09-02 07:42:21',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (27,27,19,'Ausgeloggt','Community',0,0,9,'|19|',1,'2019-09-01 11:35:12','2019-09-01 11:52:04',1,1,'wolfgang','wolfgang',0,'','','','weekly','','',-1,'','','','',0,0,''),
  (28,28,19,'Neues Passwort vergeben','Community',0,0,10,'|19|',1,'2019-09-01 11:35:41','2019-09-01 11:50:01',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,''),
  (29,29,19,'Passwort zurücksetzen bestätigen','Community',0,0,11,'|19|',1,'2019-09-01 11:36:39','2019-09-01 11:50:52',1,1,'wolfgang','wolfgang',0,'','','','','','',0,'','','','',0,0,'');
/*!40000 ALTER TABLE `rex_article` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_article_slice`;
CREATE TABLE `rex_article_slice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clang_id` int(10) unsigned NOT NULL,
  `ctype_id` int(10) unsigned NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `value1` mediumtext,
  `value2` mediumtext,
  `value3` mediumtext,
  `value4` mediumtext,
  `value5` mediumtext,
  `value6` mediumtext,
  `value7` mediumtext,
  `value8` mediumtext,
  `value9` mediumtext,
  `value10` mediumtext,
  `value11` mediumtext,
  `value12` mediumtext,
  `value13` mediumtext,
  `value14` mediumtext,
  `value15` mediumtext,
  `value16` mediumtext,
  `value17` mediumtext,
  `value18` mediumtext,
  `value19` mediumtext,
  `value20` mediumtext,
  `media1` varchar(255) DEFAULT NULL,
  `media2` varchar(255) DEFAULT NULL,
  `media3` varchar(255) DEFAULT NULL,
  `media4` varchar(255) DEFAULT NULL,
  `media5` varchar(255) DEFAULT NULL,
  `media6` varchar(255) DEFAULT NULL,
  `media7` varchar(255) DEFAULT NULL,
  `media8` varchar(255) DEFAULT NULL,
  `media9` varchar(255) DEFAULT NULL,
  `media10` varchar(255) DEFAULT NULL,
  `medialist1` text,
  `medialist2` text,
  `medialist3` text,
  `medialist4` text,
  `medialist5` text,
  `medialist6` text,
  `medialist7` text,
  `medialist8` text,
  `medialist9` text,
  `medialist10` text,
  `link1` varchar(10) DEFAULT NULL,
  `link2` varchar(10) DEFAULT NULL,
  `link3` varchar(10) DEFAULT NULL,
  `link4` varchar(10) DEFAULT NULL,
  `link5` varchar(10) DEFAULT NULL,
  `link6` varchar(10) DEFAULT NULL,
  `link7` varchar(10) DEFAULT NULL,
  `link8` varchar(10) DEFAULT NULL,
  `link9` varchar(10) DEFAULT NULL,
  `link10` varchar(10) DEFAULT NULL,
  `linklist1` text,
  `linklist2` text,
  `linklist3` text,
  `linklist4` text,
  `linklist5` text,
  `linklist6` text,
  `linklist7` text,
  `linklist8` text,
  `linklist9` text,
  `linklist10` text,
  `article_id` int(10) unsigned NOT NULL,
  `module_id` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(11) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `slice_priority` (`article_id`,`priority`,`module_id`),
  KEY `clang_id` (`clang_id`),
  KEY `article_id` (`article_id`),
  KEY `find_slices` (`clang_id`,`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_article_slice` WRITE;
/*!40000 ALTER TABLE `rex_article_slice` DISABLE KEYS */;
INSERT INTO `rex_article_slice` VALUES 
  (1,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',1,5,'2019-07-14 21:42:00','2019-07-14 21:42:00','wolfgang','wolfgang',0,1),
  (2,1,1,1,'','[\"4\"]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',3,1,'2019-07-14 21:42:28','2019-07-14 21:42:28','wolfgang','wolfgang',0,1),
  (3,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',4,2,'2019-07-14 21:45:32','2019-07-14 21:45:32','wolfgang','wolfgang',0,1),
  (4,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',5,4,'2019-07-14 21:49:56','2019-07-14 21:49:56','wolfgang','wolfgang',0,1),
  (5,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',6,6,'2019-07-14 21:56:52','2019-07-14 21:56:52','wolfgang','wolfgang',0,1),
  (6,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',8,7,'2019-07-14 22:04:57','2019-07-14 22:04:57','wolfgang','wolfgang',0,1),
  (7,1,1,1,'<h2>Impressum</h2>\r\n<h3>Betreiber dieser Seite</h3>\r\n<p>Wolfgang Bund<br />Am Tressower See 1<br />23966 Tressow<br />Telefon 03841 / 6408571<br />E-Mail <a href=\"mailto:wb@dtp-net.de\">wb@dtp-net.de</a><br /><a href=\"https://agile-websites.de\" target=\"_blank\" rel=\"noopener\">https://agile-websites.de</a></p>\r\n<h3>Content Management System</h3>\r\n<p><a href=\"https://redaxo.org\" target=\"_blank\" rel=\"noopener\">REDAXO Opensource CMS</a></p>\r\n<p>Demoseite für das Shop AddOn warehouse<br /><a href=\"https://github.com/dtpop/warehouse\" target=\"_blank\" rel=\"noopener\">Github</a></p>\r\n<p><strong>Verwendete AddOns</strong><br />Sprog, Url2, YForm, YRewrite, Developer, Theme, Quicknavigation, TinyMCE, Structure Tweaks, Blöcks und andere. Danke an alle AddOn- und Core-Entwickler.</p>\r\n<p>Inhalte dürfen für Demozwecke verwendet werden. Bei Übernahme von Inhalten (Bild, Text, Layout) für eigene Zwecke bitte einen Link mit Hinweis im Impressum setzen.</p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',13,8,'2019-08-01 09:40:42','2019-08-01 09:44:45','wolfgang','wolfgang',0,1),
  (8,1,1,1,'<h2>Datenschutztext</h2>\r\n<h3>Vorbemerkung</h3>\r\n<p>Das meiste, was Sie im folgenden lesen können ist juristischer Stuss und hat für den wirklichen Datenschutz überhaupt keinen Wert. Daher schreibe ich Ihnen hier erstmal auf, was ich mit Ihren Daten mache. Selbstverständlich werden ihre Daten gespeichert - das ist ja notwendig, damit ich die Bestellung ausführen kann. Die Daten werden aber nur insoweit gespeichert und verarbeitet, wie dies sinnvoll ist. Ich betreibe also keinen Datenhandel oder sage einem Kumpel: Du ich hab da noch ein paar E-Mail Adressen aus meinem Webshop. Ja, die Daten landen auch beim Serverbetreiber (Hoster). Ich vertraue dem Hoster, dass er keinen Quatsch mit den Daten macht. Wenn er das machen würde, wäre er auch schön dumm, denn das würde raus kommen und dann könnte er seinen Laden schnell mal dicht machen.</p>\r\n<p>Hier wird kein Google Analytics, kein Facebook oder sonstein Schmäh eingesetzt, der mehr oder weniger auf Datensammlung, Datenverarbeitung, Datenauswertung, Nutzerprofiling spezialisiert ist und damit Geld macht. Sie können hier also relativ entspannt einkaufen.</p>\r\n<p>Generell hat bei mir Datenschutz einen hohen Stellenwert, weshalb ich die DSGVO auch begrüße. Die Umsetzung ist leider wenig wirkungsvoll vollzogen worden, weshalb Sie davon ausgehen können, dass Sie nach wie vor als gläserner Besucher durchs Web surfen. Die Datenkraken wissen, wie sie den Datenschutz in ihrem Sinne verbiegen und aushebeln können.</p>\r\n<p>Wenn Sie Fragen haben, dürfen Sie sich auch gerne bei mir melden. Mit Webentwicklung kenne ich mich seit dem vorigen Jahrtausend aus.</p>\r\n<h3>Hier der teilweise kommentierte Text</h3>\r\n<p>Wir informieren Sie nachfolgend gemäß den gesetzlichen Vorgaben des Datenschutzrechts (insb. gemäß BDSG n.F. und der europäischen Datenschutz-Grundverordnung ‚DS-GVO‘) über die Art, den Umfang und Zweck der Verarbeitung personenbezogener Daten durch unser Unternehmen. Diese Datenschutzerklärung gilt auch für unsere Websites und Sozial-Media-Profile. Bezüglich der Definition von Begriffen wie etwa „personenbezogene Daten“ oder „Verarbeitung“ verweisen wir auf Art. 4 DS-GVO.</p>\r\n<p><strong>Name und Kontaktdaten des / der Verantwortlichen</strong><br />Mein Verantwortlicher i.S.d. Art. 4 Zif. 7 DS-GVO ist:</p>\r\n<p>Wolfgang Bund, Am Tressower See 1, 23966 Tressow.<br /><br /></p>\r\n<p>Die betroffenen Personen werden zusammenfassend als „Nutzer“ bezeichnet.</p>\r\n<p><br /><strong>Rechtsgrundlagen der Verarbeitung personenbezogener Daten</strong></p>\r\n<p>Nachfolgend Informieren wir Sie über die Rechtsgrundlagen der Verarbeitung personenbezogener Daten:</p>\r\n<ol>\r\n<li>Wenn wir Ihre Einwilligung für die Verarbeitung personenbezogenen Daten eingeholt haben, ist Art. 6 Abs. 1 S. 1 lit. a) DS-GVO Rechtsgrundlage.</li>\r\n<li>Ist die Verarbeitung zur Erfüllung eines Vertrags oder zur Durchführung vorvertraglicher Maßnahmen erforderlich, die auf Ihre Anfrage hin erfolgen, so ist Art. 6 Abs. 1 S. 1 lit. b) DS-GVO Rechtsgrundlage.</li>\r\n<li>Ist die Verarbeitung zur Erfüllung einer rechtlichen Verpflichtung erforderlich, der wir unterliegen (z.B. gesetzliche Aufbewahrungspflichten), so ist Art. 6 Abs. 1 S. 1 lit. c) DS-GVO Rechtsgrundlage.</li>\r\n<li>Ist die Verarbeitung erforderlich, um lebenswichtige Interessen der betroffenen Person oder einer anderen natürlichen Person zu schützen, so ist Art. 6 Abs. 1 S. 1 lit. d) DS-GVO Rechtsgrundlage.</li>\r\n<li>Ist die Verarbeitung zur Wahrung unserer oder der berechtigten Interessen eines Dritten erforderlich und überwiegen diesbezüglich Ihre Interessen oder Grundrechte und Grundfreiheiten nicht, so ist Art. 6 Abs. 1 S. 1 lit. f) DS-GVO Rechtsgrundlage.</li>\r\n</ol>\r\n<p><br /><strong>Weitergabe personenbezogener Daten an Dritte und Auftragsverarbeiter</strong></p>\r\n<p>Ohne Ihre Einwilligung geben wir grundsätzlich keine Daten an Dritte weiter. Sollte dies doch der Fall sein, dann erfolgt die Weitergabe auf der Grundlage der zuvor genannten Rechtsgrundlagen z.B. bei der Weitergabe von Daten an Online-Paymentanbieter zur Vertragserfüllung oder aufgrund gerichtlicher Anordnung oder wegen einer gesetzlichen Verpflichtung zur Herausgabe der Daten zum Zwecke der Strafverfolgung, zur Gefahrenabwehr oder zur Durchsetzung der Rechte am geistigen Eigentum.<br />Dieser Standardsatz ist natürlich Quatsch. Denn selbstverständlich gebe ich Daten weiter. Beispielsweise wenn ich eine Bestellung erhalte. Dann schreibe ich ihre ganz persönlichen Adressdaten auf eine Umschlag und übergebe diesen Umschlag an ein Versandunternehmen. Ich habe keinen Einfluss darauf, was das Versandunternehmen dann mit ihren ganz persönlichen Adressdaten macht. <br />Wir setzen zudem Auftragsverarbeiter (externe Dienstleister z.B. zum Webhosting unserer Websites und Datenbanken) zur Verarbeitung Ihrer Daten ein. Wenn im Rahmen einer Vereinbarung zur Auftragsverarbeitung an die Auftragsverarbeiter Daten weitergegeben werden, erfolgt dies immer nach Art. 28 DS-GVO. Wir wählen dabei unsere Auftragsverarbeiter sorgfältig aus, kontrollieren diese regelmäßig und haben uns ein Weisungsrecht hinsichtlich der Daten einräumen lassen. Zudem müssen die Auftragsverarbeiter geeignete technische und organisatorische Maßnahmen getroffen haben und die Datenschutzvorschriften gem. BDSG n.F. und DS-GVO einhalten</p>\r\n<p><br /><strong>Datenübermittlung in Drittstaaten</strong></p>\r\n<p>Durch die Verabschiedung der europäischen Datenschutz-Grundverordnung (DS-GVO) wurde eine einheitliche Grundlage für den Datenschutz in Europa geschaffen. Ihre Daten werden daher vorwiegend durch Unternehmen verarbeitet, für die DS-GVO Anwendung findet. Sollte doch die Verarbeitung durch Dienste Dritter außerhalb der Europäischen Union oder des Europäischen Wirtschaftsraums stattfinden, so müssen diese die besonderen Voraussetzungen der Art. 44 ff. DS-GVO erfüllen. Das bedeutet, die Verarbeitung erfolgt aufgrund besonderer Garantien, wie etwa die von der EU-Kommission offiziell anerkannte Feststellung eines der EU entsprechenden Datenschutzniveaus oder der Beachtung offiziell anerkannter spezieller vertraglicher Verpflichtungen, der so genannten „Standardvertragsklauseln“. Bei US-Unternehmen erfüllt die Unterwerfung unter das sog. „Privacy-Shield“, dem Datenschutzabkommen zwischen der EU und den USA, diese Voraussetzungen.</p>\r\n<p><br /><strong>Löschung von Daten und Speicherdauer</strong></p>\r\n<p>Sofern nicht in dieser Datenschutzerklärung ausdrücklich angegeben, werden Ihre personenbezogen Daten gelöscht oder gesperrt, sobald der Zweck für die Speicherung entfällt, es sei denn deren weitere Aufbewahrung ist zu Beweiszwecken erforderlich oder dem stehen gesetzliche Aufbewahrungspflichten entgegenstehen. Darunter fallen etwa handelsrechtliche Aufbewahrungspflichten von Geschäftsbriefen nach § 257 Abs. 1 HGB (6 Jahre) sowie steuerrechtliche Aufbewahrungspflichten nach § 147 Abs. 1 AO von Belegen (10 Jahre). Wenn die vorgeschriebene Aufbewahrungsfrist abläuft, erfolgt eine Sperrung oder Löschung Ihrer Daten, es sei denn die Speicherung ist weiterhin für einen Vertragsabschluss oder zur Vertragserfüllung erforderlich.</p>\r\n<p><br /><strong>Bestehen einer automatisierten Entscheidungsfindung</strong></p>\r\n<p>Wir setzen keine automatische Entscheidungsfindung oder ein Profiling ein.</p>\r\n<p><br /><strong>Bereitstellung unserer Website und Erstellung von Logfiles</strong></p>\r\n<ol>\r\n<li>Wenn Sie unsere Webseite lediglich informatorisch nutzen (also keine Registrierung und auch keine anderweitige Übermittlung von Informationen), erheben wir nur die personenbezogenen Daten, die Ihr Browser an unseren Server übermittelt. Wenn Sie unsere Website betrachten möchten, erheben wir die folgenden Daten:• IP-Adresse;<br />• Internet-Service-Provider des Nutzers;<br />• Datum und Uhrzeit des Abrufs;<br />• Browsertyp;<br />• Sprache und Browser-Version;<br />• Inhalt des Abrufs;<br />• Zeitzone;<br />• Zugriffsstatus/HTTP-Statuscode;<br />• Datenmenge;<br />• Websites, von denen die Anforderung kommt;<br />• Betriebssystem.<br />Eine Speicherung dieser Daten zusammen mit anderen personenbezogenen Daten von Ihnen findet nicht statt.<br /><br /></li>\r\n<li>Diese Daten dienen dem Zweck der nutzerfreundlichen, funktionsfähigen und sicheren Auslieferung unserer Website an Sie mit Funktionen und Inhalten sowie deren Optimierung und statistischen Auswertung.<br /><br /></li>\r\n<li>Rechtsgrundlage hierfür ist unser in den obigen Zwecken auch liegendes berechtigtes Interesse an der Datenverarbeitung nach Art. 6 Abs. 1 S.1 lit. f) DS-GVO.<br /><br /></li>\r\n<li>Wir speichern aus Sicherheitsgründen diese Daten in Server-Logfiles für die Speicherdauer von Tagen. Nach Ablauf dieser Frist werden diese automatisch gelöscht, es sei denn wir benötigen deren Aufbewahrung zu Beweiszwecken bei Angriffen auf die Serverinfrastruktur oder anderen Rechtsverletzungen.</li>\r\n</ol>\r\n<p><br /><strong>Cookies</strong></p>\r\n<ol>\r\n<li>Wir verwenden sog. Cookies bei Ihrem Besuch unserer Website. Cookies sind kleine Textdateien, die Ihr Internet-Browser auf Ihrem Rechner ablegt und speichert. Wenn Sie unsere Website erneut aufrufen, geben diese Cookies Informationen ab, um Sie automatisch wiederzuerkennen. Die so erlangten Informationen dienen dem Zweck, unsere Webangebote technisch und wirtschaftlich zu optimieren und Ihnen einen leichteren und sicheren Zugang auf unsere Website zu ermöglichen. Wir informieren Sie dazu beim Aufruf unserer Website mittels eines Hinweises auf unsere Datenschutzerklärung über die Verwendung von Cookies zu den zuvor genannten Zwecken und wie Sie dieser widersprechen bzw. deren Speicherung verhindern können („Opt-out“). Unsere Website nutzt Session-Cookies, keine persistente Cookies und keine Cookies von Drittanbietern:<br /><br /><strong>• Session-Cookies:</strong> Wir verwenden sog. Cookies zum Wiedererkennen mehrfacher Nutzung eines Angebots durch denselben Nutzer (z.B. wenn Sie sich eingeloggt haben zur Feststellung Ihres Login-Status). Wenn Sie unsere Seite erneut aufrufen, geben diese Cookies Informationen ab, um Sie automatisch wiederzuerkennen. Die so erlangten Informationen dienen dazu, unsere Angebote zu optimieren und Ihnen einen leichteren Zugang auf unsere Seite zu ermöglichen. Wenn Sie den Browser schließen oder Sie sich ausloggen, werden die Session-Cookies gelöscht.<br /><br /><strong>• Persistente Cookies:</strong> Diese werden automatisiert nach einer vorgegebenen Dauer gelöscht, die sich je nach Cookie unterscheiden kann. In den Sicherheitseinstellungen Ihres Browsers können Sie die Cookies jederzeit löschen.<br /><br /><strong>• Cookies von Drittanbietern (Third-Party-Cookies):</strong> Entsprechend Ihren Wünschen können Sie können Ihre Browser-Einstellung konfigurieren und z. B. Die Annahme von Third-Party-Cookies oder allen Cookies ablehnen. Wir weisen Sie jedoch an dieser Stelle darauf hin, dass Sie dann eventuell nicht alle Funktionen dieser Website nutzen können. Lesen Sie Näheres zu diesen Cookies bei den jeweiligen Datenschutzerklärungen zu den Drittanbietern. Das kann ich ihnen sehr empfehlen.<br /><br /></li>\r\n<li>Rechtsgrundlage dieser Verarbeitung ist Art. 6 Abs. 1 S. lit. b) DS-GVO, wenn die Cookies zur Vertragsanbahnung z.B. bei Bestellungen gesetzt werden und ansonsten haben wir ein berechtigtes Interesse an der effektiven Funktionalität der Website, so dass in dem Falle Art. 6 Abs. 1 S. 1 lit. f) DS-GVO Rechtsgrundlage ist.<br /><br /></li>\r\n<li><strong>Widerspruch und „Opt-Out“:</strong> Das Speichern von Cookies auf Ihrer Festplatte können Sie allgemein verhindern, indem Sie in Ihren Browser-Einstellungen „keine Cookies akzeptieren“ wählen. Dies kann aber eine Funktionseinschränkung unserer Angebote zur Folge haben. Sie können dem Einsatz von Cookies von Drittanbietern zu Werbezwecken über ein sog. „Opt-out“ über diese amerikanische Website (<a href=\"https://optout.aboutads.info/\" target=\"_blank\" rel=\"nofollow noopener\">https://optout.aboutads.info</a>) oder diese europäische Website (<a href=\"http://www.youronlinechoices.com/de/praferenzmanagement/\" target=\"_blank\" rel=\"nofollow noopener\">http://www.youronlinechoices.com/de/praferenzmanagement/</a>) widersprechen.</li>\r\n</ol>\r\n<p><br /><strong>Abwicklung von Verträgen</strong></p>\r\n<ol>\r\n<li>Wir verarbeiten Bestandsdaten (z.B. Unternehmen, Titel/akademischer Grad, Namen und Adressen sowie Kontaktdaten von Nutzern, E-Mail), Vertragsdaten (z.B. in Anspruch genommene Leistungen, Namen von Kontaktpersonen) und Zahlungsdaten (z.B. Bankverbindung, Zahlungshistorie) zwecks Erfüllung unserer vertraglichen Verpflichtungen (Kenntnis, wer Vertragspartner ist; Begründung, inhaltliche Ausgestaltung und Abwicklung des Vertrags; Überprüfung auf Plausibilität der Daten) und Serviceleistungen (z.B. Kontaktaufnahme des Kundenservice) gem. Art. 6 Abs. 1 S. 1 lit b) DS-GVO. Die in Onlineformularen als verpflichtend gekennzeichneten Eingaben, sind für den Vertragsschluss erforderlich.<br /><br /></li>\r\n<li>Eine Weitergabe dieser Daten an Dritte erfolgt grundsätzlich nicht, außer sie ist zur Verfolgung unserer Ansprüche (z.B. Übergabe an Rechtsanwalt zum Inkasso) oder zur Erfüllung des Vertrags (z.B. Übergabe der Daten an Zahlungsanbieter) erforderlich oder es besteht hierzu besteht eine gesetzliche Verpflichtung gem. Art. 6 Abs. 1 S. 1 lit. c) DS-GVO.<br /><br /></li>\r\n<li>Wir können die von Ihnen angegebenen Daten zudem verarbeiten, um Sie über weitere interessante Produkte aus unserem Portfolio zu informieren oder Ihnen E-Mails mit technischen Informationen zukommen lassen.<br /><br /></li>\r\n<li>Die Daten werden gelöscht, sobald sie für die Erreichung des Zweckes ihrer Erhebung nicht mehr erforderlich sind. Dies ist für die Bestands- und Vertragsdaten dann der Fall, wenn die Daten für die Durchführung des Vertrages nicht mehr erforderlich sind und keine Ansprüche mehr aus dem Vertrag geltend gemacht werden können, weil diese verjährt sind (Gewährleistung: zwei Jahre / Regelverjährung: drei Jahre). Wir sind aufgrund handels- und steuerrechtlicher Vorgaben verpflichtet, Ihre Adress-, Zahlungs- und Bestelldaten für die Dauer von zehn Jahren zu speichern. Allerdings nehmen wir bei Vertragsbeendigung nach drei Jahren eine Einschränkung der Verarbeitung vor, d. h. Ihre Daten werden nur zur Einhaltung der gesetzlichen Verpflichtungen eingesetzt. Angaben im Nutzerkonto verbleiben bis zu dessen Löschung.<br /><br /></li>\r\n</ol>\r\n<p><br /><strong>Rechte der betroffenen Person</strong></p>\r\n<ol>\r\n<li><strong>Widerspruch oder Widerruf gegen die Verarbeitung Ihrer Daten<br /><br />Soweit die Verarbeitung auf Ihrer Einwilligung gemäß Art. 6 Abs. 1 S. 1 lit. a), Art. 7 DS-GVO beruht, haben Sie das Recht, die Einwilligung jederzeit zu widerrufen. Die Rechtmäßigkeit der aufgrund der Einwilligung bis zum Widerruf erfolgten Verarbeitung wird dadurch nicht berührt.<br /><br />Soweit wir die Verarbeitung Ihrer personenbezogenen Daten auf die Interessenabwägung gemäß Art. 6 Abs. 1 S. 1 lit. f) DS-GVO stützen, können Sie Widerspruch gegen die Verarbeitung einlegen. Dies ist der Fall, wenn die Verarbeitung insbesondere nicht zur Erfüllung eines Vertrags mit Ihnen erforderlich ist, was von uns jeweils bei der nachfolgenden Beschreibung der Funktionen dargestellt wird. Bei Ausübung eines solchen Widerspruchs bitten wir um Darlegung der Gründe, weshalb wir Ihre personenbezogenen Daten nicht wie von uns durchgeführt verarbeiten sollten. Im Falle Ihres begründeten Widerspruchs prüfen wir die Sachlage und werden entweder die Datenverarbeitung einstellen bzw. anpassen oder Ihnen unsere zwingenden schutzwürdigen Gründe aufzeigen, aufgrund derer wir die Verarbeitung fortführen.<br /><br />Sie können der Verarbeitung Ihrer personenbezogenen Daten für Zwecke der Werbung und Datenanalyse jederzeit widersprechen. Das Widerspruchsrecht können Sie kostenfrei ausüben. Über Ihren Werbewiderspruch können Sie uns unter folgenden Kontaktdaten informieren:<br /><br /></strong></li>\r\n<li><strong>Recht auf Auskunft</strong><br />Sie haben ein Recht auf Auskunft über Ihre bei uns gespeicherten persönlichen Daten nach Art. 15 DS-GVO. Dies beinhaltet insbesondere die Auskunft über die Verarbeitungszwecke, die Kategorie der personenbezogenen Daten, die Kategorien von Empfängern, gegenüber denen Ihre Daten offengelegt wurden oder werden, die geplante Speicherdauer, die Herkunft ihrer Daten, sofern diese nicht direkt bei Ihnen erhoben wurden.<br /><br /></li>\r\n<li><strong>Recht auf Berichtigung</strong><br />Sie haben ein Recht auf Berichtigung unrichtiger oder auf Vervollständigung richtiger Daten nach Art. 16 DS-GVO.<br /><br /></li>\r\n<li><strong>Recht auf Löschung</strong><br />Sie haben ein Recht auf Löschung Ihrer bei uns gespeicherten Daten nach Art. 17 DS-GVO, es sei denn gesetzliche oder vertraglichen Aufbewahrungsfristen oder andere gesetzliche Pflichten bzw. Rechte zur weiteren Speicherung stehen dieser entgegen.<br /><br /></li>\r\n<li><strong>Recht auf Einschränkung</strong><br />Sie haben das Recht, eine Einschränkung bei der Verarbeitung Ihrer personenbezogenen Daten zu verlangen, wenn eine der Voraussetzungen in Art. 18 Abs. 1 lit. a) bis d) DS-GVO erfüllt ist:<br />• Wenn Sie die Richtigkeit der Sie betreffenden personenbezogenen für eine Dauer bestreiten, die es dem Verantwortlichen ermöglicht, die Richtigkeit der personenbezogenen Daten zu überprüfen;<br /><br />• die Verarbeitung unrechtmäßig ist und Sie die Löschung der personenbezogenen Daten ablehnen und stattdessen die Einschränkung der Nutzung der personenbezogenen Daten verlangen;<br /><br />• der Verantwortliche die personenbezogenen Daten für die Zwecke der Verarbeitung nicht länger benötigt, Sie diese jedoch zur Geltendmachung, Ausübung oder Verteidigung von Rechtsansprüchen benötigen, oder<br /><br />• wenn Sie Widerspruch gegen die Verarbeitung gemäß Art. 21 Abs. 1 DS-GVO eingelegt haben und noch nicht feststeht, ob die berechtigten Gründe des Verantwortlichen gegenüber Ihren Gründen überwiegen.<br /><br /></li>\r\n<li><strong>Recht auf Datenübertragbarkeit</strong><br />Sie haben ein Recht auf Datenübertragbarkeit nach Art. 20 DS-GVO, was bedeutet, dass Sie die bei uns über Sie gespeicherten personenbezogenen Daten in einem strukturierten, gängigen und maschinenlesbaren Format erhalten können oder die Übermittlung an einen anderen Verantwortlichen verlangen können.<br /><br /></li>\r\n<li><strong>Recht auf Beschwerde</strong><br />Sie haben ein Recht auf Beschwerde bei einer Aufsichtsbehörde. In der Regel können Sie sich hierfür an die Aufsichtsbehörde insbesondere in dem Mitgliedstaat ihres Aufenthaltsorts, ihres Arbeitsplatzes oder des Orts des mutmaßlichen Verstoßes wenden.<br /><br /></li>\r\n</ol>\r\n<p><br /><strong>Datensicherheit</strong></p>\r\n<p>Um alle personenbezogen Daten, die an uns übermittelt werden, zu schützen und um sicherzustellen, dass die Datenschutzvorschriften von uns, aber auch unseren externen Dienstleistern eingehalten werden, haben wir geeignete technische und organisatorische Sicherheitsmaßnahmen getroffen. Deshalb werden unter anderem alle Daten zwischen Ihrem Browser und unserem Server über eine sichere SSL-Verbindung verschlüsselt übertragen.</p>\r\n<p><br /><br /><strong>Stand: 01.08.2019</strong></p>\r\n<p>Quelle: <a href=\"https://www.juraforum.de/datenschutzerklaerung-muster/\">Muster-Datenschutzerklärung von JuraForum.de</a></p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',14,8,'2019-08-01 10:22:32','2019-08-01 10:23:52','wolfgang','wolfgang',0,1),
  (9,1,1,1,'<h2>Allgemeine Geschäftsbedingungen</h2>\r\n<p>der Firma Ferien am Tressower See<br /><br /></p>\r\n<p>§1 Geltung gegenüber Unternehmern und Begriffsdefinitionen</p>\r\n<p>(1) Die nachfolgenden Allgemeinen Geschäftbedingungen gelten für alle Lieferungen zwischen uns und einem Verbraucher in ihrer zum Zeitpunkt der Bestellung gültigen Fassung.<br /><br />Verbraucher ist jede natürliche Person, die ein Rechtsgeschäft zu Zwecken abschließt, die überwiegend weder ihrer gewerblichen noch ihrer selbständigen beruflichen Tätigkeit zugerechnet werden können (§ 13 BGB). <br /><br /></p>\r\n<p>§2 Zustandekommen eines Vertrages, Speicherung des Vertragstextes</p>\r\n<p>(1) Die folgenden Regelungen über den Vertragsabschluss gelten für Bestellungen über unseren Internetshop https://shop.ferien-am-tressower-see.de .<br /><br />(2) Im Falle des Vertragsschlusses kommt der Vertrag mit</p>\r\n<div><br />Ferien am Tressower See<br />Wolfgang Bund<br />Am Tressower See 1<br />D-23966 Tressow<br />Registernummer <br />Registergericht <br /><br /></div>\r\n<p>zustande.<br /><br />(3) Die Präsentation der Waren in unserem Internetshop stellen kein rechtlich bindendes Vertragsangebot unsererseits dar, sondern sind nur eine unverbindliche Aufforderungen an den Verbraucher, Waren zu bestellen. Mit der Bestellung der gewünschten Ware gibt der Verbraucher ein für ihn verbindliches Angebot auf Abschluss eines Kaufvertrages ab.<br />(4) Bei Eingang einer Bestellung in unserem Internetshop gelten folgende Regelungen: Der Verbraucher gibt ein bindendes Vertragsangebot ab, indem er die in unserem Internetshop vorgesehene Bestellprozedur erfolgreich durchläuft.<br /><br />Die Bestellung erfolgt in folgenden Schritten:<br /><br /></p>\r\n<div>1) Auswahl der gewünschten Ware<br />2) Bestätigen durch Anklicken der Buttons „Bestellen“ <br />3) Prüfung der Angaben im Warenkorb<br />4) Betätigung des Buttons „zur Kasse“ <br />5) Nochmalige Prüfung bzw. Berichtigung der jeweiligen eingegebenen Daten.<br />6) Verbindliche Absendung der Bestellung durch Anklicken des Buttons „kostenpflichtig bestellen“ bzw. „kaufen“<br /><br /></div>\r\n<p>Der Verbraucher kann vor dem verbindlichen Absenden der Bestellung durch Betätigen der in dem von ihm verwendeten Internet-Browser enthaltenen „Zurück“-Taste nach Kontrolle seiner Angaben wieder zu der Internetseite gelangen, auf der die Angaben des Kunden erfasst werden und Eingabefehler berichtigen bzw. durch Schließen des Internetbrowsers den Bestellvorgang abbrechen. Wir bestätigen den Eingang der Bestellung unmittelbar durch eine automatisch generierte E-Mail („Auftragsbestätigung“). Mit dieser nehmen wir Ihr Angebot an. <br /><br />(5) Speicherung des Vertragstextes bei Bestellungen über unseren Internetshop: Wir senden Ihnen die Bestelldaten und unsere AGB per E-Mail zu. Die AGB können Sie jederzeit auch unter <a href=\"redaxo://15-1\">AGB</a> einsehen. Ihre Bestelldaten sind aus Sicherheitsgründen nicht mehr über das Internet zugänglich. <br /><br /></p>\r\n<p>§3 Preise, Versandkosten, Zahlung, Fälligkeit</p>\r\n<p>(1) Die angegebenen Preise enthalten die gesetzliche Umsatzsteuer und sonstige Preisbestandteile. Hinzu kommen etwaige Versandkosten.<br /><br />(2) Der Verbraucher hat die Möglichkeit der Zahlung per Vorkasse, Bankeinzug, PayPal .<br /><br />(3) Hat der Verbraucher die Zahlung per Vorkasse gewählt, so verpflichtet er sich, den Kaufpreis unverzüglich nach Vertragsschluss zu zahlen.<br /><br /></p>\r\n<p>§4 Lieferung</p>\r\n<p>(1) Sofern wir dies in der Produktbeschreibung nicht deutlich anders angegeben haben, sind alle von uns angebotenen Artikel sofort versandfertig. Die Lieferung erfolgt hier spätesten innerhalb von 5 Werktagen. Dabei beginnt die Frist für die Lieferung im Falle der Zahlung per Vorkasse am Tag nach Zahlungsauftrag an die mit der Überweisung beauftragte Bank und bei allen anderen Zahlungsarten am Tag nach Vertragsschluss zu laufen. Fällt das Fristende auf einen Samstag, Sonntag oder gesetzlichen Feiertag am Lieferort, so endet die Frist am nächsten Werktag. <br /><br />(2) Die Gefahr des zufälligen Untergangs und der zufälligen Verschlechterung der verkauften Sache geht auch beim Versendungskauf erst mit der Übergabe der Sache an den Käufer auf diesen über. <br /><br /></p>\r\n<p>§5 Eigentumsvorbehalt</p>\r\n<p>Wir behalten uns das Eigentum an der Ware bis zur vollständigen Bezahlung des Kaufpreises vor. <br /><br />****************************************************************************************************</p>\r\n<p>§6 Widerrufsrecht des Kunden als Verbraucher:</p>\r\n<p>Widerrufsrecht für Verbraucher<br /><br />Verbrauchern steht ein Widerrufsrecht nach folgender Maßgabe zu, wobei Verbraucher jede natürliche Person ist, die ein Rechtsgeschäft zu Zwecken abschließt, die überwiegend weder ihrer gewerblichen noch ihrer selbständigen beruflichen Tätigkeit zugerechnet werden können: <br /><br /></p>\r\n<p>Widerrufsbelehrung</p>\r\n<p><br />Widerrufsrecht<br /><br />Sie haben das Recht, binnen vierzehn Tagen ohne Angabe von Gründen diesen Vertrag zu widerrufen. <br /><br />Die Widerrufsfrist beträgt vierzehn Tage, ab dem Tag, an dem Sie oder ein von Ihnen benannter Dritter, der nicht der Beförderer ist, die Waren in Besitz genommen haben bzw. hat. <br /><br />Um Ihr Widerrufsrecht auszuüben, müssen Sie uns</p>\r\n<div>Ferien am Tressower See<br />Wolfgang Bund<br />Am Tressower See 1<br />D-23966 Tressow<br />E-Mail wb@dtp-net.de</div>\r\n<p>mittels einer eindeutigen Erklärung (z.B. ein mit der Post versandter Brief, Telefax oder E-Mail) über Ihren Entschluss, diesen Vertrag zu widerrufen, informieren. Sie können dafür das beigefügte Muster-Widerrufsformular verwenden, das jedoch nicht vorgeschrieben ist. <br /><br />Widerrufsfolgen <br /><br />Wenn Sie diesen Vertrag widerrufen, haben wir Ihnen alle Zahlungen, die wir von Ihnen erhalten haben, einschließlich der Lieferkosten (mit Ausnahme der zusätzlichen Kosten, die sich daraus ergeben, dass Sie eine andere Art der Lieferung als die von uns angebotene, günstigste Standardlieferung gewählt haben), unverzüglich und spätestens binnen vierzehn Tagen ab dem Tag zurückzuzahlen, an dem die Mitteilung über Ihren Widerruf dieses Vertrags bei uns eingegangen ist. Für diese Rückzahlung verwenden wir dasselbe Zahlungsmittel, das Sie bei der ursprünglichen Transaktion eingesetzt haben, es sei denn, mit Ihnen wurde ausdrücklich etwas anderes vereinbart; in keinem Fall werden Ihnen wegen dieser Rückzahlung Entgelte berechnet. <br /><br />Wir können die Rückzahlung verweigern, bis wir die Waren wieder zurückerhalten haben oder bis Sie den Nachweis erbracht haben, dass Sie die Waren zurückgesandt haben, je nachdem, welches der frühere Zeitpunkt ist. <br /><br />Sie haben die Waren unverzüglich und in jedem Fall spätestens binnen vierzehn Tagen ab dem Tag, an dem Sie uns über den Widerruf dieses Vertrages unterrichten, an uns zurückzusenden oder zu übergeben. Die Frist ist gewahrt, wenn Sie die Waren vor Ablauf der Frist von vierzehn Tagen absenden. <br /><br />Sie tragen die unmittelbaren Kosten der Rücksendung der Waren.<br /><br />Ende der Widerrufsbelehrung <br /><br />****************************************************************************************************</p>\r\n<p>§7 Widerrufsformular</p>\r\n<p>Muster-Widerrufsformular</p>\r\n<p>(Wenn Sie den Vertrag widerrufen wollen, dann füllen Sie bitte dieses Formular aus und senden Sie es zurück.)</p>\r\n<div>An :<br />Ferien am Tressower See<br />Wolfgang Bund<br />Am Tressower See 1<br />D-23966 Tressow<br />E-Mail wb@dtp-net.de<br /><br />Hiermit widerrufe(n) ich/wir (*) den von mir/uns (*) abgeschlossenen Vertrag über den Kauf der folgenden Waren (*)/die Erbringung der folgenden Dienstleistung (*)<br /><br />_____________________________________________________<br /><br />Bestellt am (*)/erhalten am (*)<br /><br />__________________<br /><br />Name des/der Verbraucher(s)<br /><br />_____________________________________________________<br /><br />Anschrift des/der Verbraucher(s)<br /><br /><br />_____________________________________________________<br /><br />Unterschrift des/der Verbraucher(s) (nur bei Mitteilung auf Papier)<br /><br />__________________<br /><br />Datum<br /><br />__________________<br /><br /></div>\r\n<p>(*) Unzutreffendes streichen.<br /><br /></p>\r\n<p>§8 Gewährleistung</p>\r\n<p>Es gelten die gesetzlichen Gewährleistungsregelungen. <br /><br /></p>\r\n<p>§9 Verhaltenskodex</p>\r\n<p>Eine Trusted Shops Mitgliedschaft kostet ab 79 Euro monatlich. Diese Kosten müsste ich natürlich auf die Produkte umlegen, weshalb die Produkte dann sauteuer wären. Ich verzichte daher lieber auf teure Siegel. Sie können mir dennoch vertrauen. Mit einem gekauften Siegel werde ich nicht mehr oder weniger vertrauenswürdig.</p>\r\n<p>§10 Vertragssprache</p>\r\n<p>Als Vertragssprache steht ausschließlich Deutsch zur Verfügung.<br /><br />****************************************************************************************************</p>\r\n<p>§11 Kundendienst</p>\r\n<p>Unser Kundendienst für Fragen, Reklamationen und Beanstandungen steht Ihnen werktags von 9:00 Uhr bis 17:30 Uhr unter<br /><br /></p>\r\n<p>Telefon: 03841 6408571<br />E-Mail: wb@dtp-net.de</p>\r\n<p>zur Verfügung. <br /><br />**************************************************************************************************** <br /><br /></p>\r\n<p>Stand der AGB Aug.2019</p>\r\n<p><a href=\"http://www.agb.de\">Gratis AGB</a> erstellt von agb.de</p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',15,8,'2019-08-01 10:41:53','2019-08-01 10:48:36','wolfgang','wolfgang',0,1),
  (10,1,1,1,'<h1>Vielen Dank</h1>\r\n<p>Wir bringen die Bestellung schnellstmöglich zum Versand.</p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',9,8,'2019-08-01 11:08:41','2019-08-01 11:08:41','wolfgang','wolfgang',0,1),
  (11,1,1,1,'<h1>Willkommen im Warenhaus am Tressower See</h1>\r\n<p>Der Tressower See ist ein Kleinod in Mecklenburg. Abseits der Mecklenburger Seenplatte, Abseits des Schweriner Sees, Abseits der Ostseeküste. Zwischen Wismar und Grevesmühlen liegt ein wunderschöner idyllischer und ruhiger See, der zum Baden, zum Angeln, Boot fahren oder einfach nur zum Relaxen einlädt. An diesem See gibt es zwei <a href=\"https://ferien-am-tressower-see.de\" target=\"_blank\" rel=\"noopener\">Ferienwohnungen</a>, ideal für Ferien mit Hund oder Ferien mit Kindern - oder einfach nur zum Ausspannen. Der Ort eignet sich auch sehr gut als Ausgangspunkt für Radtouren oder Städtetouren nach Lübeck, Wismar, Schwerin oder Rostock.</p>\r\n<p>Unglaublich, aber wahr: an diesem kleinen Ort gibt es auch ein Warenhaus! Man kann hier einkaufen. Und noch besser: 24 Stunden am Tag geöffnet und von überall erreichbar.</p>\r\n<p>Ich wünsche viel Spaß beim <a href=\"redaxo://1-1\">Stöbern</a>!</p>\r\n<p><img src=\"index.php?rex_media_type=tinymcewysiwyg&amp;rex_media_file=postkarten_uebersicht_2019_1.jpg\" alt=\"\" /></p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',10,8,'2019-08-02 09:01:01','2019-08-03 10:15:48','wolfgang','wolfgang',0,1),
  (12,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',12,9,'2019-08-03 16:46:09','2019-08-03 16:46:09','wolfgang','wolfgang',0,1),
  (13,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',16,10,'2019-08-22 12:55:22','2019-08-22 12:55:22','wolfgang','wolfgang',0,1),
  (14,1,1,1,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',18,11,'2019-08-30 19:02:51','2019-08-30 19:02:51','wolfgang','wolfgang',0,1),
  (15,1,1,2,'<h2>Transaktion abgebrochen</h2>\r\n<p>Die Transaktion war nicht erfolgreich, der Zahlungsvorgang wurde abgebrochen.</p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',18,8,'2019-08-30 19:03:18','2019-09-02 08:17:01','wolfgang','wolfgang',0,1),
  (16,1,1,1,'','','objparams|form_anchor|formular\r\nycom_auth_form_info|label|Bitte einloggen|Benutzer wurde ausgeloggt|Login ist fehlgeschlagen|Benutzer wurde erfolgreich eingeloggt|\r\nycom_auth_form_login|label|Benutzername / E-Mail:\r\nycom_auth_form_password|label|Passwort:\r\nycom_auth_form_stayactive|auth|eingeloggt bleiben:|0','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',20,12,'2019-09-01 11:47:30','2019-09-01 11:47:30','wolfgang','wolfgang',0,1),
  (17,1,1,1,'','','objparams|form_anchor|formular\r\n\r\ngenerate_key|activation_key\r\nhidden|status|0\r\nhidden|ycom_groups|1\r\n\r\n\r\n# fieldset|label|Login-Daten:\r\n\r\nhtml||<div class=\"uk-child-width-1-1@s uk-child-width-1-2@l\" uk-grid>\r\n\r\ntext|firstname|Vorname:*\r\nvalidate|empty|firstname|Bitte geben Sie Ihren Vornamen ein.\r\n\r\ntext|name|Nachname:*\r\nvalidate|empty|name|Bitte geben Sie Ihren Namen ein.\r\n\r\ntext|email|E-Mail:*|\r\n\r\ntext|birthdate|Geburtsdatum:\r\n\r\ntext|address|Adresse:\r\ntext|zip|PLZ:\r\ntext|city|Ort:\r\nchoice|country|Land|{\"Deutschland\":\"DE\",\"Österreich\":\"AT\"}|0|0\r\n\r\n\r\nycom_auth_password|password|Ihr Passwort:*|{\"length\":{\"min\":6},\"letter\":{\"min\":1},\"lowercase\":{\"min\":0},\"uppercase\":{\"min\":0},\"digit\":{\"min\":1},\"symbol\":{\"min\":0}}|Das Passwort muss mindestens 6 Zeichen lang sein und mindestens eine Ziffer enthalten\r\npassword|password_2|Passwort bestätigen:*||no_db\r\n\r\ncheckbox|termofuse_accepted|Ich habe die Nutzungsbedingungen akzeptiert.|0|0|\r\n\r\nhtml|required|<p class=\"form-required\">* Pflichtfelder</p>\r\n\r\ncaptcha|Bitte geben Sie den entsprechenden Sicherheitscode ein. Sollten Sie den Code nicht lesen können klicken Sie bitte auf die Grafik, um einen neuen Code zu generieren.|Sie haben den Sicherheitscode falsch eingegeben.\r\n\r\nhtml||</div>\r\n\r\nvalidate|email|email|Bitte geben Sie die E-Mail ein.\r\nvalidate|unique|email|Diese E-Mail existiert schon|rex_ycom_user\r\nvalidate|empty|email|Bitte geben Sie Ihre e-Mail ein.\r\nvalidate|empty|password|Bitte geben Sie ein Passwort ein.\r\n\r\nvalidate|compare|password|password_2||Bitte geben Sie zweimal das gleiche Passwort ein\r\n\r\n# email als Login verwenden\r\naction|copy_value|email|login\r\naction|db|rex_ycom_user\r\naction|tpl2email|access_request_de|email|\r\naction|tpl2email|new_ycom_user||wb@dtp-net.de','','','<h2>Registrierung</h2>\r\n<p>Sie erhalten eine E-Mail mit einem Bestätigungslink. Bitte klicken Sie den Link an, um Ihre Registrierung zu bestätigen. Sollte die Mail nicht bei Ihnen ankommen, benachrichtigen Sie uns bitte per Telefon oder E-Mail.</p>','0','','','','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',21,12,'2019-09-01 11:48:25','2019-09-01 16:39:25','wolfgang','wolfgang',0,1),
  (18,1,1,1,'','','hidden|status|1\r\nobjparams|submit_btn_show|0\r\nobjparams|send|1\r\nobjparams|csrf_protection|0\r\n\r\nvalidate|ycom_auth_login|activation_key=rex_ycom_activation_key,email=rex_ycom_id|status=0|Zugang wurde bereits bestätigt oder ist schon fehlgeschlagen|status\r\n\r\naction|ycom_auth_db|update\r\naction|html|<b>Vielen Dank, Sie sind nun eingeloggt und haben Ihre E-Mail bestätigt</b>','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',22,12,'2019-09-01 11:49:08','2019-09-01 11:49:08','wolfgang','wolfgang',0,1),
  (19,1,1,1,'','','generate_key|activation_key\r\n\r\ntext|email|E-Mail:|\r\n\r\ncaptcha|Bitte geben Sie den entsprechenden Sicherheitscode ein. Sollten Sie den Code nicht lesen können klicken Sie bitte auf die Grafik, um einen neuen Code zu generieren.|Sie haben den Sicherheitscode falsch eingegeben.\r\n\r\nvalidate|email|email|Bitte geben Sie die E-Mail ein.\r\nvalidate|empty|email|Bitte geben Sie Ihre E-Mail ein.\r\n\r\naction|db_query|update rex_ycom_user set activation_key = ? where email = ?|activation_key,email\r\naction|tpl2email|resetpassword_de|email|','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',28,12,'2019-09-01 11:50:01','2019-09-01 11:50:01','wolfgang','wolfgang',0,1),
  (20,1,1,1,'','','objparams|submit_btn_show|0\r\nobjparams|send|1\r\nobjparams|csrf_protection|0\r\n\r\nvalidate|ycom_auth_login|activation_key=rex_ycom_activation_key,email=rex_ycom_id|status=1|Zugang wurde bereits bestätigt oder ist schon fehlgeschlagen|status\r\n\r\naction|ycom_auth_db|update\r\naction|html|<b>Sie sind eingeloggt. Das Passwort kann nun geändert werden.</b>','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',29,12,'2019-09-01 11:50:52','2019-09-01 11:50:52','wolfgang','wolfgang',0,1),
  (21,1,1,1,'','','ycom_auth_form_logout|label|','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',23,12,'2019-09-01 11:51:27','2019-09-01 11:51:27','wolfgang','wolfgang',0,1),
  (22,1,1,1,'<h2>Ausgeloggt</h2>\r\n<p>Sie haben sich erfolgreich ausgeloggt.</p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',27,8,'2019-09-01 11:52:04','2019-09-01 11:52:04','wolfgang','wolfgang',0,1),
  (23,1,1,1,'','','ycom_auth_load_user|userinfo|email,firstname,name,address,zip,city,country\r\nobjparams|form_showformafterupdate|1\r\nshowvalue|email|E-Mail / Login:\r\n\r\nhtml||<div class=\"uk-child-width-1-1@s uk-child-width-1-2@l\" uk-grid>\r\n\r\ntext|firstname|Vorname:\r\nvalidate|empty|firstname|Bitte geben Sie Ihren Vornamen ein.\r\ntext|name|Nachname:\r\nvalidate|empty|name|Bitte geben Sie Ihren Namen ein.\r\ntext|address|Adresse:\r\ntext|zip|PLZ:\r\ntext|city|Ort:\r\nchoice|country|Land|{\"Deutschland\":\"DE\",\"Österreich\":\"AT\"}|0|0\r\n\r\nhtml||</div>\r\n\r\naction|showtext|<div class=\"alert alert-success\">Profildaten wurden aktualisiert</div>|||1\r\naction|ycom_auth_db','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',24,12,'2019-09-01 11:53:15','2019-09-01 16:54:23','wolfgang','wolfgang',0,1),
  (24,1,1,1,'<h2>Willkommen</h2>\r\n<p>Sie sind nun eingeloggt.</p>\r\n<p><a href=\"redaxo://4-1\">Weiter zum Checkout</a></p>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',26,8,'2019-09-01 16:52:37','2019-09-02 07:42:21','wolfgang','wolfgang',0,1);
/*!40000 ALTER TABLE `rex_article_slice` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_clang`;
CREATE TABLE `rex_clang` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `status` tinyint(1) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_clang` WRITE;
/*!40000 ALTER TABLE `rex_clang` DISABLE KEYS */;
INSERT INTO `rex_clang` VALUES 
  (1,'de','deutsch',1,1,0);
/*!40000 ALTER TABLE `rex_clang` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_config`;
CREATE TABLE `rex_config` (
  `namespace` varchar(75) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`namespace`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `rex_config` WRITE;
/*!40000 ALTER TABLE `rex_config` DISABLE KEYS */;
INSERT INTO `rex_config` VALUES 
  ('be_style/customizer','codemirror','1'),
  ('be_style/customizer','codemirror-langs','0'),
  ('be_style/customizer','codemirror-selectors','\"\"'),
  ('be_style/customizer','codemirror-tools','0'),
  ('be_style/customizer','codemirror_theme','\"eclipse\"'),
  ('be_style/customizer','labelcolor','\"#3bb594\"'),
  ('be_style/customizer','showlink','1'),
  ('core','package-config','{\"adminer\":{\"install\":true,\"status\":true},\"backup\":{\"install\":true,\"status\":true},\"be_style\":{\"install\":true,\"status\":true,\"plugins\":{\"customizer\":{\"install\":true,\"status\":true},\"redaxo\":{\"install\":true,\"status\":true}}},\"bloecks\":{\"install\":true,\"status\":true,\"plugins\":{\"cutncopy\":{\"install\":false,\"status\":false},\"dragndrop\":{\"install\":false,\"status\":false},\"status\":{\"install\":true,\"status\":true}}},\"cheatsheet\":{\"install\":false,\"status\":false},\"cronjob\":{\"install\":false,\"status\":false,\"plugins\":{\"article_status\":{\"install\":false,\"status\":false},\"optimize_tables\":{\"install\":false,\"status\":false}}},\"developer\":{\"install\":true,\"status\":true},\"install\":{\"install\":true,\"status\":true},\"media_manager\":{\"install\":true,\"status\":true},\"mediapool\":{\"install\":true,\"status\":true},\"metainfo\":{\"install\":true,\"status\":true},\"phpmailer\":{\"install\":true,\"status\":true},\"project\":{\"install\":true,\"status\":true},\"quick_navigation\":{\"install\":true,\"status\":true},\"sprog\":{\"install\":true,\"status\":true},\"structure\":{\"install\":true,\"status\":true,\"plugins\":{\"content\":{\"install\":true,\"status\":true},\"history\":{\"install\":false,\"status\":false},\"version\":{\"install\":false,\"status\":false}}},\"structure_tweaks\":{\"install\":false,\"status\":false},\"theme\":{\"install\":true,\"status\":true},\"tinymce4\":{\"install\":true,\"status\":true},\"url\":{\"install\":true,\"status\":true},\"users\":{\"install\":true,\"status\":true},\"warehouse\":{\"install\":true,\"status\":true},\"ycom\":{\"install\":true,\"status\":true,\"plugins\":{\"auth\":{\"install\":true,\"status\":true},\"docs\":{\"install\":true,\"status\":true},\"group\":{\"install\":true,\"status\":true},\"media_auth\":{\"install\":false,\"status\":false}}},\"yform\":{\"install\":true,\"status\":true,\"plugins\":{\"docs\":{\"install\":true,\"status\":true},\"email\":{\"install\":true,\"status\":true},\"manager\":{\"install\":true,\"status\":true},\"rest\":{\"install\":false,\"status\":false},\"tools\":{\"install\":false,\"status\":false}}},\"yform_usability\":{\"install\":true,\"status\":true},\"yrewrite\":{\"install\":true,\"status\":true}}'),
  ('core','package-order','[\"be_style\",\"be_style\\/customizer\",\"be_style\\/redaxo\",\"users\",\"adminer\",\"backup\",\"developer\",\"install\",\"media_manager\",\"mediapool\",\"phpmailer\",\"sprog\",\"structure\",\"theme\",\"tinymce4\",\"bloecks\",\"bloecks\\/status\",\"metainfo\",\"quick_navigation\",\"structure\\/content\",\"url\",\"warehouse\",\"ycom\",\"ycom\\/auth\",\"ycom\\/docs\",\"ycom\\/group\",\"yform\",\"yform\\/docs\",\"yform\\/email\",\"yform\\/manager\",\"yform_usability\",\"yrewrite\",\"project\"]'),
  ('core','version','\"5.8.0\"'),
  ('developer','actions','true'),
  ('developer','delete','true'),
  ('developer','dir_suffix','true'),
  ('developer','items','{\"templates\":{\"1\":1563121129},\"theme\\/private\\/redaxo\\/templates\":{\"1\":1568622588,\"2\":1568660410},\"theme\\/private\\/redaxo\\/modules\":{\"1\":1564430394,\"2\":1567363439,\"3\":1,\"4\":1566471527,\"5\":1568629878,\"6\":1,\"7\":1564651791,\"8\":1,\"9\":1564843546,\"10\":1566471647,\"11\":1567183356,\"12\":1567331166}}'),
  ('developer','modules','false'),
  ('developer','prefix','false'),
  ('developer','rename','true'),
  ('developer','sync_backend','true'),
  ('developer','sync_frontend','true'),
  ('developer','templates','false'),
  ('developer','umlauts','false'),
  ('media_manager','interlace','[\"jpg\"]'),
  ('media_manager','jpg_quality','85'),
  ('media_manager','png_compression','5'),
  ('media_manager','webp_quality','85'),
  ('phpmailer','bcc','\"\"'),
  ('phpmailer','charset','\"utf-8\"'),
  ('phpmailer','confirmto','\"\"'),
  ('phpmailer','encoding','\"8bit\"'),
  ('phpmailer','errormail','0'),
  ('phpmailer','from','\"webserver@ferien-am-tressower-see.de\"'),
  ('phpmailer','fromname','\"Mailer\"'),
  ('phpmailer','host','\"\"'),
  ('phpmailer','log','0'),
  ('phpmailer','mailer','\"smtp\"'),
  ('phpmailer','password','\"\"'),
  ('phpmailer','port','587'),
  ('phpmailer','priority','0'),
  ('phpmailer','security_mode','false'),
  ('phpmailer','smtpauth','true'),
  ('phpmailer','smtpsecure','\"tls\"'),
  ('phpmailer','smtp_debug','0'),
  ('phpmailer','test_address','\"wb@dtp-net.de\"'),
  ('phpmailer','username','\"\"'),
  ('phpmailer','wordwrap','120'),
  ('quick_navigation','quicknavi_favs1','[]'),
  ('sprog','chunkSizeArticles','4'),
  ('structure','notfound_article_id','1'),
  ('structure','start_article_id','1'),
  ('structure/content','default_template_id','1'),
  ('theme','include_be_files','false'),
  ('theme','synchronize_actions','false'),
  ('theme','synchronize_modules','true'),
  ('theme','synchronize_templates','true'),
  ('tinymce4','image_format','\"default\"'),
  ('tinymce4','media_format','\"default\"'),
  ('tinymce4','profiles','\"a:3:{i:0;a:3:{s:2:\\\"id\\\";i:1563121185;s:4:\\\"name\\\";s:7:\\\"default\\\";s:4:\\\"json\\\";s:590:\\\"{\\r\\n            selector: \'textarea.tinyMCEEditor\',\\r\\n            file_browser_callback: redaxo5FileBrowser,\\r\\n            plugins: \'advlist autolink lists link image charmap print preview anchor searchreplace visualblocks code fullscreen insertdatetime media table contextmenu paste code\',\\r\\n            toolbar: \'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image\',\\r\\n            convert_urls: false,\\r\\n            content_css: \'..\\/assets\\/addons\\/tinymce4\\/bootstrap\\/css\\/bootstrap.min.css\'\\r\\n            }\\\";}i:1;a:3:{s:2:\\\"id\\\";i:1564133370;s:4:\\\"name\\\";s:12:\\\"tinyMCE-text\\\";s:4:\\\"json\\\";s:597:\\\"{\\r\\nselector: \'.tinyMCE-text\',\\r\\nfile_browser_callback: redaxo5FileBrowser,\\r\\nconvert_urls: false,\\r\\nplugins: \'autolink lists link image charmap print preview anchor searchreplace visualblocks code fullscreen insertdatetime media paste code contextmenu nonbreaking\',\\r\\ntoolbar: \'insertfile | styleselect | bold italic subscript superscript | bullist numlist | charmap nonbreaking | pastetext removeformat undo redo | link unlink | code | fullscreen | link image\' ,\\r\\nmenubar: false,\\r\\nheight: 400,\\r\\nentity_encoding : \\\"raw\\\",\\r\\n\\r\\npaste_as_text: true,\\r\\nlink_class_list: [\\r\\n{title: \'Keine\', value: \'\'},\\r\\n],\\r\\n}\\\";}i:2;a:3:{s:2:\\\"id\\\";i:1564133400;s:4:\\\"name\\\";s:16:\\\"tinyMCE-headline\\\";s:4:\\\"json\\\";s:487:\\\"{\\r\\nselector: \'.tinyMCE-headline\',\\r\\nfile_browser_callback: redaxo5FileBrowser,\\r\\nconvert_urls: false,\\r\\ncontent_css: \'..\\/assets\\/addons\\/tinymce4\\/bootstrap\\/css\\/bootstrap.min.css\',\\r\\nplugins: \'advlist autolink link charmap preview code fullscreen paste code\',\\r\\ntoolbar: \'charmap nonbreaking | pastetext undo redo | italic subscript superscript | link unlink\' ,\\r\\nmenubar: false,\\r\\nforced_root_block : false,\\r\\ninvalid_elements : \'p\',\\r\\npaste_as_text: true,\\r\\nheight : 70,\\r\\nentity_encoding : \\\"raw\\\"\\r\\n}\\\";}}\"'),
  ('tinymce4','profile_upd_date','1564819193'),
  ('warehouse','address_page','\"4\"'),
  ('warehouse','agecheck','null'),
  ('warehouse','cart_mode','\"page\"'),
  ('warehouse','cart_page','\"3\"'),
  ('warehouse','country_codes','\"{\\\"Deutschland\\\":\\\"DE\\\"}\"'),
  ('warehouse','currency','\"EUR\"'),
  ('warehouse','currency_symbol','\"\\u20ac\"'),
  ('warehouse','email_template_customer','\"wh_customer\"'),
  ('warehouse','email_template_seller','\"wh_order\"'),
  ('warehouse','giropay_merchand_id','\"\"'),
  ('warehouse','giropay_page_error','\"17\"'),
  ('warehouse','giropay_page_notify','\"18\"'),
  ('warehouse','giropay_page_start','\"16\"'),
  ('warehouse','giropay_page_success','\"18\"'),
  ('warehouse','giropay_project_id','\"\"'),
  ('warehouse','giropay_project_pw','\"\"'),
  ('warehouse','my_orders_page','\"25\"'),
  ('warehouse','order_email','\"wb@dtp-net.de\"'),
  ('warehouse','order_page','\"5\"'),
  ('warehouse','paypal_client_id','\"\"'),
  ('warehouse','paypal_getparams','\"\"'),
  ('warehouse','paypal_page_error','\"7\"'),
  ('warehouse','paypal_page_start','\"6\"'),
  ('warehouse','paypal_page_success','\"8\"'),
  ('warehouse','paypal_sandbox_client_id','\"\"'),
  ('warehouse','paypal_sandbox_secret','\"\"'),
  ('warehouse','paypal_secret','\"\"'),
  ('warehouse','sandboxmode','null'),
  ('warehouse','shipping','\"3.5\"'),
  ('warehouse','shippinginfo_page','\"12\"'),
  ('warehouse','shipping_mode','\"order_total\"'),
  ('warehouse','shipping_parameters','\"[[\\\">=\\\",40,0],[\\\">=\\\",20,2.5],[\\\">\\\",0,3.5]]\"'),
  ('warehouse','tax_value','\"19\"'),
  ('warehouse','tax_value_1','\"19\"'),
  ('warehouse','tax_value_2','\"7\"'),
  ('warehouse','tax_value_3','\"\"'),
  ('warehouse','tax_value_4','\"\"'),
  ('warehouse','thankyou_page','\"9\"'),
  ('ycom','auth_cookie_ttl','\"14\"'),
  ('ycom','auth_request_id','\"rex_ycom_auth_id\"'),
  ('ycom','auth_request_logout','\"rex_ycom_auth_logout\"'),
  ('ycom','auth_request_name','\"rex_ycom_auth_name\"'),
  ('ycom','auth_request_psw','\"rex_ycom_auth_psw\"'),
  ('ycom','auth_request_ref','\"rex_ycom_auth_ref\"'),
  ('ycom','auth_request_stay','\"rex_ycom_auth_stay\"'),
  ('ycom','login_field','\"email\"'),
  ('ycom/auth','article_id_jump_denied','20'),
  ('ycom/auth','article_id_jump_logout','27'),
  ('ycom/auth','article_id_jump_not_ok','20'),
  ('ycom/auth','article_id_jump_ok','26'),
  ('ycom/auth','article_id_jump_password','28'),
  ('ycom/auth','article_id_jump_termofuse','0'),
  ('ycom/auth','article_id_login','20'),
  ('ycom/auth','article_id_password','29'),
  ('ycom/auth','article_id_register','21'),
  ('ycom/auth','auth_active','0'),
  ('ycom/auth','auth_rule','\"login_try_10_always_pause\"'),
  ('ycom/auth','login_field','\"email\"'),
  ('yform_usability','duplicate_tables','[\"all\"]'),
  ('yform_usability','sorting_tables','[\"all\"]'),
  ('yform_usability','status_tables','[\"all\"]'),
  ('yrewrite','yrewrite_hide_url_block','false');
/*!40000 ALTER TABLE `rex_config` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media`;
CREATE TABLE `rex_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `attributes` text,
  `filetype` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `originalname` varchar(255) DEFAULT NULL,
  `filesize` varchar(255) DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media` WRITE;
/*!40000 ALTER TABLE `rex_media` DISABLE KEYS */;
INSERT INTO `rex_media` VALUES 
  (7,2,'','image/jpeg','pk_2015_1_motiv_urlaub_in_mecklenburg.jpg','pk_2015_1_motiv_urlaub_in_mecklenburg.jpg','224507',1748,1240,'','2019-07-29 08:49:35','2019-07-29 08:49:35','wolfgang','wolfgang',0),
  (8,2,'','image/jpeg','pk_2015_4_farben_urlaub_in_mecklenburg.jpg','pk_2015_4_farben_urlaub_in_mecklenburg.jpg','445232',1748,1240,'','2019-07-29 08:49:35','2019-07-29 08:49:35','wolfgang','wolfgang',0),
  (9,2,'','image/jpeg','pk_2015_7_motive_urlaub_in_mecklenburg.jpg','pk_2015_7_motive_urlaub_in_mecklenburg.jpg','552253',1748,1240,'','2019-07-29 08:49:35','2019-07-29 08:49:35','wolfgang','wolfgang',0),
  (10,3,'','image/jpeg','postkarte-2019-4_farben_urlaub_in_mecklenburg.jpg','postkarte-2019-4_farben_urlaub_in_mecklenburg.jpg','495932',1748,1240,'','2019-07-29 08:49:58','2019-07-29 08:49:58','wolfgang','wolfgang',0),
  (11,3,'','image/jpeg','postkarte-2019-4_motive_urlaub_in_mecklenburg.jpg','postkarte-2019-4_motive_urlaub_in_mecklenburg.jpg','624470',1748,1240,'','2019-07-29 08:49:58','2019-07-29 08:49:58','wolfgang','wolfgang',0),
  (12,3,'','image/jpeg','postkarte-2019-schloesser_von_hinten_urlaub_in_mecklenburg.jpg','postkarte-2019-schloesser_von_hinten_urlaub_in_mecklenburg.jpg','919679',1748,1240,'','2019-07-29 08:49:58','2019-07-29 08:49:58','wolfgang','wolfgang',0),
  (13,3,'','image/jpeg','postkarten-2019-4_motive_morgen_am_see.jpg','postkarten-2019-4_motive_morgen_am_see.jpg','614022',1748,1240,'','2019-07-29 08:49:58','2019-07-29 08:49:58','wolfgang','wolfgang',0),
  (14,3,'','image/jpeg','postkarten-2019-enten_auf_dem_tressower_see_im_winter.jpg','postkarten-2019-enten_auf_dem_tressower_see_im_winter.jpg','469515',1748,1240,'','2019-07-29 08:49:58','2019-07-29 08:49:58','wolfgang','wolfgang',0),
  (15,3,'','image/jpeg','postkarten-2019-ferien_am_tressower_see.jpg','postkarten-2019-ferien_am_tressower_see.jpg','618156',1748,1240,'','2019-07-29 08:49:58','2019-07-29 08:49:58','wolfgang','wolfgang',0),
  (16,3,'','image/jpeg','postkarten-2019-schwan_morgenrot_tressower_see.jpg','postkarten-2019-schwan_morgenrot_tressower_see.jpg','889906',1748,1240,'','2019-07-29 08:49:58','2019-07-29 08:49:58','wolfgang','wolfgang',0),
  (17,3,'','image/jpeg','postkarten-2019-tressower_see_urlaub_in_mecklenburg.jpg','postkarten-2019-tressower_see_urlaub_in_mecklenburg.jpg','435574',1748,1240,'','2019-07-29 08:49:58','2019-07-29 08:49:58','wolfgang','wolfgang',0),
  (18,3,'','image/jpeg','postkarten-2019-urlaub-am-tressower-see.jpg','postkarten-2019-urlaub-am-tressower-see.jpg','80588',1748,1240,'','2019-07-29 08:49:58','2019-07-29 08:49:58','wolfgang','wolfgang',0),
  (19,3,'','image/jpeg','postkarten_uebersicht_2019_1.jpg','postkarten_uebersicht_2019_1.jpg','342321',1383,796,'','2019-07-30 11:15:24','2019-07-30 11:15:24','wolfgang','wolfgang',0),
  (20,3,'','image/jpeg','uebersicht_2019_1-ganz.jpg','uebersicht_2019_1-ganz.jpg','333523',1400,960,'','2019-07-31 11:48:35','2019-07-31 11:48:35','wolfgang','wolfgang',0),
  (21,3,'','image/jpeg','uebersicht_2019_1-set.jpg','uebersicht_2019_1-set.jpg','370241',1400,960,'','2019-07-31 11:48:35','2019-07-31 11:48:35','wolfgang','wolfgang',0),
  (22,4,'','application/pdf','agb_2019-08_warehouse.pdf','agb_2019-08_warehouse.pdf','47547',0,0,'','2019-08-04 08:48:47','2019-08-04 08:48:47','wolfgang','wolfgang',0);
/*!40000 ALTER TABLE `rex_media` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_category`;
CREATE TABLE `rex_media_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `attributes` text,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_category` WRITE;
/*!40000 ALTER TABLE `rex_media_category` DISABLE KEYS */;
INSERT INTO `rex_media_category` VALUES 
  (1,'Postkarten',0,'|','2019-07-15 08:04:29','2019-07-15 08:04:29','wolfgang','wolfgang','',0),
  (2,'Tressower See Edition 2015',1,'|1|','2019-07-15 08:04:39','2019-07-29 08:49:07','wolfgang','wolfgang','',0),
  (3,'Tressower See Edition 2019',1,'|1|','2019-07-29 08:49:19','2019-07-29 08:49:19','wolfgang','wolfgang','',0),
  (4,'PDF',0,'|','2019-08-04 08:48:28','2019-08-04 08:48:28','wolfgang','wolfgang','',0);
/*!40000 ALTER TABLE `rex_media_category` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type`;
CREATE TABLE `rex_media_manager_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_manager_type` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type` VALUES 
  (1,1,'rex_mediapool_detail','Zur Darstellung von Bildern in der Detailansicht im Medienpool','2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (2,1,'rex_mediapool_maximized','Zur Darstellung von Bildern im Medienpool wenn maximiert','2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (3,1,'rex_mediapool_preview','Zur Darstellung der Vorschaubilder im Medienpool','2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (4,1,'rex_mediabutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIA_BUTTON[]s','2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (5,1,'rex_medialistbutton_preview','Zur Darstellung der Vorschaubilder in REX_MEDIALIST_BUTTON[]s','2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (7,0,'product','','2019-07-21 21:59:14','wolfgang','2019-07-21 21:59:39','wolfgang'),
  (8,0,'cartthumb','','2019-07-29 18:07:02','wolfgang','2019-07-29 18:07:29','wolfgang');
/*!40000 ALTER TABLE `rex_media_manager_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_media_manager_type_effect`;
CREATE TABLE `rex_media_manager_type_effect` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_id` int(10) unsigned NOT NULL,
  `effect` varchar(255) NOT NULL,
  `parameters` text NOT NULL,
  `priority` int(10) unsigned NOT NULL,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_media_manager_type_effect` WRITE;
/*!40000 ALTER TABLE `rex_media_manager_type_effect` DISABLE KEYS */;
INSERT INTO `rex_media_manager_type_effect` VALUES 
  (1,1,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"200\",\"rex_effect_resize_height\":\"200\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (2,2,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"600\",\"rex_effect_resize_height\":\"600\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (3,3,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"80\",\"rex_effect_resize_height\":\"80\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (4,4,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (5,5,'resize','{\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_amount\":\"80\",\"rex_effect_filter_blur_radius\":\"8\",\"rex_effect_filter_blur_threshold\":\"3\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"246\",\"rex_effect_resize_height\":\"246\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"not_enlarge\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"}}',1,'2019-08-22 12:46:00','wolfgang','2019-08-22 12:46:00','wolfgang'),
  (6,7,'resize','{\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_image_properties\":{\"rex_effect_image_properties_jpg_quality\":\"\",\"rex_effect_image_properties_png_compression\":\"\",\"rex_effect_image_properties_webp_quality\":\"\",\"rex_effect_image_properties_interlace\":null},\"rex_effect_filter_brightness\":{\"rex_effect_filter_brightness_brightness\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_filter_contrast\":{\"rex_effect_filter_contrast_contrast\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"500\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"150\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"}}',1,'2019-07-21 21:59:39','wolfgang','2019-07-21 21:59:39','wolfgang'),
  (7,8,'resize','{\"rex_effect_rounded_corners\":{\"rex_effect_rounded_corners_topleft\":\"\",\"rex_effect_rounded_corners_topright\":\"\",\"rex_effect_rounded_corners_bottomleft\":\"\",\"rex_effect_rounded_corners_bottomright\":\"\"},\"rex_effect_workspace\":{\"rex_effect_workspace_width\":\"\",\"rex_effect_workspace_height\":\"\",\"rex_effect_workspace_hpos\":\"left\",\"rex_effect_workspace_vpos\":\"top\",\"rex_effect_workspace_set_transparent\":\"colored\",\"rex_effect_workspace_bg_r\":\"\",\"rex_effect_workspace_bg_g\":\"\",\"rex_effect_workspace_bg_b\":\"\"},\"rex_effect_crop\":{\"rex_effect_crop_width\":\"\",\"rex_effect_crop_height\":\"\",\"rex_effect_crop_offset_width\":\"\",\"rex_effect_crop_offset_height\":\"\",\"rex_effect_crop_hpos\":\"center\",\"rex_effect_crop_vpos\":\"middle\"},\"rex_effect_insert_image\":{\"rex_effect_insert_image_brandimage\":\"\",\"rex_effect_insert_image_hpos\":\"left\",\"rex_effect_insert_image_vpos\":\"top\",\"rex_effect_insert_image_padding_x\":\"-10\",\"rex_effect_insert_image_padding_y\":\"-10\"},\"rex_effect_rotate\":{\"rex_effect_rotate_rotate\":\"0\"},\"rex_effect_filter_colorize\":{\"rex_effect_filter_colorize_filter_r\":\"\",\"rex_effect_filter_colorize_filter_g\":\"\",\"rex_effect_filter_colorize_filter_b\":\"\"},\"rex_effect_image_properties\":{\"rex_effect_image_properties_jpg_quality\":\"\",\"rex_effect_image_properties_png_compression\":\"\",\"rex_effect_image_properties_webp_quality\":\"\",\"rex_effect_image_properties_interlace\":null},\"rex_effect_filter_brightness\":{\"rex_effect_filter_brightness_brightness\":\"\"},\"rex_effect_flip\":{\"rex_effect_flip_flip\":\"X\"},\"rex_effect_filter_contrast\":{\"rex_effect_filter_contrast_contrast\":\"\"},\"rex_effect_filter_sharpen\":{\"rex_effect_filter_sharpen_amount\":\"80\",\"rex_effect_filter_sharpen_radius\":\"0.5\",\"rex_effect_filter_sharpen_threshold\":\"3\"},\"rex_effect_resize\":{\"rex_effect_resize_width\":\"66\",\"rex_effect_resize_height\":\"\",\"rex_effect_resize_style\":\"maximum\",\"rex_effect_resize_allow_enlarge\":\"enlarge\"},\"rex_effect_filter_blur\":{\"rex_effect_filter_blur_repeats\":\"10\",\"rex_effect_filter_blur_type\":\"gaussian\",\"rex_effect_filter_blur_smoothit\":\"\"},\"rex_effect_mirror\":{\"rex_effect_mirror_height\":\"\",\"rex_effect_mirror_set_transparent\":\"colored\",\"rex_effect_mirror_bg_r\":\"\",\"rex_effect_mirror_bg_g\":\"\",\"rex_effect_mirror_bg_b\":\"\"},\"rex_effect_header\":{\"rex_effect_header_download\":\"open_media\",\"rex_effect_header_cache\":\"no_cache\"},\"rex_effect_convert2img\":{\"rex_effect_convert2img_convert_to\":\"jpg\",\"rex_effect_convert2img_density\":\"150\"},\"rex_effect_mediapath\":{\"rex_effect_mediapath_mediapath\":\"\"}}',1,'2019-07-29 18:07:29','wolfgang','2019-07-29 18:07:29','wolfgang');
/*!40000 ALTER TABLE `rex_media_manager_type_effect` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_field`;
CREATE TABLE `rex_metainfo_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `priority` int(10) unsigned NOT NULL,
  `attributes` text NOT NULL,
  `type_id` int(10) unsigned DEFAULT NULL,
  `default` varchar(255) NOT NULL,
  `params` text,
  `validate` text,
  `callback` text,
  `restrictions` text,
  `createuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_metainfo_field` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_field` DISABLE KEYS */;
INSERT INTO `rex_metainfo_field` VALUES 
  (1,'translate:online_from','art_online_from',1,'',10,'','','','','','wolfgang','2019-07-25 17:03:36','wolfgang','2019-07-25 17:03:36'),
  (2,'translate:online_to','art_online_to',2,'',10,'','','','','','wolfgang','2019-07-25 17:03:36','wolfgang','2019-07-25 17:03:36'),
  (3,'translate:description','art_description',3,'',2,'','','','','','wolfgang','2019-07-25 17:03:36','wolfgang','2019-07-25 17:03:36'),
  (4,'Menütyp','cat_menu_type',1,'multiple=\"multiple\" class=\"selectpicker\"',3,'','1:Hauptnavigation|2:Shop|3:Metanavigation|4:Footer|0:nicht anzeigen','','','','wolfgang','2019-07-25 17:04:55','wolfgang','2019-07-31 10:53:21');
/*!40000 ALTER TABLE `rex_metainfo_field` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_metainfo_type`;
CREATE TABLE `rex_metainfo_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `dbtype` varchar(255) NOT NULL,
  `dblength` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_metainfo_type` WRITE;
/*!40000 ALTER TABLE `rex_metainfo_type` DISABLE KEYS */;
INSERT INTO `rex_metainfo_type` VALUES 
  (1,'text','text',0),
  (2,'textarea','text',0),
  (3,'select','varchar',255),
  (4,'radio','varchar',255),
  (5,'checkbox','varchar',255),
  (6,'REX_MEDIA_WIDGET','varchar',255),
  (7,'REX_MEDIALIST_WIDGET','text',0),
  (8,'REX_LINK_WIDGET','varchar',255),
  (9,'REX_LINKLIST_WIDGET','text',0),
  (10,'date','text',0),
  (11,'datetime','text',0),
  (12,'legend','text',0),
  (13,'time','text',0);
/*!40000 ALTER TABLE `rex_metainfo_type` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module`;
CREATE TABLE `rex_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `output` mediumtext NOT NULL,
  `input` mediumtext NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `attributes` text,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_module` WRITE;
/*!40000 ALTER TABLE `rex_module` DISABLE KEYS */;
INSERT INTO `rex_module` VALUES 
  (1,'Warehouse Warenkorb','<?php /* Warehouse Cart Page - Output */ \n\n$cart = warehouse::get_cart();\n$fragment = new rex_fragment();\n$fragment->setVar(\'cart\',$cart);\n$fragment->setVar(\'mode\',\'modul\');\necho $fragment->parse(\'wh_cart_page.php\');\n\n?>\n','<?php /* UK . 370 . Warehouse Cart Page - Input - Id: 13 */ ?>\n\n<?php\n$selectvals = [1=>\'Eins\',2=>\'Zwei\',3=>\'Drei\',4=>\'Vier\'];\n$REX_VAL2 = rex_var::toArray(\"REX_VALUE[2]\");\nif (!$REX_VAL2) {\n    $REX_VAL2 = [];\n}\n?>\n\n<select class=\"form-control sort_select\" id=\"for_value-2\" type=\"text\" multiple=\"multiple\">\n    <?php foreach ($selectvals as $k=>$v) : ?>\n        <option value=\"<?= $k ?>\" <?= in_array($k,$REX_VAL2) ? \'selected\' : \'\' ?>><?= $v ?></option>\n    <?php endforeach ?>\n</select>\n\n<div id=\"val2_container\">\n    <table class=\"sortable table table-striped\">\n        <tbody>\n            <?php foreach ($REX_VAL2 as $k) : ?>\n            <tr data-val=\"<?= $k ?>\"><td><input type=\"hidden\" name=\"REX_INPUT_VALUE[2][]\" value=\"<?= $k ?>\"><?= $selectvals[$k] ?></td><td><a class=\"weg\">X</a></td></tr>\n            <?php endforeach ?>\n        </tbody>\n    </table>\n</div>\n\n\n<script>\n    $(function() {\n        $(\'body\').on(\'change\',\'.sort_select\',function() {\n            $(this).closest(\'select\').find(\'option\').each(function() {\n                if ($(this).prop(\'selected\')) {\n                    if (!$(\"#val2_container tbody\").find(\'[data-val=\"\'+$(this).val()+\'\"]\').length) {\n                        $(\'#val2_container tbody\').append(\'<tr data-val=\"\'+$(this).val()+\'\"><td><input type=\"hidden\" name=\"REX_INPUT_VALUE[2][]\" value=\"\'+$(this).val()+\'\">\'+$(this).html()+\'</td><td><a class=\"weg\">X</a></td></tr>\');\n                    }\n                } else {\n                    $(\'#val2_container tbody tr[data-val=\"\'+$(this).val()+\'\"]\').remove();\n                }\n            });\n        });\n        $(\'table.sortable tbody\').sortable();\n        $(\'#val2_container\').on(\'click\',\'.weg\',function() {\n            val = $(this).closest(\'tr\').data(\'val\');\n            $(\'.sort_select option[value=\"\'+val+\'\"]\').prop(\'selected\',false);\n            $(this).closest(\'tr\').remove();\n        });\n    })\n</script>\n\n\n','','wolfgang','0000-00-00 00:00:00','2019-07-29 21:59:54','',0),
  (2,'Warehouse Checkout','<?php\r\n$js = <<<EOT\r\n<style>\r\n    input#accordion_switcher + .accordion {\r\n        display: none;\r\n    }\r\n    input#accordion_switcher:checked + .accordion {\r\n        display: block;\r\n    }\r\n    #accordion_switcher_label {\r\n        text-decoration: underline;\r\n        cursor: pointer;\r\n    }\r\n    #direct_debit_box {\r\n        display: none;\r\n    }\r\n    #giropay_box {\r\n        display: none;\r\n    }\r\n</style>\r\n<script type=\"text/javascript\">\r\n    $(function() {\r\n        $(\'#payment_box input\').each(function() {\r\n            if ($(this).val() == \'direct_debit\' && $(this).prop(\'checked\')) {                \r\n                $(\'#direct_debit_box\').show();            \r\n            }\r\n            if ($(this).val() == \'giropay\' && $(this).prop(\'checked\')) {                \r\n                $(\'#giropay_box\').show();            \r\n            }\r\n        });\r\n        $(\'#payment_box\').on(\'change\',\'input\',function() {\r\n            $(\'#direct_debit_box\').hide();\r\n            $(\'#giropay_box\').hide();\r\n            if ($(this).val() == \'direct_debit\') {\r\n                $(\'#direct_debit_box\').show();                \r\n            }\r\n            if ($(this).val() == \'giropay\') {\r\n                $(\'#giropay_box\').show();                \r\n            }\r\n//            console.log($(this).val());\r\n        }); \r\n    });\r\n\r\n</script>\r\nEOT;\r\n\r\nrex::setProperty(\'js\',$js.rex::getProperty(\'js\',\'\'));\r\n?>\r\n\r\n<?php /* Checkout - Adresseingabe - Output */\r\n\r\n$userdata = warehouse::get_user_data();\r\n$userdata = warehouse::ensure_userdata_fields($userdata);\r\n\r\n// dump($userdata);\r\n\r\n$article_id = \"REX_ARTICLE_ID\";\r\n\r\n$current_payment_types = warehouse::get_available_payment_types();\r\n// dump($current_payment_types);\r\n       \r\n$yf = new rex_yform();\r\n\r\n\r\n\r\n$yf->setObjectparams(\'form_action\',rex_getUrl($article_id));\r\n// $yf->setObjectparams(\'form_showformafterupdate\', 0);\r\n$yf->setObjectparams(\'form_wrap_class\', \'yform wh-form\');\r\n$yf->setObjectparams(\'debug\',0);\r\n$yf->setObjectparams(\'form_ytemplate\',\'uikit,bootstrap,classic\');\r\n$yf->setObjectparams(\'form_class\', \'uk-form rex-yform wh_checkout\');\r\n$yf->setObjectparams(\'form_anchor\', \'rex-yform\');\r\n\r\n$yf->setValueField(\'html\',[\'\',\'<section>\r\n    <div class=\"uk-child-width-1-1 uk-child-width-1-2@s uk-grid\" uk-grid=\"margin: uk-margin-small\">\r\n    <div>\r\n\']);\r\n$yf->setValueField(\'text\',[\'firstname\',\'Vorname*\',$userdata[\'firstname\'],\'[no_db]\',[\'required\'=>\'required\']]);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'text\',[\'lastname\',\'Nachname*\',$userdata[\'lastname\'],\'[no_db]\',[\'required\'=>\'required\']]);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n// $yf->setValueField(\'text\',[\'birthdate\',\'Geburtsdatum*\',$userdata[\'birthdate\'],\'[no_db]\',[\'required\'=>\'required\']]);\r\n// $yf->setValueField(\'html\',[\'\',\'</div><div class=\"uk-grid-margin uk-first-column\">\']);\r\n$yf->setValueField(\'text\',[\'company\',\'Firma\',$userdata[\'company\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'text\',[\'department\',\'Abteilung\',$userdata[\'department\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div class=\"uk-grid-margin\">\']);\r\n$yf->setValueField(\'text\',[\'address\',\'Adresse*\',$userdata[\'address\'],\'[no_db]\',[\'required\'=>\'required\']]);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'text\',[\'zip\',\'PLZ*\',$userdata[\'zip\'],\'[no_db]\',[\'required\'=>\'required\']]);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div class=\"uk-grid-margin\">\']);\r\n$yf->setValueField(\'text\',[\'city\',\'Ort*\',$userdata[\'city\'],\'[no_db]\',[\'required\'=>\'required\']]);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'choice\',[\'country\',\'Land\',rex_config::get(\'warehouse\',\'country_codes\'),0,0]);\r\n// $yf->setValueField(\'text\',[\'country\',\'Land\',$userdata[\'country\'],\'[no_db]\',[\'required\'=>\'required\']]);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div class=\"uk-grid-margin\">\']);\r\n$yf->setValueField(\'text\',[\'email\',\'E-Mail*\',$userdata[\'email\'],\'[no_db]\',[\'required\'=>\'required\']]);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'text\',[\'phone\',\'Telefon\',$userdata[\'phone\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']); // \r\n\r\n$yf->setValueField(\'html\',[\'\',\'<div class=\"uk-grid-margin\">\']);\r\n$yf->setValueField(\'html\',[\'\',\'<button uk-toggle=\"target: #separate_delivery_address\" type=\"button\" class=\"uk-button\">Abweichende Lieferadresse</button>\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n\r\n$yf->setValueField(\'html\',[\'\',\'<div id=\"separate_delivery_address\" class=\"uk-child-width-1-1 uk-child-width-1-2@s uk-grid\" uk-grid=\"margin: uk-margin-small\" hidden>\']);\r\n\r\n$yf->setValueField(\'html\',[\'\',\'<div>\']);\r\n$yf->setValueField(\'text\',[\'to_firstname\',\'Vorname\',$userdata[\'to_firstname\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'text\',[\'to_lastname\',\'Nachname\',$userdata[\'to_lastname\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'text\',[\'to_company\',\'Firma\',$userdata[\'to_company\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'text\',[\'to_department\',\'Abteilung\',$userdata[\'to_department\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'text\',[\'to_address\',\'Adresse\',$userdata[\'to_address\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n$yf->setValueField(\'text\',[\'to_zip\',\'PLZ\',$userdata[\'to_zip\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div class=\"uk-grid-margin\">\']);\r\n$yf->setValueField(\'text\',[\'to_city\',\'Ort\',$userdata[\'to_city\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n// $yf->setValueField(\'text\',[\'to_country\',\'Land\',$userdata[\'to_country\'],\'[no_db]\']);\r\n$yf->setValueField(\'choice\',[\'to_country\',\'Land\',rex_config::get(\'warehouse\',\'country_codes\'),0,0]);\r\n\r\n// $yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']); // #separate_delivery_address\r\n\r\n$yf->setValueField(\'html\',[\'\',\'<div class=\"uk-child-width-1-1 uk-child-width-1-2@s uk-grid\" uk-grid=\"margin: uk-margin-small\">\']);\r\n$yf->setValueField(\'html\',[\'\',\'<div>\']);\r\n$yf->setValueField(\'textarea\',[\'note\',\'Bemerkung\',$userdata[\'note\'],\'[no_db]\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n\r\n$yf->setValueField(\'html\',[\'\',\'<div class=\"uk-child-width-1-1 uk-child-width-1-2@s uk-grid\" uk-grid=\"margin: uk-margin-small\">\']);\r\n$yf->setValueField(\'html\',[\'\',\'<div id=\"payment_box\">\']);\r\n\r\nif (count($current_payment_types) > 1) {\r\n    $yf->setValueField(\'choice\',[\"payment_type\",\"{{ Payment Type }}\",json_encode($current_payment_types),1,0,$userdata[\'payment_type\']]);\r\n} else {\r\n    $yf->setValueField(\'html\',[\'\',\'{{ Payment Type }}: \'.array_keys($current_payment_types)[0]]);\r\n    $yf->setValueField(\'hidden\',[\'payment_type\',array_values($current_payment_types)[0]]);\r\n}\r\n\r\n\r\n// $yf->setValueField(\'choice\',[\"payment_type\",\"{{ Payment Type }}\",\'{\"Vorauskasse\":\"prepayment\",\"Paypal\":\"paypal\"}\',1,0]);\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n\r\nif (count($current_payment_types) > 1) {\r\n    if (in_array(\'direct_debit\',$current_payment_types)) {\r\n        $yf->setValueField(\'html\',[\'\',\'<div id=\"direct_debit_box\" class=\"uk-child-width-1-1 uk-child-width-1-2@s uk-grid\" uk-grid=\"margin: uk-margin-small\">\']);\r\n            $yf->setValueField(\'html\',[\'\',\'<div>{{ sepa_lastschrift_text }}</div>\']);\r\n            $yf->setValueField(\'html\',[\'\',\'<div>\']);\r\n            $yf->setValueField(\'text\',[\'iban\',\'IBAN*\',$userdata[\'iban\'],\'[no_db]\']);\r\n            $yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n            $yf->setValueField(\'text\',[\'bic\',\'BIC*\',$userdata[\'bic\'],\'[no_db]\']);\r\n            $yf->setValueField(\'html\',[\'\',\'</div><div>\']);\r\n            $yf->setValueField(\'text\',[\'direct_debit_name\',\'Ggf. abweichender Kontoinhaber\',$userdata[\'direct_debit_name\'],\'[no_db]\']);\r\n            $yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n        $yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n        $yf->setValidateField(\'customfunction\',[\'iban\',\'wh_helper::validate_sub_values\',[\'payment_type\',\'direct_debit\'],\'Bitte füllen Sie alle markierten Felder aus.\']);\r\n        $yf->setValidateField(\'customfunction\',[\'bic\',\'wh_helper::validate_sub_values\',[\'payment_type\',\'direct_debit\'],\'Bitte füllen Sie alle markierten Felder aus.\']);\r\n    }\r\n\r\n    if (in_array(\'giropay\',$current_payment_types)) {\r\n        $yf->setValueField(\'html\',[\'\',\'<div id=\"giropay_box\" class=\"uk-child-width-1-1 uk-child-width-1-2@s uk-grid\" uk-grid=\"margin: uk-margin-small\">\']);\r\n            $yf->setValueField(\'html\',[\'\',\'<div>\']);\r\n            $yf->setValueField(\'text\',[\'giropay_bic\',\'BIC*\',$userdata[\'giropay_bic\'],\'no_db\']);\r\n            $yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n        $yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n    }\r\n} else {\r\n    if (in_array(\'giropay\',$current_payment_types)) {\r\n        $yf->setValueField(\'html\',[\'\',\'<div class=\"uk-child-width-1-1 uk-child-width-1-2@s uk-grid\" uk-grid=\"margin: uk-margin-small\">\']);\r\n            $yf->setValueField(\'html\',[\'\',\'<div>\']);\r\n            $yf->setValueField(\'text\',[\'giropay_bic\',\'BIC*\',$userdata[\'giropay_bic\'],\'no_db\']);\r\n            $yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n        $yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n        $yf->setValidateField(\'customfunction\',[\'giropay_bic\',\'wh_helper::validate_sub_values\',[\'payment_type\',\'giropay\'],\'Bitte füllen Sie alle markierten Felder aus.\']);\r\n    }    \r\n}\r\n\r\n$yf->setValueField(\'html\',[\'\',\'</div>\']);\r\n\r\n$yf->setValueField(\'submit\',[\'send\',\'Weiter ...\',\'\',\'[no_db]\',\'\',\'button\']);\r\n$yf->setValueField(\'html\',[\'\',\'</div></div>\']);\r\n$yf->setValueField(\'html\',[\'\',\'</section>\']);\r\n\r\n$yf->setValidateField(\'empty\',[\'payment_type\',\'Bitte füllen Sie alle markierten Felder aus\']);\r\n$yf->setValidateField(\'empty\',[\'firstname\',\'Bitte füllen Sie alle markierten Felder aus\']);\r\n// $yf->setValidateField(\'empty\',[\'birthdate\',\'Bitte füllen Sie alle markierten Felder aus\']);\r\n// $yf->setValidateField(\'size_range\',[\'birthdate\',8,12,\'Bitte geben Sie das Datum in der Form dd.mm.YYYY an.\']);\r\n$yf->setValidateField(\'empty\',[\'email\',\'Bitte füllen Sie alle markierten Felder aus\']);\r\n$yf->setValidateField(\'email\',[\'email\',\'Bitte geben Sie eine gültige E-Mail Adresse ein\']);\r\n\r\n$yf->setActionField(\'callback\', [\'warehouse::save_userdata_in_session\']);\r\n$yf->setActionField(\'redirect\',[rex_config::get(\'warehouse\',\'order_page\')]);\r\n\r\n$form = $yf->getForm();\r\n\r\n$fragment = new rex_fragment();\r\n$fragment->setVar(\'form\',$form);\r\necho $fragment->parse(\'wh_checkout_page.php\');\r\n\r\n?>\r\n\r\n','<?php /* Checkout - Adresseingabe - Input */ ?>','','wolfgang','0000-00-00 00:00:00','2019-09-01 20:43:59','',0),
  (3,'Warehouse Bestellungen','<?php /* Meine Bestellungen - Output */\n\n\nif ($order_id = rex_get(\'order_id\',\'int\')) {\n    // Detail\n    $order = wh_orders::get_order_for_user($order_id);\n    if ($order) {\n        $fragment = new rex_fragment();\n        $fragment->setVar(\'order\',$order);\n        echo $fragment->parse(\'wh_order_page.php\');    \n    } else {\n        echo \'<p class=\"uk-text-center\">{{ Bestellung nicht gefunden }}</p>\';\n        echo \'<p class=\"uk-text-center\"><a href=\"\'.rex_getUrl().\'\">{{ Zur Übersicht }}</a></p>\';\n    }\n} else {\n    // Listendarstellung\n    $orders = wh_orders::get_orders_for_user();\n    $fragment = new rex_fragment();\n    $fragment->setVar(\'orders\',$orders);\n    echo $fragment->parse(\'wh_orders_page.php\');    \n}\n\n?>','<?php /* UK . 450 . Meine Bestellungen - Input - Id: */ ?>','','','0000-00-00 00:00:00','0000-00-00 00:00:00','',0),
  (4,'Warehouse Zusammenfassung','<?php /* UK . 420 . Bestellung Zusammenfassung - Output - Id: 15 */ ?>\r\n\r\n<?php\r\n\r\nif (rex::isBackend()) {\r\n    echo \'<h2>Bestellung Zusammenfassung</h2>\';\r\n    return;\r\n} else {\r\n    $wh_userdata = warehouse::get_user_data();\r\n    $cart = warehouse::get_cart();\r\n    $fragment = new rex_fragment();\r\n    $fragment->setVar(\'cart\', $cart);\r\n    $fragment->setVar(\'wh_userdata\', $wh_userdata);\r\n    $wh_cart_text = $fragment->parse(\'wh_order_summary_page.php\');\r\n\r\n    $yf = new rex_yform();\r\n    $yf->setObjectparams(\'form_action\', rex_getUrl());\r\n    $yf->setObjectparams(\'form_class\', \'rex-yform wh-form summary\');\r\n    $yf->setObjectparams(\'form_anchor\', \'formular\');\r\n    $yf->setObjectparams(\'form_ytemplate\', \'uikit,bootstrap,classic\');\r\n    $yf->setObjectparams(\'error_class\', \'uk-form-danger\');\r\n\r\n    $yf->setValueField(\'hidden\', [\'email\', $wh_userdata[\'email\']]);\r\n    $yf->setValueField(\'hidden\', [\'firstname\', $wh_userdata[\'firstname\']]);\r\n    $yf->setValueField(\'hidden\', [\'lastname\', $wh_userdata[\'lastname\']]);\r\n    $yf->setValueField(\'hidden\', [\'iban\', $wh_userdata[\'iban\']]);\r\n    $yf->setValueField(\'hidden\', [\'bic\', $wh_userdata[\'bic\']]);\r\n    $yf->setValueField(\'hidden\', [\'direct_debit_name\', $wh_userdata[\'direct_debit_name\']]);\r\n    $yf->setValueField(\'hidden\', [\'payment_type\', $wh_userdata[\'payment_type\']]);\r\n\r\n    /*\r\n      $yf->setHiddenField(\'email\',$wh_userdata[\'email\']);\r\n      $yf->setHiddenField(\'firstname\',$wh_userdata[\'firstname\']);\r\n      $yf->setHiddenField(\'lastname\',$wh_userdata[\'lastname\']);\r\n     */\r\n\r\n\r\n    $yf->setValueField(\'html\', [\'\', $wh_cart_text]);\r\n\r\n    $yf->setValueField(\'checkbox\', [\'agb_ok\', \'{{ agb_dsgvo_label|format(\' . rex_getUrl(14) . \',\' . rex_getUrl(15) . \') }}\', \'0,1\', \'0\']);\r\n//    $yf->setValueField(\'checkbox\', [\'dsgvo_ok\', \'{{ Ich habe die Datenschutzbestimmungen gelesen.|format(\' . rex_getUrl(4) . \') }}\', \'0,1\', \'0\']);\r\n\r\n    $yf->setValueField(\'html\', [\'\', \'</div><div class=\"col-4_md-12 right-col relative align-center\">\']); // col | col\r\n\r\n    $yf->setValueField(\'submit\', [\'send\', \'{{ Jetzt kaufen }}\', \'\', \'[no_db]\', \'\', \'uk-button uk-button-primary uk-margin-top\']);\r\n\r\n    $yf->setValidateField(\'empty\', [\'agb_ok\', \'{{ Sie müssen die AGBs akzeptieren. }}\']);\r\n//    $yf->setValidateField(\'empty\', [\'dsgvo_ok\', \'{{ Sie müssen die Datenschutzbestimmungen akzeptieren. }}\']);\r\n\r\n\r\n\r\n    if (in_array($wh_userdata[\'payment_type\'],[\'invoice\',\'prepayment\',\'direct_debit\'])) {\r\n        $yf->setActionField(\'callback\', [\'warehouse::save_order\']);\r\n        foreach (explode(\',\', rex_config::get(\'warehouse\', \'order_email\')) as $email) {\r\n            $yf->setActionField(\'tpl2email\', [rex_config::get(\'warehouse\', \'email_template_seller\'), \'\', $email]);\r\n        }\r\n        $yf->setActionField(\'tpl2email\', [rex_config::get(\'warehouse\', \'email_template_customer\'), \'email\']);\r\n        $yf->setActionField(\'callback\', [\'warehouse::clear_cart\']);\r\n        $yf->setActionField(\'redirect\', [rex_config::get(\'warehouse\', \'thankyou_page\')]);\r\n    } elseif ($wh_userdata[\'payment_type\'] == \'paypal\') {\r\n        $yf->setActionField(\'redirect\', [rex_config::get(\'warehouse\', \'paypal_page_start\')]);\r\n    } elseif ($wh_userdata[\'payment_type\'] == \'giropay\') {\r\n        $yf->setActionField(\'redirect\', [rex_config::get(\'warehouse\', \'giropay_page_start\')]);\r\n    }\r\n\r\n}\r\n\r\n?>\r\n\r\n<?= $yf->getForm() ?>\r\n','<?php /* UK . 420 . Bestellung Zusammenfassung - Input - Id: 15 */ ?>','','wolfgang','0000-00-00 00:00:00','2019-08-22 12:58:47','',0),
  (5,'Warehouse Produkt Liste und Detail','<?php /* wh05 . Katalog - Liste und Detailansicht Shop - Output  */ \r\n$wh_prop = rex::getProperty(\'wh_prop\');\r\n\r\nif (rex::isBackend()) {\r\n    echo \'<h2>Warehouse Kategorie- und Detailansicht</h2>\';\r\n} else {\r\n    $manager = Url\\Url::resolveCurrent();\r\n    if ($manager) {\r\n        $profile = $manager->getProfile();\r\n        $data_id = (int) $manager->getDatasetId();\r\n        if ($profile->getTableName() == rex::getTable(\'wh_articles\')) {\r\n            // Detailanzeige\r\n            if ($var_id = rex_get(\'var_id\',\'int\')) {\r\n                $article = wh_articles::get_articles(0,[$data_id,$var_id],true);\r\n            } else {\r\n                $article = wh_articles::get_articles(0,[$data_id],false,true);\r\n            }\r\n            \r\n//            dump($article[0]->getData());\r\n            \r\n            $attributes = wh_articles::get_attributes_for_article($article[0]);\r\n            $fragment = new rex_fragment();\r\n            $fragment->setVar(\'article\',$article[0]);\r\n            $fragment->setVar(\'articles\',$article);\r\n            $fragment->setVar(\'attributes\',$attributes);\r\n            echo $fragment->parse(\'wh_article_detail.php\');\r\n        } elseif ($profile->getTableName() == rex::getTable(\'wh_categories\')) {\r\n            $fragment = new rex_fragment();\r\n            \r\n            // Listenanzeige Unterkategorie\r\n            $categories = wh_categories::get_children($data_id);\r\n            if ($categories) {\r\n                $fragment->setVar(\'tree\',$categories);\r\n                $fragment->setVar(\'path\',$wh_prop[\'path\']);\r\n                echo $fragment->parse(\'wh_catalog.php\');\r\n            }\r\n            \r\n            // Nur Artikel - keine Varianten\r\n            $articles = wh_articles::get_articles($data_id,[]);\r\n            $category = wh_categories::get($data_id)->getData();\r\n            if (isset($articles[0])) {\r\n                $fragment->setVar(\'items\',$articles);\r\n                $fragment->setVar(\'category\',$category);\r\n                $fragment->setVar(\'path\',$wh_prop[\'path\']);\r\n                echo $fragment->parse(\'wh_article_with_variants.php\');\r\n                echo $fragment->parse(\'wh_scheme_article_with_variants.php\');\r\n            }\r\n        }\r\n    } else {\r\n        // Katalog\r\n        $fragment = new rex_fragment();\r\n        $fragment->setVar(\'tree\',$wh_prop[\'tree\']);\r\n        echo $fragment->parse(\'wh_catalog.php\');\r\n    }\r\n    \r\n}\r\n\r\n?>','<?php /* UK . 350 . Kategorie - Input */ ?>','','wolfgang','0000-00-00 00:00:00','2019-09-16 12:31:18','',0),
  (6,'Warehouse Paypal Start','<?php\r\n/* -- Warehouse Paypal Start -- */\r\nif (rex::isBackend()) {\r\n    echo \'<h2>Paypal Start</h2>\';\r\n    return;\r\n} else {\r\n    $paypal = new wh_paypal();\r\n    $paypal->init_paypal();\r\n}\r\n?>','<?php\r\n/* -- Warehouse Paypal Start -- */\r\n?>','wolfgang','','2019-07-14 21:53:35','0000-00-00 00:00:00','',0),
  (7,'Warehouse Paypal Zahlung erfolgt','<?php\r\n/* Paypal Zahlung erfolgt */\r\n// Paypal Zahlung bestätigen, Erfolg loggen, weiter leiten zur Danke-Seite\r\nif (rex::isBackend()) {\r\n    echo \'<h2>PayPal Abschluss der Zahlung, Bestätigungsmail und Bestellmail verschicken.</h2>\';\r\n    return;\r\n} else {\r\n    $pp = new wh_paypal();\r\n    $pp->execute_payment();\r\n    \r\n    // log payment\r\n    warehouse::paypal_approved($payment);\r\n\r\n    $cart = warehouse::get_cart();\r\n    $wh_userdata = warehouse::get_user_data();\r\n    \r\n    $yf = new rex_yform();\r\n    $fragment = new rex_fragment();\r\n    $fragment->setVar(\'cart\', $cart);\r\n    $fragment->setVar(\'wh_userdata\', $wh_userdata);\r\n    \r\n    $yf->setObjectparams(\'csrf_protection\',false);\r\n    $yf->setValueField(\'hidden\', [\'email\', $wh_userdata[\'email\']]);\r\n    $yf->setValueField(\'hidden\', [\'firstname\', $wh_userdata[\'firstname\']]);\r\n    $yf->setValueField(\'hidden\', [\'lastname\', $wh_userdata[\'lastname\']]);\r\n    $yf->setValueField(\'hidden\', [\'payment_type\', $wh_userdata[\'payment_type\']]);\r\n    \r\n    foreach (explode(\',\', rex_config::get(\'warehouse\', \'order_email\')) as $email) {\r\n        $yf->setActionField(\'tpl2email\', [rex_config::get(\'warehouse\', \'email_template_seller\'), \'\', $email]);\r\n    }\r\n    $yf->setActionField(\'tpl2email\', [rex_config::get(\'warehouse\', \'email_template_customer\'), \'email\']);\r\n    $yf->setActionField(\'callback\', [\'warehouse::clear_cart\']);\r\n//    $yf->setActionField(\'redirect\', [rex_config::get(\'warehouse\', \'thankyou_page\')]);\r\n    \r\n    $yf->getForm();\r\n    $yf->setObjectparams(\'send\',1);\r\n    $yf->executeActions();    \r\n    \r\n    $params = json_decode(rex_config::get(\'warehouse\',\'paypal_getparams\'),true);\r\n    \r\n//    rex_redirect(rex_config::get(\'warehouse\',\'thankyou_page\'));\r\n    rex_response::sendRedirect(rex_getUrl(rex_config::get(\'warehouse\',\'thankyou_page\'), \'\', $params ?? [] , \'&\'));    \r\n    // json_decode(rex_config::get(\'warehouse\',\'paypal_getparams\'),true)\r\n    \r\n}\r\n?>','<?php\r\n/* Paypal Zahlung erfolgt */\r\n?>','wolfgang','wolfgang','2019-07-14 22:00:22','2019-08-01 11:29:51','',0),
  (8,'010 . Text Wysiwyg','REX_VALUE[id=1 output=html]','<fieldset class=\"form-horizontal\">\r\n    <legend>Text</legend>\r\n    <div class=\"form-group\">\r\n        <label class=\"col-sm-2 control-label\" for=\"text\">Text</label>\r\n        <div class=\"col-sm-10\">\r\n            <textarea cols=\"1\" rows=\"6\" id=\"text\" class=\"form-control tinyMCE-text\" name=\"REX_INPUT_VALUE[1]\">REX_VALUE[1]</textarea>\r\n        </div>\r\n    </div>    \r\n</fieldset>\r\n','wolfgang','','2019-08-01 09:14:50','0000-00-00 00:00:00','',0),
  (9,'Warehouse Versandkosten','<?php /* -- Warehouse Versandkosten -- */ ?>\r\n<h2>Versandkosten</h2>\r\n\r\n<?php\r\n$fragment = new rex_fragment();\r\necho $fragment->parse(\'wh_shipping_cost.php\');\r\n?>','','wolfgang','wolfgang','2019-08-03 16:41:03','2019-08-03 16:45:46','',0),
  (10,'Warehouse Giropay Start','<?php /* Warehouse Giropay Start [10] */ ?>\r\n \r\n\r\n<?php\r\nif (rex::isBackend()) {\r\n    echo \'<h2>Giropay Start</h2>\';\r\n    return;\r\n} else {\r\n    $giropay = new wh_giropay();\r\n    $giropay->init_giropay();\r\n}\r\n\r\n\r\n\r\n?>','','wolfgang','wolfgang','2019-08-22 12:55:09','2019-08-22 13:00:47','',0),
  (11,'Warehouse Giropay Notify','<?php /* Warehouse Giropay Notify [11] */ ?>\r\n \r\n\r\n<?php\r\nif (rex::isBackend()) {\r\n    echo \'<h2>Giropay Notify</h2>\';\r\n    return;\r\n} else {\r\n    $giropay = new wh_giropay();\r\n    $giropay->check_response();\r\n}\r\n\r\n\r\n\r\n?>','','wolfgang','wolfgang','2019-08-30 18:40:55','2019-08-30 18:42:36','',0),
  (12,'YForm Formbuilder (mod)','<?php\r\n\r\n/**\r\n * yform.\r\n *\r\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\r\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\r\n */\r\n\r\n// module:yform_basic_output\r\n// v1.1\r\n//--------------------------------------------------------------------------------\r\n\r\nif (rex::isBackend()) {\r\n    echo \'<h2>Formular Ausgabe (nur im Frontend)</h2>\';\r\n    return;\r\n}\r\n\r\n$yform = new rex_yform();\r\nif (\'REX_VALUE[7]\' == 1) {\r\n    $yform->setDebug(true);\r\n}\r\n$form_data = \'REX_VALUE[id=3 output=html]\';\r\n$form_data = trim(rex_yform::unhtmlentities($form_data));\r\n$yform->setObjectparams(\'form_action\', rex_getUrl(REX_ARTICLE_ID, REX_CLANG_ID));\r\n$yform->setObjectparams(\'form_ytemplate\',\'uikit,bootstrap,classic\');\r\n$yform->setFormData($form_data);\r\n\r\n// action - showtext\r\nif (\'REX_VALUE[id=6]\' != \'\') {\r\n    $html = \'0\'; // plaintext\r\n    if (\'REX_VALUE[11]\' == 1) {\r\n        $html = \'1\'; // html\r\n    }\r\n\r\n    $e3 = \'\';\r\n    $e4 = \'\';\r\n    if ($html == \'0\') {\r\n        $e3 = \'<div class=\"alert alert-success\">\';\r\n        $e4 = \'</div>\';\r\n    }\r\n\r\n    $t = str_replace(\'<br />\', \'\', rex_yform::unhtmlentities(\'REX_VALUE[6]\'));\r\n    $yform->setActionField(\'showtext\', [$t, $e3, $e4, $html]);\r\n}\r\n\r\n$form_type = \'REX_VALUE[1]\';\r\n\r\n// action - email\r\nif ($form_type == \'1\' || $form_type == \'2\') {\r\n    $mail_from = (\'REX_VALUE[2]\' != \'\') ? \'REX_VALUE[2]\' : rex::getErrorEmail();\r\n    $mail_to = (\'REX_VALUE[12]\' != \'\') ? \'REX_VALUE[12]\' : rex::getErrorEmail();\r\n    $mail_subject = \'REX_VALUE[4]\';\r\n    $mail_body = str_replace(\'<br />\', \'\', rex_yform::unhtmlentities(\'REX_VALUE[5]\'));\r\n    $yform->setActionField(\'email\', [$mail_from, $mail_to, $mail_subject, $mail_body]);\r\n}\r\n\r\n// action - db\r\nif ($form_type == \'0\' || $form_type == \'2\') {\r\n    $yform->setObjectparams(\'main_table\', \'REX_VALUE[8]\');\r\n\r\n    if (\'REX_VALUE[10]\' != \'\') {\r\n        $yform->setObjectparams(\'getdata\', true);\r\n    }\r\n\r\n    $yform->setActionField(\'db\', [\'REX_VALUE[8]\', $yform->objparams[\'main_where\']]);\r\n}\r\n\r\necho \"REX_VALUE[id=13 output=html]\";\r\necho $yform->getForm();\r\necho \"REX_VALUE[id=14 output=html]\";\r\n','<?php\r\n/**\r\n * yform\r\n * @author jan.kristinus[at]redaxo[dot]org Jan Kristinus\r\n * @author <a href=\"http://www.yakamara.de\">www.yakamara.de</a>\r\n */\r\n// module:yform_basic_input\r\n// v1.1\r\n// --------------------------------------------------------------------------------\r\n// DEBUG SELECT\r\n////////////////////////////////////////////////////////////////////////////////\r\n$dbg_sel = new rex_select();\r\n$dbg_sel->setName(\'REX_INPUT_VALUE[7]\');\r\n$dbg_sel->setAttribute(\'class\', \'form-control\');\r\n$dbg_sel->addOption(\'inaktiv\', \'0\');\r\n$dbg_sel->addOption(\'aktiv\', \'1\');\r\n$dbg_sel->setSelected(\'REX_VALUE[7]\');\r\n$dbg_sel = $dbg_sel->get();\r\n\r\n\r\n// TABLE SELECT\r\n////////////////////////////////////////////////////////////////////////////////\r\n$gc = rex_sql::factory();\r\n$gc->setQuery(\'SHOW TABLES\');\r\n$tables = $gc->getArray();\r\n$tbl_sel = new rex_select();\r\n$tbl_sel->setName(\'REX_INPUT_VALUE[8]\');\r\n$tbl_sel->setAttribute(\'class\', \'form-control\');\r\n$tbl_sel->addOption(\'Keine Tabelle ausgewählt\', \'\');\r\nforeach ($tables as $key => $value) {\r\n    $tbl_sel->addOption(current($value), current($value));\r\n}\r\n$tbl_sel->setSelected(\'REX_VALUE[8]\');\r\n$tbl_sel = $tbl_sel->get();\r\n\r\n\r\n// PLACEHOLDERS\r\n////////////////////////////////////////////////////////////////////////////////\r\n$yform = new rex_yform;\r\n$form_data = \'REX_VALUE[3]\';\r\n$form_data = trim(str_replace(\'<br />\', \'\', rex_yform::unhtmlentities($form_data)));\r\n$yform->setFormData($form_data);\r\n$yform->setRedaxoVars(REX_ARTICLE_ID, REX_CLANG_ID);\r\n$placeholders = \'\';\r\nif (\'REX_VALUE[3]\' != \'\') {\r\n    $ignores = array(\'html\', \'validate\', \'action\');\r\n    $placeholders .= \'\r\n        <div id=\"yform-js-formbuilder-placeholders\">\r\n            <h3>Platzhalter: <span>[<a href=\"#\" id=\"yform-js-formbuilder-placeholders-help-toggler\">?</a>]</span></h3>\' . PHP_EOL;\r\n    foreach ($yform->objparams[\'form_elements\'] as $e) {\r\n        if (!in_array($e[0], $ignores) && isset($e[1])) {\r\n            $label = (isset($e[2]) && $e[2] != \'\') ? $e[2] . \': \' : \'\';\r\n            $placeholders .= \'<code>\' . $label . \'###\' . $e[1] . \'###</code> \' . PHP_EOL;\r\n        }\r\n    }\r\n    $placeholders .= \'\r\n            <ul id=\"yform-js-formbuilder-placeholders-help\">\r\n                <li>Die Platzhalter ergeben sich aus den obenstehenden Felddefinitionen.</li>\r\n                <li>Per Klick können einzelne Platzhalter in den Mail-Body kopiert werden.</li>\r\n                <li>Aktualisierung der Platzhalter erfolgt über die Aktualisierung des Moduls.</li>\r\n            </ul>\r\n        </div>\' . PHP_EOL;\r\n}\r\n\r\n\r\n// OTHERS\r\n////////////////////////////////////////////////////////////////////////////////\r\n$row_pad = 1;\r\n\r\n$sel = \'REX_VALUE[1]\';\r\n$db_display = ($sel == \'\' || $sel == 1) ? \' style=\"display:none\"\' : \'\';\r\n$mail_display = ($sel == \'\' || $sel == 0) ? \' style=\"display:none\"\' : \'\';\r\n?>\r\n\r\n<div id=\"yform-formbuilder\">\r\n    <fieldset class=\"form-horizontal\">\r\n        <legend>Pre- und Post HTML</legend>\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\" for=\"yform-prehtml\">Pre HTML</label>\r\n            <div class=\"col-md-10\">\r\n                <textarea id=\"yform-prehtml\" class=\"form-control\" name=\"REX_INPUT_VALUE[13]\">REX_VALUE[13]</textarea>\r\n            </div>\r\n        </div>\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\" for=\"yform-posthtml\">Post HTML</label>\r\n            <div class=\"col-md-10\">\r\n                <textarea id=\"yform-posthtml\" class=\"form-control\" name=\"REX_INPUT_VALUE[14]\">REX_VALUE[14]</textarea>\r\n            </div>\r\n        </div>\r\n\r\n    </fieldset>\r\n    <fieldset class=\"form-horizontal\">\r\n        <legend>Formular</legend>\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label text-left\">Debug Modus</label>\r\n            <div class=\"col-md-10\">\r\n                <div class=\"yform-select-style\">\r\n<?= $dbg_sel; ?>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\" for=\"yform-formbuilder-definition\">Felddefinitionen</label>\r\n            <div class=\"col-md-10\">\r\n                <textarea class=\"form-control\" style=\"font-family: monospace;\" id=\"yform-formbuilder-definition\" name=\"REX_INPUT_VALUE[3]\" rows=\"<?php echo (count(explode(\"\\r\", \'REX_VALUE[3]\')) + $row_pad); ?>\">REX_VALUE[3]</textarea>\r\n            </div>\r\n        </div>\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\">Verfügbare Feldklassen</label>\r\n            <div class=\"col-md-10\">\r\n                <div id=\"yform-formbuilder-classes-showhelp\"><?= rex_yform::showHelp(); ?></div>\r\n            </div>\r\n        </div>\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\">Meldung bei erfolgreichen Versand</label>\r\n            <div class=\"col-md-10\">\r\n                <label class=\"radio-inline\">\r\n                    <input type=\"radio\" name=\"REX_INPUT_VALUE[11]\" value=\"0\"<?php if (\"REX_VALUE[11]\" == \'0\') echo \' checked\'; ?> /> Plaintext\r\n                </label>\r\n                <label class=\"radio-inline\">\r\n                    <input type=\"radio\" name=\"REX_INPUT_VALUE[11]\" value=\"1\"<?php if (\"REX_VALUE[11]\" == \'1\') echo \' checked\'; ?> /> HTML\r\n                </label>\r\n            </div>\r\n            <div class=\"col-md-offset-2 col-md-10\">\r\n                <textarea class=\"form-control\" name=\"REX_INPUT_VALUE[6]\" rows=\"<?php echo (count(explode(\"\\r\", \'REX_VALUE[6]\')) + $row_pad); ?>\">REX_VALUE[6]</textarea>\r\n            </div>\r\n        </div>\r\n    </fieldset>\r\n\r\n    <fieldset class=\"form-horizontal\">\r\n        <legend>Vordefinierte Aktionen</legend>\r\n\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\">Bei Submit</label>\r\n            <div class=\"col-md-10\">\r\n                <div class=\"yform-select-style\">\r\n                    <select class=\"form-control\" id=\"yform-js-formbuilder-action-select\" name=\"REX_INPUT_VALUE[1]\" size=\"1\">\r\n                        <option value=\"\"<?php if (\"REX_VALUE[1]\" == \"\") echo \" selected \"; ?>>Nichts machen (actions im Formular definieren)</option>\r\n                        <option value=\"0\"<?php if (\"REX_VALUE[1]\" == \"0\") echo \" selected \"; ?>>Nur in Datenbank speichern</option>\r\n                        <option value=\"1\"<?php if (\"REX_VALUE[1]\" == \"1\") echo \" selected \"; ?>>Nur E-Mail versenden</option>\r\n                        <option value=\"2\"<?php if (\"REX_VALUE[1]\" == \"2\") echo \" selected \"; ?>>E-Mail versenden und in Datenbank speichern</option>\r\n                    </select>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </fieldset>\r\n\r\n    <fieldset class=\"form-horizontal\" id=\"yform-js-formbuilder-mail-fieldset\"<?php echo $mail_display; ?> >\r\n        <legend>E-Mail-Versand:</legend>\r\n\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\">Absender</label>\r\n            <div class=\"col-md-10\">\r\n                <input class=\"form-control\" type=\"text\" name=\"REX_INPUT_VALUE[2]\" value=\"REX_VALUE[2]\" />\r\n            </div>\r\n        </div>\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\">Empfänger</label>\r\n            <div class=\"col-md-10\">\r\n                <input class=\"form-control\" type=\"text\" name=\"REX_INPUT_VALUE[12]\" value=\"REX_VALUE[12]\" />\r\n            </div>\r\n        </div>\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\">Subject</label>\r\n            <div class=\"col-md-10\">\r\n                <input class=\"form-control\" type=\"text\" name=\"REX_INPUT_VALUE[4]\" value=\"REX_VALUE[4]\" />\r\n            </div>\r\n        </div>\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\">Mailbody</label>\r\n            <div class=\"col-md-10\">\r\n                <textarea class=\"form-control\" id=\"yform-js-formbuilder-mail-body\" name=\"REX_INPUT_VALUE[5]\" rows=\"<?php echo (count(explode(\"\\r\", \'REX_VALUE[5]\')) + $row_pad); ?>\">REX_VALUE[5]</textarea>\r\n                <div class=\"help-block\">\r\n<?php echo $placeholders; ?>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n    </fieldset>\r\n\r\n    <fieldset class=\"form-horizontal\" id=\"yform-js-formbuilder-db-fieldset\"<?php echo $db_display; ?> >\r\n        <legend>Datenbank Einstellungen</legend>\r\n\r\n        <div class=\"form-group\">\r\n            <label class=\"col-md-2 control-label\">Tabelle wählen <span>[<a href=\"#\" id=\"yform-js-formbuilder-db-help-toggler\">?</a>]</span></label>\r\n            <div class=\"col-md-10\">\r\n                <div class=\"yform-select-style\">\r\n<?= $tbl_sel; ?>\r\n                </div>\r\n                <div class=\"help-block\">\r\n                    <ul id=\"yform-js-formbuilder-db-help\">\r\n                        <li>Hier werden die Daten des Formular hineingespeichert</li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </fieldset>\r\n\r\n</div>\r\n\r\n<p id=\"yform-formbuilder-info\"><?= rex_addon::get(\'yform\')->getName() . \' \' . rex_addon::get(\'yform\')->getVersion() ?></p>\r\n\r\n<script type=\"text/javascript\">\r\n    <!--\r\n  (function ($) {\r\n\r\n        // AUTOGROW BY ROWS\r\n        $(\'#yform-formbuilder textarea\').keyup(function () {\r\n            var rows = $(this).val().split(/\\r?\\n|\\r/).length + <?php echo $row_pad; ?>;\r\n            $(this).attr(\'rows\', rows);\r\n        });\r\n\r\n        // TOGGLERS\r\n        $(\'#yform-js-formbuilder-placeholders-help-toggler\').click(function (e) {\r\n            e.preventDefault();\r\n            $(\'#yform-js-formbuilder-placeholders-help\').toggle(50);\r\n            return false;\r\n        });\r\n        $(\'#yform-js-formbuilder-where-help-toggler\').click(function (e) {\r\n            e.preventDefault();\r\n            $(\'#yform-js-formbuilder-where-help\').toggle(50);\r\n            return false;\r\n        });\r\n        $(\'#yform-js-formbuilder-db-help-toggler\').click(function (e) {\r\n            e.preventDefault();\r\n            $(\'#yform-js-formbuilder-db-help\').toggle(50);\r\n            return false;\r\n        });\r\n\r\n\r\n        // INSERT PLACEHOLDERS\r\n        $(\'#yform-js-formbuilder-placeholders code\').click(function () {\r\n            newval = $(\'#yform-js-formbuilder-mail-body\').val() + \' \' + $(this).html();\r\n            $(\'#yform-js-formbuilder-mail-body\').val(newval);\r\n            $(this).addClass(\'text-muted\');\r\n        });\r\n\r\n        // TOGGLE MAIL/DB PANELS\r\n        $(\'#yform-js-formbuilder-action-select\').change(function () {\r\n            switch ($(this).val()) {\r\n                case \'\':\r\n                    $(\'#yform-js-formbuilder-db-fieldset\').hide(0);\r\n                    $(\'#yform-js-formbuilder-mail-fieldset\').hide(0);\r\n                    break;\r\n                case \'1\':\r\n                    $(\'#yform-js-formbuilder-db-fieldset\').hide(0);\r\n                    $(\'#yform-js-formbuilder-mail-fieldset\').show(0);\r\n                    break;\r\n                case \'0\':\r\n                    $(\'#yform-js-formbuilder-db-fieldset\').show(0);\r\n                    $(\'#yform-js-formbuilder-mail-fieldset\').hide(0);\r\n                    break;\r\n                case \'2\':\r\n                case \'3\':\r\n                    $(\'#yform-js-formbuilder-db-fieldset\').show(0);\r\n                    $(\'#yform-js-formbuilder-mail-fieldset\').show(0);\r\n                    break;\r\n            }\r\n        });\r\n\r\n    })(jQuery)\r\n    //-->\r\n</script>\r\n','wolfgang','wolfgang','2019-09-01 11:44:23','2019-09-01 11:46:06','',0);
/*!40000 ALTER TABLE `rex_module` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_module_action`;
CREATE TABLE `rex_module_action` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module_id` int(10) unsigned NOT NULL,
  `action_id` int(10) unsigned NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_sprog_wildcard`;
CREATE TABLE `rex_sprog_wildcard` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id` int(10) unsigned NOT NULL,
  `clang_id` int(10) unsigned NOT NULL,
  `wildcard` varchar(255) DEFAULT NULL,
  `replace` text,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_sprog_wildcard` WRITE;
/*!40000 ALTER TABLE `rex_sprog_wildcard` DISABLE KEYS */;
INSERT INTO `rex_sprog_wildcard` VALUES 
  (1,1,1,'Bestellen','Bestellen','wolfgang','wolfgang','2019-07-25 16:29:41','2019-07-25 16:29:41',0),
  (2,2,1,'Cart','Warenkorb','wolfgang','wolfgang','2019-07-31 07:54:38','2019-07-31 07:54:38',0),
  (3,3,1,'view cart','Warenkorb','wolfgang','wolfgang','2019-07-31 07:55:07','2019-07-31 07:55:07',0),
  (4,4,1,'checkout','Checkout','wolfgang','wolfgang','2019-07-31 07:55:49','2019-07-31 07:55:49',0),
  (5,5,1,'Subtotal','Subtotal','wolfgang','wolfgang','2019-07-31 07:56:30','2019-07-31 07:56:30',0),
  (6,6,1,'Shipping','Versandkosten','wolfgang','wolfgang','2019-07-31 07:56:46','2019-07-31 07:56:46',0),
  (7,7,1,'Total','Total','wolfgang','wolfgang','2019-07-31 07:56:55','2019-07-31 07:56:55',0),
  (8,8,1,'return to cart','Zurück zum Warenkorb','wolfgang','wolfgang','2019-07-31 08:01:50','2019-07-31 08:01:50',0),
  (9,9,1,'Payment Type','Zahlungsweise','wolfgang','wolfgang','2019-07-31 08:02:14','2019-07-31 08:02:14',0),
  (10,10,1,'payment_prepayment','Vorauskasse','wolfgang','wolfgang','2019-07-31 15:04:18','2019-07-31 15:04:18',0),
  (11,11,1,'Bestellübersicht','Bestellübersicht','wolfgang','wolfgang','2019-07-31 15:05:27','2019-07-31 15:05:27',0),
  (12,12,1,'Lieferadresse','Lieferadresse','wolfgang','wolfgang','2019-07-31 15:06:34','2019-07-31 15:06:34',0),
  (13,13,1,'Rechnungsadresse','Rechnungsadresse','wolfgang','wolfgang','2019-07-31 15:06:47','2019-07-31 15:06:47',0),
  (14,14,1,'agb_dsgvo_label','Ich akzeptiere die <a href=\"%s\" target=\"_blank\">Datenschutzbestimmungen</a> und die <a href=\"%s\" target=\"_blank\">AGBs</a>','wolfgang','wolfgang','2019-07-31 15:20:56','2019-07-31 15:39:19',0),
  (15,15,1,'Sie müssen die AGBs akzeptieren.','Sie müssen die AGBs akzeptieren.','wolfgang','wolfgang','2019-07-31 15:39:50','2019-07-31 15:39:50',0),
  (16,16,1,'Jetzt kaufen','Jetzt kaufen','wolfgang','wolfgang','2019-07-31 15:41:06','2019-07-31 15:41:06',0),
  (17,17,1,'Der Warenkorb ist leer','Der Warenkorb ist leer','wolfgang','wolfgang','2019-07-31 16:31:12','2019-07-31 16:31:12',0),
  (18,18,1,'Price','Preis','wolfgang','wolfgang','2019-07-31 19:18:39','2019-07-31 19:18:39',0),
  (19,19,1,'payment_paypal','Paypal','wolfgang','wolfgang','2019-08-01 11:09:03','2019-08-01 11:09:03',0),
  (20,20,1,'payment_direct_debit','SEPA Lastschrift','wolfgang','wolfgang','2019-08-04 08:54:00','2019-08-04 08:54:00',0),
  (21,21,1,'sepa_lastschrift_text','Ich ermächtige Ferien am Tressower See, Wolfgang Bund, die Zahlung von meinem Konto mittels Lastschrift einzuziehen. Zugleich weise ich mein Kreditinstitut an, die von Ferien am Tressower See auf mein Konto gezogene Lastschrift einzulösen.\r\n\r\nIch kann innerhalb von 8 Wochen, beginnend mit dem Belastungsdatum, die Erstattung des belastenden Betrages verlangen. Es gelten dabei die mit meinem Kreditinstitut vereinbarten Bedingungen.\r\n\r\nGläubiger-Identifikationsnummer: DE88FTS00002238988\r\nDie Mandatsreferenz wird separat mitgeteilt.','wolfgang','wolfgang','2019-08-04 09:39:31','2019-08-05 11:13:32',0);
/*!40000 ALTER TABLE `rex_sprog_wildcard` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_structure_tweaks`;
CREATE TABLE `rex_structure_tweaks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `label` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_structure_tweaks` WRITE;
/*!40000 ALTER TABLE `rex_structure_tweaks` DISABLE KEYS */;
INSERT INTO `rex_structure_tweaks` VALUES 
  (1,2,'split_category','Versteckt (nicht im Menü)'),
  (2,13,'split_category','Footer Menü');
/*!40000 ALTER TABLE `rex_structure_tweaks` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_template`;
CREATE TABLE `rex_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `active` tinyint(1) DEFAULT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `attributes` text,
  `revision` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_template` WRITE;
/*!40000 ALTER TABLE `rex_template` DISABLE KEYS */;
INSERT INTO `rex_template` VALUES 
  (1,'010 . Default','REX_TEMPLATE[id=2 name=php]\r\n<!DOCTYPE html>\r\n<html>\r\n    <head>\r\n        <?= $seo->getTitleTag(); ?>\r\n        <?= $seo->getRobotsTag(); ?>\r\n        <meta charset=\"utf-8\">\r\n        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n        <link rel=\"stylesheet\" href=\"/theme/public/assets/frontend/css/uikit.min.css\" />\r\n        <link rel=\"stylesheet\" href=\"/theme/public/assets/frontend/css/wh_custom.css\" />\r\n        <link rel=\"stylesheet\" href=\"/theme/public/assets/frontend/styles/style.css\" />\r\n    </head>\r\n    <body>\r\n        \r\n        \r\n        <header>\r\n            <div uk-sticky=\"sel-target: .page-header; bottom: true;cls-active: is-sticky;show-on-up: true;animation: uk-animation-slide-top\">\r\n                <nav class=\"uk-navbar-container\">\r\n                    <div class=\"uk-container\">\r\n                        <div class=\"uk-navbar-left\">\r\n                            <a class=\"uk-hidden@m uk-padding\" uk-toggle=\"target: #nav-offcanvas\">\r\n                                <span uk-icon=\"icon: menu; ratio: 2\"></span>\r\n                            </a>            \r\n                            <a class=\"uk-navbar-item uk-logo\" href=\"<?= rex_article::getSiteStartArticle()->getUrl() ?>\"><img src=\"/assets/addons/warehouse/images/logo_wh.svg\" class=\"wh_logo\"></a>\r\n                            <div class=\"uk-visible@m\" id=\"main_nav\">\r\n                                <?= $mainnav->getNavigation(); ?>\r\n                            </div>\r\n                            <?php if (rex_plugin::get(\'ycom\',\'auth\')->isAvailable()) : ?>\r\n                                <div class=\"uk-navbar-right\">\r\n                                    <ul class=\"uk-navbar-nav\">\r\n                                        <?php if ($ycom_user) : ?>\r\n                                            <li><a href=\"<?= rex_getUrl(24) ?>\"><?= $ycom_user->getValue(\'firstname\') ?></a></li>\r\n                                            <li><a href=\"<?= rex_getUrl(23) ?>\">Logout</a></li>\r\n                                        <?php else : ?>\r\n                                            <li><a href=\"<?= rex_getUrl(rex_config::get(\'ycom/auth\',\'article_id_login\')) ?>\">Login</a></li>\r\n                                            <li><a href=\"<?= rex_getUrl(rex_config::get(\'ycom/auth\',\'article_id_register\')) ?>\">Registrieren</a></li>\r\n                                        <?php endif ?>\r\n                                    </ul>                                \r\n                                </div>\r\n                            <?php endif ?>\r\n                            \r\n                            <a class=\"uk-icon-link cart_link uk-align-right uk-margin-right uk-margin-top\" uk-icon=\"cart\" href=\"<?= $to_cart_link ?>\" uk-toggle>\r\n                                <?php if (count($wh_cart)) : ?>\r\n                                    <div class=\"circle cart_count\"><?= count($wh_cart) ?></div>\r\n                                <?php endif ?>\r\n                            </a>\r\n                        </div>\r\n                    </div>\r\n                </nav>\r\n            </div>\r\n        </header>\r\n        \r\n        <section>\r\n            <article class=\"uk-container uk-padding\">\r\n                <div>\r\n                    <?php if (count($wh_prop[\'path\'])) : ?>\r\n                        <ul class=\"uk-breadcrumb\">\r\n                            <li><a href=\"<?= rex_getUrl() ?>\"><?= rex_article::getCurrent()->getName() ?></a></li>\r\n                            <?php foreach ($wh_prop[\'path\'] as $seg) : ?>\r\n                                <li>\r\n                                    <a href=\"<?= rex_getUrl(\'\',\'\',[\'category_id\'=>$seg[\'id\']]) ?>\"><?= $seg[\'name\'] ?></a>\r\n                                </li>\r\n                            <?php endforeach ?>\r\n                        </ul>\r\n                    <?php endif ?>\r\n                </div>                \r\n                REX_ARTICLE[]\r\n                <!-- pre>\r\n                <?php // print_r($wh_prop); ?>\r\n                <?php // print_r($wh_cart); ?>\r\n                </pre -->\r\n            </article>\r\n        </section>\r\n        \r\n        <footer class=\"uk-background-secondary\">\r\n            <section class=\"uk-container uk-padding\">\r\n                <nav>\r\n                    <?= $footernav->getNavigation(); ?>\r\n                </nav>                \r\n            </section>            \r\n        </footer>\r\n        \r\n        <?php /* -- Offcanvas Warenkorb -- */ ?>\r\n        <?php $fragment = new rex_fragment() ?>\r\n        <?php $fragment->setVar(\'cart\',$wh_cart); ?>\r\n        <?php echo $fragment->parse(\'wh_offcanvas_cart.php\'); ?>\r\n        \r\n        \r\n        <?php /* -- Mobiles Menü -- */ ?>\r\n       <div id=\"nav-offcanvas\" uk-offcanvas=\"\">\r\n            <aside class=\"uk-padding-remove uk-offcanvas-bar uk-card-small uk-card\">\r\n                <div class=\"uk-card-header\">\r\n                    <a class=\"uk-margin-auto-left uk-offcanvas-close\" type=\"button\" uk-close=\"ratio: 1.5\"></a>\r\n                </div>\r\n                <div class=\"uk-card-small uk-card-body uk-padding-small-top\">\r\n                    <?= $mobilenav->getNavigation(); ?>\r\n                </div>\r\n            </aside>\r\n        </div>\r\n    \r\n        \r\n        \r\n        \r\n        <?php /* -- Versandkosten Modal -- */ ?>\r\n        <div id=\"shipping_modal\" uk-modal>\r\n            <div class=\"uk-modal-dialog uk-modal-body\">\r\n                <button class=\"uk-modal-close-default\" type=\"button\" uk-close></button>\r\n                <h2 class=\"uk-modal-title\">Versandkosten</h2>\r\n                <?php echo $fragment->parse(\'wh_shipping_cost.php\'); ?>\r\n                <?php // dump(rex_config::get(\'warehouse\',\'shipping_mode\')); ?>\r\n                <?php // dump(json_decode(rex_config::get(\'warehouse\',\'shipping_parameters\'))); ?>\r\n            </div>\r\n        </div>        \r\n\r\n\r\n        <script src=\"/theme/public/assets/frontend/js/jquery-3.3.1.min.js\"></script>\r\n        <script src=\"/theme/public/assets/frontend/js/uikit.min.js\"></script>\r\n        <script src=\"/theme/public/assets/frontend/js/uikit-icons.min.js\"></script>\r\n        <script src=\"/assets/addons/warehouse/scripts/wh_scripts.js\"></script>\r\n        <?php if (rex_get(\'showcart\',\'int\')) : ?>\r\n        <script>\r\n                UIkit.offcanvas(\'#cart-offcanvas\').show();\r\n        </script>\r\n        <?php endif ?>\r\n        <?= rex::getProperty(\'js\',\'\'); ?>\r\n    </body>\r\n</html>',1,'wolfgang','wolfgang','2019-08-11 18:20:30','2019-09-16 10:29:48','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0),
  (2,'900 . PHP','<?php\r\n/* -- 900 . PHP -- */\r\n\r\n// Artikel Parameter\r\n$siteStartArticle  = rex_article::getSiteStartArticleId();\r\n$currentArtikelId  = rex_article::getCurrentId();\r\n$notfoundArticleId = rex_article::getNotfoundArticleId();\r\n$artikelStatus     = rex_article::getCurrent()->getValue( \'status\' );\r\n$currentUrl        = rex_yrewrite::getFullUrlByArticleId( $currentArtikelId );\r\n$seo               = new rex_yrewrite_seo();\r\n\r\nif (rex_plugin::get(\'ycom\',\'auth\')->isAvailable()) {\r\n    $ycom_user = rex_ycom_auth::getUser();\r\n}\r\n\r\nfunction shopmenu ($cat) {\r\n    $menutype = explode(\'|\',trim($cat->getValue(\'cat_menu_type\'),\'|\'));\r\n    if (in_array(2,$menutype)) {\r\n        $fragment = new rex_fragment();\r\n        $fragment->setVar(\'ul_class\',\'uk-nav uk-navbar-dropdown-nav\');\r\n        $fragment->setVar(\'wrapper\',[\'<div class=\"uk-navbar-dropdown\">\',\'</div>\']);\r\n        return $fragment->parse(\'wh_shop_menu.php\');\r\n    } else {\r\n        return \'\';\r\n    }\r\n}\r\n\r\nfunction mobile_shopmenu ($cat) {\r\n    $menutype = explode(\'|\',trim($cat->getValue(\'cat_menu_type\'),\'|\'));\r\n    if (in_array(2,$menutype)) {\r\n        $fragment = new rex_fragment();\r\n        $fragment->setVar(\'ul_class\',\'uk-list-divider\');\r\n        $fragment->setVar(\'wrapper\',[\'\',\'\']);\r\n        return $fragment->parse(\'wh_shop_menu.php\');\r\n    } else {\r\n        return \'\';\r\n    }\r\n}\r\n\r\n$mainnav = new wh_nav();\r\n$mainnav->ulClasses = [\'uk-navbar-nav\',\'uk-nav uk-navbar-dropdown-nav\',\'\'];\r\n$mainnav->dataAttribute = [\'uk-navbar=\"offset: 0\"\',\'\'];\r\n$mainnav->fullTree = 1;\r\n$mainnav->func_li_end = \'shopmenu\';\r\n$mainnav->ulWrapper = [\'\',[\'<div class=\"uk-navbar-dropdown\">\',\'</div>\']];\r\n$mainnav->metaField = \'cat_menu_type\';\r\n$mainnav->metaValue = 1;\r\n\r\n$mobilenav = new wh_nav();\r\n// $mobilenav->dataAttribute = [\'uk-navbar=\"offset: 0\"\',\'\'];\r\n$mobilenav->fullTree = 1;\r\n$mobilenav->func_li_end = \'mobile_shopmenu\';\r\n// $mobilenav->ulWrapper = [];\r\n// $mobilenav->liClasses = [\'uk-margin-remove uk-padding-remove\',\'uk-margin-remove uk-padding-remove\'];\r\n$mobilenav->ulClasses = [\'uk-nav uk-list-divider lev1\',\'uk-list-divider lev2\',\'\'];\r\n$mobilenav->metaField = \'cat_menu_type\';\r\n$mobilenav->metaValue = 1;\r\n\r\n$footernav = new wh_nav();\r\n$footernav->fullTree = 1;\r\n$footernav->metaField = \'cat_menu_type\';\r\n$footernav->metaValue = 4;\r\n$footernav->ulClasses = [\'uk-grid\'];\r\n\r\n$wh_prop = rex::getProperty(\'wh_prop\');\r\n$wh_cart = warehouse::get_cart();\r\n\r\n$to_cart_link = rex_config::get(\'warehouse\',\'cart_mode\') == \'cart\' ? rex_getUrl(rex_config::get(\'warehouse\',\'cart_page\')) : \'#cart-offcanvas\';\r\n\r\n// dump($wh_cart);\r\n\r\n// $nav = rex_navigation::factory();\r\n\r\n\r\n\r\n\r\n?>\r\n',0,'wolfgang','wolfgang','2019-07-14 19:41:23','2019-09-16 21:00:10','{\"ctype\":[],\"modules\":{\"1\":{\"all\":\"1\"}},\"categories\":{\"all\":\"1\"}}',0);
/*!40000 ALTER TABLE `rex_template` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_url_generator_profile`;
CREATE TABLE `rex_url_generator_profile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) NOT NULL,
  `article_id` int(11) NOT NULL,
  `clang_id` int(11) NOT NULL DEFAULT '1',
  `table_name` varchar(255) NOT NULL,
  `table_parameters` text,
  `relation_1_table_name` varchar(255) NOT NULL,
  `relation_1_table_parameters` text,
  `relation_2_table_name` varchar(255) NOT NULL,
  `relation_2_table_parameters` text,
  `relation_3_table_name` varchar(255) NOT NULL,
  `relation_3_table_parameters` text,
  `createdate` datetime NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updatedate` datetime NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `namespace` (`namespace`,`article_id`,`clang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `rex_url_generator_profile` WRITE;
/*!40000 ALTER TABLE `rex_url_generator_profile` DISABLE KEYS */;
INSERT INTO `rex_url_generator_profile` VALUES 
  (1,'category_id',1,1,'1_xxx_rex_wh_categories','{\"column_id\":\"id\",\"column_clang_id\":\"\",\"restriction_1_column\":\"\",\"restriction_1_comparison_operator\":\"=\",\"restriction_1_value\":\"\",\"restriction_2_logical_operator\":\"\",\"restriction_2_column\":\"\",\"restriction_2_comparison_operator\":\"=\",\"restriction_2_value\":\"\",\"restriction_3_logical_operator\":\"\",\"restriction_3_column\":\"\",\"restriction_3_comparison_operator\":\"=\",\"restriction_3_value\":\"\",\"column_segment_part_1\":\"name_1\",\"column_segment_part_2_separator\":\"\\/\",\"column_segment_part_2\":\"\",\"column_segment_part_3_separator\":\"\\/\",\"column_segment_part_3\":\"\",\"relation_1_column\":\"\",\"relation_1_position\":\"BEFORE\",\"relation_2_column\":\"\",\"relation_2_position\":\"BEFORE\",\"relation_3_column\":\"\",\"relation_3_position\":\"BEFORE\",\"append_user_paths\":\"\",\"append_structure_categories\":\"0\",\"column_seo_title\":\"\",\"column_seo_description\":\"\",\"column_seo_image\":\"\",\"sitemap_add\":\"1\",\"sitemap_frequency\":\"always\",\"sitemap_priority\":\"1.0\",\"column_sitemap_lastmod\":\"updatedate\"}','','[]','','[]','','[]','2019-07-15 08:16:48','wolfgang','2019-08-12 07:33:48','wolfgang'),
  (2,'wh_art_id',1,1,'1_xxx_rex_wh_articles','{\"column_id\":\"id\",\"column_clang_id\":\"\",\"restriction_1_column\":\"\",\"restriction_1_comparison_operator\":\"=\",\"restriction_1_value\":\"\",\"restriction_2_logical_operator\":\"\",\"restriction_2_column\":\"\",\"restriction_2_comparison_operator\":\"=\",\"restriction_2_value\":\"\",\"restriction_3_logical_operator\":\"\",\"restriction_3_column\":\"\",\"restriction_3_comparison_operator\":\"=\",\"restriction_3_value\":\"\",\"column_segment_part_1\":\"name_1\",\"column_segment_part_2_separator\":\"\\/\",\"column_segment_part_2\":\"id\",\"column_segment_part_3_separator\":\"\\/\",\"column_segment_part_3\":\"\",\"relation_1_column\":\"\",\"relation_1_position\":\"BEFORE\",\"relation_2_column\":\"\",\"relation_2_position\":\"BEFORE\",\"relation_3_column\":\"\",\"relation_3_position\":\"BEFORE\",\"append_user_paths\":\"\",\"append_structure_categories\":\"0\",\"column_seo_title\":\"name_1\",\"column_seo_description\":\"description_1\",\"column_seo_image\":\"image\",\"sitemap_add\":\"1\",\"sitemap_frequency\":\"always\",\"sitemap_priority\":\"1.0\",\"column_sitemap_lastmod\":\"updatedate\"}','','[]','','[]','','[]','2019-07-15 10:19:01','wolfgang','2019-08-12 07:34:01','wolfgang');
/*!40000 ALTER TABLE `rex_url_generator_profile` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_user_role`;
CREATE TABLE `rex_user_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `perms` text NOT NULL,
  `createuser` varchar(255) NOT NULL,
  `updateuser` varchar(255) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `revision` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
DROP TABLE IF EXISTS `rex_wh_article_variants`;
CREATE TABLE `rex_wh_article_variants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `whvarid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `freeprice` tinyint(1) NOT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prio` int(11) NOT NULL,
  `contents_ml` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_wh_articles`;
CREATE TABLE `rex_wh_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `whid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributegroup_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL,
  `prio` int(11) NOT NULL,
  `longtext_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `specifications_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_wh_articles` WRITE;
/*!40000 ALTER TABLE `rex_wh_articles` DISABLE KEYS */;
INSERT INTO `rex_wh_articles` VALUES 
  (3,'pk-2015-1m','Windstille am Tressower See','2','pk_2015_1_motiv_urlaub_in_mecklenburg.jpg','<p>Windstille am Tressower See</p>','','1.00','tax_value_1',0,9,'<p>Das Haus am Tressower See spiegelt sich auf der Wasseroberfläche. August 2015.</p>','pk_2015_1_motiv_urlaub_in_mecklenburg.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[]','1','','2019-08-12 07:33:09'),
  (4,'pk-2015-7m','Ferien am Tressower See - 7 Motive','2','pk_2015_7_motive_urlaub_in_mecklenburg.jpg','<p>Sieben Bilder rund um den Tressower See.</p>','','1.00','tax_value_1',0,10,'<p>Die Karte zeigt sieben Bilder rund um den Tressower See.</p>\r\n<p>Die einzelnen Motive:</p>\r\n<p>Der Tressower See wie man ihn kennt von der Straße aus gesehen - typisches Landschaftsbild</p>\r\n<ul>\r\n<li>Der Badestrand</li>\r\n<li>Das Haus</li>\r\n<li>Ruderboot auf dem See</li>\r\n<li>Kind lässt Drachen steigen</li>\r\n<li>Morgenstimmung</li>\r\n<li>Windstille mit Spiegelung</li>\r\n</ul>','pk_2015_7_motive_urlaub_in_mecklenburg.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[[\"Lagerbestand\",\"Restbestand\"]]','1','','2019-08-12 07:33:09'),
  (5,'pk-2015-4m','Der Tressower See - vier Stimmungen','2','pk_2015_4_farben_urlaub_in_mecklenburg.jpg','<p>Vier Stimmungen am Tressower See.</p>','','1.00','tax_value_1',0,11,'<p>Vier Stimmungen am Tressower See.</p>\r\n<ul>\r\n<li>Rot - Sonnenaufgang über Käselow</li>\r\n<li>Grau - Ruhiger Morgen im Mai</li>\r\n<li>Gelb - Sonnenaufgang über dem Steg</li>\r\n<li>Blau - Ufer und Haus mit Wasserspiegelung</li>\r\n</ul>','pk_2015_4_farben_urlaub_in_mecklenburg.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[[\"Lagerbestand\",\"Restbestand\"]]','1','','2019-08-12 07:33:09'),
  (6,'pk-2019-4m','Vier Stimmungen am Tressower See','2','postkarte-2019-4_farben_urlaub_in_mecklenburg.jpg','<p>Vier Stimmungen am Tressower See.</p>','1','1.00','tax_value_1',0,1,'<p>Vier Stimmungen am Tressower See.</p>\r\n<ul>\r\n<li>Grau - Ruhiger Morgen im Mai</li>\r\n<li>Rot - Schwan auf dem See</li>\r\n<li>Gelb - Sonnenaufgang über dem Steg</li>\r\n<li>Blau - Ufer und Haus mit Wasserspiegelung</li>\r\n</ul>','postkarte-2019-4_farben_urlaub_in_mecklenburg.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[]','1','','2019-09-16 09:49:00'),
  (7,'pk-2019-uesi','Ferien am Tressower See - Übersichtskarte','2','postkarte-2019-4_motive_urlaub_in_mecklenburg.jpg','<p>Die Karte zeigt vier Motive</p>','2','1.00','tax_value_1',0,2,'<p>Die Karte zeigt vier Motive:</p>\r\n<ul>\r\n<li>Kind lässt Drachen steigen</li>\r\n<li>Das Haus</li>\r\n<li>Badestrand</li>\r\n<li>Panorama im Frühjahr mit Kirschblüte</li>\r\n</ul>','postkarte-2019-4_motive_urlaub_in_mecklenburg.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[]','1','','2019-09-16 11:30:07'),
  (8,'pk-2019-4schl','Schlösser in Mecklenburg von hinten','2','postkarte-2019-schloesser_von_hinten_urlaub_in_mecklenburg.jpg','<p>Die Motive zeigen Schlösser in Nordwest-Mecklenburg von hinten.</p>','3','1.50','tax_value_1',0,3,'<p>Erstmals gibt es mit dieser Karte Motive aus der Umgebung. Die Motive sind ganz besonders ausgesucht. Sie sind in dieser Form ausgesprochen selten. Die Karte könnte also durchaus eine Rarität werden.</p>\r\n<p>Die Motive zeigen Schlösser in Nordwest-Mecklenburg von hinten.</p>\r\n<p>Zu sehen sind:</p>\r\n<ul>\r\n<li>Schloss Wiligrad am Schweriner See</li>\r\n<li>Schloss Bothmer - Haupthaus mit abgesenkter Ecke</li>\r\n<li>Schloss Plüschow</li>\r\n<li>Marstall Wiligrad</li>\r\n</ul>','postkarte-2019-schloesser_von_hinten_urlaub_in_mecklenburg.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[]','1','','2019-09-17 10:18:35'),
  (9,'pk-2019-4mrot','Postkarte vier Motive Morgenstimmungen','2','postkarten-2019-4_motive_morgen_am_see.jpg','<p>Vier Morgenstimmungen in Rot-Gelb am Tressower See.</p>','','1.00','tax_value_1',0,4,'<p>Die Karte zeigt vier Morgenstimmungen in Rot-Gelb am Tressower See.</p>','postkarten-2019-4_motive_morgen_am_see.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[]','1','','2019-08-12 07:33:09'),
  (10,'pk-2019-winter','Stockenten im Winter auf dem Tressower See','2','postkarten-2019-enten_auf_dem_tressower_see_im_winter.jpg','<p>Stockenten im Winter auf dem Tressower See.</p>','','1.00','tax_value_1',0,5,'<p>Auf besonderen Wunsch unserer Feriengäste gibt es eine Winterpostkarte mit diesem idyllischen Winterbild. Auf dem Tressower See überwintern jedes Jahr über tausend Stockenten. Diese friedvolle Stimmung hat der Fotograf hier eingefangen.</p>','postkarten-2019-enten_auf_dem_tressower_see_im_winter.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[]','1','','2019-08-12 07:33:09'),
  (11,'pk-2019-stimm','Stimmung Haus am See in der Kirschblüte','2','postkarten-2019-ferien_am_tressower_see.jpg','<p>Stimmungsbild mit dem Haus am Tressower See in der Kirschblüte.</p>','','1.00','tax_value_1',0,6,'<p>Ein Stimmungsbild mit dem Haus am Tressower See und dem See in der Kirschblüte. Nach dem grauen Winter in Mecklenburg strahlt hier die Landschaft in ihrer ganzen Farbenpracht.</p>','postkarten-2019-ferien_am_tressower_see.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[]','1','','2019-08-12 07:33:09'),
  (12,'pk-2019-schwan','Schwan im Morgenrot auf dem Tressower See','2','postkarten-2019-schwan_morgenrot_tressower_see.jpg','<p>Schwan im Morgenrot auf dem Tressower See.</p>','','1.00','tax_value_1',0,7,'<p>Ganzseitiges Motiv mit Schwan im Morgenrot auf dem Tressower See.</p>','postkarten-2019-schwan_morgenrot_tressower_see.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[]','1','','2019-08-12 07:33:09'),
  (13,'pk-2019-ganz','Typischer Blick auf den Tressower See','2','postkarten-2019-tressower_see_urlaub_in_mecklenburg.jpg','<p>Aussicht auf den See.</p>','','1.00','tax_value_1',0,8,'<p>Diesen Blick auf den See kennt jeder, der schonmal in Tressow war. Vom höchsten Punkt der Straße hat man die beste Aussicht auf den See. Auf diesem Bild von Anfang September mit lebendigem Himmel und vom Wind bewegtem Wasser.</p>','postkarten-2019-tressower_see_urlaub_in_mecklenburg.jpg,postkarten-2019-urlaub-am-tressower-see.jpg','[]','1','','2019-08-12 07:33:09'),
  (14,'pk-2019-set','Set mit 8 Postkarten 2019','3','postkarten_uebersicht_2019_1.jpg','','','5.50','tax_value_1',0,12,'<p>Acht Postkarten in einem Set.</p>','postkarten_uebersicht_2019_1.jpg,postkarten-2019-urlaub-am-tressower-see.jpg,postkarten-2019-tressower_see_urlaub_in_mecklenburg.jpg,postkarten-2019-schwan_morgenrot_tressower_see.jpg,postkarten-2019-ferien_am_tressower_see.jpg,postkarten-2019-enten_auf_dem_tressower_see_im_winter.jpg,postkarten-2019-4_motive_morgen_am_see.jpg,postkarte-2019-schloesser_von_hinten_urlaub_in_mecklenburg.jpg,postkarte-2019-4_motive_urlaub_in_mecklenburg.jpg,postkarte-2019-4_farben_urlaub_in_mecklenburg.jpg','[[\"Lagerbestand\",\"sofort lieferbar\"],[\"Format\",\"DIN A6\"]]','1','','2019-08-12 07:33:09'),
  (15,'pk-2019-set-1','Set mit 8 ganzseitigen Postkarten','3','uebersicht_2019_1-ganz.jpg','<p>Vier verschiedene Motive vom Tressower See.</p>','','5.50','tax_value_1',0,13,'<p>Das Set enthält acht Postkarten mit vier unterschiedlichen ganzseitigen Karten. Jede Karte ist zweimal im Set enthalten.</p>','uebersicht_2019_1-ganz.jpg,postkarten-2019-urlaub-am-tressower-see.jpg,postkarten-2019-tressower_see_urlaub_in_mecklenburg.jpg,postkarten-2019-schwan_morgenrot_tressower_see.jpg,postkarten-2019-ferien_am_tressower_see.jpg,postkarten-2019-enten_auf_dem_tressower_see_im_winter.jpg','[]','1','','2019-08-12 07:33:09'),
  (16,'pk-2019-set2','Set mit 8 Postkarten verschiedene Motive','3','uebersicht_2019_1-set.jpg','<p>Das Set enthält acht Postkarten.</p>','','5.50','tax_value_1',0,14,'<p>Das Set enthält acht Postkarten. Jedes Motiv ist zweimal enthalten.</p>','uebersicht_2019_1-set.jpg,postkarten-2019-urlaub-am-tressower-see.jpg,postkarten-2019-4_motive_morgen_am_see.jpg,postkarte-2019-schloesser_von_hinten_urlaub_in_mecklenburg.jpg,postkarte-2019-4_motive_urlaub_in_mecklenburg.jpg,postkarte-2019-4_farben_urlaub_in_mecklenburg.jpg','[]','1','','2019-08-12 07:33:09');
/*!40000 ALTER TABLE `rex_wh_articles` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_wh_attribute_values`;
CREATE TABLE `rex_wh_attribute_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prio` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_wh_attribute_values` WRITE;
/*!40000 ALTER TABLE `rex_wh_attribute_values` DISABLE KEYS */;
INSERT INTO `rex_wh_attribute_values` VALUES 
  (1,6,1,'spon0','ohne Sponsoring','0','1',0),
  (2,6,1,'spon1','Sponsoring','1','1',1),
  (3,6,1,'spon+','Sponsoring+','2','1',2),
  (4,6,1,'spon++','Sponsoring++','5','1',3),
  (5,7,2,'04,rot,11,li,0','','','',0),
  (6,8,1,'spon0','ohne Sponsoring','0','1',0),
  (7,8,1,'spon5','5 Euro Sponsoring','5','1',1),
  (8,8,2,'04,li,0','','','',0);
/*!40000 ALTER TABLE `rex_wh_attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_wh_attributegroups`;
CREATE TABLE `rex_wh_attributegroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_wh_attributegroups` WRITE;
/*!40000 ALTER TABLE `rex_wh_attributegroups` DISABLE KEYS */;
INSERT INTO `rex_wh_attributegroups` VALUES 
  (1,'Postkarten','1'),
  (2,'pk2','2'),
  (3,'pk3','1,2');
/*!40000 ALTER TABLE `rex_wh_attributegroups` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_wh_attributes`;
CREATE TABLE `rex_wh_attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `whattrid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prio` int(11) NOT NULL,
  `values` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `orderable` tinyint(1) NOT NULL,
  `multiple` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_wh_attributes` WRITE;
/*!40000 ALTER TABLE `rex_wh_attributes` DISABLE KEYS */;
INSERT INTO `rex_wh_attributes` VALUES 
  (1,'pk','Sponsoring','WIDGET','',1,'','',1,0),
  (2,'color','Farben','SELECT','',2,'blau=04|rot|grün=11|lila=li|blanko=0','',1,0);
/*!40000 ALTER TABLE `rex_wh_attributes` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_wh_categories`;
CREATE TABLE `rex_wh_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prio` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `longtext_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_wh_categories` WRITE;
/*!40000 ALTER TABLE `rex_wh_categories` DISABLE KEYS */;
INSERT INTO `rex_wh_categories` VALUES 
  (1,'1','Postkarten','',1,'postkarten_uebersicht_2019_1.jpg','<p>Hochwertige Postkarten aus Mecklenburg.</p>','2019-08-12 07:33:21'),
  (2,'1','Postkarten Tressower See','1',2,'postkarten_uebersicht_2019_1.jpg','<p>Die Postkartenmotive vom Tressower See sind Naturidylle pur. Ursprünglich nur für die Feriengäste am Tressower See konzeptioniert, finden die Karten mittlerweile viele Freunde an anderen Orten.</p>\r\n<p>Alle Karten sind im Format DIN A6 im hochwertigen Offsetdruck, glanzlackiert und mit beschreibbarer Rückseite. Eine Besonderheit dieser Karte: die Rückseite zeigt eine Landkartenskizze, auf der zu sehen ist, wo der Ort Tressow liegt. Die Skizze ist so schwach gedruckt, dass sie nicht stört, wenn die Karte beschrieben ist.</p>','2019-08-12 07:33:21'),
  (3,'1','Postkartensets','1',3,'postkarten_uebersicht_2019_1.jpg','','2019-08-12 07:33:21'),
  (4,'0','Sponsor Postkarten','1',4,'','<p>Mit den Sponsor Postkarten wird unsere Arbeit unterstützt. Die Postkarten sind identisch mit den normalen Postkarten. Der Aufschlag kommt in vollem Umfang der Weiterentwicklung der freien Opensource Software REDAXO AddOn Warehouse zugute.</p>','2019-08-12 07:33:21');
/*!40000 ALTER TABLE `rex_wh_categories` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_wh_orders`;
CREATE TABLE `rex_wh_orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdate` datetime NOT NULL,
  `paypal_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_confirm_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_confirm` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_json` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ycom_userid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agecheck` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `rex_ycom_group`;
CREATE TABLE `rex_ycom_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_ycom_user`;
CREATE TABLE `rex_ycom_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `activation_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `termofuse_accepted` tinyint(1) NOT NULL,
  `new_password_required` tinyint(1) NOT NULL,
  `last_action_time` datetime NOT NULL,
  `last_login_time` datetime NOT NULL,
  `termination_time` datetime NOT NULL,
  `login_tries` int(11) DEFAULT NULL,
  `ycom_groups` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `agecheck` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `rex_yform_email_template`;
CREATE TABLE `rex_yform_email_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_from_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_reply_to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mail_reply_to_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body_html` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_yform_email_template` WRITE;
/*!40000 ALTER TABLE `rex_yform_email_template` DISABLE KEYS */;
INSERT INTO `rex_yform_email_template` VALUES 
  (1,'wh_customer','','Warehouse Tressow','','','Bestellbestätigung','Sehr geehrter Kunde\r\n\r\nWir bedanken uns bei Ihnen für die Bestellung in unserem Webshop. Hiermit senden wir Ihnen die Bestellbestätigung. Wir werden Ihre Bestellung so schnell als möglich bearbeiten.\r\n\r\nWenn Sie Fragen zum Stand ihrer Bestellung haben, wenden Sie sich gerne an uns.\r\n\r\n<?php echo warehouse::get_order_text(); ?>\r\n\r\n<?php echo warehouse::get_user_data_text(); ?>\r\n\r\n<?php if (REX_YFORM_DATA[field=\"payment_type\"] == \"prepayment\") : ?>\r\nBitte überweisen Sie den Betrag auf das Konto\r\nWolfgang Bund\r\nIBAN: DE12 3456 7890 0001 1234 56\r\nBIC: ABCDE12XXX\r\n<?php endif ?>\r\n\r\nWarehouse am Tressower See\r\nWolfgang Bund\r\nAm Tressower See 1\r\n23966 Tressow\r\n\r\nDiese Mail wurde automatisch erstellt - bitte nicht antworten.','','agb_2019-08_warehouse.pdf'),
  (2,'wh_order','','Webserver Ferien am Tressower See','REX_YFORM_DATA[field=\"email\"]','REX_YFORM_DATA[field=\"firstname\"] REX_YFORM_DATA[field=\"lastname\"] - REX_YFORM_DATA[field=\"company\"]','Bestellung aus Webshop','Bestellung von\r\n\r\nREX_YFORM_DATA[field=\"firstname\"] REX_YFORM_DATA[field=\"lastname\"]\r\n\r\n<?php echo warehouse::get_order_text(); ?>\r\n \r\n<?php echo warehouse::get_user_data_text(); ?>\r\n','',''),
  (3,'access_request_de','webserver@ferien-am-tressower-see.de','Warehouse Tressow','','','Registrierungsbestätigung','Bitte klicken Sie diesen Link, um die Anmeldung zu bestätigen:\r\n\r\n<?= trim(rex::getServer(),\'/\') . rex_getUrl(22) ?>?rex_ycom_activation_key=REX_YFORM_DATA[field=activation_key]&rex_ycom_id=REX_YFORM_DATA[field=email]\r\n','','');
/*!40000 ALTER TABLE `rex_yform_email_template` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_yform_field`;
CREATE TABLE `rex_yform_field` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prio` int(11) NOT NULL,
  `type_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `db_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_hidden` tinyint(1) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `not_required` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `multiple` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `only_empty` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `table` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_db` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `empty_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `empty_option` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_size` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `types` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `html` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regex` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pattern` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `format` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_start` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_end` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `values` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce_key` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonce_referer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sizes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `messages` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infotext_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infotext_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expanded` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `scope` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `columns` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `googleapikey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `precision` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `scale` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `php` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_attributegroups` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_attributes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_attributevalues` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_prio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subprio` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `preferred_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_attributes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice_attributes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_yform_field` WRITE;
/*!40000 ALTER TABLE `rex_yform_field` DISABLE KEYS */;
INSERT INTO `rex_yform_field` VALUES 
  (1,'rex_wh_articles',1,'value','text','',0,1,'whid','Artikelnummer','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (2,'rex_wh_articles',2,'value','text','',0,1,'name_1','Bezeichnung [de]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (3,'rex_wh_articles',3,'value','select_sql_tree','',0,0,'category_id','Kategorie','','','1','','','','','','','','','','','','','0','','','','','','','','','','','','','','','','{\"class\":\"selectpicker\"}','SELECT id, name_1 name FROM rex_wh_categories WHERE parent_id = |parent_id|','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (4,'rex_wh_articles',4,'value','be_media','',1,0,'image','Bild','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','','',''),
  (5,'rex_wh_articles',5,'value','textarea','text',1,0,'description_1','Kurztext [de]','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','{\"class\":\"tinyMCE-text\"}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (6,'rex_wh_articles',6,'value','choice','',1,0,'attributegroup_id','Attributgruppe','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','SELECT id value, name_1 label FROM rex_wh_attributegroups','','','','','','','','','','','','','','','','','','--- bitte auswählen ...','',''),
  (7,'rex_wh_articles',7,'value','widget_attributes','',1,0,'attributes','Attribute','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','name_1','rex_wh_attributegroups','rex_wh_attributes','rex_wh_attribute_values','','','','','','','',''),
  (8,'rex_wh_articles',8,'value','sub_table','',1,0,'variants','Varianten','','','','','','','','rex_wh_article_variants','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','name_1,price','','','','','','','','','','parent_id','','prio','','','','',''),
  (9,'rex_wh_articles',9,'value','float','',0,0,'price','Preis','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2','','','','','','','','','','','','',''),
  (10,'rex_wh_articles',10,'value','choice','text',1,1,'tax','Steuersatz','','','0','tax_value_1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','SELECT `key` value, concat(REPLACE(`value`,\'\"\',\'\'),\" %\") label FROM rex_config rc WHERE namespace=\"warehouse\" AND `key` LIKE \"tax_value_%\"','','','','','','','','','','','','','','','','','','keine Steuer','',''),
  (11,'rex_wh_articles',11,'value','checkbox','',1,0,'free_shipping','Versandkostenfrei','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0,1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (12,'rex_wh_articles',12,'value','prio','',1,0,'prio','Priorität','','','','','','','','','','','','','','','','','','','name_1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (13,'rex_wh_articles',13,'value','textarea','text',1,1,'longtext_1','Langtext [de]','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','{\"class\":\"tinyMCE-text\"}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (14,'rex_wh_articles',14,'value','be_media','',1,0,'gallery','Galerie','','','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0','','','',''),
  (15,'rex_wh_articles',15,'value','be_table','text',1,0,'specifications_1','Spezifikationen [de]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Label,Wert','','','','','','','','','','','','','','','','',''),
  (16,'rex_wh_articles',16,'value','choice','text',1,1,'status','Status','','','0','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Offline=0,Online=1','','','','','','','','','','','','','','','','','','','',''),
  (17,'rex_wh_articles',17,'value','be_media','text',1,0,'header_image','Kopfbild','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','','',''),
  (18,'rex_wh_article_variants',1,'value','text','',0,1,'whvarid','Variante Id','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (19,'rex_wh_article_variants',2,'value','text','',0,0,'name_1','Bezeichnung [de]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (20,'rex_wh_article_variants',3,'value','be_media','',0,0,'image','Bild','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','','',''),
  (21,'rex_wh_article_variants',4,'value','float','',0,0,'price','Preis','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2','','','','','','','','','','','','',''),
  (22,'rex_wh_article_variants',5,'value','checkbox','',0,0,'freeprice','Freier Preis','','','','0','','','','','','','','','','','','','','','','','','','','','','Wenn die Checkbox angeklickt ist, kann der Preis beim Artikel vom Kunden eingetragen werden (z.B. bei Gutscheinen oder Spenden)','','','','','','','','','','','0,1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (23,'rex_wh_article_variants',6,'value','be_media','',1,0,'gallery','Galerie','','','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0','','','',''),
  (24,'rex_wh_article_variants',7,'value','choice','',0,1,'parent_id','Hauptartikel','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','SELECT id value, name_1 label FROM rex_wh_articles ORDER BY prio','','','','','','','','','','','','','','','','','','--- bitte auswählen ---','',''),
  (25,'rex_wh_article_variants',8,'value','prio','int',1,0,'prio','Priorität','','','','','','','','','','','','','','','','','','','name_1','','','','','','','Bitte zunächst den Hauptartikel auswählen, auf \"Übernehmen\" klicken und anschließend die Priorität (Reihenfolge) wählen.','','','','','','','','','','','','','','','','','','','','','','','','parent_id','','','','','','','','','','','','','','','','','',''),
  (26,'rex_wh_article_variants',9,'value','integer','int',1,0,'contents_ml','Inhalt ml','','','','','','','','','','','0','','','','','','','','','','','','','','','Wird für die Berechnung des Preises pro Liter verwendet','','','','','','','','','','','','','','','','','','','','','','','','','','','ml','','','','','','','','','','','','','','',''),
  (27,'rex_wh_categories',1,'value','choice','text',1,1,'status','Status','','','0','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Offline=0,Online=1','','','','','','','','','','','','','','','','','','','',''),
  (28,'rex_wh_categories',2,'value','text','',0,1,'name_1','Name [de]','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (29,'rex_wh_categories',3,'value','choice','',0,0,'parent_id','Elternkategorie','','','0','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','select id value, name_1 label FROM rex_wh_categories','','','','','','','','','','','','','','','','','','Root','',''),
  (30,'rex_wh_categories',4,'value','prio','',1,0,'prio','Priorität','','','','','','','','','','','','','','','','','','','name_1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (31,'rex_wh_categories',5,'value','be_media','',1,0,'image','Bild','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','1','','','',''),
  (32,'rex_wh_attributes',1,'value','text','',0,1,'whattrid','Attribute Id','','','','','','','','','','','','','','','','','','','','','','','','','','Dieses Feld muss ausgefüllt werden, wenn das Attribut bestellbar ist (z.B. Größe bei Schuhen)','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (33,'rex_wh_attributes',2,'value','text','',0,1,'name_1','Name','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','z.B. Länge, Breite ...','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (34,'rex_wh_attributes',3,'value','choice','',0,1,'type','Feldtyp','','','0','TEXT','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','Text=TEXT,Select=SELECT,Gruppe (Widget)=WIDGET','','','','','','','','','','','','','','','','','','','',''),
  (35,'rex_wh_attributes',4,'value','text','',0,1,'unit','Einheit','','','','','','','','','','','','','','','','','','','','','','','','','','z.B. mm, cm ...','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (36,'rex_wh_attributes',5,'value','prio','',1,0,'prio','Priorität','','','','','','','','','','','','','','','','','','','name_1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (37,'rex_wh_attributes',6,'value','text','',0,0,'values','Werte','','','','','','','','','','','','','','','','','','','','','','','','','','Für Selectfelder. Bitte mit | getrennt eingeben. z.B. bei Farbcodes rot=23|blau=46|grün=44','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (38,'rex_wh_attributes',7,'value','text','',0,0,'notice','Notiz','','','','','','','','','','','','','','','','','','','','','','','','','','Zeigt eine Notiz für das Feld an','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (39,'rex_wh_attributes',8,'value','checkbox','',0,1,'orderable','Bestellbar','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','0,1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (40,'rex_wh_attributes',9,'value','checkbox','tinyint(1)',1,0,'multiple','Mehrfach wählbar','','','','0','','','','','','','','','','','','','','','','','','','','','','Diese Eigenschaft ist mehrfach auswählbar. z.B. Pizzabelag','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (41,'rex_wh_attribute_values',1,'value','integer','',0,0,'article_id','Artikel Id','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (42,'rex_wh_attribute_values',2,'value','integer','',0,0,'attribute_id','Attribut Id','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (43,'rex_wh_attribute_values',3,'value','text','',0,0,'value','Wert','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (44,'rex_wh_attribute_values',4,'value','text','',0,0,'label','Bezeichnung','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (45,'rex_wh_attribute_values',5,'value','float','',0,0,'price','Preis','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2','','','','','','','','','','','','',''),
  (46,'rex_wh_attribute_values',6,'value','choice','',0,0,'available','Lieferbar','','','0','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','lieferbar=1,nicht lieferbar=0','','','','','','','','','','','','','','','','','','','',''),
  (47,'rex_wh_attribute_values',7,'value','prio','',0,0,'prio','Prio','','','','','','','','','','','','','','','','','','','value','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','article_id','','','','','','','','','','','','','','','','','',''),
  (48,'rex_wh_attributegroups',1,'value','text','',0,0,'name_1','Name der Attributgruppe','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (49,'rex_wh_attributegroups',2,'value','widget_record','',0,0,'attributes','Attribute','','','','','','','','rex_wh_attributes','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','name_1','','','','','','','','','','',''),
  (50,'rex_wh_orders',1,'value','text','',0,1,'firstname','Vorname','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (51,'rex_wh_orders',2,'value','text','',0,1,'lastname','Nachname','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (52,'rex_wh_orders',3,'value','text','varchar(191)',0,1,'birthdate','Geburtsdatum','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (53,'rex_wh_orders',4,'value','text','',0,0,'company','Firma','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (54,'rex_wh_orders',5,'value','text','',1,0,'address','Anschrift','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (55,'rex_wh_orders',6,'value','text','',0,1,'zip','PLZ','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (56,'rex_wh_orders',7,'value','text','',0,1,'city','Ort','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (57,'rex_wh_orders',8,'value','choice','text',1,1,'country','Land','','','0','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','{\"Deutschland\":\"DE\",\"Österreich\":\"AT\"}','0','','','','','','','','','','','','','','','','','','',''),
  (58,'rex_wh_orders',9,'value','text','varchar(191)',0,1,'email','E-Mail','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (59,'rex_wh_orders',10,'value','datestamp','',0,0,'createdate','Bestelldatum','','','','','','1','','','','','','','','','','','','','','','','','','1','','','','','Y-m-d h:i:s','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (60,'rex_wh_orders',11,'value','text','',1,0,'paypal_id','Paypal Id','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (61,'rex_wh_orders',13,'value','text','',1,0,'paypal_confirm_token','Paypal Token (bezahlt)','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (62,'rex_wh_orders',14,'value','text','varchar(191)',0,1,'payment_confirm','Payment Confirm','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','{\"readonly\":\"readonly\"}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (63,'rex_wh_orders',15,'value','textarea','',1,0,'order_text','Bestellung (Text)','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (64,'rex_wh_orders',16,'value','textarea','',1,0,'order_json','Bestellung (Daten)','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (65,'rex_wh_orders',17,'value','float','',0,0,'order_total','Summe','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','2','','','','','','','','','','','','',''),
  (66,'rex_wh_orders',18,'value','choice','text',0,1,'ycom_userid','Kunde','','','0','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','SELECT id value, CONCAT(firstname,\' \',name,\' - \',company) label FROM rex_ycom_user','','','','','','','','','','','','','','','','','','--- bitte wählen ---','',''),
  (67,'rex_wh_categories',6,'value','textarea','text',1,1,'longtext_1','Langtext','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','{\"class\":\"tinyMCE-text\"}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (68,'rex_ycom_user',1,'value','html','',0,0,'html1','html1','','','','','','','','','','','','','','','','','','','','','','','','','<div class=\"row\"><div class=\"col-md-6\">','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (69,'rex_ycom_user',2,'value','text','',1,1,'login','translate:login','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (70,'rex_ycom_user',3,'validate','empty','',1,0,'login','','','','','','','','translate:ycom_please_enter_login','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (71,'rex_ycom_user',4,'validate','unique','',1,0,'login','','','','','','','','translate:ycom_this_login_exists_already','rex_ycom_user','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (72,'rex_ycom_user',5,'value','text','',0,1,'email','translate:email','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (73,'rex_ycom_user',6,'validate','empty','',1,0,'email','','','','','','','','translate:ycom_please_enter_email','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (74,'rex_ycom_user',7,'validate','email','',1,0,'email','','','','','','','','translate:ycom_please_enter_email','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (75,'rex_ycom_user',8,'validate','unique','',1,0,'email','','','','','','','','translate:ycom_this_email_exists_already','rex_ycom_user','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (76,'rex_ycom_user',9,'value','ycom_auth_password','',1,1,'password','translate:password','','','','','','','translate:ycom_validate_password_policy_rules_error','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','{\"length\":{\"min\":8},\"letter\":{\"min\":1},\"lowercase\":{\"min\":1},\"uppercase\":{\"min\":1}}','','','','','','1','','','','','','','','','','','','','','','','','','','','','','','',''),
  (77,'rex_ycom_user',10,'value','text','',0,1,'firstname','translate:firstname','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (78,'rex_ycom_user',11,'value','text','',0,1,'name','translate:name','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (79,'rex_ycom_user',17,'value','html','',0,0,'html2','html2','','','','','','','','','','','','','','','','','','','','','','','','','</div><div class=\"col-md-6\">','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (80,'rex_ycom_user',18,'value','select','',0,1,'status','translate:status','','translate:ycom_account_inactive_termination=-3,translate:ycom_account_inactive_logins=-2,translate:ycom_account_inactive=-1,translate:ycom_account_requested=0,translate:ycom_account_confirm=1,translate:ycom_account_active=2','0','-1','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (81,'rex_ycom_user',19,'value','generate_key','',1,1,'activation_key','translate:activation_key','','','','','','1','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (82,'rex_ycom_user',20,'value','generate_key','',1,1,'session_key','translate:session_key','','','','','','1','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (83,'rex_ycom_user',21,'value','checkbox','tinyint(1)',1,1,'termofuse_accepted','translate:termofuse_accepted','','','','0','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (84,'rex_ycom_user',22,'value','checkbox','tinyint(1)',1,1,'new_password_required','translate:new_password_required','','','','0','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (85,'rex_ycom_user',23,'value','datestamp','',1,1,'last_action_time','translate:last_action_time','','','','','','2','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (86,'rex_ycom_user',24,'value','datestamp','',1,1,'last_login_time','translate:last_login_time','','','','','','2','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (87,'rex_ycom_user',25,'value','datestamp','',1,1,'termination_time','translate:termination_time','','','','','','2','','','','','','','','','','','','','','','','','','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (88,'rex_ycom_user',26,'value','integer','',0,1,'login_tries','translate:login_tries','','','','0','','','','','','','','','','','','','','','','','','','','','','translate:ycom_login_tries_info','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (89,'rex_ycom_user',27,'value','html','',0,0,'html3','html3','','','','','','','','','','','','','','','','','','','','','','','','','</div></div>','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (90,'rex_ycom_user',28,'value','be_manager_relation','',1,1,'ycom_groups','translate:ycom_groups','','','1','','','','','rex_ycom_group','','','','','name','1','','1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (91,'rex_ycom_group',1,'value','text','',0,1,'name','translate:name','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (92,'rex_ycom_group',2,'validate','empty','',1,0,'name','','','','','','','','translate:ycom_group_yform_enter_name','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (93,'rex_ycom_user',12,'value','text','varchar(191)',1,1,'company','Firma','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (94,'rex_wh_articles',18,'value','datestamp','datetime',1,0,'updatedate','Update Date','','','','','','0','','','','','0','','','','','','','','','','','','','0','','','','','Y-m-d H:i:s','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (95,'rex_wh_categories',7,'value','datestamp','datetime',0,1,'updatedate','Update Date','','','','','','0','','','','','0','','','','','','','','','','','','','0','','','','','Y-m-d H:i:s','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (96,'rex_wh_orders',12,'value','text','varchar(191)',0,1,'payment_id','Payment Id','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (97,'rex_wh_orders',19,'value','text','varchar(191)',0,1,'payment_type','Zahlungsweise','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (98,'rex_wh_orders',20,'value','choice','text',0,1,'agecheck','Alterscheck','','','0','0','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','{\"Offen\":\"\",\"Fehlgeschlagen\":\"0\",\"Giropay erfolgreich\":\"giropay_4020\",\"Giropay nicht durchführbar\":\"giropay_4021\",\"Giropay nicht erfolgreich\":\"giropay_4022\",\"Postident\":\"postident\",\"Persönlich bekannt\":\"known\",\"Sonst\":\"other\"}','0','','','','','','','','','','','','','','','','','','',''),
  (99,'rex_ycom_user',29,'value','choice','text',0,1,'agecheck','Alterscheck','','','0','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','{\"Offen\":\"\",\"Fehlgeschlagen\":\"0\",\"Giropay erfolgreich\":\"giropay_4020\",\"Giropay nicht durchführbar\":\"giropay_4021\",\"Giropay nicht erfolgreich\":\"giropay_4022\",\"Postident\":\"postident\",\"Persönlich bekannt\":\"known\",\"Sonst\":\"other\"}','0','','','','','','','','','','','','','','','','','','',''),
  (100,'rex_ycom_user',30,'value','text','varchar(191)',1,1,'birthdate','Geburtsdatum','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','{\"class\":\"datepicker\"}','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (101,'rex_ycom_user',13,'value','text','varchar(191)',1,1,'address','Adresse','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (102,'rex_ycom_user',16,'value','text','varchar(191)',1,1,'country','Land','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (103,'rex_ycom_user',15,'value','text','varchar(191)',1,1,'city','Ort','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (104,'rex_ycom_user',14,'value','text','varchar(191)',0,1,'zip','PLZ','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','',''),
  (105,'rex_wh_orders',21,'value','text','varchar(191)',1,0,'session_id','Session Id','','','','','','','','','','','0','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `rex_yform_field` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `rex_yform_history`;
CREATE TABLE `rex_yform_history` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dataset_id` int(11) NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dataset` (`table_name`,`dataset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_history_field`;
CREATE TABLE `rex_yform_history_field` (
  `history_id` int(11) NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`history_id`,`field`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
DROP TABLE IF EXISTS `rex_yform_table`;
CREATE TABLE `rex_yform_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_amount` int(11) NOT NULL DEFAULT '50',
  `list_sortfield` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'id',
  `list_sortorder` enum('ASC','DESC') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ASC',
  `prio` int(11) NOT NULL,
  `search` tinyint(1) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `export` tinyint(1) NOT NULL,
  `import` tinyint(1) NOT NULL,
  `mass_deletion` tinyint(1) NOT NULL,
  `mass_edit` tinyint(1) NOT NULL,
  `schema_overwrite` tinyint(1) NOT NULL DEFAULT '1',
  `history` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_name` (`table_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `rex_yform_table` WRITE;
/*!40000 ALTER TABLE `rex_yform_table` DISABLE KEYS */;
INSERT INTO `rex_yform_table` VALUES 
  (1,1,'rex_wh_articles','Artikel','',50,'prio','ASC',3,1,0,1,1,0,0,1,0),
  (2,1,'rex_wh_article_variants','Artikelvarianten','',50,'prio','ASC',4,1,0,0,0,0,0,1,0),
  (3,1,'rex_wh_categories','Kategorien','Kategorien',50,'prio','ASC',6,1,0,0,0,0,0,1,0),
  (4,1,'rex_wh_attributes','Attribute','',50,'prio','ASC',7,1,0,0,0,0,0,1,0),
  (5,1,'rex_wh_attribute_values','Attribute Werte','',50,'id','ASC',8,1,1,0,0,0,0,1,0),
  (6,1,'rex_wh_attributegroups','Attributgruppen','Hier kann man Attribute zu Gruppen zusammenfassen, die man dann einem Artikel zuordnen kann.\r\nSo kann ein T-Shirt die Attribute Größe und Farbe haben, ein Buch kann Seitenzahl, Format und Gewicht haben.',50,'id','ASC',9,1,0,0,0,0,0,1,0),
  (7,1,'rex_wh_orders','Bestellungen','',50,'id','DESC',1,1,0,0,0,0,0,1,0),
  (8,1,'rex_ycom_user','translate:rex_ycom_user','',100,'login','DESC',1,1,0,1,1,0,0,1,0),
  (9,1,'rex_ycom_group','translate:ycom_group_name','',200,'name','ASC',2,0,0,1,1,0,0,1,0);
/*!40000 ALTER TABLE `rex_yform_table` ENABLE KEYS */;
UNLOCK TABLES;

SET FOREIGN_KEY_CHECKS = 1;
