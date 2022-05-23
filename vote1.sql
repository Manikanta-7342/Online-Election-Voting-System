-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 10:22 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `candidate_id` int(11) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Age` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`candidate_id`, `Category`, `firstname`, `lastname`, `Age`, `gender`, `img`) VALUES
(1, 'Hindustani Vocal', 'Narendra', 'Modi', 45, 'Male', 'upload/hindustani.jpeg'),
(2, 'Kuchpudi', 'Rahul', 'Gandhi', 40, 'Female', 'upload/kuchpudi.jpeg'),
(3, 'Carnatic Vocal', 'Arvind', 'Kejriwal', 50, 'Male', 'upload/conical.jpeg'),
(4, 'Bharatanatyam', 'Captain Amrinder', 'Singh', 55, 'Male', 'upload/bharathanatyam.jpeg'),
(5, 'Kuchpudi', 'Simranjeet Singh', 'Bains', 39, 'Female', 'upload/kuchpudi.jpeg'),
(23, 'Hindustani Vocal', 'Sharanjit Singh', 'Dhillon', 48, 'Male', 'upload/hindustani.jpeg'),
(24, 'Bharatanatyam', 'Aravind', 'M', 25, 'Male', 'upload/bharathanatyam.jpeg'),
(25, 'Kuchpudi', 'Shreya', 'P', 28, 'Female', 'upload/kuchpudi.jpeg'),
(26, 'Carnatic Vocal', 'Vineel', 'Akash', 25, 'Male', 'upload/conical.jpeg'),
(27, 'Hindustani Vocal', 'Krishna', 'Hari', 29, 'Male', 'upload/hindustani.jpeg'),
(28, 'Bharatanatyam', 'Jyothi', 'Singh', 21, 'Female', 'upload/bharathanatyam.jpeg'),
(29, 'Bharatanatyam', 'Akash', 'P V', 24, 'Male', 'upload/bharathanatyam.jpeg'),
(30, 'Carnatic Vocal', 'Gopal', 'M', 45, 'Male', 'upload/conical.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(40) NOT NULL,
  `category` varchar(255) NOT NULL,
  `img` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_nopad_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category`, `img`) VALUES
(1, 'Carnatic Vocal', ''),
(2, 'Hindustani Vocal', ''),
(3, 'Kuchpudi', ''),
(4, 'Bharatanatyam', '');

-- --------------------------------------------------------

--
-- Table structure for table `ids`
--

CREATE TABLE `ids` (
  `id_number` varchar(100) NOT NULL,
  `names` varchar(225) NOT NULL,
  `started` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ids`
--

INSERT INTO `ids` (`id_number`, `names`, `started`) VALUES
('1', 'Samar Gagneja', '2021-06-04'),
('10', 'Ujjwal Khanna', '2021-06-05'),
('2', 'Vishal Singla', '2021-05-19'),
('3', 'Nikhil Arora', '2021-06-21'),
('4', 'Suryansh Chopra', '2021-05-22'),
('5', 'Amrinder Singh', '2021-06-24'),
('6', 'Sahil Sharma', '2021-05-29'),
('7', 'Yuvraj', '2021-06-01'),
('8', 'Sparsh Gagneja', '2021-06-02'),
('9', 'Jasmehar Singh', '2021-06-04');

-- --------------------------------------------------------

--
-- Table structure for table `logins`
--

CREATE TABLE `logins` (
  `user_id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `login_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins`
--

INSERT INTO `logins` (`user_id`, `username`, `login_time`) VALUES
(4, ' user', '2021-06-04 23:18:10'),
(5, ' user', '2021-06-04 23:19:37'),
(6, ' user', '2021-06-04 23:21:44'),
(7, ' user', '2021-06-07 12:15:53'),
(8, ' sam', '2021-06-07 15:20:18'),
(9, ' sam', '2021-06-07 15:21:48'),
(10, ' sam', '2021-06-07 18:22:49'),
(11, ' sam', '2021-06-07 18:29:58'),
(12, ' user', '2021-06-08 22:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Phone` int(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `firstname`, `lastname`, `Phone`, `email`) VALUES
(1, 'admin', 'admin', 'Samar', 'Gagneja', 987654321, 'samar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `Phone` int(100) NOT NULL DEFAULT 260,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`, `Phone`, `email`) VALUES
(1, 'user', 'user', 'Vishal', 'Singla', 253626, 'vishal@mail.com'),
(2, 'sam', 'sam', 'sam', 'gag', 45454656, 'xyz@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `voters_id` int(11) NOT NULL,
  `id_number` varchar(12) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `Age` int(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `Contact Number` int(11) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`voters_id`, `id_number`, `firstname`, `lastname`, `gender`, `Age`, `status`, `Contact Number`, `password`) VALUES
(87, '4', 'priyanka', 'Chopra', 'Female', 21, 'Voted', 20210609, '123'),
(86, '3', 'Nikhil', 'Arora', 'Male', 20, 'Voted', 20210608, '350d89c1cd6592bbbd1ed2e8a4f3ddba'),
(84, '1', 'Samar', 'Gagneja', 'Male', 20, 'Voted', 20210608, 'cbc3f248a7e3acc6b6aac74efc6dc9d1'),
(85, '2', 'Vishal', 'Singla', 'Male', 21, 'Unvoted', 20210608, '8b64d2451b7a8f3fd17390f88ea35917'),
(90, '5', 'mani', 'kanta', 'Male', 23, 'Unvoted', 0, '202cb962ac59075b964b07152d234b70'),
(91, '6', 'mani', 'kanta', 'Male', 20, 'Unvoted', 0, '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `vote_id` int(255) NOT NULL,
  `candidate_id` varchar(255) NOT NULL,
  `voters_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`vote_id`, `candidate_id`, `voters_id`) VALUES
(188, '3', '84'),
(189, '2', '85'),
(190, '2', '86'),
(191, '1', '88');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`candidate_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `ids`
--
ALTER TABLE `ids`
  ADD PRIMARY KEY (`id_number`);

--
-- Indexes for table `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`voters_id`),
  ADD UNIQUE KEY `id_number` (`id_number`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`vote_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `candidate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(40) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `logins`
--
ALTER TABLE `logins`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `voters_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `vote_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
