-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: modelworld
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `partNo` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(300) DEFAULT NULL,
  `isForSale` tinyint(1) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,23001,'cabinet','Rhino 3D model of cabinet',1,21),(2,23002,'sofa','Rhino 3D model of sofa',1,20),(3,23003,'coffee table','Rhino 3D model of coffee table',0,15),(4,23004,'dining chair','Rhino 3D model of dining chair',1,8),(5,23005,'bookshelf','Rhino 3D model of bookshelf',1,25),(6,23006,'bed','Rhino 3D model of bed',0,30),(7,23007,'nightstand','Rhino 3D model of nightstand',1,12),(8,23008,'desk','Rhino 3D model of desk',1,35),(9,23009,'dresser','Rhino 3D model of dresser',1,28),(10,23010,'filing cabinet','Rhino 3D model of filing cabinet',1,20),(11,23011,'recliner','Rhino 3D model of recliner',1,40),(12,23012,'ottoman','Rhino 3D model of ottoman',0,10),(13,23013,'stool','Rhino 3D model of stool',1,7),(14,23014,'bench','Rhino 3D model of bench',1,22),(15,23015,'tv stand','Rhino 3D model of tv stand',1,18),(16,23016,'bar stool','Rhino 3D model of bar stool',0,12),(17,23017,'dining table','Rhino 3D model of dining table',1,40),(18,23018,'coffee table','Rhino 3D model of coffee table',1,25),(19,23019,'bookshelf','Rhino 3D model of bookshelf',1,30),(20,23020,'bed','Rhino 3D model of bed',1,80);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-26 11:38:24
