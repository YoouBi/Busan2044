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
-- Table structure for table `talkchoice_table`
--

DROP TABLE IF EXISTS `talkchoice_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `talkchoice_table` (
  `id` int NOT NULL,
  `diaNum` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `btn` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `story` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talkchoice_table`
--

LOCK TABLES `talkchoice_table` WRITE;
/*!40000 ALTER TABLE `talkchoice_table` DISABLE KEYS */;
INSERT INTO `talkchoice_table` VALUES (1,'1','1','(그냥 웃어주자..) 하하하 그러게요. 오늘 좀 피곤해서 얼굴이 상했나봐요.'),(2,'1','2','아저씨, 지금 상황에 웃음이 나와요? 힘든거 안보이세요?'),(3,'1','1-1','아니요. 생각해주셔서 감사하지만 괜찮아요.'),(4,'1','2-1','하나 주세요~'),(5,'2','1','군인들이 잡아간거 아닐까요? 정말 무섭네요 .. 저도 언제까지 이렇게 다닐 수 있을 지 모르겠어요.'),(6,'2','2','이런 상황에 누가 문을 두드리면 당연히 아무도 안열지 않을까요?'),(7,'2','1-1','어디갈지는 모르겠어요. 생필품은 뭐 찾아봐야죠..'),(8,'2','2-1','같이 가실래요?'),(9,'3','1','20살 정도요?'),(10,'3','2','30살이요??'),(11,'3','1-2','아니요 .. 싫어하는데요 ..'),(12,'3','2-2','네 좋아해요! '),(13,'4','1','아저씨가 뭐 잘못한거 아니예요?'),(14,'4','2','물건은 어디다가 보관해요?'),(15,'4','1-2',' 아니요. 저희 할머니도 계셔서 그럴 수가 없어요. '),(16,'4','2-2','저희 할머니도 같이 가도 되나요?'),(17,'5','1','무슨 일 있으셨어요?'),(18,'5','2','네.. 나빠보이진 않아요'),(19,'5','1-1','헉 .. 아프시겠어요 .. 얼굴이 빨개요..'),(20,'5','2-1','약 좀 드릴까요?'),(21,'6','1','요즘이 아니라 계속 들렸는데요..'),(22,'6','2','그러네요. 무슨 소리일까요?'),(23,'7','1','절대 안되죠'),(24,'7','2','네, 그게 뭐 어때서요?'),(25,'8','1','네.. 뭔데요?'),(26,'8','2','아... 제가 무서운 이야기는 싫어해서요..'),(27,'8','1-1','(미친사람이 분명하다. 대충 반응해줘야지) 아 ... 그렇군요 ..'),(28,'8','2-1','무서워요 .. 세상이 정말 .. 망하려고 그러나봐요.'),(29,'9','1','MBTI는 유사과학이예요. \'오늘의 운세\'같은거죠.'),(30,'9','2','아, 알긴 하는데 정확하게 해보지는 않았어요..왜요?'),(31,'9','1-2','MBTI가 어떻게 되세요 ..? '),(32,'9','2-2','별로 안궁금한데 ....'),(33,'9','1-2-1','웃어준다'),(34,'9','2-2-1','정색한다'),(35,'10','1-1','기다린다'),(36,'10','2-1','기다린다'),(37,'10','1-1-1','좀 더 기다린다.'),(38,'10','2-1-1','조금만 더 기다려본다.');
/*!40000 ALTER TABLE `talkchoice_table` ENABLE KEYS */;
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
