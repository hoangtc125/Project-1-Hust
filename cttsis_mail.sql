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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail`
--

LOCK TABLES `mail` WRITE;
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
INSERT INTO `mail` VALUES (46,3,2,'10 diem','No','bai hay qua','dungnv','dolv',NULL),(74,2,1,'121312312','Yes','nap cho e 10 nghin','dolv','hoangtc','Fri Dec 24 11:03:20 HOVT 2021'),(78,2,1,'ok','No','ok','dolv','hoangtc','Fri Dec 24 11:24:01 HOVT 2021'),(81,1,2,'Xin chào các b&#7841;n trong d&#7921; án Project 1. Th&#7871; là chúng ta &#273;ã cùng nhau hoàn thành tr&#7885;n v&#7865;n d&#7921; án web &#273;&#7847;u tay, m&#7863;c dù v&#7851;n còn nhi&#7873;u sai sót, tuy nhiên chúng ta &#273;ã c&#7889; g&#7855;ng h&#7871;t s&#7913;c và thành qu&#7843; chính là trang web này. Xin chân thành c&#7843;m &#417;n các b&#7841;n','No','C&#7843;m &#417;n các b&#7841;n','hoangtc','dolv','Sun Dec 26 08:14:49 HOVT 2021'),(82,1,3,'Xin chào các b&#7841;n trong d&#7921; án Project 1. Th&#7871; là chúng ta &#273;ã cùng nhau hoàn thành tr&#7885;n v&#7865;n d&#7921; án web &#273;&#7847;u tay, m&#7863;c dù v&#7851;n còn nhi&#7873;u sai sót, tuy nhiên chúng ta &#273;ã c&#7889; g&#7855;ng h&#7871;t s&#7913;c và thành qu&#7843; chính là trang web này. Xin chân thành c&#7843;m &#417;n các b&#7841;n','No','C&#7843;m &#417;n các b&#7841;n','hoangtc','dungnv','Sun Dec 26 08:14:49 HOVT 2021'),(83,1,39,'Xin chào các b&#7841;n trong d&#7921; án Project 1. Th&#7871; là chúng ta &#273;ã cùng nhau hoàn thành tr&#7885;n v&#7865;n d&#7921; án web &#273;&#7847;u tay, m&#7863;c dù v&#7851;n còn nhi&#7873;u sai sót, tuy nhiên chúng ta &#273;ã c&#7889; g&#7855;ng h&#7871;t s&#7913;c và thành qu&#7843; chính là trang web này. Xin chân thành c&#7843;m &#417;n các b&#7841;n','No','C&#7843;m &#417;n các b&#7841;n','hoangtc','trangnl','Sun Dec 26 08:14:49 HOVT 2021'),(84,1,3,'Chúng tôi ghi nh&#7853;n nh&#7919;ng &#273;óng góp c&#7911;a b&#7841;n cho trang web. Xin chúc b&#7841;n có th&#7853;t nhi&#7873;u s&#7913;c kh&#7887;e và thành công trong cu&#7897;c s&#7889;ng','No','Bài vi&#7871;t c&#7911;a b&#7841;n r&#7845;t hay','hoangtc','dungnv','Sun Dec 26 08:21:32 HOVT 2021'),(85,2,1,'Tôi &#273;ã nh&#7853;n &#273;&#432;&#7907;c th&#432; c&#7911;a b&#7841;n và tôi chân thành c&#7843;m &#417;n vì &#273;i&#7873;u &#273;ó. S&#7921; công nh&#7853;n c&#7911;a b&#7841;n là &#273;&#7897;ng l&#7921;c c&#7911;a tôi. Chúc b&#7841;n m&#7897;t ngày t&#7889;t lành','No','Xin chào b&#7841;n','dolv','hoangtc','Sun Dec 26 08:30:23 HOVT 2021'),(86,1,2,'Hello b&#7841;n','No','Chào DO','hoangtc','dolv','Sun Dec 26 09:54:54 HOVT 2021'),(87,1,2,'1','No','1','hoangtc','dolv','Sun Dec 26 09:57:21 HOVT 2021'),(88,1,3,'1','No','1','hoangtc','dungnv','Sun Dec 26 09:57:21 HOVT 2021'),(89,1,41,'1','No','1','hoangtc','trangnl','Sun Dec 26 09:57:21 HOVT 2021');
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

-- Dump completed on 2021-12-26 16:06:32
