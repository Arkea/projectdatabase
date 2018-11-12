-- MySQL dump 10.16  Distrib 10.1.36-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: barang
-- ------------------------------------------------------
-- Server version	10.1.36-MariaDB

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(18) NOT NULL,
  `merk` varchar(13) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(7) NOT NULL,
  PRIMARY KEY (`id_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barang`
--

LOCK TABLES `barang` WRITE;
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` VALUES (1001,'sabun batang mandi','lifeboy',3000,0),(1002,'sabun batang mandi','nuvo',2000,0),(1003,'sabun batang mandi','giv',2000,0),(1004,'sabun batang mandi','citra',2000,0),(1005,'sabun batang mandi','lux',3500,0),(2001,'deterjen','rinso',5000,0),(2002,'deterjen','soklin',4500,0),(2003,'deterjen','daia',4500,0),(2004,'deterjen','attack',5000,0),(3001,'kopi','fresko susu',9000,0),(3002,'kopi','top susu',9000,0),(3003,'kopi','torabika susu',9500,0),(3004,'kopi','abc susu',10000,0),(4001,'kopi hitam','kapal api',22500,0),(4002,'kopi hitam','luwak',22500,0),(4003,'kopi hitam','top murni',9500,0),(5001,'obat masak','royco',4500,0),(5002,'obat masak','masako',4500,0),(5003,'obat masak','sajiku',18000,0),(6001,'sirup','agung',17000,0),(6002,'sirup','marjan',22000,0),(7001,'minyak','hemart',11500,0),(7002,'minyak','sovia',12000,0),(8001,'sembako','gula',9500,0),(8002,'sembako','tepung terigu',6000,0),(8003,'sembako','garam',3000,0),(8004,'sembako','telur',19000,0),(8005,'sembako','patioka',10500,0),(8006,'sembako','beras',9500,0),(9001,'kecap','bango',3000,0),(9002,'kecap','babon',9500,0),(9003,'kecap','sedapp',7000,0),(10001,'saus','indofood',5500,0),(11001,'mie instan','indomie',2500,0),(11002,'mie instan','sedap',2500,0);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rekap`
--

DROP TABLE IF EXISTS `rekap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rekap` (
  `tanggal` date NOT NULL,
  `id_barang` int(11) NOT NULL,
  `total_masuk` int(7) NOT NULL,
  `total_keluar` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekap`
--

LOCK TABLES `rekap` WRITE;
/*!40000 ALTER TABLE `rekap` DISABLE KEYS */;
/*!40000 ALTER TABLE `rekap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `struk`
--

DROP TABLE IF EXISTS `struk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `struk` (
  `no_struk` int(7) NOT NULL,
  `tanggal` date NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah_barang` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `struk`
--

LOCK TABLES `struk` WRITE;
/*!40000 ALTER TABLE `struk` DISABLE KEYS */;
/*!40000 ALTER TABLE `struk` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-11 16:34:54
