-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: eba_proje
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `baslik` varchar(45) DEFAULT 'BASLIK',
  `icerik` varchar(45) DEFAULT NULL,
  `tarih` varchar(45) DEFAULT NULL,
  `etiket` varchar(45) DEFAULT NULL,
  `resimurl` varchar(45) DEFAULT NULL,
  `kategori` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (7,'Heraklia','2012-Mugla','2012-09-03 14:06:30','Heraklia','heraklia.jpg','Sehirler'),(8,'Trafik','Trafik','2012-09-03 14:07:21','Trafik','trafik.jpg','Sehirler'),(9,'Bingöl, 1978','Bingol','2012-09-03 14:07:21','Bingöl','bingol.jpg','Cografya'),(10,'Din Kültürü ve Ahlak Bilgisi','Din Kültürü ve Ahlak Bilgisi Ahiret ?nanc? Bu','2012-09-03 14:07:21','Din Kültürü ve Ahlak Bilgisi','din.jpg','Din'),(11,'Resimde Form ve Doku','Resimde Form ve Doku','2012-09-03 14:07:21','resim','resimdeform.jpg','Sanat Tarihi'),(12,'Festival','Festival','2012-09-03 14:07:21','festival','festival.jpg','Eglence'),(13,'Degirmen','Degirmen','2012-09-03 14:07:21','degirmen','degirmen.jpg','Fen ve Teknoloji'),(14,'Erkek Meslek ve Teknik Liseleri, 1982','Erkek Meslek ve Teknik Liseleri, 1982','2012-09-03 14:07:22','erkek meslek lisesi','erkekmeslek.jpg','Mesleki ve Teknik E?itim');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suggestions`
--

DROP TABLE IF EXISTS `suggestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggestions` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_baslik` varchar(45) DEFAULT NULL,
  `s_icerik` varchar(45) DEFAULT NULL,
  `s_etiket` varchar(45) DEFAULT NULL,
  `s_kategori` varchar(45) DEFAULT NULL,
  `kayit_id` int(11) DEFAULT NULL,
  `kabul_sayisi` int(11) DEFAULT NULL,
  `red_sayisi` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`),
  KEY `id_idx` (`kayit_id`),
  CONSTRAINT `id` FOREIGN KEY (`kayit_id`) REFERENCES `images` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suggestions`
--

LOCK TABLES `suggestions` WRITE;
/*!40000 ALTER TABLE `suggestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `suggestions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-08-14  9:46:28
