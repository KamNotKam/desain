-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_tokobuku
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `tdetailmasterbuku`
--

DROP TABLE IF EXISTS `tdetailmasterbuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdetailmasterbuku` (
  `IdBuku` varchar(15) NOT NULL,
  `IdSupplier` varchar(20) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Diskon` varchar(45) DEFAULT NULL,
  `CostPrice` int(11) DEFAULT NULL,
  `InStock` int(11) DEFAULT NULL,
  `GenreBuku` varchar(50) DEFAULT NULL,
  `IdPenerbit` varchar(15) DEFAULT NULL,
  `NamaPenerbit` varchar(45) DEFAULT NULL,
  `HalamanBuku` int(11) DEFAULT NULL,
  `IdAuthor` varchar(45) DEFAULT NULL,
  `NegaraAuthor` varchar(45) DEFAULT NULL,
  `NamaAuthor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`IdBuku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tdetailmasterbuku`
--

LOCK TABLES `tdetailmasterbuku` WRITE;
/*!40000 ALTER TABLE `tdetailmasterbuku` DISABLE KEYS */;
/*!40000 ALTER TABLE `tdetailmasterbuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tkategori`
--

DROP TABLE IF EXISTS `tkategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tkategori` (
  `IdKategori` varchar(15) NOT NULL,
  `NamaKategoriBuku` varchar(50) DEFAULT NULL,
  `GenreBuku` varchar(50) DEFAULT NULL,
  `IdBuku` varchar(15) DEFAULT NULL,
  `Rak` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IdKategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tkategori`
--

LOCK TABLES `tkategori` WRITE;
/*!40000 ALTER TABLE `tkategori` DISABLE KEYS */;
/*!40000 ALTER TABLE `tkategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmasterbuku`
--

DROP TABLE IF EXISTS `tmasterbuku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmasterbuku` (
  `IDBuku` varchar(15) NOT NULL,
  `NamaBuku` varchar(50) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `Rak` varchar(15) DEFAULT NULL,
  `IdKategori` varchar(15) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `IdPenerbit` varchar(15) DEFAULT NULL,
  `NamaPenerbit` varchar(45) DEFAULT NULL,
  `HalamanBuku` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDBuku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmasterbuku`
--

LOCK TABLES `tmasterbuku` WRITE;
/*!40000 ALTER TABLE `tmasterbuku` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmasterbuku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpenerbit`
--

DROP TABLE IF EXISTS `tpenerbit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpenerbit` (
  `IdPenerbit` varchar(15) NOT NULL,
  `NamaPenerbit` varchar(45) DEFAULT NULL,
  `Kota` varchar(45) DEFAULT NULL,
  `Negara` varchar(45) DEFAULT NULL,
  `TahunBerdiri` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdPenerbit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpenerbit`
--

LOCK TABLES `tpenerbit` WRITE;
/*!40000 ALTER TABLE `tpenerbit` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpenerbit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tpenulis`
--

DROP TABLE IF EXISTS `tpenulis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tpenulis` (
  `IdAuthor` varchar(45) NOT NULL,
  `NamaAuthor` varchar(50) DEFAULT NULL,
  `NegaraAuthor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdAuthor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tpenulis`
--

LOCK TABLES `tpenulis` WRITE;
/*!40000 ALTER TABLE `tpenulis` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpenulis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trak`
--

DROP TABLE IF EXISTS `trak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trak` (
  `Rak` varchar(15) NOT NULL,
  `IdKategori` varchar(15) DEFAULT NULL,
  `NamaBuku` varchar(50) DEFAULT NULL,
  `GenreBuku` varchar(50) DEFAULT NULL,
  `NamaKategoriBuku` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Rak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trak`
--

LOCK TABLES `trak` WRITE;
/*!40000 ALTER TABLE `trak` DISABLE KEYS */;
/*!40000 ALTER TABLE `trak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tsupplier`
--

DROP TABLE IF EXISTS `tsupplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tsupplier` (
  `IdSupplier` varchar(20) NOT NULL,
  `NamaSupplier` varchar(45) DEFAULT NULL,
  `KotaSupplier` varchar(45) DEFAULT NULL,
  `Harga` int(11) DEFAULT NULL,
  `JumlahBuku` int(11) DEFAULT NULL,
  PRIMARY KEY (`IdSupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tsupplier`
--

LOCK TABLES `tsupplier` WRITE;
/*!40000 ALTER TABLE `tsupplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsupplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-14 19:31:46
