CREATE DATABASE  IF NOT EXISTS `tramite` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tramite`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: tramite
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
-- Table structure for table `tipoexpediente`
--

DROP TABLE IF EXISTS `tipoexpediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoexpediente` (
  `idtipoExpediente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idtipoExpediente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoexpediente`
--

LOCK TABLES `tipoexpediente` WRITE;
/*!40000 ALTER TABLE `tipoexpediente` DISABLE KEYS */;
INSERT INTO `tipoexpediente` VALUES (1,'Inscripción de Listas'),(2,'Propaganda Electoral'),(3,'Publicidad'),(4,'Tacha de Candidatos'),(5,'Tacha de Personero');
/*!40000 ALTER TABLE `tipoexpediente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Table structure for table `expediente`
--

DROP TABLE IF EXISTS `expediente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expediente` (
  `idexpediente` int(11) NOT NULL,
  `idtipoExpediente` int(11) NOT NULL,
  `codigo` varchar(30) NOT NULL,
  `sumilla` varchar(5000) NOT NULL,
  `fechaRegistro` datetime NOT NULL,
  `fechaPublicacion` varchar(50) DEFAULT NULL,
  `entidad` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idexpediente`),
  KEY `fk_expediente_tipoExpediente_idx` (`idtipoExpediente`),
  CONSTRAINT `fk_expediente_tipoExpediente` FOREIGN KEY (`idtipoExpediente`) REFERENCES `tipoexpediente` (`idtipoExpediente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expediente`
--

LOCK TABLES `expediente` WRITE;
/*!40000 ALTER TABLE `expediente` DISABLE KEYS */;
INSERT INTO `expediente` VALUES (1,1,'EXP-01','Se solicita inscripcion de la lista de candidatos...','2014-05-20 00:00:00','2014-05-20','PERU POSIBLE'),(2,2,'EXP-02','Se denuncia el incumplimiento de la ley de Propaganda Electoral','2014-06-18 00:00:00','2014-06-18','AGENCIA DE NOTICIAS ATV'),(3,1,'EXP-03','Se solicita inscripcion de la lista de candidatos...','2014-05-29 00:00:00','2014-05-29','PPS'),(4,2,'EXP-04','Se denuncia el incumplimiento de la ley de Propaganda Electoral','2014-05-10 00:00:00','2014-05-10','PABLO GUTIERREZ'),(5,3,'EXP-05','Se denuncia el incumplimiento de la ley de Publicidad','2014-06-13 00:00:00','2014-06-13','APRA'),(6,4,'EXP-06','Se presenta tacha hacia el candidato Luis Lopez','2014-05-20 00:00:00','2014-05-20','VICTOR DULANTO'),(7,1,'EXP-07','Se solicita inscripcion de la lista de candidatos...','2014-06-12 00:00:00','2014-06-12','DIALOGO VECINAL'),(8,1,'EXP-08','Se solicita inscripcion de la lista de candidatos...','2014-06-12 00:00:00','2014-06-12','SOLIDARIDAD NACIONAL'),(9,3,'EXP-09','Se denuncia el incumplimiento de la ley de Publicidad..','2014-05-30 00:00:00','2014-05-30','MIGUEL CARPIO'),(10,3,'EXP-10','Se denuncia el incumplimiento de la ley de Publicidad por parte del candidato...','2014-06-03 00:00:00','2014-06-03','SANDRA FLORES');
/*!40000 ALTER TABLE `expediente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-13 15:41:53
