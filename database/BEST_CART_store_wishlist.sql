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
-- Table structure for table `store_wishlist`
--

DROP TABLE IF EXISTS `store_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_wishlist` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customer_id_id` bigint NOT NULL,
  `product_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_wishlist_customer_id_id_8b97db33_fk_store_cus` (`customer_id_id`),
  KEY `store_wishlist_product_id_id_3602ae3e_fk_store_pro` (`product_id_id`),
  CONSTRAINT `store_wishlist_customer_id_id_8b97db33_fk_store_cus` FOREIGN KEY (`customer_id_id`) REFERENCES `store_customer` (`customer_id`),
  CONSTRAINT `store_wishlist_product_id_id_3602ae3e_fk_store_pro` FOREIGN KEY (`product_id_id`) REFERENCES `store_product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_wishlist`
--

LOCK TABLES `store_wishlist` WRITE;
/*!40000 ALTER TABLE `store_wishlist` DISABLE KEYS */;
INSERT INTO `store_wishlist` VALUES (1,1,1),(2,107,90),(3,107,160),(4,107,33),(5,107,108),(6,106,88),(7,106,157),(8,106,61),(9,106,11),(10,105,200),(11,105,187),(12,104,198),(13,104,56),(14,104,39),(15,104,170),(16,104,176),(17,103,191),(18,103,167),(19,102,1),(20,101,70),(21,100,190),(22,100,171),(23,99,24),(24,99,180),(25,99,90),(26,99,3),(27,99,17),(28,98,25),(29,98,40),(30,98,78),(31,98,2),(32,98,91),(33,97,136),(34,97,64),(35,97,67),(36,96,186),(37,96,163),(38,96,87),(39,96,43),(40,95,195),(41,95,123),(42,95,87),(43,94,35),(44,94,52),(45,94,116),(46,94,187),(47,93,85),(48,93,15),(49,93,166),(50,93,85),(51,93,52),(52,92,160),(53,92,54),(54,92,62),(55,92,147),(56,91,46),(57,90,71),(58,89,172),(59,89,143),(60,89,45),(61,88,175),(62,88,114),(63,88,71),(64,88,43),(65,88,68),(66,87,106),(67,87,137),(68,87,186),(69,87,67),(70,86,201),(71,86,18),(72,86,43),(73,86,115),(74,86,187),(75,85,180),(76,85,74),(77,84,149),(78,84,178),(79,83,196),(80,83,97),(81,83,192),(82,83,36),(83,82,22),(84,82,199),(85,82,25),(86,82,187),(87,82,47),(88,81,72),(89,81,29),(90,81,164),(91,81,200),(92,81,72),(93,80,141),(94,79,84),(95,79,33),(96,79,123),(97,79,55),(98,78,171),(99,78,24),(100,77,104),(101,77,54),(102,77,40),(103,77,30),(104,77,24),(105,76,165),(106,76,166),(107,76,95),(108,76,140),(109,75,95),(110,74,178),(111,74,30),(112,73,90),(113,73,40),(114,73,177),(115,73,7),(116,72,13),(117,71,126),(118,71,76),(119,71,116),(120,71,43),(121,71,130),(122,70,35),(123,70,8),(124,70,143),(125,70,110),(126,70,84),(127,69,8),(128,69,15),(129,69,76),(130,69,107),(131,69,101),(132,68,142),(133,68,22),(134,68,80),(135,68,178),(136,67,155),(137,67,138),(138,67,137),(139,67,25),(140,67,54),(141,66,26),(142,65,174),(143,65,76),(144,65,57),(145,65,72),(146,65,110),(147,64,96),(148,64,72),(149,64,10),(150,64,11),(151,63,25),(152,63,57),(153,63,139),(154,62,38),(155,62,197),(156,61,139),(157,61,183),(158,60,106),(159,60,79),(160,60,100),(161,60,58),(162,59,153),(163,58,172),(164,58,52),(165,58,161),(166,57,87),(167,57,99),(168,57,62),(169,57,182),(170,57,128),(171,56,89),(172,56,5),(173,56,32),(174,56,178),(175,55,136),(176,55,82),(177,55,148),(178,54,100),(179,54,20),(180,54,159),(181,54,12),(182,54,133),(183,53,128),(184,53,103),(185,53,109),(186,52,53),(187,52,62),(188,52,39),(189,51,84),(190,51,84),(191,50,188),(192,49,164),(193,48,96),(194,48,166),(195,48,108),(196,48,87),(197,48,25),(198,47,155),(199,46,52),(200,46,165),(201,46,73),(202,46,135),(203,45,116),(204,45,92),(205,45,54),(206,45,24),(207,45,193),(208,44,180),(209,44,166),(210,44,29),(211,44,28),(212,43,61),(213,43,13),(214,42,177),(215,42,50),(216,42,75),(217,42,94),(218,41,69),(219,41,62),(220,41,82),(221,40,37),(222,40,71),(223,39,41),(224,39,199),(225,39,131),(226,39,54),(227,38,192),(228,38,194),(229,38,148),(230,37,40),(231,37,103),(232,37,41),(233,37,200),(234,36,46),(235,36,81),(236,36,8),(237,36,73),(238,35,175),(239,34,100),(240,34,7),(241,33,136),(242,33,170),(243,33,144),(244,33,92),(245,33,9),(246,32,93),(247,32,106),(248,32,125),(249,32,49),(250,32,155),(251,31,176),(252,31,200),(253,30,162),(254,29,181),(255,29,94),(256,28,41),(257,28,73),(258,28,48),(259,28,158),(260,27,137),(261,27,187),(262,27,195),(263,27,94),(264,26,160),(265,26,61),(266,25,132),(267,25,17),(268,25,76),(269,24,187),(270,24,117),(271,24,41),(272,24,190),(277,22,73),(278,22,163),(279,21,79),(280,21,99),(281,21,108),(282,21,83),(283,21,181),(284,20,43),(285,20,157),(286,19,187),(287,19,180),(288,19,180),(289,19,31),(290,18,45),(291,18,53),(292,18,65),(293,18,31),(294,17,64),(295,17,89),(296,16,115),(297,16,107),(298,16,40),(299,15,195),(300,14,52),(301,14,153),(302,14,157),(303,13,89),(304,13,13),(305,13,40),(306,13,178),(307,12,86),(308,12,61),(309,12,109),(310,12,26),(311,11,111),(312,10,98),(313,10,94),(314,10,54),(315,9,80),(316,9,149),(317,9,26),(318,9,20),(319,9,28),(320,8,136),(321,8,150),(322,8,111),(323,8,19),(324,8,184),(325,7,108),(326,6,191),(327,6,79),(328,6,6),(329,6,146),(330,6,93),(331,5,48),(332,5,126),(333,5,32),(334,5,175),(335,4,107),(336,4,117),(337,4,59),(338,4,152),(339,4,165),(340,3,23),(341,3,69),(342,3,141),(343,3,166),(344,2,177),(345,1,200),(346,1,97),(347,1,65),(350,23,20);
/*!40000 ALTER TABLE `store_wishlist` ENABLE KEYS */;
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
