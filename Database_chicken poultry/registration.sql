-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Mar 26, 2019 at 04:51 AM
=======
-- Generation Time: Mar 26, 2019 at 04:48 AM
>>>>>>> dc1ec080124e18be6aca0ae21a0c18cfda128db5
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
  `small` int(100) DEFAULT NULL,
  `medium` int(100) DEFAULT NULL,
  `large` int(100) DEFAULT NULL,
  `spoiled` int(100) NOT NULL,
  `broken` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eggs`
--

INSERT INTO `eggs` (`id`, `userid`, `small`, `medium`, `large`, `spoiled`, `broken`) VALUES
(5, 11, 200, 440, 300, 31, 40);

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `type_of_feeds` varchar(100) DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `userid`, `breed`, `type_of_feeds`, `quantity`, `unit`, `amount`, `time`) VALUES
(10, 11, 'Marans', 'Layer chicken feed', '12', '22', '111.00', '2019-03-21 13:27:37'),
(11, 1, 'Rosecomb', 'Crumble', '22', '14', '200.00', '2019-03-25 22:40:57');

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
(33, 11, 'Marans', 33, 44),
(35, 1, 'Rosecomb', 33, 20),
(36, 11, 'LegHorn chicken', 66, 22),
(37, 11, 'Brahma', 22, 23);

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
(6, 11, 'Broiler', '200', '110', '900.00');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `type_of_vaccine` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `userid`, `breed`, `type_of_vaccine`, `time`, `amount`) VALUES
(18, 11, 'leghorn chicken', 'live vaccine', '2019-03-21 14:03:10', '660.00'),
(19, 1, 'Rosecomb', 'Mycotoxin', '2019-03-25 22:40:12', '600.00');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `userid`, `time`, `lastname`) VALUES
(9, 11, '2019-03-14 23:29:09', 'Sta clara'),
(10, 11, '2019-03-14 23:34:55', 'bacle'),
(11, 1, '2019-03-16 14:57:27', 'Sta clara'),
(12, 11, '2019-03-21 13:28:44', 'Sta clara'),
(13, 11, '2019-03-21 13:28:52', 'bacle');

-- --------------------------------------------------------

--
-- Table structure for table `salesitem`
--

CREATE TABLE `salesitem` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `description` varchar(120) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesitem`
--

INSERT INTO `salesitem` (`id`, `userid`, `description`, `lastname`, `quantity`, `price`, `time`) VALUES
(25, 1, 'confuse', 'Sta clara', '22', '11.00', '2019-03-21 23:21:35'),
(26, 1, 'confuse', 'bacle', '12', '22.00', '2019-03-21 23:24:02'),
(27, 11, 'Broiler', 'bacle', '144', '200.00', '2019-03-21 14:07:50'),
(28, 11, 'eggs', 'Banaglorioso', '56', '1000.00', '2019-03-21 14:09:42');

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
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

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
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `salesitem`
--
ALTER TABLE `salesitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

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
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `flocks`
--
ALTER TABLE `flocks`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `salesitem`
--
ALTER TABLE `salesitem`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
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
  ADD CONSTRAINT `eggs_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `feeds`
--
ALTER TABLE `feeds`
  ADD CONSTRAINT `feeds_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

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
  ADD CONSTRAINT `medication_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `salesitem`
--
ALTER TABLE `salesitem`
  ADD CONSTRAINT `salesitem_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
