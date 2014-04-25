-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.45-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema article
--

CREATE DATABASE IF NOT EXISTS article;
USE article;

--
-- Definition of table `t1`
--

DROP TABLE IF EXISTS `t1`;
CREATE TABLE `t1` (
  `user_id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `t1`
--

/*!40000 ALTER TABLE `t1` DISABLE KEYS */;
INSERT INTO `t1` (`user_id`,`username`) VALUES 
 (2,'Bob'),
 (4,'Fred'),
 (1,'Jim'),
 (3,'Tom');
/*!40000 ALTER TABLE `t1` ENABLE KEYS */;


--
-- Definition of table `t2`
--

DROP TABLE IF EXISTS `t2`;
CREATE TABLE `t2` (
  `phone_id` int(5) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `phone_number` int(10) NOT NULL,
  PRIMARY KEY (`phone_id`),
  KEY `user_id` (`user_id`,`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `t2`
--

/*!40000 ALTER TABLE `t2` DISABLE KEYS */;
INSERT INTO `t2` (`phone_id`,`user_id`,`phone_number`) VALUES 
 (4,1,205),
 (1,2,201),
 (3,3,202),
 (2,4,203);
/*!40000 ALTER TABLE `t2` ENABLE KEYS */;


--
-- Definition of table `t3`
--

DROP TABLE IF EXISTS `t3`;
CREATE TABLE `t3` (
  `room_id` int(5) NOT NULL AUTO_INCREMENT,
  `phone_id` int(5) NOT NULL,
  `room_number` int(4) NOT NULL,
  PRIMARY KEY (`room_id`),
  KEY `phone_id` (`phone_id`,`room_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `t3`
--

/*!40000 ALTER TABLE `t3` DISABLE KEYS */;
INSERT INTO `t3` (`room_id`,`phone_id`,`room_number`) VALUES 
 (3,1,32),
 (4,2,35),
 (5,3,50),
 (1,4,30);
/*!40000 ALTER TABLE `t3` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
