# Host: localhost  (Version: 5.6.21-log)
# Date: 2021-01-23 19:06:49
# Generator: MySQL-Front 5.3  (Build 4.212)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "mt_category"
#

DROP TABLE IF EXISTS `mt_category`;
CREATE TABLE `mt_category` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "mt_category"
#


#
# Structure for table "mt_customer"
#

DROP TABLE IF EXISTS `mt_customer`;
CREATE TABLE `mt_customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `DOB` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "mt_customer"
#

INSERT INTO `mt_customer` VALUES (1,'tabrez','ahmed','2021-06-06','t','glb','kar','560054','96','tabrezhere@gmail.com','Mr.'),(2,'www','www','2021-06-06','666','glb','kar','555','5','tabrezhere@gmail.com','Mrs.');

#
# Structure for table "mt_menu"
#

DROP TABLE IF EXISTS `mt_menu`;
CREATE TABLE `mt_menu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(255) DEFAULT NULL,
  `ItemDesc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "mt_menu"
#

INSERT INTO `mt_menu` VALUES (1,'Biryani','Mutton Biryani'),(2,'Biryani Mutton','Non veg dish'),(3,'Handi Pulao','veg'),(4,'Paneed 65',' veg '),(5,'Handi Paneer','veg');

#
# Structure for table "mt_order"
#

DROP TABLE IF EXISTS `mt_order`;
CREATE TABLE `mt_order` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(255) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL,
  `Price` varchar(255) DEFAULT NULL,
  `service` varchar(255) DEFAULT NULL,
  `customerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "mt_order"
#

INSERT INTO `mt_order` VALUES (1,'Biryani',1,'20','Take Home',1),(2,'Paneed 65',2,'20','Take Home',1),(3,'Handi Pulao',3,'20','Take Home',2),(4,'Biryani Mutton',3,'20','Die-In',1);
