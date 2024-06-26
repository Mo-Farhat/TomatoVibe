-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 01:18 AM
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
-- Table structure for table `leaderboard`
--

CREATE TABLE `leaderboard` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`id`, `username`, `score`) VALUES
(4, 'user123', 2),
(7, 'LeaderboardTest', 1),
(8, 'farhat44', 3),
(9, 'abc', 2),
(10, '123', 0),
(11, '111', 0),
(12, '2221', 0),
(13, '33', 0),
(14, '1', 0),
(15, 'ABC123', 0);

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
(10, 'ff', '$2y$10$B7qlCDYjVdZssh4cF4.bwO9AoVpokpHnzXirlwX/yfiOTxw05kv66'),
(11, '2222', '$2y$10$17I.FWIsJ2oFplcViP2g2e6upYE0BETALNMWp.hrLs1rwYDg.m.Ia'),
(12, 'f', '$2y$10$eypGJK6pUps5qScDYLxfkeRFu.XWPoow1pFTZWaJzNxO1WAFycfma'),
(13, 'JFK', '$2y$10$o4GRLLSLf7fxurOe9CaQlexZ0c8XoJd1uCpSmYiurzE2hTByzVXPW'),
(14, 'Amz', '$2y$10$ulSxuP2.10L2tjKhU0E0EONZ32J3Nv8LKrPyNu9Eh5zakOg4TKw/S'),
(15, '3', '$2y$10$7p8C9O2bus5b/Y7xl3QyWerPrHiQIE1N4AyGVOHxeSfrMXUsWWeJi'),
(16, 'grant', '$2y$10$tzTSTe/nOpTbRGcKT1M4YOx87WHpvjmgtDb7socuM1fLIJOtcYSTG'),
(17, 'user123', '$2y$10$DQYYLHATY20Cto37c0ahLusK1nCiGupa4/VZjAwJCIh0jsSF8DFqC'),
(18, 'user1234', '$2y$10$C7VxNv7Hgk4QCe4vHcEoQ.gJDbSNeTg8qvexwrZR9dcHAD8oRTKOq'),
(19, 'a', '$2y$10$d9cd1.x3Eq1X9OJLPW.r4uRB6e5Alk53TbPNfIiz730RNEZU2vG3u'),
(20, 'LeaderboardTest', '$2y$10$gRVCL/ktuMTEdj6wZZkiY.YjlFP43lm6aMF4Fxbzt7iYncBCrtpL6'),
(21, 'farhat44', '$2y$10$pdtqKt5WxPGd5pQDadu3ruM/peBme3f3MhJUSx.s2yZke8RFnHBW.'),
(22, 'abc', '$2y$10$esK5bU.SBrAd4ZnASCw8keGG5qVCb6k1QvQpSzZvmfj1C3SyKuIUi'),
(23, '123', '$2y$10$jZNFdn1uKFtQrEqKCEEv/ebsIi31NLlBahzRO2XtCvd3Hq1W2VV5m'),
(24, '111', '$2y$10$7X6q5I3MNXLXGe2RvZQ5fevoFXYk3z6SwOLpp7xLu0pEx3/I0kGwO'),
(25, '2221', '$2y$10$7vFEMxENhy2FKO8c3wtdzuYg326jBm9AqlE1q.3uD65u2YhbTXzjG'),
(26, '33', '$2y$10$jz4jqai4y5RZmFu4usaA1OHjz3ZO4UesUZxk/TvcaDIUZ9z10.R7u'),
(27, '113', '$2y$10$q3Na2FqZsAIIMjXtkYqzQ.g20Oi048cXhe0qw/NQfgNI95pWBG/Oe'),
(28, '1', '$2y$10$C6dxD0zdMoXLH8ttWD15w.tgXUG5yYnLmxVVkzxjoiY7qiF3ih40G'),
(29, 'ABC123', '$2y$10$1AEE3luETMCBFa5nNpLbqe4MeCuHtzrUHnHdWegy8DoUSLWrs9sp.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leaderboard`
--
ALTER TABLE `leaderboard`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `leaderboard`
--
ALTER TABLE `leaderboard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_signup`
--
ALTER TABLE `users_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
