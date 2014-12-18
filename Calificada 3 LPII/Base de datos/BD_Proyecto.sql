CREATE DATABASE  IF NOT EXISTS `proyecto` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `proyecto`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: proyecto
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `prioridad`
--

DROP TABLE IF EXISTS `prioridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prioridad` (
  `idprioridad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idprioridad`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioridad`
--

LOCK TABLES `prioridad` WRITE;
/*!40000 ALTER TABLE `prioridad` DISABLE KEYS */;
INSERT INTO `prioridad` VALUES (1,'Alta'),(2,'Media'),(3,'Baja');
/*!40000 ALTER TABLE `prioridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyecto`
--

DROP TABLE IF EXISTS `proyecto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyecto` (
  `idproyecto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `tipoproyecto` varchar(45) NOT NULL,
  `dias` int(11) NOT NULL,
  `idprioridad` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproyecto`),
  KEY `FK_proyecto_prioridad_idx` (`idprioridad`),
  CONSTRAINT `FK_proyecto_prioridad` FOREIGN KEY (`idprioridad`) REFERENCES `prioridad` (`idprioridad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyecto`
--

LOCK TABLES `proyecto` WRITE;
/*!40000 ALTER TABLE `proyecto` DISABLE KEYS */;
INSERT INTO `proyecto` VALUES (1,'Sistema de acceso a la informacion publica','Electoral','web',120,1),(2,'Sistema de rendicion de cuentas','Contable','web',90,1),(3,'Sistema de registro de organizaciones politicas','Electoral','web',60,2),(4,'Sistema de dispensas','Electoral','web',120,3),(5,'Sistema de multas electorales','Electoral','web',60,1),(6,'Sistema de prescripciones','Electoral','web',60,2),(7,'Sistema de registro de visitas','General','escritorio',30,3),(8,'Sistema de orientacion al ciudadano','General','escritorio',30,1),(9,'Modulo de consultas de listas de candidatos','Electoral','movil',30,2),(10,'Sistema de registro de acervo documentario','Electoral','escritorio',60,2),(11,'Modulo de caja chica','Contable','escritorio',15,1),(12,'Sistema de informacion de procesos electorales','Electoral','web',90,1),(13,'Sistema de transportes','Logistico','web',180,1),(14,'Sistema de atencion al cliente','General','escritorio',30,1),(15,'Sistema de ordenes de servicio','General','web',60,2),(16,'Sistema de picking','Logistico','movil',90,3),(17,'Sistema de almacen','Logistico','web',90,3),(18,'Sistema de distribucion','Logistico','web',45,2),(19,'Sistema de monitoreo de unidades vehiculares','Logistico','web',45,2),(20,'Sistema de control de activo','General','escritorio',90,1),(21,'Sistema de mesa ayuda','General','escritorio',30,3),(22,'Sistema de postulantes','Recursos Humanos','web',15,1),(23,'Sistema de planillas','Contable','escritorio',60,2),(24,'Modulo de consulta de embarques','Logistico','movil',15,3),(25,'Modulo de control de cheques','Contable','movil',15,2);
/*!40000 ALTER TABLE `proyecto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-16  9:53:05
