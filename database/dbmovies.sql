-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2024 at 11:41 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmovies`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `bookingid` int(11) NOT NULL,
  `theaterid` int(11) NOT NULL,
  `bookingdate` date NOT NULL,
  `person` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookingid`, `theaterid`, `bookingdate`, `person`, `userid`, `status`) VALUES
(20, 4, '2024-05-06', '4', 8, 1),
(22, 1, '2024-05-08', '2', 8, 1),
(23, 2, '2024-05-01', '1', 8, 1),
(24, 4, '2024-05-06', '4', 8, 1),
(25, 1, '2024-05-15', '2', 9, 1),
(26, 2, '2024-05-29', '2', 9, 1),
(27, 1, '2024-05-16', '4', 9, 1),
(28, 2, '2024-05-15', '3', 9, 1),
(29, 2, '2024-05-16', '2', 9, 1),
(30, 2, '2024-05-08', '3', 10, 1),
(31, 4, '2024-05-14', '4', 13, 1),
(32, 1, '2024-05-23', '3', 13, 1),
(33, 1, '2024-05-09', '2', 10, 1),
(34, 4, '2024-05-09', '3', 13, 1),
(35, 2, '2024-05-08', '5', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catid` int(11) NOT NULL,
  `catname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catid`, `catname`) VALUES
(1, 'Hollywood'),
(2, 'Bollywood'),
(8, 'Gujarati');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `classid` int(11) NOT NULL,
  `classname` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movieid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `releasedate` date NOT NULL,
  `image` varchar(1000) NOT NULL,
  `trailer` varchar(1000) NOT NULL,
  `movie` varchar(10000) NOT NULL,
  `rating` varchar(50) NOT NULL,
  `catid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieid`, `title`, `description`, `releasedate`, `image`, `trailer`, `movie`, `rating`, `catid`) VALUES
(2, 'Yodha ', 'Yodha is a 2024 Indian Hindi-language action thriller film about a highly trained commando who is ma', '2024-03-15', 'yodha.jpg', 'Yodha.mp4', 'Yodha.mp4', '', 2),
(3, 'Merry Christmas', 'Aryan Agnihotri (Shahid Kapoor) is a Delhi-born smart robotics engineer based out of Mumbai. Aryan\'s', '2024-02-09', 'merry.jpg', 'merry.mp4', 'merry.mp4', '', 2),
(4, 'The Conjuring 4', 'The Conjuring 4: Last Rites is the final movie in the Conjuring series and will follow the paranorma', '2023-07-27', 'conjuring4.jpg', 'conjuring.mp4', 'conjuring.mp4', '', 1),
(5, 'Avtar : the way of water', 'Avatar: The Way of Water is a 2022 fantasy film that follows the Sully family, Jake, Neytiri, and th', '2023-07-06', 'avtar2.jpg', 'Avtar.mp4', 'Avtar.mp4', '', 1),
(6, 'Pushpa 2', 'Puhspa2', '2024-05-09', 'pushpa2.jpg', 'pushpa2.mp4', 'pushpa2.mp4', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `surmandir`
--

CREATE TABLE `surmandir` (
  `theaterid` int(11) NOT NULL,
  `theater_name` varchar(100) NOT NULL,
  `timing` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `movieid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surmandir`
--

INSERT INTO `surmandir` (`theaterid`, `theater_name`, `timing`, `days`, `date`, `price`, `location`, `movieid`) VALUES
(0, 'Surmandir Theater', '16:06', 'Monday', '2024-05-08', 400, 'Palanpur', 7),
(1, 'Surmandir Theater', '14:00', 'Monday', '2023-07-18', 700, 'Palanpur', 5),
(2, 'Surmandir Theater', '15:30', 'Thursday', '2023-07-21', 300, 'Palanpur', 2),
(3, 'Surmandir Theater', '15:30', 'Thursday', '2023-07-21', 350, 'Palanpur', 3),
(4, 'Surmandir Theater', '15:30', 'Thursday', '2023-07-21', 500, 'Palanpur', 4);

-- --------------------------------------------------------

--
-- Table structure for table `theater`
--

CREATE TABLE `theater` (
  `theaterid` int(11) NOT NULL,
  `theater_name` varchar(100) NOT NULL,
  `timing` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `movieid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theater`
--

INSERT INTO `theater` (`theaterid`, `theater_name`, `timing`, `days`, `date`, `price`, `location`, `movieid`) VALUES
(1, 'Surmandir Theater', '14:00', 'Monday', '2023-07-18', 400, 'Palanpur', 5),
(2, 'Vijay Cinema ', '15:30', 'Thursday', '2023-07-21', 200, 'Patan', 2),
(4, 'Planet Multiplex', '15:30', 'Thursday', '2023-07-21', 250, 'Siddhpur', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT '123',
  `roteype` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `email`, `password`, `roteype`) VALUES
(1, 'admin', 'admin@gmail.com', '123', 1),
(8, 'Ayushi', 'ayushi@gmail.com', '123', 2),
(9, 'Anjana', 'anjanachauhan7664@gmail.com', 'aaa', 2),
(10, 'Piyush', 'piyush@gmail.com', '123', 2),
(11, 'Daksh', 'daksh@gmail.com', '123', 2),
(12, 'Vaibhav', 'vaibhav@gmail.com', '123', 2),
(13, 'Ruhi', 'ruhi@gmail.com', 'aaa', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vijay`
--

CREATE TABLE `vijay` (
  `theaterid` int(11) NOT NULL,
  `theater_name` varchar(100) NOT NULL,
  `timing` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL,
  `location` varchar(100) NOT NULL,
  `movieid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vijay`
--

INSERT INTO `vijay` (`theaterid`, `theater_name`, `timing`, `days`, `date`, `price`, `location`, `movieid`) VALUES
(0, 'Vijay Cinema', '12:00', 'Monday', '0000-00-00', 450, 'Patan', 7),
(1, 'Vijay Cinema', '14:00', 'Monday', '2023-07-18', 300, 'Patan', 2),
(2, 'Vijay Cinema', '15:30', 'Thursday', '2023-07-21', 350, 'Patan', 3),
(3, 'Vijay Cinema', '15:30', 'Thursday', '2023-07-21', 500, 'Patan', 4),
(4, 'Vijay Cinema', '15:30', 'Thursday', '2023-07-21', 700, 'Patan', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`bookingid`),
  ADD KEY `FK_booking_users` (`userid`),
  ADD KEY `FK_booking` (`theaterid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`classid`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `FK_movies` (`catid`);

--
-- Indexes for table `surmandir`
--
ALTER TABLE `surmandir`
  ADD PRIMARY KEY (`theaterid`),
  ADD KEY `FK_theater` (`movieid`);

--
-- Indexes for table `theater`
--
ALTER TABLE `theater`
  ADD PRIMARY KEY (`theaterid`),
  ADD KEY `FK_theater` (`movieid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `vijay`
--
ALTER TABLE `vijay`
  ADD PRIMARY KEY (`theaterid`),
  ADD KEY `FK_theater` (`movieid`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `bookingid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movieid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `theater`
--
ALTER TABLE `theater`
  MODIFY `theaterid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_booking` FOREIGN KEY (`theaterid`) REFERENCES `theater` (`theaterid`),
  ADD CONSTRAINT `FK_booking_users` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `FK_movies` FOREIGN KEY (`catid`) REFERENCES `categories` (`catid`);

--
-- Constraints for table `theater`
--
ALTER TABLE `theater`
  ADD CONSTRAINT `FK_theater` FOREIGN KEY (`movieid`) REFERENCES `movies` (`movieid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
