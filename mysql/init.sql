CREATE DATABASE  IF NOT EXISTS `3pag2e2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `3pag2e2`;

-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: 3pag2e2
-- ------------------------------------------------------
-- Server version	8.0.42

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
INSERT INTO `bezero_fitxak` VALUES (1,'Pedro','Gomez','111222333','B','2025-01-28 10:18:28','2025-05-16 19:10:21',NULL),(2,'Anton','Benz','123456789','B','2025-01-28 12:50:19','2025-05-16 19:12:05','2025-01-30 09:01:49'),(3,'Lucy','Smith','111222333','B','2025-01-29 12:17:36','2025-05-16 19:12:05',NULL),(4,'Pablo','Motos','111222333','B','2025-02-06 10:48:00','2025-05-16 19:12:05','2025-02-06 10:49:36'),(5,'Asier','Gonzalez','123456789','E','2025-02-12 10:53:11','2025-05-16 19:12:05',NULL),(6,'Pepe','Viyuela','123456789','B','2025-02-13 08:11:14','2025-05-16 19:12:05','2025-02-13 08:13:25');
/*!40000 ALTER TABLE `bezero_fitxak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erabiltzaileak`
--

DROP TABLE IF EXISTS `erabiltzaileak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `erabiltzaileak` (
  `username` varchar(100) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hitzorduak`
--

LOCK TABLES `hitzorduak` WRITE;
/*!40000 ALTER TABLE `hitzorduak` DISABLE KEYS */;
INSERT INTO `hitzorduak` VALUES (1,1,'2025-01-16','10:00:00','12:00:00',NULL,NULL,'Pedro','111222333','Cortes','E',NULL,NULL,'2025-01-16 08:22:46','2025-01-16 08:22:46',NULL),(2,2,'2025-01-16','09:30:00','10:30:00',NULL,NULL,'Pepa','777888999','Tintar el pelo','K',NULL,NULL,'2025-01-16 12:16:47','2025-05-16 17:58:51','2025-01-16 12:44:52'),(3,1,'2025-05-14','11:00:00','11:30:00',NULL,NULL,'Asier','333222111','Tinte','E',NULL,NULL,'2025-05-15 20:54:47','2025-05-16 17:58:51',NULL),(4,1,'2025-05-16','14:40:00','16:10:00',NULL,NULL,'Alejandro Rivas',NULL,'Tinte, Corte largo','K',NULL,NULL,'2025-05-16 13:39:21','2025-05-16 17:58:51',NULL);
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
INSERT INTO `kolore_historialak` VALUES (1,1,1,'2025-01-30',8,'2 ml','Ile gorria',NULL,'2025-01-30 08:41:16','2025-05-16 17:50:10',NULL),(2,2,2,'2025-01-31',4,'4 ml','Ile horia',NULL,'2025-01-30 08:41:50','2025-05-16 19:12:12',NULL),(3,2,1,'2025-02-06',5,'5 ml','Ile berdea',NULL,'2025-02-06 10:48:46','2025-05-16 19:12:12','2025-02-06 10:49:35');
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
INSERT INTO `langileak` VALUES (1,'Julio','3pcc2','Lopez','2025-01-15 08:42:40','2025-05-16 19:07:06',NULL),(2,'Ana','3pcc2','Martinez','2025-01-15 08:42:40','2025-05-16 19:07:16',NULL),(3,'Sergio','3pag2','Gonzalez','2025-01-15 08:42:40','2025-02-06 08:22:32',NULL),(4,'Alejandro','3pcc2','Dominguez','2025-01-24 08:18:39','2025-05-16 19:07:06',NULL),(5,'Asier','3pcc2','Fernandez','2025-01-24 08:18:39','2025-05-16 19:07:06',NULL),(6,'Luca','3pcc2','Trueba','2025-01-24 08:18:39','2025-05-16 19:07:06',NULL),(7,'Imanol','3pcc2','Gomez','2025-01-24 08:18:39','2025-05-16 19:07:06',NULL),(8,'Julio','3pag2','Cesar','2025-01-24 08:18:39','2025-05-16 19:07:06',NULL),(9,'Aratz','3pag2','Lopez','2025-01-24 08:18:39','2025-05-16 19:07:06',NULL),(10,'Ander','3pag2','Fernandez','2025-01-24 08:18:39','2025-05-16 19:07:06',NULL);
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
INSERT INTO `material_kategoria` VALUES (1,'Planchas','2025-02-04 12:59:06',NULL,NULL),(2,'Tijeras','2025-02-06 10:53:52','2025-05-16 18:50:48','2025-02-06 10:54:18');
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
INSERT INTO `materialak` VALUES (1,'PLA001','Plancha 1',1,'2025-02-04 12:59:37','2025-05-16 18:50:33',NULL),(2,'PLA002','Plancha 2',1,'2025-02-04 12:59:45','2025-05-16 18:50:33',NULL),(3,'PLA003','Plancha 3',1,'2025-02-04 12:59:49','2025-05-16 18:50:33',NULL),(4,'TIJ001','Tijeras 1',2,'2025-02-06 10:55:11','2025-05-16 18:50:33','2025-02-06 10:58:40'),(5,'TIJ002','Tijeras 2',2,'2025-02-13 08:21:41','2025-05-16 18:50:33','2025-02-13 08:21:59');
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
INSERT INTO `produktu_kategoria` VALUES (1,'Tintes','2025-01-10 12:06:15','2025-01-10 12:06:15',NULL),(2,'Champus','2025-01-22 10:50:48','2025-05-16 18:57:55',NULL),(3,'Gel','2025-01-30 09:07:24','2025-05-16 18:57:55',NULL);
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
INSERT INTO `produktu_mugimenduak` VALUES (1,1,3,'2025-01-15 09:16:31',1,'2025-01-15 10:32:05',NULL,NULL),(2,1,3,'2025-01-15 09:16:31',1,'2025-01-15 12:00:20',NULL,NULL),(3,2,3,'2025-01-15 11:31:12',5,'2025-01-15 12:31:12','2025-05-16 18:54:27',NULL),(4,1,3,'2025-01-15 09:16:31',1,'2025-01-31 10:58:07','2025-05-16 18:54:27',NULL),(5,4,4,'2025-01-31 11:09:56',2,'2025-01-31 12:09:56','2025-05-16 18:54:27',NULL),(6,1,4,'2025-01-31 11:09:56',2,'2025-01-31 12:09:56','2025-05-16 18:54:27',NULL),(7,2,4,'2025-01-31 11:09:56',2,'2025-01-31 12:09:56','2025-05-16 18:54:27',NULL),(8,1,3,'2025-02-06 09:53:01',5,'2025-02-06 10:53:01','2025-05-16 18:54:27',NULL),(9,3,3,'2025-02-06 09:53:01',1,'2025-02-06 10:53:01','2025-05-16 18:54:27',NULL),(10,1,3,'2025-02-13 07:26:45',2,'2025-02-13 08:26:45','2025-05-16 18:54:27',NULL),(11,3,3,'2025-02-13 07:26:45',2,'2025-02-13 08:26:45','2025-05-16 18:54:27',NULL);
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
INSERT INTO `produktuak` VALUES (1,'Tinte verde','Produktu magikoa',1,'tinte',75,5,'2025-01-10 12:06:56','2025-01-30 08:53:47',NULL),(2,'Tinte azul','Tinta el pelo de azul',1,'marka1',4,7,'2025-01-10 12:06:56','2025-02-05 12:24:49',NULL),(3,'Gel ','Produktu magikoa bai',3,'tinte',97,5,'2025-01-10 12:17:37','2025-05-16 18:58:32',NULL),(4,'Champu anticaspa','Te quita la caspa',2,'pantene',8,5,'2025-01-14 12:04:03','2025-05-16 18:58:32',NULL),(5,'Acondicionador','Produktu magikoa bai',2,'tinte',100,5,'2025-01-22 12:10:06','2025-05-16 18:58:32',NULL);
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
INSERT INTO `taldeak` VALUES ('3ddd2','Tintes','2025-01-28 12:34:33',NULL,NULL),('3pag2','Desarrollo de aplicaciones multiplataforma','2025-01-15 08:41:02','2025-05-16 19:10:45',NULL),('3pcc1','Pelu 1','2025-01-15 08:41:31','2025-01-15 08:41:31',NULL),('3pcc2','Pelu 2','2025-01-15 08:41:31','2025-01-15 08:41:31',NULL);
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
INSERT INTO `ticket_lerroak` VALUES (1,1,1,10.00,'2025-01-27 09:15:05','2025-05-16 17:57:48',NULL),(2,2,2,15.00,'2025-01-27 10:20:38','2025-05-16 17:58:29',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `txandak`
--

LOCK TABLES `txandak` WRITE;
/*!40000 ALTER TABLE `txandak` DISABLE KEYS */;
INSERT INTO `txandak` VALUES (1,'G','2025-02-13',3,'2025-02-13 08:15:56',NULL,NULL),(2,'G','2025-02-13',8,'2025-02-13 08:16:06',NULL,'2025-02-13 08:16:34'),(3,'M','2025-02-13',3,'2025-02-13 08:16:45',NULL,'2025-02-13 08:16:57'),(4,'M','2025-02-13',8,'2025-02-13 08:17:10',NULL,NULL),(5,'M','2025-05-16',9,'2025-05-16 14:19:02',NULL,NULL);
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
INSERT INTO `zerbitzu_kategoria` VALUES (1,'Cortes',0,0,'2025-01-24 09:51:21','2025-05-16 18:00:47',NULL),(2,'Tinte',1,0,'2025-01-24 09:51:21','2025-05-16 18:00:47',NULL),(3,'Alisados',0,0,'2025-02-04 12:26:04','2025-05-16 18:02:37',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zerbitzuak`
--

LOCK TABLES `zerbitzuak` WRITE;
/*!40000 ALTER TABLE `zerbitzuak` DISABLE KEYS */;
INSERT INTO `zerbitzuak` VALUES (1,'Corte mediano',5.00,10.00,1,'2025-01-24 09:52:04','2025-05-16 13:08:18',NULL),(2,'Tinte rubio',10.00,15.00,2,'2025-01-24 09:52:04','2025-05-16 18:02:06',NULL),(4,'Corte largo',10.00,15.00,1,'2025-01-24 10:08:52','2025-05-16 13:08:18',NULL),(5,'Alisado de pelo',5.00,10.00,3,'2025-02-04 10:50:01','2025-05-16 18:02:44','2025-02-04 11:54:20'),(6,'Mechas',5.00,12.00,2,'2025-02-04 10:50:01','2025-05-16 18:02:06','2025-02-04 11:54:20');
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

-- Dump completed on 2025-05-16 19:13:46
