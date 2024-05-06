-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 03:57 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------
-- changed down
--
-- Table structure for table `commercial`
-- added

CREATE TABLE `commercial` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial`
--

INSERT INTO `commercial` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'commercial-rahul', 'Test@12345', '30-10-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
-- changed change

-- CREATE TABLE `appointment` (
--   `id` int(11) NOT NULL,
--   `doctorSpecialization` varchar(255) DEFAULT NULL,
--   `doctorId` int(11) DEFAULT NULL,
--   `userId` int(11) DEFAULT NULL,
--   `consultancyFees` int(11) DEFAULT NULL,
--   `appointmentDate` varchar(255) DEFAULT NULL,
--   `appointmentTime` varchar(255) DEFAULT NULL,
--   `postingDate` timestamp NULL DEFAULT current_timestamp(),
--   `userStatus` int(11) DEFAULT NULL,
--   `doctorStatus` int(11) DEFAULT NULL,
--   `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `appointment`
-- --

-- INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
-- (1, 'ENT', 1, 1, 500, '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 1, 0, '2022-11-06 12:23:35'),
-- (2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL);

-- --------------------------------------------------------
-- changed added change
-- Table structure for table `propertycategory`
--

CREATE TABLE `propertycategory` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertycategory`
--

INSERT INTO `propertycategory` (`id`, `category`, `creationDate`, `updationDate`) VALUES
(1, 'Apartment', '2022-10-30 18:09:46', NULL),
(2, 'House', '2022-10-30 18:09:57', NULL),
(3, 'Condo', '2022-10-30 18:10:18', NULL),
(4, 'Townhouse', '2022-10-30 18:10:28', NULL),
(5, 'Villa', '2022-10-30 18:10:37', NULL),
(6, 'Studio', '2022-10-30 18:10:46', NULL),
(7, 'Duplex', '2022-10-30 18:10:56', NULL),
(8, 'Loft', '2022-10-30 18:11:03', NULL),
(9, 'Farmhouse', '2022-10-30 18:11:15', NULL),
(10, 'Penthouse', '2022-10-30 18:11:22', NULL),
(11, 'Cottage', '2022-10-30 18:11:30', NULL),
(12, 'Bungalow', '2022-10-30 18:11:39', NULL),
(13, 'Tiny House', '2022-10-30 18:12:02', NULL),
(14, 'Mobile Home', '2022-10-30 18:12:10', NULL),
(15, 'Townhome', '2022-10-30 18:12:30', NULL);

-- Indexes for table `propertycategory`
--
ALTER TABLE `propertycategory`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `propertycategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
-- finished

-- Table structure for table `house_appointment`
-- changed added change
  -- `city` varchar(255) DEFAULT NULL,

CREATE TABLE `house_appointment` (
  `id` int(11) NOT NULL,
  `sellerCategory` varchar(255) DEFAULT NULL,
  `sellerId` int(11) DEFAULT NULL,
  `buyerId` int(11) DEFAULT NULL,
  `bookingFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `buyerStatus` int(11) DEFAULT NULL,
  `sellerStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `house_appointment`
--

INSERT INTO `house_appointment` (`id`, `sellerCategory`, `sellerId`, `buyerId`, `bookingFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `buyerStatus`, `sellerStatus`, `updationDate`) VALUES
(1, 'Apartment', 1, 1, 100, '2022-11-10', '12:45 PM', '2022-11-06 12:21:48', 1, 0, '2022-11-06 12:23:35'),
(2, 'Apartment', 1, 2, 100, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL);

-- Indexes for table `house_appointment`
--
ALTER TABLE `house_appointment`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for table `house_appointment`
--
ALTER TABLE `house_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

-- added finished

-- Table structure for table `sellers`
-- change changed added

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sellerName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `rentalFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `sellerEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `category`, `sellerName`, `address`, `rentalFees`, `contactno`, `sellerEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Apartment', 'John Doe', '123 Main Street, Anytown, USA', '1000', 123456789, 'johndoe@example.com', 'password123', '2022-10-30 18:16:52', '2022-11-06 13:20:17'),
(2, 'House', 'Jane Smith', '456 Oak Avenue, Sometown, USA', '1500', 987654321, 'janesmith@example.com', 'password456', '2022-11-04 01:06:41', NULL);
INSERT INTO `sellers` (`id`, `category`, `sellerName`, `address`, `rentalFees`, `contactno`, `sellerEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Villa', 'sumith', 'Potheri Chennai', '37000', 9841345623, 'nanisai11@gmai.com', 'sumith', '2024-04-29 18:16:52', '2024-04-30 13:20:17');

-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

-- added finished


-- Table structure for table `sellers_log`
-- change changed added

CREATE TABLE `sellers_log` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logoutTime` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellers_log`
--

INSERT INTO `sellers_log` (`id`, `uid`, `username`, `userip`, `loginTime`, `logoutTime`, `status`) VALUES
(20, NULL, 'randomuser', 0x3a3a3100000000000000000000000000, '2022-11-04 01:02:16', NULL, 0),
(21, 2, 'janesmith@example.com', 0x3a3a3100000000000000000000000000, '2022-11-06 11:59:40', '06-11-2022 05:35:18 PM', 1),
(22, 2, 'janesmith@example.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:06:37', '06-11-2022 05:36:40 PM', 1),
(23, 2, 'janesmith@example.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:08:56', '06-11-2022 05:42:53 PM', 1),
(24, 1, 'johndoe@example.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:23:18', '06-11-2022 05:53:40 PM', 1),
(25, 2, 'janesmith@example.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:16:53', '06-11-2022 06:47:07 PM', 1),
(26, 1, 'johndoe@example.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:17:33', '06-11-2022 06:50:28 PM', 1);

-- Indexes for table `sellers_log`
--
ALTER TABLE `sellers_log`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for table `sellers_log`
--
ALTER TABLE `sellers_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
-- added finished

-- Table structure for table `tenants`
-- change changed added

CREATE TABLE `tenants` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'John Doe', 'A 123 ABC Apartment GZB 201017', 'Ghaziabad', 'male', 'johndoe12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 12:13:56', NULL),
(2, 'Amit Kumar', 'New Delhi, India', 'New Delhi', 'male', 'amitk@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 13:15:32', NULL);

-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

-- added finished

-- Table structure for table `buyer_tenant_log`
-- change changed added

CREATE TABLE `buyer_tenant_log` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logoutTime` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyer_tenant_log`
--

INSERT INTO `buyer_tenant_log` (`id`, `uid`, `username`, `userip`, `loginTime`, `logoutTime`, `status`) VALUES
(1, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:14:11', NULL, 1),
(2, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:21:20', '06-11-2022 05:53:00 PM', 1),
(3, NULL, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:43', NULL, 0),
(4, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:58', '06-11-2022 06:50:46 PM', 1);

-- Indexes for table `buyer_tenant_log`
--
ALTER TABLE `buyer_tenant_log`
  ADD PRIMARY KEY (`id`);

-- AUTO_INCREMENT for table `buyer_tenant_log`
--
ALTER TABLE `buyer_tenant_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

-- added finished

-- change changed added
-- Table structure for table `tblbuyer&tenant`
-- change (change tblpatient and dumping)

CREATE TABLE `tblbuyer&tenant` (
    `ID` int(10) NOT NULL AUTO_INCREMENT,
    `Docid` int(10) DEFAULT NULL,
    `FullName` varchar(200) DEFAULT NULL,
    `ContactNumber` bigint(10) DEFAULT NULL,
    `EmailAddress` varchar(200) DEFAULT NULL,
    `Gender` varchar(50) DEFAULT NULL,
    `Address` mediumtext DEFAULT NULL,
    `Age` int(10) DEFAULT NULL,
    `Report` mediumtext DEFAULT NULL,
    `CreationDate` timestamp NULL DEFAULT current_timestamp(),
    `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
    PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- Dumping data for table `tblbuyer&tenant`

INSERT INTO `tblbuyer&tenant` (`ID`, `Docid`, `FullName`, `ContactNumber`, `EmailAddress`, `Gender`, `Address`, `Age`, `Report`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Amit Kumar', 1231231230, 'amitk@gmail.com', 'male', 'New Delhi, India', 35, 'NA', '2022-11-06 13:18:31', NULL);

-- Indexes for table `tblbuyer&tenant`
ALTER TABLE `tblbuyer&tenant`
DROP PRIMARY KEY,
ADD PRIMARY KEY (`ID`);


-- AUTO_INCREMENT for table `tblbuyer&tenant`
ALTER TABLE `tblbuyer&tenant`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

-- added finished


--
-- Table structure for table `doctors`
-- change changed

-- CREATE TABLE `doctors` (
--   `id` int(11) NOT NULL,
--   `specilization` varchar(255) DEFAULT NULL,
--   `doctorName` varchar(255) DEFAULT NULL,
--   `address` longtext DEFAULT NULL,
--   `docFees` varchar(255) DEFAULT NULL,
--   `contactno` bigint(11) DEFAULT NULL,
--   `docEmail` varchar(255) DEFAULT NULL,
--   `password` varchar(255) DEFAULT NULL,
--   `creationDate` timestamp NULL DEFAULT current_timestamp(),
--   `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `doctors`
-- --

-- INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
-- (1, 'ENT', 'Anuj kumar', 'A 123 XYZ Apartment Raj Nagar Ext Ghaziabad', '500', 142536250, 'anujk123@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-30 18:16:52', '2022-11-06 13:20:17'),
-- (2, 'Endocrinologists', 'Charu Dua', 'X 1212 ABC Apartment Laxmi Nagar New Delhi ', '800', 1231231230, 'charudua12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-04 01:06:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

-- CREATE TABLE `doctorslog` (
--   `id` int(11) NOT NULL,
--   `uid` int(11) DEFAULT NULL,
--   `username` varchar(255) DEFAULT NULL,
--   `userip` binary(16) DEFAULT NULL,
--   `loginTime` timestamp NULL DEFAULT current_timestamp(),
--   `logout` varchar(255) DEFAULT NULL,
--   `status` int(11) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `doctorslog`
-- --

-- INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
-- (20, NULL, 'gfdgdf', 0x3a3a3100000000000000000000000000, '2022-11-04 01:02:16', NULL, 0),
-- (21, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 11:59:40', '06-11-2022 05:35:18 PM', 1),
-- (22, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:06:37', '06-11-2022 05:36:40 PM', 1),
-- (23, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:08:56', '06-11-2022 05:42:53 PM', 1),
-- (24, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:23:18', '06-11-2022 05:53:40 PM', 1),
-- (25, 2, 'charudua12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:16:53', '06-11-2022 06:47:07 PM', 1),
-- (26, 1, 'anujk123@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:17:33', '06-11-2022 06:50:28 PM', 1);

-- --------------------------------------------------------

--
-- -- Table structure for table `doctorspecilization`
-- --changed change

-- CREATE TABLE `doctorspecilization` (
--   `id` int(11) NOT NULL,
--   `specilization` varchar(255) DEFAULT NULL,
--   `creationDate` timestamp NULL DEFAULT current_timestamp(),
--   `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `doctorspecilization`
-- --

-- INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
-- (1, 'Orthopedics', '2022-10-30 18:09:46', NULL),
-- (2, 'Internal Medicine', '2022-10-30 18:09:57', NULL),
-- (3, 'Obstetrics and Gynecology', '2022-10-30 18:10:18', NULL),
-- (4, 'Dermatology', '2022-10-30 18:10:28', NULL),
-- (5, 'Pediatrics', '2022-10-30 18:10:37', NULL),
-- (6, 'Radiology', '2022-10-30 18:10:46', NULL),
-- (7, 'General Surgery', '2022-10-30 18:10:56', NULL),
-- (8, 'Ophthalmology', '2022-10-30 18:11:03', NULL),
-- (9, 'Anesthesia', '2022-10-30 18:11:15', NULL),
-- (10, 'Pathology', '2022-10-30 18:11:22', NULL),
-- (11, 'ENT', '2022-10-30 18:11:30', NULL),
-- (12, 'Dental Care', '2022-10-30 18:11:39', NULL),
-- (13, 'Dermatologists', '2022-10-30 18:12:02', NULL),
-- (14, 'Endocrinologists', '2022-10-30 18:12:10', NULL),
-- (15, 'Neurologists', '2022-10-30 18:12:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Sumith Sai', 'sumith@test.com', 1425362514, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2024-04-28 16:52:03', NULL, NULL, NULL),
(2, 'Simran', 'sp@gmail.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the Dealer', '2024-04-28 13:13:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
-- changed change

-- CREATE TABLE `tblmedicalhistory` (
--   `ID` int(10) NOT NULL,
--   `PatientID` int(10) DEFAULT NULL,
--   `BloodPressure` varchar(200) DEFAULT NULL,
--   `BloodSugar` varchar(200) NOT NULL,
--   `Weight` varchar(100) DEFAULT NULL,
--   `Temperature` varchar(200) DEFAULT NULL,
--   `MedicalPres` mediumtext DEFAULT NULL,
--   `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `tblmedicalhistory`
-- --

-- INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
-- (1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41');

CREATE TABLE `tblhousehistory` (
  `ID` int(10) NOT NULL,
  `BuyerID` int(10) DEFAULT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `Type` varchar(100) DEFAULT NULL,
  `Area` decimal(10,2) DEFAULT NULL,
  `Amenities` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhousehistory`
--

INSERT INTO `tblhousehistory` (`ID`, `BuyerID`, `Price`, `Location`, `Type`, `Area`, `Amenities`, `CreationDate`) VALUES
(1, 1, 1500.00, 'City Center', 'Apartment', 850.00, 'Furnished, Parking, Gym', '2024-04-28 10:00:00');


-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

-- INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
-- (1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">"RentOuse, our premier house rental platform, is poised to redefine the rental experience by modernizing traditional processes with innovative digital solutions. Designed to empower both property owners and renters, RentOuse offers a comprehensive suite of tools to seamlessly manage rental transactions with efficiency and ease.

-- At the heart of RentOuse lies its robust features for managing property listings, tenant information, booking schedules, and financial transactions. Property owners can effortlessly showcase their properties, update availability, and engage with prospective tenants, while renters gain access to a diverse array of listings, book their desired properties, and communicate directly with hosts.

-- Renting out a property entails handling copious amounts of information, including property details, rental agreements, tenant profiles, booking schedules, and financial records. RentOuse simplifies this process by automating tasks, ensuring data accuracy, and optimizing resource utilization.

-- Whether you are a property owner seeking to maximize rental income or a tenant in search of the perfect abode, RentOuse promises a user-friendly experience centered on efficiency, transparency, and reliability. Bid farewell to cumbersome paperwork and embrace a new era of hassle-free property rental with RentOuse!"

-- Feel free to further customize it to align with RentOuse's unique offerings and value proposition!&nbsp;</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
-- (2, 'contactus', 'Contact Details', 'LB Nagar - Hyderabad, Telangana,506002,India', 'nanisai2014@gmail.com', 9849345652, '2024-04-28 07:24:07', '9 AM To 9 PM');


INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style="padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em; font-size: 14px; text-align: center; background-color: rgb(255, 246, 246);"><li style="text-align: left;"><font color="#000000">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper-based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost-effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style="text-align: left;"><font color="#000000">RentOuse, our premier house rental platform, is poised to redefine the rental experience by modernizing traditional processes with innovative digital solutions. Designed to empower both property owners and renters, RentOuse offers a comprehensive suite of tools to seamlessly manage rental transactions with efficiency and ease.

At the heart of RentOuse lies its robust features for managing property listings, tenant information, booking schedules, and financial transactions. Property owners can effortlessly showcase their properties, update availability, and engage with prospective tenants, while renters gain access to a diverse array of listings, book their desired properties, and communicate directly with hosts.

Renting out a property entails handling copious amounts of information, including property details, rental agreements, tenant profiles, booking schedules, and financial records. RentOuse simplifies this process by automating tasks, ensuring data accuracy, and optimizing resource utilization.

Whether you are a property owner seeking to maximize rental income or a tenant in search of the perfect abode, RentOuse promises a user-friendly experience centered on efficiency, transparency, and reliability. Bid farewell to cumbersome paperwork and embrace a new era of hassle-free property rental with RentOuse!</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'LB Nagar - Hyderabad, Telangana,506002,India', 'nanisai2014@gmail.com', 9849345652, '2024-04-28 07:24:07', '9 AM To 9 PM');


-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
-- change chnaged
-- change (change tblpatient and dumping)

-- CREATE TABLE `tblpatient` (
--   `ID` int(10) NOT NULL,
--   `Docid` int(10) DEFAULT NULL,
--   `PatientName` varchar(200) DEFAULT NULL,
--   `PatientContno` bigint(10) DEFAULT NULL,
--   `PatientEmail` varchar(200) DEFAULT NULL,
--   `PatientGender` varchar(50) DEFAULT NULL,
--   `PatientAdd` mediumtext DEFAULT NULL,
--   `PatientAge` int(10) DEFAULT NULL,
--   `PatientMedhis` mediumtext DEFAULT NULL,
--   `CreationDate` timestamp NULL DEFAULT current_timestamp(),
--   `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `tblpatient`
-- --

-- INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
-- (1, 1, 'Amit Kumar', 1231231230, 'amitk@gmail.com', 'male', 'New Delhi india', 35, 'NA', '2022-11-06 13:18:31', NULL);

-- --------------------------------------------------------

--
-- -- Table structure for table `userlog`
-- -- change changed

-- CREATE TABLE `userlog` (
--   `id` int(11) NOT NULL,
--   `uid` int(11) DEFAULT NULL,
--   `username` varchar(255) DEFAULT NULL,
--   `userip` binary(16) DEFAULT NULL,
--   `loginTime` timestamp NULL DEFAULT current_timestamp(),
--   `logout` varchar(255) DEFAULT NULL,
--   `status` int(11) DEFAULT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `userlog`
-- --

-- INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
-- (1, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:14:11', NULL, 1),
-- (2, 1, 'johndoe12@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:21:20', '06-11-2022 05:53:00 PM', 1),
-- (3, NULL, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:43', NULL, 0),
-- (4, 2, 'amitk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-11-06 13:15:58', '06-11-2022 06:50:46 PM', 1);

-- --------------------------------------------------------

--
-- -- Table structure for table `users`
-- --change changed

-- CREATE TABLE `users` (
--   `id` int(11) NOT NULL,
--   `fullName` varchar(255) DEFAULT NULL,
--   `address` longtext DEFAULT NULL,
--   `city` varchar(255) DEFAULT NULL,
--   `gender` varchar(255) DEFAULT NULL,
--   `email` varchar(255) DEFAULT NULL,
--   `password` varchar(255) DEFAULT NULL,
--   `regDate` timestamp NULL DEFAULT current_timestamp(),
--   `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
-- ) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --
-- -- Dumping data for table `users`
-- --

-- INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
-- (1, 'John Doe', 'A 123 ABC Apartment GZB 201017', 'Ghaziabad', 'male', 'johndoe12@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 12:13:56', NULL),
-- (2, 'Amit kumar', 'new Delhi india', 'New Delhi', 'male', 'amitk@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 13:15:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`id`);

--
-- -- Indexes for table `appointment`
-- -- chaned change
-- ALTER TABLE `appointment`
--   ADD PRIMARY KEY (`id`);

-- change changed
-- -- Indexes for table `doctors`
-- --
-- ALTER TABLE `doctors`
--   ADD PRIMARY KEY (`id`);

--
-- -- Indexes for table `doctorslog`
-- -- changed change
-- ALTER TABLE `doctorslog`
--   ADD PRIMARY KEY (`id`);

--
-- -- Indexes for table `doctorspecilization`
-- -- changed change
-- ALTER TABLE `doctorspecilization`
--   ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
-- ALTER TABLE `tblmedicalhistory`
--   ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
-- changed change
-- ALTER TABLE `tblpatient`
--   ADD PRIMARY KEY (`ID`);

--
-- -- Indexes for table `userlog`
-- -- change changed
-- ALTER TABLE `userlog`
--   ADD PRIMARY KEY (`id`);

--
-- -- Indexes for table `users`
-- -- change changed
-- ALTER TABLE `users`
--   ADD PRIMARY KEY (`id`),
--   ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--
-- changed down
--
-- AUTO_INCREMENT for table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- -- AUTO_INCREMENT for table `appointment`
-- -- changed change
-- ALTER TABLE `appointment`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- -- AUTO_INCREMENT for table `doctors`
-- -- change changed
-- ALTER TABLE `doctors`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- -- AUTO_INCREMENT for table `doctorslog`
-- -- changed change
-- ALTER TABLE `doctorslog`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `doctorspecilization`
-- changed change
-- ALTER TABLE `doctorspecilization`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
-- ALTER TABLE `tblmedicalhistory`
--   MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
-- changed change
-- ALTER TABLE `tblpatient`
--   MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- -- AUTO_INCREMENT for table `userlog`
-- -- change changed
-- ALTER TABLE `userlog`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- -- AUTO_INCREMENT for table `users`
-- -- change changed
-- ALTER TABLE `users`
--   MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

-- AUTO_INCREMENT for table `tenants`
--
ALTER TABLE `tenants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
-- changed change added

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
