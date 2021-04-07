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
  `stopword` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `apply` */

insert  into `apply`(`cmy`,`posi`,`laca`,`quali`,`exp`,`resume`,`uname`,`stopword`) values ('Wipro','java Developer','chennai','BE','4','arun.txt','arunjs46@gmail.com','ARUN JOSE P	                     Software Engineer(4+ years)\r\n\r\n                             	                                     E-mail: arunjs46@gmail.com\r\n                                     Mobile: +91–8870856479\r\n\r\n\r\nCareer Objective \r\n	To be a successful software Professional in a Progressive Organization that offers Opportunities for Advancement, this will allow me to actualize the skills developed so far with a good potential for professional growth and further learning.\r\n\r\nSummary\r\n?	Possess overall of 3.8 years of experience in designing, developing software applications for various software requirements.\r\n\r\nWorking Experience \r\n?	Working as a Software Engineer in Stigmata Techno Solutions LLP, Chennai from August 2015 to till date.\r\n\r\n\r\nProfessional Competency\r\n\r\n?	4+ years of Experience in IT Industry in Developing JAVA and J2EE applications using Tomcat & NetBeans 8.2, Eclipse. \r\n?	Good implementation Knowledge in Hibernate and Struts Framework.\r\n?	Developed applications using Java, JSP, Servlets, Struts, Hibernate and JDBC.\r\n?	Working experience on Apache Tomcat.\r\n?	Having database programming skills MYSQL.\r\n?	Strong trouble shooting and problem solving skills.\r\n?	Good implementation Knowledge in MVC design patterns.\r\n?	Maintain a positive attitude in the face of changes in work assignments or conditions.\r\n\r\nEducational Qualifications \r\n\r\n?	Bachelor of Engineering in Computer Science and Engineering from Immauel Araser J J College Of Engineering and Technology, Marthandam with 2 backlogs 2015.\r\n?	Diploma Computer Science and Engineering  from Udaya Polytechnic College , Vellamodi  with 83% in 2012.\r\n?	H.S.C from C.S.I.V.V .High School, Irenipuram with 51.6% in 2010.\r\n?	S.S.L.C from C.S.I.V.V .High School, Irenipuram with 53.8% in 2008.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nProjects Details\r\n\r\n1.	Rama Enterprises web Application \r\n\r\nDuration 	Nov 2017 to till date\r\nTeam Size	4\r\nSystem Environment	JDK8,J2EE, struts2, MySQL, Tomcat8. and NetBeans\r\nClient	Rama Enterprises, Chennai \r\n\r\nDescription:\r\n		Rama Enterprises Web Application is ERP-based Web Application which contains modules of Purchase Order details, Product details, Employee details, Sales, Stock maintenance and Production & wastage details of the company.\r\n\r\nRoles and Responsibilities:\r\no	Developed Purchase Order details where new material purchase order and product work order defined by Admin, and viewing purchase order by date wise, week wise, month wise, product wise searching records  of the Application.\r\no	Created Reports based on product sale and product material wastage details to be executed on weekly basis for triggering email notification.\r\no	Created employee profile where employee details and employee salary calculated based on working days.\r\no	Developing the presentation layer using JSP. \r\no	Involved in writing the Bean Classes.\r\no	Storing and retrieving the data in MySQL database.\r\no	Developing various server side validations and Client side validations.\r\n\r\n2. Sri Dhanalakshmi Textiles web Application \r\nDuration 	Jan 2017 to Oct 2017\r\nTeam Size	6\r\nSystem Environment	J2EE, struts2, MySQL, Tomcat7.x and NetBeans\r\nClient	Sri Dhanalakshmi Textiles\r\n\r\nDescription:\r\n		Sri Dhanalakshmi Textiles Web Application is ERP-based Web Application which contains modules of Purchase Order details, Product details, Employee details, Sales, Stock maintenance and Production details of the company.\r\n\r\nRoles and Responsibilities:\r\no	Developed Purchase Order details where new purchase order defined by Admin, and viewing purchase order by date wise, week wise, month wise, product wise searching records  of the Application.\r\no	Created Reports based on bill payment and product details to be executed on daily basis for triggering email notification.\r\no	Developing the presentation layer using JSP. \r\no	Involved in writing the Bean Classes.\r\no	Storing and retrieving the data in MySQL database.\r\no	Developing various server side validations and Client side validations.\r\n\r\n3. BBBSA Finance Web Site\r\nDuration 	July 2015 to Dec 2016\r\nTeam Size	6\r\nSystem Environment	Java, j2ee, struts2, Hibernate, MySQL, Tomcat7.x\r\nClient	BBBSA Finance\r\n\r\n\r\n\r\n\r\nDescription:\r\n		Business Loans & Advice for Financial Professionals - BBBSA Finance. We specialize in lending money using the value of your book as security. We specialize in lending money using the value of your book as security which contains modules of Connective Broker Funding, Verify the Trust, Terms of Loan, Mortgage Manager Detail, Borrower Income, Special Purpose of Bank Account, Fees, Form maintenance and Executed Details of the company.\r\n\r\n\r\n\r\n\r\nRoles and Responsibilities:\r\n\r\no	Developed verify the trust modules defined by Mobile checking, mail checking and address checking.\r\no	Developed enquiry module  \r\no	Implemented encrypted storage for form maintenance modules \r\no	Developing various server side validations and Client side validations\r\no	Developing the presentation layer using STRUCT 2.0. \r\no	Involved in writing the Bean Classes.\r\no	Storing and retrieving the data in MySQL database using Hibernet.\r\n\r\n\r\n\r\n\r\n\r\n\r\nPERSONAL DETAILS:\r\n\r\nDate of Birth			: 04-Jan-1993\r\nFather’s Name			: Paul Rathinam G	\r\nGender 					: Male\r\nMarital Status			: Unmarried\r\nContact number			: 8870856479\r\nPermanent address		: Pattakattu Vilai,\r\n  Annai nagar,	\r\n  Irenipuram post\r\n  Kanyakumari (Dt),\r\n  TamilNadu – 629 162.\r\n\r\n\r\n\r\n\r\nDate:																Yours Sincerely,\r\n\r\nPlace:																   Arun jose p\r\n\r\n\r\n'),('ZOHO','java Developer','chennai','cse','4','arun.txt','suresh.stigmata07@gmail.com','ARUN JOSE P	                     Software Engineer(4+ years)\r\n\r\n                             	                                     E-mail: arunjs46@gmail.com\r\n                                     Mobile: +91–8870856479\r\n\r\n\r\nCareer Objective \r\n	To be a successful software Professional in a Progressive Organization that offers Opportunities for Advancement, this will allow me to actualize the skills developed so far with a good potential for professional growth and further learningy\r\n\r\nSummary\r\n?	Possess overall of 3.8 years of experience in designing, developing software applications for various software requirements.\r\n\r\nWorking Experience \r\n?	Working as a Software Engineer in Stigmata Techno Solutions LLP, Chennai from August 2015 to till date.\r\n\r\n\r\nProfessional Competency\r\n\r\n?	4+ years of Experience in IT Industry in Developing JAVA and J2EE applications using Tomcat & NetBeans 8.2, Eclipse. \r\n?	Good implementation Knowledge in Hibernate and Struts Framework.\r\n?	Developed applications using Java, JSP, Servlets, Struts, Hibernate and JDBC.\r\n?	Working experience on Apache Tomcat.\r\n?	Having database programming skills MYSQL.\r\n?	Strong trouble shooting and problem solving skills.\r\n?	Good implementation Knowledge in MVC design patterns.\r\n?	Maintain a positive attitude in the face of changes in work assignments or conditions.\r\n\r\nEducational Qualifications \r\n\r\n?	Bachelor of Engineering in Computer Science and Engineering from Immauel Araser J J College Of Engineering and Technology, Marthandam with 2 backlogs 2015.\r\n?	Diploma Computer Science and Engineering  from Udaya Polytechnic College , Vellamodi  with 83% in 2012.\r\n?	H.S.C from C.S.I.V.V .High School, Irenipuram with 51.6% in 2010.\r\n?	S.S.L.C from C.S.I.V.V .High School, Irenipuram with 53.8% in 2008.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nProjects Details\r\n\r\n1.	Rama Enterprises web Application \r\n\r\nDuration 	Nov 2017 to till date\r\nTeam Size	4\r\nSystem Environment	JDK8,J2EE, struts2, MySQL, Tomcat8. and NetBeans\r\nClient	Rama Enterprises, Chennai \r\n\r\nDescription:\r\n		Rama Enterprises Web Application is ERP-based Web Application which contains modules of Purchase Order details, Product details, Employee details, Sales, Stock maintenance and Production & wastage details of the company.\r\n\r\nRoles and Responsibilities:\r\no	Developed Purchase Order details where new material purchase order and product work order defined by Admin, and viewing purchase order by date wise, week wise, month wise, product wise searching records  of the Application.\r\no	Created Reports based on product sale and product material wastage details to be executed on weekly basis for triggering email notification.\r\no	Created employee profile where employee details and employee salary calculated based on working days.\r\no	Developing the presentation layer using JSP. \r\no	Involved in writing the Bean Classes.\r\no	Storing and retrieving the data in MySQL database.\r\no	Developing various server side validations and Client side validations.\r\n\r\n2. Sri Dhanalakshmi Textiles web Application \r\nDuration 	Jan 2017 to Oct 2017\r\nTeam Size	6\r\nSystem Environment	J2EE, struts2, MySQL, Tomcat7.x and NetBeans\r\nClient	Sri Dhanalakshmi Textiles\r\n\r\nDescription:\r\n		Sri Dhanalakshmi Textiles Web Application is ERP-based Web Application which contains modules of Purchase Order details, Product details, Employee details, Sales, Stock maintenance and Production details of the company.\r\n\r\nRoles and Responsibilities:\r\no	Developed Purchase Order details where new purchase order defined by Admin, and viewing purchase order by date wise, week wise, month wise, product wise searching records  of the Application.\r\no	Created Reports based on bill payment and product details to be executed on daily basis for triggering email notification.\r\no	Developing the presentation layer using JSP. \r\no	Involved in writing the Bean Classes.\r\no	Storing and retrieving the data in MySQL database.\r\no	Developing various server side validations and Client side validations.\r\n\r\n3. BBBSA Finance Web Site\r\nDuration 	July 2015 to Dec 2016\r\nTeam Size	6\r\nSystem Environment	Java, j2ee, struts2, Hibernate, MySQL, Tomcat7.x\r\nClient	BBBSA Finance\r\n\r\n\r\n\r\n\r\nDescription:\r\n		Business Loans & Advice for Financial Professionals - BBBSA Finance. We specialize in lending money using the value of your book as security. We specialize in lending money using the value of your book as security which contains modules of Connective Broker Funding, Verify the Trust, Terms of Loan, Mortgage Manager Detail, Borrower Income, Special Purpose of Bank Account, Fees, Form maintenance and Executed Details of the company.\r\n\r\n\r\n\r\n\r\nRoles and Responsibilities:\r\n\r\no	Developed verify the trust modules defined by Mobile checking, mail checking and address checking.\r\no	Developed enquiry module  \r\no	Implemented encrypted storage for form maintenance modules \r\no	Developing various server side validations and Client side validations\r\no	Developing the presentation layer using STRUCT 2.0. \r\no	Involved in writing the Bean Classes.\r\no	Storing and retrieving the data in MySQL database using Hibernet.\r\n\r\n\r\n\r\n\r\n\r\n\r\nPERSONAL DETAILS:\r\n\r\nDate of Birth			: 04-Jan-1993\r\nFather’s Name			: Paul Rathinam G	\r\nGender 					: Male\r\nMarital Status			: Unmarried\r\nContact number			: 8870856479\r\nPermanent address		: Pattakattu Vilai,\r\n  Annai nagar,	\r\n  Irenipuram post\r\n  Kanyakumari (Dt),\r\n  TamilNadu – 629 162.\r\n\r\n\r\n\r\n\r\nDate:																Yours Sincerely,\r\n\r\nPlace:																   Arun jose p\r\n\r\n\r\n');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chat` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`chat`,`name`) values ('hi','suresh.stigmata07@gmail.com'),('i want job','suresh.stigmata07@gmail.com');

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

insert  into `register`(`Sno`,`fname`,`lname`,`pwd`,`mob`,`gen`,`dob`,`mail`,`country`,`Experience`,`Education`,`subject`,`de`) values (6,'Suresh','R','123','7708252747','male','1993-09-01','suresh.stigmata07@gmail.com','India','3','BE','ECE','Bachelors degrees'),(7,'Arun','jose','aa','8870856479','male','1992-04-01','arunjs46@gmail.com','India','4','BE','CSE','Bachelors degrees');

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

insert  into `tutorial`(`domain`,`language`,`concept`,`keywords`,`discription`,`fi`) values ('cloud','java','Constructor','java , oops , Constructor','Java, constructor is a block of codes similar to method. It is called when an instance of object is created and memory is allocated for the object.',NULL),('datamaining','java','oops','java , oops , Constructor','Shift Timings: Rotational Shift. Home Pick and Home-Drop Available. Food Facilities: Free Available Salary: we can offer till 4 LTake Home + incentives: decent hike on your last CTC & attractive incentives.',NULL),('ss','sss','sss','sss','sss','hru.txt'),('dsadsad','saddsas','sadasds','sddsas','sadsadsadsadsda','hru.txt'),('java','java','oops and DAO','cts, java, ','hai hello','vino1.jpg'),('java','core java','oops','tcs, java, job','you learn java and get a job','arun.txt'),('java','Spring ','oops and DAO','Spring , java','immediate joining for java developers','arun.txt');

/*Table structure for table `vac_ana` */

DROP TABLE IF EXISTS `vac_ana`;

CREATE TABLE `vac_ana` (
  `name` varchar(100) DEFAULT 'count',
  `cse` varchar(100) DEFAULT '0',
  `ece` varchar(100) DEFAULT '0',
  `eee` varchar(100) DEFAULT '0',
  `mech` varchar(100) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `vac_ana` */

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

insert  into `vacancy`(`cmy`,`posi`,`loca`,`qua`,`exp`,`tuto`,`dis`,`count1`) values ('CTS','java Developer','chennai','BE','4','javaTpoint','immediate joining for java developers','4'),('Wipro','java Developer','chennai','BE','4','https://www.javatpoint.com/','you learn java and get a job','100'),('TCS','java Developer','chennai','BE CSE','4','https://www.javatpoint.com/','you should learn java and get a job','100'),('ZOHO','java Developer','chennai','BE CSE ','4','https://www.javatpoint.com/','immediate joining for java developers','100'),('ZOHO','java Developer','chennai','BE CSE AND IT','4','https://www.javatpoint.com/','hai hello','100'),('ZOHO','java Developer','chennai','BE CSE AND IT','2','javaTpoint','you learn java and get a job','100'),('ZOHO','java Developer','chennai','cse','3','https://www.javatpoint.com/','hai hello','100'),('fss','java Developer','chennai','eee','4','https://www.javatpoint.com/','highbloodpressure','100'),('fss','java Developer','chennai','cse','4','https://www.javatpoint.com/','highbloodpressure','100'),('Wipro','java Developer','chennai','cse','4','https://www.javatpoint.com/','you learn java and get a job','100'),('CTS','java Developer','chennai','cse','4','javaTpoint','hai hello','4'),('TCS','java Developer','chennai','cse','4','https://www.javatpoint.com/','fever','100'),('ZOHO','java Developer','chennai','cse','4','https://www.javatpoint.com/','hai hello','100'),('ZOHO','java Developer','chennai','cse','4','https://www.javatpoint.com/','immediate joining for java developers','100');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
