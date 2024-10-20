-- MySQL dump 10.13  Distrib 9.1.0, for Linux (x86_64)
--
-- Host: localhost    Database: home_movies
-- ------------------------------------------------------
-- Server version	9.1.0

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `subtitle_small` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Batman:','O Cavaleiro das Trevas',NULL,'Descrio','imagens/darkknight0.jpg'),(2,'Top Gun:','Maverick',NULL,'Descrio','imagens/topgun2.jpg'),(3,'Deadpool','& Wolverine',NULL,'Description for Deadpool','imagens/deadpool1.jpg'),(4,'Coringa',NULL,NULL,'Description for Joker','imagens/joker3.jpg'),(5,'Venom:','Tempo de Carnificina',NULL,'Description for Venom','imagens/venom4.jpg'),(6,'O Corvo',NULL,NULL,'Description for O Corvo','imagens/corvo5.jpg'),(7,'IT','- Captulo Dois',NULL,'Description for IT','imagens/it6.jpg'),(8,'Vingadores:','Guerra Infinita',NULL,'Description for Vingadores','imagens/vingadores7.jpg'),(9,'Meu Malvado','Favorito 4',NULL,'Description for O Malvado','imagens/malvado8.jpg'),(10,'Em Ritmo de Fuga',NULL,NULL,'Description for Baby Driver','imagens/babydriver9.jpg'),(11,'Velozes e Furiosos:','Desafio em Tquio',NULL,'Description for Velozes e Furiosos','imagens/velozes10.jpg'),(12,'Homem Aranha:','Sem Volta Para Casa',NULL,'Description for Homem Aranha','imagens/aranha11.jpg'),(13,'Harry Potter','e a Pedra Filosofal',NULL,'Description for Harry Potter','imagens/harry12.jpg');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ranking_movies`
--

DROP TABLE IF EXISTS `ranking_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ranking_movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_movies`
--

LOCK TABLES `ranking_movies` WRITE;
/*!40000 ALTER TABLE `ranking_movies` DISABLE KEYS */;
INSERT INTO `ranking_movies` VALUES (1,'John Wick','Description for John Wick','imagens/acao1.jpg','acao'),(2,'Mad Max','Description for Mad Max','imagens/acao2.jpg','acao'),(3,'The Raid','Description for The Raid','imagens/acao3.jpg','acao'),(4,'Mission Impossible','Description for Mission Impossible','imagens/acao4.jpg','acao'),(5,'Fast and Furious','Description for Fast and Furious','imagens/acao5.jpg','acao'),(6,'The Hangover','Description for The Hangover','imagens/comedia1.jpg','comedia'),(7,'Bridesmaids','Description for Bridesmaids','imagens/comedia2.jpg','comedia'),(8,'Superbad','Description for Superbad','imagens/comedia3.jpg','comedia');
/*!40000 ALTER TABLE `ranking_movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-20  0:49:00
