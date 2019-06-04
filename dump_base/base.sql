-- MySQL dump 10.13  Distrib 5.7.24, for Win64 (x86_64)
--
-- Host: localhost    Database: Pizzeria_base
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `adresse` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Marjy','mfyndon0@narod.ru',NULL),(2,'Krisha','kromao1@merriam-webster.Com',NULL),(3,'BlanCha','bmanthorpe2@multiply.Com',NULL),(4,'Sunshine','swale3@samsung.Com',NULL),(5,'Cher','Cbirtwisle4@wufoo.Com',NULL),(6,'RoChelle','rharefoot5@storify.Com',NULL),(7,'Vi','vyakunin6@wikimedia.org',NULL),(8,'Helyn','hChaffyn7@referenCe.Com',NULL),(9,'Maxwell','mharrhy8@businesswire.Com',NULL),(10,'Putnem','pmergue9@state.gov','1 CHEMIN DU TERROIR , 32100 Caraibes'),(11,'Borg','bdunCkleya@1688.Com',NULL),(12,'Dud','dagronb@wp.Com',NULL),(13,'Tiffanie','tpetrussiC@intel.Com',NULL),(14,'Baxter','bbowermand@webeden.Co.uk',NULL),(15,'TerrenCe','tCollomossee@deliCious.Com',NULL),(16,'Bradford','bhebnerf@iCio.us',NULL),(17,'Lurette','lvanderbaareng@statCounter.Com',NULL),(18,'Klemens','kmougelh@geoCities.Com',NULL),(19,'Freedman','fmCnultyi@Comsenz.Com',NULL),(20,'Bellina','bbrounfieldj@who.int',NULL),(21,'Turner','tbullmank@youku.Com',NULL),(22,'JaCqueline','jjedrysl@blogs.Com',NULL),(23,'MiCheil','mvernem@dmoz.org',NULL),(24,'Myrtia','mrathken@telegraph.Co.uk',NULL),(25,'Ruttger','reppsono@hostgator.Com',NULL),(26,'Vitia','velsomp@sbwire.Com',NULL),(27,'Faith','ftrayesq@bbb.org',NULL),(28,'Florida','faspler@dagondesign.Com',NULL),(29,'Gail','gfranzsChoningers@goo.ne.jp',NULL),(30,'Hasty','hkimbellt@telegraph.Co.uk',NULL),(31,'Douglass','dkenanu@biglobe.ne.jp',NULL),(32,'Blakeley','bwillfordv@nymag.Com',NULL),(33,'Petunia','pCeelyw@va.gov',NULL),(34,'BonifaCe','bwissonx@google.Cn',NULL),(35,'Wilmer','wtilberryy@bing.Com',NULL),(36,'Blinny','briChelz@nytimes.Com',NULL),(37,'Inga','iyurasov10@a8.net',NULL),(38,'Clay','Cspriggs11@theglobeandmail.Com',NULL),(39,'Lois','lshankle12@CbsloCal.Com',NULL),(40,'Dwain','dthiolier13@java.Com',NULL),(41,'Lorens','lboules14@teChnorati.Com',NULL),(42,'Rose','rshailer15@europa.eu',NULL),(43,'Torey','tChesnut16@Craigslist.org',NULL),(44,'Lane','lmustin17@ibm.Com',NULL),(45,'Arliene','aliddiCoat18@apple.Com',NULL),(46,'Illa','iralph19@webnode.Com',NULL),(47,'Milka','mbritten1a@stumbleupon.Com',NULL),(48,'Melanie','msCarlon1b@ameblo.jp',NULL),(49,'Aland','ahayes1C@dailymotion.Com',NULL),(50,'Aridatha','ajedrzejkiewiCz1d@google.Co.jp',NULL);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `creation_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cooker` tinyint(1) NOT NULL DEFAULT '0',
  `deliver` tinyint(1) NOT NULL DEFAULT '0',
  `PRIX` decimal(6,2) DEFAULT NULL,
  `client` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `client_id` (`client`),
  CONSTRAINT `client_id` FOREIGN KEY (`client`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,'2019-05-28 10:15:27',0,0,25.00,1),(2,'2019-05-28 10:15:27',0,0,25.00,2),(3,'2019-05-28 10:15:27',0,0,30.00,3),(4,'2019-05-28 10:15:27',0,0,30.00,4),(5,'2019-05-28 10:15:27',0,0,15.00,5),(6,'2019-05-28 10:15:27',0,0,45.00,6),(7,'2019-05-28 10:15:27',0,0,25.00,7),(8,'2019-05-28 10:15:27',0,0,25.00,8),(9,'2019-05-28 10:15:27',0,0,25.00,9),(10,'2019-05-28 10:15:27',0,0,25.00,10),(12,'2019-05-28 19:42:02',0,0,25.00,10);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,'Tomates'),(2,'Huiles'),(3,'Mozarella'),(4,'Fromages'),(5,'Champignons');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panier`
--

DROP TABLE IF EXISTS `panier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panier` (
  `commande_id` smallint(6) NOT NULL,
  `pizza_id` smallint(6) NOT NULL,
  `qte_pizza` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`commande_id`,`pizza_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panier`
--

LOCK TABLES `panier` WRITE;
/*!40000 ALTER TABLE `panier` DISABLE KEYS */;
INSERT INTO `panier` VALUES (1,1,2),(2,1,2),(3,2,2),(4,2,2),(5,2,1),(6,1,3),(7,1,2),(8,1,2),(9,1,2),(10,1,2),(12,1,2);
/*!40000 ALTER TABLE `panier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizza`
--

DROP TABLE IF EXISTS `pizza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pizza` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `prix` decimal(4,2) DEFAULT NULL,
  `formule` text,
  `pizzeria` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pizzeria_id` (`pizzeria`),
  CONSTRAINT `pizzeria_id` FOREIGN KEY (`pizzeria`) REFERENCES `pizzeria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizza`
