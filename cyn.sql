/*
SQLyog Community Edition- MySQL GUI v7.02 
MySQL - 5.1.59-community : Database - aadhar
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`aadhar` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `aadhar`;

/*Table structure for table `user2_reg` */

DROP TABLE IF EXISTS `user2_reg`;

CREATE TABLE `user2_reg` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `aname` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gen` varchar(100) DEFAULT NULL,
  `cnum` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `unam` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `typ` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user2_reg` */

insert  into `user2_reg`(`sno`,`aname`,`dob`,`gen`,`cnum`,`mail`,`unam`,`pass`,`typ`) values (1,'arun','2018-03-06','Male','9876543210','arunjs46@gmail.com','arun1','aaa','AIRTEL');

/*Table structure for table `user_files` */

DROP TABLE IF EXISTS `user_files`;

CREATE TABLE `user_files` (
  `sno` int(100) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `filepath` varchar(100) DEFAULT NULL,
  `filecontent` longblob,
  `userkey` varchar(100) DEFAULT NULL,
  `adminkey` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user_files` */

insert  into `user_files`(`sno`,`name`,`filename`,`filepath`,`filecontent`,`userkey`,`adminkey`,`status`) values (1,'arun','1.txt','D:\\Aadhar\\files\\1.txt','hai this is arun','69255287','56187120','download'),(2,'arun','1.txt','D:\\Aadhar\\files\\1.txt','hai this is arun','79717963','56187120','download');

/*Table structure for table `user_reg` */

DROP TABLE IF EXISTS `user_reg`;

CREATE TABLE `user_reg` (
  `sno` int(10) NOT NULL AUTO_INCREMENT,
  `aname` varchar(100) DEFAULT NULL,
  `anum` varchar(100) DEFAULT NULL,
  `enum` varchar(100) DEFAULT NULL,
  `addre` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `gen` varchar(100) DEFAULT NULL,
  `cnum` varchar(100) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `unam` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `proname` varchar(100) DEFAULT NULL,
  `request` varchar(100) DEFAULT NULL,
  `t1` varchar(100) DEFAULT NULL,
  `t2` varchar(100) DEFAULT NULL,
  `t3` varchar(100) DEFAULT NULL,
  `t4` varchar(100) DEFAULT NULL,
  `t5` varchar(100) DEFAULT NULL,
  `t6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `user_reg` */

insert  into `user_reg`(`sno`,`aname`,`anum`,`enum`,`addre`,`dob`,`gen`,`cnum`,`mail`,`unam`,`pass`,`status`,`proname`,`request`,`t1`,`t2`,`t3`,`t4`,`t5`,`t6`) values (1,'arun','12345','1234','chennai','2018-02-07','Male','9876543321','arunjs46@gmail.com','arun','aa','Accept','AIRTEL','[username :arun, accountnumber :12345, enrollnumber :1234, address :chennai]','no value','no value','no value','add','no value','no value');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
