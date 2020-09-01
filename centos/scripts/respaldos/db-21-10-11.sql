-- MySQL dump 10.13  Distrib 8.0.17, for Linux (x86_64)
--
-- Host: BASE_DATOS    Database: people
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `edad` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` VALUES (1,'Jesus','Posada',31),(2,'Cherise','Olenick',31),(3,'Nohemi','Overlock',16),(4,'Tom','Fellers',11),(5,'Teri','Mess',11),(6,'Violette','Zawislak',12),(7,'Gisele','Cremeans',26),(8,'Rey','Sturdevant',17),(9,'Jeannine','Hysell',29),(10,'Preston','Manigault',14),(11,'Cinda','Dales',26),(12,'Shaniqua','Barnaby',16),(13,'Julieann','Fountaine',28),(14,'Georgianna','Leigh',33),(15,'Jana','Putnam',25),(16,'Kimber','Doescher',20),(17,'Eli','Moya',16),(18,'Louanne','Osbourn',30),(19,'Elaine','Sindelar',17),(20,'Keren','Beecham',20),(21,'Pamella','Nordstrom',12),(22,'Venice','Rudisill',23),(23,'Monroe','Sires',20),(24,'Rosalinda','Strickler',19),(25,'Juli','Laclair',24),(26,'Violeta','Rosier',13),(27,'Janessa','Bearden',19),(28,'Dani','Tokarz',29),(29,'Danial','Nesler',23),(30,'Love','Ashford',23),(31,'Horace','Jerez',24),(32,'Lanita','Rizzi',20),(33,'Wilburn','Human',32),(34,'Ike','Bolyard',29),(35,'Victorina','Bethea',21),(36,'Tamisha','Sweetman',32),(37,'Tyrell','Giorgi',24),(38,'Andra','Redmon',17),(39,'Kristina','Collins',14),(40,'Adah','Sidebottom',12),(41,'Fannie','Spector',21),(42,'Kittie','Jacobus',22),(43,'Marcy','Bronstein',26),(44,'Lavon','Degraffenreid',14),(45,'Mabel','Ecker',28),(46,'Branden','Tippie',23),(47,'Wendell','Saner',30),(48,'Meg','Feely',24),(49,'Lavone','Saam',18),(50,'Rachele','Lichtenberger',19);
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-09-01 21:10:12
