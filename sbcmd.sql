-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: gg
-- ------------------------------------------------------
-- Server version	10.3.38-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

use sbcmd ;

--
-- Table structure for table `Animateur`
--

DROP TABLE IF EXISTS `Animateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Animateur` (
  `num` int(11) NOT NULL,
  `nom` varchar(20) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Animateur`
--

LOCK TABLES `Animateur` WRITE;
/*!40000 ALTER TABLE `Animateur` DISABLE KEYS */;
INSERT INTO `Animateur` VALUES (43,'Parker'),(45,'Watson'),(48,'Jameson');
/*!40000 ALTER TABLE `Animateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categorie`
--

DROP TABLE IF EXISTS `Categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Categorie` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categorie`
--

LOCK TABLES `Categorie` WRITE;
/*!40000 ALTER TABLE `Categorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `Categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES (1,'GAMBO','Rachida'),(2,'BRAAS','Emma'),(3,'LUCINA','Teptida'),(4,'VICENTE','Monica'),(5,'DARBOE','Diem');
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Commande`
--

DROP TABLE IF EXISTS `Commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Commande` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `payee` tinyint(1) DEFAULT 0,
  `numClient` int(11) NOT NULL,
  `date_cmd` date NOT NULL,
  PRIMARY KEY (`num`),
  KEY `numClient` (`numClient`),
  CONSTRAINT `Commande_ibfk_1` FOREIGN KEY (`numClient`) REFERENCES `Client` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Commande`
--

LOCK TABLES `Commande` WRITE;
/*!40000 ALTER TABLE `Commande` DISABLE KEYS */;
INSERT INTO `Commande` VALUES (1,0,1,'2023-10-04'),(2,0,2,'2023-10-05'),(3,1,4,'2023-10-05'),(4,0,2,'2023-10-09');
/*!40000 ALTER TABLE `Commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Magasin`
--

DROP TABLE IF EXISTS `Magasin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Magasin` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `ville` varchar(100) NOT NULL,
  `pays` varchar(40) NOT NULL DEFAULT 'France',
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Magasin`
--

LOCK TABLES `Magasin` WRITE;
/*!40000 ALTER TABLE `Magasin` DISABLE KEYS */;
INSERT INTO `Magasin` VALUES (1,'Caen','France'),(2,'Ouarzazate','Maroc'),(3,'Nogent-sur-Marne','France'),(4,'Oslo','Norvège'),(5,'Barcelone','Espagne'),(6,'Grenade','Espagne'),(7,'Grenade','France');
/*!40000 ALTER TABLE `Magasin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Produit`
--

DROP TABLE IF EXISTS `Produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Produit` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(100) DEFAULT NULL,
  `prix` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Produit`
--

LOCK TABLES `Produit` WRITE;
/*!40000 ALTER TABLE `Produit` DISABLE KEYS */;
INSERT INTO `Produit` VALUES (1,'Dentifrice adulte Fraise',1.30),(2,'Dentifrice enfant Fraise',1.99),(3,'Dentifrice enfant Menthe',2.54),(4,'Dentifrice adulte Kiwi',1.99),(5,'Dentifrice adulte Fruits rouges',2.99),(6,'Crême de nuit à la mangue',23.89),(7,'Crême de nuit Argan',21.99),(8,'Crême de jour Pomme',19.79),(9,'Crême anti-rides au café',44.33),(10,'Crême anti-rides au cacao',45.89);
/*!40000 ALTER TABLE `Produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Service`
--

DROP TABLE IF EXISTS `Service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Service` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `numCategorie` int(11) NOT NULL,
  `libelle` varchar(40) NOT NULL,
  PRIMARY KEY (`num`,`numCategorie`),
  KEY `numCategorie` (`numCategorie`),
  CONSTRAINT `Service_ibfk_1` FOREIGN KEY (`numCategorie`) REFERENCES `Categorie` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Service`
--

LOCK TABLES `Service` WRITE;
/*!40000 ALTER TABLE `Service` DISABLE KEYS */;
/*!40000 ALTER TABLE `Service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frequenter`
--

DROP TABLE IF EXISTS `frequenter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frequenter` (
  `numClient` int(11) NOT NULL,
  `numMagasin` int(11) NOT NULL,
  PRIMARY KEY (`numClient`,`numMagasin`),
  KEY `numMagasin` (`numMagasin`),
  CONSTRAINT `frequenter_ibfk_1` FOREIGN KEY (`numClient`) REFERENCES `Client` (`num`),
  CONSTRAINT `frequenter_ibfk_2` FOREIGN KEY (`numMagasin`) REFERENCES `Magasin` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frequenter`
--

LOCK TABLES `frequenter` WRITE;
/*!40000 ALTER TABLE `frequenter` DISABLE KEYS */;
INSERT INTO `frequenter` VALUES (1,3),(2,5),(3,2),(4,5),(5,2);
/*!40000 ALTER TABLE `frequenter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regrouper`
--

DROP TABLE IF EXISTS `regrouper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regrouper` (
  `numCommande` int(11) NOT NULL,
  `numProduit` int(11) NOT NULL,
  `quantite` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`numCommande`,`numProduit`),
  KEY `numProduit` (`numProduit`),
  CONSTRAINT `regrouper_ibfk_1` FOREIGN KEY (`numCommande`) REFERENCES `Commande` (`num`),
  CONSTRAINT `regrouper_ibfk_2` FOREIGN KEY (`numProduit`) REFERENCES `Produit` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regrouper`
--

LOCK TABLES `regrouper` WRITE;
/*!40000 ALTER TABLE `regrouper` DISABLE KEYS */;
INSERT INTO `regrouper` VALUES (1,3,1),(1,4,3),(1,7,1),(2,2,1),(2,3,1),(3,8,2),(3,10,1),(4,1,3);
/*!40000 ALTER TABLE `regrouper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-08 21:31:36
