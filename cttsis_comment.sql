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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(999) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idNews` int DEFAULT NULL,
  `idProduct` int DEFAULT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'hoangtc','hay qua di',1,NULL,NULL),(2,'hoangtc','hay qua diiiiii',1,NULL,NULL),(3,'hoangtc','c&#361;ng &#273;&#432;&#7907;c',1,NULL,NULL),(4,'hoangtc','alo có ai comment ch&#432;a',5,NULL,NULL),(7,'hoangtc','hot choox naof',7,NULL,NULL),(8,'dolv','ukm\r\n',7,NULL,NULL),(10,'dolv','hoang dz',1,NULL,NULL),(11,'hoangtc','oce dolv',1,NULL,NULL),(12,'dungnv','qua dung luon 100 diem',1,NULL,NULL),(13,'hoangtc','ok k',1,NULL,NULL),(15,'hoangtc','chwa',5,NULL,NULL),(16,'dolv','ll\r\n',7,NULL,NULL),(17,'hoangtc','hay qua',19,NULL,NULL),(26,'hoangtc','y nghia qua',18,NULL,NULL),(31,'hoangtc','mua di',24,NULL,NULL),(32,'hoangtc','hay qua',25,NULL,NULL),(34,'hoangtc','alo',NULL,1,'Fri Dec 10 20:11:41 HOVT 2021'),(42,'hoangtc','dat qua',NULL,4,'Sat Dec 11 20:19:04 HOVT 2021'),(46,'hoangtc','chao cac ban',20,NULL,'Mon Dec 13 20:31:06 HOVT 2021'),(47,'dungnv','hello',20,NULL,'Mon Dec 13 20:38:58 HOVT 2021'),(49,'hoangtc','xin chao\r\n',NULL,2,'Thu Dec 16 08:46:31 HOVT 2021'),(51,'hoangtc','cac ban mua hang di',NULL,2,'Thu Dec 16 08:46:50 HOVT 2021'),(52,'hoangtc','alooooooooooooooooooooooooo',20,NULL,'Thu Dec 16 08:51:09 HOVT 2021'),(53,'dolv','alo',39,NULL,'Thu Dec 16 14:02:51 HOVT 2021'),(54,'hoangtc','alo al',40,NULL,'Thu Dec 23 22:20:26 HOVT 2021'),(55,'hoangtc','cos ao k',40,NULL,'Thu Dec 23 22:20:33 HOVT 2021'),(56,'hoangtc','allloo\r\n',NULL,1,'Thu Dec 23 22:33:28 HOVT 2021'),(57,'hoangtc','hay',NULL,1,'Thu Dec 23 22:33:37 HOVT 2021'),(60,'hoangtc','alo',NULL,10,'Thu Dec 23 22:41:55 HOVT 2021'),(63,'hoangtc','hay day',20,NULL,'Fri Dec 24 10:52:24 HOVT 2021'),(64,'hoangtc','mua di',NULL,1,'Fri Dec 24 10:53:13 HOVT 2021'),(67,'hoangtc','ok k',15,NULL,'Fri Dec 24 18:31:55 HOVT 2021'),(68,'hoangtc','các b&#7841;n &#417;i',15,NULL,'Sun Dec 26 08:15:42 HOVT 2021'),(69,'hoangtc','&#273;úng th&#7853;t r&#7845;t hay',19,NULL,'Sun Dec 26 08:22:33 HOVT 2021'),(70,'hoangtc','Các b&#7841;n bình lu&#7853;n &#273;i nào',21,NULL,'Sun Dec 26 08:22:59 HOVT 2021');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-26 10:06:39
