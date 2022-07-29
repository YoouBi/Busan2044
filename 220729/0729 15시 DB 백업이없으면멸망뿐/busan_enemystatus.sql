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
-- Table structure for table `enemystatus`
--

DROP TABLE IF EXISTS `enemystatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enemystatus` (
  `Enemy_id` int NOT NULL,
  `Enemy_name` varchar(10) DEFAULT NULL,
  `Life` int NOT NULL,
  `Enemy_power` int DEFAULT NULL,
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
INSERT INTO `enemystatus` VALUES (10,'할머니 좀비',2,0,'1/2/3',2,'할머니 좀비는 내게 관심이 없다.','할머니 좀비는 나의 존재를 인지하고 있다.','할머니 좀비는 나에게 달려들고 있다.','할머니 좀비는 초인적인 힘으로 나를 물어뜯으려 한다.'),(11,'할아버지 좀비',2,0,'1/2/3',1,'할아버지 좀비는 내게 관심이 없다.','할아버지 좀비는 나의 존재를 인지하고 있다.','할아버지 좀비는 나에게 달려들고 있다.','할아버지 좀비는 초인적인 힘으로 나를 물어뜯으려 한다.'),(12,'보통 좀비',3,1,'1/2/3',1,'좀비는 내게 관심이 없다.','좀비는 나의 존재를 인지하고 있다.','좀비가 내게 달려들고 있다.','좀비가 초인적인 힘으로 나를 물어뜯으려 한다.'),(13,'화난 일반인 좀비',3,1,'1/2/3',0,'좀비는 내게 관심이 없다.','좀비는 나의 존재를 인지하고 있다.','좀비가 내게 달려들고 있다.','좀비가 초인적인 힘으로 나를 물어뜯으려 한다.'),(21,'좀비 들개',2,1,'1/2/3',1,'좀비 들개는 내게 관심이 없는 것 같다.','좀비 들개는 허공을 킁킁거리고 있다.','좀비 들개가 이를 드러내고 그르렁 거린다.','좀비 들개가 나를 죽일 요량으로 물어뜯으려 한다.'),(22,'화난 좀비 멧돼지',7,3,'1/2/3',0,'좀비 멧돼지는 내게 관심이 없다.','좀비 멧돼지는 나와 시선을 교환하고 있다.','좀비 멧돼지가 날카로운 엄니로 나를 들이받으려 한다.','좀비 멧돼지가 나를 덮쳐 물어뜯으려 한다.'),(24,'좀비 새',1,2,'1/2/3',2,'좀비새는 내게 관심이 없다.','좀비새는 팔을 퍼덕거리며 까악거리고 있다.','좀비새가 나를 발톱으로 할퀴려 한다.','좀비새가 나를 덮쳐 물어뜯으려 한다.'),(25,'좀비 고양이',2,1,'1/2/3',1,'좀비고양이가 내게 관심을 잃고 식빵을 굽는다.','좀비 고양이가 꼬리를 세우고서 나를 노려본다.','좀비 고양이가 내게 하악질을 하고 있다.','좀비 고양이가 내게 덮쳐들고 있다.'),(31,'순찰중인 군인',5,4,'1/2/3',1,'군인은 나의 처우를 고민하고 있다.','군인은 나를 경계하고 있다.','군인이 내게 위협사격을 한다.','군인이 내게 총을 똑바로 겨눈다.'),(32,'껄렁한 군인',5,4,'1/2/3',2,'군인은 자신의 손익을 생각하고 있다.','군인은 나를 경계하고 있다.','군인이 내게 위협사격을 한다.','군인이 내게 총을 똑바로 겨눈다.');
/*!40000 ALTER TABLE `enemystatus` ENABLE KEYS */;
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