--

LOCK TABLES `pizza` WRITE;
/*!40000 ALTER TABLE `pizza` DISABLE KEYS */;
INSERT INTO `pizza` VALUES (1,'Marguerita',12.50,'0.25 Kg Tomates + 0.25 kg Huile + 0.5 Kg Mozarella',1),(2,'Marguerita',12.50,'0.25 Kg Tomates + 0.25 kg Huile + 0.5 Kg Mozarella',2),(3,'Marguerita',12.50,'0.25 Kg Tomates + 0.25 kg Huile + 0.5 Kg Mozarella',3),(4,'Marguerita',12.50,'0.25 Kg Tomates + 0.25 kg Huile + 0.5 Kg Mozarella',4),(5,'Marguerita',12.50,'0.25 Kg Tomates + 0.25 kg Huile + 0.5 Kg Mozarella',5),(6,'REINE',15.00,'0.25 Kg Tomates + 0.25 kg Huile + 0.25 Kg Mozarella+ 0.25 Kg Champignon',1),(7,'REINE',15.00,'0.25 Kg Tomates + 0.25 kg Huile + 0.25 Kg Mozarella+ 0.25 Kg Champignon',2),(8,'REINE',15.00,'0.25 Kg Tomates + 0.25 kg Huile + 0.25 Kg Mozarella+ 0.25 Kg Champignon',3),(9,'REINE',15.00,'0.25 Kg Tomates + 0.25 kg Huile + 0.25 Kg Mozarella+ 0.25 Kg Champignon',4),(10,'REINE',15.00,'0.25 Kg Tomates + 0.25 kg Huile + 0.25 Kg Mozarella+ 0.25 Kg Champignon',5),(11,'NAPOLITAINE',17.00,'0.30 Kg Fromages+ 0.20 Kg Tomates + 0.15 kg Huile + 0.25 Kg Mozarella',1),(12,'NAPOLITAINE',17.00,'0.30 Kg Fromages+ 0.20 Kg Tomates + 0.15 kg Huile + 0.25 Kg Mozarella',2),(13,'NAPOLITAINE',17.00,'0.30 Kg Fromages+ 0.20 Kg Tomates + 0.15 kg Huile + 0.25 Kg Mozarella',3),(14,'NAPOLITAINE',17.50,'0.30 Kg Fromages+ 0.20 Kg Tomates + 0.15 kg Huile + 0.25 Kg Mozarella',4),(15,'NAPOLITAINE',17.50,'0.30 Kg Fromages+ 0.20 Kg Tomates + 0.15 kg Huile + 0.25 Kg Mozarella',5),(16,'ROMAINE',16.50,' 0.20 Kg Tomates + 0.20 kg Huile + 0.5 Kg Mozarella',1),(17,'ROMAINE',16.50,' 0.20 Kg Tomates + 0.20 kg Huile + 0.5 Kg Mozarella',3),(18,'ROMAINE',16.50,' 0.20 Kg Tomates + 0.20 kg Huile + 0.5 Kg Mozarella',4),(19,'SICILIENNE',14.50,' 0.30 Kg Tomates + 0.25 kg Huile + 0.35 Kg Mozarella',3),(20,'SICILIENNE',14.50,' 0.30 Kg Tomates + 0.25 kg Huile + 0.35 Kg Mozarella',1),(21,'SICILIENNE',14.50,' 0.30 Kg Tomates + 0.25 kg Huile + 0.35 Kg Mozarella',2),(22,'SICILIENNE',14.50,' 0.30 Kg Tomates + 0.25 kg Huile + 0.35 Kg Mozarella',5),(23,'CAPRICIOLA',13.50,' 0.30 Kg Tomates + 0.25 kg Huile + 0.35 Kg Mozarella + 0.4 Kg Champignon',3),(24,'CAPRICIOLA',13.50,' 0.30 Kg Tomates + 0.25 kg Huile + 0.35 Kg Mozarella + 0.4 Kg Champignon',5),(25,'CAPRICIOLA',13.50,' 0.40 Kg Tomates + 0.25 kg Huile + 0.35 Kg Mozarella + 0.4 Kg Champignon',4),(26,'CALZONE',13.00,' 0.30 Kg Tomates + 0.25 kg Huile + 0.2 Kg Mozarella + 0.3 Kg Champignon ',2),(27,'CALZONE',13.00,' 0.30 Kg Tomates + 0.25 kg Huile + 0.2 Kg Mozarella + 0.3 Kg Champignon ',3),(28,'HAWAIENNE',12.00,' 0.30 Kg Tomates + 0.25 kg Huile + 0.2 Kg Mozarella + 0.25 Kg Champignon ',3),(29,'HAWAIENNE',12.00,' 0.30 Kg Tomates + 0.25 kg Huile + 0.2 Kg Mozarella + 0.25 Kg Champignon ',2),(30,'HAWAIENNE',12.00,' 0.30 Kg Tomates + 0.25 kg Huile + 0.2 Kg Mozarella + 0.25 Kg Champignon ',1);
/*!40000 ALTER TABLE `pizza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pizzeria`
--

DROP TABLE IF EXISTS `pizzeria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pizzeria` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `Postal_code` int(11) DEFAULT NULL,
  `adresse` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzeria`
--

LOCK TABLES `pizzeria` WRITE;
/*!40000 ALTER TABLE `pizzeria` DISABLE KEYS */;
INSERT INTO `pizzeria` VALUES (1,'Wolff-Dietrich',95400,'7 Marquette Plaza'),(2,'Koss-Botsford',93600,'02 Pearson Plaza'),(3,'Friesen-Macejkovic',92000,'153 Washington Hill'),(4,'Kessler-Fisher',13014,'89189 Carberry Terrace'),(5,'Stroman LLC',94190,'92587 Forest Dale Pass');
/*!40000 ALTER TABLE `pizzeria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette`
--

DROP TABLE IF EXISTS `recette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recette` (
  `ingredient_id` smallint(6) NOT NULL,
  `pizza_id` smallint(6) NOT NULL,
  `qte_ingred` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`ingredient_id`,`pizza_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette`
--

LOCK TABLES `recette` WRITE;
/*!40000 ALTER TABLE `recette` DISABLE KEYS */;
INSERT INTO `recette` VALUES (1,1,NULL),(1,2,NULL),(1,3,NULL),(1,4,NULL),(1,5,NULL),(1,6,NULL),(1,7,NULL),(1,8,NULL),(1,9,NULL),(1,10,NULL),(2,1,NULL),(2,2,NULL),(2,3,NULL),(2,4,NULL),(2,5,NULL),(2,6,NULL),(2,7,NULL),(2,8,NULL),(2,9,NULL),(2,10,NULL),(3,1,NULL),(3,2,NULL),(3,3,NULL),(3,4,NULL),(3,5,NULL),(3,6,NULL),(3,7,NULL),(3,8,NULL),(3,9,NULL),(3,10,NULL),(4,1,NULL),(4,3,NULL),(5,2,NULL),(5,6,NULL),(5,7,NULL),(5,8,NULL);
/*!40000 ALTER TABLE `recette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selection`
--

DROP TABLE IF EXISTS `selection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selection` (
  `commande_id` smallint(6) NOT NULL,
  `pizzeria_id` smallint(6) NOT NULL,
  PRIMARY KEY (`commande_id`,`pizzeria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selection`
--

LOCK TABLES `selection` WRITE;
/*!40000 ALTER TABLE `selection` DISABLE KEYS */;
INSERT INTO `selection` VALUES (1,2),(2,4),(3,4),(4,4),(5,1),(5,2),(6,1),(7,3),(8,1),(8,5),(9,5),(10,4);
/*!40000 ALTER TABLE `selection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `pizzeria_id` smallint(6) NOT NULL,
  `ingredient_id` smallint(6) NOT NULL,
  `stock_ing` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`ingredient_id`,`pizzeria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,39.85),(2,1,40.00),(3,1,40.00),(4,1,40.00),(5,1,40.00),(1,2,29.85),(2,2,30.00),(3,2,30.00),(4,2,30.00),(5,2,30.00),(1,3,49.45),(2,3,50.00),(3,3,50.00),(4,3,50.00),(5,3,50.00),(1,4,34.65),(2,4,35.00),(3,4,35.00),(4,4,35.00),(5,4,35.00),(1,5,45.00),(2,5,45.00),(3,5,45.00),(4,5,45.00),(5,5,45.00);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-29  7:47:45
