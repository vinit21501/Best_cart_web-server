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
-- Table structure for table `store_customer`
--

DROP TABLE IF EXISTS `store_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_customer` (
  `customer_id` bigint NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(30) NOT NULL,
  `customer_location` varchar(50) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `store_customer_user_id_04276401_fk_store_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `store_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_customer`
--

LOCK TABLES `store_customer` WRITE;
/*!40000 ALTER TABLE `store_customer` DISABLE KEYS */;
INSERT INTO `store_customer` VALUES (1,'vinit','new sd',2),(2,'vinit','new delhi',3),(3,'Richard Hamilton','0837 Catherine Estates\nRodriguezport, VI 75143',4),(4,'Bradley Stone','3727 Colon Run\nMichaelhaven, NM 04333',5),(5,'Darlene Chavez','190 Amanda Roads Suite 616\nCraigfurt, NC 35018',6),(6,'Michael Brady','PSC 8911, Box 1370\nAPO AE 11248',7),(7,'Kimberly Johnson','5556 Smith Highway\nWolffort, UT 32876',9),(8,'Seth Banks','25460 Acosta Drive Apt. 420\nBaxterview, AK 60202',10),(9,'Christopher Moses','5716 Jones Inlet Suite 581\nNorth Ericaton, KY 0536',11),(10,'David Salazar','PSC 2266, Box 1187\nAPO AA 50701',12),(11,'Emily Jackson','9931 Keith Rapid Apt. 776\nSmithchester, MS 23945',13),(12,'Wanda Ramirez','057 Benjamin Dale\nSouth Jill, CA 50803',14),(13,'Katrina West','6910 Carol Orchard Suite 410\nEast Renee, KS 93829',15),(14,'Laura Long','6477 John Forest\nEast Kyle, WY 46510',16),(15,'Donald Hunt','63804 Villanueva Brook\nJonesshire, KY 96727',17),(16,'Nicole Boone DVM','00986 Roman Lodge Apt. 707\nRhondaton, ME 06972',18),(17,'Sharon Weaver','6056 Sloan Divide Apt. 706\nPort Levi, WI 94743',19),(18,'Tim Oneal','Unit 7866 Box 7492\nDPO AE 39732',20),(19,'Amanda Park','63222 Knight Mount\nSharonbury, PW 49097',21),(20,'Anthony Walker','642 Shawn Run Apt. 963\nCooperton, MP 47469',22),(21,'Richard Romero','04651 Lee Keys\nDenisestad, AS 83888',23),(22,'Mary Carter','050 Scott Key Suite 149\nBobbyfurt, PR 52493',24),(23,'Krista Lopez','67212 King Way Apt. 135\nPort Patriciahaven, GA 056',25),(24,'Nancy Allen','788 Nichols Coves Suite 386\nJohnsonshire, PW 81003',26),(25,'Timothy Wilson Jr.','89246 Stacy Vista\nLisafort, RI 89831',27),(26,'Carol Young','37863 John Forks\nNew Michael, NH 88533',28),(27,'Lisa Downs MD','21467 Arnold Heights\nJavierhaven, AS 52506',29),(28,'Joan Molina','284 Evelyn Summit Apt. 004\nEast Julian, AR 10996',30),(29,'Janice Howell','Unit 0873 Box 4657\nDPO AA 92654',31),(30,'Jason Ford','4939 Perry Cape\nWest Melissa, CA 77638',32),(31,'Elizabeth White','1511 Mooney Ways\nWest Ianton, IN 35093',33),(32,'Billy Fernandez','0620 Miles Lake\nEast Charlesville, PW 66226',34),(33,'Donald Robinson','675 Megan Trafficway Apt. 070\nGriffinton, FM 89606',35),(34,'Kelly Phillips','5016 Robertson Ways\nNorth Susanshire, WY 49179',36),(35,'Barbara Holder','322 Smith Landing Suite 156\nNorth Donna, VA 40903',37),(36,'Robert Moore','89455 Roy Corners Apt. 308\nWest Brian, MS 61306',38),(37,'Joseph Dominguez','678 Deanna Falls Apt. 203\nWesleystad, AK 37498',39),(38,'Donna Pennington','8298 Karen Port Suite 554\nWest Patricia, HI 36380',40),(39,'Corey Bentley','3978 Steven Ridge\nPort Jamesside, AS 12411',41),(40,'Douglas Tucker','5901 Gregory Ramp Suite 486\nGarnerfurt, GA 62022',42),(41,'Ms. Mary Day','15361 Bailey Ridges Apt. 930\nJacksontown, ND 13596',43),(42,'Michael Alexander','10122 Jessica Pike Suite 369\nCharlenechester, UT 7',44),(43,'William Smith','432 Greene Brooks\nLake Raymond, DC 30367',45),(44,'Mr. Jim Shaw Jr.','4055 Becky Wells Suite 839\nBrownland, MN 06031',46),(45,'Colin Arroyo','60997 Estrada Islands\nWest Lori, DC 29285',47),(46,'Stephanie Lopez','060 Lisa Falls Suite 778\nJacobland, ID 99282',48),(47,'Carlos Rice','65049 Wilkerson Creek Suite 604\nColemanmouth, TN 2',49),(48,'Craig Hicks','543 Wiggins Turnpike\nEast Daniel, MN 51334',50),(49,'Mr. Christopher Bailey MD','139 Hughes Drive Apt. 793\nNorth Christineburgh, OH',51),(50,'Sydney Mooney','089 Mcfarland Islands Apt. 088\nSingletonmouth, PW ',52),(51,'Antonio Robinson','935 Monique Prairie Suite 383\nCervantesside, NH 83',53),(52,'Ricky Hicks','9265 Dixon Forks Apt. 804\nCarpenterhaven, CO 46733',54),(53,'Ryan Perez','95353 Ramos Locks\nLake Roy, NC 73802',55),(54,'Michael Davis','1304 Howard Dale\nEast Colleenberg, WI 28064',56),(55,'Tammy Parsons','55879 Hall Parkway Apt. 944\nEast Brendafort, VI 36',57),(56,'Malik Wilson','43350 Mario Track Suite 943\nNew Stephen, AZ 91431',58),(57,'Brianna Parsons','534 Donald Ridge Apt. 592\nWest Shannonfort, DC 648',59),(58,'Nathaniel Ho','14726 Jonathan Vista\nJacobbury, MI 30817',60),(59,'Nathan Mathis','9116 William Camp\nStevenborough, NH 76574',61),(60,'Whitney Daniels','5913 Isabella Parkway Suite 084\nPort Ebonyfurt, WA',62),(61,'Willie Davis','82055 Ray Garden\nSouth Shelley, MA 93529',63),(62,'Brandi Thomas','42088 Matthew Gateway Apt. 248\nWest Jessicatown, K',64),(63,'Meagan Walton','36182 Debra Mountains\nCoxstad, WI 21552',65),(64,'Kimberly Galvan','Unit 5310 Box 0285\nDPO AA 48412',66),(65,'Nicholas Little','915 Adam Centers\nTaylorport, MS 27142',67),(66,'Douglas Williams','880 Christopher Heights\nEast Meghan, VA 57746',68),(67,'Ellen Young','99244 Hunt Mews\nLake Jesse, WI 70301',69),(68,'Charles Tran','5038 Elizabeth Mill Suite 813\nNorth James, PA 8207',70),(69,'David Kim','Unit 2990 Box 7984\nDPO AE 31115',71),(70,'John Levine','40104 Dana Lake Apt. 353\nTimothyfort, NH 65457',72),(71,'Kimberly Williams','569 Hernandez Lakes\nSandersbury, MT 24339',73),(72,'Stephanie Mccann','3641 King Groves Suite 501\nNew Sarashire, TX 77067',74),(73,'Matthew Rivera','USS Johns\nFPO AP 53379',75),(74,'Kathy Espinoza','6771 Scott Row\nBradshawfort, CA 17493',76),(75,'Katie Jones','01707 Schmidt Crest\nSilvaburgh, VT 29578',77),(76,'Justin Evans','998 Fry Crossroad\nNew Pamela, AK 01302',78),(77,'Nancy Harrison','USNS Scott\nFPO AE 66578',79),(78,'Tiffany Russo','9438 Johnson Expressway\nMatthewton, AZ 16435',80),(79,'Joseph Cooper','25912 Barber Inlet Apt. 850\nChristopherville, WI 0',81),(80,'Donna Carter','3533 Sean Forest Apt. 617\nSouth Maryshire, MA 5962',82),(81,'Jason Jones','326 Everett Extension\nWest Tinatown, MS 01244',83),(82,'Bob Ford','9550 Reynolds Inlet Apt. 740\nEast Aaronville, AZ 3',84),(83,'Walter Floyd','7735 Andrea Brook Suite 914\nMichellebury, OH 02196',85),(84,'Natalie Rodriguez','03266 Anna Lane Apt. 034\nMichelebury, CO 26687',86),(85,'Kristen Baker','662 Warren Course\nNorth Danielchester, WA 95471',87),(86,'Holly Watson','Unit 7817 Box 0815\nDPO AE 09021',88),(87,'Nathan Mitchell','032 Kaitlin Heights Apt. 745\nWest Jeremiahshire, M',89),(88,'Chelsea Wilson','260 Danielle Ports\nAngelaview, DE 95683',90),(89,'Dennis Chen','2139 Barker Mountain Apt. 129\nEast Brittanyland, N',91),(90,'Erin Jennings','49592 Little Estates Apt. 724\nMonroeton, IA 77932',92),(91,'James Gibson','3025 George Station\nMichaelborough, ME 19674',93),(92,'Bruce Wilson','169 Padilla Village\nNorth Adam, ME 17942',94),(93,'Jermaine Simmons','961 Regina Forest Apt. 522\nPort Daniellechester, A',95),(94,'Cynthia Harper','158 Jennifer Stravenue\nRosarioburgh, GA 38365',96),(95,'Kelly Hall','9891 Michael Lights\nNorth Edward, CT 14225',97),(96,'Heather Powers','9799 Wilson Rue Apt. 985\nLake Amytown, ID 95078',98),(97,'Alexander Howard','6458 Briggs Valleys\nNorth Keithport, AR 74345',99),(98,'Karen Todd','132 Johnson Ridges\nReedmouth, CT 42160',100),(99,'Jason Henry','474 Michelle Walk\nNew Leahport, NY 31991',101),(100,'Anthony Johnson','5920 Audrey Stream Apt. 371\nAndrewmouth, FM 94602',102),(101,'Robert Hansen','5705 Ronald Shoal Apt. 600\nDavidton, LA 30355',103),(102,'Bradley Brown','254 Tammy Village\nPort Heatherton, MN 09853',104),(103,'Jacqueline Johnson','9877 Deanna Club\nLake Alexis, CO 21936',105),(104,'Thomas Smith','1111 Anthony Ford\nSouth Joshua, TN 90679',106),(105,'Gwendolyn Tucker','2205 Morton Avenue Apt. 946\nLake Gary, AL 10147',107),(106,'Andrew Pierce','PSC 3273, Box 4728\nAPO AE 35340',108),(107,'William Ayala','70028 Braun River Apt. 065\nMargaretmouth, ME 01360',109);
/*!40000 ALTER TABLE `store_customer` ENABLE KEYS */;
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
