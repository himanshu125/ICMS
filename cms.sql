-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2019 at 07:22 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '18-10-2019 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `facstaff`
--

CREATE TABLE `facstaff` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `empEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `dept` varchar(50) NOT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `empImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facstaff`
--
INSERT INTO `facstaff` (`id`, `fullName`, `empEmail`, `password`, `dept`, `contactNo`, `empImage`, `regDate`, `updationDate`, `status`) VALUES
(123, 'Biswajit R Bhowmik', 'brbhowmik.cse@iiitbh.ac.in', 'f925916e2754e5e03f75dd58a5733251', 'Computer Science and Engineering', 1234567890, '1bb87d41d15fe27b500a4bfcde01bb0e.png', '2019-11-20 11:55:13', '2019-11-20 11:55:13', 1);
-- --------------------------------------------------------

--
-- Table structure for table `facstaffaffairs`
--

CREATE TABLE `facstaffaffairs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `contactNo` bigint(11) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facstaffaffairs`
--

INSERT INTO `facstaffaffairs` (`id`, `name`, `username`, `password`, `contactNo`, `updationDate`) VALUES
(1, 'Faculty Affairs', 'facultyaffairs@iiitbh.ac.in', 'f925916e2754e5e03f75dd58a5733251', 9955882699, '2019-11-20 11:41:26');
-- --------------------------------------------------------

--
-- Table structure for table `facstaffcategory`
--

CREATE TABLE `facstaffcategory` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facstaffcategory`
--

INSERT INTO `facstaffcategory` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Faculty Related', 'Faculty Related', '2017-03-28 07:10:55', '2019-11-15 12:08:19'),
(2, 'Student Related', 'Student Related', '2017-06-11 10:54:06', '2019-11-15 12:08:37'),
(3, 'Physical Assault', 'Physical Assault', '2019-10-23 13:49:26', NULL),
(4, 'Others', 'Others', '2019-11-15 12:09:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facstaffcomplaintremark`
--

CREATE TABLE `facstaffcomplaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facstafftblcomplaints`
--

CREATE TABLE `facstafftblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE `others` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `occupation` varchar(50) NOT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `others`
--

INSERT INTO `others` (`id`, `fullName`, `email`, `password`, `occupation`, `contactNo`, `image`, `regDate`, `updationDate`, `status`) VALUES
(2, 'Suraj Kumar', 'kumarsurajpatnahause123@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 'Bussiness Man', 8409618262, NULL, '2019-11-22 20:53:56', '2019-11-22 20:53:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp_expiry`
--

CREATE TABLE `otp_expiry` (
  `id` int(11) NOT NULL,
  `otp` int(11) DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_expired` int(1) DEFAULT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stud`
--

CREATE TABLE `stud` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `studEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `branch` varchar(50) NOT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `studImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `stud`
--

INSERT INTO `stud` (`id`, `fullName`, `studEmail`, `password`, `branch`, `contactNo`, `studImage`, `regDate`, `updationDate`, `status`) VALUES
(170101003, 'Abhishek Kumar', 'abhishek.cse.1703@iiitbh.ac.in', 'f925916e2754e5e03f75dd58a5733251', 'CSE', 9955882699, '1bb87d41d15fe27b500a4bfcde01bb0e.png', '2019-11-19 21:01:20', '2019-11-19 21:01:20', 1);
-- --------------------------------------------------------

--
-- Table structure for table `studaffairs`
--

CREATE TABLE `studaffairs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Dumping data for table `studaffairs`
--

INSERT INTO `studaffairs` (`id`, `name`, `username`, `password`, `contactNo`, `updationDate`) VALUES
(1, 'Student Affairs', 'studentaffairs@iiitbh.ac.in', 'f925916e2754e5e03f75dd58a5733251', 9955882699, '2019-11-20 11:37:06');
-- --------------------------------------------------------

--
-- Table structure for table `studcategory`
--

CREATE TABLE `studcategory` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studcategory`
--

INSERT INTO `studcategory` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Ragging', NULL, '2019-11-03 06:23:26', NULL),
(2, 'Sexual Assault', NULL, '2019-11-03 06:23:48', NULL),
(3, 'Faculty Related', NULL, '2019-11-14 07:30:15', NULL),
(4, 'Others', NULL, '2019-11-14 07:30:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `studcomplaintremark`
--

CREATE TABLE `studcomplaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studtblcomplaints`
--

CREATE TABLE `studtblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------
--
-- Table structure for table `userlog`
--
CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
--
-- Indexes for dumped tables
--
--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `facstaff`
--
ALTER TABLE `facstaff`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `facstaffaffairs`
--
ALTER TABLE `facstaffaffairs`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `facstaffcategory`
--
ALTER TABLE `facstaffcategory`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `facstaffcomplaintremark`
--
ALTER TABLE `facstaffcomplaintremark`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `facstafftblcomplaints`
--
ALTER TABLE `facstafftblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);
--
-- Indexes for table `others`
--
ALTER TABLE `others`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `stud`
--
ALTER TABLE `stud`
  ADD PRIMARY KEY (`id`);
-- Indexes for table `studaffairs`
--
ALTER TABLE `studaffairs`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `studcategory`
--
ALTER TABLE `studcategory`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `studcomplaintremark`
--
ALTER TABLE `studcomplaintremark`
  ADD PRIMARY KEY (`id`);
--
-- Indexes for table `studtblcomplaints`
--
ALTER TABLE `studtblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);
--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `facstaffaffairs`
--
ALTER TABLE `facstaffaffairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `facstaffcategory`
--
ALTER TABLE `facstaffcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `facstaffcomplaintremark`
--
ALTER TABLE `facstaffcomplaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `facstafftblcomplaints`
--
ALTER TABLE `facstafftblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `others`
--
ALTER TABLE `others`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `otp_expiry`
--
ALTER TABLE `otp_expiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `studaffairs`
--
ALTER TABLE `studaffairs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studcategory`
--
ALTER TABLE `studcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `studcomplaintremark`
--
ALTER TABLE `studcomplaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studtblcomplaints`
--
ALTER TABLE `studtblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;