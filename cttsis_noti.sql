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
-- Table structure for table `noti`
--

DROP TABLE IF EXISTS `noti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noti` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seen` int DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noti`
--

LOCK TABLES `noti` WRITE;
/*!40000 ALTER TABLE `noti` DISABLE KEYS */;
INSERT INTO `noti` VALUES (1,'hoangtc','Your news had been uploaded successfully',0,'/prj1.com/news-view/32',NULL),(2,'hoangtc','Pay successfully',0,'/prj1.com/bill-list',NULL),(3,'hoangtc','Pay Failed',0,'/prj1.com/bill-list',NULL),(4,'hoangtc','Your news had been uploaded successfully',0,'/prj1.com/news-view/33','Mon Dec 13 19:57:20 HOVT 2021'),(5,'hoangtc','Pay Failed',0,'/prj1.com/bill-list','Mon Dec 13 19:57:37 HOVT 2021'),(6,'hoangtc','Pay successfully',0,'/prj1.com/bill-list','Mon Dec 13 19:58:06 HOVT 2021'),(7,'dolv','Your news had been uploaded successfully',0,'/prj1.com/news-view/34','Mon Dec 13 19:58:43 HOVT 2021'),(8,'dungnv','Pay successfully',0,'/prj1.com/bill-list','Mon Dec 13 19:59:30 HOVT 2021'),(9,'dolv','Have a new comment in which news you commented',0,'/prj1.com/news-view/20','Mon Dec 13 20:31:06 HOVT 2021'),(10,'hoangtc','Have a new comment in which news you commented',0,'/prj1.com/news-view/20','Mon Dec 13 20:38:58 HOVT 2021'),(11,'hoangtc','Have a new comment in which news you commented',0,'/prj1.com/news-view/20','Mon Dec 13 20:38:58 HOVT 2021'),(12,'dolv','Have a new comment in which news you commented',0,'/prj1.com/news-view/20','Mon Dec 13 20:38:58 HOVT 2021'),(13,'hoangtc','Have a new comment in which news you commented',0,'/prj1.com/news-view/20','Mon Dec 13 20:38:58 HOVT 2021'),(14,'dungnv','Pay successfully',0,'/prj1.com/bill-list','Mon Dec 13 20:41:30 HOVT 2021'),(15,'dolv','Your news had been uploaded successfully',0,'/prj1.com/news-view/35','Mon Dec 13 20:49:06 HOVT 2021'),(16,'hoangtc','Pay successfully',0,'/prj1.com/bill-list','Mon Dec 13 20:54:27 HOVT 2021'),(17,'dolv','Have a new comment in which news you commented',0,'/prj1.com/news-view/20','Mon Dec 13 20:55:48 HOVT 2021'),(18,'dungnv','Have a new comment in which news you commented',0,'/prj1.com/news-view/20','Mon Dec 13 20:55:48 HOVT 2021'),(19,'dolv','New product had been released',0,'/prj1.com/product-list','Wed Dec 15 08:43:50 HOVT 2021'),(20,'dungnv','New product had been released',0,'/prj1.com/product-list','Wed Dec 15 08:43:50 HOVT 2021'),(21,'dolv','A product had been updated',0,'/prj1.com/product-list','Wed Dec 15 08:44:11 HOVT 2021'),(22,'dungnv','A product had been updated',0,'/prj1.com/product-list','Wed Dec 15 08:44:11 HOVT 2021'),(23,'dolv','hoangtc had uploaded a news',0,'/prj1.com/user-view/1/hoangtc','Wed Dec 15 09:04:03 HOVT 2021'),(24,'hoangtc','Your news had been uploaded successfully',0,'/prj1.com/news-view/36','Wed Dec 15 09:04:03 HOVT 2021'),(25,'dungnv','hoangtc unfollowed you',0,'/prj1.com/','Wed Dec 15 09:11:41 HOVT 2021'),(26,'dungnv','hoangtc followed you',0,'/prj1.com/','Wed Dec 15 09:11:52 HOVT 2021'),(27,'dolv','hoangtc had uploaded a news',0,'/prj1.com/user-view/1/hoangtc','Wed Dec 15 09:12:28 HOVT 2021'),(28,'hoangtc','Your news had been uploaded successfully',0,'/prj1.com/news-view/37','Wed Dec 15 09:12:28 HOVT 2021'),(29,'hoangtc','dungnv followed you',0,'/prj1.com/','Wed Dec 15 09:13:18 HOVT 2021'),(30,'dolv','hoangtc had uploaded a news',0,'/prj1.com/user-view/1/hoangtc','Wed Dec 15 09:13:36 HOVT 2021'),(31,'dungnv','hoangtc had uploaded a news',0,'/prj1.com/user-view/1/hoangtc','Wed Dec 15 09:13:36 HOVT 2021'),(32,'hoangtc','Your news had been uploaded successfully',0,'/prj1.com/news-view/38','Wed Dec 15 09:13:36 HOVT 2021'),(33,'dungnv','Pay successfully',0,'/prj1.com/bill-list','Wed Dec 15 09:14:42 HOVT 2021'),(34,'dolv','A product had been updated',0,'/prj1.com/product-list','Wed Dec 15 09:15:00 HOVT 2021'),(35,'dungnv','A product had been updated',0,'/prj1.com/product-list','Wed Dec 15 09:15:00 HOVT 2021'),(36,'dolv','A product had been updated',0,'/prj1.com/product-list','Wed Dec 15 09:15:03 HOVT 2021'),(37,'dungnv','A product had been updated',0,'/prj1.com/product-list','Wed Dec 15 09:15:03 HOVT 2021'),(38,'dolv','A product had been updated',0,'/prj1.com/product-list','Wed Dec 15 09:15:06 HOVT 2021'),(39,'dungnv','A product had been updated',0,'/prj1.com/product-list','Wed Dec 15 09:15:06 HOVT 2021'),(40,'hoangtc','Pay successfully',0,'/prj1.com/bill-list','Wed Dec 15 09:15:32 HOVT 2021');
/*!40000 ALTER TABLE `noti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15  9:16:33
