-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: memo_app
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `memos`
--

DROP TABLE IF EXISTS `memos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `memos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `user_name` varchar(63) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_name` (`user_name`),
  CONSTRAINT `fk_user_name` FOREIGN KEY (`user_name`) REFERENCES `users` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memos`
--

LOCK TABLES `memos` WRITE;
/*!40000 ALTER TABLE `memos` DISABLE KEYS */;
INSERT INTO `memos` VALUES (27,'hoge','fuga','2000-12-10 00:00:00','2000-12-10 00:00:00','taro'),(28,'hoge1','fuga1','2000-12-10 00:00:00','2000-12-10 00:00:00','taro'),(29,'hoge2','fuga2','2000-12-10 00:00:00','2000-12-10 00:00:00','taro'),(32,'hoge5','fuga5','2000-12-10 00:00:00','2000-12-10 00:00:00','spitfire'),(33,'hoge6','fuga6','2000-12-10 00:00:00','2000-12-10 00:00:00','spitfire'),(34,'hoge7','fuga7','2000-12-10 00:00:00','2000-12-10 00:00:00','spitfire'),(35,'hoge8','fuga8','2000-12-10 00:00:00','2000-12-10 00:00:00','spitfire'),(36,'hoge9','fuga9','2001-01-01 00:00:00','2002-01-15 00:00:00','hirdegard'),(39,'ddd','sss',NULL,NULL,'taro'),(43,'abc','def','1919-08-10 00:00:00','1919-08-10 00:00:00','test'),(44,'ghi','jkl','1919-08-10 00:00:00','1919-08-10 00:00:00','test'),(45,'mno','pqr','1919-08-10 00:00:00','2014-08-11 00:00:00','test'),(50,'lalala','clasi','2024-11-08 11:52:44','2024-11-08 11:53:01','Alice'),(51,'ぴよ','ぴゆぽいｐ','2024-11-08 12:10:53',NULL,'Alice'),(52,'sample lemma','a -> b -> a\r\n','2024-11-08 12:11:17',NULL,'Alice'),(53,'mom','hoge','2024-11-08 13:23:29',NULL,'Alice');
/*!40000 ALTER TABLE `memos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-11 10:43:38
