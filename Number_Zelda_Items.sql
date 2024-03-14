-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: student-databases.cvode4s4cwrc.us-west-2.rds.amazonaws.com
-- Generation Time: Feb 04, 2023 at 09:40 PM
-- Server version: 8.0.28
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `REBECCANOVIS`
--

-- --------------------------------------------------------

--
-- Table structure for table `Number_Zelda_Items`
--

CREATE TABLE `Number_Zelda_Items` (
  `id` int NOT NULL,
  `game` text NOT NULL,
  `totalItems` int NOT NULL,
  `newItems` int NOT NULL,
  `repeatItems` int NOT NULL,
  `laterReusedItems` int NOT NULL,
  `originalOrder` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `Number_Zelda_Items`
--

INSERT INTO `Number_Zelda_Items` (`id`, `game`, `totalItems`, `newItems`, `repeatItems`, `laterReusedItems`, `originalOrder`) VALUES
(1, 'The Legend of Zelda', 27, 27, 0, 16, 0),
(2, 'Zelda II: The Adventure of Link', 9, 5, 4, 3, 1),
(3, 'A Link to the Past', 50, 40, 10, 26, 2),
(4, 'Links Awakening', 27, 8, 19, 3, 3),
(5, 'Ocarina of Time', 58, 39, 19, 20, 4),
(6, 'Majoras Mask', 36, 7, 29, 2, 5),
(7, 'Oracle of Seasons', 44, 24, 20, 3, 6),
(8, 'Oracle of Ages', 46, 29, 17, 2, 7),
(9, 'Wind Waker', 51, 25, 26, 5, 8),
(10, 'Four Swords Adventures', 22, 6, 16, 2, 9),
(11, 'Minish Cap', 52, 26, 26, 2, 10),
(12, 'Twilight Princess', 54, 25, 29, 1, 11),
(13, 'Phantom Hourglass', 26, 10, 16, 2, 12),
(14, 'Spirit Tracks', 26, 13, 13, 2, 13),
(15, 'Skyward Sword', 64, 40, 2, 0, 14),
(16, 'A Link Between Worlds', 46, 13, 33, 0, 15),
(17, 'Tri Force Heroes', 12, 5, 7, 1, 16),
(18, 'Breath of the Wild', 39, 23, 16, 0, 17);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Number_Zelda_Items`
--
ALTER TABLE `Number_Zelda_Items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Number_Zelda_Items`
--
ALTER TABLE `Number_Zelda_Items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
