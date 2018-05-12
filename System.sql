CREATE DATABASE  IF NOT EXISTS `resume` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `resume`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: resume
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `pName` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  `authority` int(11) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('ajieshop','ajie20180301','阿杰','仙游',1),('cjhadmin','cjhresume','陈金伙','福州',2),('csb','123','陈思斌','福州',1);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ajieshop`
--

DROP TABLE IF EXISTS `ajieshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajieshop` (
  `tare` decimal(15,2) NOT NULL,
  `suttle` decimal(15,2) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `chickType` varchar(20) NOT NULL,
  PRIMARY KEY (`chickType`),
  UNIQUE KEY `chickType_UNIQUE` (`chickType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajieshop`
--

LOCK TABLES `ajieshop` WRITE;
/*!40000 ALTER TABLE `ajieshop` DISABLE KEYS */;
INSERT INTO `ajieshop` VALUES (9757.00,9657.00,10000.00,'童子鸡'),(9752.00,9556.00,10000.00,'战斗鸡'),(9957.00,9722.00,1000.00,'炸鸡');
/*!40000 ALTER TABLE `ajieshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allChickensType`
--

DROP TABLE IF EXISTS `allChickensType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allChickensType` (
  `chickensType` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allChickensType`
--

LOCK TABLES `allChickensType` WRITE;
/*!40000 ALTER TABLE `allChickensType` DISABLE KEYS */;
INSERT INTO `allChickensType` VALUES ('计算鸡','cjhadmin',13),('老母鸡','cjhadmin',14),('火鸡','cjhadmin',15),('吹风鸡','cjhadmin',16),('童子鸡','ajieshop',17),('战斗鸡','ajieshop',18),('炸鸡','ajieshop',19);
/*!40000 ALTER TABLE `allChickensType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `allHandleType`
--

DROP TABLE IF EXISTS `allHandleType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `allHandleType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chickType` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `tare` decimal(15,2) NOT NULL,
  `suttle` decimal(15,2) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `handleType` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `allHandleType`
--

LOCK TABLES `allHandleType` WRITE;
/*!40000 ALTER TABLE `allHandleType` DISABLE KEYS */;
INSERT INTO `allHandleType` VALUES (260,'计算鸡','2018-03-25',10000.00,10000.00,20.00,1,'cjhadmin','福州'),(261,'老母鸡','2018-03-25',10000.00,10000.00,10000.00,1,'cjhadmin','福州'),(262,'火鸡','2018-03-25',10000.00,10000.00,100.00,1,'cjhadmin','福州'),(263,'吹风鸡','2018-03-25',20000.00,20000.00,150.00,1,'cjhadmin','福州'),(264,'吹风鸡','2018-03-25',100.00,230.00,23.00,-1,'cjhadmin','福州'),(265,'火鸡','2018-03-24',23.00,23.00,23.00,-1,'cjhadmin','福州'),(266,'老母鸡','2018-03-23',45.00,245.00,45.00,-1,'cjhadmin','福州'),(267,'计算鸡','2018-03-22',232.00,232.00,23.00,-1,'cjhadmin','福州'),(268,'吹风鸡','2018-03-21',100.00,230.00,23.00,-1,'cjhadmin','福州'),(269,'火鸡','2018-03-20',23.00,23.00,23.00,-1,'cjhadmin','福州'),(270,'老母鸡','2018-03-19',45.00,245.00,45.00,-1,'cjhadmin','福州'),(271,'计算鸡','2018-03-17',232.00,232.00,23.00,-1,'cjhadmin','福州'),(272,'童子鸡','2018-03-16',10000.00,10000.00,10000.00,1,'ajieshop','仙游'),(273,'战斗鸡','2018-03-10',10000.00,10000.00,10000.00,1,'ajieshop','仙游'),(274,'炸鸡','2018-03-25',10000.00,10000.00,1000.00,1,'ajieshop','仙游'),(275,'童子鸡','2018-03-20',232.00,235.00,36.00,-1,'ajieshop','仙游'),(276,'战斗鸡','2018-03-24',226.00,100.00,10.00,-1,'ajieshop','仙游'),(277,'炸鸡','2018-03-23',21.00,223.00,23.00,-1,'ajieshop','仙游'),(278,'童子鸡','2018-03-22',11.00,111.00,11.00,-1,'ajieshop','仙游'),(279,'战斗鸡','2018-03-21',22.00,222.00,22.00,-1,'ajieshop','仙游'),(280,'童子鸡','2018-03-19',232.00,232.00,36.00,-1,'ajieshop','仙游'),(281,'战斗鸡','2018-03-18',226.00,222.00,10.00,-1,'ajieshop','仙游'),(282,'炸鸡','2018-03-21',21.00,223.00,23.00,-1,'ajieshop','仙游'),(283,'童子鸡','2018-03-18',11.00,111.00,11.00,-1,'ajieshop','仙游'),(284,'战斗鸡','2018-03-17',22.00,224.00,22.00,-1,'ajieshop','仙游'),(285,'炸鸡','2018-03-25',22.00,55.00,55.00,-1,'ajieshop','仙游'),(286,'火鸡','2018-02-25',23.00,23.00,23.00,-1,'cjhadmin','福州'),(287,'老母鸡','2018-02-22',45.00,245.00,69.00,-1,'cjhadmin','福州'),(288,'计算鸡','2018-02-27',232.00,232.00,85.00,-1,'cjhadmin','福州'),(289,'炸鸡','2018-02-20',22.00,98.00,55.00,-1,'ajieshop','仙游'),(290,'炸鸡','2018-02-26',22.00,68.00,55.00,-1,'ajieshop','仙游');
/*!40000 ALTER TABLE `allHandleType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cjhadmin`
--

DROP TABLE IF EXISTS `cjhadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cjhadmin` (
  `tare` decimal(15,2) NOT NULL,
  `suttle` decimal(15,2) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `chickType` varchar(20) NOT NULL,
  PRIMARY KEY (`chickType`),
  UNIQUE KEY `chickType_UNIQUE` (`chickType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cjhadmin`
--

LOCK TABLES `cjhadmin` WRITE;
/*!40000 ALTER TABLE `cjhadmin` DISABLE KEYS */;
INSERT INTO `cjhadmin` VALUES (19900.00,19770.00,150.00,'吹风鸡'),(9977.00,9977.00,100.00,'火鸡'),(9955.00,9755.00,10000.00,'老母鸡'),(9768.00,9768.00,20.00,'计算鸡');
/*!40000 ALTER TABLE `cjhadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `message` varchar(1000) NOT NULL,
  `pName` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `online`
--

DROP TABLE IF EXISTS `online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `online` (
  `pName` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `online`
--

LOCK TABLES `online` WRITE;
/*!40000 ALTER TABLE `online` DISABLE KEYS */;
/*!40000 ALTER TABLE `online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pullChick`
--

DROP TABLE IF EXISTS `pullChick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pullChick` (
  `tare` decimal(15,2) NOT NULL,
  `suttle` decimal(15,2) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `sumWeight` decimal(15,2) NOT NULL,
  `sumPrice` decimal(15,2) NOT NULL,
  `chickType` varchar(20) NOT NULL,
  PRIMARY KEY (`chickType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pullChick`
--

LOCK TABLES `pullChick` WRITE;
/*!40000 ALTER TABLE `pullChick` DISABLE KEYS */;
/*!40000 ALTER TABLE `pullChick` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-12 10:11:34
