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
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('1qry2qrqjvtltrqfcaf2ngx1r8e97r0u','.eJxVjEEOwiAQRe_C2hCYYgGX7nsGMsOAVA0kpV0Z765NutDtf-_9lwi4rSVsPS1hZnERRpx-N8L4SHUHfMd6azK2ui4zyV2RB-1yapye18P9OyjYy7dOIzjn0xCdRlCRIeZsUWUCa9TIhKTxbCxnZZMHBYB6QA06RzZm8CTeH_KCOBU:1pp43h:Tb18SVFNCHXx9bmc_vRI3VBmtlukZc3sQm3_zHLszxU','2023-05-03 09:25:01.532461'),('5kjpa29pdnha9e29eiimqsk95asdr0hk','.eJxVjDsOwjAQBe_iGlmx499S0nMGy7te4wBypDipEHeHSCmgfTPzXiKmba1x67zEKYuz0FacfkdM9OC2k3xP7TZLmtu6TCh3RR60y-uc-Xk53L-Dmnr91siqeG_YIg5kwRTHhhyDQ3IFsh7JMJTgwClSJnidgYfAqMbCIYMV7w8lQDiX:1pqS9q:J4aSYhsnMiMbmNbSf4b79yr-WAG0h7MuMeb40Kphh_k','2023-05-07 05:21:06.771301'),('k66gertswsst4iw47osroa7vqtybxeix','.eJxVjE0OwiAYBe_C2hBKi4BL956B8P1J1dCktCvj3W2TLnT7Zua9VcrrUtLaeE4jqYvq1el3g4xPrjugR673SeNUl3kEvSv6oE3fJuLX9XD_DkpuZasjexec5X7IXiCAJWJDYCF4GRwgxbAZyCSBIwtCNCjYGXNGpE68-nwBEzY5nA:1pjGZt:hbUh1KIR2yPeBVD7eH8fXJCcNzvNl0qlyIa8_b-4Klo','2023-04-17 09:34:17.779232'),('psx13tc1esxds9bgq488kc269bzsfm71','.eJxVjDsOwjAQBe_iGlmx499S0nMGy7te4wBypDipEHeHSCmgfTPzXiKmba1x67zEKYuz0FacfkdM9OC2k3xP7TZLmtu6TCh3RR60y-uc-Xk53L-Dmnr91siqeG_YIg5kwRTHhhyDQ3IFsh7JMJTgwClSJnidgYfAqMbCIYMV7w8lQDiX:1pqsJE:d9iZ4PlziaZiClvX2HHM-QWpE1p_gX-Q4762YEqN5_w','2023-05-08 09:16:32.446464'),('yb702jo4oquoyleqnqgl1a76oshz9w3h','.eJxVjDsOwjAQBe_iGlmx499S0nMGy7te4wBypDipEHeHSCmgfTPzXiKmba1x67zEKYuz0FacfkdM9OC2k3xP7TZLmtu6TCh3RR60y-uc-Xk53L-Dmnr91siqeG_YIg5kwRTHhhyDQ3IFsh7JMJTgwClSJnidgYfAqMbCIYMV7w8lQDiX:1pqSnS:xbrL6aPbIVI5WG2wgNH24tQcjTl1cxjlBu6q19njXTc','2023-05-07 06:02:02.049663');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
