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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(999) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `isDeleted` int DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (15,'Bình bát là gì? T&#7841;i sao bình bát Sa môn l&#7841;i là bát ph&#432;&#7899;c vô l&#432;&#7907;ng c&#7911;a chúng sinh?','Y bát là bi&#7875;u tr&#432;ng cho s&#7921; gi&#7843;i thoát c&#7911;a ba &#273;&#7901;i ch&#432; Ph&#7853;t, là ru&#7897;ng ph&#432;&#7899;c  màu m&#7905; cho nh&#7919;ng ng&#432;&#7901;i gieo tr&#7891;ng. Nh&#7919;ng ng&#432;&#7901;i xu&#7845;t gia tu hành ph&#7841;m h&#7841;nh, chân chính th&#7921;c hành gi&#7899;i pháp c&#7911;a &#272;&#7913;c Ph&#7853;t, khoác lên mình chi&#7871;c hu&#7923;nh y gi&#7843;i thoát, ôm bình bát &#273;i kh&#7845;t th&#7921;c làm l&#7907;i ích cho muôn loài chúng sinh.   Tuy nhiên, không ph&#7843;i ai c&#361;ng hi&#7875;u ý ngh&#297;a cao quý v&#7873; y bát c&#7911;a nh&#7919;ng b&#7853;c Sa môn. Trong bài vi&#7871;t Bình bát sa môn - bát ph&#432;&#7899;c vô l&#432;&#7907;ng c&#7911;a chúng sinh, Ban Qu&#7843;n tr&#7883; xin kính m&#7901;i quý Ph&#7853;t t&#7917; cùng tìm hi&#7875;u v&#7873; bình bát c&#7911;a ch&#432; T&#259;ng qua l&#7901;i gi&#7843;ng trên Th&#7847;y Thích Trúc Thái Minh.',0,'hoangtc',NULL),(16,'N&#7871;u không qua tôi luy&#7879;n, ng&#432;&#7901;i tu &#273;âu d&#7877; ng&#7917;i mùi h&#432;&#417;ng c&#7911;a s&#7921; giác ng&#7897;','S&#432; Ph&#7909; mong &#273;&#7841;i chúng luôn luôn t&#7881;nh giác, không quên lý t&#432;&#7903;ng c&#7911;a mình, th&#432;&#7901;ng th&#432;&#7901;ng giác sát (t&#7881;nh giác quan sát) th&#7845;y rõ sinh m&#7879;nh mình vô th&#432;&#7901;ng, th&#7871; gi&#7899;i này mong manh &#273;&#7875; chúng ta lo tu hành.  (Trích l&#7901;i S&#432; Ph&#7909; Thích Trúc Thái Minh r&#259;n d&#7841;y chúng &#273;&#7879; t&#7917; nhân bu&#7893;i Ch&#432; T&#259;ng Ni, Ph&#7853;t t&#7917; khánh tu&#7871; S&#432; Ph&#7909; &#273;&#7847;u n&#259;m Tân S&#7917;u.)',0,'hoangtc',NULL),(17,'Tinh t&#7845;n tu hành báo &#273;&#7873;n ân &#273;&#7913;c ch&#432; T&#7893; truy&#7873;n pháp','Kính th&#432;a &#273;&#7841;i chúng! &#272;&#7913;c T&#7893; s&#432; Tu&#7879; Bích Ph&#7893; Giác là &#273;&#7879; t&#7917; c&#7911;a Thi&#7873;n phái Trúc Lâm Yên T&#7917;, là ng&#432;&#7901;i ti&#7871;p n&#7889;i dòng thi&#7873;n c&#7911;a th&#7901;i Tr&#7847;n sau h&#417;n 300 n&#259;m v&#7855;ng bóng. Ngài &#273;ã tr&#7909; th&#7871; h&#417;n m&#7897;t tr&#259;m tu&#7893;i, tuy th&#7901;i gian phôi pha khi&#7871;n t&#7845;t c&#7843; d&#7845;u tích Ngài &#273;&#7875; l&#7841;i không còn nhi&#7873;u nh&#432;ng Th&#7847;y tin r&#7857;ng, công cu&#7897;c ho&#7857;ng d&#432;&#417;ng Ph&#7853;t Pháp c&#7911;a Ngài r&#7845;t l&#7899;n.',0,'hoangtc',NULL),(18,'Ng&#432;&#7901;i kh&#7845;t s&#297; cao quý n&#417;i non thiêng Thành &#272;&#7859;ng','C&#417;m chùa thiên h&#7841; có thi&#7871;u chi Bình bát tùy duyên kh&#7855;p ch&#7889;n &#273;i Vàng ng&#7885;c th&#7871; gian &#273;âu ph&#7843;i quý &#272;&#7855;p &#273;&#432;&#7907;c Cà-sa m&#7899;i di&#7879;u k&#7923;',0,'dolv',NULL),(19,'C&#417;m chùa thiên h&#7841; có thi&#7871;u chi Bình bát tùy duyên kh&#7855;p ch&#7889;n &#273;i Vàng ng&#7885;c th&#7871; gian &#273;âu ph&#7843;i quý &#272;&#7855;p &#273;&#432;&#7907;c Cà-sa m&#7899;i di&#7879;u k&#7923;','Trong kinh T&#259;ng nh&#7845;t A-hàm, t&#7853;p 1, &#272;&#7913;c Ph&#7853;t d&#7841;y: N&#7871;u h&#7841;nh &#273;&#7847;u &#273;à này &#273;&#432;&#7907;c &#7903; &#273;&#7901;i thì Pháp c&#7911;a Ta s&#7869; &#273;&#432;&#7907;c lâu dài &#7903; &#273;&#7901;i. N&#7871;u có Pháp &#7903; &#273;&#7901;i thì thiên &#273;&#7841;o t&#259;ng thêm, ba &#273;&#432;&#7901;ng ác li&#7873;n gi&#7843;m. C&#361;ng v&#7853;y, thánh Tu &#272;à Hoàn, T&#7915; &#272;à Hàm, A Na Hàm, &#273;&#7841;o Tam th&#7915;a &#273;&#7873;u còn &#7903; &#273;&#7901;i.',0,'dolv',NULL),(20,'&#272;&#7889;t hình nhân th&#7871; m&#7841;ng có th&#7871; &#273;&#432;&#7907;c m&#7841;ng s&#7889;ng c&#7911;a chúng ta?','&#272;&#7889;t hình nhân th&#7871; m&#7841;ng t&#7915; lâu &#273;ã xu&#7845;t hi&#7879;n trong nhi&#7873;u trong nghi l&#7877; tín ng&#432;&#7905;ng c&#7911;a ng&#432;&#7901;i Vi&#7879;t, cho &#273;&#7871;n ngày nay thì t&#7853;p t&#7909;c này &#273;ang d&#7847;n lan r&#7897;ng rãi và có &#7843;nh h&#432;&#7903;ng cu&#7897;c s&#7889;ng, xã h&#7897;i. V&#7853;y t&#7853;p t&#7909;c này b&#7855;t ngu&#7891;n t&#7915; &#273;âu và s&#7921; th&#7853;t &#273;&#7857;ng sau nh&#7919;ng hình nhân này là gì? Hãy cùng tìm hi&#7875;u bài vi&#7871;t d&#432;&#7899;i &#273;ây qua l&#7901;i gi&#7843;ng c&#7911;a Th&#7847;y Thích Trúc Thái Minh.',0,'dungnv',NULL),(21,'Duyên âm là gì? Cách hóa gi&#7843;i duyên âm theo quan &#273;i&#7875;m &#273;&#7841;o Ph&#7853;t','Có quan ni&#7879;m cho r&#7857;ng nh&#7919;ng ng&#432;&#7901;i có duyên âm theo, n&#7871;u không &#273;i c&#7855;t thì s&#7869; l&#7853;n &#273;&#7853;n trong chuy&#7879;n hôn nhân tình c&#7843;m, ch&#7853;m v&#7907; mu&#7897;n ch&#7891;ng ho&#7863;c th&#7853;m chí ph&#7843;i cô &#273;&#7897;c m&#7897;t &#273;&#7901;i n&#7871;u không hóa gi&#7843;i.  V&#7853;y duyên âm là gì? D&#432;&#7899;i l&#259;ng kính c&#7911;a &#273;&#7841;o Ph&#7853;t, duyên âm có th&#7853;t hay không? Cách hóa gi&#7843;i duyên âm nh&#432; th&#7871; nào? Kính m&#7901;i quý Ph&#7853;t t&#7917; cùng theo dõi qua l&#7901;i gi&#7843;ng c&#7911;a Th&#7847;y Thích Trúc Thái Minh trong bài vi&#7871;t d&#432;&#7899;i &#273;ây.',0,'dungnv',NULL),(22,'Cõi ng&#7841; qu&#7927; là gì? &#272;&#7901;i s&#7889;ng c&#7911;a cõi ng&#7841; qu&#7927; th&#7871; nào?','Cõi ng&#7841; qu&#7927; là m&#7897;t thu&#7853;t ng&#7919; xu&#7845;t phát t&#7915; nh&#7919;ng b&#7897; kinh trong Ph&#7853;t giáo. Và trong cu&#7897;c s&#7889;ng c&#361;ng có r&#7845;t nhi&#7873;u ng&#432;&#7901;i t&#7915;ng th&#7845;y các chúng vong linh này. Tuy nhiên có r&#7845;t nhi&#7873;u ng&#432;&#7901;i cho r&#7857;ng chuy&#7879;n vong linh, ma qu&#7927; là không có th&#7853;t mà ch&#7881; do con ng&#432;&#7901;i ngh&#297; ra.  V&#7853;y góc nhìn c&#7911;a &#273;&#7841;o Ph&#7853;t lý gi&#7843;i v&#7845;n &#273;&#7873; này nh&#432; th&#7871; nào? Vong linh ng&#7841; qu&#7927; có th&#7853;t hay không và chúng có cu&#7897;c s&#7889;ng ra sao?',0,'dungnv',NULL),(23,'1','1',0,'hoangtc',NULL),(24,'mua hang di','moi ',0,'hoangtc',NULL),(25,'T&#7871;t Nguyên &#272;án','Ch&#432;a di&#7877;n ra',0,'hoangtc',NULL),(27,'chao moi nguoi','alo',0,'dungnv','Fri Dec 10 20:14:41 HOVT 2021');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-10 20:19:22
