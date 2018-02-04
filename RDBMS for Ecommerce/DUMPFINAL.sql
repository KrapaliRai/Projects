-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: myproject
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Temporary view structure for view `course_instructor_search`
--

DROP TABLE IF EXISTS `course_instructor_search`;
/*!50001 DROP VIEW IF EXISTS `course_instructor_search`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `course_instructor_search` AS SELECT 
 1 AS `Title`,
 1 AS `CoursesSynopsis`,
 1 AS `NumberOfLectures`,
 1 AS `InstructorFN`,
 1 AS `InstructorsLN`,
 1 AS `InstructorsQualification`,
 1 AS `SpecializationDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `coursecategories`
--

DROP TABLE IF EXISTS `coursecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coursecategories` (
  `CategoryCode` int(11) NOT NULL,
  `CategoryDescription` varchar(100) DEFAULT NULL,
  `CourseCategories_CategoryCode` int(11) DEFAULT NULL,
  PRIMARY KEY (`CategoryCode`),
  KEY `fk_CourseCategories_CourseCategories1_idx` (`CourseCategories_CategoryCode`),
  CONSTRAINT `fk_CourseCategories_CourseCategories1` FOREIGN KEY (`CourseCategories_CategoryCode`) REFERENCES `coursecategories` (`CategoryCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursecategories`
--

LOCK TABLES `coursecategories` WRITE;
/*!40000 ALTER TABLE `coursecategories` DISABLE KEYS */;
INSERT INTO `coursecategories` VALUES (3301,'Online Video Lecture',3301),(3302,'Live Classroom',3302),(3303,'Exam Support',3303);
/*!40000 ALTER TABLE `coursecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `CourseId` int(11) NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `OriginalPrice` double DEFAULT NULL,
  `BestPrice` double DEFAULT NULL,
  `CoursesSynopsis` text,
  `NumberOfLectures` int(11) DEFAULT NULL,
  `CoursePhotoFilename` varchar(100) DEFAULT NULL,
  `OtherCourseDetail` varchar(45) DEFAULT NULL,
  `Instructors_InstructorId` int(10) unsigned DEFAULT NULL,
  `CourseCategories_CategoryCode` int(11) NOT NULL,
  `CourseStatus_CourseStatusCode` int(11) NOT NULL,
  PRIMARY KEY (`CourseId`),
  KEY `fk_Courses_Instructors1_idx` (`Instructors_InstructorId`),
  KEY `fk_Courses_CourseCategories1_idx` (`CourseCategories_CategoryCode`),
  KEY `fk_Courses_CourseStatus1_idx` (`CourseStatus_CourseStatusCode`),
  CONSTRAINT `fk_Courses_CourseCategories1` FOREIGN KEY (`CourseCategories_CategoryCode`) REFERENCES `coursecategories` (`CategoryCode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Courses_CourseStatus1` FOREIGN KEY (`CourseStatus_CourseStatusCode`) REFERENCES `coursestatus` (`CourseStatusCode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Courses_Instructors1` FOREIGN KEY (`Instructors_InstructorId`) REFERENCES `instructors` (`InstructorId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (4001,'DB',100,80,'DBMS',10,'www.pic.com','Basic',101,3301,1),(4002,'Java',1000,800,'Netbeans',5,'www.hdjhf','Medium',102,3301,0),(4003,'DB2',1000,800,'DBMS',20,'www.pic','Basic level',101,3301,1),(4004,'DB2',7000,5600,'DBMS',20,'www.pic','Basic level',101,3301,1);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ALLOW_INVALID_DATES,ERROR_FOR_DIVISION_BY_ZERO,TRADITIONAL,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `myproject`.`courses_BEFORE_INSERT` BEFORE INSERT ON `courses` FOR EACH ROW
BEGIN

IF new.Instructors_InstructorId Is null then 
set new.CourseStatus_coursestatuscode = 0;

end if;


IF new.BestPrice Is null then 
set new.BestPrice = (new.OriginalPrice * 0.8);

end if;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `coursestatus`
--

DROP TABLE IF EXISTS `coursestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coursestatus` (
  `CourseStatusCode` int(11) NOT NULL,
  `StatusDescription` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CourseStatusCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursestatus`
--

LOCK TABLES `coursestatus` WRITE;
/*!40000 ALTER TABLE `coursestatus` DISABLE KEYS */;
INSERT INTO `coursestatus` VALUES (0,'Unavailable'),(1,'Available');
/*!40000 ALTER TABLE `coursestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `custmerpayment_details`
--

DROP TABLE IF EXISTS `custmerpayment_details`;
/*!50001 DROP VIEW IF EXISTS `custmerpayment_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `custmerpayment_details` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `Customers_CustomerId`,
 1 AS `PaymentMethodDescription`,
 1 AS `CreditCardNumber`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customerpaymentmethods`
--

DROP TABLE IF EXISTS `customerpaymentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerpaymentmethods` (
  `CustomerPaymentId` int(10) unsigned NOT NULL,
  `PaymentMethods_PaymentMethodCode` int(11) NOT NULL,
  `Customers_CustomerId` int(11) NOT NULL,
  `CreditCardNumber` int(10) unsigned DEFAULT NULL,
  `PaymentMethodDetails` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerPaymentId`),
  UNIQUE KEY `CreditCardNumber_UNIQUE` (`CreditCardNumber`),
  KEY `fk_CustomerPaymentMethods_PaymentMethods1_idx` (`PaymentMethods_PaymentMethodCode`),
  KEY `fk_CustomerPaymentMethods_Customers1_idx` (`Customers_CustomerId`),
  CONSTRAINT `fk_CustomerPaymentMethods_Customers1` FOREIGN KEY (`Customers_CustomerId`) REFERENCES `customers` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_CustomerPaymentMethods_PaymentMethods1` FOREIGN KEY (`PaymentMethods_PaymentMethodCode`) REFERENCES `paymentmethods` (`PaymentMethodCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerpaymentmethods`
--

LOCK TABLES `customerpaymentmethods` WRITE;
/*!40000 ALTER TABLE `customerpaymentmethods` DISABLE KEYS */;
INSERT INTO `customerpaymentmethods` VALUES (10001,5,70000001,1234567890,'Creditcard'),(10002,6,70000001,1234567891,'Debitcard'),(10003,7,70000002,1234567892,'cheque');
/*!40000 ALTER TABLE `customerpaymentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `CustomerId` int(11) NOT NULL AUTO_INCREMENT,
  `CustomersFN` varchar(45) NOT NULL,
  `CustomersLN` varchar(45) NOT NULL,
  `CustomersEmail` varchar(60) NOT NULL,
  `CustomersGender` varchar(10) DEFAULT NULL,
  `LoginName` varchar(45) DEFAULT NULL,
  `LoginPassword` varchar(45) DEFAULT NULL,
  `PhoneNumber` varchar(45) DEFAULT NULL,
  `CustomersAdd1` varchar(100) DEFAULT NULL,
  `CustomersAdd2` varchar(100) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `UniversityName` varchar(100) DEFAULT NULL,
  `OrganizationName` varchar(100) DEFAULT NULL,
  `Level` varchar(45) DEFAULT NULL,
  `Major` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CustomerId`)
) ENGINE=InnoDB AUTO_INCREMENT=70000004 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (70000001,'krapali','rai','kr@gmail.com','Female','kr','kr','7722090937','75 peterborough street','landmark square','Boston','MA','USA','NU','NU','graduate','IS'),(70000002,'mayank','gangrade','mk@gmail.com','Male','mk','mk','7722090938','75 Alphan','Landmark square','BOston','MA','USa','nu ','nu','Graduate','IS'),(70000003,'Pratik','praja','pp@gmail.com','Male','PP','PP','7722090939','75 peterborough','MA','BOsTON','MA','USA','NU','NU','Graduate','IS');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructors` (
  `InstructorId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `InstructorFN` varchar(45) DEFAULT NULL,
  `InstructorsLN` varchar(45) DEFAULT NULL,
  `InstructorsPhotoFileName` varchar(45) DEFAULT NULL,
  `InstructorsQualification` varchar(45) DEFAULT NULL,
  `InstructorsReview` varchar(45) DEFAULT NULL,
  `Specialization_SpecializationCode` int(11) NOT NULL,
  PRIMARY KEY (`InstructorId`),
  UNIQUE KEY `InstructorId_UNIQUE` (`InstructorId`),
  KEY `fk_Instructors_Specialization1_idx` (`Specialization_SpecializationCode`),
  CONSTRAINT `fk_Instructors_Specialization1` FOREIGN KEY (`Specialization_SpecializationCode`) REFERENCES `specialization` (`SpecializationCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (101,'Yusuf','Ozbek','www.mypic.com','PhD','5 Stars',801),(102,'kal','bugrara','www.mypic','Phd','5 Stars',802);
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `InvoicesNumber` int(11) NOT NULL,
  `InvoiceDate` datetime DEFAULT NULL,
  `InvoicesDetails` varchar(100) DEFAULT NULL,
  `InvoiceStatus_InvoiceStatusCodeId` int(11) NOT NULL,
  `Orders_OrderId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`InvoicesNumber`),
  UNIQUE KEY `InvoicesNumber_UNIQUE` (`InvoicesNumber`),
  KEY `fk_Invoices_InvoiceStatus1_idx` (`InvoiceStatus_InvoiceStatusCodeId`),
  KEY `fk_Invoices_Orders1_idx` (`Orders_OrderId`),
  CONSTRAINT `fk_Invoices_InvoiceStatus1` FOREIGN KEY (`InvoiceStatus_InvoiceStatusCodeId`) REFERENCES `invoicestatus` (`InvoiceStatusCodeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Orders1` FOREIGN KEY (`Orders_OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (4701,'2017-12-04 00:00:00','payment recieved',1,10001),(4702,'2017-12-03 00:00:00','payment done',2,10002);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoicestatus`
--

DROP TABLE IF EXISTS `invoicestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoicestatus` (
  `InvoiceStatusCodeId` int(11) NOT NULL,
  `InvoiceStatusDetails` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`InvoiceStatusCodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicestatus`
--

LOCK TABLES `invoicestatus` WRITE;
/*!40000 ALTER TABLE `invoicestatus` DISABLE KEYS */;
INSERT INTO `invoicestatus` VALUES (1,'paid'),(2,'issued');
/*!40000 ALTER TABLE `invoicestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitems` (
  `OrderItemId` int(11) NOT NULL,
  `OrderItemQuantity` int(11) DEFAULT NULL,
  `OrderItemsPrice` double DEFAULT NULL,
  `OtherOderItemDetails` varchar(100) DEFAULT NULL,
  `Orders_OrderId` int(10) unsigned NOT NULL,
  `OrderItemStatus_OrderItemStatusCode` int(11) NOT NULL,
  `Courses_CourseId` int(11) NOT NULL,
  PRIMARY KEY (`OrderItemId`),
  KEY `fk_OrderItems_Orders1_idx` (`Orders_OrderId`),
  KEY `fk_OrderItems_OrderItemStatus2_idx` (`OrderItemStatus_OrderItemStatusCode`),
  KEY `fk_OrderItems_Courses1_idx` (`Courses_CourseId`),
  CONSTRAINT `fk_OrderItems_Courses1` FOREIGN KEY (`Courses_CourseId`) REFERENCES `courses` (`CourseId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderItems_OrderItemStatus2` FOREIGN KEY (`OrderItemStatus_OrderItemStatusCode`) REFERENCES `orderitemstatus` (`OrderItemStatusCode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderItems_Orders1` FOREIGN KEY (`Orders_OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
INSERT INTO `orderitems` VALUES (6001,1,80,'DB course',10001,20,4001),(6002,2,90,'JAVA',10002,21,4002),(6003,3,80,'DBMS',10003,22,4003),(6004,1,100,'DB2',10001,23,4001);
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitemstatus`
--

DROP TABLE IF EXISTS `orderitemstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitemstatus` (
  `OrderItemStatusCode` int(11) NOT NULL,
  `OrderItemStatusDetails` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`OrderItemStatusCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitemstatus`
--

LOCK TABLES `orderitemstatus` WRITE;
/*!40000 ALTER TABLE `orderitemstatus` DISABLE KEYS */;
INSERT INTO `orderitemstatus` VALUES (20,'Enrolled'),(21,'Dropped'),(22,'Delivered'),(23,'OutOfStock');
/*!40000 ALTER TABLE `orderitemstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrderId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CustomerId` int(11) DEFAULT NULL,
  `DateOrderPlaced` datetime DEFAULT NULL,
  `OrderDetails` varchar(45) DEFAULT NULL,
  `OrderStatus_OrderStatusCode` int(11) NOT NULL,
  `Customers_CustomerId` int(11) NOT NULL,
  PRIMARY KEY (`OrderId`),
  UNIQUE KEY `OrderId_UNIQUE` (`OrderId`),
  KEY `fk_Orders_OrderStatus1_idx` (`OrderStatus_OrderStatusCode`),
  KEY `fk_Orders_Customers1_idx` (`Customers_CustomerId`),
  CONSTRAINT `fk_Orders_Customers1` FOREIGN KEY (`Customers_CustomerId`) REFERENCES `customers` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Orders_OrderStatus1` FOREIGN KEY (`OrderStatus_OrderStatusCode`) REFERENCES `orderstatus` (`OrderStatusCode`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10000001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (10001,70000001,'2017-12-12 00:00:00','Onlinepurchase',16,70000001),(10002,70000001,'2017-12-12 00:00:00','ExamSupport',16,70000001),(10003,70000001,'2017-12-12 00:00:00','Online purchase',17,70000001);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderstatus` (
  `OrderStatusCode` int(11) NOT NULL,
  `OrderStatusDescription` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`OrderStatusCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
INSERT INTO `orderstatus` VALUES (15,'cancelled'),(16,'Completed'),(17,'Pending');
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentmethods`
--

DROP TABLE IF EXISTS `paymentmethods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paymentmethods` (
  `PaymentMethodCode` int(11) NOT NULL,
  `PaymentMethodDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PaymentMethodCode`),
  UNIQUE KEY `PaymentMethodCode_UNIQUE` (`PaymentMethodCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentmethods`
--

LOCK TABLES `paymentmethods` WRITE;
/*!40000 ALTER TABLE `paymentmethods` DISABLE KEYS */;
INSERT INTO `paymentmethods` VALUES (5,'Credit Card'),(6,'Debit Card'),(7,'cheque'),(8,'COD'),(9,'paypal'),(10,'Netbanking'),(11,'refunds');
/*!40000 ALTER TABLE `paymentmethods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `PaymentId` int(11) NOT NULL,
  `PaymentDate` datetime DEFAULT NULL,
  `PaymentAmount` double DEFAULT NULL,
  `Invoices_InvoicesNumber` int(11) NOT NULL,
  PRIMARY KEY (`PaymentId`),
  KEY `fk_Payments_Invoices1_idx` (`Invoices_InvoicesNumber`),
  CONSTRAINT `fk_Payments_Invoices1` FOREIGN KEY (`Invoices_InvoicesNumber`) REFERENCES `invoices` (`InvoicesNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (5001,'2017-12-12 00:00:00',80,4701),(5002,'2017-12-07 00:00:00',100,4702);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipmentitems`
--

DROP TABLE IF EXISTS `shipmentitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipmentitems` (
  `Shipments_ShipmentId` int(10) unsigned NOT NULL,
  `OrderItems_OrderItemId` int(11) NOT NULL,
  PRIMARY KEY (`Shipments_ShipmentId`,`OrderItems_OrderItemId`),
  KEY `fk_ShipmentItems_OrderItems1_idx` (`OrderItems_OrderItemId`),
  CONSTRAINT `fk_ShipmentItems_OrderItems1` FOREIGN KEY (`OrderItems_OrderItemId`) REFERENCES `orderitems` (`OrderItemId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ShipmentItems_Shipments1` FOREIGN KEY (`Shipments_ShipmentId`) REFERENCES `shipments` (`ShipmentId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipmentitems`
--

LOCK TABLES `shipmentitems` WRITE;
/*!40000 ALTER TABLE `shipmentitems` DISABLE KEYS */;
INSERT INTO `shipmentitems` VALUES (91001,6001),(91002,6002);
/*!40000 ALTER TABLE `shipmentitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipments` (
  `ShipmentId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ShipmentTrackingNumber` varchar(45) NOT NULL,
  `ShipmentDate` date DEFAULT NULL,
  `Orders_OrderId` int(10) unsigned NOT NULL,
  `Invoices_InvoicesNumber` int(11) NOT NULL,
  PRIMARY KEY (`ShipmentId`),
  UNIQUE KEY `ShipmentTrackingNumber_UNIQUE` (`ShipmentTrackingNumber`),
  KEY `fk_Shipments_Orders1_idx` (`Orders_OrderId`),
  KEY `fk_Shipments_Invoices1_idx` (`Invoices_InvoicesNumber`),
  CONSTRAINT `fk_Shipments_Invoices1` FOREIGN KEY (`Invoices_InvoicesNumber`) REFERENCES `invoices` (`InvoicesNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Shipments_Orders1` FOREIGN KEY (`Orders_OrderId`) REFERENCES `orders` (`OrderId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=91003 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipments`
--

LOCK TABLES `shipments` WRITE;
/*!40000 ALTER TABLE `shipments` DISABLE KEYS */;
INSERT INTO `shipments` VALUES (91001,'UPS1234567890','2017-12-01',10001,4701),(91002,'UPS1234567891','2017-12-02',10002,4702);
/*!40000 ALTER TABLE `shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart` (
  `DateAdded` date DEFAULT NULL,
  `Customers_CustomerId` int(11) NOT NULL,
  `Courses_CourseId` int(11) NOT NULL,
  PRIMARY KEY (`Customers_CustomerId`,`Courses_CourseId`),
  KEY `fk_ShoppingCart_Customers1_idx` (`Customers_CustomerId`),
  KEY `fk_ShoppingCart_Courses1_idx` (`Courses_CourseId`),
  CONSTRAINT `fk_ShoppingCart_Courses1` FOREIGN KEY (`Courses_CourseId`) REFERENCES `courses` (`CourseId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ShoppingCart_Customers1` FOREIGN KEY (`Customers_CustomerId`) REFERENCES `customers` (`CustomerId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
INSERT INTO `shoppingcart` VALUES ('2017-12-10',70000001,4001),('2017-10-11',70000002,4002),('2017-09-09',70000003,4003);
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specialization` (
  `SpecializationCode` int(11) NOT NULL,
  `SpecializationDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`SpecializationCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (801,'DBMS'),(802,'JAVA');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `studentcoursedetails`
--

DROP TABLE IF EXISTS `studentcoursedetails`;
/*!50001 DROP VIEW IF EXISTS `studentcoursedetails`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `studentcoursedetails` AS SELECT 
 1 AS `FirstName`,
 1 AS `LastName`,
 1 AS `OrderDetails`,
 1 AS `OrderItemsPrice`,
 1 AS `Title`,
 1 AS `BestPrice`,
 1 AS `CategoryDescription`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'myproject'
--

--
-- Dumping routines for database 'myproject'
--
/*!50003 DROP PROCEDURE IF EXISTS `Invoice_Payment_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Invoice_Payment_details`(in cust_ID int)
BEGIN

SELECT 
	customers.CustomerId,
    customers.CustomersFN AS FirstName,
    customers.CustomersLN AS LastName,
	orders.OrderId,
	orders.OrderDetails,
    invoices.invoicesnumber,
    invoices.invoicesDetails,
    payments.paymentAmount,
    payments.paymentDate
    
    
    
FROM
	customers
	INNER JOIN
    orders 
    ON customers.CustomerId
    = orders.CustomerId
        
	INNER JOIN
	invoices
    ON orders.OrderId
    = invoices.Orders_OrderId
    
    INNER JOIN
    payments    
    ON invoices.invoicesNumber
    = payments.Invoices_InvoicesNumber
    
    where customers.CustomerId = cust_ID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Shipment_Details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Shipment_Details`(in customerId int)
BEGIN


Select concat_ws(' ',customers.customersFN,customers.customersLN) 
as StudentName,
customers.customerId , orders.orderId,orders.orderdetails,
shipments.shipmentTrackingNumber,
shipments.shipmentDate

From Customers Inner join Orders
On customers.CustomerId = orders.CustomerId

Inner join shipments
On orders.orderid = shipments.Orders_OrderId

;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `course_instructor_search`
--

/*!50001 DROP VIEW IF EXISTS `course_instructor_search`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `course_instructor_search` AS select `courses`.`Title` AS `Title`,`courses`.`CoursesSynopsis` AS `CoursesSynopsis`,`courses`.`NumberOfLectures` AS `NumberOfLectures`,`instructors`.`InstructorFN` AS `InstructorFN`,`instructors`.`InstructorsLN` AS `InstructorsLN`,`instructors`.`InstructorsQualification` AS `InstructorsQualification`,`specialization`.`SpecializationDescription` AS `SpecializationDescription` from ((`courses` join `instructors` on((`courses`.`Instructors_InstructorId` = `instructors`.`InstructorId`))) join `specialization` on((`instructors`.`Specialization_SpecializationCode` = `specialization`.`SpecializationCode`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `custmerpayment_details`
--

/*!50001 DROP VIEW IF EXISTS `custmerpayment_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `custmerpayment_details` AS select `customers`.`CustomersFN` AS `FirstName`,`customers`.`CustomersLN` AS `LastName`,`customerpaymentmethods`.`Customers_CustomerId` AS `Customers_CustomerId`,`paymentmethods`.`PaymentMethodDescription` AS `PaymentMethodDescription`,`customerpaymentmethods`.`CreditCardNumber` AS `CreditCardNumber` from ((`paymentmethods` join `customerpaymentmethods` on((`paymentmethods`.`PaymentMethodCode` = `customerpaymentmethods`.`PaymentMethods_PaymentMethodCode`))) join `customers` on((`customerpaymentmethods`.`Customers_CustomerId` = `customers`.`CustomerId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studentcoursedetails`
--

/*!50001 DROP VIEW IF EXISTS `studentcoursedetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studentcoursedetails` AS select `customers`.`CustomersFN` AS `FirstName`,`customers`.`CustomersLN` AS `LastName`,`orders`.`OrderDetails` AS `OrderDetails`,`orderitems`.`OrderItemsPrice` AS `OrderItemsPrice`,`courses`.`Title` AS `Title`,`courses`.`BestPrice` AS `BestPrice`,`coursecategories`.`CategoryDescription` AS `CategoryDescription` from ((((`customers` join `orders` on((`customers`.`CustomerId` = `orders`.`CustomerId`))) join `orderitems` on((`orders`.`OrderId` = `orderitems`.`Orders_OrderId`))) join `courses` on((`orderitems`.`Courses_CourseId` = `courses`.`CourseId`))) join `coursecategories` on((`courses`.`CourseCategories_CategoryCode` = `coursecategories`.`CategoryCode`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14  1:09:19
