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
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_user` (
  `user_id` varchar(300) NOT NULL COMMENT '아이디',
  `user_password` varchar(300) NOT NULL COMMENT '비밀번호',
  `user_name` varchar(300) NOT NULL COMMENT '이름',
  `user_email` varchar(300) DEFAULT NULL COMMENT '이메일',
  `user_phone` varchar(300) DEFAULT NULL COMMENT '전화번호',
  `user_birth` date DEFAULT NULL COMMENT '생년월일',
  `lecture_idx` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES ('','$2a$10$fRWS.qf9ekISnt58WKBM8eTqiY.V6COoma3sxNBDwJI9k2Z/mK/gC','','',NULL,'0000-00-00',2),('test','$2a$10$bdziSkPwzbujIF6rYsXnee1RaZjjISndwtf/5wSSUWGct.lnkBfLS','test','test@gmail.com',NULL,'2012-12-12',1),('test0','$2a$10$p4fEfQ3yL4ErC9j6TnDidef0LtzusWs.P0pshHs5nypuUv5O8P0TW','루피','test0@gmail.com',NULL,'2012-12-12',2),('test00','$2a$10$/cjcs8FS8HEG/jPk.JF6reZqU3d4o70x2N/ZsKW/Gm647KVHtSFGq','test00','test00@gmail.com',NULL,'2012-12-12',2),('test12','$2a$10$lY0vUs64rcNQKd2x97WW3.s0r6gJzhnMHF8ZZ2Ar.s6q.x/pj/fse','test12','test@gmail.com',NULL,'2012-12-12',3),('test12345','$2a$10$ZcRPAkivd.n3kIWMdKbviOSVCnbITHwEqf.eV5inXSsuytbRSCL76','테스처','test@gmail.com',NULL,'2012-12-12',1),('test2','$2a$10$8ydjBv8fyy9pvMB88vErxed6nRPCwwQKOFBuXRy3VYttpt2yaDrGm','테스터','test@gmail.com',NULL,'2020-12-12',0),('test4','$2a$10$aM25hslrwWyTosDSii0TVOy/sM7Zto6lf4xcef6.9oK3GhOHqW3Yq','나테스트',NULL,NULL,'0000-00-00',0),('test5678','$2a$10$gMEgqFrDAU9xZfqb1zgs1uvVopWxPCkcDEvCPgpDZrfWGHALHKAhG','테스트','test@test.com',NULL,'2023-02-27',3),('test6','$2a$10$baHEesIX3Dxy9ecXmFfkYeVDdcP7HD5jBwBFuYet/exqOacMzMate','테스터','test@gmail.com',NULL,'2012-12-12',0),('test7','$2a$10$/q8xP0JXZ3.j3EiHt1Hb7eRk2.bM1ssN3rNnUZf9rUCIqZIaQ/IRa','테스터어','test@gmail.com',NULL,'2012-12-12',0),('test8','$2a$10$2OSNIjWme2LnPHPVyjd9YOMBXmoeWMhC70JEWPdXRhxVeOQk1JQFW','체스터','test@gmail.com',NULL,'2012-12-12',0),('test9','$2a$10$kiEB/TGaY9ytp0JJjxp8rej2BJkKqVTmyVolahtGRzEoUjOtZbavG','테스터','test@gmail.com',NULL,'2012-12-22',3),('user','$2a$10$RGeJr4DQEh.1QzdrLDvXEuOlLG3VvJUYgAB5V.CKGYG/97jxiD5Gi','이유저','user@gmail.com',NULL,'2012-12-12',1),('user125','$2a$10$Biol0riphnJ0Hn51qFcPKuGszog5Gs.wiGdgDmsXJht.hhmzOFvxi','쿠키','user125@gmail.com',NULL,'2012-12-12',1);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
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
