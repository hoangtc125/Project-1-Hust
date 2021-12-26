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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `enabled` int DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `MSSV` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `clazz` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `isDeleted` int DEFAULT NULL,
  `dateDeleted` date DEFAULT NULL,
  `coin` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(999) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'hoangtc','$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG',1,'Tr&#7847;n Công Hoàng','20194060','IT1 01 K64',0,NULL,'65461000','https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-1/p240x240/257731232_1313909815716888_3818428840467093702_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=7206a8&_nc_ohc=NlIMOQK4caoAX_KBlYL&tn=58yoPGwDXMdCxoB6&_nc_ht=scontent.fhph1-2.fna&oh=00_AT9AX5At8XBt9ySmZEpXj71uHSfncgsMW5JZ7o7XLSgAnw&oe=61CD1B26'),(2,'dolv','$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG',1,'Lê V&#259;n Do','20196666','IT1 01 K64',0,NULL,'200000','https://scontent.fhph2-1.fna.fbcdn.net/v/t1.6435-9/175205582_534157314636292_6940806602599150340_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=sz6J77_GVZwAX-etx-E&_nc_ht=scontent.fhph2-1.fna&oh=00_AT_4komIRJZdSPvO1mnisHSUo3A3rB45VTP5fBlSXDOnVA&oe=61ECDDE1'),(3,'dungnv','$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG',1,'Nguy&#7877;n V&#259;n D&#361;ng','20190002','IT1 01 K64',0,NULL,'701000','https://i.pinimg.com/originals/0c/3b/3a/0c3b3adb1a7530892e55ef36d3be6cb8.png'),(4,'hethong',NULL,NULL,'Hệ Thống',NULL,NULL,NULL,NULL,NULL,NULL),(42,'trangnl','$2a$04$GYGsaJj9l6kH2GikK6QVzO0v3sOCxt3vdkiA2/tcoSw8erI85ZYDG',0,'Nguy&#7877;n Linh Trang','20193030','IT1 01 K64',0,NULL,'0','https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460__480.png');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-26 16:06:31
