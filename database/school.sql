-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2020 at 04:08 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `averageresults`
--

CREATE TABLE IF NOT EXISTS `averageresults` (
  `id` int(11) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `term` varchar(5) NOT NULL,
  `Class` varchar(11) NOT NULL,
  `Stream` varchar(10) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `studentReg` varchar(7) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `marks` int(11) NOT NULL,
  `grade` varchar(3) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `averagetotals`
--

CREATE TABLE IF NOT EXISTS `averagetotals` (
  `id` int(11) NOT NULL,
  `studentReg` varchar(6) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `total` int(11) NOT NULL,
  `points` int(2) NOT NULL DEFAULT '0',
  `Grade` varchar(3) NOT NULL DEFAULT '--',
  `MeanScore` int(11) NOT NULL,
  `Class` int(11) NOT NULL,
  `Stream` varchar(16) NOT NULL,
  `term` varchar(4) NOT NULL,
  `year` varchar(4) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `StreamPosition` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `catresults`
--

CREATE TABLE IF NOT EXISTS `catresults` (
  `id` int(11) NOT NULL,
  `exam` varchar(5) NOT NULL,
  `term` varchar(4) NOT NULL,
  `Class` varchar(10) NOT NULL,
  `Stream` varchar(20) NOT NULL,
  `Year` int(4) NOT NULL,
  `studentReg` int(11) NOT NULL,
  `subject` varchar(45) NOT NULL,
  `marks` int(11) NOT NULL,
  `grade` varchar(3) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catresults`
--

INSERT INTO `catresults` (`id`, `exam`, `term`, `Class`, `Stream`, `Year`, `studentReg`, `subject`, `marks`, `grade`, `status`) VALUES
(2, 'CAT 1', 'I', '3', 'S', 2020, 4352, 'Computer', 89, 'A', 1),
(3, 'CAT 1', 'I', '3', 'J', 2020, 4276, 'Computer', 78, 'A-', 1),
(4, 'CAT 1', 'I', '3', 'M', 2020, 4325, 'Computer', 67, 'B', 1),
(5, 'CAT 1', 'I', '3', 'M', 2020, 4308, 'Computer', 76, 'A-', 1),
(6, 'CAT 1', 'I', '3', 'R', 2020, 4365, 'Computer', 78, 'A-', 1),
(7, 'CAT 1', 'I', '3', 'S', 2020, 4406, 'Computer', 56, 'C+', 1),
(8, 'CAT 1', 'I', '3', 'M', 2020, 4270, 'Computer', 45, 'C-', 1),
(9, 'CAT 1', 'I', '3', 'R', 2020, 4387, 'Computer', 45, 'C-', 1),
(10, 'CAT 1', 'I', '3', 'M', 2020, 4385, 'Computer', 67, 'B', 1),
(11, 'CAT 1', 'I', '3', 'R', 2020, 4438, 'Computer', 78, 'A-', 1),
(12, 'CAT 1', 'I', '3', 'S', 2020, 4324, 'Computer', 37, 'A', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE IF NOT EXISTS `cats` (
  `id` int(11) NOT NULL,
  `catName` varchar(20) NOT NULL,
  `class` varchar(15) NOT NULL,
  `term` varchar(4) NOT NULL,
  `year` varchar(4) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `catName`, `class`, `term`, `year`, `status`) VALUES
(1, 'CAT 1', '3', 'I', '2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `catsubject`
--

CREATE TABLE IF NOT EXISTS `catsubject` (
  `id` int(11) NOT NULL,
  `catName` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catsubject`
--

INSERT INTO `catsubject` (`id`, `catName`, `status`) VALUES
(1, 'Humanities', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cattotals`
--

CREATE TABLE IF NOT EXISTS `cattotals` (
  `id` int(11) NOT NULL,
  `studentReg` varchar(6) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `total` int(11) NOT NULL,
  `points` int(2) NOT NULL DEFAULT '0',
  `MeanScore` varchar(4) NOT NULL,
  `Grade` varchar(3) NOT NULL DEFAULT '--',
  `Class` int(11) NOT NULL,
  `Stream` varchar(16) NOT NULL,
  `term` varchar(4) NOT NULL,
  `year` varchar(4) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `StreamPosition` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cattotals`
--

INSERT INTO `cattotals` (`id`, `studentReg`, `exam`, `total`, `points`, `MeanScore`, `Grade`, `Class`, `Stream`, `term`, `year`, `position`, `StreamPosition`) VALUES
(1, '4352', 'CAT 1', 89, 12, '12', 'A', 3, 'S', 'I', '2020', 1, 0),
(2, '4276', 'CAT 1', 78, 11, '11', 'A-', 3, 'J', 'I', '2020', 2, 0),
(3, '4325', 'CAT 1', 67, 9, '9', 'B', 3, 'M', 'I', '2020', 6, 0),
(4, '4308', 'CAT 1', 76, 11, '11', 'A-', 3, 'M', 'I', '2020', 5, 0),
(5, '4365', 'CAT 1', 78, 11, '11', 'A-', 3, 'R', 'I', '2020', 3, 0),
(6, '4406', 'CAT 1', 56, 7, '7', 'C+', 3, 'S', 'I', '2020', 8, 0),
(7, '4270', 'CAT 1', 45, 5, '5', 'C-', 3, 'M', 'I', '2020', 10, 0),
(8, '4387', 'CAT 1', 45, 5, '5', 'C-', 3, 'R', 'I', '2020', 9, 0),
(9, '4385', 'CAT 1', 67, 9, '9', 'B', 3, 'M', 'I', '2020', 7, 0),
(10, '4438', 'CAT 1', 78, 11, '11', 'A-', 3, 'R', 'I', '2020', 4, 0),
(11, '4324', 'CAT 1', 37, 12, '12', 'A', 3, 'S', 'I', '2020', 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL,
  `form` int(1) NOT NULL,
  `stream` varchar(10) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `form`, `stream`, `status`) VALUES
(1, 1, '0', 1),
(2, 2, '0', 1),
(3, 3, '0', 1),
(4, 4, '0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `classmeans`
--

CREATE TABLE IF NOT EXISTS `classmeans` (
  `id` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `stream` varchar(10) NOT NULL,
  `term` varchar(4) NOT NULL,
  `year` int(11) NOT NULL,
  `exam` varchar(15) NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE IF NOT EXISTS `club` (
  `id` int(11) NOT NULL,
  `clubName` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clubsmembers`
--

CREATE TABLE IF NOT EXISTS `clubsmembers` (
  `id` int(11) NOT NULL,
  `studentId` varchar(20) NOT NULL,
  `club` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `currentsession`
--

CREATE TABLE IF NOT EXISTS `currentsession` (
  `id` int(11) NOT NULL,
  `currentSession` varchar(10) NOT NULL DEFAULT 'I'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currentsession`
--

INSERT INTO `currentsession` (`id`, `currentSession`) VALUES
(1, 'I');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL,
  `department` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `status`) VALUES
(1, 'Technicals', 1);

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE IF NOT EXISTS `designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `designation`, `status`) VALUES
(1, 'hod technicals', 1);

-- --------------------------------------------------------

--
-- Table structure for table `dorm`
--

CREATE TABLE IF NOT EXISTS `dorm` (
  `id` int(11) NOT NULL,
  `dormName` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `endadm`
--

CREATE TABLE IF NOT EXISTS `endadm` (
  `endAdm` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `eresults`
--

CREATE TABLE IF NOT EXISTS `eresults` (
  `id` int(11) NOT NULL,
  `exam` varchar(50) NOT NULL,
  `class` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `term` varchar(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `eresults`
--

INSERT INTO `eresults` (`id`, `exam`, `class`, `year`, `term`) VALUES
(1, 'CAT 1', '3', '2020', 'I'),
(2, 'CAT 1', '1', '2020', 'I'),
(3, 'END TERM', '3', '2019', 'I'),
(4, 'Opener Exam', '3', '2020', 'I'),
(5, 'Mid Term', '3', '2020', 'I'),
(6, 'Mid Term', '3', '2019', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `examinations`
--

CREATE TABLE IF NOT EXISTS `examinations` (
  `id` int(11) NOT NULL,
  `examTitle` varchar(20) NOT NULL,
  `Term` varchar(4) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `Class` varchar(15) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `examTotalsUpdated` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examinations`
--

INSERT INTO `examinations` (`id`, `examTitle`, `Term`, `Year`, `Class`, `status`, `examTotalsUpdated`) VALUES
(1, 'END TERM', 'III', '2019', 'All Classes', 1, 1),
(2, 'Opener Exam', 'III', '2019', 'All Classes', 1, 0),
(3, 'Mid Term', 'I', '2020', 'All Classes', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `examresults`
--

CREATE TABLE IF NOT EXISTS `examresults` (
  `id` int(11) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `term` varchar(5) NOT NULL,
  `Class` int(11) NOT NULL,
  `Stream` varchar(10) NOT NULL,
  `Year` varchar(4) NOT NULL,
  `studentReg` varchar(7) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `marks` int(11) NOT NULL,
  `grade` varchar(3) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examresults`
--

INSERT INTO `examresults` (`id`, `exam`, `term`, `Class`, `Stream`, `Year`, `studentReg`, `subject`, `marks`, `grade`, `status`) VALUES
(1, 'END TERM', 'III', 4, 'N', '2019', '002', 'English', 23, 'E', 1),
(2, 'END TERM', 'III', 4, 'N', '2019', '003', 'English', 44, 'D+', 0),
(3, 'END TERM', 'III', 4, 'N', '2019', '006', 'English', 34, 'D-', 1),
(4, 'END TERM', 'III', 4, 'N', '2019', '007', 'English', 45, 'C-', 0),
(5, 'END TERM', 'III', 4, 'N', '2019', '009', 'English', 56, 'C+', 0),
(6, 'END TERM', 'III', 4, 'N', '2019', '011', 'English', 54, 'C', 1),
(7, 'END TERM', 'III', 4, 'N', '2019', '012', 'English', 34, 'D-', 0),
(8, 'END TERM', 'III', 4, 'N', '2019', '014', 'English', 32, 'D-', 1),
(9, 'END TERM', 'III', 4, 'N', '2019', '015', 'English', 34, 'D-', 0),
(10, 'END TERM', 'III', 4, 'N', '2019', '016', 'English', 55, 'C+', 0),
(11, 'END TERM', 'III', 4, 'N', '2019', '020', 'English', 44, 'D+', 0),
(12, 'END TERM', 'III', 4, 'N', '2019', '022', 'English', 33, 'D-', 0),
(13, 'END TERM', 'III', 4, 'N', '2019', '024', 'English', 45, 'C-', 0),
(14, 'END TERM', 'III', 4, 'N', '2019', '025', 'English', 56, 'C+', 0),
(15, 'END TERM', 'III', 4, 'N', '2019', '090', 'English', 56, 'C+', 0),
(16, 'END TERM', 'III', 4, 'N', '2019', '094', 'English', 54, 'C', 0),
(17, 'END TERM', 'III', 4, 'N', '2019', '095', 'English', 34, 'D-', 0),
(18, 'END TERM', 'III', 4, 'N', '2019', '101', 'English', 32, 'D-', 0),
(19, 'END TERM', 'III', 4, 'N', '2019', '104', 'English', 34, 'D-', 0),
(20, 'END TERM', 'III', 4, 'N', '2019', '105', 'English', 34, 'D-', 0),
(21, 'END TERM', 'III', 4, 'N', '2019', '108', 'English', 34, 'D-', 0),
(22, 'END TERM', 'III', 4, 'N', '2019', '114', 'English', 32, 'D-', 0),
(23, 'END TERM', 'III', 4, 'N', '2019', '121', 'English', 34, 'D-', 0),
(24, 'END TERM', 'III', 4, 'N', '2019', '126', 'English', 56, 'C+', 0),
(25, 'END TERM', 'III', 4, 'N', '2019', '127', 'English', 55, 'C+', 0),
(26, 'END TERM', 'III', 4, 'N', '2019', '130', 'English', 44, 'D+', 0),
(27, 'END TERM', 'III', 4, 'N', '2019', '131', 'English', 44, 'D+', 0),
(28, 'END TERM', 'III', 4, 'N', '2019', '132', 'English', 34, 'D-', 0),
(29, 'END TERM', 'III', 4, 'N', '2019', '133', 'English', 33, 'D-', 0),
(30, 'END TERM', 'III', 4, 'N', '2019', '134', 'English', 21, 'E', 0),
(31, 'END TERM', 'III', 4, 'N', '2019', '137', 'English', 23, 'E', 0),
(32, 'END TERM', 'III', 4, 'N', '2019', '142', 'English', 21, 'E', 0),
(33, 'END TERM', 'III', 4, 'N', '2019', '143', 'English', 23, 'E', 0),
(34, 'END TERM', 'III', 4, 'N', '2019', '144', 'English', 34, 'D-', 0),
(35, 'END TERM', 'III', 4, 'N', '2019', '155', 'English', 54, 'C', 0),
(36, 'END TERM', 'III', 4, 'N', '2019', '202', 'English', 33, 'D-', 0),
(37, 'END TERM', 'III', 4, 'N', '2019', '203', 'English', 23, 'E', 0),
(38, 'END TERM', 'III', 4, 'N', '2019', '210', 'English', 21, 'E', 0),
(39, 'END TERM', 'III', 4, 'N', '2019', '218', 'English', 32, 'D-', 0),
(40, 'END TERM', 'III', 4, 'N', '2019', '219', 'English', 23, 'E', 0),
(41, 'END TERM', 'III', 4, 'N', '2019', '240', 'English', 45, 'C-', 0),
(42, 'END TERM', 'III', 4, 'N', '2019', '243', 'English', 43, 'D+', 0),
(43, 'END TERM', 'III', 4, 'N', '2019', '250', 'English', 33, 'D-', 0),
(44, 'END TERM', 'III', 4, 'N', '2019', '021', 'English', 23, 'E', 0),
(45, 'END TERM', 'III', 3, 'East', '2019', '026', 'English', 12, 'E', 0),
(46, 'END TERM', 'III', 3, 'East', '2019', '027', 'English', 34, 'D-', 0),
(47, 'END TERM', 'III', 3, 'East', '2019', '031', 'English', 32, 'D-', 0),
(48, 'END TERM', 'III', 3, 'East', '2019', '032', 'English', 34, 'D-', 0),
(49, 'END TERM', 'III', 3, 'East', '2019', '034', 'English', 32, 'D-', 0),
(50, 'END TERM', 'III', 3, 'East', '2019', '036', 'English', 3, 'E', 0),
(51, 'END TERM', 'III', 3, 'East', '2019', '040', 'English', 45, 'C-', 0),
(52, 'END TERM', 'III', 3, 'East', '2019', '043', 'English', 44, 'D+', 0),
(53, 'END TERM', 'III', 3, 'East', '2019', '047', 'English', 34, 'D-', 0),
(54, 'END TERM', 'III', 3, 'East', '2019', '049', 'English', 32, 'D-', 0),
(55, 'END TERM', 'III', 3, 'East', '2019', '052', 'English', 34, 'D-', 0),
(56, 'END TERM', 'III', 3, 'East', '2019', '053', 'English', 34, 'D-', 0),
(57, 'END TERM', 'III', 3, 'East', '2019', '055', 'English', 32, 'D-', 0),
(58, 'END TERM', 'III', 3, 'East', '2019', '057', 'English', 3, 'E', 0),
(59, 'END TERM', 'III', 3, 'East', '2019', '059', 'English', 55, 'C+', 0),
(60, 'END TERM', 'III', 3, 'East', '2019', '061', 'English', 45, 'C-', 0),
(61, 'END TERM', 'III', 3, 'East', '2019', '063', 'English', 43, 'D+', 0),
(62, 'END TERM', 'III', 3, 'East', '2019', '066', 'English', 44, 'D+', 0),
(63, 'END TERM', 'III', 3, 'East', '2019', '069', 'English', 34, 'D-', 0),
(64, 'END TERM', 'III', 3, 'East', '2019', '074', 'English', 4, 'E', 0),
(65, 'END TERM', 'III', 3, 'East', '2019', '077', 'English', 56, 'C+', 0),
(66, 'END TERM', 'III', 3, 'East', '2019', '078', 'English', 55, 'C+', 0),
(67, 'END TERM', 'III', 3, 'East', '2019', '082', 'English', 55, 'C+', 0),
(68, 'END TERM', 'III', 3, 'East', '2019', '088', 'English', 44, 'D+', 0),
(69, 'END TERM', 'III', 3, 'East', '2019', '093', 'English', 33, 'D-', 0),
(70, 'END TERM', 'III', 3, 'East', '2019', '103', 'English', 44, 'D+', 0),
(71, 'END TERM', 'III', 3, 'East', '2019', '111', 'English', 56, 'C+', 0),
(72, 'END TERM', 'III', 3, 'East', '2019', '112', 'English', 54, 'C', 0),
(73, 'END TERM', 'III', 3, 'East', '2019', '122', 'English', 44, 'D+', 0),
(74, 'END TERM', 'III', 3, 'East', '2019', '124', 'English', 34, 'D-', 0),
(75, 'END TERM', 'III', 3, 'East', '2019', '125', 'English', 32, 'D-', 0),
(76, 'END TERM', 'III', 3, 'East', '2019', '140', 'English', 34, 'D-', 0),
(77, 'END TERM', 'III', 3, 'East', '2019', '192', 'English', 45, 'C-', 0),
(78, 'END TERM', 'III', 3, 'East', '2019', '205', 'English', 43, 'D+', 0),
(79, 'END TERM', 'III', 3, 'East', '2019', '213', 'English', 45, 'C-', 0),
(80, 'END TERM', 'III', 3, 'East', '2019', '214', 'English', 43, 'D+', 0),
(81, 'END TERM', 'III', 3, 'East', '2019', '220', 'English', 44, 'D+', 0),
(82, 'END TERM', 'III', 3, 'East', '2019', '227', 'English', 34, 'D-', 0),
(83, 'END TERM', 'III', 3, 'East', '2019', '233', 'English', 32, 'D-', 0),
(84, 'END TERM', 'III', 3, 'East', '2019', '248', 'English', 21, 'E', 0),
(85, 'END TERM', 'III', 3, 'East', '2019', '026', 'Mathematics', 2, 'E', 0),
(86, 'END TERM', 'III', 3, 'East', '2019', '027', 'Mathematics', 3, 'E', 0),
(87, 'END TERM', 'III', 3, 'East', '2019', '031', 'Mathematics', 4, 'E', 0),
(88, 'END TERM', 'III', 3, 'East', '2019', '032', 'Mathematics', 4, 'E', 0),
(89, 'END TERM', 'III', 3, 'East', '2019', '034', 'Mathematics', 4, 'E', 0),
(90, 'END TERM', 'III', 3, 'East', '2019', '036', 'Mathematics', 4, 'E', 0),
(91, 'END TERM', 'III', 3, 'East', '2019', '040', 'Mathematics', 4, 'E', 0),
(92, 'END TERM', 'III', 3, 'East', '2019', '043', 'Mathematics', 3, 'E', 0),
(93, 'END TERM', 'III', 3, 'East', '2019', '047', 'Mathematics', 2, 'E', 0),
(94, 'END TERM', 'III', 3, 'East', '2019', '049', 'Mathematics', 3, 'E', 0),
(95, 'END TERM', 'III', 3, 'East', '2019', '052', 'Mathematics', 2, 'E', 0),
(96, 'END TERM', 'III', 3, 'East', '2019', '053', 'Mathematics', 3, 'E', 0),
(97, 'END TERM', 'III', 3, 'East', '2019', '055', 'Mathematics', 9, 'E', 0),
(98, 'END TERM', 'III', 3, 'East', '2019', '057', 'Mathematics', 8, 'E', 0),
(99, 'END TERM', 'III', 3, 'East', '2019', '059', 'Mathematics', 34, 'D-', 0),
(100, 'END TERM', 'III', 3, 'East', '2019', '061', 'Mathematics', 3, 'E', 0),
(101, 'END TERM', 'III', 3, 'East', '2019', '063', 'Mathematics', 2, 'E', 0),
(102, 'END TERM', 'III', 3, 'East', '2019', '066', 'Mathematics', 4, 'E', 0),
(103, 'END TERM', 'III', 3, 'East', '2019', '069', 'Mathematics', 5, 'E', 0),
(104, 'END TERM', 'III', 3, 'East', '2019', '074', 'Mathematics', 6, 'E', 0),
(105, 'END TERM', 'III', 3, 'East', '2019', '077', 'Mathematics', 5, 'E', 0),
(106, 'END TERM', 'III', 3, 'East', '2019', '078', 'Mathematics', 4, 'E', 0),
(107, 'END TERM', 'III', 3, 'East', '2019', '082', 'Mathematics', 3, 'E', 0),
(108, 'END TERM', 'III', 3, 'East', '2019', '088', 'Mathematics', 6, 'E', 0),
(109, 'END TERM', 'III', 3, 'East', '2019', '093', 'Mathematics', 5, 'E', 0),
(110, 'END TERM', 'III', 3, 'East', '2019', '103', 'Mathematics', 43, 'D+', 0),
(111, 'END TERM', 'III', 3, 'East', '2019', '111', 'Mathematics', 3, 'E', 0),
(112, 'END TERM', 'III', 3, 'East', '2019', '112', 'Mathematics', 4, 'E', 0),
(113, 'END TERM', 'III', 3, 'East', '2019', '122', 'Mathematics', 5, 'E', 0),
(114, 'END TERM', 'III', 3, 'East', '2019', '124', 'Mathematics', 6, 'E', 0),
(115, 'END TERM', 'III', 3, 'East', '2019', '125', 'Mathematics', 7, 'E', 0),
(116, 'END TERM', 'III', 3, 'East', '2019', '140', 'Mathematics', 6, 'E', 0),
(117, 'END TERM', 'III', 3, 'East', '2019', '192', 'Mathematics', 5, 'E', 0),
(118, 'END TERM', 'III', 3, 'East', '2019', '205', 'Mathematics', 5, 'E', 0),
(119, 'END TERM', 'III', 3, 'East', '2019', '213', 'Mathematics', 1, 'E', 0),
(120, 'END TERM', 'III', 3, 'East', '2019', '214', 'Mathematics', 2, 'E', 0),
(121, 'END TERM', 'III', 3, 'East', '2019', '220', 'Mathematics', 3, 'E', 0),
(122, 'END TERM', 'III', 3, 'East', '2019', '227', 'Mathematics', 3, 'E', 0),
(123, 'END TERM', 'III', 3, 'East', '2019', '233', 'Mathematics', 4, 'E', 0),
(124, 'END TERM', 'III', 3, 'East', '2019', '248', 'Mathematics', 34, 'D-', 0),
(125, 'END TERM', 'III', 3, 'East', '2019', '026', 'Physic', 1, 'E', 0),
(126, 'END TERM', 'III', 3, 'East', '2019', '027', 'Physic', 1, 'E', 0),
(127, 'END TERM', 'III', 3, 'East', '2019', '031', 'Physic', 1, 'E', 0),
(128, 'END TERM', 'III', 3, 'East', '2019', '032', 'Physic', 1, 'E', 0),
(129, 'END TERM', 'III', 3, 'East', '2019', '034', 'Physic', 2, 'E', 0),
(130, 'END TERM', 'III', 3, 'East', '2019', '036', 'Physic', 3, 'E', 0),
(131, 'END TERM', 'III', 3, 'East', '2019', '040', 'Physic', 4, 'E', 0),
(132, 'END TERM', 'III', 3, 'East', '2019', '043', 'Physic', 5, 'E', 0),
(133, 'END TERM', 'III', 3, 'East', '2019', '047', 'Physic', 6, 'E', 0),
(134, 'END TERM', 'III', 3, 'East', '2019', '049', 'Physic', 7, 'E', 0),
(135, 'END TERM', 'III', 3, 'East', '2019', '052', 'Physic', 8, 'E', 0),
(136, 'END TERM', 'III', 3, 'East', '2019', '053', 'Physic', 9, 'E', 0),
(137, 'END TERM', 'III', 3, 'East', '2019', '055', 'Physic', 6, 'E', 0),
(138, 'END TERM', 'III', 3, 'East', '2019', '057', 'Physic', 55, 'C+', 0),
(139, 'END TERM', 'III', 3, 'East', '2019', '059', 'Physic', 43, 'D+', 0),
(140, 'END TERM', 'III', 3, 'East', '2019', '061', 'Physic', 4, 'E', 0),
(141, 'END TERM', 'III', 3, 'East', '2019', '063', 'Physic', 55, 'C+', 0),
(142, 'END TERM', 'III', 3, 'East', '2019', '066', 'Physic', 4, 'E', 0),
(143, 'END TERM', 'III', 3, 'East', '2019', '069', 'Physic', 34, 'D-', 0),
(144, 'END TERM', 'III', 3, 'East', '2019', '074', 'Physic', 32, 'D-', 0),
(145, 'END TERM', 'III', 3, 'East', '2019', '077', 'Physic', 34, 'D-', 0),
(146, 'END TERM', 'III', 3, 'East', '2019', '078', 'Physic', 56, 'C+', 0),
(147, 'END TERM', 'III', 3, 'East', '2019', '082', 'Physic', 67, 'B', 0),
(148, 'END TERM', 'III', 3, 'East', '2019', '088', 'Physic', 65, 'B', 0),
(149, 'END TERM', 'III', 3, 'East', '2019', '093', 'Physic', 54, 'C', 0),
(150, 'END TERM', 'III', 3, 'East', '2019', '103', 'Physic', 45, 'C-', 0),
(151, 'END TERM', 'III', 3, 'East', '2019', '111', 'Physic', 43, 'D+', 0),
(152, 'END TERM', 'III', 3, 'East', '2019', '112', 'Physic', 43, 'D+', 0),
(153, 'END TERM', 'III', 3, 'East', '2019', '122', 'Physic', 3, 'E', 0),
(154, 'END TERM', 'III', 3, 'East', '2019', '124', 'Physic', 4, 'E', 0),
(155, 'END TERM', 'III', 3, 'East', '2019', '125', 'Physic', 56, 'C+', 0),
(156, 'END TERM', 'III', 3, 'East', '2019', '140', 'Physic', 66, 'B', 0),
(157, 'END TERM', 'III', 3, 'East', '2019', '192', 'Physic', 55, 'C+', 0),
(158, 'END TERM', 'III', 3, 'East', '2019', '205', 'Physic', 44, 'D+', 0),
(159, 'END TERM', 'III', 3, 'East', '2019', '213', 'Physic', 34, 'D-', 0),
(160, 'END TERM', 'III', 3, 'East', '2019', '214', 'Physic', 32, 'D-', 0),
(161, 'END TERM', 'III', 3, 'East', '2019', '220', 'Physic', 33, 'D-', 0),
(162, 'END TERM', 'III', 3, 'East', '2019', '227', 'Physic', 44, 'D+', 0),
(163, 'END TERM', 'III', 3, 'East', '2019', '233', 'Physic', 34, 'D-', 0),
(164, 'END TERM', 'III', 3, 'East', '2019', '248', 'Physic', 32, 'D-', 0),
(165, 'END TERM', 'III', 3, 'East', '2019', '026', 'Business Studies', 34, 'D-', 0),
(166, 'END TERM', 'III', 3, 'East', '2019', '027', 'Business Studies', 34, 'D-', 0),
(167, 'END TERM', 'III', 3, 'East', '2019', '031', 'Business Studies', 44, 'D+', 0),
(168, 'END TERM', 'III', 3, 'East', '2019', '032', 'Business Studies', 55, 'C+', 0),
(169, 'END TERM', 'III', 3, 'East', '2019', '034', 'Business Studies', 45, 'C-', 0),
(170, 'END TERM', 'III', 3, 'East', '2019', '036', 'Business Studies', 54, 'C', 0),
(171, 'END TERM', 'III', 3, 'East', '2019', '040', 'Business Studies', 5, 'E', 0),
(172, 'END TERM', 'III', 3, 'East', '2019', '043', 'Business Studies', 6, 'E', 0),
(173, 'END TERM', 'III', 3, 'East', '2019', '047', 'Business Studies', 77, 'A-', 0),
(174, 'END TERM', 'III', 3, 'East', '2019', '049', 'Business Studies', 65, 'B', 0),
(175, 'END TERM', 'III', 3, 'East', '2019', '052', 'Business Studies', 45, 'C-', 0),
(176, 'END TERM', 'III', 3, 'East', '2019', '053', 'Business Studies', 43, 'D+', 0),
(177, 'END TERM', 'III', 3, 'East', '2019', '055', 'Business Studies', 23, 'E', 0),
(178, 'END TERM', 'III', 3, 'East', '2019', '057', 'Business Studies', 21, 'E', 0),
(179, 'END TERM', 'III', 3, 'East', '2019', '059', 'Business Studies', 12, 'E', 0),
(180, 'END TERM', 'III', 3, 'East', '2019', '061', 'Business Studies', 45, 'C-', 0),
(181, 'END TERM', 'III', 3, 'East', '2019', '063', 'Business Studies', 43, 'D+', 0),
(182, 'END TERM', 'III', 3, 'East', '2019', '066', 'Business Studies', 45, 'C-', 0),
(183, 'END TERM', 'III', 3, 'East', '2019', '069', 'Business Studies', 56, 'C+', 0),
(184, 'END TERM', 'III', 3, 'East', '2019', '074', 'Business Studies', 66, 'B', 0),
(185, 'END TERM', 'III', 3, 'East', '2019', '077', 'Business Studies', 54, 'C', 0),
(186, 'END TERM', 'III', 3, 'East', '2019', '078', 'Business Studies', 54, 'C', 0),
(187, 'END TERM', 'III', 3, 'East', '2019', '082', 'Business Studies', 43, 'D+', 0),
(188, 'END TERM', 'III', 3, 'East', '2019', '088', 'Business Studies', 34, 'D-', 0),
(189, 'END TERM', 'III', 3, 'East', '2019', '093', 'Business Studies', 32, 'D-', 0),
(190, 'END TERM', 'III', 3, 'East', '2019', '103', 'Business Studies', 34, 'D-', 0),
(191, 'END TERM', 'III', 3, 'East', '2019', '111', 'Business Studies', 45, 'C-', 0),
(192, 'END TERM', 'III', 3, 'East', '2019', '112', 'Business Studies', 65, 'B', 0),
(193, 'END TERM', 'III', 3, 'East', '2019', '122', 'Business Studies', 55, 'C+', 0),
(194, 'END TERM', 'III', 3, 'East', '2019', '124', 'Business Studies', 43, 'D+', 0),
(195, 'END TERM', 'III', 3, 'East', '2019', '125', 'Business Studies', 45, 'C-', 0),
(196, 'END TERM', 'III', 3, 'East', '2019', '140', 'Business Studies', 43, 'D+', 0),
(197, 'END TERM', 'III', 3, 'East', '2019', '192', 'Business Studies', 43, 'D+', 0),
(198, 'END TERM', 'III', 3, 'East', '2019', '205', 'Business Studies', 45, 'C-', 0),
(199, 'END TERM', 'III', 3, 'East', '2019', '213', 'Business Studies', 56, 'C+', 0),
(200, 'END TERM', 'III', 3, 'East', '2019', '214', 'Business Studies', 56, 'C+', 0),
(201, 'END TERM', 'III', 3, 'East', '2019', '220', 'Business Studies', 54, 'C', 0),
(202, 'END TERM', 'III', 3, 'East', '2019', '227', 'Business Studies', 32, 'D-', 0),
(203, 'END TERM', 'III', 3, 'East', '2019', '233', 'Business Studies', 55, 'C+', 0),
(204, 'END TERM', 'III', 3, 'East', '2019', '248', 'Business Studies', 44, 'D+', 0),
(205, 'END TERM', 'III', 3, 'East', '2019', '026', 'Chemistry', 12, 'E', 0),
(206, 'END TERM', 'III', 3, 'East', '2019', '027', 'Chemistry', 23, 'E', 0),
(207, 'END TERM', 'III', 3, 'East', '2019', '031', 'Chemistry', 24, 'E', 0),
(208, 'END TERM', 'III', 3, 'East', '2019', '032', 'Chemistry', 21, 'E', 0),
(209, 'END TERM', 'III', 3, 'East', '2019', '034', 'Chemistry', 22, 'E', 0),
(210, 'END TERM', 'III', 3, 'East', '2019', '036', 'Chemistry', 12, 'E', 0),
(211, 'END TERM', 'III', 3, 'East', '2019', '040', 'Chemistry', 34, 'D-', 0),
(212, 'END TERM', 'III', 3, 'East', '2019', '043', 'Chemistry', 34, 'D-', 0),
(213, 'END TERM', 'III', 3, 'East', '2019', '047', 'Chemistry', 45, 'C-', 0),
(214, 'END TERM', 'III', 3, 'East', '2019', '049', 'Chemistry', 43, 'D+', 0),
(215, 'END TERM', 'III', 3, 'East', '2019', '052', 'Chemistry', 44, 'D+', 0),
(216, 'END TERM', 'III', 3, 'East', '2019', '053', 'Chemistry', 32, 'D-', 0),
(217, 'END TERM', 'III', 3, 'East', '2019', '055', 'Chemistry', 23, 'E', 0),
(218, 'END TERM', 'III', 3, 'East', '2019', '057', 'Chemistry', 23, 'E', 0),
(219, 'END TERM', 'III', 3, 'East', '2019', '059', 'Chemistry', 56, 'C+', 0),
(220, 'END TERM', 'III', 3, 'East', '2019', '061', 'Chemistry', 55, 'C+', 0),
(221, 'END TERM', 'III', 3, 'East', '2019', '063', 'Chemistry', 45, 'C-', 0),
(222, 'END TERM', 'III', 3, 'East', '2019', '066', 'Chemistry', 43, 'D+', 0),
(223, 'END TERM', 'III', 3, 'East', '2019', '069', 'Chemistry', 43, 'D+', 0),
(224, 'END TERM', 'III', 3, 'East', '2019', '074', 'Chemistry', 33, 'D-', 0),
(225, 'END TERM', 'III', 3, 'East', '2019', '077', 'Chemistry', 4, 'E', 0),
(226, 'END TERM', 'III', 3, 'East', '2019', '078', 'Chemistry', 6, 'E', 0),
(227, 'END TERM', 'III', 3, 'East', '2019', '082', 'Chemistry', 7, 'E', 0),
(228, 'END TERM', 'III', 3, 'East', '2019', '088', 'Chemistry', 8, 'E', 0),
(229, 'END TERM', 'III', 3, 'East', '2019', '093', 'Chemistry', 7, 'E', 0),
(230, 'END TERM', 'III', 3, 'East', '2019', '103', 'Chemistry', 23, 'E', 0),
(231, 'END TERM', 'III', 3, 'East', '2019', '111', 'Chemistry', 23, 'E', 0),
(232, 'END TERM', 'III', 3, 'East', '2019', '112', 'Chemistry', 34, 'D-', 0),
(233, 'END TERM', 'III', 3, 'East', '2019', '122', 'Chemistry', 54, 'C', 0),
(234, 'END TERM', 'III', 3, 'East', '2019', '124', 'Chemistry', 43, 'D+', 0),
(235, 'END TERM', 'III', 3, 'East', '2019', '125', 'Chemistry', 23, 'E', 0),
(236, 'END TERM', 'III', 3, 'East', '2019', '140', 'Chemistry', 45, 'C-', 0),
(237, 'END TERM', 'III', 3, 'East', '2019', '192', 'Chemistry', 56, 'C+', 0),
(238, 'END TERM', 'III', 3, 'East', '2019', '205', 'Chemistry', 54, 'C', 0),
(239, 'END TERM', 'III', 3, 'East', '2019', '213', 'Chemistry', 34, 'D-', 0),
(240, 'END TERM', 'III', 3, 'East', '2019', '214', 'Chemistry', 32, 'D-', 0),
(241, 'END TERM', 'III', 3, 'East', '2019', '220', 'Chemistry', 34, 'D-', 0),
(242, 'END TERM', 'III', 3, 'East', '2019', '227', 'Chemistry', 43, 'D+', 0),
(243, 'END TERM', 'III', 3, 'East', '2019', '233', 'Chemistry', 22, 'E', 0),
(244, 'END TERM', 'III', 3, 'East', '2019', '248', 'Chemistry', 33, 'D-', 0),
(245, 'END TERM', 'III', 3, 'East', '2019', '026', 'History', 33, 'D-', 0),
(246, 'END TERM', 'III', 3, 'East', '2019', '027', 'History', 45, 'C-', 0),
(247, 'END TERM', 'III', 3, 'East', '2019', '031', 'History', 55, 'C+', 0),
(248, 'END TERM', 'III', 3, 'East', '2019', '032', 'History', 55, 'C+', 0),
(249, 'END TERM', 'III', 3, 'East', '2019', '034', 'History', 45, 'C-', 0),
(250, 'END TERM', 'III', 3, 'East', '2019', '036', 'History', 56, 'C+', 0),
(251, 'END TERM', 'III', 3, 'East', '2019', '040', 'History', 66, 'B', 0),
(252, 'END TERM', 'III', 3, 'East', '2019', '043', 'History', 65, 'B', 0),
(253, 'END TERM', 'III', 3, 'East', '2019', '047', 'History', 54, 'C', 0),
(254, 'END TERM', 'III', 3, 'East', '2019', '049', 'History', 45, 'C-', 0),
(255, 'END TERM', 'III', 3, 'East', '2019', '052', 'History', 45, 'C-', 0),
(256, 'END TERM', 'III', 3, 'East', '2019', '053', 'History', 45, 'C-', 0),
(257, 'END TERM', 'III', 3, 'East', '2019', '055', 'History', 66, 'B', 0),
(258, 'END TERM', 'III', 3, 'East', '2019', '057', 'History', 65, 'B', 0),
(259, 'END TERM', 'III', 3, 'East', '2019', '059', 'History', 54, 'C', 0),
(260, 'END TERM', 'III', 3, 'East', '2019', '061', 'History', 45, 'C-', 0),
(261, 'END TERM', 'III', 3, 'East', '2019', '063', 'History', 43, 'D+', 0),
(262, 'END TERM', 'III', 3, 'East', '2019', '066', 'History', 45, 'C-', 0),
(263, 'END TERM', 'III', 3, 'East', '2019', '069', 'History', 43, 'D+', 0),
(264, 'END TERM', 'III', 3, 'East', '2019', '074', 'History', 44, 'D+', 0),
(265, 'END TERM', 'III', 3, 'East', '2019', '077', 'History', 55, 'C+', 0),
(266, 'END TERM', 'III', 3, 'East', '2019', '078', 'History', 56, 'C+', 0),
(267, 'END TERM', 'III', 3, 'East', '2019', '082', 'History', 55, 'C+', 0),
(268, 'END TERM', 'III', 3, 'East', '2019', '088', 'History', 44, 'D+', 0),
(269, 'END TERM', 'III', 3, 'East', '2019', '093', 'History', 33, 'D-', 0),
(270, 'END TERM', 'III', 3, 'East', '2019', '103', 'History', 23, 'E', 0),
(271, 'END TERM', 'III', 3, 'East', '2019', '111', 'History', 32, 'D-', 0),
(272, 'END TERM', 'III', 3, 'East', '2019', '112', 'History', 31, 'D-', 0),
(273, 'END TERM', 'III', 3, 'East', '2019', '122', 'History', 3, 'E', 0),
(274, 'END TERM', 'III', 3, 'East', '2019', '124', 'History', 23, 'E', 0),
(275, 'END TERM', 'III', 3, 'East', '2019', '125', 'History', 45, 'C-', 0),
(276, 'END TERM', 'III', 3, 'East', '2019', '140', 'History', 45, 'C-', 0),
(277, 'END TERM', 'III', 3, 'East', '2019', '192', 'History', 43, 'D+', 0),
(278, 'END TERM', 'III', 3, 'East', '2019', '205', 'History', 44, 'D+', 0),
(279, 'END TERM', 'III', 3, 'East', '2019', '213', 'History', 67, 'B', 0),
(280, 'END TERM', 'III', 3, 'East', '2019', '214', 'History', 76, 'A-', 0),
(281, 'END TERM', 'III', 3, 'East', '2019', '220', 'History', 55, 'C+', 0),
(282, 'END TERM', 'III', 3, 'East', '2019', '227', 'History', 45, 'C-', 0),
(283, 'END TERM', 'III', 3, 'East', '2019', '233', 'History', 55, 'C+', 0),
(284, 'END TERM', 'III', 3, 'East', '2019', '248', 'History', 43, 'D+', 0),
(285, 'END TERM', 'III', 3, 'East', '2019', '026', 'Biology', 12, 'E', 0),
(286, 'END TERM', 'III', 3, 'East', '2019', '027', 'Biology', 21, 'E', 0),
(287, 'END TERM', 'III', 3, 'East', '2019', '031', 'Biology', 2, 'E', 0),
(288, 'END TERM', 'III', 3, 'East', '2019', '032', 'Biology', 3, 'E', 0),
(289, 'END TERM', 'III', 3, 'East', '2019', '034', 'Biology', 4, 'E', 0),
(290, 'END TERM', 'III', 3, 'East', '2019', '036', 'Biology', 5, 'E', 0),
(291, 'END TERM', 'III', 3, 'East', '2019', '040', 'Biology', 6, 'E', 0),
(292, 'END TERM', 'III', 3, 'East', '2019', '043', 'Biology', 6, 'E', 0),
(293, 'END TERM', 'III', 3, 'East', '2019', '047', 'Biology', 6, 'E', 0),
(294, 'END TERM', 'III', 3, 'East', '2019', '049', 'Biology', 6, 'E', 0),
(295, 'END TERM', 'III', 3, 'East', '2019', '052', 'Biology', 6, 'E', 0),
(296, 'END TERM', 'III', 3, 'East', '2019', '053', 'Biology', 9, 'E', 0),
(297, 'END TERM', 'III', 3, 'East', '2019', '055', 'Biology', 8, 'E', 0),
(298, 'END TERM', 'III', 3, 'East', '2019', '057', 'Biology', 7, 'E', 0),
(299, 'END TERM', 'III', 3, 'East', '2019', '059', 'Biology', 6, 'E', 0),
(300, 'END TERM', 'III', 3, 'East', '2019', '061', 'Biology', 5, 'E', 0),
(301, 'END TERM', 'III', 3, 'East', '2019', '063', 'Biology', 4, 'E', 0),
(302, 'END TERM', 'III', 3, 'East', '2019', '066', 'Biology', 33, 'D-', 0),
(303, 'END TERM', 'III', 3, 'East', '2019', '069', 'Biology', 45, 'C-', 0),
(304, 'END TERM', 'III', 3, 'East', '2019', '074', 'Biology', 5, 'E', 0),
(305, 'END TERM', 'III', 3, 'East', '2019', '077', 'Biology', 6, 'E', 0),
(306, 'END TERM', 'III', 3, 'East', '2019', '078', 'Biology', 7, 'E', 0),
(307, 'END TERM', 'III', 3, 'East', '2019', '082', 'Biology', 8, 'E', 0),
(308, 'END TERM', 'III', 3, 'East', '2019', '088', 'Biology', 9, 'E', 0),
(309, 'END TERM', 'III', 3, 'East', '2019', '093', 'Biology', 8, 'E', 0),
(310, 'END TERM', 'III', 3, 'East', '2019', '103', 'Biology', 7, 'E', 0),
(311, 'END TERM', 'III', 3, 'East', '2019', '111', 'Biology', 6, 'E', 0),
(312, 'END TERM', 'III', 3, 'East', '2019', '112', 'Biology', 5, 'E', 0),
(313, 'END TERM', 'III', 3, 'East', '2019', '122', 'Biology', 4, 'E', 0),
(314, 'END TERM', 'III', 3, 'East', '2019', '124', 'Biology', 3, 'E', 0),
(315, 'END TERM', 'III', 3, 'East', '2019', '125', 'Biology', 33, 'D-', 0),
(316, 'END TERM', 'III', 3, 'East', '2019', '140', 'Biology', 23, 'E', 0),
(317, 'END TERM', 'III', 3, 'East', '2019', '192', 'Biology', 21, 'E', 0),
(318, 'END TERM', 'III', 3, 'East', '2019', '205', 'Biology', 31, 'D-', 0),
(319, 'END TERM', 'III', 3, 'East', '2019', '213', 'Biology', 23, 'E', 0),
(320, 'END TERM', 'III', 3, 'East', '2019', '214', 'Biology', 4, 'E', 0),
(321, 'END TERM', 'III', 3, 'East', '2019', '220', 'Biology', 6, 'E', 0),
(322, 'END TERM', 'III', 3, 'East', '2019', '227', 'Biology', 7, 'E', 0),
(323, 'END TERM', 'III', 3, 'East', '2019', '233', 'Biology', 8, 'E', 0),
(324, 'END TERM', 'III', 3, 'East', '2019', '248', 'Biology', 9, 'E', 0),
(325, 'END TERM', 'III', 3, 'East', '2019', '026', 'CRE', 44, 'D+', 0),
(326, 'END TERM', 'III', 3, 'East', '2019', '027', 'CRE', 45, 'C-', 0),
(327, 'END TERM', 'III', 3, 'East', '2019', '031', 'CRE', 45, 'C-', 0),
(328, 'END TERM', 'III', 3, 'East', '2019', '032', 'CRE', 43, 'D+', 0),
(329, 'END TERM', 'III', 3, 'East', '2019', '034', 'CRE', 43, 'D+', 0),
(330, 'END TERM', 'III', 3, 'East', '2019', '036', 'CRE', 45, 'C-', 0),
(331, 'END TERM', 'III', 3, 'East', '2019', '040', 'CRE', 46, 'C-', 0),
(332, 'END TERM', 'III', 3, 'East', '2019', '043', 'CRE', 67, 'B', 0),
(333, 'END TERM', 'III', 3, 'East', '2019', '047', 'CRE', 67, 'B', 0),
(334, 'END TERM', 'III', 3, 'East', '2019', '049', 'CRE', 65, 'B', 0),
(335, 'END TERM', 'III', 3, 'East', '2019', '052', 'CRE', 65, 'B', 0),
(336, 'END TERM', 'III', 3, 'East', '2019', '053', 'CRE', 56, 'C+', 0),
(337, 'END TERM', 'III', 3, 'East', '2019', '055', 'CRE', 54, 'C', 0),
(338, 'END TERM', 'III', 3, 'East', '2019', '057', 'CRE', 54, 'C', 0),
(339, 'END TERM', 'III', 3, 'East', '2019', '059', 'CRE', 45, 'C-', 0),
(340, 'END TERM', 'III', 3, 'East', '2019', '061', 'CRE', 43, 'D+', 0),
(341, 'END TERM', 'III', 3, 'East', '2019', '063', 'CRE', 34, 'D-', 0),
(342, 'END TERM', 'III', 3, 'East', '2019', '066', 'CRE', 32, 'D-', 0),
(343, 'END TERM', 'III', 3, 'East', '2019', '069', 'CRE', 32, 'D-', 0),
(344, 'END TERM', 'III', 3, 'East', '2019', '074', 'CRE', 33, 'D-', 0),
(345, 'END TERM', 'III', 3, 'East', '2019', '077', 'CRE', 45, 'C-', 0),
(346, 'END TERM', 'III', 3, 'East', '2019', '078', 'CRE', 54, 'C', 0),
(347, 'END TERM', 'III', 3, 'East', '2019', '082', 'CRE', 45, 'C-', 0),
(348, 'END TERM', 'III', 3, 'East', '2019', '088', 'CRE', 56, 'C+', 0),
(349, 'END TERM', 'III', 3, 'East', '2019', '093', 'CRE', 54, 'C', 0),
(350, 'END TERM', 'III', 3, 'East', '2019', '103', 'CRE', 55, 'C+', 0),
(351, 'END TERM', 'III', 3, 'East', '2019', '111', 'CRE', 66, 'B', 0),
(352, 'END TERM', 'III', 3, 'East', '2019', '112', 'CRE', 65, 'B', 0),
(353, 'END TERM', 'III', 3, 'East', '2019', '122', 'CRE', 65, 'B', 0),
(354, 'END TERM', 'III', 3, 'East', '2019', '124', 'CRE', 56, 'C+', 0),
(355, 'END TERM', 'III', 3, 'East', '2019', '125', 'CRE', 67, 'B', 0),
(356, 'END TERM', 'III', 3, 'East', '2019', '140', 'CRE', 88, 'A', 0),
(357, 'END TERM', 'III', 3, 'East', '2019', '192', 'CRE', 76, 'A-', 0),
(358, 'END TERM', 'III', 3, 'East', '2019', '205', 'CRE', 56, 'C+', 0),
(359, 'END TERM', 'III', 3, 'East', '2019', '213', 'CRE', 45, 'C-', 0),
(360, 'END TERM', 'III', 3, 'East', '2019', '214', 'CRE', 43, 'D+', 0),
(361, 'END TERM', 'III', 3, 'East', '2019', '220', 'CRE', 45, 'C-', 0),
(362, 'END TERM', 'III', 3, 'East', '2019', '227', 'CRE', 55, 'C+', 0),
(363, 'END TERM', 'III', 3, 'East', '2019', '233', 'CRE', 65, 'B', 0),
(364, 'END TERM', 'III', 3, 'East', '2019', '248', 'CRE', 55, 'C+', 0),
(365, 'END TERM', 'III', 3, 'West', '2019', '028', 'English', 33, 'D-', 0),
(366, 'END TERM', 'III', 3, 'West', '2019', '029', 'English', 34, 'D-', 0),
(367, 'END TERM', 'III', 3, 'West', '2019', '033', 'English', 34, 'D-', 0),
(368, 'END TERM', 'III', 3, 'West', '2019', '035', 'English', 44, 'D+', 0),
(369, 'END TERM', 'III', 3, 'West', '2019', '039', 'English', 55, 'C+', 0),
(370, 'END TERM', 'III', 3, 'West', '2019', '042', 'English', 45, 'C-', 0),
(371, 'END TERM', 'III', 3, 'West', '2019', '044', 'English', 43, 'D+', 0),
(372, 'END TERM', 'III', 3, 'West', '2019', '045', 'English', 45, 'C-', 0),
(373, 'END TERM', 'III', 3, 'West', '2019', '046', 'English', 56, 'C+', 0),
(374, 'END TERM', 'III', 3, 'West', '2019', '048', 'English', 54, 'C', 0),
(375, 'END TERM', 'III', 3, 'West', '2019', '050', 'English', 5, 'E', 0),
(376, 'END TERM', 'III', 3, 'West', '2019', '051', 'English', 54, 'C', 0),
(377, 'END TERM', 'III', 3, 'West', '2019', '054', 'English', 5, 'E', 0),
(378, 'END TERM', 'III', 3, 'West', '2019', '056', 'English', 8, 'E', 0),
(379, 'END TERM', 'III', 3, 'West', '2019', '060', 'English', 7, 'E', 0),
(380, 'END TERM', 'III', 3, 'West', '2019', '062', 'English', 45, 'C-', 0),
(381, 'END TERM', 'III', 3, 'West', '2019', '068', 'English', 4, 'E', 0),
(382, 'END TERM', 'III', 3, 'West', '2019', '073', 'English', 22, 'E', 0),
(383, 'END TERM', 'III', 3, 'West', '2019', '079', 'English', 23, 'E', 0),
(384, 'END TERM', 'III', 3, 'West', '2019', '080', 'English', 23, 'E', 0),
(385, 'END TERM', 'III', 3, 'West', '2019', '081', 'English', 24, 'E', 0),
(386, 'END TERM', 'III', 3, 'West', '2019', '085', 'English', 24, 'E', 0),
(387, 'END TERM', 'III', 3, 'West', '2019', '089', 'English', 21, 'E', 0),
(388, 'END TERM', 'III', 3, 'West', '2019', '091', 'English', 4, 'E', 0),
(389, 'END TERM', 'III', 3, 'West', '2019', '099', 'English', 5, 'E', 0),
(390, 'END TERM', 'III', 3, 'West', '2019', '102', 'English', 6, 'E', 0),
(391, 'END TERM', 'III', 3, 'West', '2019', '109', 'English', 5, 'E', 0),
(392, 'END TERM', 'III', 3, 'West', '2019', '117', 'English', 4, 'E', 0),
(393, 'END TERM', 'III', 3, 'West', '2019', '120', 'English', 3, 'E', 0),
(394, 'END TERM', 'III', 3, 'West', '2019', '123', 'English', 2, 'E', 0),
(395, 'END TERM', 'III', 3, 'West', '2019', '135', 'English', 3, 'E', 0),
(396, 'END TERM', 'III', 3, 'West', '2019', '139', 'English', 4, 'E', 0),
(397, 'END TERM', 'III', 3, 'West', '2019', '141', 'English', 44, 'D+', 0),
(398, 'END TERM', 'III', 3, 'West', '2019', '232', 'English', 33, 'D-', 0),
(399, 'END TERM', 'III', 3, 'West', '2019', '242', 'English', 34, 'D-', 0),
(400, 'END TERM', 'III', 3, 'West', '2019', '247', 'English', 32, 'D-', 0),
(401, 'END TERM', 'III', 3, 'West', '2019', '092', 'English', 32, 'D-', 0),
(402, 'END TERM', 'III', 3, 'West', '2019', '038', 'English', 21, 'E', 0),
(403, 'END TERM', 'III', 3, 'West', '2019', '028', 'Kiswahili', 23, 'E', 0),
(404, 'END TERM', 'III', 3, 'West', '2019', '029', 'Kiswahili', 21, 'E', 0),
(405, 'END TERM', 'III', 3, 'West', '2019', '033', 'Kiswahili', 22, 'E', 0),
(406, 'END TERM', 'III', 3, 'West', '2019', '035', 'Kiswahili', 33, 'D-', 0),
(407, 'END TERM', 'III', 3, 'West', '2019', '039', 'Kiswahili', 44, 'D+', 0),
(408, 'END TERM', 'III', 3, 'West', '2019', '042', 'Kiswahili', 44, 'D+', 0),
(409, 'END TERM', 'III', 3, 'West', '2019', '044', 'Kiswahili', 44, 'D+', 0),
(410, 'END TERM', 'III', 3, 'West', '2019', '045', 'Kiswahili', 34, 'D-', 0),
(411, 'END TERM', 'III', 3, 'West', '2019', '046', 'Kiswahili', 34, 'D-', 0),
(412, 'END TERM', 'III', 3, 'West', '2019', '048', 'Kiswahili', 32, 'D-', 0),
(413, 'END TERM', 'III', 3, 'West', '2019', '050', 'Kiswahili', 23, 'E', 0),
(414, 'END TERM', 'III', 3, 'West', '2019', '051', 'Kiswahili', 23, 'E', 0),
(415, 'END TERM', 'III', 3, 'West', '2019', '054', 'Kiswahili', 21, 'E', 0),
(416, 'END TERM', 'III', 3, 'West', '2019', '056', 'Kiswahili', 21, 'E', 0),
(417, 'END TERM', 'III', 3, 'West', '2019', '060', 'Kiswahili', 23, 'E', 0),
(418, 'END TERM', 'III', 3, 'West', '2019', '062', 'Kiswahili', 23, 'E', 0),
(419, 'END TERM', 'III', 3, 'West', '2019', '068', 'Kiswahili', 22, 'E', 0),
(420, 'END TERM', 'III', 3, 'West', '2019', '073', 'Kiswahili', 22, 'E', 0),
(421, 'END TERM', 'III', 3, 'West', '2019', '079', 'Kiswahili', 22, 'E', 0),
(422, 'END TERM', 'III', 3, 'West', '2019', '080', 'Kiswahili', 22, 'E', 0),
(423, 'END TERM', 'III', 3, 'West', '2019', '081', 'Kiswahili', 6, 'E', 0),
(424, 'END TERM', 'III', 3, 'West', '2019', '085', 'Kiswahili', 7, 'E', 0),
(425, 'END TERM', 'III', 3, 'West', '2019', '089', 'Kiswahili', 8, 'E', 0),
(426, 'END TERM', 'III', 3, 'West', '2019', '091', 'Kiswahili', 9, 'E', 0),
(427, 'END TERM', 'III', 3, 'West', '2019', '099', 'Kiswahili', 8, 'E', 0),
(428, 'END TERM', 'III', 3, 'West', '2019', '102', 'Kiswahili', 7, 'E', 0),
(429, 'END TERM', 'III', 3, 'West', '2019', '109', 'Kiswahili', 6, 'E', 0),
(430, 'END TERM', 'III', 3, 'West', '2019', '117', 'Kiswahili', 5, 'E', 0),
(431, 'END TERM', 'III', 3, 'West', '2019', '120', 'Kiswahili', 55, 'C+', 0),
(432, 'END TERM', 'III', 3, 'West', '2019', '123', 'Kiswahili', 4, 'E', 0),
(433, 'END TERM', 'III', 3, 'West', '2019', '135', 'Kiswahili', 4, 'E', 0),
(434, 'END TERM', 'III', 3, 'West', '2019', '139', 'Kiswahili', 34, 'D-', 0),
(435, 'END TERM', 'III', 3, 'West', '2019', '141', 'Kiswahili', 34, 'D-', 0),
(436, 'END TERM', 'III', 3, 'West', '2019', '232', 'Kiswahili', 35, 'D', 0),
(437, 'END TERM', 'III', 3, 'West', '2019', '242', 'Kiswahili', 32, 'D-', 0),
(438, 'END TERM', 'III', 3, 'West', '2019', '247', 'Kiswahili', 23, 'E', 0),
(439, 'END TERM', 'III', 3, 'West', '2019', '092', 'Kiswahili', 21, 'E', 0),
(440, 'END TERM', 'III', 3, 'West', '2019', '038', 'Kiswahili', 21, 'E', 0),
(441, 'END TERM', 'III', 3, 'West', '2019', '028', 'Mathematics', 2, 'E', 0),
(442, 'END TERM', 'III', 3, 'West', '2019', '029', 'Mathematics', 3, 'E', 0),
(443, 'END TERM', 'III', 3, 'West', '2019', '033', 'Mathematics', 4, 'E', 0),
(444, 'END TERM', 'III', 3, 'West', '2019', '035', 'Mathematics', 5, 'E', 0),
(445, 'END TERM', 'III', 3, 'West', '2019', '039', 'Mathematics', 6, 'E', 0),
(446, 'END TERM', 'III', 3, 'West', '2019', '042', 'Mathematics', 7, 'E', 0),
(447, 'END TERM', 'III', 3, 'West', '2019', '044', 'Mathematics', 8, 'E', 0),
(448, 'END TERM', 'III', 3, 'West', '2019', '045', 'Mathematics', 9, 'E', 0),
(449, 'END TERM', 'III', 3, 'West', '2019', '046', 'Mathematics', 8, 'E', 0),
(450, 'END TERM', 'III', 3, 'West', '2019', '048', 'Mathematics', 7, 'E', 0),
(451, 'END TERM', 'III', 3, 'West', '2019', '050', 'Mathematics', 6, 'E', 0),
(452, 'END TERM', 'III', 3, 'West', '2019', '051', 'Mathematics', 5, 'E', 0),
(453, 'END TERM', 'III', 3, 'West', '2019', '054', 'Mathematics', 4, 'E', 0),
(454, 'END TERM', 'III', 3, 'West', '2019', '056', 'Mathematics', 3, 'E', 0),
(455, 'END TERM', 'III', 3, 'West', '2019', '060', 'Mathematics', 2, 'E', 0),
(456, 'END TERM', 'III', 3, 'West', '2019', '062', 'Mathematics', 1, 'E', 0),
(457, 'END TERM', 'III', 3, 'West', '2019', '068', 'Mathematics', 2, 'E', 0),
(458, 'END TERM', 'III', 3, 'West', '2019', '073', 'Mathematics', 3, 'E', 0),
(459, 'END TERM', 'III', 3, 'West', '2019', '079', 'Mathematics', 4, 'E', 0),
(460, 'END TERM', 'III', 3, 'West', '2019', '080', 'Mathematics', 5, 'E', 0),
(461, 'END TERM', 'III', 3, 'West', '2019', '081', 'Mathematics', 55, 'C+', 0),
(462, 'END TERM', 'III', 3, 'West', '2019', '085', 'Mathematics', 6, 'E', 0),
(463, 'END TERM', 'III', 3, 'West', '2019', '089', 'Mathematics', 7, 'E', 0),
(464, 'END TERM', 'III', 3, 'West', '2019', '091', 'Mathematics', 8, 'E', 0),
(465, 'END TERM', 'III', 3, 'West', '2019', '099', 'Mathematics', 9, 'E', 0),
(466, 'END TERM', 'III', 3, 'West', '2019', '102', 'Mathematics', 8, 'E', 0),
(467, 'END TERM', 'III', 3, 'West', '2019', '109', 'Mathematics', 7, 'E', 0),
(468, 'END TERM', 'III', 3, 'West', '2019', '117', 'Mathematics', 6, 'E', 0),
(469, 'END TERM', 'III', 3, 'West', '2019', '120', 'Mathematics', 55, 'C+', 0),
(470, 'END TERM', 'III', 3, 'West', '2019', '123', 'Mathematics', 44, 'D+', 0),
(471, 'END TERM', 'III', 3, 'West', '2019', '135', 'Mathematics', 33, 'D-', 0),
(472, 'END TERM', 'III', 3, 'West', '2019', '139', 'Mathematics', 22, 'E', 0),
(473, 'END TERM', 'III', 3, 'West', '2019', '141', 'Mathematics', 11, 'E', 0),
(474, 'END TERM', 'III', 3, 'West', '2019', '232', 'Mathematics', 23, 'E', 0),
(475, 'END TERM', 'III', 3, 'West', '2019', '242', 'Mathematics', 24, 'E', 0),
(476, 'END TERM', 'III', 3, 'West', '2019', '247', 'Mathematics', 25, 'E', 0),
(477, 'END TERM', 'III', 3, 'West', '2019', '092', 'Mathematics', 4, 'E', 0),
(478, 'END TERM', 'III', 3, 'West', '2019', '038', 'Mathematics', 5, 'E', 0),
(479, 'END TERM', 'III', 3, 'West', '2019', '028', 'Biology', 2, 'E', 0),
(480, 'END TERM', 'III', 3, 'West', '2019', '029', 'Biology', 3, 'E', 0),
(481, 'END TERM', 'III', 3, 'West', '2019', '033', 'Biology', 4, 'E', 0),
(482, 'END TERM', 'III', 3, 'West', '2019', '035', 'Biology', 5, 'E', 0),
(483, 'END TERM', 'III', 3, 'West', '2019', '039', 'Biology', 6, 'E', 0),
(484, 'END TERM', 'III', 3, 'West', '2019', '042', 'Biology', 7, 'E', 0),
(485, 'END TERM', 'III', 3, 'West', '2019', '044', 'Biology', 8, 'E', 0),
(486, 'END TERM', 'III', 3, 'West', '2019', '045', 'Biology', 9, 'E', 0),
(487, 'END TERM', 'III', 3, 'West', '2019', '046', 'Biology', 8, 'E', 0),
(488, 'END TERM', 'III', 3, 'West', '2019', '048', 'Biology', 7, 'E', 0),
(489, 'END TERM', 'III', 3, 'West', '2019', '050', 'Biology', 6, 'E', 0),
(490, 'END TERM', 'III', 3, 'West', '2019', '051', 'Biology', 5, 'E', 0),
(491, 'END TERM', 'III', 3, 'West', '2019', '054', 'Biology', 4, 'E', 0),
(492, 'END TERM', 'III', 3, 'West', '2019', '056', 'Biology', 3, 'E', 0),
(493, 'END TERM', 'III', 3, 'West', '2019', '060', 'Biology', 22, 'E', 0),
(494, 'END TERM', 'III', 3, 'West', '2019', '062', 'Biology', 1, 'E', 0),
(495, 'END TERM', 'III', 3, 'West', '2019', '068', 'Biology', 2, 'E', 0),
(496, 'END TERM', 'III', 3, 'West', '2019', '073', 'Biology', 3, 'E', 0),
(497, 'END TERM', 'III', 3, 'West', '2019', '079', 'Biology', 44, 'D+', 0),
(498, 'END TERM', 'III', 3, 'West', '2019', '080', 'Biology', 5, 'E', 0),
(499, 'END TERM', 'III', 3, 'West', '2019', '081', 'Biology', 6, 'E', 0),
(500, 'END TERM', 'III', 3, 'West', '2019', '085', 'Biology', 7, 'E', 0),
(501, 'END TERM', 'III', 3, 'West', '2019', '089', 'Biology', 8, 'E', 0),
(502, 'END TERM', 'III', 3, 'West', '2019', '091', 'Biology', 9, 'E', 0),
(503, 'END TERM', 'III', 3, 'West', '2019', '099', 'Biology', 8, 'E', 0),
(504, 'END TERM', 'III', 3, 'West', '2019', '102', 'Biology', 7, 'E', 0),
(505, 'END TERM', 'III', 3, 'West', '2019', '109', 'Biology', 66, 'B', 0),
(506, 'END TERM', 'III', 3, 'West', '2019', '117', 'Biology', 5, 'E', 0),
(507, 'END TERM', 'III', 3, 'West', '2019', '120', 'Biology', 45, 'C-', 0),
(508, 'END TERM', 'III', 3, 'West', '2019', '123', 'Biology', 4, 'E', 0),
(509, 'END TERM', 'III', 3, 'West', '2019', '135', 'Biology', 33, 'D-', 0),
(510, 'END TERM', 'III', 3, 'West', '2019', '139', 'Biology', 23, 'E', 0),
(511, 'END TERM', 'III', 3, 'West', '2019', '141', 'Biology', 21, 'E', 0),
(512, 'END TERM', 'III', 3, 'West', '2019', '232', 'Biology', 23, 'E', 0),
(513, 'END TERM', 'III', 3, 'West', '2019', '242', 'Biology', 23, 'E', 0),
(514, 'END TERM', 'III', 3, 'West', '2019', '247', 'Biology', 34, 'D-', 0),
(515, 'END TERM', 'III', 3, 'West', '2019', '092', 'Biology', 3, 'E', 0),
(516, 'END TERM', 'III', 3, 'West', '2019', '038', 'Biology', 4, 'E', 0),
(517, 'END TERM', 'III', 3, 'West', '2019', '028', 'Physic', 2, 'E', 0),
(518, 'END TERM', 'III', 3, 'West', '2019', '029', 'Physic', 3, 'E', 0),
(519, 'END TERM', 'III', 3, 'West', '2019', '033', 'Physic', 4, 'E', 0),
(520, 'END TERM', 'III', 3, 'West', '2019', '035', 'Physic', 5, 'E', 0),
(521, 'END TERM', 'III', 3, 'West', '2019', '039', 'Physic', 6, 'E', 0),
(522, 'END TERM', 'III', 3, 'West', '2019', '042', 'Physic', 7, 'E', 0),
(523, 'END TERM', 'III', 3, 'West', '2019', '044', 'Physic', 8, 'E', 0),
(524, 'END TERM', 'III', 3, 'West', '2019', '045', 'Physic', 9, 'E', 0),
(525, 'END TERM', 'III', 3, 'West', '2019', '046', 'Physic', 8, 'E', 0),
(526, 'END TERM', 'III', 3, 'West', '2019', '048', 'Physic', 7, 'E', 0),
(527, 'END TERM', 'III', 3, 'West', '2019', '050', 'Physic', 6, 'E', 0),
(528, 'END TERM', 'III', 3, 'West', '2019', '051', 'Physic', 5, 'E', 0),
(529, 'END TERM', 'III', 3, 'West', '2019', '054', 'Physic', 4, 'E', 0),
(530, 'END TERM', 'III', 3, 'West', '2019', '056', 'Physic', 3, 'E', 0),
(531, 'END TERM', 'III', 3, 'West', '2019', '060', 'Physic', 2, 'E', 0),
(532, 'END TERM', 'III', 3, 'West', '2019', '062', 'Physic', 11, 'E', 0),
(533, 'END TERM', 'III', 3, 'West', '2019', '068', 'Physic', 2, 'E', 0),
(534, 'END TERM', 'III', 3, 'West', '2019', '073', 'Physic', 3, 'E', 0),
(535, 'END TERM', 'III', 3, 'West', '2019', '079', 'Physic', 4, 'E', 0),
(536, 'END TERM', 'III', 3, 'West', '2019', '080', 'Physic', 5, 'E', 0),
(537, 'END TERM', 'III', 3, 'West', '2019', '081', 'Physic', 66, 'B', 0),
(538, 'END TERM', 'III', 3, 'West', '2019', '085', 'Physic', 7, 'E', 0),
(539, 'END TERM', 'III', 3, 'West', '2019', '089', 'Physic', 8, 'E', 0),
(540, 'END TERM', 'III', 3, 'West', '2019', '091', 'Physic', 9, 'E', 0),
(541, 'END TERM', 'III', 3, 'West', '2019', '099', 'Physic', 8, 'E', 0),
(542, 'END TERM', 'III', 3, 'West', '2019', '102', 'Physic', 7, 'E', 0),
(543, 'END TERM', 'III', 3, 'West', '2019', '109', 'Physic', 6, 'E', 0),
(544, 'END TERM', 'III', 3, 'West', '2019', '117', 'Physic', 5, 'E', 0),
(545, 'END TERM', 'III', 3, 'West', '2019', '120', 'Physic', 4, 'E', 0),
(546, 'END TERM', 'III', 3, 'West', '2019', '123', 'Physic', 3, 'E', 0),
(547, 'END TERM', 'III', 3, 'West', '2019', '135', 'Physic', 2, 'E', 0),
(548, 'END TERM', 'III', 3, 'West', '2019', '139', 'Physic', 1, 'E', 0),
(549, 'END TERM', 'III', 3, 'West', '2019', '141', 'Physic', 2, 'E', 0),
(550, 'END TERM', 'III', 3, 'West', '2019', '232', 'Physic', 3, 'E', 0),
(551, 'END TERM', 'III', 3, 'West', '2019', '242', 'Physic', 4, 'E', 0),
(552, 'END TERM', 'III', 3, 'West', '2019', '247', 'Physic', 5, 'E', 0),
(553, 'END TERM', 'III', 3, 'West', '2019', '092', 'Physic', 6, 'E', 0),
(554, 'END TERM', 'III', 3, 'West', '2019', '038', 'Physic', 7, 'E', 0),
(555, 'END TERM', 'III', 3, 'West', '2019', '028', 'Chemistry', 23, 'E', 0),
(556, 'END TERM', 'III', 3, 'West', '2019', '029', 'Chemistry', 2, 'E', 0),
(557, 'END TERM', 'III', 3, 'West', '2019', '033', 'Chemistry', 33, 'D-', 0),
(558, 'END TERM', 'III', 3, 'West', '2019', '035', 'Chemistry', 45, 'C-', 0),
(559, 'END TERM', 'III', 3, 'West', '2019', '039', 'Chemistry', 5, 'E', 0),
(560, 'END TERM', 'III', 3, 'West', '2019', '042', 'Chemistry', 5, 'E', 0),
(561, 'END TERM', 'III', 3, 'West', '2019', '044', 'Chemistry', 5, 'E', 0),
(562, 'END TERM', 'III', 3, 'West', '2019', '045', 'Chemistry', 45, 'C-', 0),
(563, 'END TERM', 'III', 3, 'West', '2019', '046', 'Chemistry', 54, 'C', 0),
(564, 'END TERM', 'III', 3, 'West', '2019', '048', 'Chemistry', 34, 'D-', 0),
(565, 'END TERM', 'III', 3, 'West', '2019', '050', 'Chemistry', 3, 'E', 0),
(566, 'END TERM', 'III', 3, 'West', '2019', '051', 'Chemistry', 6, 'E', 0),
(567, 'END TERM', 'III', 3, 'West', '2019', '054', 'Chemistry', 7, 'E', 0),
(568, 'END TERM', 'III', 3, 'West', '2019', '056', 'Chemistry', 8, 'E', 0),
(569, 'END TERM', 'III', 3, 'West', '2019', '060', 'Chemistry', 8, 'E', 0),
(570, 'END TERM', 'III', 3, 'West', '2019', '062', 'Chemistry', 7, 'E', 0),
(571, 'END TERM', 'III', 3, 'West', '2019', '068', 'Chemistry', 9, 'E', 0),
(572, 'END TERM', 'III', 3, 'West', '2019', '073', 'Chemistry', 7, 'E', 0),
(573, 'END TERM', 'III', 3, 'West', '2019', '079', 'Chemistry', 6, 'E', 0),
(574, 'END TERM', 'III', 3, 'West', '2019', '080', 'Chemistry', 5, 'E', 0),
(575, 'END TERM', 'III', 3, 'West', '2019', '081', 'Chemistry', 4, 'E', 0),
(576, 'END TERM', 'III', 3, 'West', '2019', '085', 'Chemistry', 3, 'E', 0),
(577, 'END TERM', 'III', 3, 'West', '2019', '089', 'Chemistry', 23, 'E', 0),
(578, 'END TERM', 'III', 3, 'West', '2019', '091', 'Chemistry', 32, 'D-', 0),
(579, 'END TERM', 'III', 3, 'West', '2019', '099', 'Chemistry', 31, 'D-', 0),
(580, 'END TERM', 'III', 3, 'West', '2019', '102', 'Chemistry', 23, 'E', 0),
(581, 'END TERM', 'III', 3, 'West', '2019', '109', 'Chemistry', 34, 'D-', 0),
(582, 'END TERM', 'III', 3, 'West', '2019', '117', 'Chemistry', 43, 'D+', 0),
(583, 'END TERM', 'III', 3, 'West', '2019', '120', 'Chemistry', 45, 'C-', 0),
(584, 'END TERM', 'III', 3, 'West', '2019', '123', 'Chemistry', 46, 'C-', 0),
(585, 'END TERM', 'III', 3, 'West', '2019', '135', 'Chemistry', 5, 'E', 0),
(586, 'END TERM', 'III', 3, 'West', '2019', '139', 'Chemistry', 4, 'E', 0),
(587, 'END TERM', 'III', 3, 'West', '2019', '141', 'Chemistry', 5, 'E', 0),
(588, 'END TERM', 'III', 3, 'West', '2019', '232', 'Chemistry', 3, 'E', 0),
(589, 'END TERM', 'III', 3, 'West', '2019', '242', 'Chemistry', 7, 'E', 0),
(590, 'END TERM', 'III', 3, 'West', '2019', '247', 'Chemistry', 8, 'E', 0),
(591, 'END TERM', 'III', 3, 'West', '2019', '092', 'Chemistry', 9, 'E', 0),
(592, 'END TERM', 'III', 3, 'West', '2019', '038', 'Chemistry', 7, 'E', 0),
(593, 'END TERM', 'III', 3, 'West', '2019', '028', 'History', 23, 'E', 0),
(594, 'END TERM', 'III', 3, 'West', '2019', '029', 'History', 34, 'D-', 0),
(595, 'END TERM', 'III', 3, 'West', '2019', '033', 'History', 5, 'E', 0),
(596, 'END TERM', 'III', 3, 'West', '2019', '035', 'History', 45, 'C-', 0),
(597, 'END TERM', 'III', 3, 'West', '2019', '039', 'History', 43, 'D+', 0),
(598, 'END TERM', 'III', 3, 'West', '2019', '042', 'History', 45, 'C-', 0),
(599, 'END TERM', 'III', 3, 'West', '2019', '044', 'History', 55, 'C+', 0),
(600, 'END TERM', 'III', 3, 'West', '2019', '045', 'History', 65, 'B', 0),
(601, 'END TERM', 'III', 3, 'West', '2019', '046', 'History', 66, 'B', 0),
(602, 'END TERM', 'III', 3, 'West', '2019', '048', 'History', 76, 'A-', 0),
(603, 'END TERM', 'III', 3, 'West', '2019', '050', 'History', 65, 'B', 0),
(604, 'END TERM', 'III', 3, 'West', '2019', '051', 'History', 45, 'C-', 0),
(605, 'END TERM', 'III', 3, 'West', '2019', '054', 'History', 43, 'D+', 0),
(606, 'END TERM', 'III', 3, 'West', '2019', '056', 'History', 45, 'C-', 0),
(607, 'END TERM', 'III', 3, 'West', '2019', '060', 'History', 43, 'D+', 0),
(608, 'END TERM', 'III', 3, 'West', '2019', '062', 'History', 43, 'D+', 0),
(609, 'END TERM', 'III', 3, 'West', '2019', '068', 'History', 34, 'D-', 0),
(610, 'END TERM', 'III', 3, 'West', '2019', '073', 'History', 55, 'C+', 0),
(611, 'END TERM', 'III', 3, 'West', '2019', '079', 'History', 66, 'B', 0),
(612, 'END TERM', 'III', 3, 'West', '2019', '080', 'History', 67, 'B', 0),
(613, 'END TERM', 'III', 3, 'West', '2019', '081', 'History', 67, 'B', 0),
(614, 'END TERM', 'III', 3, 'West', '2019', '085', 'History', 65, 'B', 0),
(615, 'END TERM', 'III', 3, 'West', '2019', '089', 'History', 45, 'C-', 0),
(616, 'END TERM', 'III', 3, 'West', '2019', '091', 'History', 43, 'D+', 0),
(617, 'END TERM', 'III', 3, 'West', '2019', '099', 'History', 45, 'C-', 0),
(618, 'END TERM', 'III', 3, 'West', '2019', '102', 'History', 66, 'B', 0),
(619, 'END TERM', 'III', 3, 'West', '2019', '109', 'History', 34, 'D-', 0),
(620, 'END TERM', 'III', 3, 'West', '2019', '117', 'History', 32, 'D-', 0),
(621, 'END TERM', 'III', 3, 'West', '2019', '120', 'History', 34, 'D-', 0),
(622, 'END TERM', 'III', 3, 'West', '2019', '123', 'History', 56, 'C+', 0),
(623, 'END TERM', 'III', 3, 'West', '2019', '135', 'History', 54, 'C', 0),
(624, 'END TERM', 'III', 3, 'West', '2019', '139', 'History', 77, 'A-', 0),
(625, 'END TERM', 'III', 3, 'West', '2019', '141', 'History', 65, 'B', 0),
(626, 'END TERM', 'III', 3, 'West', '2019', '232', 'History', 45, 'C-', 0),
(627, 'END TERM', 'III', 3, 'West', '2019', '242', 'History', 43, 'D+', 0),
(628, 'END TERM', 'III', 3, 'West', '2019', '247', 'History', 45, 'C-', 0),
(629, 'END TERM', 'III', 3, 'West', '2019', '092', 'History', 43, 'D+', 0),
(630, 'END TERM', 'III', 3, 'West', '2019', '038', 'History', 45, 'C-', 0),
(631, 'END TERM', 'III', 3, 'West', '2019', '028', 'Business Studies', 34, 'D-', 0),
(632, 'END TERM', 'III', 3, 'West', '2019', '029', 'Business Studies', 55, 'C+', 0),
(633, 'END TERM', 'III', 3, 'West', '2019', '033', 'Business Studies', 65, 'B', 0),
(634, 'END TERM', 'III', 3, 'West', '2019', '035', 'Business Studies', 45, 'C-', 0),
(635, 'END TERM', 'III', 3, 'West', '2019', '039', 'Business Studies', 43, 'D+', 0),
(636, 'END TERM', 'III', 3, 'West', '2019', '042', 'Business Studies', 45, 'C-', 0),
(637, 'END TERM', 'III', 3, 'West', '2019', '044', 'Business Studies', 43, 'D+', 0),
(638, 'END TERM', 'III', 3, 'West', '2019', '045', 'Business Studies', 45, 'C-', 0),
(639, 'END TERM', 'III', 3, 'West', '2019', '046', 'Business Studies', 66, 'B', 0),
(640, 'END TERM', 'III', 3, 'West', '2019', '048', 'Business Studies', 67, 'B', 0),
(641, 'END TERM', 'III', 3, 'West', '2019', '050', 'Business Studies', 76, 'A-', 0),
(642, 'END TERM', 'III', 3, 'West', '2019', '051', 'Business Studies', 56, 'C+', 0),
(643, 'END TERM', 'III', 3, 'West', '2019', '054', 'Business Studies', 55, 'C+', 0),
(644, 'END TERM', 'III', 3, 'West', '2019', '056', 'Business Studies', 67, 'B', 0),
(645, 'END TERM', 'III', 3, 'West', '2019', '060', 'Business Studies', 76, 'A-', 0),
(646, 'END TERM', 'III', 3, 'West', '2019', '062', 'Business Studies', 65, 'B', 0),
(647, 'END TERM', 'III', 3, 'West', '2019', '068', 'Business Studies', 56, 'C+', 0),
(648, 'END TERM', 'III', 3, 'West', '2019', '073', 'Business Studies', 54, 'C', 0),
(649, 'END TERM', 'III', 3, 'West', '2019', '079', 'Business Studies', 45, 'C-', 0),
(650, 'END TERM', 'III', 3, 'West', '2019', '080', 'Business Studies', 56, 'C+', 0),
(651, 'END TERM', 'III', 3, 'West', '2019', '081', 'Business Studies', 67, 'B', 0),
(652, 'END TERM', 'III', 3, 'West', '2019', '085', 'Business Studies', 78, 'A-', 0),
(653, 'END TERM', 'III', 3, 'West', '2019', '089', 'Business Studies', 76, 'A-', 0),
(654, 'END TERM', 'III', 3, 'West', '2019', '091', 'Business Studies', 76, 'A-', 0),
(655, 'END TERM', 'III', 3, 'West', '2019', '099', 'Business Studies', 54, 'C', 0),
(656, 'END TERM', 'III', 3, 'West', '2019', '102', 'Business Studies', 56, 'C+', 0),
(657, 'END TERM', 'III', 3, 'West', '2019', '109', 'Business Studies', 78, 'A-', 0),
(658, 'END TERM', 'III', 3, 'West', '2019', '117', 'Business Studies', 76, 'A-', 0),
(659, 'END TERM', 'III', 3, 'West', '2019', '120', 'Business Studies', 55, 'C+', 0),
(660, 'END TERM', 'III', 3, 'West', '2019', '123', 'Business Studies', 65, 'B', 0),
(661, 'END TERM', 'III', 3, 'West', '2019', '135', 'Business Studies', 45, 'C-', 0),
(662, 'END TERM', 'III', 3, 'West', '2019', '139', 'Business Studies', 55, 'C+', 0),
(663, 'END TERM', 'III', 3, 'West', '2019', '141', 'Business Studies', 56, 'C+', 0),
(664, 'END TERM', 'III', 3, 'West', '2019', '232', 'Business Studies', 54, 'C', 0),
(665, 'END TERM', 'III', 3, 'West', '2019', '242', 'Business Studies', 56, 'C+', 0),
(666, 'END TERM', 'III', 3, 'West', '2019', '247', 'Business Studies', 54, 'C', 0),
(667, 'END TERM', 'III', 3, 'West', '2019', '092', 'Business Studies', 54, 'C', 0),
(668, 'END TERM', 'III', 3, 'West', '2019', '038', 'Business Studies', 55, 'C+', 0),
(669, 'Opener Exam', 'III', 2, 'East', '2019', '145', 'English', 45, 'C-', 0),
(670, 'Opener Exam', 'III', 2, 'East', '2019', '146', 'English', 45, 'C-', 0),
(671, 'Opener Exam', 'III', 2, 'West', '2019', '147', 'English', 45, 'C-', 0);
INSERT INTO `examresults` (`id`, `exam`, `term`, `Class`, `Stream`, `Year`, `studentReg`, `subject`, `marks`, `grade`, `status`) VALUES
(672, 'Opener Exam', 'III', 2, 'West', '2019', '148', 'English', 56, 'C+', 0),
(673, 'Opener Exam', 'III', 2, 'West', '2019', '149', 'English', 56, 'C+', 0),
(674, 'Opener Exam', 'III', 2, 'West', '2019', '150', 'English', 67, 'B', 0),
(675, 'Opener Exam', 'III', 2, 'East', '2019', '151', 'English', 76, 'A-', 0),
(676, 'Opener Exam', 'III', 2, 'West', '2019', '152', 'English', 67, 'B', 0),
(677, 'Opener Exam', 'III', 2, 'West', '2019', '153', 'English', 67, 'B', 0),
(678, 'Opener Exam', 'III', 2, 'East', '2019', '154', 'English', 78, 'A-', 0),
(679, 'Opener Exam', 'III', 2, 'East', '2019', '156', 'English', 78, 'A-', 0),
(680, 'Opener Exam', 'III', 2, 'East', '2019', '157', 'English', 78, 'A-', 0),
(681, 'Opener Exam', 'III', 2, 'West', '2019', '158', 'English', 78, 'A-', 0),
(682, 'Opener Exam', 'III', 2, 'East', '2019', '159', 'English', 78, 'A-', 0),
(683, 'Opener Exam', 'III', 2, 'East', '2019', '160', 'English', 89, 'A', 0),
(684, 'Opener Exam', 'III', 2, 'West', '2019', '161', 'English', 89, 'A', 0),
(685, 'Opener Exam', 'III', 2, 'West', '2019', '162', 'English', 89, 'A', 0),
(686, 'Opener Exam', 'III', 2, 'West', '2019', '163', 'English', 89, 'A', 0),
(687, 'Opener Exam', 'III', 2, 'West', '2019', '164', 'English', 90, 'A', 0),
(688, 'Opener Exam', 'III', 2, 'East', '2019', '165', 'English', 89, 'A', 0),
(689, 'Opener Exam', 'III', 2, 'West', '2019', '166', 'English', 98, 'A', 0),
(690, 'Opener Exam', 'III', 2, 'West', '2019', '168', 'English', 89, 'A', 0),
(691, 'Opener Exam', 'III', 2, 'West', '2019', '169', 'English', 78, 'A-', 0),
(692, 'Opener Exam', 'III', 2, 'West', '2019', '170', 'English', 76, 'A-', 0),
(693, 'Opener Exam', 'III', 2, 'West', '2019', '171', 'English', 76, 'A-', 0),
(694, 'Opener Exam', 'III', 2, 'East', '2019', '172', 'English', 76, 'A-', 0),
(695, 'Opener Exam', 'III', 2, 'West', '2019', '173', 'English', 45, 'C-', 0),
(696, 'Opener Exam', 'III', 2, 'East', '2019', '174', 'English', 45, 'C-', 0),
(697, 'Opener Exam', 'III', 2, 'East', '2019', '175', 'English', 45, 'C-', 0),
(698, 'Opener Exam', 'III', 2, 'East', '2019', '176', 'English', 34, 'D-', 0),
(699, 'Opener Exam', 'III', 2, 'East', '2019', '177', 'English', 34, 'D-', 0),
(700, 'Opener Exam', 'III', 2, 'West', '2019', '180', 'English', 34, 'D-', 0),
(701, 'Opener Exam', 'III', 2, 'West', '2019', '181', 'English', 34, 'D-', 0),
(702, 'Opener Exam', 'III', 2, 'East', '2019', '182', 'English', 43, 'D+', 0),
(703, 'Opener Exam', 'III', 2, 'West', '2019', '183', 'English', 45, 'C-', 0),
(704, 'Opener Exam', 'III', 2, 'West', '2019', '184', 'English', 45, 'C-', 0),
(705, 'Opener Exam', 'III', 2, 'East', '2019', '185', 'English', 45, 'C-', 0),
(706, 'Opener Exam', 'III', 2, 'West', '2019', '186', 'English', 45, 'C-', 0),
(707, 'Opener Exam', 'III', 2, 'West', '2019', '187', 'English', 45, 'C-', 0),
(708, 'Opener Exam', 'III', 2, 'West', '2019', '189', 'English', 45, 'C-', 0),
(709, 'Opener Exam', 'III', 2, 'East', '2019', '194', 'English', 56, 'C+', 0),
(710, 'Opener Exam', 'III', 2, 'East', '2019', '196', 'English', 56, 'C+', 0),
(711, 'Opener Exam', 'III', 2, 'East', '2019', '197', 'English', 56, 'C+', 0),
(712, 'Opener Exam', 'III', 2, 'West', '2019', '198', 'English', 56, 'C+', 0),
(713, 'Opener Exam', 'III', 2, 'East', '2019', '199', 'English', 56, 'C+', 0),
(714, 'Opener Exam', 'III', 2, 'West', '2019', '200', 'English', 56, 'C+', 0),
(715, 'Opener Exam', 'III', 2, 'West', '2019', '204', 'English', 56, 'C+', 0),
(716, 'Opener Exam', 'III', 2, 'East', '2019', '206', 'English', 56, 'C+', 0),
(717, 'Opener Exam', 'III', 2, 'West', '2019', '207', 'English', 56, 'C+', 0),
(718, 'Opener Exam', 'III', 2, 'East', '2019', '208', 'English', 56, 'C+', 0),
(719, 'Opener Exam', 'III', 2, 'East', '2019', '209', 'English', 90, 'A', 0),
(720, 'Opener Exam', 'III', 2, 'East', '2019', '211', 'English', 90, 'A', 0),
(721, 'Opener Exam', 'III', 2, 'East', '2019', '212', 'English', 90, 'A', 0),
(722, 'Opener Exam', 'III', 2, 'West', '2019', '215', 'English', 90, 'A', 0),
(723, 'Opener Exam', 'III', 2, 'West', '2019', '217', 'English', 90, 'A', 0),
(724, 'Opener Exam', 'III', 2, 'East', '2019', '221', 'English', 9, 'E', 0),
(725, 'Opener Exam', 'III', 2, 'West', '2019', '222', 'English', 9, 'E', 0),
(726, 'Opener Exam', 'III', 2, 'West', '2019', '223', 'English', 9, 'E', 0),
(727, 'Opener Exam', 'III', 2, 'West', '2019', '224', 'English', 90, 'A', 0),
(728, 'Opener Exam', 'III', 2, 'East', '2019', '225', 'English', 90, 'A', 0),
(729, 'Opener Exam', 'III', 2, 'East', '2019', '226', 'English', 9, 'E', 0),
(730, 'Opener Exam', 'III', 2, 'East', '2019', '228', 'English', 9, 'E', 0),
(731, 'Opener Exam', 'III', 2, 'West', '2019', '229', 'English', 9, 'E', 0),
(732, 'Opener Exam', 'III', 2, 'West', '2019', '230', 'English', 90, 'A', 0),
(733, 'Opener Exam', 'III', 2, 'West', '2019', '241', 'English', 90, 'A', 0),
(734, 'Opener Exam', 'III', 2, 'East', '2019', '245', 'English', 90, 'A', 0),
(735, 'Opener Exam', 'III', 2, 'East', '2019', '249', 'English', 9, 'E', 0),
(736, 'Opener Exam', 'III', 2, 'West', '2019', '246', 'English', 9, 'E', 0),
(737, 'Opener Exam', 'III', 2, 'West', '2019', '251', 'English', 78, 'A-', 0),
(738, 'Opener Exam', 'III', 2, 'East', '2019', '252', 'English', 89, 'A-', 0),
(739, 'Opener Exam', 'I', 3, 'J', '2020', '4354', 'English', 34, 'D-', 0),
(740, 'Opener Exam', 'I', 3, 'S', '2020', '4352', 'English', 66, 'B', 0),
(741, 'Opener Exam', 'I', 3, 'J', '2020', '4276', 'English', 77, 'A-', 0),
(742, 'Opener Exam', 'I', 3, 'M', '2020', '4325', 'English', 88, 'A', 0),
(743, 'Opener Exam', 'I', 3, 'M', '2020', '4308', 'English', 99, 'A', 0),
(744, 'Opener Exam', 'I', 3, 'R', '2020', '4365', 'English', 88, 'A', 0),
(745, 'Opener Exam', 'I', 3, 'S', '2020', '4406', 'English', 77, 'A-', 0),
(746, 'Opener Exam', 'I', 3, 'M', '2020', '4270', 'English', 66, 'B', 0),
(747, 'Opener Exam', 'I', 3, 'R', '2020', '4387', 'English', 55, 'C+', 0),
(748, 'Opener Exam', 'I', 3, 'M', '2020', '4385', 'English', 44, 'D+', 0),
(749, 'Opener Exam', 'I', 3, 'R', '2020', '4438', 'English', 67, 'B', 0),
(750, 'Opener Exam', 'I', 3, 'S', '2020', '4324', 'English', 78, 'A-', 0),
(751, 'Opener Exam', 'I', 3, 'J', '2020', '4354', 'Physic', 34, 'D-', 0),
(752, 'Opener Exam', 'I', 3, 'S', '2020', '4352', 'Physic', 78, 'A-', 0),
(753, 'Opener Exam', 'I', 3, 'J', '2020', '4276', 'Physic', 77, 'A-', 0),
(754, 'Opener Exam', 'I', 3, 'M', '2020', '4325', 'Physic', 65, 'B', 0),
(755, 'Opener Exam', 'I', 3, 'M', '2020', '4308', 'Physic', 90, 'A', 0),
(756, 'Opener Exam', 'I', 3, 'R', '2020', '4365', 'Physic', 98, 'A', 0),
(757, 'Opener Exam', 'I', 3, 'S', '2020', '4406', 'Physic', 76, 'A-', 0),
(758, 'Opener Exam', 'I', 3, 'M', '2020', '4270', 'Physic', 55, 'C+', 0),
(759, 'Opener Exam', 'I', 3, 'R', '2020', '4387', 'Physic', 45, 'C-', 0),
(760, 'Opener Exam', 'I', 3, 'M', '2020', '4385', 'Physic', 45, 'C-', 0),
(761, 'Opener Exam', 'I', 3, 'R', '2020', '4438', 'Physic', 56, 'C+', 0),
(762, 'Opener Exam', 'I', 3, 'S', '2020', '4324', 'Physic', 67, 'B', 0),
(763, 'Mid Term', 'I', 3, 'J', '2020', '4354', 'Computer', 53, 'C', 0),
(764, 'Mid Term', 'I', 3, 'S', '2020', '4352', 'Computer', 29, 'E', 0),
(765, 'Mid Term', 'I', 3, 'J', '2020', '4276', 'Computer', 36, 'D', 0),
(766, 'Mid Term', 'I', 3, 'M', '2020', '4325', 'Computer', 64, 'B-', 0),
(767, 'Mid Term', 'I', 3, 'M', '2020', '4308', 'Computer', 24, 'E', 0),
(768, 'Mid Term', 'I', 3, 'R', '2020', '4365', 'Computer', 16, 'E', 0),
(769, 'Mid Term', 'I', 3, 'S', '2020', '4406', 'Computer', 56, 'C+', 0),
(770, 'Mid Term', 'I', 3, 'M', '2020', '4270', 'Computer', 4, 'E', 0),
(771, 'Mid Term', 'I', 3, 'R', '2020', '4387', 'Computer', 27, 'E', 0),
(772, 'Mid Term', 'I', 3, 'M', '2020', '4385', 'Computer', 27, 'E', 0),
(773, 'Mid Term', 'I', 3, 'R', '2020', '4438', 'Computer', 31, 'D-', 0),
(774, 'Mid Term', 'I', 3, 'S', '2020', '4324', 'Computer', 24, 'E', 0);

-- --------------------------------------------------------

--
-- Table structure for table `examtotals`
--

CREATE TABLE IF NOT EXISTS `examtotals` (
  `id` int(11) NOT NULL,
  `studentReg` varchar(6) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `total` int(11) NOT NULL,
  `points` int(2) NOT NULL DEFAULT '0',
  `MeanScore` int(11) NOT NULL DEFAULT '0',
  `Grade` varchar(3) NOT NULL DEFAULT '--',
  `Class` int(11) NOT NULL,
  `Stream` varchar(16) NOT NULL,
  `term` varchar(4) NOT NULL,
  `year` varchar(4) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `StreamPosition` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `examtotals`
--

INSERT INTO `examtotals` (`id`, `studentReg`, `exam`, `total`, `points`, `MeanScore`, `Grade`, `Class`, `Stream`, `term`, `year`, `position`, `StreamPosition`) VALUES
(1, '4354', 'Opener Exam', 68, 4, 2, 'D-', 3, 'J', 'I', '2020', 12, 0),
(2, '4352', 'Opener Exam', 144, 20, 10, 'B+', 3, 'S', 'I', '2020', 7, 0),
(3, '4276', 'Opener Exam', 154, 22, 11, 'A-', 3, 'J', 'I', '2020', 4, 0),
(4, '4325', 'Opener Exam', 153, 21, 11, 'A-', 3, 'M', 'I', '2020', 5, 0),
(5, '4308', 'Opener Exam', 189, 24, 12, 'A', 3, 'M', 'I', '2020', 1, 0),
(6, '4365', 'Opener Exam', 186, 24, 12, 'A', 3, 'R', 'I', '2020', 2, 0),
(7, '4406', 'Opener Exam', 153, 22, 11, 'A-', 3, 'S', 'I', '2020', 3, 0),
(8, '4270', 'Opener Exam', 121, 16, 8, 'B-', 3, 'M', 'I', '2020', 8, 0),
(9, '4387', 'Opener Exam', 100, 12, 6, 'C', 3, 'R', 'I', '2020', 10, 0),
(10, '4385', 'Opener Exam', 89, 9, 5, 'C-', 3, 'M', 'I', '2020', 11, 0),
(11, '4438', 'Opener Exam', 123, 16, 8, 'B-', 3, 'R', 'I', '2020', 9, 0),
(12, '4324', 'Opener Exam', 145, 20, 10, 'B+', 3, 'S', 'I', '2020', 6, 0),
(13, '4354', 'Mid Term', 53, 6, 6, 'C', 3, 'J', 'I', '2020', 3, 0),
(14, '4352', 'Mid Term', 29, 1, 1, 'E', 3, 'S', 'I', '2020', 8, 0),
(15, '4276', 'Mid Term', 36, 3, 3, 'D', 3, 'J', 'I', '2020', 4, 0),
(16, '4325', 'Mid Term', 64, 8, 8, 'B-', 3, 'M', 'I', '2020', 1, 0),
(17, '4308', 'Mid Term', 24, 1, 1, 'E', 3, 'M', 'I', '2020', 6, 0),
(18, '4365', 'Mid Term', 16, 1, 1, 'E', 3, 'R', 'I', '2020', 7, 0),
(19, '4406', 'Mid Term', 56, 7, 7, 'C+', 3, 'S', 'I', '2020', 2, 0),
(20, '4270', 'Mid Term', 4, 1, 1, 'E', 3, 'M', 'I', '2020', 9, 0),
(21, '4387', 'Mid Term', 27, 1, 1, 'E', 3, 'R', 'I', '2020', 10, 0),
(22, '4385', 'Mid Term', 27, 1, 1, 'E', 3, 'M', 'I', '2020', 11, 0),
(23, '4438', 'Mid Term', 31, 2, 2, 'D-', 3, 'R', 'I', '2020', 5, 0),
(24, '4324', 'Mid Term', 24, 1, 1, 'E', 3, 'S', 'I', '2020', 12, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE IF NOT EXISTS `fees` (
  `id` int(11) NOT NULL,
  `votehead` varchar(20) NOT NULL,
  `term` varchar(4) NOT NULL,
  `class` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `year` varchar(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `votehead`, `term`, `class`, `amount`, `year`) VALUES
(1, 'Lunch Programme', 'I', 1, 5000, '2020'),
(2, 'Development', 'I', 1, 5000, '2020'),
(3, 'Lunch Programme', 'I', 4, 1500, '2020'),
(4, 'Games', 'I', 4, 500, '2020'),
(5, 'PTA', 'I', 4, 2000, '2020'),
(6, 'Development', 'I', 4, 3500, '2020'),
(7, 'Tution', 'I', 4, 5000, '2020');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL,
  `subCat` varchar(20) NOT NULL,
  `Min` int(11) NOT NULL,
  `Max` int(11) NOT NULL,
  `Notation` varchar(2) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `subCat`, `Min`, `Max`, `Notation`, `status`) VALUES
(1, 'LANGUAGES', 1, 29, 'E', 1),
(2, 'LANGUAGES', 30, 34, 'D-', 1),
(3, 'LANGUAGES', 35, 39, 'D', 1),
(4, 'LANGUAGES', 40, 44, 'D+', 1),
(5, 'LANGUAGES', 45, 49, 'C-', 1),
(6, 'LANGUAGES', 50, 54, 'C', 1),
(7, 'LANGUAGES', 55, 59, 'C+', 1),
(8, 'LANGUAGES', 60, 64, 'B-', 1),
(9, 'LANGUAGES', 65, 69, 'B', 1),
(10, 'LANGUAGES', 70, 74, 'B+', 1),
(11, 'LANGUAGES', 75, 79, 'A-', 1),
(12, 'LANGUAGES', 80, 100, 'A', 1),
(13, 'MATHEMATICS', 1, 29, 'E', 1),
(14, 'MATHEMATICS', 30, 34, 'D-', 1),
(15, 'MATHEMATICS', 35, 39, 'D', 1),
(16, 'MATHEMATICS', 40, 44, 'D+', 1),
(17, 'MATHEMATICS', 45, 49, 'C-', 1),
(18, 'MATHEMATICS', 50, 54, 'C', 1),
(19, 'MATHEMATICS', 55, 59, 'C+', 1),
(20, 'MATHEMATICS', 60, 64, 'B-', 1),
(21, 'MATHEMATICS', 65, 69, 'B', 1),
(22, 'MATHEMATICS', 70, 74, 'B+', 1),
(23, 'MATHEMATICS', 75, 79, 'A-', 1),
(24, 'MATHEMATICS', 80, 100, 'A', 1),
(25, 'SCIENCES', 1, 29, 'E', 1),
(26, 'SCIENCES', 30, 34, 'D-', 1),
(27, 'SCIENCES', 35, 39, 'D', 1),
(28, 'SCIENCES', 40, 44, 'D+', 1),
(29, 'SCIENCES', 45, 49, 'C-', 1),
(30, 'SCIENCES', 50, 54, 'C', 1),
(31, 'SCIENCES', 55, 59, 'C+', 1),
(32, 'SCIENCES', 60, 64, 'B-', 1),
(33, 'SCIENCES', 65, 69, 'B', 1),
(34, 'SCIENCES', 70, 74, 'B+', 1),
(35, 'SCIENCES', 75, 79, 'A-', 1),
(36, 'SCIENCES', 80, 100, 'A', 1),
(37, 'HUMANITIES', 1, 29, 'E', 1),
(38, 'HUMANITIES', 30, 34, 'D-', 1),
(39, 'HUMANITIES', 35, 39, 'D', 1),
(40, 'HUMANITIES', 40, 44, 'D+', 1),
(41, 'HUMANITIES', 45, 49, 'C-', 1),
(42, 'HUMANITIES', 50, 54, 'C', 1),
(43, 'HUMANITIES', 55, 59, 'C+', 1),
(44, 'HUMANITIES', 60, 64, 'B-', 1),
(45, 'HUMANITIES', 65, 69, 'B', 1),
(46, 'HUMANITIES', 70, 74, 'B+', 1),
(47, 'HUMANITIES', 75, 79, 'A-', 1),
(48, 'HUMANITIES', 80, 100, 'A', 1),
(49, 'TECHNICALS', 1, 29, 'E', 1),
(50, 'TECHNICALS', 30, 34, 'D-', 1),
(51, 'TECHNICALS', 35, 39, 'D', 1),
(52, 'TECHNICALS', 40, 44, 'D+', 1),
(53, 'TECHNICALS', 45, 49, 'C-', 1),
(54, 'TECHNICALS', 50, 54, 'C', 1),
(55, 'TECHNICALS', 55, 59, 'C+', 1),
(56, 'TECHNICALS', 60, 64, 'B-', 1),
(57, 'TECHNICALS', 65, 69, 'B', 1),
(58, 'TECHNICALS', 70, 74, 'B+', 1),
(59, 'TECHNICALS', 75, 79, 'A-', 1),
(60, 'TECHNICALS', 80, 100, 'A', 1);

-- --------------------------------------------------------

--
-- Table structure for table `isavposted`
--

CREATE TABLE IF NOT EXISTS `isavposted` (
  `id` int(11) NOT NULL,
  `exam` varchar(50) NOT NULL,
  `class` varchar(2) NOT NULL,
  `year` varchar(4) NOT NULL,
  `term` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `maintenance`
--

CREATE TABLE IF NOT EXISTS `maintenance` (
  `id` int(11) NOT NULL,
  `Descr` text NOT NULL,
  `Amount` int(11) NOT NULL,
  `Dater` varchar(15) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `DateA` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maintenance`
--

INSERT INTO `maintenance` (`id`, `Descr`, `Amount`, `Dater`, `status`, `DateA`) VALUES
(1, 'for food', 15000000, '2020-Feb-27', 0, '2020-Feb-27');

-- --------------------------------------------------------

--
-- Table structure for table `nextsession`
--

CREATE TABLE IF NOT EXISTS `nextsession` (
  `id` int(11) NOT NULL,
  `term` varchar(3) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nextsession`
--

INSERT INTO `nextsession` (`id`, `term`) VALUES
(1, 'I');

-- --------------------------------------------------------

--
-- Table structure for table `nextterm`
--

CREATE TABLE IF NOT EXISTS `nextterm` (
  `id` int(11) NOT NULL,
  `Amout` int(11) NOT NULL,
  `Class` int(11) NOT NULL,
  `Term` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nexttermfees`
--

CREATE TABLE IF NOT EXISTS `nexttermfees` (
  `id` int(11) NOT NULL,
  `votehead` varchar(30) NOT NULL,
  `term` varchar(3) NOT NULL,
  `class` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nexttermfees`
--

INSERT INTO `nexttermfees` (`id`, `votehead`, `term`, `class`, `amount`, `year`) VALUES
(6, 'Lunch Programme', 'I', 1, 8000, 2019),
(7, 'Lunch Programme', 'I', 2, 8000, 2019),
(8, 'Lunch Programme', 'I', 3, 8000, 2019),
(9, 'Lunch Programme', 'I', 4, 8000, 2019),
(10, 'Lunch Programme', 'II', 2, 90000, 2019),
(11, 'Lunch Programme', 'II', 1, 9000, 2019),
(12, 'Games', 'I', 3, 9000, 2019),
(13, 'Lunch Programme', 'I', 1, 5000, 2020),
(14, 'Development', 'I', 1, 5000, 2020),
(15, 'Lunch Programme', 'I', 4, 1500, 2020),
(16, 'Games', 'I', 4, 500, 2020),
(17, 'PTA', 'I', 4, 2000, 2020),
(18, 'Development', 'I', 4, 3500, 2020),
(19, 'Tution', 'I', 4, 5000, 2020);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL,
  `studentReg` varchar(10) NOT NULL,
  `term` varchar(4) NOT NULL,
  `Amount` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `mode` varchar(20) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Year` int(11) NOT NULL,
  `receiptNumber` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `studentReg`, `term`, `Amount`, `class`, `mode`, `Date`, `Year`, `receiptNumber`) VALUES
(1, '499', 'I', 5000, 1, 'Cash', '2020-Jan-13', 2020, '1501'),
(2, '499', 'I', 1000, 1, 'Cash', '2020-Jan-13', 2020, '1502'),
(3, '4387', 'I', 12000, 3, 'Cheque', '2020-Feb-27', 2020, '1503');

-- --------------------------------------------------------

--
-- Table structure for table `prole`
--

CREATE TABLE IF NOT EXISTS `prole` (
  `id` int(11) NOT NULL,
  `prole` varchar(40) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prole`
--

INSERT INTO `prole` (`id`, `prole`, `status`) VALUES
(1, 'Chair PTA', 1),
(2, 'pta ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `sName` varchar(100) NOT NULL,
  `Image` varchar(100) NOT NULL DEFAULT '0',
  `Phone` int(15) NOT NULL,
  `pBox` int(11) NOT NULL,
  `pCode` int(11) NOT NULL,
  `pCity` varchar(25) NOT NULL,
  `bName` varchar(30) NOT NULL DEFAULT '-',
  `aNumber` varchar(20) NOT NULL DEFAULT '-',
  `sReceipt` varchar(20) NOT NULL,
  `dWatermark` int(11) NOT NULL DEFAULT '0',
  `cDate` varchar(10) NOT NULL DEFAULT '2020-05-07'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `sName`, `Image`, `Phone`, `pBox`, `pCode`, `pCity`, `bName`, `aNumber`, `sReceipt`, `dWatermark`, `cDate`) VALUES
(1, 'Shamata Girls High School', 'logo.jpg', 723122809, 8, 20304, 'Kaheho', 'Equity ', '7778765650103', '1501', 1, '2020-01-06');

-- --------------------------------------------------------

--
-- Table structure for table `stream`
--

CREATE TABLE IF NOT EXISTS `stream` (
  `id` int(11) NOT NULL,
  `streamName` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stream`
--

INSERT INTO `stream` (`id`, `streamName`, `status`) VALUES
(1, 'M', '1'),
(2, 'J', '1'),
(3, 'S', '1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL,
  `names` varchar(60) NOT NULL,
  `parent` varchar(50) NOT NULL,
  `class` varchar(15) NOT NULL,
  `stream` varchar(10) NOT NULL,
  `regNo` varchar(10) NOT NULL,
  `KCPE` varchar(3) NOT NULL DEFAULT '--',
  `Birthday` varchar(10) NOT NULL,
  `Year` varchar(5) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `dorm` varchar(15) NOT NULL,
  `photo` varchar(15) NOT NULL,
  `fees` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL,
  `subjectName` varchar(40) NOT NULL,
  `subjectCode` int(4) NOT NULL,
  `subjectAbbr` varchar(10) NOT NULL,
  `subCategory` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subjectName`, `subjectCode`, `subjectAbbr`, `subCategory`, `status`) VALUES
(1, 'English', 101, 'ENG', 'LANGUAGES', 1),
(2, 'Kiswahili', 102, 'KIS', 'LANGUAGES', 1),
(3, 'Mathematics', 121, 'MAT', 'MATHEMATICS', 1),
(4, 'Biology', 231, 'BIO', 'SCIENCES', 1),
(5, 'Physic', 232, 'PHYC', 'SCIENCES', 1),
(6, 'Chemistry', 233, 'CHEM', 'SCIENCES', 1),
(7, 'History', 311, 'HIS', 'HUMANITIES', 1),
(9, 'CRE', 313, 'CRE', 'HUMANITIES', 1),
(10, 'Agriculture', 443, 'AGRIC', 'TECHNICALS', 1),
(11, 'Business Studies', 565, 'BST', 'TECHNICALS', 1),
(12, 'Computer', 651, 'Comp', 'Technicals', 1),
(13, 'geography', 411, 'geo', 'Humanities', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subjectteachers`
--

CREATE TABLE IF NOT EXISTS `subjectteachers` (
  `id` int(11) NOT NULL,
  `teacherName` varchar(20) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `class` int(2) NOT NULL,
  `stream` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjectteachers`
--

INSERT INTO `subjectteachers` (`id`, `teacherName`, `Subject`, `class`, `stream`, `status`) VALUES
(4, 'Adipo Domnic', 'Physic', 4, 'N', 0),
(5, 'Adipo Domnic', 'Physic', 2, 'East', 1),
(6, 'Adipo Domnic', 'Physic', 2, 'West', 1),
(7, 'Kosgei Gilbert', 'Kiswahili', 1, 'West', 1),
(8, 'Kosgei Gilbert', 'Kiswahili', 2, 'East', 1),
(9, 'Kosgei Gilbert', 'Geography', 1, 'East', 1),
(10, 'Kosgei Gilbert', 'Geography', 1, 'West', 1),
(11, 'Okech Fredrick', 'Biology', 1, 'East', 1),
(12, 'Okech Fredrick', 'Biology', 3, 'N', 1),
(13, 'Okech Fredrick', 'Chemistry', 3, 'N', 1),
(14, 'Okech Fredrick', 'Chemistry', 1, 'West', 1),
(15, 'Awiti Sylvanus', 'Mathematics', 1, 'West', 1),
(16, 'Awiti Sylvanus', 'Chemistry', 2, 'West', 1),
(17, 'Awiti Sylvanus', 'Physic', 1, 'East', 1),
(18, 'Awiti Sylvanus', 'Physic', 1, 'West', 1),
(19, 'Otieno Alphonce', 'English', 3, 'N', 1),
(20, 'Otieno Alphonce', 'English', 2, 'West', 1),
(21, 'Agutu John', 'Mathematics', 1, 'East', 1),
(22, 'Agutu John', 'Mathematics', 2, 'East', 1),
(23, 'Agutu John', 'Mathematics', 3, 'N', 1),
(24, 'Aketch Erick', 'Mathematics', 2, 'West', 1),
(25, 'Aketch Erick', 'Business Studies', 1, 'East', 1),
(26, 'Aketch Erick', 'Business Studies', 1, 'West', 1),
(27, 'Aketch Erick', 'Business Studies', 2, 'East', 1),
(28, 'Aketch Erick', 'Business Studies', 3, 'N', 1),
(29, 'Lumumba Susan', 'History', 1, 'West', 1),
(30, 'Lumumba Susan', 'CRE', 1, 'East', 1),
(31, 'Lumumba Susan', 'CRE', 2, 'East', 1),
(32, 'Lumumba Susan', 'CRE', 2, 'West', 1),
(33, 'Lumumba Susan', 'CRE', 3, 'N', 1),
(34, 'Agenga Meshack', 'History', 1, 'East', 1),
(35, 'Agenga Meshack', 'History', 2, 'West', 1),
(36, 'Agenga Meshack', 'History', 2, 'West', 1),
(37, 'Meshack', 'Biology', 2, 'West', 1),
(38, 'Meshack', 'Chemistry', 1, 'East', 1),
(39, 'Meshack', 'Chemistry', 2, 'East', 1),
(40, 'Akinyi Quinter', 'CRE', 1, 'West', 1),
(41, 'Akinyi Quinter', 'Kiswahili', 3, 'N', 1),
(42, 'Akinyi Quinter', 'Kiswahili', 2, 'West', 1),
(43, 'Akinyi Quinter', 'Kiswahili', 1, 'East', 1),
(44, 'Kembe Charles', 'English', 1, 'East', 1),
(45, 'Kembe Charles', 'English', 1, 'West', 1),
(46, 'Kembe Charles', 'English', 2, 'East', 1),
(47, 'Adhola Stephen', 'Biology', 1, 'West', 1),
(48, 'Adhola Stephen', 'Biology', 2, 'East', 1),
(49, 'Adhola Stephen', 'Agriculture', 1, 'East', 1),
(50, 'Adhola Stephen', 'Agriculture', 2, 'West', 1),
(52, 'Aketch Erick', 'Business Studies', 4, 'N', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `id` int(11) NOT NULL,
  `names` varchar(75) NOT NULL,
  `Initial` varchar(10) NOT NULL DEFAULT 'NN',
  `email` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `bdate` varchar(20) NOT NULL,
  `empNumber` varchar(20) NOT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `department` varchar(20) NOT NULL,
  `major` varchar(20) NOT NULL,
  `minor` varchar(20) NOT NULL,
  `academicLevel` varchar(20) NOT NULL,
  `salary` int(7) NOT NULL,
  `health` varchar(3) NOT NULL,
  `password` varchar(72) NOT NULL,
  `empType` varchar(20) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `kraPin` varchar(20) NOT NULL,
  `idNumber` int(8) NOT NULL,
  `previousEmployer` varchar(20) NOT NULL,
  `passportName` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `empDate` varchar(20) NOT NULL,
  `role` varchar(20) NOT NULL,
  `roled` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `names`, `Initial`, `email`, `gender`, `bdate`, `empNumber`, `designation`, `department`, `major`, `minor`, `academicLevel`, `salary`, `health`, `password`, `empType`, `nationality`, `phone`, `kraPin`, `idNumber`, `previousEmployer`, `passportName`, `status`, `empDate`, `role`, `roled`) VALUES
(1, 'default Parent', 'NN', 'noemail@email.com', 'Male', '', '', NULL, '', '', '', 'Bachelors', 0, 'No', '', '', 'Kenyan', 33, '', 0, '', '', 0, '20-Jan-09', 'Parent', 0),
(2, 'sample parent ', 'NN', 'sample@email.com', 'Male', '', '', NULL, '', '', '', 'Bachelors', 0, 'No', '', '', 'Kenyan', 704922942, '', 0, '', '', 0, '20-Jan-13', 'Parent', 0),
(3, 'jane mburu', 'jm', 'mburujmburu7@gmail.com', 'Female', '', '098765', 'hod technicals', 'Technicals', 'History', 'Computer', 'masters', 300000, 'No', '603011e54ca13fc16988f28465b5ee885f188f27', 'Contractual', 'kenyan', 75683946, '3563f45', 246899, 'margaret kuria wanji', 'default.png', 0, '20-Feb-27', 'teacher', 0),
(4, 'magaret wanjiru', 'NN', 'mwk@gmai.com', 'Female', '', '', 'Chair PTA', '', '', '', 'degree', 0, 'No', '', '', 'kenyan', 864466, '', 0, '', '', 1, '20-Feb-27', 'Parent', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `role` varchar(15) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `status`) VALUES
(3, 'admin', 'dd94709528bb1c83d08f3088d4043f4742891f4f', 'Administrator', 1),
(4, 'Erick Aketch', '0c57c5489f26820c675cc96a6e265248c06317af', 'teacher', 0),
(5, 'Kelvine Mugoa', 'c3029b14e7d93183c03c8cd7f24ef0b210f3cb68', 'teacher', 0),
(6, 'Erick Aketch', '0c57c5489f26820c675cc96a6e265248c06317af', 'teacher', 0),
(7, 'Erick Aketch', '0c57c5489f26820c675cc96a6e265248c06317af', 'teacher', 1),
(8, 'Erick Aketch', '0c57c5489f26820c675cc96a6e265248c06317af', 'teacher', 1),
(9, 'Erick Aketch', '0c57c5489f26820c675cc96a6e265248c06317af', 'teacher', 0),
(10, 'Erick Aketch', '0c57c5489f26820c675cc96a6e265248c06317af', 'teacher', 0),
(11, 'Adipo Domnic', 'f8a0aa81088d61e01f634416fd00f5d776ec02a4', 'teacher', 1),
(12, 'Agenga Meshack', '184ec1979485b7b957ef983380b5101e931382c8', 'teacher', 0),
(13, 'Okech Fredrick', '9527e5d8b849725dca457c22419afe550f07b513', 'teacher', 1),
(14, 'Otieno Alphonce', '9a929adfe344d6684f790a0af224c5cedcce835b', 'teacher', 0),
(15, 'Aketch Erick', '88e29eb58697bdc50103db5f74aa7d6804ed2906', 'teacher', 0),
(16, 'Akinyi Quinter', '8610da47cd85177fae51d64db75a4ce7768bb324', 'teacher', 0),
(17, 'Kembe Charles', '91da7f9acf67c3921a4f48cc1a549ec52b9629c1', 'teacher', 0),
(18, 'Adhola Stephen', '602737f5ebd61ec04d4f2e965a37bba3e574d8d5', 'teacher', 0),
(19, 'Kosgei Gilbert', 'a7247817adee717711b7d49ab29696e273fc897b', 'teacher', 0),
(20, 'Agutu John', 'ce1caf520f341a2dbf324de384aca402eb8069ff', 'teacher', 0),
(21, 'Lumumba Susan', 'ecd851eddf750d2b4cadc1766da74c63fa410cf7', 'teacher', 0),
(22, 'Meshack', '085c46160fa2c3db5b9455a18bfc7f175ef538ae', 'teacher', 0),
(23, 'Awiti Sylvanus', '00b9c33af6cd852e68ce827a37138d7f8b69389e', 'teacher', 0),
(24, 'Alseba Ndwara', 'e56809e62a35c8e57c2c4b408b1c82bfce123e54', 'Accountant', 0),
(25, 'john doe', '6f4d061ff1d462a96eb1936a7d92a25e7d79ec02', 'teacher', 0),
(26, 'john doe', '69fb0da5a951d4545116f922cdb338bfa17fd116', 'teacher', 0),
(27, 'john doe', '343e3aaea9ff882f4d9fbc2b8b93ced8fbb24f36', 'Accountant', 0),
(28, 'john doe', '76d5f997ccf19207c56579ee4ecc0d6f82d99b4a', 'Librarian', 0),
(29, 'james  maina ', '749f3c1d16287bc1b394577b5d42eccc928e1047', 'teacher', 0),
(30, 'jane mburu', 'bceb56a9b6cd9c5f623a7f601d7b3741344401b8', 'teacher', 1);

-- --------------------------------------------------------

--
-- Table structure for table `votehead`
--

CREATE TABLE IF NOT EXISTS `votehead` (
  `id` int(11) NOT NULL,
  `voteHead` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `votehead`
--

INSERT INTO `votehead` (`id`, `voteHead`, `status`) VALUES
(2, 'Lunch Programme', 1),
(3, 'Games ', 1),
(4, 'PTA', 1),
(5, 'Development', 1),
(6, 'Tution', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `averageresults`
--
ALTER TABLE `averageresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `averagetotals`
--
ALTER TABLE `averagetotals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catresults`
--
ALTER TABLE `catresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catsubject`
--
ALTER TABLE `catsubject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cattotals`
--
ALTER TABLE `cattotals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `form` (`form`);

--
-- Indexes for table `classmeans`
--
ALTER TABLE `classmeans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clubName` (`clubName`);

--
-- Indexes for table `clubsmembers`
--
ALTER TABLE `clubsmembers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currentsession`
--
ALTER TABLE `currentsession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `department` (`department`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `designation` (`designation`);

--
-- Indexes for table `dorm`
--
ALTER TABLE `dorm`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dormName` (`dormName`);

--
-- Indexes for table `eresults`
--
ALTER TABLE `eresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinations`
--
ALTER TABLE `examinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examresults`
--
ALTER TABLE `examresults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examtotals`
--
ALTER TABLE `examtotals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isavposted`
--
ALTER TABLE `isavposted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenance`
--
ALTER TABLE `maintenance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nextsession`
--
ALTER TABLE `nextsession`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nextterm`
--
ALTER TABLE `nextterm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nexttermfees`
--
ALTER TABLE `nexttermfees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prole`
--
ALTER TABLE `prole`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prole` (`prole`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subjectName` (`subjectName`),
  ADD KEY `subjectCode` (`subjectCode`);

--
-- Indexes for table `subjectteachers`
--
ALTER TABLE `subjectteachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `names` (`names`,`empNumber`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indexes for table `votehead`
--
ALTER TABLE `votehead`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `averageresults`
--
ALTER TABLE `averageresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `averagetotals`
--
ALTER TABLE `averagetotals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `catresults`
--
ALTER TABLE `catresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `catsubject`
--
ALTER TABLE `catsubject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cattotals`
--
ALTER TABLE `cattotals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `classmeans`
--
ALTER TABLE `classmeans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clubsmembers`
--
ALTER TABLE `clubsmembers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currentsession`
--
ALTER TABLE `currentsession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dorm`
--
ALTER TABLE `dorm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eresults`
--
ALTER TABLE `eresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `examinations`
--
ALTER TABLE `examinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `examresults`
--
ALTER TABLE `examresults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=775;
--
-- AUTO_INCREMENT for table `examtotals`
--
ALTER TABLE `examtotals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `isavposted`
--
ALTER TABLE `isavposted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `maintenance`
--
ALTER TABLE `maintenance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nextsession`
--
ALTER TABLE `nextsession`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nextterm`
--
ALTER TABLE `nextterm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nexttermfees`
--
ALTER TABLE `nexttermfees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `prole`
--
ALTER TABLE `prole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stream`
--
ALTER TABLE `stream`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `subjectteachers`
--
ALTER TABLE `subjectteachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `votehead`
--
ALTER TABLE `votehead`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
