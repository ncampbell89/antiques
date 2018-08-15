-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2018 at 05:14 PM
-- Server version: 5.6.36
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antiques`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'Furniture'),
(2, ''),
(3, 'Mask'),
(4, 'kjh'),
(5, 'Doors'),
(6, 'Door');

-- --------------------------------------------------------

--
-- Table structure for table `compositions`
--

CREATE TABLE IF NOT EXISTS `compositions` (
  `compositionID` int(11) NOT NULL,
  `materialName` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compositions`
--

INSERT INTO `compositions` (`compositionID`, `materialName`) VALUES
(1, 'Wood'),
(2, ''),
(3, ''),
(4, ''),
(5, ''),
(6, ''),
(7, ''),
(8, 'Gold'),
(9, 'Silver'),
(10, 'Dark Wood');

-- --------------------------------------------------------

--
-- Table structure for table `dimensions`
--

CREATE TABLE IF NOT EXISTS `dimensions` (
  `itemID` int(11) NOT NULL,
  `width` decimal(11,2) NOT NULL,
  `height` decimal(11,2) NOT NULL,
  `depth` decimal(11,2) NOT NULL,
  `weight` decimal(11,2) NOT NULL,
  `dimensionsDesc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensions`
--

INSERT INTO `dimensions` (`itemID`, `width`, `height`, `depth`, `weight`, `dimensionsDesc`) VALUES
(3, 80.75, 24.00, 2.50, 42.00, '79.5 in. H x 24.25 in. W x 1.75 in. D');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `imageID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `imageName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `itemID` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `isAvailable` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `year` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `compositionID` int(11) NOT NULL,
  `originID` int(11) NOT NULL,
  `mainImageID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemID`, `title`, `isAvailable`, `description`, `price`, `year`, `categoryID`, `compositionID`, `originID`, `mainImageID`) VALUES
(1, 'Victorian Wooden Full Size Headboard Set', 0, 'Dark wood tone Victorian style headboard and footboard set with ornate details.', 950.56, 1753, 1, 1, 1, 0),
(2, 'Victorian Wooden Full Size Headboard Set', 0, 'Dark wood tone Victorian style headboard and footboard set with ornate details.', 950.55, 1754, 2, 2, 2, 0),
(3, 'Dark Wood Tone Antique Door', 1, 'Antique dark wood tone wood door with two small vertical panels and two long vertical panels. One available.', 195.00, 1923, 6, 10, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `origins`
--

CREATE TABLE IF NOT EXISTS `origins` (
  `originID` int(11) NOT NULL,
  `place` varchar(255) NOT NULL,
  `era` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `origins`
--

INSERT INTO `origins` (`originID`, `place`, `era`) VALUES
(1, 'Great Britain', 'Victorian'),
(2, 'China', 'Ming Dinasty'),
(3, '', ''),
(4, '', ''),
(5, '', ''),
(6, '', ''),
(7, 'Europe', 'Post War'),
(8, 'Somewhere', 'Sometime');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `compositions`
--
ALTER TABLE `compositions`
  ADD PRIMARY KEY (`compositionID`);

--
-- Indexes for table `dimensions`
--
ALTER TABLE `dimensions`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`imageID`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemID`);

--
-- Indexes for table `origins`
--
ALTER TABLE `origins`
  ADD PRIMARY KEY (`originID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `compositions`
--
ALTER TABLE `compositions`
  MODIFY `compositionID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `imageID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `origins`
--
ALTER TABLE `origins`
  MODIFY `originID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
