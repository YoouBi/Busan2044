CREATE DATABASE  IF NOT EXISTS `busan` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `busan`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 192.168.0.112    Database: busan
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `statistics_ending`
--

DROP TABLE IF EXISTS `statistics_ending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics_ending` (
  `ending_id` int NOT NULL,
  `ending_name` varchar(45) DEFAULT NULL,
  `ending_headcount` int DEFAULT NULL,
  `ending_text` varchar(500) DEFAULT NULL,
  `ending_path` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`ending_id`),
  UNIQUE KEY `idstatistics_ending_UNIQUE` (`ending_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_ending`
--

LOCK TABLES `statistics_ending` WRITE;
/*!40000 ALTER TABLE `statistics_ending` DISABLE KEYS */;
INSERT INTO `statistics_ending` VALUES (1,'nomal1',7,'엔딩내용',NULL),(2,'nomal2',1,'여기다',NULL),(3,'nomal3',2,'입력중',NULL),(4,'nomal4',0,'테스트 테스트',NULL),(5,'badbad1',0,NULL,NULL),(6,'badbad2',0,NULL,NULL),(7,'badbad3',0,NULL,NULL),(8,'badbad4',NULL,NULL,NULL),(9,'real1',NULL,NULL,NULL),(10,'real2',NULL,NULL,NULL),(11,'real3',NULL,NULL,NULL),(12,'real4',NULL,NULL,NULL);
/*!40000 ALTER TABLE `statistics_ending` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-29 15:37:02
