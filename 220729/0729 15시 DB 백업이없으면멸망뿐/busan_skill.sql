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
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `skill_id` int NOT NULL AUTO_INCREMENT,
  `skill_type` int NOT NULL,
  `skill_name` varchar(45) NOT NULL,
  `skill_aim` int NOT NULL,
  `skill_power` int NOT NULL,
  `skill_needItem` int DEFAULT NULL,
  `skill_criticalScript` varchar(100) NOT NULL,
  `skill_sucessScript` varchar(100) NOT NULL,
  `skill_failScript` varchar(100) NOT NULL,
  `skill_fumbleScript` varchar(100) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
INSERT INTO `skill` VALUES (1101,1,'건빵을 던져 주의 돌리기',20,0,10,'상대가 소리가 난 쪽으로 완전히 등을 돌렸다.','상대가 소리가 난 쪽으로 고개를 돌렸다.','건빵이 충분히 소리를 내지 못했다.','건빵이 상대에게 맞아, 상대가 분노했다.'),(1102,1,'좀비인 척 하기',0,0,NULL,'상대는 우리가 좀비라고 생각하는 것 같다.','연기에 상대가 긴가민가해 한다.','전혀 효과가 없었다.','어설픈 연기에 상대가 화를 낸다.'),(1201,1,'육포로 적 현혹하기',20,0,9,'적은 던진 육포에 완전히 정신이 팔려 등을 보였다!','적이 던져진 육포를 향해 고개를 돌렸다.','적은 육포에 조금도 관심을 보이지 않는다.','던진 육포가 적의 코에 맞았다. 적이 크게 분노했다.'),(1202,1,'갈대밭 사이로 숨기',0,0,NULL,'갈대숲 사이로 완벽히 몸을 숨겼다!','갈대숲 사이로 몸을 반쯤 숨겼다.','몸을 숨기려고 했으나 적과 눈이 마주쳤다.','적이 달려들어 몸을 숨길 새도 없었다. 겨우 피했다.'),(1301,1,'뇌물 바치기 - 통조림',20,0,14,'적은 통조림을 받고서 싱글벙글 웃었다.','적은 통조림을 받고서 고민한다.','적은 통조림을 받고도 보내줄 기미가 없다.','적은 야비하게 웃으며 다른 뇌물도 바칠 것을 종용한다.'),(1302,1,'거짓말하기',0,0,NULL,'적은 완전히 속아넘어갔다.','적은 거짓말을 믿어주는 것 같다.','적은 거짓말을 믿지 않았다.','적은 헛소리를 한다며 화를 낸다.'),(2001,2,'몽둥이로 내리치기',20,0,1,'적의 머리를 몽둥이로 내리쳤다!','적의 어깨를 몽둥이로 내리쳤다.','적이 몽둥이를 피했다.','발이 미끄러졌다. 반격을 당했다.'),(2002,2,'효자손 어택',0,0,5,'효자손으로 적의 콧구멍을 찔렀다!','효자손으로 적의 가슴을 후려팼다.','적이 효자손 어택을 피했다.','헛스윙을 했다. 효자손이 부러졌다. 반격을 당했다.'),(2003,2,'권총 사격',25,2,4,'총알이 적의 머리를 관통했다!','총알이 적의 허벅지에 박혔다.','총알이 빗나갔다.','탄피가 걸려 총이 고장날 뻔 했다. 반격을 당했다.'),(2004,2,'자동소총 사격',25,3,6,'총알이 적의 머리를 관통했다!','총알이 적의 상복부에 박혔다.','총알이 빗나갔다.','탄피가 걸려 총이 고장날 뻔 했다. 반격을 당했다.'),(2005,2,'고모리의 흑염소 용자검법',30,1,2,'\"세상이 두 쪽 나도 살아남아서, 내가 하고 싶은 일을 이루고 말 테다!!.\" 청년이 쓸데없이 화려한 삼도류 기술로 적을 공격했다!','\"약속된 승리의 검, 엑스칼리버— !! \" 청년이 쓸데없이 비장하게 적을 내리쳤다.','적이 청년의 쓸데없이 화려한 어택을 피했다.','청년이 보기좋게 헛스윙을 했다. 반격 당했다.'),(2006,2,'주먹질 하기',0,0,NULL,'적의 명치를 가격했다!','적의 옆구리를 가격했다.','적이 주먹을 피했다.','적에게 팔을 잡혀 반격을 당했다.'),(2007,2,'장주먹 할아버지의 살골 권법',40,1,8,'\"무다무다무다무다!!!!\" 할아버지가 빛의 속도로 난타해 적을 박살냈다!','\"흐랴아아아앗!\" ↓↘→RP. 할아버지가 살붕권으로 적을 타격했다.','적이 주먹을 피했다.','적에게 팔을 잡혀 반격을 당했다.'),(2008,2,'최법령 할머니의 판례상 흉기 아님 어택',25,0,7,'\"정의의 이름으로 니를 용서하지 않긋다!\" 할머니가 적의 정수리를 박살냈다!','\"정의의 이름으로 니를 용서하지 않긋다!\" 할머니가 3kg 법전으로 적을 내리쳤다.','적이 할머니의 책 휘두르기를 피했다.','할머니의 움직임이 느렸다. 반격당했다.'),(3001,3,'몽둥이로 적을 기습하기',20,0,1,'적의 머리를 몽둥이로 박살냈다!','적의 머리를 몽둥이로 내리쳤다.','기습에 실패해 헛스윙을 했다.','적이 기습을 눈치채어 반격당했다.'),(3002,3,'고모리의 흑염소 용자검법',30,1,2,'\"세상이 두 쪽 나도 살아남아서, 내가 하고 싶은 일을 이루고 말 테다!!.\" 청년이 쓸데없이 화려한 삼도류 기술로 적을 공격했다!','\"약속된 승리의 검, 엑스칼리버— !! \" 청년이 쓸데없이 비장하게 적을 내리쳤다.','적이 청년의 쓸데없이 화려한 어택을 피했다.','청년의 어택이 간파당해 반격당하고 말았다.'),(3004,3,'권총 영거리 사격으로 기습하기',30,2,4,'적의 정수리에 총탄을 꽂아넣었다!','총탄이 적의 어깨를 관통했다.','기습에 실패해 총알이 빗나갔다.','적이 기습을 눈치채어 반격당했다.'),(5001,5,'효자손 꺼내기',50,0,5,'효자손을 꺼내자 멧돼지가 반응한다! 멧돼지의 등을 긁어주자 멧돼지가 만족해한다.','효자손을 꺼내자 멧돼지가 반응한다! 멧돼지의 등을 긁어주자 멧돼지가 만족해한다.','효자손을 꺼냈다. 그러나 아무 일도 일어나지 않았다!','효자손을 꺼냈다. 그러나 아무 일도 일어나지 않았다!');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
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
