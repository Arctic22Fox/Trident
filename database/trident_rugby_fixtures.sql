-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: trident
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `rugby_fixtures`
--

DROP TABLE IF EXISTS `rugby_fixtures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rugby_fixtures` (
  `home_team` varchar(255) DEFAULT NULL,
  `away_team` varchar(255) DEFAULT NULL,
  `match_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rugby_fixtures`
--

LOCK TABLES `rugby_fixtures` WRITE;
/*!40000 ALTER TABLE `rugby_fixtures` DISABLE KEYS */;
INSERT INTO `rugby_fixtures` VALUES ('Bath Rugby','Saracens','2023-08-27 00:00:00'),('Bath Rugby','Harlequins','2023-09-10 00:00:00'),('Bath Rugby','Wasps','2023-09-24 00:00:00'),('Bath Rugby','Leicester Tigers','2023-10-08 00:00:00'),('Bath Rugby','Northampton Saints','2023-10-22 00:00:00'),('Bath Rugby','Bristol Bears','2023-11-05 00:00:00'),('Bath Rugby','Sale Sharks','2023-11-19 00:00:00'),('Bath Rugby','Exeter Chiefs','2023-12-03 00:00:00'),('Bath Rugby','Gloucester Rugby','2023-12-17 00:00:00'),('Bristol Bears','Sale Sharks','2023-08-19 00:00:00'),('Bristol Bears','Northampton Saints','2023-09-02 00:00:00'),('Bristol Bears','London Irish','2023-09-16 00:00:00'),('Bristol Bears','Wasps','2023-09-30 00:00:00'),('Bristol Bears','Leicester Tigers','2023-10-14 00:00:00'),('Bristol Bears','Harlequins','2023-10-28 00:00:00'),('Bristol Bears','Toulouse','2023-11-11 00:00:00'),('Bristol Bears','Racing 92','2023-12-02 00:00:00'),('Bristol Bears','Connacht','2023-12-16 00:00:00'),('Bristol Bears','Gloucester','2023-12-26 00:00:00'),('Exeter Chiefs','Sale Sharks','2023-08-12 00:00:00'),('Exeter Chiefs','Wasps','2023-08-19 00:00:00'),('Exeter Chiefs','Gloucester Rugby','2023-09-02 00:00:00'),('Exeter Chiefs','Harlequins','2023-09-23 00:00:00'),('Exeter Chiefs','Northampton Saints','2023-10-07 00:00:00'),('Exeter Chiefs','London Irish','2023-10-21 00:00:00'),('Exeter Chiefs','Bath Rugby','2023-11-04 00:00:00'),('Exeter Chiefs','Munster Rugby','2023-11-25 00:00:00'),('Exeter Chiefs','Toulouse','2023-12-02 00:00:00'),('Exeter Chiefs','Scarlets','2023-12-16 00:00:00'),('Exeter Chiefs','La Rochelle','2023-12-26 00:00:00'),('Exeter Chiefs','London Irish','2023-12-30 00:00:00'),('Gloucester Rugby','Sale Sharks','2023-08-12 00:00:00'),('Gloucester Rugby','Worcester Warriors','2023-08-26 00:00:00'),('Gloucester Rugby','Saracens','2023-09-09 00:00:00'),('Gloucester Rugby','Harlequins','2023-09-30 00:00:00'),('Gloucester Rugby','Newcastle Falcons','2023-10-14 00:00:00'),('Gloucester Rugby','London Wasps','2023-10-28 00:00:00'),('Gloucester Rugby','Toulouse','2023-11-11 00:00:00'),('Gloucester Rugby','Scarlets','2023-12-02 00:00:00'),('Gloucester Rugby','Benetton Rugby','2023-12-16 00:00:00'),('Gloucester Rugby','Racing 92','2023-12-26 00:00:00'),('Gloucester Rugby','Ospreys','2023-12-30 00:00:00'),('Harlequins','Sale Sharks','2023-08-26 00:00:00'),('Harlequins','Saracens','2023-09-10 00:00:00'),('Harlequins','London Irish','2023-09-24 00:00:00'),('Harlequins','Exeter Chiefs','2023-10-08 00:00:00'),('Harlequins','Bath Rugby','2023-10-22 00:00:00'),('Harlequins','Wasps','2023-11-05 00:00:00'),('Harlequins','Gloucester Rugby','2023-11-19 00:00:00'),('Harlequins','Bristol Bears','2023-12-03 00:00:00'),('Harlequins','Newcastle Falcons','2023-12-17 00:00:00'),('Harlequins','Wasps','2023-12-31 00:00:00'),('Leicester Tigers','Sale Sharks','2023-09-03 00:00:00'),('Leicester Tigers','Bristol Bears','2023-09-17 00:00:00'),('Leicester Tigers','Exeter Chiefs','2023-10-01 00:00:00'),('Leicester Tigers','Wasps','2023-10-15 00:00:00'),('Leicester Tigers','Harlequins','2023-10-29 00:00:00'),('Leicester Tigers','Connacht Rugby','2023-11-12 00:00:00'),('Leicester Tigers','Scarlets','2023-11-26 00:00:00'),('Leicester Tigers','Ulster Rugby','2023-12-10 00:00:00'),('Leicester Tigers','Racing 92','2023-12-24 00:00:00'),('London Irish','Bristol Bears','2023-08-12 00:00:00'),('London Irish','Gloucester','2023-08-26 00:00:00'),('London Irish','Newcastle Falcons','2023-09-09 00:00:00'),('London Irish','Sale Sharks','2023-09-30 00:00:00'),('London Irish','Bristol Bears','2023-10-14 00:00:00'),('London Irish','Wasps','2023-10-28 00:00:00'),('London Irish','Cardiff Rugby','2023-11-11 00:00:00'),('London Irish','Lyon','2023-12-02 00:00:00'),('London Irish','Scarlets','2023-12-16 00:00:00'),('London Irish','La Rochelle','2023-12-26 00:00:00'),('Newcastle Falcons','Wasps','2023-09-02 00:00:00'),('Newcastle Falcons','Gloucester','2023-09-17 00:00:00'),('Newcastle Falcons','Bristol Bears','2023-10-01 00:00:00'),('Newcastle Falcons','Northampton Saints','2023-10-15 00:00:00'),('Newcastle Falcons','Bath','2023-10-29 00:00:00'),('Newcastle Falcons','Harlequins','2023-11-12 00:00:00'),('Newcastle Falcons','Scarlets','2023-11-26 00:00:00'),('Newcastle Falcons','Vodafone Warriors','2023-12-10 00:00:00'),('Newcastle Falcons','Connacht','2023-12-24 00:00:00'),('Northampton Saints','Saracens','2023-08-19 00:00:00'),('Northampton Saints','Bath Rugby','2023-09-02 00:00:00'),('Northampton Saints','Harlequins','2023-09-16 00:00:00'),('Northampton Saints','London Irish','2023-09-30 00:00:00'),('Northampton Saints','Bristol Bears','2023-10-14 00:00:00'),('Northampton Saints','Toulouse','2023-10-28 00:00:00'),('Northampton Saints','Ulster','2023-11-11 00:00:00'),('Northampton Saints','Munster','2023-11-25 00:00:00'),('Northampton Saints','Dragons','2023-12-09 00:00:00'),('Northampton Saints','Sale Sharks','2023-12-23 00:00:00'),('Northampton Saints','Exeter Chiefs','2023-12-30 00:00:00'),('Sale Sharks','Wasps','2023-08-26 00:00:00'),('Sale Sharks','Gloucester','2023-09-03 00:00:00'),('Sale Sharks','Bristol Bears','2023-09-17 00:00:00'),('Sale Sharks','Harlequins','2023-10-01 00:00:00'),('Sale Sharks','Newcastle Falcons','2023-10-15 00:00:00'),('Sale Sharks','Cardiff Rugby','2023-10-22 00:00:00'),('Sale Sharks','Leicester Tigers','2023-11-05 00:00:00'),('Sale Sharks','Munster','2023-11-19 00:00:00'),('Sale Sharks','Northampton Saints','2023-11-26 00:00:00'),('Sale Sharks','Scarlets','2023-12-03 00:00:00'),('Sale Sharks','Bath','2023-12-17 00:00:00'),('Sale Sharks','Ospreys','2023-12-24 00:00:00'),('Saracens','Harlequins','2023-09-03 00:00:00'),('Saracens','Wasps','2023-09-17 00:00:00'),('Saracens','Gloucester','2023-10-01 00:00:00'),('Saracens','Bristol Bears','2023-10-15 00:00:00'),('Saracens','London Irish','2023-10-29 00:00:00'),('Saracens','Stade Francais','2023-11-12 00:00:00'),('Saracens','Edinburgh','2023-11-26 00:00:00'),('Saracens','Racing 92','2023-12-10 00:00:00'),('Saracens','Connacht','2023-12-24 00:00:00');
/*!40000 ALTER TABLE `rugby_fixtures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-24 18:16:30
