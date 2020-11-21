-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2020 at 06:45 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pustika-bucket`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(125) NOT NULL,
  `lastName` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(25) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `confirmCode` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `lastName`, `email`, `mobile`, `address`, `password`, `type`, `confirmCode`) VALUES
(1, 'HSK', '$$', 'hari01584@gmail.com', '8872276957', 'FZR', '$5$rounds=535000$/aZcgCuhLQo8Lle5$IskgTI..PWhJAzN/R0KFriecscbvdEffH5HfxBOuE/1', 'manager', '0'),
(2, 'Admin', 'User', 'supersu@s', '00000000000', 'earth', '$5$rounds=535000$oAqAfLqFXt.vR.oR$e8glznWrzA5BclBSpBJnSHJNk2DhYVuTE7Gd/NRCXw9', 'manager', '0'),
(5, 'Admin2', 'User', 'supersu@s1', '00000000000', 'earth', '$5$rounds=535000$oAqAfLqFXt.vR.oR$e8glznWrzA5BclBSpBJnSHJNk2DhYVuTE7Gd/NRCXw9', 'manager', '0');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `ofname` text NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `oplace` text NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `dstatus` varchar(10) NOT NULL DEFAULT 'no',
  `odate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ddate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `ofname`, `pid`, `quantity`, `oplace`, `mobile`, `dstatus`, `odate`, `ddate`) VALUES
