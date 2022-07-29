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
-- Table structure for table `item_table`
--

DROP TABLE IF EXISTS `item_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_table` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_code` varchar(10) NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `item_rare` int NOT NULL DEFAULT '0',
  `item_durability` int NOT NULL DEFAULT '1',
  `item_count` int NOT NULL DEFAULT '1',
  `item_nodeal` tinyint NOT NULL DEFAULT '0',
  `item_hp` int NOT NULL DEFAULT '0',
  `item_mental` int NOT NULL DEFAULT '0',
  `item_img` varchar(100) DEFAULT NULL,
  `item_memo` varchar(450) DEFAULT NULL,
  `item_breakmessage` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `item_id_UNIQUE` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=902 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_table`
--

LOCK TABLES `item_table` WRITE;
/*!40000 ALTER TABLE `item_table` DISABLE KEYS */;
INSERT INTO `item_table` VALUES (1,'wpn','복숭아나무몽둥이',2,2,1,0,0,0,'020.png','복숭아 향이 희미하게 남아있는 나뭇가지',NULL),(2,'wpn','30센치 쇠 자',0,9999,1,0,0,0,'011.png','30센치 쇠 자',NULL),(3,'wpn','주먹',0,9999,1,1,0,0,'016.png','단단한 주먹',NULL),(4,'wpn','권총',4,2,1,0,0,0,'028.png','권총, 생각보다 가볍다.',NULL),(5,'wpn','효자손',1,1,1,0,0,0,'002.png','할머니가 가지고 다니시던 효자손',NULL),(6,'wpn','자동소총',5,3,1,0,0,0,'026.png','자동소총',NULL),(7,'wpn','법전',0,5,1,0,0,0,'019.png','굉장히 두껍다. 모서리로 때리면 큰일날듯...',NULL),(8,'wpn','살골',0,9999,1,1,0,0,'017.png','살골',NULL),(9,'rcv','육포',1,0,1,0,2,0,'015.png','너무 딱딱하지 않아 맛있어보이는 육포',NULL),(10,'rcv','건빵',1,0,1,0,1,0,'018.png','눅눅해진 건빵이다',NULL),(11,'rcv','박카스',1,0,1,0,0,1,'025.png','원샷하면 정신이 맑아질거같다.',NULL),(12,'rcv','가족사진',1,0,9999,1,0,0,'007.png','우리 가족사진',NULL),(13,'rcv','생수',4,0,1,0,1,0,'014.png','삼다수, 물배가 찰거같다.',NULL),(14,'rcv','통조림',2,0,1,0,2,0,'027.png','동원 고추참치 통조림, 밥에 비벼먹고싶다.',NULL),(15,'rcv','커피가루',5,0,1,0,0,2,'003.png','카페인이 가득 담겨있을거 같다.',NULL),(16,'rcv','알사탕',5,0,1,0,0,5,'001.png','알사탕',NULL),(17,'rcv','침낭',3,0,1,0,0,1,'004.png','깊은 잠을 잘 수 있도록 도와줄거 같다.',NULL),(18,'evt','감기약',2,0,1,0,0,0,'013.png','감기약',NULL),(19,'evt','붕대',1,0,1,0,0,0,'006.png','상처를 치료해줄 사람 어디 없나',NULL),(20,'evt','q',3,0,1,0,0,0,'001.png','x',NULL),(21,'evt','w',4,0,1,0,0,0,'001.png','x',NULL),(22,'evt','e',5,0,1,0,0,0,'001.png','x',NULL),(23,'wpn','몽둥이',3,1,1,0,0,0,'021.png','흔히 볼 수 있는 나뭇가지인거같다',NULL);
/*!40000 ALTER TABLE `item_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-29 15:37:03
