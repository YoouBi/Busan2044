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
-- Table structure for table `achievements_table`
--

DROP TABLE IF EXISTS `achievements_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements_table` (
  `AchvId` int NOT NULL,
  `AchvName` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `AchvText` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`AchvId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements_table`
--

LOCK TABLES `achievements_table` WRITE;
/*!40000 ALTER TABLE `achievements_table` DISABLE KEYS */;
INSERT INTO `achievements_table` VALUES (0,'개발자는 코딩코딩','GM 칭호'),(1,'개죽음을 당한','튜토리얼도 못 깬 당신... 걱정하지 마세요! 비록 튜토리얼은 깨지 못했지만 업적 하나는 달성했으니까요!'),(2,'좀비와 첫만남',''),(3,'좀비의 동료가 된','좀비에게 99번 죽임을 당했군요.'),(4,'모든 동료를 모은','이 게임을 여러번 플레이하여 모든 동료와 함께해보았습니다!'),(5,'모든 적을 마주친','~ 카운트 가능하면 ~'),(6,'모든 세계선을 탐험한','모든 엔딩을 보셨군요!'),(7,'npc에게 죽임을 당한','앗! 야생의 npc가 튀어나왔다!'),(8,'어딘가의 효자','멧돼지는 당신의 등 긁는 솜씨에 매우 만족한 것 같습니다!');
/*!40000 ALTER TABLE `achievements_table` ENABLE KEYS */;
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