(1, NULL, 'Kashmiri Chador', 1, 2, 'Khilkhet, Dhaka', '01609876543', 'no', '2018-09-21 13:05:07', NULL),
(2, NULL, 'Nur Mohsin', 1, 3, 'Khilkhet, Dhaka', '01609876543', 'no', '2018-09-21 13:08:55', NULL),
(3, NULL, 'Nur Mohsin', 2, 4, 'Dhaka', '09876543123', 'no', '2018-09-21 13:13:04', NULL),
(4, NULL, 'Nur Mohsin', 4, 1, 'Manikganj', '798345', 'no', '2018-09-21 13:18:47', NULL),
(5, NULL, 'Nur Mohsin', 9, 4, 'Dhaka, Bangladesh', '01609876543', 'no', '2018-09-22 02:01:02', NULL),
(6, NULL, 'Nur Mohsin', 2, 1, 'Manikganj', '01609876543', 'no', '2018-09-22 02:09:29', NULL),
(7, 9, 'Nur Mohsin', 2, 1, 'Manikganj', '01609876543', 'no', '2018-09-22 02:10:46', NULL),
(8, 9, 'Nur Mohsin', 1, 1, 'Manikganj', '0994', 'no', '2018-09-22 03:04:13', NULL),
(9, 9, 'Kashmiri Chador', 12, 4, 'Dhaka', '01609876543', 'no', '2018-09-22 03:21:14', '2018-09-29'),
(10, 9, 'Chador', 13, 1, 'Dhaka', '01609876543', 'no', '2018-09-22 03:22:05', '2018-09-29'),
(11, NULL, 'Harishankar Kumar', 1, 1, '21', '88755', 'no', '2020-11-21 01:20:01', '2020-11-28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pName` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL,
  `available` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `pCode` varchar(20) NOT NULL,
  `picture` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(27, 'Let Us C', 200, 'Basic book for C programming by Y.Kanetkar', 1, 'sub01', 'book', 'UTA003', 'letuscyash.jpg', '2020-11-21 14:44:52'),
(28, 'C++ by E.Balaguruswamy', 300, 'Good condition book of previous session', 1, 'sub01', 'book', 'UTA043', 'ebalaswami.jpg', '2020-11-21 14:49:53'),
(29, 'C Programming for Arduino by Julien Bayle', 350, 'Good condition Book', 1, 'sub01', 'Julien Bayle', 'UTA004', 'C_programming_for_arduino_Julien_Bayle.jpg', '2020-11-21 14:58:21'),
(30, 'Introduction to Algorithms by Thomas H. Corem', 399, 'Book for Beginners and in good condition', 1, 'sub01', 'Thomas H. Corem', 'UTA020', 'Introduction_to_algorithms_by_Thomas_H._Corem.jpg', '2020-11-21 15:08:45'),
(37, 'Mathematics for finance by Marek Capinski', 300, 'Good book with all basic topics covered', 1, 'sub02', 'Book', 'UED002', 'mathematics_for_finance_by_Marek_Capinski.jpg', '2020-11-21 15:44:17'),
(38, 'Thomas and Finney Calculus and DifferentialEquation', 299, 'Book is in a good condition and have all topics covered', 1, 'sub02', 'Thomas and Finney', 'UMA010', 'Thomas_and_Finney_Calculus.jpg', '2020-11-21 17:12:32'),
(39, 'Mathematics for Engineers by Anthony Croft', 310, 'Book is in a good condition and has perfect pages', 1, 'sub02', 'Book', 'UMA011', 'Mathematics_for_Engineers_by_Anthony_Croft.jpg', '2020-11-21 17:15:26'),
(40, 'H.S. Kasana book for Complex Variables', 350, 'Book is of latest version and has good condition', 1, 'sub02', 'Book', 'UMA014', 'H.S._Kasana_book_for_Complex_Variables.jpg', '2020-11-21 17:18:07'),
(41, 'Hughes Book for Electrical Engineering', 325, 'Book is in good condition and has all topics covered', 1, 'sub03', 'Book by Hughes', 'UES011', 'Hughes_electricalengineering.jpg', '2020-11-21 17:22:35'),
(42, 'Nagrath Kothari Book for Electrical Engineering', 299, 'Book is in a good condition and is useful for B.Tech course', 1, 'sub03', 'Writer-Nagrath Kothari', 'UES011', 'Nagrath_Kothari_electrical_engineering.jpg', '2020-11-21 17:24:24'),
(43, 'NK Verma Applied Physics', 300, 'Book is really good in its condition and have very basic topics also covered', 1, 'sub03', 'Book for Applied Physics', 'UES016', 'NK_Verma_Applied_Physics.jpg', '2020-11-21 17:26:09');

-- --------------------------------------------------------

--
-- Table structure for table `product_level`
--

CREATE TABLE IF NOT EXISTS `product_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `v_shape` varchar(10) NOT NULL DEFAULT 'no',
  `polo` varchar(10) NOT NULL DEFAULT 'no',
  `clean_text` varchar(10) NOT NULL DEFAULT 'no',
  `design` varchar(10) NOT NULL DEFAULT 'no',
  `chain` varchar(10) NOT NULL DEFAULT 'no',
  `leather` varchar(10) NOT NULL DEFAULT 'no',
  `hook` varchar(10) NOT NULL DEFAULT 'no',
  `color` varchar(10) NOT NULL DEFAULT 'no',
  `formal` varchar(10) NOT NULL DEFAULT 'no',
  `converse` varchar(10) NOT NULL DEFAULT 'no',
  `loafer` varchar(10) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `product_level`
--

INSERT INTO `product_level` (`id`, `product_id`, `v_shape`, `polo`, `clean_text`, `design`, `chain`, `leather`, `hook`, `color`, `formal`, `converse`, `loafer`) VALUES
(1, 1, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(2, 2, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(3, 3, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(4, 4, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(5, 5, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(6, 6, 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(7, 7, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(8, 8, 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(9, 9, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(10, 10, 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(14, 14, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no'),
(12, 12, 'yes', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(13, 13, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'yes'),
(15, 15, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 'no'),
(16, 16, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no'),
(17, 17, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(18, 18, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(19, 19, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no'),
(20, 20, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no'),
(21, 21, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no'),
(22, 22, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(23, 23, 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(24, 24, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(25, 25, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(26, 26, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(27, 27, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(28, 28, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(29, 29, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(30, 30, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(31, 31, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(32, 32, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(33, 33, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(34, 34, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(35, 35, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(36, 36, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(37, 37, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(38, 38, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(39, 39, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(40, 40, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(41, 41, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(42, 42, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(43, 43, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `product_view`
--

CREATE TABLE IF NOT EXISTS `product_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `product_view`
--

INSERT INTO `product_view` (`id`, `user_id`, `product_id`, `date`) VALUES
(1, 9, 9, '2018-09-22 02:19:30'),
(2, 9, 7, '2018-09-27 02:47:43'),
(3, 9, 12, '2018-09-22 03:20:59'),
(4, 9, 10, '2018-09-29 03:07:11'),
(5, 9, 5, '2018-09-22 03:19:19'),
(6, 9, 8, '2018-09-21 15:57:50'),
(7, 9, 6, '2018-09-22 02:12:54'),
(8, 9, 1, '2018-09-22 03:03:36'),
(9, 19, 7, '2020-11-21 08:32:28'),
(10, 19, 8, '2020-11-21 10:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `online` varchar(1) NOT NULL DEFAULT '0',
  `activation` varchar(3) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `mobile`, `reg_time`, `online`, `activation`) VALUES
(20, 'Admin', 'supersu@s', 'supersu', '$5$rounds=535000$oAqAfLqFXt.vR.oR$e8glznWrzA5BclBSpBJnSHJNk2DhYVuTE7Gd/NRCXw9', '+00000000000', '2020-11-21 12:48:22', '0', 'yes'),
(19, 'Harishankar Kumar', 'hari01584@gmail.com', 'hari01584', '$5$rounds=535000$/aZcgCuhLQo8Lle5$IskgTI..PWhJAzN/R0KFriecscbvdEffH5HfxBOuE/1', '+918872276957', '2020-11-21 03:57:29', '1', 'yes');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
