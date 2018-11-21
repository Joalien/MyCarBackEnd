-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mycar
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `anciennete`
--

DROP TABLE IF EXISTS `anciennete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anciennete` (
  `anciennete_id` int(11) NOT NULL,
  `anciennete_lbl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`anciennete_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anciennete`
--

LOCK TABLES `anciennete` WRITE;
/*!40000 ALTER TABLE `anciennete` DISABLE KEYS */;
INSERT INTO `anciennete` (`anciennete_id`, `anciennete_lbl`) VALUES (1,'Neuf'),(2,'Occasion 1 an'),(3,'Occasion 2 ans'),(4,'Occasion 3 ans'),(5,'Occasion 4 ans'),(6,'Occasion 5 ans');
/*!40000 ALTER TABLE `anciennete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boite`
--

DROP TABLE IF EXISTS `boite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boite` (
  `boite_id` int(11) NOT NULL,
  `boite_lbl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`boite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boite`
--

LOCK TABLES `boite` WRITE;
/*!40000 ALTER TABLE `boite` DISABLE KEYS */;
INSERT INTO `boite` (`boite_id`, `boite_lbl`) VALUES (1,'Manuelle'),(2,'Automatique');
/*!40000 ALTER TABLE `boite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carburant`
--

DROP TABLE IF EXISTS `carburant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carburant` (
  `carburant_id` int(11) NOT NULL,
  `carburant_lbl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`carburant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carburant`
--

LOCK TABLES `carburant` WRITE;
/*!40000 ALTER TABLE `carburant` DISABLE KEYS */;
INSERT INTO `carburant` (`carburant_id`, `carburant_lbl`) VALUES (1,'Essence'),(2,'Diesel'),(3,'Electrique'),(4,'Hybride');
/*!40000 ALTER TABLE `carburant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie` (
  `categorie_id` int(11) NOT NULL,
  `categorie_lbl` varchar(45) NOT NULL,
  PRIMARY KEY (`categorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie`
--

LOCK TABLES `categorie` WRITE;
/*!40000 ALTER TABLE `categorie` DISABLE KEYS */;
INSERT INTO `categorie` (`categorie_id`, `categorie_lbl`) VALUES (1,'Citadine'),(2,'Berline'),(3,'Monospace'),(4,'4X4 / SUV'),(5,'Cabriolet'),(6,'Sportive');
/*!40000 ALTER TABLE `categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `co2`
--

DROP TABLE IF EXISTS `co2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `co2` (
  `co2_id` int(11) NOT NULL,
  `co2_lbl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`co2_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `co2`
--

LOCK TABLES `co2` WRITE;
/*!40000 ALTER TABLE `co2` DISABLE KEYS */;
INSERT INTO `co2` (`co2_id`, `co2_lbl`) VALUES (1,'Moins de 99 g/km'),(2,'90 - 99 g/km'),(3,'100 - 109 g/km'),(4,'110 - 119 g/km'),(5,'120 - 129 g/km'),(6,'130 - 134 g/km'),(7,'135 - 139 g/km'),(8,'140 - 144 g/km'),(9,'145 - 149 g/km'),(10,'150 g/km et plus');
/*!40000 ALTER TABLE `co2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consommation`
--

DROP TABLE IF EXISTS `consommation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consommation` (
  `consommation_id` int(11) NOT NULL,
  `consommation_lbl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`consommation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consommation`
--

LOCK TABLES `consommation` WRITE;
/*!40000 ALTER TABLE `consommation` DISABLE KEYS */;
INSERT INTO `consommation` (`consommation_id`, `consommation_lbl`) VALUES (1,'Moins de 4,0 l/100'),(2,'4,0 - 4,4 l/100'),(3,'4,5 - 4,9 l/100'),(4,'5,0 - 5,4 l/100'),(5,'5,5 - 5,9 l/100'),(6,'6,0 - 6,4 l/100'),(7,'6,5 - 6,9 l/100'),(8,'7,0 - 7,4 l/100'),(9,'7,5 - 7,9 l/100'),(10,'8 l/100 et plus');
/*!40000 ALTER TABLE `consommation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marque` (
  `marque_id` int(11) NOT NULL,
  `marque_lbl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`marque_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marque`
--

LOCK TABLES `marque` WRITE;
/*!40000 ALTER TABLE `marque` DISABLE KEYS */;
INSERT INTO `marque` (`marque_id`, `marque_lbl`) VALUES (1,'Peugeot'),(2,'Citroën'),(3,'Renault'),(4,'Audi'),(5,'Wolkswagen'),(6,'Mercedes'),(7,'Fiat'),(8,'Jeep'),(9,'Honda'),(10,'Toyota'),(11,'Nissan'),(12,'Ford'),(13,'Opel'),(14,'Suzuki'),(15,'Seat'),(16,'Mitsubishi'),(17,'Hyundai'),(18,'Volvo'),(19,'Porsche'),(20,'Skoda'),(21,'Dacia');
/*!40000 ALTER TABLE `marque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `origine`
--

DROP TABLE IF EXISTS `origine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `origine` (
  `origine_id` int(11) NOT NULL,
  `origine_lbl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`origine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `origine`
--

LOCK TABLES `origine` WRITE;
/*!40000 ALTER TABLE `origine` DISABLE KEYS */;
INSERT INTO `origine` (`origine_id`, `origine_lbl`) VALUES (1,'France'),(2,'Allemagne'),(3,'Italie'),(4,'Autre pays d\'Europe'),(5,'Europe'),(6,'Japon'),(7,'Chine'),(8,'Corée du sud'),(9,'Autre pays d\'Asie'),(10,'Asie'),(11,'USA');
/*!40000 ALTER TABLE `origine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `places` (
  `places_id` int(11) NOT NULL,
  `places_lbl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`places_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` (`places_id`, `places_lbl`) VALUES (1,'2-3 places'),(2,'4 places'),(3,'5 places'),(4,'6 places et plus');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portes`
--

DROP TABLE IF EXISTS `portes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portes` (
  `portes_id` int(11) NOT NULL,
  `Portes_lbl` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`portes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portes`
--

LOCK TABLES `portes` WRITE;
/*!40000 ALTER TABLE `portes` DISABLE KEYS */;
INSERT INTO `portes` (`portes_id`, `Portes_lbl`) VALUES (1,'2-3 portes'),(2,'4-5 portes');
/*!40000 ALTER TABLE `portes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `possibilite_selection`
--

DROP TABLE IF EXISTS `possibilite_selection`;
/*!50001 DROP VIEW IF EXISTS `possibilite_selection`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `possibilite_selection` AS SELECT 
 1 AS `version_id`,
 1 AS `version`,
 1 AS `marque_id`,
 1 AS `marque`,
 1 AS `categorie_id`,
 1 AS `categorie`,
 1 AS `carburant_id`,
 1 AS `carburant`,
 1 AS `co2_id`,
 1 AS `co2`,
 1 AS `boite_id`,
 1 AS `boite`,
 1 AS `consommation_id`,
 1 AS `consommation`,
 1 AS `places_id`,
 1 AS `places`,
 1 AS `portes_id`,
 1 AS `portes`,
 1 AS `pays_id`,
 1 AS `pays`,
 1 AS `zone_id`,
 1 AS `zone`,
 1 AS `anciennete_id`,
 1 AS `anciennete`,
 1 AS `prix`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `version`
--

DROP TABLE IF EXISTS `version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version` (
  `version_id` int(11) NOT NULL AUTO_INCREMENT,
  `version_lbl` varchar(45) DEFAULT NULL,
  `marque_id` int(11) DEFAULT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `carburant_id` varchar(45) DEFAULT NULL,
  `co2_val` int(11) DEFAULT NULL,
  `co2_id` int(11) DEFAULT NULL,
  `boite_id` varchar(45) DEFAULT NULL,
  `consommation_val` varchar(45) DEFAULT NULL,
  `consommation_id` int(10) DEFAULT NULL,
  `places_val` int(11) DEFAULT NULL,
  `places_id` int(11) DEFAULT NULL,
  `portes_val` int(11) DEFAULT NULL,
  `portes_id` int(11) DEFAULT NULL,
  `pays_id` int(11) DEFAULT NULL,
  `zone_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`version_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version`
--

LOCK TABLES `version` WRITE;
/*!40000 ALTER TABLE `version` DISABLE KEYS */;
INSERT INTO `version` (`version_id`, `version_lbl`, `marque_id`, `categorie_id`, `carburant_id`, `co2_val`, `co2_id`, `boite_id`, `consommation_val`, `consommation_id`, `places_val`, `places_id`, `portes_val`, `portes_id`, `pays_id`, `zone_id`) VALUES (1,'Ion active ',1,1,'3',0,1,'2','0',1,4,2,5,2,1,5),(2,'108 Access 3P ',1,1,'1',93,2,'1',' 4.1',2,4,2,3,1,1,5),(3,'108 Active 3P ',1,1,'1',93,2,'1',' 4.1',2,4,2,3,1,1,5),(4,'108 Access 5P ',1,1,'1',93,2,'1',' 4.1',2,4,2,5,2,1,5),(5,'108 Active 5P ',1,1,'1',93,2,'1',' 4.1',2,4,2,5,2,1,5),(6,'5008 Access PureTech ',1,4,'1',118,4,'1',' 5.1',4,7,4,5,2,1,5),(7,'5008 Active BlueHDI ',1,4,'2',106,3,'1','4.0',2,7,4,5,2,1,5),(8,'C3 BlueHDI 100 ',2,2,'2',95,2,'1',' 3.8',1,5,3,5,2,1,5);
/*!40000 ALTER TABLE `version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `version_anciennete`
--

DROP TABLE IF EXISTS `version_anciennete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `version_anciennete` (
  `version_id` int(11) DEFAULT NULL,
  `anciennete_id` int(11) DEFAULT NULL,
  `prix` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `version_anciennete`
--

LOCK TABLES `version_anciennete` WRITE;
/*!40000 ALTER TABLE `version_anciennete` DISABLE KEYS */;
INSERT INTO `version_anciennete` (`version_id`, `anciennete_id`, `prix`) VALUES (1,1,26900),(2,1,10700),(3,2,8200),(3,1,12000),(4,1,11200),(5,1,12500),(6,1,27200),(7,1,33800),(8,1,18400);
/*!40000 ALTER TABLE `version_anciennete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `possibilite_selection`
--

/*!50001 DROP VIEW IF EXISTS `possibilite_selection`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `possibilite_selection` AS select `v`.`version_id` AS `version_id`,`v`.`version_lbl` AS `version`,`m`.`marque_id` AS `marque_id`,`m`.`marque_lbl` AS `marque`,`c`.`categorie_id` AS `categorie_id`,`c`.`categorie_lbl` AS `categorie`,`cb`.`carburant_id` AS `carburant_id`,`cb`.`carburant_lbl` AS `carburant`,`co`.`co2_id` AS `co2_id`,`co`.`co2_lbl` AS `co2`,`b`.`boite_id` AS `boite_id`,`b`.`boite_lbl` AS `boite`,`cs`.`consommation_id` AS `consommation_id`,`cs`.`consommation_lbl` AS `consommation`,`p`.`places_id` AS `places_id`,`p`.`places_lbl` AS `places`,`po`.`portes_id` AS `portes_id`,`po`.`Portes_lbl` AS `portes`,`op`.`origine_id` AS `pays_id`,`op`.`origine_lbl` AS `pays`,`oz`.`origine_id` AS `zone_id`,`oz`.`origine_lbl` AS `zone`,`a`.`anciennete_id` AS `anciennete_id`,`a`.`anciennete_lbl` AS `anciennete`,`va`.`prix` AS `prix` from ((((((((((((`version_anciennete` `va` left join `version` `v` on((`va`.`version_id` = `v`.`version_id`))) left join `marque` `m` on((`v`.`marque_id` = `m`.`marque_id`))) left join `categorie` `c` on((`v`.`categorie_id` = `c`.`categorie_id`))) left join `carburant` `cb` on((`v`.`carburant_id` = `cb`.`carburant_id`))) left join `co2` `co` on((`v`.`co2_id` = `co`.`co2_id`))) left join `boite` `b` on((`v`.`boite_id` = `b`.`boite_id`))) left join `consommation` `cs` on((`v`.`consommation_id` = `cs`.`consommation_id`))) left join `places` `p` on((`v`.`places_id` = `p`.`places_id`))) left join `portes` `po` on((`v`.`portes_id` = `po`.`portes_id`))) left join `origine` `op` on((`v`.`pays_id` = `op`.`origine_id`))) left join `origine` `oz` on((`v`.`zone_id` = `oz`.`origine_id`))) left join `anciennete` `a` on((`va`.`anciennete_id` = `a`.`anciennete_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-10 11:46:16
