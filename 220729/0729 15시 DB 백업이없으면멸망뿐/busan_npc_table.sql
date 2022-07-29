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
-- Table structure for table `npc_table`
--

DROP TABLE IF EXISTS `npc_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `npc_table` (
  `npc_id` int NOT NULL AUTO_INCREMENT,
  `npc_name` varchar(45) NOT NULL,
  `npc_skill` int DEFAULT NULL,
  `npc_img` blob,
  `npc_memo` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`npc_id`),
  UNIQUE KEY `npc_id_UNIQUE` (`npc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_table`
--

LOCK TABLES `npc_table` WRITE;
/*!40000 ALTER TABLE `npc_table` DISABLE KEYS */;
INSERT INTO `npc_table` VALUES (1,'한주탈',NULL,NULL,'밤에만 나타나는 부패한 군인'),(2,'최예림',NULL,NULL,'사랑해요'),(3,'금수잔',NULL,NULL,'고위층자녀'),(4,'장주먹',8,NULL,'천년에 한번 나온다는 살.골'),(5,'전판례',7,NULL,'책은 판례상 흉기가 아니다'),(6,'도독놈',NULL,NULL,'문따개'),(7,'고모리',2,NULL,'흩날려라 천.본.앵'),(8,'한은둔',NULL,NULL,'힉힉호모리'),(9,'쿠키',NULL,NULL,'귀여운 강아지');
/*!40000 ALTER TABLE `npc_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-29 15:37:04
