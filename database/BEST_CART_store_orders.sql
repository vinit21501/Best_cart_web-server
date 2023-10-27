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
-- Table structure for table `store_orders`
--

DROP TABLE IF EXISTS `store_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_orders` (
  `order_id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(12) NOT NULL,
  `mode_of_payment` varchar(10) NOT NULL,
  `customer_id_id` bigint NOT NULL,
  `transaction_id_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `store_orders_customer_id_id_ced03d63_fk_store_cus` (`customer_id_id`),
  KEY `store_orders_transaction_id_id_9960af17_fk_store_tra` (`transaction_id_id`),
  CONSTRAINT `store_orders_customer_id_id_ced03d63_fk_store_cus` FOREIGN KEY (`customer_id_id`) REFERENCES `store_customer` (`customer_id`),
  CONSTRAINT `store_orders_transaction_id_id_9960af17_fk_store_tra` FOREIGN KEY (`transaction_id_id`) REFERENCES `store_transaction_detail` (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_orders`
--

LOCK TABLES `store_orders` WRITE;
/*!40000 ALTER TABLE `store_orders` DISABLE KEYS */;
INSERT INTO `store_orders` VALUES (1,'dispatched','offline',11,110),(2,'cancelled','offline',59,109),(3,'cancelled','offline',76,108),(4,'cancelled','offline',81,107),(5,'delivered','offline',82,106),(6,'cancelled','offline',10,105),(7,'delivered','offline',103,104),(8,'dispatched','offline',30,103),(9,'delivered','offline',30,102),(10,'delivered','online',4,101),(11,'cancelled','online',68,100),(12,'cancelled','offline',26,99),(13,'cancelled','offline',94,98),(14,'dispatched','online',19,97),(15,'cancelled','offline',1,96),(16,'delivered','online',89,95),(17,'delivered','online',86,94),(18,'delivered','offline',54,93),(19,'cancelled','online',57,92),(20,'dispatched','online',89,91),(21,'cancelled','online',38,90),(22,'dispatched','offline',67,89),(23,'delivered','offline',45,88),(24,'cancelled','offline',79,87),(25,'delivered','offline',95,86),(26,'dispatched','offline',63,85),(27,'cancelled','offline',104,84),(28,'dispatched','online',76,83),(29,'cancelled','online',63,82),(30,'dispatched','online',91,81),(31,'delivered','offline',17,80),(32,'cancelled','online',86,79),(33,'cancelled','online',106,78),(34,'dispatched','offline',59,77),(35,'cancelled','online',33,76),(36,'dispatched','offline',68,75),(37,'delivered','online',83,74),(38,'dispatched','offline',69,73),(39,'cancelled','offline',103,72),(40,'dispatched','offline',100,71),(41,'delivered','online',67,70),(42,'delivered','offline',65,69),(43,'cancelled','offline',5,68),(44,'delivered','offline',12,67),(45,'cancelled','online',73,66),(46,'cancelled','online',9,65),(47,'cancelled','online',35,64),(48,'delivered','online',25,63),(49,'delivered','offline',71,62),(50,'dispatched','offline',69,61),(51,'dispatched','offline',103,60),(52,'delivered','offline',60,59),(53,'dispatched','offline',23,58),(54,'cancelled','offline',81,57),(55,'delivered','offline',53,56),(56,'delivered','online',103,55),(57,'delivered','offline',107,54),(58,'delivered','offline',51,53),(59,'dispatched','offline',93,52),(60,'cancelled','offline',83,51),(61,'dispatched','online',2,50),(62,'dispatched','offline',58,49),(63,'delivered','online',88,48),(64,'dispatched','online',34,47),(65,'cancelled','offline',76,46),(66,'dispatched','online',79,45),(67,'cancelled','online',69,44),(68,'delivered','offline',92,43),(69,'dispatched','online',104,42),(70,'cancelled','offline',17,41),(71,'delivered','online',46,40),(72,'cancelled','offline',23,39),(73,'delivered','online',69,38),(74,'dispatched','offline',1,37),(75,'cancelled','offline',83,36),(76,'cancelled','online',69,35),(77,'delivered','online',22,34),(78,'cancelled','offline',21,33),(79,'delivered','offline',41,32),(80,'dispatched','offline',2,31),(81,'delivered','offline',94,30),(82,'dispatched','online',63,29),(83,'cancelled','online',43,28),(84,'cancelled','offline',3,27),(85,'delivered','online',75,26),(86,'cancelled','offline',34,25),(87,'dispatched','online',83,24),(88,'cancelled','offline',25,23),(89,'delivered','online',43,22),(90,'dispatched','offline',73,21),(91,'dispatched','online',45,20),(92,'cancelled','online',20,19),(93,'cancelled','offline',78,18),(94,'cancelled','offline',52,17),(95,'cancelled','offline',56,16),(96,'cancelled','offline',70,15),(97,'delivered','online',28,14),(98,'dispatched','online',16,13),(99,'cancelled','offline',62,12),(100,'delivered','online',64,11),(101,'cancelled','offline',8,10),(102,'delivered','online',23,9),(103,'cancelled','offline',19,8),(104,'delivered','online',15,7),(105,'dispatched','online',90,6),(106,'cancelled','online',64,5),(107,'delivered','offline',51,4),(108,'cancelled','offline',15,3),(109,'cancelled','offline',94,2),(110,'dispatched','offline',74,1);
/*!40000 ALTER TABLE `store_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 20:17:23
