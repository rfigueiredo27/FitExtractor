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
-- Table structure for table `aplicativo`
--

DROP TABLE IF EXISTS `aplicativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplicativo` (
  `id_aplicativo` varchar(50) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `url_site` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_aplicativo`),
  KEY `app` (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplicativo`
--

LOCK TABLES `aplicativo` WRITE;
/*!40000 ALTER TABLE `aplicativo` DISABLE KEYS */;
INSERT INTO `aplicativo` VALUES ('1046723245378954','its4schools',NULL),('1400966460120064','Caledos Runner',NULL),('1523421781308885','TomTom MySports',NULL),('1571997839755230','Polar Flow',NULL),('162918433202','Runtastic.com',NULL),('1661364530818556','Running',NULL),('171681925906','Looptijden.nl',NULL),('187641741409509','Fitness',NULL),('202062560157684','Kenyan Runner',NULL),('202423869273','Endomondo Sports Tracker',NULL),('212556992139224','adidas train & run',NULL),('267483476621283','Og_composer',NULL),('284597785309','Strava',NULL),('316015891915907','FITAPP',NULL),('34785190853','MapMyWalk',NULL),('402248583177025','Runtastic Mountain Bike',NULL),('43211574282','MapMyRun',NULL),('43656497834','MapMyRide',NULL),('447497012030630','CycleDroid',NULL),('44829295357','MapMyFitness',NULL),('475072582538239','Runtastic Road Bike',NULL),('593430634001921','Argus',NULL),('62572192129','RunKeeper',NULL),('686380398123910','soürun',NULL),('702399913206441','Bora Bike',NULL),('84697719333','Nike',NULL);
/*!40000 ALTER TABLE `aplicativo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-09  6:44:28
