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
-- Table structure for table `store_vendor`
--

DROP TABLE IF EXISTS `store_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_vendor` (
  `vendor_id` bigint NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(30) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `store_vendor_user_id_b5eff950_fk_store_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `store_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_vendor`
--

LOCK TABLES `store_vendor` WRITE;
/*!40000 ALTER TABLE `store_vendor` DISABLE KEYS */;
INSERT INTO `store_vendor` VALUES (1,'vinit',1),(2,'Sandra Copeland',110),(3,'Brianna Barrett',111),(4,'Heather Hernandez',112),(5,'Ronald Ali',113),(6,'Kristi Luna',114),(7,'Kenneth Martin',115),(8,'Chad Welch',116),(9,'Timothy Cunningham',117),(10,'Cheryl Patterson',118),(11,'Dr. Lucas Lowe MD',119),(12,'Alexis Nichols',120),(13,'Emily Campbell',121),(14,'Raymond Baker',122),(15,'Michael Harris',123),(16,'Tracy Tucker',124),(17,'Autumn Sullivan',125),(18,'Rebecca Davis',126),(19,'Sarah Singleton',127),(20,'Dennis Roberts',128),(21,'Frank Rush',129),(22,'Tracy Mason',130),(23,'Paula Green',131),(24,'Colleen Adams',132),(25,'Amanda Taylor',133),(26,'Scott Gibbs',134),(27,'Theresa Boyd',135),(28,'James Reed',136),(29,'Thomas Thompson',137),(30,'Brandon Taylor',138),(31,'Donald Wilson',139),(32,'Robert Carter',140),(33,'Amanda Douglas',141),(34,'Gregory Medina',142),(35,'Erica Lee',143),(36,'Cody Ewing',144),(37,'Richard Stone',145),(38,'Michelle Cook',146),(39,'Connie Rice',147),(40,'Sabrina Watson',148),(41,'Victor Davis',149),(42,'Joseph Anderson',150),(43,'Margaret Myers',151),(44,'Darrell Velazquez',152),(45,'Jason Cochran',153),(46,'Kari Brooks',154),(47,'Fernando Gill',155),(48,'Cindy Miranda',156),(49,'Michelle Wade',157),(50,'Joyce Bailey',158),(51,'Kevin Price',159),(52,'Kayla Little',160),(53,'Martin Ramsey',161),(54,'Isabel Price',162),(55,'Anthony Morgan',163),(56,'Levi Davis',164),(57,'April Wolf',165),(58,'Jessica Goodman',166),(59,'Laura Morales',167),(60,'Joe Williams',168),(61,'Melissa Hill',169),(62,'Kathleen Wang',170),(63,'Alicia Faulkner',171),(64,'Kayla Mclean',172),(65,'Anthony Long',173),(66,'James Smith',174),(67,'Daniel Rhodes',175),(68,'Richard Mccall',176),(69,'Heather Hampton',177),(70,'Amber Miller',178),(71,'Brandon Warner',179),(72,'Peter King',180),(73,'Joseph Ramirez',181),(74,'James Smith',182),(75,'Ashley Lawson',183),(76,'Terry Pacheco',184),(77,'Janet Williams',185),(78,'Kelly Ross',186),(79,'Kathleen Nelson',187),(80,'Teresa Moore',188),(81,'Randall Boyer',189),(82,'Lisa Davis',190),(83,'Caleb Cunningham',191),(84,'Brian Henry',192),(85,'Terri Hall',193),(86,'Megan Olson',194),(87,'Mr. Michael Woods',195),(88,'Barbara Mendoza',196),(89,'Mario Gonzales',197),(90,'Tricia Cox',198),(91,'Andrew Kaufman',199),(92,'Jessica Hughes',200),(93,'Jack Stein',201),(94,'Susan Moore',202),(95,'Dennis Mayer',203),(96,'Eric Lopez',204),(97,'Jimmy Ortiz',205),(98,'Ashley Vega',206),(99,'Anthony Vargas',207),(100,'Holly Foster MD',208),(101,'Brandon Chang',209),(102,'Benjamin Mason',210);
/*!40000 ALTER TABLE `store_vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 20:17:24
