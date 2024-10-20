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
  `rating` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES 
(41,'Batman:','O Cavaleiro das Trevas',NULL,'Description for Batman','imagens/darkknight0.jpg', 'Unknown'),
(42,'Top Gun:','Maverick',NULL,'Description for Top Gun','imagens/topgun2.jpg', 'Unknown'),
(43,'Deadpool','& Wolverine',NULL,'Description for Deadpool','imagens/deadpool1.jpg', 'Unknown'),
(44,'Coringa',NULL,NULL,'Description for Joker','imagens/joker3.jpg', 'Unknown'),
(45,'Venom:','Tempo de Carnificina',NULL,'Description for Venom','imagens/venom4.jpg', 'Unknown'),
(46,'O Corvo',NULL,NULL,'Description for O Corvo','imagens/corvo5.jpg', 'Unknown'),
(47,'IT','- Captulo Dois',NULL,'Description for IT','imagens/it6.jpg', 'Unknown'),
(48,'Vingadores:','Guerra Infinita',NULL,'Description for Vingadores','imagens/vingadores7.jpg', 'Unknown'),
(49,'Meu Malvado','Favorito 4',NULL,'Description for O Malvado','imagens/malvado8.jpg', 'Unknown'),
(50,'Em Ritmo de Fuga',NULL,NULL,'Description for Baby Driver','imagens/babydriver9.jpg', 'Unknown'),
(51,'Velozes e Furiosos:','Desafio em Tquio',NULL,'Description for Velozes e Furiosos','imagens/velozes10.jpg', 'Unknown'),
(52,'Homem Aranha:','Sem Volta Para Casa',NULL,'Description for Homem Aranha','imagens/aranha11.jpg', 'Unknown'),
(53,'Harry Potter','e a Pedra Filosofal',NULL,'Description for Harry Potter','imagens/harry12.jpg', 'Unknown');

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
  `rating` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ranking_movies`
--

LOCK TABLES `ranking_movies` WRITE;
/*!40000 ALTER TABLE `ranking_movies` DISABLE KEYS */;
INSERT INTO `ranking_movies` VALUES 
(1,'John Wick','Description for John Wick','imagens/acao1.jpg','acao', 'Unknown'),
(2,'Mad Max','Description for Mad Max','imagens/acao2.jpg','acao', 'Unknown'),
(3,'The Raid','Description for The Raid','imagens/acao3.jpg','acao', 'Unknown'),
(4,'Mission Impossible','Description for Mission Impossible','imagens/acao4.jpg','acao', 'Unknown'),
(5,'Fast and Furious','Description for Fast and Furious','imagens/acao5.jpg','acao', 'Unknown'),
(6,'The Hangover','Description for The Hangover','imagens/comedia1.jpg','comedia', 'Unknown'),
(7,'Bridesmaids','Description for Bridesmaids','imagens/comedia2.jpg','comedia', 'Unknown'),
(8,'Superbad','Description for Superbad','imagens/comedia3.jpg','comedia', 'Unknown'),
(9,'Vovó...Zona','Description for Vovó Zona','imagens/comedia4.jpg','comedia', 'Unknown'),
(10,'Gente Grande','Description for Gente Grande','imagens/comedia5.jpg','comedia', 'Unknown'),
(11, 'NULL', 'Description for', 'imagens/drama1.jpg', 'Drama', 'Unknown'),
(12, 'NULL', 'Description for', 'imagens/drama2.jpg', 'Drama', 'Unknown'),
(13, 'NULL', 'Description for', 'imagens/drama3.jpg', 'Drama', 'Unknown'),
(14, 'NULL', 'Description for', 'imagens/drama4.jpg', 'Drama', 'Unknown'),
(15, 'NULL', 'Description for', 'imagens/drama5.jpg', 'Drama', 'Unknown'),
(16, 'NULL', 'Description for', 'imagens/fantasia1.jpg', 'Fantasia', 'Unknown'),
(17, 'NULL', 'Description for', 'imagens/fantasia2.jpg', 'Fantasia', 'Unknown'),
(18, 'NULL', 'Description for', 'imagens/fantasia3.jpg', 'Fantasia', 'Unknown'),
(19, 'NULL', 'Description for', 'imagens/fantasia4.jpg', 'Fantasia', 'Unknown'),
(20, 'NULL', 'Description for', 'imagens/fantasia5.jpg', 'Fantasia', 'Unknown'),
(21, 'NULL', 'Description for', 'imagens/ficcao1.jpg', 'Ficção', 'Unknown'),
(22, 'NULL', 'Description for', 'imagens/ficcao2.jpg', 'Ficção', 'Unknown'),
(23, 'NULL', 'Description for', 'imagens/ficcao3.jpg', 'Ficção', 'Unknown'),
(24, 'NULL', 'Description for', 'imagens/ficcao4.jpg', 'Ficção', 'Unknown'),
(25, 'NULL', 'Description for', 'imagens/ficcao5.jpg', 'Ficção', 'Unknown'),
(26, 'NULL', 'Description for', 'imagens/terror1.jpg', 'Terror', 'Unknown'),
(27, 'NULL', 'Description for', 'imagens/terror2.jpg', 'Terror', 'Unknown'),
(28, 'NULL', 'Description for', 'imagens/terror3.jpg', 'Terror', 'Unknown'),
(29, 'NULL', 'Description for', 'imagens/terror4.jpg', 'Terror', 'Unknown'),
(30, 'NULL', 'Description for', 'imagens/terror5.jpg', 'Terror', 'Unknown'),
(31, 'NULL', 'Description for', 'imagens/romance1.jpg', 'Romance', 'Unknown'),
(32, 'NULL', 'Description for', 'imagens/romance2.jpg', 'Romance', 'Unknown'),
(33, 'NULL', 'Description for', 'imagens/romance3.jpg', 'Romance', 'Unknown'),
(34, 'NULL', 'Description for', 'imagens/romance4.jpg', 'Romance', 'Unknown'),
(35, 'NULL', 'Description for', 'imagens/romance5.jpg', 'Romance', 'Unknown'),
(36, 'NULL', 'Description for', 'imagens/misterio1.jpg', 'Mistério', 'Unknown'),
(37, 'NULL', 'Description for', 'imagens/misterio2.jpg', 'Mistério', 'Unknown'),
(38, 'NULL', 'Description for', 'imagens/misterio3.jpg', 'Mistério', 'Unknown'),
(39, 'NULL', 'Description for', 'imagens/misterio4.jpg', 'Mistério', 'Unknown'),
(40, 'NULL', 'Description for', 'imagens/misterio5.jpg', 'Mistério', 'Unknown');

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
