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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,'hoangtc','hay qua di',1,NULL),(2,'hoangtc','hay qua diiiiii',1,NULL),(3,'hoangtc','c&#361;ng &#273;&#432;&#7907;c',1,NULL),(4,'hoangtc','alo có ai comment ch&#432;a',5,NULL),(7,'hoangtc','hot choox naof',7,NULL),(8,'dolv','ukm\r\n',7,NULL),(10,'dolv','hoang dz',1,NULL),(11,'hoangtc','oce dolv',1,NULL),(12,'dungnv','qua dung luon 100 diem',1,NULL),(13,'hoangtc','ok k',1,NULL),(15,'hoangtc','chwa',5,NULL),(16,'dolv','ll\r\n',7,NULL),(17,'hoangtc','hay qua',19,NULL),(23,'hoangtc','a',20,NULL),(24,'hoangtc','alo al\r\n',15,NULL),(26,'hoangtc','y nghia qua',18,NULL),(28,'hoangtc','alo alo',NULL,1),(29,'hoangtc','dep trai',NULL,1),(30,'hoangtc','chat luong qua\r\n',NULL,4),(31,'hoangtc','mua di',24,NULL);
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

-- Dump completed on 2021-12-09 21:42:34
