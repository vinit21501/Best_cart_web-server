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
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add custom user',1,'add_customuser'),(2,'Can change custom user',1,'change_customuser'),(3,'Can delete custom user',1,'delete_customuser'),(4,'Can view custom user',1,'view_customuser'),(5,'Can add administrator',2,'add_administrator'),(6,'Can change administrator',2,'change_administrator'),(7,'Can delete administrator',2,'delete_administrator'),(8,'Can view administrator',2,'view_administrator'),(9,'Can add customer',3,'add_customer'),(10,'Can change customer',3,'change_customer'),(11,'Can delete customer',3,'delete_customer'),(12,'Can view customer',3,'view_customer'),(13,'Can add product',4,'add_product'),(14,'Can change product',4,'change_product'),(15,'Can delete product',4,'delete_product'),(16,'Can view product',4,'view_product'),(17,'Can add transaction_detail',5,'add_transaction_detail'),(18,'Can change transaction_detail',5,'change_transaction_detail'),(19,'Can delete transaction_detail',5,'delete_transaction_detail'),(20,'Can view transaction_detail',5,'view_transaction_detail'),(21,'Can add vendor',6,'add_vendor'),(22,'Can change vendor',6,'change_vendor'),(23,'Can delete vendor',6,'delete_vendor'),(24,'Can view vendor',6,'view_vendor'),(25,'Can add wishlist',7,'add_wishlist'),(26,'Can change wishlist',7,'change_wishlist'),(27,'Can delete wishlist',7,'delete_wishlist'),(28,'Can view wishlist',7,'view_wishlist'),(29,'Can add venlist',8,'add_venlist'),(30,'Can change venlist',8,'change_venlist'),(31,'Can delete venlist',8,'delete_venlist'),(32,'Can view venlist',8,'view_venlist'),(33,'Can add vendor_phone_number',9,'add_vendor_phone_number'),(34,'Can change vendor_phone_number',9,'change_vendor_phone_number'),(35,'Can delete vendor_phone_number',9,'delete_vendor_phone_number'),(36,'Can view vendor_phone_number',9,'view_vendor_phone_number'),(37,'Can add orders',10,'add_orders'),(38,'Can change orders',10,'change_orders'),(39,'Can delete orders',10,'delete_orders'),(40,'Can view orders',10,'view_orders'),(41,'Can add many_pro',11,'add_many_pro'),(42,'Can change many_pro',11,'change_many_pro'),(43,'Can delete many_pro',11,'delete_many_pro'),(44,'Can view many_pro',11,'view_many_pro'),(45,'Can add customer_phone_number',12,'add_customer_phone_number'),(46,'Can change customer_phone_number',12,'change_customer_phone_number'),(47,'Can delete customer_phone_number',12,'delete_customer_phone_number'),(48,'Can view customer_phone_number',12,'view_customer_phone_number'),(49,'Can add category',13,'add_category'),(50,'Can change category',13,'change_category'),(51,'Can delete category',13,'delete_category'),(52,'Can view category',13,'view_category'),(53,'Can add cart',14,'add_cart'),(54,'Can change cart',14,'change_cart'),(55,'Can delete cart',14,'delete_cart'),(56,'Can view cart',14,'view_cart'),(57,'Can add admin_phone_number',15,'add_admin_phone_number'),(58,'Can change admin_phone_number',15,'change_admin_phone_number'),(59,'Can delete admin_phone_number',15,'delete_admin_phone_number'),(60,'Can view admin_phone_number',15,'view_admin_phone_number'),(61,'Can add log entry',16,'add_logentry'),(62,'Can change log entry',16,'change_logentry'),(63,'Can delete log entry',16,'delete_logentry'),(64,'Can view log entry',16,'view_logentry'),(65,'Can add permission',17,'add_permission'),(66,'Can change permission',17,'change_permission'),(67,'Can delete permission',17,'delete_permission'),(68,'Can view permission',17,'view_permission'),(69,'Can add group',18,'add_group'),(70,'Can change group',18,'change_group'),(71,'Can delete group',18,'delete_group'),(72,'Can view group',18,'view_group'),(73,'Can add content type',19,'add_contenttype'),(74,'Can change content type',19,'change_contenttype'),(75,'Can delete content type',19,'delete_contenttype'),(76,'Can view content type',19,'view_contenttype'),(77,'Can add session',20,'add_session'),(78,'Can change session',20,'change_session'),(79,'Can delete session',20,'delete_session'),(80,'Can view session',20,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
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
