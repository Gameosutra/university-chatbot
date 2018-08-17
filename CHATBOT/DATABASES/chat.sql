-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: chat
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB

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
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `ques` varchar(800) NOT NULL,
  `ans` varchar(800) NOT NULL,
  `pic` blob NOT NULL,
  `picadd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('hey','Hello! How can i help you!','',''),('hello','Hello! How can i help you!','',''),('hi','Hello!','',''),('address','Jaypee Institute of Information Technology \r\nA-10, Sector-62, Noida, Uttar Pradesh 201309','',''),('college address','Jaypee Institute of Information Technology\r\nA-10, Sector-62, Noida, Uttar Pradesh 201309','',''),('timing','The college is open from 9:00 AM to 5:00 PM.','',''),('college timing','The college is open from 9:00 AM to 5:00 PM.','',''),('contact',' 0120 240 0973','',''),('courses','UNDER GRADUATE PROGRAMS\r\n\r\nB.Tech in Electronics and Communication Engineering\r\nB.Tech in Computer Science and Engineering\r\nB.Tech in Information Technology\r\nB.Tech in Biotechnology','',''),('courses offered','UNDER GRADUATE PROGRAMS\r\n\r\nB.Tech in Electronics and Communication Engineering\r\nB.Tech in Computer Science and Engineering\r\nB.Tech in Information Technology\r\nB.Tech in Biotechnology','',''),('admission','Admission registration open\'s in MAY.\r\nFor further information refer the link below.\r\nhttp://www.jiit.ac.in/admission-procedures','',''),('campus','ok bro','',''),('fees','Required information:\r\nhttp://www.jiit.ac.in/faq','',''),('timetable','HERE IT IS:','','1.png'),('hubs','Some of the HUB are: Knuth &amp;#65533; The Programming Hub Robotics IEEE CREATIVITY AND INNOVATION CELL IN ELECTRONICS (CICE) Multimedia Development RIBOSE Technical Hub of Biotechnology and many more..','',''),('events','1) IMPRESSIONS\r\n2) Robotics\r\n3) Programming Competition\r\n4) Biotech fest\r\n5) Unplugged\r\nand many more..','',''),('rules','The ability to put in sustained and disciplined hard work over a sufficient length of time is one of the key factors to success in professional life. A typical semester is designed in an intensive and a modular fashion with an emphasis on regular and continuous work. The Evaluation System is designed to encourage this concept.','',''),('mess','HERE IT IS:','','Screenshot (43)-min (3).png'),('attendence','https://webkiosk.jiit.ac.in/','',''),('Holiday','http://www.jiit.ac.in/academic-calendars-0','',''),('contact','Call : +91-120-2400973','',''),('time table','HERE IT IS:','','2.png');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `ques` varchar(800) NOT NULL,
  `ans` varchar(800) NOT NULL,
  `pic` blob NOT NULL,
  `picad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES ('hello','Hello! How can i help you!','',''),('hi','Hello!','',''),('hey','Hello! How can i help you!','',''),('hi','Hello!','',''),('address','Jaypee Institute of Information Technology \r\n','',''),('timetable','HERE IT IS','4.png','4.png'),('holiday','http://www.jiit.ac.in/academic-calendars-0','',''),('webkiosk','https://webkiosk.jiit.ac.in/','',''),('meeting','you will be inform through your email id','',''),('mess','HERE IT IS:','','Screenshot (43)-min (3).png'),('exam','https://webkiosk.jiit.ac.in/','',''),('','','',''),('contact','Call : +91-120-2400973','',''),('vartul','student of jiit with enrolment number 16104032','',''),('time table','HERE IT IS:','','2.png');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-21 19:37:28
