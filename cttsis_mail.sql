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
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idUser` int DEFAULT NULL,
  `idUser_` int DEFAULT NULL,
  `content` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isRead` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sender` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` VALUES (45,2,1,'news','No','xoa ho e ','dolv','hoangtc',NULL),(46,3,2,'10 diem','No','bai hay qua','dungnv','dolv',NULL),(58,2,1,'1000000','No','nap tien cho em di','dolv','hoangtc','Fri Dec 10 20:15:54 HOVT 2021'),(59,2,1,'lo','No','a','dolv','hoangtc','Sat Dec 11 15:07:42 HOVT 2021'),(63,1,2,'hay soan tin cho toi','No','ban co muon nap tien khong','hoangtc','dolv','Sun Dec 12 22:33:05 HOVT 2021'),(64,1,2,'de nhan phan thuong','No','hay dang bai tin tuc','hoangtc','dolv','Sun Dec 12 22:33:22 HOVT 2021'),(65,1,3,'de nhan phan thuong','No','hay dang bai tin tuc','hoangtc','dungnv','Sun Dec 12 22:33:22 HOVT 2021'),(66,2,1,'','No','nap cho e 10 nghin','dolv','hoangtc','Mon Dec 13 20:49:49 HOVT 2021'),(67,1,2,'alo','No','&#272;&#7841;i h&#7897;i võ lâm','hoangtc','dolv','Mon Dec 13 20:55:01 HOVT 2021'),(68,1,3,'alo','No','&#272;&#7841;i h&#7897;i võ lâm','hoangtc','dungnv','Mon Dec 13 20:55:01 HOVT 2021');
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;
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
