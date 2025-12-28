-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2023 at 07:48 AM
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
-- Database: `carpooling`
--

-- --------------------------------------------------------

--
-- Table structure for table `post_trip`
--

CREATE TABLE `post_trip` (
  `id` int(10) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `from1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `to1` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `date` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `vechicle` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `free_seat` int(100) DEFAULT NULL,
  `mobile` int(100) DEFAULT NULL,
  `rules` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  `offer_price` int(100) DEFAULT NULL,
  `accno` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `feed_back` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `post_trip`
--

INSERT INTO `post_trip` (`id`, `email`, `name`, `from1`, `to1`, `date`, `vechicle`, `free_seat`, `mobile`, `rules`, `price`, `offer_price`, `accno`, `feed_back`) VALUES
(60, 'user@gmail.com', 'Arun', 'Chennai', 'Bangalore', '20-4-23', 'Indica', 3, 1235468790, 'No Smoking', 300, 0, '1235468790', 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_trip`
--

CREATE TABLE `user_post_trip` (
  `id` int(10) DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `receive_email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `free_seat` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `category` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `accno` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `amount` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_post_trip`
--

INSERT INTO `user_post_trip` (`id`, `email`, `receive_email`, `name`, `address`, `free_seat`, `mobile`, `category`, `accno`, `amount`) VALUES
(55, 'test@gmail.com', 'user@gmail.com', 'rose', 'thambaram', '2', '32434343', 'Friends', '12345', '500'),
(57, 'test@gmail.com', 'user@gmail.com', 'prem', 'tharasuram', '4', '9872654321', 'Friends', '12345', '1000'),
(105, 'test@gmail.com', 'user@gmail.com', 'Panneer Selvam R', '1944, pt no 35, Annai Anjugam Nagar, Ullur', '1', '09790675343', 'car', '1235468790', '300'),
(106, 'user@gmail.com', 'user@gmail.com', 'Arun', 'Chennai', '2', '1234567889', 'Car', '1235468790', '500');

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `mobile` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(22, 'user', 'user@gmail.com', 'test', 2147483647),
(23, 'test', 'test@gmail.com', 'test', 2147483647);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `post_trip`
--
ALTER TABLE `post_trip`
  MODIFY `id` int(10) DEFAULT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `user_post_trip`
--
ALTER TABLE `user_post_trip`
  MODIFY `id` int(10) DEFAULT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `id` int(10) DEFAULT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
