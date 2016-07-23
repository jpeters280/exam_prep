-- MySQL dump 10.13  Distrib 5.7.12, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: exam2
-- ------------------------------------------------------
-- Server version	5.5.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `user_id` int(11) NOT NULL,
  `quote_id` int(11) NOT NULL,
  KEY `fk_table1_users1_idx` (`user_id`),
  KEY `fk_table1_quotes1_idx` (`quote_id`),
  CONSTRAINT `fk_table1_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_table1_quotes1` FOREIGN KEY (`quote_id`) REFERENCES `quotes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (4,9),(4,8),(4,14),(4,10),(4,11),(4,12),(4,13),(3,8),(3,9),(5,14);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quotes`
--

DROP TABLE IF EXISTS `quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_by` varchar(45) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`user_id`),
  KEY `fk_quotes_users_idx` (`user_id`),
  CONSTRAINT `fk_quotes_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quotes`
--

LOCK TABLES `quotes` WRITE;
/*!40000 ALTER TABLE `quotes` DISABLE KEYS */;
INSERT INTO `quotes` VALUES (8,'fox','ri didididididididididi da didididididi',3),(9,'asd','181923749812378',3),(10,'computer','10101010101010000010101011110001',3),(11,'sun','light!',4),(12,'raven','nevermore!',4),(13,'monkey','oo oo ah ah',4),(14,'smokey','only you can prevent forest fires!',4),(15,'tim','my name is tim',5),(16,'asDADSF','ASDFASDF',10);
/*!40000 ALTER TABLE `quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pw_hash` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'red blue','red@blue.com','$2b$12$caNImUfm11T5zzj2/SDYK.PFn91lrTmg42lF8WLVUllzMW757YZNO','1950-01-10 00:00:00','red','2016-07-23 13:01:38','2016-07-23 13:01:38'),(4,'sun shine','sun@sun.com','$2b$12$ShUxosR9CkLi2u/rcPNMpu4ZZKpbWEq5w7AGLcYorGii0evAiN2fK','0001-12-01 00:00:00','sunny','2016-07-23 13:05:01','2016-07-23 13:05:01'),(5,'tim tim','tim@tim.com','$2b$12$NXJLcgppFKagQ9B9gQIRNeVx7dT2C54FVsMO6T0Wva2gcblzqmDgK','1231-03-02 00:00:00','tim','2016-07-23 15:04:31','2016-07-23 15:04:31'),(6,'qwer','qwerty@qwerty.com','$2b$12$Qu73spSAMu8.cUrVJ1Wrkuc8B2YxfUytL2x5xmr/Njqif0cWYEcsy','0123-12-31 00:00:00','qwer','2016-07-23 15:05:42','2016-07-23 15:05:42'),(7,'dfshda','asdf@asdf.com','$2b$12$yeYciydw8AKx8DaLSqG59OUgxrfcuXYce2bGEWPr5GtVPqKjxwUhW','1243-12-31 00:00:00','sadfsfdasf','2016-07-23 15:06:03','2016-07-23 15:06:03'),(8,'qwerwerc','123473@agl.com','$2b$12$FiWNzm94w3vyjdwGAX3oLuT0tTv6qli2.LVnmGlg8AB17kvzT7E5C','1212-12-12 00:00:00','qwc','2016-07-23 15:06:27','2016-07-23 15:06:27'),(9,'123213hkjdfb','test4@test.com','$2b$12$yvUmRhO0UYL3nG1VOIgv5ePCtk37CmBvZIs9KTU9A7jpv69HRr.9q','0000-00-00 00:00:00','rewq','2016-07-23 15:07:05','2016-07-23 15:07:05'),(10,'qwerqwer','qwerqwerqwer@wee.com','$2b$12$ILxWlmBmcTRXiVo3/eMG0.NI7pFqZrSd9UIEQN.alY8vsPf7Uz11a','1212-12-12 00:00:00','qwerqwerqwer','2016-07-23 15:09:26','2016-07-23 15:09:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-23 15:11:20
