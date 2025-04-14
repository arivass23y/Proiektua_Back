CREATE DATABASE  IF NOT EXISTS `3pag2e2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `3pag2e2`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: 3pag2e2
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `bezero_fitxak`
--

DROP TABLE IF EXISTS `bezero_fitxak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bezero_fitxak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(100) NOT NULL,
  `abizena` varchar(200) NOT NULL,
  `telefonoa` varchar(9) DEFAULT NULL,
  `azal_sentikorra` char(1) DEFAULT 'E',
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `CK_bezero_fitxak_azala` CHECK ((`azal_sentikorra` in (_utf8mb4'B',_utf8mb4'E')))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bezero_fitxak`
--

LOCK TABLES `bezero_fitxak` WRITE;
/*!40000 ALTER TABLE `bezero_fitxak` DISABLE KEYS */;
INSERT INTO `bezero_fitxak` VALUES (1,'pedroghgf','ppp','111222333','B','2025-01-28 10:18:28','2025-01-28 10:18:28',NULL),(2,'pepe','madrigal','224556778','B','2025-01-28 11:59:37',NULL,'2025-01-30 09:01:45'),(3,'pepe','madrigal','224556778','B','2025-01-28 12:19:24',NULL,'2025-01-30 09:01:30'),(4,'pepe','madrigal','224556778','B','2025-01-28 12:36:18',NULL,NULL),(5,'pepe','madrigal','224556778','B','2025-01-28 12:38:50',NULL,'2025-01-30 09:01:51'),(6,'pepe','madrigal','224556778','B','2025-01-28 12:47:44',NULL,'2025-01-30 09:01:53'),(7,'pepe','madrigal','224556778','B','2025-01-28 12:49:11',NULL,NULL),(8,'anton','kkk','123456789','B','2025-01-28 12:50:19',NULL,'2025-01-30 09:01:49'),(9,'ff','ggg','111222333','B','2025-01-29 12:17:36',NULL,NULL),(10,'prueba 2','hhh','111222333','B','2025-02-06 10:48:00',NULL,'2025-02-06 10:49:36'),(11,'g','g','123456789','E','2025-02-12 10:53:11',NULL,NULL),(12,'pepe1','prueba','123456789','B','2025-02-13 08:11:14',NULL,'2025-02-13 08:13:25');
/*!40000 ALTER TABLE `bezero_fitxak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erabiltzaileak`
--

DROP TABLE IF EXISTS `erabiltzaileak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erabiltzaileak` (
  `username` varchar(15) NOT NULL,
  `pasahitza` varchar(100) DEFAULT NULL,
  `rola` varchar(2) DEFAULT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`username`),
  CONSTRAINT `CK_erabiltzaileak_rola` CHECK ((`rola` in (_utf8mb4'IK',_utf8mb4'IR')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erabiltzaileak`
--

