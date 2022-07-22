CREATE DATABASE  IF NOT EXISTS `enemy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `enemy`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: enemy
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
-- Table structure for table `enemystatus`
--

DROP TABLE IF EXISTS `enemystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enemystatus` (
  `Enemy_id` int NOT NULL,
  `Enemy_name` varchar(10) DEFAULT NULL,
  `Life` int NOT NULL,
  `Item` varchar(20) DEFAULT NULL,
  `IniVar` int DEFAULT NULL,
  `Friendship_3_Script` varchar(45) DEFAULT NULL,
  `Friendship_2_Script` varchar(45) DEFAULT NULL,
  `Friendship_1_Script` varchar(45) DEFAULT NULL,
  `Friendship_0_Script` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Enemy_id`),
  UNIQUE KEY `Enemy_id_UNIQUE` (`Enemy_id`),
  UNIQUE KEY `Enemy_name_UNIQUE` (`Enemy_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enemystatus`
--

LOCK TABLES `enemystatus` WRITE;
/*!40000 ALTER TABLE `enemystatus` DISABLE KEYS */;
INSERT INTO `enemystatus` VALUES (10,'좀비',3,'11/12/21',1,'0','0','0','좀비는 내게 적대적이다'),(11,'다른 몬스터',3,'13/21/24',1,'0','0','0','다른 몬스터는 내게 적대적이다'),(20,'npc1',3,'13/21',3,'npc1은 내게 우호적이다','npc1은 나를 믿어야할지 고민하고 있는 것 같다','npc1은 나를 경계하고 있다','npc1은 내게 적대적이다'),(21,'npc2',3,'10/21/30',2,'npc2는 내게 우호적이다','npc2은 나를 믿어야할지 고민하고 있는 것 같다','npc2는 나를 경계하고 있다','npc2은 내게 적대적이다'),(30,'최종 보스',3,'77',0,'0','0','0','최종 보스는 내게 적대적이다');
/*!40000 ALTER TABLE `enemystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'enemy'
--

--
-- Dumping routines for database 'enemy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-22 14:11:40
