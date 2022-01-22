CREATE DATABASE  IF NOT EXISTS `pizzeria` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pizzeria`;
-- MySQL dump 10.13  Distrib 5.7.34, for osx11.0 (x86_64)
--
-- Host: localhost    Database: pizzeria
-- ------------------------------------------------------
-- Server version	5.7.34

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
-- Table structure for table `botigues`
--

DROP TABLE IF EXISTS `botigues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `botigues` (
  `idbotiga` int(10) unsigned NOT NULL,
  `adreça` varchar(200) DEFAULT NULL,
  `codipostal` varchar(5) DEFAULT NULL,
  `localitat` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbotiga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botigues`
--

LOCK TABLES `botigues` WRITE;
/*!40000 ALTER TABLE `botigues` DISABLE KEYS */;
/*!40000 ALTER TABLE `botigues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `idcategoria` int(10) unsigned NOT NULL,
  `nom` varchar(45) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `idclient` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `cognoms` varchar(200) NOT NULL,
  `adreça` varchar(200) DEFAULT NULL,
  `codi_postal` varchar(5) DEFAULT NULL,
  `telefon` varchar(12) NOT NULL,
  `localitats_idlocalitat` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idclient`),
  KEY `fk_clients_localitats1_idx` (`localitats_idlocalitat`),
  CONSTRAINT `fk_clients_localitats1` FOREIGN KEY (`localitats_idlocalitat`) REFERENCES `localitats` (`idlocalitat`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comandes`
--

DROP TABLE IF EXISTS `comandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comandes` (
  `idcomanda` int(10) unsigned NOT NULL,
  `data_hora` datetime NOT NULL,
  `tipus` enum('Recollida','Domicili') NOT NULL,
  `cantitat` int(11) NOT NULL,
  `preu_total` int(11) NOT NULL,
  `empleats_idempleat` int(10) unsigned NOT NULL,
  `clients_idclient` int(10) unsigned NOT NULL,
  `entregues_identrega` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idcomanda`),
  KEY `fk_comandes_empleats1_idx` (`empleats_idempleat`),
  KEY `fk_comandes_clients1_idx` (`clients_idclient`),
  KEY `fk_comandes_entregues1_idx` (`entregues_identrega`),
  CONSTRAINT `fk_comandes_clients1` FOREIGN KEY (`clients_idclient`) REFERENCES `clients` (`idclient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comandes_empleats1` FOREIGN KEY (`empleats_idempleat`) REFERENCES `empleats` (`idempleat`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comandes_entregues1` FOREIGN KEY (`entregues_identrega`) REFERENCES `entregues` (`identrega`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comandes`
--

LOCK TABLES `comandes` WRITE;
/*!40000 ALTER TABLE `comandes` DISABLE KEYS */;
/*!40000 ALTER TABLE `comandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descripcio_comanda`
--

DROP TABLE IF EXISTS `descripcio_comanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `descripcio_comanda` (
  `comandes_idcomanda` int(10) unsigned NOT NULL,
  `productes_idproducte` int(10) unsigned NOT NULL,
  `preu_unitat` int(11) DEFAULT NULL,
  `quantitat` int(11) DEFAULT NULL,
  `desconte` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`comandes_idcomanda`,`productes_idproducte`),
  KEY `fk_comandes_has_productes_productes1_idx` (`productes_idproducte`),
  KEY `fk_comandes_has_productes_comandes1_idx` (`comandes_idcomanda`),
  CONSTRAINT `fk_comandes_has_productes_comandes1` FOREIGN KEY (`comandes_idcomanda`) REFERENCES `comandes` (`idcomanda`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comandes_has_productes_productes1` FOREIGN KEY (`productes_idproducte`) REFERENCES `productes` (`idproducte`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descripcio_comanda`
--

LOCK TABLES `descripcio_comanda` WRITE;
/*!40000 ALTER TABLE `descripcio_comanda` DISABLE KEYS */;
/*!40000 ALTER TABLE `descripcio_comanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleats`
--

DROP TABLE IF EXISTS `empleats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleats` (
  `idempleat` int(10) unsigned NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `cognoms` varchar(100) DEFAULT NULL,
  `nif` varchar(9) DEFAULT NULL,
  `telefon` varchar(12) DEFAULT NULL,
  `tipus` enum('cuiner','repartidor') DEFAULT NULL,
  `botigues_idbotiga` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idempleat`),
  KEY `fk_empleats_botigues1_idx` (`botigues_idbotiga`),
  CONSTRAINT `fk_empleats_botigues1` FOREIGN KEY (`botigues_idbotiga`) REFERENCES `botigues` (`idbotiga`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleats`
--

LOCK TABLES `empleats` WRITE;
/*!40000 ALTER TABLE `empleats` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entregues`
--

DROP TABLE IF EXISTS `entregues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entregues` (
  `identrega` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom_repartidor` varchar(45) DEFAULT NULL,
  `datahora_entrega` datetime DEFAULT NULL,
  PRIMARY KEY (`identrega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entregues`
--

LOCK TABLES `entregues` WRITE;
/*!40000 ALTER TABLE `entregues` DISABLE KEYS */;
/*!40000 ALTER TABLE `entregues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localitats`
--

DROP TABLE IF EXISTS `localitats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localitats` (
  `idlocalitat` int(10) unsigned NOT NULL,
  `nom` varchar(45) NOT NULL,
  `provincies_idprovincia` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idlocalitat`),
  KEY `fk_localitats_provincies1_idx` (`provincies_idprovincia`),
  CONSTRAINT `fk_localitats_provincies1` FOREIGN KEY (`provincies_idprovincia`) REFERENCES `provincies` (`idprovincia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localitats`
--

LOCK TABLES `localitats` WRITE;
/*!40000 ALTER TABLE `localitats` DISABLE KEYS */;
/*!40000 ALTER TABLE `localitats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productes`
--

DROP TABLE IF EXISTS `productes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productes` (
  `idproducte` int(10) unsigned NOT NULL,
  `nom` varchar(100) NOT NULL,
  `descripcio` varchar(200) NOT NULL,
  `imatge` varchar(45) DEFAULT NULL,
  `preu` int(10) unsigned NOT NULL,
  `tipus` enum('pizzes','hamburgueses','begudes') NOT NULL,
  `categories_idcategoria` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idproducte`),
  KEY `fk_productes_categories1_idx` (`categories_idcategoria`),
  CONSTRAINT `fk_productes_categories1` FOREIGN KEY (`categories_idcategoria`) REFERENCES `categories` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productes`
--

LOCK TABLES `productes` WRITE;
/*!40000 ALTER TABLE `productes` DISABLE KEYS */;
/*!40000 ALTER TABLE `productes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincies`
--

DROP TABLE IF EXISTS `provincies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provincies` (
  `idprovincia` int(10) unsigned NOT NULL,
  `nom` varchar(45) NOT NULL,
  PRIMARY KEY (`idprovincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincies`
--

LOCK TABLES `provincies` WRITE;
/*!40000 ALTER TABLE `provincies` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-15  9:17:50

-- Llenar datos para prueba

INSERT INTO provincies(idprovincia,nom)
VALUES (1,'Barcelona');

INSERT INTO localitats(idlocalitat,nom,provincies_idprovincia)
VALUES (1,'Barcelona',1),
	   (2,'Sabadell',1),
       (3,'Terrassa',1);
       
INSERT INTO clients(idclient,nom, cognoms, adreça, codi_postal, telefon, localitats_idlocalitat)
VALUES (1,'Rafa', 'Llonch', 'Pi 44', 08205, 606895674, 1),
	   (2,'Manel','Lopes', 'Roca 33', 08205, 678345243, 2);
       
INSERT INTO categories(idcategoria,nom)
VALUES (1,'Massa fina'),
	   (2,'Massa gruesa');

INSERT INTO productes(idproducte,nom, descripcio, preu, tipus, categories_idcategoria)
VALUES (1,'Bolonyesa', 'Carn, tomaquet, formatge', 11, 'pizzes', 1),
	   (2,'Carbonara', 'Crema de llet, bacon, formatge', 12, 'pizzes',2);

INSERT INTO productes(idproducte,nom, descripcio, preu, tipus)
VALUES (3,'Estrella', 'Format de llauna', 2, 'begudes'),
	   (4,'Heineken', 'Fromat de vidre', 3, 'begudes'),
       (5,'Completa', 'Vedella, bacon, ou', 10, 'hamburgueses');
       
INSERT INTO botigues(idbotiga, adreça, codipostal, localitat, provincia)
VALUES (1,'Prat de la Riba 37', '08211', 'Terrassa', 'Barcelona'),
	   (2,'Roca 33', '08234', 'Barcelona', 'Barcelona');
       
INSERT INTO empleats(idempleat,nom, cognoms, nif, telefon, tipus, botigues_idbotiga)
VALUES (1,'Joan', 'Garcia Perez', '43562726F', '657456537', 'cuiner', 1),
       (2,'Miquel', 'Alsina Mengual', '47356245G', '645635243', 'repartidor', 2);

INSERT INTO comandes(idcomanda, data_hora, tipus, cantitat, preu_total, empleats_idempleat, clients_idclient)
VALUES (1, '2021-12-13 10:38:00', 'Domicili', 2, 4, 1, 1),
       (2, '2021-12-13 10:38:00', 'Domicili', 4, 8, 2, 2); 
       
INSERT INTO descripcio_comanda(comandes_idcomanda, productes_idproducte, preu_unitat, quantitat, desconte)
VALUES (1, 1, 2, 2, 0),
       (2, 3, 2, 2, 0);
              
INSERT INTO entregues(nom_repartidor,datahora_entrega)
VALUES ('Miquel', '2021-12-13 10:38:00');

-- Pruebas con querys

-- Llista quants productes de categoria 'Begudas' s'han venut en una determinada localitat
SELECT COUNT(productes.idproducte) AS 'Número de Bebidas vendidas en Terrassa' FROM comandes, empleats, botigues, descripcio_comanda, productes WHERE comandes.empleats_idempleat=empleats.idempleat 
AND empleats.botigues_idbotiga=botigues.idbotiga AND botigues.idbotiga = 1 AND comandes.idcomanda=descripcio_comanda.comandes_idcomanda AND descripcio_comanda.productes_idproducte=productes.idproducte AND productes.tipus = 'Begudes';

-- Llista quantes comandes ha efectuat un determinat empleat
SELECT COUNT(comandes.idcomanda) AS 'Numero de comandes del Joan' FROM comandes INNER JOIN empleats WHERE comandes.empleats_idempleat=empleats.idempleat AND empleats.nom= 'Joan';





