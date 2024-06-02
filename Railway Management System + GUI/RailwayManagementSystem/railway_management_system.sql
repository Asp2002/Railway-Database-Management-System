-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2024 at 11:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway management system`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Tel` text NOT NULL,
  `Salary` double NOT NULL,
  `Position` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`ID`, `Name`, `Email`, `Tel`, `Salary`, `Position`) VALUES
(0, 'Aswini', 'aswini.2002@gmail.com', '234556788', 789, 'Driver');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Email` text NOT NULL,
  `Tel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`ID`, `Name`, `Email`, `Tel`) VALUES
(0, 'Nikita', 'nikitamohapatra2003@gmail.com', '9438063117'),
(1, 'Ishani', 'ishani@gmail.com', '2345678908');

-- --------------------------------------------------------

--
-- Table structure for table `trains`
--

CREATE TABLE `trains` (
  `ID` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trains`
--

INSERT INTO `trains` (`ID`, `Capacity`, `Description`) VALUES
(0, 50000, 'Train1'),
(1, 30000, 'Train Ac');

-- --------------------------------------------------------

--
-- Table structure for table `trip 0 passengers`
--

CREATE TABLE `trip 0 passengers` (
  `Passenger` int(11) DEFAULT NULL,
  `Tickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trip 0 passengers`
--

INSERT INTO `trip 0 passengers` (`Passenger`, `Tickets`) VALUES
(1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `trip 1 passengers`
--

CREATE TABLE `trip 1 passengers` (
  `Passenger` int(11) DEFAULT NULL,
  `Tickets` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `ID` int(11) NOT NULL,
  `Start` text NOT NULL,
  `Destination` text NOT NULL,
  `DepartureTime` text NOT NULL,
  `ArrTime` text NOT NULL,
  `Date` text NOT NULL,
  `BookedSeats` int(11) NOT NULL,
  `Price` double NOT NULL,
  `Driver` int(11) NOT NULL,
  `Train` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`ID`, `Start`, `Destination`, `DepartureTime`, `ArrTime`, `Date`, `BookedSeats`, `Price`, `Driver`, `Train`) VALUES
(0, 'bbsr', 'balasore', '03:04', '03:00', '2025-03-01', 10, 678, 0, 0),
(1, 'berhampur', 'bbsr', '02:05', '03:01', '2017-03-02', 0, 567, 0, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
