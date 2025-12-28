-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2017 at 11:47 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `carpooling`
--

-- --------------------------------------------------------

--
-- Table structure for table `cust_reg`
--

CREATE TABLE IF NOT EXISTS `cust_reg` (
`id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cust_reg`
--

INSERT INTO `cust_reg` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(1, 'test', 'test@gmail.com', 'test', '22343434'),
(8, 'test1', 'test1', 'test1', '3434839044'),
(10, 'rose', 'rose@gmail.com', 'test', '9646456454'),
(11, 'rose', 'rose@gmail.com', 'test', '9646456454'),
(12, 'prem', 'prem@gmail.com', 'test', '9872564132'),
(13, 'mani', 'mani@gmail.com', 'test', '7896548213'),
(14, 'custest', 'custest@gmail.com', 'test', '9321654789'),
(16, 'test', 'test123@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '123456879');

-- --------------------------------------------------------

--
-- Table structure for table `feed_back`
--

CREATE TABLE IF NOT EXISTS `feed_back` (
`id` int(10) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `feed_back` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feed_back`
--

INSERT INTO `feed_back` (`id`, `email`, `feed_back`) VALUES
(1, 'user@gmail.com', 'sfdfdfdf'),
(2, 'user@gmail.com', 'test test'),
(3, 'testuser@gmail.com', 'fdffdfdff'),
(4, 'test@gmail.com', 'ffhgfshhshhshfshfghprem'),
(5, '', 'rererterter'),
(6, '', 'rererterter'),
(7, 'raja@gmail.com', 'yrhdfgdgfd');

-- --------------------------------------------------------

--
-- Table structure for table `post_trip`
--

CREATE TABLE IF NOT EXISTS `post_trip` (
`id` int(10) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `from1` varchar(100) COLLATE utf8_bin NOT NULL,
  `to1` varchar(100) COLLATE utf8_bin NOT NULL,
  `date` varchar(100) COLLATE utf8_bin NOT NULL,
  `vechicle` varchar(100) COLLATE utf8_bin NOT NULL,
  `free_seat` int(100) NOT NULL,
  `mobile` int(100) NOT NULL,
  `rules` varchar(100) COLLATE utf8_bin NOT NULL,
  `price` int(100) NOT NULL,
  `offer_price` int(100) NOT NULL,
  `accno` varchar(100) COLLATE utf8_bin NOT NULL,
  `feed_back` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `post_trip`
--

INSERT INTO `post_trip` (`id`, `email`, `name`, `from1`, `to1`, `date`, `vechicle`, `free_seat`, `mobile`, `rules`, `price`, `offer_price`, `accno`, `feed_back`) VALUES
(11, 'test@gmail.com', 'madhan', 'kumbakonam', 'thanjavur', '23/01/2017', 'innova', 3, 123, 'no smoking', 500, 400, '123456', ''),
(13, 'user@gmail.com', 'mano', 'thanjavur', 'trichy', '28/01/2017', 'innova', 2, 123, 'no smoking', 400, 400, '123456', ''),
(18, 'user@gmail.com', 'mani', 'trichy', 'kumbakonam', '23/01/2017', 'Chevrolet', 4, 123, 'no smoking', 400, 300, '123456', ''),
(19, 'user@gmail.com', 'sanjai', 'nagapattinam', 'thanjavur', '30/01/2017', 'Honda', 1, 123, 'no smoking', 500, 400, '123456', ''),
(49, 'test@gmail.com', 'raja', 'sdsd', 'dsds', 'dsdsd', 'sdsdsd', 0, 0, 'sdsd', 0, 0, '434434', '4fdff'),
(51, 'test@gmail.com', 'prabhu', 'chennai', 'bangalore', '9/12/2017', 'Benz', 2, 2147483647, 'No smoking', 9000, 2000, '845656', 'trip booking'),
(52, 'arudhra@gmail.com', 'karthi', 'chennai', 'kerala', '9/10/2017', 'Benz', 3, 2147483647, 'No drink', 9000, 1000, '8456635', 'test'),
(53, 'raja@gmail.com', 'ravi', 'trichy', 'nagapattinam', '25/2/17', 'honda', 3, 2147483647, 'no smoking', 400, 50, '123456', 'fgf'),
(54, 'raja@gmail.com', 'ram', 'trichy', 'nagapattinam', '25/2/17', 'honda', 3, 2147483647, 'no smoking', 400, 50, '123456', 'fgf'),
(58, 'usertest@gmail.com', 'vignesh', 'thivarur', 'kumbakonam', '1/1/17', 'innova', 3, 2147483647, 'no smoking', 500, 100, '123456', 'hi welcome to my trip'),
(59, '', '', '', '', '', '', 0, 0, '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_trip`
--

CREATE TABLE IF NOT EXISTS `user_post_trip` (
`id` int(10) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `receive_email` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `address` varchar(100) COLLATE utf8_bin NOT NULL,
  `free_seat` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `category` varchar(100) COLLATE utf8_bin NOT NULL,
  `accno` varchar(100) COLLATE utf8_bin NOT NULL,
  `amount` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_post_trip`
--

INSERT INTO `user_post_trip` (`id`, `email`, `receive_email`, `name`, `address`, `free_seat`, `mobile`, `category`, `accno`, `amount`) VALUES
(55, 'arudhra@gmail.com', 'user@gmail.com', 'rose', 'thambaram', '2', '32434343', 'Friends', '12345', '500'),
(57, 'arudhra@gmail.com', 'user@gmail.com', 'prem', 'tharasuram', '4', '9872654321', 'Friends', '12345', '1000'),
(62, 'user@gmail.com', 'test@gmail.com', 'test', 'test', '2', '97545482445', 'test', '12345', '3454'),
(80, 'test@gmail.com', 'test@gmail.com', 'sdsd', 'sdsdsdsds', 'sdsdd', 'sd', 'sds', '12345', 'dsss'),
(99, 'mani@gmail.com', 'raja@gmail.com', 'mani', 'vallam', '2', '9875462330', 'friends', '123456', '300'),
(100, 'mani@gmail.com', 'raja@gmail.com', 'mani.k', 'vallam', '3', '1234568979', 'friends', '123456', '300'),
(101, 'usertest@gmail.com', 'usertest@gmail.com', 'custest', 'thiruvarur', '4', '9321564789', 'friends', '123456', '500'),
(102, 'test@gmail.com', 'test@gmail.com', '', '', '', '', '', '123456', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE IF NOT EXISTS `user_reg` (
`id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(22, 'user', 'user@gmail.com', 'test', 2147483647),
(23, 'test', 'test@gmail.com', 'test', 2147483647),
(24, 'test1', 'test1@gmail.com', 'test', 2147483647),
(25, 'testuser', 'testuser@gmail.com', 'testuser', 2147483647),
(26, 'arudhra', 'arudhra@gmail.com', 'test', 2147483647),
(27, 'raja', 'raja@gmail.com', 'test', 2147483647),
(28, 'usertest', 'usertest@gmail.com', 'test', 2147483647),
(29, 'usertest', 'usertest@gmail.com', 'test', 2147483647);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cust_reg`
--
ALTER TABLE `cust_reg`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feed_back`
--
ALTER TABLE `feed_back`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_trip`
--
ALTER TABLE `post_trip`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_post_trip`
--
ALTER TABLE `user_post_trip`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cust_reg`
--
ALTER TABLE `cust_reg`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `feed_back`
--
ALTER TABLE `feed_back`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `post_trip`
--
ALTER TABLE `post_trip`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `user_post_trip`
--
ALTER TABLE `user_post_trip`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=103;
--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
