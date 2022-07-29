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
-- Table structure for table `origin_chapter1_choice`
--

DROP TABLE IF EXISTS `origin_chapter1_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `origin_chapter1_choice` (
  `choiceId` int NOT NULL,
  `choiceNum` varchar(20) NOT NULL,
  `choiceMain` varchar(1000) NOT NULL,
  `check` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`choiceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origin_chapter1_choice`
--

LOCK TABLES `origin_chapter1_choice` WRITE;
/*!40000 ALTER TABLE `origin_chapter1_choice` DISABLE KEYS */;
INSERT INTO `origin_chapter1_choice` VALUES (1,'1-4-1','나도 군인에게 궁금한 것을 질문한다.',''),(2,'1-4-2','다른 사람들이 질문하고 답변하는 것을 조용히 듣고있는다.',''),(3,'1-4-3','다른 사람이 질문하는 틈에 슬쩍 주위를 더 살핀다.',''),(4,'1-4-4','함께 온 대피소 사람들이 다친 곳은 없는지 살펴본다.',''),(5,'2-2-1','붕대로 발목을 고정시켜준다.',''),(6,'2-2-2','괜찮냐고 물어만본다.',''),(7,'3-2-1','왕년에 주먹 꽤나 썼다는 \"살골\" 장주먹 할아버지','장주먹'),(8,'3-2-2','한때 내가 제일 잘나가를 찍었다는 전판례 할머니','전판례'),(9,'3-2-3','이런 사람과 한 조라도 괜찮을까? 도독놈 아저씨','도독놈'),(10,'3-2-4','나와 다른 세계에 살고있는 것 같은 고모리','고모리'),(11,'3-2-5','TV출연이 보증하는 숨바꼭질 능력자 한은둔 할아버지','한은둔'),(12,'5-1-1','5-1-1','전투'),(13,'5-1-2','5-1-2','전투'),(14,'6-1-1','안전추구! 그냥 밖으로 나간다.',''),(15,'6-1-2','만반의 준비를 해야지! 군인들의 보급품 창고처럼 보이는 저곳을 털어보자!',''),(16,'6-1-3','혹시 근처에 쓸만한 게 없을까? 안전해보이는 곳에서만 쓸만한 걸 가져간다.',''),(17,'6-2-1','잭나이프를 사용해서 어떻게 해볼 수 있지 않을까? (잭나이프 있어야만 활성)',''),(18,'6-2-2','문을 딸 수 있는 기술이 있으면 완전 쉽지! (신청원 아저씨가 있어야만 활성)',''),(19,'6-2-3','철문이 생각보다 느슨해보인다. 몸으로 밀어부쳐보자!',''),(20,'6-2-4','다른 안전한 길로 나가보자.',''),(21,'7-1-1','7-1-1','조건(확률)'),(22,'7-1-2','7-1-2','조건(확률)'),(23,'7-3-1','그래도 할머니가 아는 사람인데... 말리지 말자',''),(24,'7-3-2','아니야! 뭔가 이상해... 사라졌던 할머니잖아!',''),(25,'7-8-1','어쩔수없어... 우리 식량도 모자라서...','조건'),(26,'7-8-2','(식량) 이런 작은 강아지를 그냥 지나칠 순 없지.','조건');
/*!40000 ALTER TABLE `origin_chapter1_choice` ENABLE KEYS */;
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