LOCK TABLES `erabiltzaileak` WRITE;
/*!40000 ALTER TABLE `erabiltzaileak` DISABLE KEYS */;
INSERT INTO `erabiltzaileak` VALUES ('admin','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','ir','2025-02-12 08:38:49',NULL,NULL),('user','03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4','ik','2025-02-12 08:38:58',NULL,NULL);
/*!40000 ALTER TABLE `erabiltzaileak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hitzorduak`
--

DROP TABLE IF EXISTS `hitzorduak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hitzorduak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `eserlekua` int NOT NULL,
  `data` date NOT NULL,
  `hasiera_ordua` time NOT NULL,
  `amaiera_ordua` time NOT NULL,
  `hasiera_ordua_erreala` time DEFAULT NULL,
  `amaiera_ordua_erreala` time DEFAULT NULL,
  `izena` varchar(100) NOT NULL,
  `telefonoa` varchar(9) DEFAULT NULL,
  `deskribapena` varchar(250) DEFAULT NULL,
  `etxekoa` char(1) NOT NULL,
  `id_langilea` int DEFAULT NULL,
  `prezio_totala` decimal(10,2) DEFAULT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hitzorduak_langileak` (`id_langilea`),
  CONSTRAINT `FK_hitzorduak_langileak` FOREIGN KEY (`id_langilea`) REFERENCES `langileak` (`id`),
  CONSTRAINT `CK_hitzorduak_etxekoa` CHECK ((`etxekoa` in (_utf8mb4'E',_utf8mb4'K')))
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hitzorduak`
--

LOCK TABLES `hitzorduak` WRITE;
/*!40000 ALTER TABLE `hitzorduak` DISABLE KEYS */;
INSERT INTO `hitzorduak` VALUES (1,1,'2025-01-16','10:00:00','12:00:00',NULL,NULL,'Pedro','111222333','Cortes','E',NULL,NULL,'2025-01-16 08:22:46','2025-01-16 08:22:46',NULL),(2,2,'2025-01-16','09:30:00','10:30:00',NULL,NULL,'pepa pig','777888999','tintar el pelo','K',NULL,NULL,'2025-01-16 12:16:47',NULL,'2025-01-16 12:44:52'),(3,1,'2025-01-17','09:30:00','10:00:00',NULL,NULL,'sss','888999777','ob','E',NULL,NULL,'2025-01-16 12:39:08',NULL,'2025-01-30 09:01:09'),(4,1,'2025-01-24','09:00:00','10:00:00',NULL,'09:48:24','sdfhvhv','111111','asfsad','E',NULL,40.00,'2025-01-24 08:36:39',NULL,'2025-01-24 08:36:58'),(5,1,'2025-01-24','09:00:00','10:30:00',NULL,'09:47:52','ddd','11111','cortes','E',5,40.00,'2025-01-24 09:08:30',NULL,NULL),(6,1,'2025-01-24','10:30:00','11:30:00',NULL,NULL,'ff','aaa','aaaa','K',NULL,NULL,'2025-01-24 11:46:09',NULL,NULL),(7,1,'2025-01-27','09:00:00','10:30:00',NULL,'09:09:04','sss','111111111','s','K',3,40.00,'2025-01-27 09:08:37',NULL,NULL),(8,2,'2025-01-27','10:30:00','12:30:00',NULL,'09:20:02','pepa','333333444','cortes gratis','E',8,50.00,'2025-01-27 09:19:04',NULL,NULL),(9,3,'2025-01-27','09:00:00','09:30:00',NULL,'09:41:49','aaa','111232233','hhh','K',9,25.00,'2025-01-27 09:41:22',NULL,NULL),(10,2,'2025-01-27','09:00:00','10:00:00',NULL,'09:59:31','pepe',NULL,'tintes','K',8,40.00,'2025-01-27 09:59:06',NULL,NULL),(11,2,'2025-01-27','10:00:00','10:30:00','10:04:14','10:04:30','ddd','4444444','fgggg','E',9,97.00,'2025-01-27 10:04:06',NULL,NULL),(12,3,'2025-01-27','09:30:00','10:00:00','10:15:46','10:15:56','prueba',NULL,'prueba2','K',8,35.00,'2025-01-27 10:15:31',NULL,NULL),(13,3,'2025-01-27','10:00:00','10:30:00','10:20:28','10:20:38','ddd',NULL,'ddd','K',8,84.00,'2025-01-27 10:20:19',NULL,NULL),(14,1,'2025-01-28','09:00:00','10:30:00','12:12:04','12:12:16','pedro','111222333','cortes','K',2,40.00,'2025-01-28 12:11:46',NULL,NULL),(15,1,'2025-02-06','09:00:00','10:00:00','11:07:25',NULL,'pepe','111222333','tycdytxcd','E',3,NULL,'2025-02-06 11:05:03',NULL,NULL),(16,1,'2025-02-06','10:00:00','11:00:00',NULL,NULL,'rfdsgt','s','srfg','K',NULL,NULL,'2025-02-06 11:05:40',NULL,'2025-02-06 11:05:46'),(17,1,'2025-02-06','10:00:00','10:30:00','11:25:26','11:27:08','f','f','f','E',8,40.00,'2025-02-06 11:25:05',NULL,NULL),(18,2,'2025-02-06','09:00:00','10:00:00','11:28:07','11:28:19','dsf','111111111','asfd','E',8,33.00,'2025-02-06 11:28:00',NULL,NULL),(19,3,'2025-02-06','09:00:00','09:30:00','13:10:44','13:10:58','aaa','111222333','aaa','K',8,15.00,'2025-02-06 13:10:20',NULL,NULL),(22,2,'2025-02-07','10:00:00','10:30:00',NULL,NULL,'prueba','999888777','crear','E',NULL,NULL,'2025-02-07 10:23:59',NULL,NULL),(23,3,'2025-02-07','09:00:00','09:30:00',NULL,NULL,'pruebas 2','111222333','pruebas','E',NULL,NULL,'2025-02-07 12:03:57',NULL,NULL),(24,1,'2025-02-10','09:00:00','10:30:00','09:37:52','09:38:08','aaa','333333444','555','K',3,28.00,'2025-02-10 09:00:41',NULL,NULL),(25,2,'2025-02-10','09:00:00','09:30:00','09:41:07','09:41:22','aa','123456789','a','K',9,25.00,'2025-02-10 09:40:56',NULL,NULL),(26,3,'2025-02-10','09:00:00','09:30:00','09:59:32','09:59:42','prueba','111222333','fdfd','K',9,25.00,'2025-02-10 09:59:24',NULL,NULL),(27,1,'2025-02-12','09:00:00','10:30:00',NULL,NULL,'pedro','112745879','por siu casa','K',NULL,NULL,'2025-02-12 08:39:46',NULL,NULL),(28,2,'2025-02-12','09:30:00','10:00:00',NULL,NULL,'dd','','dd','E',NULL,NULL,'2025-02-12 10:09:39',NULL,NULL),(29,3,'2025-02-12','11:00:00','12:00:00',NULL,NULL,'dd','','gggggg','E',NULL,NULL,'2025-02-12 10:11:17',NULL,NULL),(30,2,'2025-02-13','09:30:00','10:30:00','08:09:05','08:10:00','prueba','123456789','prueba','E',3,28.00,'2025-02-13 08:07:43',NULL,NULL);
/*!40000 ALTER TABLE `hitzorduak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kolore_historialak`
--

DROP TABLE IF EXISTS `kolore_historialak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kolore_historialak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bezeroa` int NOT NULL,
  `id_produktua` int NOT NULL,
  `data` date NOT NULL,
  `kantitatea` int DEFAULT NULL,
  `bolumena` varchar(100) DEFAULT NULL,
  `oharrak` varchar(250) DEFAULT NULL,
  `img_url` varchar(250) DEFAULT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kolore_historialak_produktuak` (`id_produktua`),
  KEY `FK_kolore_historialak_bezeroak` (`id_bezeroa`),
  CONSTRAINT `FK_kolore_historialak_bezeroak` FOREIGN KEY (`id_bezeroa`) REFERENCES `bezero_fitxak` (`id`),
  CONSTRAINT `FK_kolore_historialak_produktuak` FOREIGN KEY (`id_produktua`) REFERENCES `produktuak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kolore_historialak`
--

LOCK TABLES `kolore_historialak` WRITE;
/*!40000 ALTER TABLE `kolore_historialak` DISABLE KEYS */;
INSERT INTO `kolore_historialak` VALUES (1,1,2,'2025-01-28',3,'100','fff','hhhh','2025-01-28 10:35:18','2025-01-28 10:35:18','2025-01-30 08:52:07'),(6,1,1,'2025-01-30',8,'2 ml','fg',NULL,'2025-01-30 08:41:16',NULL,NULL),(7,1,2,'2025-01-30',5,'5 ml','swedgtw',NULL,'2025-01-30 08:41:16',NULL,'2025-01-30 08:52:07'),(8,1,4,'2025-01-30',5,'5 ml','ewgf',NULL,'2025-01-30 08:41:16',NULL,'2025-01-30 08:52:07'),(9,1,7,'2025-01-31',4,'4 ml','dfgrdsf',NULL,'2025-01-30 08:41:50',NULL,NULL),(10,1,2,'2025-01-30',3,'fgfd','sdgdf',NULL,'2025-01-30 08:43:09',NULL,NULL),(11,1,4,'2025-01-30',6,'hhh','dhret',NULL,'2025-01-30 08:52:07',NULL,NULL),(12,10,1,'2025-02-06',5,'5 ml','jhgfjhgtfd',NULL,'2025-02-06 10:48:46',NULL,'2025-02-06 10:49:35'),(13,10,8,'2025-02-12',4,'5 mljuyf','uydut',NULL,'2025-02-06 10:49:21',NULL,'2025-02-06 10:49:35'),(14,12,3,'2025-02-13',3,'5ml','good',NULL,'2025-02-13 08:12:57',NULL,'2025-02-13 08:13:12');
/*!40000 ALTER TABLE `kolore_historialak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `langileak`
--

DROP TABLE IF EXISTS `langileak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `langileak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(30) NOT NULL,
  `kodea` varchar(5) NOT NULL,
  `abizenak` varchar(100) NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_langileak_taldeak` (`kodea`),
  CONSTRAINT `FK_langileak_taldeak` FOREIGN KEY (`kodea`) REFERENCES `taldeak` (`kodea`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `langileak`
--

LOCK TABLES `langileak` WRITE;
/*!40000 ALTER TABLE `langileak` DISABLE KEYS */;
INSERT INTO `langileak` VALUES (1,'Julio','3pcc2','lopez','2025-01-15 08:42:40','2025-01-15 08:42:40',NULL),(2,'Alegra','3pcc2','martinez','2025-01-15 08:42:40','2025-01-15 08:42:40',NULL),(3,'Sergio','3pag2','Gonzalez','2025-01-15 08:42:40','2025-02-06 08:22:32',NULL),(4,'Alejandro','3pcc2','dominguez','2025-01-24 08:18:39','2025-01-24 08:18:39',NULL),(5,'Asier','3pcc2','fernandez','2025-01-24 08:18:39','2025-01-24 08:18:39',NULL),(6,'Luca','3pcc2','trueba','2025-01-24 08:18:39','2025-01-24 08:18:39',NULL),(7,'Imanol','3pcc2','prueba','2025-01-24 08:18:39','2025-01-24 08:18:39',NULL),(8,'julio','3pag2','cesar','2025-01-24 08:18:39','2025-01-24 08:18:39',NULL),(9,'Aratz','3pag2','lopez','2025-01-24 08:18:39','2025-01-24 08:18:39',NULL),(10,'Ander','3pag2','fernandez','2025-01-24 08:18:39','2025-01-24 08:18:39',NULL),(11,'prueba','3pcc1','prueba 1','2025-02-05 11:53:47',NULL,'2025-02-06 08:29:23'),(12,'Prueba alumno','3ddd2','Prueba Alumno','2025-02-06 08:26:11',NULL,'2025-02-06 08:29:42'),(13,'prueba ','ppppp','alkun','2025-02-06 10:40:57','2025-02-06 10:41:07','2025-02-06 10:41:17'),(14,'prueba2','3ddd2','ppp','2025-02-13 08:29:45','2025-02-13 08:29:50','2025-02-13 08:30:08');
/*!40000 ALTER TABLE `langileak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_kategoria`
--

DROP TABLE IF EXISTS `material_kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_kategoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(45) NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_kategoria`
--

LOCK TABLES `material_kategoria` WRITE;
/*!40000 ALTER TABLE `material_kategoria` DISABLE KEYS */;
INSERT INTO `material_kategoria` VALUES (1,'Planchas','2025-02-04 12:59:06',NULL,NULL),(2,'prueba','2025-02-06 10:53:52',NULL,'2025-02-06 10:54:18'),(3,'prueba','2025-02-06 10:54:35',NULL,'2025-02-06 10:58:44'),(4,'prueba2','2025-02-13 08:18:41',NULL,'2025-02-13 08:22:01');
/*!40000 ALTER TABLE `material_kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_maileguak`
--

DROP TABLE IF EXISTS `material_maileguak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_maileguak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_materiala` int NOT NULL,
  `id_langilea` int NOT NULL,
  `hasiera_data` datetime NOT NULL,
  `amaiera_data` datetime DEFAULT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_material_maileguak_langileak` (`id_langilea`),
  KEY `FK_material_maileguak_materialak` (`id_materiala`),
  CONSTRAINT `FK_material_maileguak_langileak` FOREIGN KEY (`id_langilea`) REFERENCES `langileak` (`id`),
  CONSTRAINT `FK_material_maileguak_materialak` FOREIGN KEY (`id_materiala`) REFERENCES `materialak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_maileguak`
--

LOCK TABLES `material_maileguak` WRITE;
/*!40000 ALTER TABLE `material_maileguak` DISABLE KEYS */;
INSERT INTO `material_maileguak` VALUES (1,2,1,'2025-02-04 13:00:18',NULL,'2025-02-04 13:00:18',NULL,NULL),(2,2,1,'2025-02-04 13:01:09',NULL,'2025-02-04 13:01:09',NULL,NULL),(3,1,3,'2025-02-06 10:59:14',NULL,'2025-02-06 10:59:14',NULL,NULL),(4,2,3,'2025-02-06 10:59:14','2025-02-06 10:59:38','2025-02-06 10:59:14',NULL,NULL),(5,3,3,'2025-02-13 08:24:30','2025-02-13 08:25:03','2025-02-13 08:24:30',NULL,NULL);
/*!40000 ALTER TABLE `material_maileguak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialak`
--

DROP TABLE IF EXISTS `materialak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materialak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `etiketa` varchar(10) NOT NULL,
  `izena` varchar(100) NOT NULL,
  `id_kategoria` int NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_material_kategoria_idx` (`id_kategoria`),
  CONSTRAINT `fk_material_kategoria` FOREIGN KEY (`id_kategoria`) REFERENCES `material_kategoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialak`
--

LOCK TABLES `materialak` WRITE;
/*!40000 ALTER TABLE `materialak` DISABLE KEYS */;
INSERT INTO `materialak` VALUES (1,'PLA001','Plancha kkk',1,'2025-02-04 12:59:37',NULL,NULL),(2,'PLA002','Plancha ',1,'2025-02-04 12:59:45',NULL,NULL),(3,'PLA003','Plancha ',1,'2025-02-04 12:59:49',NULL,NULL),(4,'pru001','pruebas',3,'2025-02-06 10:55:11',NULL,'2025-02-06 10:58:40'),(5,'pru001','prueba2',4,'2025-02-13 08:21:41',NULL,'2025-02-13 08:21:59');
/*!40000 ALTER TABLE `materialak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordutegiak`
--

DROP TABLE IF EXISTS `ordutegiak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordutegiak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `kodea` varchar(5) NOT NULL,
  `eguna` int NOT NULL,
  `hasiera_data` date NOT NULL,
  `amaiera_data` date NOT NULL,
  `hasiera_ordua` time NOT NULL,
  `amaiera_ordua` time NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ordutegiak_taldeak` (`kodea`),
  CONSTRAINT `FK_ordutegiak_taldeak` FOREIGN KEY (`kodea`) REFERENCES `taldeak` (`kodea`),
  CONSTRAINT `CK_ordutegiak_eguna` CHECK ((`eguna` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordutegiak`
--

LOCK TABLES `ordutegiak` WRITE;
/*!40000 ALTER TABLE `ordutegiak` DISABLE KEYS */;
INSERT INTO `ordutegiak` VALUES (1,'3pag2',1,'2025-01-01','2025-06-01','08:00:00','15:00:00','2025-01-22 11:58:01','2025-01-22 11:58:01',NULL),(2,'3pcc2',2,'2025-01-01','2025-06-01','08:00:00','15:00:00','2025-01-22 11:58:01','2025-01-22 11:58:01',NULL),(3,'3pag2',3,'2025-01-01','2025-06-01','08:00:00','15:00:00','2025-01-22 11:58:01','2025-01-22 11:58:01',NULL),(4,'3pag2',4,'2025-01-01','2025-06-01','08:00:00','15:00:00','2025-01-22 11:58:01','2025-01-22 11:58:01',NULL),(5,'3pcc2',5,'2025-01-01','2025-06-01','08:00:00','15:00:00','2025-01-22 11:58:01','2025-01-22 11:58:01','2025-02-06 09:01:06'),(6,'3ddd2',2,'2025-02-03','2025-02-21','08:00:00','14:00:00','2025-02-06 08:53:04','2025-02-06 07:53:39','2025-02-06 08:57:34'),(7,'3pcc1',3,'2025-02-06','2025-02-13','08:58:00','12:58:00','2025-02-06 08:58:17',NULL,'2025-02-06 08:58:33'),(8,'3pag2',5,'2025-01-30','2025-06-30','08:00:00','10:00:00','2025-02-06 09:03:44','2025-02-07 09:51:16',NULL),(9,'3ddd2',3,'2025-02-06','2025-02-06','10:43:00','12:43:00','2025-02-06 10:43:14','2025-02-06 09:44:06','2025-02-06 10:44:24'),(10,'3pag2',2,'2025-02-13','2025-02-28','08:30:00','15:30:00','2025-02-13 08:30:39','2025-02-13 07:30:49','2025-02-13 08:30:52');
/*!40000 ALTER TABLE `ordutegiak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produktu_kategoria`
--

DROP TABLE IF EXISTS `produktu_kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produktu_kategoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(100) NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktu_kategoria`
--

LOCK TABLES `produktu_kategoria` WRITE;
/*!40000 ALTER TABLE `produktu_kategoria` DISABLE KEYS */;
INSERT INTO `produktu_kategoria` VALUES (1,'Tintes','2025-01-10 12:06:15','2025-01-10 12:06:15',NULL),(2,'Champu','2025-01-10 12:20:21',NULL,NULL),(3,'Mechas','2025-01-14 12:15:48',NULL,NULL),(4,'hvgjyuhvyhju','2025-01-14 12:16:43',NULL,'2025-01-15 08:37:54'),(5,'Champus','2025-01-22 10:50:48',NULL,NULL),(6,'Gel','2025-01-30 09:07:24',NULL,NULL),(7,'prueba 2','2025-02-06 10:51:08',NULL,'2025-02-06 10:52:27'),(8,'prueba2','2025-02-13 08:25:34',NULL,'2025-02-13 08:26:23');
/*!40000 ALTER TABLE `produktu_kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produktu_mugimenduak`
--

DROP TABLE IF EXISTS `produktu_mugimenduak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produktu_mugimenduak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_produktua` int NOT NULL,
  `id_langilea` int NOT NULL,
  `data` datetime NOT NULL,
  `kopurua` int NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_produktu_mugimenduak_produktuak` (`id_produktua`),
  KEY `FK_produktu_mugimenduak_langileak` (`id_langilea`),
  CONSTRAINT `FK_produktu_mugimenduak_langileak` FOREIGN KEY (`id_langilea`) REFERENCES `langileak` (`id`),
  CONSTRAINT `FK_produktu_mugimenduak_produktuak` FOREIGN KEY (`id_produktua`) REFERENCES `produktuak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktu_mugimenduak`
--

LOCK TABLES `produktu_mugimenduak` WRITE;
/*!40000 ALTER TABLE `produktu_mugimenduak` DISABLE KEYS */;
INSERT INTO `produktu_mugimenduak` VALUES (1,1,3,'2025-01-15 09:16:31',1,'2025-01-15 10:32:05',NULL,NULL),(2,1,3,'2025-01-15 09:16:31',1,'2025-01-15 12:00:20',NULL,NULL),(3,1,3,'2025-01-15 09:16:31',1,'2025-01-15 12:30:07',NULL,NULL),(4,1,3,'2025-01-15 11:31:12',10,'2025-01-15 12:31:12',NULL,NULL),(5,2,3,'2025-01-15 11:31:12',5,'2025-01-15 12:31:12',NULL,NULL),(6,1,3,'2025-01-15 09:16:31',1,'2025-01-31 10:58:07',NULL,NULL),(7,1,3,'2025-01-15 09:16:31',2,'2025-01-31 10:58:39',NULL,NULL),(8,4,4,'2025-01-31 11:09:56',2,'2025-01-31 12:09:56',NULL,NULL),(9,1,4,'2025-01-31 11:09:56',2,'2025-01-31 12:09:56',NULL,NULL),(10,2,4,'2025-01-31 11:09:56',2,'2025-01-31 12:09:56',NULL,NULL),(11,1,3,'2025-02-06 09:53:01',5,'2025-02-06 10:53:01',NULL,NULL),(12,3,3,'2025-02-06 09:53:01',1,'2025-02-06 10:53:01',NULL,NULL),(13,1,3,'2025-02-13 07:26:45',2,'2025-02-13 08:26:45',NULL,NULL),(14,3,3,'2025-02-13 07:26:45',2,'2025-02-13 08:26:45',NULL,NULL);
/*!40000 ALTER TABLE `produktu_mugimenduak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produktuak`
--

DROP TABLE IF EXISTS `produktuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produktuak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(100) NOT NULL,
  `deskribapena` varchar(250) DEFAULT NULL,
  `id_kategoria` int NOT NULL,
  `marka` varchar(50) NOT NULL,
  `stock` int NOT NULL,
  `stock_alerta` int NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_produktuak_kategoriak` (`id_kategoria`),
  CONSTRAINT `FK_produktuak_kategoriak` FOREIGN KEY (`id_kategoria`) REFERENCES `produktu_kategoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produktuak`
--

LOCK TABLES `produktuak` WRITE;
/*!40000 ALTER TABLE `produktuak` DISABLE KEYS */;
INSERT INTO `produktuak` VALUES (1,'Tinte verde','Produktu magikoa',1,'tinte',75,5,'2025-01-10 12:06:56','2025-01-30 08:53:47',NULL),(2,'Tinte azul','Tinta el pelo de azul',1,'marka1',4,7,'2025-01-10 12:06:56','2025-02-05 12:24:49',NULL),(3,'Gel ','Produktu magikoa bai',1,'tinte',97,5,'2025-01-10 12:17:37','2025-01-30 08:53:47',NULL),(4,'Champu anticaspa','Te quita la caspa',2,'pantane',8,5,'2025-01-14 12:04:03',NULL,NULL),(5,'mech','ergger',3,'sesf',15,5,'2025-01-14 12:16:33',NULL,'2025-01-15 08:31:36'),(6,'prueba','prueba',3,'jjj',30,5,'2025-01-15 08:21:20','2025-01-15 08:21:20','2025-01-15 08:30:59'),(7,'Acondicionador','Produktu magikoa bai',1,'tinte',100,5,'2025-01-22 12:10:06','2025-01-30 08:53:47',NULL),(8,'Produktu 1','Produktu magikoa bai',1,'tinte',100,5,'2025-01-31 10:56:17',NULL,NULL),(9,'ggg','gggg',6,'gg',5,5,'2025-01-31 11:38:03',NULL,'2025-01-31 11:38:48'),(10,'prueba','prortjrtjuetyh',7,'sdf',5,6,'2025-02-06 10:52:05',NULL,'2025-02-06 10:52:23'),(11,'prueba2','pp',8,'ff',5,7,'2025-02-13 08:26:05',NULL,'2025-02-13 08:26:21');
/*!40000 ALTER TABLE `produktuak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taldeak`
--

DROP TABLE IF EXISTS `taldeak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taldeak` (
  `kodea` varchar(5) NOT NULL,
  `izena` varchar(100) DEFAULT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`kodea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taldeak`
--

LOCK TABLES `taldeak` WRITE;
/*!40000 ALTER TABLE `taldeak` DISABLE KEYS */;
INSERT INTO `taldeak` VALUES ('3ddd2','Tintes','2025-01-28 12:34:33',NULL,NULL),('3lll3','Desarrollo de aplicaciones multiplataforma f','2025-02-06 09:05:39','2025-02-13 08:29:04','2025-02-13 08:29:07'),('3pag2','Multimedia','2025-01-15 08:41:02','2025-01-15 08:41:02',NULL),('3pcc1','Pelu 1','2025-01-15 08:41:31','2025-01-15 08:41:31',NULL),('3pcc2','Pelu 2','2025-01-15 08:41:31','2025-01-15 08:41:31',NULL),('pdce3','lll','2025-02-05 11:52:18',NULL,'2025-02-05 11:53:11'),('ppppp','pruebas 2','2025-02-06 08:37:15','2025-02-06 10:40:37','2025-02-06 10:41:26'),('pruba','prueba','2025-02-13 08:29:24',NULL,'2025-02-13 08:29:33');
/*!40000 ALTER TABLE `taldeak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_lerroak`
--

DROP TABLE IF EXISTS `ticket_lerroak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_lerroak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_hitzordua` int NOT NULL,
  `id_zerbitzua` int NOT NULL,
  `prezioa` decimal(10,2) NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ticket_lerroak_hitzorduak` (`id_hitzordua`),
  KEY `FK_ticket_lerroak_zerbitzuak` (`id_zerbitzua`),
  CONSTRAINT `FK_ticket_lerroak_hitzorduak` FOREIGN KEY (`id_hitzordua`) REFERENCES `hitzorduak` (`id`),
  CONSTRAINT `FK_ticket_lerroak_zerbitzuak` FOREIGN KEY (`id_zerbitzua`) REFERENCES `zerbitzuak` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_lerroak`
--

LOCK TABLES `ticket_lerroak` WRITE;
/*!40000 ALTER TABLE `ticket_lerroak` DISABLE KEYS */;
INSERT INTO `ticket_lerroak` VALUES (2,7,1,10.00,'2025-01-27 09:15:05',NULL,NULL),(3,7,4,15.00,'2025-01-27 09:15:05',NULL,NULL),(4,7,2,15.00,'2025-01-27 09:15:05',NULL,NULL),(5,8,1,5.00,'2025-01-27 09:20:02',NULL,NULL),(6,8,4,10.00,'2025-01-27 09:20:02',NULL,NULL),(7,8,3,35.00,'2025-01-27 09:20:02',NULL,NULL),(8,9,1,10.00,'2025-01-27 09:41:49',NULL,NULL),(9,9,4,15.00,'2025-01-27 09:41:49',NULL,NULL),(10,5,1,10.00,'2025-01-27 09:42:41',NULL,NULL),(11,5,4,15.00,'2025-01-27 09:42:41',NULL,NULL),(12,5,2,15.00,'2025-01-27 09:42:41',NULL,NULL),(13,5,1,10.00,'2025-01-27 09:47:10',NULL,NULL),(14,5,4,15.00,'2025-01-27 09:47:10',NULL,NULL),(15,5,2,15.00,'2025-01-27 09:47:10',NULL,NULL),(16,5,1,10.00,'2025-01-27 09:47:52',NULL,NULL),(17,5,4,15.00,'2025-01-27 09:47:52',NULL,NULL),(18,5,2,15.00,'2025-01-27 09:47:52',NULL,NULL),(19,4,1,10.00,'2025-01-27 09:48:24',NULL,NULL),(20,4,4,15.00,'2025-01-27 09:48:24',NULL,NULL),(21,4,2,15.00,'2025-01-27 09:48:24',NULL,NULL),(22,10,2,15.00,'2025-01-27 09:59:31',NULL,NULL),(23,10,4,15.00,'2025-01-27 09:59:31',NULL,NULL),(24,10,1,10.00,'2025-01-27 09:59:31',NULL,NULL),(25,11,4,10.00,'2025-01-27 10:04:30',NULL,NULL),(26,11,2,10.00,'2025-01-27 10:04:30',NULL,NULL),(27,11,3,77.00,'2025-01-27 10:04:30',NULL,NULL),(28,12,2,15.00,'2025-01-27 10:15:56',NULL,NULL),(29,12,3,20.00,'2025-01-27 10:15:56',NULL,NULL),(30,13,1,10.00,'2025-01-27 10:20:38',NULL,NULL),(31,13,4,15.00,'2025-01-27 10:20:38',NULL,NULL),(32,13,2,15.00,'2025-01-27 10:20:38',NULL,NULL),(33,13,3,44.00,'2025-01-27 10:20:38',NULL,NULL),(34,14,1,10.00,'2025-01-28 12:12:16',NULL,NULL),(35,14,4,15.00,'2025-01-28 12:12:16',NULL,NULL),(36,14,2,15.00,'2025-01-28 12:12:16',NULL,NULL),(37,17,1,10.00,'2025-02-06 11:27:07',NULL,NULL),(38,17,4,15.00,'2025-02-06 11:27:07',NULL,NULL),(39,17,2,15.00,'2025-02-06 11:27:07',NULL,NULL),(40,18,1,5.00,'2025-02-06 11:28:19',NULL,NULL),(41,18,4,10.00,'2025-02-06 11:28:19',NULL,NULL),(42,18,3,8.00,'2025-02-06 11:28:19',NULL,NULL),(43,18,6,10.00,'2025-02-06 11:28:19',NULL,NULL),(44,19,1,10.00,'2025-02-06 13:10:58',NULL,NULL),(45,19,6,5.00,'2025-02-06 13:10:58',NULL,NULL),(46,24,1,5.00,'2025-02-10 09:38:08',NULL,NULL),(47,24,2,10.00,'2025-02-10 09:38:08',NULL,NULL),(48,24,6,10.00,'2025-02-10 09:38:08',NULL,NULL),(49,24,3,3.00,'2025-02-10 09:38:08',NULL,NULL),(50,25,1,5.00,'2025-02-10 09:41:22',NULL,NULL),(51,25,2,10.00,'2025-02-10 09:41:22',NULL,NULL),(52,25,6,10.00,'2025-02-10 09:41:22',NULL,NULL),(53,26,2,10.00,'2025-02-10 09:59:42',NULL,NULL),(54,26,4,10.00,'2025-02-10 09:59:42',NULL,NULL),(55,26,3,5.00,'2025-02-10 09:59:42',NULL,NULL),(56,30,1,5.00,'2025-02-13 08:10:00',NULL,NULL),(57,30,2,10.00,'2025-02-13 08:10:00',NULL,NULL),(58,30,6,10.00,'2025-02-13 08:10:00',NULL,NULL),(59,30,3,3.00,'2025-02-13 08:10:00',NULL,NULL);
/*!40000 ALTER TABLE `ticket_lerroak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `txandak`
--

DROP TABLE IF EXISTS `txandak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `txandak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mota` varchar(1) NOT NULL,
  `data` date NOT NULL,
  `id_langilea` int NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_txandak_langileak` (`id_langilea`),
  CONSTRAINT `FK_txandak_langileak` FOREIGN KEY (`id_langilea`) REFERENCES `langileak` (`id`),
  CONSTRAINT `CK_txandak_mota` CHECK ((`mota` in (_utf8mb4'G',_utf8mb4'M')))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txandak`
--

LOCK TABLES `txandak` WRITE;
/*!40000 ALTER TABLE `txandak` DISABLE KEYS */;
INSERT INTO `txandak` VALUES (1,'G','2025-02-13',3,'2025-02-13 08:15:56',NULL,NULL),(2,'G','2025-02-13',8,'2025-02-13 08:16:06',NULL,'2025-02-13 08:16:34'),(3,'M','2025-02-13',3,'2025-02-13 08:16:45',NULL,'2025-02-13 08:16:57'),(4,'M','2025-02-13',8,'2025-02-13 08:17:10',NULL,NULL);
/*!40000 ALTER TABLE `txandak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zerbitzu_kategoria`
--

DROP TABLE IF EXISTS `zerbitzu_kategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zerbitzu_kategoria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(45) NOT NULL,
  `kolorea` tinyint NOT NULL,
  `extra` tinyint NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zerbitzu_kategoria`
--

LOCK TABLES `zerbitzu_kategoria` WRITE;
/*!40000 ALTER TABLE `zerbitzu_kategoria` DISABLE KEYS */;
INSERT INTO `zerbitzu_kategoria` VALUES (1,'CORTES',0,0,'2025-01-24 09:51:21','2025-01-24 09:51:21',NULL),(2,'tinte',1,0,'2025-01-24 09:51:21','2025-01-24 09:51:21',NULL),(3,'extras',0,1,'2025-01-24 09:51:21','2025-01-24 09:51:21',NULL),(4,'Alisado',0,0,'2025-02-04 10:49:20',NULL,'2025-02-04 11:54:23'),(5,'Alisados',0,0,'2025-02-04 12:26:04',NULL,NULL),(6,'prueba 2',0,0,'2025-02-06 10:45:35',NULL,'2025-02-06 10:46:14'),(7,'prueba2',0,0,'2025-02-13 08:27:19',NULL,'2025-02-13 08:27:58');
/*!40000 ALTER TABLE `zerbitzu_kategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zerbitzuak`
--

DROP TABLE IF EXISTS `zerbitzuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zerbitzuak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `izena` varchar(100) NOT NULL,
  `etxeko_prezioa` decimal(10,2) NOT NULL,
  `kanpoko_prezioa` decimal(10,2) NOT NULL,
  `id_kategoria` int NOT NULL,
  `sortze_data` datetime DEFAULT CURRENT_TIMESTAMP,
  `eguneratze_data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ezabatze_data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zerbitzu_kategoria_idx` (`id_kategoria`),
  CONSTRAINT `fk_zerbitzu_kategoria` FOREIGN KEY (`id_kategoria`) REFERENCES `zerbitzu_kategoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zerbitzuak`
--

LOCK TABLES `zerbitzuak` WRITE;
/*!40000 ALTER TABLE `zerbitzuak` DISABLE KEYS */;
INSERT INTO `zerbitzuak` VALUES (1,'corte mediano',5.00,10.00,1,'2025-01-24 09:52:04','2025-01-24 10:08:00',NULL),(2,'tintar largo',10.00,15.00,2,'2025-01-24 09:52:04','2025-01-24 10:08:00',NULL),(3,'extra',0.00,0.00,3,'2025-01-24 09:52:04','2025-01-24 10:08:00',NULL),(4,'corte largo',10.00,15.00,1,'2025-01-24 10:08:52','2025-01-24 10:08:52',NULL),(5,'Alisado de pelo',5.00,10.00,4,'2025-02-04 10:50:01',NULL,'2025-02-04 11:54:20'),(6,'Alisado de pelo',10.00,5.00,5,'2025-02-04 12:26:25',NULL,NULL),(7,'pppkhv',6.00,3.00,6,'2025-02-06 10:45:53',NULL,'2025-02-06 10:46:11'),(8,'prueba2',2.00,5.00,7,'2025-02-13 08:27:36',NULL,'2025-02-13 08:27:56');
/*!40000 ALTER TABLE `zerbitzuak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-14 12:25:27
