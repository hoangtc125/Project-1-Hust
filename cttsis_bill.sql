-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: cttsis
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nameBill` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sum` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `otp` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (1,'hoangtc','hoangtcnull','1 22 2 11','330000','',NULL),(2,'hoangtc','hoangtcnull','1 1 2 12','130000','',NULL),(3,'hoangtc','hoangtcnull','4 1','100000','',NULL),(4,'dolv','dolvnull','2 1','10000','',NULL),(5,'hoangtc','hoangtcnull','1 22','220000','',NULL),(6,'hoangtc','hoangtcnull','2 12','120000','','Fri Dec 10 19:43:19 HOVT 2021'),(7,'hoangtc','hoangtcnull','2 20','200000','','Fri Dec 10 19:52:06 HOVT 2021'),(8,'hoangtc','hoangtcnull','1 10','100000','','Fri Dec 10 20:04:45 HOVT 2021'),(9,'hoangtc','hoangtcnull','2 11','110000','','Fri Dec 10 20:07:36 HOVT 2021'),(10,'hoangtc','hoangtcnull','1 11 2 10','210000','','Fri Dec 10 20:12:49 HOVT 2021'),(11,'hoangtc','hoangtcnull','1 22 4 1 2 22','540000','','Fri Dec 10 20:17:33 HOVT 2021'),(12,'dolv','dolvnull','1 20','200000','','Sat Dec 11 15:04:06 HOVT 2021'),(13,'dolv','dolvnull','1 20 2 22','420000','','Sat Dec 11 15:07:11 HOVT 2021'),(14,'hoangtc','hoangtcnull','1 10','100000','','Sat Dec 11 15:28:22 HOVT 2021'),(15,'hoangtc','hoangtcnull','4 22 2 22','2420000','','Sat Dec 11 19:56:29 HOVT 2021'),(16,'hoangtc','hoangtcnull','4 10','1000000','','Sat Dec 11 20:05:00 HOVT 2021'),(17,'hoangtc','hoangtcnull','2 1 1 1','20000','','Sat Dec 11 20:19:37 HOVT 2021'),(18,'dungnv','dungnvnull','1 1','10000','','Sat Dec 11 20:19:57 HOVT 2021'),(19,'dungnv','dungnvnull','2 3 1 2','50000','','Sat Dec 11 20:20:31 HOVT 2021'),(20,'hoangtc','hoangtcnull','5 22 1 22 4 22 2 22','1848000','','Sun Dec 12 22:15:52 HOVT 2021'),(21,'hoangtc','hoangtcnull','1 1','10000','','Sun Dec 12 22:31:09 HOVT 2021'),(22,'hoangtc','hoangtcnull','7 1000 6 999','26996000','','Sun Dec 12 23:06:04 HOVT 2021'),(23,'hoangtc','hoangtcnull','7 1323','30429000','','Sun Dec 12 23:06:46 HOVT 2021'),(24,'hoangtc','hoangtcnull','7 1000','23000000','','Mon Dec 13 19:51:52 HOVT 2021'),(25,'hoangtc','hoangtcnull','7 1111','25553000','','Mon Dec 13 19:58:06 HOVT 2021'),(26,'dungnv','dungnvnull','2 2','20000','','Mon Dec 13 19:59:30 HOVT 2021'),(27,'dungnv','dungnvnull','1 1','10000','','Mon Dec 13 20:41:30 HOVT 2021'),(28,'hoangtc','hoangtcnull','1 11 2 22 7 123','3159000','','Mon Dec 13 20:54:27 HOVT 2021'),(29,'dungnv','dungnvnull','2 1','10000','','Wed Dec 15 09:14:42 HOVT 2021'),(30,'hoangtc','hoangtcnull','9 22 7 22','22506000','','Wed Dec 15 09:15:32 HOVT 2021'),(31,'dolv','dolvnull','6 1','4000','','Thu Dec 16 14:04:15 HOVT 2021'),(32,'hoangtc','hoangtcnull','1 11 2 1 4 1 6 1 7 22','690000','','Thu Dec 16 14:06:24 HOVT 2021'),(33,'hoangtc','hoangtcnull','1 10 2 1 7 20','570000','','Thu Dec 16 14:45:32 HOVT 2021'),(34,'hoangtc','hoangtcnull','1 1','10000','','Tue Dec 21 12:01:29 HOVT 2021'),(35,'hoangtc','hoangtcnull','2 1','10000','','Thu Dec 23 21:50:22 HOVT 2021'),(36,'hoangtc','hoangtcnull','1 4 2 1 9 3 6 2','3058000','','Thu Dec 23 22:36:37 HOVT 2021'),(37,'hoangtc','hoangtcnull','2 1','10000','','Thu Dec 23 22:42:18 HOVT 2021'),(38,'dolv','dolvnull','1 1 2 1','20000','','Thu Dec 23 22:43:32 HOVT 2021'),(39,'hoangtc','hoangtcnull','1 4 4 5 7 3','409000','','Fri Dec 24 10:53:41 HOVT 2021'),(40,'hoangtc','hoangtcnull','2 1 1 1','20000','','Fri Dec 24 10:58:49 HOVT 2021'),(41,'dolv','dolvnull','2 1 4 1','70000','','Fri Dec 24 10:58:53 HOVT 2021'),(42,'dolv','dolvnull','2 1','10000','','Fri Dec 24 11:03:38 HOVT 2021'),(43,'hoangtc','hoangtcnull','2 1 1 1','20000','','Fri Dec 24 11:05:55 HOVT 2021'),(44,'dolv','dolvnull','2 6','60000','','Fri Dec 24 11:18:08 HOVT 2021'),(45,'hoangtc','hoangtcnull','2 1','10000','','Fri Dec 24 11:18:11 HOVT 2021'),(46,'hoangtc','hoangtcnull','7 1','23000','','Fri Dec 24 11:22:42 HOVT 2021'),(47,'hoangtc','hoangtcnull','7 1','23000','','Fri Dec 24 11:23:12 HOVT 2021'),(48,'dungnv','dungnvnull','7 13','299000','','Fri Dec 24 11:26:01 HOVT 2021'),(49,'hoangtc','hoangtcnull','7 10 9 11','11230000','','Fri Dec 24 18:32:48 HOVT 2021'),(50,'dolv','dolvnull','2 1','10000','','Fri Dec 24 18:35:09 HOVT 2021'),(51,'hoangtc','hoangtcnull','7 20 9 21','21460000','','Sun Dec 26 08:11:41 HOVT 2021'),(52,'dolv','dolvnull','1 1 4 1','70000','','Sun Dec 26 08:31:09 HOVT 2021'),(53,'hoangtc','hoangtcnull','7 11 6 99','649000','','Sun Dec 26 08:52:21 HOVT 2021'),(54,'hoangtc','hoangtcnull','2 3 7 4','122000','','Sun Dec 26 09:53:41 HOVT 2021');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-26 10:06:38
