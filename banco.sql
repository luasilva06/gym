-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: gym
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

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

--
-- Table structure for table `cadaluno`
--

DROP TABLE IF EXISTS `cadaluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cadaluno` (
  `idAluno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomeAluno` char(60) NOT NULL,
  `cpf` char(15) DEFAULT NULL,
  `rg` char(30) DEFAULT NULL,
  `sexo` char(2) DEFAULT NULL,
  `dtNasc` char(10) DEFAULT NULL,
  `ender` char(100) DEFAULT NULL,
  `obje` char(100) DEFAULT NULL,
  `restri` char(100) DEFAULT NULL,
  `comorb` char(100) DEFAULT NULL,
  PRIMARY KEY (`idAluno`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadaluno`
--

LOCK TABLES `cadaluno` WRITE;
/*!40000 ALTER TABLE `cadaluno` DISABLE KEYS */;
INSERT INTO `cadaluno` VALUES (1,'lua silva','042.773.553-07','2007010225534','F','  /  /','R. Eca','viver','pobre','nenhuma'),(2,'Samia Abreu','723.783.587-53','753735753753','F','06/06/1972','R. eca de queiros 386','bombada','nenhuma','nenhuma'),(6,'Linda Silva','372.592.952-92','380747195','NB','17/09/2004','R. Torres camara','recuperacao','nenhuma','cancer'),(9,'mia','   .   .   -','','F','  /  /','','','',''),(25,'tetinha','844.829.020-31','8943819023','F','29/03/1969','R. Monsenhor Bruno','Ganho de massa muscular','nenhuma','diabetes');
/*!40000 ALTER TABLE `cadaluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cadtreino`
--

DROP TABLE IF EXISTS `cadtreino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cadtreino` (
  `idAluno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nomeAluno` char(80) DEFAULT NULL,
  `prof` char(40) DEFAULT NULL,
  `qntTreino` char(3) DEFAULT NULL,
  `peso` char(5) DEFAULT NULL,
  `altura` char(5) DEFAULT NULL,
  `dataIni` char(8) DEFAULT NULL,
  KEY `idAluno` (`idAluno`),
  CONSTRAINT `cadtreino_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `cadaluno` (`idAluno`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cadtreino`
--

LOCK TABLES `cadtreino` WRITE;
/*!40000 ALTER TABLE `cadtreino` DISABLE KEYS */;
INSERT INTO `cadtreino` VALUES (1,'Lua Silva','Jamilly','30','63','1,63','25/03/22'),(1,'Lua Silva','Jamilly','30','63','1,63','25/03/22'),(1,'Lua','Cris','30','63','1,63','25/03/22'),(25,'Angelique','Antenor','30','65','1,57','24/03/22'),(25,'angel','Emanuel','30','64','1,57','23/02/22'),(25,'mamis','','','','','  /  /'),(25,'Angeliqueinha','Eliene','20','64','1,57','23/03/22'),(6,'Lindovisky','jamilly','20','10','40','26/03/22'),(1,'lua silva','cris','30','64','1,63','27/03/22'),(1,'','','','','','  /  /'),(1,'lua','LN','20','64','1,63','27/03/22'),(1,'lua silva','Emanuel','40','64','1,63','11/09/22'),(9,'mia','hih','','','','  /  /'),(2,'Samia Abreu','Cris','30','65','1,55','29/03/22');
/*!40000 ALTER TABLE `cadtreino` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treino`
--

DROP TABLE IF EXISTS `treino`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treino` (
  `idAluno` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `diaTreino` char(4) DEFAULT NULL,
  `nomeExer` char(50) DEFAULT NULL,
  `nSeries` char(15) DEFAULT NULL,
  `nRep` char(15) DEFAULT NULL,
  KEY `idAluno` (`idAluno`),
  CONSTRAINT `treino_ibfk_1` FOREIGN KEY (`idAluno`) REFERENCES `cadtreino` (`idAluno`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treino`
--

LOCK TABLES `treino` WRITE;
/*!40000 ALTER TABLE `treino` DISABLE KEYS */;
INSERT INTO `treino` VALUES (1,'A','Leg Press','3','20'),(1,'A','Leg press','3','14'),(1,'B','Peck deck','3','10'),(25,'A','agachamento','28','12'),(25,'Y','abdominal','2','10'),(6,'A','corrida','2','10\''),(6,'Z','Caça ao osso','10','10'),(1,'A','onosno','2','32'),(1,'B','iiadi','4','3'),(1,'Y','nsonfosn','34','23'),(1,'H','ksdkfsk','30','23'),(9,'a','hbjbj','78','8'),(9,'i','hoio','87','87'),(2,'A','Leg Press','3','20'),(2,'B','testa','4','10');
/*!40000 ALTER TABLE `treino` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-29 20:15:45
