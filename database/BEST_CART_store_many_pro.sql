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
-- Table structure for table `store_many_pro`
--

DROP TABLE IF EXISTS `store_many_pro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_many_pro` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_quantity` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `order_id_id` bigint NOT NULL,
  `product_id_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `store_many_pro_order_id_id_f181f029_fk_store_orders_order_id` (`order_id_id`),
  KEY `store_many_pro_product_id_id_c72b0710_fk_store_pro` (`product_id_id`),
  CONSTRAINT `store_many_pro_order_id_id_f181f029_fk_store_orders_order_id` FOREIGN KEY (`order_id_id`) REFERENCES `store_orders` (`order_id`),
  CONSTRAINT `store_many_pro_product_id_id_c72b0710_fk_store_pro` FOREIGN KEY (`product_id_id`) REFERENCES `store_product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_many_pro`
--

LOCK TABLES `store_many_pro` WRITE;
/*!40000 ALTER TABLE `store_many_pro` DISABLE KEYS */;
INSERT INTO `store_many_pro` VALUES (1,24,7812.65,1,155),(2,48,5024.32,2,164),(3,15,8107.49,3,192),(4,38,136.49,4,20),(5,13,6521.03,5,91),(6,14,6116.23,6,190),(7,16,7440.60,7,201),(8,43,4689.83,8,7),(9,42,8557.59,9,185),(10,31,1879.62,10,177),(11,13,2547.73,11,140),(12,15,8781.58,12,132),(13,48,9228.51,13,98),(14,22,8783.03,14,191),(15,46,6216.84,15,124),(16,22,6009.87,16,194),(17,9,174.78,17,107),(18,3,394.26,18,63),(19,30,5120.47,19,82),(20,28,7448.28,20,80),(21,4,1647.62,21,130),(22,8,9203.32,22,181),(23,29,5037.65,23,103),(24,47,7412.58,24,25),(25,11,3049.30,25,69),(26,11,763.07,26,62),(27,39,1759.33,27,39),(28,35,7551.81,28,185),(29,25,4936.04,29,145),(30,38,8606.69,30,112),(31,1,5792.13,31,96),(32,44,3039.54,32,187),(33,17,4474.17,33,190),(34,38,6679.68,34,189),(35,14,2793.23,35,3),(36,0,7793.37,36,127),(37,24,3823.02,37,151),(38,36,6442.26,38,133),(39,29,3188.76,39,131),(40,22,105.02,40,12),(41,20,9789.36,41,158),(42,39,7202.88,42,48),(43,22,8757.78,43,61),(44,47,63.07,44,7),(45,43,3764.53,45,74),(46,33,69.19,46,104),(47,33,9998.79,47,48),(48,49,5190.45,48,42),(49,6,2877.29,49,35),(50,6,6468.53,50,11),(51,36,2204.47,51,103),(52,22,7238.49,52,38),(53,12,7120.03,53,62),(54,9,3825.48,54,91),(55,29,4810.51,55,2),(56,3,447.47,56,67),(57,45,3868.33,57,79),(58,21,7815.39,58,62),(59,35,5684.31,59,167),(60,0,4903.66,60,166),(61,26,8565.70,61,24),(62,15,3921.39,62,183),(63,33,934.49,63,12),(64,21,755.16,64,57),(65,32,89.05,65,184),(66,26,8937.90,66,19),(67,36,8083.37,67,63),(68,6,6693.11,68,9),(69,22,2770.01,69,109),(70,42,1543.09,70,173),(71,29,6730.17,71,158),(72,38,4970.10,72,71),(73,48,6373.31,73,167),(74,10,304.53,74,33),(75,11,1482.75,75,49),(76,33,467.79,76,175),(77,6,9529.73,77,152),(78,27,862.60,78,145),(79,14,8295.20,79,151),(80,22,7412.96,80,76),(81,45,9420.98,81,201),(82,24,2675.10,82,8),(83,6,1560.31,83,147),(84,27,1708.07,84,185),(85,16,8401.06,85,75),(86,44,2117.10,86,67),(87,14,3750.56,87,180),(88,49,8725.96,88,158),(89,23,9262.87,89,150),(90,28,525.99,90,22),(91,9,5443.06,91,134),(92,38,2808.86,92,60),(93,5,915.29,93,50),(94,24,3232.19,94,6),(95,19,494.56,95,81),(96,25,6851.10,96,98),(97,47,6172.49,97,172),(98,39,4189.28,98,160),(99,33,1604.35,99,74),(100,15,2615.27,100,158),(101,28,7179.23,101,133),(102,38,7822.92,102,160),(103,7,5133.59,103,128),(104,11,8476.15,104,184),(105,33,8011.41,105,139),(106,9,894.16,106,41),(107,6,6850.36,107,191),(108,8,7468.73,108,60),(109,16,2735.07,109,91),(110,39,2728.81,110,18);
/*!40000 ALTER TABLE `store_many_pro` ENABLE KEYS */;
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
