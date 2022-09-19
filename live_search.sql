-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2022 at 11:10 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `live_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `searchperson`
--

CREATE TABLE `searchperson` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `age` text NOT NULL,
  `country` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `occupation` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `searchperson`
--

INSERT INTO `searchperson` (`id`, `pname`, `age`, `country`, `email`, `occupation`) VALUES
(1, 'john', '32', 'USA', 'john@gmail.com', 'Web Developer'),
(2, 'Sam', '24', 'Japan', 'sam@gmail.com', '3D artst'),
(3, 'Jark', '20', 'New Zealand', 'jark@gmail.com', 'Professor'),
(4, 'Jack', '30', 'india', 'jack@gmail.com', 'Doctor'),
(5, 'Jasim', '24', 'Bangladesh', 'jasim@gmail.com', 'Web Developer'),
(6, 'Ismail', '28', 'London', 'ismail@gmail.com', 'WordPress Developer'),
(7, 'Ekramul Kabir', '30', 'Canada', 'ekramul@gmail.com', 'WordPress Developer'),
(8, 'Ashraf Khan', '22', 'Australia', 'ashraf@gmail.com', 'Full Stack Developer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `searchperson`
--
ALTER TABLE `searchperson`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `searchperson`
--
ALTER TABLE `searchperson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
