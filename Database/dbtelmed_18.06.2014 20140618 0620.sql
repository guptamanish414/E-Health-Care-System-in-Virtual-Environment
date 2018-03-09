-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.44-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema doctors
--

CREATE DATABASE IF NOT EXISTS doctors;
USE doctors;

--
-- Definition of table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat` (
  `sender` varchar(20) NOT NULL,
  `reciever` varchar(20) NOT NULL,
  `message` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`timestamp`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;


--
-- Definition of table `doctorsinfo`
--

DROP TABLE IF EXISTS `doctorsinfo`;
CREATE TABLE `doctorsinfo` (
  `id` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `pswd` varchar(45) NOT NULL,
  `loginStatus` tinyint(1) NOT NULL,
  `path` varchar(200) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Occupation` varchar(50) NOT NULL,
  `Institution` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorsinfo`
--

/*!40000 ALTER TABLE `doctorsinfo` DISABLE KEYS */;
INSERT INTO `doctorsinfo` (`id`,`name`,`pswd`,`loginStatus`,`path`,`type`,`email`,`Address`,`Phone`,`Occupation`,`Institution`,`Active`) VALUES 
 ('d001','deepak sharma','deep',1,'C:\\Program Files (x86)\\Apache Software Foundation\\Tomcat 7.0\\webapps\\DoctorsPatientSystem\\signature\\d001.jpg','Doctors','deepak@mail.com','bangalorebangalorekarnatakaIND70000045','76747','0','',0),
 ('p01','tanay roy','tans',1,'C:\\Program Files (x86)\\Apache Software Foundation\\Tomcat 7.0\\webapps\\DoctorsPatientSystem_w\\p01.html','Doctors','patient@mail.com','kolkatakolkatakolkataIND568786','76767','0','',0);
/*!40000 ALTER TABLE `doctorsinfo` ENABLE KEYS */;


--
-- Definition of table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `mail` varchar(100) NOT NULL,
  `query2` varchar(100) NOT NULL,
  `query4` varchar(100) NOT NULL,
  `query5` varchar(100) NOT NULL,
  `query6` varchar(100) NOT NULL,
  `query7` varchar(100) NOT NULL,
  `query8` varchar(100) NOT NULL,
  `query10` varchar(500) NOT NULL,
  `query12` varchar(400) NOT NULL,
  PRIMARY KEY (`mail`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` (`mail`,`query2`,`query4`,`query5`,`query6`,`query7`,`query8`,`query10`,`query12`) VALUES 
 ('mail@mail','USA','b6','c5','d5','e5','f5','good','will thnk'),
 ('nag.somdatta@gmail.com','USA','b6','c5','d5','e5','f5','','');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;


--
-- Definition of table `patientinfo`
--

DROP TABLE IF EXISTS `patientinfo`;
CREATE TABLE `patientinfo` (
  `patID` varchar(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`patID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientinfo`
--

/*!40000 ALTER TABLE `patientinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `patientinfo` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
