-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2019 at 03:25 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `userid`, `firstname`, `middlename`, `lastname`, `contact_no`, `address`) VALUES
(16, 1, 'John Michael', 'L', 'Sta clara', '9090909', 'Talic Oroq city'),
(18, 12, 'devon', 'L', 'bacle', '918231223', 'lamac'),
(19, 1, 'devon', 'G', 'bacle', '09092121', 'lower lamac'),
(21, 11, 'Christian', 'P', 'Pocong', '09182772122', 'mobod'),
(22, 11, 'Ian', 'T', 'Banaglorioso', '0927281283', 'lower lamac'),
(23, 11, 'Ian Ray', 'T', 'banaglorioso', '0909102332', 'lower lamac');

-- --------------------------------------------------------

--
-- Table structure for table `eggs`
--

CREATE TABLE `eggs` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `flocks_id` int(100) NOT NULL,
  `small` int(100) DEFAULT NULL,
  `medium` int(100) DEFAULT NULL,
  `large` int(100) DEFAULT NULL,
  `spoiled` int(100) NOT NULL,
  `broken` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eggs`
--

INSERT INTO `eggs` (`id`, `userid`, `flocks_id`, `small`, `medium`, `large`, `spoiled`, `broken`) VALUES
(10, 11, 1, 2, 1, 2, 1, 2),
(11, 11, 1, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `flocks_id` int(100) DEFAULT NULL,
  `type_of_feeds` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `amount` decimal(7,2) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `userid`, `flocks_id`, `type_of_feeds`, `quantity`, `unit`, `amount`, `time`) VALUES
(11, 11, 1, 'Starter chicken feed', '21', 'kilo', '500.00', '2019-03-30 02:58:54'),
(12, 11, 1, 'Crumble', '33', 'pcs', '133.00', '2019-03-30 02:57:59'),
(13, 11, 35, 'Chicken Scratch', '23', 'pcs', '233.00', '2019-03-30 02:57:39'),
(14, 11, 36, 'Broiler Varieties', '31', 'pcs', '551.00', '2019-03-30 02:57:21'),
(15, 11, 38, 'Pellets', '12', 'pcs', '500.00', '2019-03-30 02:56:46');

-- --------------------------------------------------------

--
-- Table structure for table `flocks`
--

CREATE TABLE `flocks` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `breed` varchar(255) DEFAULT NULL,
  `rooster` int(255) DEFAULT NULL,
  `hen` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flocks`
--

INSERT INTO `flocks` (`id`, `userid`, `breed`, `rooster`, `hen`) VALUES
(1, 1, 'silkie', 55, 60),
(13, 1, 'leghorn chicken', 21, 22),
(32, 1, 'Marans', 22, 33),
(35, 1, 'Rosecomb', 33, 20),
(36, 11, 'LegHorn chicken', 66, 22),
(37, 11, 'Brahma', 22, 23),
(38, 11, 'Cornish', 14, 55);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `quality` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `userid`, `description`, `unit`, `quality`, `price`) VALUES
(4, 11, 'Chick', '330', '220', '500.00'),
(5, 11, 'eggs', '445', '336', '1000.00'),
(6, 11, 'Eggs', '200', '110', '900.00'),
(7, 11, 'manok', 'pcs', '12', '200.00');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `flocks_id` int(100) NOT NULL,
  `type_of_vaccine` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `userid`, `flocks_id`, `type_of_vaccine`, `time`, `amount`) VALUES
(41, 11, 13, 'Mycofix', '2019-04-01 23:23:34', '12.00'),
(42, 11, 13, 'Biotronic', '2019-04-01 23:23:39', '12.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `userid`, `time`, `customer_id`) VALUES
(19, 11, '2019-04-01 23:30:38', 22),
(21, 11, '2019-04-01 23:30:49', 22);

-- --------------------------------------------------------

--
-- Table structure for table `salesitem`
--

CREATE TABLE `salesitem` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `item_id` int(100) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `total` decimal(7,2) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesitem`
--

INSERT INTO `salesitem` (`id`, `userid`, `item_id`, `customer_id`, `quantity`, `price`, `total`, `time`) VALUES
(48, 11, 4, 16, '3', '500.00', '1800.00', '2019-04-02 00:49:15'),
(49, 11, 4, 16, '2', '500.00', '1000.00', '2019-04-02 00:47:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'ia', 'ia@gmail.com', 'c12e01f2a13ff5587e1e9e4aedb8242d'),
(11, 'ian', 'ian@gmail.com', '202cb962ac59075b964b07152d234b70'),
(12, 'chis', 'yan@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_ibfk_1` (`userid`);

--
-- Indexes for table `eggs`
--
ALTER TABLE `eggs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `flocks_id` (`flocks_id`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `feeds_ibfk_2` (`flocks_id`);

--
-- Indexes for table `flocks`
--
ALTER TABLE `flocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flocks_ibfk_1` (`userid`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `flocks_id` (`flocks_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `salesitem`
--
ALTER TABLE `salesitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `eggs`
--
ALTER TABLE `eggs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `flocks`
--
ALTER TABLE `flocks`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `salesitem`
--
ALTER TABLE `salesitem`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `eggs`
--
ALTER TABLE `eggs`
  ADD CONSTRAINT `eggs_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `eggs_ibfk_2` FOREIGN KEY (`flocks_id`) REFERENCES `flocks` (`id`);

--
-- Constraints for table `feeds`
--
ALTER TABLE `feeds`
  ADD CONSTRAINT `feeds_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `feeds_ibfk_2` FOREIGN KEY (`flocks_id`) REFERENCES `flocks` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `flocks`
--
ALTER TABLE `flocks`
  ADD CONSTRAINT `flocks_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `medication`
--
ALTER TABLE `medication`
  ADD CONSTRAINT `medication_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `medication_ibfk_2` FOREIGN KEY (`flocks_id`) REFERENCES `flocks` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `salesitem`
--
ALTER TABLE `salesitem`
  ADD CONSTRAINT `salesitem_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salesitem_ibfk_5` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `salesitem_ibfk_6` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
