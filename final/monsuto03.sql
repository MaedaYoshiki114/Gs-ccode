-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: monsto
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `kuji`
--

DROP TABLE IF EXISTS `kuji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kuji` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `imgs` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `rea` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kuji`
--

LOCK TABLES `kuji` WRITE;
/*!40000 ALTER TABLE `kuji` DISABLE KEYS */;
INSERT INTO `kuji` VALUES (1,'01','01.png','遅刻',2),(2,'02','02.png','寝坊1',5),(3,'03','03.png','寝坊2',3),(4,'04','04.png','昼に起きた',2),(5,'05','05.png','安らかに眠りました',2),(6,'06','06.png','気持ちよく起きました',1),(7,'07','07.jpg','やる気UP？',1),(8,'08','08.jpg','起きれた？',1);
/*!40000 ALTER TABLE `kuji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_date`
--

DROP TABLE IF EXISTS `user_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_date` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0000',
  `money` int(8) NOT NULL DEFAULT 0,
  `pey` int(8) NOT NULL DEFAULT 0,
  `item1` int(1) NOT NULL DEFAULT 0,
  `item2` int(1) NOT NULL DEFAULT 0,
  `item3` int(1) NOT NULL DEFAULT 0,
  `item4` int(1) NOT NULL DEFAULT 0,
  `item5` int(1) NOT NULL DEFAULT 0,
  `item6` int(1) NOT NULL DEFAULT 0,
  `item7` int(1) NOT NULL DEFAULT 0,
  `item8` int(1) NOT NULL DEFAULT 0,
  `total` int(8) NOT NULL DEFAULT 1,
  `comp` int(3) NOT NULL DEFAULT 0,
  `get` int(8) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_date`
--

LOCK TABLES `user_date` WRITE;
/*!40000 ALTER TABLE `user_date` DISABLE KEYS */;
INSERT INTO `user_date` VALUES (1,'hh','cg',1680,0,1,0,1,0,0,0,0,0,5,40,1),(34,'aaa','0000',5400,0,1,1,1,1,1,1,1,1,8,100,0),(35,'','0000',0,0,0,0,0,0,0,0,0,0,1,0,0),(36,'hogehoge','0000',0,0,0,0,0,0,0,0,0,0,1,0,0),(37,'','0000',0,0,0,0,0,0,0,0,0,0,1,0,0);
/*!40000 ALTER TABLE `user_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_log`
--

DROP TABLE IF EXISTS `user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_log` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `money` int(8) NOT NULL,
  `indate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_log`
--

LOCK TABLES `user_log` WRITE;
/*!40000 ALTER TABLE `user_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-08  2:46:35
