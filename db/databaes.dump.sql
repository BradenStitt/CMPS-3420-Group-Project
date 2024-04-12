-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: databaes
-- ------------------------------------------------------
-- Server version	10.3.38-MariaDB-0+deb10u1

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
-- Table structure for table `Artist`
--

DROP TABLE IF EXISTS `Artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artist` (
  `AName` varchar(50) NOT NULL,
  PRIMARY KEY (`AName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */;
INSERT INTO `Artist` VALUES ('Aretha Franklin'),('Barbra Streisand'),('Beyoncé'),('Bob Dylan'),('Bob Marley'),('Bruce Springsteen'),('David Bowie'),('Diana Ross'),('Elton John'),('Eric Clapton'),('Janet Jackson'),('John Lennon'),('Madonna'),('Mariah Carey'),('Michael Jackson'),('Paul McCartney'),('Prince'),('Stevie Wonder'),('Tina Turner'),('Whitney Houston');
/*!40000 ALTER TABLE `Artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Artist_Genre`
--

DROP TABLE IF EXISTS `Artist_Genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artist_Genre` (
  `Artist_Name` varchar(50) NOT NULL,
  `Genre` varchar(25) NOT NULL,
  PRIMARY KEY (`Artist_Name`,`Genre`),
  CONSTRAINT `Artist_Genre_ibfk_1` FOREIGN KEY (`Artist_Name`) REFERENCES `Artist` (`AName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artist_Genre`
--

LOCK TABLES `Artist_Genre` WRITE;
/*!40000 ALTER TABLE `Artist_Genre` DISABLE KEYS */;
INSERT INTO `Artist_Genre` VALUES ('Aretha Franklin','Gospel'),('Aretha Franklin','R&B'),('Aretha Franklin','Soul'),('Barbra Streisand','Easy Listening'),('Barbra Streisand','Pop'),('Barbra Streisand','Vocal Jazz'),('Beyoncé','Hip Hop'),('Beyoncé','Pop'),('Beyoncé','R&B'),('Bob Dylan','Blues'),('Bob Dylan','Folk'),('Bob Dylan','Rock'),('Bob Marley','Reggae'),('Bob Marley','Rocksteady'),('Bob Marley','Ska'),('Bruce Springsteen','Folk Rock'),('Bruce Springsteen','Heartland Rock'),('Bruce Springsteen','Rock'),('David Bowie','Glam Rock'),('David Bowie','Pop'),('David Bowie','Rock'),('Diana Ross','Disco'),('Diana Ross','Pop'),('Diana Ross','Soul'),('Elton John','Piano Rock'),('Elton John','Pop'),('Elton John','Rock'),('Eric Clapton','Blues'),('Eric Clapton','Rock'),('Eric Clapton','Rock and Roll'),('Janet Jackson','Dance'),('Janet Jackson','Pop'),('Janet Jackson','R&B'),('John Lennon','Folk Rock'),('John Lennon','Pop'),('John Lennon','Rock'),('Madonna','Dance'),('Madonna','Electronic'),('Madonna','Pop'),('Mariah Carey','Pop'),('Mariah Carey','R&B'),('Mariah Carey','Soul'),('Michael Jackson','Funk'),('Michael Jackson','Pop'),('Michael Jackson','R&B'),('Paul McCartney','Pop'),('Paul McCartney','Rock'),('Paul McCartney','Soft Rock'),('Prince','Funk'),('Prince','Pop'),('Prince','Rock'),('Stevie Wonder','Funk'),('Stevie Wonder','Pop'),('Stevie Wonder','Soul'),('Tina Turner','Pop'),('Tina Turner','R&B'),('Tina Turner','Rock'),('Whitney Houston','Pop'),('Whitney Houston','R&B'),('Whitney Houston','Soul');
/*!40000 ALTER TABLE `Artist_Genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attends`
--

DROP TABLE IF EXISTS `Attends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Attends` (
  `Venue_ID` int(10) unsigned NOT NULL,
  `Event_ID` int(10) unsigned NOT NULL,
  `Customer_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Venue_ID`,`Event_ID`,`Customer_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `Attends_ibfk_1` FOREIGN KEY (`Venue_ID`, `Event_ID`) REFERENCES `Occasion` (`ID`, `Venue_ID`),
  CONSTRAINT `Attends_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attends`
--

LOCK TABLES `Attends` WRITE;
/*!40000 ALTER TABLE `Attends` DISABLE KEYS */;
INSERT INTO `Attends` VALUES (1,1,1),(1,1,2),(1,1,3),(1,1,4),(1,1,5),(1,1,6),(1,1,7),(1,1,8),(1,1,9),(1,1,10),(1,1,11),(1,1,12),(1,1,13),(1,1,14),(1,1,15),(1,1,16),(1,1,17),(1,1,18),(1,1,19),(1,1,20),(1,1,21),(1,1,22),(1,1,23),(1,1,24),(1,1,25),(1,21,1),(1,21,2),(1,21,3),(1,21,4),(1,21,5),(1,21,6),(1,21,7),(1,21,8),(1,21,9),(1,21,10),(1,21,11),(1,21,12),(1,21,13),(1,21,14),(1,21,15),(1,21,16),(1,21,17),(1,21,18),(1,21,19),(1,21,20),(1,21,21),(1,21,22),(1,21,23),(1,21,24),(1,21,25),(1,41,1),(1,41,2),(1,41,3),(1,41,4),(1,41,5),(1,41,6),(1,41,7),(1,41,8),(1,41,9),(1,41,10),(1,41,11),(1,41,12),(1,41,13),(1,41,14),(1,41,15),(1,41,16),(1,41,17),(1,41,18),(1,41,19),(1,41,20),(1,41,21),(1,41,22),(1,41,23),(1,41,24),(1,41,25),(2,2,1),(2,2,2),(2,2,3),(2,2,4),(2,2,5),(2,2,6),(2,2,7),(2,2,8),(2,2,9),(2,2,10),(2,2,11),(2,2,12),(2,2,13),(2,2,14),(2,2,15),(2,2,16),(2,2,17),(2,2,18),(2,2,19),(2,2,20),(2,2,21),(2,2,22),(2,2,23),(2,2,24),(2,2,25),(2,22,1),(2,22,2),(2,22,3),(2,22,4),(2,22,5),(2,22,6),(2,22,7),(2,22,8),(2,22,9),(2,22,10),(2,22,11),(2,22,12),(2,22,13),(2,22,14),(2,22,15),(2,22,16),(2,22,17),(2,22,18),(2,22,19),(2,22,20),(2,22,21),(2,22,22),(2,22,23),(2,22,24),(2,22,25),(2,42,1),(2,42,2),(2,42,3),(2,42,4),(2,42,5),(2,42,6),(2,42,7),(2,42,8),(2,42,9),(2,42,10),(2,42,11),(2,42,12),(2,42,13),(2,42,14),(2,42,15),(2,42,16),(2,42,17),(2,42,18),(2,42,19),(2,42,20),(2,42,21),(2,42,22),(2,42,23),(2,42,24),(2,42,25),(3,3,1),(3,3,2),(3,3,3),(3,3,4),(3,3,5),(3,3,6),(3,3,7),(3,3,8),(3,3,9),(3,3,10),(3,3,11),(3,3,12),(3,3,13),(3,3,14),(3,3,15),(3,3,16),(3,3,17),(3,3,18),(3,3,19),(3,3,20),(3,3,21),(3,3,22),(3,3,23),(3,3,24),(3,3,25),(3,23,1),(3,23,2),(3,23,3),(3,23,4),(3,23,5),(3,23,6),(3,23,7),(3,23,8),(3,23,9),(3,23,10),(3,23,11),(3,23,12),(3,23,13),(3,23,14),(3,23,15),(3,23,16),(3,23,17),(3,23,18),(3,23,19),(3,23,20),(3,23,21),(3,23,22),(3,23,23),(3,23,24),(3,23,25),(3,43,1),(3,43,2),(3,43,3),(3,43,4),(3,43,5),(3,43,6),(3,43,7),(3,43,8),(3,43,9),(3,43,10),(3,43,11),(3,43,12),(3,43,13),(3,43,14),(3,43,15),(3,43,16),(3,43,17),(3,43,18),(3,43,19),(3,43,20),(3,43,21),(3,43,22),(3,43,23),(3,43,24),(3,43,25),(4,4,1),(4,4,2),(4,4,3),(4,4,4),(4,4,5),(4,4,6),(4,4,7),(4,4,8),(4,4,9),(4,4,10),(4,4,11),(4,4,12),(4,4,13),(4,4,14),(4,4,15),(4,4,16),(4,4,17),(4,4,18),(4,4,19),(4,4,20),(4,4,21),(4,4,22),(4,4,23),(4,4,24),(4,4,25),(4,24,1),(4,24,2),(4,24,3),(4,24,4),(4,24,5),(4,24,6),(4,24,7),(4,24,8),(4,24,9),(4,24,10),(4,24,11),(4,24,12),(4,24,13),(4,24,14),(4,24,15),(4,24,16),(4,24,17),(4,24,18),(4,24,19),(4,24,20),(4,24,21),(4,24,22),(4,24,23),(4,24,24),(4,24,25),(4,44,1),(4,44,2),(4,44,3),(4,44,4),(4,44,5),(4,44,6),(4,44,7),(4,44,8),(4,44,9),(4,44,10),(4,44,11),(4,44,12),(4,44,13),(4,44,14),(4,44,15),(4,44,16),(4,44,17),(4,44,18),(4,44,19),(4,44,20),(4,44,21),(4,44,22),(4,44,23),(4,44,24),(4,44,25),(5,5,1),(5,5,2),(5,5,3),(5,5,4),(5,5,5),(5,5,6),(5,5,7),(5,5,8),(5,5,9),(5,5,10),(5,5,11),(5,5,12),(5,5,13),(5,5,14),(5,5,15),(5,5,16),(5,5,17),(5,5,18),(5,5,19),(5,5,20),(5,5,21),(5,5,22),(5,5,23),(5,5,24),(5,5,25),(5,25,1),(5,25,2),(5,25,3),(5,25,4),(5,25,5),(5,25,6),(5,25,7),(5,25,8),(5,25,9),(5,25,10),(5,25,11),(5,25,12),(5,25,13),(5,25,14),(5,25,15),(5,25,16),(5,25,17),(5,25,18),(5,25,19),(5,25,20),(5,25,21),(5,25,22),(5,25,23),(5,25,24),(5,25,25),(5,45,1),(5,45,2),(5,45,3),(5,45,4),(5,45,5),(5,45,6),(5,45,7),(5,45,8),(5,45,9),(5,45,10),(5,45,11),(5,45,12),(5,45,13),(5,45,14),(5,45,15),(5,45,16),(5,45,17),(5,45,18),(5,45,19),(5,45,20),(5,45,21),(5,45,22),(5,45,23),(5,45,24),(5,45,25),(6,6,1),(6,6,2),(6,6,3),(6,6,4),(6,6,5),(6,6,6),(6,6,7),(6,6,8),(6,6,9),(6,6,10),(6,6,11),(6,6,12),(6,6,13),(6,6,14),(6,6,15),(6,6,16),(6,6,17),(6,6,18),(6,6,19),(6,6,20),(6,6,21),(6,6,22),(6,6,23),(6,6,24),(6,6,25),(6,26,1),(6,26,2),(6,26,3),(6,26,4),(6,26,5),(6,26,6),(6,26,7),(6,26,8),(6,26,9),(6,26,10),(6,26,11),(6,26,12),(6,26,13),(6,26,14),(6,26,15),(6,26,16),(6,26,17),(6,26,18),(6,26,19),(6,26,20),(6,26,21),(6,26,22),(6,26,23),(6,26,24),(6,26,25),(6,46,1),(6,46,2),(6,46,3),(6,46,4),(6,46,5),(6,46,6),(6,46,7),(6,46,8),(6,46,9),(6,46,10),(6,46,11),(6,46,12),(6,46,13),(6,46,14),(6,46,15),(6,46,16),(6,46,17),(6,46,18),(6,46,19),(6,46,20),(6,46,21),(6,46,22),(6,46,23),(6,46,24),(6,46,25),(7,7,1),(7,7,2),(7,7,3),(7,7,4),(7,7,5),(7,7,6),(7,7,7),(7,7,8),(7,7,9),(7,7,10),(7,7,11),(7,7,12),(7,7,13),(7,7,14),(7,7,15),(7,7,16),(7,7,17),(7,7,18),(7,7,19),(7,7,20),(7,7,21),(7,7,22),(7,7,23),(7,7,24),(7,7,25),(7,27,1),(7,27,2),(7,27,3),(7,27,4),(7,27,5),(7,27,6),(7,27,7),(7,27,8),(7,27,9),(7,27,10),(7,27,11),(7,27,12),(7,27,13),(7,27,14),(7,27,15),(7,27,16),(7,27,17),(7,27,18),(7,27,19),(7,27,20),(7,27,21),(7,27,22),(7,27,23),(7,27,24),(7,27,25),(7,47,1),(7,47,2),(7,47,3),(7,47,4),(7,47,5),(7,47,6),(7,47,7),(7,47,8),(7,47,9),(7,47,10),(7,47,11),(7,47,12),(7,47,13),(7,47,14),(7,47,15),(7,47,16),(7,47,17),(7,47,18),(7,47,19),(7,47,20),(7,47,21),(7,47,22),(7,47,23),(7,47,24),(7,47,25),(8,8,1),(8,8,2),(8,8,3),(8,8,4),(8,8,5),(8,8,6),(8,8,7),(8,8,8),(8,8,9),(8,8,10),(8,8,11),(8,8,12),(8,8,13),(8,8,14),(8,8,15),(8,8,16),(8,8,17),(8,8,18),(8,8,19),(8,8,20),(8,8,21),(8,8,22),(8,8,23),(8,8,24),(8,8,25),(8,28,1),(8,28,2),(8,28,3),(8,28,4),(8,28,5),(8,28,6),(8,28,7),(8,28,8),(8,28,9),(8,28,10),(8,28,11),(8,28,12),(8,28,13),(8,28,14),(8,28,15),(8,28,16),(8,28,17),(8,28,18),(8,28,19),(8,28,20),(8,28,21),(8,28,22),(8,28,23),(8,28,24),(8,28,25),(8,48,1),(8,48,2),(8,48,3),(8,48,4),(8,48,5),(8,48,6),(8,48,7),(8,48,8),(8,48,9),(8,48,10),(8,48,11),(8,48,12),(8,48,13),(8,48,14),(8,48,15),(8,48,16),(8,48,17),(8,48,18),(8,48,19),(8,48,20),(8,48,21),(8,48,22),(8,48,23),(8,48,24),(8,48,25),(9,9,1),(9,9,2),(9,9,3),(9,9,4),(9,9,5),(9,9,6),(9,9,7),(9,9,8),(9,9,9),(9,9,10),(9,9,11),(9,9,12),(9,9,13),(9,9,14),(9,9,15),(9,9,16),(9,9,17),(9,9,18),(9,9,19),(9,9,20),(9,9,21),(9,9,22),(9,9,23),(9,9,24),(9,9,25),(9,29,1),(9,29,2),(9,29,3),(9,29,4),(9,29,5),(9,29,6),(9,29,7),(9,29,8),(9,29,9),(9,29,10),(9,29,11),(9,29,12),(9,29,13),(9,29,14),(9,29,15),(9,29,16),(9,29,17),(9,29,18),(9,29,19),(9,29,20),(9,29,21),(9,29,22),(9,29,23),(9,29,24),(9,29,25),(9,49,1),(9,49,2),(9,49,3),(9,49,4),(9,49,5),(9,49,6),(9,49,7),(9,49,8),(9,49,9),(9,49,10),(9,49,11),(9,49,12),(9,49,13),(9,49,14),(9,49,15),(9,49,16),(9,49,17),(9,49,18),(9,49,19),(9,49,20),(9,49,21),(9,49,22),(9,49,23),(9,49,24),(9,49,25),(10,10,1),(10,10,2),(10,10,3),(10,10,4),(10,10,5),(10,10,6),(10,10,7),(10,10,8),(10,10,9),(10,10,10),(10,10,11),(10,10,12),(10,10,13),(10,10,14),(10,10,15),(10,10,16),(10,10,17),(10,10,18),(10,10,19),(10,10,20),(10,10,21),(10,10,22),(10,10,23),(10,10,24),(10,10,25),(10,30,1),(10,30,2),(10,30,3),(10,30,4),(10,30,5),(10,30,6),(10,30,7),(10,30,8),(10,30,9),(10,30,10),(10,30,11),(10,30,12),(10,30,13),(10,30,14),(10,30,15),(10,30,16),(10,30,17),(10,30,18),(10,30,19),(10,30,20),(10,30,21),(10,30,22),(10,30,23),(10,30,24),(10,30,25),(10,50,1),(10,50,2),(10,50,3),(10,50,4),(10,50,5),(10,50,6),(10,50,7),(10,50,8),(10,50,9),(10,50,10),(10,50,11),(10,50,12),(10,50,13),(10,50,14),(10,50,15),(10,50,16),(10,50,17),(10,50,18),(10,50,19),(10,50,20),(10,50,21),(10,50,22),(10,50,23),(10,50,24),(10,50,25),(11,11,1),(11,11,2),(11,11,3),(11,11,4),(11,11,5),(11,11,6),(11,11,7),(11,11,8),(11,11,9),(11,11,10),(11,11,11),(11,11,12),(11,11,13),(11,11,14),(11,11,15),(11,11,16),(11,11,17),(11,11,18),(11,11,19),(11,11,20),(11,11,21),(11,11,22),(11,11,23),(11,11,24),(11,11,25),(11,31,1),(11,31,2),(11,31,3),(11,31,4),(11,31,5),(11,31,6),(11,31,7),(11,31,8),(11,31,9),(11,31,10),(11,31,11),(11,31,12),(11,31,13),(11,31,14),(11,31,15),(11,31,16),(11,31,17),(11,31,18),(11,31,19),(11,31,20),(11,31,21),(11,31,22),(11,31,23),(11,31,24),(11,31,25),(11,51,1),(11,51,2),(11,51,3),(11,51,4),(11,51,5),(11,51,6),(11,51,7),(11,51,8),(11,51,9),(11,51,10),(11,51,11),(11,51,12),(11,51,13),(11,51,14),(11,51,15),(11,51,16),(11,51,17),(11,51,18),(11,51,19),(11,51,20),(11,51,21),(11,51,22),(11,51,23),(11,51,24),(11,51,25),(12,12,1),(12,12,2),(12,12,3),(12,12,4),(12,12,5),(12,12,6),(12,12,7),(12,12,8),(12,12,9),(12,12,10),(12,12,11),(12,12,12),(12,12,13),(12,12,14),(12,12,15),(12,12,16),(12,12,17),(12,12,18),(12,12,19),(12,12,20),(12,12,21),(12,12,22),(12,12,23),(12,12,24),(12,12,25),(12,32,1),(12,32,2),(12,32,3),(12,32,4),(12,32,5),(12,32,6),(12,32,7),(12,32,8),(12,32,9),(12,32,10),(12,32,11),(12,32,12),(12,32,13),(12,32,14),(12,32,15),(12,32,16),(12,32,17),(12,32,18),(12,32,19),(12,32,20),(12,32,21),(12,32,22),(12,32,23),(12,32,24),(12,32,25),(12,52,1),(12,52,2),(12,52,3),(12,52,4),(12,52,5),(12,52,6),(12,52,7),(12,52,8),(12,52,9),(12,52,10),(12,52,11),(12,52,12),(12,52,13),(12,52,14),(12,52,15),(12,52,16),(12,52,17),(12,52,18),(12,52,19),(12,52,20),(12,52,21),(12,52,22),(12,52,23),(12,52,24),(12,52,25),(13,13,1),(13,13,2),(13,13,3),(13,13,4),(13,13,5),(13,13,6),(13,13,7),(13,13,8),(13,13,9),(13,13,10),(13,13,11),(13,13,12),(13,13,13),(13,13,14),(13,13,15),(13,13,16),(13,13,17),(13,13,18),(13,13,19),(13,13,20),(13,13,21),(13,13,22),(13,13,23),(13,13,24),(13,13,25),(13,33,1),(13,33,2),(13,33,3),(13,33,4),(13,33,5),(13,33,6),(13,33,7),(13,33,8),(13,33,9),(13,33,10),(13,33,11),(13,33,12),(13,33,13),(13,33,14),(13,33,15),(13,33,16),(13,33,17),(13,33,18),(13,33,19),(13,33,20),(13,33,21),(13,33,22),(13,33,23),(13,33,24),(13,33,25),(13,53,1),(13,53,2),(13,53,3),(13,53,4),(13,53,5),(13,53,6),(13,53,7),(13,53,8),(13,53,9),(13,53,10),(13,53,11),(13,53,12),(13,53,13),(13,53,14),(13,53,15),(13,53,16),(13,53,17),(13,53,18),(13,53,19),(13,53,20),(13,53,21),(13,53,22),(13,53,23),(13,53,24),(13,53,25),(14,14,1),(14,14,2),(14,14,3),(14,14,4),(14,14,5),(14,14,6),(14,14,7),(14,14,8),(14,14,9),(14,14,10),(14,14,11),(14,14,12),(14,14,13),(14,14,14),(14,14,15),(14,14,16),(14,14,17),(14,14,18),(14,14,19),(14,14,20),(14,14,21),(14,14,22),(14,14,23),(14,14,24),(14,14,25),(14,34,1),(14,34,2),(14,34,3),(14,34,4),(14,34,5),(14,34,6),(14,34,7),(14,34,8),(14,34,9),(14,34,10),(14,34,11),(14,34,12),(14,34,13),(14,34,14),(14,34,15),(14,34,16),(14,34,17),(14,34,18),(14,34,19),(14,34,20),(14,34,21),(14,34,22),(14,34,23),(14,34,24),(14,34,25),(14,54,1),(14,54,2),(14,54,3),(14,54,4),(14,54,5),(14,54,6),(14,54,7),(14,54,8),(14,54,9),(14,54,10),(14,54,11),(14,54,12),(14,54,13),(14,54,14),(14,54,15),(14,54,16),(14,54,17),(14,54,18),(14,54,19),(14,54,20),(14,54,21),(14,54,22),(14,54,23),(14,54,24),(14,54,25),(15,15,1),(15,15,2),(15,15,3),(15,15,4),(15,15,5),(15,15,6),(15,15,7),(15,15,8),(15,15,9),(15,15,10),(15,15,11),(15,15,12),(15,15,13),(15,15,14),(15,15,15),(15,15,16),(15,15,17),(15,15,18),(15,15,19),(15,15,20),(15,15,21),(15,15,22),(15,15,23),(15,15,24),(15,15,25),(15,35,1),(15,35,2),(15,35,3),(15,35,4),(15,35,5),(15,35,6),(15,35,7),(15,35,8),(15,35,9),(15,35,10),(15,35,11),(15,35,12),(15,35,13),(15,35,14),(15,35,15),(15,35,16),(15,35,17),(15,35,18),(15,35,19),(15,35,20),(15,35,21),(15,35,22),(15,35,23),(15,35,24),(15,35,25),(15,55,1),(15,55,2),(15,55,3),(15,55,4),(15,55,5),(15,55,6),(15,55,7),(15,55,8),(15,55,9),(15,55,10),(15,55,11),(15,55,12),(15,55,13),(15,55,14),(15,55,15),(15,55,16),(15,55,17),(15,55,18),(15,55,19),(15,55,20),(15,55,21),(15,55,22),(15,55,23),(15,55,24),(15,55,25),(16,16,1),(16,16,2),(16,16,3),(16,16,4),(16,16,5),(16,16,6),(16,16,7),(16,16,8),(16,16,9),(16,16,10),(16,16,11),(16,16,12),(16,16,13),(16,16,14),(16,16,15),(16,16,16),(16,16,17),(16,16,18),(16,16,19),(16,16,20),(16,16,21),(16,16,22),(16,16,23),(16,16,24),(16,16,25),(16,36,1),(16,36,2),(16,36,3),(16,36,4),(16,36,5),(16,36,6),(16,36,7),(16,36,8),(16,36,9),(16,36,10),(16,36,11),(16,36,12),(16,36,13),(16,36,14),(16,36,15),(16,36,16),(16,36,17),(16,36,18),(16,36,19),(16,36,20),(16,36,21),(16,36,22),(16,36,23),(16,36,24),(16,36,25),(16,56,1),(16,56,2),(16,56,3),(16,56,4),(16,56,5),(16,56,6),(16,56,7),(16,56,8),(16,56,9),(16,56,10),(16,56,11),(16,56,12),(16,56,13),(16,56,14),(16,56,15),(16,56,16),(16,56,17),(16,56,18),(16,56,19),(16,56,20),(16,56,21),(16,56,22),(16,56,23),(16,56,24),(16,56,25),(17,17,1),(17,17,2),(17,17,3),(17,17,4),(17,17,5),(17,17,6),(17,17,7),(17,17,8),(17,17,9),(17,17,10),(17,17,11),(17,17,12),(17,17,13),(17,17,14),(17,17,15),(17,17,16),(17,17,17),(17,17,18),(17,17,19),(17,17,20),(17,17,21),(17,17,22),(17,17,23),(17,17,24),(17,17,25),(17,37,1),(17,37,2),(17,37,3),(17,37,4),(17,37,5),(17,37,6),(17,37,7),(17,37,8),(17,37,9),(17,37,10),(17,37,11),(17,37,12),(17,37,13),(17,37,14),(17,37,15),(17,37,16),(17,37,17),(17,37,18),(17,37,19),(17,37,20),(17,37,21),(17,37,22),(17,37,23),(17,37,24),(17,37,25),(17,57,1),(17,57,2),(17,57,3),(17,57,4),(17,57,5),(17,57,6),(17,57,7),(17,57,8),(17,57,9),(17,57,10),(17,57,11),(17,57,12),(17,57,13),(17,57,14),(17,57,15),(17,57,16),(17,57,17),(17,57,18),(17,57,19),(17,57,20),(17,57,21),(17,57,22),(17,57,23),(17,57,24),(17,57,25),(18,18,1),(18,18,2),(18,18,3),(18,18,4),(18,18,5),(18,18,6),(18,18,7),(18,18,8),(18,18,9),(18,18,10),(18,18,11),(18,18,12),(18,18,13),(18,18,14),(18,18,15),(18,18,16),(18,18,17),(18,18,18),(18,18,19),(18,18,20),(18,18,21),(18,18,22),(18,18,23),(18,18,24),(18,18,25),(18,38,1),(18,38,2),(18,38,3),(18,38,4),(18,38,5),(18,38,6),(18,38,7),(18,38,8),(18,38,9),(18,38,10),(18,38,11),(18,38,12),(18,38,13),(18,38,14),(18,38,15),(18,38,16),(18,38,17),(18,38,18),(18,38,19),(18,38,20),(18,38,21),(18,38,22),(18,38,23),(18,38,24),(18,38,25),(18,58,1),(18,58,2),(18,58,3),(18,58,4),(18,58,5),(18,58,6),(18,58,7),(18,58,8),(18,58,9),(18,58,10),(18,58,11),(18,58,12),(18,58,13),(18,58,14),(18,58,15),(18,58,16),(18,58,17),(18,58,18),(18,58,19),(18,58,20),(18,58,21),(18,58,22),(18,58,23),(18,58,24),(18,58,25),(19,19,1),(19,19,2),(19,19,3),(19,19,4),(19,19,5),(19,19,6),(19,19,7),(19,19,8),(19,19,9),(19,19,10),(19,19,11),(19,19,12),(19,19,13),(19,19,14),(19,19,15),(19,19,16),(19,19,17),(19,19,18),(19,19,19),(19,19,20),(19,19,21),(19,19,22),(19,19,23),(19,19,24),(19,19,25),(19,39,1),(19,39,2),(19,39,3),(19,39,4),(19,39,5),(19,39,6),(19,39,7),(19,39,8),(19,39,9),(19,39,10),(19,39,11),(19,39,12),(19,39,13),(19,39,14),(19,39,15),(19,39,16),(19,39,17),(19,39,18),(19,39,19),(19,39,20),(19,39,21),(19,39,22),(19,39,23),(19,39,24),(19,39,25),(19,59,1),(19,59,2),(19,59,3),(19,59,4),(19,59,5),(19,59,6),(19,59,7),(19,59,8),(19,59,9),(19,59,10),(19,59,11),(19,59,12),(19,59,13),(19,59,14),(19,59,15),(19,59,16),(19,59,17),(19,59,18),(19,59,19),(19,59,20),(19,59,21),(19,59,22),(19,59,23),(19,59,24),(19,59,25),(20,20,1),(20,20,2),(20,20,3),(20,20,4),(20,20,5),(20,20,6),(20,20,7),(20,20,8),(20,20,9),(20,20,10),(20,20,11),(20,20,12),(20,20,13),(20,20,14),(20,20,15),(20,20,16),(20,20,17),(20,20,18),(20,20,19),(20,20,20),(20,20,21),(20,20,22),(20,20,23),(20,20,24),(20,20,25),(20,40,1),(20,40,2),(20,40,3),(20,40,4),(20,40,5),(20,40,6),(20,40,7),(20,40,8),(20,40,9),(20,40,10),(20,40,11),(20,40,12),(20,40,13),(20,40,14),(20,40,15),(20,40,16),(20,40,17),(20,40,18),(20,40,19),(20,40,20),(20,40,21),(20,40,22),(20,40,23),(20,40,24),(20,40,25),(20,60,1),(20,60,2),(20,60,3),(20,60,4),(20,60,5),(20,60,6),(20,60,7),(20,60,8),(20,60,9),(20,60,10),(20,60,11),(20,60,12),(20,60,13),(20,60,14),(20,60,15),(20,60,16),(20,60,17),(20,60,18),(20,60,19),(20,60,20),(20,60,21),(20,60,22),(20,60,23),(20,60,24),(20,60,25);
/*!40000 ALTER TABLE `Attends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Customer_Username` varchar(50) NOT NULL,
  `Customer_Password` varchar(255) NOT NULL,
  `Customer_Address` varchar(255) DEFAULT NULL,
  `Customer_DOB` date DEFAULT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'efoston0','tB0`@Ux<RgpSz<x','83351 Ruskin Court','1992-02-05','2023-07-20 21:12:55'),(2,'lwoodland1','yE1@>o4\'_py7tu<','8 Tennessee Terrace','1996-12-17','2024-01-09 01:47:15'),(3,'mvanderbeek2','dS9\'l8|NI~FjuCe','9036 Tennyson Road','1997-09-22','2024-03-30 11:05:38'),(4,'rbordis3','xZ8$~AB>4o','218 Westerfield Way','1988-03-24','2023-10-23 20:58:30'),(5,'pofarrell4','qR0=l?J<PP','653 Nobel Circle','2001-04-07','2024-03-12 05:18:54'),(6,'zeverly5','kB5$M4HKm11v','06024 Forest Terrace','1997-11-10','2023-07-29 13:08:25'),(7,'cjago6','vP9<F=YPuqoU','335 Golf Point','2001-04-12','2023-06-03 10:30:08'),(8,'cmoncur7','eS0&*Gu4KQP&1\\%d','9 Ronald Regan Road','1995-06-13','2023-07-11 00:27:34'),(9,'lscotter8','dE0<GIQht','808 Hagan Alley','1993-10-02','2024-01-03 08:48:14'),(10,'eshelp9','tC7!U.sjG%V$','5 Gerald Court','1994-10-06','2023-06-01 21:16:26'),(11,'ireutera','xG0jDZdX1c>,m','5309 Heffernan Way','1999-11-22','2023-05-21 11:52:11'),(12,'awoollastonb','vI6%A38S)ow~98m','7 Porter Terrace','1991-11-05','2023-11-01 23:46:07'),(13,'pmctrustriec','uO6/qMK>sQz\'o{b','0975 Chive Hill','1990-07-03','2023-11-18 12:58:32'),(14,'agrimwaded','oF8=R`?YJiD','1 Summit Terrace','1987-11-11','2023-07-19 22:09:56'),(15,'cbaldettie','cC5)bM9</k$LE','26 Waubesa Circle','1995-02-13','2023-06-18 23:41:15'),(16,'cmustoof','zT1*g_hO?fqn,,\"','13 Westridge Court','1991-03-21','2023-04-21 11:35:32'),(17,'hfriftg','iY0H&X|c_@n0','92870 Golf View Terrace','1996-03-14','2024-03-25 08:13:54'),(18,'etoulsonh','fY6_QXs{dX~WbE','0360 Judy Center','2001-12-23','2023-12-09 05:55:57'),(19,'nferebeei','xQ8{pp2>@','950 Warrior Court','1992-05-20','2023-09-28 07:26:36'),(20,'cdeasj','fS2=m8PC','8059 Moland Court','1989-09-15','2023-10-22 16:20:50'),(21,'pjarviek','kP6?\"eJ\"','935 Waxwing Avenue','1994-05-21','2024-02-16 17:24:38'),(22,'rpohlakl','zY2_3Kt&T)~q}T','81301 Toban Street','1996-04-22','2023-06-29 23:59:40'),(23,'rhuzzeym','gT3{,QYfbJdS','9011 Utah Way','1987-06-23','2023-10-04 19:31:43'),(24,'asimoninn','oF8=R`?YJiD','8 Surrey Place','2002-01-16','2023-07-03 04:58:02'),(25,'jborgeo','mN7%z}>>xa}','0 Cambridge Place','1987-06-21','2023-07-13 00:38:16');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_History`
--

DROP TABLE IF EXISTS `Customer_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer_History` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Customer_Username` varchar(50) NOT NULL,
  `Customer_Password` varchar(255) NOT NULL,
  `Customer_Address` varchar(255) DEFAULT NULL,
  `Customer_DOB` date DEFAULT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_History`
--

LOCK TABLES `Customer_History` WRITE;
/*!40000 ALTER TABLE `Customer_History` DISABLE KEYS */;
INSERT INTO `Customer_History` VALUES (1,'efoston0','$2a$04$61jTnSmdSyBnQlFw2e462uqpGY4Gfz2gQX1R6oGPz8GwTEDEOlBca','83351 Ruskin Court','1992-02-05','2023-07-20 21:12:55'),(8,'cmoncur7','$2a$04$tpAVvtm2armEZjjDIdRD/.UtN.BWWyuMryQhs5m/8ER1eQntz9ULK','9 Ronald Regan Road','1995-06-13','2023-07-11 00:27:34'),(1000,'TestUser','TestPassword','TestAddress','2000-01-01','2024-04-12 01:14:00');
/*!40000 ALTER TABLE `Customer_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer_PhoneNumber`
--

DROP TABLE IF EXISTS `Customer_PhoneNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer_PhoneNumber` (
  `Customer_ID` int(10) unsigned NOT NULL,
  `Phone_Number` varchar(25) NOT NULL,
  PRIMARY KEY (`Customer_ID`,`Phone_Number`),
  CONSTRAINT `Customer_PhoneNumber_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_PhoneNumber`
--

LOCK TABLES `Customer_PhoneNumber` WRITE;
/*!40000 ALTER TABLE `Customer_PhoneNumber` DISABLE KEYS */;
INSERT INTO `Customer_PhoneNumber` VALUES (1,'287-355-5295'),(2,'156-925-1056'),(3,'261-723-7071'),(4,'671-172-4484'),(5,'324-561-3928'),(6,'876-213-4501'),(7,'528-202-1126'),(8,'982-563-8108'),(9,'803-310-2036'),(10,'244-992-4901'),(11,'106-828-3959'),(12,'703-585-5319'),(13,'111-266-9744'),(14,'571-981-2177'),(15,'202-335-1312'),(16,'589-222-0351'),(17,'358-596-6462'),(18,'443-808-8631'),(19,'711-706-0220'),(20,'540-860-2298'),(21,'810-468-1592'),(22,'819-998-7033'),(23,'556-640-7468'),(24,'200-313-2632'),(25,'987-147-7948');
/*!40000 ALTER TABLE `Customer_PhoneNumber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_Image`
--

DROP TABLE IF EXISTS `Event_Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_Image` (
  `Venue_ID` int(10) unsigned NOT NULL,
  `Event_ID` int(10) unsigned NOT NULL,
  `E_Image` varchar(128) NOT NULL,
  PRIMARY KEY (`Venue_ID`,`Event_ID`,`E_Image`),
  CONSTRAINT `Event_Image_ibfk_1` FOREIGN KEY (`Venue_ID`, `Event_ID`) REFERENCES `Occasion` (`ID`, `Venue_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_Image`
--

LOCK TABLES `Event_Image` WRITE;
/*!40000 ALTER TABLE `Event_Image` DISABLE KEYS */;
INSERT INTO `Event_Image` VALUES (1,1,'http://dummyimage.com/237x100.png/ff4444/ffffff'),(1,21,'http://dummyimage.com/250x100.png/cc0000/ffffff'),(1,41,'http://dummyimage.com/184x100.png/5fa2dd/ffffff'),(2,2,'http://dummyimage.com/158x100.png/5fa2dd/ffffff'),(2,22,'http://dummyimage.com/247x100.png/dddddd/000000'),(2,42,'http://dummyimage.com/171x100.png/5fa2dd/ffffff'),(3,3,'http://dummyimage.com/163x100.png/cc0000/ffffff'),(3,23,'http://dummyimage.com/127x100.png/ff4444/ffffff'),(3,43,'http://dummyimage.com/168x100.png/dddddd/000000'),(4,4,'http://dummyimage.com/215x100.png/ff4444/ffffff'),(4,24,'http://dummyimage.com/141x100.png/ff4444/ffffff'),(4,44,'http://dummyimage.com/157x100.png/ff4444/ffffff'),(5,5,'http://dummyimage.com/108x100.png/ff4444/ffffff'),(5,25,'http://dummyimage.com/108x100.png/dddddd/000000'),(5,45,'http://dummyimage.com/162x100.png/cc0000/ffffff'),(6,6,'http://dummyimage.com/213x100.png/cc0000/ffffff'),(6,26,'http://dummyimage.com/184x100.png/cc0000/ffffff'),(6,46,'http://dummyimage.com/114x100.png/dddddd/000000'),(7,7,'http://dummyimage.com/167x100.png/dddddd/000000'),(7,27,'http://dummyimage.com/169x100.png/ff4444/ffffff'),(7,47,'http://dummyimage.com/239x100.png/ff4444/ffffff'),(8,8,'http://dummyimage.com/135x100.png/5fa2dd/ffffff'),(8,28,'http://dummyimage.com/232x100.png/ff4444/ffffff'),(8,48,'http://dummyimage.com/107x100.png/5fa2dd/ffffff'),(9,9,'http://dummyimage.com/160x100.png/cc0000/ffffff'),(9,29,'http://dummyimage.com/164x100.png/cc0000/ffffff'),(9,49,'http://dummyimage.com/150x100.png/ff4444/ffffff'),(10,10,'http://dummyimage.com/120x100.png/ff4444/ffffff'),(10,30,'http://dummyimage.com/180x100.png/cc0000/ffffff'),(10,50,'http://dummyimage.com/126x100.png/5fa2dd/ffffff'),(11,11,'http://dummyimage.com/193x100.png/cc0000/ffffff'),(11,31,'http://dummyimage.com/182x100.png/5fa2dd/ffffff'),(11,51,'http://dummyimage.com/245x100.png/ff4444/ffffff'),(12,12,'http://dummyimage.com/183x100.png/ff4444/ffffff'),(12,32,'http://dummyimage.com/220x100.png/5fa2dd/ffffff'),(12,52,'http://dummyimage.com/186x100.png/ff4444/ffffff'),(13,13,'http://dummyimage.com/206x100.png/cc0000/ffffff'),(13,33,'http://dummyimage.com/217x100.png/5fa2dd/ffffff'),(13,53,'http://dummyimage.com/211x100.png/dddddd/000000'),(14,14,'http://dummyimage.com/191x100.png/5fa2dd/ffffff'),(14,34,'http://dummyimage.com/168x100.png/cc0000/ffffff'),(14,54,'http://dummyimage.com/223x100.png/cc0000/ffffff'),(15,15,'http://dummyimage.com/125x100.png/cc0000/ffffff'),(15,35,'http://dummyimage.com/249x100.png/dddddd/000000'),(15,55,'http://dummyimage.com/190x100.png/5fa2dd/ffffff'),(16,16,'http://dummyimage.com/197x100.png/5fa2dd/ffffff'),(16,36,'http://dummyimage.com/231x100.png/5fa2dd/ffffff'),(16,56,'http://dummyimage.com/127x100.png/ff4444/ffffff'),(17,17,'http://dummyimage.com/196x100.png/dddddd/000000'),(17,37,'http://dummyimage.com/153x100.png/cc0000/ffffff'),(17,57,'http://dummyimage.com/233x100.png/5fa2dd/ffffff'),(18,18,'http://dummyimage.com/189x100.png/cc0000/ffffff'),(18,38,'http://dummyimage.com/213x100.png/cc0000/ffffff'),(18,58,'http://dummyimage.com/113x100.png/dddddd/000000'),(19,19,'http://dummyimage.com/143x100.png/ff4444/ffffff'),(19,39,'http://dummyimage.com/106x100.png/5fa2dd/ffffff'),(19,59,'http://dummyimage.com/209x100.png/5fa2dd/ffffff'),(20,20,'http://dummyimage.com/144x100.png/dddddd/000000'),(20,40,'http://dummyimage.com/248x100.png/cc0000/ffffff'),(20,60,'http://dummyimage.com/140x100.png/dddddd/000000');
/*!40000 ALTER TABLE `Event_Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Event_Price`
--

DROP TABLE IF EXISTS `Event_Price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Event_Price` (
  `Venue_ID` int(10) unsigned NOT NULL,
  `Event_ID` int(10) unsigned NOT NULL,
  `Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`Venue_ID`,`Event_ID`,`Price`),
  CONSTRAINT `Event_Price_ibfk_1` FOREIGN KEY (`Venue_ID`, `Event_ID`) REFERENCES `Occasion` (`ID`, `Venue_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Event_Price`
--

LOCK TABLES `Event_Price` WRITE;
/*!40000 ALTER TABLE `Event_Price` DISABLE KEYS */;
INSERT INTO `Event_Price` VALUES (1,1,125.00),(1,21,180.00),(1,41,120.00),(2,2,100.00),(2,22,90.00),(2,42,100.00),(3,3,150.00),(3,23,210.00),(3,43,170.00),(4,4,90.00),(4,24,120.00),(4,44,95.00),(5,5,200.00),(5,25,220.00),(5,45,180.00),(6,6,180.00),(6,26,160.00),(6,46,150.00),(7,7,250.00),(7,27,100.00),(7,47,260.00),(8,8,80.00),(8,28,110.00),(8,48,85.00),(9,9,75.00),(9,29,85.00),(9,49,80.00),(10,10,300.00),(10,30,260.00),(10,50,300.00),(11,11,110.00),(11,31,80.00),(11,51,100.00),(12,12,135.00),(12,32,150.00),(12,52,145.00),(13,13,70.00),(13,33,75.00),(13,53,75.00),(14,14,220.00),(14,34,240.00),(14,54,230.00),(15,15,275.00),(15,35,290.00),(15,55,280.00),(16,16,65.00),(16,36,60.00),(16,56,70.00),(17,17,150.00),(17,37,140.00),(17,57,160.00),(18,18,55.00),(18,38,50.00),(18,58,50.00),(19,19,210.00),(19,39,200.00),(19,59,190.00),(20,20,95.00),(20,40,105.00),(20,60,110.00);
/*!40000 ALTER TABLE `Event_Price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Follows`
--

DROP TABLE IF EXISTS `Follows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Follows` (
  `Artist_Name` varchar(50) NOT NULL,
  `Customer_ID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Artist_Name`,`Customer_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `Follows_ibfk_1` FOREIGN KEY (`Artist_Name`) REFERENCES `Artist` (`AName`),
  CONSTRAINT `Follows_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Follows`
--

LOCK TABLES `Follows` WRITE;
/*!40000 ALTER TABLE `Follows` DISABLE KEYS */;
INSERT INTO `Follows` VALUES ('Aretha Franklin',3),('Aretha Franklin',4),('Aretha Franklin',6),('Aretha Franklin',8),('Aretha Franklin',9),('Aretha Franklin',10),('Aretha Franklin',12),('Aretha Franklin',16),('Aretha Franklin',18),('Aretha Franklin',19),('Aretha Franklin',20),('Aretha Franklin',21),('Aretha Franklin',22),('Aretha Franklin',23),('Aretha Franklin',24),('Barbra Streisand',1),('Barbra Streisand',3),('Barbra Streisand',4),('Barbra Streisand',5),('Barbra Streisand',6),('Barbra Streisand',8),('Barbra Streisand',9),('Barbra Streisand',11),('Barbra Streisand',13),('Barbra Streisand',14),('Barbra Streisand',17),('Barbra Streisand',20),('Barbra Streisand',21),('Barbra Streisand',23),('Barbra Streisand',24),('Barbra Streisand',25),('Beyoncé',1),('Beyoncé',2),('Beyoncé',3),('Beyoncé',6),('Beyoncé',7),('Beyoncé',8),('Beyoncé',10),('Beyoncé',12),('Beyoncé',13),('Beyoncé',15),('Beyoncé',17),('Beyoncé',18),('Beyoncé',19),('Beyoncé',20),('Beyoncé',21),('Beyoncé',22),('Beyoncé',24),('Bob Dylan',4),('Bob Dylan',5),('Bob Dylan',6),('Bob Dylan',7),('Bob Dylan',8),('Bob Dylan',10),('Bob Dylan',12),('Bob Dylan',13),('Bob Dylan',14),('Bob Dylan',16),('Bob Dylan',17),('Bob Dylan',19),('Bob Dylan',20),('Bob Dylan',21),('Bob Dylan',22),('Bob Dylan',24),('Bob Dylan',25),('Bob Marley',2),('Bob Marley',3),('Bob Marley',6),('Bob Marley',9),('Bob Marley',10),('Bob Marley',12),('Bob Marley',13),('Bob Marley',14),('Bob Marley',15),('Bob Marley',16),('Bob Marley',17),('Bob Marley',18),('Bob Marley',21),('Bob Marley',22),('Bob Marley',24),('Bob Marley',25),('Bruce Springsteen',1),('Bruce Springsteen',2),('Bruce Springsteen',3),('Bruce Springsteen',5),('Bruce Springsteen',6),('Bruce Springsteen',7),('Bruce Springsteen',8),('Bruce Springsteen',9),('Bruce Springsteen',10),('Bruce Springsteen',11),('Bruce Springsteen',12),('Bruce Springsteen',13),('Bruce Springsteen',14),('Bruce Springsteen',15),('Bruce Springsteen',17),('Bruce Springsteen',18),('Bruce Springsteen',19),('Bruce Springsteen',20),('Bruce Springsteen',21),('Bruce Springsteen',23),('Bruce Springsteen',25),('David Bowie',1),('David Bowie',2),('David Bowie',3),('David Bowie',4),('David Bowie',5),('David Bowie',7),('David Bowie',8),('David Bowie',9),('David Bowie',10),('David Bowie',11),('David Bowie',12),('David Bowie',13),('David Bowie',14),('David Bowie',15),('David Bowie',16),('David Bowie',17),('David Bowie',18),('David Bowie',19),('David Bowie',20),('David Bowie',22),('Diana Ross',1),('Diana Ross',2),('Diana Ross',3),('Diana Ross',4),('Diana Ross',5),('Diana Ross',6),('Diana Ross',7),('Diana Ross',8),('Diana Ross',10),('Diana Ross',11),('Diana Ross',12),('Diana Ross',13),('Diana Ross',14),('Diana Ross',15),('Diana Ross',17),('Diana Ross',21),('Diana Ross',22),('Diana Ross',24),('Elton John',2),('Elton John',3),('Elton John',5),('Elton John',6),('Elton John',7),('Elton John',8),('Elton John',9),('Elton John',10),('Elton John',11),('Elton John',14),('Elton John',15),('Elton John',16),('Elton John',17),('Elton John',18),('Elton John',19),('Elton John',20),('Elton John',22),('Elton John',24),('Eric Clapton',1),('Eric Clapton',3),('Eric Clapton',4),('Eric Clapton',5),('Eric Clapton',9),('Eric Clapton',10),('Eric Clapton',11),('Eric Clapton',12),('Eric Clapton',14),('Eric Clapton',16),('Eric Clapton',17),('Eric Clapton',18),('Eric Clapton',19),('Eric Clapton',20),('Eric Clapton',21),('Eric Clapton',23),('Eric Clapton',24),('Eric Clapton',25),('Janet Jackson',3),('Janet Jackson',4),('Janet Jackson',5),('Janet Jackson',6),('Janet Jackson',7),('Janet Jackson',8),('Janet Jackson',9),('Janet Jackson',11),('Janet Jackson',13),('Janet Jackson',14),('Janet Jackson',15),('Janet Jackson',18),('Janet Jackson',19),('Janet Jackson',21),('Janet Jackson',22),('Janet Jackson',24),('John Lennon',1),('John Lennon',2),('John Lennon',3),('John Lennon',4),('John Lennon',5),('John Lennon',7),('John Lennon',8),('John Lennon',11),('John Lennon',12),('John Lennon',13),('John Lennon',16),('John Lennon',17),('John Lennon',19),('John Lennon',20),('John Lennon',21),('John Lennon',23),('John Lennon',24),('Madonna',1),('Madonna',3),('Madonna',6),('Madonna',8),('Madonna',9),('Madonna',11),('Madonna',12),('Madonna',13),('Madonna',14),('Madonna',21),('Madonna',23),('Madonna',25),('Mariah Carey',2),('Mariah Carey',3),('Mariah Carey',4),('Mariah Carey',5),('Mariah Carey',7),('Mariah Carey',8),('Mariah Carey',16),('Mariah Carey',17),('Mariah Carey',18),('Mariah Carey',19),('Mariah Carey',20),('Mariah Carey',21),('Mariah Carey',22),('Mariah Carey',23),('Mariah Carey',24),('Mariah Carey',25),('Michael Jackson',1),('Michael Jackson',2),('Michael Jackson',3),('Michael Jackson',4),('Michael Jackson',5),('Michael Jackson',6),('Michael Jackson',7),('Michael Jackson',9),('Michael Jackson',10),('Michael Jackson',12),('Michael Jackson',13),('Michael Jackson',14),('Michael Jackson',15),('Michael Jackson',16),('Michael Jackson',17),('Michael Jackson',18),('Michael Jackson',20),('Michael Jackson',21),('Michael Jackson',22),('Michael Jackson',23),('Michael Jackson',25),('Paul McCartney',1),('Paul McCartney',2),('Paul McCartney',3),('Paul McCartney',4),('Paul McCartney',6),('Paul McCartney',7),('Paul McCartney',8),('Paul McCartney',9),('Paul McCartney',13),('Paul McCartney',14),('Paul McCartney',15),('Paul McCartney',16),('Paul McCartney',17),('Paul McCartney',18),('Paul McCartney',21),('Paul McCartney',22),('Paul McCartney',24),('Paul McCartney',25),('Prince',1),('Prince',2),('Prince',4),('Prince',5),('Prince',7),('Prince',9),('Prince',11),('Prince',12),('Prince',15),('Prince',16),('Prince',17),('Prince',19),('Prince',20),('Prince',22),('Prince',23),('Prince',25),('Stevie Wonder',3),('Stevie Wonder',4),('Stevie Wonder',5),('Stevie Wonder',6),('Stevie Wonder',7),('Stevie Wonder',8),('Stevie Wonder',9),('Stevie Wonder',11),('Stevie Wonder',12),('Stevie Wonder',13),('Stevie Wonder',14),('Stevie Wonder',16),('Stevie Wonder',17),('Stevie Wonder',18),('Stevie Wonder',19),('Stevie Wonder',20),('Stevie Wonder',22),('Stevie Wonder',23),('Stevie Wonder',24),('Stevie Wonder',25),('Tina Turner',3),('Tina Turner',4),('Tina Turner',6),('Tina Turner',7),('Tina Turner',8),('Tina Turner',9),('Tina Turner',11),('Tina Turner',13),('Tina Turner',15),('Tina Turner',17),('Tina Turner',18),('Tina Turner',19),('Tina Turner',20),('Tina Turner',21),('Tina Turner',22),('Tina Turner',23),('Tina Turner',24),('Tina Turner',25),('Whitney Houston',3),('Whitney Houston',6),('Whitney Houston',7),('Whitney Houston',8),('Whitney Houston',9),('Whitney Houston',10),('Whitney Houston',11),('Whitney Houston',12),('Whitney Houston',13),('Whitney Houston',14),('Whitney Houston',15),('Whitney Houston',16),('Whitney Houston',17),('Whitney Houston',18),('Whitney Houston',19),('Whitney Houston',20),('Whitney Houston',21),('Whitney Houston',22),('Whitney Houston',23),('Whitney Houston',25);
/*!40000 ALTER TABLE `Follows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Occasion`
--

DROP TABLE IF EXISTS `Occasion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Occasion` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Venue_ID` int(10) unsigned NOT NULL,
  `Event_Name` varchar(50) DEFAULT NULL,
  `Event_Description` text DEFAULT NULL,
  `Event_Date_and_Time` timestamp NOT NULL DEFAULT current_timestamp(),
  `Event_Type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`,`Venue_ID`),
  KEY `Venue_ID` (`Venue_ID`),
  CONSTRAINT `Occasion_ibfk_1` FOREIGN KEY (`Venue_ID`) REFERENCES `Venue` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Occasion`
--

LOCK TABLES `Occasion` WRITE;
/*!40000 ALTER TABLE `Occasion` DISABLE KEYS */;
INSERT INTO `Occasion` VALUES (1,1,'Concert Series','A series of live music performances featuring various artists.','2024-04-16 02:00:00','Concert'),(2,2,'Summer Movie Nights','Enjoy classic movies under the stars with friends and family.','2024-07-21 03:30:00','Movie Night'),(3,3,'Sports Expo','An expo showcasing the latest in sports equipment and technology.','2024-09-10 16:00:00','Expo'),(4,4,'Basketball Tournament','Competitive basketball tournament featuring local teams.','2024-06-05 21:00:00','Sports'),(5,5,'Electronic Dance Party','A high-energy dance party with top DJs and electronic music.','2024-05-29 05:00:00','Music'),(6,6,'Football Championship','The final game of the season to determine the football champion.','2024-12-16 02:30:00','Sports'),(7,7,'Tech Conference','A conference focused on the latest trends and innovations in technology.','2024-08-12 17:00:00','Conference'),(8,8,'Comedy Show','An evening of laughter with stand-up comedians from around the country.','2024-06-21 02:30:00','Comedy'),(9,9,'Art Exhibition','A showcase of local artists\' work in various mediums.','2024-07-08 18:00:00','Exhibition'),(10,10,'Festival of Lights','A celebration of cultural diversity with music, dance, and food.','2024-12-01 01:00:00','Festival'),(11,11,'Soccer Match','Exciting soccer match between rival teams for the championship title.','2024-08-25 22:45:00','Sports'),(12,12,'Fashion Show','A showcase of the latest fashion trends and designer collections.','2024-09-23 03:00:00','Fashion'),(13,13,'Gaming Expo','An expo featuring the newest video games and gaming technology.','2024-10-17 19:00:00','Expo'),(14,14,'Rock Concert','An electrifying concert featuring rock bands from across the globe.','2024-07-15 04:00:00','Concert'),(15,15,'Charity Gala','A fundraising gala to support local charities and community initiatives.','2024-11-06 02:30:00','Charity'),(16,16,'Car Show','A showcase of vintage and modern cars with live demonstrations.','2024-08-03 17:00:00','Exhibition'),(17,17,'Food Festival','A culinary extravaganza with food vendors showcasing diverse cuisines.','2024-09-30 19:00:00','Festival'),(18,18,'Science Fair','A showcase of student projects and scientific discoveries.','2024-06-28 16:00:00','Fair'),(19,19,'Ballet Performance','A captivating ballet performance by renowned dancers.','2024-07-20 02:30:00','Performance'),(20,20,'Wine Tasting','An evening of wine tasting with sommeliers guiding the experience.','2024-08-09 01:00:00','Tasting'),(21,1,'Hip-Hop Showcase','An evening of hip-hop performances by emerging and established artists.','2024-07-03 03:00:00','Music'),(22,2,'Outdoor Yoga Session','Relaxing yoga session in the serene outdoor setting of the venue.','2024-08-30 16:30:00','Fitness'),(23,3,'Business Summit','A summit bringing together industry leaders for strategic discussions.','2024-09-15 17:00:00','Summit'),(24,4,'Baseball Game','Exciting baseball game between rival teams at the championship series.','2024-06-13 00:00:00','Sports'),(25,5,'Techno Rave','An immersive techno music experience with top DJs and visual effects.','2024-06-19 06:00:00','Music'),(26,6,'Rugby Tournament','Intense rugby tournament featuring regional teams competing for the cup.','2024-11-20 21:45:00','Sports'),(27,7,'Marketing Conference','A conference focused on the latest trends and strategies in marketing.','2024-08-28 18:00:00','Conference'),(28,8,'Stand-Up Comedy Night','An evening of hilarious stand-up comedy performances.','2024-07-11 03:00:00','Comedy'),(29,9,'Art Auction','An auction featuring rare and valuable artworks from renowned artists.','2024-09-06 01:00:00','Auction'),(30,10,'Cultural Fair','A celebration of diverse cultures with music, dance, and traditional cuisine.','2024-10-10 23:00:00','Fair'),(31,11,'Tennis Open','Thrilling tennis matches featuring top-ranked players vying for the championship.','2024-08-08 19:30:00','Sports'),(32,12,'Runway Show','A high-fashion runway show featuring leading designers\' collections.','2024-09-26 02:00:00','Fashion'),(33,13,'Gaming Tournament','Competitive gaming tournament with cash prizes and professional players.','2024-10-30 21:00:00','Gaming'),(34,14,'Pop Concert','An energetic pop music concert with chart-topping artists and live performances.','2024-07-29 01:30:00','Concert'),(35,15,'Fundraising Dinner','An elegant dinner event to raise funds for charitable causes.','2024-11-16 03:00:00','Charity'),(36,16,'Classic Car Show','A showcase of classic cars from different eras with historical insights.','2024-08-20 17:00:00','Exhibition'),(37,17,'Beer Festival','A festival celebrating craft beers with tastings and brewery showcases.','2024-09-18 19:00:00','Festival'),(38,18,'Science Exhibition','An interactive science exhibition showcasing discoveries and innovations.','2024-07-05 16:00:00','Exhibition'),(39,19,'Dance Performance','An enchanting dance performance by a renowned dance company.','2024-07-26 02:30:00','Performance'),(40,20,'Whiskey Tasting','An exclusive whiskey tasting event with rare and premium selections.','2024-08-13 01:30:00','Tasting'),(41,1,'Country Music Festival','A celebration of country music with live performances by top artists.','2024-07-13 00:00:00','Music'),(42,2,'Sunrise Yoga Retreat','An invigorating yoga retreat at sunrise for wellness and relaxation.','2024-09-08 13:00:00','Fitness'),(43,3,'Leadership Summit','A summit for leadership development and strategic insights.','2024-09-25 17:00:00','Summit'),(44,4,'Softball Tournament','Exciting softball tournament with teams competing for the championship.','2024-06-19 21:30:00','Sports'),(45,5,'Electronic Music Festival','A massive electronic music festival with top DJs and immersive experiences.','2024-07-01 04:00:00','Music'),(46,6,'Hockey Championship','The championship game of the hockey season with intense action on the ice.','2024-11-11 03:15:00','Sports'),(47,7,'Digital Marketing Conference','A conference focused on digital marketing strategies and innovations.','2024-08-15 18:30:00','Conference'),(48,8,'Magic Comedy Show','An entertaining comedy show combining magic tricks and humor.','2024-07-29 02:00:00','Comedy'),(49,9,'Modern Art Fair','A fair showcasing modern and contemporary artworks from emerging artists.','2024-09-10 18:30:00','Fair'),(50,10,'International Street Food Festival','A festival celebrating diverse street food flavors from around the world.','2024-10-15 23:00:00','Festival'),(51,11,'Tennis Masters Tournament','Premier tennis tournament featuring top-ranked players competing for the trophy.','2024-08-15 19:00:00','Sports'),(52,12,'High-Fashion Runway Show','A runway show featuring high-fashion designers\' collections and couture.','2024-10-01 02:30:00','Fashion'),(53,13,'Esports Championship Series','The ultimate esports championship series with multiple gaming tournaments.','2024-11-10 22:00:00','Esports'),(54,14,'Indie Music Festival','A music festival showcasing indie bands and emerging music talent.','2024-07-26 00:00:00','Music'),(55,15,'Community Charity Dinner','A community dinner event to raise funds for local charities and causes.','2024-11-11 02:30:00','Charity'),(56,16,'Automotive Showcase','A comprehensive automotive showcase featuring cars, trucks, and motorcycles.','2024-08-05 16:00:00','Exhibition'),(57,17,'Wine and Cheese Tasting Event','An elegant tasting event pairing wines and cheeses from around the world.','2024-09-15 21:00:00','Tastig'),(58,18,'Space Science Symposium','A symposium exploring the latest advancements in space science and research.','2024-07-08 17:00:00','Symposium'),(59,19,'Ballet Gala Performance','A grand gala performance showcasing ballet excellence and artistry.','2024-08-26 02:30:00','Performance'),(60,20,'Craft Beer Festival','A festival celebrating craft beers from local breweries with live music and food.','2024-08-11 00:00:00','Festival');
/*!40000 ALTER TABLE `Occasion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Performed`
--

DROP TABLE IF EXISTS `Performed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Performed` (
  `Venue_ID` int(10) unsigned NOT NULL,
  `Event_ID` int(10) unsigned NOT NULL,
  `Artist_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Venue_ID`,`Event_ID`,`Artist_Name`),
  KEY `Artist_Name` (`Artist_Name`),
  CONSTRAINT `Performed_ibfk_1` FOREIGN KEY (`Venue_ID`, `Event_ID`) REFERENCES `Occasion` (`ID`, `Venue_ID`),
  CONSTRAINT `Performed_ibfk_2` FOREIGN KEY (`Artist_Name`) REFERENCES `Artist` (`AName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Performed`
--

LOCK TABLES `Performed` WRITE;
/*!40000 ALTER TABLE `Performed` DISABLE KEYS */;
INSERT INTO `Performed` VALUES (1,1,'Beyoncé'),(1,1,'Bob Dylan'),(1,1,'Bob Marley'),(1,1,'Bruce Springsteen'),(1,1,'Diana Ross'),(1,1,'Eric Clapton'),(1,1,'Janet Jackson'),(1,1,'John Lennon'),(1,1,'Madonna'),(1,1,'Mariah Carey'),(1,1,'Michael Jackson'),(1,1,'Stevie Wonder'),(1,1,'Tina Turner'),(1,1,'Whitney Houston'),(1,21,'Aretha Franklin'),(1,21,'Barbra Streisand'),(1,21,'Bob Dylan'),(1,21,'Bob Marley'),(1,21,'Bruce Springsteen'),(1,21,'David Bowie'),(1,21,'Diana Ross'),(1,21,'Eric Clapton'),(1,21,'Janet Jackson'),(1,21,'John Lennon'),(1,21,'Madonna'),(1,21,'Michael Jackson'),(1,21,'Paul McCartney'),(1,21,'Stevie Wonder'),(1,21,'Tina Turner'),(1,21,'Whitney Houston'),(1,41,'Aretha Franklin'),(1,41,'Barbra Streisand'),(1,41,'Beyoncé'),(1,41,'Bob Marley'),(1,41,'Bruce Springsteen'),(1,41,'David Bowie'),(1,41,'Diana Ross'),(1,41,'Elton John'),(1,41,'Eric Clapton'),(1,41,'John Lennon'),(1,41,'Madonna'),(1,41,'Mariah Carey'),(1,41,'Michael Jackson'),(1,41,'Paul McCartney'),(1,41,'Prince'),(1,41,'Tina Turner'),(2,2,'Aretha Franklin'),(2,2,'Barbra Streisand'),(2,2,'Bob Dylan'),(2,2,'David Bowie'),(2,2,'Janet Jackson'),(2,2,'John Lennon'),(2,2,'Madonna'),(2,2,'Mariah Carey'),(2,2,'Michael Jackson'),(2,2,'Paul McCartney'),(2,2,'Prince'),(2,2,'Tina Turner'),(2,22,'Aretha Franklin'),(2,22,'Beyoncé'),(2,22,'Bob Dylan'),(2,22,'Bob Marley'),(2,22,'David Bowie'),(2,22,'Diana Ross'),(2,22,'Eric Clapton'),(2,22,'Janet Jackson'),(2,22,'John Lennon'),(2,22,'Madonna'),(2,22,'Michael Jackson'),(2,22,'Prince'),(2,22,'Stevie Wonder'),(2,22,'Tina Turner'),(2,22,'Whitney Houston'),(2,42,'Aretha Franklin'),(2,42,'Beyoncé'),(2,42,'David Bowie'),(2,42,'Diana Ross'),(2,42,'Elton John'),(2,42,'Eric Clapton'),(2,42,'Janet Jackson'),(2,42,'Madonna'),(2,42,'Paul McCartney'),(2,42,'Prince'),(2,42,'Stevie Wonder'),(2,42,'Tina Turner'),(3,3,'Aretha Franklin'),(3,3,'Barbra Streisand'),(3,3,'Beyoncé'),(3,3,'Eric Clapton'),(3,3,'John Lennon'),(3,3,'Madonna'),(3,3,'Mariah Carey'),(3,3,'Michael Jackson'),(3,3,'Prince'),(3,3,'Stevie Wonder'),(3,3,'Whitney Houston'),(3,23,'Aretha Franklin'),(3,23,'Barbra Streisand'),(3,23,'Beyoncé'),(3,23,'Bob Dylan'),(3,23,'Bruce Springsteen'),(3,23,'David Bowie'),(3,23,'Elton John'),(3,23,'John Lennon'),(3,23,'Madonna'),(3,23,'Michael Jackson'),(3,23,'Paul McCartney'),(3,23,'Prince'),(3,23,'Stevie Wonder'),(3,23,'Tina Turner'),(3,23,'Whitney Houston'),(3,43,'Barbra Streisand'),(3,43,'Beyoncé'),(3,43,'Bob Dylan'),(3,43,'Bruce Springsteen'),(3,43,'David Bowie'),(3,43,'Diana Ross'),(3,43,'Elton John'),(3,43,'John Lennon'),(3,43,'Mariah Carey'),(3,43,'Prince'),(3,43,'Stevie Wonder'),(3,43,'Tina Turner'),(3,43,'Whitney Houston'),(4,4,'Aretha Franklin'),(4,4,'Barbra Streisand'),(4,4,'Beyoncé'),(4,4,'Bob Dylan'),(4,4,'Bob Marley'),(4,4,'Bruce Springsteen'),(4,4,'David Bowie'),(4,4,'Diana Ross'),(4,4,'Elton John'),(4,4,'Eric Clapton'),(4,4,'Janet Jackson'),(4,4,'John Lennon'),(4,4,'Michael Jackson'),(4,4,'Paul McCartney'),(4,4,'Prince'),(4,4,'Stevie Wonder'),(4,4,'Tina Turner'),(4,4,'Whitney Houston'),(4,24,'Barbra Streisand'),(4,24,'Bob Dylan'),(4,24,'Bob Marley'),(4,24,'Bruce Springsteen'),(4,24,'David Bowie'),(4,24,'Diana Ross'),(4,24,'Elton John'),(4,24,'Eric Clapton'),(4,24,'Janet Jackson'),(4,24,'John Lennon'),(4,24,'Madonna'),(4,24,'Paul McCartney'),(4,24,'Whitney Houston'),(4,44,'Aretha Franklin'),(4,44,'Bob Marley'),(4,44,'Diana Ross'),(4,44,'Eric Clapton'),(4,44,'John Lennon'),(4,44,'Michael Jackson'),(4,44,'Paul McCartney'),(4,44,'Prince'),(4,44,'Stevie Wonder'),(4,44,'Whitney Houston'),(5,5,'Bob Marley'),(5,5,'David Bowie'),(5,5,'Diana Ross'),(5,5,'Janet Jackson'),(5,5,'Madonna'),(5,5,'Paul McCartney'),(5,5,'Prince'),(5,5,'Tina Turner'),(5,5,'Whitney Houston'),(5,25,'Beyoncé'),(5,25,'Bob Dylan'),(5,25,'Bob Marley'),(5,25,'David Bowie'),(5,25,'Diana Ross'),(5,25,'Eric Clapton'),(5,25,'Madonna'),(5,25,'Michael Jackson'),(5,25,'Paul McCartney'),(5,25,'Prince'),(5,25,'Tina Turner'),(5,25,'Whitney Houston'),(5,45,'Aretha Franklin'),(5,45,'Barbra Streisand'),(5,45,'Beyoncé'),(5,45,'Bob Dylan'),(5,45,'Bob Marley'),(5,45,'David Bowie'),(5,45,'Diana Ross'),(5,45,'Elton John'),(5,45,'John Lennon'),(5,45,'Mariah Carey'),(5,45,'Michael Jackson'),(5,45,'Prince'),(5,45,'Stevie Wonder'),(5,45,'Tina Turner'),(5,45,'Whitney Houston'),(6,6,'Aretha Franklin'),(6,6,'Bob Dylan'),(6,6,'Bob Marley'),(6,6,'David Bowie'),(6,6,'Elton John'),(6,6,'Janet Jackson'),(6,6,'Madonna'),(6,6,'Paul McCartney'),(6,6,'Prince'),(6,6,'Tina Turner'),(6,6,'Whitney Houston'),(6,26,'Barbra Streisand'),(6,26,'Beyoncé'),(6,26,'Bob Marley'),(6,26,'David Bowie'),(6,26,'Janet Jackson'),(6,26,'Madonna'),(6,26,'Stevie Wonder'),(6,26,'Whitney Houston'),(6,46,'Aretha Franklin'),(6,46,'Barbra Streisand'),(6,46,'Beyoncé'),(6,46,'Bob Dylan'),(6,46,'Bob Marley'),(6,46,'David Bowie'),(6,46,'Diana Ross'),(6,46,'Elton John'),(6,46,'John Lennon'),(6,46,'Mariah Carey'),(6,46,'Michael Jackson'),(6,46,'Paul McCartney'),(6,46,'Prince'),(6,46,'Stevie Wonder'),(6,46,'Whitney Houston'),(7,7,'Beyoncé'),(7,7,'Bob Dylan'),(7,7,'Bruce Springsteen'),(7,7,'David Bowie'),(7,7,'Eric Clapton'),(7,7,'Mariah Carey'),(7,7,'Michael Jackson'),(7,7,'Paul McCartney'),(7,7,'Tina Turner'),(7,27,'Barbra Streisand'),(7,27,'Beyoncé'),(7,27,'Bob Dylan'),(7,27,'Bruce Springsteen'),(7,27,'David Bowie'),(7,27,'Eric Clapton'),(7,27,'Janet Jackson'),(7,27,'John Lennon'),(7,27,'Madonna'),(7,27,'Mariah Carey'),(7,27,'Paul McCartney'),(7,27,'Stevie Wonder'),(7,27,'Tina Turner'),(7,27,'Whitney Houston'),(7,47,'Aretha Franklin'),(7,47,'Barbra Streisand'),(7,47,'Beyoncé'),(7,47,'Bob Marley'),(7,47,'Bruce Springsteen'),(7,47,'David Bowie'),(7,47,'Janet Jackson'),(7,47,'John Lennon'),(7,47,'Madonna'),(7,47,'Mariah Carey'),(7,47,'Michael Jackson'),(7,47,'Prince'),(7,47,'Stevie Wonder'),(7,47,'Tina Turner'),(8,8,'Aretha Franklin'),(8,8,'Beyoncé'),(8,8,'Bob Dylan'),(8,8,'Bob Marley'),(8,8,'Bruce Springsteen'),(8,8,'David Bowie'),(8,8,'Diana Ross'),(8,8,'Elton John'),(8,8,'Janet Jackson'),(8,8,'John Lennon'),(8,8,'Madonna'),(8,8,'Mariah Carey'),(8,8,'Michael Jackson'),(8,8,'Paul McCartney'),(8,8,'Tina Turner'),(8,8,'Whitney Houston'),(8,28,'Aretha Franklin'),(8,28,'Barbra Streisand'),(8,28,'Beyoncé'),(8,28,'Bob Dylan'),(8,28,'Bob Marley'),(8,28,'David Bowie'),(8,28,'Diana Ross'),(8,28,'Elton John'),(8,28,'Eric Clapton'),(8,28,'John Lennon'),(8,28,'Madonna'),(8,28,'Michael Jackson'),(8,28,'Stevie Wonder'),(8,28,'Tina Turner'),(8,28,'Whitney Houston'),(8,48,'Beyoncé'),(8,48,'Bob Dylan'),(8,48,'Bob Marley'),(8,48,'Bruce Springsteen'),(8,48,'Elton John'),(8,48,'Eric Clapton'),(8,48,'Janet Jackson'),(8,48,'Madonna'),(8,48,'Mariah Carey'),(8,48,'Michael Jackson'),(8,48,'Paul McCartney'),(8,48,'Stevie Wonder'),(8,48,'Tina Turner'),(8,48,'Whitney Houston'),(9,9,'Aretha Franklin'),(9,9,'Bob Dylan'),(9,9,'Bob Marley'),(9,9,'Bruce Springsteen'),(9,9,'David Bowie'),(9,9,'Diana Ross'),(9,9,'Elton John'),(9,9,'Madonna'),(9,9,'Mariah Carey'),(9,9,'Michael Jackson'),(9,9,'Paul McCartney'),(9,9,'Prince'),(9,9,'Tina Turner'),(9,29,'Aretha Franklin'),(9,29,'Barbra Streisand'),(9,29,'Beyoncé'),(9,29,'Bob Dylan'),(9,29,'Bob Marley'),(9,29,'Diana Ross'),(9,29,'Elton John'),(9,29,'Janet Jackson'),(9,29,'Madonna'),(9,29,'Mariah Carey'),(9,29,'Michael Jackson'),(9,29,'Paul McCartney'),(9,29,'Stevie Wonder'),(9,29,'Tina Turner'),(9,29,'Whitney Houston'),(9,49,'Barbra Streisand'),(9,49,'Bob Dylan'),(9,49,'Bob Marley'),(9,49,'Elton John'),(9,49,'Eric Clapton'),(9,49,'Janet Jackson'),(9,49,'Paul McCartney'),(9,49,'Prince'),(9,49,'Tina Turner'),(10,10,'Aretha Franklin'),(10,10,'Barbra Streisand'),(10,10,'Bob Dylan'),(10,10,'Bob Marley'),(10,10,'Bruce Springsteen'),(10,10,'Elton John'),(10,10,'Eric Clapton'),(10,10,'Janet Jackson'),(10,10,'John Lennon'),(10,10,'Madonna'),(10,10,'Mariah Carey'),(10,10,'Prince'),(10,10,'Stevie Wonder'),(10,30,'Aretha Franklin'),(10,30,'Barbra Streisand'),(10,30,'Beyoncé'),(10,30,'Bob Marley'),(10,30,'Bruce Springsteen'),(10,30,'David Bowie'),(10,30,'Elton John'),(10,30,'Eric Clapton'),(10,30,'Madonna'),(10,30,'Michael Jackson'),(10,30,'Paul McCartney'),(10,30,'Prince'),(10,30,'Tina Turner'),(10,50,'Aretha Franklin'),(10,50,'Beyoncé'),(10,50,'Bob Dylan'),(10,50,'Bruce Springsteen'),(10,50,'Diana Ross'),(10,50,'Janet Jackson'),(10,50,'John Lennon'),(10,50,'Madonna'),(10,50,'Mariah Carey'),(10,50,'Paul McCartney'),(10,50,'Prince'),(10,50,'Tina Turner'),(10,50,'Whitney Houston'),(11,11,'Aretha Franklin'),(11,11,'Barbra Streisand'),(11,11,'Bob Dylan'),(11,11,'Bob Marley'),(11,11,'Bruce Springsteen'),(11,11,'David Bowie'),(11,11,'Elton John'),(11,11,'Janet Jackson'),(11,11,'John Lennon'),(11,11,'Madonna'),(11,11,'Mariah Carey'),(11,11,'Michael Jackson'),(11,11,'Paul McCartney'),(11,11,'Prince'),(11,11,'Tina Turner'),(11,11,'Whitney Houston'),(11,31,'Aretha Franklin'),(11,31,'Barbra Streisand'),(11,31,'Beyoncé'),(11,31,'Bob Dylan'),(11,31,'Bob Marley'),(11,31,'Bruce Springsteen'),(11,31,'Diana Ross'),(11,31,'Eric Clapton'),(11,31,'Janet Jackson'),(11,31,'Paul McCartney'),(11,31,'Prince'),(11,31,'Stevie Wonder'),(11,31,'Tina Turner'),(11,31,'Whitney Houston'),(11,51,'Aretha Franklin'),(11,51,'Beyoncé'),(11,51,'Bob Dylan'),(11,51,'Bob Marley'),(11,51,'Bruce Springsteen'),(11,51,'David Bowie'),(11,51,'Diana Ross'),(11,51,'Eric Clapton'),(11,51,'John Lennon'),(11,51,'Madonna'),(11,51,'Mariah Carey'),(11,51,'Michael Jackson'),(11,51,'Prince'),(11,51,'Stevie Wonder'),(11,51,'Tina Turner'),(11,51,'Whitney Houston'),(12,12,'Barbra Streisand'),(12,12,'Beyoncé'),(12,12,'Bob Marley'),(12,12,'Bruce Springsteen'),(12,12,'Diana Ross'),(12,12,'John Lennon'),(12,12,'Michael Jackson'),(12,12,'Paul McCartney'),(12,12,'Prince'),(12,12,'Tina Turner'),(12,12,'Whitney Houston'),(12,32,'Barbra Streisand'),(12,32,'Bob Dylan'),(12,32,'Bob Marley'),(12,32,'Bruce Springsteen'),(12,32,'David Bowie'),(12,32,'Diana Ross'),(12,32,'Elton John'),(12,32,'Eric Clapton'),(12,32,'John Lennon'),(12,32,'Madonna'),(12,32,'Mariah Carey'),(12,32,'Michael Jackson'),(12,32,'Paul McCartney'),(12,32,'Prince'),(12,32,'Tina Turner'),(12,32,'Whitney Houston'),(12,52,'Barbra Streisand'),(12,52,'Bruce Springsteen'),(12,52,'David Bowie'),(12,52,'Elton John'),(12,52,'Eric Clapton'),(12,52,'John Lennon'),(12,52,'Madonna'),(12,52,'Mariah Carey'),(12,52,'Prince'),(12,52,'Stevie Wonder'),(12,52,'Tina Turner'),(12,52,'Whitney Houston'),(13,13,'Aretha Franklin'),(13,13,'Beyoncé'),(13,13,'Bob Marley'),(13,13,'Bruce Springsteen'),(13,13,'David Bowie'),(13,13,'Elton John'),(13,13,'Eric Clapton'),(13,13,'John Lennon'),(13,13,'Madonna'),(13,13,'Michael Jackson'),(13,13,'Prince'),(13,13,'Tina Turner'),(13,13,'Whitney Houston'),(13,33,'Beyoncé'),(13,33,'Bruce Springsteen'),(13,33,'Diana Ross'),(13,33,'Elton John'),(13,33,'Eric Clapton'),(13,33,'Mariah Carey'),(13,33,'Michael Jackson'),(13,33,'Stevie Wonder'),(13,33,'Tina Turner'),(13,33,'Whitney Houston'),(13,53,'Aretha Franklin'),(13,53,'Barbra Streisand'),(13,53,'Beyoncé'),(13,53,'Bob Dylan'),(13,53,'Bob Marley'),(13,53,'Diana Ross'),(13,53,'Elton John'),(13,53,'Eric Clapton'),(13,53,'Janet Jackson'),(13,53,'John Lennon'),(13,53,'Michael Jackson'),(13,53,'Paul McCartney'),(13,53,'Stevie Wonder'),(13,53,'Tina Turner'),(13,53,'Whitney Houston'),(14,14,'Aretha Franklin'),(14,14,'Beyoncé'),(14,14,'Bob Dylan'),(14,14,'Bob Marley'),(14,14,'Bruce Springsteen'),(14,14,'David Bowie'),(14,14,'Eric Clapton'),(14,14,'Janet Jackson'),(14,14,'John Lennon'),(14,14,'Madonna'),(14,14,'Paul McCartney'),(14,14,'Prince'),(14,14,'Stevie Wonder'),(14,14,'Tina Turner'),(14,14,'Whitney Houston'),(14,34,'Aretha Franklin'),(14,34,'Beyoncé'),(14,34,'Bob Dylan'),(14,34,'Bob Marley'),(14,34,'Bruce Springsteen'),(14,34,'Diana Ross'),(14,34,'Elton John'),(14,34,'Eric Clapton'),(14,34,'John Lennon'),(14,34,'Mariah Carey'),(14,34,'Michael Jackson'),(14,34,'Paul McCartney'),(14,34,'Prince'),(14,34,'Whitney Houston'),(14,54,'Aretha Franklin'),(14,54,'Barbra Streisand'),(14,54,'Beyoncé'),(14,54,'Bob Marley'),(14,54,'David Bowie'),(14,54,'Eric Clapton'),(14,54,'Janet Jackson'),(14,54,'John Lennon'),(14,54,'Madonna'),(14,54,'Michael Jackson'),(14,54,'Prince'),(14,54,'Tina Turner'),(15,15,'Barbra Streisand'),(15,15,'Beyoncé'),(15,15,'Bob Dylan'),(15,15,'Bob Marley'),(15,15,'David Bowie'),(15,15,'Diana Ross'),(15,15,'Eric Clapton'),(15,15,'John Lennon'),(15,15,'Mariah Carey'),(15,15,'Prince'),(15,15,'Stevie Wonder'),(15,35,'Aretha Franklin'),(15,35,'Barbra Streisand'),(15,35,'Beyoncé'),(15,35,'Bob Dylan'),(15,35,'Bob Marley'),(15,35,'David Bowie'),(15,35,'Diana Ross'),(15,35,'Elton John'),(15,35,'Eric Clapton'),(15,35,'Janet Jackson'),(15,35,'Madonna'),(15,35,'Mariah Carey'),(15,35,'Michael Jackson'),(15,35,'Prince'),(15,35,'Whitney Houston'),(15,55,'Barbra Streisand'),(15,55,'Beyoncé'),(15,55,'Bob Dylan'),(15,55,'Diana Ross'),(15,55,'Elton John'),(15,55,'Janet Jackson'),(15,55,'John Lennon'),(15,55,'Madonna'),(15,55,'Michael Jackson'),(15,55,'Paul McCartney'),(15,55,'Stevie Wonder'),(15,55,'Tina Turner'),(15,55,'Whitney Houston'),(16,16,'Aretha Franklin'),(16,16,'Barbra Streisand'),(16,16,'Beyoncé'),(16,16,'Bruce Springsteen'),(16,16,'David Bowie'),(16,16,'Diana Ross'),(16,16,'Elton John'),(16,16,'Eric Clapton'),(16,16,'Janet Jackson'),(16,16,'John Lennon'),(16,16,'Madonna'),(16,16,'Mariah Carey'),(16,16,'Michael Jackson'),(16,16,'Paul McCartney'),(16,16,'Prince'),(16,16,'Stevie Wonder'),(16,16,'Whitney Houston'),(16,36,'Aretha Franklin'),(16,36,'Barbra Streisand'),(16,36,'Bob Dylan'),(16,36,'Bob Marley'),(16,36,'Elton John'),(16,36,'Eric Clapton'),(16,36,'Janet Jackson'),(16,36,'John Lennon'),(16,36,'Madonna'),(16,36,'Mariah Carey'),(16,36,'Paul McCartney'),(16,36,'Prince'),(16,36,'Stevie Wonder'),(16,36,'Whitney Houston'),(16,56,'Aretha Franklin'),(16,56,'Barbra Streisand'),(16,56,'Beyoncé'),(16,56,'Bob Dylan'),(16,56,'Bob Marley'),(16,56,'Bruce Springsteen'),(16,56,'David Bowie'),(16,56,'Janet Jackson'),(16,56,'John Lennon'),(16,56,'Mariah Carey'),(16,56,'Michael Jackson'),(16,56,'Tina Turner'),(16,56,'Whitney Houston'),(17,17,'Barbra Streisand'),(17,17,'Bob Dylan'),(17,17,'Bob Marley'),(17,17,'Bruce Springsteen'),(17,17,'David Bowie'),(17,17,'Eric Clapton'),(17,17,'John Lennon'),(17,17,'Madonna'),(17,17,'Mariah Carey'),(17,17,'Paul McCartney'),(17,17,'Prince'),(17,17,'Stevie Wonder'),(17,17,'Whitney Houston'),(17,37,'Aretha Franklin'),(17,37,'Barbra Streisand'),(17,37,'Bob Dylan'),(17,37,'Bob Marley'),(17,37,'David Bowie'),(17,37,'Diana Ross'),(17,37,'Elton John'),(17,37,'Eric Clapton'),(17,37,'Janet Jackson'),(17,37,'John Lennon'),(17,37,'Mariah Carey'),(17,37,'Michael Jackson'),(17,37,'Paul McCartney'),(17,37,'Prince'),(17,37,'Stevie Wonder'),(17,37,'Tina Turner'),(17,37,'Whitney Houston'),(17,57,'Aretha Franklin'),(17,57,'Barbra Streisand'),(17,57,'Bruce Springsteen'),(17,57,'David Bowie'),(17,57,'Elton John'),(17,57,'Janet Jackson'),(17,57,'John Lennon'),(17,57,'Madonna'),(17,57,'Mariah Carey'),(17,57,'Michael Jackson'),(17,57,'Paul McCartney'),(17,57,'Prince'),(17,57,'Stevie Wonder'),(17,57,'Whitney Houston'),(18,18,'Aretha Franklin'),(18,18,'Barbra Streisand'),(18,18,'Bob Dylan'),(18,18,'Bob Marley'),(18,18,'Bruce Springsteen'),(18,18,'David Bowie'),(18,18,'Elton John'),(18,18,'Eric Clapton'),(18,18,'Mariah Carey'),(18,18,'Michael Jackson'),(18,18,'Prince'),(18,18,'Stevie Wonder'),(18,18,'Tina Turner'),(18,18,'Whitney Houston'),(18,38,'Aretha Franklin'),(18,38,'Barbra Streisand'),(18,38,'Beyoncé'),(18,38,'Bob Dylan'),(18,38,'Elton John'),(18,38,'Janet Jackson'),(18,38,'John Lennon'),(18,38,'Madonna'),(18,38,'Mariah Carey'),(18,38,'Michael Jackson'),(18,38,'Paul McCartney'),(18,38,'Prince'),(18,38,'Stevie Wonder'),(18,38,'Whitney Houston'),(18,58,'Barbra Streisand'),(18,58,'Beyoncé'),(18,58,'Bob Dylan'),(18,58,'Bruce Springsteen'),(18,58,'Diana Ross'),(18,58,'Eric Clapton'),(18,58,'Janet Jackson'),(18,58,'Madonna'),(18,58,'Michael Jackson'),(18,58,'Stevie Wonder'),(18,58,'Tina Turner'),(18,58,'Whitney Houston'),(19,19,'Barbra Streisand'),(19,19,'Beyoncé'),(19,19,'Bob Dylan'),(19,19,'Bob Marley'),(19,19,'Bruce Springsteen'),(19,19,'Diana Ross'),(19,19,'Elton John'),(19,19,'Eric Clapton'),(19,19,'Janet Jackson'),(19,19,'John Lennon'),(19,19,'Madonna'),(19,19,'Mariah Carey'),(19,19,'Michael Jackson'),(19,19,'Paul McCartney'),(19,19,'Prince'),(19,19,'Tina Turner'),(19,39,'Aretha Franklin'),(19,39,'Barbra Streisand'),(19,39,'Bob Dylan'),(19,39,'Bob Marley'),(19,39,'Bruce Springsteen'),(19,39,'Diana Ross'),(19,39,'Elton John'),(19,39,'Paul McCartney'),(19,39,'Prince'),(19,39,'Tina Turner'),(19,39,'Whitney Houston'),(19,59,'Barbra Streisand'),(19,59,'Beyoncé'),(19,59,'Bob Marley'),(19,59,'Bruce Springsteen'),(19,59,'David Bowie'),(19,59,'Diana Ross'),(19,59,'Janet Jackson'),(19,59,'John Lennon'),(19,59,'Madonna'),(19,59,'Mariah Carey'),(19,59,'Michael Jackson'),(19,59,'Stevie Wonder'),(20,20,'Aretha Franklin'),(20,20,'Barbra Streisand'),(20,20,'Beyoncé'),(20,20,'Bob Dylan'),(20,20,'Bob Marley'),(20,20,'David Bowie'),(20,20,'Eric Clapton'),(20,20,'Janet Jackson'),(20,20,'Michael Jackson'),(20,20,'Paul McCartney'),(20,20,'Prince'),(20,20,'Tina Turner'),(20,40,'Aretha Franklin'),(20,40,'Barbra Streisand'),(20,40,'Beyoncé'),(20,40,'Bob Dylan'),(20,40,'Bob Marley'),(20,40,'Elton John'),(20,40,'Janet Jackson'),(20,40,'Mariah Carey'),(20,40,'Paul McCartney'),(20,40,'Stevie Wonder'),(20,40,'Tina Turner'),(20,40,'Whitney Houston'),(20,60,'Barbra Streisand'),(20,60,'Bob Dylan'),(20,60,'Bob Marley'),(20,60,'Bruce Springsteen'),(20,60,'David Bowie'),(20,60,'Elton John'),(20,60,'Eric Clapton'),(20,60,'Janet Jackson'),(20,60,'John Lennon'),(20,60,'Madonna'),(20,60,'Michael Jackson'),(20,60,'Paul McCartney'),(20,60,'Stevie Wonder');
/*!40000 ALTER TABLE `Performed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Venue`
--

DROP TABLE IF EXISTS `Venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Venue` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Venue_Name` varchar(50) DEFAULT NULL,
  `Venue_Address` varchar(255) DEFAULT NULL,
  `Capacity` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venue`
--

LOCK TABLES `Venue` WRITE;
/*!40000 ALTER TABLE `Venue` DISABLE KEYS */;
INSERT INTO `Venue` VALUES (1,'Crypto.com Arena','1111 S Figueroa Street, Los Angeles, CA 90015',20000),(2,'Hollywood Bowl','2301 Highland Avenue, Los Angeles, CA 90068',17500),(3,'The Kia Forum','3900 W Manchester Boulevard, Inglewood, CA 90305',17505),(4,'Madison Square Garden','4 Pennsylvania Plaza, New York, NY 10001',19500),(5,'Sphere','255 Sands Avenue, Las Vegas, NV 89169',18600),(6,'AT&T Stadium','1 AT&T Way, Arlington, TX 76011',94000),(7,'Barclays Center','620 Atlantic Avenue, Brooklyn, NY 11217',19000),(8,'MetLife Stadium','1 MetLife Stadium Drive, East Rutherford, NJ 07073',90000),(9,'Red Rocks Amphitheater','18300 W Alameda Parkway, Morrison, CO 80465',9545),(10,'Ryman Auditorium','116 5th Avenue N, Nashville, TN 37219',2300),(11,'SoFi Stadium','1001 S Stadium Drive, Inglewood, CA 90301',70240),(12,'Lumen Field','800 Occidental Avenue S, Seattle, WA 98134',69000),(13,'Oracle Park','24 Willie Mays Plaza, San Francisco, CA 94107',41000),(14,'Wrigley Field','1060 W Addison Street, Chicago, IL 60613',41649),(15,'The O2 Arena','Peninsula Square, London SE10 0DX, United Kingdom',20000),(16,'Allianz Arena','Werner-Heisenberg-Allee 25, 80939 München, Germany',75000),(17,'Tokyo Dome','1 Chome-3-61 Koraku, Bunkyo City, Tokyo 112-0004, Japan',55000),(18,'Melbourne Cricket Ground','Brunton Avenue, Richmond VIC 3002, Australia',100024),(19,'Maracanã Stadium','R. Prof. Eurico Rabelo - Maracanã, Rio de Janeiro - RJ, 20271-150, Brazil',78838),(20,'Stade de France','93200 Saint-Denis, France',81338);
/*!40000 ALTER TABLE `Venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Venue_PhoneNumber`
--

DROP TABLE IF EXISTS `Venue_PhoneNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Venue_PhoneNumber` (
  `Venue_ID` int(10) unsigned NOT NULL,
  `Phone_Number` varchar(25) NOT NULL,
  PRIMARY KEY (`Venue_ID`,`Phone_Number`),
  CONSTRAINT `Venue_PhoneNumber_ibfk_1` FOREIGN KEY (`Venue_ID`) REFERENCES `Venue` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci `ENCRYPTION_KEY_ID`=100;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Venue_PhoneNumber`
--

LOCK TABLES `Venue_PhoneNumber` WRITE;
/*!40000 ALTER TABLE `Venue_PhoneNumber` DISABLE KEYS */;
INSERT INTO `Venue_PhoneNumber` VALUES (1,'123-456-7890'),(2,'234-567-8901'),(3,'345-678-9012'),(4,'456-789-0123'),(5,'567-890-1234'),(6,'678-901-2345'),(7,'789-012-3456'),(8,'890-123-4567'),(9,'901-234-5678'),(10,'012-345-6789'),(11,'321-654-9870'),(12,'432-765-0981'),(13,'543-876-1092'),(14,'654-987-2103'),(15,'765-098-3214'),(16,'876-109-4321'),(17,'987-210-5432'),(18,'098-321-6543'),(19,'109-432-7654'),(20,'210-543-8765');
/*!40000 ALTER TABLE `Venue_PhoneNumber` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-11 21:44:06
