-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 05, 2022 at 05:15 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `srms`
--
CREATE DATABASE IF NOT EXISTS `srms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `srms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '111111', '2022-02-04 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblclasses`
--

CREATE TABLE IF NOT EXISTS `tblclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tblclasses`
--

INSERT INTO `tblclasses` (`id`, `ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
(1, 'MSC IT', 1, 'A', '2022-02-02 10:30:57', '2022-02-05 11:37:50'),
(2, 'MSC IT', 2, 'B', '2022-02-01 18:30:00', '2022-02-05 09:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE IF NOT EXISTS `tblnotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`id`, `noticeTitle`, `noticeDetails`, `postingDate`) VALUES
(4, 'About End Sem Examination', '#Msc IT First Year End Sem Exam Start From 8th February and sem 2 start from 21 st of February in online and offline blended mode.\r\n#Msc IT sem 4 Exam Start from 20 th March ', '2022-02-05 08:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblresult`
--

CREATE TABLE IF NOT EXISTS `tblresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `tblresult`
--

INSERT INTO `tblresult` (`id`, `StudentId`, `ClassId`, `SubjectId`, `marks`, `PostingDate`, `UpdationDate`) VALUES
(29, 7, 1, 5, 99, '2022-02-04 21:24:31', NULL),
(30, 7, 1, 7, 89, '2022-02-04 21:24:31', NULL),
(31, 7, 1, 6, 93, '2022-02-04 21:24:31', NULL),
(32, 7, 1, 2, 84, '2022-02-04 21:24:32', NULL),
(33, 7, 1, 4, 95, '2022-02-04 21:24:32', NULL),
(34, 7, 1, 1, 99, '2022-02-04 21:24:32', NULL),
(35, 1, 1, 5, 100, '2022-02-04 21:24:57', NULL),
(36, 1, 1, 7, 89, '2022-02-04 21:24:57', NULL),
(37, 1, 1, 6, 84, '2022-02-04 21:24:58', NULL),
(38, 1, 1, 2, 93, '2022-02-04 21:24:58', NULL),
(39, 1, 1, 4, 87, '2022-02-04 21:24:58', NULL),
(40, 1, 1, 1, 84, '2022-02-04 21:24:58', NULL),
(41, 10, 1, 5, 76, '2022-02-04 21:25:19', NULL),
(42, 10, 1, 7, 83, '2022-02-04 21:25:19', NULL),
(43, 10, 1, 6, 67, '2022-02-04 21:25:19', NULL),
(44, 10, 1, 2, 85, '2022-02-04 21:25:19', NULL),
(45, 10, 1, 4, 65, '2022-02-04 21:25:19', NULL),
(46, 10, 1, 1, 55, '2022-02-04 21:25:19', NULL),
(47, 8, 2, 5, 67, '2022-02-04 21:25:53', NULL),
(48, 8, 2, 7, 99, '2022-02-04 21:25:54', NULL),
(49, 8, 2, 7, 23, '2022-02-04 21:25:54', NULL),
(50, 8, 2, 6, 44, '2022-02-04 21:25:54', NULL),
(51, 8, 2, 2, 57, '2022-02-04 21:25:54', NULL),
(52, 8, 2, 4, 87, '2022-02-04 21:25:54', NULL),
(53, 8, 2, 1, 95, '2022-02-04 21:25:54', NULL),
(54, 9, 2, 5, 76, '2022-02-04 21:26:19', NULL),
(55, 9, 2, 7, 78, '2022-02-04 21:26:19', NULL),
(56, 9, 2, 7, 85, '2022-02-04 21:26:19', NULL),
(57, 9, 2, 6, 44, '2022-02-04 21:26:19', NULL),
(58, 9, 2, 2, 33, '2022-02-04 21:26:19', NULL),
(59, 9, 2, 4, 12, '2022-02-04 21:26:20', NULL),
(60, 9, 2, 1, 0, '2022-02-04 21:26:20', NULL),
(61, 9, 2, 5, 76, '2022-02-04 21:26:28', NULL),
(62, 9, 2, 7, 78, '2022-02-04 21:26:29', NULL),
(63, 9, 2, 7, 85, '2022-02-04 21:26:29', NULL),
(64, 9, 2, 6, 44, '2022-02-04 21:26:29', NULL),
(65, 9, 2, 2, 33, '2022-02-04 21:26:29', NULL),
(66, 9, 2, 4, 12, '2022-02-04 21:26:29', NULL),
(67, 9, 2, 1, 0, '2022-02-04 21:26:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE IF NOT EXISTS `tblstudents` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`StudentId`, `StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `UpdationDate`, `Status`) VALUES
(1, 'Shikha parekh', '11', 'sparekh@gmail.com', 'Female', '1995-03-03', 1, '2022-02-02 10:30:57', NULL, 1),
(7, 'Dev Desai', '12', 'dev@gmail.com', 'Male', '2000-05-29', 1, '2022-02-04 21:08:49', NULL, 1),
(8, 'Vasu Patel', '13', 'vasu@gmail.com', 'Male', '2001-03-30', 2, '2022-02-04 21:10:08', NULL, 1),
(9, 'sandip', '14', 's@gmail.com', 'Male', '1998-01-06', 2, '2022-02-04 21:10:58', NULL, 1),
(10, 'savita', '15', 'savita@gmail.com', 'Female', '1999-05-05', 1, '2022-02-04 21:11:38', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjectcombination`
--

CREATE TABLE IF NOT EXISTS `tblsubjectcombination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `tblsubjectcombination`
--

INSERT INTO `tblsubjectcombination` (`id`, `ClassId`, `SubjectId`, `status`, `CreationDate`, `Updationdate`) VALUES
(3, 2, 5, 1, '2022-01-01 10:30:57', NULL),
(4, 1, 2, 1, '2022-01-01 10:30:57', NULL),
(5, 1, 4, 1, '2022-01-01 10:30:57', NULL),
(6, 1, 5, 1, '2022-01-01 10:30:57', NULL),
(8, 4, 4, 1, '2022-01-01 10:30:57', NULL),
(10, 4, 1, 1, '2022-01-01 10:30:57', NULL),
(12, 4, 2, 1, '2022-01-01 10:30:57', NULL),
(13, 4, 5, 1, '2022-01-01 10:30:57', NULL),
(14, 6, 1, 1, '2022-01-01 10:30:57', NULL),
(15, 6, 2, 1, '2022-01-01 10:30:57', NULL),
(16, 6, 4, 1, '2022-01-01 10:30:57', NULL),
(17, 6, 6, 1, '2022-01-01 10:30:57', NULL),
(18, 7, 1, 1, '2022-01-01 10:30:57', NULL),
(19, 7, 7, 1, '2022-01-01 10:30:57', NULL),
(20, 7, 2, 1, '2022-01-01 10:30:57', NULL),
(21, 7, 6, 1, '2022-01-01 10:30:57', NULL),
(22, 7, 5, 0, '2022-01-01 10:30:57', NULL),
(23, 8, 1, 1, '2022-01-01 10:30:57', NULL),
(24, 8, 2, 1, '2022-01-01 10:30:57', NULL),
(25, 8, 4, 1, '2022-01-01 10:30:57', NULL),
(26, 8, 6, 1, '2022-01-01 10:30:57', NULL),
(27, 8, 5, 0, '2022-01-01 10:30:57', NULL),
(28, 9, 1, 1, '2022-01-01 15:18:40', NULL),
(29, 9, 2, 1, '2022-01-01 15:18:43', NULL),
(30, 9, 8, 1, '2022-01-01 15:18:48', NULL),
(31, 9, 8, 1, '2022-01-01 15:18:54', NULL),
(32, 1, 1, 1, '2022-02-04 21:16:22', NULL),
(33, 1, 6, 1, '2022-02-04 21:16:56', NULL),
(34, 1, 7, 1, '2022-02-04 21:17:07', NULL),
(35, 2, 1, 1, '2022-02-04 21:17:29', NULL),
(36, 2, 2, 0, '2022-02-04 21:17:42', '2022-02-05 09:03:59'),
(37, 2, 4, 1, '2022-02-04 21:17:48', NULL),
(38, 2, 6, 1, '2022-02-04 21:17:59', NULL),
(39, 2, 7, 1, '2022-02-04 21:18:06', NULL),
(40, 2, 7, 0, '2022-02-04 21:18:15', '2022-02-05 09:03:51'),
(41, 2, 8, 1, '2022-02-05 09:04:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubjects`
--

CREATE TABLE IF NOT EXISTS `tblsubjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblsubjects`
--

INSERT INTO `tblsubjects` (`id`, `SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Web Technology', 'WT', '2022-01-01 10:30:57', NULL),
(2, 'Java Programing', 'JP', '2022-01-01 10:30:57', NULL),
(4, 'Software Engeineering', 'SE', '2022-01-01 10:30:57', NULL),
(5, 'Data Communication ans Networking', 'DCN', '2022-01-01 10:30:57', NULL),
(6, 'Information Systems And Technology', 'IST', '2022-01-01 10:30:57', NULL),
(7, 'Finance And Accounting', 'FA', '2022-01-01 10:30:57', NULL),
(8, 'Csharp', '.net', '2022-02-05 09:04:30', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
