-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2020 at 12:24 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `deleted_records`
--

CREATE TABLE `deleted_records` (
  `USER` varchar(20) NOT NULL,
  `RECORD` varchar(30) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `MONTH` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deleted_records`
--

INSERT INTO `deleted_records` (`USER`, `RECORD`, `YEAR`, `MONTH`) VALUES
('jay', 'rainfall_records', 2018, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `external_conditions`
--

CREATE TABLE `external_conditions` (
  `YEAR` double NOT NULL,
  `MONTH` varchar(100) NOT NULL,
  `VISIBILITY` double DEFAULT NULL,
  `AVG_WIND_SPEED` double DEFAULT NULL,
  `MAX_WIND_SPEED` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `external_conditions`
--

INSERT INTO `external_conditions` (`YEAR`, `MONTH`, `VISIBILITY`, `AVG_WIND_SPEED`, `MAX_WIND_SPEED`) VALUES
(2001, 'April', 6.5, 4.5, 9.3),
(2001, 'August', 6.6, 7.3, 11.7),
(2001, 'December', 7.8, 6, 5.2),
(2001, 'February', 6.4, 4, 8),
(2001, 'January', 6.1, 6.4, 10),
(2001, 'July', 6.7, 10.3, 15.4),
(2001, 'June', 7, 11.5, 16.5),
(2001, 'March', 5.9, 4.6, 9.4),
(2001, 'May', 6.5, 8.3, 13.8),
(2001, 'November', 6.5, 3.6, 7.4),
(2001, 'October', 6.2, 3.8, 7.6),
(2001, 'September', 6.6, 3.6, 8.1),
(2002, 'April', 6.5, 5.4, 10.2),
(2002, 'August', 6.5, 8.3, 12.5),
(2002, 'December', 5.9, 4.6, 8.2),
(2002, 'February', 6, 5.3, 10.2),
(2002, 'January', 6.1, 4.6, 7.8),
(2002, 'July', 6.7, 9.4, 13.4),
(2002, 'June', 6.8, 9.4, 14.2),
(2002, 'March', 6.2, 4.9, 9.8),
(2002, 'May', 6.9, 8.7, 14.3),
(2002, 'November', 6.2, 3.9, 7.3),
(2002, 'October', 6.9, 4.2, 8.3),
(2002, 'September', 6.7, 4.4, 10.6),
(2003, 'April', 6.7, 3.6, 8.4),
(2003, 'August', 6.4, 6.5, 9.8),
(2003, 'December', 5.9, 5.5, 10.6),
(2003, 'February', 6.6, 5.5, 10.2),
(2003, 'January', 6.3, 6.3, 10.4),
(2003, 'July', 6.6, 7, 11.1),
(2003, 'June', 6.9, 8.3, 12.8),
(2003, 'March', 6.8, 4.8, 9.6),
(2003, 'May', 6.8, 6.2, 10.8),
(2003, 'November', 6, 7.5, 12),
(2003, 'October', 5.8, 4.2, 7.7),
(2003, 'September', 6.6, 5.4, 10.2),
(2004, 'April', 6.6, 4.3, 9.5),
(2004, 'August', 6, 10.9, 15.3),
(2004, 'December', 6.2, 7, 11.9),
(2004, 'February', 6.4, 5, 10.3),
(2004, 'January', 6.2, 5.1, 10.4),
(2004, 'July', 5.7, 8.8, 13.7),
(2004, 'June', 6.3, 11.5, 17.9),
(2004, 'March', 6.2, 4.4, 10.4),
(2004, 'May', 5.9, 7.6, 13.6),
(2004, 'November', 5.9, 7.6, 11.7),
(2004, 'October', 6.1, 6.1, 10.1),
(2004, 'September', 6.2, 5.8, 9.7),
(2005, 'April', 6.4, 4.9, 10),
(2005, 'August', 6.5, 8.8, 13.2),
(2005, 'December', 6.2, 4.5, 7.6),
(2005, 'February', 6.6, 6.6, 10.8),
(2005, 'January', 6.2, 6.6, 12.9),
(2005, 'July', 6.4, 11.8, 18.7),
(2005, 'June', 6.6, 13, 18.5),
(2005, 'March', 6.5, 4.9, 8.7),
(2005, 'May', 6.7, 6.3, 12.1),
(2005, 'November', 6, 5, 8.5),
(2005, 'October', 5.9, 3, 7),
(2005, 'September', 6.4, 7.1, 11.2),
(2006, 'April', 7, 4, 9.4),
(2006, 'August', 6.7, 9, 13.4),
(2006, 'December', 6.1, 6.6, 10.5),
(2006, 'February', 6.5, 4.8, 9.8),
(2006, 'January', 6.4, 5, 8.7),
(2006, 'July', 6.7, 11.2, 15.7),
(2006, 'June', 6.7, 7.9, 11.7),
(2006, 'March', 6.2, 4.2, 8.1),
(2006, 'May', 6.7, 6.2, 11.4),
(2006, 'November', 6.4, 5.8, 10.6),
(2006, 'October', 6.6, 5.9, 9.9),
(2006, 'September', 6.9, 7.7, 11.7),
(2007, 'April', 6.4, 3.1, 6.4),
(2007, 'August', 6.5, 7.9, 11.4),
(2007, 'December', 5.8, 6.2, 10.1),
(2007, 'February', 6.8, 5.2, 8.3),
(2007, 'January', 5.9, 5.4, 8.8),
(2007, 'July', 6.6, 8.9, 13),
(2007, 'June', 6.7, 8.7, 14.4),
(2007, 'March', 6.7, 3.9, 8.6),
(2007, 'May', 6.7, 5.9, 11.3),
(2007, 'November', 6.6, 4.8, 8.9),
(2007, 'October', 6.8, 4.1, 9.3),
(2007, 'September', 6.5, 7.3, 12.3),
(2008, 'April', 6.4, 5, 8.4),
(2008, 'August', 5.6, 6.8, 11.8),
(2008, 'December', 7.2, 4.1, 7.3),
(2008, 'February', 6.5, 6.1, 10.1),
(2008, 'January', 6.1, 5.4, 9.3),
(2008, 'July', 6.3, 7.3, 11.1),
(2008, 'June', 6.2, 9.9, 15.6),
(2008, 'March', 6.2, 6.2, 10.3),
(2008, 'May', 6.4, 6.3, 10.4),
(2008, 'November', 6.4, 3.9, 8.5),
(2008, 'October', 5.8, 3, 5.9),
(2008, 'September', 6.3, 5.3, 8.6),
(2009, 'April', 6.4, 4, 5.7),
(2009, 'August', 6.1, 6.5, 9.1),
(2009, 'December', 6.1, 3.8, 5.7),
(2009, 'February', 6.5, 4.4, 7.8),
(2009, 'January', 6.4, 5.3, 8.9),
(2009, 'July', 6, 10, 13.3),
(2009, 'June', 6.5, 7.3, 11.7),
(2009, 'March', 6.1, 3.1, 9.1),
(2009, 'May', 6.6, 4.8, 10.9),
(2009, 'November', 5.9, 3, 6.1),
(2009, 'October', 6.3, 3.3, 12.6),
(2009, 'September', 5.9, 4.4, 11.9),
(2010, 'April', 7.3, 2.2, 3.9),
(2010, 'August', 5.4, 7, 10.6),
(2010, 'December', 5.8, 4, 7.2),
(2010, 'February', 6.6, 3.6, 7.4),
(2010, 'January', 6.1, 3.3, 5.7),
(2010, 'July', 6.2, 8.4, 18.7),
(2010, 'June', 6.5, 6.8, 11.3),
(2010, 'March', 7.1, 2.3, 4.6),
(2010, 'May', 7, 4.3, 8.1),
(2010, 'November', 5.5, 3, 7.6),
(2010, 'October', 5.6, 4.6, 7.6),
(2010, 'September', 5.6, 6.2, 11.7),
(2011, 'April', 7, 3.6, 6.3),
(2011, 'August', 6, 7.4, 11.5),
(2011, 'December', 6.2, 3.9, 7),
(2011, 'February', 7.1, 4.6, 7.6),
(2011, 'January', 6.9, 4.3, 7.4),
(2011, 'July', 6.4, 9.4, 13.5),
(2011, 'June', 6.5, 9, 13.1),
(2011, 'March', 7.5, 4.2, 7.6),
(2011, 'May', 6.9, 5.1, 7.4),
(2011, 'November', 5.9, 4.6, 10),
(2011, 'October', 6.5, 3.2, 5.9),
(2011, 'September', 6.9, 6.9, 10.9),
(2012, 'April', 6.7, 4, 6.1),
(2012, 'August', 6.3, 8, 13),
(2012, 'December', 6.3, 2.7, 8),
(2012, 'February', 6.8, 4.7, 7),
(2012, 'January', 6.4, 4.6, 6.9),
(2012, 'July', 6.4, 9.5, 15.2),
(2012, 'June', 6.9, 10.6, 19.8),
(2012, 'March', 6.8, 4.1, 7.6),
(2012, 'May', 6.7, 6.2, 10.7),
(2012, 'November', 6.1, 3, 6),
(2012, 'October', 6.2, 4.5, 8.5),
(2012, 'September', 6.7, 6.5, 11.3),
(2013, 'April', 7, 3.8, 5.9),
(2013, 'August', 6.5, 5.8, 9.8),
(2013, 'December', 6.6, 2.6, 4.4),
(2013, 'February', 6.7, 3.9, 5.9),
(2013, 'January', 6.9, 3.5, 5.4),
(2013, 'July', 6.5, 7, 11.7),
(2013, 'June', 6.6, 7.6, 12.4),
(2013, 'March', 6.8, 3.9, 5.6),
(2013, 'May', 6.8, 5.2, 7.4),
(2013, 'November', 6.5, 2.1, 5.2),
(2013, 'October', 6.6, 3.9, 7.8),
(2013, 'September', 6.8, 4.8, 8.3),
(2014, 'April', 7.1, 2.9, 4.3),
(2014, 'August', 6.5, 6, 9.4),
(2014, 'December', 2, 2.3, 4.1),
(2014, 'February', 6.8, 2.6, 5.4),
(2014, 'January', 6.8, 3.5, 5.9),
(2014, 'July', 6.9, 7.4, 11.1),
(2014, 'June', 7.2, 6.8, 10.6),
(2014, 'March', 6.9, 3.4, 5.7),
(2014, 'May', 7.2, 3.9, 5.2),
(2014, 'November', 6.5, 1.9, 3.9),
(2014, 'October', 6.9, 2.9, 5.6),
(2014, 'September', 7.1, 5.3, 9.1),
(2015, 'April', 6.8, 1.6, 4.1),
(2015, 'August', 6.7, 4.7, 7),
(2015, 'December', 6.4, 1.8, 3.1),
(2015, 'February', 6.6, 2.6, 5.2),
(2015, 'January', 6.7, 2.3, 4.8),
(2015, 'July', 6.4, 6.5, 10.4),
(2015, 'June', 6.6, 6.9, 12.2),
(2015, 'March', 6.8, 2.2, 3.9),
(2015, 'May', 6.6, 3.4, 8.3),
(2015, 'November', 5.6, 1.6, 3.9),
(2015, 'October', 6.6, 2.5, 7.2),
(2015, 'September', 6.6, 3.9, 9.4),
(2016, 'April', 7.1, 2.3, 5.7),
(2016, 'August', 6.9, 6.3, 9.8),
(2016, 'December', 6.1, 2.7, 5.7),
(2016, 'February', 6.6, 2, 5.7),
(2016, 'January', 6, 1.8, 3.1),
(2016, 'July', 6.4, 6.6, 11.7),
(2016, 'June', 6.7, 5.1, 8.3),
(2016, 'March', 6.7, 2.2, 4.4),
(2016, 'May', 6.8, 2.8, 5.9),
(2016, 'November', 6.7, 2.7, 5.6),
(2016, 'October', 6.5, 2.5, 5.2),
(2016, 'September', 6.8, 5.3, 7.6),
(2017, 'April', 6.9, 3.5, 4.8),
(2017, 'August', 6.6, 5.8, 9.1),
(2017, 'December', 6, 3.8, 7),
(2017, 'February', 6.7, 3, 4.3),
(2017, 'January', 6.3, 2.9, 5.2),
(2017, 'July', 6.8, 7.4, 11.1),
(2017, 'June', 6.8, 7.6, 11.9),
(2017, 'March', 6.9, 2.8, 3.9),
(2017, 'May', 6.9, 4.4, 11.1),
(2017, 'November', 6.3, 3.8, 6.7),
(2017, 'October', 6.2, 2.9, 6.5),
(2017, 'September', 6.6, 4.9, 11.7),
(2018, 'April', 7.1, 3.1, 7.2),
(2018, 'August', 6.4, 9.2, 13.1),
(2018, 'December', 6.2, 4.2, 7.2),
(2018, 'February', 6.9, 5, 7.4),
(2018, 'January', 6.3, 4.2, 7.2),
(2018, 'July', 7, 10.4, 14.8),
(2018, 'June', 6.7, 9.3, 12.8),
(2018, 'March', 7, 4, 7),
(2018, 'May', 6.8, 3.7, 10.4),
(2018, 'November', 6.2, 4.2, 8.1),
(2018, 'October', 6.5, 3.6, 6.3),
(2018, 'September', 6.5, 4.6, 9.1);

-- --------------------------------------------------------

--
-- Table structure for table `external_conditions_records`
--

CREATE TABLE `external_conditions_records` (
  `YEAR` double NOT NULL,
  `MONTH` varchar(100) NOT NULL,
  `WINDIEST_DAY` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `external_conditions_records`
--

INSERT INTO `external_conditions_records` (`YEAR`, `MONTH`, `WINDIEST_DAY`) VALUES
(2001, 'April', 10),
(2001, 'August', 18),
(2001, 'December', 27),
(2001, 'February', 14),
(2001, 'January', 15),
(2001, 'July', 8),
(2001, 'June', 13),
(2001, 'March', 3),
(2001, 'May', 25),
(2001, 'November', 20),
(2001, 'October', 16),
(2001, 'September', 1),
(2002, 'April', 11),
(2002, 'August', 10),
(2002, 'December', 7),
(2002, 'February', 5),
(2002, 'January', 2),
(2002, 'July', 27),
(2002, 'June', 25),
(2002, 'March', 13),
(2002, 'May', 18),
(2002, 'November', 19),
(2002, 'October', 12),
(2002, 'September', 2),
(2003, 'April', 7),
(2003, 'August', 19),
(2003, 'December', 28),
(2003, 'February', 9),
(2003, 'January', 18),
(2003, 'July', 26),
(2003, 'June', 22),
(2003, 'March', 22),
(2003, 'May', 16),
(2003, 'November', 25),
(2003, 'October', 9),
(2003, 'September', 15),
(2004, 'April', 28),
(2004, 'August', 2),
(2004, 'December', 27),
(2004, 'February', 9),
(2004, 'January', 8),
(2004, 'July', 2),
(2004, 'June', 13),
(2004, 'March', 8),
(2004, 'May', 19),
(2004, 'November', 12),
(2004, 'October', 30),
(2004, 'September', 9),
(2005, 'April', 3),
(2005, 'August', 3),
(2005, 'December', 31),
(2005, 'February', 3),
(2005, 'January', 8),
(2005, 'July', 3),
(2005, 'June', 27),
(2005, 'March', 7),
(2005, 'May', 9),
(2005, 'November', 6),
(2005, 'October', 29),
(2005, 'September', 14),
(2006, 'April', 28),
(2006, 'August', 17),
(2006, 'December', 3),
(2006, 'February', 24),
(2006, 'January', 31),
(2006, 'July', 2),
(2006, 'June', 30),
(2006, 'March', 3),
(2006, 'May', 31),
(2006, 'November', 16),
(2006, 'October', 27),
(2006, 'September', 18),
(2007, 'April', 6),
(2007, 'August', 8),
(2007, 'December', 17),
(2007, 'February', 19),
(2007, 'January', 24),
(2007, 'July', 8),
(2007, 'June', 29),
(2007, 'March', 16),
(2007, 'May', 25),
(2007, 'November', 26),
(2007, 'October', 6),
(2007, 'September', 24),
(2008, 'April', 28),
(2008, 'August', 10),
(2008, 'December', 16),
(2008, 'February', 27),
(2008, 'January', 28),
(2008, 'July', 28),
(2008, 'June', 16),
(2008, 'March', 19),
(2008, 'May', 29),
(2008, 'November', 26),
(2008, 'October', 13),
(2008, 'September', 12),
(2009, 'April', 18),
(2009, 'August', 25),
(2009, 'December', 23),
(2009, 'February', 17),
(2009, 'January', 12),
(2009, 'July', 22),
(2009, 'June', 6),
(2009, 'March', 11),
(2009, 'May', 24),
(2009, 'November', 4),
(2009, 'October', 5),
(2009, 'September', 5),
(2010, 'April', 30),
(2010, 'August', 1),
(2010, 'December', 20),
(2010, 'February', 6),
(2010, 'January', 29),
(2010, 'July', 25),
(2010, 'June', 25),
(2010, 'March', 18),
(2010, 'May', 31),
(2010, 'November', 30),
(2010, 'October', 16),
(2010, 'September', 8),
(2011, 'April', 28),
(2011, 'August', 28),
(2011, 'December', 30),
(2011, 'February', 3),
(2011, 'January', 24),
(2011, 'July', 13),
(2011, 'June', 14),
(2011, 'March', 16),
(2011, 'May', 31),
(2011, 'November', 26),
(2011, 'October', 26),
(2011, 'September', 2),
(2012, 'April', 4),
(2012, 'August', 2),
(2012, 'December', 3),
(2012, 'February', 3),
(2012, 'January', 30),
(2012, 'July', 3),
(2012, 'June', 18),
(2012, 'March', 13),
(2012, 'May', 28),
(2012, 'November', 15),
(2012, 'October', 31),
(2012, 'September', 5),
(2013, 'April', 15),
(2013, 'August', 2),
(2013, 'December', 12),
(2013, 'February', 9),
(2013, 'January', 30),
(2013, 'July', 31),
(2013, 'June', 9),
(2013, 'March', 6),
(2013, 'May', 24),
(2013, 'November', 6),
(2013, 'October', 5),
(2013, 'September', 22),
(2014, 'April', 8),
(2014, 'August', 28),
(2014, 'December', 10),
(2014, 'February', 18),
(2014, 'January', 8),
(2014, 'July', 21),
(2014, 'June', 11),
(2014, 'March', 5),
(2014, 'May', 8),
(2014, 'November', 12),
(2014, 'October', 12),
(2014, 'September', 8),
(2015, 'April', 9),
(2015, 'August', 5),
(2015, 'December', 17),
(2015, 'February', 2),
(2015, 'January', 21),
(2015, 'July', 6),
(2015, 'June', 27),
(2015, 'March', 13),
(2015, 'May', 22),
(2015, 'November', 16),
(2015, 'October', 9),
(2015, 'September', 16),
(2016, 'April', 22),
(2016, 'August', 3),
(2016, 'December', 12),
(2016, 'February', 16),
(2016, 'January', 23),
(2016, 'July', 11),
(2016, 'June', 30),
(2016, 'March', 29),
(2016, 'May', 24),
(2016, 'November', 13),
(2016, 'October', 8),
(2016, 'September', 16),
(2017, 'April', 22),
(2017, 'August', 26),
(2017, 'December', 1),
(2017, 'February', 27),
(2017, 'January', 21),
(2017, 'July', 15),
(2017, 'June', 26),
(2017, 'March', 10),
(2017, 'May', 4),
(2017, 'November', 30),
(2017, 'October', 15),
(2017, 'September', 19),
(2018, 'April', 30),
(2018, 'August', 19),
(2018, 'December', 23),
(2018, 'February', 20),
(2018, 'January', 19),
(2018, 'July', 21),
(2018, 'June', 19),
(2018, 'March', 7),
(2018, 'May', 29),
(2018, 'November', 3),
(2018, 'October', 5),
(2018, 'September', 19);

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `rainfall`
--

CREATE TABLE `rainfall` (
  `YEAR` double NOT NULL,
  `MONTH` varchar(100) NOT NULL,
  `NO_OF_RAINY_DAYS` double DEFAULT NULL,
  `TWENTYFOUR_HOURS_MAX` double DEFAULT NULL,
  `TOTAL_MONTHLY_RAINFALL` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rainfall`
--

INSERT INTO `rainfall` (`YEAR`, `MONTH`, `NO_OF_RAINY_DAYS`, `TWENTYFOUR_HOURS_MAX`, `TOTAL_MONTHLY_RAINFALL`) VALUES
(2001, 'April', 10, 108.97, 308.62),
(2001, 'August', 17, 16.26, 86.62),
(2001, 'December', 4, 6.1, 7.88),
(2001, 'February', 0, 0, 0),
(2001, 'January', 1, 0.51, 0.51),
(2001, 'July', 21, 23.11, 112.26),
(2001, 'June', 9, 10.92, 27.93),
(2001, 'March', 1, 1.02, 1.02),
(2001, 'May', 6, 32, 53.09),
(2001, 'November', 5, 15.49, 35.04),
(2001, 'October', 15, 34.04, 154.44),
(2001, 'September', 21, 50.04, 244.61),
(2002, 'April', 1, 8.89, 8.89),
(2002, 'August', 13, 9.91, 41.15),
(2002, 'December', 1, 3.05, 3.05),
(2002, 'February', 2, 0.76, 1.52),
(2002, 'January', 0, 0, 0),
(2002, 'July', 8, 7.87, 48.26),
(2002, 'June', 10, 62.99, 152.39),
(2002, 'March', 0, 0, 0),
(2002, 'May', 9, 54.1, 83.56),
(2002, 'November', 5, 25.91, 40.13),
(2002, 'October', 15, 40.89, 188.73),
(2002, 'September', 8, 26.92, 84.57),
(2003, 'April', 7, 19.05, 81.79),
(2003, 'August', 20, 27.94, 157.25),
(2003, 'December', 2, 3.05, 3.56),
(2003, 'February', 1, 2.03, 2.03),
(2003, 'January', 0, 0, 0),
(2003, 'July', 17, 29.97, 94.72),
(2003, 'June', 9, 30.99, 91.17),
(2003, 'March', 4, 2.03, 3.8),
(2003, 'May', 2, 0.76, 1.27),
(2003, 'November', 7, 26.92, 27.43),
(2003, 'October', 16, 109.98, 204.73),
(2003, 'September', 9, 19.05, 85.85),
(2004, 'April', 10, 27.94, 52.33),
(2004, 'August', 18, 9.91, 68.06),
(2004, 'December', 0, 0, 0),
(2004, 'February', 1, 2.03, 2.03),
(2004, 'January', 2, 4.06, 4.82),
(2004, 'July', 22, 73.91, 282.45),
(2004, 'June', 15, 9.91, 41.41),
(2004, 'March', 2, 0.76, 1.27),
(2004, 'May', 17, 42.93, 263.63),
(2004, 'November', 5, 8.89, 25.39),
(2004, 'October', 21, 40.89, 153.17),
(2004, 'September', 19, 57.91, 215.13),
(2005, 'April', 12, 36.07, 83.82),
(2005, 'August', 19, 60.71, 281.69),
(2005, 'December', 7, 3.05, 9.15),
(2005, 'February', 1, 7.87, 7.87),
(2005, 'January', 1, 0.51, 0.51),
(2005, 'July', 24, 35.05, 192.27),
(2005, 'June', 12, 58.93, 105.66),
(2005, 'March', 1, 10.92, 10.92),
(2005, 'May', 12, 60.96, 159.27),
(2005, 'November', 6, 9.91, 26.44),
(2005, 'October', 25, 120.9, 652.51),
(2005, 'September', 14, 34.04, 181.13),
(2006, 'April', 3, 35.05, 70.87),
(2006, 'August', 15, 10.92, 40.39),
(2006, 'December', 1, 0.25, 0.25),
(2006, 'February', 0, 0, 0),
(2006, 'January', 1, 0.51, 0.51),
(2006, 'July', 17, 19.05, 43.68),
(2006, 'June', 18, 20.57, 155.96),
(2006, 'March', 3, 54.1, 82.29),
(2006, 'May', 15, 34.04, 159.77),
(2006, 'November', 9, 19.05, 44.45),
(2006, 'October', 9, 12.95, 72.12),
(2006, 'September', 13, 28.96, 55.88),
(2007, 'April', 8, 74.93, 135.89),
(2007, 'August', 19, 64.01, 257.03),
(2007, 'December', 8, 23.11, 42.93),
(2007, 'February', 0, 0, 0),
(2007, 'January', 0, 0, 0),
(2007, 'July', 20, 271.27, 486.91),
(2007, 'June', 14, 13.97, 47.76),
(2007, 'March', 0, 0, 0),
(2007, 'May', 8, 39.12, 140.21),
(2007, 'November', 3, 14.99, 35.31),
(2007, 'October', 14, 51.05, 153.67),
(2007, 'September', 16, 78.99, 196.59),
(2008, 'April', 5, 12.95, 25.9),
(2008, 'August', 26, 66.04, 299.2),
(2008, 'December', 1, 1.02, 1.02),
(2008, 'February', 1, 0.25, 0.25),
(2008, 'January', 0, 0, 0),
(2008, 'July', 19, 83.06, 278.88),
(2008, 'June', 19, 66.04, 116.3),
(2008, 'March', 10, 18.03, 57.9),
(2008, 'May', 15, 13.97, 71.39),
(2008, 'November', 8, 21.08, 66.8),
(2008, 'October', 21, 40.89, 195.58),
(2008, 'September', 14, 65.02, 140.21),
(2009, 'April', 4, 26.92, 55.12),
(2009, 'August', 14, 75.95, 142.49),
(2009, 'December', 8, 22.1, 24.64),
(2009, 'February', 0, 0, 0),
(2009, 'January', 2, 0.25, 0.25),
(2009, 'July', 20, 12.95, 31.24),
(2009, 'June', 11, 89.92, 206.25),
(2009, 'March', 3, 13.97, 16.51),
(2009, 'May', 10, 50.04, 153.67),
(2009, 'November', 13, 11.94, 64.27),
(2009, 'October', 7, 9.91, 24.64),
(2009, 'September', 21, 67.06, 347.22),
(2010, 'April', 10, 37.8, 103.13),
(2010, 'August', 20, 40.89, 135.64),
(2010, 'December', 6, 1.02, 2.54),
(2010, 'February', 0, 0, 0),
(2010, 'January', 0, 0, 0),
(2010, 'July', 23, 39.88, 99.59),
(2010, 'June', 17, 28.96, 106.17),
(2010, 'March', 3, 6.1, 6.1),
(2010, 'May', 12, 26.92, 110.22),
(2010, 'November', 17, 62.99, 149.62),
(2010, 'October', 14, 35.05, 149.31),
(2010, 'September', 20, 106.93, 181.86),
(2011, 'April', 9, 103.89, 213.62),
(2011, 'August', 27, 74.93, 276.61),
(2011, 'December', 4, 7.11, 11.06),
(2011, 'February', 4, 23.11, 51.55),
(2011, 'January', 0, 0, 0),
(2011, 'July', 26, 12.95, 93.74),
(2011, 'June', 17, 18.03, 46.24),
(2011, 'March', 0, 0, 0),
(2011, 'May', 11, 25.91, 152.67),
(2011, 'November', 9, 11.94, 48.01),
(2011, 'October', 12, 38.1, 153.16),
(2011, 'September', 16, 57.91, 116.59),
(2012, 'April', 5, 8.89, 18.04),
(2012, 'August', 21, 58.93, 187.45),
(2012, 'December', 4, 23.88, 27.94),
(2012, 'February', 0, 0, 0),
(2012, 'January', 1, 0.25, 0.25),
(2012, 'July', 15, 21.08, 66.56),
(2012, 'June', 6, 3.05, 10.68),
(2012, 'March', 1, 0.76, 0.76),
(2012, 'May', 10, 49.02, 138.16),
(2012, 'November', 4, 81.03, 124.73),
(2012, 'October', 10, 34.04, 82.56),
(2012, 'September', 12, 40.89, 59.68),
(2013, 'April', 4, 11.94, 23.12),
(2013, 'August', 19, 21.34, 86.86),
(2013, 'December', 2, 0.25, 0.25),
(2013, 'February', 3, 2.03, 2.54),
(2013, 'January', 0, 0, 0),
(2013, 'July', 25, 49.02, 140.98),
(2013, 'June', 17, 14.99, 76.71),
(2013, 'March', 3, 0.51, 0.51),
(2013, 'May', 13, 36.07, 146.3),
(2013, 'November', 7, 108.46, 140.22),
(2013, 'October', 15, 26.92, 100.06),
(2013, 'September', 20, 79.76, 352.06),
(2014, 'April', 4, 8.89, 14.48),
(2014, 'August', 23, 32, 78.49),
(2014, 'December', 5, 0.51, 0.51),
(2014, 'February', 2, 0.24, 0.25),
(2014, 'January', 0, 0, 0),
(2014, 'July', 18, 22.61, 56.4),
(2014, 'June', 10, 66.55, 135.65),
(2014, 'March', 5, 4.06, 5.33),
(2014, 'May', 13, 12.7, 36.57),
(2014, 'November', 5, 5.84, 10.16),
(2014, 'October', 18, 62.99, 343.16),
(2014, 'September', 17, 132.33, 305.82),
(2015, 'April', 13, 53.34, 219.46),
(2015, 'August', 18, 27.18, 108.96),
(2015, 'December', 5, 107.44, 112.27),
(2015, 'February', 1, 0.51, 0.51),
(2015, 'January', 2, 7.62, 9.14),
(2015, 'July', 15, 26.16, 92.72),
(2015, 'June', 21, 18.54, 53.35),
(2015, 'March', 2, 22.1, 36.33),
(2015, 'May', 14, 66.29, 178.05),
(2015, 'November', 20, 51.05, 251.46),
(2015, 'October', 8, 10.92, 47.24),
(2015, 'September', 17, 37.08, 189.48),
(2016, 'April', 0, 0, 0),
(2016, 'August', 23, 15.24, 49),
(2016, 'December', 7, 60.71, 74.68),
(2016, 'February', 0, 0, 0),
(2016, 'January', 2, 4.32, 5.34),
(2016, 'July', 25, 41.91, 208.25),
(2016, 'June', 25, 47.75, 181.11),
(2016, 'March', 0, 0, 0),
(2016, 'May', 12, 46.48, 138.69),
(2016, 'November', 1, 1.52, 1.52),
(2016, 'October', 5, 7.87, 11.68),
(2016, 'September', 15, 10.41, 33),
(2017, 'April', 8, 12.7, 29.74),
(2017, 'August', 26, 128.78, 351.53),
(2017, 'December', 2, 10.67, 19.56),
(2017, 'February', 0, 0, 0),
(2017, 'January', 2, 0.25, 0.25),
(2017, 'July', 17, 11.94, 51.06),
(2017, 'June', 14, 361.19, 385.33),
(2017, 'March', 4, 36.83, 39.37),
(2017, 'May', 13, 83.31, 238.76),
(2017, 'November', 7, 13.46, 20.56),
(2017, 'October', 17, 76.71, 385.57),
(2017, 'September', 21, 71.88, 500.89),
(2018, 'April', 2, 17.02, 53.35),
(2018, 'August', 24, 41.66, 158.26),
(2018, 'December', 3, 10.92, 16),
(2018, 'February', 2, 1.52, 2.03),
(2018, 'January', 0, 0, 0),
(2018, 'July', 24, 32.26, 84.84),
(2018, 'June', 20, 12.19, 73.14),
(2018, 'March', 7, 30.99, 34.29),
(2018, 'May', 16, 39.37, 264.92),
(2018, 'November', 4, 12.95, 18.54),
(2018, 'October', 9, 48.77, 112.78),
(2018, 'September', 14, 33.02, 142.99);

-- --------------------------------------------------------

--
-- Table structure for table `rainfall_records`
--

CREATE TABLE `rainfall_records` (
  `YEAR` double NOT NULL,
  `MONTH` varchar(100) NOT NULL,
  `MAX_RAINFALL_DAY` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rainfall_records`
--

INSERT INTO `rainfall_records` (`YEAR`, `MONTH`, `MAX_RAINFALL_DAY`) VALUES
(2001, 'April', 19),
(2001, 'August', 1),
(2001, 'December', 22),
(2001, 'February', 0),
(2001, 'January', 2),
(2001, 'July', 17),
(2001, 'June', 29),
(2001, 'March', 22),
(2001, 'May', 2),
(2001, 'November', 7),
(2001, 'October', 1),
(2001, 'September', 22),
(2002, 'April', 5),
(2002, 'August', 18),
(2002, 'December', 6),
(2002, 'February', 2),
(2002, 'January', 0),
(2002, 'July', 13),
(2002, 'June', 11),
(2002, 'March', 0),
(2002, 'May', 17),
(2002, 'November', 2),
(2002, 'October', 11),
(2002, 'September', 18),
(2003, 'April', 20),
(2003, 'August', 18),
(2003, 'December', 25),
(2003, 'February', 26),
(2003, 'January', 0),
(2003, 'July', 17),
(2003, 'June', 8),
(2003, 'March', 21),
(2003, 'May', 13),
(2003, 'November', 9),
(2003, 'October', 12),
(2003, 'September', 10),
(2004, 'April', 23),
(2004, 'August', 21),
(2004, 'December', 0),
(2004, 'February', 1),
(2004, 'January', 26),
(2004, 'July', 9),
(2004, 'June', 29),
(2004, 'March', 30),
(2004, 'May', 4),
(2004, 'November', 27),
(2004, 'October', 16),
(2004, 'September', 6),
(2005, 'April', 27),
(2005, 'August', 28),
(2005, 'December', 4),
(2005, 'February', 2),
(2005, 'January', 27),
(2005, 'July', 24),
(2005, 'June', 1),
(2005, 'March', 12),
(2005, 'May', 28),
(2005, 'November', 4),
(2005, 'October', 23),
(2005, 'September', 4),
(2006, 'April', 16),
(2006, 'August', 20),
(2006, 'December', 11),
(2006, 'February', 0),
(2006, 'January', 9),
(2006, 'July', 15),
(2006, 'June', 17),
(2006, 'March', 6),
(2006, 'May', 13),
(2006, 'November', 5),
(2006, 'October', 9),
(2006, 'September', 7),
(2007, 'April', 22),
(2007, 'August', 22),
(2007, 'December', 20),
(2007, 'February', 0),
(2007, 'January', 0),
(2007, 'July', 13),
(2007, 'June', 5),
(2007, 'March', 0),
(2007, 'May', 26),
(2007, 'November', 7),
(2007, 'October', 21),
(2007, 'September', 13),
(2008, 'April', 30),
(2008, 'August', 27),
(2008, 'December', 1),
(2008, 'February', 4),
(2008, 'January', 0),
(2008, 'July', 21),
(2008, 'June', 1),
(2008, 'March', 16),
(2008, 'May', 24),
(2008, 'November', 28),
(2008, 'October', 7),
(2008, 'September', 2),
(2009, 'April', 23),
(2009, 'August', 17),
(2009, 'December', 27),
(2009, 'February', 0),
(2009, 'January', 14),
(2009, 'July', 31),
(2009, 'June', 11),
(2009, 'March', 15),
(2009, 'May', 20),
(2009, 'November', 23),
(2009, 'October', 14),
(2009, 'September', 24),
(2010, 'April', 15),
(2010, 'August', 21),
(2010, 'December', 16),
(2010, 'February', 0),
(2010, 'January', 0),
(2010, 'July', 30),
(2010, 'June', 4),
(2010, 'March', 31),
(2010, 'May', 17),
(2010, 'November', 8),
(2010, 'October', 15),
(2010, 'September', 24),
(2011, 'April', 23),
(2011, 'August', 16),
(2011, 'December', 31),
(2011, 'February', 22),
(2011, 'January', 0),
(2011, 'July', 24),
(2011, 'June', 25),
(2011, 'March', 0),
(2011, 'May', 14),
(2011, 'November', 5),
(2011, 'October', 1),
(2011, 'September', 20),
(2012, 'April', 26),
(2012, 'August', 24),
(2012, 'December', 5),
(2012, 'February', 0),
(2012, 'January', 12),
(2012, 'July', 18),
(2012, 'June', 9),
(2012, 'March', 31),
(2012, 'May', 16),
(2012, 'November', 1),
(2012, 'October', 6),
(2012, 'September', 14),
(2013, 'April', 1),
(2013, 'August', 15),
(2013, 'December', 1),
(2013, 'February', 17),
(2013, 'January', 0),
(2013, 'July', 20),
(2013, 'June', 27),
(2013, 'March', 8),
(2013, 'May', 23),
(2013, 'November', 24),
(2013, 'October', 28),
(2013, 'September', 2),
(2014, 'April', 9),
(2014, 'August', 21),
(2014, 'December', 12),
(2014, 'February', 25),
(2014, 'January', 0),
(2014, 'July', 1),
(2014, 'June', 6),
(2014, 'March', 1),
(2014, 'May', 11),
(2014, 'November', 15),
(2014, 'October', 9),
(2014, 'September', 26),
(2015, 'April', 24),
(2015, 'August', 17),
(2015, 'December', 24),
(2015, 'February', 28),
(2015, 'January', 1),
(2015, 'July', 21),
(2015, 'June', 14),
(2015, 'March', 3),
(2015, 'May', 17),
(2015, 'November', 2),
(2015, 'October', 5),
(2015, 'September', 7),
(2016, 'April', 0),
(2016, 'August', 25),
(2016, 'December', 13),
(2016, 'February', 0),
(2016, 'January', 21),
(2016, 'July', 29),
(2016, 'June', 7),
(2016, 'March', 0),
(2016, 'May', 7),
(2016, 'November', 2),
(2016, 'October', 12),
(2016, 'September', 11),
(2017, 'April', 18),
(2017, 'August', 15),
(2017, 'December', 1),
(2017, 'February', 0),
(2017, 'January', 27),
(2017, 'July', 28),
(2017, 'June', 27),
(2017, 'March', 8),
(2017, 'May', 27),
(2017, 'November', 8),
(2017, 'October', 6),
(2017, 'September', 1),
(2018, 'April', 20),
(2018, 'August', 25),
(2018, 'December', 29),
(2018, 'February', 10),
(2018, 'January', 0),
(2018, 'July', 11),
(2018, 'June', 24),
(2018, 'March', 16),
(2018, 'May', 4),
(2018, 'November', 24),
(2018, 'October', 18),
(2018, 'September', 14);

-- --------------------------------------------------------

--
-- Table structure for table `temperature`
--

CREATE TABLE `temperature` (
  `YEAR` double NOT NULL,
  `MONTH` varchar(100) NOT NULL,
  `HIGHEST_MAX_TEMP` double DEFAULT NULL,
  `LOWEST_MAX_TEMP` double DEFAULT NULL,
  `HIGHEST_MIN_TEMP` double DEFAULT NULL,
  `LOWEST_MIN_TEMP` double DEFAULT NULL,
  `AVG_MAX_TEMP` double DEFAULT NULL,
  `AVG_MIN_TEMP` double DEFAULT NULL,
  `HUMIDITY` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temperature`
--

INSERT INTO `temperature` (`YEAR`, `MONTH`, `HIGHEST_MAX_TEMP`, `LOWEST_MAX_TEMP`, `HIGHEST_MIN_TEMP`, `LOWEST_MIN_TEMP`, `AVG_MAX_TEMP`, `AVG_MIN_TEMP`, `HUMIDITY`) VALUES
(2001, 'April', 34.6, 24.5, 24.2, 18.3, 32.2, 21.7, 63.5),
(2001, 'August', 29.6, 24.2, 20.8, 18.7, 27.6, 19.7, 82.4),
(2001, 'December', 29.3, 20.3, 18.5, 12.3, 26.4, 15.9, 69.2),
(2001, 'February', 35.5, 30.1, 21.8, 15, 32.6, 18.6, 50.8),
(2001, 'January', 31.2, 23.9, 19.6, 14.4, 28.4, 16.5, 63.4),
(2001, 'July', 30.6, 27.1, 21.3, 18.8, 28.7, 20.1, 77.4),
(2001, 'June', 33.2, 27.2, 22.6, 19.4, 29.6, 20.6, 73.1),
(2001, 'March', 36.5, 28, 23.9, 16.8, 33.5, 20.9, 49.1),
(2001, 'May', 35.3, 30.3, 23.8, 19.5, 33.1, 21.7, 63.4),
(2001, 'November', 29.5, 25, 20.4, 16, 27.4, 18.3, 74.5),
(2001, 'October', 30.4, 22.4, 21.4, 16.8, 27.5, 19.7, 80.9),
(2001, 'September', 31.2, 26.1, 22, 18.7, 28.9, 20.1, 78.5),
(2002, 'April', 36.5, 32.5, 24.2, 19.4, 34.7, 22.6, 52.9),
(2002, 'August', 3.1, 24.6, 22, 18.7, 28.5, 20, 74.8),
(2002, 'December', 30.9, 24.6, 19.4, 12.5, 28.6, 15.1, 60.3),
(2002, 'February', 32.6, 22.4, 20.2, 13.8, 29.9, 17.1, 53.6),
(2002, 'January', 32.4, 25, 20, 12.6, 28.2, 16.8, 65.5),
(2002, 'July', 31.8, 25.1, 20.8, 18.9, 29.4, 20, 76.6),
(2002, 'June', 32.1, 27.4, 22.5, 20, 29.9, 21, 74.5),
(2002, 'March', 35.7, 31.8, 23.4, 16.7, 33.7, 20.1, 44.5),
(2002, 'May', 36.4, 30.9, 23.7, 20.2, 33.5, 22.1, 66),
(2002, 'November', 32.9, 22.1, 20.4, 12.2, 28.1, 17.6, 71),
(2002, 'October', 32.4, 23.4, 21.6, 17.5, 28.5, 20.3, 74.6),
(2002, 'September', 32.7, 25, 21.5, 17.5, 30.2, 20.2, 70),
(2003, 'April', 36, 30.9, 23.4, 19.9, 34.1, 22.1, 56.8),
(2003, 'August', 31.6, 24.2, 21.8, 19, 28.5, 20.2, 79),
(2003, 'December', 31.1, 22.8, 19.6, 13, 27.4, 16, 63.9),
(2003, 'February', 32.9, 28.8, 20.5, 16.9, 31.7, 19, 52.7),
(2003, 'January', 31.8, 24.6, 18.3, 13.9, 28.8, 16.1, 61.2),
(2003, 'July', 31.1, 27, 21.8, 19.5, 29.2, 20.5, 77.5),
(2003, 'June', 38.1, 28.3, 22.9, 19.9, 31.3, 21, 73),
(2003, 'March', 35.5, 31.6, 23.8, 18.3, 33.7, 20.3, 49.1),
(2003, 'May', 37.6, 31.8, 23.9, 21, 35.3, 22.7, 53.7),
(2003, 'November', 29.4, 24, 20.1, 15, 27.6, 17.9, 72.2),
(2003, 'October', 30.6, 22.6, 22, 17.3, 28.8, 19.8, 79.1),
(2003, 'September', 31.2, 25.4, 22.4, 18.7, 28.9, 19.7, 72.5),
(2004, 'April', 37, 27.6, 24.7, 18.7, 34.1, 22.2, 55.4),
(2004, 'August', 30.7, 24.2, 20.7, 19.1, 28.2, 19.7, 78.1),
(2004, 'December', 30, 26.2, 17.8, 13, 28.1, 15.4, 62.6),
(2004, 'February', 34.6, 28.2, 21.4, 15.1, 31.2, 16.9, 47.8),
(2004, 'January', 31.1, 25.2, 19.9, 13.7, 28.8, 16.3, 61),
(2004, 'July', 31.8, 21.8, 21.1, 17.7, 28.1, 19.7, 80.6),
(2004, 'June', 31.2, 26.4, 21.6, 19.2, 29, 20, 76.7),
(2004, 'March', 36.2, 31.8, 23.2, 15.7, 34.3, 20, 38.8),
(2004, 'May', 34.6, 25.5, 22.4, 18.7, 29.7, 20.6, 78.2),
(2004, 'November', 28.6, 23.4, 19.4, 15, 26.9, 17.6, 72.8),
(2004, 'October', 31.4, 23.6, 20.8, 17.7, 27.8, 19.4, 79.5),
(2004, 'September', 30.5, 22.8, 21.3, 18.6, 27.9, 19.9, 81.5),
(2005, 'April', 35.4, 28.2, 23.8, 19.9, 32.7, 21.6, 60.4),
(2005, 'August', 30.5, 25, 21.3, 18.6, 28.2, 19.9, 78.4),
(2005, 'December', 32.2, 23, 19.5, 13.6, 26.9, 16.5, 71.5),
(2005, 'February', 35.9, 28, 20.8, 14.3, 31.8, 17.9, 45.5),
(2005, 'January', 31.8, 25.9, 19.2, 13.9, 29, 16.7, 61.2),
(2005, 'July', 30.4, 24, 20.8, 18.3, 28.4, 20, 79.1),
(2005, 'June', 33.8, 26.9, 21.8, 19.3, 30.2, 20.7, 73),
(2005, 'March', 36.4, 31.8, 23.2, 17.5, 33.7, 20.5, 46.8),
(2005, 'May', 37.4, 27.4, 24, 19, 33.8, 21.7, 63.3),
(2005, 'November', 29.5, 23.9, 20.2, 18, 26.4, 19.2, 80.9),
(2005, 'October', 30.2, 22.6, 21.2, 16.6, 27.5, 19.5, 83.3),
(2005, 'September', 31.5, 23.7, 21.1, 18.8, 28.3, 19.9, 76.8),
(2006, 'April', 36.6, 30, 23.8, 19.6, 33.9, 22.3, 52.2),
(2006, 'August', 31.6, 26.7, 21.1, 19.3, 28.9, 20.1, 73.1),
(2006, 'December', 28.2, 24.1, 19.6, 14, 27, 15.9, 68.6),
(2006, 'February', 34.1, 26.9, 20.5, 12.3, 30.7, 15.6, 42),
(2006, 'January', 32.5, 25.3, 19, 13.4, 28.6, 16.1, 58),
(2006, 'July', 30.9, 27, 20.7, 11, 28.6, 19.8, 74.4),
(2006, 'June', 32.2, 24.9, 21.4, 19, 29.6, 20.4, 74.9),
(2006, 'March', 34.4, 28.2, 21.9, 17.9, 32.1, 19.9, 53.4),
(2006, 'May', 37, 25.7, 23.4, 19.4, 32.1, 21.2, 66.3),
(2006, 'November', 30.6, 24, 20.6, 16.6, 27.7, 19, 77.2),
(2006, 'October', 31.4, 26.2, 20.8, 19, 29.4, 20, 72.7),
(2006, 'September', 32.4, 26.4, 22.2, 19.5, 30, 20.4, 71.5),
(2007, 'April', 38, 31, 23.5, 18.2, 34.2, 21.6, 52),
(2007, 'August', 31.7, 24.3, 21.2, 19.1, 27.9, 20, 79.6),
(2007, 'December', 29.5, 20.3, 18.6, 11.8, 26.3, 16.4, 69.7),
(2007, 'February', 33.8, 28, 21.1, 10.6, 30.9, 17.1, 55.7),
(2007, 'January', 32.1, 25.2, 17.6, 14.2, 29, 15.9, 59.2),
(2007, 'July', 32, 26.3, 21.1, 18.8, 28.8, 20.3, 77.6),
(2007, 'June', 33.6, 27, 22.2, 19.7, 29.5, 20.8, 72.7),
(2007, 'March', 35.6, 30.8, 23.8, 16.1, 33.8, 20.7, 41.7),
(2007, 'May', 35.8, 29.4, 24.2, 20, 33.3, 21.8, 63.6),
(2007, 'November', 30.1, 24.3, 20.6, 12.7, 27.9, 17.3, 66.1),
(2007, 'October', 32.3, 23.2, 20.9, 16.7, 28.4, 19.5, 72.3),
(2007, 'September', 31.3, 24.9, 21.9, 18.8, 28.1, 19.9, 79.2),
(2008, 'April', 36.9, 27.7, 23.4, 18.9, 33.2, 21.5, 53.5),
(2008, 'August', 29.9, 25, 21.8, 19.3, 27.6, 20.2, 81.2),
(2008, 'December', 28.7, 25.8, 19.6, 13.9, 27.3, 16.4, 65.1),
(2008, 'February', 32.1, 27, 21.4, 16, 30.2, 18.7, 59),
(2008, 'January', 31.2, 27, 19.7, 13.6, 29.2, 16, 57.2),
(2008, 'July', 32.4, 25, 21.2, 18.6, 28.6, 20.1, 76.9),
(2008, 'June', 31.9, 26.5, 22, 18.7, 29.4, 20.4, 71.2),
(2008, 'March', 32.6, 23.7, 21.2, 14.4, 30.3, 18.9, 58.8),
(2008, 'May', 35.6, 30, 24, 20.3, 33.8, 21.6, 60.7),
(2008, 'November', 29.8, 20.7, 19.8, 12, 27.4, 17.7, 69.4),
(2008, 'October', 31.4, 24.3, 21.3, 14.7, 28.1, 19.2, 77.2),
(2008, 'September', 31.6, 26, 21.8, 18.4, 28.6, 19.8, 72.8),
(2009, 'April', 37, 32.8, 23.7, 20, 34.5, 22.1, 47.4),
(2009, 'August', 30.7, 25.3, 21.8, 19.3, 28.5, 20.3, 77.1),
(2009, 'December', 29.3, 21, 20.6, 15, 26.9, 17.7, 74.7),
(2009, 'February', 35.2, 29.7, 21.9, 15.3, 31.9, 17.7, 44),
(2009, 'January', 31.9, 23.4, 19.8, 12.1, 28.2, 15.3, 56.7),
(2009, 'July', 30, 25.6, 20.8, 19.4, 27.9, 20.1, 75.4),
(2009, 'June', 31.8, 23.2, 21.8, 18.4, 29.5, 20.3, 73.1),
(2009, 'March', 35.5, 27, 21.6, 17.3, 33, 20.3, 45.3),
(2009, 'May', 36.9, 28.3, 23.4, 19.2, 32.6, 21.2, 66.7),
(2009, 'November', 29.9, 22.9, 21.4, 15.5, 27.4, 19.2, 76),
(2009, 'October', 31, 22.5, 20.9, 18, 29, 19.4, 66.6),
(2009, 'September', 31.3, 24.2, 21.4, 18.2, 28, 20.1, 80.3),
(2010, 'April', 37.6, 32, 24.4, 20, 34.7, 22.3, 55.8),
(2010, 'August', 29.8, 23.1, 21.5, 18.8, 27.4, 20.4, 79.5),
(2010, 'December', 29.9, 23, 19.5, 12.9, 27.1, 16.9, 70.6),
(2010, 'February', 34.4, 27.6, 22.3, 14.3, 31.9, 18.4, 49),
(2010, 'January', 29.5, 26.4, 20.3, 14.1, 28.2, 17, 62.1),
(2010, 'July', 30.2, 23, 21.4, 19.1, 27.4, 20.3, 80.2),
(2010, 'June', 34, 26, 21.8, 19.5, 29.8, 21.1, 76.8),
(2010, 'March', 35.7, 25.8, 23.8, 18.5, 34.2, 21.3, 44.3),
(2010, 'May', 36.2, 25.4, 24.4, 19.3, 33, 22.2, 66.3),
(2010, 'November', 29.2, 19.8, 20.7, 17.5, 26.4, 19.3, 82.1),
(2010, 'October', 30.4, 25.6, 21.5, 18.4, 28.4, 20.3, 78.3),
(2010, 'September', 31.8, 25.3, 22.4, 18.7, 27.9, 20.2, 79.4),
(2011, 'April', 34.6, 30.2, 23.1, 19.1, 33.4, 21.5, 58.9),
(2011, 'August', 30.2, 25.8, 21, 19.2, 28.3, 20.1, 82.3),
(2011, 'December', 29.8, 22.6, 19.8, 12.8, 28.1, 16.2, 63.4),
(2011, 'February', 32.2, 28.5, 20.2, 14, 30.6, 16.9, 46.6),
(2011, 'January', 31.3, 27.3, 18.1, 12.6, 29.4, 15.7, 52.8),
(2011, 'July', 30.4, 26.8, 20.7, 18.9, 28.6, 20, 77.4),
(2011, 'June', 30.9, 28.1, 21.8, 19.2, 29.5, 20.3, 77.7),
(2011, 'March', 36.8, 30.7, 23, 15.4, 33.5, 19.4, 39.2),
(2011, 'May', 34.8, 31.2, 23, 19.3, 32.8, 21.3, 67.7),
(2011, 'November', 29.5, 23.4, 20.4, 15, 27.8, 17.9, 71.2),
(2011, 'October', 31, 26.8, 22, 19, 29.7, 20.2, 79.2),
(2011, 'September', 30.8, 27.1, 21.3, 18.2, 29.1, 20.1, 75.8),
(2012, 'April', 37.5, 32.7, 24.7, 20.7, 35.3, 22.5, 50.1),
(2012, 'August', 32.4, 25.2, 21, 19.4, 29.2, 20.2, 75.7),
(2012, 'December', 30.7, 26.5, 20.2, 14.4, 28.5, 17, 65),
(2012, 'February', 35.4, 28.2, 20, 14, 31.9, 17.2, 44.1),
(2012, 'January', 30.6, 27.2, 18.9, 12, 29.3, 16.2, 58.1),
(2012, 'July', 32.2, 26.9, 21.4, 19.2, 29.6, 20.3, 71.7),
(2012, 'June', 34.1, 28.4, 22.7, 20, 31.6, 20.9, 64.4),
(2012, 'March', 37.2, 32.6, 22.9, 17.7, 34.7, 20.6, 40.9),
(2012, 'May', 35.2, 31, 23.6, 19.5, 33.7, 22, 62.4),
(2012, 'November', 30.8, 20, 20.6, 15.3, 28.6, 17.6, 64.5),
(2012, 'October', 32.3, 25.3, 21.4, 18.2, 29.2, 19.5, 71.3),
(2012, 'September', 32.5, 27.2, 21.4, 19.2, 29.7, 20.3, 70.3),
(2013, 'April', 37, 34.5, 24.5, 20.7, 35.8, 23, 51.1),
(2013, 'August', 30.3, 25.1, 21.9, 20.9, 28, 20, 78.6),
(2013, 'December', 30.3, 25.6, 20, 13.6, 28, 15.9, 64.7),
(2013, 'February', 33.4, 29.2, 21, 14.4, 31.5, 18.1, 50.3),
(2013, 'January', 32, 28.1, 19, 14.2, 30, 16.4, 51.6),
(2013, 'July', 29.6, 26, 20.6, 18.7, 27.7, 20, 80.4),
(2013, 'June', 30.2, 27.6, 22, 19.6, 28.9, 20.3, 76.7),
(2013, 'March', 36.6, 30.4, 24, 16.7, 34.2, 20.7, 41.4),
(2013, 'May', 37.6, 31.3, 24.3, 18.9, 34.2, 22, 62.6),
(2013, 'November', 30.9, 26, 20.4, 15.6, 28.8, 18.4, 72.9),
(2013, 'October', 30.8, 25.8, 21.1, 18.4, 28.9, 20.1, 76.1),
(2013, 'September', 31.4, 25.3, 20.7, 19, 28.4, 19.8, 79.4),
(2014, 'April', 36.7, 34, 24.8, 20.2, 35.7, 22.7, 48.2),
(2014, 'August', 30.8, 25.6, 21.4, 19.5, 28.5, 20.4, 79),
(2014, 'December', 29.3, 26.2, 20.7, 13.9, 28, 17.5, 70),
(2014, 'February', 32.7, 29.7, 20.6, 15.5, 31.6, 18.1, 52.1),
(2014, 'January', 30.8, 26.4, 18, 15, 28.9, 16.3, 59.9),
(2014, 'July', 32, 26.6, 21.6, 19.8, 28.6, 20.6, 77.1),
(2014, 'June', 35, 28, 22.8, 18.4, 31.3, 21.2, 69.3),
(2014, 'March', 36, 30, 23.5, 16.6, 33.5, 19.9, 44.4),
(2014, 'May', 36, 26.7, 24.6, 18.9, 34.2, 22.1, 60.6),
(2014, 'November', 29.8, 26.1, 20.2, 15.6, 28.2, 17.9, 69),
(2014, 'October', 31.7, 24.3, 21.6, 17.5, 29, 20, 78.3),
(2014, 'September', 31.1, 26.8, 21.4, 19.1, 29.3, 20.2, 74.4),
(2015, 'April', 36.5, 29, 25.4, 18.1, 33.3, 21.3, 62.6),
(2015, 'August', 31.6, 27.6, 22.4, 19.5, 29.5, 20.5, 77.8),
(2015, 'December', 30.9, 23.8, 20.4, 14.2, 28.3, 18.1, 71.3),
(2015, 'February', 33.6, 28.6, 21.4, 14.4, 31.4, 16.9, 45.3),
(2015, 'January', 30.2, 26.7, 19.2, 13.6, 28.4, 16.7, 63.9),
(2015, 'July', 31.6, 27.8, 21.4, 18.8, 29.8, 20.3, 77),
(2015, 'June', 32, 27.4, 21.4, 19.8, 30.2, 20.8, 77.6),
(2015, 'March', 35.8, 30.8, 23, 16.7, 33.4, 20.1, 50.1),
(2015, 'May', 33.8, 29.6, 23.7, 19, 32.1, 21.3, 72),
(2015, 'November', 30.9, 21.5, 21.7, 16.1, 26.5, 18.7, 83.6),
(2015, 'October', 32.1, 28.5, 21.7, 17.8, 30.5, 20.4, 69),
(2015, 'September', 33.2, 27, 22, 18.7, 30, 20.2, 76.4),
(2016, 'April', 37.8, 33.5, 25.8, 22.8, 36.5, 24.2, 41),
(2016, 'August', 30.6, 25.6, 21.3, 19.1, 28.5, 20.2, 75.8),
(2016, 'December', 30.5, 22, 19.6, 12, 28.5, 16.7, 61.4),
(2016, 'February', 35.5, 29.8, 22.3, 16.2, 31.9, 18.8, 49.7),
(2016, 'January', 31.6, 25.3, 19.4, 12.9, 28.5, 16.5, 59.1),
(2016, 'July', 30.7, 26, 21.5, 19.4, 27.9, 20.2, 80.2),
(2016, 'June', 33.3, 24.8, 22, 19.3, 29, 20.7, 80.2),
(2016, 'March', 36, 30.7, 25, 18.4, 34.3, 21.6, 46.6),
(2016, 'May', 37.3, 28.3, 25.5, 19.6, 33.5, 22.4, 63.9),
(2016, 'November', 33, 29.1, 20.9, 14.2, 30.8, 18.1, 51.5),
(2016, 'October', 32, 29, 21, 18, 30.8, 19.4, 57.9),
(2016, 'September', 30.6, 25.2, 21.6, 18.8, 28, 20.1, 75),
(2017, 'April', 37, 35.5, 24.5, 20.1, 35.9, 22.9, 47.3),
(2017, 'August', 31.5, 26.2, 21.6, 19.2, 28.6, 20.8, 77.5),
(2017, 'December', 30.8, 21.6, 19.6, 14.2, 27.7, 17.1, 64.3),
(2017, 'February', 35.5, 28.8, 20, 15.2, 31.8, 17.1, 41.3),
(2017, 'January', 31.7, 26, 20, 14.6, 28.7, 16.6, 59.9),
(2017, 'July', 31.3, 26.6, 22, 19.3, 29.2, 20.4, 72.6),
(2017, 'June', 32.4, 27.5, 22, 20, 29.8, 20.9, 72.2),
(2017, 'March', 37.2, 30.4, 23, 15.7, 34, 21.1, 43.9),
(2017, 'May', 37, 30, 24.4, 19.4, 33.9, 21.6, 62.6),
(2017, 'November', 30, 25, 21.3, 15.8, 28, 19.1, 72.7),
(2017, 'October', 31.3, 25.6, 21.5, 18.4, 28.8, 20.3, 74.9),
(2017, 'September', 31.1, 26.2, 22.2, 18.7, 28.7, 20.4, 79.7),
(2018, 'April', 34.9, 31.5, 23.9, 19.8, 33.7, 22.1, 22.1),
(2018, 'August', 28.8, 24.6, 20.8, 18.7, 27.3, 20, 80.5),
(2018, 'December', 31.4, 25, 20, 14.4, 28.4, 17.8, 64.5),
(2018, 'February', 33, 29.4, 20.2, 13.2, 31.1, 17.3, 42.1),
(2018, 'January', 30.7, 26.6, 18.4, 14.2, 28.8, 16.2, 52),
(2018, 'July', 30.2, 26.2, 21, 19.7, 27.8, 20.4, 78.8),
(2018, 'June', 31, 25, 21.9, 19.5, 28.5, 20.6, 79.5),
(2018, 'March', 34.8, 29.1, 23.4, 16.5, 33.4, 20.1, 42.8),
(2018, 'May', 35.2, 30.5, 23.4, 19.2, 32.1, 21.4, 69.2),
(2018, 'November', 31, 24.8, 20.4, 14.8, 29, 18.1, 65.1),
(2018, 'October', 31.5, 25.8, 21.6, 16.6, 29.5, 19.6, 65.7),
(2018, 'September', 30.3, 18.4, 22.3, 19.3, 29.5, 20.5, 70.1);

-- --------------------------------------------------------

--
-- Table structure for table `temperature_records`
--

CREATE TABLE `temperature_records` (
  `YEAR` double NOT NULL,
  `MONTH` varchar(100) NOT NULL,
  `HIGHEST_MAX_DAY` double DEFAULT NULL,
  `LOWEST_MAX_DAY` double DEFAULT NULL,
  `HIGHEST_MIN_DAY` double DEFAULT NULL,
  `LOWEST_MIN_DAY` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `temperature_records`
--

INSERT INTO `temperature_records` (`YEAR`, `MONTH`, `HIGHEST_MAX_DAY`, `LOWEST_MAX_DAY`, `HIGHEST_MIN_DAY`, `LOWEST_MIN_DAY`) VALUES
(2001, 'April', 10, 13, 8, 18),
(2001, 'August', 22, 11, 23, 20),
(2001, 'December', 4, 23, 18, 10),
(2001, 'February', 26, 1, 21, 15),
(2001, 'January', 31, 9, 2, 29),
(2001, 'July', 14, 5, 8, 22),
(2001, 'June', 1, 30, 2, 30),
(2001, 'March', 28, 30, 29, 3),
(2001, 'May', 11, 29, 2, 29),
(2001, 'November', 4, 21, 15, 30),
(2001, 'October', 20, 6, 20, 17),
(2001, 'September', 13, 27, 8, 15),
(2002, 'April', 30, 5, 30, 5),
(2002, 'August', 27, 11, 29, 7),
(2002, 'December', 3, 7, 7, 19),
(2002, 'February', 27, 2, 8, 25),
(2002, 'January', 24, 1, 25, 16),
(2002, 'July', 7, 12, 4, 24),
(2002, 'June', 8, 14, 9, 2),
(2002, 'March', 29, 10, 27, 2),
(2002, 'May', 7, 19, 1, 25),
(2002, 'November', 28, 1, 14, 1),
(2002, 'October', 3, 28, 4, 31),
(2002, 'September', 27, 9, 21, 10),
(2003, 'April', 14, 10, 27, 29),
(2003, 'August', 11, 21, 12, 20),
(2003, 'December', 16, 4, 26, 14),
(2003, 'February', 19, 3, 19, 9),
(2003, 'January', 31, 15, 20, 17),
(2003, 'July', 29, 15, 21, 17),
(2003, 'June', 1, 21, 3, 26),
(2003, 'March', 31, 16, 31, 10),
(2003, 'May', 26, 12, 27, 14),
(2003, 'November', 6, 29, 3, 27),
(2003, 'October', 1, 20, 1, 26),
(2003, 'September', 21, 26, 21, 11),
(2004, 'April', 17, 6, 20, 3),
(2004, 'August', 30, 4, 29, 15),
(2004, 'December', 31, 4, 3, 26),
(2004, 'February', 29, 1, 7, 16),
(2004, 'January', 25, 7, 30, 4),
(2004, 'July', 7, 2, 18, 13),
(2004, 'June', 25, 10, 5, 21),
(2004, 'March', 22, 8, 25, 6),
(2004, 'May', 2, 3, 13, 28),
(2004, 'November', 22, 6, 11, 30),
(2004, 'October', 10, 30, 11, 9),
(2004, 'September', 14, 6, 18, 11),
(2005, 'April', 18, 7, 31, 8),
(2005, 'August', 29, 16, 31, 7),
(2005, 'December', 29, 11, 3, 28),
(2005, 'February', 16, 2, 24, 8),
(2005, 'January', 11, 9, 28, 10),
(2005, 'July', 4, 26, 22, 15),
(2005, 'June', 4, 21, 3, 21),
(2005, 'March', 26, 6, 29, 1),
(2005, 'May', 19, 30, 19, 24),
(2005, 'November', 1, 6, 1, 12),
(2005, 'October', 3, 27, 2, 26),
(2005, 'September', 28, 7, 9, 19),
(2006, 'April', 30, 16, 5, 22),
(2006, 'August', 25, 5, 20, 8),
(2006, 'December', 13, 19, 11, 7),
(2006, 'February', 17, 8, 28, 13),
(2006, 'January', 23, 1, 9, 1),
(2006, 'July', 20, 15, 9, 29),
(2006, 'June', 13, 29, 14, 19),
(2006, 'March', 28, 9, 27, 13),
(2006, 'May', 1, 28, 6, 13),
(2006, 'November', 26, 17, 1, 25),
(2006, 'October', 3, 28, 16, 13),
(2006, 'September', 6, 15, 4, 23),
(2007, 'April', 6, 22, 27, 22),
(2007, 'August', 16, 5, 18, 14),
(2007, 'December', 24, 19, 21, 25),
(2007, 'February', 26, 10, 27, 4),
(2007, 'January', 23, 11, 29, 23),
(2007, 'July', 23, 31, 4, 20),
(2007, 'June', 2, 29, 12, 23),
(2007, 'March', 26, 5, 25, 4),
(2007, 'May', 17, 28, 21, 31),
(2007, 'November', 16, 19, 6, 15),
(2007, 'October', 14, 28, 4, 29),
(2007, 'September', 10, 18, 11, 13),
(2008, 'April', 21, 4, 28, 8),
(2008, 'August', 30, 15, 30, 16),
(2008, 'December', 11, 17, 10, 22),
(2008, 'February', 26, 9, 11, 28),
(2008, 'January', 31, 27, 28, 17),
(2008, 'July', 14, 25, 18, 2),
(2008, 'June', 20, 12, 3, 1),
(2008, 'March', 3, 21, 30, 8),
(2008, 'May', 13, 31, 5, 30),
(2008, 'November', 4, 27, 30, 6),
(2008, 'October', 1, 22, 1, 27),
(2008, 'September', 28, 8, 5, 15),
(2009, 'April', 6, 23, 12, 23),
(2009, 'August', 12, 17, 19, 26),
(2009, 'December', 14, 21, 3, 11),
(2009, 'February', 26, 10, 25, 1),
(2009, 'January', 29, 14, 28, 19),
(2009, 'July', 1, 15, 31, 18),
(2009, 'June', 29, 26, 19, 7),
(2009, 'March', 1, 10, 20, 9),
(2009, 'May', 12, 20, 12, 22),
(2009, 'November', 2, 8, 13, 29),
(2009, 'October', 21, 1, 12, 23),
(2009, 'September', 13, 30, 13, 24),
(2010, 'April', 11, 30, 3, 30),
(2010, 'August', 12, 25, 11, 31),
(2010, 'December', 23, 1, 11, 24),
(2010, 'February', 18, 7, 26, 5),
(2010, 'January', 5, 7, 13, 23),
(2010, 'July', 11, 30, 9, 24),
(2010, 'June', 1, 13, 1, 24),
(2010, 'March', 23, 31, 29, 2),
(2010, 'May', 12, 19, 11, 1),
(2010, 'November', 13, 7, 13, 29),
(2010, 'October', 1, 30, 1, 17),
(2010, 'September', 23, 11, 23, 1),
(2011, 'April', 13, 23, 14, 23),
(2011, 'August', 15, 19, 11, 4),
(2011, 'December', 27, 31, 1, 24),
(2011, 'February', 17, 23, 20, 10),
(2011, 'January', 20, 4, 2, 12),
(2011, 'July', 1, 31, 12, 7),
(2011, 'June', 1, 28, 1, 15),
(2011, 'March', 20, 3, 27, 3),
(2011, 'May', 6, 27, 5, 20),
(2011, 'November', 13, 27, 4, 20),
(2011, 'October', 9, 26, 16, 26),
(2011, 'September', 28, 1, 25, 23),
(2012, 'April', 24, 27, 23, 19),
(2012, 'August', 23, 27, 23, 28),
(2012, 'December', 12, 18, 31, 15),
(2012, 'February', 29, 1, 29, 2),
(2012, 'January', 3, 15, 11, 16),
(2012, 'July', 5, 19, 13, 31),
(2012, 'June', 2, 19, 2, 22),
(2012, 'March', 29, 14, 20, 27),
(2012, 'May', 21, 13, 19, 16),
(2012, 'November', 20, 1, 5, 30),
(2012, 'October', 6, 31, 6, 31),
(2012, 'September', 24, 9, 3, 16),
(2013, 'April', 30, 26, 9, 1),
(2013, 'August', 29, 15, 31, 9),
(2013, 'December', 16, 24, 1, 16),
(2013, 'February', 24, 2, 8, 3),
(2013, 'January', 4, 17, 1, 15),
(2013, 'July', 7, 21, 7, 30),
(2013, 'June', 21, 3, 6, 29),
(2013, 'March', 30, 7, 30, 4),
(2013, 'May', 3, 31, 7, 23),
(2013, 'November', 23, 17, 4, 15),
(2013, 'October', 14, 23, 2, 5),
(2013, 'September', 2, 10, 17, 2),
(2014, 'April', 28, 10, 27, 10),
(2014, 'August', 21, 28, 17, 29),
(2014, 'December', 9, 29, 10, 27),
(2014, 'February', 9, 2, 16, 8),
(2014, 'January', 7, 1, 16, 3),
(2014, 'July', 3, 15, 5, 24),
(2014, 'June', 1, 18, 28, 6),
(2014, 'March', 31, 4, 31, 13),
(2014, 'May', 1, 8, 2, 25),
(2014, 'November', 11, 29, 14, 5),
(2014, 'October', 5, 19, 4, 31),
(2014, 'September', 25, 3, 30, 9),
(2015, 'April', 5, 13, 5, 14),
(2015, 'August', 20, 28, 20, 6),
(2015, 'December', 13, 1, 13, 30),
(2015, 'February', 28, 4, 28, 10),
(2015, 'January', 31, 12, 1, 11),
(2015, 'July', 14, 26, 14, 20),
(2015, 'June', 6, 18, 26, 15),
(2015, 'March', 24, 12, 24, 11),
(2015, 'May', 1, 14, 10, 28),
(2015, 'November', 2, 10, 1, 14),
(2015, 'October', 15, 6, 2, 25),
(2015, 'September', 25, 10, 3, 25),
(2016, 'April', 18, 10, 16, 26),
(2016, 'August', 24, 4, 22, 3),
(2016, 'December', 25, 14, 5, 11),
(2016, 'February', 23, 6, 25, 3),
(2016, 'January', 29, 23, 20, 2),
(2016, 'July', 15, 31, 15, 31),
(2016, 'June', 2, 30, 8, 25),
(2016, 'March', 28, 1, 23, 4),
(2016, 'May', 2, 18, 4, 20),
(2016, 'November', 29, 2, 3, 28),
(2016, 'October', 4, 14, 14, 5),
(2016, 'September', 20, 24, 28, 18),
(2017, 'April', 25, 29, 8, 30),
(2017, 'August', 2, 29, 14, 15),
(2017, 'December', 9, 2, 13, 29),
(2017, 'February', 25, 14, 26, 12),
(2017, 'January', 31, 27, 28, 1),
(2017, 'July', 29, 19, 31, 1),
(2017, 'June', 3, 13, 14, 19),
(2017, 'March', 26, 15, 30, 2),
(2017, 'May', 8, 28, 5, 19),
(2017, 'November', 19, 1, 17, 12),
(2017, 'October', 25, 15, 9, 24),
(2017, 'September', 15, 29, 13, 4),
(2018, 'April', 30, 4, 19, 3),
(2018, 'August', 31, 13, 3, 2),
(2018, 'December', 27, 17, 6, 18),
(2018, 'February', 28, 4, 7, 1),
(2018, 'January', 15, 9, 3, 20),
(2018, 'July', 3, 17, 19, 18),
(2018, 'June', 16, 10, 6, 30),
(2018, 'March', 31, 18, 24, 7),
(2018, 'May', 1, 30, 7, 4),
(2018, 'November', 15, 23, 3, 14),
(2018, 'October', 13, 5, 3, 30),
(2018, 'September', 27, 22, 13, 25);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('jay', '123'),
('arvind1410', 'abcd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `external_conditions`
--
ALTER TABLE `external_conditions`
  ADD PRIMARY KEY (`YEAR`,`MONTH`);

--
-- Indexes for table `external_conditions_records`
--
ALTER TABLE `external_conditions_records`
  ADD PRIMARY KEY (`YEAR`,`MONTH`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `rainfall`
--
ALTER TABLE `rainfall`
  ADD PRIMARY KEY (`YEAR`,`MONTH`);

--
-- Indexes for table `rainfall_records`
--
ALTER TABLE `rainfall_records`
  ADD PRIMARY KEY (`YEAR`,`MONTH`);

--
-- Indexes for table `temperature`
--
ALTER TABLE `temperature`
  ADD PRIMARY KEY (`YEAR`,`MONTH`);

--
-- Indexes for table `temperature_records`
--
ALTER TABLE `temperature_records`
  ADD PRIMARY KEY (`YEAR`,`MONTH`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
