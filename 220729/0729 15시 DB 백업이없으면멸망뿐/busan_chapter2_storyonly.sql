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
-- Table structure for table `chapter2_storyonly`
--

DROP TABLE IF EXISTS `chapter2_storyonly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapter2_storyonly` (
  `StoryId` int NOT NULL,
  `StoryNum` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `StoryMain` varchar(1500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `StoryTime` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `check` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`StoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter2_storyonly`
--

LOCK TABLES `chapter2_storyonly` WRITE;
/*!40000 ALTER TABLE `chapter2_storyonly` DISABLE KEYS */;
INSERT INTO `chapter2_storyonly` VALUES (1,'1','쓸만한 것이 없나 찾아보던 중,\n꽤 오래 방치된 것 같은 차를 발견했다.\n\n안에 쓸만한 것이 있을지도 모른다.\n한 번 만져볼까?','낮','선택지'),(2,'2','방치된 커다란 폐건물을 발견했다.\n흉물스럽게 떨어진 커다란 간판을 보니\n예전에 카페를 하던 곳이었던 것 같다.\n\n찾아보면 쓸만한 게 많지 않을까?\n하지만 위험한 게 많을수도...\n내부는 깜깜해서 아무것도 보이지 않는다.','낮','선택지'),(3,'3','점점 가을로 접어들어가서 그런지\n날이 차고 쌀쌀하다.\n\n그 와중에 비가 내린다.\n마땅히 비를 피할만한 곳이 보이지 않는다.\n\n어떻게 하지?','낮','선택지'),(4,'4','\"살려줘! 사람 살려!\"\n\n좀비가 아닌 사람이 있다!\n군인이다.\n\n어디에 물린 것 같은 상처가 심하다.\n\n\"나, 나는, 좀비에게 물린 게 아니야!\n그냥 좀 도와줘!\"\n\n이 군인의 말을 믿을 수 있을까?','낮','선택지'),(5,'5','다른 곳과 달리\n땅이 눈에 띄게 불룩 솟아오른 곳이 있다.\n\n안에 뭐가있는걸까?\n한 번 파볼까?','낮','선택지'),(6,'6','이리저리 돌아다니다가\n주택 몇 채가 모여있는 곳을 발견했다.\n\n이 집들을 하나하나 살펴보면\n시간은 많이 걸리지만,\n생존에 필요한 물건들을 많이 모을 수 있을 것 같다.\n\n어떻게 할까?','낮','선택지'),(7,'9','빈 집이나 빈 건물을 뒤져보고 있는데,\n어디서 부스럭 거리는 소리가 들린다.\n좀비인가?','낮','선택지'),(8,'11','(GM스푸키)\n새출발을 시작하는 아침이다.\n을숙도 탈출하기\n오늘부터 1일차!\n\n씩씩하게 거처의 문을 열고 나섰다.\n갑자기 하늘에서 빛줄기가 내려온다.\n어라? 이거 있었던 일 같은데?\n\n\"안녕하세요~\nGM 스푸키에요!\n당신의 새출발을 응원해!\n\n아이템과 인벤토리 기능에\n공을 많이 들였으니까!\n자주 자주 이용해주세요!\n\n아 그리고, 상점 아저씨랑 꼭!\n잘 되시길 바랄게요!\n거긴 게임 속의 미니게임으로\n미연시를 만들어뒀다구!\"\n\n번쩍! 빛이 나타났다가 사라진다.\n으악 너무 눈부셔!\n\n... 방금 무슨 일이 있었지?\n이런 일이 자주 있는 것 같은\n그런 느낌적인 느낌이다.\n\n가방이 묵직해졌다!\n나는 당장 상점에 가고싶어졌다.\n\n// + 교환 아이템\n// + 손전등','낮','GM/손전등+ 아이템+'),(9,'13','갈대가 우거진 곳에서\n작은 비명소리가 들린다.\n\n몸집이 작은 할머니  분이\n좀비 개에게 쫓기고 계신다.','낮','선택지');
/*!40000 ALTER TABLE `chapter2_storyonly` ENABLE KEYS */;
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
