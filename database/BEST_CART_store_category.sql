-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: BEST_CART
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `store_category`
--

DROP TABLE IF EXISTS `store_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  `product_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_category_product_id_id_2a196401_fk_store_pro` (`product_id_id`),
  CONSTRAINT `store_category_product_id_id_2a196401_fk_store_pro` FOREIGN KEY (`product_id_id`) REFERENCES `store_product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_category`
--

LOCK TABLES `store_category` WRITE;
/*!40000 ALTER TABLE `store_category` DISABLE KEYS */;
INSERT INTO `store_category` VALUES (1,'Lehner,KozeyandKuhlman',186),(2,'Kunze-Kutch',96),(3,'Rosenbaum-Corkery',29),(4,'McGlynnandSons',103),(5,'KeeblerLLC',135),(6,'Wolff,SchmidtandKeebler',14),(7,'KiehnGroup',42),(8,'Ritchie-Marquardt',156),(9,'Lockman-Hartmann',176),(10,'Stiedemann,MrazandWalter',94),(11,'Towne,HettingerandPaucek',192),(12,'Lowe-Fadel',147),(13,'Harris,WaelchiandMcCullou',193),(14,'KesslerandSons',64),(15,'WaelchiGroup',84),(16,'KlockoandSons',96),(17,'DuBuque-Cormier',148),(18,'Volkman,GottliebandFay',150),(19,'Marvin,RutherfordandLynch',84),(20,'Berge-Satterfield',194),(21,'Nikolaus,MuellerandJakubo',31),(22,'Fisher,GoldnerandDare',110),(23,'SengerGroup',107),(24,'Robel,SchimmelandMonahan',114),(25,'Crona,BernierandThompson',31),(26,'Terry-Renner',146),(27,'FaheyInc',66),(28,'NicolasLLC',30),(29,'FayGroup',27),(30,'Kohler-Ondricka',153),(31,'Cruickshank,WalkerandBins',127),(32,'Hartmann-Keebler',117),(33,'RippinGroup',11),(34,'Howell,DickinsonandDietri',93),(35,'Bosco,RoobandSchneider',167),(36,'Schuster-Grant',92),(37,'Collins-Kiehn',49),(38,'Ortiz-Crist',187),(39,'Hane-Hilpert',156),(40,'ThielGroup',174),(41,'Altenwerth-Thompson',161),(42,'Mann-Friesen',200),(43,'Boehm,StrackeandDeckow',158),(44,'BergeLLC',93),(45,'FritschGroup',174),(46,'Ebert,EmardandWalter',56),(47,'HagenesLLC',125),(48,'Herzog,RitchieandWolf',48),(49,'Weber,RathandReilly',198),(50,'HintzInc',151),(51,'BergstromandSons',154),(52,'KleinLLC',98),(53,'Wolf-Halvorson',21),(54,'Ernser,LeschandWyman',131),(55,'Gutkowski,HilpertandKoch',156),(56,'McKenzieGroup',90),(57,'WittingInc',98),(58,'Mayert-Glover',163),(59,'Durgan,GoyetteandZemlak',179),(60,'HintzandSons',61),(61,'Wilkinson,NienowandSchroe',5),(62,'HermannLLC',175),(63,'BoyleandSons',101),(64,'HauckGroup',23),(65,'Cormier-Bins',6),(66,'WolffGroup',170),(67,'Kerluke,ToyandCummerata',152),(68,'Ratke-Buckridge',71),(69,'Ratke,GoodwinandRussel',48),(70,'Swaniawski,NienowandStant',34),(71,'Streich-O\'Connell',31),(72,'Fisher-Parker',33),(73,'VonRuedenGroup',136),(74,'Altenwerth-Daniel',155),(75,'MetzLLC',81),(76,'Gerhold,FeilandRoob',77),(77,'Kassulke-Pfeffer',46),(78,'SchuppeInc',187),(79,'Bruen,OsinskiandMante',197),(80,'Romaguera,HellerandChampl',25),(81,'Schumm-Skiles',188),(82,'Hodkiewicz-Kessler',162),(83,'RoobInc',122),(84,'Pouros-Hilll',18),(85,'Ruecker,MertzandHagenes',105),(86,'JohnsLLC',141),(87,'SchowalterInc',117),(88,'Gleason-Muller',170),(89,'Bradtke,BeattyandSawayn',115),(90,'Sporer-Parisian',108),(91,'Farrell,MarksandLangworth',149),(92,'Herman,McDermottandAltenw',125),(93,'LehnerGroup',65),(94,'Wunsch,SkilesandMosciski',189),(95,'Williamson,TrantowandKieh',64),(96,'Mayer,SatterfieldandKshle',61),(97,'Leuschke,GrahamandWalker',80),(98,'Heidenreich-Ernser',126),(99,'Lang-Watsica',156),(100,'Bogisich,BeattyandHirthe',73),(101,'BergstromandSons',69),(102,'Ratke,GoodwinandRussel',190),(103,'McKenzieGroup',36),(104,'Romaguera,HellerandChampl',122),(105,'Lowe-Fadel',30),(106,'Ruecker,MertzandHagenes',1),(107,'Gerhold,FeilandRoob',168),(108,'MetzLLC',71),(109,'Hodkiewicz-Kessler',196),(110,'SengerGroup',167),(111,'FaheyInc',139),(112,'Bradtke,BeattyandSawayn',22),(113,'Schuster-Grant',64),(114,'SchowalterInc',163),(115,'Lang-Watsica',157),(116,'Lehner,KozeyandKuhlman',168),(117,'Weber,RathandReilly',18),(118,'Mayert-Glover',109),(119,'Kerluke,ToyandCummerata',79),(120,'WittingInc',34),(121,'Harris,WaelchiandMcCullou',43),(122,'HintzInc',189),(123,'Streich-O\'Connell',95),(124,'Lockman-Hartmann',133),(125,'Collins-Kiehn',118),(126,'FayGroup',52),(127,'Gleason-Muller',89),(128,'BergeLLC',119),(129,'Herman,McDermottandAltenw',114),(130,'Mayer,SatterfieldandKshle',153),(131,'Kassulke-Pfeffer',108),(132,'Leuschke,GrahamandWalker',51),(133,'WaelchiGroup',73),(134,'Durgan,GoyetteandZemlak',115),(135,'Fisher,GoldnerandDare',69),(136,'KlockoandSons',115),(137,'Kunze-Kutch',106),(138,'NicolasLLC',122),(139,'Berge-Satterfield',15),(140,'VonRuedenGroup',201),(141,'RoobInc',60),(142,'Sporer-Parisian',171),(143,'Bogisich,BeattyandHirthe',36),(144,'WolffGroup',42),(145,'Stiedemann,MrazandWalter',168),(146,'LehnerGroup',141),(147,'JohnsLLC',20),(148,'Ortiz-Crist',172),(149,'Howell,DickinsonandDietri',187),(150,'Ebert,EmardandWalter',68),(151,'Hartmann-Keebler',109),(152,'RippinGroup',52),(153,'Bosco,RoobandSchneider',102),(154,'ThielGroup',198),(155,'Williamson,TrantowandKieh',34),(156,'HagenesLLC',136),(157,'Wilkinson,NienowandSchroe',109),(158,'Hane-Hilpert',9),(159,'Altenwerth-Thompson',192),(160,'Ernser,LeschandWyman',201),(161,'KleinLLC',178),(162,'Nikolaus,MuellerandJakubo',135),(163,'DuBuque-Cormier',86),(164,'KiehnGroup',98),(165,'KeeblerLLC',82),(166,'Altenwerth-Daniel',61),(167,'Cruickshank,WalkerandBins',56),(168,'Fisher-Parker',89),(169,'Rosenbaum-Corkery',188),(170,'HermannLLC',56),(171,'Towne,HettingerandPaucek',152),(172,'Wunsch,SkilesandMosciski',143),(173,'Cormier-Bins',19),(174,'Swaniawski,NienowandStant',22),(175,'Gutkowski,HilpertandKoch',90),(176,'Mann-Friesen',199),(177,'Boehm,StrackeandDeckow',191),(178,'FritschGroup',103),(179,'Pouros-Hilll',198),(180,'HauckGroup',73),(181,'Wolff,SchmidtandKeebler',192),(182,'Wolf-Halvorson',115),(183,'Farrell,MarksandLangworth',172),(184,'Volkman,GottliebandFay',188),(185,'HintzandSons',138),(186,'BoyleandSons',201),(187,'SchuppeInc',62),(188,'Ratke-Buckridge',41),(189,'Kohler-Ondricka',194),(190,'Crona,BernierandThompson',8),(191,'McGlynnandSons',59),(192,'Herzog,RitchieandWolf',47),(193,'Ritchie-Marquardt',117),(194,'KesslerandSons',160),(195,'Marvin,RutherfordandLynch',157),(196,'Schumm-Skiles',94),(197,'Robel,SchimmelandMonahan',58),(198,'Bruen,OsinskiandMante',17),(199,'Terry-Renner',152),(200,'Heidenreich-Ernser',74),(201,'cat',202);
/*!40000 ALTER TABLE `store_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 20:17:25
