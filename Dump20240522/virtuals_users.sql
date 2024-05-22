-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: virtuals
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `university` varchar(150) DEFAULT NULL,
  `interest` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Isabel Miller',27,'Male','Phoenix','Massachusetts Institute of Technology','Cooking'),(2,'David Miller',22,'Female','San Jose','Columbia University','Cooking'),(3,'Alice Brown',66,'Male','San Jose','Princeton University','Hiking'),(4,'Alice Davis',66,'Male','Chicago','Johns Hopkins University','Sports'),(5,'Charlie Jones',41,'Female','San Antonio','Princeton University','Reading'),(6,'Charlie Williams',57,'Female','Houston','Columbia University','Photography'),(7,'Grace Taylor',25,'Male','Chicago','University of Pennsylvania','Music'),(8,'Grace Taylor',33,'Female','San Antonio','Massachusetts Institute of Technology','Reading'),(9,'Jack Miller',30,'Male','San Diego','Massachusetts Institute of Technology','Hiking'),(10,'Alice Brown',65,'Female','Phoenix','California Institute of Technology','Photography'),(11,'Alice Smith',55,'Female','New York','University of Pennsylvania','Sports'),(12,'Charlie Smith',63,'Male','Dallas','Princeton University','Gaming'),(13,'Jack Davis',59,'Male','Los Angeles','University of Pennsylvania','Cooking'),(14,'Alice Moore',41,'Female','Phoenix','University of Pennsylvania','Hiking'),(15,'Henry Brown',66,'Male','San Diego','University of Pennsylvania','Writing'),(16,'Frank Johnson',33,'Male','Houston','Stanford University','Hiking'),(17,'Alice Miller',31,'Female','San Jose','Columbia University','Reading'),(18,'Frank Jones',44,'Male','San Diego','Massachusetts Institute of Technology','Movies'),(19,'Emma Wilson',30,'Male','Houston','Massachusetts Institute of Technology','Movies'),(20,'Isabel Moore',25,'Male','Philadelphia','Harvard University','Movies'),(21,'Alice Davis',53,'Female','San Diego','Princeton University','Gaming'),(22,'Alice Jones',39,'Female','Phoenix','Yale University','Gaming'),(23,'Frank Smith',56,'Male','Philadelphia','Yale University','Hiking'),(24,'Emma Moore',21,'Female','Los Angeles','Stanford University','Traveling'),(25,'Emma Brown',35,'Female','Los Angeles','Columbia University','Hiking'),(26,'Grace Brown',37,'Female','Dallas','Stanford University','Traveling'),(27,'Isabel Wilson',50,'Female','San Diego','Yale University','Reading'),(28,'David Williams',41,'Female','San Antonio','Harvard University','Movies'),(29,'Emma Williams',53,'Male','Chicago','Yale University','Movies'),(30,'Isabel Williams',18,'Male','Houston','Princeton University','Writing'),(31,'Isabel Smith',22,'Male','San Jose','Princeton University','Reading'),(32,'Isabel Wilson',50,'Female','Phoenix','University of Pennsylvania','Hiking'),(33,'Henry Miller',36,'Female','Chicago','Yale University','Gaming'),(34,'David Smith',26,'Male','Los Angeles','University of Chicago','Cooking'),(35,'Isabel Taylor',39,'Female','San Jose','Princeton University','Gaming'),(36,'Jack Wilson',52,'Male','Houston','University of Chicago','Reading'),(37,'Isabel Wilson',21,'Male','New York','Stanford University','Movies'),(38,'Henry Brown',46,'Female','New York','University of Chicago','Writing'),(39,'Alice Moore',21,'Female','New York','Stanford University','Music'),(40,'Grace Smith',28,'Male','San Antonio','Yale University','Photography'),(41,'Alice Smith',67,'Male','San Jose','University of Pennsylvania','Writing'),(42,'Henry Miller',51,'Male','San Diego','Johns Hopkins University','Music'),(43,'Bob Jones',38,'Male','San Antonio','Johns Hopkins University','Sports'),(44,'David Brown',23,'Female','New York','Johns Hopkins University','Cooking'),(45,'Bob Jones',35,'Male','New York','Yale University','Reading'),(46,'Jack Johnson',28,'Male','Phoenix','Massachusetts Institute of Technology','Movies'),(47,'Grace Brown',66,'Female','San Diego','Massachusetts Institute of Technology','Traveling'),(48,'Henry Miller',39,'Male','Philadelphia','Massachusetts Institute of Technology','Traveling'),(49,'Grace Moore',37,'Male','Los Angeles','Princeton University','Writing'),(50,'David Johnson',54,'Male','Dallas','California Institute of Technology','Sports'),(51,'Isabel Wilson',39,'Male','San Jose','Massachusetts Institute of Technology','Hiking'),(52,'Charlie Smith',64,'Male','San Antonio','University of Pennsylvania','Cooking'),(53,'Charlie Miller',47,'Female','Los Angeles','Columbia University','Music'),(54,'Bob Jones',47,'Male','San Diego','Harvard University','Hiking'),(55,'Jack Taylor',44,'Female','New York','University of Pennsylvania','Music'),(56,'Bob Brown',40,'Female','Houston','Harvard University','Hiking'),(57,'Alice Jones',67,'Female','New York','University of Chicago','Cooking'),(58,'Charlie Davis',46,'Female','Philadelphia','California Institute of Technology','Cooking'),(59,'Alice Jones',33,'Female','New York','University of Chicago','Writing'),(60,'Bob Davis',55,'Female','San Diego','California Institute of Technology','Photography'),(61,'Bob Wilson',27,'Female','Chicago','University of Chicago','Music'),(62,'Bob Moore',66,'Male','Philadelphia','Princeton University','Sports'),(63,'Frank Wilson',38,'Male','Dallas','University of Chicago','Reading'),(64,'Emma Davis',26,'Male','New York','University of Chicago','Movies'),(65,'Grace Williams',65,'Female','Houston','Yale University','Writing'),(66,'Grace Davis',22,'Male','Dallas','Harvard University','Photography'),(67,'Henry Taylor',65,'Male','Philadelphia','University of Chicago','Music'),(68,'David Jones',42,'Male','New York','California Institute of Technology','Photography'),(69,'Emma Johnson',35,'Female','Houston','California Institute of Technology','Music'),(70,'Emma Miller',27,'Female','Philadelphia','Stanford University','Cooking'),(71,'Grace Brown',49,'Male','Phoenix','Harvard University','Movies'),(72,'David Taylor',40,'Male','Houston','Harvard University','Hiking'),(73,'Jack Brown',28,'Female','San Antonio','Massachusetts Institute of Technology','Movies'),(74,'Emma Brown',53,'Male','Los Angeles','Harvard University','Photography'),(75,'Bob Davis',36,'Male','Los Angeles','Columbia University','Reading'),(76,'David Miller',20,'Male','Phoenix','Yale University','Sports'),(77,'Charlie Moore',19,'Female','Chicago','Massachusetts Institute of Technology','Sports'),(78,'Charlie Jones',58,'Male','Philadelphia','California Institute of Technology','Sports'),(79,'David Williams',28,'Male','San Antonio','Princeton University','Reading'),(80,'Charlie Taylor',56,'Male','Philadelphia','Stanford University','Photography'),(81,'Bob Moore',35,'Male','Phoenix','Princeton University','Gaming'),(82,'Frank Jones',46,'Female','San Antonio','Johns Hopkins University','Movies'),(83,'Grace Jones',48,'Female','Los Angeles','Columbia University','Traveling'),(84,'Charlie Wilson',67,'Male','Chicago','Stanford University','Photography'),(85,'Henry Williams',24,'Male','Philadelphia','University of Pennsylvania','Movies'),(86,'Grace Brown',62,'Male','Dallas','Harvard University','Traveling'),(87,'Charlie Wilson',25,'Female','Los Angeles','University of Chicago','Gaming'),(88,'Isabel Moore',51,'Female','Los Angeles','Columbia University','Traveling'),(89,'Alice Brown',43,'Female','Houston','Johns Hopkins University','Music'),(90,'Frank Moore',27,'Male','San Diego','Massachusetts Institute of Technology','Gaming'),(91,'Bob Williams',19,'Male','Dallas','California Institute of Technology','Movies'),(92,'Charlie Johnson',25,'Male','Dallas','Princeton University','Music'),(93,'Grace Wilson',63,'Female','San Antonio','Yale University','Hiking'),(94,'Isabel Brown',45,'Male','Philadelphia','California Institute of Technology','Movies'),(95,'Frank Taylor',41,'Female','Phoenix','Massachusetts Institute of Technology','Writing'),(96,'Henry Brown',66,'Male','San Diego','Columbia University','Hiking'),(97,'David Wilson',34,'Female','Dallas','California Institute of Technology','Cooking'),(98,'Emma Jones',44,'Female','San Diego','Stanford University','Reading'),(99,'David Miller',51,'Female','Houston','Princeton University','Sports'),(100,'Henry Wilson',41,'Female','Houston','California Institute of Technology','Movies');
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

-- Dump completed on 2024-05-22  8:57:36
