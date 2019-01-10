-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.41-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema myproject
--

CREATE DATABASE IF NOT EXISTS myproject;
USE myproject;

--
-- Definition of table `appointt`
--

DROP TABLE IF EXISTS `appointt`;
CREATE TABLE `appointt` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Date` date default NULL,
  `add_pname` varchar(45) NOT NULL,
  `new_pname` varchar(45) NOT NULL,
  `add_pid` varchar(45) NOT NULL,
  `new_pid` varchar(45) NOT NULL,
  `doctor_dept` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointt`
--

/*!40000 ALTER TABLE `appointt` DISABLE KEYS */;
INSERT INTO `appointt` (`id`,`Date`,`add_pname`,`new_pname`,`add_pid`,`new_pid`,`doctor_dept`) VALUES 
 (1,'2018-08-05','bablu','','p111','','Dental'),
 (2,'2018-08-07','none','sayeed','none','p102','Neurology');
/*!40000 ALTER TABLE `appointt` ENABLE KEYS */;


--
-- Definition of table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Roomno` int(20) unsigned NOT NULL,
  `P_name` varchar(45) NOT NULL,
  `Arrival` varchar(45) NOT NULL,
  `Departure` varchar(45) NOT NULL,
  `Nday` varchar(45) NOT NULL,
  `Chargeday` int(10) unsigned NOT NULL,
  `Medecine` int(10) unsigned NOT NULL,
  `Roombill` double NOT NULL,
  `Advance` int(10) unsigned NOT NULL,
  `Total` double NOT NULL,
  `Due` double NOT NULL,
  `Roomtype` varchar(45) NOT NULL,
  `Bulding` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` (`id`,`Roomno`,`P_name`,`Arrival`,`Departure`,`Nday`,`Chargeday`,`Medecine`,`Roombill`,`Advance`,`Total`,`Due`,`Roomtype`,`Bulding`) VALUES 
 (2,1010,'adsffasdf','2018-08-10','2018-08-12','6',5000,6000,30000,10000,36000,26000,'',''),
 (6,505,'sakib','18.07.12','18.07.16','4',400,5000,1600,10000,6600,-3400,'','');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;


--
-- Definition of table `bills`
--

DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
  `b_id` int(10) unsigned NOT NULL auto_increment,
  `food_bill` double NOT NULL default '0',
  `room_bill` double NOT NULL default '0',
  `room_no` int(10) unsigned NOT NULL default '0',
  `total_bill` double NOT NULL default '0',
  PRIMARY KEY  (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bills`
--

/*!40000 ALTER TABLE `bills` DISABLE KEYS */;
INSERT INTO `bills` (`b_id`,`food_bill`,`room_bill`,`room_no`,`total_bill`) VALUES 
 (1,300,5000,100,9500),
 (2,360,5000,100,0),
 (3,360,5000,100,0),
 (4,480,5000,100,0),
 (5,480,0,100,0);
/*!40000 ALTER TABLE `bills` ENABLE KEYS */;


--
-- Definition of table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Doctor_id` varchar(45) NOT NULL,
  `Joining_Date` date NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Age` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Blood_Group` varchar(45) NOT NULL,
  `Depertment` varchar(45) NOT NULL,
  `Phone` double NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Maritial_Status` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Room` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` (`id`,`Doctor_id`,`Joining_Date`,`Name`,`Age`,`Gender`,`Blood_Group`,`Depertment`,`Phone`,`Email`,`Maritial_Status`,`Address`,`Room`) VALUES 
 (1,'sd101','2018-07-04','Noman','29','Select','o-','Select',1911247663,'akter@gmail.com','Select','rangpur','789'),
 (3,'sd103','2018-03-04','sakibul haque','28','Male','A-','Cardiology',1783664578,'sakib@gmail.com','Single','nabinagar','786'),
 (4,'sd105','2017-03-04','Biplop','32','Male','ab-','Dental',1712608773,'biplob@gmail.com','Double','Barisal','784'),
 (5,'d101','2015-04-05','abul kalam','35','Male','A-','Neurology',1887456900,'abdul@gmail.com','Double','malibag','203');
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;


--
-- Definition of table `foods`
--

DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods` (
  `item_no` int(20) NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `item_price` double NOT NULL,
  `status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `foods`
--

/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` (`item_no`,`item_name`,`item_price`,`status`) VALUES 
 (1,'rice',20,''),
 (2,'fish',120,'Available'),
 (5,'meat',150,'Available'),
 (5,'akd',50,'Available');
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;


--
-- Definition of table `login_tbl`
--

DROP TABLE IF EXISTS `login_tbl`;
CREATE TABLE `login_tbl` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_tbl`
--

/*!40000 ALTER TABLE `login_tbl` DISABLE KEYS */;
INSERT INTO `login_tbl` (`id`,`name`,`password`) VALUES 
 (1,'rasel','1991');
/*!40000 ALTER TABLE `login_tbl` ENABLE KEYS */;


--
-- Definition of table `order_food`
--

DROP TABLE IF EXISTS `order_food`;
CREATE TABLE `order_food` (
  `room_no` int(10) unsigned NOT NULL,
  `food_name` varchar(45) NOT NULL,
  `food_price` double NOT NULL,
  `food_quantity` int(10) unsigned NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_food`
--

/*!40000 ALTER TABLE `order_food` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_food` ENABLE KEYS */;


--
-- Definition of table `pass`
--

DROP TABLE IF EXISTS `pass`;
CREATE TABLE `pass` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `userid` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pass`
--

/*!40000 ALTER TABLE `pass` DISABLE KEYS */;
INSERT INTO `pass` (`id`,`userid`,`password`) VALUES 
 (1,'tuhin','1122');
/*!40000 ALTER TABLE `pass` ENABLE KEYS */;


--
-- Definition of table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `Patient_id` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Age` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Phone` double NOT NULL,
  `Doctor_dept` varchar(45) NOT NULL,
  `Disease_Name` varchar(45) NOT NULL,
  `Wardno` varchar(45) NOT NULL,
  `Roomtype` varchar(45) NOT NULL,
  `Bulding` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` (`id`,`Patient_id`,`Date`,`Name`,`Age`,`Gender`,`Address`,`Phone`,`Doctor_dept`,`Disease_Name`,`Wardno`,`Roomtype`,`Bulding`) VALUES 
 (19,'p101','2018-08-17','Sayeed','25','Male','Vhola',1911247663,'Cardiology','Facture','101','Single','A'),
 (20,'p102','2018-08-17','tamim','250','Male','dhaka',1884578600,'Dental','pain','102','Double','B'),
 (21,'p103','2018-08-17','ajmul','26','Male','mirpur',168457895,'Cardiology','facture','103','Double','C');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;


--
-- Definition of table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
CREATE TABLE `receptionist` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `R_Id` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Age` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Blood_Group` varchar(45) NOT NULL,
  `Phone` double NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Maritial_Status` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

/*!40000 ALTER TABLE `receptionist` DISABLE KEYS */;
INSERT INTO `receptionist` (`id`,`R_Id`,`Date`,`Name`,`Age`,`Gender`,`Blood_Group`,`Phone`,`Email`,`Address`,`Maritial_Status`) VALUES 
 (1,'r101','2018-04-05','omor','22','Male','a+',1884578600,'omr@gmail.com','motijil','Single'),
 (2,'r105','1994-05-07','anik','24','Male','o+',1911659828,'anik@gmail.com','tangail','Single'),
 (3,'r104','2017-02-06','Urmila','22','Female','B-',1884578600,'urmila@gmail.com','dhanmondi','Single');
/*!40000 ALTER TABLE `receptionist` ENABLE KEYS */;


--
-- Definition of table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `Room_No` int(20) default NULL,
  `Room_Type` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Sex` varchar(45) NOT NULL,
  `Age` int(20) unsigned NOT NULL,
  `Mobile` varchar(20) NOT NULL,
  `Arrival` date NOT NULL,
  `Departure` date NOT NULL,
  `Charges` int(10) unsigned NOT NULL,
  `Advance` varchar(45) NOT NULL,
  `Days` int(10) unsigned NOT NULL,
  `Total` int(10) unsigned NOT NULL,
  `Due` int(10) unsigned NOT NULL,
  `Food_bill` double NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservation`
--

/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` (`Room_No`,`Room_Type`,`Name`,`Address`,`City`,`Sex`,`Age`,`Mobile`,`Arrival`,`Departure`,`Charges`,`Advance`,`Days`,`Total`,`Due`,`Food_bill`) VALUES 
 (505,'Single','tuhin','vhola','Barihsal','Male ',25,'01911247663','2018-05-08','2018-05-11',1000,'500',3,3000,2500,0);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;


--
-- Definition of table `room`
--

DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `room_no` varchar(45) NOT NULL,
  `book` varchar(45) NOT NULL,
  `room_type` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` (`id`,`room_no`,`book`,`room_type`) VALUES 
 (6,'100','Unbooked','Single'),
 (9,'103','Unbooked','Single'),
 (10,'105','Unbooked','Double'),
 (11,'103','Unbooked','Single'),
 (12,'103504','Unbooked','Double'),
 (13,'505','Booked','Single');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;


--
-- Definition of table `roombok`
--

DROP TABLE IF EXISTS `roombok`;
CREATE TABLE `roombok` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `wardno` varchar(45) NOT NULL,
  `book` varchar(45) NOT NULL,
  `roomtype` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombok`
--

/*!40000 ALTER TABLE `roombok` DISABLE KEYS */;
INSERT INTO `roombok` (`id`,`wardno`,`book`,`roomtype`) VALUES 
 (1,'101','Unbooked','Single'),
 (2,'102','Unbooked','Double'),
 (3,'103','Unbooked','Single'),
 (4,'104','Unbooked','Double');
/*!40000 ALTER TABLE `roombok` ENABLE KEYS */;


--
-- Definition of function `get_price`
--

DROP FUNCTION IF EXISTS `get_price`;

DELIMITER $$

/*!50003 SET @TEMP_SQL_MODE=@@SQL_MODE, SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER' */ $$
CREATE DEFINER=`root`@`localhost` FUNCTION `get_price`(getiname varchar(45)) RETURNS int(11)
BEGIN
return(select item_price from foods where item_name = getiname);
END $$
/*!50003 SET SESSION SQL_MODE=@TEMP_SQL_MODE */  $$

DELIMITER ;



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
