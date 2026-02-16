-- phpMyAdmin SQL Dump
-- version 4.9.4deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 28, 2020 at 08:17 PM
-- Server version: 8.0.20-0ubuntu0.19.10.1
-- PHP Version: 7.3.11-0ubuntu0.19.10.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `icsd18100DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `athletes`
--

CREATE TABLE `athletes` (
  `athlete_id` int NOT NULL,
  `athlete_name` varchar(255) DEFAULT NULL,
  `athlete_age` int DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `athletes`
--

INSERT INTO `athletes` (`athlete_id`, `athlete_name`, `athlete_age`, `origin`) VALUES
(23821, 'Virgil Van Dijkt', 29, 'Holland'),
(26977, 'Neymar Jr.', 28, 'Brazil'),
(32504, 'Dimitris Pelkas', 26, 'Greece'),
(46719, 'Lionel Messi', 32, 'Argentine'),
(48524, 'Nikos Pappas', 26, 'Greece'),
(96551, 'Gareth Bale', 30, 'Wales'),
(97780, 'Paul Pogba', 27, 'France'),
(99159, 'Cristiano Ronaldo', 35, 'Portugal');

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `coache_id` int NOT NULL,
  `coache_name` varchar(255) DEFAULT NULL,
  `coache_age` int DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`coache_id`, `coache_name`, `coache_age`, `origin`) VALUES
(1437, 'Pep Guardiola', 32, 'Spain'),
(23413, 'Abel Ferreira', 45, 'Portugal'),
(23827, 'Louis Van Gaal', 68, 'Holland'),
(38812, 'Jurgen Klopp', 54, 'Germany'),
(59016, 'Diego Simeone', 35, 'Argentine'),
(75630, 'Giovanni Trapattoni', 34, 'Italy'),
(87737, 'Antonio Conte', 46, 'Italy'),
(88317, 'Zinedine Zidane', 33, 'Holland');

-- --------------------------------------------------------

--
-- Table structure for table `coaching`
--

CREATE TABLE `coaching` (
  `coache_id` int DEFAULT NULL,
  `athlete_id` int DEFAULT NULL,
  `payment` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `coaching`
--

INSERT INTO `coaching` (`coache_id`, `athlete_id`, `payment`) VALUES
(59016, 46719, 1000),
(87737, 26977, 600),
(1437, 96551, 700),
(38812, 97780, 800),
(88317, 99159, 350),
(38812, 48524, 500),
(23413, 32504, 200),
(23827, 23821, 1100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `athletes`
--
ALTER TABLE `athletes`
  ADD PRIMARY KEY (`athlete_id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`coache_id`);

--
-- Indexes for table `coaching`
--
ALTER TABLE `coaching`
  ADD KEY `coache_id` (`coache_id`),
  ADD KEY `athlete_id` (`athlete_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coaching`
--
ALTER TABLE `coaching`
  ADD CONSTRAINT `coaching_ibfk_1` FOREIGN KEY (`coache_id`) REFERENCES `coaches` (`coache_id`),
  ADD CONSTRAINT `coaching_ibfk_2` FOREIGN KEY (`athlete_id`) REFERENCES `athletes` (`athlete_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
