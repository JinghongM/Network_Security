-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: security_test
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `user_profile`
--
create database security_test;
use security_test;
DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `user_information` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'Ciaran','Ciaran','Porttitor Vulputate Associates'),(2,'Fredericka','Fredericka','Cras Dictum Ultricies PC'),(3,'Chadwick','Chadwick','Tortor Nibh Sit Ltd'),(4,'TaShya','TaShya','Cursus Integer Mollis Inc.'),(5,'Evan','Evan','Id Libero Donec Associates'),(6,'Inga','Inga','Nam Porttitor Incorporated'),(7,'Willow','Willow','Tellus Faucibus Incorporated'),(8,'Olivia','Olivia','Odio Ltd'),(9,'Len','Len','Ipsum Industries'),(10,'Colorado','Colorado','Sem Magna LLC'),(11,'Alisa','Alisa','Cursus Et Eros PC'),(12,'Marcia','Marcia','Lectus Consulting'),(13,'Talon','Talon','Elit Limited'),(14,'Kermit','Kermit','Pede Suspendisse Dui Limited'),(15,'Blake','Blake','Per Conubia Nostra Foundation'),(16,'Quin','Quin','Elit Nulla Facilisi Associates'),(17,'Kirsten','Kirsten','Eget Magna Consulting'),(18,'Naomi','Naomi','Sodales Consulting'),(19,'Burke','Burke','Aliquet Proin Foundation'),(20,'Peter','Peter','Facilisis Vitae Institute'),(21,'Brock','Brock','Dui Inc.'),(22,'Noble','Noble','Urna Ut Tincidunt Company'),(23,'Ella','Ella','Ante Ipsum Ltd'),(24,'Nicholas','Nicholas','Nulla Ltd'),(25,'Yardley','Yardley','Diam Lorem Auctor Corp.'),(26,'Dacey','Dacey','Turpis In Associates'),(27,'Ginger','Ginger','Amet Consectetuer Adipiscing Ltd'),(28,'Lucius','Lucius','A Mi Fringilla PC'),(29,'Ignatius','Ignatius','Velit Aliquam Nisl Consulting'),(30,'Julian','Julian','Consectetuer Associates'),(31,'McKenzie','McKenzie','Convallis Dolor Institute'),(32,'Hedley','Hedley','Tempus Risus PC'),(33,'Isaiah','Isaiah','Lacus Cras PC'),(34,'Harrison','Harrison','Mi Duis PC'),(35,'Slade','Slade','Convallis PC'),(36,'Kylan','Kylan','Felis Nulla Industries'),(37,'Astra','Astra','Dolor PC'),(38,'Althea','Althea','Auctor Mauris LLP'),(39,'Damian','Damian','Mollis Industries'),(40,'Kermit','Kermit','Ligula LLC'),(41,'Bradley','Bradley','Egestas Ltd'),(42,'Ulric','Ulric','Nulla Aliquet Proin Limited'),(43,'Quynn','Quynn','Maecenas LLC'),(44,'Mercedes','Mercedes','Quis Diam Foundation'),(45,'Samuel','Samuel','Hendrerit A Arcu PC'),(46,'Zeph','Zeph','Eros Proin Ultrices Corp.'),(47,'Melanie','Melanie','Tincidunt Consulting'),(48,'Halee','Halee','Volutpat Consulting'),(49,'Whoopi','Whoopi','Tempus LLC'),(50,'Pamela','Pamela','Facilisis Corp.'),(51,'TaShya','TaShya','Scelerisque Neque Nullam Consulting'),(52,'Alexis','Alexis','Mauris Sapien Cursus Corp.'),(53,'Aspen','Aspen','Mollis Non Cursus Corporation'),(54,'Denton','Denton','Curabitur Vel Lectus Institute'),(55,'Scarlet','Scarlet','Ut Institute'),(56,'Aaron','Aaron','Tempus Lorem Incorporated'),(57,'Aladdin','Aladdin','Augue Company'),(58,'Cameron','Cameron','Imperdiet Ornare In Limited'),(59,'Clinton','Clinton','Vitae Ltd'),(60,'Calvin','Calvin','Sociis Natoque Inc.'),(61,'Colt','Colt','Vulputate Mauris Sagittis PC'),(62,'Illana','Illana','Orci Adipiscing LLC'),(63,'Evelyn','Evelyn','Sed Leo Consulting'),(64,'Emerald','Emerald','Donec Foundation'),(65,'Zenia','Zenia','Sit LLC'),(66,'Bradley','Bradley','Dis Parturient Inc.'),(67,'Adele','Adele','Non Nisi Limited'),(68,'Emerson','Emerson','Orci Ut Company'),(69,'Melanie','Melanie','Ad Foundation'),(70,'Abdul','Abdul','Pellentesque Tincidunt Inc.'),(71,'Gil','Gil','Malesuada Augue Ut PC'),(72,'Brennan','Brennan','Malesuada Augue Corp.'),(73,'Griffith','Griffith','Dolor Corp.'),(74,'Ignatius','Ignatius','Scelerisque Dui Industries'),(75,'Hedwig','Hedwig','Luctus Sit Associates'),(76,'Quintessa','Quintessa','Turpis PC'),(77,'Wing','Wing','Mauris Consulting'),(78,'Ima','Ima','Suspendisse Corporation'),(79,'Wade','Wade','Mauris Vel Turpis LLC'),(80,'Kaden','Kaden','At Iaculis Institute'),(81,'Shannon','Shannon','Nisi Sem Semper Associates'),(82,'Mariam','Mariam','Mi LLC'),(83,'Axel','Axel','Quis Associates'),(84,'Griffith','Griffith','Mauris PC'),(85,'Walker','Walker','Porttitor Interdum Sed Company'),(86,'Zia','Zia','Aenean Institute'),(87,'Jocelyn','Jocelyn','Proin Vel Nisl Associates'),(88,'Noelani','Noelani','Nulla Aliquet Foundation'),(89,'Catherine','Catherine','Montes Corp.'),(90,'Samuel','Samuel','Semper Dui LLP'),(91,'Noelani','Noelani','Blandit Industries'),(92,'Baxter','Baxter','Imperdiet Non Incorporated'),(93,'Martena','Martena','Non Sapien Molestie Inc.'),(94,'Eugenia','Eugenia','Nam Company'),(95,'Sawyer','Sawyer','Rutrum Lorem Ac Inc.'),(96,'Jerome','Jerome','Ornare Associates'),(97,'Raymond','Raymond','Molestie Institute'),(98,'Octavia','Octavia','Consectetuer Corp.'),(99,'Aurelia','Aurelia','Vitae Diam Proin Associates'),(100,'Galena','Galena','Metus LLC');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-11 16:03:55
