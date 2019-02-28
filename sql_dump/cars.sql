-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2019 at 12:37 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `number` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `year_made` date NOT NULL,
  `model` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `number`, `year_made`, `model`) VALUES
(1, 'abc123', '1992-03-05', 'Mazda'),
(2, 'ddd555', '2000-05-09', 'Toyota'),
(3, 'jdj594', '2008-12-05', 'Nissan'),
(4, 'EV0010', '2016-03-04', 'Tesla'),
(5, 'kok568', '2010-10-01', 'Bmw'),
(6, 'kas874', '1999-09-26', 'Vw'),
(7, 'hhh999', '2004-04-03', 'Ford'),
(8, 'dfh932', '2014-07-09', 'Subaru'),
(9, 'ban000', '2008-05-03', 'Renault'),
(10, 'gag222', '2001-06-08', 'Volvo');

-- --------------------------------------------------------

--
-- Table structure for table `car_management`
--

CREATE TABLE `car_management` (
  `id` int(11) NOT NULL,
  `cars_id` int(11) NOT NULL,
  `segments_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `car_management`
--

INSERT INTO `car_management` (`id`, `cars_id`, `segments_id`, `user_id`, `date_from`, `date_to`) VALUES
(1, 2, 3, 3, '2018-07-11', '2019-02-15'),
(2, 1, 1, 1, '1992-02-01', '2016-05-04'),
(3, 10, 2, 2, '2018-11-12', '2019-02-09'),
(4, 3, 3, 3, '2017-06-06', '2018-10-05'),
(5, 5, 1, 1, '2018-01-06', '2018-10-08'),
(6, 9, 2, 2, '2017-10-13', '2019-02-01'),
(7, 8, 3, 3, '2016-05-09', '2016-12-15'),
(8, 7, 1, 1, '2017-02-15', '2018-09-11'),
(9, 6, 2, 2, '2017-12-15', '2018-08-13'),
(10, 4, 4, 4, '2018-04-22', '2019-02-05'),
(11, 2, 1, 1, '2019-02-15', NULL),
(12, 1, 4, 4, '2016-05-04', NULL),
(13, 10, 3, 3, '2019-02-09', NULL),
(14, 8, 4, 4, '2016-12-15', NULL),
(15, 5, 4, 4, '2018-10-08', NULL),
(16, 6, 1, 1, '2018-08-13', NULL),
(17, 3, 2, 2, '2018-10-05', NULL),
(18, 7, 3, 3, '2018-09-11', NULL),
(19, 4, 3, 3, '2019-02-05', NULL),
(20, 9, 4, 4, '2019-02-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `car_status`
--

CREATE TABLE `car_status` (
  `id` int(11) NOT NULL,
  `cars_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `car_status`
--

INSERT INTO `car_status` (`id`, `cars_id`, `status_id`, `date_from`, `date_to`) VALUES
(1, 1, 4, '2018-09-18', '2019-02-27'),
(2, 2, 2, '2018-09-03', '2019-02-01'),
(3, 3, 3, '2018-02-11', '2019-02-20'),
(4, 4, 2, '2017-06-04', '2019-02-11'),
(5, 5, 2, '2018-02-04', '2018-12-11'),
(6, 6, 2, '2017-06-04', '2018-11-05'),
(7, 7, 1, '2017-11-12', '2019-02-13'),
(8, 8, 4, '2019-02-01', '2019-02-27'),
(9, 10, 2, '2018-01-15', '2018-10-10'),
(10, 9, 3, '2017-12-03', '2019-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `segments`
--

CREATE TABLE `segments` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `segments`
--

INSERT INTO `segments` (`id`, `name`) VALUES
(1, '1 Skyrius'),
(2, '2 Skyrius'),
(3, '3 Skyrius'),
(4, '4 Skyrius');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `parent_id`) VALUES
(1, 'Labai gera', NULL),
(2, 'Gera', NULL),
(3, 'Patenkinama', NULL),
(4, 'Bloga', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `segment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `segment_id`) VALUES
(1, 'Jonas', 1),
(2, 'Petras', 3),
(3, 'Maryte', 2),
(4, 'Stase', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_management`
--
ALTER TABLE `car_management`
  ADD PRIMARY KEY (`id`),
  ADD KEY `car_management_ibfk_1` (`cars_id`),
  ADD KEY `segments_id` (`segments_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `car_status`
--
ALTER TABLE `car_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cars_id` (`cars_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `segments`
--
ALTER TABLE `segments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_ibfk_1` (`segment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `car_management`
--
ALTER TABLE `car_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `car_status`
--
ALTER TABLE `car_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `segments`
--
ALTER TABLE `segments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `car_management`
--
ALTER TABLE `car_management`
  ADD CONSTRAINT `car_management_ibfk_1` FOREIGN KEY (`cars_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `car_management_ibfk_3` FOREIGN KEY (`segments_id`) REFERENCES `segments` (`id`),
  ADD CONSTRAINT `car_management_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `car_status`
--
ALTER TABLE `car_status`
  ADD CONSTRAINT `car_status_ibfk_1` FOREIGN KEY (`cars_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `car_status_ibfk_2` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`segment_id`) REFERENCES `segments` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
