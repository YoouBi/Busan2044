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
INSERT INTO `battleover` VALUES (10,'할머니 좀비와 친구가 될 수 없을텐데...','할머니 좀비에게서 간신히 도망쳤다.','할머니 좀비를 죽였다.','할머니 좀비는 예상외로 강력했다. 목숨을 잃었다.','부상을 입었지만 할머니 좀비에게서 도망칠 수 있었다.'),(11,'할아버지 좀비와 친구가 될 수 없을텐데...','할아버지 좀비에게서 간신히 도망쳤다.','할아버지 좀비를 죽였다.','할아버지 좀비는 예상외로 강력했다. 목숨을 잃었다.','부상을 입었지만 할아버지 좀비에게서 도망칠 수 있었다.'),(12,'좀비와 친구가 될 수 없을텐데...','좀비에게서 간신히 도망쳤다.','좀비를 죽였다.','좀비를 이길 수 없었다. 목숨을 잃었다.','부상을 입었지만 좀비에게서 도망칠 수 있었다.'),(13,'화난 좀비와 친구가 될 수 없을텐데...','화난 좀비에게서 간신히 도망쳤다.','화난 좀비를 죽였다.','화난 좀비를 이길 수 없었다. 목숨을 잃었다.','부상을 입었지만 화난 좀비에게서 도망칠 수 있었다.'),(21,'좀비 들개와 친구가 될 수 없을텐데...','좀비 들개에게서 간신히 도망쳤다.','좀비 들개를 죽였다.','좀비 들개를 이길 수 없었다. 목숨을 잃었다.','부상을 입었지만 좀비 들개에게서 도망칠 수 있었다.'),(22,'좀비 멧돼지와 친구가 될 수 없을텐데...','좀비 멧돼지에게서 간신히 도망쳤다.','좀비 멧돼지를 죽였다.','좀비 멧돼지를 이길 수 없었다. 목숨을 잃었다.','부상을 입었지만 좀비 멧돼지에게서 도망칠 수 있었다.'),(23,'화난 좀비 멧돼지와 친구가 될 수 없을텐데...','화난 좀비 멧돼지에게서 간신히 도망쳤다.','화난 좀비 멧돼지를 죽였다.','화난 좀비 멧돼지를 이길 수 없었다. 목숨을 잃었다.','부상을 입었지만 화난 좀비 멧돼지에게서 도망칠 수 있었다.'),(31,'순찰중인 군인이 날 놓아줄리 없을텐데...','순찰하던 군인에게서 간신히 도망쳤다.','순찰 중이었던 군인을 죽였다.','군인은 겨누고 있던 총을 발포하였고, 총알이 내 심장을 관통했다.','순찰하던 군인과 대치하다 간신히 도망쳤다.'),(32,'껄렁해보이는 군인은 내게 우호적이다.','껄렁한 군인에게서 간신히 도망쳤다.','껄렁한 군인을 죽였다.','껄렁한 군인은 겨누고 있던 총을 발포하였고, 총알이 내 심장을 관통했다.','군인과 나는 별다른 마찰도 소득도 없이 서로를 외면하기로 했다.');
/*!40000 ALTER TABLE `battleover` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bulletinbord`
--

LOCK TABLES `bulletinbord` WRITE;
/*!40000 ALTER TABLE `bulletinbord` DISABLE KEYS */;
INSERT INTO `bulletinbord` VALUES (0,'yyy','굿!','너무 재밌어요~~!!!!!',5),(1,'doony123','굿!','너무 재밌어요~~!!!!!',1),(2,'wani','개발자는 코딩코딩하고 웁니다','게임계를 뒤집어놓으셨다~~!!!!!',5),(3,'wani','개발자는  웁니다','뒤집어놓으셨다~~!!!!!',2),(16,'wani','개발자는  웁니다','뒤집어놓으셨다~~!!!!!',5),(17,'asdas','sadasd','ASdasdas',5),(18,'asdas','sadasd','ASdasdas',5),(19,'dfsfsd','업적','넣는 연습중',4),(20,'dfsfsd','업적','이제 거의 완성되었다잉',5),(21,'dfsfsd','업적','너모너모좋구여',5),(22,'dfsfsd','업적','굿굿 있즈굿',5),(23,'dfsfsd','업적','잘 진행되고있습니둥',4),(24,'dfsfsd','업적','너무좋구연',3),(25,'dfsfsd','업적','ㅋㅋㅋㅋㅋㅋㅋㅋㅋ',3),(26,'dfsfsd','업적','와우 신기하구만유',5),(27,'magic22x','업적','나는 연습중',5),(28,'gggg','업적','어떻게하죳~ 나는 어떻하죠오오',5),(29,'gggg','업적','아아아아 너무 재밌다',4),(30,'gggg','업적','ㅋㅋㅋㅋ 꿀잼이요',4),(31,'gggg','업적','나는 개꿀쓰',5),(32,'magic22x','업적','별점 태러 할꼬야',5),(33,'wani','개발자는  웁니다','뒤집어놓으셨다~~!!!!!',5),(34,'magic22x','업적','이이이이이이이 입력중',2),(35,'magic22x','업적','아이디도 뜨는데',5),(36,'magic22x','업적','마지막 마무리',4),(37,'doony123','업적','김동완이 이거 다만들었음 짱천재',5),(38,'magic22x','업적','별점좀 올려주세용~ ',5),(39,'magic22x','업적','젭알 너무어려워요 살려주세요 ㅠㅠ',4),(40,'magic22x','업적','ㅋㅋㅋㅋㅋㅋ',5),(41,'magic22x','업적','굳굳굳 잘되고있구만유',5),(42,'magic22x','업적','ㅎㅎㅎㅎ',5),(43,'박so현','업적','ㅋㅋ헐 존나 신기하넹ㅋㅋ',5),(44,'magic22x','업적','별점 만점을 향해서 긔긔',5),(45,'magic22x','업적','안됩니다',5),(46,'qwer','업적','와 후기 진짜임?',1),(47,'qwer','업적','오오ㅗ오',5),(48,'qwer','업적','같은 아이디로 이러면 어쩔껀데 여러번 ㄱ누ㅜ가함;;',5);
/*!40000 ALTER TABLE `bulletinbord` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `enemystatus` VALUES (10,'할머니 좀비',2,0,NULL,2,'할머니 좀비는 내게 관심이 없다.','할머니 좀비는 나의 존재를 인지하고 있다.','할머니 좀비는 나에게 달려들고 있다.','할머니 좀비는 초인적인 힘으로 나를 물어뜯으려 한다.'),(11,'할아버지 좀비',2,0,NULL,1,'할아버지 좀비는 내게 관심이 없다.','할아버지 좀비는 나의 존재를 인지하고 있다.','할아버지 좀비는 나에게 달려들고 있다.','할아버지 좀비는 초인적인 힘으로 나를 물어뜯으려 한다.'),(12,'보통 좀비',3,1,NULL,1,'좀비는 내게 관심이 없다.','좀비는 나의 존재를 인지하고 있다.','좀비가 내게 달려들고 있다.','좀비가 초인적인 힘으로 나를 물어뜯으려 한다.'),(13,'화난 일반인 좀비',3,1,NULL,0,'좀비는 내게 관심이 없다.','좀비는 나의 존재를 인지하고 있다.','좀비가 내게 달려들고 있다.','좀비가 초인적인 힘으로 나를 물어뜯으려 한다.'),(21,'좀비 들개',2,1,NULL,1,'좀비 들개는 내게 관심이 없는 것 같다.','좀비 들개는 허공을 킁킁거리고 있다.','좀비 들개가 이를 드러내고 그르렁 거린다.','좀비 들개가 나를 죽일 요량으로 물어뜯으려 한다.'),(22,'좀비 멧돼지',7,2,NULL,0,'좀비 멧돼지는 내게 관심이 없다.','좀비 멧돼지는 나와 시선을 교환하고 있다.','좀비 멧돼지가 날카로운 엄니로 나를 들이받으려 한다.','좀비 멧돼지가 나를 덮쳐 물어뜯으려 한다.'),(23,'화난 좀비 멧돼지',7,3,NULL,0,'좀비 멧돼지는 내게 관심이 없다.','좀비 멧돼지는 나와 시선을 교환하고 있다.','좀비 멧돼지가 날카로운 엄니로 나를 들이받으려 한다.','좀비 멧돼지가 나를 덮쳐 물어뜯으려 한다.'),(31,'순찰중인 군인',5,4,NULL,1,'군인은 나의 처우를 고민하고 있다.','군인은 나를 경계하고 있다.','군인이 내게 위협사격을 한다.','군인이 내게 총을 똑바로 겨눈다.'),(32,'껄렁한 군인',5,4,NULL,2,'군인은 자신의 손익을 생각하고 있다.','군인은 나를 경계하고 있다.','군인이 내게 위협사격을 한다.','군인이 내게 총을 똑바로 겨눈다.');
/*!40000 ALTER TABLE `enemystatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_choice`
--

DROP TABLE IF EXISTS `login_choice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_choice` (
  `id` varchar(45) COLLATE utf8_bin NOT NULL,
  `choice1` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `choice2` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `choice3` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `choice4` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `choice5` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `choice6` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `choice7` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `checkCondition` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  `achv` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_choice`
--

LOCK TABLES `login_choice` WRITE;
/*!40000 ALTER TABLE `login_choice` DISABLE KEYS */;
INSERT INTO `login_choice` VALUES ('magic22x','10','10','10','10','10','10/20','10/20',NULL,NULL);
/*!40000 ALTER TABLE `login_choice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_info`
--

DROP TABLE IF EXISTS `login_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_info` (
  `userNum` int NOT NULL AUTO_INCREMENT,
  `id` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `birthDay` varchar(45) NOT NULL,
  `phoneNum` varchar(45) NOT NULL,
  PRIMARY KEY (`userNum`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `userNum_UNIQUE` (`userNum`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_info`
--

LOCK TABLES `login_info` WRITE;
/*!40000 ALTER TABLE `login_info` DISABLE KEYS */;
INSERT INTO `login_info` VALUES (1,'magic22x','1111','김동완','930111','010-8334-4339'),(2,'gggg','11111','김진성','970244','010-5554-5555'),(3,'yyyy','1357','이예슬','930129','010-5666-7744'),(4,'jinsung','1234','진승이','970520','010-8444-4444'),(5,'wani','1234','김동동','931130','010-8334-4333'),(6,'doony123','79spfh','이예슬','930129','010-4949-6305'),(7,'아어라이','1234','김동딩','971212','010-5878-7777'),(8,'woww','qqqq','김두준','930231','010-7878-7878'),(9,'while','qwer','김동두','931202','010-8885-5558'),(10,'myname','qwer','김진송','970521','010-8787-9999'),(11,'박so현','ERER123','박소현','960101','010-4815-4836'),(12,'박so현ㅋ','12345678','박소현','960101','010-4815-4836'),(13,'qwer','1234','김','991223','010-1312-1232'),(14,'qwert','qqqq','김동두','940220','010-8777-1541');
/*!40000 ALTER TABLE `login_info` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `skill` VALUES (1101,1,'건빵을 던져 주의 돌리기',20,0,10,'상대가 소리가 난 쪽으로 완전히 등을 돌렸다.','상대가 소리가 난 쪽으로 고개를 돌렸다.','건빵이 충분히 소리를 내지 못했다.','건빵이 상대에게 맞아, 상대가 분노했다.'),(1102,1,'좀비인 척 하기',0,0,NULL,'상대는 우리가 좀비라고 생각하는 것 같다.','연기에 상대가 긴가민가해 한다.','전혀 효과가 없었다.','어설픈 연기에 상대가 화를 낸다.'),(1201,1,'육포로 적 현혹하기',20,0,9,'적은 던진 육포에 완전히 정신이 팔려 등을 보였다!','적이 던져진 육포를 향해 고개를 돌렸다.','적은 육포에 조금도 관심을 보이지 않는다.','던진 육포가 적의 코에 맞았다. 적이 크게 분노했다.'),(1202,1,'갈대밭 사이로 숨기',0,0,NULL,'갈대숲 사이로 완벽히 몸을 숨겼다!','갈대숲 사이로 몸을 반쯤 숨겼다.','몸을 숨기려고 했으나 적과 눈이 마주쳤다.','적이 달려들어 몸을 숨길 새도 없었다. 겨우 피했다.'),(1301,1,'뇌물 바치기 - 통조림',20,0,14,'적은 통조림을 받고서 싱글벙글 웃었다.','적은 통조림을 받고서 고민한다.','적은 통조림을 받고도 보내줄 기미가 없다.','적은 야비하게 웃으며 다른 뇌물도 바칠 것을 종용한다.'),(1302,1,'거짓말하기',0,0,NULL,'적은 완전히 속아넘어갔다.','적은 거짓말을 믿어주는 것 같다.','적은 거짓말을 믿지 않았다.','적은 헛소리를 한다며 화를 낸다.'),(2001,2,'몽둥이로 내리치기',20,0,1,'적의 머리를 몽둥이로 내리쳤다!','적의 어깨를 몽둥이로 내리쳤다.','적이 몽둥이를 피했다.','발이 미끄러졌다. 반격을 당했다.'),(2002,2,'효자손 어택',0,0,5,'효자손으로 적의 콧구멍을 찔렀다!','효자손으로 적의 가슴을 후려팼다.','적이 효자손 어택을 피했다.','헛스윙을 했다. 효자손이 부러졌다. 반격을 당했다.'),(2003,2,'권총 사격',25,2,4,'총알이 적의 머리를 관통했다!','총알이 적의 허벅지에 박혔다.','총알이 빗나갔다.','탄피가 걸려 총이 고장날 뻔 했다. 반격을 당했다.'),(2004,2,'자동소총 사격',25,3,6,'총알이 적의 머리를 관통했다!','총알이 적의 상복부에 박혔다.','총알이 빗나갔다.','탄피가 걸려 총이 고장날 뻔 했다. 반격을 당했다.'),(2005,2,'고모리의 흑염소 용자검법',30,1,2,'\"세상이 두 쪽 나도 살아남아서, 내가 하고 싶은 일을 이루고 말 테다!!.\" 청년이 쓸데없이 화려한 삼도류 기술로 적을 공격했다!','\"약속된 승리의 검, 엑스칼리버— !! \" 청년이 쓸데없이 비장하게 적을 내리쳤다.','적이 청년의 쓸데없이 화려한 어택을 피했다.','청년이 보기좋게 헛스윙을 했다. 반격 당했다.'),(2006,2,'주먹질 하기',0,0,NULL,'적의 명치를 가격했다!','적의 옆구리를 가격했다.','적이 주먹을 피했다.','적에게 팔을 잡혀 반격을 당했다.'),(2007,2,'장주먹 할아버지의 살골 권법',40,1,8,'\"무다무다무다무다!!!!\" 할아버지가 빛의 속도로 난타해 적을 박살냈다!','\"흐랴아아아앗!\" ↓↘→RP. 할아버지가 살붕권으로 적을 타격했다.','적이 주먹을 피했다.','적에게 팔을 잡혀 반격을 당했다.'),(2008,2,'최법령 할머니의 판례상 흉기 아님 어택',25,0,7,'\"정의의 이름으로 니를 용서하지 않긋다!\" 할머니가 적의 정수리를 박살냈다!','\"정의의 이름으로 니를 용서하지 않긋다!\" 할머니가 3kg 법전으로 적을 내리쳤다.','적이 할머니의 책 휘두르기를 피했다.','할머니의 움직임이 느렸다. 반격당했다.'),(3001,3,'몽둥이로 적을 기습하기',20,0,1,'적의 머리를 몽둥이로 박살냈다!','적의 머리를 몽둥이로 내리쳤다.','기습에 실패해 헛스윙을 했다.','적이 기습을 눈치채어 반격당했다.'),(3002,3,'고모리의 흑염소 용자검법',30,1,2,'\"세상이 두 쪽 나도 살아남아서, 내가 하고 싶은 일을 이루고 말 테다!!.\" 청년이 쓸데없이 화려한 삼도류 기술로 적을 공격했다!','\"약속된 승리의 검, 엑스칼리버— !! \" 청년이 쓸데없이 비장하게 적을 내리쳤다.','적이 청년의 쓸데없이 화려한 어택을 피했다.','청년의 어택이 간파당해 반격당하고 말았다.'),(3004,3,'권총 영거리 사격으로 기습하기',30,2,4,'적의 정수리에 총탄을 꽂아넣었다!','총탄이 적의 어깨를 관통했다.','기습에 실패해 총알이 빗나갔다.','적이 기습을 눈치채어 반격당했다.'),(5001,5,'효자손 꺼내기',50,0,5,'효자손을 꺼내자 멧돼지가 반응한다! 멧돼지의 등을 긁어주자 멧돼지가 만족해한다.','효자손을 꺼내자 멧돼지가 반응한다! 멧돼지의 등을 긁어주자 멧돼지가 만족해한다.','효자손을 꺼내자 멧돼지가 반응한다! 멧돼지의 등을 긁어주자 멧돼지가 만족해한다.','효자손을 꺼내자 멧돼지가 반응한다! 멧돼지의 등을 긁어주자 멧돼지가 만족해한다.');
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics_destiny`
--

DROP TABLE IF EXISTS `statistics_destiny`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics_destiny` (
  `num` int NOT NULL,
  `chapter1` varchar(45) DEFAULT '-1',
  `chapter2` varchar(45) DEFAULT '-1',
  `chapter3` varchar(45) DEFAULT '-1',
  `chapter4` varchar(45) DEFAULT '-1',
  `chapter5` varchar(45) DEFAULT '-1',
  `chapter6` varchar(45) DEFAULT '-1',
  `chapter7` varchar(45) DEFAULT '-1',
  `achv` varchar(45) DEFAULT NULL,
  `choiceHeadcount` int DEFAULT '0',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_destiny`
--

LOCK TABLES `statistics_destiny` WRITE;
/*!40000 ALTER TABLE `statistics_destiny` DISABLE KEYS */;
INSERT INTO `statistics_destiny` VALUES (0,'-1','-1','-1','-1','-1','-1','-1','튜토리얼도 못 깬',0),(1,'1','1','1','1','1','12','-1',NULL,2);
/*!40000 ALTER TABLE `statistics_destiny` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics_ending`
--

DROP TABLE IF EXISTS `statistics_ending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `statistics_ending` (
  `ending_id` int NOT NULL,
  `ending_name` varchar(45) DEFAULT NULL,
  `ending_headcount` int DEFAULT NULL,
  PRIMARY KEY (`ending_id`),
  UNIQUE KEY `idstatistics_ending_UNIQUE` (`ending_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics_ending`
--

LOCK TABLES `statistics_ending` WRITE;
/*!40000 ALTER TABLE `statistics_ending` DISABLE KEYS */;
INSERT INTO `statistics_ending` VALUES (1,'nomal1',7),(2,'nomal2',1),(3,'bad1',2),(4,'bad2',0),(5,'death1',0),(6,'death2',0),(7,'true',0);
/*!40000 ALTER TABLE `statistics_ending` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'busan'
--

--
-- Dumping routines for database 'busan'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-27 17:58:00
