-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Mar 30, 2019 at 04:15 AM
=======
<<<<<<< HEAD
-- Generation Time: Mar 29, 2019 at 09:08 PM
=======
<<<<<<< HEAD
-- Generation Time: Mar 28, 2019 at 03:46 AM
=======
<<<<<<< HEAD
-- Generation Time: Mar 28, 2019 at 03:46 AM
=======
<<<<<<< HEAD
-- Generation Time: Mar 26, 2019 at 04:51 AM
=======
-- Generation Time: Mar 26, 2019 at 04:48 AM
>>>>>>> dc1ec080124e18be6aca0ae21a0c18cfda128db5
>>>>>>> e592ab81fe3d20cf89ea7d90b87ef11e35554275
>>>>>>> 6e89c188243c9b6faf4273660f5d6d850eb8651f
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
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
  `flocks_id` int(11) NOT NULL,
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
<<<<<<< HEAD
(6, 11, 35, 12, 23, 23, 55, 12),
(7, 11, 32, 44, 222, 33, 12, 23);
=======
<<<<<<< HEAD
(6, 11, 35, 12, 23, 23, 55, 12),
(7, 11, 32, 44, 222, 33, 12, 23);
=======
(6, 11, 35, 12, 23, 23, 55, 12);
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce

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
<<<<<<< HEAD
(11, 11, 1, 'Starter chicken feed', '21', 'kilo', '500.00', '2019-03-30 02:58:54'),
(12, 11, 1, 'Crumble', '33', 'pcs', '133.00', '2019-03-30 02:57:59'),
(13, 11, 35, 'Chicken Scratch', '23', 'pcs', '233.00', '2019-03-30 02:57:39'),
(14, 11, 36, 'Broiler Varieties', '31', 'pcs', '551.00', '2019-03-30 02:57:21'),
(15, 11, 38, 'Pellets', '12', 'pcs', '500.00', '2019-03-30 02:56:46');
=======
<<<<<<< HEAD
(11, 11, 37, 'Fermented feed', '21', '33', '500.00', '2019-03-26 19:42:39'),
(12, 11, 1, 'Grower Chicken feeds', '33', '20', '133.00', '2019-03-28 19:03:20'),
(13, 11, 35, 'Fermented feed', '23', '39', '233.00', '2019-03-28 19:42:42'),
(14, 11, 13, 'Fermented feed', '31', '44', '551.00', '2019-03-28 19:43:41');
=======
(1, 11, 36, 'Pellets', '12', '12', '500.00', '2019-03-25 12:55:57'),
(11, 11, 37, 'Fermented feed', '21', '33', '500.00', '2019-03-26 19:42:39');
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce

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
(6, 11, 'Eggs', '200', '110', '900.00');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `flocks_id` int(11) NOT NULL,
  `type_of_vaccine` varchar(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`id`, `userid`, `flocks_id`, `type_of_vaccine`, `time`, `amount`) VALUES
<<<<<<< HEAD
(35, 11, 36, 'Attenuated vaccine', '2019-03-28 19:26:19', '23.00'),
(36, 11, 35, 'live vaccine', '2019-03-28 19:47:42', '133.00'),
(38, 11, 37, 'live vaccine', '2019-03-28 19:49:19', '233.00');
=======
<<<<<<< HEAD
(35, 11, 36, 'Attenuated vaccine', '2019-03-28 19:26:19', '23.00'),
(36, 11, 35, 'live vaccine', '2019-03-28 19:47:42', '133.00'),
(38, 11, 37, 'live vaccine', '2019-03-28 19:49:19', '233.00');
=======
(20, 11, 35, 'Poultry', '2019-03-26 20:21:59', '555.00'),
(21, 11, 1, 'Poultry', '2019-03-26 20:21:07', '444.00');
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `userid`, `time`, `customer_id`) VALUES
<<<<<<< HEAD
(14, 11, '2019-03-28 19:58:56', 23),
(15, 11, '2019-03-28 19:59:34', 22),
(17, 11, '2019-03-28 19:59:13', 19);
=======
<<<<<<< HEAD
(14, 11, '2019-03-28 19:58:56', 23),
(15, 11, '2019-03-28 19:59:34', 22),
(17, 11, '2019-03-28 19:59:13', 19);
=======
(14, 11, '2019-03-26 19:37:04', 22),
(15, 11, '2019-03-26 20:01:23', 21);
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce

-- --------------------------------------------------------

--
-- Table structure for table `salesitem`
--

CREATE TABLE `salesitem` (
  `id` int(100) NOT NULL,
  `userid` int(100) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
<<<<<<< HEAD
=======
<<<<<<< HEAD
  `small` int(100) NOT NULL,
  `medium` int(100) NOT NULL,
  `large` int(100) NOT NULL,
=======
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
  `quantity` varchar(100) DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `salesitem`
--

<<<<<<< HEAD
INSERT INTO `salesitem` (`id`, `userid`, `item_id`, `customer_id`, `quantity`, `price`, `time`) VALUES
(39, 11, 6, 23, '2', '1.00', '2019-03-29 19:17:20');
=======
<<<<<<< HEAD
INSERT INTO `salesitem` (`id`, `userid`, `item_id`, `customer_id`, `small`, `medium`, `large`, `quantity`, `price`, `time`) VALUES
(39, 11, 6, 23, 4, 3, 6, '2', '1.00', '2019-03-29 19:17:20');
=======
INSERT INTO `salesitem` (`id`, `userid`, `item_id`, `customer_id`, `quantity`, `price`, `time`) VALUES
(33, 11, 6, 23, '44', '22.00', '2019-03-26 20:14:51');
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce

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
  ADD UNIQUE KEY `flocks_id` (`flocks_id`),
  ADD KEY `userid` (`userid`);

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
  ADD UNIQUE KEY `flocks_id` (`flocks_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `salesitem`
--
ALTER TABLE `salesitem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item_id` (`item_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
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
<<<<<<< HEAD
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
=======
<<<<<<< HEAD
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
=======
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
<<<<<<< HEAD
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
=======
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
--
-- AUTO_INCREMENT for table `flocks`
--
ALTER TABLE `flocks`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `medication`
--
ALTER TABLE `medication`
<<<<<<< HEAD
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
=======
<<<<<<< HEAD
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
=======
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
<<<<<<< HEAD
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
=======
<<<<<<< HEAD
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
=======
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
--
-- AUTO_INCREMENT for table `salesitem`
--
ALTER TABLE `salesitem`
<<<<<<< HEAD
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
=======
<<<<<<< HEAD
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
=======
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
>>>>>>> d3f1135df221dbc7ed5974eabeec9eefac0fb9aa
>>>>>>> 31c3cd95154b92912502c92f2eb5c88cb2d9c5ce
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
  ADD CONSTRAINT `salesitem_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `salesitem_ibfk_4` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
