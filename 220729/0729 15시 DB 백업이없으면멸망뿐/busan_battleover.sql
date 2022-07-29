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
-- Table structure for table `battleover`
--

DROP TABLE IF EXISTS `battleover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battleover` (
  `Enemy_id` int NOT NULL,
  `FriendScript` varchar(45) DEFAULT NULL,
  `RunAwayScript` varchar(45) DEFAULT NULL,
  `WinScript` varchar(45) DEFAULT NULL,
  `LoseScript` varchar(45) DEFAULT NULL,
  `NomalScript` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Enemy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battleover`
--

LOCK TABLES `battleover` WRITE;
/*!40000 ALTER TABLE `battleover` DISABLE KEYS */;
INSERT INTO `battleover` VALUES (10,'할머니 좀비는 내게 관심을 잃고 떠났다.','할머니 좀비에게서 도망쳤다.','할머니 좀비를 죽였다.','할머니 좀비는 예상외로 강력했다. 물어뜯겨 목숨을 잃었다.','간신히 할머니 좀비에게서 도망칠 수 있었다.'),(11,'할아버지 좀비는 내게 관심을 잃고 떠났다.','할아버지 좀비에게서 도망쳤다.','할아버지 좀비를 죽였다.','할아버지 좀비는 예상외로 강력했다. 물어뜯겨 목숨을 잃었다.','간신히 할아버지 좀비에게서 도망칠 수 있었다.'),(12,'좀비는 내게 관심을 잃고 떠났다.','좀비에게서 도망쳤다.','좀비를 죽였다.','좀비에게 물어뜯겨 목숨을 잃었다.','간신히 좀비에게서 도망칠 수 있었다.'),(13,'화난 좀비는 내게 관심을 잃고 떠났다.','화난 좀비에게서 도망쳤다.','화난 좀비를 죽였다.','화난 좀비에게 물어뜯겨 목숨을 잃었다.','간신히 화난 좀비에게서 도망칠 수 있었다.'),(21,'좀비 들개가 다른 곳으로 달려갔다.','좀비 들개에게서 도망쳤다.','좀비 들개를 죽였다.','좀비 들개에게 물어뜯겨 목숨을 잃었다.','간신히 좀비 들개에게서 도망칠 수 있었다.'),(22,'화난 좀비 멧돼지가 만족하여 떠났다.','화난 좀비 멧돼지에게서 도망쳤다.','화난 좀비 멧돼지를 죽였다.','좀비 멧돼지의 엄니에 복부가 뚫려 목숨을 잃었다.','간신히 화난 좀비멧돼지에게서 도망칠 수 있었다.'),(24,'좀비 새가 그냥 날아가버렸다.','좀비새에게서 도망쳤다.','좀비 새를 죽였다.','좀비새에게 물어뜯겨 목숨을 잃었다.','좀비새에게서 간신히 도망쳤다.'),(25,'좀비 고양이가 훌쩍 떠나갔다.','좀비고양이에게서 도망쳤다.','좀비 고양이를 죽였다.','좀비고양이에게 물어뜯겨 목숨을 잃었다.','좀비고양이에게서 간신히 도망쳤다.'),(31,'순찰중인 군인이 날 놓아주었다.','순찰하던 군인에게서 도망쳤다.','순찰 중이었던 군인을 죽였다.','군인은 겨누고 있던 총을 발포하였고, 총알이 내 심장을 관통했다.','순찰하던 군인과 대치하다 간신히 도망쳤다.'),(32,'껄렁해보이는 군인이 날 놓아주었다.','껄렁한 군인에게서 도망쳤다.','껄렁한 군인을 죽였다.','껄렁한 군인은 겨누고 있던 총을 발포하였고, 총알이 내 심장을 관통했다.','껄렁한 군인과 대치하다 간신히 도망쳤다.');
/*!40000 ALTER TABLE `battleover` ENABLE KEYS */;
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
