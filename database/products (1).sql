-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2020 at 08:22 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pustika-bucket`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pName`, `price`, `description`, `available`, `category`, `item`, `pCode`, `picture`, `date`) VALUES
(1, 'T-Shirt', 120, 'T-Custom Item', 4, 'cus01', 'bracelets', 't-007', 'ttv.jpg', '2018-09-20 07:10:40'),
(2, 'Baborry wallet', 6000, 'Baborry-Double-Zipper-Coin-Bag-RFID-Blocking-Men-Wallets-New-Brand-PU-Leather-Wallet-Money-Purses', 3, 'cus02', 'wallet', 'w-004', 'IMG_1212.jpg', '2018-09-20 07:40:28'),
(3, 'Loafer Shoes', 2000, 'Loafer black shoes', 8, 'cus03', 'shoes', 's-001', '8544789_5_.jpg', '2018-09-20 08:33:57'),
(4, 'Artificial Belt', 1200, 'Black artificial belt', 9, 'cus04', 'belt', 'b-001', '0283BLT.jpg', '2018-09-20 08:35:44'),
(5, 'Polo T-shirt', 500, 'Polo t-shirt', 10, 'cus05', 't-shirt', 's-002', 'lp00-2.jpg', '2018-09-20 08:40:06'),
(6, 'T-shirt', 300, 'Polo colorful t-shirt', 12, 'tshirt', 't-shirt', 't-003', 'yellow_2_.jpg', '2018-09-20 08:41:18'),
(7, 'Tshirt', 200, 'Design t-shirt', 10, 'tshirt', 't-shirt', 't-004', 'MSTSV14042.jpg', '2018-09-20 08:42:11'),
(8, 'T-shirt', 200, 'Color t-shirt', 20, 'tshirt', 't-shirt', 't-005', 'MSTS14759.jpg', '2018-09-20 08:45:39'),
(9, 'Men\'s Tshirt', 500, 'Colorful men\'s t-shirt', 20, 'tshirt', 't-shirt', 't-006', 'MSTSV14046.jpg', '2018-09-20 08:57:07'),
(10, 'Sports tshirt', 1000, 'Real madrid t-shirt', 5, 'tshirt', 't-shirt', 't-007', 'MSTSV14039.jpg', '2018-09-20 08:58:38'),
(12, 'T-shirt', 300, 'Design t-shirt', 10, 'tshirt', 't-shirt', 't-010', 'MSTSV14049.jpg', '2018-09-20 09:02:04'),
(13, 'Leather Shoes', 2000, 'Best leather shoes', 10, 'shoes', 'shoes', 's-002', '8546789_5_.jpg', '2018-09-21 10:39:32'),
(14, 'Belt', 2000, 'Nice belt', 20, 'belt', 'belt', 'b-003', 'gbdl18_1.png', '2018-10-01 03:47:08'),
(15, 'Belt', 300, 'Nice one belt', 20, 'belt', 'belt', 'b-004', '101010_1_.jpg', '2018-10-01 03:48:09'),
(16, 'Mens Belt', 300, 'Mens belt', 15, 'belt', 'belt', 'b-005', 'image4_2.jpg', '2018-10-01 03:49:08'),
(17, 'Leather Wallet', 100, 'Leather wallet', 10, 'wallet', 'wallet', 'w-005', 'Baborry-Double-Zipper-Coin-Bag-RFID-Blocking-Men-Wallets-New-Brand-PU-Leather-Wallet-Money-Purses.jpg_640x640.jpg', '2018-10-01 03:51:52'),
(18, 'Wallet', 300, 'Wallet', 20, 'wallet', 'wallet', 'w-007', '1881_G.jpg', '2018-10-01 03:52:43'),
(19, 'Black walllet', 300, 'Black mens wallet', 20, 'wallet', 'wallet', 'w-009', 'image5_1_2.jpg', '2018-10-01 03:53:37'),
(20, 'Men\'s Shoes', 1200, 'Men\'s shoes', 23, 'shoes', 'shoes', 's-003', 'IMG_2429.jpg', '2018-10-01 03:56:41'),
(21, 'Shoes', 2000, 'Formal Shoes', 12, 'shoes', 'shoes', 's-004', 'G51A7054.jpg', '2018-10-01 03:57:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
