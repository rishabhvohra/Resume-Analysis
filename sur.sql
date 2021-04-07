/*
SQLyog Community Edition- MySQL GUI v7.02 
MySQL - 5.1.59-community : Database - job
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`job` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `job`;

/*Table structure for table `apply` */

DROP TABLE IF EXISTS `apply`;

CREATE TABLE `apply` (
  `cmy` varchar(250) DEFAULT NULL,
  `posi` varchar(250) DEFAULT NULL,
  `laca` varchar(250) DEFAULT NULL,
  `quali` varchar(250) DEFAULT NULL,
  `exp` varchar(250) DEFAULT NULL,
  `resume` varchar(250) DEFAULT NULL,
  `uname` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `apply` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `Sno` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `mob` varchar(100) DEFAULT NULL,
  `gen` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `de` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`Sno`,`fname`,`lname`,`pwd`,`mob`,`gen`,`dob`,`mail`,`country`,`Experience`,`Education`,`subject`,`de`) values (6,'Suresh','R','123','7708252747','male','1993-09-01','suresh.stigmata07@gmail.com','India','3','BE','ECE','Bachelors degrees');

/*Table structure for table `tutorial` */

DROP TABLE IF EXISTS `tutorial`;

CREATE TABLE `tutorial` (
  `domain` varchar(250) DEFAULT NULL,
  `language` varchar(250) DEFAULT NULL,
  `concept` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `discription` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tutorial` */

insert  into `tutorial`(`domain`,`language`,`concept`,`keywords`,`discription`) values ('cloud','java','Constructor','java , oops , Constructor','Java, constructor is a block of codes similar to method. It is called when an instance of object is created and memory is allocated for the object.'),('datamaining','java','oops','java , oops , Constructor','Shift Timings: Rotational Shift. Home Pick and Home-Drop Available. Food Facilities: Free Available Salary: we can offer till 4 LTake Home + incentives: decent hike on your last CTC & attractive incentives.');

/*Table structure for table `vacancy` */

DROP TABLE IF EXISTS `vacancy`;

CREATE TABLE `vacancy` (
  `cmy` varchar(250) DEFAULT NULL,
  `posi` varchar(250) DEFAULT NULL,
  `loca` varchar(250) DEFAULT NULL,
  `qua` varchar(250) DEFAULT NULL,
  `exp` varchar(250) DEFAULT NULL,
  `tuto` varchar(250) DEFAULT NULL,
  `dis` mediumtext,
  `count1` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vacancy` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
