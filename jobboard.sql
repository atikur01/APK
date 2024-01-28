-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2024 at 04:18 PM
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
-- Database: `jobboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `role`) VALUES
(1, '9098atomic@jcnorris.com', '$2y$10$7UAeC3L/Q5nLYlfCfVSLk.UFWMRmzocyhE.t3Jzof8VEaQy2PU1dm', 'company'),
(2, 'robustalbertina@jcnorris.com', '$2y$10$dE0hTsYeW0R06Sjqb74mRuJirwmxgBHK09EGN6bpMVj8uOezdy4/C', 'employee'),
(3, 'cgjcjcd@gmail.com', '$2y$10$e8I51UbLuxCKRCe9/ZQh2ukJ1iAENWWJXmeVAsNLFylCG93pV2nmK', 'employee'),
(4, 'sdfvgds@gmail.com', '$2y$10$d1DC1C2FhRuVwwv9M1bNcu/l8AhAUbNIvR.E2YRAX1J6YFIkgMdrC', 'company'),
(5, 'nessa5459@jcnorris.com', '$2y$10$Yb38eXSUGQtH1e4iEdP/VOoFHcI3HkEqR8hQnlCsuetcw7tUsZj5y', 'company');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
