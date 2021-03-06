CREATE DATABASE  IF NOT EXISTS `search4houses` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `search4houses`;
-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: search4houses
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `Accounts`
--

DROP TABLE IF EXISTS `Accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Accounts` (
  `accID` varchar(50) NOT NULL DEFAULT '10',
  `username` varchar(45) DEFAULT 'Bob',
  `password` varchar(45) DEFAULT 'billy10',
  `fullName` varchar(45) DEFAULT 'Bill',
  `profilePicURL` varchar(45) DEFAULT 'hekkk',
  `email` varchar(45) DEFAULT 'bob@gmail.com',
  `phoneNum` varchar(45) DEFAULT '408-408-4084',
  PRIMARY KEY (`accID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounts`
--

LOCK TABLES `Accounts` WRITE;
/*!40000 ALTER TABLE `Accounts` DISABLE KEYS */;
INSERT INTO `Accounts` VALUES ('10001','kylek','kylek2000','kyle kennedy','www.kyle.com/profilepic','kyle@gmail.com','408-000-0001'),('10002','lennyl','lennyl2001','lenny leonard','www.lenny.com/profilepic','lenny@gmail.com','408-000-0002'),('10003','mom','mom2002','mo matsbe','www.mo.com/profilepic','mo@gmail.com','408-000-0003'),('10004','nickn','nickn2003','nick noran','www.nick.com/profilepic','nick@gmail.com','408-000-0004'),('10005','oscaro','oscaro2004','oscar obrien','www.oscar.com/profilepic','oscar@gmail.com','408-000-0005'),('11111','alexa','alexa1990','alex armedano','www.alex.com/profilepic','alex@gmail.com','408-012-3456'),('12345','bobb','bobb1991','bob barnes','www.bob.com/profilepic','bob@gmail.com','408-123-4567'),('23456','candacec','candace1992','candace conney','www.candace.com/profilepic','candace@gmail.com','408-234-5678'),('34567','dannyd','dannyd1993','danny davis','www.danny.com/profilepic','danny@gmail.com','408-345-6789'),('45678','elliee','ellie1994','ellie eyamore','www.ellie.com/profilepic','ellie@gmail.com','408-456-7890'),('56789','frankf','frankf1995','frank feeney','www.frank.com/profilepic','frank@gmail.com','408-567-8901'),('67890','garyg','garyg1996','gary gomez','www.gary.com/profilepic','gary@gmail.com','408-678-9012'),('78901','harryh','harryh1997','harry holmes','www.harry.com/profilepic','harry@gmail.com','408-789-0123'),('89012','ivani','ivani1998','ivan isador','www.ivan.com/profilepic','ivan@gmail.com','408-890-1234'),('90123','johnj','johnj1999','john jacobson','www.john.com/profilepic','john@gmail.com','408-901-2345');
/*!40000 ALTER TABLE `Accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29  8:34:52
