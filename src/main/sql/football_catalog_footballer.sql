-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: football_catalog
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `footballer`
--

DROP TABLE IF EXISTS `footballer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footballer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `surname` varchar(150) DEFAULT NULL,
  `gender` varchar(150) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `team` varchar(150) DEFAULT NULL,
  `country` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footballer`
--

LOCK TABLES `footballer` WRITE;
/*!40000 ALTER TABLE `footballer` DISABLE KEYS */;
INSERT INTO `footballer` VALUES (1,'Vasya','Petrov','male','2001-12-12','Panthers','Russia'),(2,'Anton','Miller','male','2000-10-10','Panthers','Russia'),(3,'Kirill','Grachev','male','2002-08-09','Lions','Russia'),(4,'George','Brown','male','1998-02-03','Snakes','USA'),(5,'Oksana','Mitrichenko','female','2001-02-04','Cats','Russia'),(6,'Antonio','Esposito','male','1997-05-01','Dogs','Italy'),(7,'Kirill','Alexeev','male','2003-02-02','Lions','Russia'),(8,'Rita','Giordano','female','1999-01-08','Panthers','Italy'),(9,'Bruno','Romano','male','1999-09-12','Lions','Italy'),(10,'Alessandro','Rossi','male','1999-02-08','Panthers','Italy'),(11,'Mihail','Omarov','male','1997-02-01','Dogs','Russia'),(12,'Vitaly','Averenko','male','1996-09-09','Snakes','Russia'),(13,'Oleg','Vasin','male','1995-01-02',',Tigers','Russia'),(16,'Jack','Tomas','male','2001-08-08','Panthers','USA'),(19,'Alex','Smirnov','male','1996-02-01','Lions','Russia'),(28,'Maria','Marix','female','2000-01-03','Cats','Russia'),(35,'Alex','Lekov','male','1989-01-04','Lions','Russia'),(36,'Pasha','Lekov','male','1989-01-04','Lions','Russia'),(38,'Alex','Lekov','male','1989-01-04','Lions','Russia'),(39,'Evgeny','Mihalev','male','1988-01-04','Lions','Russia'),(45,'Vanya','Sidorov','male','2003-10-10','Snakes,','Russia'),(46,'Vanya','Sidorov','male','2003-10-11','Snakes','Russia'),(47,'Alex','Lekov','male','1989-01-04','Lions','Russia'),(48,'Tanya','Lekova','female','1989-01-06','Lions','Russia'),(49,'Alex','Lekov','male','1989-01-04','Lions','Russia'),(52,'Rodion','Ahmedov','male','1989-10-11','Dogs','Russia'),(55,'Petya','Vasiliev','male','2000-10-11','Tigers','Russia'),(56,'Vanya','Sidorov','male','2003-10-11','Snakes','Russia'),(58,'Andrey','Fillipov','male','2001-10-11','Tigers','Russia');
/*!40000 ALTER TABLE `footballer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19  1:14:38
