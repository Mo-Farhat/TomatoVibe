-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 02:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tomato`
--

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE `users_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `username`, `password`) VALUES
(1, 'farhat44', '$2y$10$IV7Q9gFnHjCnW5ZigbYEQOx4r9h.UXGtg0FGm9D0fNf732.wbUnh6'),
(2, '01000939', '$2y$10$wGX9fHQJXhcLt.GZmZx09.tjoJAXekM/Y7TJNss8Cofo/C.4sHdQG');

-- --------------------------------------------------------

--
-- Table structure for table `users_signup`
--

CREATE TABLE `users_signup` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_signup`
--

INSERT INTO `users_signup` (`id`, `username`, `password`) VALUES
(1, 'Farhat', '$2y$10$5kF1IWOnjuZm2yYhOPNpseGdLbRgbJC9xfdCxPoiEFs2lwuWEEPJK'),
(2, 'farhat', '$2y$10$6JjR3tDcA9CbVV9YWrmNSOSfzdWjXloyCLBYnrn5szkWneyG2ggje'),
(3, 'farhat44', '$2y$10$IV7Q9gFnHjCnW5ZigbYEQOx4r9h.UXGtg0FGm9D0fNf732.wbUnh6'),
(4, '01000939', '$2y$10$wGX9fHQJXhcLt.GZmZx09.tjoJAXekM/Y7TJNss8Cofo/C.4sHdQG'),
(5, 'ddada', '$2y$10$7e.FWdUzsuSWbJpgIaskTu0adHh2C7mp28r3Iskf56E8WKexe5n0q'),
(6, '313131', '$2y$10$tw4fkN71HJI8EfdwfOsxveJrIkCvsixeRQ4IUASlFs/bTtq3WzXy.'),
(7, 'farhat', '$2y$10$BxuE3mlJ6F4ccGPW4b8DXe1mx1gYu/8AnQCYBHHu5txXioELIQxrm'),
(8, 'fafwfa', '$2y$10$7ZhTgX0HTJxTk/jCuDjYCeDMQIKXDFTeI98nEBsEPefTuC70.Tz4m'),
(9, 'fafw', '$2y$10$82TggSGS2GayrjckuLrSjetGJXDeXE6QJEPxj4Ypova17K6ebPIxG'),
(10, 'ff', '$2y$10$B7qlCDYjVdZssh4cF4.bwO9AoVpokpHnzXirlwX/yfiOTxw05kv66');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_signup`
--
ALTER TABLE `users_signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_signup`
--
ALTER TABLE `users_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
