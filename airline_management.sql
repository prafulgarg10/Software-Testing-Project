-- MySQL dump 10.13  Distrib 8.0.28, for macos11 (x86_64)
--
-- Host: localhost    Database: airline_management
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_profile`
--

DROP TABLE IF EXISTS `admin_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_profile` (
  `email_id` varchar(30) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_profile`
--

LOCK TABLES `admin_profile` WRITE;
/*!40000 ALTER TABLE `admin_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `air_flight`
--

DROP TABLE IF EXISTS `air_flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `air_flight` (
  `flight_id` int NOT NULL AUTO_INCREMENT,
  `airline_name` varchar(30) DEFAULT NULL,
  `from_location` varchar(20) DEFAULT NULL,
  `to_location` varchar(20) DEFAULT NULL,
  `total_seats` int DEFAULT NULL,
  `deleted` int DEFAULT NULL,
  PRIMARY KEY (`flight_id`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `air_flight`
--

LOCK TABLES `air_flight` WRITE;
/*!40000 ALTER TABLE `air_flight` DISABLE KEYS */;
INSERT INTO `air_flight` VALUES (114,'Vistara','Mumbai ','Chennai',40,0),(113,'Indigo','Bengaluru','Delhi',50,0),(118,'Spicejet','Bengaluru','Delhi',40,0),(117,'Spicejet','Delhi','Mumbai',50,0);
/*!40000 ALTER TABLE `air_flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `air_flight_details`
--

DROP TABLE IF EXISTS `air_flight_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `air_flight_details` (
  `flight_id` int DEFAULT NULL,
  `flight_departure_date` varchar(10) DEFAULT NULL,
  `departure_time` time DEFAULT NULL,
  `flight_arrival_date` varchar(10) DEFAULT NULL,
  `arrival_time` time DEFAULT NULL,
  `price` float DEFAULT NULL,
  `available_seats` int DEFAULT NULL,
  `deleted` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `air_flight_details`
--

LOCK TABLES `air_flight_details` WRITE;
/*!40000 ALTER TABLE `air_flight_details` DISABLE KEYS */;
INSERT INTO `air_flight_details` VALUES (117,'2022-03-25','02:00:00','2022-03-25','05:00:00',6000,50,0),(114,'2022-03-28','13:00:00','2022-03-28','16:00:00',4500,40,0),(113,'2022-03-30','11:00:00','2022-03-30','13:00:00',4000,50,0),(118,'2022-03-30','22:00:00','2022-03-31','01:00:00',3000,40,0);
/*!40000 ALTER TABLE `air_flight_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `air_ticket_info`
--

DROP TABLE IF EXISTS `air_ticket_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `air_ticket_info` (
  `ticket_id` int NOT NULL AUTO_INCREMENT,
  `profile_id` int DEFAULT NULL,
  `flight_id` int DEFAULT NULL,
  `flight_departure_date` date DEFAULT NULL,
  `flight_status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ticket_id`)
) ENGINE=MyISAM AUTO_INCREMENT=123470 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `air_ticket_info`
--

LOCK TABLES `air_ticket_info` WRITE;
/*!40000 ALTER TABLE `air_ticket_info` DISABLE KEYS */;
INSERT INTO `air_ticket_info` VALUES (123469,5,118,'2022-03-30','1'),(123468,5,117,'2022-03-24','1'),(123467,5,113,'2022-03-29','1'),(123466,4,114,'2022-03-27','1'),(123465,4,113,'2022-03-29','1'),(123464,4,113,'2022-03-29','1');
/*!40000 ALTER TABLE `air_ticket_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger_checkin`
--

DROP TABLE IF EXISTS `passenger_checkin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger_checkin` (
  `ticket_id` int DEFAULT NULL,
  `checkedin` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger_checkin`
--

LOCK TABLES `passenger_checkin` WRITE;
/*!40000 ALTER TABLE `passenger_checkin` DISABLE KEYS */;
/*!40000 ALTER TABLE `passenger_checkin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger_profile`
--

DROP TABLE IF EXISTS `passenger_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger_profile` (
  `ticket_id` int NOT NULL,
  `fullname` varchar(30) NOT NULL,
  PRIMARY KEY (`ticket_id`,`fullname`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger_profile`
--

LOCK TABLES `passenger_profile` WRITE;
/*!40000 ALTER TABLE `passenger_profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `passenger_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger_seat`
--

DROP TABLE IF EXISTS `passenger_seat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger_seat` (
  `ticket_id` int DEFAULT NULL,
  `fullname` varchar(60) DEFAULT NULL,
  `seat_number` varchar(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger_seat`
--

LOCK TABLES `passenger_seat` WRITE;
/*!40000 ALTER TABLE `passenger_seat` DISABLE KEYS */;
INSERT INTO `passenger_seat` VALUES (123469,'Garg Praful','6D'),(123468,'Garg P','5B'),(123467,'Praful Garg','6A'),(123466,'A Garg','6A'),(123465,'M Garg','9A'),(123464,'P Garg','8C');
/*!40000 ALTER TABLE `passenger_seat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_profile` (
  `profile_id` int NOT NULL AUTO_INCREMENT,
  `user_password` varchar(50) DEFAULT NULL,
  `firstname` varchar(15) DEFAULT NULL,
  `lastname` varchar(15) DEFAULT NULL,
  `mobile_number` varchar(13) NOT NULL,
  `email_id` varchar(30) NOT NULL,
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `mobile_number` (`mobile_number`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` VALUES (1,'25d55ad283aa400af464c76d713c07ad','Chaitanya','Kulkarni','6824148322','abc@gmail.com'),(2,'25d55ad283aa400af464c76d713c07ad','abcd','abcd','123','abcd@gmail.com'),(3,'e807f1fcf82d132f9bb018ca6738a19f','A','B','5555555555','abcde@gmail.com'),(4,'e807f1fcf82d132f9bb018ca6738a19f','P','Garg','1200000000','abcdef@gmail.com'),(5,'e807f1fcf82d132f9bb018ca6738a19f','Praful','Garg','1234567890','praful@gmail.com');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_token`
--

DROP TABLE IF EXISTS `user_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_token` (
  `profile_id` int DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_token`
--

LOCK TABLES `user_token` WRITE;
/*!40000 ALTER TABLE `user_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_token` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-24 19:59:31
