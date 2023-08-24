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
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues` (
  `id` int NOT NULL AUTO_INCREMENT,
  `club` varchar(255) NOT NULL,
  `ground` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues`
--

LOCK TABLES `venues` WRITE;
/*!40000 ALTER TABLE `venues` DISABLE KEYS */;
INSERT INTO `venues` VALUES (1,'Arsenal','Emirates Stadium','N7 7AJ'),(2,'Aston Villa','Villa Park','B6 6QE'),(3,'Bournemouth','Dean Court','BH7 7AF'),(4,'Brentford','Brentford Community Stadium','TW8 0RU'),(5,'Brighton & Hove Albion','Amex Stadium','BN2 4AT'),(6,'Burnley','Turf  Moor','BB10 4BX'),(7,'Chelsea','Stamford Bridge','SW6 1HS'),(8,'Crystal Palace','Selhurst Park','SE25 6PU'),(9,'Everton','Goodison Park','L4 4EL'),(10,'Fulham','Craven Cottage',' SW6 6H'),(11,'Liverpool','Anfield','L4 0TH'),(12,'Luton Town','Kenilworth Road','LU4 8AW'),(13,'Manchester City','City of Manchester Stadium','M11 3FF'),(14,'Manchester United','Old Trafford','M16 0RA'),(15,'Newcastle United','St James Park','NE1 5DL'),(16,'Nottingham Forest','City Ground','NG2 5FJ'),(17,'Sheffield United','Bramall Lane','S2 4SU'),(18,'Tottenham Hotspur','Tottenham Hotspur Stadium',' NW1 2SA'),(19,'West Ham United','London Stadium','E20 2ST'),(20,'Wolverhampton Wanderers','Molineux Stadium','WV1 4QR'),(21,'Bath','Farleigh House','BA2 7AU'),(22,'Bristol Bears','Ashton Gate','BS3 2EJ'),(23,'Exeter Chiefs','Sandy Park','EX2 5PX'),(24,'Gloucester','Kingsholm Stadium','GL1 2SN'),(25,'Harlequins','Twickenham Stoop','TW2 7BA'),(26,'Leicester Tigers','King Power Stadium','LE2 7FL'),(27,'London Irish','The Stoop','TW2 7BA'),(28,'Newcastle Falcons','Kingston Park','NE1 4AN'),(29,'Northampton Saints','Cinch Stadium at Franklins Gardens','NN5 5BG'),(30,'Sale Sharks','AJ Bell Stadium','M30 7EY'),(31,'Saracens','Barnet Copthall','NW4 1RL'),(32,'Belfast Giants','SSE Arena Belfast','BT3 9QQ'),(33,'Cardiff Devils','Vindico Arena','CF11 0JS'),(34,'Coventry Blaze','Coventry Skydome','CV1 3AZ'),(35,'Dundee Stars','Dundee Ice Arena','DD2 3SQ'),(36,'Fife Flyers','Fife Ice Arena','KY1 3HS'),(37,'Glasgow Clan','Braehead Arena','G51 4BN'),(38,'Guildford Flames','Stoke Park','GU1 1UP'),(39,'Manchester Storm','Planet Ice Altrincham','WA14 1ET'),(40,'Nottingham Panthers','National Ice Centre','NG1 1LA'),(41,'Sheffield Steelers','Utilita Arena Sheffield','S9 2DF');
/*!40000 ALTER TABLE `venues` ENABLE KEYS */;
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
