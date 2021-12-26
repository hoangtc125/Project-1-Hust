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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sold` varchar(999) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unSold` varchar(999) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isDeleted` int DEFAULT NULL,
  `image` varchar(999) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Bình n&#432;&#7899;c b&#7841;c','10000','158','190',0,'https://dailynuockhoang.vn/wp-content/uploads/2018/08/B%C3%ACnh-Aquawater-20l.jpg'),(2,'Móc khóa vàng','10000','159','180',0,'https://cf.shopee.vn/file/1944ff52a5c6ad08fda5f3c5af9efd01'),(4,'Áo phông Hust','60000','63','37',0,'https://www.hust.edu.vn/documents/21257/147855/QT-%C3%81o+ph%C3%B4ng.jpg/d218e74c-31f5-4506-ba2d-ecacaf6eb1c9?version=1.0&t=1483699005000'),(6,'Bút chì xám','40000','1102','91',0,'https://www.thienlong.com.vn/vnt_upload/product/PC_023/thumbs/870_PC_023_01.jpg'),(7,'Dollar $USD','23000','4684','999995316',0,'https://thoibaonganhang.vn/stores/news_dataimages/tbnh/052014/28/15/53859a8d43309-medium20141119201301.7136150.jpg'),(9,'Giày da &#273;en','1000000','57','43',0,'https://giayda360.com/wp-content/uploads/2018/06/15-a-1.jpg'),(12,'Mercedes g63 + MTP','1000000','1','1000',0,'https://giaxeoto.vn/admin/upload/images/resize/640-son-tung-mua-mercedes-amg-g63.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
