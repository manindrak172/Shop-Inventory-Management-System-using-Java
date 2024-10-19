-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2021 at 03:38 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lmss`
--

-- --------------------------------------------------------

--
-- Table structure for table `currentstocks`
--

CREATE TABLE `currentstocks` (
  `productcode` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `currentstocks`
--

INSERT INTO `currentstocks` (`productcode`, `quantity`) VALUES
('p2', 30),
('p1', 1),
('p10', 0),
('prod1', 6),
('prod5', 35),
('prod3', 0),
('prod2', 8),
('prod8', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cid` int(11) NOT NULL,
  `customercode` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cid`, `customercode`, `fullname`, `location`, `phone`) VALUES
(2, 'cus3', 'ram', 'ktm', '331'),
(5, 'cus4', 'rahul', 'gaya', '8');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `productcode` varchar(100) NOT NULL,
  `productname` varchar(50) NOT NULL,
  `costprice` double NOT NULL,
  `sellingprice` double NOT NULL,
  `brand` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `productcode`, `productname`, `costprice`, `sellingprice`, `brand`) VALUES
(81, 'prod8', 'computer1', 500, 600, 'Dell'),
(72, 'prod2', 'pen', 20, 30, 'techno'),
(80, 'prod7', 'computer', 100, 1000, 'hp'),
(78, 'prod5', 'Mobile', 500, 700, 'cg'),
(79, 'prod6', 'com', 5, 6, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `purchaseinfo`
--

CREATE TABLE `purchaseinfo` (
  `purchaseid` int(11) NOT NULL,
  `suppliercode` varchar(200) NOT NULL,
  `productcode` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalcost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchaseinfo`
--

INSERT INTO `purchaseinfo` (`purchaseid`, `suppliercode`, `productcode`, `date`, `quantity`, `totalcost`) VALUES
(19, 's1', 'p2', 'Wed Jan 14 00:15:19 NPT 2015', 40, 1320),
(20, 's1', 'p1', 'Wed Jan 07 16:42:44 NPT 2015', 4, 80000),
(21, 's6', 'p10', 'Tue Jan 06 16:51:44 NPT 2015', 20, 400000),
(22, 'sup4', 'prod1', 'Thu Jan 15 15:25:45 NPT 2015', 4, 1600),
(23, 'sup5', 'prod1', 'Thu Jan 15 00:00:00 NPT 2015', 6, 2400),
(24, 'sup4', 'prod5', 'Fri Jan 16 22:14:10 NPT 2015', 30, 15000),
(25, 'sup18', 'prod5', 'Sat Jan 17 22:23:52 NPT 2015', 5, 2500),
(26, 'sup18', 'prod3', 'Fri Jan 16 00:00:00 NPT 2015', 4, 12),
(27, 'sup18', 'prod2', 'Fri Jan 16 22:42:33 NPT 2015', 10, 200),
(28, 'sup71', 'prod1', 'Thu Jan 22 23:06:32 NPT 2015', 1, 600),
(29, 'sup4', 'prod2', 'Fri Jan 16 23:09:17 NPT 2015', 5, 150),
(30, 'sup3', 'prod5', 'Mon Aug 02 19:55:57 IST 2021', 1, 500),
(31, 'sup75', 'prod2', 'Sun Aug 08 20:56:03 IST 2021', 3, 60),
(32, 'sup75', 'prod2', 'Sun Aug 08 20:56:03 IST 2021', 5, 100),
(33, 'sup76', 'prod8', 'Mon Aug 09 21:03:20 IST 2021', 1, 500);

-- --------------------------------------------------------

--
-- Table structure for table `salesreport`
--

CREATE TABLE `salesreport` (
  `salesid` int(11) NOT NULL,
  `date` varchar(40) NOT NULL,
  `productcode` varchar(100) NOT NULL,
  `customercode` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `revenue` double NOT NULL,
  `soldby` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesreport`
--

INSERT INTO `salesreport` (`salesid`, `date`, `productcode`, `customercode`, `quantity`, `revenue`, `soldby`) VALUES
(1, 'Fri Jan 16 23:12:40 NPT 2015', 'prod2', 'cus3', 4, 120, 'user4'),
(7, 'Sun Aug 01 00:00:00 IST 2021', 'prod8', 'cus4', 1, 600, 'user6'),
(6, 'Mon Aug 02 20:56:48 IST 2021', 'prod5', 'cus4', 1, 700, 'user6');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `sid` int(11) NOT NULL,
  `suppliercode` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sid`, `suppliercode`, `fullname`, `location`, `phone`) VALUES
(144, 'sup77', 'golu', 'gaya', '7260839439'),
(143, 'sup76', 's', 's', '8');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(200) NOT NULL,
  `category` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `location`, `phone`, `username`, `password`, `category`) VALUES
(58, 'p', 'p', '7', 'user7', '3e0469fb134991f8f75a2760e409c6ed', 'NORMAL USER'),
(57, 'kartig', 'gaya', '8809251649', 'user6', '202cb962ac59075b964b07152d234b70', 'ADMINISTRATOR'),
(56, 'rahul', 'delhi', '7260839439', 'user5', 'a791842f52a0acfbb3a783378c066b8', 'ADMINISTRATOR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  ADD PRIMARY KEY (`purchaseid`);

--
-- Indexes for table `salesreport`
--
ALTER TABLE `salesreport`
  ADD PRIMARY KEY (`salesid`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `purchaseinfo`
--
ALTER TABLE `purchaseinfo`
  MODIFY `purchaseid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `salesreport`
--
ALTER TABLE `salesreport`
  MODIFY `salesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
