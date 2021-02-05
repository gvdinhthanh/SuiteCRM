-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: suitecrm
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('6607c57b-7f2e-3056-dc3e-601d1da841c2','Lương Thị Loan','2021-02-05 10:29:00','2021-02-05 10:29:00','1','1',NULL,0,'3610f3bc-2001-8790-a63f-60180648eaaa','Customer','Chemicals','16000','',NULL,NULL,NULL,NULL,NULL,NULL,'0949365256',NULL,'http://',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('ca9ff845-ba1f-c360-c3da-601808f52b53','Nguyễn Thế Hiệp','2021-02-01 13:54:34','2021-02-05 10:24:37','1','1',NULL,0,'d9de9e80-8795-dd13-54ef-60180675bfea','Customer','Banking','15000',NULL,'Thành Thái','Cà Mau','Cà Mau',NULL,'Việt Nam',NULL,'0919349655',NULL,'http://',NULL,NULL,NULL,'Thành Thái','Cà Mau','Cà Mau',NULL,'Việt Nam','',NULL,'');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
INSERT INTO `accounts_audit` VALUES ('af9d7fff-8834-d989-ab69-601d1c7a8879','ca9ff845-ba1f-c360-c3da-601808f52b53','2021-02-05 10:24:37','1','phone_office','phone','0919656656','0919349655',NULL,NULL);
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `birthday_enter_c` date DEFAULT NULL,
  `adress_sonha_duong_c` varchar(255) DEFAULT NULL,
  `adress_town_c` varchar(255) DEFAULT NULL,
  `adress_huyentp_c` varchar(255) DEFAULT NULL,
  `adress_tinh_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
INSERT INTO `accounts_cstm` VALUES ('6607c57b-7f2e-3056-dc3e-601d1da841c2',0.00000000,0.00000000,NULL,NULL,'1991-04-11','176, Trần Hưng Đạo, Khóm 2','Phường 6','TP. Cà Mau','Cà Mau'),('ca9ff845-ba1f-c360-c3da-601808f52b53',0.00000000,0.00000000,'','','1978-07-12','149, Tổ 3, Khóm 10','Sông Đốc','Trần Văn Thời','Cà Mau');
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
INSERT INTO `accounts_opportunities` VALUES ('ef590282-c341-6478-802c-6018b848a5e7','ef2c7101-ac91-14da-29ae-6018b818e410','ca9ff845-ba1f-c360-c3da-601808f52b53','2021-02-02 02:28:34',0);
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('106a7216-7119-fcfc-2b1e-6017ca6cc264','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Prospects','module',90,0),('11076fd5-1162-9638-0052-6017ca6891e0','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Prospects','module',90,0),('11450ed5-1ece-4320-83bb-6017ca13f200','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','SurveyQuestionOptions','module',90,0),('1153fb10-28fd-a556-8e38-6017ca79a353','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Alerts','module',90,0),('118371af-80d6-1cde-4a5b-6017ca11c89f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Prospects','module',90,0),('119735a8-6264-4508-281d-6017ca5602c9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOS_Quotes','module',90,0),('1210b8d7-8527-cfab-15ab-6017ca872b87','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Alerts','module',90,0),('1252b2b2-1881-0a07-1b70-6017ca20b166','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOS_Quotes','module',90,0),('12a05087-ac9b-b480-ef56-6017ca5bb531','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Alerts','module',90,0),('130f4e97-de89-d0df-fdf4-6017cafd79fb','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOS_Quotes','module',90,0),('13d9d342-dc20-4e5b-4f4f-6017ca0bd170','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOS_Quotes','module',90,0),('14686825-9929-903e-465a-6017caa80eac','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOS_Quotes','module',90,0),('14b748ba-7445-1bed-a6bc-6017ca1ed7b4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Alerts','module',90,0),('14bda9be-7f00-c47d-4d67-6017caadd7c7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOD_IndexEvent','module',89,0),('15d35546-78f9-f848-591f-6017cacb9c85','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOS_Quotes','module',90,0),('168d6de1-a01a-c7ed-0e6b-6017ca961af0','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOD_IndexEvent','module',90,0),('16a5a0f5-58f6-3eb2-3f5a-6017ca28282b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOS_Quotes','module',90,0),('16b7009a-4890-65d1-3f8f-6017ca6c7043','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Alerts','module',90,0),('175189ff-4043-fa73-2651-6017ca9d5d05','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOD_IndexEvent','module',90,0),('17e1ca17-e91d-6b29-f43b-6017ca7b4f1f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOD_IndexEvent','module',90,0),('1844b369-3730-ed93-c1df-6017cad6ef13','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Alerts','module',90,0),('1885785c-ffcf-a049-a431-6017ca33ab98','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOD_IndexEvent','module',90,0),('193e9c15-b4d4-c673-1b4b-6017ca498afe','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Alerts','module',90,0),('198739f4-0bbd-3331-cf7a-6017ca5f75d9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOD_IndexEvent','module',90,0),('1a3588bc-571c-f7ab-7799-6017cab6e09b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOD_IndexEvent','module',90,0),('1a7603b6-dc9c-b191-8b8b-6017ca397446','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','ProspectLists','module',90,0),('1aef1fca-33a2-3d5d-9453-6017ca899039','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOD_IndexEvent','module',90,0),('1bf7977f-5bc1-935c-5f55-6017ca47912c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','EmailMarketing','module',89,0),('1e1803a1-daa9-c147-059f-6017ca58540c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','SurveyQuestionOptions','module',90,0),('1e5f2892-a756-0832-4a6e-6017caf95bd8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','EmailMarketing','module',90,0),('1fd0db20-6064-0513-4ea9-6017ca0cc94f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','EmailMarketing','module',90,0),('20d92e13-2707-fbfc-6aae-6017ca15be16','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','EmailMarketing','module',90,0),('21b5d1eb-9d8b-387e-0076-6017ca4bb706','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','EmailMarketing','module',90,0),('221b4606-d71e-4b39-f8d1-6017ca0185fa','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','EmailMarketing','module',90,0),('234f3db7-20b3-d6f5-e7b8-6017caa23e45','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','EmailMarketing','module',90,0),('2406bc8f-4929-38a5-9f9f-6017ca6c2433','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','EmailMarketing','module',90,0),('254fc6ba-64ef-df4a-d53f-6017ca814e78','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOW_WorkFlow','module',89,0),('260ea293-5703-f62a-d014-6017ca9ff06c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOW_WorkFlow','module',90,0),('26b29b11-218c-3567-bd34-6017ca3f73c5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOW_WorkFlow','module',90,0),('277ebc96-5c1a-429e-912c-6017ca79e468','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOW_WorkFlow','module',90,0),('28e1bd8d-b069-2676-b8fa-6017cac381c6','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOW_WorkFlow','module',90,0),('29d86b7d-ffe9-9bfb-4cf1-6017ca8db6c7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOW_WorkFlow','module',90,0),('2a3aa91e-f13f-e8e2-a69b-6017ca8378df','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOW_WorkFlow','module',90,0),('2a7d2e1b-9b3e-32b5-1e78-6017ca4fecff','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOW_WorkFlow','module',90,0),('2b082bd0-78e2-0f73-8f30-6017cae6b554','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Documents','module',89,0),('2cd00441-6e8e-a148-477b-6017ca30432f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','SurveyQuestionOptions','module',90,0),('2d2747b1-a21d-0f24-7ad8-6017cac0d820','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Documents','module',90,0),('2e23ea98-4f52-4fe8-0c62-6017ca933a95','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Documents','module',90,0),('2ea0f1e5-5ad1-9ed1-62be-6017cab19b3e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOD_Index','module',89,0),('2efe11d5-6790-bf1f-8663-6017cad8523d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Documents','module',90,0),('2f59f53b-49d7-6e72-6586-6017ca3316c8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOD_Index','module',90,0),('2fc42adb-d386-a4c7-ec11-6017cae90eed','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOD_Index','module',90,0),('300fc3b9-b50e-5fdc-1d14-6017cacc420b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOD_Index','module',90,0),('302b01b1-1748-9cbd-0930-6017ca8ca592','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','ProspectLists','module',90,0),('307a06a7-17d6-8be6-5b8d-6017ca1d1fe5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOD_Index','module',90,0),('30c31271-8204-35d9-ac35-6017cac62b20','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Documents','module',90,0),('30f90944-e730-df75-95e6-6017ca1fa55b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOD_Index','module',90,0),('31869517-c36b-60a8-d27a-6017ca2d73ca','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOD_Index','module',90,0),('3214d713-d19f-6c9e-ceb2-6017ca55bf89','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOD_Index','module',90,0),('324c45e0-5b40-9a13-bba7-6017ca617468','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Documents','module',90,0),('331cee62-76bf-b82b-c04b-6017caf9b89c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Documents','module',90,0),('33998e3d-e989-c679-1dd4-6017ca3d2cc8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Documents','module',90,0),('33a4c648-6095-3a46-57e5-6017ca731b91','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOW_Processed','module',89,0),('34751d0d-8c15-50d3-5a8e-6017ca6c83cf','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOW_Processed','module',90,0),('3634091f-8062-cdd4-5fa8-6017caf39c43','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOW_Processed','module',90,0),('3703cf8a-d539-ce5f-51fb-6017ca174652','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOW_Processed','module',90,0),('377b9e0c-f502-7bb5-2c9f-6017ca706205','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOW_Processed','module',90,0),('3832cc25-90a4-9adb-6504-6017cad4d35a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOW_Processed','module',90,0),('38e0c84a-b6b1-e94f-4f77-6017ca4423ca','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOW_Processed','module',90,0),('38f99f5f-181a-9090-099b-6017ca1e67cb','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOP_Case_Events','module',89,0),('3955cfaa-5d78-ecdd-57ae-6017caf34833','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOW_Processed','module',90,0),('39c652a6-3413-596a-1ba7-6017cad4d33c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOP_Case_Events','module',90,0),('3aba1255-f1e3-6773-82a2-6017ca6f698a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOP_Case_Events','module',90,0),('3aef02cd-a257-9c01-6b8b-6017ca8f909a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','ProspectLists','module',90,0),('3b42d0fb-c107-dcf4-16de-6017cac16fb4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOP_Case_Events','module',90,0),('3bf2f429-039e-9b9a-086b-6017cad8b024','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Contacts','module',89,0),('3c8f0a2d-b87e-6e7e-696c-6017caac546a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','SurveyQuestionOptions','module',90,0),('3cc306a6-c503-f389-366b-6017ca4e3ae0','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOP_Case_Events','module',90,0),('3d0a7731-1875-5403-859e-6017ca2605dd','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Contacts','module',90,0),('3d7be9aa-7dc1-6080-e224-6017cadbda7e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOP_Case_Events','module',90,0),('3f22e375-6be6-8eea-a6a5-6017ca1296e5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Contacts','module',90,0),('3f4cef04-3d0e-4ab5-e4e0-6017cab3974e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOP_Case_Events','module',90,0),('3feeba8f-d6bd-6fe9-094b-6017ca124904','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Contacts','module',90,0),('3ffd6654-cef8-3289-d225-6017ca354fd4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOP_Case_Events','module',90,0),('40a06fb6-2c0b-b5ab-9711-6017cad0002f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Contacts','module',90,0),('41257a11-4623-22fc-5899-6017ca328bb7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Contacts','module',90,0),('41495400-5f9b-80d4-7075-6017ca472698','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','jjwg_Maps','module',89,0),('424e9d02-1a6d-b40c-3d77-6017ca2a199b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Contacts','module',90,0),('43128bab-53ee-f54c-e979-6017ca31494e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Contacts','module',90,0),('4392f18b-7465-ffd9-44d5-6017ca615e1a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','jjwg_Maps','module',90,0),('444a0bbf-db13-9408-2088-6017ca7eb004','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','jjwg_Maps','module',90,0),('44f7f214-0eda-d54d-eb23-6017ca98b487','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','jjwg_Maps','module',90,0),('45ba0903-1ee6-3328-71bc-6017ca5f8701','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','ProspectLists','module',90,0),('469f31e2-b7bb-4b8b-6061-6017caccb79c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','jjwg_Maps','module',90,0),('473598c4-45a3-b853-34f1-6017cab30d9f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','jjwg_Maps','module',90,0),('48198c30-2080-5ee5-7b6e-6017cae64d7f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','jjwg_Maps','module',90,0),('487209ce-296c-c755-871c-6017caa41be8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','SurveyQuestionOptions','module',90,0),('48c80856-4f90-c906-1c47-6017cac2c696','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','jjwg_Maps','module',90,0),('4b5df074-2224-15a5-770a-6017ca31e0d2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOP_Case_Updates','module',89,0),('4dc064a6-36e7-b8d6-1637-6017ca834a51','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOP_Case_Updates','module',90,0),('4eb5453c-539f-7da6-2393-6017cab07f2d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOP_Case_Updates','module',90,0),('4f470189-91df-c39c-04a7-6017cae1a63a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','ProspectLists','module',90,0),('4fa20f82-4605-a031-949b-6017ca9c9830','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOP_Case_Updates','module',90,0),('506f61c9-49cf-d0e3-5448-6017ca7e282c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOP_Case_Updates','module',90,0),('5131b6a6-ac2e-aab4-8297-6017cacd1a29','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOP_Case_Updates','module',90,0),('52e18872-14a7-3b94-8d54-6017ca3a8f42','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','jjwg_Markers','module',89,0),('5362a646-6144-5c4e-9ebb-6017cabe59da','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOP_Case_Updates','module',90,0),('53ce4002-765c-019d-925e-6017ca6b0b89','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','jjwg_Markers','module',90,0),('543391af-9314-213d-cf52-6017ca0de4a4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOP_Case_Updates','module',90,0),('546743cc-6fc6-624c-2dec-6017ca948cf7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Accounts','module',89,0),('54679895-07c8-f76b-43d1-6017ca72a27a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','jjwg_Markers','module',90,0),('54e1674a-2c22-cc1d-10f2-6017cace8b60','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','jjwg_Markers','module',90,0),('54ee577a-c979-bb12-f31e-6017ca80543c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Accounts','module',90,0),('55416b30-5fa8-b4e0-0a54-6017ca6b9792','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','jjwg_Markers','module',90,0),('56a8406f-8f35-19fa-f417-6017caf288a8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','jjwg_Markers','module',90,0),('56b5cd8a-0abd-eafa-d278-6017ca815664','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Accounts','module',90,0),('5759d198-8f17-5f9b-59c3-6017ca131eaa','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','jjwg_Markers','module',90,0),('5834a572-d414-ba60-078a-6017ca451330','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','jjwg_Markers','module',90,0),('589808bc-2514-c7b6-0600-6017ca25411d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','FP_Event_Locations','module',89,0),('58aa0977-1d78-2e4c-0190-6017ca8195b4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','ProspectLists','module',90,0),('58bb86e4-ee28-d2dd-36d4-6017ca0907f4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Accounts','module',90,0),('597eaaa5-85c4-a5dd-05a5-6017cac9ea90','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Accounts','module',90,0),('5aec88a5-6ff8-c1dc-8178-6017ca019e55','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Accounts','module',90,0),('5baaa860-1878-98df-12f8-601aa71dcc1a','2021-02-03 13:39:57','2021-02-03 13:39:57','1','1','access','test_module_test','module',89,0),('5cc0b349-3770-876d-484a-6017ca3bee65','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Accounts','module',90,0),('5d9bcf8a-f920-4d6c-4092-6017caf54c89','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Accounts','module',90,0),('5db0231f-b29a-1977-e7a0-601aa7c553f1','2021-02-03 13:39:57','2021-02-03 13:39:57','1','1','view','test_module_test','module',90,0),('6078c8e3-e964-9120-f992-601aa77552c6','2021-02-03 13:39:57','2021-02-03 13:39:57','1','1','list','test_module_test','module',90,0),('60810b5c-c79a-b6ef-ace1-6017ca93af34','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','jjwg_Areas','module',89,0),('60d4e068-e997-5fa7-cb8f-6017cafcf344','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Spots','module',89,0),('61b172af-81fb-c66f-3fb4-6017ca4545b2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Spots','module',90,0),('62087671-60de-8146-2d0e-601aa77296e8','2021-02-03 13:39:57','2021-02-03 13:39:57','1','1','edit','test_module_test','module',90,0),('6262a90b-c574-2f29-e5cf-6017cad9de97','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOR_Reports','module',89,0),('626d8d6b-2260-4f45-9d57-6017ca9cec93','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','jjwg_Areas','module',90,0),('62ba0bc9-2077-becd-e40b-601aa7bcd712','2021-02-03 13:39:57','2021-02-03 13:39:57','1','1','delete','test_module_test','module',90,0),('62d0a189-4595-a430-d15c-6017cacc3713','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Spots','module',90,0),('631e9841-0a93-45b7-c37a-6017caecbf57','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','jjwg_Areas','module',90,0),('63623684-279d-11f2-ff80-6017ca26b7c2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Spots','module',90,0),('63ee943e-4bff-3fa7-bf48-6017ca030834','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','jjwg_Areas','module',90,0),('64180a9b-ae83-35f9-59dc-6017ca309e5d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','FP_Event_Locations','module',90,0),('6432fd82-35f5-7f61-c677-601aa7798fca','2021-02-03 13:39:57','2021-02-03 13:39:57','1','1','import','test_module_test','module',90,0),('6474a3b1-3bc2-19c3-1ccd-6017ca43f71a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','jjwg_Areas','module',90,0),('64edc908-9ee2-8433-cbea-601aa772a36f','2021-02-03 13:39:57','2021-02-03 13:39:57','1','1','export','test_module_test','module',90,0),('64f66bf7-14b8-4b4d-be96-6017caacdcec','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOR_Reports','module',90,0),('650abd63-f082-75a4-a58d-6017ca54dd12','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','jjwg_Areas','module',90,0),('651f020d-f67a-ce98-814e-6017ca62cee5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Spots','module',90,0),('65acc685-f152-4714-6efa-6017ca8ae41a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOR_Reports','module',90,0),('65ca3a13-36ef-7a80-4433-601aa79bb7c1','2021-02-03 13:39:57','2021-02-03 13:39:57','1','1','massupdate','test_module_test','module',90,0),('65ec59d2-6ab2-6a0d-f80b-6017ca4e02aa','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Spots','module',90,0),('65fd01e4-d02e-d387-a060-6017ca1e4705','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','jjwg_Areas','module',90,0),('66a0808f-81f2-5d63-33cb-6017ca6f04b5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','jjwg_Areas','module',90,0),('67041382-dd21-ba5f-c8b6-6017ca5a32b2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Spots','module',90,0),('670e9cab-5dbc-df3f-a7e8-6017cadfb6a6','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOR_Reports','module',90,0),('67f497bf-cd72-1d8a-453a-6017ca594a2b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Spots','module',90,0),('68185be1-b5ae-df0a-881c-6017cadf4a78','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOR_Reports','module',90,0),('681d0116-7635-42ba-f3d6-6017caa34383','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','ProspectLists','module',90,0),('69c005e8-106e-4829-b29d-6017caf33603','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOR_Reports','module',90,0),('69c40028-8193-04ae-ea6a-6017ca36aaa1','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','SurveyQuestionOptions','module',90,0),('6ab0bcfc-498f-dc3a-7f9f-6017ca790539','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOR_Reports','module',90,0),('6ac9b95e-2b95-8b91-edb2-6017cafd2c72','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Leads','module',89,0),('6bd15dbd-714c-3312-e455-6017ca15365e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOR_Reports','module',90,0),('6d78d2e2-cf60-ad18-ccba-6017cab10c1c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Leads','module',90,0),('6d9d1858-3cb1-1bf8-47de-6017caecbe90','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','jjwg_Address_Cache','module',89,0),('6ea461d8-ddf8-92b2-3408-6017ca96a386','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','jjwg_Address_Cache','module',90,0),('6ed87ff1-dc29-9718-c8a2-6017cac6f7f7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Leads','module',90,0),('6f4ed682-115a-e071-aa74-6017caf739a3','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','jjwg_Address_Cache','module',90,0),('6fec0d36-5a67-8238-f2ac-6017cae902b8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Leads','module',90,0),('6ffacbb5-5dca-0c27-5fae-6017ca1495ba','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','jjwg_Address_Cache','module',90,0),('70ca3409-a115-5547-4672-6017ca512a79','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Leads','module',90,0),('70caaca7-26e2-1098-1756-6017ca845ecf','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','jjwg_Address_Cache','module',90,0),('71456b4c-71e5-7e70-8411-6017caf4f852','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','jjwg_Address_Cache','module',90,0),('71fc608d-8555-80f2-5372-6017cae78ce3','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','jjwg_Address_Cache','module',90,0),('720128c8-49a7-b466-9bc7-6017ca049579','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Leads','module',90,0),('72100f4a-ad81-b819-d3dd-6017ca9d1452','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','FP_Event_Locations','module',90,0),('72355743-6e36-a4b8-a9ae-6017ca6d4186','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Opportunities','module',89,0),('72d488f9-c28c-d618-901e-6017ca7cd835','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Leads','module',90,0),('733ed99a-4574-0176-f887-6017cabe49e9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Opportunities','module',90,0),('73b832d2-55fa-46c9-f776-6017caf638a9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Leads','module',90,0),('73fdb388-e429-64d1-7485-6017cae6514d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Opportunities','module',90,0),('74193c93-40a8-b4b3-61b6-6017cabdd106','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','jjwg_Address_Cache','module',90,0),('75e95896-bfb4-e7d1-8d5d-6017ca577257','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Opportunities','module',90,0),('773803fa-601f-7f1f-8433-6017caf1fefd','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Opportunities','module',90,0),('77ccb264-3890-c274-4e17-6017ca98c87e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Opportunities','module',90,0),('79640946-aee0-9f50-e62a-6017cae5892d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Opportunities','module',90,0),('7a44a0a8-2174-0769-fff0-6017caa1731c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Opportunities','module',90,0),('7a6a3fd3-36d4-95b3-c51c-6017cae9ba36','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Calls_Reschedule','module',89,0),('7b93328d-ff92-fab7-088a-6017caafa77b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','EAPM','module',89,0),('7c284102-15d0-c329-fc54-6017ca9ed58f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','EAPM','module',90,0),('7c7a0933-8857-c660-fe54-6017ca5b86aa','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','FP_Event_Locations','module',90,0),('7c990f35-dbe1-d88d-1b6f-6017cacafce6','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Calls_Reschedule','module',90,0),('7d5ccdf9-fdf4-60c7-9c96-6017caf9ff1f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Calls_Reschedule','module',90,0),('7de3d8da-5c08-1db7-4a75-6017ca329c45','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','EAPM','module',90,0),('7de8fc75-06b4-9caf-d2f8-6017caf078cf','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Calls_Reschedule','module',90,0),('7eb70d04-1b91-0b81-d33f-6017ca4c7a95','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Calls_Reschedule','module',90,0),('7f62c1e4-1794-9774-0835-6017ca110404','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','EAPM','module',90,0),('7f6c2045-592e-ee7a-88aa-6017ca223d64','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Calls_Reschedule','module',90,0),('803515a9-90a5-6011-db68-6017caaad948','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Calls_Reschedule','module',90,0),('80721d39-a468-f6ac-c5a0-6017cadaaa11','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','EAPM','module',90,0),('811d6ca1-d17a-5a54-e033-6017ca5d11e0','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Calls_Reschedule','module',90,0),('81318593-4681-4d8a-4fc0-6017cadfb23f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','EAPM','module',90,0),('81b7dc49-a8cd-d6de-bbc9-6017cac215e8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','EAPM','module',90,0),('82ed8e62-4294-f0ca-6399-6017ca0cf556','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','EAPM','module',90,0),('83bafba5-b28d-645d-48f2-6017ca1c1383','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Cases','module',89,0),('8736f700-cfc6-914f-0006-6017ca6a5053','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Cases','module',90,0),('87539216-07b6-7711-9aa8-6017ca0d4d82','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOR_Scheduled_Reports','module',89,0),('882f3059-afd6-c38d-4091-6017ca2bde86','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Cases','module',90,0),('8911290d-27ae-4a1a-6dc7-6017cacc0f60','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOR_Scheduled_Reports','module',90,0),('8914ea66-9b43-bf8d-ab0f-6017cae44b71','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Cases','module',90,0),('89cfd493-7685-52ca-1008-6017ca632e1b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','SecurityGroups','module',89,0),('8a0bec92-fd8e-4b45-cf5c-6017ca24ca89','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','EmailTemplates','module',89,0),('8a35bd21-0821-a6ef-ec50-6017caa61ccb','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Cases','module',90,0),('8a520e16-b539-983c-b9bd-6017cab11234','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','SecurityGroups','module',90,0),('8aa714aa-4b3e-19ba-274e-6017ca4697ff','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOR_Scheduled_Reports','module',90,0),('8b65b469-c5df-e8ca-4420-6017caa83b89','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Cases','module',90,0),('8b8e0a99-3ec4-6d2b-4222-6017caf19b1e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','EmailTemplates','module',90,0),('8ba34aa2-a2dd-fb51-3753-6017cad94619','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOR_Scheduled_Reports','module',90,0),('8bf0667b-a379-e360-373a-6017cae0f35a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Cases','module',90,0),('8c1ad7be-b834-8a3b-a447-6017ca75307a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','SecurityGroups','module',90,0),('8c53c744-e17b-6c7c-0ebc-6017cad02aed','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','EmailTemplates','module',90,0),('8c8ae67b-d645-cdb5-f0a8-6017ca1e81ce','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Cases','module',90,0),('8c917df1-c6ec-68b0-840f-6017cadaae13','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','SecurityGroups','module',90,0),('8c9ce024-16d3-ce97-f6f1-6017cafec8a2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOR_Scheduled_Reports','module',90,0),('8d58526e-ae7c-89f1-c5ab-6017ca767f94','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOR_Scheduled_Reports','module',90,0),('8d646238-0036-c2d0-6e93-6017ca17c0f5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','SecurityGroups','module',90,0),('8dbe583f-f32d-fe7e-36ab-6017ca55dcb4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','EmailTemplates','module',90,0),('8df6c126-ff00-31ab-53d7-6017ca17f4bb','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','SecurityGroups','module',90,0),('8e72cccd-d8bd-5bda-1129-6017ca1e0e4f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','SecurityGroups','module',90,0),('8e8d16ca-188e-5eb5-00d6-6017caa388ea','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','EmailTemplates','module',90,0),('8f2d5206-743b-ecd6-bbfd-6017ca3b700c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','SecurityGroups','module',90,0),('8f62e502-a51a-1dbf-4c0e-6017cabe0b1a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOR_Scheduled_Reports','module',90,0),('9023fcd5-063f-1f28-bab7-6017caf948ae','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','EmailTemplates','module',90,0),('906d69aa-1fca-7278-c57c-6017caee5833','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('91b62206-bc91-ce7c-4c8f-6017ca594770','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','EmailTemplates','module',90,0),('91c30556-a5c1-71fa-6265-6017ca41003a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','FP_Event_Locations','module',90,0),('91ed6183-922d-c827-70cc-6017ca0f80a2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AM_ProjectTemplates','module',89,0),('927431e0-c275-5a96-5d0b-6017cabe20e7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','EmailTemplates','module',90,0),('92b903d6-cb45-ba2b-3c16-6017caf5e9e9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AM_ProjectTemplates','module',90,0),('93d8cd13-cf78-d508-6128-6017ca32e37c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AM_ProjectTemplates','module',90,0),('947ad549-f887-3d63-b7a7-6017cad7458e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AM_ProjectTemplates','module',90,0),('95caaeaf-93f3-7e0f-a75d-6017cafeac2b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','OutboundEmailAccounts','module',89,0),('9634bb2c-d95f-d6c4-301c-6017ca77e3e4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AM_ProjectTemplates','module',90,0),('970785ad-0325-24c1-aa65-6017ca359798','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','OutboundEmailAccounts','module',90,0),('97b2709d-df39-baf3-964d-6017ca844416','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AM_ProjectTemplates','module',90,0),('97cbb191-9ddd-400d-a042-6017ca5c4392','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','OutboundEmailAccounts','module',90,0),('97e9402e-af05-1ead-a076-6017ca207f26','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Notes','module',89,0),('97f22f4d-0e7c-61e6-6799-6017cac0b6fb','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOS_Contracts','module',89,0),('98318ae3-2987-0db6-aedc-6017caa934f7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','OutboundEmailAccounts','module',90,0),('986eee81-167e-9465-9b49-6017ca064f5f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Notes','module',90,0),('9876e9d1-2bff-c6c5-6d01-6017cade8e1f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AM_ProjectTemplates','module',90,0),('98bae92f-53aa-2a9a-f0ae-6017ca2d9978','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOS_Contracts','module',90,0),('98d80d64-442b-4845-f330-6017ca409579','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','OutboundEmailAccounts','module',90,0),('99735554-9a7d-a7af-c53e-6017ca281ffa','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOS_Contracts','module',90,0),('997bc36e-3b1a-b7f4-8f68-6017caa01d84','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AM_ProjectTemplates','module',90,0),('998800ae-740e-54bd-2cba-6017caaaa73a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','OutboundEmailAccounts','module',90,0),('9a0c8414-dc37-00e0-5f53-6017ca9df993','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','OutboundEmailAccounts','module',90,0),('9aa4c23c-82cc-b784-2948-6017ca8efdf4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','OutboundEmailAccounts','module',90,0),('9b2882df-e540-afe4-9c83-6017ca7e0aa7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Notes','module',90,0),('9b63b5a6-2600-6a71-577a-6017ca89ae0e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOS_Contracts','module',90,0),('9c42311f-35a6-2705-f373-6017ca4707a1','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Bugs','module',89,0),('9c7adf56-4680-5e30-ff28-6017cadf52c8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Notes','module',90,0),('9c902b35-c1f4-32bf-0803-6017ca926dbe','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOS_Contracts','module',90,0),('9ced0d8b-c4fb-fbbd-f69f-6017ca4e42e6','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','FP_Event_Locations','module',90,0),('9d2620e1-e27a-9565-dbda-6017ca3ffa98','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOS_Contracts','module',90,0),('9dad8dfc-64d2-5c22-7fed-6017caa67ae1','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Notes','module',90,0),('9dc29313-6fce-8cc2-bab3-6017ca93cb71','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOS_Contracts','module',90,0),('9e20b241-b441-e11e-e26e-6017ca510608','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Bugs','module',90,0),('9e6be21b-d7c9-3519-4dfc-6017ca2292c5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOS_Contracts','module',90,0),('9e8c53ec-f5f5-1908-8fd6-6017ca4b90f4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Notes','module',90,0),('9f6d45af-0924-9907-090a-6017ca293441','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Notes','module',90,0),('a0125536-b231-699a-6df1-6017cac450ac','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Notes','module',90,0),('a020d500-6246-3b1e-4d0d-6017ca57b752','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Bugs','module',90,0),('a18410d0-7678-b6ef-2c6d-6017ca0eeaf5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Bugs','module',90,0),('a1dba88a-f04c-1a8a-a892-6017ca6b9c0e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','TemplateSectionLine','module',89,0),('a2b066ca-8bc3-455f-49e3-6017caf5a616','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','TemplateSectionLine','module',90,0),('a33f23f0-9e86-e1b5-ec15-6017ca74a368','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Bugs','module',90,0),('a3c278eb-300e-6fb2-795d-6017caae6b95','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Bugs','module',90,0),('a43c437c-1608-81a0-4112-6017cac827a4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','TemplateSectionLine','module',90,0),('a49603d3-7f15-abda-b0d5-6017ca7fcdde','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AM_TaskTemplates','module',89,0),('a4da651d-8bd3-37de-e06c-6017cab354c0','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Bugs','module',90,0),('a51ed5ca-e6ea-6120-f675-6017ca40973a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','TemplateSectionLine','module',90,0),('a5302dea-b8c6-d94c-ef60-6017ca19b99f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AM_TaskTemplates','module',90,0),('a57c2f16-66b6-bae7-008d-6017cacfd6bf','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Bugs','module',90,0),('a59f0241-8c23-bf89-0b3c-6017caf9cfab','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','FP_Event_Locations','module',90,0),('a5c83c1f-45dc-c601-2782-6017cabac48b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','TemplateSectionLine','module',90,0),('a66f362b-768c-db39-3986-6017ca23936b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','TemplateSectionLine','module',90,0),('a6dc7487-4f78-319e-eb0d-6017cae454e9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','TemplateSectionLine','module',90,0),('a6f22aa9-813e-d48d-cbcf-6017cafe3c98','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Calls','module',89,0),('a703c7b1-bdc0-8848-c82e-6017ca3a4705','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AM_TaskTemplates','module',90,0),('a79a0deb-3f53-b8d5-9317-6017ca50aa02','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','TemplateSectionLine','module',90,0),('a7a9f1ad-be16-ee19-451b-6017ca00687d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Calls','module',90,0),('a8a24c95-1318-6fc6-2eba-6017ca621c60','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AM_TaskTemplates','module',90,0),('a8bb31f6-150f-ff3f-bef0-6017ca208971','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Calls','module',90,0),('a96a916f-2bdc-49ea-aa25-6017cac6a313','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AM_TaskTemplates','module',90,0),('aa06a022-eebd-88bd-7c29-6017ca1a6417','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Calls','module',90,0),('aae46ef4-441b-7567-6a4b-6017ca26f182','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AM_TaskTemplates','module',90,0),('ab02cc22-401e-4f0b-5180-6017ca6944bb','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Calls','module',90,0),('abbf2bfc-ea68-ef97-1d5a-6017ca3f28ba','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AM_TaskTemplates','module',90,0),('ac03085e-eb42-7691-4a87-6017ca928f01','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','FP_Event_Locations','module',90,0),('ac25d4dd-6de5-9c2a-8b4f-6017ca9dc9b7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Calls','module',90,0),('ac9cd086-502b-675f-923d-6017ca9ae10e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AM_TaskTemplates','module',90,0),('aceda745-edf4-6592-0ca7-6017ca7c89f8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Calls','module',90,0),('ad72033b-d248-1445-3717-6017ca405307','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOS_Invoices','module',89,0),('ae8ad6ad-4263-f441-956e-6017ca7d5153','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Calls','module',90,0),('aecb124c-09c7-d9f6-442e-6017ca33edc8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOS_Invoices','module',90,0),('af785830-9b95-6e64-4175-6017ca031673','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOS_Invoices','module',90,0),('b03e2b4c-2931-7fad-9b57-6017ca8ac75c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOS_Invoices','module',90,0),('b0a59a80-8244-9f08-bf42-6017caeaa7f3','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOS_Invoices','module',90,0),('b148ee1e-32f7-3ee6-9bd5-6017ca688368','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOS_Invoices','module',90,0),('b1b70587-5e65-c9e2-442e-6017ca9be6b4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOS_Invoices','module',90,0),('b231fc57-fb19-a4fb-3c2d-6017ca35b664','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOS_Invoices','module',90,0),('b5bd1f3f-81e2-6a67-83e5-6017cabb8c31','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Users','module',89,0),('b5c62ffc-a30c-fba7-206c-6017ca00a390','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','SurveyResponses','module',89,0),('b690901c-432b-50e5-165f-6017caf4a5da','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Users','module',90,0),('b6911c5b-48f3-c461-d700-6017ca6f7761','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','SurveyResponses','module',90,0),('b73ebca9-7dcf-2fd7-1140-6017ca00bb5d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Users','module',90,0),('b742e7ee-1eaa-6de2-be09-6017ca43a204','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','SurveyResponses','module',90,0),('b83ab95f-eedf-c959-8d5d-6017ca61e4bb','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Users','module',90,0),('b8979993-d9e2-3c23-2378-6017ca043ead','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','SurveyResponses','module',90,0),('b899af45-a8cb-564b-2b5d-6017caafa414','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Emails','module',89,0),('b8fb9850-e111-55d9-36dd-6017ca04eac2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Users','module',90,0),('b9446e01-b190-5369-dac0-6017ca90247e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','SurveyResponses','module',90,0),('b9a397e5-66a6-9988-7929-6017cae9079d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Emails','module',90,0),('b9e54d8b-7ade-bc5b-658e-6017ca43b993','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','SurveyResponses','module',90,0),('ba342dc8-9904-0831-f819-6017ca377615','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Users','module',90,0),('ba473bcc-7238-9791-6f76-6017ca6721e5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Emails','module',90,0),('ba77c542-9e5d-7ae6-e3f9-6017caa020b9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','SurveyResponses','module',90,0),('baa7b0d9-df15-cefc-4a0d-6017ca1225a1','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Users','module',90,0),('baed9da3-990f-9c19-73a4-6017ca3443a1','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','SurveyResponses','module',90,0),('bb014dc7-231c-d3be-3127-6017ca522de8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Emails','module',90,0),('bb56948a-9fc9-ec31-9a2a-6017ca153622','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Users','module',90,0),('bc577676-7c95-b78d-df76-6017ca9b20dd','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Emails','module',90,0),('bc5c5ae8-69e2-79f1-be97-6017ca327292','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOK_Knowledge_Base_Categories','module',89,0),('bceb6bef-9e3e-2c85-bbac-6017cafb0acf','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Emails','module',90,0),('bd19cf98-97d8-2daf-1f6b-6017ca395562','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOK_Knowledge_Base_Categories','module',90,0),('beaed700-c854-1c4e-c41f-6017ca967318','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Emails','module',90,0),('bee54d6c-3344-be7c-01e4-6017cabf69c7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOK_Knowledge_Base_Categories','module',90,0),('bf82a946-415f-bc3a-8fc7-6017ca457085','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Emails','module',90,0),('c03fe354-e2f4-98ae-d59a-6017ca91e9d3','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),('c0400db5-486a-beee-146a-6017ca7174dc','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','ProspectLists','module',89,0),('c0d49832-2531-68de-84ac-6017cabd7e17','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),('c1e1203c-3572-0db8-24e2-6017ca610d0c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOK_Knowledge_Base_Categories','module',90,0),('c249c7e4-7796-6bf7-7a7b-6017ca2c5830','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Surveys','module',89,0),('c26ff4f5-0b2f-abe7-b877-6017cae0cd05','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOS_PDF_Templates','module',89,0),('c38d217e-6736-c873-0d76-6017ca449eb3','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOK_Knowledge_Base_Categories','module',90,0),('c431144f-3b85-b653-2799-6017ca279bff','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Surveys','module',90,0),('c4858000-fe1e-b876-5d40-6017ca89c40a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOS_PDF_Templates','module',90,0),('c4ba4945-bb22-2ce1-03e6-6017ca627fb1','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),('c5137ed7-10f9-bc73-4a6e-6017ca455098','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Surveys','module',90,0),('c532c07f-9fe7-3f2f-8a5f-6017cad82dab','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOS_PDF_Templates','module',90,0),('c5c44e91-99cf-3ac6-a7ea-6017caac610a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Surveys','module',90,0),('c6489af9-2211-2408-2dc5-6017ca8bcab5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Surveys','module',90,0),('c653cd76-f2b1-cf18-5f84-6017cae22650','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOS_PDF_Templates','module',90,0),('c706f622-a7c2-cd76-47f4-6017ca5f1ee9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Surveys','module',90,0),('c74d759e-ca97-9c85-566b-6017ca9f5554','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Project','module',89,0),('c77cdbff-3ff2-9879-429b-6017ca36a710','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOS_PDF_Templates','module',90,0),('c794c5c8-1658-d162-4728-6017caec8ae8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Surveys','module',90,0),('c840be03-804c-7707-c944-6017ca14f4b9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Project','module',90,0),('c888f7ec-948e-d52b-3604-6017ca473b89','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOS_PDF_Templates','module',90,0),('c8c2766e-917f-40ca-4d6d-6017caf3f0d5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Project','module',90,0),('c8f1f7e3-8a5a-b42f-bd7d-6017ca8013d7','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Surveys','module',90,0),('c9ed4ae1-e5d0-dc21-67ac-6017ca672b32','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOS_PDF_Templates','module',90,0),('c9f5ba8f-acbd-9e14-381d-6017cabba8c0','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Project','module',90,0),('ca9243e9-0177-e253-d4db-6017cae7ea3f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOS_PDF_Templates','module',90,0),('cab346aa-9975-17b1-bd41-6017ca561174','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Project','module',90,0),('cb26adac-ed61-d3a3-7c6e-6017ca433812','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Meetings','module',89,0),('cb671498-76a3-0ff6-3b03-6017ca56cae8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Project','module',90,0),('cc0d998d-d33d-2b7c-1413-6017ca1a425a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Project','module',90,0),('cc7cc659-153f-71ed-f0d2-6017caa4c207','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Project','module',90,0),('cd88e407-1956-c897-a607-6017ca340c28','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOK_KnowledgeBase','module',89,0),('cdae776a-3357-3fc3-e44d-6017ca2c967b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Meetings','module',90,0),('ce300fe4-aceb-1d76-c963-6017ca14a5f3','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Prospects','module',89,0),('ce72846b-97fc-6dbc-f5ff-6017ca04b487','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOK_KnowledgeBase','module',90,0),('cf1e856c-b6ab-5b98-3ad5-6017ca7fb7eb','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOK_KnowledgeBase','module',90,0),('cf98c060-aa97-69a2-bfb8-6017caf73ecc','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Meetings','module',90,0),('cfd801f1-971b-05c3-f426-6017cac294ff','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOK_KnowledgeBase','module',90,0),('d0901d67-9ee5-6676-9f62-6017ca8fda47','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOK_KnowledgeBase','module',90,0),('d0def67a-7a7d-3dea-616d-6017ca0ca5c0','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOK_KnowledgeBase','module',90,0),('d10ba092-b594-4c74-4464-6017cad87ad6','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Meetings','module',90,0),('d186ebc9-f248-c713-57ad-6017ca877318','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOK_KnowledgeBase','module',90,0),('d1b4b2de-3c43-1cf8-1126-6017caf932db','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Meetings','module',90,0),('d205df45-00e2-fd60-1321-6017caaef991','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOK_KnowledgeBase','module',90,0),('d23c0c73-ef18-7df2-801f-6017cae194f6','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Meetings','module',90,0),('d29bdfb0-fe1c-8857-e905-6017caea5473','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','SurveyQuestionResponses','module',89,0),('d3178c03-b2e4-a425-9eca-6017ca72eb45','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Meetings','module',90,0),('d3a03f58-2d84-2e3c-5b75-6017ca7a050c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Meetings','module',90,0),('d3a1d12f-623a-1bec-0810-6017cafc9125','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','access','Employees','module',89,0),('d3d342d1-256b-ae27-5355-6017ca3b20ae','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','SurveyQuestionResponses','module',90,0),('d3d750bd-c58c-c030-00d9-6017ca19f0ac','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOS_Product_Categories','module',89,0),('d43bc43e-e2fe-955f-ef9d-6017ca02a76f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','ProjectTask','module',89,0),('d4ef4a17-0ff2-1c7d-f14a-6017ca54bfe6','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','view','Employees','module',90,0),('d4fcbe23-c827-2094-d420-6017ca831257','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','ProjectTask','module',90,0),('d57a9815-b8fa-f92d-8740-6017ca2996b4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOS_Product_Categories','module',90,0),('d57cbe4e-28dc-3341-3148-6017ca4ae022','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','SurveyQuestionResponses','module',90,0),('d60ff063-6f4a-4ed7-4dae-6017ca3f6b87','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOS_Product_Categories','module',90,0),('d620c5dd-c03f-9f13-31c7-6017ca213266','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','ProjectTask','module',90,0),('d67affcf-e393-960c-30dc-6017cadbbb20','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','list','Employees','module',90,0),('d696d729-adb1-4fec-3046-6017caa1340f','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','SurveyQuestionResponses','module',90,0),('d6db73f5-8776-66f9-6c1d-6017caeb8262','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOS_Product_Categories','module',90,0),('d6e4bfa4-cbed-cdd3-c897-6017ca052bde','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','ProjectTask','module',90,0),('d71fb77c-48a2-8f60-7e1b-6017ca5bccba','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','edit','Employees','module',90,0),('d73cd5f5-e1d8-5170-7d78-6017cabb0ed2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','SurveyQuestionResponses','module',90,0),('d786a57c-50fa-3400-5b9b-6017cac510a9','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','ProjectTask','module',90,0),('d7a4a93f-f2b9-7acf-fd1a-6017ca338e09','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','delete','Employees','module',90,0),('d7ba2bb6-7b6d-76c1-1c42-6017ca823bcd','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','SurveyQuestionResponses','module',90,0),('d840ab23-5d37-8c15-7888-6017ca6d0b7c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','ProjectTask','module',90,0),('d881ab81-f5b9-7815-7501-6017caab079d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','import','Employees','module',90,0),('d8ef97ea-8348-5f56-97ad-6017ca6a0460','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','ProjectTask','module',90,0),('d9109e29-93c3-3b11-a26e-6017ca4c8c53','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','export','Employees','module',90,0),('d972e5ac-ed9b-9d26-c01a-6017cabd1654','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','massupdate','Employees','module',90,0),('d98b8285-6c4f-9047-3246-6017caf67d11','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','SurveyQuestionResponses','module',90,0),('d98bf6b0-ff19-5726-0429-6017cad40d74','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','ProjectTask','module',90,0),('da05b32a-31d0-ce97-2967-6017caed3d34','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOS_Product_Categories','module',90,0),('da4e44f2-19f9-33ea-a79f-6017caf3bb39','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','SurveyQuestionResponses','module',90,0),('da54274e-8c18-2757-f4a0-6017caf8249a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOS_Product_Categories','module',90,0),('da670931-2349-18a0-44b3-6017ca9c2ded','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Prospects','module',90,0),('daddf798-fbca-a01d-92af-6017ca71624e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOS_Product_Categories','module',90,0),('db361441-01f3-a76b-d5f3-6017cafe119c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOS_Product_Categories','module',90,0),('dc27b527-bed4-aea5-836c-6017ca6ad29e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Tasks','module',89,0),('de3aca57-08ed-bd1c-71db-6017caa8a814','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Tasks','module',90,0),('e03d1f5c-2513-24d8-bdde-6017ca945ff0','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Tasks','module',90,0),('e1123a71-9f1e-4905-cf20-6017caacf73b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOS_Products','module',89,0),('e193cedb-c4ed-434d-40b7-6017cab333cc','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Tasks','module',90,0),('e206debd-89f8-a796-b4da-6017ca4eff96','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','AOS_Products','module',90,0),('e21f652f-6598-aa63-5104-6017ca3269cc','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','SurveyQuestions','module',89,0),('e24cd46c-c7c0-b6e7-f8be-6017cadc5e71','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Tasks','module',90,0),('e27db9aa-0c69-f8be-e7d4-6017ca4a1b9c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','AOS_Products','module',90,0),('e2bc5387-7429-ab0a-3d69-6017ca359d7b','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Campaigns','module',89,0),('e2da0686-74cf-c6c2-177d-6017ca10edf2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','AOS_Products','module',90,0),('e30b304e-5234-237f-21d2-6017cad23c56','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Tasks','module',90,0),('e336c29d-2d18-451f-7bbc-6017ca49e15c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','AOS_Products','module',90,0),('e33de50b-0af6-759b-2e46-6017ca41bb50','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','Campaigns','module',90,0),('e344c340-e4e2-4505-54a2-6017ca5f2b7c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','SurveyQuestions','module',90,0),('e3d7c102-1126-6fe9-1677-6017ca809dba','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Tasks','module',90,0),('e3eed07f-5bb3-2703-e548-6017caddebbf','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Campaigns','module',90,0),('e3f720d1-c9c2-381c-98d5-6017ca7e0a85','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','SurveyQuestions','module',90,0),('e40e7e28-78b1-0bae-fa91-6017caee97f4','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','AOS_Products','module',90,0),('e454847f-e338-c3eb-be96-6017ca4a2ea3','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Tasks','module',90,0),('e4a782d6-f3e0-5420-7aa0-6017ca7dfddb','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Campaigns','module',90,0),('e4b06495-feb8-2d70-cb38-6017ca9b8502','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','SurveyQuestions','module',90,0),('e5173f3f-76a1-cf58-1013-6017cae80777','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Campaigns','module',90,0),('e57cbf72-739f-a668-7683-6017cae2687a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','Campaigns','module',90,0),('e5a726b8-46e2-5577-6768-6017ca4e8709','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','SurveyQuestions','module',90,0),('e5ae0a64-7b08-de38-3aa6-6017ca281050','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','Prospects','module',90,0),('e5d46f78-d381-0c69-bf09-6017caaa5a9a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','AOS_Products','module',90,0),('e5e30ecd-895c-7f29-b5f7-6017ca1db364','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','Campaigns','module',90,0),('e5eb98c6-09e5-65bc-7b07-6017caf35be0','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','FP_events','module',89,0),('e63b841e-387c-ad8e-8f4b-6017ca3c9896','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','SurveyQuestions','module',90,0),('e6b81b67-beb5-38c3-5233-6017ca74980e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','FP_events','module',90,0),('e6c56d8e-33d3-8a8d-3b47-6017ca263dc6','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','SurveyQuestions','module',90,0),('e6ed1604-861b-1b53-e18d-6017ca9f3220','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','AOS_Products','module',90,0),('e72ba550-9aea-e958-95e8-6017ca63fa05','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','Campaigns','module',90,0),('e740cd02-ebce-f2e3-e4ff-6017ca03a2e5','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','SurveyQuestions','module',90,0),('e7ed5142-9b57-558e-95a9-6017ca713940','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','list','FP_events','module',90,0),('e91c140d-d1a4-7a42-2181-6017cad6448e','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','FP_events','module',90,0),('ea20640d-5cb5-0ec5-e35a-6017ca8a8a15','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','FP_events','module',90,0),('ea5c0154-cef1-803b-0ba7-6017ca67a911','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','Alerts','module',89,0),('eae8eb86-ed25-499c-d9d5-6017ca5c45da','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','import','FP_events','module',90,0),('ece932f0-236d-af78-5fc3-6017ca39f7be','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','export','FP_events','module',90,0),('edf66900-4cc5-2778-b45b-6017ca4872c6','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','massupdate','FP_events','module',90,0),('f2e8e852-51ce-32b0-7d1a-6017ca06e346','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','SurveyQuestionOptions','module',89,0),('f3d45d6c-92bf-593e-dc4e-6017ca41cbee','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','view','SurveyQuestionOptions','module',90,0),('f4bb0782-df1c-f4d1-1c0d-6017ca07bb9d','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','edit','Prospects','module',90,0),('f5630cd8-fe01-80b0-773c-6017ca41717a','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','access','AOS_Quotes','module',89,0),('fd900cfb-53c8-2739-93ed-6017cae17103','2021-02-01 09:31:37','2021-02-01 09:31:37','1','','delete','Prospects','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` VALUES ('145ce98a-0b57-3e66-8f20-60180fdba411','2021-02-01 14:28:04','2021-02-01 14:28:50','1','1','Nhân viên Marketing','Quyền của Nhân viên Marketing',0),('52c526cb-9c4a-23b6-b39f-60180f9089b2','2021-02-01 14:25:14','2021-02-01 14:26:05','1','1','Trưởng phòng CSKH','Quyền của Trưởng phòng CSKH',0),('54779abd-cf10-d4b8-3946-601809414e38','2021-02-01 13:59:33','2021-02-01 14:00:00','1','1','Ban Giám đốc','Quyền của Ban giám đốc',0),('59940d2d-46d1-e3fa-8112-60180940c994','2021-02-01 14:01:07','2021-02-01 14:02:29','1','1','Trưởng phòng Marketing','Quyền của Trưởng phòng Marketing',0),('920ed607-4a99-1bc8-930d-60180a7c44f1','2021-02-01 14:03:00','2021-02-01 14:04:39','1','1','Trưởng phòng Sales','Quyền của Trưởng phòng Sales',0),('a0b17db8-3562-2520-7a5b-60181003f945','2021-02-01 14:32:21','2021-02-01 14:33:17','1','1','Nhân viên CSKH','Quyền của Nhân viên CSKH',0),('bef307c8-d095-6341-6352-601810875b07','2021-02-01 14:30:06','2021-02-01 14:31:49','1','1','Nhân viên Sales','Quyền của Nhân viên Sales',0);
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
INSERT INTO `acl_roles_actions` VALUES ('101e73ac-e3bb-d257-8ed2-60180917a5d3','54779abd-cf10-d4b8-3946-601809414e38','c9f5ba8f-acbd-9e14-381d-6017cabba8c0',90,'2021-02-01 14:00:42',0),('10293f20-4833-ebac-98fb-60180aa12fe1','920ed607-4a99-1bc8-930d-60180a7c44f1','34751d0d-8c15-50d3-5a8e-6017ca6c83cf',80,'2021-02-01 14:04:44',0),('103bec44-c2e6-1844-0f25-60180f91e7b6','52c526cb-9c4a-23b6-b39f-60180f9089b2','3d7be9aa-7dc1-6080-e224-6017cadbda7e',-99,'2021-02-01 14:26:44',0),('104bfdbe-7d84-57e6-ea51-60180a8f688d','920ed607-4a99-1bc8-930d-60180a7c44f1','89cfd493-7685-52ca-1008-6017ca632e1b',-98,'2021-02-01 14:04:44',0),('10510ce2-75af-e40f-3069-601810f25a1e','bef307c8-d095-6341-6352-601810875b07','7f62c1e4-1794-9774-0835-6017ca110404',75,'2021-02-01 14:31:59',0),('105d8480-9312-08fb-099d-601809ed75d3','54779abd-cf10-d4b8-3946-601809414e38','cc0d998d-d33d-2b7c-1413-6017ca1a425a',90,'2021-02-01 14:00:42',0),('1090ad71-b389-fbe1-0845-6018115e3bb5','a0b17db8-3562-2520-7a5b-60181003f945','ba77c542-9e5d-7ae6-e3f9-6017caa020b9',75,'2021-02-01 14:33:27',0),('10953aba-ad7a-b805-3c1b-60180a8995d5','920ed607-4a99-1bc8-930d-60180a7c44f1','8d646238-0036-c2d0-6e93-6017ca17c0f5',80,'2021-02-01 14:04:44',0),('10985877-0ef1-836d-4507-60180f209b7b','52c526cb-9c4a-23b6-b39f-60180f9089b2','3aba1255-f1e3-6773-82a2-6017ca6f698a',80,'2021-02-01 14:26:44',0),('10a1c6f4-b53c-c95f-1c52-60181068bd4e','145ce98a-0b57-3e66-8f20-60180fdba411','9c902b35-c1f4-32bf-0803-6017ca926dbe',75,'2021-02-01 14:29:35',0),('10abcf75-cf89-1506-d242-601809bd6a1c','54779abd-cf10-d4b8-3946-601809414e38','cb671498-76a3-0ff6-3b03-6017ca56cae8',90,'2021-02-01 14:00:42',0),('10e5b608-ddb4-eec6-e151-60180a842437','920ed607-4a99-1bc8-930d-60180a7c44f1','8c917df1-c6ec-68b0-840f-6017cadaae13',80,'2021-02-01 14:04:44',0),('10eef77f-cdbc-2cb5-14c8-6018090c2a0d','54779abd-cf10-d4b8-3946-601809414e38','c8c2766e-917f-40ca-4d6d-6017caf3f0d5',90,'2021-02-01 14:00:42',0),('11019f1b-108f-483d-09e6-601810d0ad2f','bef307c8-d095-6341-6352-601810875b07','81b7dc49-a8cd-d6de-bbc9-6017cac215e8',75,'2021-02-01 14:31:59',0),('111befdc-de46-ed4e-ce5a-60180fbb2b08','52c526cb-9c4a-23b6-b39f-60180f9089b2','3ffd6654-cef8-3289-d225-6017ca354fd4',-99,'2021-02-01 14:26:44',0),('112eaedf-47b5-2889-a7ff-60180adfbfb6','920ed607-4a99-1bc8-930d-60180a7c44f1','8e72cccd-d8bd-5bda-1129-6017ca1e0e4f',80,'2021-02-01 14:04:44',0),('11559a68-f125-36aa-b8eb-60180a02be34','920ed607-4a99-1bc8-930d-60180a7c44f1','8df6c126-ff00-31ab-53d7-6017ca17f4bb',-99,'2021-02-01 14:04:44',0),('115cff74-c61a-fcd5-8ce3-601810666f72','145ce98a-0b57-3e66-8f20-60180fdba411','9b63b5a6-2600-6a71-577a-6017ca89ae0e',75,'2021-02-01 14:29:35',0),('11690142-4f94-cc30-fab3-60180a79d029','920ed607-4a99-1bc8-930d-60180a7c44f1','a57c2f16-66b6-bae7-008d-6017cacfd6bf',-99,'2021-02-01 14:04:44',0),('116fad83-f671-5063-4f42-601809e9ae14','54779abd-cf10-d4b8-3946-601809414e38','cc7cc659-153f-71ed-f0d2-6017caa4c207',90,'2021-02-01 14:00:42',0),('11816f68-72d1-e8fb-98b4-60180fb5b7dd','52c526cb-9c4a-23b6-b39f-60180f9089b2','e4a782d6-f3e0-5420-7aa0-6017ca7dfddb',80,'2021-02-01 14:26:44',0),('1182a6f6-fc5a-80cf-366e-60180a7269d1','920ed607-4a99-1bc8-930d-60180a7c44f1','8c1ad7be-b834-8a3b-a447-6017ca75307a',80,'2021-02-01 14:04:44',0),('118f25f3-8a66-2bcf-da4d-601810c20810','145ce98a-0b57-3e66-8f20-60180fdba411','access',-98,'2021-02-01 14:29:35',0),('11a10347-0a1e-4791-9f3a-601809f317d9','54779abd-cf10-d4b8-3946-601809414e38','ca9243e9-0177-e253-d4db-6017cae7ea3f',90,'2021-02-01 14:00:42',0),('11a800d6-9001-a8d8-60a2-6018091e9e83','54779abd-cf10-d4b8-3946-601809414e38','c840be03-804c-7707-c944-6017ca14f4b9',90,'2021-02-01 14:00:42',0),('11ae5e5e-0a67-5134-eb09-601811532ad5','a0b17db8-3562-2520-7a5b-60181003f945','b9e54d8b-7ade-bc5b-658e-6017ca43b993',-99,'2021-02-01 14:33:27',0),('11c5539d-1cf5-0d6d-eaeb-601810213af8','bef307c8-d095-6341-6352-601810875b07','81318593-4681-4d8a-4fc0-6017cadfb23f',-99,'2021-02-01 14:31:59',0),('11ce04b9-0382-9203-a6b1-60180a1d9fd1','920ed607-4a99-1bc8-930d-60180a7c44f1','8f2d5206-743b-ecd6-bbfd-6017ca3b700c',-99,'2021-02-01 14:04:44',0),('11e85ab1-5d1b-5561-7242-60180f81c7d5','52c526cb-9c4a-23b6-b39f-60180f9089b2','39c652a6-3413-596a-1ba7-6017cad4d33c',80,'2021-02-01 14:26:44',0),('11fe0ca0-4d05-b30a-72c2-60180a68e3aa','920ed607-4a99-1bc8-930d-60180a7c44f1','8a520e16-b539-983c-b9bd-6017cab11234',80,'2021-02-01 14:04:44',0),('1203bd3d-6e44-22c5-2955-60181156ead5','a0b17db8-3562-2520-7a5b-60181003f945','delete',75,'2021-02-01 14:33:27',0),('121346ad-250d-32b0-a3fe-6018090eaa83','54779abd-cf10-d4b8-3946-601809414e38','91ed6183-922d-c827-70cc-6017ca0f80a2',89,'2021-02-01 14:00:42',0),('1223e6fd-4b6f-e0f0-d2d0-60180acc4ae6','920ed607-4a99-1bc8-930d-60180a7c44f1','e1123a71-9f1e-4905-cf20-6017caacf73b',-98,'2021-02-01 14:04:44',0),('122c5d5b-da52-fa9a-ba39-60181042673d','bef307c8-d095-6341-6352-601810875b07','7de3d8da-5c08-1db7-4a75-6017ca329c45',75,'2021-02-01 14:31:59',0),('1239e3f3-5702-4389-9a98-601809f53f24','54779abd-cf10-d4b8-3946-601809414e38','9634bb2c-d95f-d6c4-301c-6017ca77e3e4',90,'2021-02-01 14:00:42',0),('12502a65-027a-73de-269d-601810b35dde','145ce98a-0b57-3e66-8f20-60180fdba411','9dc29313-6fce-8cc2-bab3-6017ca93cb71',75,'2021-02-01 14:29:35',0),('1256883c-48e5-d948-aea6-60181114bc72','a0b17db8-3562-2520-7a5b-60181003f945','edit',75,'2021-02-01 14:33:27',0),('126636a7-4740-070e-54e9-60180f139e5d','52c526cb-9c4a-23b6-b39f-60180f9089b2','d29bdfb0-fe1c-8857-e905-6017caea5473',-98,'2021-02-01 14:26:44',0),('12723f51-51a6-8550-9fe7-60180adde95b','920ed607-4a99-1bc8-930d-60180a7c44f1','e336c29d-2d18-451f-7bbc-6017ca49e15c',80,'2021-02-01 14:04:44',0),('12a4f456-789a-c34b-6bc8-6018118f85fb','a0b17db8-3562-2520-7a5b-60181003f945','b742e7ee-1eaa-6de2-be09-6017ca43a204',75,'2021-02-01 14:33:27',0),('12b135d4-642f-dc8c-f972-60180a9f15c8','920ed607-4a99-1bc8-930d-60180a7c44f1','e2da0686-74cf-c6c2-177d-6017ca10edf2',80,'2021-02-01 14:04:44',0),('12b7b97a-c3bf-cb9b-3cf7-60180fa6d70e','52c526cb-9c4a-23b6-b39f-60180f9089b2','d73cd5f5-e1d8-5170-7d78-6017cabb0ed2',80,'2021-02-01 14:26:44',0),('12c11688-7e40-54e7-3712-6018090b1b5c','54779abd-cf10-d4b8-3946-601809414e38','947ad549-f887-3d63-b7a7-6017cad7458e',90,'2021-02-01 14:00:42',0),('12d27cef-9317-d91a-05cb-601810165fb4','bef307c8-d095-6341-6352-601810875b07','82ed8e62-4294-f0ca-6399-6017ca0cf556',-99,'2021-02-01 14:31:59',0),('12e839f7-8ae0-c708-1292-601811d0da92','a0b17db8-3562-2520-7a5b-60181003f945','export',75,'2021-02-01 14:33:27',0),('12ef3dce-b5bd-a5e7-7584-601810d1708a','145ce98a-0b57-3e66-8f20-60180fdba411','9d2620e1-e27a-9565-dbda-6017ca3ffa98',-99,'2021-02-01 14:29:35',0),('13019ee6-15e4-e07f-8315-60180a0516ef','920ed607-4a99-1bc8-930d-60180a7c44f1','e5d46f78-d381-0c69-bf09-6017caaa5a9a',80,'2021-02-01 14:04:44',0),('133b09e6-6957-c7cc-483e-601810b51257','145ce98a-0b57-3e66-8f20-60180fdba411','b0a59a80-8244-9f08-bf42-6017caeaa7f3',75,'2021-02-01 14:29:35',0),('1346e8e5-d28b-dafa-d7e6-60180a1c1750','920ed607-4a99-1bc8-930d-60180a7c44f1','e40e7e28-78b1-0bae-fa91-6017caee97f4',-99,'2021-02-01 14:04:44',0),('134ebed2-53b9-58c9-e146-60180fc56666','52c526cb-9c4a-23b6-b39f-60180f9089b2','d696d729-adb1-4fec-3046-6017caa1340f',80,'2021-02-01 14:26:44',0),('13651d83-c616-8b16-aa03-6018095636e5','59940d2d-46d1-e3fa-8112-60180940c994','access',89,'2021-02-01 14:02:35',0),('1365be7a-6db1-f2a9-694d-6018098043b5','54779abd-cf10-d4b8-3946-601809414e38','9876e9d1-2bff-c6c5-6d01-6017cade8e1f',90,'2021-02-01 14:00:42',0),('136ac3f9-8ec6-c016-32ff-6018102a0b99','145ce98a-0b57-3e66-8f20-60180fdba411','99735554-9a7d-a7af-c53e-6017ca281ffa',75,'2021-02-01 14:29:35',0),('13750752-67a9-bf95-250a-601810a5b8a4','bef307c8-d095-6341-6352-601810875b07','7c284102-15d0-c329-fc54-6017ca9ed58f',75,'2021-02-01 14:31:59',0),('13b69692-1810-6968-77e7-6018113afe45','a0b17db8-3562-2520-7a5b-60181003f945','import',-99,'2021-02-01 14:33:27',0),('13de8674-f704-42d4-17cb-60180f342407','52c526cb-9c4a-23b6-b39f-60180f9089b2','d98b8285-6c4f-9047-3246-6017caf67d11',80,'2021-02-01 14:26:44',0),('13e08b77-ac3f-18b6-2537-60180a5a21cf','920ed607-4a99-1bc8-930d-60180a7c44f1','e27db9aa-0c69-f8be-e7d4-6017ca4a1b9c',80,'2021-02-01 14:04:44',0),('13ff2f3d-bb46-7402-950b-601810daa97a','145ce98a-0b57-3e66-8f20-60180fdba411','9e6be21b-d7c9-3519-4dfc-6017ca2292c5',-99,'2021-02-01 14:29:35',0),('14032c16-b4ec-12ae-071a-601811b60560','a0b17db8-3562-2520-7a5b-60181003f945','baed9da3-990f-9c19-73a4-6017ca3443a1',-99,'2021-02-01 14:33:27',0),('14119a88-167a-b756-66f3-6018095f41fb','54779abd-cf10-d4b8-3946-601809414e38','97b2709d-df39-baf3-964d-6017ca844416',90,'2021-02-01 14:00:42',0),('141f5700-b730-9b68-4371-60181193f0fc','a0b17db8-3562-2520-7a5b-60181003f945','list',75,'2021-02-01 14:33:27',0),('1420b318-2267-8cd5-ca25-60180a471458','920ed607-4a99-1bc8-930d-60180a7c44f1','e6ed1604-861b-1b53-e18d-6017ca9f3220',-99,'2021-02-01 14:04:44',0),('1432142a-d752-5b65-9cbb-60180f761924','52c526cb-9c4a-23b6-b39f-60180f9089b2','d7ba2bb6-7b6d-76c1-1c42-6017ca823bcd',-99,'2021-02-01 14:26:44',0),('14550230-a608-077a-bdaa-60181096df3a','bef307c8-d095-6341-6352-601810875b07','8a0bec92-fd8e-4b45-cf5c-6017ca24ca89',-98,'2021-02-01 14:31:59',0),('146c82f5-e198-0a44-1659-601809464cfb','54779abd-cf10-d4b8-3946-601809414e38','93d8cd13-cf78-d508-6128-6017ca32e37c',90,'2021-02-01 14:00:42',0),('14808bbe-f8c9-c77c-e9d8-60180aca493c','920ed607-4a99-1bc8-930d-60180a7c44f1','e206debd-89f8-a796-b4da-6017ca4eff96',80,'2021-02-01 14:04:44',0),('1489032b-861d-bef4-8beb-60180f2926b9','52c526cb-9c4a-23b6-b39f-60180f9089b2','70caaca7-26e2-1098-1756-6017ca845ecf',80,'2021-02-01 14:26:44',0),('148f5454-75d0-01a0-4f11-60181009964f','145ce98a-0b57-3e66-8f20-60180fdba411','98bae92f-53aa-2a9a-f0ae-6017ca2d9978',75,'2021-02-01 14:29:35',0),('14ad070b-00ea-0700-2cbc-6018115041e3','a0b17db8-3562-2520-7a5b-60181003f945','massupdate',-99,'2021-02-01 14:33:27',0),('14bfad4b-87e0-a856-d6fa-60180915f660','54779abd-cf10-d4b8-3946-601809414e38','997bc36e-3b1a-b7f4-8f68-6017caa01d84',90,'2021-02-01 14:00:42',0),('14d203b2-7a23-99e4-5660-60180a2e0bd1','920ed607-4a99-1bc8-930d-60180a7c44f1','d3d750bd-c58c-c030-00d9-6017ca19f0ac',-98,'2021-02-01 14:04:44',0),('14d60a53-edaf-c37f-b88d-601810598e53','145ce98a-0b57-3e66-8f20-60180fdba411','delete',75,'2021-02-01 14:29:35',0),('14dbc3b0-e592-5fde-17e4-6018105c0c99','145ce98a-0b57-3e66-8f20-60180fdba411','bc5c5ae8-69e2-79f1-be97-6017ca327292',-98,'2021-02-01 14:29:35',0),('14e89ae3-b9e9-4698-f647-60180f9e1f02','52c526cb-9c4a-23b6-b39f-60180f9089b2','e5e30ecd-895c-7f29-b5f7-6017ca1db364',80,'2021-02-01 14:26:44',0),('14f8061c-2af8-530d-c7d0-601809431b91','54779abd-cf10-d4b8-3946-601809414e38','c4858000-fe1e-b876-5d40-6017ca89c40a',90,'2021-02-01 14:00:42',0),('1501f25a-38c7-dc9c-233f-60180974c213','54779abd-cf10-d4b8-3946-601809414e38','92b903d6-cb45-ba2b-3c16-6017caf5e9e9',90,'2021-02-01 14:00:42',0),('151284ef-8cd2-9c6e-afb0-601810788e5a','bef307c8-d095-6341-6352-601810875b07','8e8d16ca-188e-5eb5-00d6-6017caa388ea',75,'2021-02-01 14:31:59',0),('152b59e8-f68f-d4c4-1a67-601811d6f3bb','a0b17db8-3562-2520-7a5b-60181003f945','view',75,'2021-02-01 14:33:27',0),('152d9afe-7d32-7d1c-0757-60180ff99a65','52c526cb-9c4a-23b6-b39f-60180f9089b2','d57cbe4e-28dc-3341-3148-6017ca4ae022',80,'2021-02-01 14:26:44',0),('1541e33a-aea3-df3b-94d2-601809ba30d8','54779abd-cf10-d4b8-3946-601809414e38','a49603d3-7f15-abda-b0d5-6017ca7fcdde',89,'2021-02-01 14:00:42',0),('154a6450-522a-34d5-3908-60180a8b8910','920ed607-4a99-1bc8-930d-60180a7c44f1','da05b32a-31d0-ce97-2967-6017caed3d34',80,'2021-02-01 14:04:44',0),('155bbcf4-86e9-8eb8-2494-601811cafe23','a0b17db8-3562-2520-7a5b-60181003f945','b6911c5b-48f3-c461-d700-6017ca6f7761',75,'2021-02-01 14:33:27',0),('156fd22b-698d-39ef-50a3-601810f55f14','145ce98a-0b57-3e66-8f20-60180fdba411','c0d49832-2531-68de-84ac-6017cabd7e17',75,'2021-02-01 14:29:35',0),('1572d0d8-35ec-9914-0f83-60181027a8b9','145ce98a-0b57-3e66-8f20-60180fdba411','edit',75,'2021-02-01 14:29:35',0),('15843b03-0a46-c20d-7c7a-6018115af393','a0b17db8-3562-2520-7a5b-60181003f945','6262a90b-c574-2f29-e5cf-6017cad9de97',-98,'2021-02-01 14:33:27',0),('15892829-5a40-3f4c-7998-60180a475d80','920ed607-4a99-1bc8-930d-60180a7c44f1','d6db73f5-8776-66f9-6c1d-6017caeb8262',80,'2021-02-01 14:04:44',0),('15907721-4103-6622-9680-6018094855e5','54779abd-cf10-d4b8-3946-601809414e38','a96a916f-2bdc-49ea-aa25-6017cac6a313',90,'2021-02-01 14:00:42',0),('15a704e8-b39d-49e3-c843-60180a85f867','920ed607-4a99-1bc8-930d-60180a7c44f1','9e20b241-b441-e11e-e26e-6017ca510608',80,'2021-02-01 14:04:44',0),('15a8fc0d-dc4c-8028-931c-60180fc88516','52c526cb-9c4a-23b6-b39f-60180f9089b2','da4e44f2-19f9-33ea-a79f-6017caf3bb39',-99,'2021-02-01 14:26:44',0),('15d28ab2-12e9-5421-6c6e-601810473253','bef307c8-d095-6341-6352-601810875b07','8dbe583f-f32d-fe7e-36ab-6017ca55dcb4',75,'2021-02-01 14:31:59',0),('15d304b4-563d-833b-5ede-601809ebc042','54779abd-cf10-d4b8-3946-601809414e38','a8a24c95-1318-6fc6-2eba-6017ca621c60',90,'2021-02-01 14:00:42',0),('15d556fd-4610-fe6a-8570-601810e150cd','145ce98a-0b57-3e66-8f20-60180fdba411','c03fe354-e2f4-98ae-d59a-6017ca91e9d3',75,'2021-02-01 14:29:35',0),('15e67a78-c827-0acc-d224-60180a270f62','920ed607-4a99-1bc8-930d-60180a7c44f1','daddf798-fbca-a01d-92af-6017ca71624e',80,'2021-02-01 14:04:44',0),('162410de-2a0b-43f5-0a0a-601810e1ea0e','145ce98a-0b57-3e66-8f20-60180fdba411','export',75,'2021-02-01 14:29:35',0),('162bd57b-3d9c-7ae1-7c53-60180f2a64cf','52c526cb-9c4a-23b6-b39f-60180f9089b2','d3d342d1-256b-ae27-5355-6017ca3b20ae',80,'2021-02-01 14:26:44',0),('16307fcd-f5e4-8f4f-a257-60180ab2cc01','920ed607-4a99-1bc8-930d-60180a7c44f1','da54274e-8c18-2757-f4a0-6017caf8249a',-99,'2021-02-01 14:04:44',0),('163f02a4-0fec-fb2f-f21e-6018119982bc','a0b17db8-3562-2520-7a5b-60181003f945','f4bb0782-df1c-f4d1-1c0d-6017ca07bb9d',75,'2021-02-01 14:33:27',0),('16573666-7039-5e78-a651-60180ab82e27','920ed607-4a99-1bc8-930d-60180a7c44f1','d60ff063-6f4a-4ed7-4dae-6017ca3f6b87',80,'2021-02-01 14:04:44',0),('1661d20a-5f04-9119-e6d7-6018090d0cb1','59940d2d-46d1-e3fa-8112-60180940c994','delete',80,'2021-02-01 14:02:35',0),('16668b79-97ce-e6bf-6256-601810e8eb1c','145ce98a-0b57-3e66-8f20-60180fdba411','c38d217e-6736-c873-0d76-6017ca449eb3',75,'2021-02-01 14:29:35',0),('16736603-e9b7-80f4-1669-601810722ddd','145ce98a-0b57-3e66-8f20-60180fdba411','import',-99,'2021-02-01 14:29:35',0),('1674cbe2-7d32-1585-8072-6018090199df','54779abd-cf10-d4b8-3946-601809414e38','abbf2bfc-ea68-ef97-1d5a-6017ca3f28ba',90,'2021-02-01 14:00:42',0),('1684cbd5-6a45-1657-2b0a-60181141b39a','a0b17db8-3562-2520-7a5b-60181003f945','254fc6ba-64ef-df4a-d53f-6017ca814e78',-98,'2021-02-01 14:33:27',0),('1689ba3f-6c78-3672-f0bc-601809811989','59940d2d-46d1-e3fa-8112-60180940c994','edit',80,'2021-02-01 14:02:35',0),('16a86595-55ae-6801-f8c7-60180f001b9c','52c526cb-9c4a-23b6-b39f-60180f9089b2','546743cc-6fc6-624c-2dec-6017ca948cf7',89,'2021-02-01 14:26:44',0),('16c3c283-3b45-b890-b2e6-6018095b2cee','59940d2d-46d1-e3fa-8112-60180940c994','export',80,'2021-02-01 14:02:35',0),('16c504dc-5735-3de4-492b-60180f22b08b','52c526cb-9c4a-23b6-b39f-60180f9089b2','d3d750bd-c58c-c030-00d9-6017ca19f0ac',-98,'2021-02-01 14:26:44',0),('16dc4da1-4539-1533-1a56-601809bcc898','54779abd-cf10-d4b8-3946-601809414e38','aae46ef4-441b-7567-6a4b-6017ca26f182',90,'2021-02-01 14:00:42',0),('16ec755c-b24a-e749-cd23-601811152451','a0b17db8-3562-2520-7a5b-60181003f945','68185be1-b5ae-df0a-881c-6017cadf4a78',75,'2021-02-01 14:33:27',0),('16f29fb5-5ef2-10b9-257f-6018095cadb2','59940d2d-46d1-e3fa-8112-60180940c994','import',-99,'2021-02-01 14:02:35',0),('16f37423-419a-07b0-f3c8-601810573da8','145ce98a-0b57-3e66-8f20-60180fdba411','list',75,'2021-02-01 14:29:35',0),('17029dc2-8cac-7efe-3254-60180aa9abe4','920ed607-4a99-1bc8-930d-60180a7c44f1','db361441-01f3-a76b-d5f3-6017cafe119c',-99,'2021-02-01 14:04:44',0),('170c2459-9412-6b7b-d51e-601810d9c793','145ce98a-0b57-3e66-8f20-60180fdba411','c1e1203c-3572-0db8-24e2-6017ca610d0c',-99,'2021-02-01 14:29:35',0),('171e1b9f-7708-9a02-70c0-601809f1b59f','54779abd-cf10-d4b8-3946-601809414e38','a703c7b1-bdc0-8848-c82e-6017ca3a4705',90,'2021-02-01 14:00:42',0),('173c2f33-5f11-40c7-60ea-6018111e8e04','a0b17db8-3562-2520-7a5b-60181003f945','28e1bd8d-b069-2676-b8fa-6017cac381c6',75,'2021-02-01 14:33:27',0),('174d4e73-6795-2f04-d178-6018091961eb','54779abd-cf10-d4b8-3946-601809414e38','ac9cd086-502b-675f-923d-6017ca9ae10e',90,'2021-02-01 14:00:42',0),('1750d837-dc41-be0d-d117-601810c7c5d3','bef307c8-d095-6341-6352-601810875b07','91b62206-bc91-ce7c-4c8f-6017ca594770',75,'2021-02-01 14:31:59',0),('1754d2c1-a74d-c91a-39d2-60180a125f26','920ed607-4a99-1bc8-930d-60180a7c44f1','d57a9815-b8fa-f92d-8740-6017ca2996b4',80,'2021-02-01 14:04:44',0),('17599406-5ff5-cb5d-d26c-6018093d18e7','59940d2d-46d1-e3fa-8112-60180940c994','list',80,'2021-02-01 14:02:35',0),('1768c35e-5dc1-75f8-bdff-60180f13c9af','52c526cb-9c4a-23b6-b39f-60180f9089b2','597eaaa5-85c4-a5dd-05a5-6017cac9ea90',80,'2021-02-01 14:26:44',0),('177375f5-7d3b-e59e-272e-601810992487','145ce98a-0b57-3e66-8f20-60180fdba411','bee54d6c-3344-be7c-01e4-6017cabf69c7',75,'2021-02-01 14:29:35',0),('177c2999-2fe6-7bfa-98db-60180ae246fd','920ed607-4a99-1bc8-930d-60180a7c44f1','e5eb98c6-09e5-65bc-7b07-6017caf35be0',-98,'2021-02-01 14:04:44',0),('177d7d31-ae79-d3f1-f18d-6018099f58be','54779abd-cf10-d4b8-3946-601809414e38','a5302dea-b8c6-d94c-ef60-6017ca19b99f',90,'2021-02-01 14:00:42',0),('17834d86-38c4-7423-b2f7-60180953f83f','59940d2d-46d1-e3fa-8112-60180940c994','massupdate',-99,'2021-02-01 14:02:35',0),('17bd9a9a-7c44-4ebc-0ab1-6018119a8e62','a0b17db8-3562-2520-7a5b-60181003f945','277ebc96-5c1a-429e-912c-6017ca79e468',75,'2021-02-01 14:33:27',0),('17c1679f-ad33-f486-5613-601809863b16','59940d2d-46d1-e3fa-8112-60180940c994','view',80,'2021-02-01 14:02:35',0),('17c6a3ed-4e98-cab4-13a4-601809631d4e','54779abd-cf10-d4b8-3946-601809414e38','d43bc43e-e2fe-955f-ef9d-6017ca02a76f',89,'2021-02-01 14:00:42',0),('17ddf80d-a5c8-ab5d-4b69-60180a325e15','920ed607-4a99-1bc8-930d-60180a7c44f1','ea20640d-5cb5-0ec5-e35a-6017ca8a8a15',80,'2021-02-01 14:04:44',0),('17de68e6-93e5-501e-83ca-60180946f7ac','59940d2d-46d1-e3fa-8112-60180940c994','6262a90b-c574-2f29-e5cf-6017cad9de97',-98,'2021-02-01 14:02:35',0),('17e826ea-0bbf-cb89-3431-60180f781f86','52c526cb-9c4a-23b6-b39f-60180f9089b2','58bb86e4-ee28-d2dd-36d4-6017ca0907f4',80,'2021-02-01 14:26:44',0),('17ff9fa0-48c4-90d2-02b9-60180986892a','54779abd-cf10-d4b8-3946-601809414e38','d786a57c-50fa-3400-5b9b-6017cac510a9',90,'2021-02-01 14:00:42',0),('181098b7-a47b-3ec6-2431-601810c5ac05','145ce98a-0b57-3e66-8f20-60180fdba411','massupdate',-99,'2021-02-01 14:29:35',0),('182f83ca-0f5f-1d38-ae35-60180a572d0b','920ed607-4a99-1bc8-930d-60180a7c44f1','e91c140d-d1a4-7a42-2181-6017cad6448e',80,'2021-02-01 14:04:44',0),('18368417-910a-568e-0e05-601809d90dc9','59940d2d-46d1-e3fa-8112-60180940c994','68185be1-b5ae-df0a-881c-6017cadf4a78',80,'2021-02-01 14:02:35',0),('183b6457-3c81-6e10-d8e9-60181091d3f7','bef307c8-d095-6341-6352-601810875b07','9023fcd5-063f-1f28-bab7-6017caf948ae',-99,'2021-02-01 14:31:59',0),('183b67f0-e632-ea21-b469-601811628d9e','a0b17db8-3562-2520-7a5b-60181003f945','2a3aa91e-f13f-e8e2-a69b-6017ca8378df',75,'2021-02-01 14:33:27',0),('1846c7b7-d50b-e17e-bde1-601809c606db','54779abd-cf10-d4b8-3946-601809414e38','d6e4bfa4-cbed-cdd3-c897-6017ca052bde',90,'2021-02-01 14:00:42',0),('184dc1e9-b4d4-f6f1-9bf2-60180921b85b','59940d2d-46d1-e3fa-8112-60180940c994','670e9cab-5dbc-df3f-a7e8-6017cadfb6a6',80,'2021-02-01 14:02:35',0),('184e6cec-e239-c0f4-1b28-6018119d6d41','a0b17db8-3562-2520-7a5b-60181003f945','670e9cab-5dbc-df3f-a7e8-6017cadfb6a6',75,'2021-02-01 14:33:27',0),('184fa6b1-c8c5-da13-2465-6018108a4ab4','145ce98a-0b57-3e66-8f20-60180fdba411','c4ba4945-bb22-2ce1-03e6-6017ca627fb1',-99,'2021-02-01 14:29:35',0),('18647b11-5153-47be-99fa-60180afa8fa5','920ed607-4a99-1bc8-930d-60180a7c44f1','ece932f0-236d-af78-5fc3-6017ca39f7be',80,'2021-02-01 14:04:44',0),('1867484a-b9a3-ef51-2d16-601809af8424','59940d2d-46d1-e3fa-8112-60180940c994','6ab0bcfc-498f-dc3a-7f9f-6017ca790539',80,'2021-02-01 14:02:35',0),('188ee685-c741-2bd1-4639-6018095cbae1','59940d2d-46d1-e3fa-8112-60180940c994','69c005e8-106e-4829-b29d-6017caf33603',-99,'2021-02-01 14:02:35',0),('188f0365-c61a-34f9-fba7-60180f98343c','52c526cb-9c4a-23b6-b39f-60180f9089b2','5cc0b349-3770-876d-484a-6017ca3bee65',80,'2021-02-01 14:26:44',0),('18a385f3-fe6f-6dfb-3eb7-6018115d9f4a','a0b17db8-3562-2520-7a5b-60181003f945','6ab0bcfc-498f-dc3a-7f9f-6017ca790539',75,'2021-02-01 14:33:27',0),('18a6b3c3-f0c1-556b-68c6-6018094d96f3','59940d2d-46d1-e3fa-8112-60180940c994','65acc685-f152-4714-6efa-6017ca8ae41a',80,'2021-02-01 14:02:35',0),('18aaf58b-5120-0f21-b7ec-60180ae9a8b5','920ed607-4a99-1bc8-930d-60180a7c44f1','eae8eb86-ed25-499c-d9d5-6017ca5c45da',-99,'2021-02-01 14:04:44',0),('18b3533c-c7ff-2d10-3a0b-6018097fee91','54779abd-cf10-d4b8-3946-601809414e38','d8ef97ea-8348-5f56-97ad-6017ca6a0460',90,'2021-02-01 14:00:42',0),('18bf3b27-f73c-b248-73e4-601810112975','145ce98a-0b57-3e66-8f20-60180fdba411','view',75,'2021-02-01 14:29:35',0),('18c4cbe8-7bff-29f2-46b0-6018093402d2','59940d2d-46d1-e3fa-8112-60180940c994','6bd15dbd-714c-3312-e455-6017ca15365e',-99,'2021-02-01 14:02:35',0),('18de12d1-8a4c-e304-7b49-6018092653be','59940d2d-46d1-e3fa-8112-60180940c994','64f66bf7-14b8-4b4d-be96-6017caacdcec',80,'2021-02-01 14:02:35',0),('18e5e6bb-1b2c-8f93-b5c7-60180a1ee38d','920ed607-4a99-1bc8-930d-60180a7c44f1','e7ed5142-9b57-558e-95a9-6017ca713940',80,'2021-02-01 14:04:44',0),('18f95de1-c957-61ff-67fc-601809ffa96a','54779abd-cf10-d4b8-3946-601809414e38','d840ab23-5d37-8c15-7888-6017ca6d0b7c',90,'2021-02-01 14:00:42',0),('190733f4-3c34-8957-ac2d-6018095fe1a6','59940d2d-46d1-e3fa-8112-60180940c994','f5630cd8-fe01-80b0-773c-6017ca41717a',-98,'2021-02-01 14:02:35',0),('190efe36-f195-ffb6-4e4a-601810251609','145ce98a-0b57-3e66-8f20-60180fdba411','bd19cf98-97d8-2daf-1f6b-6017ca395562',75,'2021-02-01 14:29:35',0),('19180df6-e516-6b74-a9e1-60180a15e9e4','920ed607-4a99-1bc8-930d-60180a7c44f1','ce300fe4-aceb-1d76-c963-6017ca14a5f3',-98,'2021-02-01 14:04:44',0),('191eec6b-3ce6-6f0e-8c23-60180995d9a9','59940d2d-46d1-e3fa-8112-60180940c994','13d9d342-dc20-4e5b-4f4f-6017ca0bd170',80,'2021-02-01 14:02:35',0),('1921a55a-053d-eb91-ed55-601810b26f9e','bef307c8-d095-6341-6352-601810875b07','8c53c744-e17b-6c7c-0ebc-6017cad02aed',75,'2021-02-01 14:31:59',0),('192befe2-61da-32e8-ac8a-601809f8d3ad','54779abd-cf10-d4b8-3946-601809414e38','d620c5dd-c03f-9f13-31c7-6017ca213266',90,'2021-02-01 14:00:42',0),('192dbf91-2338-a4d6-de2e-601811281327','a0b17db8-3562-2520-7a5b-60181003f945','69c005e8-106e-4829-b29d-6017caf33603',-99,'2021-02-01 14:33:27',0),('1930a291-187c-037d-1e37-60180adafd2b','920ed607-4a99-1bc8-930d-60180a7c44f1','edf66900-4cc5-2778-b45b-6017ca4872c6',-99,'2021-02-01 14:04:44',0),('1941bf40-6362-59f6-cdf9-6018102d10a0','145ce98a-0b57-3e66-8f20-60180fdba411','6262a90b-c574-2f29-e5cf-6017cad9de97',-98,'2021-02-01 14:29:35',0),('194d1733-9adf-790f-9912-6018094314d6','59940d2d-46d1-e3fa-8112-60180940c994','130f4e97-de89-d0df-fdf4-6017cafd79fb',80,'2021-02-01 14:02:35',0),('1966f303-490c-e958-6974-6018102fffc7','145ce98a-0b57-3e66-8f20-60180fdba411','c249c7e4-7796-6bf7-7a7b-6017ca2c5830',-98,'2021-02-01 14:29:35',0),('196a6f77-e473-8d7f-8d87-601809c45622','54779abd-cf10-d4b8-3946-601809414e38','d98bf6b0-ff19-5726-0429-6017cad40d74',90,'2021-02-01 14:00:42',0),('196c6de1-bd4c-12ff-e1d1-60180954985a','59940d2d-46d1-e3fa-8112-60180940c994','15d35546-78f9-f848-591f-6017cacb9c85',80,'2021-02-01 14:02:35',0),('19712be0-e981-1bd4-0511-60180f5bd3ee','52c526cb-9c4a-23b6-b39f-60180f9089b2','5aec88a5-6ff8-c1dc-8178-6017ca019e55',-99,'2021-02-01 14:26:44',0),('1974ed2e-e5f4-8276-3760-60180a7bc714','920ed607-4a99-1bc8-930d-60180a7c44f1','e6b81b67-beb5-38c3-5233-6017ca74980e',80,'2021-02-01 14:04:44',0),('19aa3918-fdda-4b80-49c1-60180ac70e83','920ed607-4a99-1bc8-930d-60180a7c44f1','87539216-07b6-7711-9aa8-6017ca0d4d82',-98,'2021-02-01 14:04:44',0),('19b29759-7d0d-029f-2000-601810a0724f','145ce98a-0b57-3e66-8f20-60180fdba411','68185be1-b5ae-df0a-881c-6017cadf4a78',75,'2021-02-01 14:29:35',0),('19b84dea-fa7c-4903-4a47-6018090756f7','54779abd-cf10-d4b8-3946-601809414e38','d4fcbe23-c827-2094-d420-6017ca831257',90,'2021-02-01 14:00:42',0),('19bc21c1-fade-4db6-b1ec-601811aef4fc','a0b17db8-3562-2520-7a5b-60181003f945','65acc685-f152-4714-6efa-6017ca8ae41a',75,'2021-02-01 14:33:27',0),('19d90724-dd36-d7cf-8b23-60180a2a6048','920ed607-4a99-1bc8-930d-60180a7c44f1','8c9ce024-16d3-ce97-f6f1-6017cafec8a2',80,'2021-02-01 14:04:44',0),('19db2c00-4660-ae59-a452-6018110a1dff','a0b17db8-3562-2520-7a5b-60181003f945','29d86b7d-ffe9-9bfb-4cf1-6017ca8db6c7',-99,'2021-02-01 14:33:27',0),('19e42926-98c9-50b3-3c78-60180f6de693','52c526cb-9c4a-23b6-b39f-60180f9089b2','56b5cd8a-0abd-eafa-d278-6017ca815664',80,'2021-02-01 14:26:44',0),('19eecb2d-bf71-a58a-e775-6018092d1061','59940d2d-46d1-e3fa-8112-60180940c994','14686825-9929-903e-465a-6017caa80eac',-99,'2021-02-01 14:02:35',0),('19f2cd81-c941-cc4a-0d87-60180945a693','54779abd-cf10-d4b8-3946-601809414e38','7b93328d-ff92-fab7-088a-6017caafa77b',89,'2021-02-01 14:00:42',0),('1a0f1d1f-22f7-477e-53a8-6018092cf6ae','59940d2d-46d1-e3fa-8112-60180940c994','1252b2b2-1881-0a07-1b70-6017ca20b166',80,'2021-02-01 14:02:35',0),('1a25cf29-58ff-e644-7810-601809d7e558','54779abd-cf10-d4b8-3946-601809414e38','80721d39-a468-f6ac-c5a0-6017cadaaa11',90,'2021-02-01 14:00:42',0),('1a43a6d9-7bd9-4861-591c-601811f9f5bc','a0b17db8-3562-2520-7a5b-60181003f945','6bd15dbd-714c-3312-e455-6017ca15365e',-99,'2021-02-01 14:33:27',0),('1a44ea3f-71a9-31d3-7c8c-60181077d40f','145ce98a-0b57-3e66-8f20-60180fdba411','c6489af9-2211-2408-2dc5-6017ca8bcab5',75,'2021-02-01 14:29:35',0),('1a4c1f33-4992-374a-a0ba-60180f55c970','52c526cb-9c4a-23b6-b39f-60180f9089b2','5d9bcf8a-f920-4d6c-4092-6017caf54c89',-99,'2021-02-01 14:26:44',0),('1a7610e5-5bd4-23f8-8ea2-601810e72584','145ce98a-0b57-3e66-8f20-60180fdba411','670e9cab-5dbc-df3f-a7e8-6017cadfb6a6',75,'2021-02-01 14:29:35',0),('1a77042a-7a81-5c0a-502f-601809b53a7b','54779abd-cf10-d4b8-3946-601809414e38','7f62c1e4-1794-9774-0835-6017ca110404',90,'2021-02-01 14:00:42',0),('1a9853dc-c0e7-502a-c4ed-601811cd47e4','a0b17db8-3562-2520-7a5b-60181003f945','26b29b11-218c-3567-bd34-6017ca3f73c5',75,'2021-02-01 14:33:27',0),('1a9dbaf9-a488-1699-a6dc-6018104ea854','145ce98a-0b57-3e66-8f20-60180fdba411','c5c44e91-99cf-3ac6-a7ea-6017caac610a',75,'2021-02-01 14:29:35',0),('1ab5808d-0e5e-1772-9290-6018092e3f82','54779abd-cf10-d4b8-3946-601809414e38','81b7dc49-a8cd-d6de-bbc9-6017cac215e8',90,'2021-02-01 14:00:42',0),('1ad2cc4e-b586-03ca-2648-601809ca3299','54779abd-cf10-d4b8-3946-601809414e38','81318593-4681-4d8a-4fc0-6017cadfb23f',90,'2021-02-01 14:00:42',0),('1ad7b0b9-a317-0096-e38e-60180a55a511','920ed607-4a99-1bc8-930d-60180a7c44f1','8ba34aa2-a2dd-fb51-3753-6017cad94619',80,'2021-02-01 14:04:44',0),('1ad8d145-593e-e35b-5582-601810a0b88c','145ce98a-0b57-3e66-8f20-60180fdba411','6ab0bcfc-498f-dc3a-7f9f-6017ca790539',75,'2021-02-01 14:29:35',0),('1af2f78f-9066-33be-a9d0-601809d67943','59940d2d-46d1-e3fa-8112-60180940c994','16a5a0f5-58f6-3eb2-3f5a-6017ca28282b',-99,'2021-02-01 14:02:35',0),('1b0682b5-5e97-f2c5-c7c1-60180929016e','54779abd-cf10-d4b8-3946-601809414e38','7de3d8da-5c08-1db7-4a75-6017ca329c45',90,'2021-02-01 14:00:42',0),('1b0dd357-4a36-3199-6d0f-60180f2fe41c','52c526cb-9c4a-23b6-b39f-60180f9089b2','54ee577a-c979-bb12-f31e-6017ca80543c',80,'2021-02-01 14:26:44',0),('1b11a2f7-4b8d-da63-c434-60181083479a','145ce98a-0b57-3e66-8f20-60180fdba411','c794c5c8-1658-d162-4728-6017caec8ae8',75,'2021-02-01 14:29:35',0),('1b22422d-fd38-4f9f-9e4d-60180aa05551','920ed607-4a99-1bc8-930d-60180a7c44f1','8f62e502-a51a-1dbf-4c0e-6017cabe0b1a',80,'2021-02-01 14:04:44',0),('1b26d0a2-0ec4-06de-afd0-601811fe4563','a0b17db8-3562-2520-7a5b-60181003f945','64f66bf7-14b8-4b4d-be96-6017caacdcec',75,'2021-02-01 14:33:27',0),('1b35c467-a846-55bc-b711-60181073a012','bef307c8-d095-6341-6352-601810875b07','927431e0-c275-5a96-5d0b-6017cabe20e7',-99,'2021-02-01 14:31:59',0),('1b47be72-679d-c9b8-7f54-601810861648','145ce98a-0b57-3e66-8f20-60180fdba411','69c005e8-106e-4829-b29d-6017caf33603',-99,'2021-02-01 14:29:35',0),('1b4e9a69-7c70-32bf-88c4-60180a282ca8','920ed607-4a99-1bc8-930d-60180a7c44f1','8d58526e-ae7c-89f1-c5ab-6017ca767f94',-99,'2021-02-01 14:04:44',0),('1b5ad6f2-ce34-3644-de21-6018090a1fb3','54779abd-cf10-d4b8-3946-601809414e38','82ed8e62-4294-f0ca-6399-6017ca0cf556',90,'2021-02-01 14:00:42',0),('1b5c4a4c-4353-f713-6f9b-60181148cd23','a0b17db8-3562-2520-7a5b-60181003f945','2a7d2e1b-9b3e-32b5-1e78-6017ca4fecff',-99,'2021-02-01 14:33:27',0),('1b6bbe3b-0f5a-c4cc-69ed-601810cca2c3','145ce98a-0b57-3e66-8f20-60180fdba411','c706f622-a7c2-cd76-47f4-6017ca5f1ee9',-99,'2021-02-01 14:29:35',0),('1b754e7f-611b-22d6-30c6-601809d95a8d','59940d2d-46d1-e3fa-8112-60180940c994','119735a8-6264-4508-281d-6017ca5602c9',80,'2021-02-01 14:02:35',0),('1b758b08-c7e8-5fad-bcc8-60180afb7358','920ed607-4a99-1bc8-930d-60180a7c44f1','8aa714aa-4b3e-19ba-274e-6017ca4697ff',80,'2021-02-01 14:04:44',0),('1b8896ae-14b5-4c48-d7be-60180942b0d2','54779abd-cf10-d4b8-3946-601809414e38','7c284102-15d0-c329-fc54-6017ca9ed58f',90,'2021-02-01 14:00:42',0),('1b8bf049-9dc3-c1dc-73a7-60180f005ff0','52c526cb-9c4a-23b6-b39f-60180f9089b2','95caaeaf-93f3-7e0f-a75d-6017cafeac2b',-98,'2021-02-01 14:26:44',0),('1baa28af-d9ff-479e-7805-60180aaf93d1','920ed607-4a99-1bc8-930d-60180a7c44f1','906d69aa-1fca-7278-c57c-6017caee5833',-99,'2021-02-01 14:04:44',0),('1bbd4720-9ec3-bb3b-8b01-601809d8ae7b','59940d2d-46d1-e3fa-8112-60180940c994','a1dba88a-f04c-1a8a-a892-6017ca6b9c0e',-98,'2021-02-01 14:02:35',0),('1bd9e6ce-9c7c-6221-7497-60180960c7fa','54779abd-cf10-d4b8-3946-601809414e38','8a0bec92-fd8e-4b45-cf5c-6017ca24ca89',89,'2021-02-01 14:00:42',0),('1bdd87e3-6009-7270-317f-6018094eca9c','59940d2d-46d1-e3fa-8112-60180940c994','a5c83c1f-45dc-c601-2782-6017cabac48b',80,'2021-02-01 14:02:35',0),('1bdffb45-5e80-b6f1-c6e2-6018107a53cf','bef307c8-d095-6341-6352-601810875b07','8b8e0a99-3ec4-6d2b-4222-6017caf19b1e',75,'2021-02-01 14:31:59',0),('1bf05d17-b406-b2b2-dc26-60180aaea6bc','920ed607-4a99-1bc8-930d-60180a7c44f1','8911290d-27ae-4a1a-6dc7-6017cacc0f60',80,'2021-02-01 14:04:44',0),('1bffa69b-b93b-a292-3e6b-601809f35ba3','54779abd-cf10-d4b8-3946-601809414e38','8e8d16ca-188e-5eb5-00d6-6017caa388ea',90,'2021-02-01 14:00:42',0),('1c05e2ce-333f-903a-1afb-60180f2b3669','52c526cb-9c4a-23b6-b39f-60180f9089b2','98d80d64-442b-4845-f330-6017ca409579',80,'2021-02-01 14:26:44',0),('1c0d19d5-92f1-50f6-efbe-601809e2b648','59940d2d-46d1-e3fa-8112-60180940c994','a51ed5ca-e6ea-6120-f675-6017ca40973a',80,'2021-02-01 14:02:35',0),('1c1cbd44-40d7-7ca7-3908-6018115a8572','a0b17db8-3562-2520-7a5b-60181003f945','f5630cd8-fe01-80b0-773c-6017ca41717a',-98,'2021-02-01 14:33:27',0),('1c239d82-85d6-2bba-f5e0-6018093c3a0f','59940d2d-46d1-e3fa-8112-60180940c994','a6dc7487-4f78-319e-eb0d-6017cae454e9',80,'2021-02-01 14:02:35',0),('1c2a6e38-1dbd-f777-f7c1-60180a644071','920ed607-4a99-1bc8-930d-60180a7c44f1','38f99f5f-181a-9090-099b-6017ca1e67cb',-98,'2021-02-01 14:04:44',0),('1c2c566f-b91d-2cd6-64bf-6018097d86b2','54779abd-cf10-d4b8-3946-601809414e38','8dbe583f-f32d-fe7e-36ab-6017ca55dcb4',90,'2021-02-01 14:00:42',0),('1c36783b-daba-b406-1f39-601810312e3a','145ce98a-0b57-3e66-8f20-60180fdba411','65acc685-f152-4714-6efa-6017ca8ae41a',75,'2021-02-01 14:29:35',0),('1c3976d4-a057-12ce-ce38-6018098333e8','59940d2d-46d1-e3fa-8112-60180940c994','a66f362b-768c-db39-3986-6017ca23936b',-99,'2021-02-01 14:02:35',0),('1c39f010-1d76-d7f0-5a05-601811683faa','a0b17db8-3562-2520-7a5b-60181003f945','260ea293-5703-f62a-d014-6017ca9ff06c',75,'2021-02-01 14:33:27',0),('1c77db3d-fb70-c7f6-ee93-601809d326e6','59940d2d-46d1-e3fa-8112-60180940c994','a43c437c-1608-81a0-4112-6017cac827a4',80,'2021-02-01 14:02:35',0),('1c7bf488-fe2d-9632-671e-601810621216','145ce98a-0b57-3e66-8f20-60180fdba411','c5137ed7-10f9-bc73-4a6e-6017ca455098',75,'2021-02-01 14:29:35',0),('1c7c24d9-104c-9b9a-9875-60180a2144af','920ed607-4a99-1bc8-930d-60180a7c44f1','3cc306a6-c503-f389-366b-6017ca4e3ae0',80,'2021-02-01 14:04:44',0),('1c7eb25d-093c-db0d-b161-601809e75704','54779abd-cf10-d4b8-3946-601809414e38','91b62206-bc91-ce7c-4c8f-6017ca594770',90,'2021-02-01 14:00:42',0),('1c855074-c0ba-965a-830a-601810a15451','145ce98a-0b57-3e66-8f20-60180fdba411','6bd15dbd-714c-3312-e455-6017ca15365e',-99,'2021-02-01 14:29:35',0),('1c88d50a-bea1-1d83-ac31-60180f056ccb','52c526cb-9c4a-23b6-b39f-60180f9089b2','98318ae3-2987-0db6-aedc-6017caa934f7',80,'2021-02-01 14:26:44',0),('1c990fb4-ac38-0ac1-a8d7-6018099ab18d','54779abd-cf10-d4b8-3946-601809414e38','e21f652f-6598-aa63-5104-6017ca3269cc',89,'2021-02-01 14:00:42',0),('1cb9d135-0fbf-c14f-f7f8-6018114701e5','a0b17db8-3562-2520-7a5b-60181003f945','13d9d342-dc20-4e5b-4f4f-6017ca0bd170',75,'2021-02-01 14:33:27',0),('1cd2bcac-86eb-bbe8-3557-6018093c2a3a','54779abd-cf10-d4b8-3946-601809414e38','9023fcd5-063f-1f28-bab7-6017caf948ae',90,'2021-02-01 14:00:42',0),('1cfa0861-d848-c6f7-2a9f-60180fdf3931','52c526cb-9c4a-23b6-b39f-60180f9089b2','da05b32a-31d0-ce97-2967-6017caed3d34',80,'2021-02-01 14:26:44',0),('1cfedb05-3ce6-df86-a997-60181060bc19','145ce98a-0b57-3e66-8f20-60180fdba411','64f66bf7-14b8-4b4d-be96-6017caacdcec',75,'2021-02-01 14:29:35',0),('1d0963b2-469b-d7e3-bab9-601810480539','145ce98a-0b57-3e66-8f20-60180fdba411','c8f1f7e3-8a5a-b42f-bd7d-6017ca8013d7',-99,'2021-02-01 14:29:35',0),('1d10048d-0622-31c5-0ec1-60180abecfcb','920ed607-4a99-1bc8-930d-60180a7c44f1','3b42d0fb-c107-dcf4-16de-6017cac16fb4',80,'2021-02-01 14:04:44',0),('1d179261-e08b-015f-5e5b-6018091a62a1','54779abd-cf10-d4b8-3946-601809414e38','8c53c744-e17b-6c7c-0ebc-6017cad02aed',90,'2021-02-01 14:00:42',0),('1d1d6d1f-d6a3-b102-5297-6018111f1002','a0b17db8-3562-2520-7a5b-60181003f945','33a4c648-6095-3a46-57e5-6017ca731b91',-98,'2021-02-01 14:33:27',0),('1d31b7e9-70d6-6d6b-a2f1-6018114b3f2c','a0b17db8-3562-2520-7a5b-60181003f945','130f4e97-de89-d0df-fdf4-6017cafd79fb',75,'2021-02-01 14:33:27',0),('1d4ee729-715f-c287-cd6a-601810a7fa7a','bef307c8-d095-6341-6352-601810875b07','1bf7977f-5bc1-935c-5f55-6017ca47912c',-98,'2021-02-01 14:31:59',0),('1d508737-ea0f-b02b-0bb6-601810a02733','145ce98a-0b57-3e66-8f20-60180fdba411','f5630cd8-fe01-80b0-773c-6017ca41717a',-98,'2021-02-01 14:29:35',0),('1d50e2be-9c93-c530-7177-60180a812027','920ed607-4a99-1bc8-930d-60180a7c44f1','3f4cef04-3d0e-4ab5-e4e0-6017cab3974e',80,'2021-02-01 14:04:44',0),('1d50e413-8b57-101d-1102-60180f8b5649','52c526cb-9c4a-23b6-b39f-60180f9089b2','9a0c8414-dc37-00e0-5f53-6017ca9df993',80,'2021-02-01 14:26:44',0),('1d5d5036-cc60-bcb6-fe1e-60180ff6ad20','52c526cb-9c4a-23b6-b39f-60180f9089b2','e57cbf72-739f-a668-7683-6017cae2687a',-99,'2021-02-01 14:26:44',0),('1d5fb4da-de41-4ff0-f55c-6018107b26c1','145ce98a-0b57-3e66-8f20-60180fdba411','c431144f-3b85-b653-2799-6017ca279bff',75,'2021-02-01 14:29:35',0),('1d625207-26e5-e9e7-deef-601809f5437e','54779abd-cf10-d4b8-3946-601809414e38','927431e0-c275-5a96-5d0b-6017cabe20e7',90,'2021-02-01 14:00:42',0),('1d7fa008-967e-f8f4-b836-601809ce2093','59940d2d-46d1-e3fa-8112-60180940c994','a79a0deb-3f53-b8d5-9317-6017ca50aa02',-99,'2021-02-01 14:02:35',0),('1d951709-1ce9-6b09-1d3e-60180ac725e9','920ed607-4a99-1bc8-930d-60180a7c44f1','3d7be9aa-7dc1-6080-e224-6017cadbda7e',-99,'2021-02-01 14:04:44',0),('1da644fe-a967-ab18-8c03-6018101a923c','145ce98a-0b57-3e66-8f20-60180fdba411','13d9d342-dc20-4e5b-4f4f-6017ca0bd170',75,'2021-02-01 14:29:35',0),('1dac3e26-c583-ee0b-38a8-601809664296','54779abd-cf10-d4b8-3946-601809414e38','8b8e0a99-3ec4-6d2b-4222-6017caf19b1e',90,'2021-02-01 14:00:42',0),('1dcc7bad-7087-788f-062d-6018104c7b18','145ce98a-0b57-3e66-8f20-60180fdba411','130f4e97-de89-d0df-fdf4-6017cafd79fb',75,'2021-02-01 14:29:35',0),('1dce161b-cc8e-c309-2472-601809c5d8c8','54779abd-cf10-d4b8-3946-601809414e38','1bf7977f-5bc1-935c-5f55-6017ca47912c',89,'2021-02-01 14:00:42',0),('1dd68bdc-be88-4518-8374-60180f1c67aa','52c526cb-9c4a-23b6-b39f-60180f9089b2','998800ae-740e-54bd-2cba-6017caaaa73a',-99,'2021-02-01 14:26:44',0),('1dda2f84-dd40-50c0-d443-601811ff9dc1','a0b17db8-3562-2520-7a5b-60181003f945','15d35546-78f9-f848-591f-6017cacb9c85',75,'2021-02-01 14:33:27',0),('1ddfd8d0-efac-367a-6daa-60180ab97b53','920ed607-4a99-1bc8-930d-60180a7c44f1','3aba1255-f1e3-6773-82a2-6017ca6f698a',80,'2021-02-01 14:04:44',0),('1df8ea62-2fa6-a902-61fb-6018100e0983','145ce98a-0b57-3e66-8f20-60180fdba411','15d35546-78f9-f848-591f-6017cacb9c85',75,'2021-02-01 14:29:35',0),('1e00904e-2062-d6e9-050e-601809626c71','54779abd-cf10-d4b8-3946-601809414e38','21b5d1eb-9d8b-387e-0076-6017ca4bb706',90,'2021-02-01 14:00:42',0),('1e11fea0-2a5c-b2d7-c51c-601811a2f369','a0b17db8-3562-2520-7a5b-60181003f945','377b9e0c-f502-7bb5-2c9f-6017ca706205',75,'2021-02-01 14:33:27',0),('1e2b088c-8874-8bcc-7bf3-6018102301bf','bef307c8-d095-6341-6352-601810875b07','21b5d1eb-9d8b-387e-0076-6017ca4bb706',75,'2021-02-01 14:31:59',0),('1e2fd4bb-3a54-ee38-60fe-6018109718f3','145ce98a-0b57-3e66-8f20-60180fdba411','cd88e407-1956-c897-a607-6017ca340c28',-98,'2021-02-01 14:29:35',0),('1e433423-a8e5-95dc-80c4-60180f1522be','52c526cb-9c4a-23b6-b39f-60180f9089b2','97cbb191-9ddd-400d-a042-6017ca5c4392',80,'2021-02-01 14:26:44',0),('1e489828-772c-bf76-875e-6018095d2f63','54779abd-cf10-d4b8-3946-601809414e38','20d92e13-2707-fbfc-6aae-6017ca15be16',90,'2021-02-01 14:00:42',0),('1e49376e-5fe6-36d8-43e4-601810e0b97c','145ce98a-0b57-3e66-8f20-60180fdba411','14686825-9929-903e-465a-6017caa80eac',-99,'2021-02-01 14:29:35',0),('1e4a79f6-f5ab-f4fb-2336-60180a3fe3e7','920ed607-4a99-1bc8-930d-60180a7c44f1','3ffd6654-cef8-3289-d225-6017ca354fd4',-99,'2021-02-01 14:04:44',0),('1e75cca3-31cc-8403-a22f-6018097be495','59940d2d-46d1-e3fa-8112-60180940c994','a2b066ca-8bc3-455f-49e3-6017caf5a616',80,'2021-02-01 14:02:35',0),('1e8eb0f1-6005-e98d-7690-60180938a7ad','54779abd-cf10-d4b8-3946-601809414e38','234f3db7-20b3-d6f5-e7b8-6017caa23e45',90,'2021-02-01 14:00:42',0),('1e919a15-e4f8-b429-87a7-60180af8b503','920ed607-4a99-1bc8-930d-60180a7c44f1','39c652a6-3413-596a-1ba7-6017cad4d33c',80,'2021-02-01 14:04:44',0),('1ebc0460-028d-1466-6571-60180954ce2c','59940d2d-46d1-e3fa-8112-60180940c994','60810b5c-c79a-b6ef-ace1-6017ca93af34',-98,'2021-02-01 14:02:35',0),('1ec33d60-009b-85fa-7f83-6018098ed1bc','54779abd-cf10-d4b8-3946-601809414e38','221b4606-d71e-4b39-f8d1-6017ca0185fa',90,'2021-02-01 14:00:42',0),('1ecb86ed-b27f-93c4-6fec-601811835ba5','a0b17db8-3562-2520-7a5b-60181003f945','14686825-9929-903e-465a-6017caa80eac',-99,'2021-02-01 14:33:27',0),('1ecc48ac-d4aa-6c88-b5ce-60180a89831e','920ed607-4a99-1bc8-930d-60180a7c44f1','d29bdfb0-fe1c-8857-e905-6017caea5473',-98,'2021-02-01 14:04:44',0),('1ed36b82-978b-7327-80e8-601811959d5c','a0b17db8-3562-2520-7a5b-60181003f945','3703cf8a-d539-ce5f-51fb-6017ca174652',75,'2021-02-01 14:33:27',0),('1edd3e27-6f12-1ca9-c6fc-601810ef0013','bef307c8-d095-6341-6352-601810875b07','20d92e13-2707-fbfc-6aae-6017ca15be16',75,'2021-02-01 14:31:59',0),('1ef80111-c8f1-9645-9eba-60180a04d39b','920ed607-4a99-1bc8-930d-60180a7c44f1','d73cd5f5-e1d8-5170-7d78-6017cabb0ed2',80,'2021-02-01 14:04:44',0),('1efc9efc-3f31-c013-2443-60180f8d1f9c','52c526cb-9c4a-23b6-b39f-60180f9089b2','9aa4c23c-82cc-b784-2948-6017ca8efdf4',-99,'2021-02-01 14:26:44',0),('1f100b60-2b64-4ac8-b128-60180abc2899','920ed607-4a99-1bc8-930d-60180a7c44f1','a4da651d-8bd3-37de-e06c-6017cab354c0',80,'2021-02-01 14:04:44',0),('1f20f23b-3217-1df3-59ee-6018101eb109','145ce98a-0b57-3e66-8f20-60180fdba411','d0901d67-9ee5-6676-9f62-6017ca8fda47',75,'2021-02-01 14:29:35',0),('1f299c45-b0f1-f993-ef81-601809beb273','54779abd-cf10-d4b8-3946-601809414e38','1fd0db20-6064-0513-4ea9-6017ca0cc94f',90,'2021-02-01 14:00:42',0),('1f3d79ca-94c7-4e81-3c91-60180aad2973','920ed607-4a99-1bc8-930d-60180a7c44f1','d696d729-adb1-4fec-3046-6017caa1340f',80,'2021-02-01 14:04:44',0),('1f5e0c51-d75e-dcff-d741-60181144037b','a0b17db8-3562-2520-7a5b-60181003f945','1252b2b2-1881-0a07-1b70-6017ca20b166',75,'2021-02-01 14:33:27',0),('1f60367d-b022-9f33-5f0c-6018091be862','54779abd-cf10-d4b8-3946-601809414e38','2406bc8f-4929-38a5-9f9f-6017ca6c2433',90,'2021-02-01 14:00:42',0),('1fa31436-4404-0f24-8262-60180f6c9a6a','52c526cb-9c4a-23b6-b39f-60180f9089b2','970785ad-0325-24c1-aa65-6017ca359798',80,'2021-02-01 14:26:44',0),('1fa31ae9-d2cb-cf3b-02e1-6018093b885b','54779abd-cf10-d4b8-3946-601809414e38','1e5f2892-a756-0832-4a6e-6017caf95bd8',90,'2021-02-01 14:00:42',0),('1fb21067-08e5-2fe9-8327-60180abb3631','920ed607-4a99-1bc8-930d-60180a7c44f1','d98b8285-6c4f-9047-3246-6017caf67d11',80,'2021-02-01 14:04:44',0),('1fbb767f-541f-0d63-27e6-601810f0ea3f','145ce98a-0b57-3e66-8f20-60180fdba411','1252b2b2-1881-0a07-1b70-6017ca20b166',75,'2021-02-01 14:29:35',0),('1fd0c15c-e400-e77d-100d-60180954b68b','54779abd-cf10-d4b8-3946-601809414e38','b899af45-a8cb-564b-2b5d-6017caafa414',89,'2021-02-01 14:00:42',0),('1fdafe5c-abdf-d5db-eb7b-6018112071a9','a0b17db8-3562-2520-7a5b-60181003f945','38e0c84a-b6b1-e94f-4f77-6017ca4423ca',75,'2021-02-01 14:33:27',0),('1ff60697-9b8d-711c-c6c1-601809347229','59940d2d-46d1-e3fa-8112-60180940c994','6474a3b1-3bc2-19c3-1ccd-6017ca43f71a',80,'2021-02-01 14:02:35',0),('2004cc8e-532e-ee29-a05b-60180a6207af','920ed607-4a99-1bc8-930d-60180a7c44f1','d7ba2bb6-7b6d-76c1-1c42-6017ca823bcd',-99,'2021-02-01 14:04:44',0),('2012f85a-21a3-73e7-0c7f-6018093815e0','54779abd-cf10-d4b8-3946-601809414e38','bc577676-7c95-b78d-df76-6017ca9b20dd',90,'2021-02-01 14:00:42',0),('201886a8-2bff-ba0d-f923-60180f12ab7f','52c526cb-9c4a-23b6-b39f-60180f9089b2','e3eed07f-5bb3-2703-e548-6017caddebbf',80,'2021-02-01 14:26:44',0),('202b9f95-e402-2b53-81fe-60180fe27140','52c526cb-9c4a-23b6-b39f-60180f9089b2','2b082bd0-78e2-0f73-8f30-6017cae6b554',-98,'2021-02-01 14:26:44',0),('2046ff5b-dcd6-1310-fa3c-6018110d48ec','a0b17db8-3562-2520-7a5b-60181003f945','16a5a0f5-58f6-3eb2-3f5a-6017ca28282b',-99,'2021-02-01 14:33:27',0),('2049584c-08e2-86a7-8a9e-60180ac581f9','920ed607-4a99-1bc8-930d-60180a7c44f1','d57cbe4e-28dc-3341-3148-6017ca4ae022',80,'2021-02-01 14:04:44',0),('2061045c-30d6-863b-b0db-6018091e05eb','54779abd-cf10-d4b8-3946-601809414e38','e5a726b8-46e2-5577-6768-6017ca4e8709',90,'2021-02-01 14:00:42',0),('2072a9ac-aa9c-0c50-6f5e-6018110d5886','a0b17db8-3562-2520-7a5b-60181003f945','3832cc25-90a4-9adb-6504-6017cad4d35a',-99,'2021-02-01 14:33:27',0),('2081989d-b758-2bd0-df47-60180aae473f','920ed607-4a99-1bc8-930d-60180a7c44f1','da4e44f2-19f9-33ea-a79f-6017caf3bb39',-99,'2021-02-01 14:04:44',0),('208c5bb3-3d07-46a9-03c5-601810351b94','145ce98a-0b57-3e66-8f20-60180fdba411','cfd801f1-971b-05c3-f426-6017cac294ff',75,'2021-02-01 14:29:35',0),('209e77f7-87e6-8957-82d2-601809e75b8f','54779abd-cf10-d4b8-3946-601809414e38','bb014dc7-231c-d3be-3127-6017ca522de8',90,'2021-02-01 14:00:42',0),('20a438db-ec5e-5c18-8a9f-60180aece606','920ed607-4a99-1bc8-930d-60180a7c44f1','d3d342d1-256b-ae27-5355-6017ca3b20ae',80,'2021-02-01 14:04:44',0),('20cb94fc-6f9c-b297-ff45-601809c15428','54779abd-cf10-d4b8-3946-601809414e38','beaed700-c854-1c4e-c41f-6017ca967318',90,'2021-02-01 14:00:42',0),('20cbaa32-be62-9799-87fd-6018103ddd41','145ce98a-0b57-3e66-8f20-60180fdba411','16a5a0f5-58f6-3eb2-3f5a-6017ca28282b',-99,'2021-02-01 14:29:35',0),('20d899cd-a46d-cd89-6b1a-60180fc7ac47','52c526cb-9c4a-23b6-b39f-60180f9089b2','30c31271-8204-35d9-ac35-6017cac62b20',80,'2021-02-01 14:26:44',0),('20ef2059-acbf-57e2-f926-60180a38f9f7','920ed607-4a99-1bc8-930d-60180a7c44f1','546743cc-6fc6-624c-2dec-6017ca948cf7',89,'2021-02-01 14:04:44',0),('20fba3f9-3a74-9e56-a8f9-6018103db33a','bef307c8-d095-6341-6352-601810875b07','234f3db7-20b3-d6f5-e7b8-6017caa23e45',75,'2021-02-01 14:31:59',0),('210d71bd-20c3-e257-32b2-601809b85c95','54779abd-cf10-d4b8-3946-601809414e38','bceb6bef-9e3e-2c85-bbac-6017cafb0acf',90,'2021-02-01 14:00:42',0),('21309a1f-f265-1fa0-e591-60180f547617','52c526cb-9c4a-23b6-b39f-60180f9089b2','2efe11d5-6790-bf1f-8663-6017cad8523d',80,'2021-02-01 14:26:44',0),('213538b4-16ed-4119-02c2-60180a8a3384','920ed607-4a99-1bc8-930d-60180a7c44f1','597eaaa5-85c4-a5dd-05a5-6017cac9ea90',80,'2021-02-01 14:04:44',0),('214047d8-6391-cd57-751d-601809b95426','59940d2d-46d1-e3fa-8112-60180940c994','63ee943e-4bff-3fa7-bf48-6017ca030834',80,'2021-02-01 14:02:35',0),('2150cabb-399c-24b3-19cc-6018108ad80c','145ce98a-0b57-3e66-8f20-60180fdba411','119735a8-6264-4508-281d-6017ca5602c9',75,'2021-02-01 14:29:35',0),('21514517-90c4-9f3b-1214-6018118d798d','a0b17db8-3562-2520-7a5b-60181003f945','119735a8-6264-4508-281d-6017ca5602c9',75,'2021-02-01 14:33:27',0),('2155c3d3-858c-a455-5404-601810a6c54c','145ce98a-0b57-3e66-8f20-60180fdba411','d186ebc9-f248-c713-57ad-6017ca877318',75,'2021-02-01 14:29:35',0),('216e7cc7-e0a0-9065-434d-60180acd07a4','920ed607-4a99-1bc8-930d-60180a7c44f1','58bb86e4-ee28-d2dd-36d4-6017ca0907f4',80,'2021-02-01 14:04:44',0),('2171495d-0d5f-8e37-373c-60181074bab8','bef307c8-d095-6341-6352-601810875b07','221b4606-d71e-4b39-f8d1-6017ca0185fa',-99,'2021-02-01 14:31:59',0),('218cbbea-ff1a-613d-62dd-60180910fb32','54779abd-cf10-d4b8-3946-601809414e38','ba473bcc-7238-9791-6f76-6017ca6721e5',90,'2021-02-01 14:00:42',0),('219c1304-7437-cb0d-e6ce-60180a43c492','920ed607-4a99-1bc8-930d-60180a7c44f1','5cc0b349-3770-876d-484a-6017ca3bee65',80,'2021-02-01 14:04:44',0),('219fc22d-d62d-3a94-a274-60180ffddbb2','52c526cb-9c4a-23b6-b39f-60180f9089b2','331cee62-76bf-b82b-c04b-6017caf9b89c',80,'2021-02-01 14:26:44',0),('21a20ae2-3f9d-576e-6e64-601811da5a42','a0b17db8-3562-2520-7a5b-60181003f945','3634091f-8062-cdd4-5fa8-6017caf39c43',75,'2021-02-01 14:33:27',0),('21acd197-4015-bee8-8e5a-601809d39136','59940d2d-46d1-e3fa-8112-60180940c994','65fd01e4-d02e-d387-a060-6017ca1e4705',80,'2021-02-01 14:02:35',0),('21d5f11c-ae82-971f-dacf-60180f053be2','52c526cb-9c4a-23b6-b39f-60180f9089b2','324c45e0-5b40-9a13-bba7-6017ca617468',-99,'2021-02-01 14:26:44',0),('21de284f-4647-f110-bb05-60180953e7f1','54779abd-cf10-d4b8-3946-601809414e38','bf82a946-415f-bc3a-8fc7-6017ca457085',90,'2021-02-01 14:00:42',0),('2207471b-3633-cb4e-1d2d-601811132e9f','a0b17db8-3562-2520-7a5b-60181003f945','a1dba88a-f04c-1a8a-a892-6017ca6b9c0e',-98,'2021-02-01 14:33:27',0),('22077ab0-2c68-9595-4a20-601810a8f8b5','145ce98a-0b57-3e66-8f20-60180fdba411','d0def67a-7a7d-3dea-616d-6017ca0ca5c0',-99,'2021-02-01 14:29:35',0),('220cdd8d-e041-3276-f5d0-601809309cca','54779abd-cf10-d4b8-3946-601809414e38','b9a397e5-66a6-9988-7929-6017cae9079d',90,'2021-02-01 14:00:42',0),('221e76c9-00ce-9228-f685-601811496045','a0b17db8-3562-2520-7a5b-60181003f945','3955cfaa-5d78-ecdd-57ae-6017caf34833',-99,'2021-02-01 14:33:27',0),('222e2eeb-b918-90a9-d3b4-6018097c5686','59940d2d-46d1-e3fa-8112-60180940c994','650abd63-f082-75a4-a58d-6017ca54dd12',-99,'2021-02-01 14:02:35',0),('223d1a65-7dfa-c620-cd7d-60180a9c529a','920ed607-4a99-1bc8-930d-60180a7c44f1','5aec88a5-6ff8-c1dc-8178-6017ca019e55',-99,'2021-02-01 14:04:44',0),('223fc1ac-8a5a-3510-5d77-60180f4b5897','52c526cb-9c4a-23b6-b39f-60180f9089b2','2e23ea98-4f52-4fe8-0c62-6017ca933a95',80,'2021-02-01 14:26:44',0),('2249737b-4b78-1931-0ced-601809f85d1b','54779abd-cf10-d4b8-3946-601809414e38','97e9402e-af05-1ead-a076-6017ca207f26',89,'2021-02-01 14:00:42',0),('226026ba-0650-ee1c-72ba-601810b158cc','145ce98a-0b57-3e66-8f20-60180fdba411','cf1e856c-b6ab-5b98-3ad5-6017ca7fb7eb',75,'2021-02-01 14:29:35',0),('2267f6a5-86d8-3890-14a3-6018106f6f3e','145ce98a-0b57-3e66-8f20-60180fdba411','a1dba88a-f04c-1a8a-a892-6017ca6b9c0e',-98,'2021-02-01 14:29:35',0),('2272dfe9-ae59-6aae-fe63-601809ccd948','54779abd-cf10-d4b8-3946-601809414e38','9dad8dfc-64d2-5c22-7fed-6017caa67ae1',90,'2021-02-01 14:00:42',0),('227afd35-abef-f4f7-4a5f-601809c0fda1','59940d2d-46d1-e3fa-8112-60180940c994','631e9841-0a93-45b7-c37a-6017caecbf57',80,'2021-02-01 14:02:35',0),('228327d1-df15-1d71-e2b3-60180a565d58','920ed607-4a99-1bc8-930d-60180a7c44f1','56b5cd8a-0abd-eafa-d278-6017ca815664',80,'2021-02-01 14:04:44',0),('22a0b136-2c97-c465-b634-6018097c1fd3','54779abd-cf10-d4b8-3946-601809414e38','9c7adf56-4680-5e30-ff28-6017cadf52c8',90,'2021-02-01 14:00:42',0),('22b07e2b-ebec-5057-7a31-60180af5f276','920ed607-4a99-1bc8-930d-60180a7c44f1','5d9bcf8a-f920-4d6c-4092-6017caf54c89',-99,'2021-02-01 14:04:44',0),('22bead28-66e2-61a0-e7fc-6018101b9a86','bef307c8-d095-6341-6352-601810875b07','1fd0db20-6064-0513-4ea9-6017ca0cc94f',75,'2021-02-01 14:31:59',0),('22cd8f58-c78b-f565-728a-6018116a9f7d','a0b17db8-3562-2520-7a5b-60181003f945','a5c83c1f-45dc-c601-2782-6017cabac48b',75,'2021-02-01 14:33:27',0),('22e5bd82-5876-e594-e2e1-60180fecd117','52c526cb-9c4a-23b6-b39f-60180f9089b2','33998e3d-e989-c679-1dd4-6017ca3d2cc8',-99,'2021-02-01 14:26:44',0),('22f2f34e-6aa8-1b72-697b-601811ac6896','a0b17db8-3562-2520-7a5b-60181003f945','34751d0d-8c15-50d3-5a8e-6017ca6c83cf',75,'2021-02-01 14:33:27',0),('23004b2e-c9f7-2175-2d1d-6018101627a7','145ce98a-0b57-3e66-8f20-60180fdba411','a5c83c1f-45dc-c601-2782-6017cabac48b',75,'2021-02-01 14:29:35',0),('2310bf9c-8910-02cc-3bf8-6018093a4e39','59940d2d-46d1-e3fa-8112-60180940c994','66a0808f-81f2-5d63-33cb-6017ca6f04b5',-99,'2021-02-01 14:02:35',0),('232fadfd-50f2-0cec-4ea2-601809dba8b4','54779abd-cf10-d4b8-3946-601809414e38','9f6d45af-0924-9907-090a-6017ca293441',90,'2021-02-01 14:00:42',0),('234bf0b6-12ab-2afe-b551-60180a32406e','920ed607-4a99-1bc8-930d-60180a7c44f1','54ee577a-c979-bb12-f31e-6017ca80543c',80,'2021-02-01 14:04:44',0),('23755f64-bc52-fc84-5dc1-6018106c02b0','145ce98a-0b57-3e66-8f20-60180fdba411','d205df45-00e2-fd60-1321-6017caaef991',-99,'2021-02-01 14:29:35',0),('237f94e3-5cc2-f939-914c-601810d9fc1f','bef307c8-d095-6341-6352-601810875b07','2406bc8f-4929-38a5-9f9f-6017ca6c2433',-99,'2021-02-01 14:31:59',0),('238d6e1d-c57e-389e-875d-60181065a3a2','145ce98a-0b57-3e66-8f20-60180fdba411','a51ed5ca-e6ea-6120-f675-6017ca40973a',75,'2021-02-01 14:29:35',0),('238db7c9-64ba-fb73-3149-60180a92112d','920ed607-4a99-1bc8-930d-60180a7c44f1','95caaeaf-93f3-7e0f-a75d-6017cafeac2b',89,'2021-02-01 14:04:44',0),('23922c33-7adb-4da9-f218-601811b5f241','a0b17db8-3562-2520-7a5b-60181003f945','a51ed5ca-e6ea-6120-f675-6017ca40973a',75,'2021-02-01 14:33:27',0),('23a43099-0e45-cc0c-ce00-601809dba37d','54779abd-cf10-d4b8-3946-601809414e38','9e8c53ec-f5f5-1908-8fd6-6017ca4b90f4',90,'2021-02-01 14:00:42',0),('23c3021e-7c19-c85d-a66f-601811fdaacf','a0b17db8-3562-2520-7a5b-60181003f945','11076fd5-1162-9638-0052-6017ca6891e0',75,'2021-02-01 14:33:27',0),('23d0ab61-a553-6cd9-7466-6018095a5bd5','59940d2d-46d1-e3fa-8112-60180940c994','626d8d6b-2260-4f45-9d57-6017ca9cec93',80,'2021-02-01 14:02:35',0),('23d4901a-f3f5-c783-00bf-601811a55962','a0b17db8-3562-2520-7a5b-60181003f945','89cfd493-7685-52ca-1008-6017ca632e1b',-98,'2021-02-01 14:33:27',0),('23d90c7e-8536-5fbd-02fb-60180fbfe42b','52c526cb-9c4a-23b6-b39f-60180f9089b2','d6db73f5-8776-66f9-6c1d-6017caeb8262',80,'2021-02-01 14:26:44',0),('23e3f1c3-60ae-01d8-2078-601809571a7d','54779abd-cf10-d4b8-3946-601809414e38','9b2882df-e540-afe4-9c83-6017ca7e0aa7',90,'2021-02-01 14:00:42',0),('23f527d2-1536-624a-f2b9-60180aceed52','920ed607-4a99-1bc8-930d-60180a7c44f1','98d80d64-442b-4845-f330-6017ca409579',80,'2021-02-01 14:04:44',0),('24003ec0-48d7-7492-c533-60181001f0a3','bef307c8-d095-6341-6352-601810875b07','1e5f2892-a756-0832-4a6e-6017caf95bd8',75,'2021-02-01 14:31:59',0),('24033d6a-fc12-2d60-284c-601809477738','59940d2d-46d1-e3fa-8112-60180940c994','52e18872-14a7-3b94-8d54-6017ca3a8f42',-98,'2021-02-01 14:02:35',0),('2406f7da-423c-ab36-45d9-601810777922','145ce98a-0b57-3e66-8f20-60180fdba411','a6dc7487-4f78-319e-eb0d-6017cae454e9',75,'2021-02-01 14:29:35',0),('241c8bb8-96dd-d19e-ccbd-601809c96fca','54779abd-cf10-d4b8-3946-601809414e38','a0125536-b231-699a-6df1-6017cac450ac',90,'2021-02-01 14:00:42',0),('2432bf7d-4cf8-9070-53ff-60180a695790','920ed607-4a99-1bc8-930d-60180a7c44f1','98318ae3-2987-0db6-aedc-6017caa934f7',80,'2021-02-01 14:04:44',0),('24400bf9-cf0a-337b-a33d-6018102ca27c','145ce98a-0b57-3e66-8f20-60180fdba411','b03e2b4c-2931-7fad-9b57-6017ca8ac75c',75,'2021-02-01 14:29:35',0),('246653de-9317-cb7f-ebb6-6018093ce75a','54779abd-cf10-d4b8-3946-601809414e38','986eee81-167e-9465-9b49-6017ca064f5f',90,'2021-02-01 14:00:42',0),('248d01d9-96dc-25e3-7953-601809b5f436','54779abd-cf10-d4b8-3946-601809414e38','ad72033b-d248-1445-3717-6017ca405307',89,'2021-02-01 14:00:42',0),('24930df9-008c-d9eb-2e32-601809e4727f','54779abd-cf10-d4b8-3946-601809414e38','e4b06495-feb8-2d70-cb38-6017ca9b8502',90,'2021-02-01 14:00:42',0),('2493875c-8fbe-eaf6-a1c2-601810b07a40','145ce98a-0b57-3e66-8f20-60180fdba411','ce72846b-97fc-6dbc-f5ff-6017ca04b487',75,'2021-02-01 14:29:35',0),('24aaa769-760d-d41f-8d9e-601811aa2aa2','a0b17db8-3562-2520-7a5b-60181003f945','8d646238-0036-c2d0-6e93-6017ca17c0f5',75,'2021-02-01 14:33:27',0),('24afcf74-50b9-2139-467d-6018115e8bb3','a0b17db8-3562-2520-7a5b-60181003f945','a6dc7487-4f78-319e-eb0d-6017cae454e9',75,'2021-02-01 14:33:27',0),('24b957dc-77f1-9c35-b648-60180af44cbc','920ed607-4a99-1bc8-930d-60180a7c44f1','9a0c8414-dc37-00e0-5f53-6017ca9df993',80,'2021-02-01 14:04:44',0),('24ceb112-4c40-e29e-7c3e-601809fa042b','54779abd-cf10-d4b8-3946-601809414e38','b0a59a80-8244-9f08-bf42-6017caeaa7f3',90,'2021-02-01 14:00:42',0),('24da8603-db8d-8011-139e-60180a1e376e','920ed607-4a99-1bc8-930d-60180a7c44f1','998800ae-740e-54bd-2cba-6017caaaa73a',-99,'2021-02-01 14:04:44',0),('24e13dd8-24ff-f119-bd13-60181011434e','bef307c8-d095-6341-6352-601810875b07','b899af45-a8cb-564b-2b5d-6017caafa414',-98,'2021-02-01 14:31:59',0),('25000e3f-eaee-fd73-7089-60180fe74016','52c526cb-9c4a-23b6-b39f-60180f9089b2','e6ed1604-861b-1b53-e18d-6017ca9f3220',-99,'2021-02-01 14:26:44',0),('25026210-d3ba-998e-b964-601809bdf397','54779abd-cf10-d4b8-3946-601809414e38','b03e2b4c-2931-7fad-9b57-6017ca8ac75c',90,'2021-02-01 14:00:42',0),('250dba2d-0c41-6a00-602b-60180f01cef7','52c526cb-9c4a-23b6-b39f-60180f9089b2','e72ba550-9aea-e958-95e8-6017ca63fa05',-99,'2021-02-01 14:26:44',0),('2523e17c-e1f3-211e-1971-601810400920','145ce98a-0b57-3e66-8f20-60180fdba411','a66f362b-768c-db39-3986-6017ca23936b',-99,'2021-02-01 14:29:35',0),('2528ddd1-3007-f7f3-027d-601811be2946','a0b17db8-3562-2520-7a5b-60181003f945','8c917df1-c6ec-68b0-840f-6017cadaae13',75,'2021-02-01 14:33:27',0),('25349ab7-3cdb-c448-1485-601809b999c7','59940d2d-46d1-e3fa-8112-60180940c994','55416b30-5fa8-b4e0-0a54-6017ca6b9792',80,'2021-02-01 14:02:35',0),('255aab1e-b3cf-cbb9-1489-6018115b7775','a0b17db8-3562-2520-7a5b-60181003f945','a66f362b-768c-db39-3986-6017ca23936b',-99,'2021-02-01 14:33:27',0),('25620e79-95d4-a237-a983-601810219e9d','bef307c8-d095-6341-6352-601810875b07','bc577676-7c95-b78d-df76-6017ca9b20dd',75,'2021-02-01 14:31:59',0),('2566a8b2-5aab-6579-0aaf-601809ffac19','54779abd-cf10-d4b8-3946-601809414e38','b1b70587-5e65-c9e2-442e-6017ca9be6b4',90,'2021-02-01 14:00:42',0),('257e118c-a334-1d02-e4ae-601809e7d7e5','54779abd-cf10-d4b8-3946-601809414e38','b148ee1e-32f7-3ee6-9bd5-6017ca688368',90,'2021-02-01 14:00:42',0),('2589aa9d-b1a5-2039-d6c2-6018104cb365','145ce98a-0b57-3e66-8f20-60180fdba411','3bf2f429-039e-9b9a-086b-6017cad8b024',89,'2021-02-01 14:29:35',0),('259061d7-6f61-7127-c5de-6018097ca3ea','59940d2d-46d1-e3fa-8112-60180940c994','54e1674a-2c22-cc1d-10f2-6017cace8b60',80,'2021-02-01 14:02:35',0),('2594f2ec-ba47-0c22-a3d7-60180af13c63','920ed607-4a99-1bc8-930d-60180a7c44f1','97cbb191-9ddd-400d-a042-6017ca5c4392',80,'2021-02-01 14:04:44',0),('25a18303-c190-399b-5601-601810f6f96c','145ce98a-0b57-3e66-8f20-60180fdba411','a43c437c-1608-81a0-4112-6017cac827a4',75,'2021-02-01 14:29:35',0),('25b2278f-fa23-aff1-8be7-6018115b83b2','a0b17db8-3562-2520-7a5b-60181003f945','8e72cccd-d8bd-5bda-1129-6017ca1e0e4f',75,'2021-02-01 14:33:27',0),('25b309e1-a610-836a-9f3b-60180fcfb45d','52c526cb-9c4a-23b6-b39f-60180f9089b2','6ffacbb5-5dca-0c27-5fae-6017ca1495ba',80,'2021-02-01 14:26:44',0),('25c244cb-205b-52e7-ac8a-60180ae78298','920ed607-4a99-1bc8-930d-60180a7c44f1','9aa4c23c-82cc-b784-2948-6017ca8efdf4',-99,'2021-02-01 14:04:44',0),('25ccc26f-e43d-6f42-0667-60180993d36a','59940d2d-46d1-e3fa-8112-60180940c994','5759d198-8f17-5f9b-59c3-6017ca131eaa',80,'2021-02-01 14:02:35',0),('25dafe6c-b5b4-056c-53c1-601809d5092f','54779abd-cf10-d4b8-3946-601809414e38','af785830-9b95-6e64-4175-6017ca031673',90,'2021-02-01 14:00:42',0),('25ee0645-ed01-f3bc-f7c2-601811a3aec8','a0b17db8-3562-2520-7a5b-60181003f945','a43c437c-1608-81a0-4112-6017cac827a4',75,'2021-02-01 14:33:27',0),('25fbdff0-30b3-74c4-db27-60180ae3a9bf','920ed607-4a99-1bc8-930d-60180a7c44f1','970785ad-0325-24c1-aa65-6017ca359798',80,'2021-02-01 14:04:44',0),('26009ed9-03b7-9b26-66cb-6018098a5783','54779abd-cf10-d4b8-3946-601809414e38','b231fc57-fb19-a4fb-3c2d-6017ca35b664',90,'2021-02-01 14:00:42',0),('261c543a-39c8-aa46-4579-601809cc0d1e','59940d2d-46d1-e3fa-8112-60180940c994','56a8406f-8f35-19fa-f417-6017caf288a8',-99,'2021-02-01 14:02:35',0),('261cb773-9763-761a-8d22-601810b73647','bef307c8-d095-6341-6352-601810875b07','bb014dc7-231c-d3be-3127-6017ca522de8',75,'2021-02-01 14:31:59',0),('2633db69-3a6e-6b45-fe31-601811b97b50','a0b17db8-3562-2520-7a5b-60181003f945','8df6c126-ff00-31ab-53d7-6017ca17f4bb',-99,'2021-02-01 14:33:27',0),('26348584-5a7b-8893-d348-60181087bacf','145ce98a-0b57-3e66-8f20-60180fdba411','a79a0deb-3f53-b8d5-9317-6017ca50aa02',-99,'2021-02-01 14:29:35',0),('263bc5e7-c172-92ae-b09a-60180af223ce','920ed607-4a99-1bc8-930d-60180a7c44f1','2b082bd0-78e2-0f73-8f30-6017cae6b554',89,'2021-02-01 14:04:44',0),('267d6ced-7391-b1b3-c564-60180fb96b4f','52c526cb-9c4a-23b6-b39f-60180f9089b2','2d2747b1-a21d-0f24-7ad8-6017cac0d820',80,'2021-02-01 14:26:44',0),('2683812f-f512-588f-7f9a-60180afb5dad','920ed607-4a99-1bc8-930d-60180a7c44f1','30c31271-8204-35d9-ac35-6017cac62b20',80,'2021-02-01 14:04:44',0),('2686adfb-b850-d7f9-2ebe-601809717178','54779abd-cf10-d4b8-3946-601809414e38','aecb124c-09c7-d9f6-442e-6017ca33edc8',90,'2021-02-01 14:00:42',0),('26c53c18-01db-279d-7f06-60180a087ac2','920ed607-4a99-1bc8-930d-60180a7c44f1','2efe11d5-6790-bf1f-8663-6017cad8523d',80,'2021-02-01 14:04:44',0),('26cb7d30-3bf8-6232-a239-6018116f00b3','a0b17db8-3562-2520-7a5b-60181003f945','a79a0deb-3f53-b8d5-9317-6017ca50aa02',-99,'2021-02-01 14:33:27',0),('26d3ee19-bb82-5cd9-5108-601809f3aa40','54779abd-cf10-d4b8-3946-601809414e38','cb26adac-ed61-d3a3-7c6e-6017ca433812',89,'2021-02-01 14:00:42',0),('26dbeefc-57c1-f3c4-9933-60180f1ca4b2','52c526cb-9c4a-23b6-b39f-60180f9089b2','e33de50b-0af6-759b-2e46-6017ca41bb50',80,'2021-02-01 14:26:44',0),('26df54df-b097-31bd-a273-601811254332','a0b17db8-3562-2520-7a5b-60181003f945','8c1ad7be-b834-8a3b-a447-6017ca75307a',75,'2021-02-01 14:33:27',0),('26e7e6a1-324f-a747-40c9-6018091a569c','59940d2d-46d1-e3fa-8112-60180940c994','54679895-07c8-f76b-43d1-6017ca72a27a',80,'2021-02-01 14:02:35',0),('26ed0068-5dd9-d7b1-66c9-60180ae58f01','920ed607-4a99-1bc8-930d-60180a7c44f1','fd900cfb-53c8-2739-93ed-6017cae17103',80,'2021-02-01 14:04:44',0),('270a2291-2c92-c9a7-85ee-60180aaa86d3','920ed607-4a99-1bc8-930d-60180a7c44f1','331cee62-76bf-b82b-c04b-6017caf9b89c',80,'2021-02-01 14:04:44',0),('27165fdb-34de-6518-c3a2-601809225e2b','54779abd-cf10-d4b8-3946-601809414e38','d1b4b2de-3c43-1cf8-1126-6017caf932db',90,'2021-02-01 14:00:42',0),('273213ca-160e-8307-352e-601809559ee7','59940d2d-46d1-e3fa-8112-60180940c994','5834a572-d414-ba60-078a-6017ca451330',-99,'2021-02-01 14:02:35',0),('27367235-be17-55ca-ca9b-60180a1cef3a','920ed607-4a99-1bc8-930d-60180a7c44f1','324c45e0-5b40-9a13-bba7-6017ca617468',-99,'2021-02-01 14:04:44',0),('2738c837-7cef-becd-9d5c-6018118250e0','a0b17db8-3562-2520-7a5b-60181003f945','8f2d5206-743b-ecd6-bbfd-6017ca3b700c',-99,'2021-02-01 14:33:27',0),('27438aef-ba56-6bfb-388c-6018090ca006','54779abd-cf10-d4b8-3946-601809414e38','d10ba092-b594-4c74-4464-6017cad87ad6',90,'2021-02-01 14:00:42',0),('274cce13-ba56-681c-7875-60180f838503','52c526cb-9c4a-23b6-b39f-60180f9089b2','f2e8e852-51ce-32b0-7d1a-6017ca06e346',-98,'2021-02-01 14:26:44',0),('2769b004-60cb-a355-3c17-601811e9cebc','a0b17db8-3562-2520-7a5b-60181003f945','a2b066ca-8bc3-455f-49e3-6017caf5a616',75,'2021-02-01 14:33:27',0),('27730a98-61b6-cdcf-94b9-601809f21285','54779abd-cf10-d4b8-3946-601809414e38','e6c56d8e-33d3-8a8d-3b47-6017ca263dc6',90,'2021-02-01 14:00:42',0),('27771302-5158-e7b1-ef53-60181055e559','145ce98a-0b57-3e66-8f20-60180fdba411','a2b066ca-8bc3-455f-49e3-6017caf5a616',75,'2021-02-01 14:29:35',0),('277c433a-219e-8c64-9319-60180a5d5ad6','920ed607-4a99-1bc8-930d-60180a7c44f1','2e23ea98-4f52-4fe8-0c62-6017ca933a95',80,'2021-02-01 14:04:44',0),('2787d581-03d5-c735-e591-60180f96941e','52c526cb-9c4a-23b6-b39f-60180f9089b2','2ea0f1e5-5ad1-9ed1-62be-6017cab19b3e',-98,'2021-02-01 14:26:44',0),('27921933-fbf8-da68-c2d6-601809e5230b','54779abd-cf10-d4b8-3946-601809414e38','d3178c03-b2e4-a425-9eca-6017ca72eb45',90,'2021-02-01 14:00:42',0),('27932558-7d82-64d7-080c-601809d51a5a','59940d2d-46d1-e3fa-8112-60180940c994','53ce4002-765c-019d-925e-6017ca6b0b89',80,'2021-02-01 14:02:35',0),('279e3358-842d-4f7c-d105-60181076ff58','bef307c8-d095-6341-6352-601810875b07','beaed700-c854-1c4e-c41f-6017ca967318',75,'2021-02-01 14:31:59',0),('27b6cbac-8abe-d317-4dc8-6018105c3e39','145ce98a-0b57-3e66-8f20-60180fdba411','40a06fb6-2c0b-b5ab-9711-6017cad0002f',75,'2021-02-01 14:29:35',0),('27b6e005-0056-d5e3-384a-601809eb4a2e','54779abd-cf10-d4b8-3946-601809414e38','d23c0c73-ef18-7df2-801f-6017cae194f6',90,'2021-02-01 14:00:42',0),('27b7a94b-7d7a-3c04-8dde-60180a5bd124','920ed607-4a99-1bc8-930d-60180a7c44f1','33998e3d-e989-c679-1dd4-6017ca3d2cc8',-99,'2021-02-01 14:04:44',0),('27b9b189-fea1-a8cc-8100-601811978dfd','a0b17db8-3562-2520-7a5b-60181003f945','60810b5c-c79a-b6ef-ace1-6017ca93af34',-98,'2021-02-01 14:33:27',0),('27c3b805-cdc6-f28b-4b23-60180918e2b1','59940d2d-46d1-e3fa-8112-60180940c994','6d9d1858-3cb1-1bf8-47de-6017caecbe90',-98,'2021-02-01 14:02:35',0),('27cf5490-1c45-ca4e-83ab-601811ad75ea','a0b17db8-3562-2520-7a5b-60181003f945','8a520e16-b539-983c-b9bd-6017cab11234',75,'2021-02-01 14:33:27',0),('27e9b72b-0dda-1062-8339-60180a8cac8d','920ed607-4a99-1bc8-930d-60180a7c44f1','2d2747b1-a21d-0f24-7ad8-6017cac0d820',80,'2021-02-01 14:04:44',0),('27f6664a-be91-76ad-193c-60180fc41f43','52c526cb-9c4a-23b6-b39f-60180f9089b2','307a06a7-17d6-8be6-5b8d-6017ca1d1fe5',80,'2021-02-01 14:26:44',0),('27f9e2ab-8efd-3016-e8ed-60180920fd19','54779abd-cf10-d4b8-3946-601809414e38','cf98c060-aa97-69a2-bfb8-6017caf73ecc',90,'2021-02-01 14:00:42',0),('28267ab7-60a1-fe05-847f-601810af2457','145ce98a-0b57-3e66-8f20-60180fdba411','60810b5c-c79a-b6ef-ace1-6017ca93af34',-98,'2021-02-01 14:29:35',0),('282ced90-20ab-1cc5-5ba6-60180a5e1487','920ed607-4a99-1bc8-930d-60180a7c44f1','f2e8e852-51ce-32b0-7d1a-6017ca06e346',-98,'2021-02-01 14:04:44',0),('28526d68-23d6-377f-b419-601811dfefd5','a0b17db8-3562-2520-7a5b-60181003f945','e1123a71-9f1e-4905-cf20-6017caacf73b',-98,'2021-02-01 14:33:27',0),('28619ba5-162f-13ca-8eff-60180ae8de9c','920ed607-4a99-1bc8-930d-60180a7c44f1','2cd00441-6e8e-a148-477b-6017ca30432f',80,'2021-02-01 14:04:44',0),('2861c3f1-59d1-58e4-9c09-601809ca068e','54779abd-cf10-d4b8-3946-601809414e38','d3a03f58-2d84-2e3c-5b75-6017ca7a050c',90,'2021-02-01 14:00:42',0),('2877b833-5509-b83d-9530-60180fa708e9','52c526cb-9c4a-23b6-b39f-60180f9089b2','2cd00441-6e8e-a148-477b-6017ca30432f',80,'2021-02-01 14:26:44',0),('2887134e-bca0-6dfe-cc92-60180997cd7f','54779abd-cf10-d4b8-3946-601809414e38','cdae776a-3357-3fc3-e44d-6017ca2c967b',90,'2021-02-01 14:00:42',0),('288f7357-eb54-d5c7-a1d7-6018117a0621','a0b17db8-3562-2520-7a5b-60181003f945','6474a3b1-3bc2-19c3-1ccd-6017ca43f71a',75,'2021-02-01 14:33:27',0),('28903538-abc7-8a09-2991-601810f5a8fc','bef307c8-d095-6341-6352-601810875b07','bceb6bef-9e3e-2c85-bbac-6017cafb0acf',-99,'2021-02-01 14:31:59',0),('28912f67-7e8d-841d-9bd0-601809e03448','59940d2d-46d1-e3fa-8112-60180940c994','70caaca7-26e2-1098-1756-6017ca845ecf',80,'2021-02-01 14:02:35',0),('289698ef-09b9-d6fe-c376-60180ad688d3','920ed607-4a99-1bc8-930d-60180a7c44f1','1e1803a1-daa9-c147-059f-6017ca58540c',80,'2021-02-01 14:04:44',0),('28adf646-2018-6b7e-9e7d-601810ef6215','145ce98a-0b57-3e66-8f20-60180fdba411','3feeba8f-d6bd-6fe9-094b-6017ca124904',75,'2021-02-01 14:29:35',0),('28c07d8d-3800-1e11-731a-601809243587','54779abd-cf10-d4b8-3946-601809414e38','97f22f4d-0e7c-61e6-6799-6017cac0b6fb',89,'2021-02-01 14:00:42',0),('28d0a15f-980d-bb7f-c25d-60180a9aac50','920ed607-4a99-1bc8-930d-60180a7c44f1','487209ce-296c-c755-871c-6017caa41be8',80,'2021-02-01 14:04:44',0),('28e02c56-34f3-07cd-cd22-60180f37ae10','52c526cb-9c4a-23b6-b39f-60180f9089b2','1e1803a1-daa9-c147-059f-6017ca58540c',80,'2021-02-01 14:26:44',0),('28e55a68-2fb8-9d76-1b52-601809c51f18','54779abd-cf10-d4b8-3946-601809414e38','9c902b35-c1f4-32bf-0803-6017ca926dbe',90,'2021-02-01 14:00:42',0),('28f85027-8d07-f808-87ad-60180ad79c8f','920ed607-4a99-1bc8-930d-60180a7c44f1','3c8f0a2d-b87e-6e7e-696c-6017caac546a',-99,'2021-02-01 14:04:44',0),('2905898c-d78b-ff0e-59e1-601809eef15a','59940d2d-46d1-e3fa-8112-60180940c994','6ffacbb5-5dca-0c27-5fae-6017ca1495ba',80,'2021-02-01 14:02:35',0),('292297fb-6be4-5cc3-88c6-6018101fdcdc','145ce98a-0b57-3e66-8f20-60180fdba411','6474a3b1-3bc2-19c3-1ccd-6017ca43f71a',75,'2021-02-01 14:29:35',0),('29249237-41dd-10e9-1264-601811a478a9','a0b17db8-3562-2520-7a5b-60181003f945','e336c29d-2d18-451f-7bbc-6017ca49e15c',75,'2021-02-01 14:33:27',0),('2944e6b9-e89b-caa3-01b7-601809280bc3','54779abd-cf10-d4b8-3946-601809414e38','9b63b5a6-2600-6a71-577a-6017ca89ae0e',90,'2021-02-01 14:00:42',0),('2945002a-a026-0108-19f6-60181110231f','a0b17db8-3562-2520-7a5b-60181003f945','63ee943e-4bff-3fa7-bf48-6017ca030834',75,'2021-02-01 14:33:27',0),('29551ecc-df6c-693f-0a7b-60180a62b874','920ed607-4a99-1bc8-930d-60180a7c44f1','11450ed5-1ece-4320-83bb-6017ca13f200',80,'2021-02-01 14:04:44',0),('29697dff-2860-b696-d315-6018102fa16b','145ce98a-0b57-3e66-8f20-60180fdba411','424e9d02-1a6d-b40c-3d77-6017ca2a199b',75,'2021-02-01 14:29:35',0),('2969bb7d-8562-dfa1-5f3b-601809ca9778','54779abd-cf10-d4b8-3946-601809414e38','9dc29313-6fce-8cc2-bab3-6017ca93cb71',90,'2021-02-01 14:00:42',0),('2971ff7a-054d-627d-b800-601809720b14','59940d2d-46d1-e3fa-8112-60180940c994','71fc608d-8555-80f2-5372-6017cae78ce3',80,'2021-02-01 14:02:35',0),('298f4142-3713-57f7-40fb-60180a4e04cb','920ed607-4a99-1bc8-930d-60180a7c44f1','69c40028-8193-04ae-ea6a-6017ca36aaa1',-99,'2021-02-01 14:04:44',0),('299e1e3a-858f-09cf-3c1d-60180f82e13e','52c526cb-9c4a-23b6-b39f-60180f9089b2','487209ce-296c-c755-871c-6017caa41be8',80,'2021-02-01 14:26:44',0),('29a784b1-f14c-30d1-9bc5-60180ffd48b5','52c526cb-9c4a-23b6-b39f-60180f9089b2','300fc3b9-b50e-5fdc-1d14-6017cacc420b',80,'2021-02-01 14:26:44',0),('29aad0af-3146-95eb-9703-6018096af4d6','54779abd-cf10-d4b8-3946-601809414e38','9d2620e1-e27a-9565-dbda-6017ca3ffa98',90,'2021-02-01 14:00:42',0),('29b839e8-e7d7-59be-139c-60180916a857','59940d2d-46d1-e3fa-8112-60180940c994','71456b4c-71e5-7e70-8411-6017caf4f852',-99,'2021-02-01 14:02:35',0),('29caa0f6-4552-44b9-46fc-60180adaa36b','920ed607-4a99-1bc8-930d-60180a7c44f1','f3d45d6c-92bf-593e-dc4e-6017ca41cbee',80,'2021-02-01 14:04:44',0),('29e3a3a0-a2b4-2b96-61a3-601809344754','54779abd-cf10-d4b8-3946-601809414e38','99735554-9a7d-a7af-c53e-6017ca281ffa',90,'2021-02-01 14:00:42',0),('29e584e4-68d7-b662-869e-601810545815','145ce98a-0b57-3e66-8f20-60180fdba411','63ee943e-4bff-3fa7-bf48-6017ca030834',75,'2021-02-01 14:29:35',0),('29ed23a5-5acf-ff0b-06bb-6018105c31f8','bef307c8-d095-6341-6352-601810875b07','ba473bcc-7238-9791-6f76-6017ca6721e5',75,'2021-02-01 14:31:59',0),('29f630f3-44a9-0d43-3769-60181050e448','145ce98a-0b57-3e66-8f20-60180fdba411','41257a11-4623-22fc-5899-6017ca328bb7',-99,'2021-02-01 14:29:35',0),('29f678b1-7e18-20d7-6e41-601809e1fb71','59940d2d-46d1-e3fa-8112-60180940c994','6f4ed682-115a-e071-aa74-6017caf739a3',80,'2021-02-01 14:02:35',0),('29f6daad-ed45-22b3-bc36-601811f56a33','a0b17db8-3562-2520-7a5b-60181003f945','65fd01e4-d02e-d387-a060-6017ca1e4705',75,'2021-02-01 14:33:27',0),('29fa1c16-14f3-e768-9254-6018118544c2','a0b17db8-3562-2520-7a5b-60181003f945','e2da0686-74cf-c6c2-177d-6017ca10edf2',75,'2021-02-01 14:33:27',0),('2a2db5f0-791e-7008-4e82-60180942df90','54779abd-cf10-d4b8-3946-601809414e38','9e6be21b-d7c9-3519-4dfc-6017ca2292c5',90,'2021-02-01 14:00:42',0),('2a3206f9-3456-fecf-c471-6018102393a5','bef307c8-d095-6341-6352-601810875b07','8c8ae67b-d645-cdb5-f0a8-6017ca1e81ce',-99,'2021-02-01 14:31:59',0),('2a35376a-96b6-10fe-ec4c-60180ac8718f','920ed607-4a99-1bc8-930d-60180a7c44f1','589808bc-2514-c7b6-0600-6017ca25411d',-98,'2021-02-01 14:04:44',0),('2a3564e5-7246-c247-f06a-60180f3c54fc','52c526cb-9c4a-23b6-b39f-60180f9089b2','3c8f0a2d-b87e-6e7e-696c-6017caac546a',-99,'2021-02-01 14:26:44',0),('2a630c8d-cee0-647d-622d-601809346c0d','54779abd-cf10-d4b8-3946-601809414e38','98bae92f-53aa-2a9a-f0ae-6017ca2d9978',90,'2021-02-01 14:00:42',0),('2a678b0f-4bc8-67c9-7f64-60181041b801','145ce98a-0b57-3e66-8f20-60180fdba411','65fd01e4-d02e-d387-a060-6017ca1e4705',75,'2021-02-01 14:29:35',0),('2a6d9eb0-9754-6c3c-7f07-601809f2a906','59940d2d-46d1-e3fa-8112-60180940c994','74193c93-40a8-b4b3-61b6-6017cabdd106',-99,'2021-02-01 14:02:35',0),('2a798f5f-10e3-cbe5-9cd3-60180a642d6d','920ed607-4a99-1bc8-930d-60180a7c44f1','91c30556-a5c1-71fa-6265-6017ca41003a',80,'2021-02-01 14:04:44',0),('2a8bc4f1-9ff0-a05c-df8c-601811ab4809','a0b17db8-3562-2520-7a5b-60181003f945','e5d46f78-d381-0c69-bf09-6017caaa5a9a',75,'2021-02-01 14:33:27',0),('2a95f77f-5dab-9b2f-611a-601809ec24a4','54779abd-cf10-d4b8-3946-601809414e38','bc5c5ae8-69e2-79f1-be97-6017ca327292',89,'2021-02-01 14:00:42',0),('2aa382b9-a7c0-6953-d59f-60180f751eeb','52c526cb-9c4a-23b6-b39f-60180f9089b2','11450ed5-1ece-4320-83bb-6017ca13f200',80,'2021-02-01 14:26:44',0),('2aa723b6-b11b-d237-c98d-60180a27143d','920ed607-4a99-1bc8-930d-60180a7c44f1','7c7a0933-8857-c660-fe54-6017ca5b86aa',80,'2021-02-01 14:04:44',0),('2add221a-a35b-08a8-85ce-601811f7b321','a0b17db8-3562-2520-7a5b-60181003f945','650abd63-f082-75a4-a58d-6017ca54dd12',-99,'2021-02-01 14:33:27',0),('2addce9f-c3dd-574c-bf5c-601809e77e08','54779abd-cf10-d4b8-3946-601809414e38','c0d49832-2531-68de-84ac-6017cabd7e17',90,'2021-02-01 14:00:42',0),('2aeb1171-a648-ef1d-be0e-60180f3d640d','52c526cb-9c4a-23b6-b39f-60180f9089b2','31869517-c36b-60a8-d27a-6017ca2d73ca',80,'2021-02-01 14:26:44',0),('2aee2fad-3efb-2f0d-9aa9-60180f732257','52c526cb-9c4a-23b6-b39f-60180f9089b2','69c40028-8193-04ae-ea6a-6017ca36aaa1',-99,'2021-02-01 14:26:44',0),('2aeeff87-e40c-bd71-d4d7-6018119819ca','a0b17db8-3562-2520-7a5b-60181003f945','e40e7e28-78b1-0bae-fa91-6017caee97f4',-99,'2021-02-01 14:33:27',0),('2aef93bf-842d-8327-67d8-60180a4c733d','920ed607-4a99-1bc8-930d-60180a7c44f1','a59f0241-8c23-bf89-0b3c-6017caf9cfab',80,'2021-02-01 14:04:44',0),('2b113823-ba63-918e-95ee-601809c43af0','59940d2d-46d1-e3fa-8112-60180940c994','6ea461d8-ddf8-92b2-3408-6017ca96a386',80,'2021-02-01 14:02:35',0),('2b140fd8-7500-e42b-b73a-6018100200e7','bef307c8-d095-6341-6352-601810875b07','92b903d6-cb45-ba2b-3c16-6017caf5e9e9',75,'2021-02-01 14:31:59',0),('2b183759-edeb-9455-2b19-6018108b2863','145ce98a-0b57-3e66-8f20-60180fdba411','3f22e375-6be6-8eea-a6a5-6017ca1296e5',75,'2021-02-01 14:29:35',0),('2b24c8d9-9f5d-b125-df48-60180af43a8a','920ed607-4a99-1bc8-930d-60180a7c44f1','9ced0d8b-c4fb-fbbd-f69f-6017ca4e42e6',-99,'2021-02-01 14:04:44',0),('2b4d0492-2477-4552-2d39-601809107efd','59940d2d-46d1-e3fa-8112-60180940c994','e2bc5387-7429-ab0a-3d69-6017ca359d7b',89,'2021-02-01 14:02:35',0),('2b617c1f-74d2-33c7-fa39-60181046ca59','145ce98a-0b57-3e66-8f20-60180fdba411','650abd63-f082-75a4-a58d-6017ca54dd12',-99,'2021-02-01 14:29:35',0),('2b6b2ffc-ae50-2fdc-8af5-60180a88b25d','920ed607-4a99-1bc8-930d-60180a7c44f1','72100f4a-ad81-b819-d3dd-6017ca9d1452',80,'2021-02-01 14:04:44',0),('2b6b981a-29cd-bc85-af9a-6018110ff1dd','a0b17db8-3562-2520-7a5b-60181003f945','e27db9aa-0c69-f8be-e7d4-6017ca4a1b9c',75,'2021-02-01 14:33:27',0),('2b779bca-1860-a872-f7b5-60180f10d0ba','52c526cb-9c4a-23b6-b39f-60180f9089b2','f3d45d6c-92bf-593e-dc4e-6017ca41cbee',80,'2021-02-01 14:26:44',0),('2b7bc441-252b-b0d3-e0c9-601809db4999','59940d2d-46d1-e3fa-8112-60180940c994','e5173f3f-76a1-cf58-1013-6017cae80777',80,'2021-02-01 14:02:35',0),('2b842951-1117-8174-179b-601809799ef9','54779abd-cf10-d4b8-3946-601809414e38','c03fe354-e2f4-98ae-d59a-6017ca91e9d3',90,'2021-02-01 14:00:42',0),('2ba40f58-8ea2-60f8-09bc-60180945a936','54779abd-cf10-d4b8-3946-601809414e38','e63b841e-387c-ad8e-8f4b-6017ca3c9896',90,'2021-02-01 14:00:42',0),('2ba730ec-7eff-5a39-f540-60180a89b56e','920ed607-4a99-1bc8-930d-60180a7c44f1','ac03085e-eb42-7691-4a87-6017ca928f01',-99,'2021-02-01 14:04:44',0),('2ba86d40-f9e7-88aa-93ff-60181154d698','a0b17db8-3562-2520-7a5b-60181003f945','631e9841-0a93-45b7-c37a-6017caecbf57',75,'2021-02-01 14:33:27',0),('2bb130f9-6876-0c18-18fe-601809e5f2a3','54779abd-cf10-d4b8-3946-601809414e38','c38d217e-6736-c873-0d76-6017ca449eb3',90,'2021-02-01 14:00:42',0),('2bc30314-56c9-d4e8-f500-601809995d0a','59940d2d-46d1-e3fa-8112-60180940c994','e4a782d6-f3e0-5420-7aa0-6017ca7dfddb',80,'2021-02-01 14:02:35',0),('2bc51bce-db56-d9ce-ee5c-60180fb95522','52c526cb-9c4a-23b6-b39f-60180f9089b2','589808bc-2514-c7b6-0600-6017ca25411d',-98,'2021-02-01 14:26:44',0),('2bcacc38-8e9d-a9cd-8743-601810e54b8c','bef307c8-d095-6341-6352-601810875b07','bf82a946-415f-bc3a-8fc7-6017ca457085',-99,'2021-02-01 14:31:59',0),('2bde48e5-7b03-c495-752c-6018094aa3e7','54779abd-cf10-d4b8-3946-601809414e38','c1e1203c-3572-0db8-24e2-6017ca610d0c',90,'2021-02-01 14:00:42',0),('2be435e3-1a6e-bc07-5324-6018095315f7','59940d2d-46d1-e3fa-8112-60180940c994','e5e30ecd-895c-7f29-b5f7-6017ca1db364',80,'2021-02-01 14:02:35',0),('2be5f46e-4173-f84f-1ae5-6018100b4e01','145ce98a-0b57-3e66-8f20-60180fdba411','631e9841-0a93-45b7-c37a-6017caecbf57',75,'2021-02-01 14:29:35',0),('2be976ce-e37a-12c9-e078-60180f0ea436','52c526cb-9c4a-23b6-b39f-60180f9089b2','30f90944-e730-df75-95e6-6017ca1fa55b',-99,'2021-02-01 14:26:44',0),('2bf1167c-f37c-0d81-53d2-60180aeb0e1c','920ed607-4a99-1bc8-930d-60180a7c44f1','64180a9b-ae83-35f9-59dc-6017ca309e5d',80,'2021-02-01 14:04:44',0),('2c1cd382-760a-30b1-5b20-60181142b5b5','a0b17db8-3562-2520-7a5b-60181003f945','e6ed1604-861b-1b53-e18d-6017ca9f3220',-99,'2021-02-01 14:33:27',0),('2c26163c-3bd7-9101-b691-60181024449d','145ce98a-0b57-3e66-8f20-60180fdba411','43128bab-53ee-f54c-e979-6017ca31494e',-99,'2021-02-01 14:29:35',0),('2c46d24c-19ac-1102-83c3-60180fb568f8','52c526cb-9c4a-23b6-b39f-60180f9089b2','91c30556-a5c1-71fa-6265-6017ca41003a',80,'2021-02-01 14:26:44',0),('2c48fa3e-0820-e979-094a-6018119647f0','a0b17db8-3562-2520-7a5b-60181003f945','66a0808f-81f2-5d63-33cb-6017ca6f04b5',-99,'2021-02-01 14:33:27',0),('2c6094e4-9dba-978e-4d28-60180926356e','54779abd-cf10-d4b8-3946-601809414e38','bee54d6c-3344-be7c-01e4-6017cabf69c7',90,'2021-02-01 14:00:42',0),('2c68b432-c423-7bee-f24f-60180a484c31','920ed607-4a99-1bc8-930d-60180a7c44f1','83bafba5-b28d-645d-48f2-6017ca1c1383',89,'2021-02-01 14:04:44',0),('2c93040d-9198-77db-0be0-60180f4f9017','52c526cb-9c4a-23b6-b39f-60180f9089b2','daddf798-fbca-a01d-92af-6017ca71624e',80,'2021-02-01 14:26:44',0),('2c9b1781-0e93-fc45-c813-60180f1d736b','52c526cb-9c4a-23b6-b39f-60180f9089b2','7c7a0933-8857-c660-fe54-6017ca5b86aa',80,'2021-02-01 14:26:44',0),('2c9ce951-85ce-c26b-d735-601809831d91','54779abd-cf10-d4b8-3946-601809414e38','c4ba4945-bb22-2ce1-03e6-6017ca627fb1',90,'2021-02-01 14:00:42',0),('2cb5f27c-b3b7-1bb8-ed55-60180af7bd2e','920ed607-4a99-1bc8-930d-60180a7c44f1','8a35bd21-0821-a6ef-ec50-6017caa61ccb',80,'2021-02-01 14:04:44',0),('2cbe07c1-0a23-8ca7-782b-60180a9360a7','920ed607-4a99-1bc8-930d-60180a7c44f1','f4bb0782-df1c-f4d1-1c0d-6017ca07bb9d',80,'2021-02-01 14:04:44',0),('2cc05ea9-25b4-fdf8-878d-601810c9911d','145ce98a-0b57-3e66-8f20-60180fdba411','66a0808f-81f2-5d63-33cb-6017ca6f04b5',-99,'2021-02-01 14:29:35',0),('2cc6771e-5eab-954f-d8e5-60180976a1af','59940d2d-46d1-e3fa-8112-60180940c994','e57cbf72-739f-a668-7683-6017cae2687a',-99,'2021-02-01 14:02:35',0),('2cd3d1a6-9269-af3e-b7fd-601811f4437f','a0b17db8-3562-2520-7a5b-60181003f945','e206debd-89f8-a796-b4da-6017ca4eff96',75,'2021-02-01 14:33:27',0),('2cf3b787-1848-003e-18bf-60180a9b8758','920ed607-4a99-1bc8-930d-60180a7c44f1','8914ea66-9b43-bf8d-ab0f-6017cae44b71',80,'2021-02-01 14:04:44',0),('2cfc2ff7-2afb-f6dd-06bf-60180fe488d8','52c526cb-9c4a-23b6-b39f-60180f9089b2','2fc42adb-d386-a4c7-ec11-6017cae90eed',80,'2021-02-01 14:26:44',0),('2d0543bd-3c0a-e483-5975-6018098b5d8b','54779abd-cf10-d4b8-3946-601809414e38','bd19cf98-97d8-2daf-1f6b-6017ca395562',90,'2021-02-01 14:00:42',0),('2d29d445-a329-e48b-2bf4-6018092b7181','59940d2d-46d1-e3fa-8112-60180940c994','e3eed07f-5bb3-2703-e548-6017caddebbf',80,'2021-02-01 14:02:35',0),('2d3b823a-41d3-40a7-cae2-60180addd43a','920ed607-4a99-1bc8-930d-60180a7c44f1','8bf0667b-a379-e360-373a-6017cae0f35a',80,'2021-02-01 14:04:44',0),('2d3f61fc-b7f2-b8f0-d7f5-60181130d008','a0b17db8-3562-2520-7a5b-60181003f945','626d8d6b-2260-4f45-9d57-6017ca9cec93',75,'2021-02-01 14:33:27',0),('2d4047f0-acdc-55a5-fff7-601809e7dc77','54779abd-cf10-d4b8-3946-601809414e38','c249c7e4-7796-6bf7-7a7b-6017ca2c5830',89,'2021-02-01 14:00:42',0),('2d555246-0222-a31b-84fb-60180f88c0f8','52c526cb-9c4a-23b6-b39f-60180f9089b2','a59f0241-8c23-bf89-0b3c-6017caf9cfab',80,'2021-02-01 14:26:44',0),('2d58ba75-b821-6808-0135-601809d76811','59940d2d-46d1-e3fa-8112-60180940c994','e72ba550-9aea-e958-95e8-6017ca63fa05',-99,'2021-02-01 14:02:35',0),('2d6271f4-2686-54fd-b2da-60181025934c','bef307c8-d095-6341-6352-601810875b07','b9a397e5-66a6-9988-7929-6017cae9079d',75,'2021-02-01 14:31:59',0),('2d87770d-3528-4d7d-3a8f-601811f01fb6','a0b17db8-3562-2520-7a5b-60181003f945','d3d750bd-c58c-c030-00d9-6017ca19f0ac',-98,'2021-02-01 14:33:27',0),('2d936d31-82ee-b0d9-d797-60180fe71253','52c526cb-9c4a-23b6-b39f-60180f9089b2','3214d713-d19f-6c9e-ceb2-6017ca55bf89',-99,'2021-02-01 14:26:44',0),('2d954f69-9aac-0f6c-136a-6018102c3617','145ce98a-0b57-3e66-8f20-60180fdba411','626d8d6b-2260-4f45-9d57-6017ca9cec93',75,'2021-02-01 14:29:35',0),('2d9cc1d9-48cc-c126-bed9-60180903f98c','59940d2d-46d1-e3fa-8112-60180940c994','e33de50b-0af6-759b-2e46-6017ca41bb50',80,'2021-02-01 14:02:35',0),('2da94aba-71a2-4812-c55e-6018093e5bcf','54779abd-cf10-d4b8-3946-601809414e38','c6489af9-2211-2408-2dc5-6017ca8bcab5',90,'2021-02-01 14:00:42',0),('2db1f075-f689-a140-9d8c-60180a20eb0d','920ed607-4a99-1bc8-930d-60180a7c44f1','8b65b469-c5df-e8ca-4420-6017caa83b89',-99,'2021-02-01 14:04:44',0),('2dbabb35-f7b5-6ffd-2e01-60180fc37eb8','52c526cb-9c4a-23b6-b39f-60180f9089b2','9ced0d8b-c4fb-fbbd-f69f-6017ca4e42e6',-99,'2021-02-01 14:26:44',0),('2df219e4-8471-c190-27fb-601809500699','54779abd-cf10-d4b8-3946-601809414e38','c5c44e91-99cf-3ac6-a7ea-6017caac610a',90,'2021-02-01 14:00:42',0),('2df86a6e-5519-7194-141c-601809f243c4','59940d2d-46d1-e3fa-8112-60180940c994','2ea0f1e5-5ad1-9ed1-62be-6017cab19b3e',-98,'2021-02-01 14:02:35',0),('2e20b8e2-0559-9334-d5db-60180a2f5631','920ed607-4a99-1bc8-930d-60180a7c44f1','882f3059-afd6-c38d-4091-6017ca2bde86',80,'2021-02-01 14:04:44',0),('2e30b734-8476-c9d5-3fec-601809b1d812','54779abd-cf10-d4b8-3946-601809414e38','c794c5c8-1658-d162-4728-6017caec8ae8',90,'2021-02-01 14:00:42',0),('2e3f38ce-76a3-b852-47d2-6018100df1f7','145ce98a-0b57-3e66-8f20-60180fdba411','3d0a7731-1875-5403-859e-6017ca2605dd',75,'2021-02-01 14:29:35',0),('2e576bfa-af12-c4f9-1a76-601809d77fb4','54779abd-cf10-d4b8-3946-601809414e38','c706f622-a7c2-cd76-47f4-6017ca5f1ee9',90,'2021-02-01 14:00:42',0),('2e6c6fd8-3735-0e59-db7c-601811ca33f2','a0b17db8-3562-2520-7a5b-60181003f945','da05b32a-31d0-ce97-2967-6017caed3d34',75,'2021-02-01 14:33:27',0),('2e6c9961-3563-3116-dc9e-60181020ae62','145ce98a-0b57-3e66-8f20-60180fdba411','52e18872-14a7-3b94-8d54-6017ca3a8f42',-98,'2021-02-01 14:29:35',0),('2e72e321-59da-a173-39b0-60180fa355fd','52c526cb-9c4a-23b6-b39f-60180f9089b2','72100f4a-ad81-b819-d3dd-6017ca9d1452',80,'2021-02-01 14:26:44',0),('2e77e638-dcd7-f34b-a871-601809211a49','59940d2d-46d1-e3fa-8112-60180940c994','307a06a7-17d6-8be6-5b8d-6017ca1d1fe5',80,'2021-02-01 14:02:35',0),('2e83b41e-7822-978c-a49d-60180ace5c60','920ed607-4a99-1bc8-930d-60180a7c44f1','8c8ae67b-d645-cdb5-f0a8-6017ca1e81ce',-99,'2021-02-01 14:04:44',0),('2e8fcdfe-ca30-1943-a79f-6018119f31a5','a0b17db8-3562-2520-7a5b-60181003f945','52e18872-14a7-3b94-8d54-6017ca3a8f42',-98,'2021-02-01 14:33:27',0),('2eb0e952-6403-632f-5af3-60180f23f06a','52c526cb-9c4a-23b6-b39f-60180f9089b2','2f59f53b-49d7-6e72-6586-6017ca3316c8',80,'2021-02-01 14:26:44',0),('2ec32725-daee-1cc9-f635-6018091d8ccc','59940d2d-46d1-e3fa-8112-60180940c994','300fc3b9-b50e-5fdc-1d14-6017cacc420b',80,'2021-02-01 14:02:35',0),('2ed3ba9b-a21e-9e0a-4da2-60180a77f8a8','920ed607-4a99-1bc8-930d-60180a7c44f1','8736f700-cfc6-914f-0006-6017ca6a5053',80,'2021-02-01 14:04:44',0),('2edc8b48-e011-c753-ac66-60180f2bfd5f','52c526cb-9c4a-23b6-b39f-60180f9089b2','ac03085e-eb42-7691-4a87-6017ca928f01',-99,'2021-02-01 14:26:44',0),('2ee41764-963d-a4c0-50ab-6018097fdfc9','54779abd-cf10-d4b8-3946-601809414e38','c5137ed7-10f9-bc73-4a6e-6017ca455098',90,'2021-02-01 14:00:42',0),('2eed39c7-2f79-b176-0ee8-60180999909e','59940d2d-46d1-e3fa-8112-60180940c994','31869517-c36b-60a8-d27a-6017ca2d73ca',80,'2021-02-01 14:02:35',0),('2ef4680e-d4da-c351-b614-6018111631d8','a0b17db8-3562-2520-7a5b-60181003f945','d6db73f5-8776-66f9-6c1d-6017caeb8262',75,'2021-02-01 14:33:27',0),('2ef60072-ddc8-84b6-84a6-601811fe1d9c','a0b17db8-3562-2520-7a5b-60181003f945','106a7216-7119-fcfc-2b1e-6017ca6cc264',-99,'2021-02-01 14:33:27',0),('2f042e11-ed13-6364-ed79-6018118c455b','a0b17db8-3562-2520-7a5b-60181003f945','55416b30-5fa8-b4e0-0a54-6017ca6b9792',75,'2021-02-01 14:33:27',0),('2f24d067-aabf-2ab9-6a00-601809f6930a','59940d2d-46d1-e3fa-8112-60180940c994','30f90944-e730-df75-95e6-6017ca1fa55b',-99,'2021-02-01 14:02:35',0),('2f279a79-9863-2e65-eba4-601809bb64c0','54779abd-cf10-d4b8-3946-601809414e38','c8f1f7e3-8a5a-b42f-bd7d-6017ca8013d7',90,'2021-02-01 14:00:42',0),('2f2f017e-b9b9-e184-5c72-60180a18f7b3','920ed607-4a99-1bc8-930d-60180a7c44f1','11076fd5-1162-9638-0052-6017ca6891e0',80,'2021-02-01 14:04:44',0),('2f33289d-f031-d677-c3cd-601810be984c','145ce98a-0b57-3e66-8f20-60180fdba411','7a6a3fd3-36d4-95b3-c51c-6017cae9ba36',-98,'2021-02-01 14:29:35',0),('2f56f227-aa4b-855e-6d05-60180fcc6312','52c526cb-9c4a-23b6-b39f-60180f9089b2','64180a9b-ae83-35f9-59dc-6017ca309e5d',80,'2021-02-01 14:26:44',0),('2f6a52b5-478f-fe24-b948-60180973e78c','59940d2d-46d1-e3fa-8112-60180940c994','2fc42adb-d386-a4c7-ec11-6017cae90eed',80,'2021-02-01 14:02:35',0),('2f70af74-4267-565e-1813-6018090de0ff','54779abd-cf10-d4b8-3946-601809414e38','c431144f-3b85-b653-2799-6017ca279bff',90,'2021-02-01 14:00:42',0),('2f740d5c-4f0f-5382-6ee7-601810909755','145ce98a-0b57-3e66-8f20-60180fdba411','55416b30-5fa8-b4e0-0a54-6017ca6b9792',75,'2021-02-01 14:29:35',0),('2f81b08e-fd4d-446e-3bcb-60180f47b7c8','52c526cb-9c4a-23b6-b39f-60180f9089b2','14bda9be-7f00-c47d-4d67-6017caadd7c7',-98,'2021-02-01 14:26:44',0),('2f83f9de-930a-2796-8e56-601811c685d6','a0b17db8-3562-2520-7a5b-60181003f945','daddf798-fbca-a01d-92af-6017ca71624e',75,'2021-02-01 14:33:27',0),('2f898577-846f-38a0-f6f0-60180a583797','920ed607-4a99-1bc8-930d-60180a7c44f1','60d4e068-e997-5fa7-cb8f-6017cafcf344',-98,'2021-02-01 14:04:44',0),('2f9c7037-43f1-cf79-e467-6018094f0654','59940d2d-46d1-e3fa-8112-60180940c994','3214d713-d19f-6c9e-ceb2-6017ca55bf89',-99,'2021-02-01 14:02:35',0),('2f9d071f-66c7-ce97-50f9-6018095fa7f3','54779abd-cf10-d4b8-3946-601809414e38','cd88e407-1956-c897-a607-6017ca340c28',89,'2021-02-01 14:00:42',0),('2fc326c0-5b6a-887d-b8e1-60180ac4403f','920ed607-4a99-1bc8-930d-60180a7c44f1','651f020d-f67a-ce98-814e-6017ca62cee5',80,'2021-02-01 14:04:44',0),('2fccbf67-3b25-f854-fb0f-60180973451f','59940d2d-46d1-e3fa-8112-60180940c994','2f59f53b-49d7-6e72-6586-6017ca3316c8',80,'2021-02-01 14:02:35',0),('2fd246a6-e77f-d22d-2df1-60180fefc82c','52c526cb-9c4a-23b6-b39f-60180f9089b2','83bafba5-b28d-645d-48f2-6017ca1c1383',-98,'2021-02-01 14:26:44',0),('2fe2237c-90d1-2ec3-f2ab-601809244b5a','54779abd-cf10-d4b8-3946-601809414e38','d0901d67-9ee5-6676-9f62-6017ca8fda47',90,'2021-02-01 14:00:42',0),('300c5ddd-a0b1-b8ed-2924-601810cadc29','bef307c8-d095-6341-6352-601810875b07','97e9402e-af05-1ead-a076-6017ca207f26',89,'2021-02-01 14:31:59',0),('300c846c-8e4d-0446-d51b-60180a21ad46','920ed607-4a99-1bc8-930d-60180a7c44f1','63623684-279d-11f2-ff80-6017ca26b7c2',80,'2021-02-01 14:04:44',0),('301dcf40-d41f-c478-e832-6018096474ea','54779abd-cf10-d4b8-3946-601809414e38','cfd801f1-971b-05c3-f426-6017cac294ff',90,'2021-02-01 14:00:42',0),('302a07d0-a6b7-b2dd-9beb-6018090726fb','54779abd-cf10-d4b8-3946-601809414e38','e3f720d1-c9c2-381c-98d5-6017ca7e0a85',90,'2021-02-01 14:00:42',0),('302a343c-e98a-f2f5-b715-6018111456ca','a0b17db8-3562-2520-7a5b-60181003f945','da54274e-8c18-2757-f4a0-6017caf8249a',-99,'2021-02-01 14:33:27',0),('3038a935-caa5-74e2-4002-60180a2ff204','920ed607-4a99-1bc8-930d-60180a7c44f1','67041382-dd21-ba5f-c8b6-6017ca5a32b2',80,'2021-02-01 14:04:44',0),('3040cdb6-7364-e160-e948-60180f107e83','52c526cb-9c4a-23b6-b39f-60180f9089b2','8a35bd21-0821-a6ef-ec50-6017caa61ccb',80,'2021-02-01 14:26:44',0),('304be803-ce0c-2c75-c1f9-60180917af75','54779abd-cf10-d4b8-3946-601809414e38','d186ebc9-f248-c713-57ad-6017ca877318',90,'2021-02-01 14:00:42',0),('30884a10-fc5b-faf8-c12c-601809786e8c','59940d2d-46d1-e3fa-8112-60180940c994','14bda9be-7f00-c47d-4d67-6017caadd7c7',-98,'2021-02-01 14:02:35',0),('308e30fc-14c1-2c79-8212-60180f17c6e0','52c526cb-9c4a-23b6-b39f-60180f9089b2','8914ea66-9b43-bf8d-ab0f-6017cae44b71',80,'2021-02-01 14:26:44',0),('308f0f02-f6eb-eb72-8ddd-601811ad3378','a0b17db8-3562-2520-7a5b-60181003f945','54e1674a-2c22-cc1d-10f2-6017cace8b60',75,'2021-02-01 14:33:27',0),('309339ad-f377-b0f0-fee0-60180af53f64','920ed607-4a99-1bc8-930d-60180a7c44f1','65ec59d2-6ab2-6a0d-f80b-6017ca4e02aa',-99,'2021-02-01 14:04:44',0),('30ab2472-8fbe-0bd5-c3f8-601809d64536','54779abd-cf10-d4b8-3946-601809414e38','d0def67a-7a7d-3dea-616d-6017ca0ca5c0',90,'2021-02-01 14:00:42',0),('30c05d86-fc6c-3d54-7e77-601811248060','a0b17db8-3562-2520-7a5b-60181003f945','d60ff063-6f4a-4ed7-4dae-6017ca3f6b87',75,'2021-02-01 14:33:27',0),('30ca445c-ad67-af4d-e5f1-6018103662ae','145ce98a-0b57-3e66-8f20-60180fdba411','54e1674a-2c22-cc1d-10f2-6017cace8b60',75,'2021-02-01 14:29:35',0),('30d52ec0-e082-ad37-9646-601809ec59c2','59940d2d-46d1-e3fa-8112-60180940c994','1885785c-ffcf-a049-a431-6017ca33ab98',80,'2021-02-01 14:02:35',0),('30e79daf-f3ac-9146-93c3-60180f001270','52c526cb-9c4a-23b6-b39f-60180f9089b2','1885785c-ffcf-a049-a431-6017ca33ab98',80,'2021-02-01 14:26:44',0),('30ee6ddf-6177-c010-2c6d-601809c0385b','54779abd-cf10-d4b8-3946-601809414e38','cf1e856c-b6ab-5b98-3ad5-6017ca7fb7eb',90,'2021-02-01 14:00:42',0),('30ef6d21-6c42-2471-0370-60180f0984b4','52c526cb-9c4a-23b6-b39f-60180f9089b2','8bf0667b-a379-e360-373a-6017cae0f35a',80,'2021-02-01 14:26:44',0),('30f779e2-f19d-da4a-bbe5-60180a083ccd','920ed607-4a99-1bc8-930d-60180a7c44f1','62d0a189-4595-a430-d15c-6017cacc3713',80,'2021-02-01 14:04:44',0),('3119fd3b-265c-9eb5-96f4-6018092cc600','54779abd-cf10-d4b8-3946-601809414e38','d205df45-00e2-fd60-1321-6017caaef991',90,'2021-02-01 14:00:42',0),('312a541f-958d-1403-b3bb-60180a3cda81','920ed607-4a99-1bc8-930d-60180a7c44f1','67f497bf-cd72-1d8a-453a-6017ca594a2b',-99,'2021-02-01 14:04:44',0),('31355f44-e05c-e4c5-f73b-6018090067a8','59940d2d-46d1-e3fa-8112-60180940c994','17e1ca17-e91d-6b29-f43b-6017ca7b4f1f',80,'2021-02-01 14:02:35',0),('3151cddb-90a9-dd1a-b051-601810dba801','bef307c8-d095-6341-6352-601810875b07','9dad8dfc-64d2-5c22-7fed-6017caa67ae1',75,'2021-02-01 14:31:59',0),('315d26ef-82a0-c466-b8b8-60180944dcc0','59940d2d-46d1-e3fa-8112-60180940c994','1a3588bc-571c-f7ab-7799-6017cab6e09b',80,'2021-02-01 14:02:35',0),('315f56db-d226-4c4e-b1ef-6018095d882d','54779abd-cf10-d4b8-3946-601809414e38','ce72846b-97fc-6dbc-f5ff-6017ca04b487',90,'2021-02-01 14:00:42',0),('31664850-cf12-56ad-1775-601810bbc3d7','145ce98a-0b57-3e66-8f20-60180fdba411','7eb70d04-1b91-0b81-d33f-6017ca4c7a95',75,'2021-02-01 14:29:35',0),('3167cc86-604a-c178-9212-60180a3e7806','920ed607-4a99-1bc8-930d-60180a7c44f1','61b172af-81fb-c66f-3fb4-6017ca4545b2',80,'2021-02-01 14:04:44',0),('31855bd2-92f1-5f3e-dc1c-601809b112b4','54779abd-cf10-d4b8-3946-601809414e38','3bf2f429-039e-9b9a-086b-6017cad8b024',89,'2021-02-01 14:00:42',0),('31971500-53db-ebc8-67d0-60180fa5a3f6','52c526cb-9c4a-23b6-b39f-60180f9089b2','17e1ca17-e91d-6b29-f43b-6017ca7b4f1f',80,'2021-02-01 14:26:44',0),('31aafe5e-168a-8f7a-c5a1-6018096fcada','59940d2d-46d1-e3fa-8112-60180940c994','198739f4-0bbd-3331-cf7a-6017ca5f75d9',-99,'2021-02-01 14:02:35',0),('31c7c145-f3bf-dd79-4ba9-60180af511cd','920ed607-4a99-1bc8-930d-60180a7c44f1','6ac9b95e-2b95-8b91-edb2-6017cafd2c72',89,'2021-02-01 14:04:44',0),('31d41b35-b664-dc36-bb94-6018090f6dd0','59940d2d-46d1-e3fa-8112-60180940c994','175189ff-4043-fa73-2651-6017ca9d5d05',80,'2021-02-01 14:02:35',0),('31d4681e-064d-4997-c59a-60180929b336','54779abd-cf10-d4b8-3946-601809414e38','40a06fb6-2c0b-b5ab-9711-6017cad0002f',90,'2021-02-01 14:00:42',0),('31dad4cc-e550-06b2-d3d5-601811f087ee','a0b17db8-3562-2520-7a5b-60181003f945','5759d198-8f17-5f9b-59c3-6017ca131eaa',75,'2021-02-01 14:33:27',0),('31fac786-b90d-28e0-0714-60180fed0b60','52c526cb-9c4a-23b6-b39f-60180f9089b2','8b65b469-c5df-e8ca-4420-6017caa83b89',-99,'2021-02-01 14:26:44',0),('31fbb42e-a1a3-3f16-2a01-60180af1f0e9','920ed607-4a99-1bc8-930d-60180a7c44f1','70ca3409-a115-5547-4672-6017ca512a79',80,'2021-02-01 14:04:44',0),('320328af-d2a2-b512-c84b-6018092a3753','54779abd-cf10-d4b8-3946-601809414e38','3feeba8f-d6bd-6fe9-094b-6017ca124904',90,'2021-02-01 14:00:42',0),('322928e0-6b52-e3ec-773d-60180a98b271','920ed607-4a99-1bc8-930d-60180a7c44f1','6fec0d36-5a67-8238-f2ac-6017cae902b8',80,'2021-02-01 14:04:44',0),('3229b3a4-de96-5921-fead-601811addbf0','a0b17db8-3562-2520-7a5b-60181003f945','db361441-01f3-a76b-d5f3-6017cafe119c',-99,'2021-02-01 14:33:27',0),('32356eb2-b839-f248-7a0b-601809444e55','54779abd-cf10-d4b8-3946-601809414e38','424e9d02-1a6d-b40c-3d77-6017ca2a199b',90,'2021-02-01 14:00:42',0),('323dcd3f-472e-b8ea-6005-60180f6a8c92','52c526cb-9c4a-23b6-b39f-60180f9089b2','1a3588bc-571c-f7ab-7799-6017cab6e09b',80,'2021-02-01 14:26:44',0),('326aabe4-b304-fc36-7f10-60180a69b960','920ed607-4a99-1bc8-930d-60180a7c44f1','72d488f9-c28c-d618-901e-6017ca7cd835',80,'2021-02-01 14:04:44',0),('326bb2d3-1179-2730-c9d3-60180990261c','54779abd-cf10-d4b8-3946-601809414e38','41257a11-4623-22fc-5899-6017ca328bb7',90,'2021-02-01 14:00:42',0),('32701bc8-992b-7e95-5f1a-60180fa13cf2','52c526cb-9c4a-23b6-b39f-60180f9089b2','882f3059-afd6-c38d-4091-6017ca2bde86',80,'2021-02-01 14:26:44',0),('328d2ed9-cab8-b006-b6f2-60181053bf10','145ce98a-0b57-3e66-8f20-60180fdba411','7de8fc75-06b4-9caf-d2f8-6017caf078cf',75,'2021-02-01 14:29:35',0),('328e4bf2-92d2-4f45-6472-601811acab11','a0b17db8-3562-2520-7a5b-60181003f945','56a8406f-8f35-19fa-f417-6017caf288a8',-99,'2021-02-01 14:33:27',0),('32b26df8-f411-0d0d-254e-6018095938e9','54779abd-cf10-d4b8-3946-601809414e38','3f22e375-6be6-8eea-a6a5-6017ca1296e5',90,'2021-02-01 14:00:42',0),('32bab981-4349-0576-6fa7-60180f9ba723','52c526cb-9c4a-23b6-b39f-60180f9089b2','198739f4-0bbd-3331-cf7a-6017ca5f75d9',-99,'2021-02-01 14:26:44',0),('32d160ff-5bbe-ca50-e4e8-6018106a79f4','145ce98a-0b57-3e66-8f20-60180fdba411','5759d198-8f17-5f9b-59c3-6017ca131eaa',75,'2021-02-01 14:29:35',0),('32eea77a-325b-ab01-ad60-60180fb5ec51','52c526cb-9c4a-23b6-b39f-60180f9089b2','8c8ae67b-d645-cdb5-f0a8-6017ca1e81ce',-99,'2021-02-01 14:26:44',0),('32f4d3a4-0692-db54-a112-601811145c46','a0b17db8-3562-2520-7a5b-60181003f945','d57a9815-b8fa-f92d-8740-6017ca2996b4',75,'2021-02-01 14:33:27',0),('32fc3951-83bc-d887-a24c-601809870c9a','54779abd-cf10-d4b8-3946-601809414e38','43128bab-53ee-f54c-e979-6017ca31494e',90,'2021-02-01 14:00:42',0),('32ff1d9f-e7db-42a0-82c9-601811fe0877','a0b17db8-3562-2520-7a5b-60181003f945','54679895-07c8-f76b-43d1-6017ca72a27a',75,'2021-02-01 14:33:27',0),('330d5cd6-317f-9b40-5894-601809f322b7','59940d2d-46d1-e3fa-8112-60180940c994','1aef1fca-33a2-3d5d-9453-6017ca899039',-99,'2021-02-01 14:02:35',0),('3321ab16-405b-28e2-1301-6018096f0686','54779abd-cf10-d4b8-3946-601809414e38','3d0a7731-1875-5403-859e-6017ca2605dd',90,'2021-02-01 14:00:42',0),('33365311-d6ca-9c33-c02c-60180f3bfb05','52c526cb-9c4a-23b6-b39f-60180f9089b2','175189ff-4043-fa73-2651-6017ca9d5d05',80,'2021-02-01 14:26:44',0),('3356f120-2f23-01e5-8f08-601809a0caf6','59940d2d-46d1-e3fa-8112-60180940c994','168d6de1-a01a-c7ed-0e6b-6017ca961af0',80,'2021-02-01 14:02:35',0),('33633756-bf1d-bd87-b3e3-6018099b59f6','54779abd-cf10-d4b8-3946-601809414e38','7a6a3fd3-36d4-95b3-c51c-6017cae9ba36',89,'2021-02-01 14:00:42',0),('33633d12-f494-6ae1-f808-60180f0c7f37','52c526cb-9c4a-23b6-b39f-60180f9089b2','8736f700-cfc6-914f-0006-6017ca6a5053',80,'2021-02-01 14:26:44',0),('336a7b72-e0fb-9374-47ca-6018101716a0','bef307c8-d095-6341-6352-601810875b07','9c7adf56-4680-5e30-ff28-6017cadf52c8',75,'2021-02-01 14:31:59',0),('3375019b-2609-5200-c0ce-60180ae3ff1f','920ed607-4a99-1bc8-930d-60180a7c44f1','720128c8-49a7-b466-9bc7-6017ca049579',-99,'2021-02-01 14:04:44',0),('33810fdb-556f-4ddd-3389-601809358475','54779abd-cf10-d4b8-3946-601809414e38','7eb70d04-1b91-0b81-d33f-6017ca4c7a95',90,'2021-02-01 14:00:42',0),('338ef904-a6fb-c411-299b-60180fbea6e1','52c526cb-9c4a-23b6-b39f-60180f9089b2','1aef1fca-33a2-3d5d-9453-6017ca899039',-99,'2021-02-01 14:26:44',0),('3390dbf7-ac29-0c53-a4ba-601810c59397','145ce98a-0b57-3e66-8f20-60180fdba411','803515a9-90a5-6011-db68-6017caaad948',75,'2021-02-01 14:29:35',0),('339af5c5-7940-0294-7f5e-601811eb70db','a0b17db8-3562-2520-7a5b-60181003f945','e5eb98c6-09e5-65bc-7b07-6017caf35be0',-98,'2021-02-01 14:33:27',0),('33a305c2-3ad2-9341-4a90-6018098fe625','59940d2d-46d1-e3fa-8112-60180940c994','a6f22aa9-813e-d48d-cbcf-6017cafe3c98',-98,'2021-02-01 14:02:35',0),('33c3fc1b-4f19-c44f-b049-60180a7700ad','920ed607-4a99-1bc8-930d-60180a7c44f1','6ed87ff1-dc29-9718-c8a2-6017cac6f7f7',80,'2021-02-01 14:04:44',0),('33c55408-f334-66f6-bb3a-60180fe586f6','52c526cb-9c4a-23b6-b39f-60180f9089b2','60d4e068-e997-5fa7-cb8f-6017cafcf344',-98,'2021-02-01 14:26:44',0),('33c7a9a4-be62-d236-ab53-601809e609a2','54779abd-cf10-d4b8-3946-601809414e38','7de8fc75-06b4-9caf-d2f8-6017caf078cf',90,'2021-02-01 14:00:42',0),('33d1b87a-5228-b4b7-8a43-60180927bbc1','59940d2d-46d1-e3fa-8112-60180940c994','ab02cc22-401e-4f0b-5180-6017ca6944bb',80,'2021-02-01 14:02:35',0),('33f10945-cb27-bae9-1b37-6018090a0e15','54779abd-cf10-d4b8-3946-601809414e38','e740cd02-ebce-f2e3-e4ff-6017ca03a2e5',90,'2021-02-01 14:00:42',0),('33f143a7-1a80-77d7-0b94-60180f543136','52c526cb-9c4a-23b6-b39f-60180f9089b2','168d6de1-a01a-c7ed-0e6b-6017ca961af0',80,'2021-02-01 14:26:44',0),('33f151c8-0c28-db25-a260-60180a9e1127','920ed607-4a99-1bc8-930d-60180a7c44f1','73b832d2-55fa-46c9-f776-6017caf638a9',-99,'2021-02-01 14:04:44',0),('33f5b335-eddc-b723-7468-601809407370','54779abd-cf10-d4b8-3946-601809414e38','803515a9-90a5-6011-db68-6017caaad948',90,'2021-02-01 14:00:42',0),('33f90f2a-3cca-e87c-92d6-60180acf85ab','920ed607-4a99-1bc8-930d-60180a7c44f1','106a7216-7119-fcfc-2b1e-6017ca6cc264',-99,'2021-02-01 14:04:44',0),('341282b1-c105-472a-e34d-6018102c2184','145ce98a-0b57-3e66-8f20-60180fdba411','56a8406f-8f35-19fa-f417-6017caf288a8',-99,'2021-02-01 14:29:35',0),('34326618-d4c2-4f65-b9f9-60180a0a225a','920ed607-4a99-1bc8-930d-60180a7c44f1','6d78d2e2-cf60-ad18-ccba-6017cab10c1c',80,'2021-02-01 14:04:44',0),('343cc546-a7f8-1fd6-9e3c-6018115bf432','a0b17db8-3562-2520-7a5b-60181003f945','ea20640d-5cb5-0ec5-e35a-6017ca8a8a15',75,'2021-02-01 14:33:27',0),('343daa2a-c803-2656-25a5-60180956a3dc','54779abd-cf10-d4b8-3946-601809414e38','7f6c2045-592e-ee7a-88aa-6017ca223d64',90,'2021-02-01 14:00:42',0),('3454eea4-f3a4-58ac-cbd2-601811bd4254','a0b17db8-3562-2520-7a5b-60181003f945','5834a572-d414-ba60-078a-6017ca451330',-99,'2021-02-01 14:33:27',0),('345c4e72-54b7-1fc3-ae20-6018096289f2','54779abd-cf10-d4b8-3946-601809414e38','7d5ccdf9-fdf4-60c7-9c96-6017caf9ff1f',90,'2021-02-01 14:00:42',0),('34637287-2f4c-976a-a0b5-60180f01257e','52c526cb-9c4a-23b6-b39f-60180f9089b2','651f020d-f67a-ce98-814e-6017ca62cee5',80,'2021-02-01 14:26:44',0),('346fc0e0-6671-b81e-d60f-601809d56b32','59940d2d-46d1-e3fa-8112-60180940c994','aa06a022-eebd-88bd-7c29-6017ca1a6417',80,'2021-02-01 14:02:35',0),('34776759-7c30-c1dc-1735-6018101df940','145ce98a-0b57-3e66-8f20-60180fdba411','7f6c2045-592e-ee7a-88aa-6017ca223d64',-99,'2021-02-01 14:29:35',0),('34900ef9-677e-891f-2b90-6018102a4376','bef307c8-d095-6341-6352-601810875b07','8736f700-cfc6-914f-0006-6017ca6a5053',75,'2021-02-01 14:31:59',0),('34928f79-b5ba-975b-3745-6018097afcfb','54779abd-cf10-d4b8-3946-601809414e38','811d6ca1-d17a-5a54-e033-6017ca5d11e0',90,'2021-02-01 14:00:42',0),('349aa3a7-28f0-740e-2304-60180f3563a7','52c526cb-9c4a-23b6-b39f-60180f9089b2','a6f22aa9-813e-d48d-cbcf-6017cafe3c98',-98,'2021-02-01 14:26:44',0),('349f14c8-f929-0dd5-7a30-60180977458e','59940d2d-46d1-e3fa-8112-60180940c994','aceda745-edf4-6592-0ca7-6017ca7c89f8',80,'2021-02-01 14:02:35',0),('34b129e2-ea45-e7e7-9638-60180f4bfebc','52c526cb-9c4a-23b6-b39f-60180f9089b2','63623684-279d-11f2-ff80-6017ca26b7c2',80,'2021-02-01 14:26:44',0),('34ba1ade-e61f-bf2a-0f02-6018116c1ddc','a0b17db8-3562-2520-7a5b-60181003f945','e91c140d-d1a4-7a42-2181-6017cad6448e',75,'2021-02-01 14:33:27',0),('34d60043-2956-d5f0-602a-60180f0b633c','52c526cb-9c4a-23b6-b39f-60180f9089b2','71fc608d-8555-80f2-5372-6017cae78ce3',80,'2021-02-01 14:26:44',0),('34e36978-5a11-b259-45ad-6018099d88d5','54779abd-cf10-d4b8-3946-601809414e38','7c990f35-dbe1-d88d-1b6f-6017cacafce6',90,'2021-02-01 14:00:42',0),('34e44e11-043a-8f38-5e99-6018099fcb04','59940d2d-46d1-e3fa-8112-60180940c994','ac25d4dd-6de5-9c2a-8b4f-6017ca9dc9b7',-99,'2021-02-01 14:02:35',0),('34e506b2-c90c-5c35-6a10-60180fc91b54','52c526cb-9c4a-23b6-b39f-60180f9089b2','da54274e-8c18-2757-f4a0-6017caf8249a',-99,'2021-02-01 14:26:44',0),('352884b9-1607-b551-55cc-60180f1ee795','52c526cb-9c4a-23b6-b39f-60180f9089b2','67041382-dd21-ba5f-c8b6-6017ca5a32b2',80,'2021-02-01 14:26:44',0),('352a12a1-5931-c4e6-c01a-60180961253a','54779abd-cf10-d4b8-3946-601809414e38','9c42311f-35a6-2705-f373-6017ca4707a1',89,'2021-02-01 14:00:42',0),('352bd4c2-25c7-28d7-1698-601811070e3b','a0b17db8-3562-2520-7a5b-60181003f945','53ce4002-765c-019d-925e-6017ca6b0b89',75,'2021-02-01 14:33:27',0),('353da3d8-b1b5-fa82-c357-60180935caf8','59940d2d-46d1-e3fa-8112-60180940c994','a8bb31f6-150f-ff3f-bef0-6017ca208971',80,'2021-02-01 14:02:35',0),('355749a7-20be-1e60-218f-6018099aec94','54779abd-cf10-d4b8-3946-601809414e38','a33f23f0-9e86-e1b5-ec15-6017ca74a368',90,'2021-02-01 14:00:42',0),('356911b8-d7df-74d7-0232-601811dcc0e0','a0b17db8-3562-2520-7a5b-60181003f945','ece932f0-236d-af78-5fc3-6017ca39f7be',75,'2021-02-01 14:33:27',0),('35739f49-53b4-650b-ebe0-60181052b3fd','145ce98a-0b57-3e66-8f20-60180fdba411','7d5ccdf9-fdf4-60c7-9c96-6017caf9ff1f',75,'2021-02-01 14:29:35',0),('3578139a-a280-641d-43a4-6018093ad4ac','59940d2d-46d1-e3fa-8112-60180940c994','ae8ad6ad-4263-f441-956e-6017ca7d5153',-99,'2021-02-01 14:02:35',0),('357a8e5e-1745-038d-b996-60180f6beb93','52c526cb-9c4a-23b6-b39f-60180f9089b2','ab02cc22-401e-4f0b-5180-6017ca6944bb',80,'2021-02-01 14:26:44',0),('35919cba-a472-16b1-f475-60181006ebdf','bef307c8-d095-6341-6352-601810875b07','9f6d45af-0924-9907-090a-6017ca293441',75,'2021-02-01 14:31:59',0),('3591bb11-7fa2-eefd-f66b-601809e746be','54779abd-cf10-d4b8-3946-601809414e38','a18410d0-7678-b6ef-2c6d-6017ca0eeaf5',90,'2021-02-01 14:00:42',0),('35b4d20d-af7b-dfca-d268-60180f6ad42b','52c526cb-9c4a-23b6-b39f-60180f9089b2','65ec59d2-6ab2-6a0d-f80b-6017ca4e02aa',-99,'2021-02-01 14:26:44',0),('35d415f6-45a3-3f6d-5a5b-6018090a4d43','54779abd-cf10-d4b8-3946-601809414e38','a4da651d-8bd3-37de-e06c-6017cab354c0',90,'2021-02-01 14:00:42',0),('3607e7e8-185d-0e5b-cf71-60180f4c5979','52c526cb-9c4a-23b6-b39f-60180f9089b2','aa06a022-eebd-88bd-7c29-6017ca1a6417',80,'2021-02-01 14:26:44',0),('360bc9e7-26c1-46d1-dfb3-601810ce39ae','145ce98a-0b57-3e66-8f20-60180fdba411','54679895-07c8-f76b-43d1-6017ca72a27a',75,'2021-02-01 14:29:35',0),('360e7579-f0c6-5ec2-dc82-601809b358b3','54779abd-cf10-d4b8-3946-601809414e38','a3c278eb-300e-6fb2-795d-6017caae6b95',90,'2021-02-01 14:00:42',0),('363bfd7c-3fb7-2c4d-8b82-601809ba5f12','54779abd-cf10-d4b8-3946-601809414e38','a020d500-6246-3b1e-4d0d-6017ca57b752',90,'2021-02-01 14:00:42',0),('364abf2d-7f23-6f9a-c428-60180ff23c94','52c526cb-9c4a-23b6-b39f-60180f9089b2','62d0a189-4595-a430-d15c-6017cacc3713',80,'2021-02-01 14:26:44',0),('367535d5-866c-c655-9084-60180931dda7','54779abd-cf10-d4b8-3946-601809414e38','a57c2f16-66b6-bae7-008d-6017cacfd6bf',90,'2021-02-01 14:00:42',0),('36882fb1-ffcf-4a29-8a08-60180faf09d1','52c526cb-9c4a-23b6-b39f-60180f9089b2','aceda745-edf4-6592-0ca7-6017ca7c89f8',80,'2021-02-01 14:26:44',0),('369103c3-6f7b-1b51-c8fd-601810f66579','145ce98a-0b57-3e66-8f20-60180fdba411','811d6ca1-d17a-5a54-e033-6017ca5d11e0',-99,'2021-02-01 14:29:35',0),('36b0709f-548c-e2f1-0c3b-6018091908aa','54779abd-cf10-d4b8-3946-601809414e38','9e20b241-b441-e11e-e26e-6017ca510608',90,'2021-02-01 14:00:42',0),('36bd4eef-7619-5149-0128-601811abafc0','a0b17db8-3562-2520-7a5b-60181003f945','6d9d1858-3cb1-1bf8-47de-6017caecbe90',-98,'2021-02-01 14:33:27',0),('36d238d6-a016-af4e-8a6c-601809ae41e7','59940d2d-46d1-e3fa-8112-60180940c994','a7a9f1ad-be16-ee19-451b-6017ca00687d',80,'2021-02-01 14:02:35',0),('36e2b2a5-7705-04db-26b6-60180f0055ea','52c526cb-9c4a-23b6-b39f-60180f9089b2','67f497bf-cd72-1d8a-453a-6017ca594a2b',-99,'2021-02-01 14:26:44',0),('36e515b7-d580-b03a-665d-60180f878c48','52c526cb-9c4a-23b6-b39f-60180f9089b2','ac25d4dd-6de5-9c2a-8b4f-6017ca9dc9b7',-99,'2021-02-01 14:26:44',0),('36f19d13-4980-57c0-078c-6018090a196d','54779abd-cf10-d4b8-3946-601809414e38','ce300fe4-aceb-1d76-c963-6017ca14a5f3',89,'2021-02-01 14:00:42',0),('370109c3-9e0f-5be5-4e6a-60181109950f','a0b17db8-3562-2520-7a5b-60181003f945','e5ae0a64-7b08-de38-3aa6-6017ca281050',75,'2021-02-01 14:33:27',0),('370a3a82-1efa-126f-cbc9-60181108e36f','a0b17db8-3562-2520-7a5b-60181003f945','eae8eb86-ed25-499c-d9d5-6017ca5c45da',-99,'2021-02-01 14:33:27',0),('37360b87-eec1-b12a-bff3-601809df5c27','59940d2d-46d1-e3fa-8112-60180940c994','41495400-5f9b-80d4-7075-6017ca472698',-98,'2021-02-01 14:02:35',0),('373955b0-1f79-1ff3-f952-601809802765','54779abd-cf10-d4b8-3946-601809414e38','fd900cfb-53c8-2739-93ed-6017cae17103',90,'2021-02-01 14:00:42',0),('37550cb7-db4a-63ce-81da-6018107fbd28','145ce98a-0b57-3e66-8f20-60180fdba411','7c990f35-dbe1-d88d-1b6f-6017cacafce6',75,'2021-02-01 14:29:35',0),('3761424a-8844-ffda-7b01-60180f541a83','52c526cb-9c4a-23b6-b39f-60180f9089b2','61b172af-81fb-c66f-3fb4-6017ca4545b2',80,'2021-02-01 14:26:44',0),('37614b4c-8a52-07ca-72e4-6018108cab00','bef307c8-d095-6341-6352-601810875b07','9e8c53ec-f5f5-1908-8fd6-6017ca4b90f4',-99,'2021-02-01 14:31:59',0),('3768803b-810a-9198-843a-60180f4cbfba','52c526cb-9c4a-23b6-b39f-60180f9089b2','a8bb31f6-150f-ff3f-bef0-6017ca208971',80,'2021-02-01 14:26:44',0),('37719d1d-6274-97bf-3d92-6018090e1665','54779abd-cf10-d4b8-3946-601809414e38','f4bb0782-df1c-f4d1-1c0d-6017ca07bb9d',90,'2021-02-01 14:00:42',0),('378690b3-0ef7-d2eb-7e39-6018099e580e','59940d2d-46d1-e3fa-8112-60180940c994','469f31e2-b7bb-4b8b-6061-6017caccb79c',80,'2021-02-01 14:02:35',0),('37a9057c-f749-fc18-1cef-60180a58369d','920ed607-4a99-1bc8-930d-60180a7c44f1','e5ae0a64-7b08-de38-3aa6-6017ca281050',80,'2021-02-01 14:04:44',0),('37b286c2-857b-4255-188e-60180fc7b0b3','52c526cb-9c4a-23b6-b39f-60180f9089b2','6ac9b95e-2b95-8b91-edb2-6017cafd2c72',89,'2021-02-01 14:26:44',0),('37da04fb-0dbb-de23-7006-6018096f2ef8','54779abd-cf10-d4b8-3946-601809414e38','11076fd5-1162-9638-0052-6017ca6891e0',90,'2021-02-01 14:00:42',0),('37f7551b-b3e3-e0be-f635-60180fd90c56','52c526cb-9c4a-23b6-b39f-60180f9089b2','ae8ad6ad-4263-f441-956e-6017ca7d5153',-99,'2021-02-01 14:26:44',0),('3823b6d5-f96a-7e3e-b71f-601809d06cd5','54779abd-cf10-d4b8-3946-601809414e38','106a7216-7119-fcfc-2b1e-6017ca6cc264',90,'2021-02-01 14:00:42',0),('383a9578-415b-fbfa-5e23-601810fe0b76','145ce98a-0b57-3e66-8f20-60180fdba411','9c42311f-35a6-2705-f373-6017ca4707a1',-98,'2021-02-01 14:29:35',0),('3848bfcd-dbf7-c0b6-dd8d-60180928e60b','54779abd-cf10-d4b8-3946-601809414e38','e5ae0a64-7b08-de38-3aa6-6017ca281050',90,'2021-02-01 14:00:42',0),('385ac509-3909-3ed7-4f41-60180f740d57','52c526cb-9c4a-23b6-b39f-60180f9089b2','70ca3409-a115-5547-4672-6017ca512a79',80,'2021-02-01 14:26:44',0),('3870a8ba-e12c-afd0-b513-60180fc13351','52c526cb-9c4a-23b6-b39f-60180f9089b2','a7a9f1ad-be16-ee19-451b-6017ca00687d',80,'2021-02-01 14:26:44',0),('38762f11-db15-6d8d-a242-601809d18730','54779abd-cf10-d4b8-3946-601809414e38','118371af-80d6-1cde-4a5b-6017ca11c89f',90,'2021-02-01 14:00:42',0),('38ad8bb2-73b5-2ffa-2fff-60180f3b99db','52c526cb-9c4a-23b6-b39f-60180f9089b2','6fec0d36-5a67-8238-f2ac-6017cae902b8',80,'2021-02-01 14:26:44',0),('38be4014-6fc4-12e3-06c5-601809f687c3','54779abd-cf10-d4b8-3946-601809414e38','da670931-2349-18a0-44b3-6017ca9c2ded',90,'2021-02-01 14:00:42',0),('38c83365-0277-8e90-645f-6018099e09c8','59940d2d-46d1-e3fa-8112-60180940c994','44f7f214-0eda-d54d-eb23-6017ca98b487',80,'2021-02-01 14:02:35',0),('38ebdc44-22db-c72c-dff6-6018100f2c0f','bef307c8-d095-6341-6352-601810875b07','9b2882df-e540-afe4-9c83-6017ca7e0aa7',75,'2021-02-01 14:31:59',0),('38f31b21-e787-51db-d094-601809886893','54779abd-cf10-d4b8-3946-601809414e38','c0400db5-486a-beee-146a-6017ca7174dc',89,'2021-02-01 14:00:42',0),('39163754-c960-ab16-cb1e-60180f3680e3','52c526cb-9c4a-23b6-b39f-60180f9089b2','72d488f9-c28c-d618-901e-6017ca7cd835',80,'2021-02-01 14:26:44',0),('39341c9d-1e85-2f92-668e-6018093c50b0','54779abd-cf10-d4b8-3946-601809414e38','45ba0903-1ee6-3328-71bc-6017ca5f8701',90,'2021-02-01 14:00:42',0),('394c9457-55bd-aa65-69ec-60180fdb871f','52c526cb-9c4a-23b6-b39f-60180f9089b2','41495400-5f9b-80d4-7075-6017ca472698',-98,'2021-02-01 14:26:44',0),('396760a7-4cf6-e6c9-dc9d-6018109bfe66','145ce98a-0b57-3e66-8f20-60180fdba411','a33f23f0-9e86-e1b5-ec15-6017ca74a368',75,'2021-02-01 14:29:35',0),('39786f0f-cb82-9395-3359-601809a6891d','54779abd-cf10-d4b8-3946-601809414e38','3aef02cd-a257-9c01-6b8b-6017ca8f909a',90,'2021-02-01 14:00:42',0),('3983d4c8-73c5-d261-14ed-60180fcc897c','52c526cb-9c4a-23b6-b39f-60180f9089b2','720128c8-49a7-b466-9bc7-6017ca049579',-99,'2021-02-01 14:26:44',0),('398f8bc3-c99d-db2f-0d24-601809ca71c1','59940d2d-46d1-e3fa-8112-60180940c994','48198c30-2080-5ee5-7b6e-6017cae64d7f',80,'2021-02-01 14:02:35',0),('39b5e9b2-f422-5059-33b7-6018090524b7','54779abd-cf10-d4b8-3946-601809414e38','58aa0977-1d78-2e4c-0190-6017ca8195b4',90,'2021-02-01 14:00:42',0),('39c602e3-39fa-4a4e-d81f-601810afffa5','145ce98a-0b57-3e66-8f20-60180fdba411','b1b70587-5e65-c9e2-442e-6017ca9be6b4',75,'2021-02-01 14:29:35',0),('39d6381e-2cfa-6aae-b60b-601809460fcf','59940d2d-46d1-e3fa-8112-60180940c994','473598c4-45a3-b853-34f1-6017cab30d9f',-99,'2021-02-01 14:02:35',0),('39ddb8ad-2ab7-0345-1ae4-60180fd6f61f','52c526cb-9c4a-23b6-b39f-60180f9089b2','469f31e2-b7bb-4b8b-6061-6017caccb79c',80,'2021-02-01 14:26:44',0),('39df271a-93ac-1346-6dab-6018104d0c67','145ce98a-0b57-3e66-8f20-60180fdba411','a18410d0-7678-b6ef-2c6d-6017ca0eeaf5',75,'2021-02-01 14:29:35',0),('3a09ea20-6b06-767d-0a6a-601809540c75','54779abd-cf10-d4b8-3946-601809414e38','4f470189-91df-c39c-04a7-6017cae1a63a',90,'2021-02-01 14:00:42',0),('3a1b3a6a-3525-6ada-c8d8-60180956bf03','59940d2d-46d1-e3fa-8112-60180940c994','444a0bbf-db13-9408-2088-6017ca7eb004',80,'2021-02-01 14:02:35',0),('3a24d60c-364e-e7f5-41fb-60180f974f7c','52c526cb-9c4a-23b6-b39f-60180f9089b2','6ed87ff1-dc29-9718-c8a2-6017cac6f7f7',80,'2021-02-01 14:26:44',0),('3a3c65a5-ed89-7299-8ac7-601810df2cf0','145ce98a-0b57-3e66-8f20-60180fdba411','a4da651d-8bd3-37de-e06c-6017cab354c0',75,'2021-02-01 14:29:35',0),('3a5554d6-3d0b-1f9b-4437-60180992a6cb','59940d2d-46d1-e3fa-8112-60180940c994','48c80856-4f90-c906-1c47-6017cac2c696',-99,'2021-02-01 14:02:35',0),('3a67ed5e-a6ee-c480-b325-60180942d765','54779abd-cf10-d4b8-3946-601809414e38','302b01b1-1748-9cbd-0930-6017ca8ca592',90,'2021-02-01 14:00:42',0),('3a6f801f-c128-0286-c71c-60180ffc11d1','52c526cb-9c4a-23b6-b39f-60180f9089b2','73b832d2-55fa-46c9-f776-6017caf638a9',-99,'2021-02-01 14:26:44',0),('3a80ab94-32d2-e85f-70e2-60180f4792eb','52c526cb-9c4a-23b6-b39f-60180f9089b2','44f7f214-0eda-d54d-eb23-6017ca98b487',80,'2021-02-01 14:26:44',0),('3a96049d-0108-4354-5a6c-6018098c1b4f','54779abd-cf10-d4b8-3946-601809414e38','681d0116-7635-42ba-f3d6-6017caa34383',90,'2021-02-01 14:00:42',0),('3aa5c01c-8fa3-32a6-0429-601810b13b8d','145ce98a-0b57-3e66-8f20-60180fdba411','a3c278eb-300e-6fb2-795d-6017caae6b95',-99,'2021-02-01 14:29:35',0),('3aaa78a6-c6de-20f3-ffcc-60180fd69e7e','52c526cb-9c4a-23b6-b39f-60180f9089b2','6d78d2e2-cf60-ad18-ccba-6017cab10c1c',80,'2021-02-01 14:26:44',0),('3ac593a6-637d-558a-94ae-601811f90b0e','a0b17db8-3562-2520-7a5b-60181003f945','e7ed5142-9b57-558e-95a9-6017ca713940',75,'2021-02-01 14:33:27',0),('3adb6908-9a75-3bce-b5ec-6018093ec43e','54779abd-cf10-d4b8-3946-601809414e38','1a7603b6-dc9c-b191-8b8b-6017ca397446',90,'2021-02-01 14:00:42',0),('3ae4faac-432f-8663-8ba2-601809824408','59940d2d-46d1-e3fa-8112-60180940c994','4392f18b-7465-ffd9-44d5-6017ca615e1a',80,'2021-02-01 14:02:35',0),('3afa028e-a768-a33f-0c97-601809d238c8','54779abd-cf10-d4b8-3946-601809414e38','d3a1d12f-623a-1bec-0810-6017cafc9125',89,'2021-02-01 14:00:42',0),('3b022708-55bb-6739-3e1f-60180f4c1f26','52c526cb-9c4a-23b6-b39f-60180f9089b2','48198c30-2080-5ee5-7b6e-6017cae64d7f',80,'2021-02-01 14:26:44',0),('3b0f1624-5b77-e231-5afc-6018100a6668','145ce98a-0b57-3e66-8f20-60180fdba411','a020d500-6246-3b1e-4d0d-6017ca57b752',75,'2021-02-01 14:29:35',0),('3b40b4f6-8bcf-4075-f0b0-601809e574a2','54779abd-cf10-d4b8-3946-601809414e38','d7a4a93f-f2b9-7acf-fd1a-6017ca338e09',90,'2021-02-01 14:00:42',0),('3b4de7d2-e11b-f599-9814-6018105d6638','bef307c8-d095-6341-6352-601810875b07','a0125536-b231-699a-6df1-6017cac450ac',-99,'2021-02-01 14:31:59',0),('3b6ff4d8-201a-6bfb-595f-60180f653bea','52c526cb-9c4a-23b6-b39f-60180f9089b2','473598c4-45a3-b853-34f1-6017cab30d9f',-99,'2021-02-01 14:26:44',0),('3b811d86-d533-9192-16a9-6018098bc638','59940d2d-46d1-e3fa-8112-60180940c994','c26ff4f5-0b2f-abe7-b877-6017cae0cd05',-98,'2021-02-01 14:02:35',0),('3b83ee2c-b2e6-12a4-7697-601809596d2b','54779abd-cf10-d4b8-3946-601809414e38','d71fb77c-48a2-8f60-7e1b-6017ca5bccba',90,'2021-02-01 14:00:42',0),('3bb7464e-cbdb-27f7-0b56-6018094b906b','54779abd-cf10-d4b8-3946-601809414e38','d9109e29-93c3-3b11-a26e-6017ca4c8c53',90,'2021-02-01 14:00:42',0),('3bc73d59-42ce-a30b-2741-6018106711b5','145ce98a-0b57-3e66-8f20-60180fdba411','5834a572-d414-ba60-078a-6017ca451330',-99,'2021-02-01 14:29:35',0),('3be46f03-6187-fc3c-53f7-6018091cd851','54779abd-cf10-d4b8-3946-601809414e38','d881ab81-f5b9-7815-7501-6017caab079d',90,'2021-02-01 14:00:42',0),('3c0a8a5e-0d82-7426-d317-601810044ad3','145ce98a-0b57-3e66-8f20-60180fdba411','a57c2f16-66b6-bae7-008d-6017cacfd6bf',-99,'2021-02-01 14:29:35',0),('3c280aea-7e9b-803c-dc07-60180a285e8a','920ed607-4a99-1bc8-930d-60180a7c44f1','118371af-80d6-1cde-4a5b-6017ca11c89f',-99,'2021-02-01 14:04:44',0),('3c2ed117-8ab4-702e-e3ad-601809135626','54779abd-cf10-d4b8-3946-601809414e38','d67affcf-e393-960c-30dc-6017cadbbb20',90,'2021-02-01 14:00:42',0),('3c36006d-8afc-90ce-5334-60180f5a761d','52c526cb-9c4a-23b6-b39f-60180f9089b2','444a0bbf-db13-9408-2088-6017ca7eb004',80,'2021-02-01 14:26:44',0),('3c47e000-9e90-7544-5218-601809f65b07','59940d2d-46d1-e3fa-8112-60180940c994','c77cdbff-3ff2-9879-429b-6017ca36a710',80,'2021-02-01 14:02:35',0),('3c4c1559-7600-51a8-137e-601809463682','54779abd-cf10-d4b8-3946-601809414e38','d972e5ac-ed9b-9d26-c01a-6017cabd1654',90,'2021-02-01 14:00:42',0),('3c514b05-c343-9032-f88c-60181172ae4f','a0b17db8-3562-2520-7a5b-60181003f945','70caaca7-26e2-1098-1756-6017ca845ecf',75,'2021-02-01 14:33:27',0),('3c631096-1caa-e5eb-2b69-601810da162a','bef307c8-d095-6341-6352-601810875b07','986eee81-167e-9465-9b49-6017ca064f5f',75,'2021-02-01 14:31:59',0),('3c8efddb-b2cb-83fc-721f-60180912e121','54779abd-cf10-d4b8-3946-601809414e38','d4ef4a17-0ff2-1c7d-f14a-6017ca54bfe6',90,'2021-02-01 14:00:42',0),('3c97237f-4fa8-8f97-adb1-60180992212b','59940d2d-46d1-e3fa-8112-60180940c994','c653cd76-f2b1-cf18-5f84-6017cae22650',80,'2021-02-01 14:02:35',0),('3cb30193-f10a-10a9-8f77-60180f5001e4','52c526cb-9c4a-23b6-b39f-60180f9089b2','d60ff063-6f4a-4ed7-4dae-6017ca3f6b87',80,'2021-02-01 14:26:44',0),('3cb94bb9-a6e1-6173-8077-60180f99010f','52c526cb-9c4a-23b6-b39f-60180f9089b2','48c80856-4f90-c906-1c47-6017cac2c696',-99,'2021-02-01 14:26:44',0),('3ccdfa42-c5f5-d992-7617-601809f92426','54779abd-cf10-d4b8-3946-601809414e38','b5c62ffc-a30c-fba7-206c-6017ca00a390',89,'2021-02-01 14:00:42',0),('3cdb8cbf-05e6-db62-5993-6018100a4045','145ce98a-0b57-3e66-8f20-60180fdba411','9e20b241-b441-e11e-e26e-6017ca510608',75,'2021-02-01 14:29:35',0),('3cefbcf2-cb52-27e1-8765-60181102eb09','a0b17db8-3562-2520-7a5b-60181003f945','6ffacbb5-5dca-0c27-5fae-6017ca1495ba',75,'2021-02-01 14:33:27',0),('3cf86dcb-49db-b0b5-485a-6018090838e9','59940d2d-46d1-e3fa-8112-60180940c994','c9ed4ae1-e5d0-dc21-67ac-6017ca672b32',80,'2021-02-01 14:02:35',0),('3d152133-e57a-e3d3-3422-6018096735b8','54779abd-cf10-d4b8-3946-601809414e38','b9446e01-b190-5369-dac0-6017ca90247e',90,'2021-02-01 14:00:42',0),('3d246b3c-7ca7-f355-5ddf-60180f1ec9ae','52c526cb-9c4a-23b6-b39f-60180f9089b2','4392f18b-7465-ffd9-44d5-6017ca615e1a',80,'2021-02-01 14:26:44',0),('3d30e942-234e-032c-2c08-60180989389f','59940d2d-46d1-e3fa-8112-60180940c994','c888f7ec-948e-d52b-3604-6017ca473b89',-99,'2021-02-01 14:02:35',0),('3d43e7bb-b8d8-d499-4a0d-601810ff6d27','145ce98a-0b57-3e66-8f20-60180fdba411','ce300fe4-aceb-1d76-c963-6017ca14a5f3',89,'2021-02-01 14:29:35',0),('3d45d104-9367-01c4-230e-6018097e3ad4','54779abd-cf10-d4b8-3946-601809414e38','b8979993-d9e2-3c23-2378-6017ca043ead',90,'2021-02-01 14:00:42',0),('3d81f788-fce0-a80c-78d7-601811d21a94','a0b17db8-3562-2520-7a5b-60181003f945','edf66900-4cc5-2778-b45b-6017ca4872c6',-99,'2021-02-01 14:33:27',0),('3d845860-6766-9728-18be-601809be489a','54779abd-cf10-d4b8-3946-601809414e38','ba77c542-9e5d-7ae6-e3f9-6017caa020b9',90,'2021-02-01 14:00:42',0),('3d978a00-235a-0e3e-9674-60180f6a4c2a','52c526cb-9c4a-23b6-b39f-60180f9089b2','c26ff4f5-0b2f-abe7-b877-6017cae0cd05',-98,'2021-02-01 14:26:44',0),('3d9dc62f-4e73-b638-0ee3-6018102a63a9','145ce98a-0b57-3e66-8f20-60180fdba411','fd900cfb-53c8-2739-93ed-6017cae17103',75,'2021-02-01 14:29:35',0),('3da56bc4-46bb-3c76-bcb3-60180977db67','59940d2d-46d1-e3fa-8112-60180940c994','c532c07f-9fe7-3f2f-8a5f-6017cad82dab',80,'2021-02-01 14:02:35',0),('3de04662-32a7-4596-687c-601809cfb630','54779abd-cf10-d4b8-3946-601809414e38','b9e54d8b-7ade-bc5b-658e-6017ca43b993',90,'2021-02-01 14:00:42',0),('3dff8ecd-b892-aa03-a38b-60181101dbc5','a0b17db8-3562-2520-7a5b-60181003f945','71fc608d-8555-80f2-5372-6017cae78ce3',75,'2021-02-01 14:33:27',0),('3e0e1d9d-f232-c66b-1b71-60180906f60c','59940d2d-46d1-e3fa-8112-60180940c994','ca9243e9-0177-e253-d4db-6017cae7ea3f',-99,'2021-02-01 14:02:35',0),('3e1806f6-457e-50c7-e723-601810d751d7','bef307c8-d095-6341-6352-601810875b07','a49603d3-7f15-abda-b0d5-6017ca7fcdde',-98,'2021-02-01 14:31:59',0),('3e1822c6-0868-6c48-0ab2-6018095cba00','54779abd-cf10-d4b8-3946-601809414e38','b742e7ee-1eaa-6de2-be09-6017ca43a204',90,'2021-02-01 14:00:42',0),('3e26f42b-4877-f6a8-0301-6018107f5816','145ce98a-0b57-3e66-8f20-60180fdba411','f4bb0782-df1c-f4d1-1c0d-6017ca07bb9d',75,'2021-02-01 14:29:35',0),('3e3b861c-517b-406f-a036-60180f5b0706','52c526cb-9c4a-23b6-b39f-60180f9089b2','c77cdbff-3ff2-9879-429b-6017ca36a710',80,'2021-02-01 14:26:44',0),('3e4d3570-8bb7-1aff-0c75-6018093af157','59940d2d-46d1-e3fa-8112-60180940c994','c4858000-fe1e-b876-5d40-6017ca89c40a',80,'2021-02-01 14:02:35',0),('3e51ee9d-1a22-3dea-7eb3-6018095b7a15','54779abd-cf10-d4b8-3946-601809414e38','baed9da3-990f-9c19-73a4-6017ca3443a1',90,'2021-02-01 14:00:42',0),('3e7095e6-67e1-a1e3-4a98-601811813a77','a0b17db8-3562-2520-7a5b-60181003f945','71456b4c-71e5-7e70-8411-6017caf4f852',-99,'2021-02-01 14:33:27',0),('3e714ae2-0577-5176-28c5-6018099e158f','54779abd-cf10-d4b8-3946-601809414e38','b6911c5b-48f3-c461-d700-6017ca6f7761',90,'2021-02-01 14:00:42',0),('3e98ebad-c5c9-0fe8-4cf0-6018097c98f2','59940d2d-46d1-e3fa-8112-60180940c994','e21f652f-6598-aa63-5104-6017ca3269cc',-98,'2021-02-01 14:02:35',0),('3eb4c6e7-57f0-d73f-cda2-601811ec90fe','a0b17db8-3562-2520-7a5b-60181003f945','e6b81b67-beb5-38c3-5233-6017ca74980e',75,'2021-02-01 14:33:27',0),('3ec80acc-71ba-adfc-3c83-60180f527090','52c526cb-9c4a-23b6-b39f-60180f9089b2','c653cd76-f2b1-cf18-5f84-6017cae22650',80,'2021-02-01 14:26:44',0),('3ee4429f-3900-87d7-3c2a-601809f9077a','54779abd-cf10-d4b8-3946-601809414e38','254fc6ba-64ef-df4a-d53f-6017ca814e78',89,'2021-02-01 14:00:42',0),('3efb3f71-3048-f890-7026-60180903041e','59940d2d-46d1-e3fa-8112-60180940c994','e5a726b8-46e2-5577-6768-6017ca4e8709',80,'2021-02-01 14:02:35',0),('3f150a88-716c-0f9c-ee3b-6018117dc721','a0b17db8-3562-2520-7a5b-60181003f945','87539216-07b6-7711-9aa8-6017ca0d4d82',-98,'2021-02-01 14:33:27',0),('3f15298c-3cf1-1033-e924-6018096fdc79','54779abd-cf10-d4b8-3946-601809414e38','28e1bd8d-b069-2676-b8fa-6017cac381c6',90,'2021-02-01 14:00:42',0),('3f186e20-9495-d6a5-82b3-601811aaa1f9','a0b17db8-3562-2520-7a5b-60181003f945','6f4ed682-115a-e071-aa74-6017caf739a3',75,'2021-02-01 14:33:27',0),('3f253582-da98-7aa3-4283-60181015e396','bef307c8-d095-6341-6352-601810875b07','ad72033b-d248-1445-3717-6017ca405307',-98,'2021-02-01 14:31:59',0),('3f2669c4-1329-2c75-77d8-60181083e3b9','145ce98a-0b57-3e66-8f20-60180fdba411','11076fd5-1162-9638-0052-6017ca6891e0',75,'2021-02-01 14:29:35',0),('3f270ffc-c158-5164-7537-6018096d504d','54779abd-cf10-d4b8-3946-601809414e38','e344c340-e4e2-4505-54a2-6017ca5f2b7c',90,'2021-02-01 14:00:42',0),('3f377234-f008-49ba-e780-60180940a664','59940d2d-46d1-e3fa-8112-60180940c994','e4b06495-feb8-2d70-cb38-6017ca9b8502',80,'2021-02-01 14:02:35',0),('3f4a6f49-a06c-56b1-024d-60180938bf03','54779abd-cf10-d4b8-3946-601809414e38','277ebc96-5c1a-429e-912c-6017ca79e468',90,'2021-02-01 14:00:42',0),('3f7159ac-9285-27eb-2670-601810e0c00b','145ce98a-0b57-3e66-8f20-60180fdba411','106a7216-7119-fcfc-2b1e-6017ca6cc264',-99,'2021-02-01 14:29:35',0),('3f762252-b371-d2ce-85b8-60180956da57','59940d2d-46d1-e3fa-8112-60180940c994','e6c56d8e-33d3-8a8d-3b47-6017ca263dc6',80,'2021-02-01 14:02:35',0),('3f7a5a83-7c72-9b4d-61bf-60180f4635f8','52c526cb-9c4a-23b6-b39f-60180f9089b2','c9ed4ae1-e5d0-dc21-67ac-6017ca672b32',80,'2021-02-01 14:26:44',0),('3f8d926a-1dae-139d-4800-6018093d44db','54779abd-cf10-d4b8-3946-601809414e38','2a3aa91e-f13f-e8e2-a69b-6017ca8378df',90,'2021-02-01 14:00:42',0),('3fa5c188-26e9-cdd8-cab1-601809953a30','59940d2d-46d1-e3fa-8112-60180940c994','e63b841e-387c-ad8e-8f4b-6017ca3c9896',-99,'2021-02-01 14:02:35',0),('3fb0615f-5f3a-0622-bf26-601811248982','a0b17db8-3562-2520-7a5b-60181003f945','74193c93-40a8-b4b3-61b6-6017cabdd106',-99,'2021-02-01 14:33:27',0),('3fbbec8e-3f4e-c10b-4ba8-601809662ea2','54779abd-cf10-d4b8-3946-601809414e38','29d86b7d-ffe9-9bfb-4cf1-6017ca8db6c7',90,'2021-02-01 14:00:42',0),('3ffb6f65-39e1-fca6-9998-6018097ea469','59940d2d-46d1-e3fa-8112-60180940c994','e3f720d1-c9c2-381c-98d5-6017ca7e0a85',80,'2021-02-01 14:02:35',0),('4002d955-4a52-7b83-59c8-6018109b09bb','145ce98a-0b57-3e66-8f20-60180fdba411','e5ae0a64-7b08-de38-3aa6-6017ca281050',75,'2021-02-01 14:29:35',0),('4006cfb9-7555-07d8-ca26-601809d7096c','54779abd-cf10-d4b8-3946-601809414e38','26b29b11-218c-3567-bd34-6017ca3f73c5',90,'2021-02-01 14:00:42',0),('400909dd-8eda-4079-3334-60180a12f6af','920ed607-4a99-1bc8-930d-60180a7c44f1','da670931-2349-18a0-44b3-6017ca9c2ded',80,'2021-02-01 14:04:44',0),('40120b9b-40c1-5ec4-ae3f-6018104299da','145ce98a-0b57-3e66-8f20-60180fdba411','53ce4002-765c-019d-925e-6017ca6b0b89',75,'2021-02-01 14:29:35',0),('402b6a64-a748-f93d-bc5f-6018098f0fa8','59940d2d-46d1-e3fa-8112-60180940c994','e740cd02-ebce-f2e3-e4ff-6017ca03a2e5',-99,'2021-02-01 14:02:35',0),('402cf918-11e1-fc2a-572d-601809a5b61d','54779abd-cf10-d4b8-3946-601809414e38','2a7d2e1b-9b3e-32b5-1e78-6017ca4fecff',90,'2021-02-01 14:00:42',0),('4049fe0c-e151-1080-0086-60181125be33','a0b17db8-3562-2520-7a5b-60181003f945','6ea461d8-ddf8-92b2-3408-6017ca96a386',75,'2021-02-01 14:33:27',0),('40539f77-a998-ffce-d511-60180fdba23b','52c526cb-9c4a-23b6-b39f-60180f9089b2','c888f7ec-948e-d52b-3604-6017ca473b89',-99,'2021-02-01 14:26:44',0),('406993fe-eef1-3077-c6b6-60180959e35c','59940d2d-46d1-e3fa-8112-60180940c994','e344c340-e4e2-4505-54a2-6017ca5f2b7c',80,'2021-02-01 14:02:35',0),('407c48d1-7111-9d57-60b5-601809b92b17','54779abd-cf10-d4b8-3946-601809414e38','260ea293-5703-f62a-d014-6017ca9ff06c',90,'2021-02-01 14:00:42',0),('40a91b48-bce1-2739-1353-601809c5d479','54779abd-cf10-d4b8-3946-601809414e38','33a4c648-6095-3a46-57e5-6017ca731b91',89,'2021-02-01 14:00:42',0),('40b8d2aa-33e6-5fb2-6091-601810f13fce','bef307c8-d095-6341-6352-601810875b07','b0a59a80-8244-9f08-bf42-6017caeaa7f3',75,'2021-02-01 14:31:59',0),('40bc03f3-edf6-393a-88fe-60180998be99','59940d2d-46d1-e3fa-8112-60180940c994','dc27b527-bed4-aea5-836c-6017ca6ad29e',-98,'2021-02-01 14:02:35',0),('40d66908-8fb2-4a59-0d86-601809730daf','54779abd-cf10-d4b8-3946-601809414e38','377b9e0c-f502-7bb5-2c9f-6017ca706205',90,'2021-02-01 14:00:42',0),('40e1d0ab-1788-edb1-dba8-60180f7dc4b0','52c526cb-9c4a-23b6-b39f-60180f9089b2','c532c07f-9fe7-3f2f-8a5f-6017cad82dab',80,'2021-02-01 14:26:44',0),('40f1d951-6f02-4ed1-4952-601809fa6b30','59940d2d-46d1-e3fa-8112-60180940c994','e24cd46c-c7c0-b6e7-f8be-6017cadc5e71',80,'2021-02-01 14:02:35',0),('4122fa9f-5a65-6fb4-aad3-601809e92ce1','54779abd-cf10-d4b8-3946-601809414e38','3703cf8a-d539-ce5f-51fb-6017ca174652',90,'2021-02-01 14:00:42',0),('413136d2-cf28-2b58-7eb7-601811494167','a0b17db8-3562-2520-7a5b-60181003f945','e2bc5387-7429-ab0a-3d69-6017ca359d7b',-98,'2021-02-01 14:33:27',0),('4137cea5-ecbd-1108-6aa6-601809e74809','59940d2d-46d1-e3fa-8112-60180940c994','e193cedb-c4ed-434d-40b7-6017cab333cc',80,'2021-02-01 14:02:35',0),('41403780-a19c-d4bb-9a74-601810a3855b','145ce98a-0b57-3e66-8f20-60180fdba411','118371af-80d6-1cde-4a5b-6017ca11c89f',-99,'2021-02-01 14:29:35',0),('4144b2c6-61bd-7490-c07e-601811a914e9','a0b17db8-3562-2520-7a5b-60181003f945','8c9ce024-16d3-ce97-f6f1-6017cafec8a2',75,'2021-02-01 14:33:27',0),('4149012e-e873-c306-ace0-60180f0e25da','52c526cb-9c4a-23b6-b39f-60180f9089b2','71456b4c-71e5-7e70-8411-6017caf4f852',-99,'2021-02-01 14:26:44',0),('41500b8c-8d30-a2df-78ad-6018093b67f4','54779abd-cf10-d4b8-3946-601809414e38','38e0c84a-b6b1-e94f-4f77-6017ca4423ca',90,'2021-02-01 14:00:42',0),('4189550f-54f0-e445-f2b3-6018117e30ba','a0b17db8-3562-2520-7a5b-60181003f945','8ba34aa2-a2dd-fb51-3753-6017cad94619',75,'2021-02-01 14:33:27',0),('41997946-d04f-af54-5613-6018091fe787','59940d2d-46d1-e3fa-8112-60180940c994','e3d7c102-1126-6fe9-1677-6017ca809dba',80,'2021-02-01 14:02:35',0),('41b1a25e-5aa3-dc9f-2cf2-6018100eec98','145ce98a-0b57-3e66-8f20-60180fdba411','da670931-2349-18a0-44b3-6017ca9c2ded',75,'2021-02-01 14:29:35',0),('41c6041f-bebf-4b48-dacd-6018116a4e30','a0b17db8-3562-2520-7a5b-60181003f945','8f62e502-a51a-1dbf-4c0e-6017cabe0b1a',75,'2021-02-01 14:33:27',0),('41c99445-f46d-f5ab-d63e-6018098bb4b9','54779abd-cf10-d4b8-3946-601809414e38','3832cc25-90a4-9adb-6504-6017cad4d35a',90,'2021-02-01 14:00:42',0),('41e3daf5-f6d3-2d32-ffcb-601809facd20','59940d2d-46d1-e3fa-8112-60180940c994','e30b304e-5234-237f-21d2-6017cad23c56',-99,'2021-02-01 14:02:35',0),('41ee02ea-9564-6066-f788-60180f07cedd','52c526cb-9c4a-23b6-b39f-60180f9089b2','ca9243e9-0177-e253-d4db-6017cae7ea3f',-99,'2021-02-01 14:26:44',0),('41f008ae-b25b-ae26-a18b-601811e5bd41','a0b17db8-3562-2520-7a5b-60181003f945','e5173f3f-76a1-cf58-1013-6017cae80777',75,'2021-02-01 14:33:27',0),('421c2f48-4fe1-3c64-58c0-601811d7cc60','a0b17db8-3562-2520-7a5b-60181003f945','8d58526e-ae7c-89f1-c5ab-6017ca767f94',-99,'2021-02-01 14:33:27',0),('42212d5c-aaca-4d07-d270-6018097af7bb','59940d2d-46d1-e3fa-8112-60180940c994','e03d1f5c-2513-24d8-bdde-6017ca945ff0',80,'2021-02-01 14:02:35',0),('423355d1-db80-6f35-4f77-60180959d6ec','54779abd-cf10-d4b8-3946-601809414e38','3634091f-8062-cdd4-5fa8-6017caf39c43',90,'2021-02-01 14:00:42',0),('4249024a-6628-d9f8-962d-601811d23e89','a0b17db8-3562-2520-7a5b-60181003f945','118371af-80d6-1cde-4a5b-6017ca11c89f',-99,'2021-02-01 14:33:27',0),('425c848b-6b52-25f0-f881-601809132c09','59940d2d-46d1-e3fa-8112-60180940c994','e454847f-e338-c3eb-be96-6017ca4a2ea3',-99,'2021-02-01 14:02:35',0),('4265952a-a0f0-cb84-7b3b-6018097f73f6','54779abd-cf10-d4b8-3946-601809414e38','3955cfaa-5d78-ecdd-57ae-6017caf34833',90,'2021-02-01 14:00:42',0),('426ae872-fe72-ff78-d162-601811fcd3cc','a0b17db8-3562-2520-7a5b-60181003f945','e4a782d6-f3e0-5420-7aa0-6017ca7dfddb',75,'2021-02-01 14:33:27',0),('426c9aec-9b62-5338-cb64-60180f0e4097','52c526cb-9c4a-23b6-b39f-60180f9089b2','c4858000-fe1e-b876-5d40-6017ca89c40a',80,'2021-02-01 14:26:44',0),('42a546f7-aa1b-ff9f-1c24-601809074ccb','54779abd-cf10-d4b8-3946-601809414e38','34751d0d-8c15-50d3-5a8e-6017ca6c83cf',90,'2021-02-01 14:00:42',0),('42bded6f-ae40-fed9-c010-601809751b95','59940d2d-46d1-e3fa-8112-60180940c994','de3aca57-08ed-bd1c-71db-6017caa8a814',80,'2021-02-01 14:02:35',0),('42bea5d0-1b92-2cb7-5cb5-60181069e93c','145ce98a-0b57-3e66-8f20-60180fdba411','c0400db5-486a-beee-146a-6017ca7174dc',89,'2021-02-01 14:29:35',0),('42cef519-5f9c-1661-3656-601811f1e541','a0b17db8-3562-2520-7a5b-60181003f945','8aa714aa-4b3e-19ba-274e-6017ca4697ff',75,'2021-02-01 14:33:27',0),('42da25df-b030-7cc0-909b-60180f2ae01f','52c526cb-9c4a-23b6-b39f-60180f9089b2','e21f652f-6598-aa63-5104-6017ca3269cc',-98,'2021-02-01 14:26:44',0),('42e61041-c31a-1956-ce51-6018095b5f26','54779abd-cf10-d4b8-3946-601809414e38','89cfd493-7685-52ca-1008-6017ca632e1b',89,'2021-02-01 14:00:42',0),('42fb6f30-3d58-9005-9ca5-601809d54cd2','59940d2d-46d1-e3fa-8112-60180940c994','72355743-6e36-a4b8-a9ae-6017ca6d4186',89,'2021-02-01 14:02:35',0),('43051026-f34d-7f18-50d8-601811b2ef91','a0b17db8-3562-2520-7a5b-60181003f945','906d69aa-1fca-7278-c57c-6017caee5833',-99,'2021-02-01 14:33:27',0),('430ca183-f167-3295-6390-601809f43633','54779abd-cf10-d4b8-3946-601809414e38','8d646238-0036-c2d0-6e93-6017ca17c0f5',90,'2021-02-01 14:00:42',0),('432765fb-ef8d-9c72-1525-601811604b09','a0b17db8-3562-2520-7a5b-60181003f945','e5e30ecd-895c-7f29-b5f7-6017ca1db364',75,'2021-02-01 14:33:27',0),('43391c99-907f-7478-2200-601809775e49','59940d2d-46d1-e3fa-8112-60180940c994','773803fa-601f-7f1f-8433-6017caf1fefd',80,'2021-02-01 14:02:35',0),('43530a56-1aa8-f85d-77f2-60180995094d','54779abd-cf10-d4b8-3946-601809414e38','8c917df1-c6ec-68b0-840f-6017cadaae13',90,'2021-02-01 14:00:42',0),('435dcd52-bb87-d63b-35ae-60181170fc75','a0b17db8-3562-2520-7a5b-60181003f945','8911290d-27ae-4a1a-6dc7-6017cacc0f60',75,'2021-02-01 14:33:27',0),('43622f33-239b-a377-29a1-601810025ce6','bef307c8-d095-6341-6352-601810875b07','b03e2b4c-2931-7fad-9b57-6017ca8ac75c',75,'2021-02-01 14:31:59',0),('436c76dd-ad65-d0d9-c4c5-601810ec33aa','145ce98a-0b57-3e66-8f20-60180fdba411','45ba0903-1ee6-3328-71bc-6017ca5f8701',75,'2021-02-01 14:29:35',0),('43761a5d-8bd9-544a-bbfd-601809d4c610','59940d2d-46d1-e3fa-8112-60180940c994','75e95896-bfb4-e7d1-8d5d-6017ca577257',80,'2021-02-01 14:02:35',0),('4378e433-afe0-a0a3-f0d8-60180fad57ba','52c526cb-9c4a-23b6-b39f-60180f9089b2','e5a726b8-46e2-5577-6768-6017ca4e8709',80,'2021-02-01 14:26:44',0),('43bcc685-1d47-8b36-201a-601811b0bdc1','a0b17db8-3562-2520-7a5b-60181003f945','38f99f5f-181a-9090-099b-6017ca1e67cb',-98,'2021-02-01 14:33:27',0),('43c9a3ab-1a63-1c06-0af8-601809e1f6dd','59940d2d-46d1-e3fa-8112-60180940c994','79640946-aee0-9f50-e62a-6017cae5892d',80,'2021-02-01 14:02:35',0),('43cff093-2032-3156-339d-601809eb01e5','54779abd-cf10-d4b8-3946-601809414e38','8e72cccd-d8bd-5bda-1129-6017ca1e0e4f',90,'2021-02-01 14:00:42',0),('43f3fee6-5838-a1dd-955b-6018091a8e1b','59940d2d-46d1-e3fa-8112-60180940c994','77ccb264-3890-c274-4e17-6017ca98c87e',-99,'2021-02-01 14:02:35',0),('43fdc5ca-3e6f-15a3-3ecf-60180fc3f2f0','52c526cb-9c4a-23b6-b39f-60180f9089b2','e4b06495-feb8-2d70-cb38-6017ca9b8502',80,'2021-02-01 14:26:44',0),('44219110-25c5-ca88-9a3f-601810c64f41','145ce98a-0b57-3e66-8f20-60180fdba411','6d9d1858-3cb1-1bf8-47de-6017caecbe90',-98,'2021-02-01 14:29:35',0),('4431489b-c289-9566-7df6-6018095417e7','54779abd-cf10-d4b8-3946-601809414e38','8df6c126-ff00-31ab-53d7-6017ca17f4bb',90,'2021-02-01 14:00:42',0),('4431c9a0-7a12-0af8-053c-601811c77b01','a0b17db8-3562-2520-7a5b-60181003f945','e57cbf72-739f-a668-7683-6017cae2687a',-99,'2021-02-01 14:33:27',0),('44331d44-6a7c-8e20-bcb2-60180f40d437','52c526cb-9c4a-23b6-b39f-60180f9089b2','e6c56d8e-33d3-8a8d-3b47-6017ca263dc6',80,'2021-02-01 14:26:44',0),('4454c61f-1f5a-14de-4cd9-6018116b4f2c','a0b17db8-3562-2520-7a5b-60181003f945','3cc306a6-c503-f389-366b-6017ca4e3ae0',75,'2021-02-01 14:33:27',0),('446a7346-75c7-b3a5-e847-6018097a1787','54779abd-cf10-d4b8-3946-601809414e38','8c1ad7be-b834-8a3b-a447-6017ca75307a',90,'2021-02-01 14:00:42',0),('44729efc-69b9-2f1e-6a1a-60181034e00f','bef307c8-d095-6341-6352-601810875b07','b1b70587-5e65-c9e2-442e-6017ca9be6b4',75,'2021-02-01 14:31:59',0),('4475071a-cf63-89be-c2a4-60180956a783','54779abd-cf10-d4b8-3946-601809414e38','dc27b527-bed4-aea5-836c-6017ca6ad29e',89,'2021-02-01 14:00:42',0),('44823b45-48b5-9d1f-1e3b-601810a7741c','145ce98a-0b57-3e66-8f20-60180fdba411','3aef02cd-a257-9c01-6b8b-6017ca8f909a',75,'2021-02-01 14:29:35',0),('44a769c2-9632-7831-5af6-60180fb5dd54','52c526cb-9c4a-23b6-b39f-60180f9089b2','e63b841e-387c-ad8e-8f4b-6017ca3c9896',-99,'2021-02-01 14:26:44',0),('44b2ddb9-4ea7-82e6-320b-60180946bccc','59940d2d-46d1-e3fa-8112-60180940c994','73fdb388-e429-64d1-7485-6017cae6514d',80,'2021-02-01 14:02:35',0),('44d00938-f547-a435-9ab9-60180f84a29d','52c526cb-9c4a-23b6-b39f-60180f9089b2','6d9d1858-3cb1-1bf8-47de-6017caecbe90',-98,'2021-02-01 14:26:44',0),('44e1c4c0-2675-cb3a-bd2e-6018112c7c18','a0b17db8-3562-2520-7a5b-60181003f945','3b42d0fb-c107-dcf4-16de-6017cac16fb4',75,'2021-02-01 14:33:27',0),('44edf7db-06b0-99a1-e71e-601809d025a3','59940d2d-46d1-e3fa-8112-60180940c994','7a44a0a8-2174-0769-fff0-6017caa1731c',-99,'2021-02-01 14:02:35',0),('44f35c8e-f513-5a25-a58d-6018095fa0ad','54779abd-cf10-d4b8-3946-601809414e38','8f2d5206-743b-ecd6-bbfd-6017ca3b700c',90,'2021-02-01 14:00:42',0),('451608c9-d04c-55b4-22e3-60180962d48b','59940d2d-46d1-e3fa-8112-60180940c994','733ed99a-4574-0176-f887-6017cabe49e9',80,'2021-02-01 14:02:35',0),('45209217-ddfb-b5ce-8a8d-601811a7d341','a0b17db8-3562-2520-7a5b-60181003f945','3f4cef04-3d0e-4ab5-e4e0-6017cab3974e',75,'2021-02-01 14:33:27',0),('45319a49-acd9-e1f2-06d6-601809b2d2b6','54779abd-cf10-d4b8-3946-601809414e38','8a520e16-b539-983c-b9bd-6017cab11234',90,'2021-02-01 14:00:42',0),('45344230-af0b-12bf-7481-60181052fa43','145ce98a-0b57-3e66-8f20-60180fdba411','58aa0977-1d78-2e4c-0190-6017ca8195b4',75,'2021-02-01 14:29:35',0),('45599947-a562-a548-a927-601809f64736','54779abd-cf10-d4b8-3946-601809414e38','e1123a71-9f1e-4905-cf20-6017caacf73b',89,'2021-02-01 14:00:42',0),('456222b2-9087-5041-e0bf-60181166a403','a0b17db8-3562-2520-7a5b-60181003f945','3d7be9aa-7dc1-6080-e224-6017cadbda7e',-99,'2021-02-01 14:33:27',0),('456a6134-e3d8-55fe-e007-601809c99b7f','59940d2d-46d1-e3fa-8112-60180940c994','ea5c0154-cef1-803b-0ba7-6017ca67a911',-98,'2021-02-01 14:02:35',0),('456af6a8-a887-4d8e-437c-60180f0aa197','52c526cb-9c4a-23b6-b39f-60180f9089b2','e3f720d1-c9c2-381c-98d5-6017ca7e0a85',80,'2021-02-01 14:26:44',0),('459a357c-367d-5c4b-372e-60180979c2c7','59940d2d-46d1-e3fa-8112-60180940c994','14b748ba-7445-1bed-a6bc-6017ca1ed7b4',80,'2021-02-01 14:02:35',0),('45b992b7-4e8c-e796-ab35-60181189d0ee','a0b17db8-3562-2520-7a5b-60181003f945','e3eed07f-5bb3-2703-e548-6017caddebbf',75,'2021-02-01 14:33:27',0),('45bba1e6-2545-87b7-b471-601809921acd','54779abd-cf10-d4b8-3946-601809414e38','e336c29d-2d18-451f-7bbc-6017ca49e15c',90,'2021-02-01 14:00:42',0),('45da32e5-c251-ae33-79e8-6018092eca33','54779abd-cf10-d4b8-3946-601809414e38','e2da0686-74cf-c6c2-177d-6017ca10edf2',90,'2021-02-01 14:00:42',0),('45e28594-31ce-11dd-cf0f-60180fd68f67','52c526cb-9c4a-23b6-b39f-60180f9089b2','e740cd02-ebce-f2e3-e4ff-6017ca03a2e5',-99,'2021-02-01 14:26:44',0),('45e56abd-cbb7-cce1-c742-60180905e346','59940d2d-46d1-e3fa-8112-60180940c994','12a05087-ac9b-b480-ef56-6017ca5bb531',80,'2021-02-01 14:02:35',0),('45eaa866-05cf-6d5e-276c-60181073694f','bef307c8-d095-6341-6352-601810875b07','b148ee1e-32f7-3ee6-9bd5-6017ca688368',-99,'2021-02-01 14:31:59',0),('46000569-9cdb-72eb-7182-6018107bb959','bef307c8-d095-6341-6352-601810875b07','93d8cd13-cf78-d508-6128-6017ca32e37c',75,'2021-02-01 14:31:59',0),('460c086b-539d-b430-c6b7-601809d180ac','54779abd-cf10-d4b8-3946-601809414e38','e5d46f78-d381-0c69-bf09-6017caaa5a9a',90,'2021-02-01 14:00:42',0),('461a4f0f-a6ab-0493-4983-60180f26fa7a','52c526cb-9c4a-23b6-b39f-60180f9089b2','e344c340-e4e2-4505-54a2-6017ca5f2b7c',80,'2021-02-01 14:26:44',0),('4629ecb9-0eda-b340-70ad-601809c644b7','59940d2d-46d1-e3fa-8112-60180940c994','1844b369-3730-ed93-c1df-6017cad6ef13',80,'2021-02-01 14:02:35',0),('462e6e75-83a3-79f4-1336-601811a2e7e9','a0b17db8-3562-2520-7a5b-60181003f945','3aba1255-f1e3-6773-82a2-6017ca6f698a',75,'2021-02-01 14:33:27',0),('4653a06c-186b-4f92-5205-6018093a0315','54779abd-cf10-d4b8-3946-601809414e38','e40e7e28-78b1-0bae-fa91-6017caee97f4',90,'2021-02-01 14:00:42',0),('4663a98e-2407-5289-fbb1-6018099e76fd','59940d2d-46d1-e3fa-8112-60180940c994','16b7009a-4890-65d1-3f8f-6017ca6c7043',-99,'2021-02-01 14:02:35',0),('4694833f-476f-69cb-bf6f-601810479701','145ce98a-0b57-3e66-8f20-60180fdba411','4f470189-91df-c39c-04a7-6017cae1a63a',-99,'2021-02-01 14:29:35',0),('46ac1d21-79c2-69fb-5daa-601809a2d099','54779abd-cf10-d4b8-3946-601809414e38','e27db9aa-0c69-f8be-e7d4-6017ca4a1b9c',90,'2021-02-01 14:00:42',0),('46be8237-d4fb-22c5-30cd-6018097fa593','59940d2d-46d1-e3fa-8112-60180940c994','1210b8d7-8527-cfab-15ab-6017ca872b87',80,'2021-02-01 14:02:35',0),('46c53a6b-a93f-e375-aba5-601811f8fea4','a0b17db8-3562-2520-7a5b-60181003f945','e72ba550-9aea-e958-95e8-6017ca63fa05',-99,'2021-02-01 14:33:27',0),('46e809b4-6447-4e2c-a4bc-60180f93b06d','52c526cb-9c4a-23b6-b39f-60180f9089b2','db361441-01f3-a76b-d5f3-6017cafe119c',-99,'2021-02-01 14:26:44',0),('46ea8664-4bb1-8092-095d-60180f5ec94b','52c526cb-9c4a-23b6-b39f-60180f9089b2','dc27b527-bed4-aea5-836c-6017ca6ad29e',-98,'2021-02-01 14:26:44',0),('46f1d9c7-c1e0-3734-449a-60181130a47e','a0b17db8-3562-2520-7a5b-60181003f945','3ffd6654-cef8-3289-d225-6017ca354fd4',-99,'2021-02-01 14:33:27',0),('46fb48d4-4097-c320-265e-6018095ef7f4','59940d2d-46d1-e3fa-8112-60180940c994','193e9c15-b4d4-c673-1b4b-6017ca498afe',-99,'2021-02-01 14:02:35',0),('471812a1-dad0-0ebb-170c-6018106e6aaf','145ce98a-0b57-3e66-8f20-60180fdba411','302b01b1-1748-9cbd-0930-6017ca8ca592',75,'2021-02-01 14:29:35',0),('472a83b8-4d87-14ef-2cff-6018091cf1e9','59940d2d-46d1-e3fa-8112-60180940c994','1153fb10-28fd-a556-8e38-6017ca79a353',80,'2021-02-01 14:02:35',0),('474b15f5-d0c4-52dc-efc8-601809fcd9eb','54779abd-cf10-d4b8-3946-601809414e38','e6ed1604-861b-1b53-e18d-6017ca9f3220',90,'2021-02-01 14:00:42',0),('475c92d7-bc60-cb76-8c1e-601811abee29','a0b17db8-3562-2520-7a5b-60181003f945','39c652a6-3413-596a-1ba7-6017cad4d33c',75,'2021-02-01 14:33:27',0),('475dc0bd-b255-c415-0806-601811bcfbb6','a0b17db8-3562-2520-7a5b-60181003f945','e33de50b-0af6-759b-2e46-6017ca41bb50',75,'2021-02-01 14:33:27',0),('47696f6f-c141-c089-ce04-60180f7158e7','52c526cb-9c4a-23b6-b39f-60180f9089b2','e24cd46c-c7c0-b6e7-f8be-6017cadc5e71',80,'2021-02-01 14:26:44',0),('476f8586-d20d-d706-c5ec-601809565dbd','59940d2d-46d1-e3fa-8112-60180940c994','4b5df074-2224-15a5-770a-6017ca31e0d2',-98,'2021-02-01 14:02:35',0),('4796fd83-663a-b5cb-1f71-60180912deb5','54779abd-cf10-d4b8-3946-601809414e38','e206debd-89f8-a796-b4da-6017ca4eff96',90,'2021-02-01 14:00:42',0),('47a8a799-47ca-3692-c6e9-601809c40b74','59940d2d-46d1-e3fa-8112-60180940c994','506f61c9-49cf-d0e3-5448-6017ca7e282c',80,'2021-02-01 14:02:35',0),('47b32480-a9f8-6721-e09d-601810a4f52a','bef307c8-d095-6341-6352-601810875b07','af785830-9b95-6e64-4175-6017ca031673',75,'2021-02-01 14:31:59',0),('47c853d2-0021-db6e-b1b2-601810b0dd7a','145ce98a-0b57-3e66-8f20-60180fdba411','70caaca7-26e2-1098-1756-6017ca845ecf',75,'2021-02-01 14:29:35',0),('47d6e790-cf13-ce86-a6ff-601809e6cc82','59940d2d-46d1-e3fa-8112-60180940c994','4fa20f82-4605-a031-949b-6017ca9c9830',80,'2021-02-01 14:02:35',0),('47d9ff4b-b4b7-6cb6-1e2c-60181175a087','a0b17db8-3562-2520-7a5b-60181003f945','d29bdfb0-fe1c-8857-e905-6017caea5473',-98,'2021-02-01 14:33:27',0),('47ece9e8-2812-71d9-9f05-60180f04abbc','52c526cb-9c4a-23b6-b39f-60180f9089b2','e193cedb-c4ed-434d-40b7-6017cab333cc',80,'2021-02-01 14:26:44',0),('47f1dd8c-b9e4-1a65-2941-60180956a6dd','54779abd-cf10-d4b8-3946-601809414e38','d3d750bd-c58c-c030-00d9-6017ca19f0ac',89,'2021-02-01 14:00:42',0),('47f879b0-7fd1-66a8-07e0-601811e26032','a0b17db8-3562-2520-7a5b-60181003f945','2ea0f1e5-5ad1-9ed1-62be-6017cab19b3e',-98,'2021-02-01 14:33:27',0),('481ad56f-aa1d-6ddd-b12d-601809abf076','59940d2d-46d1-e3fa-8112-60180940c994','5362a646-6144-5c4e-9ebb-6017cabe59da',80,'2021-02-01 14:02:35',0),('483b493c-8cc7-51ee-a9c9-601809c5758b','54779abd-cf10-d4b8-3946-601809414e38','da05b32a-31d0-ce97-2967-6017caed3d34',90,'2021-02-01 14:00:42',0),('4847847b-309b-72d4-5040-601811657b7c','a0b17db8-3562-2520-7a5b-60181003f945','307a06a7-17d6-8be6-5b8d-6017ca1d1fe5',75,'2021-02-01 14:33:27',0),('484dc07b-15b8-c23e-b875-60181136ac81','a0b17db8-3562-2520-7a5b-60181003f945','d73cd5f5-e1d8-5170-7d78-6017cabb0ed2',75,'2021-02-01 14:33:27',0),('4861cb7a-18ea-2d75-189d-6018095c7b83','59940d2d-46d1-e3fa-8112-60180940c994','5131b6a6-ac2e-aab4-8297-6017cacd1a29',-99,'2021-02-01 14:02:35',0),('4869ea0d-0957-05be-33cb-6018091c92d0','54779abd-cf10-d4b8-3946-601809414e38','d6db73f5-8776-66f9-6c1d-6017caeb8262',90,'2021-02-01 14:00:42',0),('486fc143-308b-2b6a-206f-60180f336b1c','52c526cb-9c4a-23b6-b39f-60180f9089b2','e3d7c102-1126-6fe9-1677-6017ca809dba',80,'2021-02-01 14:26:44',0),('48a32f07-f9ef-1086-3bc7-6018105a3809','145ce98a-0b57-3e66-8f20-60180fdba411','681d0116-7635-42ba-f3d6-6017caa34383',-99,'2021-02-01 14:29:35',0),('48b062db-81e1-fa25-6fd1-601810b3d2ef','bef307c8-d095-6341-6352-601810875b07','b231fc57-fb19-a4fb-3c2d-6017ca35b664',-99,'2021-02-01 14:31:59',0),('48b24c07-7bb9-b474-261d-601809753384','54779abd-cf10-d4b8-3946-601809414e38','daddf798-fbca-a01d-92af-6017ca71624e',90,'2021-02-01 14:00:42',0),('48d609e5-21b2-23c7-369f-601811c82f95','a0b17db8-3562-2520-7a5b-60181003f945','d696d729-adb1-4fec-3046-6017caa1340f',75,'2021-02-01 14:33:27',0),('48d847f1-6a6f-66bd-34cb-60180966ea72','54779abd-cf10-d4b8-3946-601809414e38','da54274e-8c18-2757-f4a0-6017caf8249a',90,'2021-02-01 14:00:42',0),('48deaa9c-8b32-16da-af7f-601809f086d2','59940d2d-46d1-e3fa-8112-60180940c994','4eb5453c-539f-7da6-2393-6017cab07f2d',80,'2021-02-01 14:02:35',0),('49123e70-8ebf-ec86-839c-6018099cc942','54779abd-cf10-d4b8-3946-601809414e38','d60ff063-6f4a-4ed7-4dae-6017ca3f6b87',90,'2021-02-01 14:00:42',0),('49216166-3544-c7c7-3714-60181057b02b','145ce98a-0b57-3e66-8f20-60180fdba411','1a7603b6-dc9c-b191-8b8b-6017ca397446',75,'2021-02-01 14:29:35',0),('4921d396-90d6-7334-5ec5-601811e3a765','a0b17db8-3562-2520-7a5b-60181003f945','d98b8285-6c4f-9047-3246-6017caf67d11',75,'2021-02-01 14:33:27',0),('4926388f-8231-1c4b-f427-6018094acc18','59940d2d-46d1-e3fa-8112-60180940c994','543391af-9314-213d-cf52-6017ca0de4a4',-99,'2021-02-01 14:02:35',0),('493d6c43-e37e-b8de-fdd0-60180ff5e9bc','52c526cb-9c4a-23b6-b39f-60180f9089b2','e30b304e-5234-237f-21d2-6017cad23c56',-99,'2021-02-01 14:26:44',0),('494b2bb0-d036-ae75-8042-6018095d2426','59940d2d-46d1-e3fa-8112-60180940c994','4dc064a6-36e7-b8d6-1637-6017ca834a51',80,'2021-02-01 14:02:35',0),('494d58fc-5b4f-102e-a456-601811b6ba78','a0b17db8-3562-2520-7a5b-60181003f945','300fc3b9-b50e-5fdc-1d14-6017cacc420b',75,'2021-02-01 14:33:27',0),('494e35ea-78e5-2e79-8e4a-60180999ceef','54779abd-cf10-d4b8-3946-601809414e38','db361441-01f3-a76b-d5f3-6017cafe119c',90,'2021-02-01 14:00:42',0),('4965bdf5-6e61-bd58-38d1-6018102835af','145ce98a-0b57-3e66-8f20-60180fdba411','d3a1d12f-623a-1bec-0810-6017cafc9125',-98,'2021-02-01 14:29:35',0),('498102c0-35fd-3bc0-f5e2-60180995e7e8','54779abd-cf10-d4b8-3946-601809414e38','d57a9815-b8fa-f92d-8740-6017ca2996b4',90,'2021-02-01 14:00:42',0),('498fb22a-2845-b749-89c4-601809930994','59940d2d-46d1-e3fa-8112-60180940c994','c74d759e-ca97-9c85-566b-6017ca9f5554',-98,'2021-02-01 14:02:35',0),('49c48aea-54dd-d2e5-01d6-6018099fdebc','59940d2d-46d1-e3fa-8112-60180940c994','cab346aa-9975-17b1-bd41-6017ca561174',80,'2021-02-01 14:02:35',0),('49c88981-c614-24fc-4b9c-601810b40c40','bef307c8-d095-6341-6352-601810875b07','aecb124c-09c7-d9f6-442e-6017ca33edc8',75,'2021-02-01 14:31:59',0),('49d950ea-5373-5420-e8e8-601810ef0047','145ce98a-0b57-3e66-8f20-60180fdba411','d7a4a93f-f2b9-7acf-fd1a-6017ca338e09',75,'2021-02-01 14:29:35',0),('49dbc1e1-85fe-bc57-6f34-60180f090c72','52c526cb-9c4a-23b6-b39f-60180f9089b2','e03d1f5c-2513-24d8-bdde-6017ca945ff0',80,'2021-02-01 14:26:44',0),('49ed2d38-7a5c-4893-934a-601811ef4cdb','a0b17db8-3562-2520-7a5b-60181003f945','31869517-c36b-60a8-d27a-6017ca2d73ca',75,'2021-02-01 14:33:27',0),('49f7f459-f207-fc1a-1fb5-6018091ddb8d','54779abd-cf10-d4b8-3946-601809414e38','e5eb98c6-09e5-65bc-7b07-6017caf35be0',89,'2021-02-01 14:00:42',0),('4a0f1b12-9af8-a6f8-159f-601809abd99b','59940d2d-46d1-e3fa-8112-60180940c994','c9f5ba8f-acbd-9e14-381d-6017cabba8c0',80,'2021-02-01 14:02:35',0),('4a266d5b-6469-89df-4a9e-601809e1876f','54779abd-cf10-d4b8-3946-601809414e38','ea20640d-5cb5-0ec5-e35a-6017ca8a8a15',90,'2021-02-01 14:00:42',0),('4a33fbd4-ac32-eb7d-dbe0-60181069e380','145ce98a-0b57-3e66-8f20-60180fdba411','d71fb77c-48a2-8f60-7e1b-6017ca5bccba',75,'2021-02-01 14:29:35',0),('4a46705b-ba2d-aecf-8da6-60181145c87e','a0b17db8-3562-2520-7a5b-60181003f945','d7ba2bb6-7b6d-76c1-1c42-6017ca823bcd',-99,'2021-02-01 14:33:27',0),('4a56b095-2899-426a-0e2b-6018097ec4d7','59940d2d-46d1-e3fa-8112-60180940c994','cc0d998d-d33d-2b7c-1413-6017ca1a425a',80,'2021-02-01 14:02:35',0),('4a64d973-7744-4e16-0695-60180fc546fa','52c526cb-9c4a-23b6-b39f-60180f9089b2','e454847f-e338-c3eb-be96-6017ca4a2ea3',-99,'2021-02-01 14:26:44',0),('4a700bfc-91c6-3003-ad70-601809941c2a','54779abd-cf10-d4b8-3946-601809414e38','c9ed4ae1-e5d0-dc21-67ac-6017ca672b32',90,'2021-02-01 14:00:42',0),('4a71e983-bca8-dd2f-336e-60180980ad53','54779abd-cf10-d4b8-3946-601809414e38','e91c140d-d1a4-7a42-2181-6017cad6448e',90,'2021-02-01 14:00:42',0),('4aa0948b-4852-2e21-d2cb-601810c24d27','145ce98a-0b57-3e66-8f20-60180fdba411','d9109e29-93c3-3b11-a26e-6017ca4c8c53',75,'2021-02-01 14:29:35',0),('4ab89b6b-50f3-d315-8443-60180961e694','54779abd-cf10-d4b8-3946-601809414e38','ece932f0-236d-af78-5fc3-6017ca39f7be',90,'2021-02-01 14:00:42',0),('4ac004af-3903-b72d-ae5e-601809b2c82f','54779abd-cf10-d4b8-3946-601809414e38','e24cd46c-c7c0-b6e7-f8be-6017cadc5e71',90,'2021-02-01 14:00:42',0),('4ac372ed-1dcb-83bb-9f4d-6018119e187f','a0b17db8-3562-2520-7a5b-60181003f945','30f90944-e730-df75-95e6-6017ca1fa55b',-99,'2021-02-01 14:33:27',0),('4acd9242-7d41-4c94-022b-6018095c91b9','59940d2d-46d1-e3fa-8112-60180940c994','cb671498-76a3-0ff6-3b03-6017ca56cae8',-99,'2021-02-01 14:02:35',0),('4aee6262-caba-b885-7d4e-601811a02f2a','a0b17db8-3562-2520-7a5b-60181003f945','d57cbe4e-28dc-3341-3148-6017ca4ae022',75,'2021-02-01 14:33:27',0),('4af31a54-b78c-4f54-fde1-6018097c40c0','54779abd-cf10-d4b8-3946-601809414e38','eae8eb86-ed25-499c-d9d5-6017ca5c45da',90,'2021-02-01 14:00:42',0),('4af76498-0bc5-b413-b6be-60181006f3ce','145ce98a-0b57-3e66-8f20-60180fdba411','d881ab81-f5b9-7815-7501-6017caab079d',-99,'2021-02-01 14:29:35',0),('4b26181f-9cf0-eac4-19dd-601809b1fe3b','54779abd-cf10-d4b8-3946-601809414e38','e7ed5142-9b57-558e-95a9-6017ca713940',90,'2021-02-01 14:00:42',0),('4b32c4e3-1a4c-3ea6-623b-601810ae23a3','bef307c8-d095-6341-6352-601810875b07','cb26adac-ed61-d3a3-7c6e-6017ca433812',89,'2021-02-01 14:31:59',0),('4b34bc25-b6ce-0a5a-ce30-601811c28d39','a0b17db8-3562-2520-7a5b-60181003f945','2fc42adb-d386-a4c7-ec11-6017cae90eed',75,'2021-02-01 14:33:27',0),('4b36d77d-3271-f15d-e4ae-6018098afc66','59940d2d-46d1-e3fa-8112-60180940c994','c8c2766e-917f-40ca-4d6d-6017caf3f0d5',80,'2021-02-01 14:02:35',0),('4b387e01-d13a-6d3a-3abe-60181032158d','145ce98a-0b57-3e66-8f20-60180fdba411','d67affcf-e393-960c-30dc-6017cadbbb20',75,'2021-02-01 14:29:35',0),('4b57e122-78fa-963d-3a75-60180f9d6d5b','52c526cb-9c4a-23b6-b39f-60180f9089b2','de3aca57-08ed-bd1c-71db-6017caa8a814',80,'2021-02-01 14:26:44',0),('4b7bdf03-48d2-9293-e351-601811fbd4f3','a0b17db8-3562-2520-7a5b-60181003f945','da4e44f2-19f9-33ea-a79f-6017caf3bb39',-99,'2021-02-01 14:33:27',0),('4b7cb926-8319-aa53-8631-601809cce70d','54779abd-cf10-d4b8-3946-601809414e38','edf66900-4cc5-2778-b45b-6017ca4872c6',90,'2021-02-01 14:00:42',0),('4ba28069-805e-4b09-7afd-601809028a07','54779abd-cf10-d4b8-3946-601809414e38','e6b81b67-beb5-38c3-5233-6017ca74980e',90,'2021-02-01 14:00:42',0),('4ba81498-c9ea-413a-db1f-601811b79477','a0b17db8-3562-2520-7a5b-60181003f945','3214d713-d19f-6c9e-ceb2-6017ca55bf89',-99,'2021-02-01 14:33:27',0),('4ba8d76e-37ca-f0cd-9c6e-601809ad17d9','59940d2d-46d1-e3fa-8112-60180940c994','cc7cc659-153f-71ed-f0d2-6017caa4c207',-99,'2021-02-01 14:02:35',0),('4bb7cfee-a826-5b4e-7fdd-60181032bea2','145ce98a-0b57-3e66-8f20-60180fdba411','d972e5ac-ed9b-9d26-c01a-6017cabd1654',-99,'2021-02-01 14:29:35',0),('4bbe0d91-c35b-9f84-f816-601810b956c3','145ce98a-0b57-3e66-8f20-60180fdba411','b148ee1e-32f7-3ee6-9bd5-6017ca688368',-99,'2021-02-01 14:29:35',0),('4bd22b56-0682-d52c-3545-601809d97752','54779abd-cf10-d4b8-3946-601809414e38','87539216-07b6-7711-9aa8-6017ca0d4d82',89,'2021-02-01 14:00:42',0),('4bdaeb95-dea0-407f-91f5-60181118b3cf','a0b17db8-3562-2520-7a5b-60181003f945','2f59f53b-49d7-6e72-6586-6017ca3316c8',75,'2021-02-01 14:33:27',0),('4be8dd3b-a2c7-1083-4696-601809bc3806','59940d2d-46d1-e3fa-8112-60180940c994','c840be03-804c-7707-c944-6017ca14f4b9',80,'2021-02-01 14:02:35',0),('4bf8c726-ec2b-698e-2218-60180fba4fd4','52c526cb-9c4a-23b6-b39f-60180f9089b2','72355743-6e36-a4b8-a9ae-6017ca6d4186',-98,'2021-02-01 14:26:44',0),('4c128722-f77d-9a65-a710-601809b326ec','54779abd-cf10-d4b8-3946-601809414e38','8c9ce024-16d3-ce97-f6f1-6017cafec8a2',90,'2021-02-01 14:00:42',0),('4c1781ed-2b2f-7adc-3a87-6018107fefaf','bef307c8-d095-6341-6352-601810875b07','d1b4b2de-3c43-1cf8-1126-6017caf932db',75,'2021-02-01 14:31:59',0),('4c1ec162-7deb-5e9e-c0c0-601809c2f82f','59940d2d-46d1-e3fa-8112-60180940c994','91ed6183-922d-c827-70cc-6017ca0f80a2',-98,'2021-02-01 14:02:35',0),('4c483f21-216d-300d-6ec1-601809be5fa9','54779abd-cf10-d4b8-3946-601809414e38','8ba34aa2-a2dd-fb51-3753-6017cad94619',90,'2021-02-01 14:00:42',0),('4c4f00e5-e7de-f917-f6bb-6018108b2f6b','145ce98a-0b57-3e66-8f20-60180fdba411','6ffacbb5-5dca-0c27-5fae-6017ca1495ba',75,'2021-02-01 14:29:35',0),('4c665585-6ab9-7747-18a6-601809e4670f','59940d2d-46d1-e3fa-8112-60180940c994','9634bb2c-d95f-d6c4-301c-6017ca77e3e4',80,'2021-02-01 14:02:35',0),('4c7bcc23-6392-9ebc-0a50-601811223833','a0b17db8-3562-2520-7a5b-60181003f945','d3d342d1-256b-ae27-5355-6017ca3b20ae',75,'2021-02-01 14:33:27',0),('4c7e3232-fcb2-747e-36b0-601809e368d0','54779abd-cf10-d4b8-3946-601809414e38','8f62e502-a51a-1dbf-4c0e-6017cabe0b1a',90,'2021-02-01 14:00:42',0),('4c952bb2-7982-39fe-623c-601809f115e2','59940d2d-46d1-e3fa-8112-60180940c994','947ad549-f887-3d63-b7a7-6017cad7458e',80,'2021-02-01 14:02:35',0),('4ca6be53-2b6a-2c15-b2d1-60180fe8d444','52c526cb-9c4a-23b6-b39f-60180f9089b2','773803fa-601f-7f1f-8433-6017caf1fefd',80,'2021-02-01 14:26:44',0),('4caf5ce0-541e-d6ce-988e-6018097b9bc5','54779abd-cf10-d4b8-3946-601809414e38','8d58526e-ae7c-89f1-c5ab-6017ca767f94',90,'2021-02-01 14:00:42',0),('4cb1b2ea-4aa1-769f-7b95-6018109bc8ad','145ce98a-0b57-3e66-8f20-60180fdba411','d4ef4a17-0ff2-1c7d-f14a-6017ca54bfe6',75,'2021-02-01 14:29:35',0),('4cee4bfe-0c4f-7aa3-2d14-6018092a8a2d','54779abd-cf10-d4b8-3946-601809414e38','8aa714aa-4b3e-19ba-274e-6017ca4697ff',90,'2021-02-01 14:00:42',0),('4cfb8ec3-7c4c-b9ec-b920-6018117bf487','a0b17db8-3562-2520-7a5b-60181003f945','546743cc-6fc6-624c-2dec-6017ca948cf7',89,'2021-02-01 14:33:27',0),('4d068a8d-ba43-5151-b2b1-6018090e7662','59940d2d-46d1-e3fa-8112-60180940c994','9876e9d1-2bff-c6c5-6d01-6017cade8e1f',80,'2021-02-01 14:02:35',0),('4d19eddf-33cd-8221-4aa2-601811aec162','a0b17db8-3562-2520-7a5b-60181003f945','14bda9be-7f00-c47d-4d67-6017caadd7c7',-98,'2021-02-01 14:33:27',0),('4d2531be-6e09-1004-a372-60180fc6e7bb','52c526cb-9c4a-23b6-b39f-60180f9089b2','75e95896-bfb4-e7d1-8d5d-6017ca577257',80,'2021-02-01 14:26:44',0),('4d34af77-e166-d4b1-7a75-60180963b893','54779abd-cf10-d4b8-3946-601809414e38','906d69aa-1fca-7278-c57c-6017caee5833',90,'2021-02-01 14:00:42',0),('4d4f03ef-52e9-a948-b184-6018098a0794','59940d2d-46d1-e3fa-8112-60180940c994','97b2709d-df39-baf3-964d-6017ca844416',-99,'2021-02-01 14:02:35',0),('4d6a04a6-f610-e725-623f-6018114ac6f3','a0b17db8-3562-2520-7a5b-60181003f945','da670931-2349-18a0-44b3-6017ca9c2ded',75,'2021-02-01 14:33:27',0),('4d717b8b-80d7-3c0b-d5a6-60181091ecf6','bef307c8-d095-6341-6352-601810875b07','d10ba092-b594-4c74-4464-6017cad87ad6',75,'2021-02-01 14:31:59',0),('4d72e0f6-a787-76fa-a7f3-601810701025','145ce98a-0b57-3e66-8f20-60180fdba411','b5c62ffc-a30c-fba7-206c-6017ca00a390',-98,'2021-02-01 14:29:35',0),('4d88e9d1-4228-1710-70b8-6018091c7b87','54779abd-cf10-d4b8-3946-601809414e38','8911290d-27ae-4a1a-6dc7-6017cacc0f60',90,'2021-02-01 14:00:42',0),('4d9953d9-a12d-9272-2f94-6018118ef7e4','a0b17db8-3562-2520-7a5b-60181003f945','1885785c-ffcf-a049-a431-6017ca33ab98',75,'2021-02-01 14:33:27',0),('4da02095-212c-e917-177d-6018092f10a0','59940d2d-46d1-e3fa-8112-60180940c994','93d8cd13-cf78-d508-6128-6017ca32e37c',80,'2021-02-01 14:02:35',0),('4da407c1-38ba-d1da-534b-60180a7b2aeb','920ed607-4a99-1bc8-930d-60180a7c44f1','c0400db5-486a-beee-146a-6017ca7174dc',-98,'2021-02-01 14:04:44',0),('4dd5b08e-efc2-80dc-c3b5-601809228907','54779abd-cf10-d4b8-3946-601809414e38','38f99f5f-181a-9090-099b-6017ca1e67cb',89,'2021-02-01 14:00:42',0),('4df5dd10-9e88-ddf9-07d2-601809e683d0','59940d2d-46d1-e3fa-8112-60180940c994','997bc36e-3b1a-b7f4-8f68-6017caa01d84',-99,'2021-02-01 14:02:35',0),('4df8d052-6a18-e67d-a464-6018100ee8c3','145ce98a-0b57-3e66-8f20-60180fdba411','b9446e01-b190-5369-dac0-6017ca90247e',75,'2021-02-01 14:29:35',0),('4e050002-affc-f46a-2315-60180f168a4b','52c526cb-9c4a-23b6-b39f-60180f9089b2','79640946-aee0-9f50-e62a-6017cae5892d',80,'2021-02-01 14:26:44',0),('4e0b8686-1dad-6d2f-65e1-601811f0af78','a0b17db8-3562-2520-7a5b-60181003f945','597eaaa5-85c4-a5dd-05a5-6017cac9ea90',75,'2021-02-01 14:33:27',0),('4e100247-7cd1-42a5-4c39-60181138f91e','a0b17db8-3562-2520-7a5b-60181003f945','17e1ca17-e91d-6b29-f43b-6017ca7b4f1f',75,'2021-02-01 14:33:27',0),('4e26a73e-3321-a3c1-ef61-601810f2d44c','bef307c8-d095-6341-6352-601810875b07','d3178c03-b2e4-a425-9eca-6017ca72eb45',75,'2021-02-01 14:31:59',0),('4e2700b7-7799-7bd1-83e4-601809e4415a','54779abd-cf10-d4b8-3946-601809414e38','e193cedb-c4ed-434d-40b7-6017cab333cc',90,'2021-02-01 14:00:42',0),('4e5cd804-5fd4-d06f-d0b3-601809f2e130','59940d2d-46d1-e3fa-8112-60180940c994','92b903d6-cb45-ba2b-3c16-6017caf5e9e9',80,'2021-02-01 14:02:35',0),('4e792fbc-8236-8bf0-87aa-6018095cd36a','54779abd-cf10-d4b8-3946-601809414e38','3cc306a6-c503-f389-366b-6017ca4e3ae0',90,'2021-02-01 14:00:42',0),('4e931e0b-e357-f8f9-8c59-60180fcf151b','52c526cb-9c4a-23b6-b39f-60180f9089b2','77ccb264-3890-c274-4e17-6017ca98c87e',-99,'2021-02-01 14:26:44',0),('4e97964c-059c-3507-ee27-60181096c8c3','145ce98a-0b57-3e66-8f20-60180fdba411','b8979993-d9e2-3c23-2378-6017ca043ead',75,'2021-02-01 14:29:35',0),('4ea03137-92ce-6fb9-9182-60180952fe2f','59940d2d-46d1-e3fa-8112-60180940c994','a49603d3-7f15-abda-b0d5-6017ca7fcdde',-98,'2021-02-01 14:02:35',0),('4eaf1af5-3043-66d2-94ee-60181125365d','a0b17db8-3562-2520-7a5b-60181003f945','58bb86e4-ee28-d2dd-36d4-6017ca0907f4',75,'2021-02-01 14:33:27',0),('4ebfe963-17d6-2424-602b-6018092dde42','54779abd-cf10-d4b8-3946-601809414e38','3b42d0fb-c107-dcf4-16de-6017cac16fb4',90,'2021-02-01 14:00:42',0),('4ed867d2-e4f7-eb2f-6ec7-601810a898b6','145ce98a-0b57-3e66-8f20-60180fdba411','71fc608d-8555-80f2-5372-6017cae78ce3',75,'2021-02-01 14:29:35',0),('4ef9427a-0abd-ba23-5752-601811ead673','a0b17db8-3562-2520-7a5b-60181003f945','5cc0b349-3770-876d-484a-6017ca3bee65',75,'2021-02-01 14:33:27',0),('4f002cd2-f247-c8f7-01ab-6018093e37ad','54779abd-cf10-d4b8-3946-601809414e38','3f4cef04-3d0e-4ab5-e4e0-6017cab3974e',90,'2021-02-01 14:00:42',0),('4f3bec76-247c-7e29-201e-601809e3e76b','54779abd-cf10-d4b8-3946-601809414e38','3d7be9aa-7dc1-6080-e224-6017cadbda7e',90,'2021-02-01 14:00:42',0),('4f407ffa-73dc-eae2-57ea-6018100121e4','145ce98a-0b57-3e66-8f20-60180fdba411','ba77c542-9e5d-7ae6-e3f9-6017caa020b9',75,'2021-02-01 14:29:35',0),('4f41eda1-9b44-bf75-6d10-601810799e5e','bef307c8-d095-6341-6352-601810875b07','d23c0c73-ef18-7df2-801f-6017cae194f6',-99,'2021-02-01 14:31:59',0),('4f64fe64-f008-ceae-f789-6018115809e5','a0b17db8-3562-2520-7a5b-60181003f945','5aec88a5-6ff8-c1dc-8178-6017ca019e55',-99,'2021-02-01 14:33:27',0),('4f6a6e2b-db85-cfbc-6781-6018117b0eb4','a0b17db8-3562-2520-7a5b-60181003f945','1a3588bc-571c-f7ab-7799-6017cab6e09b',75,'2021-02-01 14:33:27',0),('4f71b77b-bf2f-8541-f547-6018095a85f4','59940d2d-46d1-e3fa-8112-60180940c994','a96a916f-2bdc-49ea-aa25-6017cac6a313',80,'2021-02-01 14:02:35',0),('4f73dfef-1fca-dfd0-8e61-6018091b3266','54779abd-cf10-d4b8-3946-601809414e38','3aba1255-f1e3-6773-82a2-6017ca6f698a',90,'2021-02-01 14:00:42',0),('4fb3b1a0-8865-ebe2-967d-601809269148','54779abd-cf10-d4b8-3946-601809414e38','3ffd6654-cef8-3289-d225-6017ca354fd4',90,'2021-02-01 14:00:42',0),('4fb3d4fb-04ca-9e25-9b54-60180f2162f1','52c526cb-9c4a-23b6-b39f-60180f9089b2','73fdb388-e429-64d1-7485-6017cae6514d',80,'2021-02-01 14:26:44',0),('4fb95fa0-ba6b-e3f3-1d3b-6018092f5eb3','59940d2d-46d1-e3fa-8112-60180940c994','a8a24c95-1318-6fc6-2eba-6017ca621c60',80,'2021-02-01 14:02:35',0),('4fc1008d-e953-7ef4-8f37-601810bb60ed','bef307c8-d095-6341-6352-601810875b07','60d4e068-e997-5fa7-cb8f-6017cafcf344',-98,'2021-02-01 14:31:59',0),('4fcddc42-f11a-3171-d8da-601810a61d24','145ce98a-0b57-3e66-8f20-60180fdba411','b9e54d8b-7ade-bc5b-658e-6017ca43b993',-99,'2021-02-01 14:29:35',0),('4fd67f5a-fa08-31d1-7873-60181022d980','bef307c8-d095-6341-6352-601810875b07','cf98c060-aa97-69a2-bfb8-6017caf73ecc',75,'2021-02-01 14:31:59',0),('4fd940fc-7e21-26df-c728-601811dfff69','a0b17db8-3562-2520-7a5b-60181003f945','56b5cd8a-0abd-eafa-d278-6017ca815664',75,'2021-02-01 14:33:27',0),('4fe8a738-c8a0-1f45-b25b-601809f1b03e','54779abd-cf10-d4b8-3946-601809414e38','39c652a6-3413-596a-1ba7-6017cad4d33c',90,'2021-02-01 14:00:42',0),('501fe3f3-ed31-3dff-12fc-601809272450','59940d2d-46d1-e3fa-8112-60180940c994','abbf2bfc-ea68-ef97-1d5a-6017ca3f28ba',80,'2021-02-01 14:02:35',0),('502279c1-8ebe-cb4a-54dd-6018099ca3af','54779abd-cf10-d4b8-3946-601809414e38','d29bdfb0-fe1c-8857-e905-6017caea5473',89,'2021-02-01 14:00:42',0),('5063347c-9834-4c88-4dec-601809278aab','54779abd-cf10-d4b8-3946-601809414e38','d73cd5f5-e1d8-5170-7d78-6017cabb0ed2',90,'2021-02-01 14:00:42',0),('5069260a-9eca-11f9-818c-60180f30cf81','52c526cb-9c4a-23b6-b39f-60180f9089b2','7a44a0a8-2174-0769-fff0-6017caa1731c',-99,'2021-02-01 14:26:44',0),('50a1d3c1-2150-5843-1530-6018102dde09','145ce98a-0b57-3e66-8f20-60180fdba411','b742e7ee-1eaa-6de2-be09-6017ca43a204',75,'2021-02-01 14:29:35',0),('50b50017-aaad-30d2-184f-601809321bff','54779abd-cf10-d4b8-3946-601809414e38','d696d729-adb1-4fec-3046-6017caa1340f',90,'2021-02-01 14:00:42',0),('50be4917-ceaa-2194-6d70-60181112f4d4','a0b17db8-3562-2520-7a5b-60181003f945','5d9bcf8a-f920-4d6c-4092-6017caf54c89',-99,'2021-02-01 14:33:27',0),('50d6fafc-eb00-0c68-2f92-6018104c9616','bef307c8-d095-6341-6352-601810875b07','d3a03f58-2d84-2e3c-5b75-6017ca7a050c',-99,'2021-02-01 14:31:59',0),('50e4005c-8119-e543-b2c6-60180a8c7267','920ed607-4a99-1bc8-930d-60180a7c44f1','45ba0903-1ee6-3328-71bc-6017ca5f8701',80,'2021-02-01 14:04:44',0),('50ecacc0-cdd7-faa6-a154-601811bce064','a0b17db8-3562-2520-7a5b-60181003f945','198739f4-0bbd-3331-cf7a-6017ca5f75d9',-99,'2021-02-01 14:33:27',0),('50f77537-bd7d-78f4-7666-6018097834e6','54779abd-cf10-d4b8-3946-601809414e38','d98b8285-6c4f-9047-3246-6017caf67d11',90,'2021-02-01 14:00:42',0),('510668c6-ac88-ef5d-59ec-60181135a82c','a0b17db8-3562-2520-7a5b-60181003f945','54ee577a-c979-bb12-f31e-6017ca80543c',75,'2021-02-01 14:33:27',0),('5107ad58-e8eb-9422-68a3-6018094a99ab','59940d2d-46d1-e3fa-8112-60180940c994','aae46ef4-441b-7567-6a4b-6017ca26f182',-99,'2021-02-01 14:02:35',0),('512a9d40-cea1-7299-9fae-60180ffe92f5','52c526cb-9c4a-23b6-b39f-60180f9089b2','733ed99a-4574-0176-f887-6017cabe49e9',80,'2021-02-01 14:26:44',0),('5132af6d-8b2c-e8f2-d80b-6018095d332c','54779abd-cf10-d4b8-3946-601809414e38','d7ba2bb6-7b6d-76c1-1c42-6017ca823bcd',90,'2021-02-01 14:00:42',0),('513fad11-d3c8-9557-e1e9-601809cfb503','59940d2d-46d1-e3fa-8112-60180940c994','a703c7b1-bdc0-8848-c82e-6017ca3a4705',80,'2021-02-01 14:02:35',0),('5166fbea-53fd-e1c2-3adc-60181079d5f3','145ce98a-0b57-3e66-8f20-60180fdba411','71456b4c-71e5-7e70-8411-6017caf4f852',-99,'2021-02-01 14:29:35',0),('51724bdb-ab0e-95db-ce0b-601810460ec4','bef307c8-d095-6341-6352-601810875b07','cdae776a-3357-3fc3-e44d-6017ca2c967b',75,'2021-02-01 14:31:59',0),('51766ae0-5ead-1c55-0466-601809ed09a5','54779abd-cf10-d4b8-3946-601809414e38','d57cbe4e-28dc-3341-3148-6017ca4ae022',90,'2021-02-01 14:00:42',0),('51982d28-f89c-9c8d-e84b-60181178a538','a0b17db8-3562-2520-7a5b-60181003f945','95caaeaf-93f3-7e0f-a75d-6017cafeac2b',-98,'2021-02-01 14:33:27',0),('51b6e429-cd67-630b-f336-6018117b2667','a0b17db8-3562-2520-7a5b-60181003f945','175189ff-4043-fa73-2651-6017ca9d5d05',75,'2021-02-01 14:33:27',0),('51beb0f8-00a3-2021-1813-6018094d7d4a','54779abd-cf10-d4b8-3946-601809414e38','da4e44f2-19f9-33ea-a79f-6017caf3bb39',90,'2021-02-01 14:00:42',0),('51eb6fce-44fc-1e14-ea93-60181089119c','bef307c8-d095-6341-6352-601810875b07','97f22f4d-0e7c-61e6-6799-6017cac0b6fb',89,'2021-02-01 14:31:59',0),('51f2d009-e5fc-3f73-83fd-601809209425','59940d2d-46d1-e3fa-8112-60180940c994','ac9cd086-502b-675f-923d-6017ca9ae10e',-99,'2021-02-01 14:02:35',0),('51fd1631-7224-1dd7-a716-6018096a709b','54779abd-cf10-d4b8-3946-601809414e38','d3d342d1-256b-ae27-5355-6017ca3b20ae',90,'2021-02-01 14:00:42',0),('52110b31-c678-29e8-3724-601810403276','bef307c8-d095-6341-6352-601810875b07','a96a916f-2bdc-49ea-aa25-6017cac6a313',75,'2021-02-01 14:31:59',0),('5216be18-2ac9-d178-4773-6018109ca6a7','145ce98a-0b57-3e66-8f20-60180fdba411','baed9da3-990f-9c19-73a4-6017ca3443a1',-99,'2021-02-01 14:29:35',0),('52191205-9753-5b99-cf86-60180f0ca2da','52c526cb-9c4a-23b6-b39f-60180f9089b2','ea5c0154-cef1-803b-0ba7-6017ca67a911',-98,'2021-02-01 14:26:44',0),('523522d7-c648-67d9-7616-60180997ee5f','54779abd-cf10-d4b8-3946-601809414e38','546743cc-6fc6-624c-2dec-6017ca948cf7',89,'2021-02-01 14:00:42',0),('523c0383-07d9-4e0a-3992-601809b1f63d','59940d2d-46d1-e3fa-8112-60180940c994','a5302dea-b8c6-d94c-ef60-6017ca19b99f',80,'2021-02-01 14:02:35',0),('52558ff3-4562-00ad-b8f6-601811e3b9e8','a0b17db8-3562-2520-7a5b-60181003f945','1aef1fca-33a2-3d5d-9453-6017ca899039',-99,'2021-02-01 14:33:27',0),('52685949-5762-b94b-7614-6018091b5f2b','54779abd-cf10-d4b8-3946-601809414e38','597eaaa5-85c4-a5dd-05a5-6017cac9ea90',90,'2021-02-01 14:00:42',0),('5281ebaf-dbfd-829f-0187-601811554e14','a0b17db8-3562-2520-7a5b-60181003f945','98d80d64-442b-4845-f330-6017ca409579',75,'2021-02-01 14:33:27',0),('5294f19b-78b2-d24b-6b15-601809715958','59940d2d-46d1-e3fa-8112-60180940c994','d43bc43e-e2fe-955f-ef9d-6017ca02a76f',-98,'2021-02-01 14:02:35',0),('529fe099-6fde-d0eb-3744-601810ca7dc2','145ce98a-0b57-3e66-8f20-60180fdba411','6f4ed682-115a-e071-aa74-6017caf739a3',75,'2021-02-01 14:29:35',0),('52a862d6-d237-4284-06fb-6018103b9881','bef307c8-d095-6341-6352-601810875b07','9c902b35-c1f4-32bf-0803-6017ca926dbe',75,'2021-02-01 14:31:59',0),('52bd55e6-6ebc-0468-95d5-6018098816b6','54779abd-cf10-d4b8-3946-601809414e38','58bb86e4-ee28-d2dd-36d4-6017ca0907f4',90,'2021-02-01 14:00:42',0),('52c68f5d-a463-0eee-137e-601810b32742','145ce98a-0b57-3e66-8f20-60180fdba411','b6911c5b-48f3-c461-d700-6017ca6f7761',75,'2021-02-01 14:29:35',0),('52e9724e-f7a8-6b53-397e-601811fa6f4d','a0b17db8-3562-2520-7a5b-60181003f945','168d6de1-a01a-c7ed-0e6b-6017ca961af0',75,'2021-02-01 14:33:27',0),('52f2278b-7c5f-baec-670b-60180f33a493','52c526cb-9c4a-23b6-b39f-60180f9089b2','14b748ba-7445-1bed-a6bc-6017ca1ed7b4',80,'2021-02-01 14:26:44',0),('52ff6ae2-c078-d6e8-dac8-6018091a91a0','54779abd-cf10-d4b8-3946-601809414e38','5cc0b349-3770-876d-484a-6017ca3bee65',90,'2021-02-01 14:00:42',0),('53035244-bade-5ebd-a63f-60180972925b','59940d2d-46d1-e3fa-8112-60180940c994','d786a57c-50fa-3400-5b9b-6017cac510a9',80,'2021-02-01 14:02:35',0),('5307c849-e945-da27-0f92-601810423c6b','bef307c8-d095-6341-6352-601810875b07','9b63b5a6-2600-6a71-577a-6017ca89ae0e',75,'2021-02-01 14:31:59',0),('5307e992-d543-8947-fbf4-6018117a802b','a0b17db8-3562-2520-7a5b-60181003f945','98318ae3-2987-0db6-aedc-6017caa934f7',75,'2021-02-01 14:33:27',0),('53320217-930d-e741-c309-60180fab107d','52c526cb-9c4a-23b6-b39f-60180f9089b2','d57a9815-b8fa-f92d-8740-6017ca2996b4',80,'2021-02-01 14:26:44',0),('533415f1-6db3-9bef-c435-601809990629','54779abd-cf10-d4b8-3946-601809414e38','5aec88a5-6ff8-c1dc-8178-6017ca019e55',90,'2021-02-01 14:00:42',0),('53559729-9f88-b454-cabd-601809259ece','59940d2d-46d1-e3fa-8112-60180940c994','d6e4bfa4-cbed-cdd3-c897-6017ca052bde',80,'2021-02-01 14:02:35',0),('536491f7-7cb2-9a20-9b9a-601811bacb7b','a0b17db8-3562-2520-7a5b-60181003f945','a6f22aa9-813e-d48d-cbcf-6017cafe3c98',-98,'2021-02-01 14:33:27',0),('53670768-323a-8904-75db-601809171e02','54779abd-cf10-d4b8-3946-601809414e38','e3d7c102-1126-6fe9-1677-6017ca809dba',90,'2021-02-01 14:00:42',0),('53841326-fb4d-0e5d-122c-60180913ef27','54779abd-cf10-d4b8-3946-601809414e38','56b5cd8a-0abd-eafa-d278-6017ca815664',90,'2021-02-01 14:00:42',0),('538e0861-cf2e-dbfa-b4e8-601809c3a3af','59940d2d-46d1-e3fa-8112-60180940c994','d8ef97ea-8348-5f56-97ad-6017ca6a0460',80,'2021-02-01 14:02:35',0),('5399174a-1d72-fa8b-3001-60181067e8b2','145ce98a-0b57-3e66-8f20-60180fdba411','254fc6ba-64ef-df4a-d53f-6017ca814e78',-98,'2021-02-01 14:29:35',0),('53a972a4-185c-6bc8-68ba-601809684223','54779abd-cf10-d4b8-3946-601809414e38','5d9bcf8a-f920-4d6c-4092-6017caf54c89',90,'2021-02-01 14:00:42',0),('53bafa9e-a4a4-5fd2-0ee1-601811f132f0','a0b17db8-3562-2520-7a5b-60181003f945','9a0c8414-dc37-00e0-5f53-6017ca9df993',75,'2021-02-01 14:33:27',0),('53bbdeba-1756-1155-eb09-601810eb8cb3','bef307c8-d095-6341-6352-601810875b07','9dc29313-6fce-8cc2-bab3-6017ca93cb71',75,'2021-02-01 14:31:59',0),('53cefec7-053d-af20-dfa6-601811b53573','a0b17db8-3562-2520-7a5b-60181003f945','ab02cc22-401e-4f0b-5180-6017ca6944bb',75,'2021-02-01 14:33:27',0),('53cf80af-2b38-4b69-5bbe-6018091bb0c8','59940d2d-46d1-e3fa-8112-60180940c994','d840ab23-5d37-8c15-7888-6017ca6d0b7c',-99,'2021-02-01 14:02:35',0),('53f2a29f-6580-a064-ccf1-601809fcd2b1','54779abd-cf10-d4b8-3946-601809414e38','54ee577a-c979-bb12-f31e-6017ca80543c',90,'2021-02-01 14:00:42',0),('53fdad57-2268-e10d-7680-601809762be3','59940d2d-46d1-e3fa-8112-60180940c994','d620c5dd-c03f-9f13-31c7-6017ca213266',80,'2021-02-01 14:02:35',0),('540e0a71-ed86-454c-7678-6018104cc90a','145ce98a-0b57-3e66-8f20-60180fdba411','74193c93-40a8-b4b3-61b6-6017cabdd106',-99,'2021-02-01 14:29:35',0),('54128d2e-f3ac-0605-7b03-60181004fd8d','bef307c8-d095-6341-6352-601810875b07','9d2620e1-e27a-9565-dbda-6017ca3ffa98',-99,'2021-02-01 14:31:59',0),('54238119-7693-8075-7aba-601809bf625a','54779abd-cf10-d4b8-3946-601809414e38','95caaeaf-93f3-7e0f-a75d-6017cafeac2b',89,'2021-02-01 14:00:42',0),('543b834a-ce89-3ac4-db8a-60180f3e975a','52c526cb-9c4a-23b6-b39f-60180f9089b2','12a05087-ac9b-b480-ef56-6017ca5bb531',80,'2021-02-01 14:26:44',0),('54511f2a-e1e5-caae-eef7-601809c3530e','54779abd-cf10-d4b8-3946-601809414e38','98d80d64-442b-4845-f330-6017ca409579',90,'2021-02-01 14:00:42',0),('54652fff-7153-6b42-c56c-6018116c4511','a0b17db8-3562-2520-7a5b-60181003f945','998800ae-740e-54bd-2cba-6017caaaa73a',-99,'2021-02-01 14:33:27',0),('54781e19-21f2-e5bb-5cd9-601811c1683c','a0b17db8-3562-2520-7a5b-60181003f945','aa06a022-eebd-88bd-7c29-6017ca1a6417',75,'2021-02-01 14:33:27',0),('5489bf27-f0b1-31d2-aa79-6018100edff8','bef307c8-d095-6341-6352-601810875b07','99735554-9a7d-a7af-c53e-6017ca281ffa',75,'2021-02-01 14:31:59',0),('5499b681-fbe1-a8f3-0021-6018096f80a7','59940d2d-46d1-e3fa-8112-60180940c994','d98bf6b0-ff19-5726-0429-6017cad40d74',-99,'2021-02-01 14:02:35',0),('5499f891-8a74-ff19-8418-601809bbbcb5','54779abd-cf10-d4b8-3946-601809414e38','98318ae3-2987-0db6-aedc-6017caa934f7',90,'2021-02-01 14:00:42',0),('54cd6890-e6e0-6df9-bfa6-60181178e551','a0b17db8-3562-2520-7a5b-60181003f945','97cbb191-9ddd-400d-a042-6017ca5c4392',75,'2021-02-01 14:33:27',0),('54d8abdd-b8ea-e1d1-3714-601809c5127e','54779abd-cf10-d4b8-3946-601809414e38','9a0c8414-dc37-00e0-5f53-6017ca9df993',90,'2021-02-01 14:00:42',0),('54ee62f4-6800-820e-5a01-601809382c85','59940d2d-46d1-e3fa-8112-60180940c994','d4fcbe23-c827-2094-d420-6017ca831257',80,'2021-02-01 14:02:35',0),('54f06afd-44ae-5de2-a111-601811917f30','a0b17db8-3562-2520-7a5b-60181003f945','aceda745-edf4-6592-0ca7-6017ca7c89f8',75,'2021-02-01 14:33:27',0),('5511e8d3-094f-9e77-bdc1-60180fb153ea','52c526cb-9c4a-23b6-b39f-60180f9089b2','1844b369-3730-ed93-c1df-6017cad6ef13',80,'2021-02-01 14:26:44',0),('55197876-89c5-a30e-6b09-601809b74f5a','54779abd-cf10-d4b8-3946-601809414e38','998800ae-740e-54bd-2cba-6017caaaa73a',90,'2021-02-01 14:00:42',0),('552b8107-8ddb-c09d-22b3-601810e9d4b4','bef307c8-d095-6341-6352-601810875b07','9e6be21b-d7c9-3519-4dfc-6017ca2292c5',-99,'2021-02-01 14:31:59',0),('5534df8b-112c-f601-bfc4-6018097c1713','59940d2d-46d1-e3fa-8112-60180940c994','7b93328d-ff92-fab7-088a-6017caafa77b',-98,'2021-02-01 14:02:35',0),('555d764a-9243-66c9-5c19-601809c87afa','54779abd-cf10-d4b8-3946-601809414e38','97cbb191-9ddd-400d-a042-6017ca5c4392',90,'2021-02-01 14:00:42',0),('558509e7-be47-93f9-8ba8-6018117b8516','a0b17db8-3562-2520-7a5b-60181003f945','ac25d4dd-6de5-9c2a-8b4f-6017ca9dc9b7',-99,'2021-02-01 14:33:27',0),('5587a855-def5-7189-2f1d-601809f883ae','59940d2d-46d1-e3fa-8112-60180940c994','80721d39-a468-f6ac-c5a0-6017cadaaa11',80,'2021-02-01 14:02:35',0),('558ecfda-e0be-f46c-c4eb-601811234514','a0b17db8-3562-2520-7a5b-60181003f945','9aa4c23c-82cc-b784-2948-6017ca8efdf4',-99,'2021-02-01 14:33:27',0),('559dc43b-a198-f363-ef73-601809d4dcf9','54779abd-cf10-d4b8-3946-601809414e38','9aa4c23c-82cc-b784-2948-6017ca8efdf4',90,'2021-02-01 14:00:42',0),('55ac57f9-3694-3237-9169-601810fe2b7f','145ce98a-0b57-3e66-8f20-60180fdba411','28e1bd8d-b069-2676-b8fa-6017cac381c6',75,'2021-02-01 14:29:35',0),('55b990c6-8ab1-2cef-271b-6018108d0358','bef307c8-d095-6341-6352-601810875b07','98bae92f-53aa-2a9a-f0ae-6017ca2d9978',75,'2021-02-01 14:31:59',0),('55c3042c-6118-2076-c06c-601809bf71db','59940d2d-46d1-e3fa-8112-60180940c994','7f62c1e4-1794-9774-0835-6017ca110404',80,'2021-02-01 14:02:35',0),('55ca847a-e894-d0e2-f984-601809ed3451','54779abd-cf10-d4b8-3946-601809414e38','970785ad-0325-24c1-aa65-6017ca359798',90,'2021-02-01 14:00:42',0),('5605be89-68fd-443b-b004-601809320aca','59940d2d-46d1-e3fa-8112-60180940c994','81b7dc49-a8cd-d6de-bbc9-6017cac215e8',80,'2021-02-01 14:02:35',0),('5609f943-fb6b-798b-c9ac-601809712bcc','54779abd-cf10-d4b8-3946-601809414e38','2b082bd0-78e2-0f73-8f30-6017cae6b554',89,'2021-02-01 14:00:42',0),('560c8204-bbe7-af89-97a4-601811fed7ec','a0b17db8-3562-2520-7a5b-60181003f945','970785ad-0325-24c1-aa65-6017ca359798',75,'2021-02-01 14:33:27',0),('562463ea-7ba4-095c-6875-601810563ad0','bef307c8-d095-6341-6352-601810875b07','bc5c5ae8-69e2-79f1-be97-6017ca327292',-98,'2021-02-01 14:31:59',0),('5627d756-5015-83ca-0f7f-601809b7cfdd','54779abd-cf10-d4b8-3946-601809414e38','30c31271-8204-35d9-ac35-6017cac62b20',90,'2021-02-01 14:00:42',0),('56340f51-e0e5-8a32-9e35-60180f3b63d3','52c526cb-9c4a-23b6-b39f-60180f9089b2','6f4ed682-115a-e071-aa74-6017caf739a3',80,'2021-02-01 14:26:44',0),('56373c54-3b5c-e3ee-a1fb-60180f1060d5','52c526cb-9c4a-23b6-b39f-60180f9089b2','16b7009a-4890-65d1-3f8f-6017ca6c7043',-99,'2021-02-01 14:26:44',0),('56389b6f-4e93-196c-16c7-601811dd144d','a0b17db8-3562-2520-7a5b-60181003f945','a8bb31f6-150f-ff3f-bef0-6017ca208971',75,'2021-02-01 14:33:27',0),('56500451-5405-e848-83bd-601810415711','145ce98a-0b57-3e66-8f20-60180fdba411','277ebc96-5c1a-429e-912c-6017ca79e468',75,'2021-02-01 14:29:35',0),('566b01e1-739b-e5b1-53ee-60180a0bdeba','920ed607-4a99-1bc8-930d-60180a7c44f1','3aef02cd-a257-9c01-6b8b-6017ca8f909a',80,'2021-02-01 14:04:44',0),('567d956a-33f5-41d0-7439-601809d39c0f','54779abd-cf10-d4b8-3946-601809414e38','2efe11d5-6790-bf1f-8663-6017cad8523d',90,'2021-02-01 14:00:42',0),('5682c384-52f4-3397-ac4d-601809961dec','59940d2d-46d1-e3fa-8112-60180940c994','81318593-4681-4d8a-4fc0-6017cadfb23f',-99,'2021-02-01 14:02:35',0),('569c3ca2-ae2c-cce0-c27c-6018112ee052','a0b17db8-3562-2520-7a5b-60181003f945','2b082bd0-78e2-0f73-8f30-6017cae6b554',-98,'2021-02-01 14:33:27',0),('56afe678-cc24-25ae-8daf-60180920cdab','54779abd-cf10-d4b8-3946-601809414e38','331cee62-76bf-b82b-c04b-6017caf9b89c',90,'2021-02-01 14:00:42',0),('56b31657-b3a5-1078-e69e-601810d958c5','bef307c8-d095-6341-6352-601810875b07','c0d49832-2531-68de-84ac-6017cabd7e17',75,'2021-02-01 14:31:59',0),('56b5d200-1366-7ec0-a366-6018111216ef','a0b17db8-3562-2520-7a5b-60181003f945','ae8ad6ad-4263-f441-956e-6017ca7d5153',-99,'2021-02-01 14:33:27',0),('56d97784-cf48-b24b-2e1b-601809000686','59940d2d-46d1-e3fa-8112-60180940c994','7de3d8da-5c08-1db7-4a75-6017ca329c45',80,'2021-02-01 14:02:35',0),('56e10457-f74c-7746-1352-601809e40562','54779abd-cf10-d4b8-3946-601809414e38','324c45e0-5b40-9a13-bba7-6017ca617468',90,'2021-02-01 14:00:42',0),('56e35cc7-974c-bb7a-7206-601810673c7a','145ce98a-0b57-3e66-8f20-60180fdba411','2a3aa91e-f13f-e8e2-a69b-6017ca8378df',75,'2021-02-01 14:29:35',0),('57035af1-29f0-234d-279b-601811b4d88b','a0b17db8-3562-2520-7a5b-60181003f945','30c31271-8204-35d9-ac35-6017cac62b20',75,'2021-02-01 14:33:27',0),('5707fbab-abbc-1afb-cd9a-601810c50b60','145ce98a-0b57-3e66-8f20-60180fdba411','6ea461d8-ddf8-92b2-3408-6017ca96a386',75,'2021-02-01 14:29:35',0),('570a8023-8685-14b9-9d6b-601810c8c6de','bef307c8-d095-6341-6352-601810875b07','c03fe354-e2f4-98ae-d59a-6017ca91e9d3',75,'2021-02-01 14:31:59',0),('572123a3-d3b5-f004-8a74-60180f33e8ef','52c526cb-9c4a-23b6-b39f-60180f9089b2','1210b8d7-8527-cfab-15ab-6017ca872b87',80,'2021-02-01 14:26:44',0),('57350c6a-bacd-3a4c-1dd6-6018097825a9','54779abd-cf10-d4b8-3946-601809414e38','2e23ea98-4f52-4fe8-0c62-6017ca933a95',90,'2021-02-01 14:00:42',0),('5751ace1-9370-c0db-4600-6018096a4729','59940d2d-46d1-e3fa-8112-60180940c994','82ed8e62-4294-f0ca-6399-6017ca0cf556',-99,'2021-02-01 14:02:35',0),('57587e30-a8eb-42b0-569b-60181134da3b','a0b17db8-3562-2520-7a5b-60181003f945','a7a9f1ad-be16-ee19-451b-6017ca00687d',75,'2021-02-01 14:33:27',0),('5778a8e7-6f84-d648-11c7-601810882066','145ce98a-0b57-3e66-8f20-60180fdba411','e2bc5387-7429-ab0a-3d69-6017ca359d7b',89,'2021-02-01 14:29:35',0),('577c00ee-e086-4aa4-ef73-601809f1f5f3','54779abd-cf10-d4b8-3946-601809414e38','33998e3d-e989-c679-1dd4-6017ca3d2cc8',90,'2021-02-01 14:00:42',0),('578a006f-268f-4d40-2217-601809413330','59940d2d-46d1-e3fa-8112-60180940c994','7c284102-15d0-c329-fc54-6017ca9ed58f',80,'2021-02-01 14:02:35',0),('578a8c20-7ba3-b31c-cc01-601810f0f952','bef307c8-d095-6341-6352-601810875b07','c38d217e-6736-c873-0d76-6017ca449eb3',75,'2021-02-01 14:31:59',0),('578e062b-75bc-f551-fae1-601811eb2e56','a0b17db8-3562-2520-7a5b-60181003f945','2efe11d5-6790-bf1f-8663-6017cad8523d',75,'2021-02-01 14:33:27',0),('57b0854b-c2cf-f9c9-a319-601809ed1fae','59940d2d-46d1-e3fa-8112-60180940c994','8a0bec92-fd8e-4b45-cf5c-6017ca24ca89',-98,'2021-02-01 14:02:35',0),('57c3666f-58bb-df13-8b26-601811eebef4','a0b17db8-3562-2520-7a5b-60181003f945','41495400-5f9b-80d4-7075-6017ca472698',-98,'2021-02-01 14:33:27',0),('57dab865-1a57-bda1-ef19-601810da93c8','145ce98a-0b57-3e66-8f20-60180fdba411','29d86b7d-ffe9-9bfb-4cf1-6017ca8db6c7',-99,'2021-02-01 14:29:35',0),('57f21f35-901a-c7bb-cbd8-6018102f40c7','145ce98a-0b57-3e66-8f20-60180fdba411','e5173f3f-76a1-cf58-1013-6017cae80777',75,'2021-02-01 14:29:35',0),('57f87199-f875-0024-b942-601811510661','a0b17db8-3562-2520-7a5b-60181003f945','331cee62-76bf-b82b-c04b-6017caf9b89c',75,'2021-02-01 14:33:27',0),('57f9d3f0-d1cf-098c-f0f7-6018095eaae1','54779abd-cf10-d4b8-3946-601809414e38','2d2747b1-a21d-0f24-7ad8-6017cac0d820',90,'2021-02-01 14:00:42',0),('57fff2d7-75a0-e708-bc3d-60180947c6f9','59940d2d-46d1-e3fa-8112-60180940c994','8e8d16ca-188e-5eb5-00d6-6017caa388ea',80,'2021-02-01 14:02:35',0),('580bd9d0-6f74-2adf-d90b-6018103dcc97','bef307c8-d095-6341-6352-601810875b07','c1e1203c-3572-0db8-24e2-6017ca610d0c',-99,'2021-02-01 14:31:59',0),('582dbb6e-e67d-46bb-a5fe-601809089b8f','54779abd-cf10-d4b8-3946-601809414e38','f2e8e852-51ce-32b0-7d1a-6017ca06e346',89,'2021-02-01 14:00:42',0),('584f55d1-c6ae-fbf7-acb2-601809635986','59940d2d-46d1-e3fa-8112-60180940c994','8dbe583f-f32d-fe7e-36ab-6017ca55dcb4',80,'2021-02-01 14:02:35',0),('58595377-a988-94f2-68f8-6018110d24c1','a0b17db8-3562-2520-7a5b-60181003f945','469f31e2-b7bb-4b8b-6061-6017caccb79c',75,'2021-02-01 14:33:27',0),('5863252c-e2ea-63a5-8b4e-601810aafc09','145ce98a-0b57-3e66-8f20-60180fdba411','e4a782d6-f3e0-5420-7aa0-6017ca7dfddb',75,'2021-02-01 14:29:35',0),('58650448-052f-879c-e1a7-60180fdd2999','52c526cb-9c4a-23b6-b39f-60180f9089b2','e5eb98c6-09e5-65bc-7b07-6017caf35be0',-98,'2021-02-01 14:26:44',0),('5870528d-f9f6-fc75-e509-6018119617bd','a0b17db8-3562-2520-7a5b-60181003f945','324c45e0-5b40-9a13-bba7-6017ca617468',-99,'2021-02-01 14:33:27',0),('5877cc10-889f-665e-d0bc-601809d7ea26','54779abd-cf10-d4b8-3946-601809414e38','2cd00441-6e8e-a148-477b-6017ca30432f',90,'2021-02-01 14:00:42',0),('587c9d2a-b08c-c262-777f-60180f992b82','52c526cb-9c4a-23b6-b39f-60180f9089b2','193e9c15-b4d4-c673-1b4b-6017ca498afe',-99,'2021-02-01 14:26:44',0),('587eb989-d933-9997-c481-6018103d69d4','145ce98a-0b57-3e66-8f20-60180fdba411','26b29b11-218c-3567-bd34-6017ca3f73c5',75,'2021-02-01 14:29:35',0),('58950a14-25c3-7878-1d0f-601810a22203','bef307c8-d095-6341-6352-601810875b07','bee54d6c-3344-be7c-01e4-6017cabf69c7',75,'2021-02-01 14:31:59',0),('5898a6fd-3581-1a9b-5778-60180990edb9','59940d2d-46d1-e3fa-8112-60180940c994','91b62206-bc91-ce7c-4c8f-6017ca594770',80,'2021-02-01 14:02:35',0),('5899584f-0b57-65fe-f5e8-601809b59cfe','54779abd-cf10-d4b8-3946-601809414e38','1e1803a1-daa9-c147-059f-6017ca58540c',90,'2021-02-01 14:00:42',0),('589b0c30-0624-1d76-fcaa-60181168d9df','a0b17db8-3562-2520-7a5b-60181003f945','c0400db5-486a-beee-146a-6017ca7174dc',-98,'2021-02-01 14:33:27',0),('58a60a75-8655-2699-cbfa-601810f42fc5','145ce98a-0b57-3e66-8f20-60180fdba411','af785830-9b95-6e64-4175-6017ca031673',75,'2021-02-01 14:29:35',0),('58b91c4d-e924-fdad-2ba3-6018119a77e1','a0b17db8-3562-2520-7a5b-60181003f945','2e23ea98-4f52-4fe8-0c62-6017ca933a95',75,'2021-02-01 14:33:27',0),('58cdf793-04bc-8c98-1d5b-60181033ad11','bef307c8-d095-6341-6352-601810875b07','c4ba4945-bb22-2ce1-03e6-6017ca627fb1',-99,'2021-02-01 14:31:59',0),('58d077af-1600-a61f-e514-601809f2d30c','59940d2d-46d1-e3fa-8112-60180940c994','9023fcd5-063f-1f28-bab7-6017caf948ae',-99,'2021-02-01 14:02:35',0),('58d6604d-4e3b-4fef-e01a-601810dda4ec','145ce98a-0b57-3e66-8f20-60180fdba411','e5e30ecd-895c-7f29-b5f7-6017ca1db364',75,'2021-02-01 14:29:35',0),('58e0b736-5826-7afe-e3bf-60180949b96c','54779abd-cf10-d4b8-3946-601809414e38','487209ce-296c-c755-871c-6017caa41be8',90,'2021-02-01 14:00:42',0),('58e4202c-da8d-a27e-7996-6018117105df','a0b17db8-3562-2520-7a5b-60181003f945','44f7f214-0eda-d54d-eb23-6017ca98b487',75,'2021-02-01 14:33:27',0),('590bb678-9ae5-7f22-1dba-601809b0668b','59940d2d-46d1-e3fa-8112-60180940c994','8c53c744-e17b-6c7c-0ebc-6017cad02aed',80,'2021-02-01 14:02:35',0),('5914a5b3-7293-ee7a-3bd1-6018093d8cf7','54779abd-cf10-d4b8-3946-601809414e38','3c8f0a2d-b87e-6e7e-696c-6017caac546a',90,'2021-02-01 14:00:42',0),('59271e14-7fb7-42c5-eac9-6018103d7503','145ce98a-0b57-3e66-8f20-60180fdba411','2a7d2e1b-9b3e-32b5-1e78-6017ca4fecff',-99,'2021-02-01 14:29:35',0),('59409b4b-a7b3-73c5-d0e3-60180953f093','59940d2d-46d1-e3fa-8112-60180940c994','927431e0-c275-5a96-5d0b-6017cabe20e7',-99,'2021-02-01 14:02:35',0),('59455d7b-52d0-1342-0c2e-6018102ad72f','bef307c8-d095-6341-6352-601810875b07','bd19cf98-97d8-2daf-1f6b-6017ca395562',75,'2021-02-01 14:31:59',0),('5946b100-9f2d-4a84-0dd2-601810229c90','145ce98a-0b57-3e66-8f20-60180fdba411','e57cbf72-739f-a668-7683-6017cae2687a',-99,'2021-02-01 14:29:35',0),('595f13a7-b590-5397-d060-6018114275cc','a0b17db8-3562-2520-7a5b-60181003f945','48198c30-2080-5ee5-7b6e-6017cae64d7f',75,'2021-02-01 14:33:27',0),('595f6299-805e-aae0-082b-6018099a5131','54779abd-cf10-d4b8-3946-601809414e38','11450ed5-1ece-4320-83bb-6017ca13f200',90,'2021-02-01 14:00:42',0),('596555db-bf02-ab05-248a-601811c834cf','a0b17db8-3562-2520-7a5b-60181003f945','33998e3d-e989-c679-1dd4-6017ca3d2cc8',-99,'2021-02-01 14:33:27',0),('59885c70-d3ea-48e9-9b0d-60181012e6cb','145ce98a-0b57-3e66-8f20-60180fdba411','e3eed07f-5bb3-2703-e548-6017caddebbf',75,'2021-02-01 14:29:35',0),('59a4dae0-cb3f-96d6-5db9-60180992f08f','59940d2d-46d1-e3fa-8112-60180940c994','8b8e0a99-3ec4-6d2b-4222-6017caf19b1e',80,'2021-02-01 14:02:35',0),('59a6830b-c088-cbee-2f1c-601809a0d5cf','54779abd-cf10-d4b8-3946-601809414e38','69c40028-8193-04ae-ea6a-6017ca36aaa1',90,'2021-02-01 14:00:42',0),('59b20e12-22be-c2a1-2915-60180a80cce2','920ed607-4a99-1bc8-930d-60180a7c44f1','58aa0977-1d78-2e4c-0190-6017ca8195b4',80,'2021-02-01 14:04:44',0),('59c1da4c-292e-fafc-1ef7-601810ac998f','bef307c8-d095-6341-6352-601810875b07','c249c7e4-7796-6bf7-7a7b-6017ca2c5830',-98,'2021-02-01 14:31:59',0),('59c5010f-2989-afea-bea3-601811d2a151','a0b17db8-3562-2520-7a5b-60181003f945','473598c4-45a3-b853-34f1-6017cab30d9f',-99,'2021-02-01 14:33:27',0),('59ca6449-2d8e-ab47-d76c-6018107a9918','145ce98a-0b57-3e66-8f20-60180fdba411','e72ba550-9aea-e958-95e8-6017ca63fa05',-99,'2021-02-01 14:29:35',0),('59ce0013-7f16-268c-05fe-601809476ab8','54779abd-cf10-d4b8-3946-601809414e38','f3d45d6c-92bf-593e-dc4e-6017ca41cbee',90,'2021-02-01 14:00:42',0),('59d2e04e-25f6-6fb9-4577-601809f58689','59940d2d-46d1-e3fa-8112-60180940c994','1bf7977f-5bc1-935c-5f55-6017ca47912c',-98,'2021-02-01 14:02:35',0),('59efe500-2c2d-79d2-6d86-60181110bbed','a0b17db8-3562-2520-7a5b-60181003f945','2d2747b1-a21d-0f24-7ad8-6017cac0d820',75,'2021-02-01 14:33:27',0),('5a1460b0-7974-afba-7469-601809af624f','54779abd-cf10-d4b8-3946-601809414e38','589808bc-2514-c7b6-0600-6017ca25411d',89,'2021-02-01 14:00:42',0),('5a1ba6f2-e3b8-2c1e-992c-601810141168','145ce98a-0b57-3e66-8f20-60180fdba411','260ea293-5703-f62a-d014-6017ca9ff06c',75,'2021-02-01 14:29:35',0),('5a3515a4-351e-44f9-2508-601810942cd6','145ce98a-0b57-3e66-8f20-60180fdba411','e33de50b-0af6-759b-2e46-6017ca41bb50',75,'2021-02-01 14:29:35',0),('5a37bdbe-99e5-a7e5-0a26-60180904b467','59940d2d-46d1-e3fa-8112-60180940c994','21b5d1eb-9d8b-387e-0076-6017ca4bb706',80,'2021-02-01 14:02:35',0),('5a48f0a8-e1df-b5e5-9069-60180fe275e8','52c526cb-9c4a-23b6-b39f-60180f9089b2','1153fb10-28fd-a556-8e38-6017ca79a353',80,'2021-02-01 14:26:44',0),('5a4ee81b-a891-1f92-e152-60180903d959','54779abd-cf10-d4b8-3946-601809414e38','91c30556-a5c1-71fa-6265-6017ca41003a',90,'2021-02-01 14:00:42',0),('5a6e037f-8c48-a424-c964-60181046b3de','145ce98a-0b57-3e66-8f20-60180fdba411','2ea0f1e5-5ad1-9ed1-62be-6017cab19b3e',-98,'2021-02-01 14:29:35',0),('5a7004a2-8edf-b7bf-3a53-60180967454a','59940d2d-46d1-e3fa-8112-60180940c994','20d92e13-2707-fbfc-6aae-6017ca15be16',80,'2021-02-01 14:02:35',0),('5a79f2b0-affa-80b8-9cc9-60181078967d','bef307c8-d095-6341-6352-601810875b07','c6489af9-2211-2408-2dc5-6017ca8bcab5',75,'2021-02-01 14:31:59',0),('5a877ca0-ceb6-8aff-ce1d-601811f21cb5','a0b17db8-3562-2520-7a5b-60181003f945','f2e8e852-51ce-32b0-7d1a-6017ca06e346',-98,'2021-02-01 14:33:27',0),('5a8a2389-3cb2-98f9-05a6-6018098a0a4f','54779abd-cf10-d4b8-3946-601809414e38','7c7a0933-8857-c660-fe54-6017ca5b86aa',90,'2021-02-01 14:00:42',0),('5a9909c7-4829-ed87-3b1c-6018116f7752','a0b17db8-3562-2520-7a5b-60181003f945','444a0bbf-db13-9408-2088-6017ca7eb004',75,'2021-02-01 14:33:27',0),('5aafcb32-6882-a942-e2fd-601810727a24','145ce98a-0b57-3e66-8f20-60180fdba411','307a06a7-17d6-8be6-5b8d-6017ca1d1fe5',75,'2021-02-01 14:29:35',0),('5ab98813-b530-47c7-1490-601809f09ce5','59940d2d-46d1-e3fa-8112-60180940c994','234f3db7-20b3-d6f5-e7b8-6017caa23e45',80,'2021-02-01 14:02:35',0),('5ada66ee-0857-4d6a-20e3-6018092ca8ab','54779abd-cf10-d4b8-3946-601809414e38','a59f0241-8c23-bf89-0b3c-6017caf9cfab',90,'2021-02-01 14:00:42',0),('5ade07b7-e823-e38b-4718-60180959ec6e','54779abd-cf10-d4b8-3946-601809414e38','e30b304e-5234-237f-21d2-6017cad23c56',90,'2021-02-01 14:00:42',0),('5ae83701-3ee2-bc2f-0061-601810956277','bef307c8-d095-6341-6352-601810875b07','c5c44e91-99cf-3ac6-a7ea-6017caac610a',75,'2021-02-01 14:31:59',0),('5af87cc0-bfef-ce99-0261-601811a671d3','a0b17db8-3562-2520-7a5b-60181003f945','2cd00441-6e8e-a148-477b-6017ca30432f',75,'2021-02-01 14:33:27',0),('5afbd6b5-848c-fa33-7419-601809adffde','59940d2d-46d1-e3fa-8112-60180940c994','221b4606-d71e-4b39-f8d1-6017ca0185fa',-99,'2021-02-01 14:02:35',0),('5b08ad7d-814d-1308-1736-6018093cc1e6','54779abd-cf10-d4b8-3946-601809414e38','9ced0d8b-c4fb-fbbd-f69f-6017ca4e42e6',90,'2021-02-01 14:00:42',0),('5b13342a-59b7-4135-ded3-601810f4bfb9','145ce98a-0b57-3e66-8f20-60180fdba411','300fc3b9-b50e-5fdc-1d14-6017cacc420b',75,'2021-02-01 14:29:35',0),('5b2a0c1d-61e9-fc0b-8b52-60181111fea7','a0b17db8-3562-2520-7a5b-60181003f945','45ba0903-1ee6-3328-71bc-6017ca5f8701',75,'2021-02-01 14:33:27',0),('5b38f47c-5f24-c065-0a0c-601809b03f47','54779abd-cf10-d4b8-3946-601809414e38','72100f4a-ad81-b819-d3dd-6017ca9d1452',90,'2021-02-01 14:00:42',0),('5b3a7f2a-32dc-d717-44c8-6018117e9634','a0b17db8-3562-2520-7a5b-60181003f945','48c80856-4f90-c906-1c47-6017cac2c696',-99,'2021-02-01 14:33:27',0),('5b3a827d-6a71-a45f-3e49-60181085a12a','145ce98a-0b57-3e66-8f20-60180fdba411','33a4c648-6095-3a46-57e5-6017ca731b91',-98,'2021-02-01 14:29:35',0),('5b442e21-bc7e-39ea-9fbd-601809519839','59940d2d-46d1-e3fa-8112-60180940c994','1fd0db20-6064-0513-4ea9-6017ca0cc94f',80,'2021-02-01 14:02:35',0),('5b653266-adf9-a7bc-fb45-60180fe0c8cf','52c526cb-9c4a-23b6-b39f-60180f9089b2','4b5df074-2224-15a5-770a-6017ca31e0d2',-98,'2021-02-01 14:26:44',0),('5b77ecd8-1373-b500-83f7-601811a87138','a0b17db8-3562-2520-7a5b-60181003f945','1e1803a1-daa9-c147-059f-6017ca58540c',75,'2021-02-01 14:33:27',0),('5b7a8d2c-10cc-0937-4176-601810ac0186','145ce98a-0b57-3e66-8f20-60180fdba411','31869517-c36b-60a8-d27a-6017ca2d73ca',75,'2021-02-01 14:29:35',0),('5b7d78de-6f92-37b3-cbf0-601809d18f0b','59940d2d-46d1-e3fa-8112-60180940c994','2406bc8f-4929-38a5-9f9f-6017ca6c2433',-99,'2021-02-01 14:02:35',0),('5b80d4ee-a148-e3ec-c677-601809aca7b0','54779abd-cf10-d4b8-3946-601809414e38','ac03085e-eb42-7691-4a87-6017ca928f01',90,'2021-02-01 14:00:42',0),('5b8ab534-9c67-3e23-1e41-601810dfd85a','bef307c8-d095-6341-6352-601810875b07','c794c5c8-1658-d162-4728-6017caec8ae8',75,'2021-02-01 14:31:59',0),('5ba4ac2d-9370-a16c-09b9-601809c5b9e4','59940d2d-46d1-e3fa-8112-60180940c994','1e5f2892-a756-0832-4a6e-6017caf95bd8',80,'2021-02-01 14:02:35',0),('5bb30f55-2728-5a7d-7508-601809c0ebab','54779abd-cf10-d4b8-3946-601809414e38','64180a9b-ae83-35f9-59dc-6017ca309e5d',90,'2021-02-01 14:00:42',0),('5bb55fb2-ef9b-2cda-e6c2-601810bc7555','145ce98a-0b57-3e66-8f20-60180fdba411','30f90944-e730-df75-95e6-6017ca1fa55b',-99,'2021-02-01 14:29:35',0),('5bc446ac-0785-4dc2-db34-601811c2cf99','a0b17db8-3562-2520-7a5b-60181003f945','4392f18b-7465-ffd9-44d5-6017ca615e1a',75,'2021-02-01 14:33:27',0),('5be0bbac-870d-9684-4535-601811fe01a9','a0b17db8-3562-2520-7a5b-60181003f945','487209ce-296c-c755-871c-6017caa41be8',75,'2021-02-01 14:33:27',0),('5bed9ece-a786-6e9e-a059-601809f2ab5e','59940d2d-46d1-e3fa-8112-60180940c994','b899af45-a8cb-564b-2b5d-6017caafa414',-98,'2021-02-01 14:02:35',0),('5c0924a1-c6cf-832f-1ba6-601810c9d4ed','bef307c8-d095-6341-6352-601810875b07','c706f622-a7c2-cd76-47f4-6017ca5f1ee9',-99,'2021-02-01 14:31:59',0),('5c210d4b-bdbe-52b8-b4b9-601810fef99c','bef307c8-d095-6341-6352-601810875b07','a8a24c95-1318-6fc6-2eba-6017ca621c60',75,'2021-02-01 14:31:59',0),('5c2e3ab8-203f-c59c-3359-6018098a4a10','59940d2d-46d1-e3fa-8112-60180940c994','bc577676-7c95-b78d-df76-6017ca9b20dd',80,'2021-02-01 14:02:35',0),('5c34b3d3-1b3a-3eab-d68c-60181029f858','145ce98a-0b57-3e66-8f20-60180fdba411','377b9e0c-f502-7bb5-2c9f-6017ca706205',75,'2021-02-01 14:29:35',0),('5c3cf3e2-e518-cb69-c273-601809d6d62b','54779abd-cf10-d4b8-3946-601809414e38','83bafba5-b28d-645d-48f2-6017ca1c1383',89,'2021-02-01 14:00:42',0),('5c488ca0-c31d-df85-f9ba-601810baac19','145ce98a-0b57-3e66-8f20-60180fdba411','2fc42adb-d386-a4c7-ec11-6017cae90eed',75,'2021-02-01 14:29:35',0),('5c569396-2300-9c3d-3319-60180f4f25a6','52c526cb-9c4a-23b6-b39f-60180f9089b2','506f61c9-49cf-d0e3-5448-6017ca7e282c',80,'2021-02-01 14:26:44',0),('5c5bab48-6e7b-e081-a1fa-601811e6b5cc','a0b17db8-3562-2520-7a5b-60181003f945','3c8f0a2d-b87e-6e7e-696c-6017caac546a',-99,'2021-02-01 14:33:27',0),('5c7c2e56-a980-eafb-b413-60180981c0cd','59940d2d-46d1-e3fa-8112-60180940c994','bb014dc7-231c-d3be-3127-6017ca522de8',80,'2021-02-01 14:02:35',0),('5c8baa58-8f00-9add-d918-60180932ddf1','54779abd-cf10-d4b8-3946-601809414e38','8a35bd21-0821-a6ef-ec50-6017caa61ccb',90,'2021-02-01 14:00:42',0),('5cb5b377-37b8-3090-182e-601809e35013','59940d2d-46d1-e3fa-8112-60180940c994','beaed700-c854-1c4e-c41f-6017ca967318',80,'2021-02-01 14:02:35',0),('5cbec0cc-e551-1849-499f-6018103c0525','145ce98a-0b57-3e66-8f20-60180fdba411','3214d713-d19f-6c9e-ceb2-6017ca55bf89',-99,'2021-02-01 14:29:35',0),('5cdfa673-f00b-29c5-7747-601809ebdf25','59940d2d-46d1-e3fa-8112-60180940c994','bceb6bef-9e3e-2c85-bbac-6017cafb0acf',-99,'2021-02-01 14:02:35',0),('5ce8d433-376c-f026-ebd4-601810be5ca7','145ce98a-0b57-3e66-8f20-60180fdba411','3703cf8a-d539-ce5f-51fb-6017ca174652',75,'2021-02-01 14:29:35',0),('5cfa2928-37f4-d336-cb88-601810e6bfd4','bef307c8-d095-6341-6352-601810875b07','c5137ed7-10f9-bc73-4a6e-6017ca455098',75,'2021-02-01 14:31:59',0),('5cfd8e54-82d4-2b8c-6b58-601811e5cbad','a0b17db8-3562-2520-7a5b-60181003f945','11450ed5-1ece-4320-83bb-6017ca13f200',75,'2021-02-01 14:33:27',0),('5d1c2c18-275c-fdf5-b8eb-601811b2ec01','a0b17db8-3562-2520-7a5b-60181003f945','c26ff4f5-0b2f-abe7-b877-6017cae0cd05',-98,'2021-02-01 14:33:27',0),('5d4469bc-05e4-14be-d1e7-601809338bbd','59940d2d-46d1-e3fa-8112-60180940c994','ba473bcc-7238-9791-6f76-6017ca6721e5',80,'2021-02-01 14:02:35',0),('5d72dea2-d249-5ad8-638f-60181056b9f7','145ce98a-0b57-3e66-8f20-60180fdba411','2f59f53b-49d7-6e72-6586-6017ca3316c8',75,'2021-02-01 14:29:35',0),('5d78fa67-8429-47a5-8c65-601809a41c8d','59940d2d-46d1-e3fa-8112-60180940c994','bf82a946-415f-bc3a-8fc7-6017ca457085',-99,'2021-02-01 14:02:35',0),('5d810529-912b-b198-d3ed-60180adb5117','920ed607-4a99-1bc8-930d-60180a7c44f1','4f470189-91df-c39c-04a7-6017cae1a63a',-99,'2021-02-01 14:04:44',0),('5d8c464d-c955-da68-d080-60180fcdef92','52c526cb-9c4a-23b6-b39f-60180f9089b2','4fa20f82-4605-a031-949b-6017ca9c9830',80,'2021-02-01 14:26:44',0),('5da42238-f5cb-ad37-57d6-6018104d74e5','145ce98a-0b57-3e66-8f20-60180fdba411','38e0c84a-b6b1-e94f-4f77-6017ca4423ca',75,'2021-02-01 14:29:35',0),('5da4273d-d1aa-9ef7-7153-6018110fff7b','a0b17db8-3562-2520-7a5b-60181003f945','69c40028-8193-04ae-ea6a-6017ca36aaa1',-99,'2021-02-01 14:33:27',0),('5dad6aaa-ecae-e3da-96b6-6018111761b0','a0b17db8-3562-2520-7a5b-60181003f945','c77cdbff-3ff2-9879-429b-6017ca36a710',75,'2021-02-01 14:33:27',0),('5dc0fe6d-ebce-ec5e-1118-601809e6fc8a','59940d2d-46d1-e3fa-8112-60180940c994','b9a397e5-66a6-9988-7929-6017cae9079d',80,'2021-02-01 14:02:35',0),('5dca19e1-5a65-a1eb-ab02-60181052260e','bef307c8-d095-6341-6352-601810875b07','c8f1f7e3-8a5a-b42f-bd7d-6017ca8013d7',-99,'2021-02-01 14:31:59',0),('5dced61e-c42d-75ec-bc80-601809961d52','54779abd-cf10-d4b8-3946-601809414e38','8914ea66-9b43-bf8d-ab0f-6017cae44b71',90,'2021-02-01 14:00:42',0),('5df43256-6cbe-f362-e04c-601809e0271c','59940d2d-46d1-e3fa-8112-60180940c994','97e9402e-af05-1ead-a076-6017ca207f26',-98,'2021-02-01 14:02:35',0),('5dff3873-1da6-39d0-bb4d-601809af5fdd','54779abd-cf10-d4b8-3946-601809414e38','8bf0667b-a379-e360-373a-6017cae0f35a',90,'2021-02-01 14:00:42',0),('5e17da76-70e2-a2b5-86c9-60181028754e','145ce98a-0b57-3e66-8f20-60180fdba411','14bda9be-7f00-c47d-4d67-6017caadd7c7',-98,'2021-02-01 14:29:35',0),('5e29e132-6b50-a858-295e-601809b14435','59940d2d-46d1-e3fa-8112-60180940c994','9dad8dfc-64d2-5c22-7fed-6017caa67ae1',80,'2021-02-01 14:02:35',0),('5e588fd7-bb77-855f-7dcd-6018092ecc24','54779abd-cf10-d4b8-3946-601809414e38','8b65b469-c5df-e8ca-4420-6017caa83b89',90,'2021-02-01 14:00:42',0),('5e656520-9791-b974-ca6b-60180985dc8b','59940d2d-46d1-e3fa-8112-60180940c994','9c7adf56-4680-5e30-ff28-6017cadf52c8',80,'2021-02-01 14:02:35',0),('5e6a0b33-cf3a-7d06-8dc1-601811276f20','a0b17db8-3562-2520-7a5b-60181003f945','3aef02cd-a257-9c01-6b8b-6017ca8f909a',75,'2021-02-01 14:33:27',0),('5e880b15-9084-3817-59a5-60181018acf5','bef307c8-d095-6341-6352-601810875b07','c431144f-3b85-b653-2799-6017ca279bff',75,'2021-02-01 14:31:59',0),('5e8adac3-0721-15f1-b9ed-601809737646','54779abd-cf10-d4b8-3946-601809414e38','882f3059-afd6-c38d-4091-6017ca2bde86',90,'2021-02-01 14:00:42',0),('5e9754b9-48ea-a4a9-d252-60180f6c4ac6','52c526cb-9c4a-23b6-b39f-60180f9089b2','5362a646-6144-5c4e-9ebb-6017cabe59da',80,'2021-02-01 14:26:44',0),('5e97715b-5e19-4146-6c1b-601810cbdff6','145ce98a-0b57-3e66-8f20-60180fdba411','3832cc25-90a4-9adb-6504-6017cad4d35a',-99,'2021-02-01 14:29:35',0),('5e9e472c-e573-7966-c70f-60181056a439','145ce98a-0b57-3e66-8f20-60180fdba411','1885785c-ffcf-a049-a431-6017ca33ab98',75,'2021-02-01 14:29:35',0),('5e9f11fe-24cc-6a21-75b8-601809643782','59940d2d-46d1-e3fa-8112-60180940c994','9f6d45af-0924-9907-090a-6017ca293441',80,'2021-02-01 14:02:35',0),('5ec45bd3-bdac-34b1-e7b9-601811c67c68','a0b17db8-3562-2520-7a5b-60181003f945','f3d45d6c-92bf-593e-dc4e-6017ca41cbee',75,'2021-02-01 14:33:27',0),('5ecf7810-836f-8144-39d3-60180952a090','54779abd-cf10-d4b8-3946-601809414e38','8c8ae67b-d645-cdb5-f0a8-6017ca1e81ce',90,'2021-02-01 14:00:42',0),('5ef32566-dd34-30af-87e5-6018090e9fc4','59940d2d-46d1-e3fa-8112-60180940c994','9e8c53ec-f5f5-1908-8fd6-6017ca4b90f4',-99,'2021-02-01 14:02:35',0),('5f06efd2-7d13-c371-7807-6018094c4937','54779abd-cf10-d4b8-3946-601809414e38','8736f700-cfc6-914f-0006-6017ca6a5053',90,'2021-02-01 14:00:42',0),('5f0d2dfd-6afe-782c-b700-60181158c044','a0b17db8-3562-2520-7a5b-60181003f945','c653cd76-f2b1-cf18-5f84-6017cae22650',75,'2021-02-01 14:33:27',0),('5f2baa57-081d-ae79-1983-601809ba259b','54779abd-cf10-d4b8-3946-601809414e38','60d4e068-e997-5fa7-cb8f-6017cafcf344',89,'2021-02-01 14:00:42',0),('5f3e86c7-d3d1-a8c1-d15b-6018097ec054','59940d2d-46d1-e3fa-8112-60180940c994','9b2882df-e540-afe4-9c83-6017ca7e0aa7',80,'2021-02-01 14:02:35',0),('5f410aef-a96c-d540-e475-601810284c39','145ce98a-0b57-3e66-8f20-60180fdba411','17e1ca17-e91d-6b29-f43b-6017ca7b4f1f',75,'2021-02-01 14:29:35',0),('5f4a4465-5b8a-d94b-2a14-6018094a50a1','54779abd-cf10-d4b8-3946-601809414e38','651f020d-f67a-ce98-814e-6017ca62cee5',90,'2021-02-01 14:00:42',0),('5f5b0b8c-f709-c5ee-a059-601810423840','bef307c8-d095-6341-6352-601810875b07','cd88e407-1956-c897-a607-6017ca340c28',-98,'2021-02-01 14:31:59',0),('5f7326fd-3cd9-e36a-a107-601809c96e60','59940d2d-46d1-e3fa-8112-60180940c994','a0125536-b231-699a-6df1-6017cac450ac',-99,'2021-02-01 14:02:35',0),('5f80b133-6d65-e502-e4c7-6018111b32b6','a0b17db8-3562-2520-7a5b-60181003f945','589808bc-2514-c7b6-0600-6017ca25411d',-98,'2021-02-01 14:33:27',0),('5f840631-adb6-1d79-8c89-60180998a0de','54779abd-cf10-d4b8-3946-601809414e38','e03d1f5c-2513-24d8-bdde-6017ca945ff0',90,'2021-02-01 14:00:42',0),('5fab3300-3696-3df9-07c2-601810d0cff4','145ce98a-0b57-3e66-8f20-60180fdba411','1a3588bc-571c-f7ab-7799-6017cab6e09b',75,'2021-02-01 14:29:35',0),('5fbfb344-1f00-5d8e-d136-601810c51fff','bef307c8-d095-6341-6352-601810875b07','d0901d67-9ee5-6676-9f62-6017ca8fda47',75,'2021-02-01 14:31:59',0),('5fc8e619-a864-96be-1aaf-601809845093','54779abd-cf10-d4b8-3946-601809414e38','63623684-279d-11f2-ff80-6017ca26b7c2',90,'2021-02-01 14:00:42',0),('5fd3beea-0aa5-14a4-b035-6018107d6653','145ce98a-0b57-3e66-8f20-60180fdba411','3634091f-8062-cdd4-5fa8-6017caf39c43',75,'2021-02-01 14:29:35',0),('5fd3da58-f061-94a3-9c20-601809749e2b','59940d2d-46d1-e3fa-8112-60180940c994','986eee81-167e-9465-9b49-6017ca064f5f',80,'2021-02-01 14:02:35',0),('5fdb4d29-a4ec-2e20-2848-60180f12d87e','52c526cb-9c4a-23b6-b39f-60180f9089b2','5131b6a6-ac2e-aab4-8297-6017cacd1a29',-99,'2021-02-01 14:26:44',0),('5feff2d4-a636-2199-625c-6018115b5448','a0b17db8-3562-2520-7a5b-60181003f945','c9ed4ae1-e5d0-dc21-67ac-6017ca672b32',75,'2021-02-01 14:33:27',0),('5ffc78b2-0191-71c3-191c-601811c78fd4','a0b17db8-3562-2520-7a5b-60181003f945','91c30556-a5c1-71fa-6265-6017ca41003a',75,'2021-02-01 14:33:27',0),('600748af-c81b-5d2c-5dde-6018090b24ad','59940d2d-46d1-e3fa-8112-60180940c994','ad72033b-d248-1445-3717-6017ca405307',-98,'2021-02-01 14:02:35',0),('601026ea-1d58-c209-1d34-60180968769d','54779abd-cf10-d4b8-3946-601809414e38','67041382-dd21-ba5f-c8b6-6017ca5a32b2',90,'2021-02-01 14:00:42',0),('603ddf49-ea76-b585-ccad-601810b4b08a','145ce98a-0b57-3e66-8f20-60180fdba411','198739f4-0bbd-3331-cf7a-6017ca5f75d9',-99,'2021-02-01 14:29:35',0),('6041acd8-807a-6fd4-f45a-6018105ca91f','bef307c8-d095-6341-6352-601810875b07','cfd801f1-971b-05c3-f426-6017cac294ff',75,'2021-02-01 14:31:59',0),('6052b23a-18af-cd4c-133e-601811c424f2','a0b17db8-3562-2520-7a5b-60181003f945','7c7a0933-8857-c660-fe54-6017ca5b86aa',75,'2021-02-01 14:33:27',0),('606207e7-997b-b467-55d5-6018095b2448','54779abd-cf10-d4b8-3946-601809414e38','65ec59d2-6ab2-6a0d-f80b-6017ca4e02aa',90,'2021-02-01 14:00:42',0),('6065cf5e-6558-94fe-0a16-6018094acc62','59940d2d-46d1-e3fa-8112-60180940c994','b0a59a80-8244-9f08-bf42-6017caeaa7f3',80,'2021-02-01 14:02:35',0),('609042cd-64ff-ec1c-6519-60180986423e','54779abd-cf10-d4b8-3946-601809414e38','62d0a189-4595-a430-d15c-6017cacc3713',90,'2021-02-01 14:00:42',0),('609458e7-90c0-d2e3-7b5c-601809d2facc','59940d2d-46d1-e3fa-8112-60180940c994','b03e2b4c-2931-7fad-9b57-6017ca8ac75c',80,'2021-02-01 14:02:35',0),('60aded66-5f75-892a-a93e-6018107687a2','145ce98a-0b57-3e66-8f20-60180fdba411','175189ff-4043-fa73-2651-6017ca9d5d05',75,'2021-02-01 14:29:35',0),('60b5b21c-c144-5de2-85ac-60181026d87e','bef307c8-d095-6341-6352-601810875b07','d186ebc9-f248-c713-57ad-6017ca877318',75,'2021-02-01 14:31:59',0),('60b843c9-2e04-3ee0-8897-60180fafd774','52c526cb-9c4a-23b6-b39f-60180f9089b2','4eb5453c-539f-7da6-2393-6017cab07f2d',80,'2021-02-01 14:26:44',0),('60c9097c-8ca6-8962-085b-601810611bf5','145ce98a-0b57-3e66-8f20-60180fdba411','3955cfaa-5d78-ecdd-57ae-6017caf34833',-99,'2021-02-01 14:29:35',0),('60c9ac15-a97a-d21d-88fe-601811d24624','a0b17db8-3562-2520-7a5b-60181003f945','c888f7ec-948e-d52b-3604-6017ca473b89',-99,'2021-02-01 14:33:27',0),('60d3a24b-3b51-a1b0-d47d-601809a028b1','59940d2d-46d1-e3fa-8112-60180940c994','b1b70587-5e65-c9e2-442e-6017ca9be6b4',80,'2021-02-01 14:02:35',0),('60db9ae4-717b-fbb3-7191-60181107fe5d','a0b17db8-3562-2520-7a5b-60181003f945','a59f0241-8c23-bf89-0b3c-6017caf9cfab',75,'2021-02-01 14:33:27',0),('60e00f7d-3376-1ff4-4117-601811f253c1','a0b17db8-3562-2520-7a5b-60181003f945','ce300fe4-aceb-1d76-c963-6017ca14a5f3',-98,'2021-02-01 14:33:27',0),('60f5c3b4-aa15-b080-79d6-601809c57425','54779abd-cf10-d4b8-3946-601809414e38','67f497bf-cd72-1d8a-453a-6017ca594a2b',90,'2021-02-01 14:00:42',0),('61364397-b60b-3b94-8204-601810753671','bef307c8-d095-6341-6352-601810875b07','d0def67a-7a7d-3dea-616d-6017ca0ca5c0',-99,'2021-02-01 14:31:59',0),('6139b80c-7f5a-6fa0-3581-601809c584d3','54779abd-cf10-d4b8-3946-601809414e38','61b172af-81fb-c66f-3fb4-6017ca4545b2',90,'2021-02-01 14:00:42',0),('614ec9c7-63c7-4ec5-4578-60181157fc0b','a0b17db8-3562-2520-7a5b-60181003f945','9ced0d8b-c4fb-fbbd-f69f-6017ca4e42e6',-99,'2021-02-01 14:33:27',0),('6166f104-6e47-fef4-a719-601809bb205e','54779abd-cf10-d4b8-3946-601809414e38','6ac9b95e-2b95-8b91-edb2-6017cafd2c72',89,'2021-02-01 14:00:42',0),('617d455e-43c3-aa28-9303-6018106772ac','145ce98a-0b57-3e66-8f20-60180fdba411','1aef1fca-33a2-3d5d-9453-6017ca899039',-99,'2021-02-01 14:29:35',0),('618cb4fc-228d-ec41-4727-601809ff86b2','54779abd-cf10-d4b8-3946-601809414e38','70ca3409-a115-5547-4672-6017ca512a79',90,'2021-02-01 14:00:42',0),('619d8c23-fbae-3bc1-a9db-601810565265','bef307c8-d095-6341-6352-601810875b07','cf1e856c-b6ab-5b98-3ad5-6017ca7fb7eb',75,'2021-02-01 14:31:59',0),('619ffa23-8ef8-b729-66a0-60181109eac6','a0b17db8-3562-2520-7a5b-60181003f945','72100f4a-ad81-b819-d3dd-6017ca9d1452',75,'2021-02-01 14:33:27',0),('61a1099f-1c6c-9a9f-075d-60180fe9ac97','52c526cb-9c4a-23b6-b39f-60180f9089b2','ea20640d-5cb5-0ec5-e35a-6017ca8a8a15',80,'2021-02-01 14:26:44',0),('61a419dc-eec7-cffb-d339-601810c2ccda','145ce98a-0b57-3e66-8f20-60180fdba411','34751d0d-8c15-50d3-5a8e-6017ca6c83cf',75,'2021-02-01 14:29:35',0),('61ac0d5b-2ea1-201d-5e61-60180acbc369','920ed607-4a99-1bc8-930d-60180a7c44f1','302b01b1-1748-9cbd-0930-6017ca8ca592',80,'2021-02-01 14:04:44',0),('61d6f526-7971-ec68-3f5a-60180933d22d','54779abd-cf10-d4b8-3946-601809414e38','6fec0d36-5a67-8238-f2ac-6017cae902b8',90,'2021-02-01 14:00:42',0),('61ec0fe8-0a74-5036-e6d1-6018100b1cbc','bef307c8-d095-6341-6352-601810875b07','651f020d-f67a-ce98-814e-6017ca62cee5',75,'2021-02-01 14:31:59',0),('61ff15b1-2e38-7512-b532-6018115485b8','a0b17db8-3562-2520-7a5b-60181003f945','c532c07f-9fe7-3f2f-8a5f-6017cad82dab',75,'2021-02-01 14:33:27',0),('620221da-de25-6f38-ee8a-6018096bab7b','59940d2d-46d1-e3fa-8112-60180940c994','b148ee1e-32f7-3ee6-9bd5-6017ca688368',-99,'2021-02-01 14:02:35',0),('6204a010-7c66-d857-366a-60180961e37a','54779abd-cf10-d4b8-3946-601809414e38','72d488f9-c28c-d618-901e-6017ca7cd835',90,'2021-02-01 14:00:42',0),('6211b6b7-0c23-b57a-62f7-60181005296a','145ce98a-0b57-3e66-8f20-60180fdba411','168d6de1-a01a-c7ed-0e6b-6017ca961af0',75,'2021-02-01 14:29:35',0),('6237727a-dc56-47f6-1271-601809febf0b','54779abd-cf10-d4b8-3946-601809414e38','720128c8-49a7-b466-9bc7-6017ca049579',90,'2021-02-01 14:00:42',0),('623adc59-eb1f-a7cd-2690-601810e10c51','bef307c8-d095-6341-6352-601810875b07','d205df45-00e2-fd60-1321-6017caaef991',-99,'2021-02-01 14:31:59',0),('623c24e3-f995-60db-8b33-601809d85227','59940d2d-46d1-e3fa-8112-60180940c994','af785830-9b95-6e64-4175-6017ca031673',80,'2021-02-01 14:02:35',0),('62540a29-9598-34f1-51dd-6018106a0bb9','145ce98a-0b57-3e66-8f20-60180fdba411','b231fc57-fb19-a4fb-3c2d-6017ca35b664',-99,'2021-02-01 14:29:35',0),('62644ac5-bffb-7eea-1b01-601809edc026','59940d2d-46d1-e3fa-8112-60180940c994','b231fc57-fb19-a4fb-3c2d-6017ca35b664',-99,'2021-02-01 14:02:35',0),('628417f4-1a94-f02b-9d52-60180967449b','54779abd-cf10-d4b8-3946-601809414e38','6ed87ff1-dc29-9718-c8a2-6017cac6f7f7',90,'2021-02-01 14:00:42',0),('628dcd39-6a9e-86f2-0f32-60180f29daa2','52c526cb-9c4a-23b6-b39f-60180f9089b2','543391af-9314-213d-cf52-6017ca0de4a4',-99,'2021-02-01 14:26:44',0),('629f0b94-4946-a905-85b2-60181000a757','145ce98a-0b57-3e66-8f20-60180fdba411','a6f22aa9-813e-d48d-cbcf-6017cafe3c98',-98,'2021-02-01 14:29:35',0),('62aa4f08-bfdf-d2e0-8f05-6018099ef237','54779abd-cf10-d4b8-3946-601809414e38','73b832d2-55fa-46c9-f776-6017caf638a9',90,'2021-02-01 14:00:42',0),('62aaaf6f-1d27-c7de-48cb-601810a5b8fb','145ce98a-0b57-3e66-8f20-60180fdba411','89cfd493-7685-52ca-1008-6017ca632e1b',-98,'2021-02-01 14:29:35',0),('62d2899c-9a99-57c3-5aa3-601809c58c96','59940d2d-46d1-e3fa-8112-60180940c994','aecb124c-09c7-d9f6-442e-6017ca33edc8',80,'2021-02-01 14:02:35',0),('62db6b53-1ae8-72aa-93e1-601811f07421','a0b17db8-3562-2520-7a5b-60181003f945','ac03085e-eb42-7691-4a87-6017ca928f01',-99,'2021-02-01 14:33:27',0),('62dece09-78f7-9915-0aa0-601811a79597','a0b17db8-3562-2520-7a5b-60181003f945','ca9243e9-0177-e253-d4db-6017cae7ea3f',-99,'2021-02-01 14:33:27',0),('62f4134b-cf9e-a3b7-712a-601809c3cb3b','54779abd-cf10-d4b8-3946-601809414e38','6d78d2e2-cf60-ad18-ccba-6017cab10c1c',90,'2021-02-01 14:00:42',0),('632e807b-93fc-1e18-427d-601810ac3e16','145ce98a-0b57-3e66-8f20-60180fdba411','ab02cc22-401e-4f0b-5180-6017ca6944bb',75,'2021-02-01 14:29:35',0),('63641df6-52ed-9e9e-b292-60181060e7cb','bef307c8-d095-6341-6352-601810875b07','ce72846b-97fc-6dbc-f5ff-6017ca04b487',75,'2021-02-01 14:31:59',0),('63649d4c-7382-b6d1-79a7-6018107d4284','145ce98a-0b57-3e66-8f20-60180fdba411','8d646238-0036-c2d0-6e93-6017ca17c0f5',75,'2021-02-01 14:29:35',0),('6372a069-792c-d4e5-47d6-6018103e6d63','145ce98a-0b57-3e66-8f20-60180fdba411','aa06a022-eebd-88bd-7c29-6017ca1a6417',75,'2021-02-01 14:29:35',0),('6396e1a6-ae86-de79-f6c1-601809d9e728','59940d2d-46d1-e3fa-8112-60180940c994','cb26adac-ed61-d3a3-7c6e-6017ca433812',-98,'2021-02-01 14:02:35',0),('63a5b65a-22e6-7bfb-adc0-6018118ca7d9','a0b17db8-3562-2520-7a5b-60181003f945','64180a9b-ae83-35f9-59dc-6017ca309e5d',75,'2021-02-01 14:33:27',0),('63aca80b-35d0-705d-a008-60180fe13ad6','52c526cb-9c4a-23b6-b39f-60180f9089b2','4dc064a6-36e7-b8d6-1637-6017ca834a51',80,'2021-02-01 14:26:44',0),('63e155f7-9779-357f-7075-601811d5b3df','a0b17db8-3562-2520-7a5b-60181003f945','c4858000-fe1e-b876-5d40-6017ca89c40a',75,'2021-02-01 14:33:27',0),('63fe7476-3dee-a277-7649-6018095752f1','59940d2d-46d1-e3fa-8112-60180940c994','d1b4b2de-3c43-1cf8-1126-6017caf932db',80,'2021-02-01 14:02:35',0),('640e9f45-6276-b4e4-bdbd-601810edfa41','145ce98a-0b57-3e66-8f20-60180fdba411','aceda745-edf4-6592-0ca7-6017ca7c89f8',75,'2021-02-01 14:29:35',0),('6412e0cc-6591-40aa-e02d-601811a8173a','a0b17db8-3562-2520-7a5b-60181003f945','83bafba5-b28d-645d-48f2-6017ca1c1383',-98,'2021-02-01 14:33:27',0),('642b1519-9730-dbbe-c8c5-60181064d747','145ce98a-0b57-3e66-8f20-60180fdba411','8c917df1-c6ec-68b0-840f-6017cadaae13',75,'2021-02-01 14:29:35',0),('6440d86b-5895-1285-8d4e-601809647427','59940d2d-46d1-e3fa-8112-60180940c994','d10ba092-b594-4c74-4464-6017cad87ad6',80,'2021-02-01 14:02:35',0),('645708d3-3452-7e3b-4dc0-601809b583e5','54779abd-cf10-d4b8-3946-601809414e38','e454847f-e338-c3eb-be96-6017ca4a2ea3',90,'2021-02-01 14:00:42',0),('6466bf9d-78f1-7bf3-b73f-601810bb16d1','bef307c8-d095-6341-6352-601810875b07','3bf2f429-039e-9b9a-086b-6017cad8b024',89,'2021-02-01 14:31:59',0),('64802bbc-5b9d-6316-f36d-601810190186','145ce98a-0b57-3e66-8f20-60180fdba411','ac25d4dd-6de5-9c2a-8b4f-6017ca9dc9b7',-99,'2021-02-01 14:29:35',0),('64ab2f77-f3c5-5293-c653-6018114b6591','a0b17db8-3562-2520-7a5b-60181003f945','e21f652f-6598-aa63-5104-6017ca3269cc',-98,'2021-02-01 14:33:27',0),('64b1e27b-3ab7-a475-6289-601810bf5a5e','145ce98a-0b57-3e66-8f20-60180fdba411','8e72cccd-d8bd-5bda-1129-6017ca1e0e4f',75,'2021-02-01 14:29:35',0),('64b7df9f-0e66-55bd-4946-6018093d6d3e','59940d2d-46d1-e3fa-8112-60180940c994','d3178c03-b2e4-a425-9eca-6017ca72eb45',80,'2021-02-01 14:02:35',0),('64d7559b-3547-97d6-d200-6018116353e9','a0b17db8-3562-2520-7a5b-60181003f945','8a35bd21-0821-a6ef-ec50-6017caa61ccb',75,'2021-02-01 14:33:27',0),('64ebd3b7-b5c6-ad7b-b016-601809b6873a','59940d2d-46d1-e3fa-8112-60180940c994','d23c0c73-ef18-7df2-801f-6017cae194f6',-99,'2021-02-01 14:02:35',0),('650156d0-e6c3-d1d4-5b2b-60181086432c','145ce98a-0b57-3e66-8f20-60180fdba411','a8bb31f6-150f-ff3f-bef0-6017ca208971',75,'2021-02-01 14:29:35',0),('651b466f-dace-4ecd-1e42-601809cdaddd','59940d2d-46d1-e3fa-8112-60180940c994','cf98c060-aa97-69a2-bfb8-6017caf73ecc',80,'2021-02-01 14:02:35',0),('655369f1-9f2f-e630-768f-601810889af2','145ce98a-0b57-3e66-8f20-60180fdba411','ae8ad6ad-4263-f441-956e-6017ca7d5153',-99,'2021-02-01 14:29:35',0),('656133a0-1a6c-e1d5-02f3-6018093950c3','59940d2d-46d1-e3fa-8112-60180940c994','d3a03f58-2d84-2e3c-5b75-6017ca7a050c',-99,'2021-02-01 14:02:35',0),('6564452f-eddd-c56e-f54d-601810cac9ac','145ce98a-0b57-3e66-8f20-60180fdba411','8df6c126-ff00-31ab-53d7-6017ca17f4bb',-99,'2021-02-01 14:29:35',0),('6575bf49-f103-63fb-302b-601811c808e3','a0b17db8-3562-2520-7a5b-60181003f945','8914ea66-9b43-bf8d-ab0f-6017cae44b71',75,'2021-02-01 14:33:27',0),('658e79f8-2a65-56b0-3015-601810078a84','bef307c8-d095-6341-6352-601810875b07','40a06fb6-2c0b-b5ab-9711-6017cad0002f',75,'2021-02-01 14:31:59',0),('659201e2-a7a6-7bd7-1faa-60180f6ab59d','52c526cb-9c4a-23b6-b39f-60180f9089b2','74193c93-40a8-b4b3-61b6-6017cabdd106',-99,'2021-02-01 14:26:44',0),('659bf483-8fc7-19e7-cc3f-6018103320fb','145ce98a-0b57-3e66-8f20-60180fdba411','a7a9f1ad-be16-ee19-451b-6017ca00687d',75,'2021-02-01 14:29:35',0),('65b752d7-aa01-05da-ce7a-60180fcbe0c9','52c526cb-9c4a-23b6-b39f-60180f9089b2','c74d759e-ca97-9c85-566b-6017ca9f5554',-98,'2021-02-01 14:26:44',0),('65c30d7e-0a4f-e419-97cf-60180a80c328','920ed607-4a99-1bc8-930d-60180a7c44f1','681d0116-7635-42ba-f3d6-6017caa34383',-99,'2021-02-01 14:04:44',0),('65e17204-728d-5ca3-2924-601809599b86','59940d2d-46d1-e3fa-8112-60180940c994','cdae776a-3357-3fc3-e44d-6017ca2c967b',80,'2021-02-01 14:02:35',0),('65e1a069-5661-5370-db01-601811afcf2e','a0b17db8-3562-2520-7a5b-60181003f945','8bf0667b-a379-e360-373a-6017cae0f35a',75,'2021-02-01 14:33:27',0),('65eacfc0-6754-ae41-ff43-601811fd47f2','a0b17db8-3562-2520-7a5b-60181003f945','e5a726b8-46e2-5577-6768-6017ca4e8709',75,'2021-02-01 14:33:27',0),('66121845-36d4-54b9-49bd-60181003b73d','145ce98a-0b57-3e66-8f20-60180fdba411','41495400-5f9b-80d4-7075-6017ca472698',-98,'2021-02-01 14:29:35',0),('661546c5-bcb8-db0b-1780-601810eb90be','145ce98a-0b57-3e66-8f20-60180fdba411','8c1ad7be-b834-8a3b-a447-6017ca75307a',75,'2021-02-01 14:29:35',0),('6640cf3c-52f9-4893-945a-601809a10e19','59940d2d-46d1-e3fa-8112-60180940c994','97f22f4d-0e7c-61e6-6799-6017cac0b6fb',-98,'2021-02-01 14:02:35',0),('665614a4-b54b-0f21-f25c-601810b83fbb','145ce98a-0b57-3e66-8f20-60180fdba411','469f31e2-b7bb-4b8b-6061-6017caccb79c',75,'2021-02-01 14:29:35',0),('666f4895-a644-39bf-0865-60181056c4cd','145ce98a-0b57-3e66-8f20-60180fdba411','8f2d5206-743b-ecd6-bbfd-6017ca3b700c',-99,'2021-02-01 14:29:35',0),('667539b7-bc66-71ae-7437-601809d6eb4c','59940d2d-46d1-e3fa-8112-60180940c994','9c902b35-c1f4-32bf-0803-6017ca926dbe',80,'2021-02-01 14:02:35',0),('668f1106-d250-7875-b225-601810ff5998','bef307c8-d095-6341-6352-601810875b07','3feeba8f-d6bd-6fe9-094b-6017ca124904',75,'2021-02-01 14:31:59',0),('66b5c6f1-0cd7-16a9-41ea-601811bb1210','a0b17db8-3562-2520-7a5b-60181003f945','e4b06495-feb8-2d70-cb38-6017ca9b8502',75,'2021-02-01 14:33:27',0),('66d2cce3-3008-efa3-84ad-601810f6648a','145ce98a-0b57-3e66-8f20-60180fdba411','8a520e16-b539-983c-b9bd-6017cab11234',75,'2021-02-01 14:29:35',0),('66dc7c93-a653-5e3e-bec4-6018117162b1','a0b17db8-3562-2520-7a5b-60181003f945','8b65b469-c5df-e8ca-4420-6017caa83b89',-99,'2021-02-01 14:33:27',0),('670088d0-8f8d-a0f4-5f32-6018096c8045','59940d2d-46d1-e3fa-8112-60180940c994','9b63b5a6-2600-6a71-577a-6017ca89ae0e',80,'2021-02-01 14:02:35',0),('6715af8a-3123-9212-2e83-6018107c1be5','145ce98a-0b57-3e66-8f20-60180fdba411','44f7f214-0eda-d54d-eb23-6017ca98b487',75,'2021-02-01 14:29:35',0),('67430b98-b797-c77d-1c8e-6018090d64ef','54779abd-cf10-d4b8-3946-601809414e38','de3aca57-08ed-bd1c-71db-6017caa8a814',90,'2021-02-01 14:00:42',0),('6747739d-6ac5-e958-052e-601810a90d07','145ce98a-0b57-3e66-8f20-60180fdba411','48198c30-2080-5ee5-7b6e-6017cae64d7f',75,'2021-02-01 14:29:35',0),('675b91a0-9107-1f11-dbb8-601811484f5d','a0b17db8-3562-2520-7a5b-60181003f945','882f3059-afd6-c38d-4091-6017ca2bde86',75,'2021-02-01 14:33:27',0),('6782e69c-46d5-0198-108e-6018106310d4','bef307c8-d095-6341-6352-601810875b07','424e9d02-1a6d-b40c-3d77-6017ca2a199b',75,'2021-02-01 14:31:59',0),('678620e8-4984-7cf4-11b0-60181056ecf2','145ce98a-0b57-3e66-8f20-60180fdba411','e1123a71-9f1e-4905-cf20-6017caacf73b',-98,'2021-02-01 14:29:35',0),('67a0015c-76b9-652e-5bc3-60180a5902c1','920ed607-4a99-1bc8-930d-60180a7c44f1','1a7603b6-dc9c-b191-8b8b-6017ca397446',80,'2021-02-01 14:04:44',0),('67afcf00-f7c0-af3c-df94-601810d93fe9','145ce98a-0b57-3e66-8f20-60180fdba411','473598c4-45a3-b853-34f1-6017cab30d9f',-99,'2021-02-01 14:29:35',0),('67bd1278-7c4c-30b4-a620-6018110c3141','a0b17db8-3562-2520-7a5b-60181003f945','e6c56d8e-33d3-8a8d-3b47-6017ca263dc6',75,'2021-02-01 14:33:27',0),('67cffcba-1fba-4596-5d87-601809f7815f','59940d2d-46d1-e3fa-8112-60180940c994','9dc29313-6fce-8cc2-bab3-6017ca93cb71',80,'2021-02-01 14:02:35',0),('67f357ae-d2f7-a354-3a14-601811d2fb99','a0b17db8-3562-2520-7a5b-60181003f945','8c8ae67b-d645-cdb5-f0a8-6017ca1e81ce',-99,'2021-02-01 14:33:27',0),('6837dd9b-5cfc-dd31-92f6-601810cefc88','145ce98a-0b57-3e66-8f20-60180fdba411','e336c29d-2d18-451f-7bbc-6017ca49e15c',75,'2021-02-01 14:29:35',0),('683824b6-9460-9639-0264-6018115dafa6','a0b17db8-3562-2520-7a5b-60181003f945','e63b841e-387c-ad8e-8f4b-6017ca3c9896',-99,'2021-02-01 14:33:27',0),('683b4a71-3392-e996-8a26-6018099f9713','59940d2d-46d1-e3fa-8112-60180940c994','9d2620e1-e27a-9565-dbda-6017ca3ffa98',-99,'2021-02-01 14:02:35',0),('685794b7-aa1e-5d82-4fd3-601810d71c7b','145ce98a-0b57-3e66-8f20-60180fdba411','444a0bbf-db13-9408-2088-6017ca7eb004',75,'2021-02-01 14:29:35',0),('685f62e8-4e54-0717-5cbf-601811a18c36','a0b17db8-3562-2520-7a5b-60181003f945','8736f700-cfc6-914f-0006-6017ca6a5053',75,'2021-02-01 14:33:27',0),('68876c76-cd77-c931-f063-60180983aa68','59940d2d-46d1-e3fa-8112-60180940c994','99735554-9a7d-a7af-c53e-6017ca281ffa',80,'2021-02-01 14:02:35',0),('689fd711-f25d-4641-bc6b-601810fc5e32','145ce98a-0b57-3e66-8f20-60180fdba411','e2da0686-74cf-c6c2-177d-6017ca10edf2',75,'2021-02-01 14:29:35',0),('68e3b66f-138b-de91-d6f1-601810088902','bef307c8-d095-6341-6352-601810875b07','41257a11-4623-22fc-5899-6017ca328bb7',-99,'2021-02-01 14:31:59',0),('68f2b809-2eb1-b4df-b6b8-6018111e598b','a0b17db8-3562-2520-7a5b-60181003f945','e3f720d1-c9c2-381c-98d5-6017ca7e0a85',75,'2021-02-01 14:33:27',0),('68fad055-7961-b11e-a89d-6018103aa3c1','145ce98a-0b57-3e66-8f20-60180fdba411','48c80856-4f90-c906-1c47-6017cac2c696',-99,'2021-02-01 14:29:35',0),('69255f76-2d6d-3a24-bbf4-601811cb8b75','a0b17db8-3562-2520-7a5b-60181003f945','60d4e068-e997-5fa7-cb8f-6017cafcf344',-98,'2021-02-01 14:33:27',0),('69557aee-724a-aa0b-ad5b-601810854c82','145ce98a-0b57-3e66-8f20-60180fdba411','e5d46f78-d381-0c69-bf09-6017caaa5a9a',75,'2021-02-01 14:29:35',0),('69714cbe-9a7a-e994-f914-6018113de6ba','a0b17db8-3562-2520-7a5b-60181003f945','651f020d-f67a-ce98-814e-6017ca62cee5',75,'2021-02-01 14:33:27',0),('6973c4ed-3a14-d1ed-9e95-601809b010c5','59940d2d-46d1-e3fa-8112-60180940c994','9e6be21b-d7c9-3519-4dfc-6017ca2292c5',-99,'2021-02-01 14:02:35',0),('6983f9b1-be6b-eee2-cc9c-601810698b62','145ce98a-0b57-3e66-8f20-60180fdba411','4392f18b-7465-ffd9-44d5-6017ca615e1a',75,'2021-02-01 14:29:35',0),('69b54060-4aa8-0244-dbf4-6018094a7b43','59940d2d-46d1-e3fa-8112-60180940c994','98bae92f-53aa-2a9a-f0ae-6017ca2d9978',80,'2021-02-01 14:02:35',0),('69b7be77-8d52-7f92-af96-6018109b6e78','bef307c8-d095-6341-6352-601810875b07','3f22e375-6be6-8eea-a6a5-6017ca1296e5',75,'2021-02-01 14:31:59',0),('69c50531-833a-3ed3-cde7-601810e5e2b5','bef307c8-d095-6341-6352-601810875b07','abbf2bfc-ea68-ef97-1d5a-6017ca3f28ba',75,'2021-02-01 14:31:59',0),('69cca3c0-ceb3-da4f-40eb-6018115ccf77','a0b17db8-3562-2520-7a5b-60181003f945','e740cd02-ebce-f2e3-e4ff-6017ca03a2e5',-99,'2021-02-01 14:33:27',0),('69dbcc36-d166-fee9-6afd-601811ae3a6b','a0b17db8-3562-2520-7a5b-60181003f945','63623684-279d-11f2-ff80-6017ca26b7c2',75,'2021-02-01 14:33:27',0),('69dcf13d-782a-9a43-69a8-601809913eaf','59940d2d-46d1-e3fa-8112-60180940c994','bc5c5ae8-69e2-79f1-be97-6017ca327292',-98,'2021-02-01 14:02:35',0),('69f0140a-9256-4d51-d4df-60180f10c34a','52c526cb-9c4a-23b6-b39f-60180f9089b2','cab346aa-9975-17b1-bd41-6017ca561174',80,'2021-02-01 14:26:44',0),('6a0252ef-0087-0e08-a9e3-60181023e45f','145ce98a-0b57-3e66-8f20-60180fdba411','c26ff4f5-0b2f-abe7-b877-6017cae0cd05',-98,'2021-02-01 14:29:35',0),('6a448b49-5560-8404-eb26-601810cbd7fe','145ce98a-0b57-3e66-8f20-60180fdba411','e40e7e28-78b1-0bae-fa91-6017caee97f4',-99,'2021-02-01 14:29:35',0),('6a512f05-1744-8c5c-04c6-60181033f198','bef307c8-d095-6341-6352-601810875b07','43128bab-53ee-f54c-e979-6017ca31494e',-99,'2021-02-01 14:31:59',0),('6a666fe0-ab87-855e-9cc8-601810c4dd78','145ce98a-0b57-3e66-8f20-60180fdba411','c77cdbff-3ff2-9879-429b-6017ca36a710',75,'2021-02-01 14:29:35',0),('6a9f0a6d-87d9-d62d-aab5-60180f1bdb05','52c526cb-9c4a-23b6-b39f-60180f9089b2','e91c140d-d1a4-7a42-2181-6017cad6448e',80,'2021-02-01 14:26:44',0),('6aaad1ed-0222-6d7d-d052-60181028f7c3','145ce98a-0b57-3e66-8f20-60180fdba411','e27db9aa-0c69-f8be-e7d4-6017ca4a1b9c',75,'2021-02-01 14:29:35',0),('6ab2d1fc-f796-5e41-4eeb-6018096198a1','59940d2d-46d1-e3fa-8112-60180940c994','c0d49832-2531-68de-84ac-6017cabd7e17',80,'2021-02-01 14:02:35',0),('6ae008d3-d9d1-c973-5371-601811204f9d','a0b17db8-3562-2520-7a5b-60181003f945','e344c340-e4e2-4505-54a2-6017ca5f2b7c',75,'2021-02-01 14:33:27',0),('6ae1a07a-2d65-2395-19a3-601811fa8042','a0b17db8-3562-2520-7a5b-60181003f945','67041382-dd21-ba5f-c8b6-6017ca5a32b2',75,'2021-02-01 14:33:27',0),('6b17ec93-4b6b-57c0-d58c-601809c75264','59940d2d-46d1-e3fa-8112-60180940c994','c03fe354-e2f4-98ae-d59a-6017ca91e9d3',80,'2021-02-01 14:02:35',0),('6b2229e5-cd86-bee8-dd72-601810009595','bef307c8-d095-6341-6352-601810875b07','3d0a7731-1875-5403-859e-6017ca2605dd',75,'2021-02-01 14:31:59',0),('6b2aef3c-4cde-a4c0-c1fb-601810e6271a','145ce98a-0b57-3e66-8f20-60180fdba411','c653cd76-f2b1-cf18-5f84-6017cae22650',75,'2021-02-01 14:29:35',0),('6b359a04-ef66-97ea-4bc6-601810c42dbc','145ce98a-0b57-3e66-8f20-60180fdba411','e6ed1604-861b-1b53-e18d-6017ca9f3220',-99,'2021-02-01 14:29:35',0),('6b5b036e-cf41-1df2-8779-6018110e5694','a0b17db8-3562-2520-7a5b-60181003f945','65ec59d2-6ab2-6a0d-f80b-6017ca4e02aa',-99,'2021-02-01 14:33:27',0),('6b8a0d85-b2c6-b0f6-0653-60181195bc7e','a0b17db8-3562-2520-7a5b-60181003f945','58aa0977-1d78-2e4c-0190-6017ca8195b4',75,'2021-02-01 14:33:27',0),('6b906ea4-fcae-60c9-dca8-601811135208','a0b17db8-3562-2520-7a5b-60181003f945','dc27b527-bed4-aea5-836c-6017ca6ad29e',-98,'2021-02-01 14:33:27',0),('6b9fd913-dab4-4c26-fd41-601809ebf99b','59940d2d-46d1-e3fa-8112-60180940c994','c38d217e-6736-c873-0d76-6017ca449eb3',80,'2021-02-01 14:02:35',0),('6bb8320a-a5ac-8f40-bb7e-60180f009b1b','52c526cb-9c4a-23b6-b39f-60180f9089b2','c9f5ba8f-acbd-9e14-381d-6017cabba8c0',80,'2021-02-01 14:26:44',0),('6bc40b9a-c23c-d357-5924-60180ab41f16','920ed607-4a99-1bc8-930d-60180a7c44f1','d3a1d12f-623a-1bec-0810-6017cafc9125',-98,'2021-02-01 14:04:44',0),('6bd1e410-ee90-39fe-aa03-6018119a1424','a0b17db8-3562-2520-7a5b-60181003f945','62d0a189-4595-a430-d15c-6017cacc3713',75,'2021-02-01 14:33:27',0),('6bd60641-4259-c0aa-6ac5-601810ec7803','bef307c8-d095-6341-6352-601810875b07','7a6a3fd3-36d4-95b3-c51c-6017cae9ba36',89,'2021-02-01 14:31:59',0),('6be99a10-453d-9e76-ff90-601809aef972','59940d2d-46d1-e3fa-8112-60180940c994','c1e1203c-3572-0db8-24e2-6017ca610d0c',-99,'2021-02-01 14:02:35',0),('6bfe0b7d-d5a3-c5b6-d4d3-60180994d685','54779abd-cf10-d4b8-3946-601809414e38','72355743-6e36-a4b8-a9ae-6017ca6d4186',89,'2021-02-01 14:00:42',0),('6c0b5530-8e79-38fe-8a09-601810057cfe','145ce98a-0b57-3e66-8f20-60180fdba411','e206debd-89f8-a796-b4da-6017ca4eff96',75,'2021-02-01 14:29:35',0),('6c1eb774-8cfb-9bb5-6a61-601811359dc1','a0b17db8-3562-2520-7a5b-60181003f945','e24cd46c-c7c0-b6e7-f8be-6017cadc5e71',75,'2021-02-01 14:33:27',0),('6c23df8a-77eb-a71a-a63b-601810b30da6','145ce98a-0b57-3e66-8f20-60180fdba411','c9ed4ae1-e5d0-dc21-67ac-6017ca672b32',75,'2021-02-01 14:29:35',0),('6c258678-89b6-5e76-c324-6018094824f9','59940d2d-46d1-e3fa-8112-60180940c994','bee54d6c-3344-be7c-01e4-6017cabf69c7',80,'2021-02-01 14:02:35',0),('6c561c26-3aa3-a499-0dc0-601809508a60','59940d2d-46d1-e3fa-8112-60180940c994','c4ba4945-bb22-2ce1-03e6-6017ca627fb1',-99,'2021-02-01 14:02:35',0),('6c6359c7-a4df-e7f4-6213-601811a65951','a0b17db8-3562-2520-7a5b-60181003f945','67f497bf-cd72-1d8a-453a-6017ca594a2b',-99,'2021-02-01 14:33:27',0),('6c75939b-c92f-05f2-2b17-601810663554','145ce98a-0b57-3e66-8f20-60180fdba411','d3d750bd-c58c-c030-00d9-6017ca19f0ac',-98,'2021-02-01 14:29:35',0),('6c81268f-1c92-c756-11bd-6018103c608f','145ce98a-0b57-3e66-8f20-60180fdba411','c888f7ec-948e-d52b-3604-6017ca473b89',-99,'2021-02-01 14:29:35',0),('6c8c20bf-3f65-bd92-a67c-601811d31cbf','a0b17db8-3562-2520-7a5b-60181003f945','e193cedb-c4ed-434d-40b7-6017cab333cc',75,'2021-02-01 14:33:27',0),('6c994ce2-eade-db7e-8922-601810c25215','bef307c8-d095-6341-6352-601810875b07','7eb70d04-1b91-0b81-d33f-6017ca4c7a95',75,'2021-02-01 14:31:59',0),('6d017da4-dcd2-5a1b-140f-601810a0cb59','145ce98a-0b57-3e66-8f20-60180fdba411','da05b32a-31d0-ce97-2967-6017caed3d34',75,'2021-02-01 14:29:35',0),('6d046089-c3c4-c411-ef3e-6018110d9f95','a0b17db8-3562-2520-7a5b-60181003f945','61b172af-81fb-c66f-3fb4-6017ca4545b2',75,'2021-02-01 14:33:27',0),('6d1751d3-aa97-8fe3-40fe-601810f8d07e','145ce98a-0b57-3e66-8f20-60180fdba411','c532c07f-9fe7-3f2f-8a5f-6017cad82dab',75,'2021-02-01 14:29:35',0),('6d29007b-4f32-028a-3ce4-6018098e4d35','59940d2d-46d1-e3fa-8112-60180940c994','bd19cf98-97d8-2daf-1f6b-6017ca395562',80,'2021-02-01 14:02:35',0),('6d45c0b5-6289-57ed-b8c0-601810dc7bb1','bef307c8-d095-6341-6352-601810875b07','7de8fc75-06b4-9caf-d2f8-6017caf078cf',75,'2021-02-01 14:31:59',0),('6d667a3a-1517-947a-3553-601810fe64aa','145ce98a-0b57-3e66-8f20-60180fdba411','ca9243e9-0177-e253-d4db-6017cae7ea3f',-99,'2021-02-01 14:29:35',0),('6d71108a-3811-6469-a41d-6018119ed8fe','a0b17db8-3562-2520-7a5b-60181003f945','e3d7c102-1126-6fe9-1677-6017ca809dba',75,'2021-02-01 14:33:27',0),('6d7ac709-447c-0de9-fd13-601809bfc645','59940d2d-46d1-e3fa-8112-60180940c994','c249c7e4-7796-6bf7-7a7b-6017ca2c5830',-98,'2021-02-01 14:02:35',0),('6d7dc7d0-0dd5-99a9-96bb-601811370390','a0b17db8-3562-2520-7a5b-60181003f945','6ac9b95e-2b95-8b91-edb2-6017cafd2c72',89,'2021-02-01 14:33:27',0),('6da96008-2c82-9548-2e5b-6018093d69f2','59940d2d-46d1-e3fa-8112-60180940c994','c6489af9-2211-2408-2dc5-6017ca8bcab5',80,'2021-02-01 14:02:35',0),('6ddcbbed-3ee6-fde4-c14e-60181002ae00','145ce98a-0b57-3e66-8f20-60180fdba411','c4858000-fe1e-b876-5d40-6017ca89c40a',75,'2021-02-01 14:29:35',0),('6de16ffd-0969-e4be-e612-6018106f841b','bef307c8-d095-6341-6352-601810875b07','803515a9-90a5-6011-db68-6017caaad948',75,'2021-02-01 14:31:59',0),('6debc1ae-6842-a4f9-613f-6018094a1a8d','59940d2d-46d1-e3fa-8112-60180940c994','c5c44e91-99cf-3ac6-a7ea-6017caac610a',80,'2021-02-01 14:02:35',0),('6dfa0c24-ebe6-b6fb-ac4f-6018106dbcac','bef307c8-d095-6341-6352-601810875b07','aae46ef4-441b-7567-6a4b-6017ca26f182',-99,'2021-02-01 14:31:59',0),('6e0ca6f6-fe1e-9ca1-75df-601811360d42','a0b17db8-3562-2520-7a5b-60181003f945','70ca3409-a115-5547-4672-6017ca512a79',75,'2021-02-01 14:33:27',0),('6e2bec47-4c8a-af31-6b90-601809dbafb0','59940d2d-46d1-e3fa-8112-60180940c994','c794c5c8-1658-d162-4728-6017caec8ae8',80,'2021-02-01 14:02:35',0),('6e628d26-9cd6-2538-9d01-6018119e5ab7','a0b17db8-3562-2520-7a5b-60181003f945','6fec0d36-5a67-8238-f2ac-6017cae902b8',75,'2021-02-01 14:33:27',0),('6e75d085-67e9-a92c-aaa6-6018092b3136','59940d2d-46d1-e3fa-8112-60180940c994','c706f622-a7c2-cd76-47f4-6017ca5f1ee9',-99,'2021-02-01 14:02:35',0),('6e8a49e9-5cae-f5bf-8369-60181039699c','145ce98a-0b57-3e66-8f20-60180fdba411','d6db73f5-8776-66f9-6c1d-6017caeb8262',75,'2021-02-01 14:29:35',0),('6e93c770-1f97-1f76-9ea1-60180f507a76','52c526cb-9c4a-23b6-b39f-60180f9089b2','cc0d998d-d33d-2b7c-1413-6017ca1a425a',80,'2021-02-01 14:26:44',0),('6ea7d006-f796-3dcd-8468-601810b6dc6c','bef307c8-d095-6341-6352-601810875b07','7f6c2045-592e-ee7a-88aa-6017ca223d64',-99,'2021-02-01 14:31:59',0),('6ebfb99e-f4e5-37dd-568e-601809415354','59940d2d-46d1-e3fa-8112-60180940c994','c5137ed7-10f9-bc73-4a6e-6017ca455098',80,'2021-02-01 14:02:35',0),('6ece2378-3497-07e7-6c54-6018117a7e61','a0b17db8-3562-2520-7a5b-60181003f945','72d488f9-c28c-d618-901e-6017ca7cd835',75,'2021-02-01 14:33:27',0),('6ed11b87-87fe-7dd4-7935-6018111a1990','a0b17db8-3562-2520-7a5b-60181003f945','e30b304e-5234-237f-21d2-6017cad23c56',-99,'2021-02-01 14:33:27',0),('6f06fb39-5d3d-a879-039e-601810ed39fb','145ce98a-0b57-3e66-8f20-60180fdba411','e21f652f-6598-aa63-5104-6017ca3269cc',-98,'2021-02-01 14:29:35',0),('6f2653db-c8ba-23dd-b49b-6018098dba95','59940d2d-46d1-e3fa-8112-60180940c994','c8f1f7e3-8a5a-b42f-bd7d-6017ca8013d7',-99,'2021-02-01 14:02:35',0),('6f2f2828-fb48-67f2-bb58-6018102ff80b','bef307c8-d095-6341-6352-601810875b07','7d5ccdf9-fdf4-60c7-9c96-6017caf9ff1f',75,'2021-02-01 14:31:59',0),('6f62ca81-d3b7-0dde-9c79-601809a842fb','59940d2d-46d1-e3fa-8112-60180940c994','c431144f-3b85-b653-2799-6017ca279bff',80,'2021-02-01 14:02:35',0),('6f700556-c9e7-9db7-1915-601809c9dd4a','54779abd-cf10-d4b8-3946-601809414e38','773803fa-601f-7f1f-8433-6017caf1fefd',90,'2021-02-01 14:00:42',0),('6fa25f04-7f2e-f83f-0a52-601810564244','145ce98a-0b57-3e66-8f20-60180fdba411','e5a726b8-46e2-5577-6768-6017ca4e8709',75,'2021-02-01 14:29:35',0),('6fad45ca-2887-ecba-5b0a-6018108219ed','bef307c8-d095-6341-6352-601810875b07','811d6ca1-d17a-5a54-e033-6017ca5d11e0',-99,'2021-02-01 14:31:59',0),('6fd6a6bd-5eb2-ac5d-b5c0-60180941ac6e','59940d2d-46d1-e3fa-8112-60180940c994','cd88e407-1956-c897-a607-6017ca340c28',-98,'2021-02-01 14:02:35',0),('6fd76ea5-15ff-2f02-1830-60181025ad8e','145ce98a-0b57-3e66-8f20-60180fdba411','daddf798-fbca-a01d-92af-6017ca71624e',75,'2021-02-01 14:29:35',0),('70036533-f23a-4f18-1b83-6018110156f6','a0b17db8-3562-2520-7a5b-60181003f945','720128c8-49a7-b466-9bc7-6017ca049579',-99,'2021-02-01 14:33:27',0),('7008dd11-581d-0ac1-42b5-601811f44aca','a0b17db8-3562-2520-7a5b-60181003f945','e03d1f5c-2513-24d8-bdde-6017ca945ff0',75,'2021-02-01 14:33:27',0),('70382319-7577-aac2-503e-601810cbb820','bef307c8-d095-6341-6352-601810875b07','7c990f35-dbe1-d88d-1b6f-6017cacafce6',75,'2021-02-01 14:31:59',0),('703c96aa-854f-1bd5-5325-60181032ddd0','145ce98a-0b57-3e66-8f20-60180fdba411','e4b06495-feb8-2d70-cb38-6017ca9b8502',75,'2021-02-01 14:29:35',0),('704bd8b1-e2bb-e311-d5ca-6018093aee4c','59940d2d-46d1-e3fa-8112-60180940c994','d0901d67-9ee5-6676-9f62-6017ca8fda47',80,'2021-02-01 14:02:35',0),('7067e26d-ef37-2474-d011-601811245734','a0b17db8-3562-2520-7a5b-60181003f945','e454847f-e338-c3eb-be96-6017ca4a2ea3',-99,'2021-02-01 14:33:27',0),('70ac9dab-988d-fded-f7a5-601811f6002f','a0b17db8-3562-2520-7a5b-60181003f945','6ed87ff1-dc29-9718-c8a2-6017cac6f7f7',75,'2021-02-01 14:33:27',0),('70bce210-6354-e720-0821-6018094951f5','59940d2d-46d1-e3fa-8112-60180940c994','cfd801f1-971b-05c3-f426-6017cac294ff',80,'2021-02-01 14:02:35',0),('70d261d3-6f57-330c-d49b-601810d5668d','bef307c8-d095-6341-6352-601810875b07','9c42311f-35a6-2705-f373-6017ca4707a1',-98,'2021-02-01 14:31:59',0),('70de1634-82d9-d9f5-0d73-601810bebe96','145ce98a-0b57-3e66-8f20-60180fdba411','e6c56d8e-33d3-8a8d-3b47-6017ca263dc6',75,'2021-02-01 14:29:35',0),('70e77117-9058-8c96-95d7-6018116fba86','a0b17db8-3562-2520-7a5b-60181003f945','73b832d2-55fa-46c9-f776-6017caf638a9',-99,'2021-02-01 14:33:27',0),('70f4d93f-9df7-ade2-8677-601809f1d94c','59940d2d-46d1-e3fa-8112-60180940c994','d186ebc9-f248-c713-57ad-6017ca877318',80,'2021-02-01 14:02:35',0),('711bee48-a5f2-77bc-6f26-601810af72dc','145ce98a-0b57-3e66-8f20-60180fdba411','da54274e-8c18-2757-f4a0-6017caf8249a',-99,'2021-02-01 14:29:35',0),('71297dcf-c604-6756-29e5-601811f8049f','a0b17db8-3562-2520-7a5b-60181003f945','6d78d2e2-cf60-ad18-ccba-6017cab10c1c',75,'2021-02-01 14:33:27',0),('712f0ec5-24c0-379d-618c-601809c64c26','59940d2d-46d1-e3fa-8112-60180940c994','d0def67a-7a7d-3dea-616d-6017ca0ca5c0',-99,'2021-02-01 14:02:35',0),('714afa9e-23b3-356d-fc39-601810d85650','bef307c8-d095-6341-6352-601810875b07','a33f23f0-9e86-e1b5-ec15-6017ca74a368',75,'2021-02-01 14:31:59',0),('7150233a-3b3f-123e-3d64-6018104eef99','145ce98a-0b57-3e66-8f20-60180fdba411','e63b841e-387c-ad8e-8f4b-6017ca3c9896',-99,'2021-02-01 14:29:35',0),('715bd86a-7384-4ad3-48cd-60180fbb7939','52c526cb-9c4a-23b6-b39f-60180f9089b2','cb671498-76a3-0ff6-3b03-6017ca56cae8',-99,'2021-02-01 14:26:44',0),('716998d1-279a-8f29-ae80-6018117bbac1','a0b17db8-3562-2520-7a5b-60181003f945','de3aca57-08ed-bd1c-71db-6017caa8a814',75,'2021-02-01 14:33:27',0),('716f98ba-caaf-b563-9568-6018094e96a6','59940d2d-46d1-e3fa-8112-60180940c994','cf1e856c-b6ab-5b98-3ad5-6017ca7fb7eb',80,'2021-02-01 14:02:35',0),('71a44b66-f09c-10cf-22b0-6018095d7273','59940d2d-46d1-e3fa-8112-60180940c994','d205df45-00e2-fd60-1321-6017caaef991',-99,'2021-02-01 14:02:35',0),('71c89a2f-1dd8-06d5-4ec0-6018109bf7c2','bef307c8-d095-6341-6352-601810875b07','a18410d0-7678-b6ef-2c6d-6017ca0eeaf5',75,'2021-02-01 14:31:59',0),('71d22ccb-1944-d831-66b3-601809329826','59940d2d-46d1-e3fa-8112-60180940c994','ce72846b-97fc-6dbc-f5ff-6017ca04b487',80,'2021-02-01 14:02:35',0),('71d6e10e-0543-d46d-ae1c-601810eaf201','145ce98a-0b57-3e66-8f20-60180fdba411','e3f720d1-c9c2-381c-98d5-6017ca7e0a85',75,'2021-02-01 14:29:35',0),('720379e7-26dd-354b-3cd2-6018110c147c','a0b17db8-3562-2520-7a5b-60181003f945','72355743-6e36-a4b8-a9ae-6017ca6d4186',-98,'2021-02-01 14:33:27',0),('72181bba-f2c8-c1f7-3ec1-6018107c5639','145ce98a-0b57-3e66-8f20-60180fdba411','d60ff063-6f4a-4ed7-4dae-6017ca3f6b87',75,'2021-02-01 14:29:35',0),('721a857f-93ba-6074-79ea-601809a345b2','59940d2d-46d1-e3fa-8112-60180940c994','3bf2f429-039e-9b9a-086b-6017cad8b024',89,'2021-02-01 14:02:35',0),('724308f3-eb68-58a2-e701-601810923fa4','145ce98a-0b57-3e66-8f20-60180fdba411','e740cd02-ebce-f2e3-e4ff-6017ca03a2e5',-99,'2021-02-01 14:29:35',0),('724a0f59-1d66-3613-d2de-60180f33a910','52c526cb-9c4a-23b6-b39f-60180f9089b2','ece932f0-236d-af78-5fc3-6017ca39f7be',80,'2021-02-01 14:26:44',0),('72518427-4005-e658-333d-601809ea84df','59940d2d-46d1-e3fa-8112-60180940c994','40a06fb6-2c0b-b5ab-9711-6017cad0002f',80,'2021-02-01 14:02:35',0),('72568cb4-b4b1-7769-6a11-601811e837c3','a0b17db8-3562-2520-7a5b-60181003f945','773803fa-601f-7f1f-8433-6017caf1fefd',75,'2021-02-01 14:33:27',0),('72716da2-40fc-bbec-34ab-601810d7cd25','bef307c8-d095-6341-6352-601810875b07','a4da651d-8bd3-37de-e06c-6017cab354c0',75,'2021-02-01 14:31:59',0),('72b37eb2-af35-2d70-dbea-60180985005f','59940d2d-46d1-e3fa-8112-60180940c994','3feeba8f-d6bd-6fe9-094b-6017ca124904',80,'2021-02-01 14:02:35',0),('72c17577-10e6-5812-1107-6018102eb7c6','145ce98a-0b57-3e66-8f20-60180fdba411','db361441-01f3-a76b-d5f3-6017cafe119c',-99,'2021-02-01 14:29:35',0),('72ef82f3-7c7d-6f5e-acc7-6018090fdf7a','59940d2d-46d1-e3fa-8112-60180940c994','424e9d02-1a6d-b40c-3d77-6017ca2a199b',80,'2021-02-01 14:02:35',0),('7304d4e0-a564-8794-6974-6018106ef2f9','bef307c8-d095-6341-6352-601810875b07','a3c278eb-300e-6fb2-795d-6017caae6b95',-99,'2021-02-01 14:31:59',0),('73150a4d-abb8-e71d-ba93-601810d14126','bef307c8-d095-6341-6352-601810875b07','63623684-279d-11f2-ff80-6017ca26b7c2',75,'2021-02-01 14:31:59',0),('731604fc-2320-11ad-7107-6018115b36d9','a0b17db8-3562-2520-7a5b-60181003f945','4f470189-91df-c39c-04a7-6017cae1a63a',-99,'2021-02-01 14:33:27',0),('73166223-9e20-577d-5a8f-601809830610','59940d2d-46d1-e3fa-8112-60180940c994','41257a11-4623-22fc-5899-6017ca328bb7',-99,'2021-02-01 14:02:35',0),('7341756b-7a34-04bb-5531-6018114b3faf','a0b17db8-3562-2520-7a5b-60181003f945','75e95896-bfb4-e7d1-8d5d-6017ca577257',75,'2021-02-01 14:33:27',0),('73b10de4-e8d6-b521-883c-6018093c70cf','54779abd-cf10-d4b8-3946-601809414e38','75e95896-bfb4-e7d1-8d5d-6017ca577257',90,'2021-02-01 14:00:42',0),('73b7ac6d-13d0-99da-4f15-60180958ac6d','59940d2d-46d1-e3fa-8112-60180940c994','3f22e375-6be6-8eea-a6a5-6017ca1296e5',80,'2021-02-01 14:02:35',0),('73cbaa25-2150-83b9-418a-601811b846aa','a0b17db8-3562-2520-7a5b-60181003f945','79640946-aee0-9f50-e62a-6017cae5892d',75,'2021-02-01 14:33:27',0),('73f19e09-76af-2a7e-b07a-601810e35281','145ce98a-0b57-3e66-8f20-60180fdba411','e344c340-e4e2-4505-54a2-6017ca5f2b7c',75,'2021-02-01 14:29:35',0),('741a19db-1560-28c0-e8ec-60180908a373','59940d2d-46d1-e3fa-8112-60180940c994','43128bab-53ee-f54c-e979-6017ca31494e',-99,'2021-02-01 14:02:35',0),('743e6e27-4090-7112-2324-60180f2326c5','52c526cb-9c4a-23b6-b39f-60180f9089b2','c8c2766e-917f-40ca-4d6d-6017caf3f0d5',80,'2021-02-01 14:26:44',0),('744664df-b426-74e2-18f5-60181158352c','a0b17db8-3562-2520-7a5b-60181003f945','77ccb264-3890-c274-4e17-6017ca98c87e',-99,'2021-02-01 14:33:27',0),('745e0a7a-830c-1238-6472-601809502668','59940d2d-46d1-e3fa-8112-60180940c994','3d0a7731-1875-5403-859e-6017ca2605dd',80,'2021-02-01 14:02:35',0),('746c3402-0e1c-5a0d-129e-601810e527f8','bef307c8-d095-6341-6352-601810875b07','a020d500-6246-3b1e-4d0d-6017ca57b752',75,'2021-02-01 14:31:59',0),('746d023b-6a0f-c376-bc3e-601810b2e146','145ce98a-0b57-3e66-8f20-60180fdba411','d57a9815-b8fa-f92d-8740-6017ca2996b4',75,'2021-02-01 14:29:35',0),('74900587-00bc-ab1d-30f6-60180a2fe547','920ed607-4a99-1bc8-930d-60180a7c44f1','d7a4a93f-f2b9-7acf-fd1a-6017ca338e09',80,'2021-02-01 14:04:44',0),('74976f11-bfbe-18a8-6e37-601809ac0d51','59940d2d-46d1-e3fa-8112-60180940c994','7a6a3fd3-36d4-95b3-c51c-6017cae9ba36',-98,'2021-02-01 14:02:35',0),('74a8e46c-0a5b-3b24-3c40-60181015c9ef','145ce98a-0b57-3e66-8f20-60180fdba411','dc27b527-bed4-aea5-836c-6017ca6ad29e',-98,'2021-02-01 14:29:35',0),('74e7f9a4-929d-b130-c1f8-6018095fc1c9','59940d2d-46d1-e3fa-8112-60180940c994','7eb70d04-1b91-0b81-d33f-6017ca4c7a95',80,'2021-02-01 14:02:35',0),('74f97693-a8b7-6df6-dd89-6018100ad553','bef307c8-d095-6341-6352-601810875b07','a57c2f16-66b6-bae7-008d-6017cacfd6bf',-99,'2021-02-01 14:31:59',0),('75232e1b-0d10-6f9c-df40-6018095f15b9','59940d2d-46d1-e3fa-8112-60180940c994','7de8fc75-06b4-9caf-d2f8-6017caf078cf',80,'2021-02-01 14:02:35',0),('752d40d8-3a77-1a14-a609-6018107aa005','bef307c8-d095-6341-6352-601810875b07','9e20b241-b441-e11e-e26e-6017ca510608',75,'2021-02-01 14:31:59',0),('755cddb8-5376-bed6-b9fa-6018105ac51b','145ce98a-0b57-3e66-8f20-60180fdba411','e5eb98c6-09e5-65bc-7b07-6017caf35be0',-98,'2021-02-01 14:29:35',0),('755eaa6a-f76f-0cbf-7085-6018099f35a4','59940d2d-46d1-e3fa-8112-60180940c994','803515a9-90a5-6011-db68-6017caaad948',80,'2021-02-01 14:02:35',0),('756e3701-7336-ace4-6c19-6018105237dc','145ce98a-0b57-3e66-8f20-60180fdba411','e24cd46c-c7c0-b6e7-f8be-6017cadc5e71',75,'2021-02-01 14:29:35',0),('759159d5-0f6b-a3d6-b845-60180973b3c0','59940d2d-46d1-e3fa-8112-60180940c994','7f6c2045-592e-ee7a-88aa-6017ca223d64',-99,'2021-02-01 14:02:35',0),('75b00ea4-674e-b5e0-713d-60180ab66114','920ed607-4a99-1bc8-930d-60180a7c44f1','a3c278eb-300e-6fb2-795d-6017caae6b95',-99,'2021-02-01 14:04:44',0),('75bd2d74-5170-4ac0-e26c-6018115bb5cc','a0b17db8-3562-2520-7a5b-60181003f945','73fdb388-e429-64d1-7485-6017cae6514d',75,'2021-02-01 14:33:27',0),('75d33476-9753-d008-f032-601809a3621e','59940d2d-46d1-e3fa-8112-60180940c994','7d5ccdf9-fdf4-60c7-9c96-6017caf9ff1f',80,'2021-02-01 14:02:35',0),('75eb66a7-3eda-2ca6-c393-601810e726a4','bef307c8-d095-6341-6352-601810875b07','ce300fe4-aceb-1d76-c963-6017ca14a5f3',-98,'2021-02-01 14:31:59',0),('7600e4c1-d26d-c85c-44de-6018090cce18','59940d2d-46d1-e3fa-8112-60180940c994','811d6ca1-d17a-5a54-e033-6017ca5d11e0',-99,'2021-02-01 14:02:35',0),('7602eb33-f018-b0d9-a32d-60181023d136','145ce98a-0b57-3e66-8f20-60180fdba411','e193cedb-c4ed-434d-40b7-6017cab333cc',75,'2021-02-01 14:29:35',0),('764d2511-7584-f03f-ea25-6018091ccc0e','59940d2d-46d1-e3fa-8112-60180940c994','7c990f35-dbe1-d88d-1b6f-6017cacafce6',80,'2021-02-01 14:02:35',0),('768c6a3c-4e81-a452-1fa4-601809b5397a','59940d2d-46d1-e3fa-8112-60180940c994','9c42311f-35a6-2705-f373-6017ca4707a1',-98,'2021-02-01 14:02:35',0),('769224db-f7a6-7b80-2b24-601810199322','bef307c8-d095-6341-6352-601810875b07','fd900cfb-53c8-2739-93ed-6017cae17103',75,'2021-02-01 14:31:59',0),('76a6ecdf-b11a-c9fb-363c-601810992aeb','145ce98a-0b57-3e66-8f20-60180fdba411','ea20640d-5cb5-0ec5-e35a-6017ca8a8a15',75,'2021-02-01 14:29:35',0),('76d2d761-3754-1575-ff19-60180f285485','52c526cb-9c4a-23b6-b39f-60180f9089b2','cc7cc659-153f-71ed-f0d2-6017caa4c207',-99,'2021-02-01 14:26:44',0),('76e487bd-a8f9-971b-894d-60180945b986','59940d2d-46d1-e3fa-8112-60180940c994','a33f23f0-9e86-e1b5-ec15-6017ca74a368',80,'2021-02-01 14:02:35',0),('770b06cf-b75d-b742-b370-601811dcf1d8','a0b17db8-3562-2520-7a5b-60181003f945','7a44a0a8-2174-0769-fff0-6017caa1731c',-99,'2021-02-01 14:33:27',0),('772574ad-b6cd-1000-80cb-601809e3fd58','59940d2d-46d1-e3fa-8112-60180940c994','a18410d0-7678-b6ef-2c6d-6017ca0eeaf5',80,'2021-02-01 14:02:35',0),('7777837c-1ccc-2171-57e6-60181178b565','a0b17db8-3562-2520-7a5b-60181003f945','733ed99a-4574-0176-f887-6017cabe49e9',75,'2021-02-01 14:33:27',0),('77970ffc-7052-c78c-2556-601809647869','59940d2d-46d1-e3fa-8112-60180940c994','a4da651d-8bd3-37de-e06c-6017cab354c0',80,'2021-02-01 14:02:35',0),('77b75499-899d-611e-8ffd-60181075723a','145ce98a-0b57-3e66-8f20-60180fdba411','e3d7c102-1126-6fe9-1677-6017ca809dba',75,'2021-02-01 14:29:35',0),('77c48843-655a-f197-fea1-60180988528f','59940d2d-46d1-e3fa-8112-60180940c994','a3c278eb-300e-6fb2-795d-6017caae6b95',-99,'2021-02-01 14:02:35',0),('77f2b2a0-db01-0cf0-d8cd-60180978fb04','59940d2d-46d1-e3fa-8112-60180940c994','a020d500-6246-3b1e-4d0d-6017ca57b752',80,'2021-02-01 14:02:35',0),('7804d610-a521-f445-30d3-601810a9580a','145ce98a-0b57-3e66-8f20-60180fdba411','e91c140d-d1a4-7a42-2181-6017cad6448e',75,'2021-02-01 14:29:35',0),('781edd75-6a97-dfc3-db6b-601811cb78aa','a0b17db8-3562-2520-7a5b-60181003f945','ea5c0154-cef1-803b-0ba7-6017ca67a911',-98,'2021-02-01 14:33:27',0),('782892c1-dfc8-a505-fcfd-601810a8736f','bef307c8-d095-6341-6352-601810875b07','f4bb0782-df1c-f4d1-1c0d-6017ca07bb9d',75,'2021-02-01 14:31:59',0),('783d0373-fb87-e0f1-10e0-601809c60d40','59940d2d-46d1-e3fa-8112-60180940c994','a57c2f16-66b6-bae7-008d-6017cacfd6bf',-99,'2021-02-01 14:02:35',0),('78802c5f-884b-f1b3-3ccb-601809e75007','59940d2d-46d1-e3fa-8112-60180940c994','9e20b241-b441-e11e-e26e-6017ca510608',80,'2021-02-01 14:02:35',0),('78b5c14a-7352-b2f1-763c-60180925fdfc','59940d2d-46d1-e3fa-8112-60180940c994','ce300fe4-aceb-1d76-c963-6017ca14a5f3',89,'2021-02-01 14:02:35',0),('78dbd378-6016-33c5-9003-6018109a1539','bef307c8-d095-6341-6352-601810875b07','11076fd5-1162-9638-0052-6017ca6891e0',75,'2021-02-01 14:31:59',0),('78e05b64-b430-8f5f-7baf-601810cf9bd0','145ce98a-0b57-3e66-8f20-60180fdba411','ece932f0-236d-af78-5fc3-6017ca39f7be',75,'2021-02-01 14:29:35',0),('78fd9ad7-f47d-f761-e3be-6018095e08b9','59940d2d-46d1-e3fa-8112-60180940c994','fd900cfb-53c8-2739-93ed-6017cae17103',80,'2021-02-01 14:02:35',0),('7907b227-ae15-d88d-8c32-60181134b77f','a0b17db8-3562-2520-7a5b-60181003f945','14b748ba-7445-1bed-a6bc-6017ca1ed7b4',75,'2021-02-01 14:33:27',0),('791105b7-c018-ecdd-0f27-6018114c3cdf','a0b17db8-3562-2520-7a5b-60181003f945','302b01b1-1748-9cbd-0930-6017ca8ca592',75,'2021-02-01 14:33:27',0),('793575ce-6bfe-1702-7bbc-601809f47cbc','59940d2d-46d1-e3fa-8112-60180940c994','f4bb0782-df1c-f4d1-1c0d-6017ca07bb9d',80,'2021-02-01 14:02:35',0),('793ac2e7-a06d-7bb9-98f7-60180fd1ca6e','52c526cb-9c4a-23b6-b39f-60180f9089b2','c840be03-804c-7707-c944-6017ca14f4b9',80,'2021-02-01 14:26:44',0),('795f3b6c-fb8f-5c9e-6de3-601810cefb83','bef307c8-d095-6341-6352-601810875b07','106a7216-7119-fcfc-2b1e-6017ca6cc264',-99,'2021-02-01 14:31:59',0),('798d3320-58bd-111c-48d5-60180949331c','59940d2d-46d1-e3fa-8112-60180940c994','11076fd5-1162-9638-0052-6017ca6891e0',80,'2021-02-01 14:02:35',0),('799a0105-7d0e-fc57-97e5-60180a72d6dc','920ed607-4a99-1bc8-930d-60180a7c44f1','d71fb77c-48a2-8f60-7e1b-6017ca5bccba',80,'2021-02-01 14:04:44',0),('79e0852f-3467-a0d7-2604-60180934998e','59940d2d-46d1-e3fa-8112-60180940c994','106a7216-7119-fcfc-2b1e-6017ca6cc264',-99,'2021-02-01 14:02:35',0),('79e569de-57e7-2ead-0cfb-6018116e2e25','a0b17db8-3562-2520-7a5b-60181003f945','12a05087-ac9b-b480-ef56-6017ca5bb531',75,'2021-02-01 14:33:27',0),('79f7cf75-c6a3-11f5-94a0-6018103471dc','145ce98a-0b57-3e66-8f20-60180fdba411','eae8eb86-ed25-499c-d9d5-6017ca5c45da',-99,'2021-02-01 14:29:35',0),('7a0661d4-5c54-3901-e46b-601810ecae16','bef307c8-d095-6341-6352-601810875b07','e5ae0a64-7b08-de38-3aa6-6017ca281050',75,'2021-02-01 14:31:59',0),('7a1898e9-4caf-48cc-be2c-601809332e42','59940d2d-46d1-e3fa-8112-60180940c994','e5ae0a64-7b08-de38-3aa6-6017ca281050',80,'2021-02-01 14:02:35',0),('7a5f314b-5978-863c-9e2e-601809ff5c0b','59940d2d-46d1-e3fa-8112-60180940c994','118371af-80d6-1cde-4a5b-6017ca11c89f',-99,'2021-02-01 14:02:35',0),('7aa5fb77-c194-1e97-93c7-60180912b43d','59940d2d-46d1-e3fa-8112-60180940c994','da670931-2349-18a0-44b3-6017ca9c2ded',80,'2021-02-01 14:02:35',0),('7ade6d3d-07e2-a869-cbdd-60180943b25f','59940d2d-46d1-e3fa-8112-60180940c994','c0400db5-486a-beee-146a-6017ca7174dc',89,'2021-02-01 14:02:35',0),('7b3f043c-50ff-accd-b185-601809a95fca','59940d2d-46d1-e3fa-8112-60180940c994','45ba0903-1ee6-3328-71bc-6017ca5f8701',80,'2021-02-01 14:02:35',0),('7b43133b-91f2-4b93-285d-601811c14a50','a0b17db8-3562-2520-7a5b-60181003f945','1844b369-3730-ed93-c1df-6017cad6ef13',75,'2021-02-01 14:33:27',0),('7bca8d53-2d92-4669-488d-601809d83cbb','59940d2d-46d1-e3fa-8112-60180940c994','3aef02cd-a257-9c01-6b8b-6017ca8f909a',80,'2021-02-01 14:02:35',0),('7bd93352-6398-3ee8-884b-601810f7a134','bef307c8-d095-6341-6352-601810875b07','118371af-80d6-1cde-4a5b-6017ca11c89f',-99,'2021-02-01 14:31:59',0),('7bea9db8-6165-810f-85a3-60180fe32310','52c526cb-9c4a-23b6-b39f-60180f9089b2','91ed6183-922d-c827-70cc-6017ca0f80a2',-98,'2021-02-01 14:26:44',0),('7bec8551-6257-4e4d-0eb8-601811354de1','a0b17db8-3562-2520-7a5b-60181003f945','16b7009a-4890-65d1-3f8f-6017ca6c7043',-99,'2021-02-01 14:33:27',0),('7c32d993-c362-2d0e-39db-601810094878','145ce98a-0b57-3e66-8f20-60180fdba411','e30b304e-5234-237f-21d2-6017cad23c56',-99,'2021-02-01 14:29:35',0),('7c3ec631-6fef-fede-0097-601809422b2d','59940d2d-46d1-e3fa-8112-60180940c994','58aa0977-1d78-2e4c-0190-6017ca8195b4',80,'2021-02-01 14:02:35',0),('7c4c0d4a-7fc3-1c77-b183-6018106abb99','bef307c8-d095-6341-6352-601810875b07','a703c7b1-bdc0-8848-c82e-6017ca3a4705',75,'2021-02-01 14:31:59',0),('7c71764a-001a-b332-d17f-6018106a6a14','145ce98a-0b57-3e66-8f20-60180fdba411','e7ed5142-9b57-558e-95a9-6017ca713940',75,'2021-02-01 14:29:35',0),('7c9361ae-1c62-4f2e-df42-601810c63605','bef307c8-d095-6341-6352-601810875b07','da670931-2349-18a0-44b3-6017ca9c2ded',75,'2021-02-01 14:31:59',0),('7c9513fa-48f7-0e7e-77a7-60180925a41e','59940d2d-46d1-e3fa-8112-60180940c994','4f470189-91df-c39c-04a7-6017cae1a63a',-99,'2021-02-01 14:02:35',0),('7cafe362-7962-5be0-ba4c-6018116e79b3','a0b17db8-3562-2520-7a5b-60181003f945','1210b8d7-8527-cfab-15ab-6017ca872b87',75,'2021-02-01 14:33:27',0),('7cd23096-5471-75e6-74f4-601809fcb026','59940d2d-46d1-e3fa-8112-60180940c994','302b01b1-1748-9cbd-0930-6017ca8ca592',80,'2021-02-01 14:02:35',0),('7d4dbfb5-2368-847b-90db-60180f475375','52c526cb-9c4a-23b6-b39f-60180f9089b2','9634bb2c-d95f-d6c4-301c-6017ca77e3e4',80,'2021-02-01 14:26:44',0),('7d5b7673-4109-8f6d-541b-601809a6eb35','59940d2d-46d1-e3fa-8112-60180940c994','681d0116-7635-42ba-f3d6-6017caa34383',-99,'2021-02-01 14:02:35',0),('7d830ead-bf07-d00b-9fba-6018098e2162','54779abd-cf10-d4b8-3946-601809414e38','79640946-aee0-9f50-e62a-6017cae5892d',90,'2021-02-01 14:00:42',0),('7d987230-f771-0c98-1cee-601809cff18e','59940d2d-46d1-e3fa-8112-60180940c994','1a7603b6-dc9c-b191-8b8b-6017ca397446',80,'2021-02-01 14:02:35',0),('7da3745a-741d-a6e5-10b3-601811e1a6cf','a0b17db8-3562-2520-7a5b-60181003f945','193e9c15-b4d4-c673-1b4b-6017ca498afe',-99,'2021-02-01 14:33:27',0),('7db706c8-cd49-a1a3-3486-60180af33ff8','920ed607-4a99-1bc8-930d-60180a7c44f1','d9109e29-93c3-3b11-a26e-6017ca4c8c53',80,'2021-02-01 14:04:44',0),('7dd75cf8-e53c-4afa-eec9-60180957ef3c','59940d2d-46d1-e3fa-8112-60180940c994','d3a1d12f-623a-1bec-0810-6017cafc9125',-98,'2021-02-01 14:02:35',0),('7dfc0259-0bf5-9b0c-58e8-60180fd4fc73','52c526cb-9c4a-23b6-b39f-60180f9089b2','eae8eb86-ed25-499c-d9d5-6017ca5c45da',-99,'2021-02-01 14:26:44',0),('7e0b7c39-aa02-1df7-a295-601809ed3723','59940d2d-46d1-e3fa-8112-60180940c994','d7a4a93f-f2b9-7acf-fd1a-6017ca338e09',80,'2021-02-01 14:02:35',0),('7e55e6e7-f77f-3263-aa1b-601810ff6084','bef307c8-d095-6341-6352-601810875b07','c0400db5-486a-beee-146a-6017ca7174dc',-98,'2021-02-01 14:31:59',0),('7e61247e-e59e-357b-4903-6018098692f6','59940d2d-46d1-e3fa-8112-60180940c994','d71fb77c-48a2-8f60-7e1b-6017ca5bccba',80,'2021-02-01 14:02:35',0),('7eb597ca-4550-709a-5cc9-601811105991','a0b17db8-3562-2520-7a5b-60181003f945','1153fb10-28fd-a556-8e38-6017ca79a353',75,'2021-02-01 14:33:27',0),('7edae366-bf40-8343-91ed-6018097a4ac5','59940d2d-46d1-e3fa-8112-60180940c994','d9109e29-93c3-3b11-a26e-6017ca4c8c53',80,'2021-02-01 14:02:35',0),('7f076f40-e361-6c2d-9100-60180f20319e','52c526cb-9c4a-23b6-b39f-60180f9089b2','947ad549-f887-3d63-b7a7-6017cad7458e',80,'2021-02-01 14:26:44',0),('7f20b6fe-d3a4-f265-f7e9-601810086976','bef307c8-d095-6341-6352-601810875b07','45ba0903-1ee6-3328-71bc-6017ca5f8701',75,'2021-02-01 14:31:59',0),('7f4525ce-7058-cd3f-7a0f-6018094bd374','59940d2d-46d1-e3fa-8112-60180940c994','d881ab81-f5b9-7815-7501-6017caab079d',-99,'2021-02-01 14:02:35',0),('7f4c0980-8aee-be7a-f9f8-601811601a55','a0b17db8-3562-2520-7a5b-60181003f945','681d0116-7635-42ba-f3d6-6017caa34383',-99,'2021-02-01 14:33:27',0),('7f639a4f-932d-e2a5-86a4-601810a1a44d','145ce98a-0b57-3e66-8f20-60180fdba411','e03d1f5c-2513-24d8-bdde-6017ca945ff0',75,'2021-02-01 14:29:35',0),('7fa5e2c8-810e-3e47-9aa0-601811366ecd','a0b17db8-3562-2520-7a5b-60181003f945','4b5df074-2224-15a5-770a-6017ca31e0d2',-98,'2021-02-01 14:33:27',0),('7fb2e770-ad5c-a98c-401f-6018096c3a7d','59940d2d-46d1-e3fa-8112-60180940c994','d67affcf-e393-960c-30dc-6017cadbbb20',80,'2021-02-01 14:02:35',0),('7fb55450-6291-3d01-46cd-60180f57821d','52c526cb-9c4a-23b6-b39f-60180f9089b2','9876e9d1-2bff-c6c5-6d01-6017cade8e1f',80,'2021-02-01 14:26:44',0),('80241f32-24a1-90ca-7757-60181034fba4','145ce98a-0b57-3e66-8f20-60180fdba411','edf66900-4cc5-2778-b45b-6017ca4872c6',-99,'2021-02-01 14:29:35',0),('80911a87-3158-7cf6-d0c6-60180903274b','59940d2d-46d1-e3fa-8112-60180940c994','d972e5ac-ed9b-9d26-c01a-6017cabd1654',-99,'2021-02-01 14:02:35',0),('809c3dc8-0d92-672c-29d2-6018103d9366','bef307c8-d095-6341-6352-601810875b07','3aef02cd-a257-9c01-6b8b-6017ca8f909a',75,'2021-02-01 14:31:59',0),('80ae5dca-701f-4bbf-7212-601811ee4216','a0b17db8-3562-2520-7a5b-60181003f945','506f61c9-49cf-d0e3-5448-6017ca7e282c',75,'2021-02-01 14:33:27',0),('80b0ffd2-920b-db99-cbb2-60180f3db2ad','52c526cb-9c4a-23b6-b39f-60180f9089b2','97b2709d-df39-baf3-964d-6017ca844416',-99,'2021-02-01 14:26:44',0),('80b7fa37-f140-ec2c-7490-601809732705','59940d2d-46d1-e3fa-8112-60180940c994','d4ef4a17-0ff2-1c7d-f14a-6017ca54bfe6',80,'2021-02-01 14:02:35',0),('8117a088-149a-7c10-9e50-6018097b72e3','59940d2d-46d1-e3fa-8112-60180940c994','b5c62ffc-a30c-fba7-206c-6017ca00a390',-98,'2021-02-01 14:02:35',0),('816511af-7c24-3034-9592-60180f808e0d','52c526cb-9c4a-23b6-b39f-60180f9089b2','93d8cd13-cf78-d508-6128-6017ca32e37c',80,'2021-02-01 14:26:44',0),('817be6aa-6b86-74f9-daa0-60181076262f','145ce98a-0b57-3e66-8f20-60180fdba411','e454847f-e338-c3eb-be96-6017ca4a2ea3',-99,'2021-02-01 14:29:35',0),('81849685-1572-3574-8160-60181160f6f4','a0b17db8-3562-2520-7a5b-60181003f945','4fa20f82-4605-a031-949b-6017ca9c9830',75,'2021-02-01 14:33:27',0),('81d5f047-5a88-4677-b817-60180f6a0b8c','52c526cb-9c4a-23b6-b39f-60180f9089b2','997bc36e-3b1a-b7f4-8f68-6017caa01d84',-99,'2021-02-01 14:26:44',0),('81eaa1c0-0a4b-2912-4309-6018092d266f','59940d2d-46d1-e3fa-8112-60180940c994','b9446e01-b190-5369-dac0-6017ca90247e',80,'2021-02-01 14:02:35',0),('82168d4e-25bb-ac88-5507-601810d9f661','145ce98a-0b57-3e66-8f20-60180fdba411','de3aca57-08ed-bd1c-71db-6017caa8a814',75,'2021-02-01 14:29:35',0),('8221e9ad-a328-e80b-6472-601809a28da9','59940d2d-46d1-e3fa-8112-60180940c994','b8979993-d9e2-3c23-2378-6017ca043ead',80,'2021-02-01 14:02:35',0),('823ecfb1-66d0-2f6a-4201-60181074585a','bef307c8-d095-6341-6352-601810875b07','58aa0977-1d78-2e4c-0190-6017ca8195b4',75,'2021-02-01 14:31:59',0),('826597ab-9890-685c-0e46-601809f236ba','59940d2d-46d1-e3fa-8112-60180940c994','ba77c542-9e5d-7ae6-e3f9-6017caa020b9',80,'2021-02-01 14:02:35',0),('8269c274-d8f2-b71e-b558-60181003d4d8','145ce98a-0b57-3e66-8f20-60180fdba411','e6b81b67-beb5-38c3-5233-6017ca74980e',75,'2021-02-01 14:29:35',0),('828107da-9fd7-20fa-0bb2-60180a25cbe8','920ed607-4a99-1bc8-930d-60180a7c44f1','d881ab81-f5b9-7815-7501-6017caab079d',-99,'2021-02-01 14:04:44',0),('82a8d096-ae07-9f27-d104-601810c99c97','145ce98a-0b57-3e66-8f20-60180fdba411','87539216-07b6-7711-9aa8-6017ca0d4d82',-98,'2021-02-01 14:29:35',0),('82c6052d-34fd-b4aa-70c9-601809b6b5e8','54779abd-cf10-d4b8-3946-601809414e38','77ccb264-3890-c274-4e17-6017ca98c87e',90,'2021-02-01 14:00:42',0),('82d17285-c51f-e385-c7a9-601811ee3fc1','a0b17db8-3562-2520-7a5b-60181003f945','5362a646-6144-5c4e-9ebb-6017cabe59da',75,'2021-02-01 14:33:27',0),('83042aaf-2ec7-d2a5-0ef4-601810331bce','bef307c8-d095-6341-6352-601810875b07','4f470189-91df-c39c-04a7-6017cae1a63a',-99,'2021-02-01 14:31:59',0),('8305a50f-cebe-fbcd-3ad1-601810cfd123','145ce98a-0b57-3e66-8f20-60180fdba411','8c9ce024-16d3-ce97-f6f1-6017cafec8a2',75,'2021-02-01 14:29:35',0),('8308d9b1-d7f9-3b06-a2a6-601809f3f9ce','59940d2d-46d1-e3fa-8112-60180940c994','b9e54d8b-7ade-bc5b-658e-6017ca43b993',-99,'2021-02-01 14:02:35',0),('830f0704-8c48-2962-3d5f-6018101515f8','145ce98a-0b57-3e66-8f20-60180fdba411','72355743-6e36-a4b8-a9ae-6017ca6d4186',89,'2021-02-01 14:29:35',0),('8390379f-3721-308d-1b0d-601810eee1e2','145ce98a-0b57-3e66-8f20-60180fdba411','8ba34aa2-a2dd-fb51-3753-6017cad94619',75,'2021-02-01 14:29:35',0),('83940107-380b-513a-6de6-601809feb6ce','59940d2d-46d1-e3fa-8112-60180940c994','b742e7ee-1eaa-6de2-be09-6017ca43a204',80,'2021-02-01 14:02:35',0),('83b904ed-0d57-29cb-76cb-601810ce0e98','145ce98a-0b57-3e66-8f20-60180fdba411','aecb124c-09c7-d9f6-442e-6017ca33edc8',75,'2021-02-01 14:29:35',0),('83de105c-6f2e-f8a6-4584-6018114565da','a0b17db8-3562-2520-7a5b-60181003f945','5131b6a6-ac2e-aab4-8297-6017cacd1a29',-99,'2021-02-01 14:33:27',0),('83e96bb9-69a9-2d9d-7314-6018097b3cf0','59940d2d-46d1-e3fa-8112-60180940c994','baed9da3-990f-9c19-73a4-6017ca3443a1',-99,'2021-02-01 14:02:35',0),('84338717-8eaa-e96b-5b50-6018090fe285','59940d2d-46d1-e3fa-8112-60180940c994','b6911c5b-48f3-c461-d700-6017ca6f7761',80,'2021-02-01 14:02:35',0),('846a699c-8088-4e3a-45c2-601810b6a0ca','bef307c8-d095-6341-6352-601810875b07','302b01b1-1748-9cbd-0930-6017ca8ca592',75,'2021-02-01 14:31:59',0),('847a6cf6-e96e-019d-9cc4-60180f17b964','52c526cb-9c4a-23b6-b39f-60180f9089b2','92b903d6-cb45-ba2b-3c16-6017caf5e9e9',80,'2021-02-01 14:26:44',0),('847f7874-21ee-aae6-7fee-6018090bd798','59940d2d-46d1-e3fa-8112-60180940c994','254fc6ba-64ef-df4a-d53f-6017ca814e78',-98,'2021-02-01 14:02:35',0),('84810455-5aea-67ef-1d31-60180a860d02','920ed607-4a99-1bc8-930d-60180a7c44f1','d67affcf-e393-960c-30dc-6017cadbbb20',80,'2021-02-01 14:04:44',0),('84899e33-9a7a-09d6-04bd-601810003a3e','145ce98a-0b57-3e66-8f20-60180fdba411','773803fa-601f-7f1f-8433-6017caf1fefd',75,'2021-02-01 14:29:35',0),('84b70a29-1691-e463-ab08-601811c02b19','a0b17db8-3562-2520-7a5b-60181003f945','4eb5453c-539f-7da6-2393-6017cab07f2d',75,'2021-02-01 14:33:27',0),('84e18a21-efe0-0f61-59bb-60180909baf6','59940d2d-46d1-e3fa-8112-60180940c994','28e1bd8d-b069-2676-b8fa-6017cac381c6',80,'2021-02-01 14:02:35',0),('8533dacc-34d6-19ad-f937-60180ff5986b','52c526cb-9c4a-23b6-b39f-60180f9089b2','a49603d3-7f15-abda-b0d5-6017ca7fcdde',-98,'2021-02-01 14:26:44',0),('85490aea-7ac8-8739-9e33-6018117bb23d','a0b17db8-3562-2520-7a5b-60181003f945','543391af-9314-213d-cf52-6017ca0de4a4',-99,'2021-02-01 14:33:27',0),('855cc21d-0146-0e40-4e91-60181054f638','145ce98a-0b57-3e66-8f20-60180fdba411','8f62e502-a51a-1dbf-4c0e-6017cabe0b1a',75,'2021-02-01 14:29:35',0),('856202cc-b6bc-bff8-0691-6018092663f2','59940d2d-46d1-e3fa-8112-60180940c994','277ebc96-5c1a-429e-912c-6017ca79e468',80,'2021-02-01 14:02:35',0),('857fdad3-8a93-f0ee-f77c-60180fa26e3b','52c526cb-9c4a-23b6-b39f-60180f9089b2','a96a916f-2bdc-49ea-aa25-6017cac6a313',80,'2021-02-01 14:26:44',0),('859e59ae-c9cf-aca4-5a63-601809e98ab0','59940d2d-46d1-e3fa-8112-60180940c994','2a3aa91e-f13f-e8e2-a69b-6017ca8378df',80,'2021-02-01 14:02:35',0),('85a6227f-de06-aaed-cc3a-601810585134','145ce98a-0b57-3e66-8f20-60180fdba411','75e95896-bfb4-e7d1-8d5d-6017ca577257',75,'2021-02-01 14:29:35',0),('85ce7641-b909-d599-7cb5-60181085e6ed','bef307c8-d095-6341-6352-601810875b07','681d0116-7635-42ba-f3d6-6017caa34383',-99,'2021-02-01 14:31:59',0),('85d153ce-d327-f53a-afcf-60180f894973','52c526cb-9c4a-23b6-b39f-60180f9089b2','a8a24c95-1318-6fc6-2eba-6017ca621c60',80,'2021-02-01 14:26:44',0),('85e52836-e44c-7c1c-dc3a-6018094137aa','59940d2d-46d1-e3fa-8112-60180940c994','29d86b7d-ffe9-9bfb-4cf1-6017ca8db6c7',-99,'2021-02-01 14:02:35',0),('862e4c04-4407-f50b-aeb6-6018094bc7bc','59940d2d-46d1-e3fa-8112-60180940c994','26b29b11-218c-3567-bd34-6017ca3f73c5',80,'2021-02-01 14:02:35',0),('863852eb-8bd6-90f1-a0c9-6018110c9d90','a0b17db8-3562-2520-7a5b-60181003f945','4dc064a6-36e7-b8d6-1637-6017ca834a51',75,'2021-02-01 14:33:27',0),('86753beb-23c3-7876-33b5-60180985bdef','59940d2d-46d1-e3fa-8112-60180940c994','2a7d2e1b-9b3e-32b5-1e78-6017ca4fecff',-99,'2021-02-01 14:02:35',0),('86ab5183-90d0-9e52-a327-6018091bad56','59940d2d-46d1-e3fa-8112-60180940c994','260ea293-5703-f62a-d014-6017ca9ff06c',80,'2021-02-01 14:02:35',0),('86d00966-9157-6aaf-2956-60180f2bce0a','52c526cb-9c4a-23b6-b39f-60180f9089b2','abbf2bfc-ea68-ef97-1d5a-6017ca3f28ba',80,'2021-02-01 14:26:44',0),('86dfd675-26f4-ba8c-9ba7-601811fc1a0a','a0b17db8-3562-2520-7a5b-60181003f945','c74d759e-ca97-9c85-566b-6017ca9f5554',-98,'2021-02-01 14:33:27',0),('86e72522-1a87-5eda-0ef8-6018096c3430','59940d2d-46d1-e3fa-8112-60180940c994','33a4c648-6095-3a46-57e5-6017ca731b91',-98,'2021-02-01 14:02:35',0),('872a06a3-083f-8d52-69f6-601809fd500d','54779abd-cf10-d4b8-3946-601809414e38','73fdb388-e429-64d1-7485-6017cae6514d',90,'2021-02-01 14:00:42',0),('87350c18-7cfd-ba8a-68ce-60180f518c7a','52c526cb-9c4a-23b6-b39f-60180f9089b2','e7ed5142-9b57-558e-95a9-6017ca713940',80,'2021-02-01 14:26:44',0),('873adafc-b5b4-b4ca-33c7-60180f25a814','52c526cb-9c4a-23b6-b39f-60180f9089b2','aae46ef4-441b-7567-6a4b-6017ca26f182',-99,'2021-02-01 14:26:44',0),('873d2f44-1a7c-231f-3a0d-6018091c1cd2','59940d2d-46d1-e3fa-8112-60180940c994','377b9e0c-f502-7bb5-2c9f-6017ca706205',80,'2021-02-01 14:02:35',0),('874d68ab-d6ff-b1bb-7572-6018106c88af','145ce98a-0b57-3e66-8f20-60180fdba411','79640946-aee0-9f50-e62a-6017cae5892d',75,'2021-02-01 14:29:35',0),('876fc73c-2b7f-9096-f6ae-60181053e6e2','bef307c8-d095-6341-6352-601810875b07','1a7603b6-dc9c-b191-8b8b-6017ca397446',75,'2021-02-01 14:31:59',0),('8777fae2-c3d1-77c3-17b8-60180955e54f','59940d2d-46d1-e3fa-8112-60180940c994','3703cf8a-d539-ce5f-51fb-6017ca174652',80,'2021-02-01 14:02:35',0),('878e27b1-69f0-747f-6fb3-6018114c96f2','a0b17db8-3562-2520-7a5b-60181003f945','cab346aa-9975-17b1-bd41-6017ca561174',75,'2021-02-01 14:33:27',0),('87d88171-5865-3300-316e-60180f421930','52c526cb-9c4a-23b6-b39f-60180f9089b2','a703c7b1-bdc0-8848-c82e-6017ca3a4705',80,'2021-02-01 14:26:44',0),('87e11726-df83-021d-0f82-6018095a8384','59940d2d-46d1-e3fa-8112-60180940c994','38e0c84a-b6b1-e94f-4f77-6017ca4423ca',80,'2021-02-01 14:02:35',0),('87fd0186-0302-8cf7-d180-601810b8d4cd','bef307c8-d095-6341-6352-601810875b07','ac9cd086-502b-675f-923d-6017ca9ae10e',-99,'2021-02-01 14:31:59',0),('88175de6-3c00-50f4-4d9d-60180933d66b','59940d2d-46d1-e3fa-8112-60180940c994','3832cc25-90a4-9adb-6504-6017cad4d35a',-99,'2021-02-01 14:02:35',0),('8837a899-2211-e393-bd6f-601810eeae8f','145ce98a-0b57-3e66-8f20-60180fdba411','8d58526e-ae7c-89f1-c5ab-6017ca767f94',-99,'2021-02-01 14:29:35',0),('883b57de-63a4-c2e4-65f7-60181030bec4','145ce98a-0b57-3e66-8f20-60180fdba411','77ccb264-3890-c274-4e17-6017ca98c87e',-99,'2021-02-01 14:29:35',0),('88490fbd-5a7b-c9bf-88e4-60180a591c5a','920ed607-4a99-1bc8-930d-60180a7c44f1','d972e5ac-ed9b-9d26-c01a-6017cabd1654',-99,'2021-02-01 14:04:44',0),('884a2eb5-25f8-582e-ff67-60180f1df2f1','52c526cb-9c4a-23b6-b39f-60180f9089b2','ac9cd086-502b-675f-923d-6017ca9ae10e',-99,'2021-02-01 14:26:44',0),('8876c0fb-92ae-22f5-7e59-601809915d16','59940d2d-46d1-e3fa-8112-60180940c994','3634091f-8062-cdd4-5fa8-6017caf39c43',80,'2021-02-01 14:02:35',0),('888f13f6-7787-ba3d-b662-60180f4f7e03','52c526cb-9c4a-23b6-b39f-60180f9089b2','a5302dea-b8c6-d94c-ef60-6017ca19b99f',80,'2021-02-01 14:26:44',0),('88a8efdc-ce81-5a72-e52a-601810945fdf','145ce98a-0b57-3e66-8f20-60180fdba411','8aa714aa-4b3e-19ba-274e-6017ca4697ff',75,'2021-02-01 14:29:35',0),('88ae0507-5da7-e8a1-1b6b-601811f3aaaa','a0b17db8-3562-2520-7a5b-60181003f945','c9f5ba8f-acbd-9e14-381d-6017cabba8c0',75,'2021-02-01 14:33:27',0),('88c13294-3793-5057-9f57-601809e16b32','59940d2d-46d1-e3fa-8112-60180940c994','3955cfaa-5d78-ecdd-57ae-6017caf34833',-99,'2021-02-01 14:02:35',0),('88f36372-dfe4-923f-11ce-6018101cb8df','bef307c8-d095-6341-6352-601810875b07','d3a1d12f-623a-1bec-0810-6017cafc9125',-98,'2021-02-01 14:31:59',0),('8924512b-e1cd-b458-9b60-6018105d251a','bef307c8-d095-6341-6352-601810875b07','access',89,'2021-02-01 14:31:59',0),('89383557-8031-a5fd-4a7d-6018094c6383','59940d2d-46d1-e3fa-8112-60180940c994','34751d0d-8c15-50d3-5a8e-6017ca6c83cf',80,'2021-02-01 14:02:35',0),('89404396-4989-17b4-c636-601811e0d6fd','a0b17db8-3562-2520-7a5b-60181003f945','cc0d998d-d33d-2b7c-1413-6017ca1a425a',75,'2021-02-01 14:33:27',0),('894d4662-aa2a-88a3-0903-60180f547ac4','52c526cb-9c4a-23b6-b39f-60180f9089b2','d43bc43e-e2fe-955f-ef9d-6017ca02a76f',-98,'2021-02-01 14:26:44',0),('897303ba-5de6-5b46-00f1-6018092bd5b4','59940d2d-46d1-e3fa-8112-60180940c994','89cfd493-7685-52ca-1008-6017ca632e1b',-98,'2021-02-01 14:02:35',0),('89914b76-b7d4-6976-6f0f-6018101d371b','145ce98a-0b57-3e66-8f20-60180fdba411','906d69aa-1fca-7278-c57c-6017caee5833',-99,'2021-02-01 14:29:35',0),('89b27723-1f03-42b0-d4a2-601811765681','a0b17db8-3562-2520-7a5b-60181003f945','cb671498-76a3-0ff6-3b03-6017ca56cae8',-99,'2021-02-01 14:33:27',0),('89b2d26d-9f59-cc73-6029-601810ebe3c7','145ce98a-0b57-3e66-8f20-60180fdba411','73fdb388-e429-64d1-7485-6017cae6514d',75,'2021-02-01 14:29:35',0),('89bcc8c9-ca66-7b7d-0eaf-601810d1dd73','bef307c8-d095-6341-6352-601810875b07','d7a4a93f-f2b9-7acf-fd1a-6017ca338e09',75,'2021-02-01 14:31:59',0),('89d8fcce-15bd-941e-4266-60180918eeed','59940d2d-46d1-e3fa-8112-60180940c994','8d646238-0036-c2d0-6e93-6017ca17c0f5',80,'2021-02-01 14:02:35',0),('89e7106f-6bd8-e5f0-5190-60180f30c7fb','52c526cb-9c4a-23b6-b39f-60180f9089b2','d786a57c-50fa-3400-5b9b-6017cac510a9',80,'2021-02-01 14:26:44',0),('8a2b82b9-8f92-4d0d-6355-6018092000eb','59940d2d-46d1-e3fa-8112-60180940c994','8c917df1-c6ec-68b0-840f-6017cadaae13',80,'2021-02-01 14:02:35',0),('8a4fb3ed-7f60-3515-6d18-60180ff25368','52c526cb-9c4a-23b6-b39f-60180f9089b2','d6e4bfa4-cbed-cdd3-c897-6017ca052bde',80,'2021-02-01 14:26:44',0),('8a66f462-af20-c138-55e6-6018094ccc31','59940d2d-46d1-e3fa-8112-60180940c994','8e72cccd-d8bd-5bda-1129-6017ca1e0e4f',80,'2021-02-01 14:02:35',0),('8a887418-eba1-eeaf-b133-60181112df64','a0b17db8-3562-2520-7a5b-60181003f945','c8c2766e-917f-40ca-4d6d-6017caf3f0d5',75,'2021-02-01 14:33:27',0),('8a927467-2b95-bdbd-60e5-601810df6b39','145ce98a-0b57-3e66-8f20-60180fdba411','8911290d-27ae-4a1a-6dc7-6017cacc0f60',75,'2021-02-01 14:29:35',0),('8a949c02-2f73-7dd9-72ab-601809b1a888','59940d2d-46d1-e3fa-8112-60180940c994','8df6c126-ff00-31ab-53d7-6017ca17f4bb',-99,'2021-02-01 14:02:35',0),('8ad3219c-43f3-26a5-d5fd-60180f45bbc0','52c526cb-9c4a-23b6-b39f-60180f9089b2','d8ef97ea-8348-5f56-97ad-6017ca6a0460',80,'2021-02-01 14:26:44',0),('8aea00b1-c9db-17ee-a52e-601809cecccc','54779abd-cf10-d4b8-3946-601809414e38','7a44a0a8-2174-0769-fff0-6017caa1731c',90,'2021-02-01 14:00:42',0),('8afa0673-c836-4d61-7e27-601811ccf260','a0b17db8-3562-2520-7a5b-60181003f945','1a7603b6-dc9c-b191-8b8b-6017ca397446',75,'2021-02-01 14:33:27',0),('8b003693-d822-a170-18f8-6018097d6b8b','59940d2d-46d1-e3fa-8112-60180940c994','8c1ad7be-b834-8a3b-a447-6017ca75307a',80,'2021-02-01 14:02:35',0),('8b0104db-705f-cd8e-fae4-6018103079fc','bef307c8-d095-6341-6352-601810875b07','67041382-dd21-ba5f-c8b6-6017ca5a32b2',75,'2021-02-01 14:31:59',0),('8b27dd3a-911a-0395-7231-601810c6857e','145ce98a-0b57-3e66-8f20-60180fdba411','7a44a0a8-2174-0769-fff0-6017caa1731c',-99,'2021-02-01 14:29:35',0),('8b307afe-1ea4-6de2-3bd0-601810a69dd4','145ce98a-0b57-3e66-8f20-60180fdba411','38f99f5f-181a-9090-099b-6017ca1e67cb',-98,'2021-02-01 14:29:35',0),('8b4c0303-ba51-c189-47c6-60180a0b8cf5','920ed607-4a99-1bc8-930d-60180a7c44f1','d4ef4a17-0ff2-1c7d-f14a-6017ca54bfe6',80,'2021-02-01 14:04:44',0),('8b4c0ed6-29f2-c2a4-3f86-601809619f3c','59940d2d-46d1-e3fa-8112-60180940c994','8f2d5206-743b-ecd6-bbfd-6017ca3b700c',-99,'2021-02-01 14:02:35',0),('8b5a4bcd-b35e-599f-9b8e-6018107ae5b1','bef307c8-d095-6341-6352-601810875b07','d71fb77c-48a2-8f60-7e1b-6017ca5bccba',75,'2021-02-01 14:31:59',0),('8b6a594c-cfa2-3f70-4276-60181104cacc','a0b17db8-3562-2520-7a5b-60181003f945','cc7cc659-153f-71ed-f0d2-6017caa4c207',-99,'2021-02-01 14:33:27',0),('8b8f72a1-9e67-efd9-cb36-6018099347cc','59940d2d-46d1-e3fa-8112-60180940c994','8a520e16-b539-983c-b9bd-6017cab11234',80,'2021-02-01 14:02:35',0),('8bd0c423-437e-386e-0dbf-6018093a66a7','59940d2d-46d1-e3fa-8112-60180940c994','e1123a71-9f1e-4905-cf20-6017caacf73b',-98,'2021-02-01 14:02:35',0),('8c0d66b7-22ac-78b0-9308-6018102b3555','bef307c8-d095-6341-6352-601810875b07','delete',75,'2021-02-01 14:31:59',0),('8c0d8ddf-20ac-5c09-e4be-60181021c1bb','145ce98a-0b57-3e66-8f20-60180fdba411','733ed99a-4574-0176-f887-6017cabe49e9',75,'2021-02-01 14:29:35',0),('8c300726-f927-19d5-5459-601809d72df0','59940d2d-46d1-e3fa-8112-60180940c994','e336c29d-2d18-451f-7bbc-6017ca49e15c',80,'2021-02-01 14:02:35',0),('8c3977e7-d9dc-2469-560d-60180abcc237','920ed607-4a99-1bc8-930d-60180a7c44f1','access',89,'2021-02-01 14:04:44',0),('8c3cc5e7-b44e-edae-51e6-60180fe140d0','52c526cb-9c4a-23b6-b39f-60180f9089b2','d840ab23-5d37-8c15-7888-6017ca6d0b7c',-99,'2021-02-01 14:26:44',0),('8c5e3462-68d1-2300-f2d7-6018095563f1','59940d2d-46d1-e3fa-8112-60180940c994','e2da0686-74cf-c6c2-177d-6017ca10edf2',80,'2021-02-01 14:02:35',0),('8c8c263a-6842-273b-167e-6018110f1601','a0b17db8-3562-2520-7a5b-60181003f945','c840be03-804c-7707-c944-6017ca14f4b9',75,'2021-02-01 14:33:27',0),('8c8cb42d-41da-c4f8-8d96-6018092b5bfd','59940d2d-46d1-e3fa-8112-60180940c994','e5d46f78-d381-0c69-bf09-6017caaa5a9a',80,'2021-02-01 14:02:35',0),('8cbabaf6-8691-2f45-71b1-60181061446e','bef307c8-d095-6341-6352-601810875b07','edit',75,'2021-02-01 14:31:59',0),('8cd04840-1a68-91d7-c4dc-601809450644','59940d2d-46d1-e3fa-8112-60180940c994','e40e7e28-78b1-0bae-fa91-6017caee97f4',-99,'2021-02-01 14:02:35',0),('8cf12e44-5335-bdfa-bfa4-60180f641a54','52c526cb-9c4a-23b6-b39f-60180f9089b2','d620c5dd-c03f-9f13-31c7-6017ca213266',80,'2021-02-01 14:26:44',0),('8cf86c17-297a-430c-d4c4-60181040adee','bef307c8-d095-6341-6352-601810875b07','d9109e29-93c3-3b11-a26e-6017ca4c8c53',75,'2021-02-01 14:31:59',0),('8d1018d3-ea56-ee81-83c1-6018095a8b7f','59940d2d-46d1-e3fa-8112-60180940c994','e27db9aa-0c69-f8be-e7d4-6017ca4a1b9c',80,'2021-02-01 14:02:35',0),('8d2110d3-87d8-0ce2-6ce9-6018105b669b','145ce98a-0b57-3e66-8f20-60180fdba411','3cc306a6-c503-f389-366b-6017ca4e3ae0',75,'2021-02-01 14:29:35',0),('8d2ffcaf-7c21-b5e7-63d3-60181068f1f3','145ce98a-0b57-3e66-8f20-60180fdba411','ea5c0154-cef1-803b-0ba7-6017ca67a911',-98,'2021-02-01 14:29:35',0),('8d65ca7b-b4e7-468e-1a66-60180f8de5a1','52c526cb-9c4a-23b6-b39f-60180f9089b2','d98bf6b0-ff19-5726-0429-6017cad40d74',-99,'2021-02-01 14:26:44',0),('8d855703-e16e-7bed-9590-60180972dcaa','59940d2d-46d1-e3fa-8112-60180940c994','e6ed1604-861b-1b53-e18d-6017ca9f3220',-99,'2021-02-01 14:02:35',0),('8da42c9e-a2e2-fbe9-ed1d-6018102ec57f','bef307c8-d095-6341-6352-601810875b07','d881ab81-f5b9-7815-7501-6017caab079d',-99,'2021-02-01 14:31:59',0),('8da615e6-a289-8e5e-8abd-60180f1b0ada','52c526cb-9c4a-23b6-b39f-60180f9089b2','d4fcbe23-c827-2094-d420-6017ca831257',80,'2021-02-01 14:26:44',0),('8de56e15-eeef-090f-4ab3-60180915b425','59940d2d-46d1-e3fa-8112-60180940c994','e206debd-89f8-a796-b4da-6017ca4eff96',80,'2021-02-01 14:02:35',0),('8de8ada6-969a-7a10-3556-601811ede6e3','a0b17db8-3562-2520-7a5b-60181003f945','91ed6183-922d-c827-70cc-6017ca0f80a2',-98,'2021-02-01 14:33:27',0),('8dfcd4f6-f0b5-b94f-a3e1-6018108bf8ba','145ce98a-0b57-3e66-8f20-60180fdba411','3b42d0fb-c107-dcf4-16de-6017cac16fb4',75,'2021-02-01 14:29:35',0),('8e1b0cf4-4562-a62a-b529-60180f5f758a','52c526cb-9c4a-23b6-b39f-60180f9089b2','edf66900-4cc5-2778-b45b-6017ca4872c6',-99,'2021-02-01 14:26:44',0),('8e278d0c-d226-7e77-bd24-6018098628af','59940d2d-46d1-e3fa-8112-60180940c994','d3d750bd-c58c-c030-00d9-6017ca19f0ac',-98,'2021-02-01 14:02:35',0),('8e598987-727d-4c9e-69c7-60180986fb7e','59940d2d-46d1-e3fa-8112-60180940c994','da05b32a-31d0-ce97-2967-6017caed3d34',80,'2021-02-01 14:02:35',0),('8e603cd8-8e01-fb50-d9fa-6018102b7b76','bef307c8-d095-6341-6352-601810875b07','export',75,'2021-02-01 14:31:59',0),('8e613e8c-65ae-67f1-9787-6018104fcc53','145ce98a-0b57-3e66-8f20-60180fdba411','14b748ba-7445-1bed-a6bc-6017ca1ed7b4',75,'2021-02-01 14:29:35',0),('8e6800e4-5961-fb8c-abc4-601809ab5e11','54779abd-cf10-d4b8-3946-601809414e38','733ed99a-4574-0176-f887-6017cabe49e9',90,'2021-02-01 14:00:42',0),('8e9243ee-0cbc-bd41-8e83-60180fec2fd6','52c526cb-9c4a-23b6-b39f-60180f9089b2','7b93328d-ff92-fab7-088a-6017caafa77b',-98,'2021-02-01 14:26:44',0),('8e970f4a-945a-e44b-26f4-601809aaf9c6','59940d2d-46d1-e3fa-8112-60180940c994','d6db73f5-8776-66f9-6c1d-6017caeb8262',80,'2021-02-01 14:02:35',0),('8ea00e5b-47ec-4aee-258e-6018103d3e11','bef307c8-d095-6341-6352-601810875b07','a5302dea-b8c6-d94c-ef60-6017ca19b99f',75,'2021-02-01 14:31:59',0),('8ec3d998-d522-bee8-0018-6018103e51ca','145ce98a-0b57-3e66-8f20-60180fdba411','3f4cef04-3d0e-4ab5-e4e0-6017cab3974e',75,'2021-02-01 14:29:35',0),('8edd34f3-71b9-9954-d7b5-6018091ed4d4','59940d2d-46d1-e3fa-8112-60180940c994','daddf798-fbca-a01d-92af-6017ca71624e',80,'2021-02-01 14:02:35',0),('8ee8a550-1bb8-2765-2fed-601811f8a55f','a0b17db8-3562-2520-7a5b-60181003f945','9634bb2c-d95f-d6c4-301c-6017ca77e3e4',75,'2021-02-01 14:33:27',0),('8efe4240-daaa-a56e-012c-60180986a9b9','59940d2d-46d1-e3fa-8112-60180940c994','da54274e-8c18-2757-f4a0-6017caf8249a',-99,'2021-02-01 14:02:35',0),('8f24d5f8-1818-5e6e-9eed-60180a5e6202','920ed607-4a99-1bc8-930d-60180a7c44f1','delete',80,'2021-02-01 14:04:44',0),('8f273f21-a3a9-bb4d-767a-60180f18e8fc','52c526cb-9c4a-23b6-b39f-60180f9089b2','80721d39-a468-f6ac-c5a0-6017cadaaa11',80,'2021-02-01 14:26:44',0),('8f428080-e84e-7605-40af-60180a637144','920ed607-4a99-1bc8-930d-60180a7c44f1','edit',80,'2021-02-01 14:04:44',0),('8f5b04dc-5c17-c505-9161-6018092c41b9','59940d2d-46d1-e3fa-8112-60180940c994','d60ff063-6f4a-4ed7-4dae-6017ca3f6b87',80,'2021-02-01 14:02:35',0),('8f813df8-930f-c510-c650-6018102a37b4','bef307c8-d095-6341-6352-601810875b07','d67affcf-e393-960c-30dc-6017cadbbb20',75,'2021-02-01 14:31:59',0),('8f820e76-091a-8a4d-642f-60180a0a3ab9','920ed607-4a99-1bc8-930d-60180a7c44f1','b5c62ffc-a30c-fba7-206c-6017ca00a390',-98,'2021-02-01 14:04:44',0),('8f989f8c-93a1-4042-34a3-601809cfa782','59940d2d-46d1-e3fa-8112-60180940c994','db361441-01f3-a76b-d5f3-6017cafe119c',-99,'2021-02-01 14:02:35',0),('8fa240e9-df44-b8a4-a171-6018102a0be3','bef307c8-d095-6341-6352-601810875b07','import',-99,'2021-02-01 14:31:59',0),('8fb4ad9f-5b4d-680d-bd52-60180a64cec4','920ed607-4a99-1bc8-930d-60180a7c44f1','export',80,'2021-02-01 14:04:44',0),('8fc0e4cf-f6bb-93a2-b6d5-60180fcbd7d1','52c526cb-9c4a-23b6-b39f-60180f9089b2','7f62c1e4-1794-9774-0835-6017ca110404',80,'2021-02-01 14:26:44',0),('8fdf9289-cfd8-a777-672f-601809da685b','59940d2d-46d1-e3fa-8112-60180940c994','d57a9815-b8fa-f92d-8740-6017ca2996b4',80,'2021-02-01 14:02:35',0),('90049c5e-41bf-dee5-d751-60180a5e6298','920ed607-4a99-1bc8-930d-60180a7c44f1','import',-99,'2021-02-01 14:04:44',0),('9026b6de-617d-c6b0-455e-60180955ff85','59940d2d-46d1-e3fa-8112-60180940c994','e5eb98c6-09e5-65bc-7b07-6017caf35be0',-98,'2021-02-01 14:02:35',0),('902fa892-d8e9-e52b-db4a-601810e80218','145ce98a-0b57-3e66-8f20-60180fdba411','3d7be9aa-7dc1-6080-e224-6017cadbda7e',-99,'2021-02-01 14:29:35',0),('9034214b-97bf-7fcb-f61d-60180acf4fa5','920ed607-4a99-1bc8-930d-60180a7c44f1','list',80,'2021-02-01 14:04:44',0),('903adfe6-12e7-82df-2752-60180f55aa29','52c526cb-9c4a-23b6-b39f-60180f9089b2','81b7dc49-a8cd-d6de-bbc9-6017cac215e8',80,'2021-02-01 14:26:44',0),('9044d1fc-be92-a751-0eae-6018106d7038','145ce98a-0b57-3e66-8f20-60180fdba411','12a05087-ac9b-b480-ef56-6017ca5bb531',75,'2021-02-01 14:29:35',0),('9055f64b-5412-11f8-7e61-601809233fba','59940d2d-46d1-e3fa-8112-60180940c994','ea20640d-5cb5-0ec5-e35a-6017ca8a8a15',80,'2021-02-01 14:02:35',0),('906f8270-27d8-2e54-010e-60181044f6c1','bef307c8-d095-6341-6352-601810875b07','list',75,'2021-02-01 14:31:59',0),('907e3301-ce03-34be-eb7d-60180fe1a615','52c526cb-9c4a-23b6-b39f-60180f9089b2','81318593-4681-4d8a-4fc0-6017cadfb23f',-99,'2021-02-01 14:26:44',0),('90a06e28-4ff4-89ab-deaa-6018090c6a88','59940d2d-46d1-e3fa-8112-60180940c994','e91c140d-d1a4-7a42-2181-6017cad6448e',80,'2021-02-01 14:02:35',0),('90a7dcf1-2b5a-5a0e-d88f-60180a2ef024','920ed607-4a99-1bc8-930d-60180a7c44f1','massupdate',-99,'2021-02-01 14:04:44',0),('90a841d4-cada-a7ba-83c5-601811a9a79f','a0b17db8-3562-2520-7a5b-60181003f945','947ad549-f887-3d63-b7a7-6017cad7458e',75,'2021-02-01 14:33:27',0),('90c038d3-3063-6a5a-0b34-60181040e52e','bef307c8-d095-6341-6352-601810875b07','d972e5ac-ed9b-9d26-c01a-6017cabd1654',-99,'2021-02-01 14:31:59',0),('90d1d5ae-6e01-be97-f01f-60180ad0549e','920ed607-4a99-1bc8-930d-60180a7c44f1','view',80,'2021-02-01 14:04:44',0),('90e76cbe-20fb-e896-35bd-601809aab71a','59940d2d-46d1-e3fa-8112-60180940c994','ece932f0-236d-af78-5fc3-6017ca39f7be',80,'2021-02-01 14:02:35',0),('90e982ce-65a8-1b9d-5024-60180aeaad26','920ed607-4a99-1bc8-930d-60180a7c44f1','6262a90b-c574-2f29-e5cf-6017cad9de97',-98,'2021-02-01 14:04:44',0),('90ee0b40-f167-0b39-4908-60180f924589','52c526cb-9c4a-23b6-b39f-60180f9089b2','6ea461d8-ddf8-92b2-3408-6017ca96a386',80,'2021-02-01 14:26:44',0),('90fb69de-5dbf-f939-ebb5-601810cbc773','145ce98a-0b57-3e66-8f20-60180fdba411','3aba1255-f1e3-6773-82a2-6017ca6f698a',75,'2021-02-01 14:29:35',0),('910d4867-feef-caca-7f5f-601809255087','59940d2d-46d1-e3fa-8112-60180940c994','eae8eb86-ed25-499c-d9d5-6017ca5c45da',-99,'2021-02-01 14:02:35',0),('911b5e61-eeda-de3a-5044-601810bf14c0','145ce98a-0b57-3e66-8f20-60180fdba411','1844b369-3730-ed93-c1df-6017cad6ef13',75,'2021-02-01 14:29:35',0),('91319bb8-80ad-9f37-99c6-6018104920cd','bef307c8-d095-6341-6352-601810875b07','massupdate',-99,'2021-02-01 14:31:59',0),('915b5385-a35a-3f2b-e433-601809cb9e43','59940d2d-46d1-e3fa-8112-60180940c994','e7ed5142-9b57-558e-95a9-6017ca713940',80,'2021-02-01 14:02:35',0),('9171c5aa-1146-228c-425c-60181022d86e','bef307c8-d095-6341-6352-601810875b07','d4ef4a17-0ff2-1c7d-f14a-6017ca54bfe6',75,'2021-02-01 14:31:59',0),('91828836-b126-79c0-4583-601809a1985a','59940d2d-46d1-e3fa-8112-60180940c994','edf66900-4cc5-2778-b45b-6017ca4872c6',-99,'2021-02-01 14:02:35',0),('9188ad81-61b7-d589-b8c3-60181009ac8c','145ce98a-0b57-3e66-8f20-60180fdba411','3ffd6654-cef8-3289-d225-6017ca354fd4',-99,'2021-02-01 14:29:35',0),('918ec505-f256-5303-6aa8-60180a5bd349','920ed607-4a99-1bc8-930d-60180a7c44f1','68185be1-b5ae-df0a-881c-6017cadf4a78',80,'2021-02-01 14:04:44',0),('919723d9-f61e-968b-1684-6018118fa4d9','a0b17db8-3562-2520-7a5b-60181003f945','9876e9d1-2bff-c6c5-6d01-6017cade8e1f',75,'2021-02-01 14:33:27',0),('91c08862-f17a-ad6d-1694-60180ad02c89','920ed607-4a99-1bc8-930d-60180a7c44f1','670e9cab-5dbc-df3f-a7e8-6017cadfb6a6',80,'2021-02-01 14:04:44',0),('91c0aa72-f6ef-a27e-e7ad-60180f00163e','52c526cb-9c4a-23b6-b39f-60180f9089b2','7de3d8da-5c08-1db7-4a75-6017ca329c45',80,'2021-02-01 14:26:44',0),('91ead98b-31d1-5824-22a1-60180a2bb8eb','920ed607-4a99-1bc8-930d-60180a7c44f1','6ab0bcfc-498f-dc3a-7f9f-6017ca790539',80,'2021-02-01 14:04:44',0),('920271d9-2d57-0b32-1ddc-60180a59073c','920ed607-4a99-1bc8-930d-60180a7c44f1','69c005e8-106e-4829-b29d-6017caf33603',-99,'2021-02-01 14:04:44',0),('921979a0-e097-7be1-3e03-60180af92fc1','920ed607-4a99-1bc8-930d-60180a7c44f1','65acc685-f152-4714-6efa-6017ca8ae41a',80,'2021-02-01 14:04:44',0),('921d9098-59fe-4eee-1ea8-6018107772b9','bef307c8-d095-6341-6352-601810875b07','view',75,'2021-02-01 14:31:59',0),('9233c642-b94c-f81f-78a9-60180a32a21b','920ed607-4a99-1bc8-930d-60180a7c44f1','6bd15dbd-714c-3312-e455-6017ca15365e',-99,'2021-02-01 14:04:44',0),('924186bc-77fb-d8c4-da86-601809e25bda','59940d2d-46d1-e3fa-8112-60180940c994','e6b81b67-beb5-38c3-5233-6017ca74980e',80,'2021-02-01 14:02:35',0),('9245de84-6d61-2a21-a371-60181028ff0b','bef307c8-d095-6341-6352-601810875b07','b5c62ffc-a30c-fba7-206c-6017ca00a390',-98,'2021-02-01 14:31:59',0),('92462694-94d8-143c-0eb0-60180faf00db','52c526cb-9c4a-23b6-b39f-60180f9089b2','82ed8e62-4294-f0ca-6399-6017ca0cf556',-99,'2021-02-01 14:26:44',0),('92536bc8-9bbc-163e-a03f-60180a34ea5c','920ed607-4a99-1bc8-930d-60180a7c44f1','64f66bf7-14b8-4b4d-be96-6017caacdcec',80,'2021-02-01 14:04:44',0),('9262b3ad-be75-c2e7-43df-601810e71bb8','145ce98a-0b57-3e66-8f20-60180fdba411','39c652a6-3413-596a-1ba7-6017cad4d33c',75,'2021-02-01 14:29:35',0),('9266680b-e0a0-3c67-dc6b-6018101c9155','145ce98a-0b57-3e66-8f20-60180fdba411','16b7009a-4890-65d1-3f8f-6017ca6c7043',-99,'2021-02-01 14:29:35',0),('9272bfff-431e-5941-d96f-60180af99d18','920ed607-4a99-1bc8-930d-60180a7c44f1','f5630cd8-fe01-80b0-773c-6017ca41717a',-98,'2021-02-01 14:04:44',0),('92997064-5fff-bbdc-a5cd-601809f3cbea','59940d2d-46d1-e3fa-8112-60180940c994','87539216-07b6-7711-9aa8-6017ca0d4d82',-98,'2021-02-01 14:02:35',0),('929fef4a-4172-f1c7-5555-60180a8b78c9','920ed607-4a99-1bc8-930d-60180a7c44f1','13d9d342-dc20-4e5b-4f4f-6017ca0bd170',80,'2021-02-01 14:04:44',0),('92b09305-3bb3-bb66-4c8a-601811e00dc4','a0b17db8-3562-2520-7a5b-60181003f945','97b2709d-df39-baf3-964d-6017ca844416',-99,'2021-02-01 14:33:27',0),('92be07b2-6d62-672a-72bb-60180a21142f','920ed607-4a99-1bc8-930d-60180a7c44f1','130f4e97-de89-d0df-fdf4-6017cafd79fb',80,'2021-02-01 14:04:44',0),('92cdc1e2-b58d-262d-0d7e-6018094c1f3e','59940d2d-46d1-e3fa-8112-60180940c994','8c9ce024-16d3-ce97-f6f1-6017cafec8a2',80,'2021-02-01 14:02:35',0),('92d7ff7d-7f41-a52a-fa51-60180aa2ff71','920ed607-4a99-1bc8-930d-60180a7c44f1','15d35546-78f9-f848-591f-6017cacb9c85',80,'2021-02-01 14:04:44',0),('92e80371-bce4-ea3b-ad7b-6018112230e9','a0b17db8-3562-2520-7a5b-60181003f945','d3a1d12f-623a-1bec-0810-6017cafc9125',-98,'2021-02-01 14:33:27',0),('92fb852e-f099-21f5-ac72-6018094150e9','59940d2d-46d1-e3fa-8112-60180940c994','8ba34aa2-a2dd-fb51-3753-6017cad94619',80,'2021-02-01 14:02:35',0),('9301b7f9-c900-ec20-9ea3-60180f585f2a','52c526cb-9c4a-23b6-b39f-60180f9089b2','7c284102-15d0-c329-fc54-6017ca9ed58f',80,'2021-02-01 14:26:44',0),('931159f5-0c2e-103d-d164-601810b7f253','bef307c8-d095-6341-6352-601810875b07','b9446e01-b190-5369-dac0-6017ca90247e',75,'2021-02-01 14:31:59',0),('9313f016-bd6c-e451-b9d6-601810fcd675','bef307c8-d095-6341-6352-601810875b07','6262a90b-c574-2f29-e5cf-6017cad9de97',-98,'2021-02-01 14:31:59',0),('9313f797-ba0d-cefa-b13a-601810bf2346','145ce98a-0b57-3e66-8f20-60180fdba411','d29bdfb0-fe1c-8857-e905-6017caea5473',-98,'2021-02-01 14:29:35',0),('932b2f71-ef3c-37a2-021a-601810114a30','145ce98a-0b57-3e66-8f20-60180fdba411','1210b8d7-8527-cfab-15ab-6017ca872b87',75,'2021-02-01 14:29:35',0),('9331079b-6474-244a-1cc3-601810e7ab5e','145ce98a-0b57-3e66-8f20-60180fdba411','cb26adac-ed61-d3a3-7c6e-6017ca433812',-98,'2021-02-01 14:29:35',0),('934e8d30-f55f-9ee4-bb2e-60180981c4b8','59940d2d-46d1-e3fa-8112-60180940c994','8f62e502-a51a-1dbf-4c0e-6017cabe0b1a',80,'2021-02-01 14:02:35',0),('937618d5-0cbd-85f4-129a-60180940e958','59940d2d-46d1-e3fa-8112-60180940c994','8d58526e-ae7c-89f1-c5ab-6017ca767f94',-99,'2021-02-01 14:02:35',0),('938d5742-c0da-bc94-2eda-60180a1a6842','920ed607-4a99-1bc8-930d-60180a7c44f1','14686825-9929-903e-465a-6017caa80eac',-99,'2021-02-01 14:04:44',0),('93909518-f57d-552c-e6b3-60180f5a3de7','52c526cb-9c4a-23b6-b39f-60180f9089b2','8a0bec92-fd8e-4b45-cf5c-6017ca24ca89',-98,'2021-02-01 14:26:44',0),('93a538ae-9730-0503-c96f-601810e3ef3e','145ce98a-0b57-3e66-8f20-60180fdba411','d73cd5f5-e1d8-5170-7d78-6017cabb0ed2',75,'2021-02-01 14:29:35',0),('93b7a41f-9516-5247-a3b3-6018097b0ce9','59940d2d-46d1-e3fa-8112-60180940c994','8aa714aa-4b3e-19ba-274e-6017ca4697ff',80,'2021-02-01 14:02:35',0),('93cb31c2-ca08-c1a3-b1d7-60180a11f7ef','920ed607-4a99-1bc8-930d-60180a7c44f1','1252b2b2-1881-0a07-1b70-6017ca20b166',80,'2021-02-01 14:04:44',0),('93d03e4a-44ba-fe1a-7e9b-601810e71e3c','bef307c8-d095-6341-6352-601810875b07','68185be1-b5ae-df0a-881c-6017cadf4a78',75,'2021-02-01 14:31:59',0),('942425e8-11e4-a64d-de9f-60180f21f7f2','52c526cb-9c4a-23b6-b39f-60180f9089b2','8e8d16ca-188e-5eb5-00d6-6017caa388ea',80,'2021-02-01 14:26:44',0),('944af250-5b24-c4f8-9a5b-60181018d6ed','bef307c8-d095-6341-6352-601810875b07','b8979993-d9e2-3c23-2378-6017ca043ead',75,'2021-02-01 14:31:59',0),('944cd003-16eb-2c10-7192-6018112c4b20','a0b17db8-3562-2520-7a5b-60181003f945','93d8cd13-cf78-d508-6128-6017ca32e37c',75,'2021-02-01 14:33:27',0),('944ff0d8-3a33-45b3-0e51-601809244ff4','59940d2d-46d1-e3fa-8112-60180940c994','906d69aa-1fca-7278-c57c-6017caee5833',-99,'2021-02-01 14:02:35',0),('948b7a6b-a3a4-3b11-6829-6018104351bc','145ce98a-0b57-3e66-8f20-60180fdba411','d696d729-adb1-4fec-3046-6017caa1340f',75,'2021-02-01 14:29:35',0),('94b9124c-c812-5bc3-862d-60180fa78012','52c526cb-9c4a-23b6-b39f-60180f9089b2','8dbe583f-f32d-fe7e-36ab-6017ca55dcb4',80,'2021-02-01 14:26:44',0),('94d81632-04c9-7a31-e568-60180abe3af3','920ed607-4a99-1bc8-930d-60180a7c44f1','16a5a0f5-58f6-3eb2-3f5a-6017ca28282b',-99,'2021-02-01 14:04:44',0),('94dde43a-e157-a2db-a67c-60180968d67d','59940d2d-46d1-e3fa-8112-60180940c994','8911290d-27ae-4a1a-6dc7-6017cacc0f60',80,'2021-02-01 14:02:35',0),('94e69c0b-8a61-5713-b7fa-601810c8b63f','bef307c8-d095-6341-6352-601810875b07','670e9cab-5dbc-df3f-a7e8-6017cadfb6a6',75,'2021-02-01 14:31:59',0),('94fa9c80-af82-09af-cfa9-601810146ff0','145ce98a-0b57-3e66-8f20-60180fdba411','193e9c15-b4d4-c673-1b4b-6017ca498afe',-99,'2021-02-01 14:29:35',0),('9515e939-12fb-f1f6-000f-60181174a64a','a0b17db8-3562-2520-7a5b-60181003f945','997bc36e-3b1a-b7f4-8f68-6017caa01d84',-99,'2021-02-01 14:33:27',0),('9518e33b-e06d-df5a-1cf7-60180adf1253','920ed607-4a99-1bc8-930d-60180a7c44f1','119735a8-6264-4508-281d-6017ca5602c9',80,'2021-02-01 14:04:44',0),('95235899-1d93-25cb-1b93-601810768e43','bef307c8-d095-6341-6352-601810875b07','ba77c542-9e5d-7ae6-e3f9-6017caa020b9',75,'2021-02-01 14:31:59',0),('953bbc98-17d3-0490-787a-601809d286c8','59940d2d-46d1-e3fa-8112-60180940c994','38f99f5f-181a-9090-099b-6017ca1e67cb',-98,'2021-02-01 14:02:35',0),('953e0dc9-63d6-0a1f-aaa5-60180a5393b8','920ed607-4a99-1bc8-930d-60180a7c44f1','a1dba88a-f04c-1a8a-a892-6017ca6b9c0e',-98,'2021-02-01 14:04:44',0),('956318ac-11c8-1c4a-f389-6018090c7ae7','59940d2d-46d1-e3fa-8112-60180940c994','3cc306a6-c503-f389-366b-6017ca4e3ae0',80,'2021-02-01 14:02:35',0),('9569ec82-51ba-fbe1-92f1-601810144de8','bef307c8-d095-6341-6352-601810875b07','6ab0bcfc-498f-dc3a-7f9f-6017ca790539',75,'2021-02-01 14:31:59',0),('956ab44a-8e66-3659-63bd-6018105b94d4','145ce98a-0b57-3e66-8f20-60180fdba411','d98b8285-6c4f-9047-3246-6017caf67d11',75,'2021-02-01 14:29:35',0),('95979969-4278-9904-55e8-601809ac9f07','59940d2d-46d1-e3fa-8112-60180940c994','3b42d0fb-c107-dcf4-16de-6017cac16fb4',80,'2021-02-01 14:02:35',0),('95ae842a-bd7a-249c-fb63-60180f35282f','52c526cb-9c4a-23b6-b39f-60180f9089b2','91b62206-bc91-ce7c-4c8f-6017ca594770',80,'2021-02-01 14:26:44',0),('95be946d-a4e4-09cb-cbad-60180a5b164a','920ed607-4a99-1bc8-930d-60180a7c44f1','a5c83c1f-45dc-c601-2782-6017cabac48b',80,'2021-02-01 14:04:44',0),('95c50280-aa64-d55b-3032-601809e50884','59940d2d-46d1-e3fa-8112-60180940c994','3f4cef04-3d0e-4ab5-e4e0-6017cab3974e',80,'2021-02-01 14:02:35',0),('95d207ee-2cf4-be8c-300f-60180f0d514f','52c526cb-9c4a-23b6-b39f-60180f9089b2','e6b81b67-beb5-38c3-5233-6017ca74980e',80,'2021-02-01 14:26:44',0),('95eea979-2a32-fdc6-528f-60180a321d0c','920ed607-4a99-1bc8-930d-60180a7c44f1','a51ed5ca-e6ea-6120-f675-6017ca40973a',80,'2021-02-01 14:04:44',0),('9606faa3-2953-3b39-40de-601809382ea8','59940d2d-46d1-e3fa-8112-60180940c994','3d7be9aa-7dc1-6080-e224-6017cadbda7e',-99,'2021-02-01 14:02:35',0),('96138268-8b06-e2cb-b993-601810184760','145ce98a-0b57-3e66-8f20-60180fdba411','1153fb10-28fd-a556-8e38-6017ca79a353',75,'2021-02-01 14:29:35',0),('961a2f20-4481-dd75-85d2-60180a961553','920ed607-4a99-1bc8-930d-60180a7c44f1','a6dc7487-4f78-319e-eb0d-6017cae454e9',80,'2021-02-01 14:04:44',0),('961ada60-436e-49f3-51b8-60180f8e2e7f','52c526cb-9c4a-23b6-b39f-60180f9089b2','9023fcd5-063f-1f28-bab7-6017caf948ae',-99,'2021-02-01 14:26:44',0),('962a9ce8-ec4f-d222-bea7-60181044db16','bef307c8-d095-6341-6352-601810875b07','69c005e8-106e-4829-b29d-6017caf33603',-99,'2021-02-01 14:31:59',0),('96310a32-2710-7fa0-e1f6-60181053b23b','bef307c8-d095-6341-6352-601810875b07','65ec59d2-6ab2-6a0d-f80b-6017ca4e02aa',-99,'2021-02-01 14:31:59',0),('96386ecf-8a7d-68d9-14fc-601810a1a27e','145ce98a-0b57-3e66-8f20-60180fdba411','d7ba2bb6-7b6d-76c1-1c42-6017ca823bcd',-99,'2021-02-01 14:29:35',0),('9657fcf8-4e06-816e-f9ce-601809807854','59940d2d-46d1-e3fa-8112-60180940c994','3aba1255-f1e3-6773-82a2-6017ca6f698a',80,'2021-02-01 14:02:35',0),('965e8eb8-78cb-5388-6b8a-6018110b2acb','a0b17db8-3562-2520-7a5b-60181003f945','92b903d6-cb45-ba2b-3c16-6017caf5e9e9',75,'2021-02-01 14:33:27',0),('9681d1db-1db5-232e-2d86-601809bbe4b8','59940d2d-46d1-e3fa-8112-60180940c994','3ffd6654-cef8-3289-d225-6017ca354fd4',-99,'2021-02-01 14:02:35',0),('96b1c408-2676-d7b5-7a81-60181069c679','bef307c8-d095-6341-6352-601810875b07','b9e54d8b-7ade-bc5b-658e-6017ca43b993',-99,'2021-02-01 14:31:59',0),('96bd9b48-0a64-4ac2-bc80-60180ff6a866','52c526cb-9c4a-23b6-b39f-60180f9089b2','8c53c744-e17b-6c7c-0ebc-6017cad02aed',80,'2021-02-01 14:26:44',0),('96d12177-121a-ebcf-3a74-6018096bb4a7','59940d2d-46d1-e3fa-8112-60180940c994','39c652a6-3413-596a-1ba7-6017cad4d33c',80,'2021-02-01 14:02:35',0),('96e72ec7-2cc8-b629-6308-60181116525a','a0b17db8-3562-2520-7a5b-60181003f945','a49603d3-7f15-abda-b0d5-6017ca7fcdde',-98,'2021-02-01 14:33:27',0),('96edd774-1990-0f9d-2862-601810a2215a','145ce98a-0b57-3e66-8f20-60180fdba411','d57cbe4e-28dc-3341-3148-6017ca4ae022',75,'2021-02-01 14:29:35',0),('96f25325-c754-4efe-82f9-601810f28809','145ce98a-0b57-3e66-8f20-60180fdba411','4b5df074-2224-15a5-770a-6017ca31e0d2',-98,'2021-02-01 14:29:35',0),('96fa11e0-5fd9-9ef9-ad64-60180ab416f8','920ed607-4a99-1bc8-930d-60180a7c44f1','a66f362b-768c-db39-3986-6017ca23936b',-99,'2021-02-01 14:04:44',0),('9728043d-0cbb-7e48-13bb-60180a1fa1c8','920ed607-4a99-1bc8-930d-60180a7c44f1','b9446e01-b190-5369-dac0-6017ca90247e',80,'2021-02-01 14:04:44',0),('972e3952-ea2a-82be-af64-60180969187f','59940d2d-46d1-e3fa-8112-60180940c994','d29bdfb0-fe1c-8857-e905-6017caea5473',-98,'2021-02-01 14:02:35',0),('9740a4cb-5faa-b3f4-ca5b-601810403e59','bef307c8-d095-6341-6352-601810875b07','b742e7ee-1eaa-6de2-be09-6017ca43a204',75,'2021-02-01 14:31:59',0),('975e6747-53e1-d9c1-6372-60181093b750','bef307c8-d095-6341-6352-601810875b07','65acc685-f152-4714-6efa-6017ca8ae41a',75,'2021-02-01 14:31:59',0),('976c8f96-0b61-3ed8-fedf-6018106d59d4','145ce98a-0b57-3e66-8f20-60180fdba411','da4e44f2-19f9-33ea-a79f-6017caf3bb39',-99,'2021-02-01 14:29:35',0),('97922683-4ed6-ad55-9fb5-601809d97129','59940d2d-46d1-e3fa-8112-60180940c994','d73cd5f5-e1d8-5170-7d78-6017cabb0ed2',80,'2021-02-01 14:02:35',0),('97932101-965a-71b5-3b64-60180aa9ce0b','920ed607-4a99-1bc8-930d-60180a7c44f1','a43c437c-1608-81a0-4112-6017cac827a4',80,'2021-02-01 14:04:44',0),('97b912aa-df6c-cd03-f4dc-601810b4bdde','145ce98a-0b57-3e66-8f20-60180fdba411','506f61c9-49cf-d0e3-5448-6017ca7e282c',75,'2021-02-01 14:29:35',0),('97c1ca37-31b1-f2a3-0c97-6018090b43b5','59940d2d-46d1-e3fa-8112-60180940c994','d696d729-adb1-4fec-3046-6017caa1340f',80,'2021-02-01 14:02:35',0),('97da2fec-73c0-d30d-602c-601810932d1b','bef307c8-d095-6341-6352-601810875b07','6bd15dbd-714c-3312-e455-6017ca15365e',-99,'2021-02-01 14:31:59',0),('97e7f26a-03dd-f3a6-ef69-60180fd14b7a','52c526cb-9c4a-23b6-b39f-60180f9089b2','927431e0-c275-5a96-5d0b-6017cabe20e7',-99,'2021-02-01 14:26:44',0),('98200b4b-ccf4-5d4e-61c1-6018093d2d99','59940d2d-46d1-e3fa-8112-60180940c994','d98b8285-6c4f-9047-3246-6017caf67d11',80,'2021-02-01 14:02:35',0),('982158b6-b55f-51e2-b5b4-60181143aa1e','a0b17db8-3562-2520-7a5b-60181003f945','a96a916f-2bdc-49ea-aa25-6017cac6a313',75,'2021-02-01 14:33:27',0),('98230a0f-82ba-cd98-d474-601809bd10bb','54779abd-cf10-d4b8-3946-601809414e38','ea5c0154-cef1-803b-0ba7-6017ca67a911',89,'2021-02-01 14:00:42',0),('9834762c-1498-dff0-754c-60180abd54ea','920ed607-4a99-1bc8-930d-60180a7c44f1','a79a0deb-3f53-b8d5-9317-6017ca50aa02',-99,'2021-02-01 14:04:44',0),('9844b51e-8332-d853-4a65-6018107ecde2','145ce98a-0b57-3e66-8f20-60180fdba411','d3d342d1-256b-ae27-5355-6017ca3b20ae',75,'2021-02-01 14:29:35',0),('985523a9-c69e-198a-3e64-6018109b26b1','bef307c8-d095-6341-6352-601810875b07','64f66bf7-14b8-4b4d-be96-6017caacdcec',75,'2021-02-01 14:31:59',0),('9881f08a-2c0c-879d-1a5c-60180a116233','920ed607-4a99-1bc8-930d-60180a7c44f1','a2b066ca-8bc3-455f-49e3-6017caf5a616',80,'2021-02-01 14:04:44',0),('98881cd4-982c-bbd2-2b42-60181068805a','bef307c8-d095-6341-6352-601810875b07','baed9da3-990f-9c19-73a4-6017ca3443a1',-99,'2021-02-01 14:31:59',0),('989497f6-85ac-1349-edde-60180fbc079d','52c526cb-9c4a-23b6-b39f-60180f9089b2','8b8e0a99-3ec4-6d2b-4222-6017caf19b1e',80,'2021-02-01 14:26:44',0),('98984a0c-e69c-afb1-dc0e-6018115b526c','a0b17db8-3562-2520-7a5b-60181003f945','a8a24c95-1318-6fc6-2eba-6017ca621c60',75,'2021-02-01 14:33:27',0),('98a7f9ad-f348-c7b3-59c5-6018107fec72','145ce98a-0b57-3e66-8f20-60180fdba411','4fa20f82-4605-a031-949b-6017ca9c9830',75,'2021-02-01 14:29:35',0),('98c481a4-0d24-fbe7-967a-60180a86b890','920ed607-4a99-1bc8-930d-60180a7c44f1','60810b5c-c79a-b6ef-ace1-6017ca93af34',89,'2021-02-01 14:04:44',0),('98d26fa3-2a60-3fe2-7569-60181085ab4b','bef307c8-d095-6341-6352-601810875b07','f5630cd8-fe01-80b0-773c-6017ca41717a',-98,'2021-02-01 14:31:59',0),('98e2d132-64a7-95c2-9ce3-6018106db3b7','145ce98a-0b57-3e66-8f20-60180fdba411','546743cc-6fc6-624c-2dec-6017ca948cf7',89,'2021-02-01 14:29:35',0),('98fa4f25-72d7-b923-f428-60180faefcf6','52c526cb-9c4a-23b6-b39f-60180f9089b2','1bf7977f-5bc1-935c-5f55-6017ca47912c',-98,'2021-02-01 14:26:44',0),('991f9731-bcbe-9546-2c88-601809996603','59940d2d-46d1-e3fa-8112-60180940c994','d7ba2bb6-7b6d-76c1-1c42-6017ca823bcd',-99,'2021-02-01 14:02:35',0),('993b441b-a3ab-c602-1f62-601810b8d28a','145ce98a-0b57-3e66-8f20-60180fdba411','597eaaa5-85c4-a5dd-05a5-6017cac9ea90',75,'2021-02-01 14:29:35',0),('99544df7-8f4f-e0bd-c496-6018110cdf9e','a0b17db8-3562-2520-7a5b-60181003f945','abbf2bfc-ea68-ef97-1d5a-6017ca3f28ba',75,'2021-02-01 14:33:27',0),('996f32f1-22fd-0d43-1322-6018103da5cf','bef307c8-d095-6341-6352-601810875b07','b6911c5b-48f3-c461-d700-6017ca6f7761',75,'2021-02-01 14:31:59',0),('9977891f-4b55-6394-b012-60180a18cecd','920ed607-4a99-1bc8-930d-60180a7c44f1','6474a3b1-3bc2-19c3-1ccd-6017ca43f71a',80,'2021-02-01 14:04:44',0),('997f9e64-7100-5e61-88e3-601809c29c23','59940d2d-46d1-e3fa-8112-60180940c994','d57cbe4e-28dc-3341-3148-6017ca4ae022',80,'2021-02-01 14:02:35',0),('998eb912-2080-fd75-caf3-60180f7f6196','52c526cb-9c4a-23b6-b39f-60180f9089b2','21b5d1eb-9d8b-387e-0076-6017ca4bb706',80,'2021-02-01 14:26:44',0),('99a2ea24-f4d0-6157-3e76-6018107e2320','bef307c8-d095-6341-6352-601810875b07','13d9d342-dc20-4e5b-4f4f-6017ca0bd170',75,'2021-02-01 14:31:59',0),('99de533d-2893-dba8-6b07-60180a705eaf','920ed607-4a99-1bc8-930d-60180a7c44f1','63ee943e-4bff-3fa7-bf48-6017ca030834',80,'2021-02-01 14:04:44',0),('9a10f9ef-6ca4-f731-a750-60180a240a32','920ed607-4a99-1bc8-930d-60180a7c44f1','65fd01e4-d02e-d387-a060-6017ca1e4705',80,'2021-02-01 14:04:44',0),('9a1e9ede-072f-863b-40dc-60180ffca54f','52c526cb-9c4a-23b6-b39f-60180f9089b2','20d92e13-2707-fbfc-6aae-6017ca15be16',80,'2021-02-01 14:26:44',0),('9a2382bd-c9b5-7f47-9734-6018108aac83','145ce98a-0b57-3e66-8f20-60180fdba411','58bb86e4-ee28-d2dd-36d4-6017ca0907f4',75,'2021-02-01 14:29:35',0),('9a386f0e-3994-1ea6-5dd0-60181004e056','bef307c8-d095-6341-6352-601810875b07','130f4e97-de89-d0df-fdf4-6017cafd79fb',75,'2021-02-01 14:31:59',0),('9a466bd0-c9d3-91d5-66ed-60180a2eb442','920ed607-4a99-1bc8-930d-60180a7c44f1','650abd63-f082-75a4-a58d-6017ca54dd12',-99,'2021-02-01 14:04:44',0),('9a4e56b7-a855-3977-f5b8-6018104187b1','145ce98a-0b57-3e66-8f20-60180fdba411','5362a646-6144-5c4e-9ebb-6017cabe59da',75,'2021-02-01 14:29:35',0),('9a672692-8c15-bce2-da44-60180ff253ae','52c526cb-9c4a-23b6-b39f-60180f9089b2','234f3db7-20b3-d6f5-e7b8-6017caa23e45',80,'2021-02-01 14:26:44',0),('9a69866b-11e4-e7fd-e663-601809ac8098','59940d2d-46d1-e3fa-8112-60180940c994','da4e44f2-19f9-33ea-a79f-6017caf3bb39',-99,'2021-02-01 14:02:35',0),('9a864252-fa88-ceef-ac2e-60181120d1c9','a0b17db8-3562-2520-7a5b-60181003f945','aae46ef4-441b-7567-6a4b-6017ca26f182',-99,'2021-02-01 14:33:27',0),('9a893e8b-c3b9-ee81-75c6-60180adf7a61','920ed607-4a99-1bc8-930d-60180a7c44f1','631e9841-0a93-45b7-c37a-6017caecbf57',80,'2021-02-01 14:04:44',0),('9ab04d49-e938-fd0c-dc44-601810f9da71','bef307c8-d095-6341-6352-601810875b07','254fc6ba-64ef-df4a-d53f-6017ca814e78',-98,'2021-02-01 14:31:59',0),('9ab796dd-d1e5-64a2-2edf-60180ab44cd1','920ed607-4a99-1bc8-930d-60180a7c44f1','66a0808f-81f2-5d63-33cb-6017ca6f04b5',-99,'2021-02-01 14:04:44',0),('9abf540c-2329-87dc-e511-6018096e8c72','59940d2d-46d1-e3fa-8112-60180940c994','d3d342d1-256b-ae27-5355-6017ca3b20ae',80,'2021-02-01 14:02:35',0),('9aebd59e-1c41-4922-a088-6018102ab1ab','145ce98a-0b57-3e66-8f20-60180fdba411','5cc0b349-3770-876d-484a-6017ca3bee65',75,'2021-02-01 14:29:35',0),('9afa0632-17fe-cf81-6151-60180f4f1cd3','52c526cb-9c4a-23b6-b39f-60180f9089b2','221b4606-d71e-4b39-f8d1-6017ca0185fa',-99,'2021-02-01 14:26:44',0),('9afb6dda-a647-2671-7358-60180ab7e4ae','920ed607-4a99-1bc8-930d-60180a7c44f1','626d8d6b-2260-4f45-9d57-6017ca9cec93',80,'2021-02-01 14:04:44',0),('9b2ceac4-5185-5865-c345-6018105de725','bef307c8-d095-6341-6352-601810875b07','15d35546-78f9-f848-591f-6017cacb9c85',75,'2021-02-01 14:31:59',0),('9b5d904a-f002-9693-68a0-6018104faa92','bef307c8-d095-6341-6352-601810875b07','28e1bd8d-b069-2676-b8fa-6017cac381c6',75,'2021-02-01 14:31:59',0),('9b621e31-e106-31aa-e6ea-601811dd02c3','a0b17db8-3562-2520-7a5b-60181003f945','a703c7b1-bdc0-8848-c82e-6017ca3a4705',75,'2021-02-01 14:33:27',0),('9b7178d0-ad64-ac9f-3e32-601809707c67','59940d2d-46d1-e3fa-8112-60180940c994','546743cc-6fc6-624c-2dec-6017ca948cf7',89,'2021-02-01 14:02:35',0),('9b7201c7-86fb-0815-cb7f-60180a520024','920ed607-4a99-1bc8-930d-60180a7c44f1','b8979993-d9e2-3c23-2378-6017ca043ead',80,'2021-02-01 14:04:44',0),('9b8cbd51-c6f8-4f88-ba3e-60180f04efed','52c526cb-9c4a-23b6-b39f-60180f9089b2','1fd0db20-6064-0513-4ea9-6017ca0cc94f',80,'2021-02-01 14:26:44',0),('9bb6056a-92de-f817-7f30-60181096557e','bef307c8-d095-6341-6352-601810875b07','d43bc43e-e2fe-955f-ef9d-6017ca02a76f',-98,'2021-02-01 14:31:59',0),('9bc20400-491c-ffa6-451f-601810f8ea46','145ce98a-0b57-3e66-8f20-60180fdba411','5aec88a5-6ff8-c1dc-8178-6017ca019e55',-99,'2021-02-01 14:29:35',0),('9bc92d03-69b7-2393-36b8-60180985e720','59940d2d-46d1-e3fa-8112-60180940c994','597eaaa5-85c4-a5dd-05a5-6017cac9ea90',80,'2021-02-01 14:02:35',0),('9bebda68-1044-f6cf-8e00-60180a7d16ba','920ed607-4a99-1bc8-930d-60180a7c44f1','52e18872-14a7-3b94-8d54-6017ca3a8f42',89,'2021-02-01 14:04:44',0),('9bf30576-b2cd-0574-8a21-601811839c36','a0b17db8-3562-2520-7a5b-60181003f945','d7a4a93f-f2b9-7acf-fd1a-6017ca338e09',75,'2021-02-01 14:33:27',0),('9c0c1016-5f0c-fb6e-6088-60180f242524','52c526cb-9c4a-23b6-b39f-60180f9089b2','2406bc8f-4929-38a5-9f9f-6017ca6c2433',-99,'2021-02-01 14:26:44',0),('9c10b479-8a10-f770-f626-601810dbf891','145ce98a-0b57-3e66-8f20-60180fdba411','5131b6a6-ac2e-aab4-8297-6017cacd1a29',-99,'2021-02-01 14:29:35',0),('9c270b6a-ee77-7ff2-f917-601811f2612a','a0b17db8-3562-2520-7a5b-60181003f945','ac9cd086-502b-675f-923d-6017ca9ae10e',-99,'2021-02-01 14:33:27',0),('9c272caf-626f-ce78-bcfa-6018103cd5ba','145ce98a-0b57-3e66-8f20-60180fdba411','56b5cd8a-0abd-eafa-d278-6017ca815664',75,'2021-02-01 14:29:35',0),('9c30065f-4449-03d1-158d-601809262ea3','54779abd-cf10-d4b8-3946-601809414e38','14b748ba-7445-1bed-a6bc-6017ca1ed7b4',90,'2021-02-01 14:00:42',0),('9c4ea7b7-c86e-f553-21b6-6018099b8c3f','59940d2d-46d1-e3fa-8112-60180940c994','58bb86e4-ee28-d2dd-36d4-6017ca0907f4',80,'2021-02-01 14:02:35',0),('9c60f133-8366-2a7d-d8b6-60180fb6da92','52c526cb-9c4a-23b6-b39f-60180f9089b2','1e5f2892-a756-0832-4a6e-6017caf95bd8',80,'2021-02-01 14:26:44',0),('9c64f51b-082c-86d6-18a9-60180a399159','920ed607-4a99-1bc8-930d-60180a7c44f1','55416b30-5fa8-b4e0-0a54-6017ca6b9792',80,'2021-02-01 14:04:44',0),('9c650b25-e48b-92c0-d708-60180f8f5897','52c526cb-9c4a-23b6-b39f-60180f9089b2','87539216-07b6-7711-9aa8-6017ca0d4d82',-98,'2021-02-01 14:26:44',0),('9c6d78b4-b22b-392f-25ef-601810d58150','bef307c8-d095-6341-6352-601810875b07','277ebc96-5c1a-429e-912c-6017ca79e468',75,'2021-02-01 14:31:59',0),('9c83c8de-0d2f-5581-3cf4-6018107734d5','bef307c8-d095-6341-6352-601810875b07','14686825-9929-903e-465a-6017caa80eac',-99,'2021-02-01 14:31:59',0),('9ca29dd1-cc98-e5e6-1f21-601809d6daeb','59940d2d-46d1-e3fa-8112-60180940c994','5cc0b349-3770-876d-484a-6017ca3bee65',80,'2021-02-01 14:02:35',0),('9cd6786f-ff9b-6990-4724-6018098def0f','59940d2d-46d1-e3fa-8112-60180940c994','5aec88a5-6ff8-c1dc-8178-6017ca019e55',-99,'2021-02-01 14:02:35',0),('9cd8a0ad-1788-a480-aec7-6018109130b8','145ce98a-0b57-3e66-8f20-60180fdba411','5d9bcf8a-f920-4d6c-4092-6017caf54c89',-99,'2021-02-01 14:29:35',0),('9ceab497-29e2-bde1-4649-60180ac5b2ce','920ed607-4a99-1bc8-930d-60180a7c44f1','54e1674a-2c22-cc1d-10f2-6017cace8b60',80,'2021-02-01 14:04:44',0),('9cf7833b-35ac-0718-d46d-60181060a8b3','bef307c8-d095-6341-6352-601810875b07','1252b2b2-1881-0a07-1b70-6017ca20b166',75,'2021-02-01 14:31:59',0),('9cfaf3ee-3ec5-2e85-0cab-601810d1e967','bef307c8-d095-6341-6352-601810875b07','2a3aa91e-f13f-e8e2-a69b-6017ca8378df',75,'2021-02-01 14:31:59',0),('9d08ac2b-e8ee-2617-4a60-601809e14f00','59940d2d-46d1-e3fa-8112-60180940c994','56b5cd8a-0abd-eafa-d278-6017ca815664',80,'2021-02-01 14:02:35',0),('9d21fe23-7f5f-7c26-23d4-601811fa3278','a0b17db8-3562-2520-7a5b-60181003f945','a5302dea-b8c6-d94c-ef60-6017ca19b99f',75,'2021-02-01 14:33:27',0),('9d2f5c89-cdb9-432e-93b6-60180fb8f5ad','52c526cb-9c4a-23b6-b39f-60180f9089b2','b899af45-a8cb-564b-2b5d-6017caafa414',-98,'2021-02-01 14:26:44',0),('9d39e73d-c66d-f9dc-a468-6018103323fa','bef307c8-d095-6341-6352-601810875b07','16a5a0f5-58f6-3eb2-3f5a-6017ca28282b',-99,'2021-02-01 14:31:59',0),('9d3fe5a9-72a6-39c6-0424-601810ce5d79','145ce98a-0b57-3e66-8f20-60180fdba411','54ee577a-c979-bb12-f31e-6017ca80543c',75,'2021-02-01 14:29:35',0),('9d52b88b-61b7-125c-83ad-601809ff0ffd','59940d2d-46d1-e3fa-8112-60180940c994','5d9bcf8a-f920-4d6c-4092-6017caf54c89',-99,'2021-02-01 14:02:35',0),('9d54c95d-d039-92af-c8b9-601810493812','bef307c8-d095-6341-6352-601810875b07','29d86b7d-ffe9-9bfb-4cf1-6017ca8db6c7',-99,'2021-02-01 14:31:59',0),('9d77c76d-5299-36b7-c58d-60181005240f','145ce98a-0b57-3e66-8f20-60180fdba411','4eb5453c-539f-7da6-2393-6017cab07f2d',75,'2021-02-01 14:29:35',0),('9db59ddf-a319-55a1-4137-60180aed8016','920ed607-4a99-1bc8-930d-60180a7c44f1','5759d198-8f17-5f9b-59c3-6017ca131eaa',80,'2021-02-01 14:04:44',0),('9de4b97b-f0db-f852-a41d-601809e13c47','59940d2d-46d1-e3fa-8112-60180940c994','54ee577a-c979-bb12-f31e-6017ca80543c',80,'2021-02-01 14:02:35',0),('9e009ff1-2f02-bc2a-f6e0-6018119b3195','a0b17db8-3562-2520-7a5b-60181003f945','d43bc43e-e2fe-955f-ef9d-6017ca02a76f',-98,'2021-02-01 14:33:27',0),('9e0153bf-ad09-d83b-678f-60180fb650a7','52c526cb-9c4a-23b6-b39f-60180f9089b2','bc577676-7c95-b78d-df76-6017ca9b20dd',80,'2021-02-01 14:26:44',0),('9e0d8d06-d6df-436b-23cd-601810eeb014','145ce98a-0b57-3e66-8f20-60180fdba411','95caaeaf-93f3-7e0f-a75d-6017cafeac2b',89,'2021-02-01 14:29:35',0),('9e106c56-995f-1462-5761-60180add5385','920ed607-4a99-1bc8-930d-60180a7c44f1','56a8406f-8f35-19fa-f417-6017caf288a8',-99,'2021-02-01 14:04:44',0),('9e217cd7-35ec-9150-b6f1-601810568523','bef307c8-d095-6341-6352-601810875b07','119735a8-6264-4508-281d-6017ca5602c9',75,'2021-02-01 14:31:59',0),('9e2feaeb-8547-5d83-2fb5-60180990e767','59940d2d-46d1-e3fa-8112-60180940c994','95caaeaf-93f3-7e0f-a75d-6017cafeac2b',89,'2021-02-01 14:02:35',0),('9e76e153-0ec4-9307-4435-601809215fea','59940d2d-46d1-e3fa-8112-60180940c994','98d80d64-442b-4845-f330-6017ca409579',80,'2021-02-01 14:02:35',0),('9e84aac9-2141-789b-7100-601810d449ea','bef307c8-d095-6341-6352-601810875b07','26b29b11-218c-3567-bd34-6017ca3f73c5',75,'2021-02-01 14:31:59',0),('9e8985a5-3edd-7dbf-274f-60180a3ff8f6','920ed607-4a99-1bc8-930d-60180a7c44f1','54679895-07c8-f76b-43d1-6017ca72a27a',80,'2021-02-01 14:04:44',0),('9e92fb17-f955-7ff7-16dc-601811606bd8','a0b17db8-3562-2520-7a5b-60181003f945','d786a57c-50fa-3400-5b9b-6017cac510a9',75,'2021-02-01 14:33:27',0),('9ea0d81c-83da-6c8d-3783-60180fa02393','52c526cb-9c4a-23b6-b39f-60180f9089b2','bb014dc7-231c-d3be-3127-6017ca522de8',80,'2021-02-01 14:26:44',0),('9eb40da5-e842-d236-3310-601810ceadc6','bef307c8-d095-6341-6352-601810875b07','62d0a189-4595-a430-d15c-6017cacc3713',75,'2021-02-01 14:31:59',0),('9ec2ef45-6420-265b-16da-601809730ca2','59940d2d-46d1-e3fa-8112-60180940c994','98318ae3-2987-0db6-aedc-6017caa934f7',80,'2021-02-01 14:02:35',0),('9ec4d227-1b62-704f-75d4-60180a1fd329','920ed607-4a99-1bc8-930d-60180a7c44f1','5834a572-d414-ba60-078a-6017ca451330',-99,'2021-02-01 14:04:44',0),('9ec7be03-06ae-053e-f858-601810f4e625','145ce98a-0b57-3e66-8f20-60180fdba411','543391af-9314-213d-cf52-6017ca0de4a4',-99,'2021-02-01 14:29:35',0),('9ed1a08c-f9f6-f62b-7658-601810384728','bef307c8-d095-6341-6352-601810875b07','a1dba88a-f04c-1a8a-a892-6017ca6b9c0e',-98,'2021-02-01 14:31:59',0),('9ee96d26-e303-e9b6-cfe6-601809782a60','59940d2d-46d1-e3fa-8112-60180940c994','9a0c8414-dc37-00e0-5f53-6017ca9df993',80,'2021-02-01 14:02:35',0),('9f1dbd80-c881-2703-e4cc-60180f925e09','52c526cb-9c4a-23b6-b39f-60180f9089b2','beaed700-c854-1c4e-c41f-6017ca967318',80,'2021-02-01 14:26:44',0),('9f32f912-ffa2-7060-dfe1-60180911571d','59940d2d-46d1-e3fa-8112-60180940c994','998800ae-740e-54bd-2cba-6017caaaa73a',-99,'2021-02-01 14:02:35',0),('9f37468f-a23b-2aaa-860b-6018112aee24','a0b17db8-3562-2520-7a5b-60181003f945','d6e4bfa4-cbed-cdd3-c897-6017ca052bde',75,'2021-02-01 14:33:27',0),('9f4b784d-e87a-b831-145f-6018104a1cfb','bef307c8-d095-6341-6352-601810875b07','2a7d2e1b-9b3e-32b5-1e78-6017ca4fecff',-99,'2021-02-01 14:31:59',0),('9f73933a-3e3a-ac76-01e6-601809177066','59940d2d-46d1-e3fa-8112-60180940c994','97cbb191-9ddd-400d-a042-6017ca5c4392',80,'2021-02-01 14:02:35',0),('9f90e88e-be8e-a1b7-b28b-60180f28747c','52c526cb-9c4a-23b6-b39f-60180f9089b2','bceb6bef-9e3e-2c85-bbac-6017cafb0acf',-99,'2021-02-01 14:26:44',0),('9fa99dd1-05bb-b98d-8f8c-6018097bd164','59940d2d-46d1-e3fa-8112-60180940c994','9aa4c23c-82cc-b784-2948-6017ca8efdf4',-99,'2021-02-01 14:02:35',0),('9facf370-bb13-85d4-b2fb-601810562230','145ce98a-0b57-3e66-8f20-60180fdba411','98d80d64-442b-4845-f330-6017ca409579',75,'2021-02-01 14:29:35',0),('9fda2c0b-22ca-ea22-d018-6018102d0fc8','bef307c8-d095-6341-6352-601810875b07','a5c83c1f-45dc-c601-2782-6017cabac48b',75,'2021-02-01 14:31:59',0),('9fda8cc9-bfe1-98d4-1e07-60180a52fbb0','920ed607-4a99-1bc8-930d-60180a7c44f1','53ce4002-765c-019d-925e-6017ca6b0b89',80,'2021-02-01 14:04:44',0),('9fe54570-a00e-9459-21da-6018095a9ddb','59940d2d-46d1-e3fa-8112-60180940c994','970785ad-0325-24c1-aa65-6017ca359798',80,'2021-02-01 14:02:35',0),('9ff47562-fe83-bcad-6cc6-6018101a4fc7','145ce98a-0b57-3e66-8f20-60180fdba411','4dc064a6-36e7-b8d6-1637-6017ca834a51',75,'2021-02-01 14:29:35',0),('9ffa08a3-7e70-2e7e-dacd-60180aa12cd8','920ed607-4a99-1bc8-930d-60180a7c44f1','ba77c542-9e5d-7ae6-e3f9-6017caa020b9',80,'2021-02-01 14:04:44',0),('9ffed34a-e821-f63a-70c7-60180f6075b5','52c526cb-9c4a-23b6-b39f-60180f9089b2','ba473bcc-7238-9791-6f76-6017ca6721e5',80,'2021-02-01 14:26:44',0),('a00c1ad5-bdda-680c-b6d1-60180a93e3e3','920ed607-4a99-1bc8-930d-60180a7c44f1','6d9d1858-3cb1-1bf8-47de-6017caecbe90',89,'2021-02-01 14:04:44',0),('a016b815-c113-9ea0-8efd-601811cb3f62','a0b17db8-3562-2520-7a5b-60181003f945','d8ef97ea-8348-5f56-97ad-6017ca6a0460',75,'2021-02-01 14:33:27',0),('a030af7f-1c34-a0db-b13e-601810f01218','145ce98a-0b57-3e66-8f20-60180fdba411','98318ae3-2987-0db6-aedc-6017caa934f7',75,'2021-02-01 14:29:35',0),('a03474e7-b6d2-e2a0-b87c-6018096e31da','59940d2d-46d1-e3fa-8112-60180940c994','2b082bd0-78e2-0f73-8f30-6017cae6b554',-98,'2021-02-01 14:02:35',0),('a0489899-f8e2-763b-4ffe-60180adadb8e','920ed607-4a99-1bc8-930d-60180a7c44f1','70caaca7-26e2-1098-1756-6017ca845ecf',80,'2021-02-01 14:04:44',0),('a07136dd-15fa-d5df-59b4-601809fe5c6c','59940d2d-46d1-e3fa-8112-60180940c994','30c31271-8204-35d9-ac35-6017cac62b20',80,'2021-02-01 14:02:35',0),('a08ae386-4aa6-9252-50b4-60180a35e6c8','920ed607-4a99-1bc8-930d-60180a7c44f1','6ffacbb5-5dca-0c27-5fae-6017ca1495ba',80,'2021-02-01 14:04:44',0),('a08cbe25-29b6-eadb-e33f-601810af2812','bef307c8-d095-6341-6352-601810875b07','260ea293-5703-f62a-d014-6017ca9ff06c',75,'2021-02-01 14:31:59',0),('a0a2b020-0039-cdf9-2906-6018115f8b21','a0b17db8-3562-2520-7a5b-60181003f945','d840ab23-5d37-8c15-7888-6017ca6d0b7c',-99,'2021-02-01 14:33:27',0),('a0ab0a94-12ab-c6ae-d4d6-60180f801813','52c526cb-9c4a-23b6-b39f-60180f9089b2','bf82a946-415f-bc3a-8fc7-6017ca457085',-99,'2021-02-01 14:26:44',0),('a0abe08a-d8fe-1743-7014-601809667e8b','59940d2d-46d1-e3fa-8112-60180940c994','2efe11d5-6790-bf1f-8663-6017cad8523d',80,'2021-02-01 14:02:35',0),('a0b51583-4ac1-61fe-765c-601810200fe5','bef307c8-d095-6341-6352-601810875b07','a51ed5ca-e6ea-6120-f675-6017ca40973a',75,'2021-02-01 14:31:59',0),('a0c70387-08f1-942d-313e-60180abeeb19','920ed607-4a99-1bc8-930d-60180a7c44f1','71fc608d-8555-80f2-5372-6017cae78ce3',80,'2021-02-01 14:04:44',0),('a0ce0506-8729-9bca-c88a-601809d9ebfe','59940d2d-46d1-e3fa-8112-60180940c994','331cee62-76bf-b82b-c04b-6017caf9b89c',80,'2021-02-01 14:02:35',0),('a0d90e01-e1bb-168f-f1da-6018096b6a76','54779abd-cf10-d4b8-3946-601809414e38','12a05087-ac9b-b480-ef56-6017ca5bb531',90,'2021-02-01 14:00:42',0),('a11fbb30-54b4-238c-bfae-601809ba0a98','59940d2d-46d1-e3fa-8112-60180940c994','324c45e0-5b40-9a13-bba7-6017ca617468',-99,'2021-02-01 14:02:35',0),('a1412151-e14c-088e-958e-601811c91b8f','a0b17db8-3562-2520-7a5b-60181003f945','d620c5dd-c03f-9f13-31c7-6017ca213266',75,'2021-02-01 14:33:27',0),('a146bf3b-01f7-a2e5-3d71-60180fbea140','52c526cb-9c4a-23b6-b39f-60180f9089b2','b9a397e5-66a6-9988-7929-6017cae9079d',80,'2021-02-01 14:26:44',0),('a153f0ad-c1bf-d1bd-8c79-60180a92b4a7','920ed607-4a99-1bc8-930d-60180a7c44f1','71456b4c-71e5-7e70-8411-6017caf4f852',-99,'2021-02-01 14:04:44',0),('a170a728-59dd-922f-1d1f-6018091fb878','59940d2d-46d1-e3fa-8112-60180940c994','2e23ea98-4f52-4fe8-0c62-6017ca933a95',80,'2021-02-01 14:02:35',0),('a171bf6c-769c-0423-bc0e-60181083a4ff','145ce98a-0b57-3e66-8f20-60180fdba411','9a0c8414-dc37-00e0-5f53-6017ca9df993',75,'2021-02-01 14:29:35',0),('a1761df1-1d29-9af0-d0e6-6018102796b2','bef307c8-d095-6341-6352-601810875b07','33a4c648-6095-3a46-57e5-6017ca731b91',-98,'2021-02-01 14:31:59',0),('a18410a4-60dd-e976-fede-60181073682d','145ce98a-0b57-3e66-8f20-60180fdba411','c74d759e-ca97-9c85-566b-6017ca9f5554',-98,'2021-02-01 14:29:35',0),('a1a394e4-6c3c-6912-57ae-60180965844a','59940d2d-46d1-e3fa-8112-60180940c994','33998e3d-e989-c679-1dd4-6017ca3d2cc8',-99,'2021-02-01 14:02:35',0),('a1ac21dd-44c6-014e-f645-60180a96484f','920ed607-4a99-1bc8-930d-60180a7c44f1','6f4ed682-115a-e071-aa74-6017caf739a3',80,'2021-02-01 14:04:44',0),('a1cbff55-0652-272a-4c95-60180fd86025','52c526cb-9c4a-23b6-b39f-60180f9089b2','97e9402e-af05-1ead-a076-6017ca207f26',-98,'2021-02-01 14:26:44',0),('a1e42ba2-177e-05b9-3f54-6018113a7af6','a0b17db8-3562-2520-7a5b-60181003f945','d98bf6b0-ff19-5726-0429-6017cad40d74',-99,'2021-02-01 14:33:27',0),('a1ee534e-540c-f0b1-c73e-601809d5dc8e','59940d2d-46d1-e3fa-8112-60180940c994','2d2747b1-a21d-0f24-7ad8-6017cac0d820',80,'2021-02-01 14:02:35',0),('a1fbd47f-7f8f-b71b-9cfb-60180a6d2112','920ed607-4a99-1bc8-930d-60180a7c44f1','74193c93-40a8-b4b3-61b6-6017cabdd106',-99,'2021-02-01 14:04:44',0),('a219d290-bfa8-b487-6db6-601810f47c6a','bef307c8-d095-6341-6352-601810875b07','377b9e0c-f502-7bb5-2c9f-6017ca706205',75,'2021-02-01 14:31:59',0),('a2263341-7ea7-c934-8a70-6018100d1175','145ce98a-0b57-3e66-8f20-60180fdba411','998800ae-740e-54bd-2cba-6017caaaa73a',-99,'2021-02-01 14:29:35',0),('a23a2bb8-373f-3e15-6a8f-601809c6668f','59940d2d-46d1-e3fa-8112-60180940c994','f2e8e852-51ce-32b0-7d1a-6017ca06e346',-98,'2021-02-01 14:02:35',0),('a2414d09-b272-6021-88c3-60180f7a4fa2','52c526cb-9c4a-23b6-b39f-60180f9089b2','9dad8dfc-64d2-5c22-7fed-6017caa67ae1',80,'2021-02-01 14:26:44',0),('a2475d1b-e103-5163-53b9-60180a966475','920ed607-4a99-1bc8-930d-60180a7c44f1','6ea461d8-ddf8-92b2-3408-6017ca96a386',80,'2021-02-01 14:04:44',0),('a250c694-1d4e-dbe4-cec2-60181073c259','bef307c8-d095-6341-6352-601810875b07','a6dc7487-4f78-319e-eb0d-6017cae454e9',75,'2021-02-01 14:31:59',0),('a2860a8f-3675-ff9b-a0cf-601809119114','59940d2d-46d1-e3fa-8112-60180940c994','2cd00441-6e8e-a148-477b-6017ca30432f',80,'2021-02-01 14:02:35',0),('a2924ada-eb01-3aac-58b7-601811bae80c','a0b17db8-3562-2520-7a5b-60181003f945','d4fcbe23-c827-2094-d420-6017ca831257',75,'2021-02-01 14:33:27',0),('a2a96617-b9c8-21de-f6cf-60180aa91f99','920ed607-4a99-1bc8-930d-60180a7c44f1','e2bc5387-7429-ab0a-3d69-6017ca359d7b',-98,'2021-02-01 14:04:44',0),('a2aa0241-4ea3-aee8-8a3e-601810fe13e5','145ce98a-0b57-3e66-8f20-60180fdba411','cab346aa-9975-17b1-bd41-6017ca561174',75,'2021-02-01 14:29:35',0),('a2afac17-834d-b5b5-f879-6018105b2e67','bef307c8-d095-6341-6352-601810875b07','3703cf8a-d539-ce5f-51fb-6017ca174652',75,'2021-02-01 14:31:59',0),('a2c7c187-9c57-87ca-e970-60180ff37260','52c526cb-9c4a-23b6-b39f-60180f9089b2','9c7adf56-4680-5e30-ff28-6017cadf52c8',80,'2021-02-01 14:26:44',0),('a2d205f9-4905-36dc-c6b2-60180a1dcca4','920ed607-4a99-1bc8-930d-60180a7c44f1','b9e54d8b-7ade-bc5b-658e-6017ca43b993',-99,'2021-02-01 14:04:44',0),('a2d8eaa6-4bc8-39c5-1349-60180a90b200','920ed607-4a99-1bc8-930d-60180a7c44f1','e5173f3f-76a1-cf58-1013-6017cae80777',80,'2021-02-01 14:04:44',0),('a2e3088f-7d7e-b516-d7be-601810df6158','145ce98a-0b57-3e66-8f20-60180fdba411','d1b4b2de-3c43-1cf8-1126-6017caf932db',75,'2021-02-01 14:29:35',0),('a2f425d7-4fff-798a-697a-601809e35b55','59940d2d-46d1-e3fa-8112-60180940c994','1e1803a1-daa9-c147-059f-6017ca58540c',80,'2021-02-01 14:02:35',0),('a2f7029a-cfda-271b-8fc1-601810500403','bef307c8-d095-6341-6352-601810875b07','a66f362b-768c-db39-3986-6017ca23936b',-99,'2021-02-01 14:31:59',0),('a30aa6a8-cee7-9b05-68ed-601810b32d34','bef307c8-d095-6341-6352-601810875b07','38e0c84a-b6b1-e94f-4f77-6017ca4423ca',75,'2021-02-01 14:31:59',0),('a3267fe8-df04-6a97-2790-601810600dcf','145ce98a-0b57-3e66-8f20-60180fdba411','97cbb191-9ddd-400d-a042-6017ca5c4392',75,'2021-02-01 14:29:35',0),('a32ff12b-d31f-6c2e-d7cd-6018111bf25c','a0b17db8-3562-2520-7a5b-60181003f945','7b93328d-ff92-fab7-088a-6017caafa77b',-98,'2021-02-01 14:33:27',0),('a335caaa-dafe-0d1b-2da2-601809e7cf70','59940d2d-46d1-e3fa-8112-60180940c994','487209ce-296c-c755-871c-6017caa41be8',80,'2021-02-01 14:02:35',0),('a33c90a2-c3e5-ad8d-9bdf-60180fab04a2','52c526cb-9c4a-23b6-b39f-60180f9089b2','9f6d45af-0924-9907-090a-6017ca293441',80,'2021-02-01 14:26:44',0),('a353e284-2619-d08e-adef-60180a268a30','920ed607-4a99-1bc8-930d-60180a7c44f1','e4a782d6-f3e0-5420-7aa0-6017ca7dfddb',80,'2021-02-01 14:04:44',0),('a380ad09-8c2e-2a05-fe32-601809ef16c6','59940d2d-46d1-e3fa-8112-60180940c994','3c8f0a2d-b87e-6e7e-696c-6017caac546a',-99,'2021-02-01 14:02:35',0),('a3c33f74-080a-1f3d-9a84-601809cddb23','59940d2d-46d1-e3fa-8112-60180940c994','11450ed5-1ece-4320-83bb-6017ca13f200',80,'2021-02-01 14:02:35',0),('a3c60c98-6a24-e11b-ca54-60180ff02754','52c526cb-9c4a-23b6-b39f-60180f9089b2','8c9ce024-16d3-ce97-f6f1-6017cafec8a2',80,'2021-02-01 14:26:44',0),('a3c6ae8d-dbdb-9200-d8b0-60180a39649d','920ed607-4a99-1bc8-930d-60180a7c44f1','e5e30ecd-895c-7f29-b5f7-6017ca1db364',80,'2021-02-01 14:04:44',0),('a3c9bc8c-0080-dfc8-9578-601810ed40b5','bef307c8-d095-6341-6352-601810875b07','3832cc25-90a4-9adb-6504-6017cad4d35a',-99,'2021-02-01 14:31:59',0),('a3db41cd-3c40-9af6-54a6-601811de2b37','a0b17db8-3562-2520-7a5b-60181003f945','80721d39-a468-f6ac-c5a0-6017cadaaa11',75,'2021-02-01 14:33:27',0),('a3f0232e-d8cc-1017-d5a8-6018093ba5f6','59940d2d-46d1-e3fa-8112-60180940c994','69c40028-8193-04ae-ea6a-6017ca36aaa1',-99,'2021-02-01 14:02:35',0),('a3f3ef92-64ab-4ede-95f7-60180af6a62d','920ed607-4a99-1bc8-930d-60180a7c44f1','e57cbf72-739f-a668-7683-6017cae2687a',-99,'2021-02-01 14:04:44',0),('a3fc340b-e4f4-6948-d655-601810c9a919','bef307c8-d095-6341-6352-601810875b07','a43c437c-1608-81a0-4112-6017cac827a4',75,'2021-02-01 14:31:59',0),('a40809fc-2963-4378-b36b-60180f56de02','52c526cb-9c4a-23b6-b39f-60180f9089b2','9e8c53ec-f5f5-1908-8fd6-6017ca4b90f4',-99,'2021-02-01 14:26:44',0),('a41eec61-372c-d942-08ff-6018091ef068','59940d2d-46d1-e3fa-8112-60180940c994','f3d45d6c-92bf-593e-dc4e-6017ca41cbee',80,'2021-02-01 14:02:35',0),('a4255c00-2b85-1714-03bf-601810a4cf74','145ce98a-0b57-3e66-8f20-60180fdba411','c9f5ba8f-acbd-9e14-381d-6017cabba8c0',75,'2021-02-01 14:29:35',0),('a4710407-bc81-ecaa-0050-601810275816','bef307c8-d095-6341-6352-601810875b07','3634091f-8062-cdd4-5fa8-6017caf39c43',75,'2021-02-01 14:31:59',0),('a4789c17-b43c-85e7-c6fa-601811d5d1ce','a0b17db8-3562-2520-7a5b-60181003f945','7f62c1e4-1794-9774-0835-6017ca110404',75,'2021-02-01 14:33:27',0),('a48875a6-9495-0584-2b3d-601809634a02','59940d2d-46d1-e3fa-8112-60180940c994','589808bc-2514-c7b6-0600-6017ca25411d',-98,'2021-02-01 14:02:35',0),('a48c3916-53c5-c25f-e0db-601810129a5f','145ce98a-0b57-3e66-8f20-60180fdba411','9aa4c23c-82cc-b784-2948-6017ca8efdf4',-99,'2021-02-01 14:29:35',0),('a4b08bc5-2b0e-e254-1bd8-601809784235','59940d2d-46d1-e3fa-8112-60180940c994','91c30556-a5c1-71fa-6265-6017ca41003a',80,'2021-02-01 14:02:35',0),('a4b113a3-a28b-83bf-1530-60180f4060ee','52c526cb-9c4a-23b6-b39f-60180f9089b2','9b2882df-e540-afe4-9c83-6017ca7e0aa7',80,'2021-02-01 14:26:44',0),('a4b97381-481a-f898-1b5a-60180af46670','920ed607-4a99-1bc8-930d-60180a7c44f1','e3eed07f-5bb3-2703-e548-6017caddebbf',80,'2021-02-01 14:04:44',0),('a4cb84eb-065a-7fc5-b2f4-6018101bb07e','bef307c8-d095-6341-6352-601810875b07','a79a0deb-3f53-b8d5-9317-6017ca50aa02',-99,'2021-02-01 14:31:59',0),('a4ddd8a3-d17c-2b81-2554-601810e414a9','bef307c8-d095-6341-6352-601810875b07','3955cfaa-5d78-ecdd-57ae-6017caf34833',-99,'2021-02-01 14:31:59',0),('a4eb45b2-44a4-e31d-54d6-6018098b36f7','59940d2d-46d1-e3fa-8112-60180940c994','7c7a0933-8857-c660-fe54-6017ca5b86aa',80,'2021-02-01 14:02:35',0),('a4ec4a3d-d50b-1514-365c-60180addc069','920ed607-4a99-1bc8-930d-60180a7c44f1','e72ba550-9aea-e958-95e8-6017ca63fa05',-99,'2021-02-01 14:04:44',0),('a505d853-7089-d1a6-6808-60180fcbd41a','52c526cb-9c4a-23b6-b39f-60180f9089b2','a0125536-b231-699a-6df1-6017cac450ac',-99,'2021-02-01 14:26:44',0),('a51f5874-faf5-f193-8f9b-601811459056','a0b17db8-3562-2520-7a5b-60181003f945','81b7dc49-a8cd-d6de-bbc9-6017cac215e8',75,'2021-02-01 14:33:27',0),('a51ffbd6-36bd-a9b9-010e-601810d856ae','145ce98a-0b57-3e66-8f20-60180fdba411','cc0d998d-d33d-2b7c-1413-6017ca1a425a',75,'2021-02-01 14:29:35',0),('a528a720-4b8e-ec08-fd43-601809ff95f3','59940d2d-46d1-e3fa-8112-60180940c994','a59f0241-8c23-bf89-0b3c-6017caf9cfab',80,'2021-02-01 14:02:35',0),('a52aae8f-d9c3-92dc-7964-60180a9d88a2','920ed607-4a99-1bc8-930d-60180a7c44f1','e33de50b-0af6-759b-2e46-6017ca41bb50',80,'2021-02-01 14:04:44',0),('a53f0c15-ff31-13ba-8a8c-6018109b0ece','bef307c8-d095-6341-6352-601810875b07','d786a57c-50fa-3400-5b9b-6017cac510a9',75,'2021-02-01 14:31:59',0),('a55991c1-211a-ff5e-f48e-60180a4f8729','920ed607-4a99-1bc8-930d-60180a7c44f1','2ea0f1e5-5ad1-9ed1-62be-6017cab19b3e',-98,'2021-02-01 14:04:44',0),('a55be81b-159f-a4f7-185e-60180908170f','59940d2d-46d1-e3fa-8112-60180940c994','9ced0d8b-c4fb-fbbd-f69f-6017ca4e42e6',-99,'2021-02-01 14:02:35',0),('a589d759-b03a-ab07-ff65-60180af0294f','920ed607-4a99-1bc8-930d-60180a7c44f1','307a06a7-17d6-8be6-5b8d-6017ca1d1fe5',80,'2021-02-01 14:04:44',0),('a58d0516-d2f4-4209-a0c7-601809377c18','54779abd-cf10-d4b8-3946-601809414e38','1844b369-3730-ed93-c1df-6017cad6ef13',90,'2021-02-01 14:00:42',0),('a59059b6-c8f7-62b7-0ce5-601810fe8898','bef307c8-d095-6341-6352-601810875b07','a2b066ca-8bc3-455f-49e3-6017caf5a616',75,'2021-02-01 14:31:59',0),('a59a6218-138e-70e5-2533-601809238d77','59940d2d-46d1-e3fa-8112-60180940c994','72100f4a-ad81-b819-d3dd-6017ca9d1452',80,'2021-02-01 14:02:35',0),('a5a5ec7d-77f7-0b8d-75ba-601810fefe3a','bef307c8-d095-6341-6352-601810875b07','34751d0d-8c15-50d3-5a8e-6017ca6c83cf',75,'2021-02-01 14:31:59',0),('a5c161bb-eb8a-9439-ad37-60180f86ad61','52c526cb-9c4a-23b6-b39f-60180f9089b2','986eee81-167e-9465-9b49-6017ca064f5f',80,'2021-02-01 14:26:44',0),('a5cbe131-25e7-bb23-4a2f-60180978e87b','59940d2d-46d1-e3fa-8112-60180940c994','ac03085e-eb42-7691-4a87-6017ca928f01',-99,'2021-02-01 14:02:35',0),('a5d93972-78c1-6ea4-c55e-60181010ff75','145ce98a-0b57-3e66-8f20-60180fdba411','970785ad-0325-24c1-aa65-6017ca359798',75,'2021-02-01 14:29:35',0),('a60807eb-f677-7dfe-0cdb-60180a780f9a','920ed607-4a99-1bc8-930d-60180a7c44f1','300fc3b9-b50e-5fdc-1d14-6017cacc420b',80,'2021-02-01 14:04:44',0),('a63d3d3f-c8ca-20ad-33ba-601809ad6da8','59940d2d-46d1-e3fa-8112-60180940c994','64180a9b-ae83-35f9-59dc-6017ca309e5d',80,'2021-02-01 14:02:35',0),('a64319d9-9a1f-5a6d-c169-60180a19ccd7','920ed607-4a99-1bc8-930d-60180a7c44f1','31869517-c36b-60a8-d27a-6017ca2d73ca',80,'2021-02-01 14:04:44',0),('a6598d7b-f16b-3733-94bd-60181097ba0a','145ce98a-0b57-3e66-8f20-60180fdba411','cb671498-76a3-0ff6-3b03-6017ca56cae8',-99,'2021-02-01 14:29:35',0),('a6689e71-23f8-7a3d-d97a-6018105d2d4e','bef307c8-d095-6341-6352-601810875b07','89cfd493-7685-52ca-1008-6017ca632e1b',-98,'2021-02-01 14:31:59',0),('a6725779-8bc4-1c06-90a0-601809b91427','59940d2d-46d1-e3fa-8112-60180940c994','83bafba5-b28d-645d-48f2-6017ca1c1383',-98,'2021-02-01 14:02:35',0),('a678d0da-1d65-32c7-581e-6018112765bc','a0b17db8-3562-2520-7a5b-60181003f945','81318593-4681-4d8a-4fc0-6017cadfb23f',-99,'2021-02-01 14:33:27',0),('a67d8672-23fc-88d1-d649-60180fb05971','52c526cb-9c4a-23b6-b39f-60180f9089b2','ad72033b-d248-1445-3717-6017ca405307',-98,'2021-02-01 14:26:44',0),('a68981f6-0304-7378-b742-60181095f0b3','bef307c8-d095-6341-6352-601810875b07','60810b5c-c79a-b6ef-ace1-6017ca93af34',89,'2021-02-01 14:31:59',0),('a6afa944-0fee-9370-0d64-601809407702','59940d2d-46d1-e3fa-8112-60180940c994','8a35bd21-0821-a6ef-ec50-6017caa61ccb',80,'2021-02-01 14:02:35',0),('a6b14abf-6d19-4a53-f63a-601810595f25','145ce98a-0b57-3e66-8f20-60180fdba411','2b082bd0-78e2-0f73-8f30-6017cae6b554',-98,'2021-02-01 14:29:35',0),('a6dccdd9-28f2-091b-947a-60180ac86485','920ed607-4a99-1bc8-930d-60180a7c44f1','30f90944-e730-df75-95e6-6017ca1fa55b',-99,'2021-02-01 14:04:44',0),('a6dfac8a-66a6-cce6-8a60-601809b889ba','59940d2d-46d1-e3fa-8112-60180940c994','8914ea66-9b43-bf8d-ab0f-6017cae44b71',80,'2021-02-01 14:02:35',0),('a6ecf3ad-0c1d-3219-43a5-601810447a40','bef307c8-d095-6341-6352-601810875b07','8d646238-0036-c2d0-6e93-6017ca17c0f5',75,'2021-02-01 14:31:59',0),('a710c106-ff02-558a-261d-60181044c3a1','bef307c8-d095-6341-6352-601810875b07','6474a3b1-3bc2-19c3-1ccd-6017ca43f71a',75,'2021-02-01 14:31:59',0),('a7160bc6-9971-adcd-41a5-601809ef132c','59940d2d-46d1-e3fa-8112-60180940c994','8bf0667b-a379-e360-373a-6017cae0f35a',80,'2021-02-01 14:02:35',0),('a73c2ddf-4bf8-d28f-7bae-60180fdc8520','52c526cb-9c4a-23b6-b39f-60180f9089b2','b0a59a80-8244-9f08-bf42-6017caeaa7f3',80,'2021-02-01 14:26:44',0),('a76204a0-c017-4e5c-65fd-60180a8515f2','920ed607-4a99-1bc8-930d-60180a7c44f1','2fc42adb-d386-a4c7-ec11-6017cae90eed',80,'2021-02-01 14:04:44',0),('a773c873-f3a8-a29e-6f70-601810bdf936','bef307c8-d095-6341-6352-601810875b07','8c917df1-c6ec-68b0-840f-6017cadaae13',75,'2021-02-01 14:31:59',0),('a77ce4cb-581d-8793-ca14-6018099d7de0','59940d2d-46d1-e3fa-8112-60180940c994','8b65b469-c5df-e8ca-4420-6017caa83b89',-99,'2021-02-01 14:02:35',0),('a782a9d6-ee23-0ea7-9d2a-601810c63251','bef307c8-d095-6341-6352-601810875b07','63ee943e-4bff-3fa7-bf48-6017ca030834',75,'2021-02-01 14:31:59',0),('a7878663-c085-4547-f311-60181186265a','a0b17db8-3562-2520-7a5b-60181003f945','7de3d8da-5c08-1db7-4a75-6017ca329c45',75,'2021-02-01 14:33:27',0),('a7a9568c-fa37-8aa0-a5e2-60180939e997','59940d2d-46d1-e3fa-8112-60180940c994','882f3059-afd6-c38d-4091-6017ca2bde86',80,'2021-02-01 14:02:35',0),('a7bf92e9-c29c-907b-7e77-60180aed35ea','920ed607-4a99-1bc8-930d-60180a7c44f1','3214d713-d19f-6c9e-ceb2-6017ca55bf89',-99,'2021-02-01 14:04:44',0),('a7d166ef-ed4d-c634-3897-60180f885a9c','52c526cb-9c4a-23b6-b39f-60180f9089b2','b03e2b4c-2931-7fad-9b57-6017ca8ac75c',80,'2021-02-01 14:26:44',0),('a7ecefde-a567-1b50-249d-60180928ff47','59940d2d-46d1-e3fa-8112-60180940c994','8c8ae67b-d645-cdb5-f0a8-6017ca1e81ce',-99,'2021-02-01 14:02:35',0),('a7f02f8b-fdef-6653-ca4e-60181046e651','bef307c8-d095-6341-6352-601810875b07','8e72cccd-d8bd-5bda-1129-6017ca1e0e4f',75,'2021-02-01 14:31:59',0),('a7f325e5-b3e8-878e-a00d-6018106cdc42','145ce98a-0b57-3e66-8f20-60180fdba411','c8c2766e-917f-40ca-4d6d-6017caf3f0d5',75,'2021-02-01 14:29:35',0),('a7f60883-c74c-6ddf-ba11-60180902109a','54779abd-cf10-d4b8-3946-601809414e38','16b7009a-4890-65d1-3f8f-6017ca6c7043',90,'2021-02-01 14:00:42',0),('a80a2a0e-be36-ee6f-01d1-601810c76b08','bef307c8-d095-6341-6352-601810875b07','65fd01e4-d02e-d387-a060-6017ca1e4705',75,'2021-02-01 14:31:59',0),('a8117fca-e277-546b-fb7e-601809f7dd95','59940d2d-46d1-e3fa-8112-60180940c994','8736f700-cfc6-914f-0006-6017ca6a5053',80,'2021-02-01 14:02:35',0),('a8527469-2767-1e70-3faf-6018096194df','59940d2d-46d1-e3fa-8112-60180940c994','60d4e068-e997-5fa7-cb8f-6017cafcf344',-98,'2021-02-01 14:02:35',0),('a852f01b-6d8a-7220-d16f-60180fd974fe','52c526cb-9c4a-23b6-b39f-60180f9089b2','b1b70587-5e65-c9e2-442e-6017ca9be6b4',80,'2021-02-01 14:26:44',0),('a865aa4e-516f-672c-7b42-60181060ce7e','bef307c8-d095-6341-6352-601810875b07','8df6c126-ff00-31ab-53d7-6017ca17f4bb',-99,'2021-02-01 14:31:59',0),('a8a11e9a-6ba3-032d-008c-60180a0d233d','920ed607-4a99-1bc8-930d-60180a7c44f1','2f59f53b-49d7-6e72-6586-6017ca3316c8',80,'2021-02-01 14:04:44',0),('a8c3ce10-6ac3-c5e0-1830-6018098f521b','59940d2d-46d1-e3fa-8112-60180940c994','651f020d-f67a-ce98-814e-6017ca62cee5',80,'2021-02-01 14:02:35',0),('a8dff142-c15f-7793-b20e-6018105518e1','145ce98a-0b57-3e66-8f20-60180fdba411','30c31271-8204-35d9-ac35-6017cac62b20',75,'2021-02-01 14:29:35',0),('a8e4ad42-0ec0-99b0-e894-60181044d1cf','bef307c8-d095-6341-6352-601810875b07','650abd63-f082-75a4-a58d-6017ca54dd12',-99,'2021-02-01 14:31:59',0),('a8fbbafa-e96d-e090-5339-601809599442','59940d2d-46d1-e3fa-8112-60180940c994','63623684-279d-11f2-ff80-6017ca26b7c2',80,'2021-02-01 14:02:35',0),('a90851ad-b0b2-b819-dc6c-601810bb9ba9','145ce98a-0b57-3e66-8f20-60180fdba411','cc7cc659-153f-71ed-f0d2-6017caa4c207',-99,'2021-02-01 14:29:35',0),('a90ed728-4f6d-7b7e-b05a-601811e96d65','a0b17db8-3562-2520-7a5b-60181003f945','82ed8e62-4294-f0ca-6399-6017ca0cf556',-99,'2021-02-01 14:33:27',0),('a91ecf24-14b0-e122-10ab-601810aaa3e2','bef307c8-d095-6341-6352-601810875b07','8c1ad7be-b834-8a3b-a447-6017ca75307a',75,'2021-02-01 14:31:59',0),('a9378fdd-338e-565f-609d-60180f5c31e8','52c526cb-9c4a-23b6-b39f-60180f9089b2','b148ee1e-32f7-3ee6-9bd5-6017ca688368',-99,'2021-02-01 14:26:44',0),('a93dad08-d59a-28e7-e97a-601809cae8bb','59940d2d-46d1-e3fa-8112-60180940c994','67041382-dd21-ba5f-c8b6-6017ca5a32b2',80,'2021-02-01 14:02:35',0),('a9520427-e63f-dcec-59f2-6018101ef389','bef307c8-d095-6341-6352-601810875b07','631e9841-0a93-45b7-c37a-6017caecbf57',75,'2021-02-01 14:31:59',0),('a96bf263-da2d-08d4-ab15-601809132b49','59940d2d-46d1-e3fa-8112-60180940c994','65ec59d2-6ab2-6a0d-f80b-6017ca4e02aa',-99,'2021-02-01 14:02:35',0),('a98e706a-4217-0d37-e8e6-6018102552d6','bef307c8-d095-6341-6352-601810875b07','8f2d5206-743b-ecd6-bbfd-6017ca3b700c',-99,'2021-02-01 14:31:59',0),('a995564b-70d4-be99-f34d-601810623159','bef307c8-d095-6341-6352-601810875b07','66a0808f-81f2-5d63-33cb-6017ca6f04b5',-99,'2021-02-01 14:31:59',0),('a9a950f1-f66f-6481-0aec-601811aed065','a0b17db8-3562-2520-7a5b-60181003f945','7c284102-15d0-c329-fc54-6017ca9ed58f',75,'2021-02-01 14:33:27',0),('a9b45468-8bca-7517-72a1-60180a19f689','920ed607-4a99-1bc8-930d-60180a7c44f1','14bda9be-7f00-c47d-4d67-6017caadd7c7',-98,'2021-02-01 14:04:44',0),('a9b50305-6225-7d70-faec-60180aae08cc','920ed607-4a99-1bc8-930d-60180a7c44f1','b742e7ee-1eaa-6de2-be09-6017ca43a204',80,'2021-02-01 14:04:44',0),('a9b70e53-3bde-ef47-dc56-601809724ed3','59940d2d-46d1-e3fa-8112-60180940c994','62d0a189-4595-a430-d15c-6017cacc3713',80,'2021-02-01 14:02:35',0),('a9bd2351-55c6-784b-d754-6018100fb374','bef307c8-d095-6341-6352-601810875b07','8a520e16-b539-983c-b9bd-6017cab11234',75,'2021-02-01 14:31:59',0),('a9c6cbeb-68e4-024c-0cd8-6018105de906','145ce98a-0b57-3e66-8f20-60180fdba411','c840be03-804c-7707-c944-6017ca14f4b9',75,'2021-02-01 14:29:35',0),('a9d40849-f031-08dc-288b-60180fbec43c','52c526cb-9c4a-23b6-b39f-60180f9089b2','af785830-9b95-6e64-4175-6017ca031673',80,'2021-02-01 14:26:44',0),('a9f2bb0f-2b8d-4dd1-c631-6018097122a1','59940d2d-46d1-e3fa-8112-60180940c994','67f497bf-cd72-1d8a-453a-6017ca594a2b',-99,'2021-02-01 14:02:35',0),('a9f96ea6-ea09-2999-c70b-60180ac3ceda','920ed607-4a99-1bc8-930d-60180a7c44f1','1885785c-ffcf-a049-a431-6017ca33ab98',80,'2021-02-01 14:04:44',0),('aa2b41d2-2534-e4b7-6e33-6018098af367','59940d2d-46d1-e3fa-8112-60180940c994','61b172af-81fb-c66f-3fb4-6017ca4545b2',80,'2021-02-01 14:02:35',0),('aa49c914-50fb-9044-1213-6018096241fc','59940d2d-46d1-e3fa-8112-60180940c994','6ac9b95e-2b95-8b91-edb2-6017cafd2c72',89,'2021-02-01 14:02:35',0),('aa5a9c69-21f5-54f7-0b68-601811fac784','a0b17db8-3562-2520-7a5b-60181003f945','8a0bec92-fd8e-4b45-cf5c-6017ca24ca89',-98,'2021-02-01 14:33:27',0),('aa7100fa-b8c7-97d3-73f4-60180f98b52e','52c526cb-9c4a-23b6-b39f-60180f9089b2','8ba34aa2-a2dd-fb51-3753-6017cad94619',80,'2021-02-01 14:26:44',0),('aa7105f5-c0c6-7b19-dffe-601810484d96','bef307c8-d095-6341-6352-601810875b07','e1123a71-9f1e-4905-cf20-6017caacf73b',-98,'2021-02-01 14:31:59',0),('aa858dd8-0798-a1d5-8e18-60180f0cbe2a','52c526cb-9c4a-23b6-b39f-60180f9089b2','b231fc57-fb19-a4fb-3c2d-6017ca35b664',-99,'2021-02-01 14:26:44',0),('aa8d939e-7e5a-9a0f-8655-601810f5df5c','bef307c8-d095-6341-6352-601810875b07','626d8d6b-2260-4f45-9d57-6017ca9cec93',75,'2021-02-01 14:31:59',0),('aa9813fa-74ef-bbad-a38c-6018095cf8d3','59940d2d-46d1-e3fa-8112-60180940c994','70ca3409-a115-5547-4672-6017ca512a79',80,'2021-02-01 14:02:35',0),('aac6b399-0b6c-692e-009e-601810338070','bef307c8-d095-6341-6352-601810875b07','e336c29d-2d18-451f-7bbc-6017ca49e15c',75,'2021-02-01 14:31:59',0),('aac961c5-579e-fe09-72c2-6018097e9d26','59940d2d-46d1-e3fa-8112-60180940c994','6fec0d36-5a67-8238-f2ac-6017cae902b8',80,'2021-02-01 14:02:35',0),('aaee5227-39b3-1fb0-829a-601810189a06','145ce98a-0b57-3e66-8f20-60180fdba411','91ed6183-922d-c827-70cc-6017ca0f80a2',-98,'2021-02-01 14:29:35',0),('aafa68bc-8cc0-a40b-de11-60180f2fdc86','52c526cb-9c4a-23b6-b39f-60180f9089b2','aecb124c-09c7-d9f6-442e-6017ca33edc8',80,'2021-02-01 14:26:44',0),('ab05052f-4e9d-976d-7b2f-6018112949ee','a0b17db8-3562-2520-7a5b-60181003f945','d71fb77c-48a2-8f60-7e1b-6017ca5bccba',75,'2021-02-01 14:33:27',0),('ab0535da-3f6e-75a6-213f-601809ed6c30','59940d2d-46d1-e3fa-8112-60180940c994','72d488f9-c28c-d618-901e-6017ca7cd835',80,'2021-02-01 14:02:35',0),('ab0a0d79-9cb3-0a7a-ecd8-60181040b5a8','bef307c8-d095-6341-6352-601810875b07','d6e4bfa4-cbed-cdd3-c897-6017ca052bde',75,'2021-02-01 14:31:59',0),('ab2ab836-cd5a-2cb2-df4b-60180a341c04','920ed607-4a99-1bc8-930d-60180a7c44f1','17e1ca17-e91d-6b29-f43b-6017ca7b4f1f',80,'2021-02-01 14:04:44',0),('ab3b30ba-490e-8a87-74eb-601809c13255','59940d2d-46d1-e3fa-8112-60180940c994','720128c8-49a7-b466-9bc7-6017ca049579',-99,'2021-02-01 14:02:35',0),('ab48a9b5-29f3-a592-72a2-601810bc8334','bef307c8-d095-6341-6352-601810875b07','e2da0686-74cf-c6c2-177d-6017ca10edf2',75,'2021-02-01 14:31:59',0),('ab50a47f-b75d-1535-e9aa-601810d387b0','145ce98a-0b57-3e66-8f20-60180fdba411','2efe11d5-6790-bf1f-8663-6017cad8523d',75,'2021-02-01 14:29:35',0),('ab5cbd47-bd12-cdd2-492c-601811eb0633','a0b17db8-3562-2520-7a5b-60181003f945','8e8d16ca-188e-5eb5-00d6-6017caa388ea',75,'2021-02-01 14:33:27',0),('ab8ff0f3-5ae0-5047-2f34-601810085e2d','bef307c8-d095-6341-6352-601810875b07','52e18872-14a7-3b94-8d54-6017ca3a8f42',89,'2021-02-01 14:31:59',0),('ab963a17-1d63-13bc-3cfe-601810a0ae77','145ce98a-0b57-3e66-8f20-60180fdba411','9634bb2c-d95f-d6c4-301c-6017ca77e3e4',75,'2021-02-01 14:29:35',0),('ab999823-1482-9dea-c12f-60180a8e50ef','920ed607-4a99-1bc8-930d-60180a7c44f1','1a3588bc-571c-f7ab-7799-6017cab6e09b',80,'2021-02-01 14:04:44',0),('abd0c266-1721-20a7-0b68-601810db9ad7','bef307c8-d095-6341-6352-601810875b07','e5d46f78-d381-0c69-bf09-6017caaa5a9a',75,'2021-02-01 14:31:59',0),('abdd077e-9c17-2ebd-ab9e-6018105be6e1','bef307c8-d095-6341-6352-601810875b07','67f497bf-cd72-1d8a-453a-6017ca594a2b',-99,'2021-02-01 14:31:59',0),('abe6af09-9eb9-999f-d746-6018097d85b5','59940d2d-46d1-e3fa-8112-60180940c994','6ed87ff1-dc29-9718-c8a2-6017cac6f7f7',80,'2021-02-01 14:02:35',0),('abf347d6-877b-9882-22fe-60180f027ca2','52c526cb-9c4a-23b6-b39f-60180f9089b2','cb26adac-ed61-d3a3-7c6e-6017ca433812',89,'2021-02-01 14:26:44',0),('ac025782-57a3-5a44-0ee8-60180a323fe2','920ed607-4a99-1bc8-930d-60180a7c44f1','198739f4-0bbd-3331-cf7a-6017ca5f75d9',-99,'2021-02-01 14:04:44',0),('ac500025-0d5d-566b-34e9-60180962483b','54779abd-cf10-d4b8-3946-601809414e38','c888f7ec-948e-d52b-3604-6017ca473b89',90,'2021-02-01 14:00:42',0),('ac5f0bea-51e8-4892-720f-601809344f0a','54779abd-cf10-d4b8-3946-601809414e38','1210b8d7-8527-cfab-15ab-6017ca872b87',90,'2021-02-01 14:00:42',0),('ac72dae5-8088-2bf0-2723-60180fa09dce','52c526cb-9c4a-23b6-b39f-60180f9089b2','d1b4b2de-3c43-1cf8-1126-6017caf932db',80,'2021-02-01 14:26:44',0),('aca224ef-d454-7d69-974b-601810105bce','145ce98a-0b57-3e66-8f20-60180fdba411','331cee62-76bf-b82b-c04b-6017caf9b89c',75,'2021-02-01 14:29:35',0),('acc227b1-8e1e-1625-7172-60180f0f257a','52c526cb-9c4a-23b6-b39f-60180f9089b2','d10ba092-b594-4c74-4464-6017cad87ad6',80,'2021-02-01 14:26:44',0),('accf7e69-af31-5d0f-df12-60181098b80f','bef307c8-d095-6341-6352-601810875b07','e40e7e28-78b1-0bae-fa91-6017caee97f4',-99,'2021-02-01 14:31:59',0),('acddf11f-7a01-c32f-ff27-6018103008a6','145ce98a-0b57-3e66-8f20-60180fdba411','947ad549-f887-3d63-b7a7-6017cad7458e',75,'2021-02-01 14:29:35',0),('ad0232bb-20e9-c644-ba3c-6018114f46b0','a0b17db8-3562-2520-7a5b-60181003f945','8dbe583f-f32d-fe7e-36ab-6017ca55dcb4',75,'2021-02-01 14:33:27',0),('ad2f6e80-1939-7381-f30e-60180f4a4a1b','52c526cb-9c4a-23b6-b39f-60180f9089b2','d3178c03-b2e4-a425-9eca-6017ca72eb45',80,'2021-02-01 14:26:44',0),('ad4fe49f-ef8c-b7b4-a9d0-60180a1ac215','920ed607-4a99-1bc8-930d-60180a7c44f1','175189ff-4043-fa73-2651-6017ca9d5d05',80,'2021-02-01 14:04:44',0),('ad55fd93-060b-1afe-3597-6018106c086f','bef307c8-d095-6341-6352-601810875b07','e27db9aa-0c69-f8be-e7d4-6017ca4a1b9c',75,'2021-02-01 14:31:59',0),('ad64c6df-1967-cc0e-0e3c-60181074f1a2','bef307c8-d095-6341-6352-601810875b07','55416b30-5fa8-b4e0-0a54-6017ca6b9792',75,'2021-02-01 14:31:59',0),('ad8bfb05-0317-9af1-a596-60180972cc1e','59940d2d-46d1-e3fa-8112-60180940c994','73b832d2-55fa-46c9-f776-6017caf638a9',-99,'2021-02-01 14:02:35',0),('adb740cb-8bed-7dc0-2c0f-60180a4a2e63','920ed607-4a99-1bc8-930d-60180a7c44f1','1aef1fca-33a2-3d5d-9453-6017ca899039',-99,'2021-02-01 14:04:44',0),('adce02e9-ce88-67e9-5f7b-6018102b7d54','bef307c8-d095-6341-6352-601810875b07','54e1674a-2c22-cc1d-10f2-6017cace8b60',75,'2021-02-01 14:31:59',0),('add25fb9-4f1e-5fa5-0232-60180f985e01','52c526cb-9c4a-23b6-b39f-60180f9089b2','d23c0c73-ef18-7df2-801f-6017cae194f6',-99,'2021-02-01 14:26:44',0),('add3b82c-ea2f-a6a5-af05-601811811afb','a0b17db8-3562-2520-7a5b-60181003f945','91b62206-bc91-ce7c-4c8f-6017ca594770',75,'2021-02-01 14:33:27',0),('adf57328-599a-44b5-cda2-601810462a6f','bef307c8-d095-6341-6352-601810875b07','e6ed1604-861b-1b53-e18d-6017ca9f3220',-99,'2021-02-01 14:31:59',0),('ae200954-4ea5-5c59-db0d-601810cb987e','145ce98a-0b57-3e66-8f20-60180fdba411','9876e9d1-2bff-c6c5-6d01-6017cade8e1f',75,'2021-02-01 14:29:35',0),('ae46152d-9f02-d786-1ddb-601810d1b097','bef307c8-d095-6341-6352-601810875b07','5759d198-8f17-5f9b-59c3-6017ca131eaa',75,'2021-02-01 14:31:59',0),('ae71f4c1-6c2a-e774-7917-60180a8d6450','920ed607-4a99-1bc8-930d-60180a7c44f1','168d6de1-a01a-c7ed-0e6b-6017ca961af0',80,'2021-02-01 14:04:44',0),('ae846760-2ad2-2213-b72f-60180fcf378e','52c526cb-9c4a-23b6-b39f-60180f9089b2','cf98c060-aa97-69a2-bfb8-6017caf73ecc',80,'2021-02-01 14:26:44',0),('aeddea1b-3cad-53b2-b951-601810539a6f','145ce98a-0b57-3e66-8f20-60180fdba411','324c45e0-5b40-9a13-bba7-6017ca617468',-99,'2021-02-01 14:29:35',0),('aefd1ae2-91c4-1b24-a2fd-60180f74f148','52c526cb-9c4a-23b6-b39f-60180f9089b2','d3a03f58-2d84-2e3c-5b75-6017ca7a050c',-99,'2021-02-01 14:26:44',0),('af286806-e4a9-e6b5-4f60-601810ade877','bef307c8-d095-6341-6352-601810875b07','56a8406f-8f35-19fa-f417-6017caf288a8',-99,'2021-02-01 14:31:59',0),('af396a73-1129-1cfb-7b1c-601810e3ee7e','bef307c8-d095-6341-6352-601810875b07','e206debd-89f8-a796-b4da-6017ca4eff96',75,'2021-02-01 14:31:59',0),('af3c1c05-5d8d-66cc-f9f8-60180a796b5d','920ed607-4a99-1bc8-930d-60180a7c44f1','a6f22aa9-813e-d48d-cbcf-6017cafe3c98',89,'2021-02-01 14:04:44',0),('af3d22d7-403c-3754-ff7c-60181061303d','145ce98a-0b57-3e66-8f20-60180fdba411','97b2709d-df39-baf3-964d-6017ca844416',-99,'2021-02-01 14:29:35',0),('af49c929-bcbd-5145-9090-601811e3ef84','a0b17db8-3562-2520-7a5b-60181003f945','9023fcd5-063f-1f28-bab7-6017caf948ae',-99,'2021-02-01 14:33:27',0),('af9f3d4b-3236-0cee-e2bb-60180a29721c','920ed607-4a99-1bc8-930d-60180a7c44f1','ab02cc22-401e-4f0b-5180-6017ca6944bb',80,'2021-02-01 14:04:44',0),('afa03146-d05d-817d-dfb9-601810fe6956','bef307c8-d095-6341-6352-601810875b07','54679895-07c8-f76b-43d1-6017ca72a27a',75,'2021-02-01 14:31:59',0),('afb60381-62b6-3d82-d356-6018098d0b4d','54779abd-cf10-d4b8-3946-601809414e38','193e9c15-b4d4-c673-1b4b-6017ca498afe',90,'2021-02-01 14:00:42',0),('afc4ae4e-3467-3d53-7e73-601810e5b3da','145ce98a-0b57-3e66-8f20-60180fdba411','93d8cd13-cf78-d508-6128-6017ca32e37c',75,'2021-02-01 14:29:35',0),('afcc6c54-cf7a-180a-6efb-6018103d4f66','bef307c8-d095-6341-6352-601810875b07','d3d750bd-c58c-c030-00d9-6017ca19f0ac',-98,'2021-02-01 14:31:59',0),('afcde5f2-4996-1fa7-664a-601811747d9f','a0b17db8-3562-2520-7a5b-60181003f945','8c53c744-e17b-6c7c-0ebc-6017cad02aed',75,'2021-02-01 14:33:27',0),('afd111c9-0f3d-2ca9-9a84-60180feac3dd','52c526cb-9c4a-23b6-b39f-60180f9089b2','cdae776a-3357-3fc3-e44d-6017ca2c967b',80,'2021-02-01 14:26:44',0),('afd99c7e-ed42-0687-3c4f-60180a88f888','920ed607-4a99-1bc8-930d-60180a7c44f1','aa06a022-eebd-88bd-7c29-6017ca1a6417',80,'2021-02-01 14:04:44',0),('aff901f4-2788-4d41-49b2-60180ab9e48a','920ed607-4a99-1bc8-930d-60180a7c44f1','baed9da3-990f-9c19-73a4-6017ca3443a1',-99,'2021-02-01 14:04:44',0),('b02e532f-dbda-0f97-bd49-6018107d3836','bef307c8-d095-6341-6352-601810875b07','5834a572-d414-ba60-078a-6017ca451330',-99,'2021-02-01 14:31:59',0),('b04c9952-874f-d98d-f9d8-601810a6b987','bef307c8-d095-6341-6352-601810875b07','da05b32a-31d0-ce97-2967-6017caed3d34',75,'2021-02-01 14:31:59',0),('b058915c-6cea-f2f2-bcb4-60181057554a','145ce98a-0b57-3e66-8f20-60180fdba411','2e23ea98-4f52-4fe8-0c62-6017ca933a95',75,'2021-02-01 14:29:35',0),('b0647dcf-812a-b79d-96ae-60180f818b39','52c526cb-9c4a-23b6-b39f-60180f9089b2','97f22f4d-0e7c-61e6-6799-6017cac0b6fb',-98,'2021-02-01 14:26:44',0),('b09fb163-cabb-1eed-221b-60180a92a2b4','920ed607-4a99-1bc8-930d-60180a7c44f1','aceda745-edf4-6592-0ca7-6017ca7c89f8',80,'2021-02-01 14:04:44',0),('b0a25009-5f26-4840-c92b-601811bf8f05','a0b17db8-3562-2520-7a5b-60181003f945','927431e0-c275-5a96-5d0b-6017cabe20e7',-99,'2021-02-01 14:33:27',0),('b0c65b97-cb0f-114c-6302-601810ee88de','bef307c8-d095-6341-6352-601810875b07','53ce4002-765c-019d-925e-6017ca6b0b89',75,'2021-02-01 14:31:59',0),('b0cc7acd-f497-a913-74fd-601810c79103','145ce98a-0b57-3e66-8f20-60180fdba411','997bc36e-3b1a-b7f4-8f68-6017caa01d84',-99,'2021-02-01 14:29:35',0),('b0eeb1c6-6a8c-1dcc-f70a-60180a96b642','920ed607-4a99-1bc8-930d-60180a7c44f1','ac25d4dd-6de5-9c2a-8b4f-6017ca9dc9b7',-99,'2021-02-01 14:04:44',0),('b1114df6-49b6-0c5a-5e7d-60180fdc4a31','52c526cb-9c4a-23b6-b39f-60180f9089b2','9c902b35-c1f4-32bf-0803-6017ca926dbe',80,'2021-02-01 14:26:44',0),('b118f46a-3f08-6df1-695d-60180ac194f8','920ed607-4a99-1bc8-930d-60180a7c44f1','a8bb31f6-150f-ff3f-bef0-6017ca208971',80,'2021-02-01 14:04:44',0),('b1308212-3434-7f1e-7f6d-601810a3e2c9','bef307c8-d095-6341-6352-601810875b07','6d9d1858-3cb1-1bf8-47de-6017caecbe90',89,'2021-02-01 14:31:59',0),('b146c688-6ba1-3b20-0e4c-601809564da5','59940d2d-46d1-e3fa-8112-60180940c994','6d78d2e2-cf60-ad18-ccba-6017cab10c1c',80,'2021-02-01 14:02:35',0),('b1626397-dc6d-2478-2b40-60180a2b3900','920ed607-4a99-1bc8-930d-60180a7c44f1','ae8ad6ad-4263-f441-956e-6017ca7d5153',-99,'2021-02-01 14:04:44',0),('b163ebca-b30c-e692-9e94-601810ce27ff','145ce98a-0b57-3e66-8f20-60180fdba411','92b903d6-cb45-ba2b-3c16-6017caf5e9e9',75,'2021-02-01 14:29:35',0),('b17f6067-1e69-3079-b026-6018105866ca','145ce98a-0b57-3e66-8f20-60180fdba411','33998e3d-e989-c679-1dd4-6017ca3d2cc8',-99,'2021-02-01 14:29:35',0),('b18b5304-959d-7879-bde8-60180f3ea24c','52c526cb-9c4a-23b6-b39f-60180f9089b2','9b63b5a6-2600-6a71-577a-6017ca89ae0e',80,'2021-02-01 14:26:44',0),('b1a716e8-0249-bd23-77fc-601811193a46','a0b17db8-3562-2520-7a5b-60181003f945','8b8e0a99-3ec4-6d2b-4222-6017caf19b1e',75,'2021-02-01 14:33:27',0),('b1b65998-15d6-205c-1073-60180a4434a7','920ed607-4a99-1bc8-930d-60180a7c44f1','a7a9f1ad-be16-ee19-451b-6017ca00687d',80,'2021-02-01 14:04:44',0),('b1b67165-7dd8-b14e-eb5d-601810b102b5','bef307c8-d095-6341-6352-601810875b07','70caaca7-26e2-1098-1756-6017ca845ecf',75,'2021-02-01 14:31:59',0),('b1ba2469-a00a-84dc-9f36-60181009f87e','bef307c8-d095-6341-6352-601810875b07','d6db73f5-8776-66f9-6c1d-6017caeb8262',75,'2021-02-01 14:31:59',0),('b22a86d2-9042-c831-292e-60180f0f921d','52c526cb-9c4a-23b6-b39f-60180f9089b2','9dc29313-6fce-8cc2-bab3-6017ca93cb71',80,'2021-02-01 14:26:44',0),('b2599345-270f-7af8-2d79-60181019258d','bef307c8-d095-6341-6352-601810875b07','6ffacbb5-5dca-0c27-5fae-6017ca1495ba',75,'2021-02-01 14:31:59',0),('b27e57e6-d982-611f-68c8-60180a3514af','920ed607-4a99-1bc8-930d-60180a7c44f1','41495400-5f9b-80d4-7075-6017ca472698',89,'2021-02-01 14:04:44',0),('b29aa38e-7bdf-8265-cf28-60180ff519d1','52c526cb-9c4a-23b6-b39f-60180f9089b2','9d2620e1-e27a-9565-dbda-6017ca3ffa98',-99,'2021-02-01 14:26:44',0),('b2c87d35-bfe7-e219-3b35-601810f65d70','bef307c8-d095-6341-6352-601810875b07','71fc608d-8555-80f2-5372-6017cae78ce3',75,'2021-02-01 14:31:59',0),('b2cd4751-e08f-3858-f83e-6018117960f4','a0b17db8-3562-2520-7a5b-60181003f945','1bf7977f-5bc1-935c-5f55-6017ca47912c',-98,'2021-02-01 14:33:27',0),('b2da2235-bf27-e663-d776-60180afeac6f','920ed607-4a99-1bc8-930d-60180a7c44f1','469f31e2-b7bb-4b8b-6061-6017caccb79c',80,'2021-02-01 14:04:44',0),('b307fb68-3d6e-e7ce-8dee-601810386f56','145ce98a-0b57-3e66-8f20-60180fdba411','a49603d3-7f15-abda-b0d5-6017ca7fcdde',-98,'2021-02-01 14:29:35',0),('b32915ed-28c9-d578-4d48-60180a2ea486','920ed607-4a99-1bc8-930d-60180a7c44f1','44f7f214-0eda-d54d-eb23-6017ca98b487',80,'2021-02-01 14:04:44',0),('b352cd01-5c6a-a858-295d-601810fa86c8','bef307c8-d095-6341-6352-601810875b07','71456b4c-71e5-7e70-8411-6017caf4f852',-99,'2021-02-01 14:31:59',0),('b3569d4c-5814-bf19-b65d-60180afa7227','920ed607-4a99-1bc8-930d-60180a7c44f1','48198c30-2080-5ee5-7b6e-6017cae64d7f',80,'2021-02-01 14:04:44',0),('b36c438a-e819-3ea6-fc0d-60180fe0439d','52c526cb-9c4a-23b6-b39f-60180f9089b2','99735554-9a7d-a7af-c53e-6017ca281ffa',80,'2021-02-01 14:26:44',0),('b3890dcd-2c3b-4745-1cf4-601810e6b22e','bef307c8-d095-6341-6352-601810875b07','daddf798-fbca-a01d-92af-6017ca71624e',75,'2021-02-01 14:31:59',0),('b38a7916-0a2c-82ea-6694-60180a160b95','920ed607-4a99-1bc8-930d-60180a7c44f1','473598c4-45a3-b853-34f1-6017cab30d9f',-99,'2021-02-01 14:04:44',0),('b38c1d97-e76f-2c24-784f-60181011fcba','145ce98a-0b57-3e66-8f20-60180fdba411','2d2747b1-a21d-0f24-7ad8-6017cac0d820',75,'2021-02-01 14:29:35',0),('b38c2be7-0c5c-edd9-a49c-60181134ea6a','a0b17db8-3562-2520-7a5b-60181003f945','21b5d1eb-9d8b-387e-0076-6017ca4bb706',75,'2021-02-01 14:33:27',0),('b3ae21da-a5b1-0272-f044-601810151027','bef307c8-d095-6341-6352-601810875b07','6f4ed682-115a-e071-aa74-6017caf739a3',75,'2021-02-01 14:31:59',0),('b3c74585-d4ac-a41c-4ff1-60180fe699ae','52c526cb-9c4a-23b6-b39f-60180f9089b2','9e6be21b-d7c9-3519-4dfc-6017ca2292c5',-99,'2021-02-01 14:26:44',0),('b3de750f-ee07-28fb-6a10-601810241dbc','145ce98a-0b57-3e66-8f20-60180fdba411','a96a916f-2bdc-49ea-aa25-6017cac6a313',75,'2021-02-01 14:29:35',0),('b41201b3-afe8-5d2c-6070-601811667ee1','a0b17db8-3562-2520-7a5b-60181003f945','d9109e29-93c3-3b11-a26e-6017ca4c8c53',75,'2021-02-01 14:33:27',0),('b41b9cba-12ca-26a6-4004-6018114eb765','a0b17db8-3562-2520-7a5b-60181003f945','20d92e13-2707-fbfc-6aae-6017ca15be16',75,'2021-02-01 14:33:27',0),('b4465e96-a23f-d367-2e57-60180f0ee4e4','52c526cb-9c4a-23b6-b39f-60180f9089b2','98bae92f-53aa-2a9a-f0ae-6017ca2d9978',80,'2021-02-01 14:26:44',0),('b446b5bb-5e34-92a8-c990-60180adad08a','920ed607-4a99-1bc8-930d-60180a7c44f1','444a0bbf-db13-9408-2088-6017ca7eb004',80,'2021-02-01 14:04:44',0),('b44f04bb-5b9c-4832-b598-60180a144729','920ed607-4a99-1bc8-930d-60180a7c44f1','b6911c5b-48f3-c461-d700-6017ca6f7761',80,'2021-02-01 14:04:44',0),('b4530e7d-b195-43d2-ff4b-601810f84ff0','bef307c8-d095-6341-6352-601810875b07','d8ef97ea-8348-5f56-97ad-6017ca6a0460',75,'2021-02-01 14:31:59',0),('b459322d-889b-1693-bb38-601810c97cdc','bef307c8-d095-6341-6352-601810875b07','74193c93-40a8-b4b3-61b6-6017cabdd106',-99,'2021-02-01 14:31:59',0),('b4ab1e53-6998-ba78-4c4b-60181068703f','bef307c8-d095-6341-6352-601810875b07','6ea461d8-ddf8-92b2-3408-6017ca96a386',75,'2021-02-01 14:31:59',0),('b4bf296d-c56f-a1b2-b6af-60180a5e1bd8','920ed607-4a99-1bc8-930d-60180a7c44f1','48c80856-4f90-c906-1c47-6017cac2c696',-99,'2021-02-01 14:04:44',0),('b4eddc3d-5e2c-c287-3fe1-6018102fcf46','bef307c8-d095-6341-6352-601810875b07','da54274e-8c18-2757-f4a0-6017caf8249a',-99,'2021-02-01 14:31:59',0),('b4efc51b-7923-60a7-ccfc-60180f45324a','52c526cb-9c4a-23b6-b39f-60180f9089b2','bc5c5ae8-69e2-79f1-be97-6017ca327292',-98,'2021-02-01 14:26:44',0),('b5095003-7be6-8a09-122c-60180aaf94cb','920ed607-4a99-1bc8-930d-60180a7c44f1','4392f18b-7465-ffd9-44d5-6017ca615e1a',80,'2021-02-01 14:04:44',0),('b528347b-31b9-ea92-2f70-601810111a94','bef307c8-d095-6341-6352-601810875b07','e2bc5387-7429-ab0a-3d69-6017ca359d7b',-98,'2021-02-01 14:31:59',0),('b52f1acc-7fd6-4027-a05e-601811e76b83','a0b17db8-3562-2520-7a5b-60181003f945','234f3db7-20b3-d6f5-e7b8-6017caa23e45',75,'2021-02-01 14:33:27',0),('b5627c8e-2a48-bd9a-2c5e-60180ab563b0','920ed607-4a99-1bc8-930d-60180a7c44f1','c26ff4f5-0b2f-abe7-b877-6017cae0cd05',-98,'2021-02-01 14:04:44',0),('b5771a82-eaca-23bc-b7b6-601810e3839d','145ce98a-0b57-3e66-8f20-60180fdba411','a8a24c95-1318-6fc6-2eba-6017ca621c60',75,'2021-02-01 14:29:35',0),('b5779a76-fd09-98aa-a3ba-60180f92950c','52c526cb-9c4a-23b6-b39f-60180f9089b2','c0d49832-2531-68de-84ac-6017cabd7e17',80,'2021-02-01 14:26:44',0),('b57a132e-df0f-8e97-eb3d-601810d5b010','bef307c8-d095-6341-6352-601810875b07','e5173f3f-76a1-cf58-1013-6017cae80777',75,'2021-02-01 14:31:59',0),('b5826d37-a3fb-21b1-a52c-601810f955e8','145ce98a-0b57-3e66-8f20-60180fdba411','f2e8e852-51ce-32b0-7d1a-6017ca06e346',-98,'2021-02-01 14:29:35',0),('b59f1854-5455-c3b7-ec67-601811d9245a','a0b17db8-3562-2520-7a5b-60181003f945','221b4606-d71e-4b39-f8d1-6017ca0185fa',-99,'2021-02-01 14:33:27',0),('b5c8c7b7-b840-36df-55db-60180a46546a','920ed607-4a99-1bc8-930d-60180a7c44f1','c77cdbff-3ff2-9879-429b-6017ca36a710',80,'2021-02-01 14:04:44',0),('b5db0be3-ccad-e866-833c-60181019566e','bef307c8-d095-6341-6352-601810875b07','d60ff063-6f4a-4ed7-4dae-6017ca3f6b87',75,'2021-02-01 14:31:59',0),('b5e2095f-42d6-6fec-fc38-60180f984671','52c526cb-9c4a-23b6-b39f-60180f9089b2','8f62e502-a51a-1dbf-4c0e-6017cabe0b1a',80,'2021-02-01 14:26:44',0),('b609b4b3-92ef-b9fa-562c-6018106c9384','bef307c8-d095-6341-6352-601810875b07','e4a782d6-f3e0-5420-7aa0-6017ca7dfddb',75,'2021-02-01 14:31:59',0),('b61afceb-1e2d-f639-21a1-60180ab2f0ba','920ed607-4a99-1bc8-930d-60180a7c44f1','c653cd76-f2b1-cf18-5f84-6017cae22650',80,'2021-02-01 14:04:44',0),('b640ba0b-7ef2-6839-9ab1-60180afcb922','920ed607-4a99-1bc8-930d-60180a7c44f1','c9ed4ae1-e5d0-dc21-67ac-6017ca672b32',80,'2021-02-01 14:04:44',0),('b6749fc3-ef91-c34b-888b-60180f431d7c','52c526cb-9c4a-23b6-b39f-60180f9089b2','c03fe354-e2f4-98ae-d59a-6017ca91e9d3',80,'2021-02-01 14:26:44',0),('b68eb103-74b7-e18a-f48b-6018100846e3','bef307c8-d095-6341-6352-601810875b07','e5e30ecd-895c-7f29-b5f7-6017ca1db364',75,'2021-02-01 14:31:59',0),('b6925863-da71-8175-8cfa-6018114359bc','a0b17db8-3562-2520-7a5b-60181003f945','1fd0db20-6064-0513-4ea9-6017ca0cc94f',75,'2021-02-01 14:33:27',0),('b6a56b36-083a-e9f1-fdb2-60180a8b6f1f','920ed607-4a99-1bc8-930d-60180a7c44f1','c888f7ec-948e-d52b-3604-6017ca473b89',-99,'2021-02-01 14:04:44',0),('b6c52e02-c201-f7d6-98cb-601810f420ea','bef307c8-d095-6341-6352-601810875b07','db361441-01f3-a76b-d5f3-6017cafe119c',-99,'2021-02-01 14:31:59',0),('b6d88231-4db5-e710-a76e-601810ef4171','145ce98a-0b57-3e66-8f20-60180fdba411','abbf2bfc-ea68-ef97-1d5a-6017ca3f28ba',75,'2021-02-01 14:29:35',0),('b6dd0616-ed9e-9fb4-4346-60181030aae1','145ce98a-0b57-3e66-8f20-60180fdba411','d10ba092-b594-4c74-4464-6017cad87ad6',75,'2021-02-01 14:29:35',0),('b6ef3f2f-25bd-40fb-1d94-601810d4bb09','bef307c8-d095-6341-6352-601810875b07','e57cbf72-739f-a668-7683-6017cae2687a',-99,'2021-02-01 14:31:59',0),('b7039f9e-5427-9611-7217-60180ab05dc0','920ed607-4a99-1bc8-930d-60180a7c44f1','c532c07f-9fe7-3f2f-8a5f-6017cad82dab',80,'2021-02-01 14:04:44',0),('b71dcc06-694f-2aef-3cbe-60180fa92b2a','52c526cb-9c4a-23b6-b39f-60180f9089b2','c38d217e-6736-c873-0d76-6017ca449eb3',80,'2021-02-01 14:26:44',0),('b73d49e7-e2c0-4edd-eb3a-601811f865ed','a0b17db8-3562-2520-7a5b-60181003f945','2406bc8f-4929-38a5-9f9f-6017ca6c2433',-99,'2021-02-01 14:33:27',0),('b7463548-5245-fa80-ffd3-60180ab9acdc','920ed607-4a99-1bc8-930d-60180a7c44f1','ca9243e9-0177-e253-d4db-6017cae7ea3f',-99,'2021-02-01 14:04:44',0),('b7728f1d-f9be-960a-f518-601810528deb','bef307c8-d095-6341-6352-601810875b07','e3eed07f-5bb3-2703-e548-6017caddebbf',75,'2021-02-01 14:31:59',0),('b795c171-8fe3-1b67-fb11-60181175ac5c','a0b17db8-3562-2520-7a5b-60181003f945','1e5f2892-a756-0832-4a6e-6017caf95bd8',75,'2021-02-01 14:33:27',0),('b7a090f0-4b17-564f-393d-6018103c73b5','145ce98a-0b57-3e66-8f20-60180fdba411','aae46ef4-441b-7567-6a4b-6017ca26f182',-99,'2021-02-01 14:29:35',0),('b7a58a07-362f-bd55-f8a5-601810b2a129','bef307c8-d095-6341-6352-601810875b07','d57a9815-b8fa-f92d-8740-6017ca2996b4',75,'2021-02-01 14:31:59',0),('b7b17fe1-22df-ee8f-2162-60180fde4d65','52c526cb-9c4a-23b6-b39f-60180f9089b2','c1e1203c-3572-0db8-24e2-6017ca610d0c',-99,'2021-02-01 14:26:44',0),('b7b8b106-12fb-00f0-b47c-60180ab664c3','920ed607-4a99-1bc8-930d-60180a7c44f1','c4858000-fe1e-b876-5d40-6017ca89c40a',80,'2021-02-01 14:04:44',0),('b7c20a3e-84d2-807d-85c8-60180a84fcb2','920ed607-4a99-1bc8-930d-60180a7c44f1','254fc6ba-64ef-df4a-d53f-6017ca814e78',-98,'2021-02-01 14:04:44',0),('b7e6dc73-bcf0-3b4b-f0ea-601810f962c6','bef307c8-d095-6341-6352-601810875b07','e72ba550-9aea-e958-95e8-6017ca63fa05',-99,'2021-02-01 14:31:59',0),('b80f6044-9ced-1a62-58e7-60180a510ed7','920ed607-4a99-1bc8-930d-60180a7c44f1','e21f652f-6598-aa63-5104-6017ca3269cc',-98,'2021-02-01 14:04:44',0),('b830ba73-fa2c-e8e4-27d8-6018108c6c58','bef307c8-d095-6341-6352-601810875b07','e33de50b-0af6-759b-2e46-6017ca41bb50',75,'2021-02-01 14:31:59',0),('b842d8b6-3ea2-259e-0c27-60180ae533d4','920ed607-4a99-1bc8-930d-60180a7c44f1','e5a726b8-46e2-5577-6768-6017ca4e8709',80,'2021-02-01 14:04:44',0),('b84365e2-3873-a9c9-fe86-6018115c8d2f','a0b17db8-3562-2520-7a5b-60181003f945','b899af45-a8cb-564b-2b5d-6017caafa414',-98,'2021-02-01 14:33:27',0),('b863f0a2-9b47-f6e3-4a5a-60181087abb7','145ce98a-0b57-3e66-8f20-60180fdba411','2cd00441-6e8e-a148-477b-6017ca30432f',75,'2021-02-01 14:29:35',0),('b87a0df3-48dd-b63a-b387-6018109255e8','bef307c8-d095-6341-6352-601810875b07','2ea0f1e5-5ad1-9ed1-62be-6017cab19b3e',-98,'2021-02-01 14:31:59',0),('b884c1f0-679c-a556-42e7-60180a1b99ce','920ed607-4a99-1bc8-930d-60180a7c44f1','e4b06495-feb8-2d70-cb38-6017ca9b8502',80,'2021-02-01 14:04:44',0),('b8860d03-41c9-89f7-ff7e-601809cbd875','54779abd-cf10-d4b8-3946-601809414e38','1153fb10-28fd-a556-8e38-6017ca79a353',90,'2021-02-01 14:00:42',0),('b886e5c9-4286-cc91-9eef-60180ff2178e','52c526cb-9c4a-23b6-b39f-60180f9089b2','bee54d6c-3344-be7c-01e4-6017cabf69c7',80,'2021-02-01 14:26:44',0),('b8a80ad6-39ec-9b52-e6f4-6018103ef70e','bef307c8-d095-6341-6352-601810875b07','e5eb98c6-09e5-65bc-7b07-6017caf35be0',-98,'2021-02-01 14:31:59',0),('b8cf68ae-ae04-5cf1-80f9-60180ab82adc','920ed607-4a99-1bc8-930d-60180a7c44f1','e6c56d8e-33d3-8a8d-3b47-6017ca263dc6',80,'2021-02-01 14:04:44',0),('b8ebdddd-a318-1c9d-c262-601811291651','a0b17db8-3562-2520-7a5b-60181003f945','bc577676-7c95-b78d-df76-6017ca9b20dd',75,'2021-02-01 14:33:27',0),('b8edc992-6a58-f611-f2bf-60180a4bc8e8','920ed607-4a99-1bc8-930d-60180a7c44f1','e63b841e-387c-ad8e-8f4b-6017ca3c9896',-99,'2021-02-01 14:04:44',0),('b8f007e2-3258-17cd-6739-60180a4557df','920ed607-4a99-1bc8-930d-60180a7c44f1','a020d500-6246-3b1e-4d0d-6017ca57b752',80,'2021-02-01 14:04:44',0),('b8f93e17-22c3-03f8-6de6-601810a9f2ac','145ce98a-0b57-3e66-8f20-60180fdba411','a703c7b1-bdc0-8848-c82e-6017ca3a4705',75,'2021-02-01 14:29:35',0),('b9161fa4-8780-5210-ab3c-601810eb118d','bef307c8-d095-6341-6352-601810875b07','307a06a7-17d6-8be6-5b8d-6017ca1d1fe5',75,'2021-02-01 14:31:59',0),('b91a0dc9-c0a3-e2ed-9087-6018102f9d86','bef307c8-d095-6341-6352-601810875b07','61b172af-81fb-c66f-3fb4-6017ca4545b2',75,'2021-02-01 14:31:59',0),('b93d4575-2edf-d064-d427-60180fc04fea','52c526cb-9c4a-23b6-b39f-60180f9089b2','c4ba4945-bb22-2ce1-03e6-6017ca627fb1',-99,'2021-02-01 14:26:44',0),('b94b50bd-9736-efb2-55d6-60180a3efeac','920ed607-4a99-1bc8-930d-60180a7c44f1','e3f720d1-c9c2-381c-98d5-6017ca7e0a85',80,'2021-02-01 14:04:44',0),('b95764b6-4746-48b1-c2e9-60181022b20f','bef307c8-d095-6341-6352-601810875b07','ea20640d-5cb5-0ec5-e35a-6017ca8a8a15',75,'2021-02-01 14:31:59',0),('b978adf2-8f16-4864-51ac-601810a35a75','bef307c8-d095-6341-6352-601810875b07','300fc3b9-b50e-5fdc-1d14-6017cacc420b',75,'2021-02-01 14:31:59',0),('b990e7a7-0de3-140b-434f-60180a6852f9','920ed607-4a99-1bc8-930d-60180a7c44f1','e740cd02-ebce-f2e3-e4ff-6017ca03a2e5',-99,'2021-02-01 14:04:44',0),('b9a87dd8-efbf-8f7f-dbd3-601810afe93d','145ce98a-0b57-3e66-8f20-60180fdba411','ac9cd086-502b-675f-923d-6017ca9ae10e',-99,'2021-02-01 14:29:35',0),('b9bf9c39-28b3-02a7-5297-60180a7d0b5d','920ed607-4a99-1bc8-930d-60180a7c44f1','e344c340-e4e2-4505-54a2-6017ca5f2b7c',80,'2021-02-01 14:04:44',0),('b9c2c7bb-4315-7549-f006-60180f9d9ce4','52c526cb-9c4a-23b6-b39f-60180f9089b2','bd19cf98-97d8-2daf-1f6b-6017ca395562',80,'2021-02-01 14:26:44',0),('b9ec979c-d04a-029b-b3f0-60180a73a524','920ed607-4a99-1bc8-930d-60180a7c44f1','dc27b527-bed4-aea5-836c-6017ca6ad29e',-98,'2021-02-01 14:04:44',0),('b9f3f411-085c-05c9-5069-601810e498d6','bef307c8-d095-6341-6352-601810875b07','31869517-c36b-60a8-d27a-6017ca2d73ca',75,'2021-02-01 14:31:59',0),('ba0355e2-5330-f206-4098-6018113c8dcc','a0b17db8-3562-2520-7a5b-60181003f945','bb014dc7-231c-d3be-3127-6017ca522de8',75,'2021-02-01 14:33:27',0),('ba2df9c2-402d-2d65-1b28-60180a2fec31','920ed607-4a99-1bc8-930d-60180a7c44f1','e24cd46c-c7c0-b6e7-f8be-6017cadc5e71',80,'2021-02-01 14:04:44',0),('ba37f8d2-f9c6-47f2-3b4f-601810bed9f4','bef307c8-d095-6341-6352-601810875b07','e91c140d-d1a4-7a42-2181-6017cad6448e',75,'2021-02-01 14:31:59',0),('ba3e8c76-fecc-a7a1-e334-60181032af15','bef307c8-d095-6341-6352-601810875b07','30f90944-e730-df75-95e6-6017ca1fa55b',-99,'2021-02-01 14:31:59',0),('ba4b5f6c-c79e-52e8-31f4-60180ab4c1ce','920ed607-4a99-1bc8-930d-60180a7c44f1','e193cedb-c4ed-434d-40b7-6017cab333cc',80,'2021-02-01 14:04:44',0),('ba878813-6d03-de58-8488-60180ad4e104','920ed607-4a99-1bc8-930d-60180a7c44f1','e3d7c102-1126-6fe9-1677-6017ca809dba',80,'2021-02-01 14:04:44',0),('ba8de4d9-9e7d-5703-6d13-6018115cd2e7','a0b17db8-3562-2520-7a5b-60181003f945','beaed700-c854-1c4e-c41f-6017ca967318',75,'2021-02-01 14:33:27',0),('ba95e94f-e3d8-001c-a043-60180fddbecb','52c526cb-9c4a-23b6-b39f-60180f9089b2','c249c7e4-7796-6bf7-7a7b-6017ca2c5830',-98,'2021-02-01 14:26:44',0),('ba9b3786-ee0d-dd7a-315e-6018107c8c7f','145ce98a-0b57-3e66-8f20-60180fdba411','a5302dea-b8c6-d94c-ef60-6017ca19b99f',75,'2021-02-01 14:29:35',0),('bad736a8-207b-e061-05da-601810ea0d51','145ce98a-0b57-3e66-8f20-60180fdba411','1e1803a1-daa9-c147-059f-6017ca58540c',75,'2021-02-01 14:29:35',0),('bae28aff-b8fd-b604-2c02-60181013f977','bef307c8-d095-6341-6352-601810875b07','ece932f0-236d-af78-5fc3-6017ca39f7be',75,'2021-02-01 14:31:59',0),('baec2cf7-c93a-27c1-3c7a-6018104fdc6d','bef307c8-d095-6341-6352-601810875b07','2fc42adb-d386-a4c7-ec11-6017cae90eed',75,'2021-02-01 14:31:59',0),('bb0df48b-8e28-ab93-0d2d-60180a129fcc','920ed607-4a99-1bc8-930d-60180a7c44f1','e30b304e-5234-237f-21d2-6017cad23c56',-99,'2021-02-01 14:04:44',0),('bb17f059-5533-330c-0df9-60180fcabb01','52c526cb-9c4a-23b6-b39f-60180f9089b2','c6489af9-2211-2408-2dc5-6017ca8bcab5',80,'2021-02-01 14:26:44',0),('bb2c12bd-4204-51e9-8ae3-601811233bd5','a0b17db8-3562-2520-7a5b-60181003f945','bceb6bef-9e3e-2c85-bbac-6017cafb0acf',-99,'2021-02-01 14:33:27',0),('bb4be25e-9c13-f5ee-535d-60180a66ca70','920ed607-4a99-1bc8-930d-60180a7c44f1','e03d1f5c-2513-24d8-bdde-6017ca945ff0',80,'2021-02-01 14:04:44',0),('bb526353-ac75-777d-06df-601810fdd7d1','bef307c8-d095-6341-6352-601810875b07','eae8eb86-ed25-499c-d9d5-6017ca5c45da',-99,'2021-02-01 14:31:59',0),('bb5b4119-4f27-49d2-c692-601810f00b90','bef307c8-d095-6341-6352-601810875b07','3214d713-d19f-6c9e-ceb2-6017ca55bf89',-99,'2021-02-01 14:31:59',0),('bb81af67-8678-b886-a882-60180ad1a551','920ed607-4a99-1bc8-930d-60180a7c44f1','e454847f-e338-c3eb-be96-6017ca4a2ea3',-99,'2021-02-01 14:04:44',0),('bb8b534b-eadb-c1c9-fe89-601811628283','a0b17db8-3562-2520-7a5b-60181003f945','ba473bcc-7238-9791-6f76-6017ca6721e5',75,'2021-02-01 14:33:27',0),('bbaa0f72-4094-4091-c065-60180f3a33da','52c526cb-9c4a-23b6-b39f-60180f9089b2','c5c44e91-99cf-3ac6-a7ea-6017caac610a',80,'2021-02-01 14:26:44',0),('bbabfa4b-ad66-ad1f-53cf-6018104b4c96','bef307c8-d095-6341-6352-601810875b07','2f59f53b-49d7-6e72-6586-6017ca3316c8',75,'2021-02-01 14:31:59',0),('bbcc781b-8abb-035c-a32c-60180a3f3082','920ed607-4a99-1bc8-930d-60180a7c44f1','de3aca57-08ed-bd1c-71db-6017caa8a814',80,'2021-02-01 14:04:44',0),('bbd4042a-4c97-b1d0-1414-6018112fe586','a0b17db8-3562-2520-7a5b-60181003f945','d881ab81-f5b9-7815-7501-6017caab079d',-99,'2021-02-01 14:33:27',0),('bc12c018-0d0a-20cc-9efb-60180a91ec3e','920ed607-4a99-1bc8-930d-60180a7c44f1','72355743-6e36-a4b8-a9ae-6017ca6d4186',89,'2021-02-01 14:04:44',0),('bc160157-24f6-30b9-d9c8-60180ab0f10c','920ed607-4a99-1bc8-930d-60180a7c44f1','28e1bd8d-b069-2676-b8fa-6017cac381c6',80,'2021-02-01 14:04:44',0),('bc195f30-e8fc-7bcd-3e65-6018101a725c','145ce98a-0b57-3e66-8f20-60180fdba411','d43bc43e-e2fe-955f-ef9d-6017ca02a76f',-98,'2021-02-01 14:29:35',0),('bc334fb4-ce82-8aea-761d-601810520a05','bef307c8-d095-6341-6352-601810875b07','14bda9be-7f00-c47d-4d67-6017caadd7c7',-98,'2021-02-01 14:31:59',0),('bc460810-0152-749e-67a5-60181024fe3c','bef307c8-d095-6341-6352-601810875b07','e7ed5142-9b57-558e-95a9-6017ca713940',75,'2021-02-01 14:31:59',0),('bc62c2d6-1e13-e72a-e06b-60180f8e7f4d','52c526cb-9c4a-23b6-b39f-60180f9089b2','c794c5c8-1658-d162-4728-6017caec8ae8',80,'2021-02-01 14:26:44',0),('bc6489a6-c8b4-f29b-93d0-601810f6a507','145ce98a-0b57-3e66-8f20-60180fdba411','487209ce-296c-c755-871c-6017caa41be8',75,'2021-02-01 14:29:35',0),('bc709951-f051-223e-bb6b-60180a2f114a','920ed607-4a99-1bc8-930d-60180a7c44f1','773803fa-601f-7f1f-8433-6017caf1fefd',80,'2021-02-01 14:04:44',0),('bc88dd7b-e0a2-d022-3801-6018104b561e','bef307c8-d095-6341-6352-601810875b07','1885785c-ffcf-a049-a431-6017ca33ab98',75,'2021-02-01 14:31:59',0),('bc9b4167-4dcf-bedd-8e26-60181197f9d0','a0b17db8-3562-2520-7a5b-60181003f945','bf82a946-415f-bc3a-8fc7-6017ca457085',-99,'2021-02-01 14:33:27',0),('bca73997-d9f9-64bb-922c-60180a790eba','920ed607-4a99-1bc8-930d-60180a7c44f1','75e95896-bfb4-e7d1-8d5d-6017ca577257',80,'2021-02-01 14:04:44',0),('bcb4fb79-0d8d-5c0b-5b52-6018100fc987','bef307c8-d095-6341-6352-601810875b07','edf66900-4cc5-2778-b45b-6017ca4872c6',-99,'2021-02-01 14:31:59',0),('bcd7a78c-7728-d79d-2942-60180a61a600','920ed607-4a99-1bc8-930d-60180a7c44f1','79640946-aee0-9f50-e62a-6017cae5892d',80,'2021-02-01 14:04:44',0),('bcec1aaa-e5d8-d788-a291-60180fd4ab93','52c526cb-9c4a-23b6-b39f-60180f9089b2','c706f622-a7c2-cd76-47f4-6017ca5f1ee9',-99,'2021-02-01 14:26:44',0),('bcf37dbd-be96-a911-b93c-60181041f477','bef307c8-d095-6341-6352-601810875b07','17e1ca17-e91d-6b29-f43b-6017ca7b4f1f',75,'2021-02-01 14:31:59',0),('bd18d674-0eb7-cced-867a-60180a01370c','920ed607-4a99-1bc8-930d-60180a7c44f1','77ccb264-3890-c274-4e17-6017ca98c87e',-99,'2021-02-01 14:04:44',0),('bd328bb9-7a87-d8b4-46ab-6018101bd32d','145ce98a-0b57-3e66-8f20-60180fdba411','d786a57c-50fa-3400-5b9b-6017cac510a9',75,'2021-02-01 14:29:35',0),('bd3bb4e2-0bce-3c74-faa1-60180feb024f','52c526cb-9c4a-23b6-b39f-60180f9089b2','c5137ed7-10f9-bc73-4a6e-6017ca455098',80,'2021-02-01 14:26:44',0),('bd3d3887-b780-f583-9f0e-6018102f754f','bef307c8-d095-6341-6352-601810875b07','e6b81b67-beb5-38c3-5233-6017ca74980e',75,'2021-02-01 14:31:59',0),('bd4d0908-c977-07fc-a6c6-60180a24e7ba','920ed607-4a99-1bc8-930d-60180a7c44f1','73fdb388-e429-64d1-7485-6017cae6514d',80,'2021-02-01 14:04:44',0),('bd62021e-a808-c9e1-8ff6-601810165ead','bef307c8-d095-6341-6352-601810875b07','1a3588bc-571c-f7ab-7799-6017cab6e09b',75,'2021-02-01 14:31:59',0),('bd81e653-ebfb-4dbc-3f40-6018119b51c9','a0b17db8-3562-2520-7a5b-60181003f945','b9a397e5-66a6-9988-7929-6017cae9079d',75,'2021-02-01 14:33:27',0),('bd90e8ae-2a03-efab-e661-60180a432cbc','920ed607-4a99-1bc8-930d-60180a7c44f1','7a44a0a8-2174-0769-fff0-6017caa1731c',-99,'2021-02-01 14:04:44',0),('bda2091a-b10a-394b-1446-6018103be892','bef307c8-d095-6341-6352-601810875b07','d840ab23-5d37-8c15-7888-6017ca6d0b7c',-99,'2021-02-01 14:31:59',0),('bdb383b0-d20d-8efc-e1bf-60180f84002b','52c526cb-9c4a-23b6-b39f-60180f9089b2','c8f1f7e3-8a5a-b42f-bd7d-6017ca8013d7',-99,'2021-02-01 14:26:44',0),('bdc41a6c-e6b3-dc04-69b8-60180a5623dd','920ed607-4a99-1bc8-930d-60180a7c44f1','733ed99a-4574-0176-f887-6017cabe49e9',80,'2021-02-01 14:04:44',0),('bdde9bc4-8181-3db6-0cd3-601810972ebe','bef307c8-d095-6341-6352-601810875b07','198739f4-0bbd-3331-cf7a-6017ca5f75d9',-99,'2021-02-01 14:31:59',0),('bdefb05e-4554-96bb-3c2d-60181090acc6','145ce98a-0b57-3e66-8f20-60180fdba411','d6e4bfa4-cbed-cdd3-c897-6017ca052bde',75,'2021-02-01 14:29:35',0),('be1207bb-de7e-a6da-08bc-60180a1e7742','920ed607-4a99-1bc8-930d-60180a7c44f1','ea5c0154-cef1-803b-0ba7-6017ca67a911',89,'2021-02-01 14:04:44',0),('be27bd3f-59b8-843a-c690-60181015ed34','bef307c8-d095-6341-6352-601810875b07','175189ff-4043-fa73-2651-6017ca9d5d05',75,'2021-02-01 14:31:59',0),('be44c85f-af38-5cf6-6eeb-60180f3a5778','52c526cb-9c4a-23b6-b39f-60180f9089b2','c431144f-3b85-b653-2799-6017ca279bff',80,'2021-02-01 14:26:44',0),('be4fa3ae-b9a5-e2a7-eed9-601810c55129','bef307c8-d095-6341-6352-601810875b07','87539216-07b6-7711-9aa8-6017ca0d4d82',-98,'2021-02-01 14:31:59',0),('be5359a6-b647-7cf6-fc27-60180ae08771','920ed607-4a99-1bc8-930d-60180a7c44f1','14b748ba-7445-1bed-a6bc-6017ca1ed7b4',80,'2021-02-01 14:04:44',0),('be901655-dbf0-66ce-407b-6018105ac7d0','bef307c8-d095-6341-6352-601810875b07','1aef1fca-33a2-3d5d-9453-6017ca899039',-99,'2021-02-01 14:31:59',0),('be9a64eb-c2f7-4ef9-7c42-60180a1ae97d','920ed607-4a99-1bc8-930d-60180a7c44f1','12a05087-ac9b-b480-ef56-6017ca5bb531',80,'2021-02-01 14:04:44',0),('be9f080e-6fbf-9f34-ee6a-601809743999','54779abd-cf10-d4b8-3946-601809414e38','4b5df074-2224-15a5-770a-6017ca31e0d2',89,'2021-02-01 14:00:42',0),('bea246f8-d8e1-bf0e-a4a4-60181106f5ac','a0b17db8-3562-2520-7a5b-60181003f945','97e9402e-af05-1ead-a076-6017ca207f26',-98,'2021-02-01 14:33:27',0),('bee1615b-f701-51dc-9810-60180a77d819','920ed607-4a99-1bc8-930d-60180a7c44f1','1844b369-3730-ed93-c1df-6017cad6ef13',80,'2021-02-01 14:04:44',0),('bee8c909-dce8-70fd-479e-601810fe6b07','145ce98a-0b57-3e66-8f20-60180fdba411','d8ef97ea-8348-5f56-97ad-6017ca6a0460',75,'2021-02-01 14:29:35',0),('bef778f0-e9ec-24bf-1dcb-60180fa236f2','52c526cb-9c4a-23b6-b39f-60180f9089b2','cd88e407-1956-c897-a607-6017ca340c28',-98,'2021-02-01 14:26:44',0),('bf0ae330-3c88-6ab2-b197-601810137cad','bef307c8-d095-6341-6352-601810875b07','168d6de1-a01a-c7ed-0e6b-6017ca961af0',75,'2021-02-01 14:31:59',0),('bf1e2c17-6a8a-c9c6-4c6b-60180aa5938c','920ed607-4a99-1bc8-930d-60180a7c44f1','16b7009a-4890-65d1-3f8f-6017ca6c7043',-99,'2021-02-01 14:04:44',0),('bf1e4d57-3ecb-7d22-6df7-601810478a90','bef307c8-d095-6341-6352-601810875b07','8c9ce024-16d3-ce97-f6f1-6017cafec8a2',75,'2021-02-01 14:31:59',0),('bf4d0c5d-b58d-2f59-248b-60180fc6bd3f','52c526cb-9c4a-23b6-b39f-60180f9089b2','d0901d67-9ee5-6676-9f62-6017ca8fda47',80,'2021-02-01 14:26:44',0),('bf574985-6937-9740-f2d1-60181005f730','bef307c8-d095-6341-6352-601810875b07','a6f22aa9-813e-d48d-cbcf-6017cafe3c98',89,'2021-02-01 14:31:59',0),('bf677b46-847e-c02c-9f2e-601810e7ac05','145ce98a-0b57-3e66-8f20-60180fdba411','3c8f0a2d-b87e-6e7e-696c-6017caac546a',-99,'2021-02-01 14:29:35',0),('bfaaf4c7-8e46-0431-9f5a-601810843d9c','bef307c8-d095-6341-6352-601810875b07','8ba34aa2-a2dd-fb51-3753-6017cad94619',75,'2021-02-01 14:31:59',0),('bfbbf8ac-02de-db0f-eabc-60180adcd9a2','920ed607-4a99-1bc8-930d-60180a7c44f1','1210b8d7-8527-cfab-15ab-6017ca872b87',80,'2021-02-01 14:04:44',0),('bfcb9698-e3c1-9319-d895-601810875219','bef307c8-d095-6341-6352-601810875b07','ab02cc22-401e-4f0b-5180-6017ca6944bb',75,'2021-02-01 14:31:59',0),('bfea6825-3d5b-1868-3249-6018116c12ba','a0b17db8-3562-2520-7a5b-60181003f945','9dad8dfc-64d2-5c22-7fed-6017caa67ae1',75,'2021-02-01 14:33:27',0),('bff44fe6-c2d6-677a-80e7-60180f5d5e6d','52c526cb-9c4a-23b6-b39f-60180f9089b2','cfd801f1-971b-05c3-f426-6017cac294ff',80,'2021-02-01 14:26:44',0),('c01f17e0-e7b3-a0c9-cfe4-60180af421ef','920ed607-4a99-1bc8-930d-60180a7c44f1','193e9c15-b4d4-c673-1b4b-6017ca498afe',-99,'2021-02-01 14:04:44',0),('c02a0416-691f-94f1-780c-60180f820749','52c526cb-9c4a-23b6-b39f-60180f9089b2','8d58526e-ae7c-89f1-c5ab-6017ca767f94',-99,'2021-02-01 14:26:44',0),('c0372b2a-ac90-3249-df3b-601810db26eb','145ce98a-0b57-3e66-8f20-60180fdba411','d840ab23-5d37-8c15-7888-6017ca6d0b7c',-99,'2021-02-01 14:29:35',0),('c0465710-d3d3-d93c-4440-6018106e34ab','bef307c8-d095-6341-6352-601810875b07','8f62e502-a51a-1dbf-4c0e-6017cabe0b1a',75,'2021-02-01 14:31:59',0),('c04c7334-eb8a-ad0a-fcb4-6018102f12d6','bef307c8-d095-6341-6352-601810875b07','aa06a022-eebd-88bd-7c29-6017ca1a6417',75,'2021-02-01 14:31:59',0),('c050e227-62d0-2960-9e89-60180f0dd19f','52c526cb-9c4a-23b6-b39f-60180f9089b2','d186ebc9-f248-c713-57ad-6017ca877318',80,'2021-02-01 14:26:44',0),('c0616b8a-ebb5-cecd-73aa-60180a8774c7','920ed607-4a99-1bc8-930d-60180a7c44f1','1153fb10-28fd-a556-8e38-6017ca79a353',80,'2021-02-01 14:04:44',0),('c0a50dfe-67e0-2412-1762-601811d6124a','a0b17db8-3562-2520-7a5b-60181003f945','d67affcf-e393-960c-30dc-6017cadbbb20',75,'2021-02-01 14:33:27',0),('c0bd686a-9828-3944-6ea2-60180a7a58f1','920ed607-4a99-1bc8-930d-60180a7c44f1','4b5df074-2224-15a5-770a-6017ca31e0d2',-98,'2021-02-01 14:04:44',0),('c0d49622-a9a2-881f-eb3c-60180f0f70c1','52c526cb-9c4a-23b6-b39f-60180f9089b2','d0def67a-7a7d-3dea-616d-6017ca0ca5c0',-99,'2021-02-01 14:26:44',0),('c0da0132-48b3-ecbb-1a71-601810339eec','bef307c8-d095-6341-6352-601810875b07','aceda745-edf4-6592-0ca7-6017ca7c89f8',75,'2021-02-01 14:31:59',0),('c0e22fb8-80c1-68c6-5bcb-60180a5177f9','920ed607-4a99-1bc8-930d-60180a7c44f1','506f61c9-49cf-d0e3-5448-6017ca7e282c',80,'2021-02-01 14:04:44',0),('c0f1d315-ed96-408d-785a-6018110482f9','a0b17db8-3562-2520-7a5b-60181003f945','9c7adf56-4680-5e30-ff28-6017cadf52c8',75,'2021-02-01 14:33:27',0),('c10b04e3-4c36-8f55-e239-60180adb35a2','920ed607-4a99-1bc8-930d-60180a7c44f1','277ebc96-5c1a-429e-912c-6017ca79e468',80,'2021-02-01 14:04:44',0),('c1227b59-360b-01d8-02b0-60181068ba66','145ce98a-0b57-3e66-8f20-60180fdba411','d620c5dd-c03f-9f13-31c7-6017ca213266',75,'2021-02-01 14:29:35',0),('c172ff66-50c2-d727-3914-6018105c87aa','bef307c8-d095-6341-6352-601810875b07','ac25d4dd-6de5-9c2a-8b4f-6017ca9dc9b7',-99,'2021-02-01 14:31:59',0),('c18444c5-db6e-817d-5dae-601810101c71','bef307c8-d095-6341-6352-601810875b07','8d58526e-ae7c-89f1-c5ab-6017ca767f94',-99,'2021-02-01 14:31:59',0),('c1ab0dde-30de-5a9f-42d8-601810db689c','bef307c8-d095-6341-6352-601810875b07','6ac9b95e-2b95-8b91-edb2-6017cafd2c72',89,'2021-02-01 14:31:59',0),('c1ae4f6d-b97e-ccca-ee79-60180f355a3e','52c526cb-9c4a-23b6-b39f-60180f9089b2','cf1e856c-b6ab-5b98-3ad5-6017ca7fb7eb',80,'2021-02-01 14:26:44',0),('c1b06cfc-a3bc-f94e-1f00-60180aef7a24','920ed607-4a99-1bc8-930d-60180a7c44f1','4fa20f82-4605-a031-949b-6017ca9c9830',80,'2021-02-01 14:04:44',0),('c1b41baf-4bf2-de0f-ba78-601810ed1d32','145ce98a-0b57-3e66-8f20-60180fdba411','11450ed5-1ece-4320-83bb-6017ca13f200',75,'2021-02-01 14:29:35',0),('c1c30588-fee3-ca4c-576b-60180fe94804','52c526cb-9c4a-23b6-b39f-60180f9089b2','e2bc5387-7429-ab0a-3d69-6017ca359d7b',-98,'2021-02-01 14:26:44',0),('c1e48746-c8b5-3ec7-c9bd-60181079e7ad','145ce98a-0b57-3e66-8f20-60180fdba411','d98bf6b0-ff19-5726-0429-6017cad40d74',-99,'2021-02-01 14:29:35',0),('c1ec4df4-7460-bf40-659a-60180a3fe85c','920ed607-4a99-1bc8-930d-60180a7c44f1','5362a646-6144-5c4e-9ebb-6017cabe59da',80,'2021-02-01 14:04:44',0),('c21feb90-999b-7afc-264d-6018100f2031','bef307c8-d095-6341-6352-601810875b07','a8bb31f6-150f-ff3f-bef0-6017ca208971',75,'2021-02-01 14:31:59',0),('c22291e3-6d6e-cd90-9e78-6018102ad485','bef307c8-d095-6341-6352-601810875b07','8aa714aa-4b3e-19ba-274e-6017ca4697ff',75,'2021-02-01 14:31:59',0),('c2300795-6311-c2b2-ff9e-6018110ad15f','a0b17db8-3562-2520-7a5b-60181003f945','9f6d45af-0924-9907-090a-6017ca293441',75,'2021-02-01 14:33:27',0),('c243d992-0bb4-a843-2c9e-60180aa5adde','920ed607-4a99-1bc8-930d-60180a7c44f1','5131b6a6-ac2e-aab4-8297-6017cacd1a29',-99,'2021-02-01 14:04:44',0),('c24c0602-8c55-d38d-0d81-60180f2cd5dd','52c526cb-9c4a-23b6-b39f-60180f9089b2','d205df45-00e2-fd60-1321-6017caaef991',-99,'2021-02-01 14:26:44',0),('c26e6fe9-fe7d-b38d-7084-601810a64795','145ce98a-0b57-3e66-8f20-60180fdba411','d4fcbe23-c827-2094-d420-6017ca831257',75,'2021-02-01 14:29:35',0),('c29f2591-2b11-35c8-52de-6018102ddf15','bef307c8-d095-6341-6352-601810875b07','906d69aa-1fca-7278-c57c-6017caee5833',-99,'2021-02-01 14:31:59',0),('c29f8c85-a6ac-79ae-4486-60180a6c3428','920ed607-4a99-1bc8-930d-60180a7c44f1','4eb5453c-539f-7da6-2393-6017cab07f2d',80,'2021-02-01 14:04:44',0),('c2a72968-35e5-14ea-b4d2-601810774273','bef307c8-d095-6341-6352-601810875b07','ae8ad6ad-4263-f441-956e-6017ca7d5153',-99,'2021-02-01 14:31:59',0),('c2c96658-5239-ff3c-8099-60180fe0b3d5','52c526cb-9c4a-23b6-b39f-60180f9089b2','ce72846b-97fc-6dbc-f5ff-6017ca04b487',80,'2021-02-01 14:26:44',0),('c2e410cb-61c5-fc29-aca8-60180a0c20c1','920ed607-4a99-1bc8-930d-60180a7c44f1','543391af-9314-213d-cf52-6017ca0de4a4',-99,'2021-02-01 14:04:44',0),('c32a0df3-bb14-0111-7282-60180a476740','920ed607-4a99-1bc8-930d-60180a7c44f1','4dc064a6-36e7-b8d6-1637-6017ca834a51',80,'2021-02-01 14:04:44',0),('c3306fe2-1f40-8b77-ad14-60181085b8d4','bef307c8-d095-6341-6352-601810875b07','a7a9f1ad-be16-ee19-451b-6017ca00687d',75,'2021-02-01 14:31:59',0),('c33fe5ee-8cbd-d65c-03e7-60180f3b8084','52c526cb-9c4a-23b6-b39f-60180f9089b2','3bf2f429-039e-9b9a-086b-6017cad8b024',89,'2021-02-01 14:26:44',0),('c3501ed0-c799-ea32-a9ea-60181022c98f','bef307c8-d095-6341-6352-601810875b07','8911290d-27ae-4a1a-6dc7-6017cacc0f60',75,'2021-02-01 14:31:59',0),('c3600207-cb5b-28e0-9b4a-60180a49cf7b','920ed607-4a99-1bc8-930d-60180a7c44f1','c74d759e-ca97-9c85-566b-6017ca9f5554',-98,'2021-02-01 14:04:44',0),('c375a5a1-dbc2-f8ab-ded2-601810891a40','145ce98a-0b57-3e66-8f20-60180fdba411','7b93328d-ff92-fab7-088a-6017caafa77b',-98,'2021-02-01 14:29:35',0),('c39b9637-f552-afcd-082c-60180a6ab1d0','920ed607-4a99-1bc8-930d-60180a7c44f1','cab346aa-9975-17b1-bd41-6017ca561174',80,'2021-02-01 14:04:44',0),('c3ae0ee2-526b-2823-a662-6018107ec6b4','bef307c8-d095-6341-6352-601810875b07','41495400-5f9b-80d4-7075-6017ca472698',89,'2021-02-01 14:31:59',0),('c3bcb9b5-485c-cae7-7c7d-601810b4aa80','bef307c8-d095-6341-6352-601810875b07','38f99f5f-181a-9090-099b-6017ca1e67cb',-98,'2021-02-01 14:31:59',0),('c3c80836-4c22-53ba-92bc-60180af5d353','920ed607-4a99-1bc8-930d-60180a7c44f1','c9f5ba8f-acbd-9e14-381d-6017cabba8c0',80,'2021-02-01 14:04:44',0),('c3f9b3b0-c05c-15d5-ed01-60181095b5a2','bef307c8-d095-6341-6352-601810875b07','469f31e2-b7bb-4b8b-6061-6017caccb79c',75,'2021-02-01 14:31:59',0),('c3fa8683-ff0a-4ae3-dd62-60180a0ba2ea','920ed607-4a99-1bc8-930d-60180a7c44f1','cc0d998d-d33d-2b7c-1413-6017ca1a425a',80,'2021-02-01 14:04:44',0),('c40ce24d-7404-d374-a226-60181197a9bf','a0b17db8-3562-2520-7a5b-60181003f945','9e8c53ec-f5f5-1908-8fd6-6017ca4b90f4',-99,'2021-02-01 14:33:27',0),('c42192bd-6e68-b7ac-bd23-60181002390e','bef307c8-d095-6341-6352-601810875b07','3cc306a6-c503-f389-366b-6017ca4e3ae0',75,'2021-02-01 14:31:59',0),('c421d460-b27f-9f90-1d83-601810c120d6','145ce98a-0b57-3e66-8f20-60180fdba411','80721d39-a468-f6ac-c5a0-6017cadaaa11',75,'2021-02-01 14:29:35',0),('c4435027-dfca-aef2-c933-60180a69be15','920ed607-4a99-1bc8-930d-60180a7c44f1','cb671498-76a3-0ff6-3b03-6017ca56cae8',-99,'2021-02-01 14:04:44',0),('c449a656-6521-6e0b-400a-60180f4f8093','52c526cb-9c4a-23b6-b39f-60180f9089b2','40a06fb6-2c0b-b5ab-9711-6017cad0002f',80,'2021-02-01 14:26:44',0),('c486d1e5-dfd5-5c6a-9eb3-60180ab874f1','920ed607-4a99-1bc8-930d-60180a7c44f1','c8c2766e-917f-40ca-4d6d-6017caf3f0d5',80,'2021-02-01 14:04:44',0),('c4b90327-3799-0cda-3194-60180a6836d8','920ed607-4a99-1bc8-930d-60180a7c44f1','cc7cc659-153f-71ed-f0d2-6017caa4c207',-99,'2021-02-01 14:04:44',0),('c4ca9319-a73e-c6bd-ca4d-60180f36ea10','52c526cb-9c4a-23b6-b39f-60180f9089b2','3feeba8f-d6bd-6fe9-094b-6017ca124904',80,'2021-02-01 14:26:44',0),('c4e84e22-ca89-d336-2336-6018117b13be','a0b17db8-3562-2520-7a5b-60181003f945','9b2882df-e540-afe4-9c83-6017ca7e0aa7',75,'2021-02-01 14:33:27',0),('c5124bfa-6aa3-67bd-648e-601810968fd7','145ce98a-0b57-3e66-8f20-60180fdba411','69c40028-8193-04ae-ea6a-6017ca36aaa1',-99,'2021-02-01 14:29:35',0),('c51f885a-55d2-4fea-522b-601810853203','145ce98a-0b57-3e66-8f20-60180fdba411','7f62c1e4-1794-9774-0835-6017ca110404',75,'2021-02-01 14:29:35',0),('c52c0e4b-33e6-9559-d751-601810fc9038','bef307c8-d095-6341-6352-601810875b07','70ca3409-a115-5547-4672-6017ca512a79',75,'2021-02-01 14:31:59',0),('c5360f4b-ef89-1b53-c3e4-601810ba8b03','145ce98a-0b57-3e66-8f20-60180fdba411','d3178c03-b2e4-a425-9eca-6017ca72eb45',75,'2021-02-01 14:29:35',0),('c549bfb0-f9b4-431e-ac09-6018109bf3d8','bef307c8-d095-6341-6352-601810875b07','3b42d0fb-c107-dcf4-16de-6017cac16fb4',75,'2021-02-01 14:31:59',0),('c581cb3b-4144-3236-4fdf-60181075e1ab','bef307c8-d095-6341-6352-601810875b07','44f7f214-0eda-d54d-eb23-6017ca98b487',75,'2021-02-01 14:31:59',0),('c58821a5-217e-bc09-a19b-60180fe68a5d','52c526cb-9c4a-23b6-b39f-60180f9089b2','424e9d02-1a6d-b40c-3d77-6017ca2a199b',80,'2021-02-01 14:26:44',0),('c5a6fc4c-dd2e-f789-8531-60180af3c417','920ed607-4a99-1bc8-930d-60180a7c44f1','c840be03-804c-7707-c944-6017ca14f4b9',80,'2021-02-01 14:04:44',0),('c5df32d4-a32b-2f28-f008-60181132db73','a0b17db8-3562-2520-7a5b-60181003f945','a0125536-b231-699a-6df1-6017cac450ac',-99,'2021-02-01 14:33:27',0),('c5ead398-fae1-3fa9-1992-6018107c9f0f','bef307c8-d095-6341-6352-601810875b07','3f4cef04-3d0e-4ab5-e4e0-6017cab3974e',75,'2021-02-01 14:31:59',0),('c5fdfa71-c2f2-a7fb-95ad-60180a0b9d37','920ed607-4a99-1bc8-930d-60180a7c44f1','91ed6183-922d-c827-70cc-6017ca0f80a2',-98,'2021-02-01 14:04:44',0),('c617f71e-3cbf-89ae-7fff-6018103a61eb','145ce98a-0b57-3e66-8f20-60180fdba411','81b7dc49-a8cd-d6de-bbc9-6017cac215e8',75,'2021-02-01 14:29:35',0),('c62b9c42-a86d-487f-f801-60181051c023','bef307c8-d095-6341-6352-601810875b07','48198c30-2080-5ee5-7b6e-6017cae64d7f',75,'2021-02-01 14:31:59',0),('c630a894-5dfc-2c2a-8b0d-60180a020620','920ed607-4a99-1bc8-930d-60180a7c44f1','9634bb2c-d95f-d6c4-301c-6017ca77e3e4',80,'2021-02-01 14:04:44',0),('c64e0ab7-0616-f3bb-fabe-601809323a07','54779abd-cf10-d4b8-3946-601809414e38','506f61c9-49cf-d0e3-5448-6017ca7e282c',90,'2021-02-01 14:00:42',0),('c659c6bb-c9c0-72bd-8db4-60180a019542','920ed607-4a99-1bc8-930d-60180a7c44f1','947ad549-f887-3d63-b7a7-6017cad7458e',80,'2021-02-01 14:04:44',0),('c6664ade-d45f-9dde-a018-60181005303d','bef307c8-d095-6341-6352-601810875b07','3d7be9aa-7dc1-6080-e224-6017cadbda7e',-99,'2021-02-01 14:31:59',0),('c696ea84-45b8-37ad-8e07-60180fa18d88','52c526cb-9c4a-23b6-b39f-60180f9089b2','41257a11-4623-22fc-5899-6017ca328bb7',-99,'2021-02-01 14:26:44',0),('c6a0def3-1997-f676-f550-601811ae3676','a0b17db8-3562-2520-7a5b-60181003f945','986eee81-167e-9465-9b49-6017ca064f5f',75,'2021-02-01 14:33:27',0),('c6a57c77-efe6-efa4-1c93-60180a33327f','920ed607-4a99-1bc8-930d-60180a7c44f1','9876e9d1-2bff-c6c5-6d01-6017cade8e1f',80,'2021-02-01 14:04:44',0),('c6c5e5de-326e-ae24-aee5-601810ddbe75','145ce98a-0b57-3e66-8f20-60180fdba411','81318593-4681-4d8a-4fc0-6017cadfb23f',-99,'2021-02-01 14:29:35',0),('c6d5621d-cb1d-af3f-1b2d-601810c8e8b1','bef307c8-d095-6341-6352-601810875b07','473598c4-45a3-b853-34f1-6017cab30d9f',-99,'2021-02-01 14:31:59',0),('c6d56c5e-ea3c-f9f0-b160-601810e0c80e','145ce98a-0b57-3e66-8f20-60180fdba411','f3d45d6c-92bf-593e-dc4e-6017ca41cbee',75,'2021-02-01 14:29:35',0),('c6e2e753-ca22-2f37-b01a-60180a97ef0c','920ed607-4a99-1bc8-930d-60180a7c44f1','97b2709d-df39-baf3-964d-6017ca844416',-99,'2021-02-01 14:04:44',0),('c7512682-bb5f-40ff-906a-60180f35ff96','52c526cb-9c4a-23b6-b39f-60180f9089b2','3f22e375-6be6-8eea-a6a5-6017ca1296e5',80,'2021-02-01 14:26:44',0),('c762be49-3882-ec30-f8bf-6018107c7275','145ce98a-0b57-3e66-8f20-60180fdba411','7de3d8da-5c08-1db7-4a75-6017ca329c45',75,'2021-02-01 14:29:35',0),('c77e0c49-269f-cb82-aa88-601811ffe25e','a0b17db8-3562-2520-7a5b-60181003f945','d972e5ac-ed9b-9d26-c01a-6017cabd1654',-99,'2021-02-01 14:33:27',0),('c79aa3cf-109d-06ca-992c-601810d67e0b','bef307c8-d095-6341-6352-601810875b07','3aba1255-f1e3-6773-82a2-6017ca6f698a',75,'2021-02-01 14:31:59',0),('c7a13517-b246-579e-6453-60180a7630a3','920ed607-4a99-1bc8-930d-60180a7c44f1','93d8cd13-cf78-d508-6128-6017ca32e37c',80,'2021-02-01 14:04:44',0),('c7ae02e7-f781-a613-f031-60180f295a4e','52c526cb-9c4a-23b6-b39f-60180f9089b2','8aa714aa-4b3e-19ba-274e-6017ca4697ff',80,'2021-02-01 14:26:44',0),('c7da3fa7-1b7a-54dc-c3a0-6018115e1340','a0b17db8-3562-2520-7a5b-60181003f945','ad72033b-d248-1445-3717-6017ca405307',-98,'2021-02-01 14:33:27',0),('c7e301fb-e00c-5984-0dd7-60180ad82806','920ed607-4a99-1bc8-930d-60180a7c44f1','2a3aa91e-f13f-e8e2-a69b-6017ca8378df',80,'2021-02-01 14:04:44',0),('c7e9ac42-5a01-fd20-5f25-60181041ef8f','bef307c8-d095-6341-6352-601810875b07','444a0bbf-db13-9408-2088-6017ca7eb004',75,'2021-02-01 14:31:59',0),('c7ea6374-6e54-ff0e-85f8-60180a67090b','920ed607-4a99-1bc8-930d-60180a7c44f1','997bc36e-3b1a-b7f4-8f68-6017caa01d84',-99,'2021-02-01 14:04:44',0),('c80607e4-717f-f5f3-1874-601810b8e21c','bef307c8-d095-6341-6352-601810875b07','d620c5dd-c03f-9f13-31c7-6017ca213266',75,'2021-02-01 14:31:59',0),('c80a88db-d792-a7b7-24b3-601810626325','145ce98a-0b57-3e66-8f20-60180fdba411','82ed8e62-4294-f0ca-6399-6017ca0cf556',-99,'2021-02-01 14:29:35',0),('c8167d3a-d350-0383-1b3e-6018104b7634','bef307c8-d095-6341-6352-601810875b07','3ffd6654-cef8-3289-d225-6017ca354fd4',-99,'2021-02-01 14:31:59',0),('c85825e9-abf9-b547-2f7b-60180aacd3b7','920ed607-4a99-1bc8-930d-60180a7c44f1','92b903d6-cb45-ba2b-3c16-6017caf5e9e9',80,'2021-02-01 14:04:44',0),('c8595611-678d-73df-2377-60180fc50cf5','52c526cb-9c4a-23b6-b39f-60180f9089b2','43128bab-53ee-f54c-e979-6017ca31494e',-99,'2021-02-01 14:26:44',0),('c89c3295-10c3-c90e-5234-60180a49f358','920ed607-4a99-1bc8-930d-60180a7c44f1','a49603d3-7f15-abda-b0d5-6017ca7fcdde',-98,'2021-02-01 14:04:44',0),('c8aa2f4d-5005-d6eb-631e-6018103c9983','145ce98a-0b57-3e66-8f20-60180fdba411','7c284102-15d0-c329-fc54-6017ca9ed58f',75,'2021-02-01 14:29:35',0),('c8b0177d-0ec4-73ec-0b4a-601810de478e','bef307c8-d095-6341-6352-601810875b07','39c652a6-3413-596a-1ba7-6017cad4d33c',75,'2021-02-01 14:31:59',0),('c8b48715-9f6d-3427-7547-601811235194','a0b17db8-3562-2520-7a5b-60181003f945','b0a59a80-8244-9f08-bf42-6017caeaa7f3',75,'2021-02-01 14:33:27',0),('c8d963d0-5a9b-913b-64f8-60180ff0257e','52c526cb-9c4a-23b6-b39f-60180f9089b2','3d0a7731-1875-5403-859e-6017ca2605dd',80,'2021-02-01 14:26:44',0),('c8e49bc6-b7e7-c6a1-cb30-601810b1f964','145ce98a-0b57-3e66-8f20-60180fdba411','589808bc-2514-c7b6-0600-6017ca25411d',-98,'2021-02-01 14:29:35',0),('c8e71b05-93a6-1faa-877c-60180a373bbf','920ed607-4a99-1bc8-930d-60180a7c44f1','a96a916f-2bdc-49ea-aa25-6017cac6a313',80,'2021-02-01 14:04:44',0),('c92960e9-b2d2-b0a8-840a-60180aa57f2e','920ed607-4a99-1bc8-930d-60180a7c44f1','a8a24c95-1318-6fc6-2eba-6017ca621c60',80,'2021-02-01 14:04:44',0),('c930074b-2366-7085-a3dd-601809aa9791','54779abd-cf10-d4b8-3946-601809414e38','4fa20f82-4605-a031-949b-6017ca9c9830',90,'2021-02-01 14:00:42',0),('c944341b-2580-ede8-aca6-601810412571','bef307c8-d095-6341-6352-601810875b07','48c80856-4f90-c906-1c47-6017cac2c696',-99,'2021-02-01 14:31:59',0),('c947f349-394d-2758-2600-60180f5a3bca','52c526cb-9c4a-23b6-b39f-60180f9089b2','7a6a3fd3-36d4-95b3-c51c-6017cae9ba36',-98,'2021-02-01 14:26:44',0),('c95ca7ca-dd2a-ac84-917b-60180a4a500e','920ed607-4a99-1bc8-930d-60180a7c44f1','abbf2bfc-ea68-ef97-1d5a-6017ca3f28ba',80,'2021-02-01 14:04:44',0),('c9629f4f-289e-9ae1-58c8-601810eb8833','145ce98a-0b57-3e66-8f20-60180fdba411','8a0bec92-fd8e-4b45-cf5c-6017ca24ca89',-98,'2021-02-01 14:29:35',0),('c9840acd-810c-16a0-0c1e-6018107c30ea','bef307c8-d095-6341-6352-601810875b07','6fec0d36-5a67-8238-f2ac-6017cae902b8',75,'2021-02-01 14:31:59',0),('c98a420a-a2fa-b8fe-5c6f-60180abc985a','920ed607-4a99-1bc8-930d-60180a7c44f1','aae46ef4-441b-7567-6a4b-6017ca26f182',-99,'2021-02-01 14:04:44',0),('c98d9002-8672-c2e2-6d48-6018107b95cb','bef307c8-d095-6341-6352-601810875b07','d29bdfb0-fe1c-8857-e905-6017caea5473',-98,'2021-02-01 14:31:59',0),('c9cbb59c-68f7-5758-123e-60180a0592f8','920ed607-4a99-1bc8-930d-60180a7c44f1','a703c7b1-bdc0-8848-c82e-6017ca3a4705',80,'2021-02-01 14:04:44',0),('c9d39143-d26f-9b3f-6b43-601810e324f0','145ce98a-0b57-3e66-8f20-60180fdba411','91c30556-a5c1-71fa-6265-6017ca41003a',75,'2021-02-01 14:29:35',0),('c9e63299-14ee-73e9-381e-601811a06871','a0b17db8-3562-2520-7a5b-60181003f945','b03e2b4c-2931-7fad-9b57-6017ca8ac75c',75,'2021-02-01 14:33:27',0),('c9f7df13-340e-963d-8706-60180a871f45','920ed607-4a99-1bc8-930d-60180a7c44f1','ac9cd086-502b-675f-923d-6017ca9ae10e',-99,'2021-02-01 14:04:44',0),('ca14f209-99db-8212-d9c2-60180f7fbfde','52c526cb-9c4a-23b6-b39f-60180f9089b2','7eb70d04-1b91-0b81-d33f-6017ca4c7a95',80,'2021-02-01 14:26:44',0),('ca21d8ec-6dc3-e2db-2558-60180ff9e90b','52c526cb-9c4a-23b6-b39f-60180f9089b2','access',-98,'2021-02-01 14:26:44',0),('ca2cf573-bec0-54f4-dc60-6018106e5868','bef307c8-d095-6341-6352-601810875b07','d73cd5f5-e1d8-5170-7d78-6017cabb0ed2',75,'2021-02-01 14:31:59',0),('ca40defd-86ee-7cc2-17d7-601810110805','145ce98a-0b57-3e66-8f20-60180fdba411','8e8d16ca-188e-5eb5-00d6-6017caa388ea',75,'2021-02-01 14:29:35',0),('ca54a853-ef9c-1326-50b0-60180a57f5ef','920ed607-4a99-1bc8-930d-60180a7c44f1','a5302dea-b8c6-d94c-ef60-6017ca19b99f',80,'2021-02-01 14:04:44',0),('caa93096-6ddd-7740-421e-601811f68e24','a0b17db8-3562-2520-7a5b-60181003f945','b1b70587-5e65-c9e2-442e-6017ca9be6b4',75,'2021-02-01 14:33:27',0),('caaf12d0-7e4d-218a-bb71-60180a68c839','920ed607-4a99-1bc8-930d-60180a7c44f1','d43bc43e-e2fe-955f-ef9d-6017ca02a76f',-98,'2021-02-01 14:04:44',0),('cadd206a-420e-1337-b3bb-60180a44f7dc','920ed607-4a99-1bc8-930d-60180a7c44f1','d786a57c-50fa-3400-5b9b-6017cac510a9',80,'2021-02-01 14:04:44',0),('caf0dd82-121e-5dcd-afe0-60180f3b008e','52c526cb-9c4a-23b6-b39f-60180f9089b2','7de8fc75-06b4-9caf-d2f8-6017caf078cf',80,'2021-02-01 14:26:44',0),('cafed275-4560-8670-d88a-60181030f6bb','bef307c8-d095-6341-6352-601810875b07','d696d729-adb1-4fec-3046-6017caa1340f',75,'2021-02-01 14:31:59',0),('cb2ec7fe-78d4-dbd7-6c6d-60180ab4a967','920ed607-4a99-1bc8-930d-60180a7c44f1','d6e4bfa4-cbed-cdd3-c897-6017ca052bde',80,'2021-02-01 14:04:44',0),('cb39ceec-9db9-c140-bd5a-6018105ffe1f','145ce98a-0b57-3e66-8f20-60180fdba411','7c7a0933-8857-c660-fe54-6017ca5b86aa',75,'2021-02-01 14:29:35',0),('cb41909a-8579-9a22-f202-60180f677a59','52c526cb-9c4a-23b6-b39f-60180f9089b2','803515a9-90a5-6011-db68-6017caaad948',80,'2021-02-01 14:26:44',0),('cb59105e-e3af-8b7b-9f54-60180aa36813','920ed607-4a99-1bc8-930d-60180a7c44f1','d8ef97ea-8348-5f56-97ad-6017ca6a0460',80,'2021-02-01 14:04:44',0),('cb700545-9bee-254b-4886-6018105f9a84','bef307c8-d095-6341-6352-601810875b07','997bc36e-3b1a-b7f4-8f68-6017caa01d84',-99,'2021-02-01 14:31:59',0),('cb942762-ea0c-fda1-3be0-60180a8187fd','920ed607-4a99-1bc8-930d-60180a7c44f1','d840ab23-5d37-8c15-7888-6017ca6d0b7c',-99,'2021-02-01 14:04:44',0),('cbc1f209-42f2-2b55-dac6-60180a5743b5','920ed607-4a99-1bc8-930d-60180a7c44f1','d620c5dd-c03f-9f13-31c7-6017ca213266',80,'2021-02-01 14:04:44',0),('cbdb5f73-cf58-a832-f25f-601810066e2c','145ce98a-0b57-3e66-8f20-60180fdba411','8dbe583f-f32d-fe7e-36ab-6017ca55dcb4',75,'2021-02-01 14:29:35',0),('cbdf3bae-b4d9-28ca-d669-60180ac268e6','920ed607-4a99-1bc8-930d-60180a7c44f1','d98bf6b0-ff19-5726-0429-6017cad40d74',-99,'2021-02-01 14:04:44',0),('cbf59658-0727-7a40-2a80-60180f48c2df','52c526cb-9c4a-23b6-b39f-60180f9089b2','7f6c2045-592e-ee7a-88aa-6017ca223d64',-99,'2021-02-01 14:26:44',0),('cbf5c863-4506-cb67-3045-60181078cec8','bef307c8-d095-6341-6352-601810875b07','d98b8285-6c4f-9047-3246-6017caf67d11',75,'2021-02-01 14:31:59',0),('cc0c62d6-04ef-4ef8-1f23-6018110329ac','a0b17db8-3562-2520-7a5b-60181003f945','b148ee1e-32f7-3ee6-9bd5-6017ca688368',-99,'2021-02-01 14:33:27',0),('cc2f2c87-33bc-1352-4031-601810cb2e00','145ce98a-0b57-3e66-8f20-60180fdba411','a59f0241-8c23-bf89-0b3c-6017caf9cfab',75,'2021-02-01 14:29:35',0),('cc3c3bfd-c603-fe79-42aa-60180a1941e1','920ed607-4a99-1bc8-930d-60180a7c44f1','d4fcbe23-c827-2094-d420-6017ca831257',80,'2021-02-01 14:04:44',0),('cc5fcd76-78ee-a97f-df4c-60180fc481c8','52c526cb-9c4a-23b6-b39f-60180f9089b2','7d5ccdf9-fdf4-60c7-9c96-6017caf9ff1f',80,'2021-02-01 14:26:44',0),('cc8e8238-f896-8954-be2a-601810cf02da','bef307c8-d095-6341-6352-601810875b07','d7ba2bb6-7b6d-76c1-1c42-6017ca823bcd',-99,'2021-02-01 14:31:59',0),('ccbd0a3a-d869-f21a-b043-60180f207e59','52c526cb-9c4a-23b6-b39f-60180f9089b2','906d69aa-1fca-7278-c57c-6017caee5833',-99,'2021-02-01 14:26:44',0),('ccd17734-4c48-f201-6e5e-60180f7e1aca','52c526cb-9c4a-23b6-b39f-60180f9089b2','delete',80,'2021-02-01 14:26:44',0),('ccec2842-9871-f001-1d5a-60180aa48c7b','920ed607-4a99-1bc8-930d-60180a7c44f1','7b93328d-ff92-fab7-088a-6017caafa77b',-98,'2021-02-01 14:04:44',0),('cd08576b-18f2-d498-c6db-60180fe9035b','52c526cb-9c4a-23b6-b39f-60180f9089b2','edit',80,'2021-02-01 14:26:44',0),('cd0896a3-264a-8c8d-06a8-601810c8595c','145ce98a-0b57-3e66-8f20-60180fdba411','91b62206-bc91-ce7c-4c8f-6017ca594770',75,'2021-02-01 14:29:35',0),('cd0d9e76-32d9-506a-c627-60180f9c1856','52c526cb-9c4a-23b6-b39f-60180f9089b2','811d6ca1-d17a-5a54-e033-6017ca5d11e0',-99,'2021-02-01 14:26:44',0),('cd1affef-8af9-78d0-ebb4-601810b72a4f','145ce98a-0b57-3e66-8f20-60180fdba411','9ced0d8b-c4fb-fbbd-f69f-6017ca4e42e6',-99,'2021-02-01 14:29:35',0),('cd3db192-f039-fe55-aa8f-60180a00823f','920ed607-4a99-1bc8-930d-60180a7c44f1','80721d39-a468-f6ac-c5a0-6017cadaaa11',80,'2021-02-01 14:04:44',0),('cd5a0120-03f0-b0d4-0231-60180f7c2f52','52c526cb-9c4a-23b6-b39f-60180f9089b2','export',80,'2021-02-01 14:26:44',0),('cd716256-231e-2b0f-156d-60180a01e157','920ed607-4a99-1bc8-930d-60180a7c44f1','7f62c1e4-1794-9774-0835-6017ca110404',80,'2021-02-01 14:04:44',0),('cd7e92ee-0b61-baf0-fdb2-60181150405c','a0b17db8-3562-2520-7a5b-60181003f945','af785830-9b95-6e64-4175-6017ca031673',75,'2021-02-01 14:33:27',0),('cd8fb524-71a6-7945-50ca-60180fad6e57','52c526cb-9c4a-23b6-b39f-60180f9089b2','import',-99,'2021-02-01 14:26:44',0),('cdb31084-f8b8-c8c9-1011-60180f7af41b','52c526cb-9c4a-23b6-b39f-60180f9089b2','7c990f35-dbe1-d88d-1b6f-6017cacafce6',80,'2021-02-01 14:26:44',0),('cdceccaa-d2de-077f-2c2f-60180a9a3449','920ed607-4a99-1bc8-930d-60180a7c44f1','81b7dc49-a8cd-d6de-bbc9-6017cac215e8',80,'2021-02-01 14:04:44',0),('cde43a57-61f0-99ab-79a2-6018107b50bd','bef307c8-d095-6341-6352-601810875b07','4392f18b-7465-ffd9-44d5-6017ca615e1a',75,'2021-02-01 14:31:59',0),('cdfd45cd-567c-7693-4315-601810fe275a','bef307c8-d095-6341-6352-601810875b07','d57cbe4e-28dc-3341-3148-6017ca4ae022',75,'2021-02-01 14:31:59',0),('cdffd7f3-c5ad-8d7f-f57f-60181021717e','145ce98a-0b57-3e66-8f20-60180fdba411','72100f4a-ad81-b819-d3dd-6017ca9d1452',75,'2021-02-01 14:29:35',0),('ce1ace63-0b07-dc31-e2f3-60180fdeb6e8','52c526cb-9c4a-23b6-b39f-60180f9089b2','list',80,'2021-02-01 14:26:44',0),('ce2d0091-d1d3-071d-f25a-60180ae4a1a5','920ed607-4a99-1bc8-930d-60180a7c44f1','81318593-4681-4d8a-4fc0-6017cadfb23f',-99,'2021-02-01 14:04:44',0),('ce443838-aac6-5a4b-f849-601811437dcd','a0b17db8-3562-2520-7a5b-60181003f945','b231fc57-fb19-a4fb-3c2d-6017ca35b664',-99,'2021-02-01 14:33:27',0),('ce5c0ee1-8093-51e1-56f4-60180af25195','920ed607-4a99-1bc8-930d-60180a7c44f1','29d86b7d-ffe9-9bfb-4cf1-6017ca8db6c7',-99,'2021-02-01 14:04:44',0),('ce5d6299-3353-1ec3-1402-601810928895','145ce98a-0b57-3e66-8f20-60180fdba411','9023fcd5-063f-1f28-bab7-6017caf948ae',-99,'2021-02-01 14:29:35',0),('ce75e565-75ac-019a-65f2-60180a459fa9','920ed607-4a99-1bc8-930d-60180a7c44f1','7de3d8da-5c08-1db7-4a75-6017ca329c45',80,'2021-02-01 14:04:44',0),('ce88b900-c116-0ee9-804a-60180fff4c0b','52c526cb-9c4a-23b6-b39f-60180f9089b2','9c42311f-35a6-2705-f373-6017ca4707a1',-98,'2021-02-01 14:26:44',0),('ce97b0b4-f569-febd-5e9d-601810ae7cdf','145ce98a-0b57-3e66-8f20-60180fdba411','ac03085e-eb42-7691-4a87-6017ca928f01',-99,'2021-02-01 14:29:35',0),('cea8c405-3607-beff-8554-60180ab798fd','920ed607-4a99-1bc8-930d-60180a7c44f1','82ed8e62-4294-f0ca-6399-6017ca0cf556',-99,'2021-02-01 14:04:44',0),('ceb9086d-69c5-ac97-9a1c-60180fb08874','52c526cb-9c4a-23b6-b39f-60180f9089b2','massupdate',-99,'2021-02-01 14:26:44',0),('cecd0952-726e-b10a-9f8a-6018109d6bf8','145ce98a-0b57-3e66-8f20-60180fdba411','d23c0c73-ef18-7df2-801f-6017cae194f6',-99,'2021-02-01 14:29:35',0),('cef8f50e-eb29-4dfd-e687-60180f3a8edc','52c526cb-9c4a-23b6-b39f-60180f9089b2','view',80,'2021-02-01 14:26:44',0),('cefa3259-1094-6eb9-3b21-60180a6cfd7b','920ed607-4a99-1bc8-930d-60180a7c44f1','7c284102-15d0-c329-fc54-6017ca9ed58f',80,'2021-02-01 14:04:44',0),('cefe4f87-5ffb-3e2f-4ea1-6018111f1e8e','a0b17db8-3562-2520-7a5b-60181003f945','aecb124c-09c7-d9f6-442e-6017ca33edc8',75,'2021-02-01 14:33:27',0),('cf1f240a-4f0a-1c6e-f629-60180f962d24','52c526cb-9c4a-23b6-b39f-60180f9089b2','a33f23f0-9e86-e1b5-ec15-6017ca74a368',80,'2021-02-01 14:26:44',0),('cf36b2a9-4ec7-1e6f-8419-601809bda523','54779abd-cf10-d4b8-3946-601809414e38','access',89,'2021-02-01 14:00:42',0),('cf43f1d2-ef13-29ee-8751-60181066c5eb','bef307c8-d095-6341-6352-601810875b07','c26ff4f5-0b2f-abe7-b877-6017cae0cd05',-98,'2021-02-01 14:31:59',0),('cf58ba1a-70d8-8a76-597d-60181038f905','145ce98a-0b57-3e66-8f20-60180fdba411','64180a9b-ae83-35f9-59dc-6017ca309e5d',75,'2021-02-01 14:29:35',0),('cf5ba6d7-03b6-bf72-9833-60180a9ca091','920ed607-4a99-1bc8-930d-60180a7c44f1','8a0bec92-fd8e-4b45-cf5c-6017ca24ca89',-98,'2021-02-01 14:04:44',0),('cf5c9200-371c-89af-6e8f-60181066115f','145ce98a-0b57-3e66-8f20-60180fdba411','8c53c744-e17b-6c7c-0ebc-6017cad02aed',75,'2021-02-01 14:29:35',0),('cf68dcb3-43d6-ef1c-440d-60180f7f8e00','52c526cb-9c4a-23b6-b39f-60180f9089b2','6262a90b-c574-2f29-e5cf-6017cad9de97',-98,'2021-02-01 14:26:44',0),('cfb93fcd-55dc-19cd-6e35-60180adf2be7','920ed607-4a99-1bc8-930d-60180a7c44f1','8e8d16ca-188e-5eb5-00d6-6017caa388ea',80,'2021-02-01 14:04:44',0),('cfbc662e-b964-b58b-c890-601810694197','bef307c8-d095-6341-6352-601810875b07','c77cdbff-3ff2-9879-429b-6017ca36a710',75,'2021-02-01 14:31:59',0),('cfcf90e8-7c53-1ae7-1426-6018110bd681','a0b17db8-3562-2520-7a5b-60181003f945','cb26adac-ed61-d3a3-7c6e-6017ca433812',89,'2021-02-01 14:33:27',0),('cfdd6b56-afa4-502f-d012-601809a1f8c2','54779abd-cf10-d4b8-3946-601809414e38','delete',90,'2021-02-01 14:00:42',0),('cfde7c54-018f-baab-2509-60180f40e54c','52c526cb-9c4a-23b6-b39f-60180f9089b2','68185be1-b5ae-df0a-881c-6017cadf4a78',80,'2021-02-01 14:26:44',0),('cfe95bc1-0ece-25ec-86c8-60180f3f5291','52c526cb-9c4a-23b6-b39f-60180f9089b2','a18410d0-7678-b6ef-2c6d-6017ca0eeaf5',80,'2021-02-01 14:26:44',0),('d0241053-cda1-bd46-5bfb-60181078f71f','bef307c8-d095-6341-6352-601810875b07','c653cd76-f2b1-cf18-5f84-6017cae22650',75,'2021-02-01 14:31:59',0),('d033e267-7ca8-b464-57be-60181076a0f3','145ce98a-0b57-3e66-8f20-60180fdba411','83bafba5-b28d-645d-48f2-6017ca1c1383',-98,'2021-02-01 14:29:35',0),('d0388f35-3b0c-87d9-4f02-60180fd99d4b','52c526cb-9c4a-23b6-b39f-60180f9089b2','670e9cab-5dbc-df3f-a7e8-6017cadfb6a6',80,'2021-02-01 14:26:44',0),('d03c352d-51f7-0748-85e3-60180ae4e753','920ed607-4a99-1bc8-930d-60180a7c44f1','8dbe583f-f32d-fe7e-36ab-6017ca55dcb4',80,'2021-02-01 14:04:44',0),('d0641a55-78d9-f2f0-97dc-60180f6648c1','52c526cb-9c4a-23b6-b39f-60180f9089b2','a4da651d-8bd3-37de-e06c-6017cab354c0',80,'2021-02-01 14:26:44',0),('d073995d-764f-dd56-207e-601810512273','145ce98a-0b57-3e66-8f20-60180fdba411','927431e0-c275-5a96-5d0b-6017cabe20e7',-99,'2021-02-01 14:29:35',0),('d0900221-ba07-b6ef-ff33-6018104a925c','bef307c8-d095-6341-6352-601810875b07','882f3059-afd6-c38d-4091-6017ca2bde86',75,'2021-02-01 14:31:59',0),('d0b21221-d793-d91a-f989-60181158024d','a0b17db8-3562-2520-7a5b-60181003f945','d1b4b2de-3c43-1cf8-1126-6017caf932db',75,'2021-02-01 14:33:27',0),('d0bd2243-595c-78a1-242c-60180ace21ed','920ed607-4a99-1bc8-930d-60180a7c44f1','91b62206-bc91-ce7c-4c8f-6017ca594770',80,'2021-02-01 14:04:44',0),('d0dd4cb6-e4f9-e76a-f8e4-6018101cbe3c','bef307c8-d095-6341-6352-601810875b07','c9ed4ae1-e5d0-dc21-67ac-6017ca672b32',75,'2021-02-01 14:31:59',0),('d0e9afa2-aa4b-3d2b-3fb4-60180ff33edd','52c526cb-9c4a-23b6-b39f-60180f9089b2','6ab0bcfc-498f-dc3a-7f9f-6017ca790539',80,'2021-02-01 14:26:44',0),('d0ea68f9-7633-8358-c8c0-60180f635e31','52c526cb-9c4a-23b6-b39f-60180f9089b2','a3c278eb-300e-6fb2-795d-6017caae6b95',-99,'2021-02-01 14:26:44',0),('d0ea9cec-ecca-1a5a-e413-60180aac5f14','920ed607-4a99-1bc8-930d-60180a7c44f1','9023fcd5-063f-1f28-bab7-6017caf948ae',-99,'2021-02-01 14:04:44',0),('d115082c-c0de-ec5e-beaa-601809bd1bd3','54779abd-cf10-d4b8-3946-601809414e38','5362a646-6144-5c4e-9ebb-6017cabe59da',90,'2021-02-01 14:00:42',0),('d12087e7-42d4-f9ef-ec07-60180a3693e1','920ed607-4a99-1bc8-930d-60180a7c44f1','8c53c744-e17b-6c7c-0ebc-6017cad02aed',80,'2021-02-01 14:04:44',0),('d14ec80c-f526-dfbd-d4f8-60180fd05b48','52c526cb-9c4a-23b6-b39f-60180f9089b2','69c005e8-106e-4829-b29d-6017caf33603',-99,'2021-02-01 14:26:44',0),('d155d4b2-2084-006b-eafa-60180a768f2d','920ed607-4a99-1bc8-930d-60180a7c44f1','927431e0-c275-5a96-5d0b-6017cabe20e7',-99,'2021-02-01 14:04:44',0),('d15aa3c0-089c-4a7e-a22d-60180fea8f21','52c526cb-9c4a-23b6-b39f-60180f9089b2','a020d500-6246-3b1e-4d0d-6017ca57b752',80,'2021-02-01 14:26:44',0),('d16616c1-0cb9-4941-2a27-601811319c53','a0b17db8-3562-2520-7a5b-60181003f945','d10ba092-b594-4c74-4464-6017cad87ad6',75,'2021-02-01 14:33:27',0),('d17cf8ad-ffee-5c50-822b-601810c48746','bef307c8-d095-6341-6352-601810875b07','c888f7ec-948e-d52b-3604-6017ca473b89',-99,'2021-02-01 14:31:59',0),('d185d321-84b9-e161-a00b-6018105b2c9a','145ce98a-0b57-3e66-8f20-60180fdba411','8a35bd21-0821-a6ef-ec50-6017caa61ccb',75,'2021-02-01 14:29:35',0),('d18eeeaf-8f30-360c-1e31-60180f6182bd','52c526cb-9c4a-23b6-b39f-60180f9089b2','65acc685-f152-4714-6efa-6017ca8ae41a',80,'2021-02-01 14:26:44',0),('d19523f9-3fe3-d00c-cce3-60180a467480','920ed607-4a99-1bc8-930d-60180a7c44f1','8b8e0a99-3ec4-6d2b-4222-6017caf19b1e',80,'2021-02-01 14:04:44',0),('d1c2f536-f340-2646-612e-601810ced4fc','bef307c8-d095-6341-6352-601810875b07','c532c07f-9fe7-3f2f-8a5f-6017cad82dab',75,'2021-02-01 14:31:59',0),('d1c60ef9-7252-035d-eaf6-6018107a65e1','bef307c8-d095-6341-6352-601810875b07','72d488f9-c28c-d618-901e-6017ca7cd835',75,'2021-02-01 14:31:59',0),('d1cb0073-1da3-d056-8b22-601811642e57','a0b17db8-3562-2520-7a5b-60181003f945','d3178c03-b2e4-a425-9eca-6017ca72eb45',75,'2021-02-01 14:33:27',0),('d1e719d4-32ed-005a-8dac-6018095a96a5','54779abd-cf10-d4b8-3946-601809414e38','edit',90,'2021-02-01 14:00:42',0),('d1e9dcce-9e5a-e00e-60cf-601810d2815d','145ce98a-0b57-3e66-8f20-60180fdba411','8b8e0a99-3ec4-6d2b-4222-6017caf19b1e',75,'2021-02-01 14:29:35',0),('d1ebe45c-df45-a74d-7d71-60180f484abf','52c526cb-9c4a-23b6-b39f-60180f9089b2','a57c2f16-66b6-bae7-008d-6017cacfd6bf',-99,'2021-02-01 14:26:44',0),('d201de43-1b7f-10c0-2f6a-60180ab528ec','920ed607-4a99-1bc8-930d-60180a7c44f1','1bf7977f-5bc1-935c-5f55-6017ca47912c',-98,'2021-02-01 14:04:44',0),('d2115270-faa0-0f42-89bc-601810fbeb59','bef307c8-d095-6341-6352-601810875b07','da4e44f2-19f9-33ea-a79f-6017caf3bb39',-99,'2021-02-01 14:31:59',0),('d2303727-c33f-f54c-f51b-60180a2c3fc5','920ed607-4a99-1bc8-930d-60180a7c44f1','21b5d1eb-9d8b-387e-0076-6017ca4bb706',80,'2021-02-01 14:04:44',0),('d230a339-bf16-fd92-1af0-60180f40334b','52c526cb-9c4a-23b6-b39f-60180f9089b2','6bd15dbd-714c-3312-e455-6017ca15365e',-99,'2021-02-01 14:26:44',0),('d232240c-9a07-4359-05bb-6018102c6373','145ce98a-0b57-3e66-8f20-60180fdba411','8914ea66-9b43-bf8d-ab0f-6017cae44b71',75,'2021-02-01 14:29:35',0),('d2546a1f-f6b0-79cc-fc0e-601811fd0a72','a0b17db8-3562-2520-7a5b-60181003f945','d23c0c73-ef18-7df2-801f-6017cae194f6',-99,'2021-02-01 14:33:27',0),('d272826e-9a84-528b-9c9f-60180a813930','920ed607-4a99-1bc8-930d-60180a7c44f1','20d92e13-2707-fbfc-6aae-6017ca15be16',80,'2021-02-01 14:04:44',0),('d27847cf-ecef-2fae-678c-601809f833b2','54779abd-cf10-d4b8-3946-601809414e38','export',90,'2021-02-01 14:00:42',0),('d27b4abc-afab-c62d-4855-601810a33780','bef307c8-d095-6341-6352-601810875b07','ca9243e9-0177-e253-d4db-6017cae7ea3f',-99,'2021-02-01 14:31:59',0),('d285c700-64d8-1cf0-eece-60180f03c39f','52c526cb-9c4a-23b6-b39f-60180f9089b2','9e20b241-b441-e11e-e26e-6017ca510608',80,'2021-02-01 14:26:44',0),('d288fbcd-d935-96f9-1c56-6018116a9906','a0b17db8-3562-2520-7a5b-60181003f945','cf98c060-aa97-69a2-bfb8-6017caf73ecc',75,'2021-02-01 14:33:27',0),('d2950810-c226-4253-a182-60180a6a09a7','920ed607-4a99-1bc8-930d-60180a7c44f1','234f3db7-20b3-d6f5-e7b8-6017caa23e45',80,'2021-02-01 14:04:44',0),('d2b558f4-8904-d583-ec16-6018100ca0a5','bef307c8-d095-6341-6352-601810875b07','d3d342d1-256b-ae27-5355-6017ca3b20ae',75,'2021-02-01 14:31:59',0),('d2cf0df5-582d-4711-445a-601811a398e6','a0b17db8-3562-2520-7a5b-60181003f945','d3a03f58-2d84-2e3c-5b75-6017ca7a050c',-99,'2021-02-01 14:33:27',0),('d2d0e4b7-03ce-064a-e36c-60180f4b37b8','52c526cb-9c4a-23b6-b39f-60180f9089b2','ce300fe4-aceb-1d76-c963-6017ca14a5f3',-98,'2021-02-01 14:26:44',0),('d2d38efc-8565-ef88-1987-60180903f93f','54779abd-cf10-d4b8-3946-601809414e38','import',90,'2021-02-01 14:00:42',0),('d2e45704-c5a5-5e07-3b07-60180a27ac12','920ed607-4a99-1bc8-930d-60180a7c44f1','221b4606-d71e-4b39-f8d1-6017ca0185fa',-99,'2021-02-01 14:04:44',0),('d2f86770-39e1-b595-9fc1-6018104ef3a4','bef307c8-d095-6341-6352-601810875b07','c4858000-fe1e-b876-5d40-6017ca89c40a',75,'2021-02-01 14:31:59',0),('d3067b94-624b-85c9-4211-60180f2c7457','52c526cb-9c4a-23b6-b39f-60180f9089b2','64f66bf7-14b8-4b4d-be96-6017caacdcec',80,'2021-02-01 14:26:44',0),('d32ad619-2a7c-f6ff-49cb-60180a226c82','920ed607-4a99-1bc8-930d-60180a7c44f1','1fd0db20-6064-0513-4ea9-6017ca0cc94f',80,'2021-02-01 14:04:44',0),('d3332c7b-e764-282c-c82b-60180f2ab24f','52c526cb-9c4a-23b6-b39f-60180f9089b2','fd900cfb-53c8-2739-93ed-6017cae17103',80,'2021-02-01 14:26:44',0),('d340dd09-6dfa-1553-d849-60180965bd21','54779abd-cf10-d4b8-3946-601809414e38','list',90,'2021-02-01 14:00:42',0),('d34a6c1a-f5f5-f1b3-00ae-601810e51272','145ce98a-0b57-3e66-8f20-60180fdba411','8bf0667b-a379-e360-373a-6017cae0f35a',75,'2021-02-01 14:29:35',0),('d3557576-39dd-e0f9-cda6-601810f48fe4','bef307c8-d095-6341-6352-601810875b07','546743cc-6fc6-624c-2dec-6017ca948cf7',89,'2021-02-01 14:31:59',0),('d35c2949-e50f-5b1c-5a8c-6018105870a0','145ce98a-0b57-3e66-8f20-60180fdba411','1bf7977f-5bc1-935c-5f55-6017ca47912c',-98,'2021-02-01 14:29:35',0),('d3663a36-c4b1-7188-169b-6018113d7286','a0b17db8-3562-2520-7a5b-60181003f945','cdae776a-3357-3fc3-e44d-6017ca2c967b',75,'2021-02-01 14:33:27',0),('d3764094-da48-57fc-86b1-60180a404830','920ed607-4a99-1bc8-930d-60180a7c44f1','2406bc8f-4929-38a5-9f9f-6017ca6c2433',-99,'2021-02-01 14:04:44',0),('d390b7de-972c-df27-1a07-60181023a1ac','bef307c8-d095-6341-6352-601810875b07','e21f652f-6598-aa63-5104-6017ca3269cc',-98,'2021-02-01 14:31:59',0),('d3968003-df29-0e9c-ba00-6018090ef1fa','54779abd-cf10-d4b8-3946-601809414e38','massupdate',90,'2021-02-01 14:00:42',0),('d39a0947-a2aa-680b-9fe1-601810d54d36','bef307c8-d095-6341-6352-601810875b07','597eaaa5-85c4-a5dd-05a5-6017cac9ea90',75,'2021-02-01 14:31:59',0),('d3a7e331-f0a5-6ca0-65a2-601811f019a5','a0b17db8-3562-2520-7a5b-60181003f945','97f22f4d-0e7c-61e6-6799-6017cac0b6fb',-98,'2021-02-01 14:33:27',0),('d3c133a1-e87e-2209-79cb-60180ae4dca9','920ed607-4a99-1bc8-930d-60180a7c44f1','1e5f2892-a756-0832-4a6e-6017caf95bd8',80,'2021-02-01 14:04:44',0),('d3cefae8-683a-f709-7a24-60180fbb6500','52c526cb-9c4a-23b6-b39f-60180f9089b2','f4bb0782-df1c-f4d1-1c0d-6017ca07bb9d',80,'2021-02-01 14:26:44',0),('d3fab9bc-7ec7-5e99-2fb4-60180fb35769','52c526cb-9c4a-23b6-b39f-60180f9089b2','f5630cd8-fe01-80b0-773c-6017ca41717a',-98,'2021-02-01 14:26:44',0),('d3ff2625-5de3-1966-c136-60180acb9c10','920ed607-4a99-1bc8-930d-60180a7c44f1','b899af45-a8cb-564b-2b5d-6017caafa414',-98,'2021-02-01 14:04:44',0),('d404001f-90aa-1345-e4c6-60180af9c502','920ed607-4a99-1bc8-930d-60180a7c44f1','26b29b11-218c-3567-bd34-6017ca3f73c5',80,'2021-02-01 14:04:44',0),('d40d65bc-29ea-dc00-7771-60181052719b','145ce98a-0b57-3e66-8f20-60180fdba411','21b5d1eb-9d8b-387e-0076-6017ca4bb706',75,'2021-02-01 14:29:35',0),('d41556d3-4ea7-7d98-12b6-601811336fb4','a0b17db8-3562-2520-7a5b-60181003f945','9c902b35-c1f4-32bf-0803-6017ca926dbe',75,'2021-02-01 14:33:27',0),('d41e9b37-1cd5-e774-a254-601809470d62','54779abd-cf10-d4b8-3946-601809414e38','view',90,'2021-02-01 14:00:42',0),('d42a6b48-111a-cb36-8bc1-6018107813f8','bef307c8-d095-6341-6352-601810875b07','58bb86e4-ee28-d2dd-36d4-6017ca0907f4',75,'2021-02-01 14:31:59',0),('d438c71a-83b7-800c-0fbb-60180f6dc6b4','52c526cb-9c4a-23b6-b39f-60180f9089b2','11076fd5-1162-9638-0052-6017ca6891e0',80,'2021-02-01 14:26:44',0),('d446bd96-9be5-3d4f-d3f5-60181042e63c','bef307c8-d095-6341-6352-601810875b07','e5a726b8-46e2-5577-6768-6017ca4e8709',75,'2021-02-01 14:31:59',0),('d447be17-fcc0-28be-9bb7-601810027a00','145ce98a-0b57-3e66-8f20-60180fdba411','8b65b469-c5df-e8ca-4420-6017caa83b89',-99,'2021-02-01 14:29:35',0),('d4a1f849-003a-9570-67c3-60180a0c81a0','920ed607-4a99-1bc8-930d-60180a7c44f1','bc577676-7c95-b78d-df76-6017ca9b20dd',80,'2021-02-01 14:04:44',0),('d4a6f656-4a9c-a9ef-8551-601810130482','bef307c8-d095-6341-6352-601810875b07','e4b06495-feb8-2d70-cb38-6017ca9b8502',75,'2021-02-01 14:31:59',0),('d4bf5e6e-5413-cdb0-d90c-6018096c5430','54779abd-cf10-d4b8-3946-601809414e38','6262a90b-c574-2f29-e5cf-6017cad9de97',89,'2021-02-01 14:00:42',0),('d4c08c56-b91e-7847-ecde-601811a02b03','a0b17db8-3562-2520-7a5b-60181003f945','9b63b5a6-2600-6a71-577a-6017ca89ae0e',75,'2021-02-01 14:33:27',0),('d4eea947-4b70-84ee-cedd-60180aa35a6b','920ed607-4a99-1bc8-930d-60180a7c44f1','bb014dc7-231c-d3be-3127-6017ca522de8',80,'2021-02-01 14:04:44',0),('d4fed5ca-139f-2856-b042-60180ffcc747','52c526cb-9c4a-23b6-b39f-60180f9089b2','106a7216-7119-fcfc-2b1e-6017ca6cc264',-99,'2021-02-01 14:26:44',0),('d5064d02-091e-47dc-7297-601809578c8b','54779abd-cf10-d4b8-3946-601809414e38','68185be1-b5ae-df0a-881c-6017cadf4a78',90,'2021-02-01 14:00:42',0),('d52128c2-20af-bc34-221a-60181106aa12','a0b17db8-3562-2520-7a5b-60181003f945','9dc29313-6fce-8cc2-bab3-6017ca93cb71',75,'2021-02-01 14:33:27',0),('d5270e10-ce41-0454-62bf-601810baae1f','bef307c8-d095-6341-6352-601810875b07','5cc0b349-3770-876d-484a-6017ca3bee65',75,'2021-02-01 14:31:59',0),('d52a1908-3347-5f27-7b7b-601810be1590','bef307c8-d095-6341-6352-601810875b07','e6c56d8e-33d3-8a8d-3b47-6017ca263dc6',75,'2021-02-01 14:31:59',0),('d541af22-a059-239f-ed44-60180a701a23','920ed607-4a99-1bc8-930d-60180a7c44f1','beaed700-c854-1c4e-c41f-6017ca967318',80,'2021-02-01 14:04:44',0),('d55d268a-7623-1360-2a54-601810fcf2c8','145ce98a-0b57-3e66-8f20-60180fdba411','882f3059-afd6-c38d-4091-6017ca2bde86',75,'2021-02-01 14:29:35',0),('d55f54e5-29a0-3443-aee8-601809b8fd0d','54779abd-cf10-d4b8-3946-601809414e38','670e9cab-5dbc-df3f-a7e8-6017cadfb6a6',90,'2021-02-01 14:00:42',0),('d58f8e49-2e93-7c58-7c7e-601811399b97','a0b17db8-3562-2520-7a5b-60181003f945','9d2620e1-e27a-9565-dbda-6017ca3ffa98',-99,'2021-02-01 14:33:27',0),('d595c11a-8290-1e89-fe3a-60180f79c2c3','52c526cb-9c4a-23b6-b39f-60180f9089b2','13d9d342-dc20-4e5b-4f4f-6017ca0bd170',80,'2021-02-01 14:26:44',0),('d59cfb31-d1c1-7d11-a381-60180a0bd072','920ed607-4a99-1bc8-930d-60180a7c44f1','bceb6bef-9e3e-2c85-bbac-6017cafb0acf',-99,'2021-02-01 14:04:44',0),('d5a1fc35-be92-71bf-ec52-60180973422f','54779abd-cf10-d4b8-3946-601809414e38','6ab0bcfc-498f-dc3a-7f9f-6017ca790539',90,'2021-02-01 14:00:42',0),('d5a95dfd-284a-74cc-2154-60180ffcd414','52c526cb-9c4a-23b6-b39f-60180f9089b2','e5ae0a64-7b08-de38-3aa6-6017ca281050',80,'2021-02-01 14:26:44',0),('d5a9bc31-f950-46e3-5190-6018103435d9','bef307c8-d095-6341-6352-601810875b07','5aec88a5-6ff8-c1dc-8178-6017ca019e55',-99,'2021-02-01 14:31:59',0),('d5c7d629-88ff-38b0-8098-601810c2a24f','bef307c8-d095-6341-6352-601810875b07','e63b841e-387c-ad8e-8f4b-6017ca3c9896',-99,'2021-02-01 14:31:59',0),('d5c80e55-0e52-34b7-e028-601810c34501','bef307c8-d095-6341-6352-601810875b07','d98bf6b0-ff19-5726-0429-6017cad40d74',-99,'2021-02-01 14:31:59',0),('d5dfba0c-3031-68e8-3c5d-60180a789a06','920ed607-4a99-1bc8-930d-60180a7c44f1','ba473bcc-7238-9791-6f76-6017ca6721e5',80,'2021-02-01 14:04:44',0),('d6124d4f-9bfb-510f-bade-60180adc50bc','920ed607-4a99-1bc8-930d-60180a7c44f1','bf82a946-415f-bc3a-8fc7-6017ca457085',-99,'2021-02-01 14:04:44',0),('d6200f5e-f200-7415-8c8c-60180fbf7de6','52c526cb-9c4a-23b6-b39f-60180f9089b2','8911290d-27ae-4a1a-6dc7-6017cacc0f60',80,'2021-02-01 14:26:44',0),('d6234a44-429b-e82e-17d1-6018091ccb45','54779abd-cf10-d4b8-3946-601809414e38','69c005e8-106e-4829-b29d-6017caf33603',90,'2021-02-01 14:00:42',0),('d62768dd-149e-02fb-7352-60180fa5a934','52c526cb-9c4a-23b6-b39f-60180f9089b2','118371af-80d6-1cde-4a5b-6017ca11c89f',-99,'2021-02-01 14:26:44',0),('d63f26b9-dd90-a265-e187-60180a793910','920ed607-4a99-1bc8-930d-60180a7c44f1','b9a397e5-66a6-9988-7929-6017cae9079d',80,'2021-02-01 14:04:44',0),('d6449e7e-0e7f-c82a-52f3-601810238327','bef307c8-d095-6341-6352-601810875b07','e3f720d1-c9c2-381c-98d5-6017ca7e0a85',75,'2021-02-01 14:31:59',0),('d64a6802-d66a-7430-56b9-601810805b1a','145ce98a-0b57-3e66-8f20-60180fdba411','8c8ae67b-d645-cdb5-f0a8-6017ca1e81ce',-99,'2021-02-01 14:29:35',0),('d661e562-53a1-051e-ad8c-601811b1a496','a0b17db8-3562-2520-7a5b-60181003f945','99735554-9a7d-a7af-c53e-6017ca281ffa',75,'2021-02-01 14:33:27',0),('d670728f-f164-de05-8477-60180989ee65','54779abd-cf10-d4b8-3946-601809414e38','65acc685-f152-4714-6efa-6017ca8ae41a',90,'2021-02-01 14:00:42',0),('d6736590-bce5-09db-3ab1-60180f4d2b2e','52c526cb-9c4a-23b6-b39f-60180f9089b2','da670931-2349-18a0-44b3-6017ca9c2ded',80,'2021-02-01 14:26:44',0),('d6879b47-752e-9ca7-c9a8-60181094c357','145ce98a-0b57-3e66-8f20-60180fdba411','20d92e13-2707-fbfc-6aae-6017ca15be16',75,'2021-02-01 14:29:35',0),('d68f67de-5680-71f1-2bc8-60180a8ca7cb','920ed607-4a99-1bc8-930d-60180a7c44f1','97e9402e-af05-1ead-a076-6017ca207f26',89,'2021-02-01 14:04:44',0),('d697be7e-b992-e2ec-9830-6018101246ca','bef307c8-d095-6341-6352-601810875b07','e740cd02-ebce-f2e3-e4ff-6017ca03a2e5',-99,'2021-02-01 14:31:59',0),('d6a2dce8-4c91-984a-5941-6018095271e1','54779abd-cf10-d4b8-3946-601809414e38','6bd15dbd-714c-3312-e455-6017ca15365e',90,'2021-02-01 14:00:42',0),('d6a4f1a8-157f-ba4e-6f2f-6018107b9684','bef307c8-d095-6341-6352-601810875b07','56b5cd8a-0abd-eafa-d278-6017ca815664',75,'2021-02-01 14:31:59',0),('d6afd755-1ea2-630c-55e7-60180f40a3a0','52c526cb-9c4a-23b6-b39f-60180f9089b2','130f4e97-de89-d0df-fdf4-6017cafd79fb',80,'2021-02-01 14:26:44',0),('d6c1a140-14ab-a1d4-9fe9-60180a9409cb','920ed607-4a99-1bc8-930d-60180a7c44f1','9dad8dfc-64d2-5c22-7fed-6017caa67ae1',80,'2021-02-01 14:04:44',0),('d6e7ee27-76b9-a80f-e75f-60180f04cc93','52c526cb-9c4a-23b6-b39f-60180f9089b2','c0400db5-486a-beee-146a-6017ca7174dc',-98,'2021-02-01 14:26:44',0),('d6fce0da-a9b7-d392-50e1-60181048a66e','bef307c8-d095-6341-6352-601810875b07','e344c340-e4e2-4505-54a2-6017ca5f2b7c',75,'2021-02-01 14:31:59',0),('d704fbd1-6730-eed7-007b-60180afc4880','920ed607-4a99-1bc8-930d-60180a7c44f1','9c7adf56-4680-5e30-ff28-6017cadf52c8',80,'2021-02-01 14:04:44',0),('d7167ca2-5787-b3ff-3796-6018104f7648','145ce98a-0b57-3e66-8f20-60180fdba411','8736f700-cfc6-914f-0006-6017ca6a5053',75,'2021-02-01 14:29:35',0),('d7217077-d054-1fc3-8428-60181116b077','a0b17db8-3562-2520-7a5b-60181003f945','9e6be21b-d7c9-3519-4dfc-6017ca2292c5',-99,'2021-02-01 14:33:27',0),('d732d6cf-8b6b-416b-d37d-60180abc4d90','920ed607-4a99-1bc8-930d-60180a7c44f1','9f6d45af-0924-9907-090a-6017ca293441',80,'2021-02-01 14:04:44',0),('d73eb9ce-12a6-2695-beb2-601810b8919c','145ce98a-0b57-3e66-8f20-60180fdba411','234f3db7-20b3-d6f5-e7b8-6017caa23e45',75,'2021-02-01 14:29:35',0),('d74c50e1-4d0a-bec2-a94b-60180992f6ce','54779abd-cf10-d4b8-3946-601809414e38','64f66bf7-14b8-4b4d-be96-6017caacdcec',90,'2021-02-01 14:00:42',0),('d7680c19-88d9-0851-a523-601811b82f91','a0b17db8-3562-2520-7a5b-60181003f945','d4ef4a17-0ff2-1c7d-f14a-6017ca54bfe6',75,'2021-02-01 14:33:27',0),('d77379b1-dedd-132e-146b-60180aafecc8','920ed607-4a99-1bc8-930d-60180a7c44f1','9e8c53ec-f5f5-1908-8fd6-6017ca4b90f4',-99,'2021-02-01 14:04:44',0),('d785602d-2a2c-d2c4-e8c6-601810d79d79','bef307c8-d095-6341-6352-601810875b07','dc27b527-bed4-aea5-836c-6017ca6ad29e',-98,'2021-02-01 14:31:59',0),('d7856e98-71f7-2b1d-8981-601810334287','bef307c8-d095-6341-6352-601810875b07','5d9bcf8a-f920-4d6c-4092-6017caf54c89',-99,'2021-02-01 14:31:59',0),('d78d84dd-5842-82b2-ef7c-601809d930c3','54779abd-cf10-d4b8-3946-601809414e38','f5630cd8-fe01-80b0-773c-6017ca41717a',89,'2021-02-01 14:00:42',0),('d795821d-98c9-5311-1bcf-6018114d14b3','a0b17db8-3562-2520-7a5b-60181003f945','98bae92f-53aa-2a9a-f0ae-6017ca2d9978',75,'2021-02-01 14:33:27',0),('d7b29f82-4c12-175b-34b5-60180a032e04','920ed607-4a99-1bc8-930d-60180a7c44f1','9b2882df-e540-afe4-9c83-6017ca7e0aa7',80,'2021-02-01 14:04:44',0),('d7b44143-8361-67f8-fba4-6018094a1a6b','54779abd-cf10-d4b8-3946-601809414e38','13d9d342-dc20-4e5b-4f4f-6017ca0bd170',90,'2021-02-01 14:00:42',0),('d7dc5813-e597-f51e-646a-60180a028aae','920ed607-4a99-1bc8-930d-60180a7c44f1','a0125536-b231-699a-6df1-6017cac450ac',-99,'2021-02-01 14:04:44',0),('d7eee6e5-1aa8-d73f-09e6-60181019d0c0','145ce98a-0b57-3e66-8f20-60180fdba411','60d4e068-e997-5fa7-cb8f-6017cafcf344',-98,'2021-02-01 14:29:35',0),('d7f370cd-fb4c-e21b-fff2-601810938896','bef307c8-d095-6341-6352-601810875b07','e24cd46c-c7c0-b6e7-f8be-6017cadc5e71',75,'2021-02-01 14:31:59',0),('d7f70d65-f618-6771-13f1-601809b26bf8','54779abd-cf10-d4b8-3946-601809414e38','130f4e97-de89-d0df-fdf4-6017cafd79fb',90,'2021-02-01 14:00:42',0),('d804e904-d89a-c910-96bd-6018107cc11e','bef307c8-d095-6341-6352-601810875b07','54ee577a-c979-bb12-f31e-6017ca80543c',75,'2021-02-01 14:31:59',0),('d82e5b55-7ed4-b12b-2f91-601811adff73','a0b17db8-3562-2520-7a5b-60181003f945','bc5c5ae8-69e2-79f1-be97-6017ca327292',-98,'2021-02-01 14:33:27',0),('d8334c4c-c132-6de2-e31d-60180f25c923','52c526cb-9c4a-23b6-b39f-60180f9089b2','45ba0903-1ee6-3328-71bc-6017ca5f8701',80,'2021-02-01 14:26:44',0),('d84ca88c-7b56-5496-0da9-60181052ac35','145ce98a-0b57-3e66-8f20-60180fdba411','221b4606-d71e-4b39-f8d1-6017ca0185fa',-99,'2021-02-01 14:29:35',0),('d84fefaf-0fe3-8105-9178-601809bc3f2d','54779abd-cf10-d4b8-3946-601809414e38','15d35546-78f9-f848-591f-6017cacb9c85',90,'2021-02-01 14:00:42',0),('d860f6c6-5863-6cae-dbeb-60180a760853','920ed607-4a99-1bc8-930d-60180a7c44f1','986eee81-167e-9465-9b49-6017ca064f5f',80,'2021-02-01 14:04:44',0),('d8733a8a-a9e1-faff-8c90-601810c80ec9','bef307c8-d095-6341-6352-601810875b07','e193cedb-c4ed-434d-40b7-6017cab333cc',75,'2021-02-01 14:31:59',0),('d888e61b-578a-5e56-5586-601809a00a65','54779abd-cf10-d4b8-3946-601809414e38','14686825-9929-903e-465a-6017caa80eac',90,'2021-02-01 14:00:42',0),('d89c3f45-47c9-8f16-e881-601811ee1f8e','a0b17db8-3562-2520-7a5b-60181003f945','c0d49832-2531-68de-84ac-6017cabd7e17',75,'2021-02-01 14:33:27',0),('d8a502cd-7b03-9bf9-b46d-60180a4bb69d','920ed607-4a99-1bc8-930d-60180a7c44f1','ad72033b-d248-1445-3717-6017ca405307',-98,'2021-02-01 14:04:44',0),('d8b4bef4-1e96-4468-7661-60180fae145f','52c526cb-9c4a-23b6-b39f-60180f9089b2','3aef02cd-a257-9c01-6b8b-6017ca8f909a',80,'2021-02-01 14:26:44',0),('d8b8d579-ee18-e860-b613-60180f8d8555','52c526cb-9c4a-23b6-b39f-60180f9089b2','15d35546-78f9-f848-591f-6017cacb9c85',80,'2021-02-01 14:26:44',0),('d8c61aaf-ceed-cb18-6136-60181047b1d1','bef307c8-d095-6341-6352-601810875b07','e3d7c102-1126-6fe9-1677-6017ca809dba',75,'2021-02-01 14:31:59',0),('d8c6e1b6-15fc-29ab-1076-601810049afe','bef307c8-d095-6341-6352-601810875b07','95caaeaf-93f3-7e0f-a75d-6017cafeac2b',89,'2021-02-01 14:31:59',0),('d8d2d2b2-6d88-6298-3fe6-601809ae376c','54779abd-cf10-d4b8-3946-601809414e38','1252b2b2-1881-0a07-1b70-6017ca20b166',90,'2021-02-01 14:00:42',0),('d8f5e753-693a-e8ae-d8db-601810c65849','145ce98a-0b57-3e66-8f20-60180fdba411','651f020d-f67a-ce98-814e-6017ca62cee5',75,'2021-02-01 14:29:35',0),('d8fa08ef-403f-edf0-70b5-6018090265fe','54779abd-cf10-d4b8-3946-601809414e38','5131b6a6-ac2e-aab4-8297-6017cacd1a29',90,'2021-02-01 14:00:42',0),('d908c6d7-8985-eacc-a9ea-601809c4fc9e','54779abd-cf10-d4b8-3946-601809414e38','16a5a0f5-58f6-3eb2-3f5a-6017ca28282b',90,'2021-02-01 14:00:42',0),('d91abaa9-250f-9ac0-016d-60180abd7229','920ed607-4a99-1bc8-930d-60180a7c44f1','b0a59a80-8244-9f08-bf42-6017caeaa7f3',80,'2021-02-01 14:04:44',0),('d93904d7-fece-b976-0168-60180fc314d2','52c526cb-9c4a-23b6-b39f-60180f9089b2','58aa0977-1d78-2e4c-0190-6017ca8195b4',80,'2021-02-01 14:26:44',0),('d94b3491-e100-8bb9-6bc7-60180a9a92d6','920ed607-4a99-1bc8-930d-60180a7c44f1','b03e2b4c-2931-7fad-9b57-6017ca8ac75c',80,'2021-02-01 14:04:44',0),('d94d1691-6d4b-062b-09d5-601810748049','bef307c8-d095-6341-6352-601810875b07','e30b304e-5234-237f-21d2-6017cad23c56',-99,'2021-02-01 14:31:59',0),('d955bdb5-bfa9-57fa-4b54-601811103ee4','a0b17db8-3562-2520-7a5b-60181003f945','c03fe354-e2f4-98ae-d59a-6017ca91e9d3',75,'2021-02-01 14:33:27',0),('d97e5168-bbf6-dd97-b23b-601810c16673','bef307c8-d095-6341-6352-601810875b07','98d80d64-442b-4845-f330-6017ca409579',75,'2021-02-01 14:31:59',0),('d992963f-45f5-9b84-8d2b-60180a106123','920ed607-4a99-1bc8-930d-60180a7c44f1','b1b70587-5e65-c9e2-442e-6017ca9be6b4',80,'2021-02-01 14:04:44',0),('d997b907-04e6-2de4-3510-60180f362888','52c526cb-9c4a-23b6-b39f-60180f9089b2','4f470189-91df-c39c-04a7-6017cae1a63a',-99,'2021-02-01 14:26:44',0),('d9b2a101-05c1-4300-0ee8-601810343cdb','145ce98a-0b57-3e66-8f20-60180fdba411','1fd0db20-6064-0513-4ea9-6017ca0cc94f',75,'2021-02-01 14:29:35',0),('d9b7fe6c-3eae-5080-9fe0-60180a45eab8','920ed607-4a99-1bc8-930d-60180a7c44f1','b148ee1e-32f7-3ee6-9bd5-6017ca688368',-99,'2021-02-01 14:04:44',0),('d9c2af85-176b-1540-fdf9-6018106ab84f','145ce98a-0b57-3e66-8f20-60180fdba411','63623684-279d-11f2-ff80-6017ca26b7c2',75,'2021-02-01 14:29:35',0),('d9c70068-62a1-3d2f-1044-60180a3106d0','920ed607-4a99-1bc8-930d-60180a7c44f1','2a7d2e1b-9b3e-32b5-1e78-6017ca4fecff',-99,'2021-02-01 14:04:44',0),('d9d78fd1-a8ee-8fd3-2197-6018116074b4','a0b17db8-3562-2520-7a5b-60181003f945','c38d217e-6736-c873-0d76-6017ca449eb3',75,'2021-02-01 14:33:27',0),('d9e35663-8cd7-457f-0905-60180f81ba19','52c526cb-9c4a-23b6-b39f-60180f9089b2','14686825-9929-903e-465a-6017caa80eac',-99,'2021-02-01 14:26:44',0),('d9ef1925-fe80-efdb-73e6-601810128f3f','bef307c8-d095-6341-6352-601810875b07','e03d1f5c-2513-24d8-bdde-6017ca945ff0',75,'2021-02-01 14:31:59',0),('da273863-b696-5935-7a06-60180f2224df','52c526cb-9c4a-23b6-b39f-60180f9089b2','302b01b1-1748-9cbd-0930-6017ca8ca592',80,'2021-02-01 14:26:44',0),('da2e0b36-7087-9a39-a803-601809c01b28','54779abd-cf10-d4b8-3946-601809414e38','119735a8-6264-4508-281d-6017ca5602c9',90,'2021-02-01 14:00:42',0),('da4c087d-6089-8cb9-8903-601811055658','a0b17db8-3562-2520-7a5b-60181003f945','c1e1203c-3572-0db8-24e2-6017ca610d0c',-99,'2021-02-01 14:33:27',0),('da510907-f756-1740-5718-601810d8461e','145ce98a-0b57-3e66-8f20-60180fdba411','cf98c060-aa97-69a2-bfb8-6017caf73ecc',75,'2021-02-01 14:29:35',0),('da7c5bf0-e440-f6fa-8fa2-60180f04f71a','52c526cb-9c4a-23b6-b39f-60180f9089b2','1252b2b2-1881-0a07-1b70-6017ca20b166',80,'2021-02-01 14:26:44',0),('da7e0702-c827-5cd8-630f-601809461df7','54779abd-cf10-d4b8-3946-601809414e38','a1dba88a-f04c-1a8a-a892-6017ca6b9c0e',89,'2021-02-01 14:00:42',0),('da930980-4b70-285a-5a27-60180f159bdb','52c526cb-9c4a-23b6-b39f-60180f9089b2','681d0116-7635-42ba-f3d6-6017caa34383',-99,'2021-02-01 14:26:44',0),('da960b21-0bf9-cf22-50ef-6018105a21e3','bef307c8-d095-6341-6352-601810875b07','98318ae3-2987-0db6-aedc-6017caa934f7',75,'2021-02-01 14:31:59',0),('daa246c1-79df-acb8-97bc-60180ad5c40a','920ed607-4a99-1bc8-930d-60180a7c44f1','af785830-9b95-6e64-4175-6017ca031673',80,'2021-02-01 14:04:44',0),('daa84d33-06dd-ec72-f2c4-60181053d6bf','145ce98a-0b57-3e66-8f20-60180fdba411','67041382-dd21-ba5f-c8b6-6017ca5a32b2',75,'2021-02-01 14:29:35',0),('dab6c23b-e49a-6c35-9dd2-6018109f24b4','bef307c8-d095-6341-6352-601810875b07','e454847f-e338-c3eb-be96-6017ca4a2ea3',-99,'2021-02-01 14:31:59',0),('daca1f32-09fe-036d-6981-6018106c037a','145ce98a-0b57-3e66-8f20-60180fdba411','2406bc8f-4929-38a5-9f9f-6017ca6c2433',-99,'2021-02-01 14:29:35',0),('dadf2a8d-56b7-3799-dc5c-60181127bfa9','a0b17db8-3562-2520-7a5b-60181003f945','bee54d6c-3344-be7c-01e4-6017cabf69c7',75,'2021-02-01 14:33:27',0),('dae5606c-e429-eb56-2ab8-60180aaf7d72','920ed607-4a99-1bc8-930d-60180a7c44f1','b231fc57-fb19-a4fb-3c2d-6017ca35b664',-99,'2021-02-01 14:04:44',0),('daf4e3a5-33b3-7935-81d9-6018091aaa72','54779abd-cf10-d4b8-3946-601809414e38','a5c83c1f-45dc-c601-2782-6017cabac48b',90,'2021-02-01 14:00:42',0),('db1961eb-1fa5-90b2-ffa4-60180ab789a3','920ed607-4a99-1bc8-930d-60180a7c44f1','aecb124c-09c7-d9f6-442e-6017ca33edc8',80,'2021-02-01 14:04:44',0),('db1f8c87-377c-fbba-ba14-60180fab1208','52c526cb-9c4a-23b6-b39f-60180f9089b2','16a5a0f5-58f6-3eb2-3f5a-6017ca28282b',-99,'2021-02-01 14:26:44',0),('db247e41-e944-b95d-a714-60180f1b2a5d','52c526cb-9c4a-23b6-b39f-60180f9089b2','1a7603b6-dc9c-b191-8b8b-6017ca397446',80,'2021-02-01 14:26:44',0),('db30c01a-62ba-9e46-fa84-601809228966','54779abd-cf10-d4b8-3946-601809414e38','a51ed5ca-e6ea-6120-f675-6017ca40973a',90,'2021-02-01 14:00:42',0),('db4b9bfc-4544-0c0f-2916-601811c749f4','a0b17db8-3562-2520-7a5b-60181003f945','c4ba4945-bb22-2ce1-03e6-6017ca627fb1',-99,'2021-02-01 14:33:27',0),('db4c57f2-19e7-cc2b-835f-6018102ac271','bef307c8-d095-6341-6352-601810875b07','9a0c8414-dc37-00e0-5f53-6017ca9df993',75,'2021-02-01 14:31:59',0),('db5e0fc4-a5a0-75e2-0cda-60180f638783','52c526cb-9c4a-23b6-b39f-60180f9089b2','d3a1d12f-623a-1bec-0810-6017cafc9125',-98,'2021-02-01 14:26:44',0),('db645602-d273-c4c6-06c7-60180ab0ab73','920ed607-4a99-1bc8-930d-60180a7c44f1','cb26adac-ed61-d3a3-7c6e-6017ca433812',89,'2021-02-01 14:04:44',0),('db698b73-4160-bfbc-6096-6018097e8693','54779abd-cf10-d4b8-3946-601809414e38','a6dc7487-4f78-319e-eb0d-6017cae454e9',90,'2021-02-01 14:00:42',0),('db702e04-2162-5d0d-5509-6018100ae216','145ce98a-0b57-3e66-8f20-60180fdba411','65ec59d2-6ab2-6a0d-f80b-6017ca4e02aa',-99,'2021-02-01 14:29:35',0),('db9835e4-d12d-f3ea-614d-601810a54066','bef307c8-d095-6341-6352-601810875b07','de3aca57-08ed-bd1c-71db-6017caa8a814',75,'2021-02-01 14:31:59',0),('db9dd8c8-4af5-02ec-a79a-60180a87ebfe','920ed607-4a99-1bc8-930d-60180a7c44f1','d1b4b2de-3c43-1cf8-1126-6017caf932db',80,'2021-02-01 14:04:44',0),('dbadd48b-0b41-3006-075e-60180fdc702b','52c526cb-9c4a-23b6-b39f-60180f9089b2','119735a8-6264-4508-281d-6017ca5602c9',80,'2021-02-01 14:26:44',0),('dbaf4dae-daaa-babe-edd8-601809ac5670','54779abd-cf10-d4b8-3946-601809414e38','a66f362b-768c-db39-3986-6017ca23936b',90,'2021-02-01 14:00:42',0),('dbd76c8d-65b5-ff0a-cef7-6018108061eb','bef307c8-d095-6341-6352-601810875b07','72355743-6e36-a4b8-a9ae-6017ca6d4186',89,'2021-02-01 14:31:59',0),('dbdceb2e-7a8b-cbf4-4fb8-601809caa12c','54779abd-cf10-d4b8-3946-601809414e38','a43c437c-1608-81a0-4112-6017cac827a4',90,'2021-02-01 14:00:42',0),('dbe8d37e-bf6c-5974-83e3-60180ac58ddd','920ed607-4a99-1bc8-930d-60180a7c44f1','d10ba092-b594-4c74-4464-6017cad87ad6',80,'2021-02-01 14:04:44',0),('dbeaab73-69a8-9de4-a666-60180f7a6727','52c526cb-9c4a-23b6-b39f-60180f9089b2','d7a4a93f-f2b9-7acf-fd1a-6017ca338e09',80,'2021-02-01 14:26:44',0),('dc2bea8c-5fdf-c75a-23f1-60180a8e3d91','920ed607-4a99-1bc8-930d-60180a7c44f1','d3178c03-b2e4-a425-9eca-6017ca72eb45',80,'2021-02-01 14:04:44',0),('dc31a6e9-877f-0dba-1702-6018117e1b1a','a0b17db8-3562-2520-7a5b-60181003f945','bd19cf98-97d8-2daf-1f6b-6017ca395562',75,'2021-02-01 14:33:27',0),('dc35ae01-d091-564e-6ceb-601810e89a39','bef307c8-d095-6341-6352-601810875b07','998800ae-740e-54bd-2cba-6017caaaa73a',-99,'2021-02-01 14:31:59',0),('dc48a50c-70ab-6dde-4ba1-60180f6a52e2','52c526cb-9c4a-23b6-b39f-60180f9089b2','a1dba88a-f04c-1a8a-a892-6017ca6b9c0e',-98,'2021-02-01 14:26:44',0),('dc4c9d63-31a7-2127-a109-601809d7a334','54779abd-cf10-d4b8-3946-601809414e38','a79a0deb-3f53-b8d5-9317-6017ca50aa02',90,'2021-02-01 14:00:42',0),('dc53d8d8-23cb-1df9-c08c-6018104a9eac','145ce98a-0b57-3e66-8f20-60180fdba411','1e5f2892-a756-0832-4a6e-6017caf95bd8',75,'2021-02-01 14:29:35',0),('dc5ae7c1-4c49-a69f-2309-6018107a52c5','bef307c8-d095-6341-6352-601810875b07','773803fa-601f-7f1f-8433-6017caf1fefd',75,'2021-02-01 14:31:59',0),('dc5cc44d-b116-76af-c711-601810649ec0','145ce98a-0b57-3e66-8f20-60180fdba411','62d0a189-4595-a430-d15c-6017cacc3713',75,'2021-02-01 14:29:35',0),('dc840992-fb96-53d6-bbdb-601810c81243','bef307c8-d095-6341-6352-601810875b07','720128c8-49a7-b466-9bc7-6017ca049579',-99,'2021-02-01 14:31:59',0),('dc8721d9-92db-88bb-8c92-601809e6242d','54779abd-cf10-d4b8-3946-601809414e38','a2b066ca-8bc3-455f-49e3-6017caf5a616',90,'2021-02-01 14:00:42',0),('dc90f7db-7ca1-3024-c1c1-60180a24c63e','920ed607-4a99-1bc8-930d-60180a7c44f1','d23c0c73-ef18-7df2-801f-6017cae194f6',-99,'2021-02-01 14:04:44',0),('dcb699d7-725e-b5d4-98b2-6018094a94cc','54779abd-cf10-d4b8-3946-601809414e38','60810b5c-c79a-b6ef-ace1-6017ca93af34',89,'2021-02-01 14:00:42',0),('dcd03889-9c8c-c909-9266-60180a69e1e5','920ed607-4a99-1bc8-930d-60180a7c44f1','cf98c060-aa97-69a2-bfb8-6017caf73ecc',80,'2021-02-01 14:04:44',0),('dcdacd1b-8b39-9202-4ac5-60180fad4b23','52c526cb-9c4a-23b6-b39f-60180f9089b2','d71fb77c-48a2-8f60-7e1b-6017ca5bccba',80,'2021-02-01 14:26:44',0),('dceb7d45-4ccc-f868-337a-601809ac438f','54779abd-cf10-d4b8-3946-601809414e38','6474a3b1-3bc2-19c3-1ccd-6017ca43f71a',90,'2021-02-01 14:00:42',0),('dcfb1464-eee4-915a-9ce3-60181068bf02','bef307c8-d095-6341-6352-601810875b07','75e95896-bfb4-e7d1-8d5d-6017ca577257',75,'2021-02-01 14:31:59',0),('dd01db3c-35f7-5421-02d8-60180aa38971','920ed607-4a99-1bc8-930d-60180a7c44f1','d3a03f58-2d84-2e3c-5b75-6017ca7a050c',-99,'2021-02-01 14:04:44',0),('dd0261c1-c381-6659-3750-60181125c52b','a0b17db8-3562-2520-7a5b-60181003f945','c249c7e4-7796-6bf7-7a7b-6017ca2c5830',-98,'2021-02-01 14:33:27',0),('dd0e19ff-21c8-0f73-0b44-60181074041a','bef307c8-d095-6341-6352-601810875b07','97cbb191-9ddd-400d-a042-6017ca5c4392',75,'2021-02-01 14:31:59',0),('dd3a0875-0b57-b829-6fc4-601810d566ef','145ce98a-0b57-3e66-8f20-60180fdba411','67f497bf-cd72-1d8a-453a-6017ca594a2b',-99,'2021-02-01 14:29:35',0),('dd487a1d-0f69-9919-4ddb-60180ae7c63b','920ed607-4a99-1bc8-930d-60180a7c44f1','cdae776a-3357-3fc3-e44d-6017ca2c967b',80,'2021-02-01 14:04:44',0),('dd734074-c4ed-12cb-9824-60180f638cd0','52c526cb-9c4a-23b6-b39f-60180f9089b2','d9109e29-93c3-3b11-a26e-6017ca4c8c53',80,'2021-02-01 14:26:44',0),('dd7905ec-b902-93ad-cfae-601809c6b43c','54779abd-cf10-d4b8-3946-601809414e38','63ee943e-4bff-3fa7-bf48-6017ca030834',90,'2021-02-01 14:00:42',0),('dd8fd5f5-249e-2de7-01f4-60181197993b','a0b17db8-3562-2520-7a5b-60181003f945','c6489af9-2211-2408-2dc5-6017ca8bcab5',75,'2021-02-01 14:33:27',0),('ddb5dccd-397d-98ce-3276-601810d602de','145ce98a-0b57-3e66-8f20-60180fdba411','b899af45-a8cb-564b-2b5d-6017caafa414',-98,'2021-02-01 14:29:35',0),('ddc3a936-4b07-88a3-eca0-601809780b9b','54779abd-cf10-d4b8-3946-601809414e38','65fd01e4-d02e-d387-a060-6017ca1e4705',90,'2021-02-01 14:00:42',0),('ddc6d1f5-b508-cb1b-c9cb-60180f81a41d','52c526cb-9c4a-23b6-b39f-60180f9089b2','d881ab81-f5b9-7815-7501-6017caab079d',-99,'2021-02-01 14:26:44',0),('ddfc3767-d7fc-e500-aeab-601811cc69e9','a0b17db8-3562-2520-7a5b-60181003f945','c5c44e91-99cf-3ac6-a7ea-6017caac610a',75,'2021-02-01 14:33:27',0),('de0fef16-900f-effd-c929-60180a821072','920ed607-4a99-1bc8-930d-60180a7c44f1','97f22f4d-0e7c-61e6-6799-6017cac0b6fb',89,'2021-02-01 14:04:44',0),('de14098c-2244-e306-c4a4-601810afa960','bef307c8-d095-6341-6352-601810875b07','d4fcbe23-c827-2094-d420-6017ca831257',75,'2021-02-01 14:31:59',0),('de202244-5259-f610-0ea0-6018098c0884','54779abd-cf10-d4b8-3946-601809414e38','650abd63-f082-75a4-a58d-6017ca54dd12',90,'2021-02-01 14:00:42',0),('de2fd943-e228-8b90-f4b1-6018104834f6','bef307c8-d095-6341-6352-601810875b07','9aa4c23c-82cc-b784-2948-6017ca8efdf4',-99,'2021-02-01 14:31:59',0),('de30f25a-c824-5bdc-1c15-601810caaff6','145ce98a-0b57-3e66-8f20-60180fdba411','61b172af-81fb-c66f-3fb4-6017ca4545b2',75,'2021-02-01 14:29:35',0),('de4c6327-90ce-8b26-ae90-60180917a197','54779abd-cf10-d4b8-3946-601809414e38','631e9841-0a93-45b7-c37a-6017caecbf57',90,'2021-02-01 14:00:42',0),('de6b5dfa-c5c1-09f4-b987-60180fd36f95','52c526cb-9c4a-23b6-b39f-60180f9089b2','d67affcf-e393-960c-30dc-6017cadbbb20',80,'2021-02-01 14:26:44',0),('de798dde-84e7-405d-c9f6-60180961f8e7','54779abd-cf10-d4b8-3946-601809414e38','66a0808f-81f2-5d63-33cb-6017ca6f04b5',90,'2021-02-01 14:00:42',0),('de7c7976-8a23-69d5-e5f9-60180ad2ad93','920ed607-4a99-1bc8-930d-60180a7c44f1','9c902b35-c1f4-32bf-0803-6017ca926dbe',80,'2021-02-01 14:04:44',0),('de98982f-cf6a-0cb0-fa0e-60181087aa69','bef307c8-d095-6341-6352-601810875b07','79640946-aee0-9f50-e62a-6017cae5892d',75,'2021-02-01 14:31:59',0),('dea98ac7-6bfe-ca5e-49ae-60181175d1cb','a0b17db8-3562-2520-7a5b-60181003f945','c794c5c8-1658-d162-4728-6017caec8ae8',75,'2021-02-01 14:33:27',0),('deb00e81-e9d0-57e5-e29b-6018098ca8f3','54779abd-cf10-d4b8-3946-601809414e38','c532c07f-9fe7-3f2f-8a5f-6017cad82dab',90,'2021-02-01 14:00:42',0),('deb0925c-03c9-a2ca-dbe6-601809fddfc3','54779abd-cf10-d4b8-3946-601809414e38','626d8d6b-2260-4f45-9d57-6017ca9cec93',90,'2021-02-01 14:00:42',0),('debfa300-ac0e-fbc8-d6eb-60180a77b570','920ed607-4a99-1bc8-930d-60180a7c44f1','9b63b5a6-2600-6a71-577a-6017ca89ae0e',80,'2021-02-01 14:04:44',0),('ded08d72-64ad-6260-dc38-60181003e090','145ce98a-0b57-3e66-8f20-60180fdba411','6ac9b95e-2b95-8b91-edb2-6017cafd2c72',89,'2021-02-01 14:29:35',0),('deecc22f-fd8e-cc33-db4a-60180f7cda41','52c526cb-9c4a-23b6-b39f-60180f9089b2','d972e5ac-ed9b-9d26-c01a-6017cabd1654',-99,'2021-02-01 14:26:44',0),('def03e83-c8f9-fbb3-05e9-60180ad42d6a','920ed607-4a99-1bc8-930d-60180a7c44f1','9dc29313-6fce-8cc2-bab3-6017ca93cb71',80,'2021-02-01 14:04:44',0),('def13f8d-10f5-3e71-2b7d-601810d6c981','bef307c8-d095-6341-6352-601810875b07','970785ad-0325-24c1-aa65-6017ca359798',75,'2021-02-01 14:31:59',0),('def4a3fd-29c0-8b0f-e24f-6018096473df','54779abd-cf10-d4b8-3946-601809414e38','52e18872-14a7-3b94-8d54-6017ca3a8f42',89,'2021-02-01 14:00:42',0),('df17e40c-2a1f-8b6f-20c0-6018107ceedc','145ce98a-0b57-3e66-8f20-60180fdba411','bc577676-7c95-b78d-df76-6017ca9b20dd',75,'2021-02-01 14:29:35',0),('df192430-4ed3-1c9b-7887-60180f878388','52c526cb-9c4a-23b6-b39f-60180f9089b2','a5c83c1f-45dc-c601-2782-6017cabac48b',80,'2021-02-01 14:26:44',0),('df2242e4-29aa-357c-bc53-60181058595c','bef307c8-d095-6341-6352-601810875b07','77ccb264-3890-c274-4e17-6017ca98c87e',-99,'2021-02-01 14:31:59',0),('df260157-35e5-5407-b699-60180f2c7167','52c526cb-9c4a-23b6-b39f-60180f9089b2','38f99f5f-181a-9090-099b-6017ca1e67cb',-98,'2021-02-01 14:26:44',0),('df2df7e6-c838-4f74-efed-60180a50d3e2','920ed607-4a99-1bc8-930d-60180a7c44f1','9d2620e1-e27a-9565-dbda-6017ca3ffa98',-99,'2021-02-01 14:04:44',0),('df5da2bd-cf0b-37ed-2044-60180ae7366a','920ed607-4a99-1bc8-930d-60180a7c44f1','99735554-9a7d-a7af-c53e-6017ca281ffa',80,'2021-02-01 14:04:44',0),('df8249d0-c1e4-d34b-fe31-601810d0fd30','145ce98a-0b57-3e66-8f20-60180fdba411','70ca3409-a115-5547-4672-6017ca512a79',75,'2021-02-01 14:29:35',0),('df8c016e-0060-c217-eb8c-601811403343','a0b17db8-3562-2520-7a5b-60181003f945','c706f622-a7c2-cd76-47f4-6017ca5f1ee9',-99,'2021-02-01 14:33:27',0),('df932b3f-bbf3-fb3b-6d5d-60180fa143d0','52c526cb-9c4a-23b6-b39f-60180f9089b2','d4ef4a17-0ff2-1c7d-f14a-6017ca54bfe6',80,'2021-02-01 14:26:44',0),('dfa8785a-b014-0f15-dc84-60180faa5be0','52c526cb-9c4a-23b6-b39f-60180f9089b2','a51ed5ca-e6ea-6120-f675-6017ca40973a',80,'2021-02-01 14:26:44',0),('dfac0832-0ef6-087b-43a4-60180a692ad9','920ed607-4a99-1bc8-930d-60180a7c44f1','9e6be21b-d7c9-3519-4dfc-6017ca2292c5',-99,'2021-02-01 14:04:44',0),('dfafe96e-c658-1deb-bcd8-601809446af0','54779abd-cf10-d4b8-3946-601809414e38','55416b30-5fa8-b4e0-0a54-6017ca6b9792',90,'2021-02-01 14:00:42',0),('dff8fecb-6a2b-ba75-7f98-601810643692','145ce98a-0b57-3e66-8f20-60180fdba411','bb014dc7-231c-d3be-3127-6017ca522de8',75,'2021-02-01 14:29:35',0),('e0051384-a715-c52b-fee9-601809b4eb9f','54779abd-cf10-d4b8-3946-601809414e38','54e1674a-2c22-cc1d-10f2-6017cace8b60',90,'2021-02-01 14:00:42',0),('e00796c3-442b-5f48-5d2b-601810791ce3','bef307c8-d095-6341-6352-601810875b07','73fdb388-e429-64d1-7485-6017cae6514d',75,'2021-02-01 14:31:59',0),('e0100ee1-3a5c-8751-7877-60181141d320','a0b17db8-3562-2520-7a5b-60181003f945','fd900cfb-53c8-2739-93ed-6017cae17103',75,'2021-02-01 14:33:27',0),('e04a917a-1e3d-7d40-1856-601811c6f613','a0b17db8-3562-2520-7a5b-60181003f945','c5137ed7-10f9-bc73-4a6e-6017ca455098',75,'2021-02-01 14:33:27',0),('e0629074-6f50-bde7-0238-601809d60118','54779abd-cf10-d4b8-3946-601809414e38','5759d198-8f17-5f9b-59c3-6017ca131eaa',90,'2021-02-01 14:00:42',0),('e0815d0e-b2b1-fb49-1973-60180ffd8892','52c526cb-9c4a-23b6-b39f-60180f9089b2','b5c62ffc-a30c-fba7-206c-6017ca00a390',-98,'2021-02-01 14:26:44',0),('e088c573-fb72-ccd5-6299-60180a7df5d3','920ed607-4a99-1bc8-930d-60180a7c44f1','98bae92f-53aa-2a9a-f0ae-6017ca2d9978',80,'2021-02-01 14:04:44',0),('e0910aca-0359-24fd-e8a5-60180a0501c1','920ed607-4a99-1bc8-930d-60180a7c44f1','260ea293-5703-f62a-d014-6017ca9ff06c',80,'2021-02-01 14:04:44',0),('e0a06ada-cbed-b234-0643-601810183cd1','bef307c8-d095-6341-6352-601810875b07','7a44a0a8-2174-0769-fff0-6017caa1731c',-99,'2021-02-01 14:31:59',0),('e0ab21bb-ade2-078b-f64b-601810ecc0aa','bef307c8-d095-6341-6352-601810875b07','2b082bd0-78e2-0f73-8f30-6017cae6b554',89,'2021-02-01 14:31:59',0),('e0c86b8d-34ef-1848-c35c-60180f3b71fa','52c526cb-9c4a-23b6-b39f-60180f9089b2','a6dc7487-4f78-319e-eb0d-6017cae454e9',80,'2021-02-01 14:26:44',0),('e0e04c20-7ec6-6bf0-3bac-6018091c0d7a','54779abd-cf10-d4b8-3946-601809414e38','56a8406f-8f35-19fa-f417-6017caf288a8',90,'2021-02-01 14:00:42',0),('e0e69a60-f475-ead2-5c87-601810b81351','145ce98a-0b57-3e66-8f20-60180fdba411','6fec0d36-5a67-8238-f2ac-6017cae902b8',75,'2021-02-01 14:29:35',0),('e0ee1c19-1ea9-e546-4c4a-601810bdc035','145ce98a-0b57-3e66-8f20-60180fdba411','beaed700-c854-1c4e-c41f-6017ca967318',75,'2021-02-01 14:29:35',0),('e0f6e41b-9387-9c88-d9ec-60180a43e88d','920ed607-4a99-1bc8-930d-60180a7c44f1','bc5c5ae8-69e2-79f1-be97-6017ca327292',-98,'2021-02-01 14:04:44',0),('e106ca90-bb17-baf8-32de-601811b7e77a','a0b17db8-3562-2520-7a5b-60181003f945','c8f1f7e3-8a5a-b42f-bd7d-6017ca8013d7',-99,'2021-02-01 14:33:27',0),('e1232404-5ca0-4fc3-158e-601810511c60','bef307c8-d095-6341-6352-601810875b07','733ed99a-4574-0176-f887-6017cabe49e9',75,'2021-02-01 14:31:59',0),('e126ea81-b1d6-0278-a44d-60180fac96f0','52c526cb-9c4a-23b6-b39f-60180f9089b2','b9446e01-b190-5369-dac0-6017ca90247e',80,'2021-02-01 14:26:44',0),('e12986ef-6edc-e30b-a469-60180a00dae7','920ed607-4a99-1bc8-930d-60180a7c44f1','c0d49832-2531-68de-84ac-6017cabd7e17',80,'2021-02-01 14:04:44',0),('e13bb7e3-627d-ae5f-9ce7-601809c51804','54779abd-cf10-d4b8-3946-601809414e38','54679895-07c8-f76b-43d1-6017ca72a27a',90,'2021-02-01 14:00:42',0),('e1637db9-13a0-b05e-d088-601809ed9429','54779abd-cf10-d4b8-3946-601809414e38','5834a572-d414-ba60-078a-6017ca451330',90,'2021-02-01 14:00:42',0),('e163c797-b8aa-65bc-18cb-60180fcf7e53','52c526cb-9c4a-23b6-b39f-60180f9089b2','a66f362b-768c-db39-3986-6017ca23936b',-99,'2021-02-01 14:26:44',0),('e17495cf-e0a1-fec4-9b1e-60180a609361','920ed607-4a99-1bc8-930d-60180a7c44f1','c03fe354-e2f4-98ae-d59a-6017ca91e9d3',80,'2021-02-01 14:04:44',0),('e184469f-a688-93f2-7c7a-60181055bb13','145ce98a-0b57-3e66-8f20-60180fdba411','72d488f9-c28c-d618-901e-6017ca7cd835',75,'2021-02-01 14:29:35',0),('e1acd1c7-46c1-edac-aaa9-601810790735','145ce98a-0b57-3e66-8f20-60180fdba411','bceb6bef-9e3e-2c85-bbac-6017cafb0acf',-99,'2021-02-01 14:29:35',0),('e1b010fa-521d-f5da-4a9b-60180f439873','52c526cb-9c4a-23b6-b39f-60180f9089b2','b8979993-d9e2-3c23-2378-6017ca043ead',80,'2021-02-01 14:26:44',0),('e1b3db83-bdb3-7226-08fc-6018106b3b25','bef307c8-d095-6341-6352-601810875b07','30c31271-8204-35d9-ac35-6017cac62b20',75,'2021-02-01 14:31:59',0),('e1b8a5e8-1bf7-2479-dff6-6018098ed46d','54779abd-cf10-d4b8-3946-601809414e38','53ce4002-765c-019d-925e-6017ca6b0b89',90,'2021-02-01 14:00:42',0),('e1d793cd-9623-4b32-23bd-60180afe709a','920ed607-4a99-1bc8-930d-60180a7c44f1','c38d217e-6736-c873-0d76-6017ca449eb3',80,'2021-02-01 14:04:44',0),('e1e5fe2f-c37c-d81c-d251-60180942717f','54779abd-cf10-d4b8-3946-601809414e38','6d9d1858-3cb1-1bf8-47de-6017caecbe90',89,'2021-02-01 14:00:42',0),('e1ecb2dc-8b39-b6d3-ee48-6018110933c5','a0b17db8-3562-2520-7a5b-60181003f945','c431144f-3b85-b653-2799-6017ca279bff',75,'2021-02-01 14:33:27',0),('e216c7dc-1d66-b396-4397-6018097898f9','54779abd-cf10-d4b8-3946-601809414e38','70caaca7-26e2-1098-1756-6017ca845ecf',90,'2021-02-01 14:00:42',0),('e224d116-555a-64b1-add8-601810400ff8','bef307c8-d095-6341-6352-601810875b07','ea5c0154-cef1-803b-0ba7-6017ca67a911',89,'2021-02-01 14:31:59',0),('e256ae2c-da82-58f5-30c1-601810225711','145ce98a-0b57-3e66-8f20-60180fdba411','720128c8-49a7-b466-9bc7-6017ca049579',-99,'2021-02-01 14:29:35',0),('e259f328-90b6-74c4-7df8-60180fd8dba7','52c526cb-9c4a-23b6-b39f-60180f9089b2','ba77c542-9e5d-7ae6-e3f9-6017caa020b9',80,'2021-02-01 14:26:44',0),('e25c1de8-a2d7-872f-1b3e-60180fce34b3','52c526cb-9c4a-23b6-b39f-60180f9089b2','a43c437c-1608-81a0-4112-6017cac827a4',80,'2021-02-01 14:26:44',0),('e26d03b9-2b2d-10f9-a993-60180a8baa09','920ed607-4a99-1bc8-930d-60180a7c44f1','c1e1203c-3572-0db8-24e2-6017ca610d0c',-99,'2021-02-01 14:04:44',0),('e2770e4d-a9d3-b94a-b700-601809644706','54779abd-cf10-d4b8-3946-601809414e38','4eb5453c-539f-7da6-2393-6017cab07f2d',90,'2021-02-01 14:00:42',0),('e27864ac-25e4-a59f-39ff-601809657c9b','54779abd-cf10-d4b8-3946-601809414e38','6ffacbb5-5dca-0c27-5fae-6017ca1495ba',90,'2021-02-01 14:00:42',0),('e2a7ccc6-96b8-1974-b58d-601810fa1b48','bef307c8-d095-6341-6352-601810875b07','2efe11d5-6790-bf1f-8663-6017cad8523d',75,'2021-02-01 14:31:59',0),('e2ad41c0-7774-907d-c94f-601811e3e04e','a0b17db8-3562-2520-7a5b-60181003f945','cd88e407-1956-c897-a607-6017ca340c28',-98,'2021-02-01 14:33:27',0),('e2c2de08-e3b3-021a-1016-601810f13564','bef307c8-d095-6341-6352-601810875b07','14b748ba-7445-1bed-a6bc-6017ca1ed7b4',75,'2021-02-01 14:31:59',0),('e2e9311c-20dc-9a98-eb7a-60180ffc5259','52c526cb-9c4a-23b6-b39f-60180f9089b2','a79a0deb-3f53-b8d5-9317-6017ca50aa02',-99,'2021-02-01 14:26:44',0),('e2fa5e8b-e9bf-2add-994e-60180a43cbf2','920ed607-4a99-1bc8-930d-60180a7c44f1','bee54d6c-3344-be7c-01e4-6017cabf69c7',80,'2021-02-01 14:04:44',0),('e2fc5532-d618-89ea-7691-601810b275c4','145ce98a-0b57-3e66-8f20-60180fdba411','ba473bcc-7238-9791-6f76-6017ca6721e5',75,'2021-02-01 14:29:35',0),('e301fe0d-13fe-520a-cddd-60180ffa1d77','52c526cb-9c4a-23b6-b39f-60180f9089b2','b9e54d8b-7ade-bc5b-658e-6017ca43b993',-99,'2021-02-01 14:26:44',0),('e31baef6-71ce-9ae4-7684-6018102c710e','145ce98a-0b57-3e66-8f20-60180fdba411','6ed87ff1-dc29-9718-c8a2-6017cac6f7f7',75,'2021-02-01 14:29:35',0),('e31c10a1-2b8c-aa96-340a-601809e8cefe','54779abd-cf10-d4b8-3946-601809414e38','71fc608d-8555-80f2-5372-6017cae78ce3',90,'2021-02-01 14:00:42',0),('e3294770-5577-5cc6-156d-60181164b62a','a0b17db8-3562-2520-7a5b-60181003f945','d0901d67-9ee5-6676-9f62-6017ca8fda47',75,'2021-02-01 14:33:27',0),('e33b57c1-73ab-5230-90c2-6018100f9863','bef307c8-d095-6341-6352-601810875b07','12a05087-ac9b-b480-ef56-6017ca5bb531',75,'2021-02-01 14:31:59',0),('e34c5493-9c52-0089-e6fa-60180a01717e','920ed607-4a99-1bc8-930d-60180a7c44f1','c4ba4945-bb22-2ce1-03e6-6017ca627fb1',-99,'2021-02-01 14:04:44',0),('e34e6dea-2ca4-8f15-3a7e-60180920824f','54779abd-cf10-d4b8-3946-601809414e38','71456b4c-71e5-7e70-8411-6017caf4f852',90,'2021-02-01 14:00:42',0),('e3684366-2913-5917-1e3c-60180f7ce343','52c526cb-9c4a-23b6-b39f-60180f9089b2','b742e7ee-1eaa-6de2-be09-6017ca43a204',80,'2021-02-01 14:26:44',0),('e3729cd3-77ae-2dee-4c91-60180a170be3','920ed607-4a99-1bc8-930d-60180a7c44f1','bd19cf98-97d8-2daf-1f6b-6017ca395562',80,'2021-02-01 14:04:44',0),('e38378ac-bf3f-bc8a-e1e8-601810f48043','bef307c8-d095-6341-6352-601810875b07','331cee62-76bf-b82b-c04b-6017caf9b89c',75,'2021-02-01 14:31:59',0),('e3b514f5-3f8d-06c4-6aca-601809bc8d42','54779abd-cf10-d4b8-3946-601809414e38','6f4ed682-115a-e071-aa74-6017caf739a3',90,'2021-02-01 14:00:42',0),('e3dfaa56-20bb-c805-17b4-60181143a6bd','a0b17db8-3562-2520-7a5b-60181003f945','cfd801f1-971b-05c3-f426-6017cac294ff',75,'2021-02-01 14:33:27',0),('e3e65aff-d38e-0519-2d61-601809ee8608','54779abd-cf10-d4b8-3946-601809414e38','74193c93-40a8-b4b3-61b6-6017cabdd106',90,'2021-02-01 14:00:42',0),('e3f3bed0-9fb3-ff16-56cf-60180a28b622','920ed607-4a99-1bc8-930d-60180a7c44f1','c249c7e4-7796-6bf7-7a7b-6017ca2c5830',-98,'2021-02-01 14:04:44',0),('e40a36b8-70ed-4474-1eb6-601810f4771c','145ce98a-0b57-3e66-8f20-60180fdba411','73b832d2-55fa-46c9-f776-6017caf638a9',-99,'2021-02-01 14:29:35',0),('e41c0593-932d-cf10-584b-60180fddc488','52c526cb-9c4a-23b6-b39f-60180f9089b2','baed9da3-990f-9c19-73a4-6017ca3443a1',-99,'2021-02-01 14:26:44',0),('e4211b0c-4b58-c4b9-9f84-6018096467a4','54779abd-cf10-d4b8-3946-601809414e38','6ea461d8-ddf8-92b2-3408-6017ca96a386',90,'2021-02-01 14:00:42',0),('e425b179-da7c-fb0f-b81e-60180a9ebf42','920ed607-4a99-1bc8-930d-60180a7c44f1','c6489af9-2211-2408-2dc5-6017ca8bcab5',80,'2021-02-01 14:04:44',0),('e425e316-1e9a-e531-31f5-60181069d270','bef307c8-d095-6341-6352-601810875b07','1844b369-3730-ed93-c1df-6017cad6ef13',75,'2021-02-01 14:31:59',0),('e45e05b8-be43-e4eb-8461-60180ace84f5','920ed607-4a99-1bc8-930d-60180a7c44f1','33a4c648-6095-3a46-57e5-6017ca731b91',-98,'2021-02-01 14:04:44',0),('e46101c6-c87f-1e68-c124-60180a30d46f','920ed607-4a99-1bc8-930d-60180a7c44f1','c5c44e91-99cf-3ac6-a7ea-6017caac610a',80,'2021-02-01 14:04:44',0),('e4686c0e-871a-7cce-4ff9-601809210629','54779abd-cf10-d4b8-3946-601809414e38','e2bc5387-7429-ab0a-3d69-6017ca359d7b',89,'2021-02-01 14:00:42',0),('e48fa739-e9b7-ac92-0435-60180aa29301','920ed607-4a99-1bc8-930d-60180a7c44f1','c794c5c8-1658-d162-4728-6017caec8ae8',80,'2021-02-01 14:04:44',0),('e4965177-2c5f-6c0e-d940-60180fee2635','52c526cb-9c4a-23b6-b39f-60180f9089b2','b6911c5b-48f3-c461-d700-6017ca6f7761',80,'2021-02-01 14:26:44',0),('e49ea225-f0ee-69b2-ede8-6018102339bd','145ce98a-0b57-3e66-8f20-60180fdba411','6d78d2e2-cf60-ad18-ccba-6017cab10c1c',75,'2021-02-01 14:29:35',0),('e4b12b8d-d28e-a5ea-03c5-6018103d7a7f','bef307c8-d095-6341-6352-601810875b07','16b7009a-4890-65d1-3f8f-6017ca6c7043',-99,'2021-02-01 14:31:59',0),('e4c57da6-67ac-5478-50b4-60181028d715','145ce98a-0b57-3e66-8f20-60180fdba411','bf82a946-415f-bc3a-8fc7-6017ca457085',-99,'2021-02-01 14:29:35',0),('e4c7eca4-15c0-aa56-530d-601811d064f0','a0b17db8-3562-2520-7a5b-60181003f945','d186ebc9-f248-c713-57ad-6017ca877318',75,'2021-02-01 14:33:27',0),('e4d7a120-acdb-ce4b-b80e-60180fdceaa7','52c526cb-9c4a-23b6-b39f-60180f9089b2','a2b066ca-8bc3-455f-49e3-6017caf5a616',80,'2021-02-01 14:26:44',0),('e4f9e399-e425-f60e-c96d-6018098fc0aa','54779abd-cf10-d4b8-3946-601809414e38','e5173f3f-76a1-cf58-1013-6017cae80777',90,'2021-02-01 14:00:42',0),('e516d35e-a571-a690-4e69-60180f7c3347','52c526cb-9c4a-23b6-b39f-60180f9089b2','254fc6ba-64ef-df4a-d53f-6017ca814e78',-98,'2021-02-01 14:26:44',0),('e51cb010-42de-d933-cc81-60181008061a','bef307c8-d095-6341-6352-601810875b07','324c45e0-5b40-9a13-bba7-6017ca617468',-99,'2021-02-01 14:31:59',0),('e528d554-90ff-8c8d-e4c7-60180a15fea7','920ed607-4a99-1bc8-930d-60180a7c44f1','c706f622-a7c2-cd76-47f4-6017ca5f1ee9',-99,'2021-02-01 14:04:44',0),('e54ca933-f76a-7ab2-c2c2-6018106d651f','bef307c8-d095-6341-6352-601810875b07','1210b8d7-8527-cfab-15ab-6017ca872b87',75,'2021-02-01 14:31:59',0),('e55f255a-77d5-a4de-a3f5-60180903af09','54779abd-cf10-d4b8-3946-601809414e38','e4a782d6-f3e0-5420-7aa0-6017ca7dfddb',90,'2021-02-01 14:00:42',0),('e5600cb1-db56-cf57-8b28-60180fd38528','52c526cb-9c4a-23b6-b39f-60180f9089b2','e5173f3f-76a1-cf58-1013-6017cae80777',80,'2021-02-01 14:26:44',0),('e561f89c-17bf-e3b0-3b36-60181179e9a4','a0b17db8-3562-2520-7a5b-60181003f945','d0def67a-7a7d-3dea-616d-6017ca0ca5c0',-99,'2021-02-01 14:33:27',0),('e5780758-2f8b-3ba2-3633-60180a92ca05','920ed607-4a99-1bc8-930d-60180a7c44f1','c5137ed7-10f9-bc73-4a6e-6017ca455098',80,'2021-02-01 14:04:44',0),('e57c28bd-ff1a-e8bb-9c9e-60180f0fa9ef','52c526cb-9c4a-23b6-b39f-60180f9089b2','60810b5c-c79a-b6ef-ace1-6017ca93af34',-98,'2021-02-01 14:26:44',0),('e57d26ca-0a0d-7869-a402-60180f2e82bd','52c526cb-9c4a-23b6-b39f-60180f9089b2','28e1bd8d-b069-2676-b8fa-6017cac381c6',80,'2021-02-01 14:26:44',0),('e59c7de9-2665-22be-d897-601809f960bf','54779abd-cf10-d4b8-3946-601809414e38','e5e30ecd-895c-7f29-b5f7-6017ca1db364',90,'2021-02-01 14:00:42',0),('e5a33e06-cffc-2f78-04da-60180a301feb','920ed607-4a99-1bc8-930d-60180a7c44f1','c8f1f7e3-8a5a-b42f-bd7d-6017ca8013d7',-99,'2021-02-01 14:04:44',0),('e5d76f4c-d429-9142-87b4-60180a8f0f28','920ed607-4a99-1bc8-930d-60180a7c44f1','c431144f-3b85-b653-2799-6017ca279bff',80,'2021-02-01 14:04:44',0),('e5defeeb-2be0-872a-a7b1-6018100ca460','145ce98a-0b57-3e66-8f20-60180fdba411','b9a397e5-66a6-9988-7929-6017cae9079d',75,'2021-02-01 14:29:35',0),('e5e129ed-4220-bf5f-e24f-60180993bde1','54779abd-cf10-d4b8-3946-601809414e38','e57cbf72-739f-a668-7683-6017cae2687a',90,'2021-02-01 14:00:42',0),('e5efb82c-fd6c-7bcc-f222-60180f5b4103','52c526cb-9c4a-23b6-b39f-60180f9089b2','277ebc96-5c1a-429e-912c-6017ca79e468',80,'2021-02-01 14:26:44',0),('e5f2f3c3-0910-e476-787f-601810d1ec22','bef307c8-d095-6341-6352-601810875b07','2e23ea98-4f52-4fe8-0c62-6017ca933a95',75,'2021-02-01 14:31:59',0),('e61fe3d5-7a7e-dde2-ccd5-601810c8292a','bef307c8-d095-6341-6352-601810875b07','193e9c15-b4d4-c673-1b4b-6017ca498afe',-99,'2021-02-01 14:31:59',0),('e62307be-1dc6-1af0-9c27-601811d963b4','a0b17db8-3562-2520-7a5b-60181003f945','cf1e856c-b6ab-5b98-3ad5-6017ca7fb7eb',75,'2021-02-01 14:33:27',0),('e62ab5ea-5e40-73ac-6870-601809e1dff2','54779abd-cf10-d4b8-3946-601809414e38','e3eed07f-5bb3-2703-e548-6017caddebbf',90,'2021-02-01 14:00:42',0),('e64cf609-ca3d-9fac-7474-60180f4dba47','52c526cb-9c4a-23b6-b39f-60180f9089b2','2a3aa91e-f13f-e8e2-a69b-6017ca8378df',80,'2021-02-01 14:26:44',0),('e64fc1f8-7f2a-de25-727d-60180a4cb448','920ed607-4a99-1bc8-930d-60180a7c44f1','cd88e407-1956-c897-a607-6017ca340c28',-98,'2021-02-01 14:04:44',0),('e67c2751-a441-c64e-10f8-601810ad033d','bef307c8-d095-6341-6352-601810875b07','33998e3d-e989-c679-1dd4-6017ca3d2cc8',-99,'2021-02-01 14:31:59',0),('e68a8039-9826-804a-a515-60180f8f65ec','52c526cb-9c4a-23b6-b39f-60180f9089b2','6474a3b1-3bc2-19c3-1ccd-6017ca43f71a',80,'2021-02-01 14:26:44',0),('e6bac6c5-c5b0-9eec-9113-60180af0eaf9','920ed607-4a99-1bc8-930d-60180a7c44f1','d0901d67-9ee5-6676-9f62-6017ca8fda47',80,'2021-02-01 14:04:44',0),('e6bc6977-86e1-9cbd-a46c-601809e93042','54779abd-cf10-d4b8-3946-601809414e38','e72ba550-9aea-e958-95e8-6017ca63fa05',90,'2021-02-01 14:00:42',0),('e6cc0081-33c4-c0fd-6a82-6018106f2e22','bef307c8-d095-6341-6352-601810875b07','1153fb10-28fd-a556-8e38-6017ca79a353',75,'2021-02-01 14:31:59',0),('e6d87661-4460-9dcd-e313-6018118e195e','a0b17db8-3562-2520-7a5b-60181003f945','d205df45-00e2-fd60-1321-6017caaef991',-99,'2021-02-01 14:33:27',0),('e6f0177a-b91d-e96f-8da2-60180aa172bc','920ed607-4a99-1bc8-930d-60180a7c44f1','cfd801f1-971b-05c3-f426-6017cac294ff',80,'2021-02-01 14:04:44',0),('e70638bc-39a5-1a80-8624-601809f3fa33','54779abd-cf10-d4b8-3946-601809414e38','e33de50b-0af6-759b-2e46-6017ca41bb50',90,'2021-02-01 14:00:42',0),('e71055f9-4907-91b6-0b07-60180f69917b','52c526cb-9c4a-23b6-b39f-60180f9089b2','29d86b7d-ffe9-9bfb-4cf1-6017ca8db6c7',-99,'2021-02-01 14:26:44',0),('e7368c7f-3d68-7930-d704-60181014bfde','bef307c8-d095-6341-6352-601810875b07','2d2747b1-a21d-0f24-7ad8-6017cac0d820',75,'2021-02-01 14:31:59',0),('e7388479-113e-6327-8ae9-60180ac3e656','920ed607-4a99-1bc8-930d-60180a7c44f1','d186ebc9-f248-c713-57ad-6017ca877318',80,'2021-02-01 14:04:44',0),('e73d0762-03ad-e163-80a5-601810222fda','145ce98a-0b57-3e66-8f20-60180fdba411','d3a03f58-2d84-2e3c-5b75-6017ca7a050c',-99,'2021-02-01 14:29:35',0),('e7495405-9c32-79d7-fc60-6018096e4d8e','54779abd-cf10-d4b8-3946-601809414e38','2ea0f1e5-5ad1-9ed1-62be-6017cab19b3e',89,'2021-02-01 14:00:42',0),('e753aa71-76f0-4699-3ad1-60180f077ec3','52c526cb-9c4a-23b6-b39f-60180f9089b2','63ee943e-4bff-3fa7-bf48-6017ca030834',80,'2021-02-01 14:26:44',0),('e7720028-716f-a1bd-230d-601809eb8f63','54779abd-cf10-d4b8-3946-601809414e38','307a06a7-17d6-8be6-5b8d-6017ca1d1fe5',90,'2021-02-01 14:00:42',0),('e77ad98d-f6d2-84ec-4ab1-6018109b3beb','bef307c8-d095-6341-6352-601810875b07','4b5df074-2224-15a5-770a-6017ca31e0d2',-98,'2021-02-01 14:31:59',0),('e79e20f7-1b4a-7004-284d-60181196349e','a0b17db8-3562-2520-7a5b-60181003f945','ce72846b-97fc-6dbc-f5ff-6017ca04b487',75,'2021-02-01 14:33:27',0),('e7a20887-ad06-53a6-9ee4-60180a0bd7a5','920ed607-4a99-1bc8-930d-60180a7c44f1','377b9e0c-f502-7bb5-2c9f-6017ca706205',80,'2021-02-01 14:04:44',0),('e7a6a253-4625-0220-f30e-6018092fa41f','54779abd-cf10-d4b8-3946-601809414e38','300fc3b9-b50e-5fdc-1d14-6017cacc420b',90,'2021-02-01 14:00:42',0),('e7d8f87f-26a8-3fb5-7f89-60180f19e979','52c526cb-9c4a-23b6-b39f-60180f9089b2','26b29b11-218c-3567-bd34-6017ca3f73c5',80,'2021-02-01 14:26:44',0),('e7e164a7-1dcc-1fec-2267-601810a67bb5','bef307c8-d095-6341-6352-601810875b07','f2e8e852-51ce-32b0-7d1a-6017ca06e346',-98,'2021-02-01 14:31:59',0),('e7efc473-df44-105b-7b52-6018092b5de4','54779abd-cf10-d4b8-3946-601809414e38','31869517-c36b-60a8-d27a-6017ca2d73ca',90,'2021-02-01 14:00:42',0),('e7f7b2f6-9c24-4fce-c907-60181073242c','145ce98a-0b57-3e66-8f20-60180fdba411','97e9402e-af05-1ead-a076-6017ca207f26',-98,'2021-02-01 14:29:35',0),('e80909d0-e5e3-7622-6c45-60181193901c','a0b17db8-3562-2520-7a5b-60181003f945','b5c62ffc-a30c-fba7-206c-6017ca00a390',-98,'2021-02-01 14:33:27',0),('e80f04ba-7392-19aa-7c16-60181020b1c4','bef307c8-d095-6341-6352-601810875b07','6ed87ff1-dc29-9718-c8a2-6017cac6f7f7',75,'2021-02-01 14:31:59',0),('e822c80f-53ee-3053-49ff-60180fccc9e6','52c526cb-9c4a-23b6-b39f-60180f9089b2','65fd01e4-d02e-d387-a060-6017ca1e4705',80,'2021-02-01 14:26:44',0),('e8260e83-5de1-530e-bae2-60180f7da4a4','52c526cb-9c4a-23b6-b39f-60180f9089b2','3cc306a6-c503-f389-366b-6017ca4e3ae0',80,'2021-02-01 14:26:44',0),('e830504e-6fcd-27cf-8256-60180ffc5397','52c526cb-9c4a-23b6-b39f-60180f9089b2','2a7d2e1b-9b3e-32b5-1e78-6017ca4fecff',-99,'2021-02-01 14:26:44',0),('e8369af9-cdb7-230e-236c-60181036f5d9','bef307c8-d095-6341-6352-601810875b07','2cd00441-6e8e-a148-477b-6017ca30432f',75,'2021-02-01 14:31:59',0),('e83b1854-6b89-c64a-2945-601810d5b420','bef307c8-d095-6341-6352-601810875b07','506f61c9-49cf-d0e3-5448-6017ca7e282c',75,'2021-02-01 14:31:59',0),('e8600784-48ec-e901-7821-601809e05da3','54779abd-cf10-d4b8-3946-601809414e38','30f90944-e730-df75-95e6-6017ca1fa55b',90,'2021-02-01 14:00:42',0),('e8b37d62-191d-2b83-e113-6018109aa3a3','bef307c8-d095-6341-6352-601810875b07','1e1803a1-daa9-c147-059f-6017ca58540c',75,'2021-02-01 14:31:59',0),('e8bb5d18-b425-e4ab-7507-60180f79885f','52c526cb-9c4a-23b6-b39f-60180f9089b2','260ea293-5703-f62a-d014-6017ca9ff06c',80,'2021-02-01 14:26:44',0),('e8c54e68-93eb-e8b4-468a-60181117c63a','a0b17db8-3562-2520-7a5b-60181003f945','3bf2f429-039e-9b9a-086b-6017cad8b024',89,'2021-02-01 14:33:27',0),('e8f103eb-cf4e-5a64-a6fe-60180953db5b','54779abd-cf10-d4b8-3946-601809414e38','543391af-9314-213d-cf52-6017ca0de4a4',90,'2021-02-01 14:00:42',0),('e8f4d4a0-01b9-25a1-41c5-6018107469f0','bef307c8-d095-6341-6352-601810875b07','4fa20f82-4605-a031-949b-6017ca9c9830',75,'2021-02-01 14:31:59',0),('e90604c7-7d01-f873-a0bd-601810a07469','bef307c8-d095-6341-6352-601810875b07','7b93328d-ff92-fab7-088a-6017caafa77b',-98,'2021-02-01 14:31:59',0),('e9120c53-c7c7-6474-a201-6018103c2575','145ce98a-0b57-3e66-8f20-60180fdba411','9dad8dfc-64d2-5c22-7fed-6017caa67ae1',75,'2021-02-01 14:29:35',0),('e91a365e-e7a2-f3b3-a75b-60180f829e75','52c526cb-9c4a-23b6-b39f-60180f9089b2','650abd63-f082-75a4-a58d-6017ca54dd12',-99,'2021-02-01 14:26:44',0),('e9248c5b-0840-940a-aef1-601809f16fd8','54779abd-cf10-d4b8-3946-601809414e38','2fc42adb-d386-a4c7-ec11-6017cae90eed',90,'2021-02-01 14:00:42',0),('e93419ff-b7e1-9fc9-b28e-60180f6912aa','52c526cb-9c4a-23b6-b39f-60180f9089b2','33a4c648-6095-3a46-57e5-6017ca731b91',-98,'2021-02-01 14:26:44',0),('e95118c9-838f-a63c-c444-601810e4c7fe','bef307c8-d095-6341-6352-601810875b07','5362a646-6144-5c4e-9ebb-6017cabe59da',75,'2021-02-01 14:31:59',0),('e967e47b-2566-20a1-0e65-601810d45083','bef307c8-d095-6341-6352-601810875b07','487209ce-296c-c755-871c-6017caa41be8',75,'2021-02-01 14:31:59',0),('e98238bd-e046-106c-2cad-60180930ff55','54779abd-cf10-d4b8-3946-601809414e38','3214d713-d19f-6c9e-ceb2-6017ca55bf89',90,'2021-02-01 14:00:42',0),('e98ce603-878a-7c20-5a99-601811371365','a0b17db8-3562-2520-7a5b-60181003f945','40a06fb6-2c0b-b5ab-9711-6017cad0002f',75,'2021-02-01 14:33:27',0),('e9a125ab-dfbe-994a-e821-60180ff28f24','52c526cb-9c4a-23b6-b39f-60180f9089b2','377b9e0c-f502-7bb5-2c9f-6017ca706205',80,'2021-02-01 14:26:44',0),('e9e50567-0334-ddd1-9df9-601810dbc422','bef307c8-d095-6341-6352-601810875b07','5131b6a6-ac2e-aab4-8297-6017cacd1a29',-99,'2021-02-01 14:31:59',0),('e9ee1f89-66e9-0cd0-ba8a-60180993dbe9','54779abd-cf10-d4b8-3946-601809414e38','2f59f53b-49d7-6e72-6586-6017ca3316c8',90,'2021-02-01 14:00:42',0),('ea0dd038-3d7b-b91b-57b9-60180f3a6b64','52c526cb-9c4a-23b6-b39f-60180f9089b2','3703cf8a-d539-ce5f-51fb-6017ca174652',80,'2021-02-01 14:26:44',0),('ea1178d2-6664-72bc-33fe-60180f321545','52c526cb-9c4a-23b6-b39f-60180f9089b2','631e9841-0a93-45b7-c37a-6017caecbf57',80,'2021-02-01 14:26:44',0),('ea1f63af-c79c-7b93-8238-601810f8ab33','bef307c8-d095-6341-6352-601810875b07','3c8f0a2d-b87e-6e7e-696c-6017caac546a',-99,'2021-02-01 14:31:59',0),('ea2ae1cc-dd34-08fe-2f5c-601811ec0c1e','a0b17db8-3562-2520-7a5b-60181003f945','3feeba8f-d6bd-6fe9-094b-6017ca124904',75,'2021-02-01 14:33:27',0),('ea303f1a-cb6a-7b44-ef13-6018092f76cd','54779abd-cf10-d4b8-3946-601809414e38','14bda9be-7f00-c47d-4d67-6017caadd7c7',89,'2021-02-01 14:00:42',0),('ea4d56b5-490e-cfeb-5856-6018090a1335','54779abd-cf10-d4b8-3946-601809414e38','1885785c-ffcf-a049-a431-6017ca33ab98',90,'2021-02-01 14:00:42',0),('ea687c56-6f2e-1bbe-3ad7-601810ade98d','bef307c8-d095-6341-6352-601810875b07','4eb5453c-539f-7da6-2393-6017cab07f2d',75,'2021-02-01 14:31:59',0),('ea977cee-ad74-b61d-63ff-601811c0dd54','a0b17db8-3562-2520-7a5b-60181003f945','424e9d02-1a6d-b40c-3d77-6017ca2a199b',75,'2021-02-01 14:33:27',0),('eaa8b780-3b40-d1ee-9096-60180f1c28a3','52c526cb-9c4a-23b6-b39f-60180f9089b2','38e0c84a-b6b1-e94f-4f77-6017ca4423ca',80,'2021-02-01 14:26:44',0),('eab58e2b-6ee4-6db1-dd1c-60180f842b04','52c526cb-9c4a-23b6-b39f-60180f9089b2','66a0808f-81f2-5d63-33cb-6017ca6f04b5',-99,'2021-02-01 14:26:44',0),('eab70732-c045-bb09-1a12-601810cbfbaf','bef307c8-d095-6341-6352-601810875b07','11450ed5-1ece-4320-83bb-6017ca13f200',75,'2021-02-01 14:31:59',0),('eadaea54-9542-202a-377c-6018106814e0','145ce98a-0b57-3e66-8f20-60180fdba411','9c7adf56-4680-5e30-ff28-6017cadf52c8',75,'2021-02-01 14:29:35',0),('eb00f5a9-7e24-a0af-f5d7-60180a912368','920ed607-4a99-1bc8-930d-60180a7c44f1','d0def67a-7a7d-3dea-616d-6017ca0ca5c0',-99,'2021-02-01 14:04:44',0),('eb090fd6-7fbf-b42b-9f37-6018093fb6eb','54779abd-cf10-d4b8-3946-601809414e38','17e1ca17-e91d-6b29-f43b-6017ca7b4f1f',90,'2021-02-01 14:00:42',0),('eb1f6c2f-d767-0712-9592-601811664d74','a0b17db8-3562-2520-7a5b-60181003f945','41257a11-4623-22fc-5899-6017ca328bb7',-99,'2021-02-01 14:33:27',0),('eb200aa6-9928-e8a5-4e5c-60180f114129','52c526cb-9c4a-23b6-b39f-60180f9089b2','3832cc25-90a4-9adb-6504-6017cad4d35a',-99,'2021-02-01 14:26:44',0),('eb226d14-7d49-45d3-62c8-601810220e87','bef307c8-d095-6341-6352-601810875b07','543391af-9314-213d-cf52-6017ca0de4a4',-99,'2021-02-01 14:31:59',0),('eb353cbf-e235-af3e-055c-60180f0dc7f2','52c526cb-9c4a-23b6-b39f-60180f9089b2','626d8d6b-2260-4f45-9d57-6017ca9cec93',80,'2021-02-01 14:26:44',0),('eb367d85-59e6-2685-7fbe-60180998fbf1','54779abd-cf10-d4b8-3946-601809414e38','1a3588bc-571c-f7ab-7799-6017cab6e09b',90,'2021-02-01 14:00:42',0),('eb5574d6-b9c6-e846-9d80-6018106a5a0d','bef307c8-d095-6341-6352-601810875b07','69c40028-8193-04ae-ea6a-6017ca36aaa1',-99,'2021-02-01 14:31:59',0),('eb68bb3a-8afa-5e93-e253-60180fb1825a','52c526cb-9c4a-23b6-b39f-60180f9089b2','3634091f-8062-cdd4-5fa8-6017caf39c43',80,'2021-02-01 14:26:44',0),('eb7105f5-c187-a15f-c6b1-60181121b6cd','a0b17db8-3562-2520-7a5b-60181003f945','3f22e375-6be6-8eea-a6a5-6017ca1296e5',75,'2021-02-01 14:33:27',0),('eb7943b6-f79a-cfc6-f714-6018091205f7','54779abd-cf10-d4b8-3946-601809414e38','198739f4-0bbd-3331-cf7a-6017ca5f75d9',90,'2021-02-01 14:00:42',0),('ebb1e9b1-ae93-e2e4-ee4d-6018095045f8','54779abd-cf10-d4b8-3946-601809414e38','175189ff-4043-fa73-2651-6017ca9d5d05',90,'2021-02-01 14:00:42',0),('ebc1014e-776e-57fd-1779-60180a8cfaf2','920ed607-4a99-1bc8-930d-60180a7c44f1','3703cf8a-d539-ce5f-51fb-6017ca174652',80,'2021-02-01 14:04:44',0),('ebd52d02-4d18-c44a-b6db-6018106ccb6f','bef307c8-d095-6341-6352-601810875b07','4dc064a6-36e7-b8d6-1637-6017ca834a51',75,'2021-02-01 14:31:59',0),('ebed1970-2571-74a7-a73d-601810479ff8','bef307c8-d095-6341-6352-601810875b07','f3d45d6c-92bf-593e-dc4e-6017ca41cbee',75,'2021-02-01 14:31:59',0),('ebf6ae99-c9e2-b9fc-395f-60180faefcae','52c526cb-9c4a-23b6-b39f-60180f9089b2','3955cfaa-5d78-ecdd-57ae-6017caf34833',-99,'2021-02-01 14:26:44',0),('ec033c02-8eb4-af0f-8354-601809ac0149','54779abd-cf10-d4b8-3946-601809414e38','1aef1fca-33a2-3d5d-9453-6017ca899039',90,'2021-02-01 14:00:42',0),('ec04620d-f563-7800-fdc6-601811a25afb','a0b17db8-3562-2520-7a5b-60181003f945','43128bab-53ee-f54c-e979-6017ca31494e',-99,'2021-02-01 14:33:27',0),('ec440518-78e1-a1cf-78d6-601809b2d48f','54779abd-cf10-d4b8-3946-601809414e38','4dc064a6-36e7-b8d6-1637-6017ca834a51',90,'2021-02-01 14:00:42',0),('ec454666-e2e3-1259-df1e-601810141a00','bef307c8-d095-6341-6352-601810875b07','c74d759e-ca97-9c85-566b-6017ca9f5554',-98,'2021-02-01 14:31:59',0),('ec57363f-d1b3-7280-32de-6018107ae4d5','145ce98a-0b57-3e66-8f20-60180fdba411','9f6d45af-0924-9907-090a-6017ca293441',75,'2021-02-01 14:29:35',0),('ec5f6164-e054-4e16-d7f6-60180acccb80','920ed607-4a99-1bc8-930d-60180a7c44f1','cf1e856c-b6ab-5b98-3ad5-6017ca7fb7eb',80,'2021-02-01 14:04:44',0),('ec5ffeb3-65a8-7f89-b8eb-601810a9e326','bef307c8-d095-6341-6352-601810875b07','589808bc-2514-c7b6-0600-6017ca25411d',-98,'2021-02-01 14:31:59',0),('ec6484cb-2ca8-89ed-ea95-60180f3c152d','52c526cb-9c4a-23b6-b39f-60180f9089b2','34751d0d-8c15-50d3-5a8e-6017ca6c83cf',80,'2021-02-01 14:26:44',0),('ec995aa6-b65f-e0b3-5dc8-60180970dfff','54779abd-cf10-d4b8-3946-601809414e38','168d6de1-a01a-c7ed-0e6b-6017ca961af0',90,'2021-02-01 14:00:42',0),('ecac0539-0a69-7e99-3048-60180f5ef503','52c526cb-9c4a-23b6-b39f-60180f9089b2','52e18872-14a7-3b94-8d54-6017ca3a8f42',-98,'2021-02-01 14:26:44',0),('ecc7dabd-06d6-94e0-3269-60180a5b0203','920ed607-4a99-1bc8-930d-60180a7c44f1','d205df45-00e2-fd60-1321-6017caaef991',-99,'2021-02-01 14:04:44',0),('ecd0bba1-7d4f-3a17-76a6-601810c9adaf','bef307c8-d095-6341-6352-601810875b07','cab346aa-9975-17b1-bd41-6017ca561174',75,'2021-02-01 14:31:59',0),('ece88d47-9030-1102-549e-6018115e5c9e','a0b17db8-3562-2520-7a5b-60181003f945','3d0a7731-1875-5403-859e-6017ca2605dd',75,'2021-02-01 14:33:27',0),('ecf06a87-7ea0-5e91-750d-601810fcd4da','bef307c8-d095-6341-6352-601810875b07','91c30556-a5c1-71fa-6265-6017ca41003a',75,'2021-02-01 14:31:59',0),('ed0b7cb3-480a-b2e3-ec7e-60180fb39969','52c526cb-9c4a-23b6-b39f-60180f9089b2','89cfd493-7685-52ca-1008-6017ca632e1b',-98,'2021-02-01 14:26:44',0),('ed0c1ff2-e060-b1aa-782e-601809158ff8','54779abd-cf10-d4b8-3946-601809414e38','a6f22aa9-813e-d48d-cbcf-6017cafe3c98',89,'2021-02-01 14:00:42',0),('ed100ce4-e31c-201e-678a-60180fa50409','52c526cb-9c4a-23b6-b39f-60180f9089b2','3b42d0fb-c107-dcf4-16de-6017cac16fb4',80,'2021-02-01 14:26:44',0),('ed2aa075-3f8e-6d7c-0ad3-60180a062e76','920ed607-4a99-1bc8-930d-60180a7c44f1','ce72846b-97fc-6dbc-f5ff-6017ca04b487',80,'2021-02-01 14:04:44',0),('ed2ef890-a3ad-254b-0444-6018103fcd6c','bef307c8-d095-6341-6352-601810875b07','c9f5ba8f-acbd-9e14-381d-6017cabba8c0',75,'2021-02-01 14:31:59',0),('ed2f8110-6fb1-fe7c-194c-60181194e5df','a0b17db8-3562-2520-7a5b-60181003f945','7a6a3fd3-36d4-95b3-c51c-6017cae9ba36',-98,'2021-02-01 14:33:27',0),('ed385db8-644c-c282-bdc6-601810333b7f','bef307c8-d095-6341-6352-601810875b07','7c7a0933-8857-c660-fe54-6017ca5b86aa',75,'2021-02-01 14:31:59',0),('ed39476b-1f52-4ed7-d9da-60180fe5a9e8','52c526cb-9c4a-23b6-b39f-60180f9089b2','55416b30-5fa8-b4e0-0a54-6017ca6b9792',80,'2021-02-01 14:26:44',0),('ed395d19-2bd2-dc54-2c64-6018097c74e7','54779abd-cf10-d4b8-3946-601809414e38','ab02cc22-401e-4f0b-5180-6017ca6944bb',90,'2021-02-01 14:00:42',0),('ed529602-8365-5762-01cf-601811519b74','a0b17db8-3562-2520-7a5b-60181003f945','7eb70d04-1b91-0b81-d33f-6017ca4c7a95',75,'2021-02-01 14:33:27',0),('ed7c4941-6ba3-175c-6ad3-60180996a0bd','54779abd-cf10-d4b8-3946-601809414e38','aa06a022-eebd-88bd-7c29-6017ca1a6417',90,'2021-02-01 14:00:42',0),('ed7d0a9a-8394-ca93-5aa3-60180f40acb6','52c526cb-9c4a-23b6-b39f-60180f9089b2','8d646238-0036-c2d0-6e93-6017ca17c0f5',80,'2021-02-01 14:26:44',0),('ed8797c1-64ec-d132-7e10-601811d16ea3','a0b17db8-3562-2520-7a5b-60181003f945','7de8fc75-06b4-9caf-d2f8-6017caf078cf',75,'2021-02-01 14:33:27',0),('eda8b6a2-28e1-4860-3290-60180a735c7c','920ed607-4a99-1bc8-930d-60180a7c44f1','3bf2f429-039e-9b9a-086b-6017cad8b024',89,'2021-02-01 14:04:44',0),('edb9be91-a985-ab34-b4f0-601809bc702c','54779abd-cf10-d4b8-3946-601809414e38','aceda745-edf4-6592-0ca7-6017ca7c89f8',90,'2021-02-01 14:00:42',0),('edc44790-57ef-f4a5-57e8-60181121a9f0','a0b17db8-3562-2520-7a5b-60181003f945','803515a9-90a5-6011-db68-6017caaad948',75,'2021-02-01 14:33:27',0),('ede3fe32-9479-ddb5-6232-6018101631dd','bef307c8-d095-6341-6352-601810875b07','a59f0241-8c23-bf89-0b3c-6017caf9cfab',75,'2021-02-01 14:31:59',0),('edec4c0c-b113-3b17-86fa-601810eb0c9d','bef307c8-d095-6341-6352-601810875b07','cc0d998d-d33d-2b7c-1413-6017ca1a425a',75,'2021-02-01 14:31:59',0),('ee055c73-b7f2-a7da-710a-601809bb3b6f','54779abd-cf10-d4b8-3946-601809414e38','ac25d4dd-6de5-9c2a-8b4f-6017ca9dc9b7',90,'2021-02-01 14:00:42',0),('ee05e173-0b4a-4ae6-e933-60180ac7caf1','920ed607-4a99-1bc8-930d-60180a7c44f1','40a06fb6-2c0b-b5ab-9711-6017cad0002f',80,'2021-02-01 14:04:44',0),('ee0f6abe-a2e1-d7d8-80f7-601810873d39','145ce98a-0b57-3e66-8f20-60180fdba411','9e8c53ec-f5f5-1908-8fd6-6017ca4b90f4',-99,'2021-02-01 14:29:35',0),('ee12f038-f4f1-2f9f-a961-601811a152fc','a0b17db8-3562-2520-7a5b-60181003f945','7f6c2045-592e-ee7a-88aa-6017ca223d64',-99,'2021-02-01 14:33:27',0),('ee18fd2b-944b-1f7e-e7b5-60180f440926','52c526cb-9c4a-23b6-b39f-60180f9089b2','8c917df1-c6ec-68b0-840f-6017cadaae13',80,'2021-02-01 14:26:44',0),('ee369d48-a63b-b36a-58f7-601810fc1bae','bef307c8-d095-6341-6352-601810875b07','9ced0d8b-c4fb-fbbd-f69f-6017ca4e42e6',-99,'2021-02-01 14:31:59',0),('ee5876cf-96e6-0379-2f11-60181029a8f0','bef307c8-d095-6341-6352-601810875b07','cb671498-76a3-0ff6-3b03-6017ca56cae8',-99,'2021-02-01 14:31:59',0),('ee5e25c4-aadb-0a5d-391a-60180a1b68f4','920ed607-4a99-1bc8-930d-60180a7c44f1','3feeba8f-d6bd-6fe9-094b-6017ca124904',80,'2021-02-01 14:04:44',0),('ee793cfd-5e2e-e2db-b126-6018113b43b1','a0b17db8-3562-2520-7a5b-60181003f945','7d5ccdf9-fdf4-60c7-9c96-6017caf9ff1f',75,'2021-02-01 14:33:27',0),('ee8754b7-9f3e-8b15-bbe7-60180f792c38','52c526cb-9c4a-23b6-b39f-60180f9089b2','8e72cccd-d8bd-5bda-1129-6017ca1e0e4f',80,'2021-02-01 14:26:44',0),('eeb02b04-3622-1c32-06c3-60180a87ab20','920ed607-4a99-1bc8-930d-60180a7c44f1','424e9d02-1a6d-b40c-3d77-6017ca2a199b',80,'2021-02-01 14:04:44',0),('eee74be8-e635-8af3-5403-601809dc9a7e','54779abd-cf10-d4b8-3946-601809414e38','a8bb31f6-150f-ff3f-bef0-6017ca208971',90,'2021-02-01 14:00:42',0),('eef00772-429a-39c9-90ef-601810e570ae','bef307c8-d095-6341-6352-601810875b07','c8c2766e-917f-40ca-4d6d-6017caf3f0d5',75,'2021-02-01 14:31:59',0),('eef58e4d-c480-470a-2709-60180f2439c8','52c526cb-9c4a-23b6-b39f-60180f9089b2','54e1674a-2c22-cc1d-10f2-6017cace8b60',80,'2021-02-01 14:26:44',0),('eef9773b-0a37-439a-771a-60180f21df85','52c526cb-9c4a-23b6-b39f-60180f9089b2','8df6c126-ff00-31ab-53d7-6017ca17f4bb',-99,'2021-02-01 14:26:44',0),('ef047a35-b785-8f06-f0aa-60180a3a965f','920ed607-4a99-1bc8-930d-60180a7c44f1','41257a11-4623-22fc-5899-6017ca328bb7',-99,'2021-02-01 14:04:44',0),('ef2ee742-b595-eb6a-deed-6018107f4dd0','bef307c8-d095-6341-6352-601810875b07','72100f4a-ad81-b819-d3dd-6017ca9d1452',75,'2021-02-01 14:31:59',0),('ef3108a8-613e-d75c-ecf8-6018099dbf56','54779abd-cf10-d4b8-3946-601809414e38','c74d759e-ca97-9c85-566b-6017ca9f5554',89,'2021-02-01 14:00:42',0),('ef389180-b75b-0def-9572-601811184064','a0b17db8-3562-2520-7a5b-60181003f945','811d6ca1-d17a-5a54-e033-6017ca5d11e0',-99,'2021-02-01 14:33:27',0),('ef4d4da9-6929-2ec8-129c-60180faeb045','52c526cb-9c4a-23b6-b39f-60180f9089b2','8c1ad7be-b834-8a3b-a447-6017ca75307a',80,'2021-02-01 14:26:44',0),('ef74c5e5-a379-89be-01aa-60180a15435d','920ed607-4a99-1bc8-930d-60180a7c44f1','3f22e375-6be6-8eea-a6a5-6017ca1296e5',80,'2021-02-01 14:04:44',0),('ef7d0dbf-c9cc-fdb6-4088-601811e33f97','a0b17db8-3562-2520-7a5b-60181003f945','access',89,'2021-02-01 14:33:27',0),('ef90d494-5e9a-c2bc-7d2e-60180f882e6d','52c526cb-9c4a-23b6-b39f-60180f9089b2','5759d198-8f17-5f9b-59c3-6017ca131eaa',80,'2021-02-01 14:26:44',0),('efa91b77-423d-1c62-5ee8-6018101bf7e5','bef307c8-d095-6341-6352-601810875b07','cc7cc659-153f-71ed-f0d2-6017caa4c207',-99,'2021-02-01 14:31:59',0),('efa99ea2-103e-c7d3-8fb8-601809a5a6b8','54779abd-cf10-d4b8-3946-601809414e38','ae8ad6ad-4263-f441-956e-6017ca7d5153',90,'2021-02-01 14:00:42',0),('efd76442-612f-197f-514f-6018108ac6f0','145ce98a-0b57-3e66-8f20-60180fdba411','9b2882df-e540-afe4-9c83-6017ca7e0aa7',75,'2021-02-01 14:29:35',0),('efd7928c-5d1c-4c89-48b1-60180fd4b72f','52c526cb-9c4a-23b6-b39f-60180f9089b2','8f2d5206-743b-ecd6-bbfd-6017ca3b700c',-99,'2021-02-01 14:26:44',0),('efee9007-b0a9-ba60-2bdf-60180adfd8fa','920ed607-4a99-1bc8-930d-60180a7c44f1','43128bab-53ee-f54c-e979-6017ca31494e',-99,'2021-02-01 14:04:44',0),('efef46a9-52cf-d2dc-b7b7-6018106e7f4f','bef307c8-d095-6341-6352-601810875b07','ac03085e-eb42-7691-4a87-6017ca928f01',-99,'2021-02-01 14:31:59',0),('effd7234-8e35-0103-9eb3-601809a350ad','54779abd-cf10-d4b8-3946-601809414e38','a7a9f1ad-be16-ee19-451b-6017ca00687d',90,'2021-02-01 14:00:42',0),('f008901b-9564-bd52-2940-60181146ff97','a0b17db8-3562-2520-7a5b-60181003f945','7c990f35-dbe1-d88d-1b6f-6017cacafce6',75,'2021-02-01 14:33:27',0),('f0110d21-472c-0614-bfae-60180a9c0c03','920ed607-4a99-1bc8-930d-60180a7c44f1','38e0c84a-b6b1-e94f-4f77-6017ca4423ca',80,'2021-02-01 14:04:44',0),('f025ab8a-5819-9f0a-79ea-6018107d1d6d','bef307c8-d095-6341-6352-601810875b07','c840be03-804c-7707-c944-6017ca14f4b9',75,'2021-02-01 14:31:59',0),('f03d2125-0a2a-bf7d-6cd6-60180a436f6a','920ed607-4a99-1bc8-930d-60180a7c44f1','3d0a7731-1875-5403-859e-6017ca2605dd',80,'2021-02-01 14:04:44',0),('f05cf490-2f72-cb33-8aa9-6018108a890a','bef307c8-d095-6341-6352-601810875b07','64180a9b-ae83-35f9-59dc-6017ca309e5d',75,'2021-02-01 14:31:59',0),('f0780158-cf1e-de0b-0c4b-60180fbd0323','52c526cb-9c4a-23b6-b39f-60180f9089b2','8a520e16-b539-983c-b9bd-6017cab11234',80,'2021-02-01 14:26:44',0),('f091c88a-c3a8-0279-c0dc-601809441977','54779abd-cf10-d4b8-3946-601809414e38','41495400-5f9b-80d4-7075-6017ca472698',89,'2021-02-01 14:00:42',0),('f0a8e6a8-4865-e49b-274a-60180fe243e5','52c526cb-9c4a-23b6-b39f-60180f9089b2','56a8406f-8f35-19fa-f417-6017caf288a8',-99,'2021-02-01 14:26:44',0),('f0c1574c-1887-07a2-5701-60180af50ed9','920ed607-4a99-1bc8-930d-60180a7c44f1','7a6a3fd3-36d4-95b3-c51c-6017cae9ba36',89,'2021-02-01 14:04:44',0),('f0d86697-0d2c-ded6-8422-60181021a676','bef307c8-d095-6341-6352-601810875b07','91ed6183-922d-c827-70cc-6017ca0f80a2',-98,'2021-02-01 14:31:59',0),('f0dcf361-c61b-1325-b9fb-601811c0de0b','a0b17db8-3562-2520-7a5b-60181003f945','9c42311f-35a6-2705-f373-6017ca4707a1',-98,'2021-02-01 14:33:27',0),('f0e8fde3-eb6e-212e-abad-601809f40537','54779abd-cf10-d4b8-3946-601809414e38','469f31e2-b7bb-4b8b-6061-6017caccb79c',90,'2021-02-01 14:00:42',0),('f0f6a574-c691-c054-3a65-6018108b6469','bef307c8-d095-6341-6352-601810875b07','83bafba5-b28d-645d-48f2-6017ca1c1383',89,'2021-02-01 14:31:59',0),('f0fc39bb-1b52-13c8-a6be-60180a8e1598','920ed607-4a99-1bc8-930d-60180a7c44f1','7eb70d04-1b91-0b81-d33f-6017ca4c7a95',80,'2021-02-01 14:04:44',0),('f10f8afd-7699-2c3c-d551-6018114bf106','a0b17db8-3562-2520-7a5b-60181003f945','a33f23f0-9e86-e1b5-ec15-6017ca74a368',75,'2021-02-01 14:33:27',0),('f1130fd6-a415-c2dd-9bff-60180f1fd43b','52c526cb-9c4a-23b6-b39f-60180f9089b2','e1123a71-9f1e-4905-cf20-6017caacf73b',-98,'2021-02-01 14:26:44',0),('f113ef31-b2e5-4311-d661-60180954b47b','54779abd-cf10-d4b8-3946-601809414e38','44f7f214-0eda-d54d-eb23-6017ca98b487',90,'2021-02-01 14:00:42',0),('f14d9d1b-d86c-e26d-c308-6018107ea7b5','bef307c8-d095-6341-6352-601810875b07','9634bb2c-d95f-d6c4-301c-6017ca77e3e4',75,'2021-02-01 14:31:59',0),('f1501efa-b770-9179-f6dd-60181018ad1a','145ce98a-0b57-3e66-8f20-60180fdba411','a0125536-b231-699a-6df1-6017cac450ac',-99,'2021-02-01 14:29:35',0),('f1555d09-1d46-e8cf-a6b4-601809957b98','54779abd-cf10-d4b8-3946-601809414e38','48198c30-2080-5ee5-7b6e-6017cae64d7f',90,'2021-02-01 14:00:42',0),('f185ee05-ee19-47da-ced0-6018102ceece','bef307c8-d095-6341-6352-601810875b07','8a35bd21-0821-a6ef-ec50-6017caa61ccb',75,'2021-02-01 14:31:59',0),('f187d224-e025-dd13-da0d-6018099a10d1','54779abd-cf10-d4b8-3946-601809414e38','473598c4-45a3-b853-34f1-6017cab30d9f',90,'2021-02-01 14:00:42',0),('f18c1744-772a-4d53-225a-60180feb5957','52c526cb-9c4a-23b6-b39f-60180f9089b2','e336c29d-2d18-451f-7bbc-6017ca49e15c',80,'2021-02-01 14:26:44',0),('f198b5b4-8291-8927-e4d5-60180a76cc01','920ed607-4a99-1bc8-930d-60180a7c44f1','7de8fc75-06b4-9caf-d2f8-6017caf078cf',80,'2021-02-01 14:04:44',0),('f1b97ed4-2e8a-c961-0847-60180a1af10e','920ed607-4a99-1bc8-930d-60180a7c44f1','803515a9-90a5-6011-db68-6017caaad948',80,'2021-02-01 14:04:44',0),('f1bcd8fc-3bc9-5914-51ab-60180fdefa52','52c526cb-9c4a-23b6-b39f-60180f9089b2','e2da0686-74cf-c6c2-177d-6017ca10edf2',80,'2021-02-01 14:26:44',0),('f1d095f3-2346-1b83-5fe7-60180f8d252a','52c526cb-9c4a-23b6-b39f-60180f9089b2','54679895-07c8-f76b-43d1-6017ca72a27a',80,'2021-02-01 14:26:44',0),('f1e050d3-cde9-ef5b-f7db-6018112b69a9','a0b17db8-3562-2520-7a5b-60181003f945','a18410d0-7678-b6ef-2c6d-6017ca0eeaf5',75,'2021-02-01 14:33:27',0),('f1f43ac3-05a1-fab1-7600-60180a144cbc','920ed607-4a99-1bc8-930d-60180a7c44f1','7f6c2045-592e-ee7a-88aa-6017ca223d64',-99,'2021-02-01 14:04:44',0),('f2105ae2-763a-0d17-e425-60180948c0d4','54779abd-cf10-d4b8-3946-601809414e38','444a0bbf-db13-9408-2088-6017ca7eb004',90,'2021-02-01 14:00:42',0),('f2200cac-9d03-ab12-c1bb-60181054390d','145ce98a-0b57-3e66-8f20-60180fdba411','cdae776a-3357-3fc3-e44d-6017ca2c967b',75,'2021-02-01 14:29:35',0),('f2228b64-7011-24d0-9c51-60180a1300f0','920ed607-4a99-1bc8-930d-60180a7c44f1','7d5ccdf9-fdf4-60c7-9c96-6017caf9ff1f',80,'2021-02-01 14:04:44',0),('f22d4341-b3f3-f784-8a7e-601810b0b8b3','bef307c8-d095-6341-6352-601810875b07','947ad549-f887-3d63-b7a7-6017cad7458e',75,'2021-02-01 14:31:59',0),('f253df2e-716b-5963-857b-60180f8b0ab1','52c526cb-9c4a-23b6-b39f-60180f9089b2','e5d46f78-d381-0c69-bf09-6017caaa5a9a',80,'2021-02-01 14:26:44',0),('f2544c6d-678d-3d0a-1d67-601811a19aa6','a0b17db8-3562-2520-7a5b-60181003f945','a4da651d-8bd3-37de-e06c-6017cab354c0',75,'2021-02-01 14:33:27',0),('f28d457f-02d2-7129-a1b8-601810bb0b45','bef307c8-d095-6341-6352-601810875b07','8914ea66-9b43-bf8d-ab0f-6017cae44b71',75,'2021-02-01 14:31:59',0),('f28e3449-69ce-dcaa-744b-60180f4d7fd6','52c526cb-9c4a-23b6-b39f-60180f9089b2','5834a572-d414-ba60-078a-6017ca451330',-99,'2021-02-01 14:26:44',0),('f2a21acd-8c19-3457-b210-601811546c02','a0b17db8-3562-2520-7a5b-60181003f945','a3c278eb-300e-6fb2-795d-6017caae6b95',-99,'2021-02-01 14:33:27',0),('f2ac4a3b-cbfe-9d77-eb54-601809c3b5df','54779abd-cf10-d4b8-3946-601809414e38','48c80856-4f90-c906-1c47-6017cac2c696',90,'2021-02-01 14:00:42',0),('f2bd4b3d-d810-60d8-2c97-601810ca5a21','145ce98a-0b57-3e66-8f20-60180fdba411','986eee81-167e-9465-9b49-6017ca064f5f',75,'2021-02-01 14:29:35',0),('f2f0251b-728f-8d68-1508-60180a1d8cfb','920ed607-4a99-1bc8-930d-60180a7c44f1','811d6ca1-d17a-5a54-e033-6017ca5d11e0',-99,'2021-02-01 14:04:44',0),('f2f506f5-d813-35a4-f208-60180943fdab','54779abd-cf10-d4b8-3946-601809414e38','4392f18b-7465-ffd9-44d5-6017ca615e1a',90,'2021-02-01 14:00:42',0),('f3006ae1-304b-2f12-b756-60180f70adfc','52c526cb-9c4a-23b6-b39f-60180f9089b2','e40e7e28-78b1-0bae-fa91-6017caee97f4',-99,'2021-02-01 14:26:44',0),('f31a775a-4f4c-5b46-dfca-601811fbcb8b','a0b17db8-3562-2520-7a5b-60181003f945','a020d500-6246-3b1e-4d0d-6017ca57b752',75,'2021-02-01 14:33:27',0),('f3323da7-1e08-ebff-72b8-60180aeee62b','920ed607-4a99-1bc8-930d-60180a7c44f1','7c990f35-dbe1-d88d-1b6f-6017cacafce6',80,'2021-02-01 14:04:44',0),('f36448b1-bd8e-635d-1aa6-601810c929a1','bef307c8-d095-6341-6352-601810875b07','8bf0667b-a379-e360-373a-6017cae0f35a',75,'2021-02-01 14:31:59',0),('f36e9e45-50db-7e2f-d305-601811b0c10f','a0b17db8-3562-2520-7a5b-60181003f945','a57c2f16-66b6-bae7-008d-6017cacfd6bf',-99,'2021-02-01 14:33:27',0),('f37103c8-b460-d98f-7e52-601810d51c12','bef307c8-d095-6341-6352-601810875b07','73b832d2-55fa-46c9-f776-6017caf638a9',-99,'2021-02-01 14:31:59',0),('f3733664-7446-4595-f690-601809412c97','54779abd-cf10-d4b8-3946-601809414e38','c26ff4f5-0b2f-abe7-b877-6017cae0cd05',89,'2021-02-01 14:00:42',0),('f37402d5-77d1-e6fa-76e8-60180afc5925','920ed607-4a99-1bc8-930d-60180a7c44f1','9c42311f-35a6-2705-f373-6017ca4707a1',-98,'2021-02-01 14:04:44',0),('f3815c27-2531-6ee2-d901-601810900cc0','bef307c8-d095-6341-6352-601810875b07','9876e9d1-2bff-c6c5-6d01-6017cade8e1f',75,'2021-02-01 14:31:59',0),('f38d27fb-c0dd-d74b-ee55-60180fb790cc','52c526cb-9c4a-23b6-b39f-60180f9089b2','53ce4002-765c-019d-925e-6017ca6b0b89',80,'2021-02-01 14:26:44',0),('f3984159-d81d-ae15-b051-60180f2f0143','52c526cb-9c4a-23b6-b39f-60180f9089b2','e27db9aa-0c69-f8be-e7d4-6017ca4a1b9c',80,'2021-02-01 14:26:44',0),('f3aa6200-1d59-e23e-3375-601809ea483e','54779abd-cf10-d4b8-3946-601809414e38','c77cdbff-3ff2-9879-429b-6017ca36a710',90,'2021-02-01 14:00:42',0),('f3b8bf15-49f2-a7fc-284c-601811a79525','a0b17db8-3562-2520-7a5b-60181003f945','9e20b241-b441-e11e-e26e-6017ca510608',75,'2021-02-01 14:33:27',0),('f3c3a0aa-3dd0-77ac-1efd-60180a24495e','920ed607-4a99-1bc8-930d-60180a7c44f1','a33f23f0-9e86-e1b5-ec15-6017ca74a368',80,'2021-02-01 14:04:44',0),('f3f505a5-a995-1716-80e4-601809fbe50e','54779abd-cf10-d4b8-3946-601809414e38','c653cd76-f2b1-cf18-5f84-6017cae22650',90,'2021-02-01 14:00:42',0),('f3fbefb5-7248-8fde-e379-6018107cc2e0','bef307c8-d095-6341-6352-601810875b07','8b65b469-c5df-e8ca-4420-6017caa83b89',-99,'2021-02-01 14:31:59',0),('f401aecb-e7c0-9113-1c45-60180a6a4842','920ed607-4a99-1bc8-930d-60180a7c44f1','a18410d0-7678-b6ef-2c6d-6017ca0eeaf5',80,'2021-02-01 14:04:44',0),('f406bba1-493f-6b28-a4d5-60181077c68a','145ce98a-0b57-3e66-8f20-60180fdba411','ad72033b-d248-1445-3717-6017ca405307',-98,'2021-02-01 14:29:35',0),('f40a16df-e036-e731-843f-60181060f76e','bef307c8-d095-6341-6352-601810875b07','97b2709d-df39-baf3-964d-6017ca844416',-99,'2021-02-01 14:31:59',0),('f471022c-babd-32a4-2fd3-60180a0e6a9d','920ed607-4a99-1bc8-930d-60180a7c44f1','3832cc25-90a4-9adb-6504-6017cad4d35a',-99,'2021-02-01 14:04:44',0),('f53a0a8d-49e0-d345-3080-601811af7542','a0b17db8-3562-2520-7a5b-60181003f945','b9446e01-b190-5369-dac0-6017ca90247e',75,'2021-02-01 14:33:27',0),('f6e608e9-4bc7-4bd1-57e8-6018109c88f7','bef307c8-d095-6341-6352-601810875b07','80721d39-a468-f6ac-c5a0-6017cadaaa11',75,'2021-02-01 14:31:59',0),('f8f00de1-3681-751b-85db-60180fa13b3c','52c526cb-9c4a-23b6-b39f-60180f9089b2','3f4cef04-3d0e-4ab5-e4e0-6017cab3974e',80,'2021-02-01 14:26:44',0),('f9490cd0-6dfe-098c-4efa-60180a02564d','920ed607-4a99-1bc8-930d-60180a7c44f1','3634091f-8062-cdd4-5fa8-6017caf39c43',80,'2021-02-01 14:04:44',0),('fb5803c4-c4cf-4ebc-d798-601810ed2762','bef307c8-d095-6341-6352-601810875b07','6d78d2e2-cf60-ad18-ccba-6017cab10c1c',75,'2021-02-01 14:31:59',0),('fb760248-303b-2a64-1c96-601809ee598c','54779abd-cf10-d4b8-3946-601809414e38','cab346aa-9975-17b1-bd41-6017ca561174',90,'2021-02-01 14:00:42',0),('fcf00001-c832-4cc2-3846-60180f82717a','52c526cb-9c4a-23b6-b39f-60180f9089b2','e206debd-89f8-a796-b4da-6017ca4eff96',80,'2021-02-01 14:26:44',0),('fe760451-f845-6c85-a91e-60180a495176','920ed607-4a99-1bc8-930d-60180a7c44f1','3955cfaa-5d78-ecdd-57ae-6017caf34833',-99,'2021-02-01 14:04:44',0),('fe77022b-29bf-2207-55d2-6018115820c5','a0b17db8-3562-2520-7a5b-60181003f945','b8979993-d9e2-3c23-2378-6017ca043ead',75,'2021-02-01 14:33:27',0),('fff90f57-b0c3-9ccd-a235-601810f15872','145ce98a-0b57-3e66-8f20-60180fdba411','97f22f4d-0e7c-61e6-6799-6017cac0b6fb',-98,'2021-02-01 14:29:35',0);
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
INSERT INTO `acl_roles_users` VALUES ('11786b3b-0526-cc56-ec9a-601810d3144d','bef307c8-d095-6341-6352-601810875b07','3610f3bc-2001-8790-a63f-60180648eaaa','2021-02-01 14:31:49',0),('58311541-5841-d6bb-42c9-60180a046068','920ed607-4a99-1bc8-930d-60180a7c44f1','2d063f95-3066-a985-dabe-6018050f6016','2021-02-01 14:04:39',0),('6dc6a716-6328-f148-145b-60181181da22','a0b17db8-3562-2520-7a5b-60181003f945','bf91d4a9-ad20-a78a-783e-601807a8619a','2021-02-01 14:33:17',0),('71781072-1c9d-53a3-f9dc-60180f7ee771','52c526cb-9c4a-23b6-b39f-60180f9089b2','352d7e86-0816-8c05-c37a-601805583ccb','2021-02-01 14:26:05',0),('be37dd55-631c-1fcd-c668-60180945ab8b','54779abd-cf10-d4b8-3946-601809414e38','eec487ce-32cf-17b7-228a-6017fffa49c8','2021-02-01 14:00:00',0),('cc7321dc-bf67-6a97-abe7-60181003d83f','145ce98a-0b57-3e66-8f20-60180fdba411','d9de9e80-8795-dd13-54ef-60180675bfea','2021-02-01 14:28:50',0),('f5ef0980-4dce-9a01-1a30-6018097bbcad','59940d2d-46d1-e3fa-8112-60180940c994','ab37d18f-a705-7563-c78b-601800b3e553','2021-02-01 14:02:29',0);
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

LOCK TABLES `am_projecttemplates_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

LOCK TABLES `am_projecttemplates_users_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT 0,
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT 0,
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open_status` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

LOCK TABLES `aobh_businesshours` WRITE;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
INSERT INTO `aod_index` VALUES ('1','Index','2021-02-01 09:32:36','2021-02-01 09:32:36','1','1',NULL,0,NULL,NULL,'modules/AOD_Index/Index/Index');
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT 0,
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
INSERT INTO `aod_indexevent` VALUES ('114f1a0c-799c-7753-77b8-6018b846adf6','Áo thun mua 3 tặng 1','2021-02-02 02:27:10','2021-02-02 02:28:34','1','1',NULL,0,'',NULL,1,'ef2c7101-ac91-14da-29ae-6018b818e410','Opportunities'),('1ff92579-fa06-1b44-ef6a-601d7c281a9d','Tư vấn sản phẩm','2021-02-05 17:10:45','2021-02-05 17:10:45','1','1',NULL,0,NULL,NULL,1,'caa694f3-d43c-3bfa-9ba4-601d7cd81ac0','NDT_CustomerContact'),('2e838d69-e3b3-9de3-aa6e-60180939b01d','Cô. Phương Thảo Ngô','2021-02-01 13:59:02','2021-02-01 13:59:02','1','1',NULL,0,NULL,NULL,1,'3d3f746b-5537-94b5-dc54-601809aa350a','Contacts'),('3043ebf5-7e53-e9c7-4d19-60181cafaa24','Ông. Thanh Nhàn Lê','2021-02-01 15:22:03','2021-02-01 15:22:03','1','1',NULL,0,NULL,NULL,1,'86501ea4-7654-356f-16ce-60181c5fc8f6','Leads'),('36a80a49-49e4-9906-910a-601d1d771e1d','Lương Thị Loan','2021-02-05 10:29:06','2021-02-05 10:29:06','1','1',NULL,0,NULL,NULL,1,'6607c57b-7f2e-3056-dc3e-601d1da841c2','Accounts'),('387a396c-d8de-b9a4-2452-601808f38779','Nguyễn Thế Hiệp','2021-02-01 13:54:39','2021-02-05 10:24:37','1','1',NULL,0,'',NULL,1,'ca9ff845-ba1f-c360-c3da-601808f52b53','Accounts'),('88bd3d59-ab9c-dad6-8990-60181e3f907c','Khuyến mãi cuối năm','2021-02-01 15:29:29','2021-02-01 15:56:59','1','1',NULL,0,'',NULL,1,'8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','Campaigns'),('a38e306a-35ce-fe29-163c-601aa8207ff2','abc','2021-02-03 13:42:13','2021-02-03 13:50:47','1','1',NULL,0,'',NULL,1,'97f026b9-81df-5af5-da5b-601aa8ebbc30','test_module_test'),('e2da19be-f439-9635-715b-60181b3073b7','Danh sách khách hàng được giảm giá','2021-02-01 15:17:55','2021-02-02 02:48:58','1','1',NULL,0,'',NULL,1,'d8fca699-44f1-c54a-e1bd-60181bb1048a','ProspectLists');
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

LOCK TABLES `aok_knowledge_base_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

LOCK TABLES `aok_knowledge_base_categories_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text DEFAULT NULL,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

LOCK TABLES `aok_knowledgebase` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

LOCK TABLES `aok_knowledgebase_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

LOCK TABLES `aok_knowledgebase_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT 2,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext DEFAULT NULL,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 1,
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text DEFAULT NULL,
  `pdffooter` text DEFAULT NULL,
  `margin_left` int(255) DEFAULT 15,
  `margin_right` int(255) DEFAULT 15,
  `margin_top` int(255) DEFAULT 16,
  `margin_bottom` int(255) DEFAULT 16,
  `margin_header` int(255) DEFAULT 9,
  `margin_footer` int(255) DEFAULT 9,
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT 0,
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text DEFAULT NULL,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `hits` int(11) DEFAULT 0,
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
INSERT INTO `campaign_log` VALUES ('a5a219ad-6503-11eb-9451-e76546301cfc','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','a5a219cb-6503-11eb-9451-e76546301cfc','ca9ff845-ba1f-c360-c3da-601808f52b53','Accounts','targeted','2021-02-02 03:06:32',NULL,NULL,0,0,'d8fca699-44f1-c54a-e1bd-60181bb1048a',0,NULL,NULL,NULL),('a5a21b61-6503-11eb-9451-e76546301cfc','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','a5a21b6c-6503-11eb-9451-e76546301cfc','86501ea4-7654-356f-16ce-60181c5fc8f6','Leads','targeted','2021-02-02 03:06:32',NULL,NULL,0,0,'d8fca699-44f1-c54a-e1bd-60181bb1048a',0,NULL,NULL,NULL),('a5a21c06-6503-11eb-9451-e76546301cfc','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','a5a21c0d-6503-11eb-9451-e76546301cfc','3d3f746b-5537-94b5-dc54-601809aa350a','Contacts','targeted','2021-02-02 03:06:32',NULL,NULL,0,0,'d8fca699-44f1-c54a-e1bd-60181bb1048a',0,NULL,NULL,NULL),('a5a21c6f-6503-11eb-9451-e76546301cfc','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','a5a21c74-6503-11eb-9451-e76546301cfc','1','Users','targeted','2021-02-02 03:06:32',NULL,NULL,0,0,'d8fca699-44f1-c54a-e1bd-60181bb1048a',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT 0,
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT 0,
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`),
  KEY `idx_survey_id` (`survey_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
INSERT INTO `campaigns` VALUES ('8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','Khuyến mãi cuối năm','2021-02-01 15:29:29','2021-02-01 15:56:59','1','1',0,'1',1,0,'http://',NULL,NULL,NULL,'Active',0,'-99',1000000,900000,800000,4500000,'Email','Thanh lý hàng tồn kho','Khuyến mãi cuối năm 2020',NULL,'');
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
INSERT INTO `campaigns_audit` VALUES ('9c487561-2d99-e6a8-1b6c-601821033125','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','2021-02-01 15:42:30','1','assigned_user_id','relate','1','d9de9e80-8795-dd13-54ef-60180675bfea',NULL,NULL),('e4c0b69b-9886-be2d-23d9-6018242dd0de','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','2021-02-01 15:56:59','1','assigned_user_id','relate','d9de9e80-8795-dd13-54ef-60180675bfea','1',NULL,NULL);
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text DEFAULT NULL,
  `work_log` text DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text DEFAULT NULL,
  KEY `idx_config_cat` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','thanhm2519014@gstudent.ctu.edu.vn'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.25'),('MySettings','tab','YTozOTp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6MTA6IkFPU19RdW90ZXMiO3M6MTA6IkFPU19RdW90ZXMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjU6IlNwb3RzIjtzOjU6IlNwb3RzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiVGFza3MiO3M6NToiVGFza3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjEzOiJBT1NfQ29udHJhY3RzIjtzOjU6IkNhc2VzIjtzOjU6IkNhc2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6MTM6IlByb3NwZWN0TGlzdHMiO3M6NzoiUHJvamVjdCI7czo3OiJQcm9qZWN0IjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjE5OiJBTV9Qcm9qZWN0VGVtcGxhdGVzIjtzOjk6IkZQX2V2ZW50cyI7czo5OiJGUF9ldmVudHMiO3M6MTg6IkZQX0V2ZW50X0xvY2F0aW9ucyI7czoxODoiRlBfRXZlbnRfTG9jYXRpb25zIjtzOjEyOiJBT1NfUHJvZHVjdHMiO3M6MTI6IkFPU19Qcm9kdWN0cyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoyMjoiQU9TX1Byb2R1Y3RfQ2F0ZWdvcmllcyI7czoxNzoiQU9TX1BERl9UZW1wbGF0ZXMiO3M6MTc6IkFPU19QREZfVGVtcGxhdGVzIjtzOjk6Impqd2dfTWFwcyI7czo5OiJqandnX01hcHMiO3M6MTI6Impqd2dfTWFya2VycyI7czoxMjoiamp3Z19NYXJrZXJzIjtzOjEwOiJqandnX0FyZWFzIjtzOjEwOiJqandnX0FyZWFzIjtzOjE4OiJqandnX0FkZHJlc3NfQ2FjaGUiO3M6MTg6Impqd2dfQWRkcmVzc19DYWNoZSI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjEyOiJBT1dfV29ya0Zsb3ciO3M6MTI6IkFPV19Xb3JrRmxvdyI7czoxNzoiQU9LX0tub3dsZWRnZUJhc2UiO3M6MTc6IkFPS19Lbm93bGVkZ2VCYXNlIjtzOjI5OiJBT0tfS25vd2xlZGdlX0Jhc2VfQ2F0ZWdvcmllcyI7czoyOToiQU9LX0tub3dsZWRnZV9CYXNlX0NhdGVnb3JpZXMiO3M6MTQ6IkVtYWlsVGVtcGxhdGVzIjtzOjE0OiJFbWFpbFRlbXBsYXRlcyI7czo3OiJTdXJ2ZXlzIjtzOjc6IlN1cnZleXMiO3M6MTY6InRlc3RfbW9kdWxlX3Rlc3QiO3M6MTY6InRlc3RfbW9kdWxlX3Rlc3QiO3M6MTk6Ik5EVF9DdXN0b21lckNvbnRhY3QiO3M6MTk6Ik5EVF9DdXN0b21lckNvbnRhY3QiO30='),('portal','on','0'),('tracker','Tracker','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Cases','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('system','adminwizard','1'),('notify','allow_default_outbound','0'),('massemailer','email_copy','1'),('massemailer','campaign_emails_per_run','500'),('massemailer','tracking_entities_location_type','1');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES ('3d3f746b-5537-94b5-dc54-601809aa350a','2021-02-01 13:58:58','2021-02-01 13:58:58','1','1','',0,'3610f3bc-2001-8790-a63f-60180648eaaa','Ms.','Phương Thảo','Ngô','Nhân viên',NULL,'Văn Phòng',0,NULL,'0945885510','0945885510',NULL,'',NULL,NULL,NULL,'Trần Hưng Đạo','Cà Mau','','','Việt Nam','Trần Hưng Đạo','Cà Mau','','','Việt Nam',NULL,NULL,'Partner','',NULL,'',NULL,NULL,'Single');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
INSERT INTO `contacts_cstm` VALUES ('3d3f746b-5537-94b5-dc54-601809aa350a',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT 0,
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES ('f0e7c3a5-9d61-3e84-bb0c-601808b3c4f9','Viet Nam Dong','₫','VND',1,'Active',0,'2021-02-01 13:55:01','2021-02-01 13:55:01','1');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT 0,
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT 0,
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text DEFAULT NULL,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT 0,
  `reply_to_address` tinyint(1) DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('2d8c874c-2869-3deb-11e2-601805fb3f1e','2da1aa9b-556a-32f1-6181-60180560a9c3','2d063f95-3066-a985-dabe-6018050f6016','Users',1,0,'2021-02-01 13:42:41','2021-02-01 13:42:41',0),('366fe0ca-cae0-81e3-094a-6018052fd104','36f139cb-0647-94c7-8ff7-601805eaeaba','352d7e86-0816-8c05-c37a-601805583ccb','Users',1,0,'2021-02-01 13:44:33','2021-02-01 13:44:33',0),('36cccabe-c201-3604-4bd1-601806ad6649','36ee6b47-398a-2d57-1245-601806fa12cf','3610f3bc-2001-8790-a63f-60180648eaaa','Users',1,0,'2021-02-01 13:49:50','2021-02-01 13:49:50',0),('3e13f183-2088-9217-cb1f-601809af947d','3e255149-a6be-2cc6-641e-601809a55ad2','3d3f746b-5537-94b5-dc54-601809aa350a','Contacts',1,0,'2021-02-01 13:58:58','2021-02-01 13:58:58',0),('661606c2-566c-f631-7395-601d1dd007b0','662e0508-72b5-64fc-d867-601d1defe352','6607c57b-7f2e-3056-dc3e-601d1da841c2','Accounts',1,0,'2021-02-05 10:29:00','2021-02-05 10:29:00',0),('86e4045f-c86a-1a2a-9c19-60181ce729d5','cac0ee1f-86fa-89bc-121d-601808bc009c','86501ea4-7654-356f-16ce-60181c5fc8f6','Leads',1,0,'2021-02-01 15:21:57','2021-02-01 15:21:57',0),('92cdf01f-cc48-07e2-66bc-601d1c316f63','aca91e3f-5480-3096-f0ee-601800ea7a9f','ca9ff845-ba1f-c360-c3da-601808f52b53','Accounts',1,0,'2021-02-05 10:24:37','2021-02-05 10:24:37',0),('ac953d49-c893-29b7-4236-60180086bebb','aca91e3f-5480-3096-f0ee-601800ea7a9f','ab37d18f-a705-7563-c78b-601800b3e553','Users',1,0,'2021-02-01 13:20:08','2021-02-01 13:20:08',0),('bffef00d-b3d4-02e3-a364-6018075a1ce7','c00d5585-32dd-dfb9-5717-601807b4d40d','bf91d4a9-ad20-a78a-783e-601807a8619a','Users',1,0,'2021-02-01 13:52:35','2021-02-01 13:52:35',0),('caafb240-0572-19aa-55ca-601808af657f','cac0ee1f-86fa-89bc-121d-601808bc009c','ca9ff845-ba1f-c360-c3da-601808f52b53','Accounts',1,0,'2021-02-01 13:54:34','2021-02-01 13:54:34',1),('dacf036b-b41e-b1a4-f918-6018068aca88','dadc20be-d57b-648f-823a-60180629cbf1','d9de9e80-8795-dd13-54ef-60180675bfea','Users',1,0,'2021-02-01 13:48:16','2021-02-01 13:48:16',0),('ef20e85f-d2a1-5d58-1a32-6017ff0a1090','ef2b52a2-0d89-86c7-d93f-6017ffea1061','eec487ce-32cf-17b7-228a-6017fffa49c8','Users',1,0,'2021-02-01 13:17:51','2021-02-01 13:17:51',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT 0,
  `opt_out` tinyint(1) DEFAULT 0,
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('2da1aa9b-556a-32f1-6181-60180560a9c3','nvlinhcm92@gmail.com','NVLINHCM92@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:42:00','2021-02-05 17:10:19',0),('36ee6b47-398a-2d57-1245-601806fa12cf','thuthaothptsd@gmail.com','THUTHAOTHPTSD@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:49:00','2021-02-05 17:10:19',0),('36f139cb-0647-94c7-8ff7-601805eaeaba','ntbchi.c3songdoc@gmail.com','NTBCHI.C3SONGDOC@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:44:00','2021-02-05 17:10:19',0),('3e255149-a6be-2cc6-641e-601809a55ad2','toannm2519016@gstudent.ctu.edu.vn','TOANNM2519016@GSTUDENT.CTU.EDU.VN',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:58:00','2021-02-03 13:50:47',0),('61215e29-9cb4-82af-3e58-60180515dabe','thanhm2519014@gstudent.ctu.edu.vn','THANHM2519014@GSTUDENT.CTU.EDU.VN',0,0,'not-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:42:41','2021-02-01 13:42:41',0),('662e0508-72b5-64fc-d867-601d1defe352','ltloan@thptsongdoc.edu.vn','LTLOAN@THPTSONGDOC.EDU.VN',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-05 10:29:00','2021-02-05 18:00:07',0),('aca91e3f-5480-3096-f0ee-601800ea7a9f','ndthanh.c3songdoc@gmail.com','NDTHANH.C3SONGDOC@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:20:00','2021-02-05 18:00:07',0),('c00d5585-32dd-dfb9-5717-601807b4d40d','thanhsoncm@gmail.com','THANHSONCM@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:52:00','2021-02-05 17:10:19',0),('cac0ee1f-86fa-89bc-121d-601808bc009c','gvdinhthanh@gmail.com','GVDINHTHANH@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:54:00','2021-02-05 10:20:09',0),('dadc20be-d57b-648f-823a-60180629cbf1','chuongcm80@gmail.com','CHUONGCM80@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:48:00','2021-02-05 17:10:19',0),('ef2b52a2-0d89-86c7-d93f-6017ffea1061','nmtoan.cmu@gmail.com','NMTOAN.CMU@GMAIL.COM',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2021-02-01 13:17:00','2021-02-05 17:10:19',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses_audit`
--

DROP TABLE IF EXISTS `email_addresses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_addresses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses_audit`
--

LOCK TABLES `email_addresses_audit` WRITE;
/*!40000 ALTER TABLE `email_addresses_audit` DISABLE KEYS */;
INSERT INTO `email_addresses_audit` VALUES ('21bc201e-b596-fbfe-7f0e-6017ffea55ef','ef2b52a2-0d89-86c7-d93f-6017ffea1061','2021-02-01 13:17:52','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('35f96c56-14f7-0893-4b44-6018092c872d','3e255149-a6be-2cc6-641e-601809a55ad2','2021-02-01 13:59:02','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('42593a84-e02d-afe1-5f45-60180848b83c','cac0ee1f-86fa-89bc-121d-601808bc009c','2021-02-01 13:54:39','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('454d5e29-f230-d088-5a8c-601d1d7b01f2','662e0508-72b5-64fc-d867-601d1defe352','2021-02-05 10:29:06','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('5a304c6b-c697-2860-f83a-60180734c15e','36ee6b47-398a-2d57-1245-601806fa12cf','2021-02-01 13:49:54','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('61da5b9c-e51b-b38a-a11e-601806c728c7','dadc20be-d57b-648f-823a-60180629cbf1','2021-02-01 13:48:21','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('937d9e04-a23e-5d6d-3c53-601805fcce13','2da1aa9b-556a-32f1-6181-60180560a9c3','2021-02-01 13:42:45','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('beb4466d-523f-65d3-39fe-6018059140c7','36f139cb-0647-94c7-8ff7-601805eaeaba','2021-02-01 13:44:37','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('d5b10a99-6e37-c1f4-073b-601800beead7','aca91e3f-5480-3096-f0ee-601800ea7a9f','2021-02-01 13:20:08','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL),('eba875ea-3999-0df5-eca8-601807d275b6','c00d5585-32dd-dfb9-5717-601807b4d40d','2021-02-01 13:52:39','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL);
/*!40000 ALTER TABLE `email_addresses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
INSERT INTO `email_marketing` VALUES ('96a67098-d553-63d7-c531-60181fa2e612',0,'2021-02-01 15:36:16','2021-02-02 03:09:59','1','1','Tiếp thị giảm giá','Nguyen Dinh Thanh','thanhm2519014@gstudent.ctu.edu.vn','Nguyen Dinh Thanh','thanhm2519014@gstudent.ctu.edu.vn','a310be6f-9211-69b6-c842-601824241e95','2021-02-03 00:00:00','d70cc2bf-e1c0-a654-f802-6017caef0c1c','active','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','1f420c02-1a6e-3cba-7311-601803b8086a',1);
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `body_html` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('4c325ee5-13a0-0d04-fcb0-6017ca97349c','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),('4cc84b44-db05-58b0-60e1-6017ca3cd1c1','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),('4e8c6fe9-1f72-1ce1-2744-6017cafbc3fc','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','off','Two Factor Authentication email','This template is used to send a user a code for Two Factor Authentication.','Two Factor Authentication Code','Two Factor Authentication code is $code.','<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>',0,NULL,0,'system'),('618cb822-627e-0ce6-d79c-6017ca249932','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','off','Confirmed Opt In','Email template to send to a contact to confirm they have opted in.','Confirm Opt In','Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address','<p>Hi $contact_first_name $contact_last_name,</p>\n             <p>\n                Please confirm that you have opted in by selecting the following link:\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\n             </p>',0,NULL,NULL,'system'),('ce2219a3-09e5-2392-42be-6017ca658980','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\n\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\n					   Status:				$acase_status\n					   Reference:			$acase_case_number\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Resolution</td><td>$acase_resolution</td></tr>\n					    </tbody></table>',0,NULL,NULL,'system'),('ceded62d-fae8-bd40-8b3f-6017caea1bbe','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\n					   An account has been created for you at $portal_address.\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,'system'),('cfb58183-5778-17e3-82d2-6017ca9df258','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\n\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\n					   Status:		$acase_status\n					   Reference:	$acase_case_number\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\n					    <table border=\"0\"><tbody>\n					    <tr><td>Status</td><td>$acase_status</td></tr>\n					    <tr><td>Reference</td><td>$acase_case_number</td></tr>\n					    <tr><td>Description</td><td>$acase_description</td></tr>\n					    </tbody></table>',0,NULL,NULL,'system'),('d2c323a9-6cd9-8851-16be-6017ca9a90c8','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\n					    <p> </p>\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,'system'),('d39017a2-2746-2857-f252-6017ca15bbd2','2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','off','User Case Update','Email template to send to a SuiteCRM user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\n\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\n					       $contact_first_name $contact_last_name, said:\n					               $aop_case_updates_description\n                        You may review this Case at:\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\n					     <p> </p>\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>',0,NULL,NULL,'system'),('d70cc2bf-e1c0-a654-f802-6017caef0c1c','2013-05-24 14:31:45','2021-02-01 15:57:18','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\n$fp_events_description\nYours Sincerely,\n','<div class=\"mozaik-inner\" style=\"max-width:600px;font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:rgb(68,68,68);padding:0px 30px;margin:0px auto;width:538.7px;background-color:rgb(250,250,250);\"><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:#444444;padding:0px;margin:0px;\">Chào $contact_name,</p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:#444444;padding:0px;margin:0px;\">Chúng tôi đang có chương trình khuyến mãi Sales off 40% cho cuối năm 2020,<br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:#444444;padding:0px;margin:0px;\" /></p><p style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:#444444;padding:0px;margin:0px;\">Chúc bạn luôn hài lòng với sản phẩm của chúng tôi!<br style=\"font-family:Arial, Helvetica, sans-serif;font-size:14px;line-height:22.4px;color:#444444;padding:0px;margin:0px;\" /></p></div>',0,'',0,'system');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT 0,
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
INSERT INTO `emailman` VALUES ('2021-02-02 03:09:59',NULL,'1',49,'8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','96a67098-d553-63d7-c531-60181fa2e612','d8fca699-44f1-c54a-e1bd-60181bb1048a','2021-02-03 00:00:00',NULL,0,NULL,0,0,'ca9ff845-ba1f-c360-c3da-601808f52b53','Accounts',0),('2021-02-02 03:09:59',NULL,'1',50,'8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','96a67098-d553-63d7-c531-60181fa2e612','d8fca699-44f1-c54a-e1bd-60181bb1048a','2021-02-03 00:00:00',NULL,0,NULL,0,0,'86501ea4-7654-356f-16ce-60181c5fc8f6','Leads',0),('2021-02-02 03:09:59',NULL,'1',51,'8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','96a67098-d553-63d7-c531-60181fa2e612','d8fca699-44f1-c54a-e1bd-60181bb1048a','2021-02-03 00:00:00',NULL,0,NULL,0,0,'3d3f746b-5537-94b5-dc54-601809aa350a','Contacts',0),('2021-02-02 03:09:59',NULL,'1',52,'8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','96a67098-d553-63d7-c531-60181fa2e612','d8fca699-44f1-c54a-e1bd-60181bb1048a','2021-02-03 00:00:00',NULL,0,NULL,0,0,'1','Users',0);
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent_received` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  KEY `idx_email_cat` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES ('2eb46cdb-857c-d867-6f81-6018076983d5','New account information','2021-02-01 13:49:50','2021-02-01 13:49:50','1','1',0,'1',NULL,NULL,'2021-02-01 13:49:50',NULL,'archived','sent',NULL,NULL,'pick',NULL,'User',NULL,NULL,NULL),('3054fb51-89e0-26c6-7efa-6018062bc76f','New account information','2021-02-01 13:48:16','2021-02-01 13:48:16','1','1',0,'1',NULL,NULL,'2021-02-01 13:48:16',NULL,'archived','sent',NULL,NULL,'pick',NULL,'User',NULL,NULL,NULL),('549f8728-92f2-4fff-32f3-60180536103b','New account information','2021-02-01 13:44:33','2021-02-01 13:44:33','1','1',0,'1',NULL,NULL,'2021-02-01 13:44:33',NULL,'archived','sent',NULL,NULL,'pick',NULL,'User',NULL,NULL,NULL),('5eabb1e9-3b93-0b8f-0130-6018054ccff6','New account information','2021-02-01 13:42:41','2021-02-01 13:42:41','1','1',0,'1',NULL,NULL,'2021-02-01 13:42:41',NULL,'archived','sent',NULL,NULL,'pick',NULL,'User',NULL,NULL,NULL),('c1b9e0b8-102b-97ac-c6f7-6018071a3999','New account information','2021-02-01 13:52:35','2021-02-01 13:52:35','1','1',0,'1',NULL,NULL,'2021-02-01 13:52:35',NULL,'archived','sent',NULL,NULL,'pick',NULL,'User',NULL,NULL,NULL);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
INSERT INTO `emails_email_addr_rel` VALUES ('3240ea6d-0877-7707-cf30-6018071dfdbe','2eb46cdb-857c-d867-6f81-6018076983d5','from','61215e29-9cb4-82af-3e58-60180515dabe',0),('32d4ef78-28bd-26ca-15e7-601806cd469f','3054fb51-89e0-26c6-7efa-6018062bc76f','from','61215e29-9cb4-82af-3e58-60180515dabe',0),('57727ca5-83c1-423f-2707-601805ba07fb','549f8728-92f2-4fff-32f3-60180536103b','from','61215e29-9cb4-82af-3e58-60180515dabe',0),('61c06f4e-51d0-efd1-1bda-6018055dc427','5eabb1e9-3b93-0b8f-0130-6018054ccff6','from','61215e29-9cb4-82af-3e58-60180515dabe',0),('c2ce386c-3fa0-b85d-553d-60180738fc84','c1b9e0b8-102b-97ac-c6f7-6018071a3999','from','61215e29-9cb4-82af-3e58-60180515dabe',0);
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(250) DEFAULT NULL,
  `reply_to_addr` varchar(250) DEFAULT NULL,
  `to_addrs` text DEFAULT NULL,
  `cc_addrs` text DEFAULT NULL,
  `bcc_addrs` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `description_html` longtext DEFAULT NULL,
  `raw_source` longtext DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
INSERT INTO `emails_text` VALUES ('2eb46cdb-857c-d867-6f81-6018076983d5','','','','','','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\'vi_VN\'>\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n<title>New account information</title>\n</head>\n<body><div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : httthao </p><p>Password : K1P2B6 </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div></body></html>','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : httthao </p><p>Password : K1P2B6 </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>','',0),('3054fb51-89e0-26c6-7efa-6018062bc76f','','','','','','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\'vi_VN\'>\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n<title>New account information</title>\n</head>\n<body><div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : vvchuong </p><p>Password : Nr32Je </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div></body></html>','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : vvchuong </p><p>Password : Nr32Je </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>','',0),('549f8728-92f2-4fff-32f3-60180536103b','','','','','','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\'vi_VN\'>\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n<title>New account information</title>\n</head>\n<body><div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : ntbchi </p><p>Password : 9klYzq </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div></body></html>','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : ntbchi </p><p>Password : 9klYzq </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>','',0),('5eabb1e9-3b93-0b8f-0130-6018054ccff6','','','','','','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\'vi_VN\'>\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n<title>New account information</title>\n</head>\n<body><div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : nvlinh </p><p>Password : Tl7PSF </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div></body></html>','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : nvlinh </p><p>Password : Tl7PSF </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>','',0),('c1b9e0b8-102b-97ac-c6f7-6018071a3999','','','','','','<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\'vi_VN\'>\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\n<title>New account information</title>\n</head>\n<body><div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : ttson </p><p>Password : Le31xk </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div></body></html>','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : ttson </p><p>Password : Le31xk </p><br /><p>http://localhost/SuiteCRM</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr> </tbody></table> </div>','',0);
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT 0,
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `audited` tinyint(1) DEFAULT 0,
  `massupdate` tinyint(1) DEFAULT 0,
  `duplicate_merge` smallint(6) DEFAULT 0,
  `reportable` tinyint(1) DEFAULT 1,
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsadress_huyentp_c','adress_huyentp_c','LBL_ADRESS_HUYENTP','','','Accounts','varchar',255,0,'','2021-02-05 09:59:52',0,0,0,0,1,'true','','','',''),('Accountsadress_sonha_duong_c','adress_sonha_duong_c','LBL_ADRESS_SONHA_DUONG','','','Accounts','varchar',255,0,'','2021-02-05 09:56:45',0,0,0,0,1,'true','','','',''),('Accountsadress_tinh_c','adress_tinh_c','LBL_ADRESS_TINH','','','Accounts','varchar',255,0,'','2021-02-05 10:00:27',0,0,0,0,1,'true','','','',''),('Accountsadress_town_c','adress_town_c','LBL_ADRESS_TOWN','','','Accounts','varchar',255,0,'','2021-02-05 09:58:45',0,0,0,0,1,'true','','','',''),('Accountsbirthday_enter_c','birthday_enter_c','LBL_BIRTHDAY_ENTER','','','Accounts','date',NULL,0,'','2021-02-04 00:56:54',0,0,0,0,1,'required','','','',''),('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2021-02-01 09:31:37',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2021-02-01 09:31:37',0,0,0,0,1,'true','8','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT 0,
  `is_group` tinyint(1) DEFAULT 0,
  `is_dynamic` tinyint(1) DEFAULT 0,
  `dynamic_query` text DEFAULT NULL,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
INSERT INTO `folders` VALUES ('8a2e1a23-826b-38ca-725a-601804d3afac','INBOX (Nguyen Dinh Thanh)','inbound','',1,0,1,' AND status NOT IN (\\\'archived\\\') AND type NOT IN (\\\'archived\\\')','','1','1',0),('8cfb594d-875c-78eb-8fa6-60180461e04c','Bản Nháp ()','draft','8a2e1a23-826b-38ca-725a-601804d3afac',0,0,1,' AND status NOT IN (\\\'archived\\\') AND type NOT IN (\\\'archived\\\')','','1','1',0),('8db00fff-ec00-3bee-89e0-6018049c4057','Gửi Emails ()','sent','8a2e1a23-826b-38ca-725a-601804d3afac',0,0,1,' AND status NOT IN (\\\'archived\\\') AND type NOT IN (\\\'archived\\\')','','1','1',0),('8e27cee3-d358-0752-427d-601804c44b0d',' Emails lưu trữ','archived','8a2e1a23-826b-38ca-725a-601804d3afac',0,0,1,' AND status NOT IN (\\\'archived\\\') AND type NOT IN (\\\'archived\\\')','','1','1',0),('a310be6f-9211-69b6-c842-601824241e95','INBOX (Nguyen Dinh Thanh)','inbound','',1,0,1,'','','1','1',0),('a4b851fe-d924-d10d-43f3-60182475cf4b','Bản Nháp ([Gmail]/Sent Mail)','draft','a310be6f-9211-69b6-c842-601824241e95',0,0,1,'','','1','1',0),('a6e32732-9381-2432-6ffb-601824692b2a','Gửi Emails ([Gmail]/Sent Mail)','sent','a310be6f-9211-69b6-c842-601824241e95',0,0,1,'','','1','1',0),('a7b43a7d-7461-4f6d-959a-601824df8752',' Emails lưu trữ','archived','a310be6f-9211-69b6-c842-601824241e95',0,0,1,'','','1','1',0),('a830e9ad-6a89-b087-b17d-601824031c1d','Nguyen Dinh Thanh','','',0,0,0,'','','1','1',0);
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
INSERT INTO `folders_subscriptions` VALUES ('8c9f8d4c-4eaf-555a-7d6d-6018042b0722','8a2e1a23-826b-38ca-725a-601804d3afac','1'),('8cfce1cb-2dbb-6ca0-b16e-6018045aae06','8cfb594d-875c-78eb-8fa6-60180461e04c','1'),('8db109e7-ba37-4c9d-c1b3-601804f25239','8db00fff-ec00-3bee-89e0-6018049c4057','1'),('8e28c83f-6af0-3688-bdcf-601804f0eb8c','8e27cee3-d358-0752-427d-601804c44b0d','1'),('a41da30c-b1b1-2a26-857f-6018247990d7','a310be6f-9211-69b6-c842-601824241e95','1'),('a4b951c9-d843-34f2-78ac-6018244a0024','a4b851fe-d924-d10d-43f3-60182475cf4b','1'),('a6e8723f-0ee4-4c3b-27c5-601824725cd8','a6e32732-9381-2432-6ffb-601824692b2a','1'),('a7b5cf59-dfd8-13f3-64b1-60182469fa7a','a7b43a7d-7461-4f6d-959a-601824df8752','1'),('a831f61c-8898-0939-96a1-60182437d072','a830e9ad-6a89-b087-b17d-601824031c1d','1');
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `default_values` text DEFAULT NULL,
  `has_header` tinyint(1) DEFAULT 1,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text DEFAULT NULL,
  `delete_seen` tinyint(1) DEFAULT 0,
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT 0,
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
INSERT INTO `inbound_email` VALUES ('8a2e1a23-826b-38ca-725a-601804d3afac',0,'2021-02-01 13:37:02','2021-02-01 13:37:02','1','1','Nguyen Dinh Thanh','Active','imap.gmail.com','thanhm2519014@gstudent.ctu.edu.vn','u5kBzUR5JCaCrHkG7bx+wA==',993,'::::ssl::imap::::::','INBOX',0,'pick',NULL,'YToxMDp7czo5OiJmcm9tX25hbWUiO3M6MTc6Ik5ndXllbiBEaW5oIFRoYW5oIjtzOjk6ImZyb21fYWRkciI7czozMzoidGhhbmhtMjUxOTAxNEBnc3R1ZGVudC5jdHUuZWR1LnZuIjtzOjEzOiJyZXBseV90b19hZGRyIjtzOjE3OiJOZ3V5ZW4gRGluaCBUaGFuaCI7czo3OiJtYWlsYm94IjtzOjU6IklOQk9YIjtzOjExOiJ0cmFzaEZvbGRlciI7czoxMzoiW0dtYWlsXS9UcmFzaCI7czoxMDoic2VudEZvbGRlciI7czowOiIiO3M6MTA6Im9ubHlfc2luY2UiO2I6MDtzOjEzOiJmaWx0ZXJfZG9tYWluIjtzOjA6IiI7czoxNToiZm9sZGVyRGVsaW1pdGVyIjtzOjE6Ii8iO3M6MTQ6Im91dGJvdW5kX2VtYWlsIjtzOjM2OiIxZjQyMGMwMi0xYTZlLTNjYmEtNzMxMS02MDE4MDNiODA4NmEiO30=','1',1,NULL),('a310be6f-9211-69b6-c842-601824241e95',0,'2021-02-01 15:55:08','2021-02-01 15:55:08','1','1','Nguyen Dinh Thanh','Active','imap.gmail.com','thanhm2519014@gstudent.ctu.edu.vn','u5kBzUR5JCaCrHkG7bx+wA==',993,'::::ssl::imap::::::','INBOX',0,'bounce','','YToxMzp7czo5OiJmcm9tX25hbWUiO3M6MTc6Ik5ndXllbiBEaW5oIFRoYW5oIjtzOjk6ImZyb21fYWRkciI7czozMzoidGhhbmhtMjUxOTAxNEBnc3R1ZGVudC5jdHUuZWR1LnZuIjtzOjEzOiJyZXBseV90b19uYW1lIjtzOjE3OiJOZ3V5ZW4gRGluaCBUaGFuaCI7czoxMzoicmVwbHlfdG9fYWRkciI7czozMzoidGhhbmhtMjUxOTAxNEBnc3R1ZGVudC5jdHUuZWR1LnZuIjtzOjEwOiJvbmx5X3NpbmNlIjtiOjA7czoxMzoiZmlsdGVyX2RvbWFpbiI7czowOiIiO3M6MzA6ImVtYWlsX251bV9hdXRvcmVwbGllc18yNF9ob3VycyI7czoyOiIxMCI7czoyNjoiYWxsb3dfb3V0Ym91bmRfZ3JvdXBfdXNhZ2UiO2I6MDtzOjc6Im1haWxib3giO3M6NToiSU5CT1giO3M6MTE6InRyYXNoRm9sZGVyIjtzOjEzOiJbR21haWxdL1RyYXNoIjtzOjEwOiJzZW50Rm9sZGVyIjtzOjE3OiJbR21haWxdL1NlbnQgTWFpbCI7czoxMjoiaXNBdXRvSW1wb3J0IjtiOjE7czoyNToibGVhdmVNZXNzYWdlc09uTWFpbFNlcnZlciI7aToxO30=','9f6532ee-e745-bc29-3198-601824d89d64',0,'9f665194-8151-e398-3680-60182475a752');
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_lng` float(11,8) DEFAULT 0.00000000,
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `requeue` tinyint(1) DEFAULT 0,
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT 0,
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
INSERT INTO `leads` VALUES ('86501ea4-7654-356f-16ce-60181c5fc8f6','2021-02-01 15:21:57','2021-02-01 15:21:57','1','1','',0,'bf91d4a9-ad20-a78a-783e-601807a8619a','Mr.','Thanh Nhàn','Lê','Nhân viên',NULL,'Văn phòng',0,NULL,'0945885510','0945885510',NULL,'',NULL,NULL,NULL,'Sông Đốc','Cà Mau','','','Việt Nam','Sông Đốc','Cà Mau','','','Việt Nam',NULL,NULL,0,'','Self Generated','','New','',NULL,'ltnhan',NULL,'','','',NULL,'','',NULL,NULL,NULL,'http://');
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
INSERT INTO `leads_cstm` VALUES ('86501ea4-7654-356f-16ce-60181c5fc8f6',0.00000000,0.00000000,NULL,NULL);
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT -1,
  `email_reminder_time` int(11) DEFAULT -1,
  `email_reminder_sent` tinyint(1) DEFAULT 0,
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT 0,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT 1,
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  `gsync_id` varchar(1024) DEFAULT NULL,
  `gsync_lastsync` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ndt_customercontact`
--

DROP TABLE IF EXISTS `ndt_customercontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ndt_customercontact` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `id_stt` int(255) DEFAULT NULL,
  `loailienhe` varchar(100) DEFAULT NULL,
  `noidung` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndt_customercontact`
--

LOCK TABLES `ndt_customercontact` WRITE;
/*!40000 ALTER TABLE `ndt_customercontact` DISABLE KEYS */;
INSERT INTO `ndt_customercontact` VALUES ('caa694f3-d43c-3bfa-9ba4-601d7cd81ac0','Tư vấn sản phẩm','2021-02-05 17:10:40','2021-02-05 17:10:40','1','1',NULL,0,'3610f3bc-2001-8790-a63f-60180648eaaa',1,'dienThoai','Áo thun mẫu M5');
/*!40000 ALTER TABLE `ndt_customercontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ndt_customercontact_accounts_c`
--

DROP TABLE IF EXISTS `ndt_customercontact_accounts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ndt_customercontact_accounts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `ndt_customercontact_accountsaccounts_ida` varchar(36) DEFAULT NULL,
  `ndt_customercontact_accountsndt_customercontact_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ndt_customercontact_accounts_ida1` (`ndt_customercontact_accountsaccounts_ida`),
  KEY `ndt_customercontact_accounts_alt` (`ndt_customercontact_accountsndt_customercontact_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ndt_customercontact_accounts_c`
--

LOCK TABLES `ndt_customercontact_accounts_c` WRITE;
/*!40000 ALTER TABLE `ndt_customercontact_accounts_c` DISABLE KEYS */;
INSERT INTO `ndt_customercontact_accounts_c` VALUES ('889fca8a-2f80-1804-001d-601d794a98d8','2021-02-05 17:01:39',0,'ca9ff845-ba1f-c360-c3da-601808f52b53','8763c5c3-23c3-0c2c-8248-601d791dcc1b'),('c1bf5307-f252-14da-4227-601d7ab29b48','2021-02-05 17:05:39',0,'ca9ff845-ba1f-c360-c3da-601808f52b53','c0ae5860-6e10-d259-c0b0-601d7af5cb8c'),('cb2ffb65-db4a-02f4-88b6-601d7c6d3362','2021-02-05 17:10:40',0,'ca9ff845-ba1f-c360-c3da-601808f52b53','caa694f3-d43c-3bfa-9ba4-601d7cd81ac0'),('cb376f87-403b-f351-8808-601d7b5f32df','2021-02-05 17:06:37',0,'ca9ff845-ba1f-c360-c3da-601808f52b53','ca9654ce-f1a1-92c2-6fce-601d7be748f1');
/*!40000 ALTER TABLE `ndt_customercontact_accounts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT 0,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2clients`
--

DROP TABLE IF EXISTS `oauth2clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT 1,
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2clients`
--

LOCK TABLES `oauth2clients` WRITE;
/*!40000 ALTER TABLE `oauth2clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2tokens`
--

DROP TABLE IF EXISTS `oauth2tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2tokens`
--

LOCK TABLES `oauth2tokens` WRITE;
/*!40000 ALTER TABLE `oauth2tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
INSERT INTO `opportunities` VALUES ('ef2c7101-ac91-14da-29ae-6018b818e410','Áo thun mua 3 tặng 1','2021-02-02 02:27:09','2021-02-02 02:28:34','1','1','Khuyến mãi cuối năm 2020: Áo thun mua 3 tặng 1',0,'1',NULL,'8562f6b1-37d9-4ea6-dadd-60181ee7ce8a',NULL,250000,250000,'f0e7c3a5-9d61-3e84-bb0c-601808b3c4f9','2021-02-06',NULL,'chotsales',0);
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
INSERT INTO `opportunities_cstm` VALUES ('ef2c7101-ac91-14da-29ae-6018b818e410',0.00000000,0.00000000,'','');
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` varchar(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT 0,
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('1f420c02-1a6e-3cba-7311-601803b8086a','Nguyen Dinh Thanh','user','1','Nguyen Dinh Thanh','thanhm2519014@gstudent.ctu.edu.vn','SMTP','other','smtp.gmail.com','587','thanhm2519014@gstudent.ctu.edu.vn','6IWcCbVvNw55PPFk5YaZOw==',1,'2',NULL,NULL,NULL,NULL,0,NULL),('3885a2ed-b9ae-4a24-e292-6017cafadc99','system','system','1','SuiteCRM','thanhm2519014@gstudent.ctu.edu.vn','SMTP','gmail','smtp.gmail.com','587','thanhm2519014@gstudent.ctu.edu.vn','6IWcCbVvNw55PPFk5YaZOw==',1,'2',NULL,NULL,NULL,NULL,0,NULL),('cdf0db05-d6ea-32f2-3415-601801b1097a','system','system-override','1','SuiteCRM','thanhm2519014@gstudent.ctu.edu.vn','SMTP','gmail','smtp.gmail.com','587','','',1,'2',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

LOCK TABLES `outbound_email_audit` WRITE;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `predecessors` text DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text DEFAULT NULL,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT 1,
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `utilization` int(11) DEFAULT 100,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
INSERT INTO `prospect_list_campaigns` VALUES ('c6eb1d9c-9e76-294f-b52d-60181e676e7f','d8fca699-44f1-c54a-e1bd-60181bb1048a','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','2021-02-01 15:30:59',0);
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
INSERT INTO `prospect_lists` VALUES ('1','d8fca699-44f1-c54a-e1bd-60181bb1048a','Danh sách khách hàng được giảm giá','default','2021-02-01 15:17:55','2021-02-02 02:48:58','1','1',0,'Danh sách khách hàng được giảm giá cuối năm',NULL);
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`,`deleted`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
INSERT INTO `prospect_lists_prospects` VALUES ('21640104-e7ff-4aab-4c6a-6018bd0cbcdd','d8fca699-44f1-c54a-e1bd-60181bb1048a','ca9ff845-ba1f-c360-c3da-601808f52b53','Accounts','2021-02-02 02:48:58',0),('25052ae0-572c-c3a8-00d3-60181c7be08e','d8fca699-44f1-c54a-e1bd-60181bb1048a','86501ea4-7654-356f-16ce-60181c5fc8f6','Leads','2021-02-01 15:22:30',0),('8b2b7e4a-f1cf-a608-3837-6018bdec8fc2','d8fca699-44f1-c54a-e1bd-60181bb1048a','3d3f746b-5537-94b5-dc54-601809aa350a','Contacts','2021-02-02 02:48:42',0),('cbed10b0-87c0-fc44-ba69-60181cfb756f','d8fca699-44f1-c54a-e1bd-60181bb1048a','1','Users','2021-02-01 15:22:43',0);
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT 0,
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text DEFAULT NULL,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT 0.00000000,
  `jjwg_maps_lat_c` float(10,8) DEFAULT 0.00000000,
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('22daccd1-4d70-ed6a-0b91-601d77df86c2','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('239f01d0-ceb8-b86e-8210-601d771d56f9','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('24148d34-3540-9901-523d-601d77407b94','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('249dc823-5bbf-d0a4-11da-601d774c4b40','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('24f32eca-0f46-2943-6660-601d779e131c','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('2551a473-8adf-058e-250d-601d77cf152e','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('259b4930-0349-b513-1c2e-601d77967d48','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('26055ec9-141b-d52e-ea65-601d77a861da','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('265684b2-b908-d92d-81ed-601d77f316dc','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('26bd9b78-2b46-2418-2eb6-601d77f46e7e','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('2844f88d-3f38-d086-2ecb-601d77ce6e0e','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('28c96dfb-5498-d243-e9d7-601d7711e10b','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('291e13cf-7177-fdf5-981b-601d77430818','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('2accec5a-0ec4-a218-16e4-601d776334d8','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b4425dc-7051-e889-2508-601d77b4838d','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b99d9b7-ca2f-d260-3870-601d77c2daae','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2bff5fc7-d100-f502-cb18-601d7729ef95','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('2c32d9fa-5c51-17bb-caba-601d771f1bc9','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2cc9d18f-7847-1544-eb2a-601d77246690','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2cf9c08e-ef7d-25f6-0abd-601d77f1d141','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2d2c98d0-6f57-a9a6-490f-601d77a429a3','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2db59608-aaeb-b948-1431-601d7784f4f3','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('2dfac3e5-71f3-51a9-de33-601d7768aa9d','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2f6b7972-4037-0704-7012-601d772b2194','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2fcd0859-d4e7-2718-a700-601d77ae8806','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2ff610c7-40c4-b208-8433-601d7726d469','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('30411259-f73c-d593-d55c-601d77eff036','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('307ff777-65f2-c79b-6956-601d777686a7','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('30cbfc53-9af1-5b08-2ab2-601d77466dc2','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('30fca5d2-8739-c860-3f18-601d7760675a','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('316ff893-206d-d22e-7497-601d7777ef43','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('3197108c-49c4-52c4-0581-601d772f1c46','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('31d5aec4-38e8-3f04-e661-601d77dd58a9','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('321338d7-43db-5393-a309-601d77ccc28e','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3281a9b8-c9b8-1706-6ffe-601d77e98155','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('32aa144d-f1c0-ae73-5001-601d77f2ae91','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('32f9e9ad-fcdd-ae7a-fd1a-601d77daae6f','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('337b4bcd-754c-cd23-24e6-601d774a4c5d','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('33b4d0c6-3d6d-9460-a03a-601d77bdaa40','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('33f5a683-70e3-db1e-ab06-601d77770fcf','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('343a0602-8ace-4077-60cd-601d773f864b','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3483c681-92f6-14c2-f16e-601d7711751e','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34fab0cd-d552-2715-dd7d-601d774f5d03','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('356ccba8-b93d-32cb-f1f4-601d7717ef1d','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('3583e967-9212-8afa-c1ce-601d77836077','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('35d128f3-ac77-4bf2-b420-601d77048aa8','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('3616b4b3-309e-4636-7966-601d77fa95ea','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('364ee890-d759-0551-dc00-601d77ff6d21','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('368dc07d-09bd-0727-8c1a-601d770d7245','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('36c3e85f-f2e8-1094-4798-601d776b2537','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('36ffd3b0-f5b2-8998-1358-601d7787eaeb','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('371dd2bb-9753-970c-e61b-601d77941b35','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('38986ce9-d756-c9dc-9e76-601d77fe41d8','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('38ef1a6c-fb17-22fa-efd8-601d770ed2e2','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('392b224e-7943-49ec-80df-601d77447f6e','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('3959b240-8d5b-a09e-bfd2-601d774882ef','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('397c86bd-c7a6-f79a-b803-601d77845838','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('39c57403-ea2a-ff25-da18-601d77d02454','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('39f4bc52-5f35-b93e-fa0e-601d770fc291','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a44d3ff-a75f-684b-ac10-601d77049e8e','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3a798f97-03de-ff6c-f7a5-601d77ab8979','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3aeb9fe8-c505-28f0-d2c6-601d77e4c09c','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b18de71-107c-9daa-80a7-601d77231fe7','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3b8fa134-02d9-ad59-f24d-601d778d6125','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3bdd3e9c-d1ae-ad6f-ab16-601d774803c3','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('3c21900f-417f-bf40-a802-601d7735567d','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c5d4d79-e6ab-9f9f-544a-601d779934cd','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c80854d-b8f9-2817-bc8f-601d773b2068','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3cb5fc1b-fae2-5b44-0c1a-601d7773d8f3','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d1934d6-a793-1b10-fe7e-601d776b7c4d','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d4aebbe-d352-fe5a-0ce5-601d77101aae','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d90c454-0215-fe7b-38d0-601d7760d99f','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3dcdb838-2f86-e28c-7679-601d77c736a2','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e06e7ef-5e77-92ed-0609-601d77f158de','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e39ccf6-3a91-dfe6-832e-601d777bde25','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3e749ca2-edb7-5048-937f-601d774c5f7a','surveyresponses_campaigns','Campaigns','campaigns','id','SurveyResponses','surveyresponses','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3edca62e-1f0f-4bd9-483e-601d7730c422','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3f2b495f-7921-a867-4898-601d77ed9991','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('40a802f1-3e07-3fa0-5472-601d772c9f59','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('40f34027-9342-415e-396c-601d77633ae6','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('413b7f06-268d-bf08-4220-601d77977855','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('418c9024-7288-419c-16a9-601d77df0945','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('41e25ee9-0ff9-3b3b-71af-601d77ac1402','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('422b43ca-1ab5-805f-7a74-601d773af5f4','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('425ddc84-33db-2bd5-c749-601d77cbd588','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('42a11f56-9981-f705-e107-601d7754b670','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('42d76588-85c9-5590-9806-601d774dfc4f','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('42f52a19-bcec-1c09-3ca4-601d77af7a6f','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('4339d1bd-9ec1-d6ec-4621-601d7744b97e','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('438afd23-3153-6d58-0b44-601d776087f5','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('454a96cd-2c9a-d509-da06-601d77c128a9','securitygroups_emailmarketing','SecurityGroups','securitygroups','id','EmailMarketing','email_marketing','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailMarketing',0,0),('45aac305-bb0d-24a1-a061-601d776be3c5','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4646889d-f948-b5e7-ab8a-601d77bd2ac3','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('47fc0bfc-3f5f-641e-e795-601d779b9ea1','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('48501817-15c6-f9cd-1ad3-601d772f2827','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('487d547a-af52-3cfc-add6-601d77418121','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('48bae739-e417-9af3-7dfe-601d77c61902','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('497f2ebb-d51c-a708-5559-601d774ae5a0','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49cdc806-a9c2-576e-1810-601d77980d14','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a030335-67dd-6783-a099-601d77118f11','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4a39c3e9-1362-fd6d-dbbc-601d77136efe','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('4a73bebd-342c-7319-67be-601d77bb4817','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('4ae573a3-e6e5-ac75-4bcc-601d770b6e99','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('4b317700-9785-247b-1a84-601d77f37e57','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b6a4661-04c3-cc7d-02ac-601d77b94d01','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4bc953e3-6f12-69c7-ca4b-601d77f00ccc','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c24473c-0f38-0a2b-008d-601d77ebebb3','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4c3ee0ed-0702-77e9-ee35-601d77fe26a8','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('4c6e7a88-11f0-6b22-e962-601d77bd95f2','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('4cbb1af0-9650-088f-2535-601d77d726c0','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('4cee8b37-e4dc-4afb-2b77-601d773446fb','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d3ba787-df40-c8f7-ce92-601d77f027a6','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4d7e776a-5d06-aad4-6978-601d779bf31d','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4dc07377-96b0-b6ba-d6a3-601d7740936b','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4f5ab406-fd19-0fca-6f8d-601d77ad63e8','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4fe17e3b-8839-119d-48e4-601d77d40ee2','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5008344e-f3af-76a4-f103-601d775f6101','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('50796efc-140f-8a01-7ab8-601d77331e0b','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('50aea3f8-932e-cafb-b9ca-601d772db140','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('50ead570-bcab-22a8-dea8-601d77d63243','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('5118201a-02d0-f214-d9bd-601d774db979','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51652f98-c16c-ea8c-ce99-601d771b2694','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('51816b14-18a0-4cfc-b389-601d77b39827','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('51a816ce-0419-b678-e09e-601d77c9f437','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('51ebf116-aac7-791f-df91-601d7771fd40','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('5236f081-c469-53c2-fcff-601d772cf315','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('52813a9d-bef0-931b-357e-601d77b1d0e8','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('5298ae5b-c576-53fa-cb30-601d77434a46','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('52db024a-1406-b219-0046-601d77d1c7ac','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('52f927a2-b510-a6ef-0ae8-601d77f17d60','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5338b69e-2bd7-69cd-4c0c-601d772c8f09','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('536a7af0-489f-2872-c97f-601d77b0049e','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55973b9f-d1eb-d10c-23e9-601d778f797e','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55fe125d-0c71-2399-f1d0-601d77fd76f4','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('564e29b3-c4b2-cb89-c6fd-601d77fefd5b','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('56761c3d-335d-4918-2860-601d777a3f4d','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('56b97926-3575-817b-e3f8-601d77e08158','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('5703d148-ac3f-88f2-8a85-601d771ff38e','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('5739533c-4227-e50d-54d4-601d77fa195a','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('5771c97d-00ad-b4c9-8c8b-601d774d23df','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('57a69f05-8361-8b8d-2ba2-601d77411f9e','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('5910a874-38a9-8253-0d6d-601d7728ba4f','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5958fe9f-4932-c445-47d4-601d77325855','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('598cc6b1-0224-04d6-d6eb-601d77995d2e','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('59acb712-cd53-1a86-144d-601d775aac2c','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5a0903d7-2d02-ec79-4925-601d776f2ad4','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5c0982c7-3cd7-d726-a0d6-601d770b0768','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('5c7d19a7-8b14-ff07-4121-601d7783987b','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d31da5f-86f8-97ed-e242-601d77df524d','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5fad524d-89a2-59e5-ca1e-601d772320ba','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('5ffb6607-b994-1059-42f7-601d77a3bb07','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('603046c4-8d48-fe74-3a84-601d77a5a5c5','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('60eaa070-ea21-5b7a-7d41-601d773295a6','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('61292221-074d-474c-5ab2-601d77274f5a','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6161c180-eeb5-9f00-5b11-601d779cb24f','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6199cf9f-a623-ed68-49a9-601d7782df75','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('62013f81-5e88-30aa-e98e-601d7785779d','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('628b4fde-96e8-f4bf-7937-601d77f9c77f','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67849975-5140-6eca-229d-601d7706b631','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('67e7dc80-71ae-153a-2f0e-601d77f297d0','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('68280cd0-3c10-a959-8b9b-601d7705f5a1','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('686cf888-bca0-65f6-0f44-601d771a9194','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('68d3cbc4-cedc-9711-3759-601d77ea8d49','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6934bcb4-fab2-d993-b3ee-601d77434367','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('695cf4ce-002b-ef6c-f5f5-601d77ac125e','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('698f9c82-8b83-3b9d-a086-601d7750e43c','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('69f357f4-d818-dd31-8d64-601d77512a82','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),('6a284985-45c1-2f04-3a5d-601d779818be','emails_meetings_rel','Emails','emails','id','Meetings','meetings','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Meetings',0,0),('6add1bb2-da7e-34fc-11ca-601d77e181d1','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6b33d588-d2a3-fd4a-a847-601d77f969c5','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6b845c54-6ff0-5a5e-bd05-601d776dfe3d','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6bd86796-98e8-7e7f-4cd6-601d7717529a','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('6c00e745-2643-ce9a-2f54-601d77dc73ef','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('6d11ec1d-d029-107c-f708-601d77aba993','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6d7e823b-212f-a6be-1869-601d77bb46e9','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6dadbd7c-8d21-130f-9050-601d770c07af','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6def6c8b-016e-74b2-6645-601d77d45192','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('6e3a8694-127c-6644-1c1d-601d773d18a0','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('70032bcd-1265-e23b-57a5-601d77658167','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7176c69b-2e2e-f469-4f53-601d771e3dd8','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71df9d39-9a3d-ba15-dd13-601d77bc2f64','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72a174b7-8166-5c00-8450-601d775ce0ac','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7304419a-c407-eca9-047f-601d77792293','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7335c208-e17f-5601-abec-601d7720fc1a','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('735e3fe2-28a6-e99d-8816-601d778b1f5e','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('73b2a7a9-c61a-75be-ba5b-601d774376bb','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7403bce0-a30f-179d-287a-601d7784c40c','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('791761c0-1d77-7466-b5be-601d775d0627','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('79b6e613-e691-e6e8-0893-601d77237b55','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('7a79e249-3042-e289-4b0d-601d77612a73','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7b78602e-0377-2bf5-962e-601d77ffa015','spots_modified_user','Users','users','id','Spots','spots','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7bcfc00c-294c-6ab7-7c11-601d772d4885','spots_created_by','Users','users','id','Spots','spots','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7be92529-2869-0927-7694-601d770fc5e6','spots_assigned_user','Users','users','id','Spots','spots','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c2c6ad6-aa4e-634f-d60a-601d77c0c8f3','securitygroups_spots','SecurityGroups','securitygroups','id','Spots','spots','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Spots',0,0),('7cca618d-9f10-0373-d494-601d77cedf5b','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7cff796d-a591-a09c-13e4-601d777cf269','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d7dcb78-2b7c-6a5c-00e0-601d779785c4','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7de4dd32-ec95-d15c-5b0c-601d775c7051','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7e4ec8a5-63c4-1b37-604a-601d777437a8','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f09a063-1a30-cf13-1535-601d77245afe','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f439c72-9eee-6e91-8494-601d77b3fead','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7f6b6077-8d8d-e9c7-74af-601d77ebbb7c','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7fa93bcb-6c1c-7ee7-07bf-601d77a8b567','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7feb4a66-b9ef-06f7-89f3-601d771df114','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8029194b-b574-75fc-c258-601d77c497bd','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8092ebd5-f55c-8291-8624-601d7703bc1f','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80c7e78f-f5aa-b2d6-ba0b-601d7773ec4d','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8131b3ec-bcd8-ce46-3fe8-601d77f022ab','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('816c0353-1458-0ce7-63be-601d77c97cce','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('81c31280-ad6d-95a7-275a-601d7750f05d','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82111bde-537f-d842-f945-601d77d7eb17','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8260e58d-4b21-9289-d8f8-601d77c48647','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8287ab54-6086-22ab-5f30-601d77dc4d0d','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82f1332c-315e-4b39-7872-601d779df820','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8337ea95-7625-c056-b726-601d778f0a92','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('838afd2b-7f61-3f85-aec1-601d779db888','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('83d1cb43-967d-05c2-1332-601d77c81640','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84061c50-08af-0db4-63d2-601d77174e97','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('844a2da3-8dab-38e9-cc0b-601d77af5c48','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8479027a-5a16-8c2c-2c0e-601d7703bfde','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('84e957dc-e520-ab93-b77e-601d77009406','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85406242-6129-052d-afff-601d77484afe','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('855d9c93-9226-0639-2dd8-601d77c1712e','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),('85e7f20e-c272-53e8-df21-601d77cac11a','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('862c6b89-06b4-e755-1cd4-601d77db801c','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('866ccc27-e886-af14-14e6-601d77ae21a3','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('86c9aa9d-7439-21ae-e192-601d7757baec','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('871452fa-227e-7731-2f8e-601d77be22a3','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('875ffec8-a1c3-69b9-22ef-601d77df7864','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87944bb1-c420-b00f-64af-601d773e2a5b','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87c6fe08-cd09-f4a3-df73-601d77f14f2c','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('87ef2c53-d2fa-a547-b9ba-601d7758f2a8','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('885cf2b8-cccc-8b48-4455-601d7777d265','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),('89cb1171-65e6-e24a-f8a2-601d778598b6','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a3b17f0-6956-6a5d-63dd-601d77c64db4','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8a817424-f761-a886-deff-601d77b9fc79','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ae6de81-80b9-deca-1e82-601d77d4b9fd','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),('8b447997-f2d1-8f58-b2bd-601d77c9b863','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('8b7ebc23-2f32-8e42-ac3d-601d77946b15','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('8bd1332f-a5e9-f7a9-278f-601d77f2deec','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c1a61c8-bd33-5673-42fd-601d77dcea77','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c99febd-4fa3-c12a-9339-601d775bfcbe','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8de3f93e-2abf-880e-b861-601d775bfcbb','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e66166a-fd4e-0840-1641-601d7713a99b','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8eaf7b5f-ece1-5979-b1bd-601d77e9dec6','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f20bb24-2d03-734c-02ca-601d77bac67c','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f6cb961-2b43-6610-e4d1-601d77080e62','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8fd3a334-6743-5137-3657-601d77980e4a','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9039529f-9676-95cd-dff3-601d77390fe7','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('90cd3e55-283e-19bf-65b4-601d7749ac7b','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9122d790-665c-90fc-774e-601d77e2c8ec','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('918f6a84-fcb3-26e9-a464-601d776bc2f5','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('91c37c70-8e1b-bda2-46cc-601d77859fbc','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92045d1b-0517-4529-3f74-601d77f43dfe','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('9433edee-e683-3afc-6ef4-601d77f02dbd','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94aacf17-c023-f686-a4fe-601d77856896','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94e159f1-fb1b-cd83-17c7-601d770d99ab','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9513a003-c421-dfc6-6bf6-601d77a8a28a','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),('9546f8e7-3b45-5655-be92-601d77d8d9cf','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('957bc090-a74e-96f5-2f47-601d7732666a','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('95d3f8d7-25a0-4a68-c9ba-601d778dfc99','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9612e5c2-e822-1623-b2da-601d77173680','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96569dc5-6eab-668b-ce6f-601d77b9b8bf','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96d48a99-cd98-a738-6d02-601d77081254','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97542b44-3c34-6b93-828b-601d7796c312','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97c3bf6b-a9c9-8229-f105-601d7760d549','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9837407d-3254-febd-a4e5-601d777f47bd','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('986e262c-88c3-9aa1-0b5d-601d77d74aca','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9937c7a9-2fcd-eb8a-5160-601d77af0b0e','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('997c09a3-0b4f-a3fd-31b7-601d770da237','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('99d92e2b-8e7a-9105-1526-601d77238880','securitygroups_aor_scheduled_reports','SecurityGroups','securitygroups','id','AOR_Scheduled_Reports','aor_scheduled_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Scheduled_Reports',0,0),('9a1bc045-173e-cd45-31f0-601d773711ca','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9afe19e1-17c5-4027-4542-601d77e97f2f','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9b4b9542-5034-9dfb-98e4-601d77329c30','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9b89a3b9-ce9e-6c13-63ae-601d77906781','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),('9bc86923-91a9-888f-6707-601d77b27505','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('9c05ca4c-3325-1363-89ed-601d7730cd60','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('9c38463e-cd76-e1e1-f746-601d77546694','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('9c75e4a9-8859-14a7-7dcc-601d77c6180f','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('9d156553-8fd2-af91-f0cb-601d770660b0','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9d56e7a1-0d81-4f07-8948-601d779914aa','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9dd13062-cd00-43cf-f94c-601d77b55ffe','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e070aaf-c280-b207-81d5-601d7752609e','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e430f3e-63ff-2ace-94a0-601d77478947','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9e8da9c6-e29f-f59b-6ceb-601d778cfe1e','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),('9eceb8ee-bf07-e5a2-8729-601d773fd248','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9f04fd55-6264-18c7-81c5-601d7770edd5','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9f515090-d5a8-8f13-545a-601d778881b1','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9f99941b-5ac9-9567-afb0-601d77784ca2','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9fce56bf-e3be-fc19-2f94-601d77150e7b','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a009af7c-90f8-7ecd-0ad2-601d7789921b','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),('a0409fc2-90ce-3469-b711-601d77379b08','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a0854bd9-dfac-19b4-660b-601d77c0ca89','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a0c5836c-44a5-d7d8-966d-601d7774e582','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a21e9f0b-70a0-1f77-9e09-601d77b221e6','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),('a2885027-287c-e31f-b824-601d77221cd1','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a3034aba-191e-4262-956d-601d77f51b98','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a36d86df-c6ca-a16c-80f2-601d770c02be','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a3bb8735-ed39-b31a-19ae-601d776ae50b','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a406f268-a4b9-3551-9af1-601d77cd8fb7','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),('a4362e79-6bf8-dec8-1f93-601d77963fc6','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4af74f6-a2ec-49db-d676-601d770d8976','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4dc0f26-f186-298e-023e-601d77a87797','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a515d411-084b-f177-d2f2-601d77586f11','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a54a48a3-a894-1aaf-4d32-601d77684ee7','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a5dad11a-4ac6-2c1c-1c90-601d777c41b7','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a6185da9-a2bf-55b9-21b1-601d770cc7ff','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a65cd653-cafa-ade7-ed9a-601d77337900','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a6d3fb4e-7eef-5821-f25e-601d772cfba4','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a73235f4-ebd6-5742-1ff5-601d77a482c5','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7a92d12-78a2-7a19-71f0-601d7760c4e9','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a7c8cbb5-7238-38ad-9e8c-601d776c985a','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a846eeb8-4ca9-74f5-2b93-601d77bae080','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),('a886f44c-fb12-8490-0642-601d77f49ab3','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a8e06dd6-c32b-15c6-4310-601d7783a31d','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a97e475f-3fec-8add-b961-601d7785310b','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a9c836ba-904c-0fa5-dce7-601d77ee2211','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aa7654c1-5632-a3cc-ee04-601d772860e5','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aab6fae8-a7b0-fcae-5137-601d777d06ef','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab176d1a-a1b0-715a-9e7d-601d77b67152','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab58e51f-3b0a-1dfb-ebd6-601d777ccd10','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),('ab8ffe20-dddc-f5db-e7d6-601d77f07495','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('abc2be24-54f0-e1ce-dfd1-601d77baa816','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac1c12fc-fa4a-7793-7d50-601d779e0c8c','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac85178c-9d65-b05f-9411-601d774b2ba5','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('acad095e-98d2-2887-9112-601d771af8b0','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad062117-4fcc-2e83-3b6c-601d77d250a9','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad6b7917-3bec-3c53-4003-601d779da5f5','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae8ff1a9-641d-b6b8-7dbd-601d77b49f12','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aedcb262-d357-bac8-e205-601d773077c0','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('af30e3e7-e7b4-af80-317a-601d77eab034','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('af6b5115-b3b8-cd08-9196-601d77b5ca64','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),('afb99a69-4d29-bad8-8e8a-601d77517f1e','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('afdfe29e-05fe-138f-2c36-601d7719b413','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('b01137b2-2c1f-ee53-592d-601d77b66dd8','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('b04af513-c54f-eef9-f3d1-601d778b5c5e','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('b08128c6-225c-7d83-fbdd-601d778ae4b6','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('b0df3e08-2464-324b-9364-601d77b4fc64','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('b10dd43b-1332-5b2c-76c3-601d774eb949','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('b160aa11-6dbc-2e12-d810-601d778de70e','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('b205eb0d-8c91-235d-4db7-601d77ad3e4f','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b24dbb33-fdae-e733-9f8e-601d77cb9790','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b26b229f-11dd-aebf-9e71-601d7738e488','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2b1e330-c5c6-aea8-ed12-601d77221984','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),('b3635abc-fe89-5411-e741-601d7770b337','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b3aaf503-c5f3-a684-6ff8-601d77370ae2','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b40e0d4d-781f-7935-30d3-601d77f102f5','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b44396c2-07a9-aa54-320a-601d77bc6fe7','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),('b4de2720-065f-3cfc-b4b5-601d77346d28','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b56c285f-9bbb-e677-dd26-601d77e9c874','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b5cef772-e969-8cb5-b119-601d77e4eb76','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b62d21c8-a093-afab-e515-601d7751a173','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b66b0301-80a9-a25a-0e90-601d7729da5b','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b68a61d2-0aea-21cd-a344-601d77467cbb','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b71b2016-8e3b-bf51-a503-601d772aa6d7','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b75efb2d-995e-ceaa-f1ed-601d7761f0a8','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b7a962b4-01a1-7edf-e267-601d77324bf2','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b80496b1-5eed-5b44-5302-601d77ffbf60','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b844a6dc-df46-c99f-3dfd-601d779e33eb','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b882f55b-478f-4e0a-182b-601d77430be4','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8c6a663-9452-adbe-3b0a-601d773773f3','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b91041ef-6b84-6720-b1cf-601d77feb045','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ba7dcaaa-0423-46f1-8965-601d77f2c719','oauth2tokens_modified_user','Users','users','id','OAuth2Tokens','oauth2tokens','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bad94d48-eb1f-e731-01a2-601d77db87fe','oauth2tokens_created_by','Users','users','id','OAuth2Tokens','oauth2tokens','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb41d41f-c313-c57c-111b-601d777e6fc4','oauth2tokens_assigned_user','Users','users','id','OAuth2Tokens','oauth2tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb99af1f-5714-f0c6-901d-601d77ec9fb6','oauth2clients_modified_user','Users','users','id','OAuth2Clients','oauth2clients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc15098e-6d99-d1e4-463e-601d77ebdbf1','oauth2clients_created_by','Users','users','id','OAuth2Clients','oauth2clients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc36a7a2-aa6f-2bce-d6ca-601d77d249e1','oauth2clients_oauth2tokens','OAuth2Clients','oauth2clients','id','OAuth2Tokens','oauth2tokens','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc597d18-a9d6-6f32-17a8-601d77080a8f','oauth2clients_assigned_user','Users','users','id','OAuth2Clients','oauth2clients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bf9b5fc0-03e2-283e-ea7e-601d77772e93','surveyresponses_modified_user','Users','users','id','SurveyResponses','surveyresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c031ac78-e3c1-d278-ed56-601d77201d51','surveyresponses_created_by','Users','users','id','SurveyResponses','surveyresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c06f8bc7-6bb3-8a24-4397-601d77d03944','surveyresponses_assigned_user','Users','users','id','SurveyResponses','surveyresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c0e94eb8-9a75-9418-b2c8-601d77e065b9','securitygroups_surveyresponses','SecurityGroups','securitygroups','id','SurveyResponses','surveyresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyResponses',0,0),('c149ad31-a180-71b2-ac89-601d7725cf3d','surveyresponses_surveyquestionresponses','SurveyResponses','surveyresponses','id','SurveyQuestionResponses','surveyquestionresponses','surveyresponse_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c19fd974-bd32-6249-16ac-601d77e82e5f','surveys_modified_user','Users','users','id','Surveys','surveys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c1e42371-b322-8374-4138-601d77338f68','surveys_created_by','Users','users','id','Surveys','surveys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c21b0bd4-1162-f5c8-3bfd-601d77bc7454','surveys_assigned_user','Users','users','id','Surveys','surveys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2722bbf-4332-c65f-c4a4-601d7778defa','securitygroups_surveys','SecurityGroups','securitygroups','id','Surveys','surveys','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Surveys',0,0),('c2a862d8-3d70-a0cb-ddf4-601d77c0892c','surveys_surveyquestions','Surveys','surveys','id','SurveyQuestions','surveyquestions','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c2f9e47e-a664-c0e1-6c28-601d771922b1','surveys_surveyresponses','Surveys','surveys','id','SurveyResponses','surveyresponses','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c33074b2-4b34-69ca-04dc-601d77c43af5','surveys_campaigns','Surveys','surveys','id','Campaigns','campaigns','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3927b6c-2661-9958-bd3e-601d777571a3','surveyquestionresponses_modified_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3c17925-756a-5b98-3f07-601d770dbabf','surveyquestionresponses_created_by','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3e0d699-0783-972f-e583-601d779777db','surveyquestionresponses_assigned_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c41741b4-2e8c-c609-f8de-601d77a2274f','securitygroups_surveyquestionresponses','SecurityGroups','securitygroups','id','SurveyQuestionResponses','surveyquestionresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionResponses',0,0),('c46c2020-d0a6-4b12-8408-601d77d64ecb','surveyquestions_modified_user','Users','users','id','SurveyQuestions','surveyquestions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4ad2ff3-183d-7bcb-cce3-601d7731a311','surveyquestions_created_by','Users','users','id','SurveyQuestions','surveyquestions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4e8a3dc-a05d-7c7c-a983-601d77e900c4','surveyquestions_assigned_user','Users','users','id','SurveyQuestions','surveyquestions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5171112-f244-072f-ab3c-601d773dd523','securitygroups_surveyquestions','SecurityGroups','securitygroups','id','SurveyQuestions','surveyquestions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestions',0,0),('c55d5b40-c469-9fb6-5b3b-601d773c8b93','surveyquestions_surveyquestionoptions','SurveyQuestions','surveyquestions','id','SurveyQuestionOptions','surveyquestionoptions','survey_question_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c5be3511-e5ec-e78d-a9b5-601d7723f706','surveyquestionoptions_modified_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c6126818-bb8d-0e71-c868-601d776b165f','surveyquestionoptions_created_by','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c6709145-0578-91de-71ce-601d779f0b19','surveyquestionoptions_assigned_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c6a572f6-a6a4-532d-9b30-601d7715533c','securitygroups_surveyquestionoptions','SecurityGroups','securitygroups','id','SurveyQuestionOptions','surveyquestionoptions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionOptions',0,0),('c6d0a355-ff24-7a8a-0d23-601d773b0c2a','test_module_test_modified_user','Users','users','id','test_module_test','test_module_test','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c71d331d-12ce-5ba0-b7d8-601d7738b4e9','test_module_test_created_by','Users','users','id','test_module_test','test_module_test','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c751aaad-6912-1a8e-8eeb-601d77601d8c','test_module_test_assigned_user','Users','users','id','test_module_test','test_module_test','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c780c1e4-6aca-d1ac-1d8b-601d77dd2334','securitygroups_test_module_test','SecurityGroups','securitygroups','id','test_module_test','test_module_test','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','test_module_test',0,0),('c83c06ab-58bc-b4e3-06e2-601d77681151','ndt_customercontact_modified_user','Users','users','id','NDT_CustomerContact','ndt_customercontact','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c882d7a9-5fec-ef16-dc11-601d77252ce7','ndt_customercontact_created_by','Users','users','id','NDT_CustomerContact','ndt_customercontact','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c8b79b96-508b-333f-34b1-601d772629b1','ndt_customercontact_assigned_user','Users','users','id','NDT_CustomerContact','ndt_customercontact','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c8feb78f-7e68-e653-0835-601d7723904b','securitygroups_ndt_customercontact','SecurityGroups','securitygroups','id','NDT_CustomerContact','ndt_customercontact','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','NDT_CustomerContact',0,0),('c9e712db-43b7-b489-e8b4-601d77cee3c7','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('ca46d88e-0a9c-a808-a927-601d77745477','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('cac80fe8-f769-3492-82fa-601d77377c49','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('cb1efe21-1fde-0bdb-bde0-601d77589434','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('cb5d9db5-856e-fded-3c04-601d779ad79a','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('cb950370-be4f-1063-aab6-601d7708bf4c','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('cbb768eb-85f4-f61c-2bdd-601d77c9786e','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('cd52c482-403a-9434-850d-601d775895cf','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('ce204185-7ffc-494b-2ffc-601d77a65301','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('cf1f4c5a-d38c-6b56-b69e-601d77e8aaf2','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('cf86fede-4bfe-99a0-b505-601d77d139a9','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('cfbbd52e-83d9-18e6-c993-601d770f8205','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('d0412604-5b97-2242-0908-601d779f5b98','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('d30d2cc2-591b-e2eb-8a3d-601d7732cdf2','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('d38800e9-964c-0699-f888-601d7752c82f','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('d3dd57fc-5df8-3306-0600-601d779bf923','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('d441d865-bd3c-a84a-0605-601d77e017c7','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('d48be59c-e271-6cfa-1dc5-601d77670b69','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('d4d12a96-aecf-4ef8-fea7-601d77137a1c','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('d4f9ca9a-ad22-ae29-6997-601d772276a8','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('d547cf5b-ab3e-4a3a-e9dc-601d7774f543','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('d565d120-8018-85d4-21af-601d77380a5f','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('d5a21369-2751-2d6f-5980-601d777ffa2d','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('d5d08274-b95e-a05b-e8bb-601d77599f1f','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('d6221519-20f9-dab3-4394-601d77c9f229','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('d65f20d6-b0bf-ea7c-71a1-601d77295ff5','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('d6bb2dd7-e4e7-9085-11a0-601d77d8a6ac','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('d712410d-e9eb-9aa7-e7d2-601d77da0181','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('d7560e33-9d15-d098-45e8-601d778bb25f','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('d79be760-71e6-68b6-43a4-601d77509e00','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('d81313b6-7e29-3ad9-29c8-601d77c87d9e','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('d8898170-dd9f-dca5-dced-601d77cce650','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('d8cb178b-167f-bc56-e0f7-601d77857f0a','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('d92e137e-b490-a59a-9a45-601d776ee42c','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('d978bac8-dbfa-5418-f02d-601d7746fc30','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('d9accaaa-e869-d71c-d784-601d77598a44','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('da024616-1106-482c-ed0a-601d779fac75','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('da349031-2ce7-5803-1cc5-601d7777812c','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('da728b0b-c811-2c9e-da4f-601d77aa0a18','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('daaa67c5-03ee-b0fb-7df3-601d77f55c07','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('dad45f58-f778-88f4-dd0d-601d774c0ed8','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('db1feaba-cfa4-3dc2-a9c5-601d7762660b','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('db5a74e7-5bf1-f014-e37b-601d7747486d','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('db962582-2e99-d3fd-de0c-601d774e5f8d','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),('dbd0cd96-8984-4f84-3a6b-601d777f0d9a','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('dc168aa7-6d3a-b6ea-0025-601d77f88493','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),('dc44f378-5770-aacf-36d5-601d771ec4cc','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),('dc6d4a4a-4352-7994-b68f-601d7713cf5d','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),('dcb6a194-c1b7-5b23-fcc3-601d77551ff8','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('dcde8d9e-7198-acc1-4189-601d77900861','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('dd2aa013-9ce2-4051-854a-601d77993786','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('dd596c4d-94e5-8abb-daef-601d776fec78','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('dda7997a-5c49-fa2e-f3c7-601d77afdd87','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('ddc777e6-670a-aa13-2311-601d77b5b11c','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('de0c5f9e-6571-27e6-7b1b-601d77d9f079','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('de6525ba-8636-bc0e-7167-601d77dddd7e','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('de97be2e-3df7-6457-e5da-601d7705df0f','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('ded4e056-33fc-cc8d-3bf2-601d7737c78f','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('df0ba3ad-b814-a93f-1553-601d779cfef2','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('df5f0bb0-1ba0-def8-ba88-601d77090b12','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('df819062-0d64-89ec-d95c-601d770b02bc','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('dfb3ebcf-6c4b-872c-5528-601d77e94fa5','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('e0204d76-84dc-e3ff-babf-601d776fead1','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('e1449798-f629-f135-9d02-601d774c8cca','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('e1b86fb2-4393-3e46-2ad3-601d77d88fbb','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('e2362092-c372-5ce3-cf96-601d776e3ccd','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('e26e1dec-e998-184a-13f0-601d7701b28b','surveyquestionoptions_surveyquestionresponses','SurveyQuestionOptions','surveyquestionoptions','id','SurveyQuestionResponses','surveyquestionresponses','id','surveyquestionoptions_surveyquestionresponses','surveyq72c7options_ida','surveyq10d4sponses_idb','many-to-many',NULL,NULL,0,0),('e2a50b7c-f574-b8cd-f484-601d7730a92a','ndt_customercontact_accounts','Accounts','accounts','id','NDT_CustomerContact','ndt_customercontact','id','ndt_customercontact_accounts_c','ndt_customercontact_accountsaccounts_ida','ndt_customercontact_accountsndt_customercontact_idb','many-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT -1,
  `popup_viewed` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

LOCK TABLES `reminders_invitees` WRITE;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `modules` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('3f156354-b826-7f7d-962f-6017ca357dc9',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 13:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('4008b3bc-6317-0ef2-b9df-6017caca1407',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 14:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('40a2f16d-2d9e-2839-ca69-6017cab9bfc0',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 09:15:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('413c74eb-bf83-a62a-1296-6017caf8a095',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 07:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('42914c73-0c0b-3981-43c7-6017ca8be661',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 08:15:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('42ec449f-0a7c-d0a9-4c77-6017ca0cbd46',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 13:45:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('435f60fd-342e-06fc-1a48-6017ca1b9a10',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Prune Database on 1st of Month','function::pruneDatabase','2015-01-01 11:30:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('4407306d-44c8-96fb-99c5-6017ca32b889',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Perform Lucene Index','function::aodIndexUnindexed','2015-01-01 12:30:01',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',0),('44865622-1665-3082-83d0-6017ca15c18d',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Optimise AOD Index','function::aodOptimiseIndex','2015-01-01 09:15:01',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',0),('44fa9acb-7f85-a84b-d4d4-6017ca2b4c3a',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 18:30:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('46690de0-e73a-93a4-feec-6017ca6d1986',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 10:30:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),('470d37df-3060-ef3c-35f3-6017ca81f3f7',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 18:00:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),('47b8e72a-3f64-c91d-6995-6017ca82bac0',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 17:15:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('4827dd1e-21bd-77eb-5c74-6017ca50ddc0',0,'2021-02-01 09:31:37','2021-02-01 09:31:37','1','1','Google Calendar Sync','function::syncGoogleCalendar','2015-01-01 17:00:01',NULL,'*/15::*::*::*::*',NULL,NULL,NULL,'Active',0);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
INSERT INTO `securitygroups` VALUES ('489dc7de-bca8-0539-71ec-601811b4481d','Group Trưởng Phòng','2021-02-01 14:34:55','2021-02-01 14:35:25','1','1','Nhóm Trưởng phòng chức năng',0,'eec487ce-32cf-17b7-228a-6017fffa49c8',0),('98be2f0b-6b01-d387-ea4c-6018114bc454','Ban giám đốc','2021-02-01 14:34:04','2021-02-01 14:34:22','1','1','Thành viene trong Ban Giám đốc',0,'1',0),('d39cf59c-39c8-b60c-b88b-601811ebe378','Group Nhân viên','2021-02-01 14:35:49','2021-02-01 14:36:12','1','1','Nhóm các Nhân viên',0,'1',0);
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
INSERT INTO `securitygroups_acl_roles` VALUES ('136d4d1c-b496-9a73-d555-601811b795fb','d39cf59c-39c8-b60c-b88b-601811ebe378','a0b17db8-3562-2520-7a5b-60181003f945','2021-02-01 14:36:12',0),('1c0ccdf0-f19c-865a-64ca-60181158b9d4','98be2f0b-6b01-d387-ea4c-6018114bc454','54779abd-cf10-d4b8-3946-601809414e38','2021-02-01 14:34:22',0),('21f72c50-4591-4341-4636-601811ce931b','489dc7de-bca8-0539-71ec-601811b4481d','920ed607-4a99-1bc8-930d-60180a7c44f1','2021-02-01 14:35:21',0),('6a858377-97b3-c8fc-5b96-601811dbd691','d39cf59c-39c8-b60c-b88b-601811ebe378','145ce98a-0b57-3e66-8f20-60180fdba411','2021-02-01 14:36:03',0),('7254fb45-7211-ac24-2886-601811c28dac','489dc7de-bca8-0539-71ec-601811b4481d','59940d2d-46d1-e3fa-8112-60180940c994','2021-02-01 14:35:16',0),('b3e1ee73-2ec5-54d2-95da-6018111427e4','489dc7de-bca8-0539-71ec-601811b4481d','52c526cb-9c4a-23b6-b39f-60180f9089b2','2021-02-01 14:35:25',0),('fd9a0c38-03e9-3651-68f4-6018112d179a','d39cf59c-39c8-b60c-b88b-601811ebe378','bef307c8-d095-6341-6352-601810875b07','2021-02-01 14:36:08',0);
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
INSERT INTO `securitygroups_records` VALUES ('14fec1df-67d5-11eb-9137-080027437139','d39cf59c-39c8-b60c-b88b-601811ebe378','caa694f3-d43c-3bfa-9ba4-601d7cd81ac0','NDT_CustomerContact','2021-02-06 00:00:00',NULL,NULL,0),('1750f3a1-64a4-11eb-94bf-080027437139','d39cf59c-39c8-b60c-b88b-601811ebe378','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','Campaigns','2021-02-01 00:00:00',NULL,NULL,0),('25a52916-64fe-11eb-9451-e76546301cfc','d39cf59c-39c8-b60c-b88b-601811ebe378','ef2c7101-ac91-14da-29ae-6018b818e410','Opportunities','2021-02-02 00:00:00',NULL,NULL,0),('3bb15e51-64a1-11eb-94bf-080027437139','d39cf59c-39c8-b60c-b88b-601811ebe378','86501ea4-7654-356f-16ce-60181c5fc8f6','Leads','2021-02-01 00:00:00',NULL,NULL,0),('6fd7feb1-6623-11eb-8e5f-d61b04c1bf7a','d39cf59c-39c8-b60c-b88b-601811ebe378','ca9ff845-ba1f-c360-c3da-601808f52b53','Accounts','2021-02-03 00:00:00',NULL,NULL,0),('f8acbd43-679c-11eb-908c-dc3679be4b3e','d39cf59c-39c8-b60c-b88b-601811ebe378','6607c57b-7f2e-3056-dc3e-601d1da841c2','Accounts','2021-02-05 00:00:00',NULL,NULL,0);
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
INSERT INTO `securitygroups_users` VALUES ('1d712374-b615-baed-fd7d-6018110c8795','2021-02-01 14:35:58',0,'d39cf59c-39c8-b60c-b88b-601811ebe378','bf91d4a9-ad20-a78a-783e-601807a8619a',NULL,0),('20829043-3a18-6faa-6e4c-601811b02cba','2021-02-01 14:35:58',0,'d39cf59c-39c8-b60c-b88b-601811ebe378','3610f3bc-2001-8790-a63f-60180648eaaa',NULL,0),('21e2a685-9510-5c0c-5076-601811297697','2021-02-01 14:35:58',0,'d39cf59c-39c8-b60c-b88b-601811ebe378','d9de9e80-8795-dd13-54ef-60180675bfea',NULL,0),('35a11a12-092a-aceb-3a1f-601811e5e0c8','2021-02-01 14:34:17',0,'98be2f0b-6b01-d387-ea4c-6018114bc454','eec487ce-32cf-17b7-228a-6017fffa49c8',NULL,0),('7bb91122-2031-9913-ca33-6018117aac42','2021-02-01 14:35:11',0,'489dc7de-bca8-0539-71ec-601811b4481d','352d7e86-0816-8c05-c37a-601805583ccb',NULL,0),('7d75bac4-b486-0494-3ced-601811eaaa64','2021-02-01 14:35:11',0,'489dc7de-bca8-0539-71ec-601811b4481d','2d063f95-3066-a985-dabe-6018050f6016',NULL,0),('817ebe5b-d221-8def-c440-60181149a8fc','2021-02-01 14:35:11',0,'489dc7de-bca8-0539-71ec-601811b4481d','ab37d18f-a705-7563-c78b-601800b3e553',NULL,0);
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
INSERT INTO `sugarfeed` VALUES ('41193a9f-255b-4e86-acd1-601809536707','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_CONTACT} [Contacts:3d3f746b-5537-94b5-dc54-601809aa350a:Phương Thảo Ngô]','2021-02-01 13:58:58','2021-02-01 13:58:58','1','1',NULL,0,'3610f3bc-2001-8790-a63f-60180648eaaa','Contacts','3d3f746b-5537-94b5-dc54-601809aa350a',NULL,NULL),('8acf7f1e-355a-d9b9-ea53-60181cd00213','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_LEAD} [Leads:86501ea4-7654-356f-16ce-60181c5fc8f6:Thanh Nhàn Lê]','2021-02-01 15:21:57','2021-02-01 15:21:57','1','1',NULL,0,'bf91d4a9-ad20-a78a-783e-601807a8619a','Leads','86501ea4-7654-356f-16ce-60181c5fc8f6',NULL,NULL),('f1bac348-dea3-ad16-905a-6018b8b0691c','<b>{this.CREATED_BY}</b> {SugarFeed.CREATED_OPPORTUNITY} [Opportunities:ef2c7101-ac91-14da-29ae-6018b818e410:Áo thun mua 3 tặng 1] {SugarFeed.WITH} [Accounts:ca9ff845-ba1f-c360-c3da-601808f52b53:Nguyễn Thế Hiệp] {SugarFeed.FOR_AMOUNT} ₫250,000.00','2021-02-02 02:27:09','2021-02-02 02:27:09','1','1',NULL,0,'1','Opportunities','ef2c7101-ac91-14da-29ae-6018b818e410',NULL,NULL);
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions`
--

DROP TABLE IF EXISTS `surveyquestionoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions`
--

LOCK TABLES `surveyquestionoptions` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_audit`
--

DROP TABLE IF EXISTS `surveyquestionoptions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionoptions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_audit`
--

LOCK TABLES `surveyquestionoptions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionoptions_surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_surveyquestionresponses`
--

LOCK TABLES `surveyquestionoptions_surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses`
--

LOCK TABLES `surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses_audit`
--

DROP TABLE IF EXISTS `surveyquestionresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses_audit`
--

LOCK TABLES `surveyquestionresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

LOCK TABLES `surveyquestions` WRITE;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions_audit`
--

DROP TABLE IF EXISTS `surveyquestions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestions_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions_audit`
--

LOCK TABLES `surveyquestions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses`
--

DROP TABLE IF EXISTS `surveyresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses`
--

LOCK TABLES `surveyresponses` WRITE;
/*!40000 ALTER TABLE `surveyresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses_audit`
--

DROP TABLE IF EXISTS `surveyresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveyresponses_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses_audit`
--

LOCK TABLES `surveyresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_audit`
--

DROP TABLE IF EXISTS `surveys_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_surveys_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_audit`
--

LOCK TABLES `surveys_audit` WRITE;
/*!40000 ALTER TABLE `surveys_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT 0,
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT 0,
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

LOCK TABLES `templatesectionline` WRITE;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
INSERT INTO `templatesectionline` VALUES ('10961ca3-8899-c714-fdcc-60181e89b892','Content with left image','2021-02-01 15:30:59','2021-02-01 15:30:59','1','1','<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://localhost/SuiteCRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image1left.png',NULL,5),('1153d25f-c7e1-3377-01b6-60181e81a009','Content with right image','2021-02-01 15:30:59','2021-02-01 15:30:59','1','1','<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://localhost/SuiteCRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image1right.png',NULL,6),('12091cc4-5f74-e87f-97d0-60181ef43615','Content with two image','2021-02-01 15:30:59','2021-02-01 15:30:59','1','1','<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://localhost/SuiteCRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><img src=\"http://localhost/SuiteCRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" width=\"130\" alt=\"sample.jpg\" /></td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image2.png',NULL,7),('12b49e01-33b2-0260-084c-60181ee7d4a5','Content with three image','2021-02-01 15:30:59','2021-02-01 15:30:59','1','1','<table style=\"width:100%;\"><tbody><tr><td><img src=\"http://localhost/SuiteCRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://localhost/SuiteCRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td><td><img src=\"http://localhost/SuiteCRM/include/javascript/mozaik/tpls/default/images/sample.jpg\" alt=\"sample.jpg\" /></td></tr><tr><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td><h2>Title</h2>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/image3.png',NULL,8),('13b84a94-250d-ad84-05f9-60181e4635e3','Footer','2021-02-01 15:30:59','2021-02-01 15:30:59','1','1','<p class=\"footer\">Take your footer contents and information here..</p>',0,'include/javascript/mozaik/tpls/default/thumbs/footer.png',NULL,9),('611f0e1f-4bdd-9693-1651-60181e050432','Headline','2021-02-01 15:30:59','2021-02-01 15:30:59','1','1','<h1>Add your headline here..</h1>',0,'include/javascript/mozaik/tpls/default/thumbs/headline.png',NULL,1),('7e83033d-4dc7-191f-7bd1-60181e784974','Content','2021-02-01 15:30:59','2021-02-01 15:30:59','1','1','<h2>Title</h2><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</p>',0,'include/javascript/mozaik/tpls/default/thumbs/content1.png',NULL,2),('e4110a2c-cb23-48f9-e8f4-60181e9b55bb','Content with two columns','2021-02-01 15:30:59','2021-02-01 15:30:59','1','1','<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/content2.png',NULL,3),('f0700378-a057-2e54-10b8-60181e05992f','Content with three columns','2021-02-01 15:30:59','2021-02-01 15:30:59','1','1','<table style=\"width:100%;\"><tbody><tr><td><h2>Title</h2></td><td><h2>Title</h2></td><td><h2>Title</h2></td></tr><tr><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td><td>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam tempus odio ante, in feugiat ex pretium eu. In pharetra tincidunt urna et malesuada. Etiam aliquet auctor justo eu placerat. In nec sollicitudin enim. Nulla facilisi. In viverra velit turpis, et lobortis nunc eleifend id. Curabitur semper tincidunt vulputate. Nullam fermentum pellentesque ullamcorper.</td></tr></tbody></table>',0,'include/javascript/mozaik/tpls/default/thumbs/content3.png',NULL,4);
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_module_test`
--

DROP TABLE IF EXISTS `test_module_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_module_test` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `assigned_user_id` char(36) DEFAULT NULL,
  `truong_test` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_module_test`
--

LOCK TABLES `test_module_test` WRITE;
/*!40000 ALTER TABLE `test_module_test` DISABLE KEYS */;
INSERT INTO `test_module_test` VALUES ('97f026b9-81df-5af5-da5b-601aa8ebbc30','abc','2021-02-03 13:42:13','2021-02-03 13:50:47','1','1',NULL,0,'1','test thử');
/*!40000 ALTER TABLE `test_module_test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_module_test_audit`
--

DROP TABLE IF EXISTS `test_module_test_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_module_test_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text DEFAULT NULL,
  `after_value_text` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_test_module_test_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_module_test_audit`
--

LOCK TABLES `test_module_test_audit` WRITE;
/*!40000 ALTER TABLE `test_module_test_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_module_test_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_module_test_contacts_1_c`
--

DROP TABLE IF EXISTS `test_module_test_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_module_test_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `test_module_test_contacts_1test_module_test_ida` varchar(36) DEFAULT NULL,
  `test_module_test_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_module_test_contacts_1_alt` (`test_module_test_contacts_1test_module_test_ida`,`test_module_test_contacts_1contacts_idb`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_module_test_contacts_1_c`
--

LOCK TABLES `test_module_test_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `test_module_test_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_module_test_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT 0,
  `deleted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (1,'1de31f37-258f-8933-6508-6017ffcbcd55','1','Users','eec487ce-32cf-17b7-228a-6017fffa49c8','Minh Toàn Nguyễn','2021-02-01 13:17:52','detailview','ihnq8f77da226uao00do83pdkc',1,0),(2,'d07cc72f-0ece-b7fd-073d-601800e9156a','1','Users','ab37d18f-a705-7563-c78b-601800b3e553','Đình Thành Nguyễn','2021-02-01 13:20:08','detailview','ihnq8f77da226uao00do83pdkc',1,0),(5,'a9fa2e55-5ed6-42a0-422c-6018047807d2','1','Users','1','Administrator','2021-02-01 13:39:29','detailview','ihnq8f77da226uao00do83pdkc',1,0),(15,'81a40d6a-71a4-171d-24bf-601807a7eb8a','1','Users','2d063f95-3066-a985-dabe-6018050f6016','Vũ Linh Nguyễn','2021-02-01 13:50:28','detailview','ihnq8f77da226uao00do83pdkc',1,0),(17,'6aeacaea-10d0-99de-032c-60180797a71d','1','Users','352d7e86-0816-8c05-c37a-601805583ccb','Bích Chi Nguyễn Thị','2021-02-01 13:50:38','editview','ihnq8f77da226uao00do83pdkc',1,0),(19,'5607efe8-c51e-65d4-26df-60180784d229','1','Users','d9de9e80-8795-dd13-54ef-60180675bfea','Văn Chưởng Vũ','2021-02-01 13:51:04','editview','ihnq8f77da226uao00do83pdkc',1,0),(21,'a39eb271-d66a-d691-55af-6018070b654e','1','Users','3610f3bc-2001-8790-a63f-60180648eaaa','Thu Thảo Huỳnh Thị','2021-02-01 13:51:13','editview','ihnq8f77da226uao00do83pdkc',1,0),(22,'e84729ce-8038-3418-edb2-60180797b471','1','Users','bf91d4a9-ad20-a78a-783e-601807a8619a','Thanh Sơn Trần','2021-02-01 13:52:39','detailview','ihnq8f77da226uao00do83pdkc',1,0),(24,'ed262b6a-6f57-26f7-5f1d-60180886f4dd','1','Currencies','f0e7c3a5-9d61-3e84-bb0c-601808b3c4f9','Base Implementation.  Should be overridden.','2021-02-01 13:55:01','save','ihnq8f77da226uao00do83pdkc',1,0),(25,'330d7526-3220-4b5c-4cc2-601809095514','1','Contacts','3d3f746b-5537-94b5-dc54-601809aa350a','Cô. Phương Thảo Ngô','2021-02-01 13:59:02','detailview','ihnq8f77da226uao00do83pdkc',1,0),(30,'dfed60fd-b91d-9e70-f96d-601809f3bfad','1','ACLRoles','54779abd-cf10-d4b8-3946-601809414e38','Ban Giám đốc','2021-02-01 14:00:45','detailview','ihnq8f77da226uao00do83pdkc',1,0),(34,'b3ac9cfa-7fe2-8bbb-17e8-60180a7a96ed','1','ACLRoles','59940d2d-46d1-e3fa-8112-60180940c994','Trưởng phòng Marketing','2021-02-01 14:02:41','detailview','ihnq8f77da226uao00do83pdkc',1,0),(38,'6a9a5fe7-150f-4412-0999-60180ad86f12','1','ACLRoles','920ed607-4a99-1bc8-930d-60180a7c44f1','Trưởng phòng Sales','2021-02-01 14:04:48','detailview','ihnq8f77da226uao00do83pdkc',1,0),(43,'3a735940-e1e5-961f-1814-60180fec71e5','1','ACLRoles','52c526cb-9c4a-23b6-b39f-60180f9089b2','Trưởng phòng CSKH','2021-02-01 14:26:49','detailview','vvtq1hqivq0ei4419m5hop37i4',1,0),(50,'55dbe35f-0998-f81e-8bbb-6018107bf99e','1','ACLRoles','145ce98a-0b57-3e66-8f20-60180fdba411','Nhân viên Marketing','2021-02-01 14:29:44','detailview','vvtq1hqivq0ei4419m5hop37i4',1,0),(54,'2d7d3082-b43c-dad4-2bc4-6018107bd9ee','1','ACLRoles','bef307c8-d095-6341-6352-601810875b07','Nhân viên Sales','2021-02-01 14:32:03','detailview','vvtq1hqivq0ei4419m5hop37i4',1,0),(58,'830e495d-0e05-478f-3e14-601811e7ecb6','1','ACLRoles','a0b17db8-3562-2520-7a5b-60181003f945','Nhân viên CSKH','2021-02-01 14:33:32','detailview','vvtq1hqivq0ei4419m5hop37i4',1,0),(60,'25927405-f957-727c-0017-601811f7ad69','1','SecurityGroups','98be2f0b-6b01-d387-ea4c-6018114bc454','Ban giám đốc','2021-02-01 14:34:22','detailview','vvtq1hqivq0ei4419m5hop37i4',1,0),(64,'c39ac1cf-a841-7dc8-682d-601811fcf32a','1','SecurityGroups','489dc7de-bca8-0539-71ec-601811b4481d','Group Trưởng Phòng','2021-02-01 14:35:25','detailview','vvtq1hqivq0ei4419m5hop37i4',1,0),(68,'254d4545-a841-4bc1-b766-601811bc0349','1','SecurityGroups','d39cf59c-39c8-b60c-b88b-601811ebe378','Group Nhân viên','2021-02-01 14:36:12','detailview','vvtq1hqivq0ei4419m5hop37i4',1,0),(73,'dc7557cd-89cb-521e-6e3c-60181e59f417','1','TemplateSectionLine','13b84a94-250d-ad84-05f9-60181e4635e3','Footer','2021-02-01 15:30:59','save','vvtq1hqivq0ei4419m5hop37i4',1,0),(80,'865beab6-efb0-f7af-fb48-601826a94951','1','InboundEmail','a310be6f-9211-69b6-c842-601824241e95','Nguyen Dinh Thanh','2021-02-01 16:04:31','detailview','vvtq1hqivq0ei4419m5hop37i4',1,0),(94,'647183c9-697b-7b6c-c624-6018b8d0dac1','1','Opportunities','ef2c7101-ac91-14da-29ae-6018b818e410','Áo thun mua 3 tặng 1','2021-02-02 02:28:34','detailview','5pu7nalvi7pembshmfgkto49se',1,0),(97,'2302a7cd-f9eb-4e19-d3e1-6018be753da1','1','ProspectLists','d8fca699-44f1-c54a-e1bd-60181bb1048a','Danh sách khách hàng được giảm giá','2021-02-02 02:54:31','detailview','5pu7nalvi7pembshmfgkto49se',1,0),(101,'e6a5c9a3-db1d-b12b-133f-6018c2572225','1','Campaigns','8562f6b1-37d9-4ea6-dadd-60181ee7ce8a','Khuyến mãi cuối năm','2021-02-02 03:10:10','detailview','5pu7nalvi7pembshmfgkto49se',1,0),(104,'4663fca4-1eb4-225b-c8e3-6018e94bb5aa','1','Leads','86501ea4-7654-356f-16ce-60181c5fc8f6','Ông. Thanh Nhàn Lê','2021-02-02 05:54:51','detailview','qume6luaf0p9rum9t4fdi2iemn',1,0),(112,'40d2ba15-ad6f-3560-1946-601aa9527db4','1','test_module_test','97f026b9-81df-5af5-da5b-601aa8ebbc30','abc','2021-02-03 13:49:31','detailview','956enr81uvdnd43guqtsb8lvvk',1,0),(118,'f0ea07f8-5c2b-ae69-4ce3-601d14d0ec06','1','OutboundEmailAccounts','1f420c02-1a6e-3cba-7311-601803b8086a','Nguyen Dinh Thanh','2021-02-05 09:50:14','detailview','2f9drm5dvhq2b64680e04itf9k',1,0),(122,'3e7e9f67-22f7-d7cf-1a25-601d1d2b608a','1','Accounts','6607c57b-7f2e-3056-dc3e-601d1da841c2','Lương Thị Loan','2021-02-05 10:29:06','detailview','2f9drm5dvhq2b64680e04itf9k',1,0),(131,'34454970-f77a-8c66-c75a-601d7e13a69c','1','Accounts','ca9ff845-ba1f-c360-c3da-601808f52b53','Nguyễn Thế Hiệp','2021-02-05 17:20:05','detailview','hl6j0udjdhjrj345c5uaebjqe1',1,0),(132,'9e004237-8b9c-8b18-a7dd-601d7e30ce14','1','NDT_CustomerContact','caa694f3-d43c-3bfa-9ba4-601d7cd81ac0','Tư vấn sản phẩm','2021-02-05 17:20:52','detailview','hl6j0udjdhjrj345c5uaebjqe1',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES ('82c40d04-4b4f-b6c1-d592-6017cbd6fb2b','upload/upgrades/langpack/SuiteCRM core (vi).zip','10766c2c804f6d4e0f28906f7ee44d7d','langpack','installed','7.11.18.01','Vietnamese (Viet Nam)','Translation: www.crowdin.com/project/suitecrmtranslations','vi_VN','YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czoyMToiVmlldG5hbWVzZSAoVmlldCBOYW0pIjtzOjExOiJkZXNjcmlwdGlvbiI7czo1NzoiVHJhbnNsYXRpb246IHd3dy5jcm93ZGluLmNvbS9wcm9qZWN0L3N1aXRlY3JtdHJhbnNsYXRpb25zIjtzOjQ6InR5cGUiO3M6ODoibGFuZ3BhY2siO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO3M6MzoiWWVzIjtzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjA6e31zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjY6ImF1dGhvciI7czoyMzoiQ+G7mW5nIMSR4buTbmcgU3VpdGVDUk0iO3M6NzoidmVyc2lvbiI7czoxMDoiNy4xMS4xOC4wMSI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMjAtMTEtMDciO31zOjExOiJpbnN0YWxsZGVmcyI7YTozOntzOjI6ImlkIjtzOjU6InZpX1ZOIjtzOjk6ImltYWdlX2RpciI7czoxNzoiPGJhc2VwYXRoPi9pbWFnZXMiO3M6NDoiY29weSI7YTozOntpOjA7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5jbHVkZSI7czoyOiJ0byI7czo3OiJpbmNsdWRlIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L21vZHVsZXMiO3M6MjoidG8iO3M6NzoibW9kdWxlcyI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9pbnN0YWxsIjtzOjI6InRvIjtzOjc6Imluc3RhbGwiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2021-02-01 09:34:53',1),('9753a39c-a75e-3d88-e365-601aa77ce077','upload/upgrades/module/test2021_02_03_203957.zip','679af19091a436e186e7949e231441db','module','installed','1612359597','test','','test','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6NDoidGVzdCI7czo2OiJhdXRob3IiO3M6MDoiIjtzOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6NDoidGVzdCI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMjEtMDItMDMgMTM6Mzk6NTciO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNjEyMzU5NTk3O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Nzp7czoyOiJpZCI7czo0OiJ0ZXN0IjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjE2OiJ0ZXN0X21vZHVsZV90ZXN0IjtzOjU6ImNsYXNzIjtzOjE2OiJ0ZXN0X21vZHVsZV90ZXN0IjtzOjQ6InBhdGgiO3M6NDU6Im1vZHVsZXMvdGVzdF9tb2R1bGVfdGVzdC90ZXN0X21vZHVsZV90ZXN0LnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MDp7fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6MDp7fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL3Rlc3RfbW9kdWxlX3Rlc3QiO3M6MjoidG8iO3M6MjQ6Im1vZHVsZXMvdGVzdF9tb2R1bGVfdGVzdCI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6MTthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vdmlfVk4ubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJ2aV9WTiI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=','2021-02-03 13:39:57',1),('aa28d5f0-d0da-0e0d-71dd-601d77635d0d','upload/upgrades/module/dev_CSKH2021_02_05_234937.zip','b9774db7750f109a5bccfe2f562fbd78','module','installed','1612543777','dev_CSKH','Quản lý chăm sóc khách hàng','dev_CSKH','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiTkRUIjtzOjY6ImF1dGhvciI7czo3OiJuZHRoYW5oIjtzOjExOiJkZXNjcmlwdGlvbiI7czozNDoiUXXhuqNuIGzDvSBjaMSDbSBzw7NjIGtow6FjaCBow6BuZyI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czo4OiJkZXZfQ1NLSCI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMjEtMDItMDUgMTY6NDk6MzciO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNjEyNTQzNzc3O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6OTp7czoyOiJpZCI7czo4OiJkZXZfQ1NLSCI7czo1OiJiZWFucyI7YToxOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxOToiTkRUX0N1c3RvbWVyQ29udGFjdCI7czo1OiJjbGFzcyI7czoxOToiTkRUX0N1c3RvbWVyQ29udGFjdCI7czo0OiJwYXRoIjtzOjUxOiJtb2R1bGVzL05EVF9DdXN0b21lckNvbnRhY3QvTkRUX0N1c3RvbWVyQ29udGFjdC5waHAiO3M6MzoidGFiIjtiOjE7fX1zOjEwOiJsYXlvdXRkZWZzIjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo5MDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYXlvdXRkZWZzL25kdF9jdXN0b21lcmNvbnRhY3RfYWNjb3VudHNfQWNjb3VudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJBY2NvdW50cyI7fX1zOjEzOiJyZWxhdGlvbnNoaXBzIjthOjE6e2k6MDthOjE6e3M6OToibWV0YV9kYXRhIjtzOjkyOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3JlbGF0aW9uc2hpcHMvbmR0X2N1c3RvbWVyY29udGFjdF9hY2NvdW50c01ldGFEYXRhLnBocCI7fX1zOjk6ImltYWdlX2RpciI7czoxNjoiPGJhc2VwYXRoPi9pY29ucyI7czo0OiJjb3B5IjthOjE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo1MToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9ORFRfQ3VzdG9tZXJDb250YWN0IjtzOjI6InRvIjtzOjI3OiJtb2R1bGVzL05EVF9DdXN0b21lckNvbnRhY3QiO319czo4OiJsYW5ndWFnZSI7YTo2OntpOjA7YTozOntzOjQ6ImZyb20iO3M6NzA6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvTkRUX0N1c3RvbWVyQ29udGFjdC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE5OiJORFRfQ3VzdG9tZXJDb250YWN0IjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjcwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL05EVF9DdXN0b21lckNvbnRhY3QucGhwIjtzOjk6InRvX21vZHVsZSI7czoxOToiTkRUX0N1c3RvbWVyQ29udGFjdCI7czo4OiJsYW5ndWFnZSI7czo1OiJ2aV9WTiI7fWk6MjthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9BY2NvdW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTozO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0FjY291bnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToidmlfVk4iO31pOjQ7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL2VuX3VzLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjU7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL2xhbmd1YWdlL2FwcGxpY2F0aW9uL3ZpX1ZOLmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToidmlfVk4iO319czo3OiJ2YXJkZWZzIjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo5ODoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL25kdF9jdXN0b21lcmNvbnRhY3RfYWNjb3VudHNfTkRUX0N1c3RvbWVyQ29udGFjdC5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE5OiJORFRfQ3VzdG9tZXJDb250YWN0Ijt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjg3OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvbmR0X2N1c3RvbWVyY29udGFjdF9hY2NvdW50c19BY2NvdW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkFjY291bnRzIjt9fXM6MTI6ImxheW91dGZpZWxkcyI7YToxOntpOjA7YToxOntzOjE3OiJhZGRpdGlvbmFsX2ZpZWxkcyI7YTowOnt9fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=','2021-02-05 16:49:37',1);
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('13194f2e-030e-dae3-2649-601d17f54cb8','ModuleBuilder',0,'2021-02-05 10:00:49','2021-02-05 10:01:53','1','YToxOntzOjE3OiJmaWVsZHNUYWJsZUNvbHVtbiI7czozMjoieyJrZXkiOiJuYW1lIiwiZGlyZWN0aW9uIjoiQVNDIn0iO30='),('148d07e2-161c-4a32-a0cb-601809a66cc2','ACLRoles2_ACLROLE',0,'2021-02-01 13:59:14','2021-02-01 13:59:14','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1c1c0087-fd10-0731-d10b-6017ff96e30a','global',0,'2021-02-01 13:17:51','2021-02-01 13:17:51','eec487ce-32cf-17b7-228a-6017fffa49c8','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTY6IkFzaWEvS3Jhc25veWFyc2siO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('247b9508-28b0-4642-977d-6017fef12c1e','Users2_USER',0,'2021-02-01 13:15:41','2021-02-01 13:37:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('30b829ef-4db0-1c84-22f5-601d7930c26d','NDT_CustomerContact2_NDT_CUSTOMERCONTACT',0,'2021-02-05 16:58:43','2021-02-05 16:58:43','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('369e0d61-6229-1189-de46-6017fff2f732','GoogleSync',0,'2021-02-01 13:17:51','2021-02-01 13:17:51','eec487ce-32cf-17b7-228a-6017fffa49c8','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('3c8cf94a-adb2-5fe0-7287-6017caae01eb','global',0,'2021-02-01 09:31:37','2021-02-05 16:58:43','1','YTo1ODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjNjMzk4ZDNhLTBjOGMtNjI2Ni1hNzVmLTYwMTdjYWNjOThhNiI7czoxMjoibWFpbG1lcmdlX29uIjtzOjM6Im9mZiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTQ6Im1vZHVsZV9mYXZpY29uIjtzOjA6IiI7czo5OiJoaWRlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6ODoidGltZXpvbmUiO3M6MTY6IkFzaWEvS3Jhc25veWFyc2siO3M6MjoidXQiO3M6MToiMSI7czoxNToibWFpbF9zbXRwc2VydmVyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcG9ydCI7czoyOiIyNSI7czoxMzoibWFpbF9zbXRwdXNlciI7czowOiIiO3M6MTM6Im1haWxfc210cHBhc3MiO3M6MDoiIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czozOiJvZmYiO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czoxMDoiVOG6pXQgY+G6oyI7czo2OiJVc2Vyc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNToiU2VjdXJpdHlHcm91cHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoic2lnbmF0dXJlX2RlZmF1bHQiO3M6MDoiIjtzOjE3OiJzaWduYXR1cmVfcHJlcGVuZCI7YjowO3M6MTE6InJlbW92ZV90YWJzIjthOjA6e31zOjEzOiJyZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjI6IjYwIjtzOjE2OiJyZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6MjI6ImVtYWlsX3JlbWluZGVyX2NoZWNrZWQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTU6ImVtYWlsX2xpbmtfdHlwZSI7czo1OiJzdWdhciI7czo4OiJzdWJ0aGVtZSI7czo0OiJEYXduIjtzOjk6IkNvbnRhY3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjk6IkFDTFJvbGVzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjE0OiJQcm9zcGVjdExpc3RzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjY6IkxlYWRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjE1OiJhZHZhbmNlZF9zZWFyY2giO31zOjEwOiJDYW1wYWlnbnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MzQ6IkluYm91bmRFbWFpbF9JbmJvdW5kRW1haWxfT1JERVJfQlkiO3M6MTI6ImRhdGVfZW50ZXJlZCI7czoxMjoidXNlclByaXZHdWlkIjtzOjM2OiIxOGFjNGNhMS1mMDVjLTA4NzYtMGMyNi02MDE4MjU4NjYzMGMiO3M6MjI6Ik91dGJvdW5kRW1haWxBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNDoiT3Bwb3J0dW5pdGllc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czo5OiJNZWV0aW5nc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNzoidGVzdF9tb2R1bGVfdGVzdFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoyMDoiTkRUX0N1c3RvbWVyQ29udGFjdFEiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9fQ=='),('3d40e6ad-f86d-ae67-39cd-6017ca2f95cb','GoogleSync',0,'2021-02-01 09:31:37','2021-02-01 13:37:10','1','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('42ad250c-dab2-5d41-62f7-60180766ded0','global',0,'2021-02-01 13:49:50','2021-02-01 13:51:14','3610f3bc-2001-8790-a63f-60180648eaaa','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTY6IkFzaWEvS3Jhc25veWFyc2siO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('44211695-d9e9-f527-e491-601807db60b6','GoogleSync',0,'2021-02-01 13:49:50','2021-02-01 13:51:14','3610f3bc-2001-8790-a63f-60180648eaaa','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('47eb4168-4fbc-50de-f27b-60180672d735','global',0,'2021-02-01 13:48:16','2021-02-01 13:51:05','d9de9e80-8795-dd13-54ef-60180675bfea','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTY6IkFzaWEvS3Jhc25veWFyc2siO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('494968ca-6d5a-1182-4fc3-601806a9797d','GoogleSync',0,'2021-02-01 13:48:16','2021-02-01 13:51:05','d9de9e80-8795-dd13-54ef-60180675bfea','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('54f3feba-c1f4-8fcc-ef57-6018b7487cb1','Accounts2_ACCOUNT',0,'2021-02-02 02:24:41','2021-02-02 02:24:41','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('58089690-8d86-4ba4-d0b8-6018073bfc6e','Emails',0,'2021-02-01 13:50:01','2021-02-01 13:51:14','3610f3bc-2001-8790-a63f-60180648eaaa','YTowOnt9'),('6d2e595e-667f-0cf7-05a1-601801a262f8','Dashboard',0,'2021-02-01 13:26:24','2021-02-01 13:37:10','1','YTowOnt9'),('6e5ad4aa-4a9a-9851-8ed9-601807110149','Emails',0,'2021-02-01 13:51:05','2021-02-01 13:51:05','d9de9e80-8795-dd13-54ef-60180675bfea','YTowOnt9'),('70cb49a0-b591-278a-5530-6018013aecf0','Emails',0,'2021-02-01 13:26:24','2021-02-01 13:38:30','1','YTo0OntzOjE2OiJkZWZhdWx0SUVBY2NvdW50IjtzOjM2OiI4YTJlMWEyMy04MjZiLTM4Y2EtNzI1YS02MDE4MDRkM2FmYWMiO3M6MTE6InNob3dGb2xkZXJzIjtzOjcyOiJZVG94T250cE9qQTdjem96TmpvaU9HRXlaVEZoTWpNdE9ESTJZaTB6T0dOaExUY3lOV0V0TmpBeE9EQTBaRE5oWm1GaklqdDkiO3M6MTg6ImFjY291bnRfc2lnbmF0dXJlcyI7czo3NjoiWVRveE9udHpPak0yT2lJNFlUSmxNV0V5TXkwNE1qWmlMVE00WTJFdE56STFZUzAyTURFNE1EUmtNMkZtWVdNaU8zTTZNRG9pSWp0OSI7czoxMzoiZW1haWxTZXR0aW5ncyI7YTo1OntzOjE4OiJlbWFpbENoZWNrSW50ZXJ2YWwiO3M6MjoiLTEiO3M6MTg6ImFsd2F5c1NhdmVPdXRib3VuZCI7czoxOiIxIjtzOjEzOiJzZW5kUGxhaW5UZXh0IjtzOjE6IjAiO3M6MTM6InNob3dOdW1Jbkxpc3QiO3M6MjoiMjAiO3M6MjI6ImRlZmF1bHRPdXRib3VuZENoYXJzZXQiO3M6NToiVVRGLTgiO319'),('71a2ace0-e20b-25ea-9b54-601809b4cbe8','Contacts2_CONTACT',0,'2021-02-01 13:58:47','2021-02-01 13:58:47','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('73343910-8077-6e8c-2cee-601805650641','global',0,'2021-02-01 13:44:33','2021-02-01 13:50:39','352d7e86-0816-8c05-c37a-601805583ccb','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTY6IkFzaWEvS3Jhc25veWFyc2siO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('74082d27-1a47-d60f-5629-601805b04e93','GoogleSync',0,'2021-02-01 13:44:33','2021-02-01 13:50:39','352d7e86-0816-8c05-c37a-601805583ccb','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('74249456-3af5-5519-1bd4-601801e407d8','Users',0,'2021-02-01 13:26:24','2021-02-01 13:37:10','1','YTowOnt9'),('75af19ad-9157-d410-baab-601805558d85','global',0,'2021-02-01 13:42:41','2021-02-01 13:50:28','2d063f95-3066-a985-dabe-6018050f6016','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTY6IkFzaWEvS3Jhc25veWFyc2siO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('772c93ab-3836-1d03-d19f-601805fd5e72','GoogleSync',0,'2021-02-01 13:42:41','2021-02-01 13:50:28','2d063f95-3066-a985-dabe-6018050f6016','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('7d872c96-2ad5-3028-56f4-60181ba65808','Leads2_LEAD',0,'2021-02-01 15:18:59','2021-02-01 15:18:59','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('80b8ccee-6c02-32a3-d189-6018075c4c2f','Emails',0,'2021-02-01 13:50:39','2021-02-01 13:50:39','352d7e86-0816-8c05-c37a-601805583ccb','YTowOnt9'),('81451dd9-6bbc-2348-18f8-60181dc2172a','Campaigns2_CAMPAIGN',0,'2021-02-01 15:24:30','2021-02-01 15:24:30','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8380034c-f8f8-f4a3-4c14-6017ff7e0fa1','SecurityGroups2_SECURITYGROUP',0,'2021-02-01 13:17:59','2021-02-01 13:37:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('86874f61-202a-ae5f-08d2-60182688abe3','OutboundEmailAccounts2_OUTBOUNDEMAILACCOUNTS',0,'2021-02-01 16:05:13','2021-02-01 16:05:13','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8eb22d56-8158-3671-c574-6017caf802ad','Home',0,'2021-02-01 09:32:36','2021-02-01 13:37:10','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjZlNjc1OGIzLTE4ZWEtMzAxNi02ZWIwLTYwMTdjYTI0NmJkOCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjZlYzA5Njc0LWQ3M2UtMWQxNS0yNDFiLTYwMTdjYTU3NDc0NyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjZmZTdlMWZhLWE5YTMtYjQxYS03ODUwLTYwMTdjYWMzZGM0MCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjcwMjA1ZTZjLWQ0MDktOTk1OS0xNDVhLTYwMTdjYTY1ZGIzOSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNzA3ZGE2YzEtYTcwZS00MGZiLTc5N2EtNjAxN2NhMTk5Y2JmIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNzBiZjExZjMtNmIxZi1jZjU4LWU5NjQtNjAxN2NhM2E5Y2IzIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI2ZWMwOTY3NC1kNzNlLTFkMTUtMjQxYi02MDE3Y2E1NzQ3NDciO2k6MTtzOjM2OiI2ZmU3ZTFmYS1hOWEzLWI0MWEtNzg1MC02MDE3Y2FjM2RjNDAiO2k6MjtzOjM2OiI3MDIwNWU2Yy1kNDA5LTk5NTktMTQ1YS02MDE3Y2E2NWRiMzkiO2k6MztzOjM2OiI3MDdkYTZjMS1hNzBlLTQwZmItNzk3YS02MDE3Y2ExOTljYmYiO2k6NDtzOjM2OiI3MGJmMTFmMy02YjFmLWNmNTgtZTk2NC02MDE3Y2EzYTljYjMiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjZlNjc1OGIzLTE4ZWEtMzAxNi02ZWIwLTYwMTdjYTI0NmJkOCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('9084ee23-9203-df3d-7867-6017cadbe91a','Home2_CALL',0,'2021-02-01 09:32:36','2021-02-01 13:37:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('91a72586-a8e1-f048-518e-6017cad046c1','Home2_MEETING',0,'2021-02-01 09:32:36','2021-02-01 13:37:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('928d1d06-c264-016f-59d4-6017ca4badf0','Home2_OPPORTUNITY',0,'2021-02-01 09:32:36','2021-02-01 13:37:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9348d8f4-70fb-b5d4-b97d-6017cae2d53b','Home2_ACCOUNT',0,'2021-02-01 09:32:36','2021-02-01 13:37:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('942abbba-be9c-daa6-64fc-6017cad7500b','Home2_LEAD',0,'2021-02-01 09:32:36','2021-02-01 13:37:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('95eee4ed-74ac-6a6c-9af5-6017cab315c2','Home2_SUGARFEED',0,'2021-02-01 09:32:36','2021-02-01 13:37:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9b9a155b-da23-4ae3-5bec-601aa752391d','ETag',0,'2021-02-03 13:39:57','2021-02-05 16:49:37','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6Mjt9'),('a168273f-bc69-6e7d-dc04-6018b72c5d31','Opportunities2_OPPORTUNITY',0,'2021-02-02 02:22:54','2021-02-02 02:22:54','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ac6a09d9-41ef-8a77-e1c6-6017ca3a47a6','Home2_LEAD_70bf11f3-6b1f-cf58-e964-6017ca3a9cb3',0,'2021-02-01 09:32:37','2021-02-01 13:37:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b3b96b17-f9fa-0a72-8393-6018001055fb','global',0,'2021-02-01 13:20:08','2021-02-01 13:20:08','ab37d18f-a705-7563-c78b-601800b3e553','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTY6IkFzaWEvS3Jhc25veWFyc2siO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('b4a7f386-3c8d-0682-d18d-601800342f49','GoogleSync',0,'2021-02-01 13:20:08','2021-02-01 13:20:08','ab37d18f-a705-7563-c78b-601800b3e553','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('bb8c5d60-cf4b-3256-1816-60181a42f70f','ProspectLists2_PROSPECTLIST',0,'2021-02-01 15:13:44','2021-02-01 15:13:44','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('d3c7ad35-5f77-3415-d7fc-601807e3da06','global',0,'2021-02-01 13:52:35','2021-02-01 13:52:35','bf91d4a9-ad20-a78a-783e-601807a8619a','YTozODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mzoib2ZmIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6Mjoib24iO3M6MjU6ImNvdW50X2NvbGxhcHNlZF9zdWJwYW5lbHMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7czoyOiI2MCI7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjAiO3M6ODoidGltZXpvbmUiO3M6MTY6IkFzaWEvS3Jhc25veWFyc2siO3M6MjoidXQiO3M6MToiMCI7czo4OiJjdXJyZW5jeSI7czozOiItOTkiO3M6MzU6ImRlZmF1bHRfY3VycmVuY3lfc2lnbmlmaWNhbnRfZGlnaXRzIjtzOjE6IjIiO3M6MTE6Im51bV9ncnBfc2VwIjtzOjE6IiwiO3M6NzoiZGVjX3NlcCI7czoxOiIuIjtzOjQ6ImZkb3ciO3M6MToiMCI7czo1OiJkYXRlZiI7czo1OiJtL2QvWSI7czo1OiJ0aW1lZiI7czo0OiJoOmlhIjtzOjI2OiJkZWZhdWx0X2xvY2FsZV9uYW1lX2Zvcm1hdCI7czo1OiJzIGYgbCI7czoxNjoiZXhwb3J0X2RlbGltaXRlciI7czoxOiIsIjtzOjIyOiJkZWZhdWx0X2V4cG9ydF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE1OiJlbWFpbF9saW5rX3R5cGUiO3M6NToic3VnYXIiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoxNzoiZW1haWxfc2hvd19jb3VudHMiO2k6MDtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjt9'),('d51d9ae2-060b-3632-68df-6018079d3aa2','GoogleSync',0,'2021-02-01 13:52:35','2021-02-01 13:52:35','bf91d4a9-ad20-a78a-783e-601807a8619a','YToxOntzOjg6InN5bmNHQ2FsIjtpOjA7fQ=='),('da19743e-5bdf-abc8-89d2-6018071bae0b','Emails',0,'2021-02-01 13:50:22','2021-02-01 13:50:28','2d063f95-3066-a985-dabe-6018050f6016','YTowOnt9'),('f253612e-dca2-e5aa-ae57-601aa8eb2be0','test_module_test2_TEST_MODULE_TEST',0,'2021-02-03 13:41:25','2021-02-03 13:41:25','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT 1,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `external_auth_only` tinyint(1) DEFAULT 0,
  `receive_notifications` tinyint(1) DEFAULT 1,
  `description` text DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT 0,
  `show_on_employees` tinyint(1) DEFAULT 1,
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`(30),`first_name`(30),`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$2y$10$FLd2iQKct0vKtCRgXy5.C.CnAKK51WOtc/JJ68QXzli6DJyKUKKTK',0,NULL,NULL,1,NULL,'Administrator',1,0,1,NULL,'2021-02-01 09:31:37','2021-02-01 13:39:29','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL),('2d063f95-3066-a985-dabe-6018050f6016','nvlinh','$2y$10$4GTgY7jVfdvb.kK0wvx1tuLuHFkIAHv9FkGM2nm23xoArbOcIYc4K',0,'2021-02-01 13:42:00',NULL,1,'Vũ Linh','Nguyễn',0,0,1,NULL,'2021-02-01 13:42:41','2021-02-01 13:50:28','1','1','Trưởng phòng Sales',NULL,'Phòng Sales',NULL,'0888164514','0888164514',NULL,NULL,'Active','Nguyễn Tất thành','Cà Mau',NULL,'Việt Nam',NULL,0,0,1,'Active',NULL,NULL,'eec487ce-32cf-17b7-228a-6017fffa49c8',0,0,NULL),('352d7e86-0816-8c05-c37a-601805583ccb','ntbchi','$2y$10$9bdoPugn6ncqi5hK48Isweh4xNOXnMKrqvSOJfHNM5rBNTuZ.dN2e',0,'2021-02-01 13:44:33',NULL,1,'Bích Chi','Nguyễn Thị',0,0,1,'','2021-02-01 13:44:33','2021-02-01 13:44:33','1','1','Trưởng phòng CSKH','','Phòng CSKH','','0857799964','0857799964','','','Active','Nguyễn Văn Linh','Cà Mau','','Việt Nam','',0,0,1,'Active','','','eec487ce-32cf-17b7-228a-6017fffa49c8',0,0,NULL),('3610f3bc-2001-8790-a63f-60180648eaaa','httthao','$2y$10$lUJurQyb/R.361dSRrW4KOmH/PcG78T1qoo/K9vBuRy9ieeQyTaJq',0,'2021-02-01 13:49:00',NULL,1,'Thu Thảo','Huỳnh Thị',0,0,1,NULL,'2021-02-01 13:49:50','2021-02-01 13:50:09','1','1','Nhân viên Sales',NULL,'Phòng Sales',NULL,'0918181818','0918181818',NULL,NULL,'Active','Phan Ngọc Hiển','Cà Mau',NULL,'Việt Nam',NULL,0,0,1,'Active',NULL,NULL,'2d063f95-3066-a985-dabe-6018050f6016',0,0,NULL),('ab37d18f-a705-7563-c78b-601800b3e553','ndthanh','$2y$10$Ov0Bcej1eMPz0GMshjcdneWek4SG8EZ0YG/owKe.nJxAO7t6F7w3O',0,'2021-02-01 13:20:08',NULL,1,'Đình Thành','Nguyễn',0,0,1,'','2021-02-01 13:20:08','2021-02-01 13:20:08','1','1','Trưởng phòng Marketing','','Phòng Marketing','','0945885510','0945885510','','','Active','Lê Lai','Cà Mau','','Việt Nam','',0,0,1,'Active','','','eec487ce-32cf-17b7-228a-6017fffa49c8',0,0,NULL),('bf91d4a9-ad20-a78a-783e-601807a8619a','ttson','$2y$10$vilg1mOEhI54yZLAJv5sj.aHkKmCaQSIa3SIyGy6skU4tCNUURjhi',0,'2021-02-01 13:52:35',NULL,1,'Thanh Sơn','Trần',0,0,1,'','2021-02-01 13:52:35','2021-02-01 13:52:35','1','1','Nhân viên CSKH','','Phòng CSKH','','0945454545','0945454545','','','Active','Lê Đại Hành','Cà Mau','','Việt Nam','',0,0,1,'Active','','','352d7e86-0816-8c05-c37a-601805583ccb',0,0,NULL),('d9de9e80-8795-dd13-54ef-60180675bfea','vvchuong','$2y$10$ZXLL8Of.onMDx9FlMWOkXOYQh5jrGblp0Q2pvl75DLIclFPRvA5KO',0,'2021-02-01 13:48:16',NULL,1,'Văn Chưởng','Vũ',0,0,1,'','2021-02-01 13:48:16','2021-02-01 13:48:16','1','1','Nhân viên Marketing','','Phòng Marketing','','0919191919','0919191919','','','Active','Lê Thái Tổ','Cà Mau','','Việt Nam','',0,0,1,'Active','','','ab37d18f-a705-7563-c78b-601800b3e553',0,0,NULL),('eec487ce-32cf-17b7-228a-6017fffa49c8','nmtoan','$2y$10$Fm7fjcSChUxaUhs/KaLFlOR5rFNjr0gaiBznUBtnLqf0UVznqivga',0,'2021-02-01 13:17:51',NULL,1,'Minh Toàn','Nguyễn',0,0,1,'','2021-02-01 13:17:51','2021-02-01 13:17:51','1','1','Giám đốc','','Ban giám đốc','','0918251800','0918251800','','','Active','Trần Hưng Đạo','Cà Mau','','Việt Nam','',0,0,1,'Active','','','',0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text DEFAULT NULL,
  `signature_html` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-06  1:07:10
