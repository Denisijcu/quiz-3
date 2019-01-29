-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 29, 2019 at 12:57 AM
-- Server version: 5.7.19
-- PHP Version: 7.0.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `criminal-cases`
--

-- --------------------------------------------------------

--
-- Table structure for table `bodybuild`
--

DROP TABLE IF EXISTS `bodybuild`;
CREATE TABLE IF NOT EXISTS `bodybuild` (
  `id` int(11) NOT NULL,
  `description` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crimes`
--

DROP TABLE IF EXISTS `crimes`;
CREATE TABLE IF NOT EXISTS `crimes` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `crime` varchar(255) NOT NULL,
  `id_infractor` int(10) NOT NULL,
  `date_arrested` date NOT NULL,
  `arresting_officer` int(10) NOT NULL,
  `place_of_arrest` varchar(100) NOT NULL,
  `notes` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_infractor` (`id_infractor`),
  KEY `arresting_officer` (`arresting_officer`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `infractors`
--

DROP TABLE IF EXISTS `infractors`;
CREATE TABLE IF NOT EXISTS `infractors` (
  `id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `eye_color` varchar(25) NOT NULL,
  `eye_hair` varchar(25) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `residence` varchar(100) NOT NULL,
  `idbuildbody` tinyint(2) NOT NULL,
  `ocupation` varchar(100) NOT NULL,
  `right_thumb` varchar(100) NOT NULL,
  `left_thumb` varchar(100) NOT NULL,
  `imagesUrl` varchar(100) NOT NULL,
  `signatureUrl` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `idbuildbody` (`idbuildbody`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `officers`
--

DROP TABLE IF EXISTS `officers`;
CREATE TABLE IF NOT EXISTS `officers` (
  `id` int(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `range_prof` varchar(25) NOT NULL,
  `district` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

DROP TABLE IF EXISTS `records`;
CREATE TABLE IF NOT EXISTS `records` (
  `id` int(10) NOT NULL,
  `infractorId` int(10) NOT NULL,
  `crimeId` int(10) NOT NULL,
  `description` varchar(250) NOT NULL,
  `officer_id` int(10) NOT NULL,
  `crime_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `infractorId` (`infractorId`),
  KEY `crimeId` (`crimeId`),
  KEY `officer_id` (`officer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
