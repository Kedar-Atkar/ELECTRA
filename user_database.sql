-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2019 at 08:36 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `prod_id`) VALUES
(2, 10),
(2, 12),
(3, 11),
(4, 11),
(5, 0),
(5, 1),
(5, 2),
(5, 13),
(24, 2),
(24, 11),
(25, 1),
(25, 10),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(29, 2),
(29, 10),
(29, 12),
(30, 1),
(30, 10);

-- --------------------------------------------------------

--
-- Table structure for table `product_data`
--

CREATE TABLE `product_data` (
  `prod_id` int(11) NOT NULL,
  `prod_name` varchar(32) NOT NULL,
  `prod_image` varchar(64) NOT NULL,
  `prod_category` varchar(32) NOT NULL,
  `prod_description` varchar(256) NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_rating` int(11) NOT NULL,
  `prod_available` tinyint(1) NOT NULL,
  `prod_brand` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_data`
--

INSERT INTO `product_data` (`prod_id`, `prod_name`, `prod_image`, `prod_category`, `prod_description`, `prod_price`, `prod_rating`, `prod_available`, `prod_brand`) VALUES
(1, 'iphonex', 'iphonex.jpg', 'phone', 'iPhone X is a smartphone that was designed, developed, and marketed by Apple Inc. It is the eleventh generation of the iPhone. ', 90000, 0, 1, 'apple'),
(2, 'Galaxy S9', 'galaxys9.jpg', 'phone', 'Samsung Galaxy S9 smartphone was launched in March 2018. The phone comes with a 5.80-inch touchscreen display with a resolution of 1440 pixels by 2960 pixels at a PPI of 568 pixels per inch. ', 58000, 0, 1, 'Samsung'),
(10, 'MacBook Air ', 'macbook.jpg', 'computing', 'Display : Retina display<br>\r\nProcessor : 1.2GHz<br>\r\nMemory : 8GB of 1866MHz LPDDR3 onboard memory<br>\r\nStorage : 256GB SSD<br>\r\nGraphics and Video Support : Intel HD Graphics 615', 77999, 0, 1, 'apple'),
(11, 'Inspiron 7572', 'inspiron7572.jpg', 'computing', 'Name: Dell Inspiron 7572<br>Dimensions : 19.5 x 358.16 x 246.95mm <br>CPU : 8th Generation Intel Core i7-8550U', 64000, 0, 1, 'dell'),
(12, 'eos 750', 'canoneos750.jpeg', 'photography', 'Effective Pixels: 24.2 MP<br> Sensor Type: CMOS <br> LCD Size: 3 inch Max <br>Shutter Speed: 1/4000 Auto Focus:', 47990, 0, 1, 'canon'),
(13, 'Alpha A68K', 'sonycamera.jpg', 'photography', '24.2 MP APS-C Exmor CMOS sensor <br>BIONZ X image processing engine <br>4D Focus with 79 points high-density AF system', 49999, 0, 1, 'sony'),
(14, 'white running Shoes', 'adidas_white_01.jpg', 'Shoes', 'Comfortable & long-lasting with one year warranty', 8000, 0, 1, 'Adidas'),
(15, 'Red shoes', 'download.jpg', 'Shoes', 'Stylish & long-lasting with one year warranty', 10000, 0, 1, 'Nike');

-- --------------------------------------------------------

--
-- Table structure for table `usercart`
--

CREATE TABLE `usercart` (
  `id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usercart`
--

INSERT INTO `usercart` (`id`, `prod_id`) VALUES
(0, 1),
(3, 1),
(5, 1),
(19, 11),
(22, 1),
(22, 2),
(23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `address` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `address`) VALUES
(1, 'admin', 'admin@electra.com', '1234', ''),
(2, 'a', 'msinghvi16@gmail.com', 'aaaa', 'Matunga, Mumbai-400019'),
(3, 'mohit', 'mohit@singhvi.com', '1111', 'vidyalankar college'),
(4, 'mohit', 'mohit@singhvi.com', 'aaaa', 'wadala west'),
(5, 'a', 'a', 'z', 'vit'),
(6, 'swastik', 'swastik@sonkusare.com', '98765432', ''),
(7, 'kedar', 'kedar@atkar.com', '12345678', ''),
(11, 'virat', 'virat@kohli.com', '12345678', ''),
(12, 'rohit', 'rohit@sharma.com', '12345678', ''),
(13, 'dhoni', 'dhoni@dhoni.com', '12345678', ''),
(14, 'modi', 'narendra@modi.com', '12345678', ''),
(15, 'aloo', 'aloo@bhaloo.com', '12345678', ''),
(16, 'raju', 'raju@kaju.com', '12345678', ''),
(17, 'hi', 'hi@bye.com', '12345678', ''),
(18, 'bye', 'bye@hi.com', '12345678', ''),
(19, 'rajesh', 'rajesh@singhvi.com', '12345678', ''),
(20, 'pravin', 'pravin@gharghe.com', '12345678', ''),
(21, 'k', 'klmn@k.com', '12345678', ''),
(22, 'rajdeep', 'rajdeep@k.com', '12345678', ''),
(23, 'AmeyMorje', 'amey@morje.com', '12345678', ''),
(24, 'Shashikant', 'shashikant0320@gmail.com', 'Shashi@123', 'dhe'),
(25, 'kedar', 'atkarkedar227@gmail.com', 'kedar123', 'Charni road, Mumbai-400002'),
(26, 'rekha', 'rekha.m.singhvi@gmail.com', 'rekha123', 'Kumkum jewellers, 90 feet road, Mumbai'),
(27, 'nihar', 'nihardarnay@gmail.com', '12345678', 'Dadar west'),
(28, 'Mahendra', 'singhvim74@gmail.com', '12345678', 'matunga'),
(29, 'harshali', 'harshali.rambade@vit.edu.in', '12345678', 'nalasopara'),
(30, 'sneh', 'snehgaikwad64@gmail.com', '12345678', 'bandra east');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`,`prod_id`);

--
-- Indexes for table `product_data`
--
ALTER TABLE `product_data`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `usercart`
--
ALTER TABLE `usercart`
  ADD PRIMARY KEY (`id`,`prod_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_data`
--
ALTER TABLE `product_data`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
