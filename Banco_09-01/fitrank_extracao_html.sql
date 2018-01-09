-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: albali.eic.cefet-rj.br    Database: fitrank
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `extracao_html`
--

DROP TABLE IF EXISTS `extracao_html`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extracao_html` (
  `id_jsoup` int(11) NOT NULL AUTO_INCREMENT,
  `distance` float DEFAULT NULL,
  `duration` float DEFAULT NULL,
  `avg_pace` float DEFAULT NULL,
  `elevation_gain` float DEFAULT NULL,
  `calories` float DEFAULT NULL,
  `heart_rate` float DEFAULT NULL,
  `max_heart_rate` float DEFAULT NULL,
  `weather` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `celsius_degrees` float DEFAULT NULL,
  `place_kind` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `evaluation` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `avg_speed` float DEFAULT NULL,
  `red_line_heart_rate` float DEFAULT NULL,
  `red_line_heart_rate_duration` float DEFAULT NULL,
  `anaerobic_heart_rate` float DEFAULT NULL,
  `anaerobic_heart_rate_duration` float DEFAULT NULL,
  `aerobic_heart_rate` float DEFAULT NULL,
  `aerobic_heart_rate_duration` float DEFAULT NULL,
  `fat_burning_heart_rate` float DEFAULT NULL,
  `fat_burning_heart_rate_duration` float DEFAULT NULL,
  `easy_heart_rate` float DEFAULT NULL,
  `easy_heart_rate_duration` float DEFAULT NULL,
  `no_zone_heart_rate` float DEFAULT NULL,
  `no_zone_heart_rate_duration` float DEFAULT NULL,
  `json_course` mediumblob,
  `url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `id_course` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_jsoup`),
  KEY `FK_JSOUP_COURSE` (`id_course`),
  CONSTRAINT `FK_JSOUP_COURSE` FOREIGN KEY (`id_course`) REFERENCES `course` (`id_course`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extracao_html`
--

LOCK TABLES `extracao_html` WRITE;
/*!40000 ALTER TABLE `extracao_html` DISABLE KEYS */;
/*!40000 ALTER TABLE `extracao_html` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-09  6:44:40
