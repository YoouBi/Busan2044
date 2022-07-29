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
-- Table structure for table `bulletinbord`
--

DROP TABLE IF EXISTS `bulletinbord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bulletinbord` (
  `num` int NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) DEFAULT NULL,
  `achv` varchar(45) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `star` int DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulletinbord`
--

LOCK TABLES `bulletinbord` WRITE;
/*!40000 ALTER TABLE `bulletinbord` DISABLE KEYS */;
INSERT INTO `bulletinbord` VALUES (0,'yyy','굿!','너무 재밌어요~~!!!!!',5),(1,'doony123','굿!','너무 재밌어요~~!!!!!',1),(2,'wani','개발자는 코딩코딩하고 웁니다','게임계를 뒤집어놓으셨다~~!!!!!',5),(3,'wani','개발자는 코딩 웁니다','뒤집어놓으셨다~~!!!!!',2),(16,'wani','개발자는  웁니다','뒤집어놓으셨다~~!!!!!',5),(17,'asdas','sadasd','ASdasdas',5),(18,'asdas','sadasd','ASdasdas',5),(19,'dfsfsd','업적','넣는 연습중',4),(20,'dfsfsd','업적','이제 거의 완성되었다잉',5),(21,'dfsfsd','업적','너모너모좋구여',5),(22,'dfsfsd','업적','굿굿 있즈굿',5),(23,'dfsfsd','업적','잘 진행되고있습니둥',4),(24,'dfsfsd','업적','너무좋구연',3),(25,'dfsfsd','업적','ㅋㅋㅋㅋㅋㅋㅋㅋㅋ',3),(26,'dfsfsd','업적','와우 신기하구만유',5),(27,'magic22x','업적','나는 연습중',5),(28,'gggg','업적','어떻게하죳~ 나는 어떻하죠오오',5),(29,'gggg','업적','아아아아 너무 재밌다',4),(30,'gggg','업적','ㅋㅋㅋㅋ 꿀잼이요',4),(31,'gggg','업적','나는 개꿀쓰',5),(32,'magic22x','업적','별점 태러 할꼬야',5),(33,'wani','개발자는  웁니다','뒤집어놓으셨다~~!!!!!',5),(34,'magic22x','업적','이이이이이이이 입력중',2),(35,'magic22x','업적','아이디도 뜨는데',5),(36,'magic22x','업적','마지막 마무리',4),(37,'doony123','업적','김동완이 이거 다만들었음 짱천재',5),(38,'magic22x','업적','별점좀 올려주세용~ ',5),(39,'magic22x','업적','젭알 너무어려워요 살려주세요 ㅠㅠ',4),(40,'magic22x','업적','ㅋㅋㅋㅋㅋㅋ',5),(41,'magic22x','업적','굳굳굳 잘되고있구만유',5),(42,'magic22x','업적','ㅎㅎㅎㅎ',5),(43,'박so현','업적','ㅋㅋ헐 존나 신기하넹ㅋㅋ',5),(44,'magic22x','업적','별점 만점을 향해서 긔긔',5),(45,'magic22x','업적','안됩니다',5),(46,'qwer','업적','와 후기 진짜임?',1),(47,'qwer','업적','오오ㅗ오',5),(48,'qwer','업적','같은 아이디로 이러면 어쩔껀데 여러번 ㄱ누ㅜ가함;;',5),(49,'yyyy','업적','다르게 바꾸려면 좀 힘들겟지 ?',3),(50,'magic22x','업적','별점 채크중',4),(51,'magic22x','업적','이야아아아앙',5);
/*!40000 ALTER TABLE `bulletinbord` ENABLE KEYS */;
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
