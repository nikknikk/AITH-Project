-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2020 at 03:18 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aith`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `interest` text NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `genderid` text NOT NULL,
  `email` text NOT NULL,
  `question_comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `interest`, `fname`, `lname`, `genderid`, `email`, `question_comment`) VALUES
(1, 'athlete', 'jim', 'james', 'male', 'jimmyj@gmail.com', 'none'),
(2, 'athlete', 'jim', 'james', 'male', 'jimmyj@gmail.com', 'none'),
(3, 'other', 'nikki', 'elsensohn', 'female', 'nicole.elsensohn@pcc.edu', 'kjhkjhkj'),
(4, '', '', '', '', '', ''),
(5, 'athlete', 'nikki', 'elsensohn', 'female', 'nicole.elsensohn@pcc.edu', ''),
(6, 'volunteer', 'Nicole', 'Elsensohn', 'female', 'nikki.elsensohn@gmail.com', 'Hello!'),
(7, 'volunteer', 'Nicole', 'Elsensohn', 'female', 'nikki.elsensohn@gmail.com', ''),
(8, '', '', '', '', '', ''),
(9, 'other', 'Nicole', 'Elsensohn', 'female', 'nikki.elsensohn@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `interest` text NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `genderid` text NOT NULL,
  `age` int(11) NOT NULL,
  `email` text NOT NULL,
  `which_event` text NOT NULL,
  `emergency_contact` text NOT NULL,
  `emergency_contact_phone` text NOT NULL,
  `accommodations` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `interest`, `fname`, `lname`, `genderid`, `age`, `email`, `which_event`, `emergency_contact`, `emergency_contact_phone`, `accommodations`) VALUES
(1, '', 'nikki', 'elsensohn', 'female', 45, 'nicole.elsensohn@pcc.edu', '10k', '555-555-5555', '5555555555', ''),
(2, 'volunteer', 'nikki', 'elsensohn', 'female', 45, 'nicole.elsensohn@pcc.edu', '10k', '555-555-5555', '5555555555', ''),
(3, 'athlete', 'Nicole', 'Elsensohn', 'female', 45, 'nikki.elsensohn@gmail.com', '5k', 'Nicole Elsensohn', '5103312541', 'none'),
(4, 'volunteer', 'Nicole', 'Elsensohn', 'female', 45, 'nikki.elsensohn@gmail.com', '5k', 'Nicole Elsensohn', '5103312541', ''),
(5, 'athlete', 'damian', 'lillard', 'male', 29, 'damian@lillard.com', '5k', 'damian', 'lillard', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
