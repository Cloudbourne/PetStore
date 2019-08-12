-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: petstore
-- ------------------------------------------------------
-- Server version       5.7.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `name` varchar(30) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1000,'Any of numerous cold-blooded aquatic vertebrates characteristically having fins, gills, and a streamlined body','Fish',1),(1001,'A domesticated carnivorous mammal related to the foxes and wolves and raised in a wide variety of breeds','Dogs',1),(1002,'Any of various cold-blooded, usually egg-laying vertebrates, such as a snake, lizard, crocodile, turtle','Reptiles',1),(1003,' Small carnivorous mammal domesticated since early times as a catcher of rats and mice and as a pet and existing in several distinctive breeds and varieties','Cats',1),(1004,'Any of the class Aves of warm-blooded, egg-laying, feathered vertebrates with forelimbs modified to form wings','Birds',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `iso3` varchar(3) NOT NULL,
  `iso_code` varchar(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `numcode` varchar(3) NOT NULL,
  `printable_name` varchar(80) NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1239 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1000,'AFG','AF','AFGHANISTAN','004','Afghanistan',1),(1001,'ALB','AL','ALBANIA','008','Albania',1),(1002,'DZA','DZ','ALGERIA','012','Algeria',1),(1003,'ASM','AS','AMERICAN SAMOA','016','American Samoa',1),(1004,'AND','AD','ANDORRA','020','Andorra',1),(1005,'AGO','AO','ANGOLA','024','Angola',1),(1006,'AIA','AI','ANGUILLA','660','Anguilla',1),(1008,'ATG','AG','ANTIGUA AND BARBUDA','028','Antigua and Barbuda',1),(1009,'ARG','AR','ARGENTINA','032','Argentina',1),(1010,'ARM','AM','ARMENIA','051','Armenia',1),(1011,'ABW','AW','ARUBA','533','Aruba',1),(1012,'AUS','AU','AUSTRALIA','036','Australia',1),(1013,'AUT','AT','AUSTRIA','040','Austria',1),(1014,'AZE','AZ','AZERBAIJAN','031','Azerbaijan',1),(1015,'BHS','BS','BAHAMAS','044','Bahamas',1),(1016,'BHR','BH','BAHRAIN','048','Bahrain',1),(1017,'BGD','BD','BANGLADESH','050','Bangladesh',1),(1018,'BRB','BB','BARBADOS','052','Barbados',1),(1019,'BLR','BY','BELARUS','112','Belarus',1),(1020,'BEL','BE','BELGIUM','056','Belgium',1),(1021,'BLZ','BZ','BELIZE','084','Belize',1),(1022,'BEN','BJ','BENIN','204','Benin',1),(1023,'BMU','BM','BERMUDA','060','Bermuda',1),(1024,'BTN','BT','BHUTAN','064','Bhutan',1),(1025,'BOL','BO','BOLIVIA','068','Bolivia',1),(1026,'BIH','BA','BOSNIA AND HERZEGOVINA','070','Bosnia and Herzegovina',1),(1027,'BWA','BW','BOTSWANA','072','Botswana',1),(1029,'BRA','BR','BRAZIL','076','Brazil',1),(1031,'BRN','BN','BRUNEI DARUSSALAM','096','Brunei Darussalam',1),(1032,'BGR','BG','BULGARIA','100','Bulgaria',1),(1033,'BFA','BF','BURKINA FASO','854','Burkina Faso',1),(1034,'BDI','BI','BURUNDI','108','Burundi',1),(1035,'KHM','KH','CAMBODIA','116','Cambodia',1),(1036,'CMR','CM','CAMEROON','120','Cameroon',1),(1037,'CAN','CA','CANADA','124','Canada',1),(1038,'CPV','CV','CAPE VERDE','132','Cape Verde',1),(1039,'CYM','KY','CAYMAN ISLANDS','136','Cayman Islands',1),(1040,'CAF','CF','CENTRAL AFRICAN REPUBLIC','140','Central African Republic',1),(1041,'TCD','TD','CHAD','148','Chad',1),(1042,'CHL','CL','CHILE','152','Chile',1),(1043,'CHN','CN','CHINA','156','China',1),(1046,'COL','CO','COLOMBIA','170','Colombia',1),(1047,'COM','KM','COMOROS','174','Comoros',1),(1048,'COG','CG','CONGO','178','Congo',1),(1049,'COD','CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','180','Congo, the Democratic Republic of the',1),(1050,'COK','CK','COOK ISLANDS','184','Cook Islands',1),(1051,'CRI','CR','COSTA RICA','188','Costa Rica',1),(1052,'CIV','CI','COTE D IVOIRE','384','Cote d Ivoire',1),(1053,'HRV','HR','CROATIA','191','Croatia',1),(1054,'CUB','CU','CUBA','192','Cuba',1),(1055,'CYP','CY','CYPRUS','196','Cyprus',1),(1056,'CZE','CZ','CZECH REPUBLIC','203','Czech Republic',1),(1057,'DNK','DK','DENMARK','208','Denmark',1),(1058,'DJI','DJ','DJIBOUTI','262','Djibouti',1),(1059,'DMA','DM','DOMINICA','212','Dominica',1),(1060,'DOM','DO','DOMINICAN REPUBLIC','214','Dominican Republic',1),(1061,'ECU','EC','ECUADOR','218','Ecuador',1),(1062,'EGY','EG','EGYPT','818','Egypt',1),(1063,'SLV','SV','EL SALVADOR','222','El Salvador',1),(1064,'GNQ','GQ','EQUATORIAL GUINEA','226','Equatorial Guinea',1),(1065,'ERI','ER','ERITREA','232','Eritrea',1),(1066,'EST','EE','ESTONIA','233','Estonia',1),(1067,'ETH','ET','ETHIOPIA','231','Ethiopia',1),(1068,'FLK','FK','FALKLAND ISLANDS (MALVINAS)','238','Falkland Islands (Malvinas)',1),(1069,'FRO','FO','FAROE ISLANDS','234','Faroe Islands',1),(1070,'FJI','FJ','FIJI','242','Fiji',1),(1071,'FIN','FI','FINLAND','246','Finland',1),(1072,'FRA','FR','FRANCE','250','France',1),(1073,'GUF','GF','FRENCH GUIANA','254','French Guiana',1),(1074,'PYF','PF','FRENCH POLYNESIA','258','French Polynesia',1),(1076,'GAB','GA','GABON','266','Gabon',1),(1077,'GMB','GM','GAMBIA','270','Gambia',1),(1078,'GEO','GE','GEORGIA','268','Georgia',1),(1079,'DEU','DE','GERMANY','276','Germany',1),(1080,'GHA','GH','GHANA','288','Ghana',1),(1081,'GIB','GI','GIBRALTAR','292','Gibraltar',1),(1082,'GRC','GR','GREECE','300','Greece',1),(1083,'GRL','GL','GREENLAND','304','Greenland',1),(1084,'GRD','GD','GRENADA','308','Grenada',1),(1085,'GLP','GP','GUADELOUPE','312','Guadeloupe',1),(1086,'GUM','GU','GUAM','316','Guam',1),(1087,'GTM','GT','GUATEMALA','320','Guatemala',1),(1088,'GIN','GN','GUINEA','324','Guinea',1),(1089,'GNB','GW','GUINEA-BISSAU','624','Guinea-Bissau',1),(1090,'GUY','GY','GUYANA','328','Guyana',1),(1091,'HTI','HT','HAITI','332','Haiti',1),(1093,'VAT','VA','HOLY SEE (VATICAN CITY STATE)','336','Holy See (Vatican City State)',1),(1094,'HND','HN','HONDURAS','340','Honduras',1),(1095,'HKG','HK','HONG KONG','344','Hong Kong',1),(1096,'HUN','HU','HUNGARY','348','Hungary',1),(1097,'ISL','IS','ICELAND','352','Iceland',1),(1098,'IND','IN','INDIA','356','India',1),(1099,'IDN','ID','INDONESIA','360','Indonesia',1),(1100,'IRN','IR','IRAN, ISLAMIC REPUBLIC OF','364','Iran, Islamic Republic of',1),(1101,'IRQ','IQ','IRAQ','368','Iraq',1),(1102,'IRL','IE','IRELAND','372','Ireland',1),(1103,'ISR','IL','ISRAEL','376','Israel',1),(1104,'ITA','IT','ITALY','380','Italy',1),(1105,'JAM','JM','JAMAICA','388','Jamaica',1),(1106,'JPN','JP','JAPAN','392','Japan',1),(1107,'JOR','JO','JORDAN','400','Jordan',1),(1108,'KAZ','KZ','KAZAKHSTAN','398','Kazakhstan',1),(1109,'KEN','KE','KENYA','404','Kenya',1),(1110,'KIR','KI','KIRIBATI','296','Kiribati',1),(1111,'PRK','KP','KOREA, DEMOCRATIC PEOPLE S REPUBLIC OF','408','Korea, Democratic People s Republic of',1),(1112,'KOR','KR','KOREA, REPUBLIC OF','410','Korea, Republic of',1),(1113,'KWT','KW','KUWAIT','414','Kuwait',1),(1114,'KGZ','KG','KYRGYZSTAN','417','Kyrgyzstan',1),(1115,'LAO','LA','LAO PEOPLE S DEMOCRATIC REPUBLIC','418','Lao People s Democratic Republic',1),(1116,'LVA','LV','LATVIA','428','Latvia',1),(1117,'LBN','LB','LEBANON','422','Lebanon',1),(1118,'LSO','LS','LESOTHO','426','Lesotho',1),(1119,'LBR','LR','LIBERIA','430','Liberia',1),(1120,'LBY','LY','LIBYAN ARAB JAMAHIRIYA','434','Libyan Arab Jamahiriya',1),(1121,'LIE','LI','LIECHTENSTEIN','438','Liechtenstein',1),(1122,'LTU','LT','LITHUANIA','440','Lithuania',1),(1123,'LUX','LU','LUXEMBOURG','442','Luxembourg',1),(1124,'MAC','MO','MACAO','446','Macao',1),(1125,'MKD','MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','807','Macedonia, the Former Yugoslav Republic of',1),(1126,'MDG','MG','MADAGASCAR','450','Madagascar',1),(1127,'MWI','MW','MALAWI','454','Malawi',1),(1128,'MYS','MY','MALAYSIA','458','Malaysia',1),(1129,'MDV','MV','MALDIVES','462','Maldives',1),(1130,'MLI','ML','MALI','466','Mali',1),(1131,'MLT','MT','MALTA','470','Malta',1),(1132,'MHL','MH','MARSHALL ISLANDS','584','Marshall Islands',1),(1133,'MTQ','MQ','MARTINIQUE','474','Martinique',1),(1134,'MRT','MR','MAURITANIA','478','Mauritania',1),(1135,'MUS','MU','MAURITIUS','480','Mauritius',1),(1137,'MEX','MX','MEXICO','484','Mexico',1),(1138,'FSM','FM','MICRONESIA, FEDERATED STATES OF','583','Micronesia, Federated States of',1),(1139,'MDA','MD','MOLDOVA, REPUBLIC OF','498','Moldova, Republic of',1),(1140,'MCO','MC','MONACO','492','Monaco',1),(1141,'MNG','MN','MONGOLIA','496','Mongolia',1),(1142,'MSR','MS','MONTSERRAT','500','Montserrat',1),(1143,'MAR','MA','MOROCCO','504','Morocco',1),(1144,'MOZ','MZ','MOZAMBIQUE','508','Mozambique',1),(1145,'MMR','MM','MYANMAR','104','Myanmar',1),(1146,'NAM','NA','NAMIBIA','516','Namibia',1),(1147,'NRU','NR','NAURU','520','Nauru',1),(1148,'NPL','NP','NEPAL','524','Nepal',1),(1149,'NLD','NL','NETHERLANDS','528','Netherlands',1),(1150,'ANT','AN','NETHERLANDS ANTILLES','530','Netherlands Antilles',1),(1151,'NCL','NC','NEW CALEDONIA','540','New Caledonia',1),(1152,'NZL','NZ','NEW ZEALAND','554','New Zealand',1),(1153,'NIC','NI','NICARAGUA','558','Nicaragua',1),(1154,'NER','NE','NIGER','562','Niger',1),(1155,'NGA','NG','NIGERIA','566','Nigeria',1),(1156,'NIU','NU','NIUE','570','Niue',1),(1157,'NFK','NF','NORFOLK ISLAND','574','Norfolk Island',1),(1158,'MNP','MP','NORTHERN MARIANA ISLANDS','580','Northern Mariana Islands',1),(1159,'NOR','NO','NORWAY','578','Norway',1),(1160,'OMN','OM','OMAN','512','Oman',1),(1161,'PAK','PK','PAKISTAN','586','Pakistan',1),(1162,'PLW','PW','PALAU','585','Palau',1),(1164,'PAN','PA','PANAMA','591','Panama',1),(1165,'PNG','PG','PAPUA NEW GUINEA','598','Papua New Guinea',1),(1166,'PRY','PY','PARAGUAY','600','Paraguay',1),(1167,'PER','PE','PERU','604','Peru',1),(1168,'PHL','PH','PHILIPPINES','608','Philippines',1),(1169,'PCN','PN','PITCAIRN','612','Pitcairn',1),(1170,'POL','PL','POLAND','616','Poland',1),(1171,'PRT','PT','PORTUGAL','620','Portugal',1),(1172,'PRI','PR','PUERTO RICO','630','Puerto Rico',1),(1173,'QAT','QA','QATAR','634','Qatar',1),(1174,'REU','RE','REUNION','638','Reunion',1),(1175,'ROM','RO','ROMANIA','642','Romania',1),(1176,'RUS','RU','RUSSIAN FEDERATION','643','Russian Federation',1),(1177,'RWA','RW','RWANDA','646','Rwanda',1),(1178,'SHN','SH','SAINT HELENA','654','Saint Helena',1),(1179,'KNA','KN','SAINT KITTS AND NEVIS','659','Saint Kitts and Nevis',1),(1180,'LCA','LC','SAINT LUCIA','662','Saint Lucia',1),(1181,'SPM','PM','SAINT PIERRE AND MIQUELON','666','Saint Pierre and Miquelon',1),(1182,'VCT','VC','SAINT VINCENT AND THE GRENADINES','670','Saint Vincent and the Grenadines',1),(1183,'WSM','WS','SAMOA','882','Samoa',1),(1184,'SMR','SM','SAN MARINO','674','San Marino',1),(1185,'STP','ST','SAO TOME AND PRINCIPE','678','Sao Tome and Principe',1),(1186,'SAU','SA','SAUDI ARABIA','682','Saudi Arabia',1),(1187,'SEN','SN','SENEGAL','686','Senegal',1),(1189,'SYC','SC','SEYCHELLES','690','Seychelles',1),(1190,'SLE','SL','SIERRA LEONE','694','Sierra Leone',1),(1191,'SGP','SG','SINGAPORE','702','Singapore',1),(1192,'SVK','SK','SLOVAKIA','703','Slovakia',1),(1193,'SVN','SI','SLOVENIA','705','Slovenia',1),(1194,'SLB','SB','SOLOMON ISLANDS','090','Solomon Islands',1),(1195,'SOM','SO','SOMALIA','706','Somalia',1),(1196,'ZAF','ZA','SOUTH AFRICA','710','South Africa',1),(1198,'ESP','ES','SPAIN','724','Spain',1),(1199,'LKA','LK','SRI LANKA','144','Sri Lanka',1),(1200,'SDN','SD','SUDAN','736','Sudan',1),(1201,'SUR','SR','SURINAME','740','Suriname',1),(1202,'SJM','SJ','SVALBARD AND JAN MAYEN','744','Svalbard and Jan Mayen',1),(1203,'SWZ','SZ','SWAZILAND','748','Swaziland',1),(1204,'SWE','SE','SWEDEN','752','Sweden',1),(1205,'CHE','CH','SWITZERLAND','756','Switzerland',1),(1206,'SYR','SY','SYRIAN ARAB REPUBLIC','760','Syrian Arab Republic',1),(1207,'TWN','TW','TAIWAN, PROVINCE OF CHINA','158','Taiwan, Province of China',1),(1208,'TJK','TJ','TAJIKISTAN','762','Tajikistan',1),(1209,'TZA','TZ','TANZANIA, UNITED REPUBLIC OF','834','Tanzania, United Republic of',1),(1210,'THA','TH','THAILAND','764','Thailand',1),(1212,'TGO','TG','TOGO','768','Togo',1),(1213,'TKL','TK','TOKELAU','772','Tokelau',1),(1214,'TON','TO','TONGA','776','Tonga',1),(1215,'TTO','TT','TRINIDAD AND TOBAGO','780','Trinidad and Tobago',1),(1216,'TUN','TN','TUNISIA','788','Tunisia',1),(1217,'TUR','TR','TURKEY','792','Turkey',1),(1218,'TKM','TM','TURKMENISTAN','795','Turkmenistan',1),(1219,'TCA','TC','TURKS AND CAICOS ISLANDS','796','Turks and Caicos Islands',1),(1220,'TUV','TV','TUVALU','798','Tuvalu',1),(1221,'UGA','UG','UGANDA','800','Uganda',1),(1222,'UKR','UA','UKRAINE','804','Ukraine',1),(1223,'ARE','AE','UNITED ARAB EMIRATES','784','United Arab Emirates',1),(1224,'GBR','GB','UNITED KINGDOM','826','United Kingdom',1),(1225,'USA','US','UNITED STATES','840','United States',1),(1227,'URY','UY','URUGUAY','858','Uruguay',1),(1228,'UZB','UZ','UZBEKISTAN','860','Uzbekistan',1),(1229,'VUT','VU','VANUATU','548','Vanuatu',1),(1230,'VEN','VE','VENEZUELA','862','Venezuela',1),(1231,'VNM','VN','VIET NAM','704','Viet Nam',1),(1232,'VGB','VG','VIRGIN ISLANDS, BRITISH','092','Virgin Islands, British',1),(1233,'VIR','VI','VIRGIN ISLANDS, U.S.','850','Virgin Islands, U.s.',1),(1234,'WLF','WF','WALLIS AND FUTUNA','876','Wallis and Futuna',1),(1235,'ESH','EH','WESTERN SAHARA','732','Western Sahara',1),(1236,'YEM','YE','YEMEN','887','Yemen',1),(1237,'ZMB','ZM','ZAMBIA','894','Zambia',1),(1238,'ZWE','ZW','ZIMBABWE','716','Zimbabwe',1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street1` varchar(50) NOT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `zip_code` varchar(10) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `login` varchar(10) NOT NULL,
  `password` longtext NOT NULL,
  `role` int(11) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `uuid` longtext,
  `version` int(11) DEFAULT NULL,
  `country` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cl86s48n67kbg5xhd7iaa0pbx` (`country`),
  CONSTRAINT `FK_cl86s48n67kbg5xhd7iaa0pbx` FOREIGN KEY (`country`) REFERENCES `country` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1000,'1935-07-01','admin@petstore.com','Admin','CA',NULL,'The Admin Alley',NULL,'87653','Admin','admin','jGl25bVBBBW96Qi9Te4V37Fnqchz/Eu4qB9vKrRIqRg=',NULL,'+1 123 3564 4567',NULL,1,1230),(1001,'1934-09-02','user@petstore.com','User','CA',NULL,'The User Boulevard',NULL,'87653','User','user','BPiZbadjt6lpsQKO4wB1aerzpjVIbdqyEdUSyFud+Ps=',NULL,'+1 123 3564 4567',NULL,1,1230),(1002,'1935-07-01','anakin@skywalker.com','Anakin','Black Star',NULL,'3 Wars Street',NULL,'9999','Skywalker','anakin','NwsSbfB4Wa+lac2CWCvEPfss47qAadu8vva3IVt6dsY=',NULL,'+1 123 3564 4567',NULL,1,1230),(1003,'1914-04-02','obiwan@kenobi.com','Obi-Wan','Black Star',NULL,'14 Star Boulevard',NULL,'9999','Kenobi','obiwan','tNUFJEkJ96Dgu4quiEbgNxyEKJIaKUA4I7UziEIa6Kc=',NULL,'+1 765 897 321',NULL,1,1115),(1004,'1951-09-07','luke@skywalker.com','Luke','Black Star',NULL,'543 Sun Set Boulevard',NULL,'9999','Skywalker','luke','zM9S89A8UHLuZKE290/FayfgTxX/5dHSd9WKsY2Usyc=',NULL,'+1 786 1212 987',NULL,1,1200),(1005,'1923-04-12','han@solo.com','Han','Black Star',NULL,'543 Sun Set Boulevard',NULL,'9999','Solo','han','wQaIooUS4VUGRcaf3xPnq2t07YcJS74B8o6IZJC3Ajk=',NULL,'+1 786 1212 987',NULL,1,1238);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `unit_cost` float NOT NULL,
  `version` int(11) DEFAULT NULL,
  `product_fk` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nfy1wpc7kwp8tk9jt61gv96d3` (`product_fk`),
  CONSTRAINT `FK_nfy1wpc7kwp8tk9jt61gv96d3` FOREIGN KEY (`product_fk`) REFERENCES `product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1032 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1000,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum velit ante, malesuada porta condimentum eget, tristique id magna. Donec ac justo velit. Suspendisse potenti. Donec vulputate vulputate molestie. Quisque vitae arcu massa, dictum sodales leo. Sed feugiat elit vitae ante auctor ultrices. Duis auctor consectetur arcu id faucibus. Curabitur gravida.','fish1.jpg','Large',10,1,1000),(1001,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur fringilla pharetra dignissim. In imperdiet, lacus a vehicula dignissim, ante ligula euismod leo, non lobortis orci quam a nisl. Aliquam risus eros, molestie sit amet interdum nec, convallis malesuada leo. Quisque bibendum facilisis erat eget tincidunt. Phasellus pharetra gravida purus. Maecenas.','fish1.jpg','Thootless',10,1,1000),(1002,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque dictum iaculis sapien, eu fermentum eros feugiat a. Pellentesque ultricies mauris orci. Mauris interdum hendrerit felis vel dignissim. Phasellus ac sem sit amet ante laoreet volutpat. Sed sagittis venenatis ullamcorper. Vivamus non mollis nunc. Etiam mauris odio, tristique sed porta in.','fish4.jpg','Spotted',12,1,1001),(1003,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In hendrerit ultricies bibendum. Vestibulum vitae dui porttitor nibh dignissim pretium eu at odio. Proin ac nibh eget erat ullamcorper consequat ac cursus est. Donec sollicitudin interdum elit sed gravida. Integer lacus lacus, gravida eget vehicula ac, sagittis et dui. In et.','fish4.jpg','Spotless',12,1,1001),(1004,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi consectetur, ligula eu malesuada tempus, risus tellus varius ligula, id auctor magna tellus quis dui. Integer ut neque ut libero aliquet hendrerit. Maecenas bibendum, magna sed vulputate tempor, tortor neque consequat nunc, id consectetur neque odio eget augue. Ut consectetur, nisl.','fish3.jpg','Male Adult',12,1,1002),(1005,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec et porta eros. Aliquam neque arcu, sodales eget rutrum a, luctus sit amet sem. Vestibulum ultricies dictum mi, eu sagittis lacus ultrices sit amet. Mauris nec interdum ipsum. Maecenas semper, magna sit amet commodo tempus, purus lectus pretium dui, sit amet.','fish3.jpg','Female Adult',12,1,1002),(1006,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac nunc mauris. Proin augue sem, imperdiet quis imperdiet vitae, egestas vitae quam. Nam id lectus nisi. In hac habitasse platea dictumst. Proin ullamcorper eros non diam accumsan ornare. Fusce posuere, nulla vel tempor molestie, lectus dui aliquet orci, in volutpat.','fish2.jpg','Male Puppy',12,1,1003),(1007,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pretium ornare est ullamcorper porta. Nullam eleifend tincidunt justo nec ultrices. In vehicula pharetra turpis, nec consequat sapien tempus sit amet. Donec quis urna in odio luctus rhoncus. In metus lorem, ultricies vel vestibulum non, laoreet ac neque. Duis posuere, tortor.','fish2.jpg','Female Puppy',12,1,1003),(1008,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce et lorem vel tellus aliquet pretium ut nec libero. Cras euismod tincidunt rutrum. Suspendisse nisl justo, vestibulum et commodo vel, ultricies placerat quam. Sed nisi orci, rhoncus ac accumsan eget, pretium ac purus. Nam et scelerisque mi. Vivamus luctus, massa eget.','dog1.jpg','Spotless Male Puppy',22,1,1004),(1009,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam rhoncus arcu sed sapien interdum porttitor. Nulla nunc magna, egestas sed laoreet nec, congue et felis. Donec rhoncus, est vitae tincidunt posuere, dolor nunc fermentum orci, ut varius velit ipsum a massa. Pellentesque habitant morbi tristique senectus et netus et malesuada.','dog1.jpg','Spotless Female Puppy',22,1,1004),(1010,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ipsum erat, tincidunt sit amet lacinia non, vestibulum elementum odio. Donec id lacus ante, id bibendum est. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Etiam eu suscipit mauris. Vivamus dolor diam, pulvinar a consectetur at.','dog2.jpg','Spotted Male Puppy',32,1,1005),(1011,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi nec justo orci, in faucibus lectus. Proin feugiat faucibus pellentesque. Etiam nec dolor justo, non egestas nisl. Etiam convallis orci nec felis pretium malesuada. Maecenas nec tortor erat. Cras accumsan eros sit amet nibh fringilla molestie. Suspendisse potenti. Nulla vulputate neque.','dog2.jpg','Spotted Female Puppy',32,1,1005),(1012,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ante massa, semper non tempor at, faucibus nec est. Aliquam aliquet, tortor ut egestas blandit, nisi urna elementum lectus, a porta dolor leo quis massa. Aliquam erat volutpat. Fusce sed eros et enim varius consequat. Nam molestie, neque quis commodo rhoncus.','dog3.jpg','Tailed',62,1,1006),(1013,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ac adipiscing nulla. Proin risus lectus, convallis eu sagittis scelerisque, fringilla ut odio. Suspendisse ultrices ullamcorper adipiscing. Proin ac suscipit tellus. Vivamus tempus nibh interdum ipsum ullamcorper at suscipit nibh mattis. Vivamus elementum volutpat ipsum eu tempus. Proin velit ligula, fringilla.','dog3.jpg','Tailless',62,1,1006),(1014,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sit amet velit id augue pellentesque tempor suscipit eu nisi. Nulla facilisi. Sed ultrices lectus in ligula viverra lacinia. Quisque et leo nisl. Suspendisse potenti. Donec semper malesuada ullamcorper. Vivamus fringilla nunc eget tellus condimentum ut dictum nisi euismod. Pellentesque habitant.','dog4.jpg','Tailed',82,1,1007),(1015,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In eget justo odio. Phasellus suscipit auctor lectus eget luctus. Nam ultricies auctor augue vel feugiat. Nulla odio lectus, volutpat sit amet vestibulum id, convallis sit amet tellus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Quisque.','dog4.jpg','Tailless',82,1,1007),(1016,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lobortis volutpat nunc, in sodales felis condimentum a. Quisque quis neque commodo elit consequat porttitor. Integer nec scelerisque nisi. Aliquam velit lorem, egestas sit amet sodales sit amet, gravida ut lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices.','dog5.jpg','Tailed',100,1,1008),(1017,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tortor mauris, sodales sodales pretium vitae, egestas eget mi. Ut hendrerit, libero et feugiat tristique, ligula nunc varius sem, non tristique mi ante a turpis. Suspendisse potenti. Nunc fringilla imperdiet nibh, eu sodales nisl pellentesque eu. Curabitur dictum vestibulum elit ut.','dog5.jpg','Tailless',100,1,1008),(1018,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere porta risus, a bibendum enim pellentesque sit amet. Mauris imperdiet suscipit lectus, sed molestie orci posuere a. Fusce eleifend interdum nisi, nec vulputate velit rutrum ut. Nulla turpis ligula, fermentum ac tincidunt at, porttitor sit amet sem. Curabitur eget eros.','dog6.jpg','Male Adult',100,1,1009),(1019,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in diam sapien. Etiam sed dapibus velit. Phasellus gravida egestas congue. Etiam nec nunc non arcu facilisis ultrices. Curabitur et diam sed neque facilisis dignissim. Vestibulum accumsan viverra nunc, ac tincidunt nisi placerat sit amet. Nulla ac pellentesque justo. Aliquam pellentesque.','dog6.jpg','Female Adult',100,1,1009),(1020,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent lobortis ante et nunc scelerisque aliquet. Phasellus sed auctor purus. Cras tempus lacus eget felis viverra scelerisque. Sed ac tellus vitae nisl vehicula feugiat ac vitae dolor. Duis interdum lorem quis risus ullamcorper id cursus magna pharetra. Sed et nisi odio.','reptile1.jpg','Female Adult',20,1,1010),(1021,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris pharetra tempus vulputate. Proin at nibh at felis feugiat fringilla. Fusce suscipit malesuada urna posuere suscipit. Integer non quam orci, vel adipiscing odio. Aenean at turpis nisi, a ullamcorper massa. Integer consectetur libero a lorem blandit pretium. Curabitur a sodales justo.','reptile1.jpg','Male Adult',20,1,1010),(1022,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum, nisi vitae fringilla ultrices, est ipsum faucibus ipsum, sit amet dapibus erat ipsum et arcu. Sed euismod, mauris suscipit placerat semper, tortor magna cursus nulla, id elementum dui dolor sit amet nunc. Pellentesque a interdum lectus. Mauris in augue eu.','lizard1.jpg','Female Adult',150,1,1011),(1023,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at dapibus arcu. Nunc at dui sem, in fringilla velit. Suspendisse mauris felis, molestie scelerisque viverra sit amet, dapibus eu diam. Curabitur egestas lectus et ligula pharetra in sollicitudin neque tristique. Nunc suscipit scelerisque nunc, vitae consectetur justo sodales ullamcorper. Nulla.','lizard1.jpg','Male Adult',160,1,1011),(1024,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed convallis scelerisque urna. Sed id nunc quis nisl scelerisque scelerisque sit amet id lorem. Sed rutrum arcu sed sem semper id eleifend nulla feugiat. Praesent faucibus dignissim lectus tincidunt lacinia. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per.','cat1.jpg','Male Adult',120,1,1012),(1025,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus viverra nunc vitae libero ultricies lobortis. Duis magna nunc, tincidunt sit amet sagittis et, lobortis volutpat risus. Sed gravida turpis sit amet arcu tincidunt convallis. Nunc vulputate commodo mi non blandit. Etiam eu libero id libero aliquet pretium. Lorem ipsum dolor.','cat1.jpg','Female Adult',120,1,1012),(1026,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed est in tortor pharetra fermentum. Pellentesque nulla augue, venenatis ut viverra vel, dignissim sit amet ante. Aliquam erat volutpat. Aenean lectus odio, blandit aliquam sollicitudin a, pulvinar a felis. Phasellus vitae libero et lacus volutpat tristique. Aliquam tortor lacus, pulvinar.','cat2.jpg','Male Adult',70,1,1013),(1027,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fringilla iaculis nunc et hendrerit. Curabitur malesuada felis non velit ultrices lacinia. Vivamus hendrerit tortor et tortor faucibus vehicula. Pellentesque pellentesque, quam at viverra tristique, lacus nibh euismod erat, vel vestibulum purus turpis eget nisi. Donec suscipit ligula tortor, a suscipit.','cat2.jpg','Female Adult',90,1,1013),(1028,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In justo ligula, volutpat ut adipiscing sed, lobortis vel lacus. Etiam commodo aliquet libero, sit amet pretium risus scelerisque luctus. Suspendisse sit amet nulla nibh, in mollis risus. Curabitur convallis mattis felis, non malesuada justo pretium sed. Nam vestibulum, urna in consequat.','bird2.jpg','Male Adult',120,1,1014),(1029,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse vitae turpis ut erat hendrerit sollicitudin. Curabitur auctor neque a enim scelerisque mattis. Mauris in mi nibh, et placerat lorem. Nunc semper, quam vitae semper condimentum, odio arcu sagittis ligula, eu posuere arcu nibh a quam. Aliquam porta dictum eros auctor.','bird2.jpg','Female Adult',120,1,1014),(1030,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum quis lectus sit amet augue mattis malesuada. Maecenas justo justo, auctor sed consectetur et, pulvinar et diam. Nam felis mi, auctor ornare accumsan sed, pharetra nec arcu. Aliquam tincidunt nisi feugiat dui commodo dapibus. Nullam eget augue odio. Duis mauris nibh.','bird1.jpg','Male Adult',75,1,1015),(1031,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus dignissim vehicula tellus. Vestibulum id diam eros. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nam sit amet sem at ligula pretium fermentum. Suspendisse potenti. Phasellus rhoncus consequat augue, ac feugiat felis gravida nec. Aliquam at.','bird1.jpg','Female Adult',80,1,1015);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_line`
--

DROP TABLE IF EXISTS `order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_line` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `quantity` int(11) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `item_fk` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_3x4o54h6pw5jwvf7h9rq2dl3b` (`item_fk`),
  CONSTRAINT `FK_3x4o54h6pw5jwvf7h9rq2dl3b` FOREIGN KEY (`item_fk`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_line`
--

LOCK TABLES `order_line` WRITE;
/*!40000 ALTER TABLE `order_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_line` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `name` varchar(30) NOT NULL,
  `version` int(11) DEFAULT NULL,
  `category_fk` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_m4dxegutxc07k9cbe4wnjot5g` (`category_fk`),
  CONSTRAINT `FK_m4dxegutxc07k9cbe4wnjot5g` FOREIGN KEY (`category_fk`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1016 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1000,'Saltwater fish from Australia','Angelfish',1,1000),(1001,'Saltwater fish from Australia','Tiger Shark',1,1000),(1002,'Freshwater fish from Japan','Koi',1,1000),(1003,'Freshwater fish from China','Goldfish',1,1000),(1004,'Friendly dog from England','Bulldog',1,1001),(1005,'Cute dog from France','Poodle',1,1001),(1006,'Great dog for a fire station','Dalmation',1,1001),(1007,'Great family dog','Golden Retriever',1,1001),(1008,'Great hunting dog','Labrador Retriever',1,1001),(1009,'Great companion dog','Chihuahua',1,1001),(1010,'Doubles as a watch dog','Rattlesnake',1,1002),(1011,'Friendly green friend','Iguana',1,1002),(1012,'Great for reducing mouse populations','Manx',1,1003),(1013,'Friendly house cat, doubles as a princess','Persian',1,1003),(1014,'Great companion for up to 75 years','Amazon Parrot',1,1004),(1015,'Great stress reliever','Finch',1,1004);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `credit_card_expiry_date` varchar(5) NOT NULL,
  `credit_card_number` varchar(30) NOT NULL,
  `credit_card_type` int(11) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street1` varchar(50) NOT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `zip_code` varchar(10) NOT NULL,
  `discount` float DEFAULT NULL,
  `discount_rate` float DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total` float DEFAULT NULL,
  `total_with_vat` float DEFAULT NULL,
  `total_without_vat` float DEFAULT NULL,
  `vat` float DEFAULT NULL,
  `vat_rate` float DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `customer_fk` bigint(20) NOT NULL,
  `country` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lislbs9y5dvnvoi844eneh00g` (`customer_fk`),
  KEY `FK_77d3902f6vp6f7kawc0q2527b` (`country`),
  CONSTRAINT `FK_77d3902f6vp6f7kawc0q2527b` FOREIGN KEY (`country`) REFERENCES `country` (`id`),
  CONSTRAINT `FK_lislbs9y5dvnvoi844eneh00g` FOREIGN KEY (`customer_fk`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_order_order_line`
--

DROP TABLE IF EXISTS `t_order_order_line`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_order_order_line` (
  `order_fk` bigint(20) NOT NULL,
  `order_line_fk` bigint(20) NOT NULL,
  PRIMARY KEY (`order_fk`,`order_line_fk`),
  UNIQUE KEY `UK_jo44h7yfc34r15gudii8hsq9q` (`order_line_fk`),
  CONSTRAINT `FK_h8wrwysgmtdtxv8befs9monfg` FOREIGN KEY (`order_fk`) REFERENCES `purchase_order` (`id`),
  CONSTRAINT `FK_jo44h7yfc34r15gudii8hsq9q` FOREIGN KEY (`order_line_fk`) REFERENCES `order_line` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_order_order_line`
--

LOCK TABLES `t_order_order_line` WRITE;
/*!40000 ALTER TABLE `t_order_order_line` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_order_order_line` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-12 11:16:17
