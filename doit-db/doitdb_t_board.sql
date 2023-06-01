-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: doitdb
-- ------------------------------------------------------
-- Server version	5.7.40-log

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
-- Table structure for table `t_board`
--

DROP TABLE IF EXISTS `t_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_board` (
  `board_idx` int(11) NOT NULL AUTO_INCREMENT COMMENT '글 번호',
  `title` varchar(300) NOT NULL COMMENT '글 제목',
  `contents` text NOT NULL COMMENT '글 내용',
  `hit_cnt` smallint(10) NOT NULL DEFAULT '0' COMMENT '조회수',
  `created_dt` date NOT NULL COMMENT '작성일시',
  `user_id` varchar(300) NOT NULL COMMENT '사용자 아이디',
  `updated_dt` date DEFAULT NULL COMMENT '수정일시',
  `updated_id` varchar(50) DEFAULT NULL COMMENT '수정자',
  `deleted_yn` char(1) NOT NULL DEFAULT 'N' COMMENT '삭제여부',
  `lecture_idx` int(11) DEFAULT NULL,
  `board_img` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`board_idx`),
  KEY `lecture_idx` (`lecture_idx`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_board_ibfk_1` FOREIGN KEY (`lecture_idx`) REFERENCES `t_lecture` (`lecture_idx`),
  CONSTRAINT `t_board_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_board`
--

LOCK TABLES `t_board` WRITE;
/*!40000 ALTER TABLE `t_board` DISABLE KEYS */;
INSERT INTO `t_board` VALUES (1,'test','test',6,'2023-02-24','test9',NULL,NULL,'N',NULL,NULL),(2,'TEST','TEST',24,'2023-02-24','test9','2023-02-24',NULL,'N',NULL,NULL),(3,'test','test',6,'2023-02-24','test00',NULL,NULL,'N',NULL,NULL),(4,'gg','gg',13,'2023-02-24','test00',NULL,NULL,'N',NULL,NULL);
/*!40000 ALTER TABLE `t_board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-15 16:23:34
