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
  `uname` varchar(250) DEFAULT NULL,
  `stopword` longblob,
  `dept` varchar(100) DEFAULT NULL,
  `tech` varchar(100) DEFAULT NULL,
  `enkey` varchar(100) DEFAULT NULL,
  `checksum1` varchar(100) DEFAULT NULL,
  `checksum2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `apply` */

insert  into `apply`(`cmy`,`posi`,`laca`,`quali`,`exp`,`resume`,`uname`,`stopword`,`dept`,`tech`,`enkey`,`checksum1`,`checksum2`) values ('CTS','java','chennai','BE CSE','4','Ananthi.txt','arunjs46@gmail.com','CURRICULUM VITAEA.ANANDHI., B.E. D/o,Mr.S.K.ARIGNAN, 10A/3, Sri illam, Thirunagar, Mohanur road, Namakkal-637001. Ph: (04286) 231119.OBJECTIVE:To pursue challenging career concern, utilize skills growth organization, turn provides environment ethics talent resign supreme, leading personal professional growth.ACADEMIC QUALIFICATION:S.S.L.C:Name school: Shankara Matriculation Hr.sec school, Mannargudi.Year pass 1995- March Percentage 66.6Class pass First classHIGHER SECONDARY:Name school Shankara Matriculation Hr.sec school, Mannargudi.Year pass 1997 March. Percentage 77.8Class pass First classTECHNICAL QUALIFICATION:UG Degree B.E., Electronics CommunicationCollege study K.S.R College Technology., Tiruchengode.University :Periyar university Salem.Year pass 2002 May.Percentage 65Class pass First classADDITIONAL QUALIFICATION:Course Advanced diploma High End Software TechnologyModules Web technologies, java, C# .Net.Duration Jan 2001 July 2001Grade ?A?PROJECT DETAILS: Project title PC Based Telephone Billing System.Institution K.S.R College Technology,Period monthsTeam size FourS/w Used VBH/w Used MicrocontrollerOS Windows 98This project aims gathering information dialed numbers, duration, no.of Units, date cost call. This project involve design systemwhich uses PC interfacing circuits connected parallel telephone, displays number dialed telephone set using DTMF mode whichuses microcontroller 89C2051. The numbers dialed stored separate file andprocessed use. The port interfacing program written VB. PERSONAL DETAILS:Name A.ANANDHIDate Birth 26.02.1980Gender FemaleMarital Status marriedReligion HinduNationality IndianLanguages known Tamil EnglishQualities Dedication, hardworking PunctualFather?s Name S.K.ArignanPermanent Address 28, Brindavan nagar Mannargudi. Ph 954367 (223021).A NOTE ME I?m person adapt work situation. mingle people perform team believe strengths teamwork. I?m versed computer intension upgrade latest fields. If given opportunity, promise shall workhard sincerely honestly best satisfaction. request kindly consider application favourabaly prove oblige.I declare information given true best knowledge.Place :Date Yours Faithfully, (ANANDHI.A)','ECE','PCB design and EDA tools,JAVA,J2EE,MYSQL,Embedded systems,CCNA,Arduino ','67656769','76009243','76009295');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`chat`,`name`) values ('hi students ','Admin'),('hello Admin.. I want job ','arunjs46@gmail.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`Sno`,`fname`,`lname`,`pwd`,`mob`,`gen`,`dob`,`mail`,`country`,`Experience`,`Education`,`subject`,`de`) values (7,'Arun','jose','aa','8870856479','male','1992-04-01','arunjs46@gmail.com','India','4','BE','CSE','Bachelors degrees');

/*Table structure for table `tutorial` */

DROP TABLE IF EXISTS `tutorial`;

CREATE TABLE `tutorial` (
  `domain` varchar(250) DEFAULT NULL,
  `language` varchar(250) DEFAULT NULL,
  `concept` varchar(250) DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `discription` varchar(250) DEFAULT NULL,
  `fi` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tutorial` */

insert  into `tutorial`(`domain`,`language`,`concept`,`keywords`,`discription`,`fi`) values ('cloud','java','Constructor','java , oops , Constructor','Java, constructor is a block of codes similar to method. It is called when an instance of object is created and memory is allocated for the object.',NULL),('datamaining','java','oops','java , oops , Constructor','Shift Timings: Rotational Shift. Home Pick and Home-Drop Available. Food Facilities: Free Available Salary: we can offer till 4 LTake Home + incentives: decent hike on your last CTC & attractive incentives.',NULL),('cloud computing','AWS, JAVA,SPRING','OOPS','java developer','do well','Ananth.txt');

/*Table structure for table `user_tech` */

DROP TABLE IF EXISTS `user_tech`;

CREATE TABLE `user_tech` (
  `name` varchar(100) DEFAULT NULL,
  `tech` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_tech` */

/*Table structure for table `vac_ana` */

DROP TABLE IF EXISTS `vac_ana`;

CREATE TABLE `vac_ana` (
  `name` varchar(100) DEFAULT 'Admin',
  `cse` varchar(100) DEFAULT '10',
  `ece` varchar(100) DEFAULT '3',
  `eee` varchar(100) DEFAULT '2',
  `mech` varchar(100) DEFAULT '7'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vac_ana` */

insert  into `vac_ana`(`name`,`cse`,`ece`,`eee`,`mech`) values ('Admin','0','0','0','0'),('Admin','10','3','2','7');

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

insert  into `vacancy`(`cmy`,`posi`,`loca`,`qua`,`exp`,`tuto`,`dis`,`count1`) values ('CTS','java','chennai','BE CSE','4','javatpoint','hai hello','100'),('CTS','java','chennai','BE CSE','4','javatpoint','hai hello','100'),('CTS','java','chennai','BE CSE','4','https://www.javatpoint.com','immediate joining','100');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
