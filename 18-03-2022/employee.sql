-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 05:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPNO` varchar(4) DEFAULT NULL,
  `EMP_NAME` varchar(10) DEFAULT NULL,
  `DEPT` varchar(10) DEFAULT NULL,
  `SALARY` int(11) DEFAULT NULL,
  `DOJ` varchar(15) DEFAULT NULL,
  `BRANCH` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPNO`, `EMP_NAME`, `DEPT`, `SALARY`, `DOJ`, `BRANCH`) VALUES
('E101', 'Amit', 'Production', 45000, '12-Mar-00', 'Bangalore'),
('E102', 'Amit', 'HR', 70000, '03-Jul-02', 'Bangalore'),
('E103', 'Sunita', 'Management', 120000, '11-Jan-01', 'Mysore'),
('E105', 'Sunita', 'IT', 67000, '01-Aug-01', 'Mysore'),
('E106', 'Mahesh', 'Civil', 145000, '20-Sep-03', 'Mumbai');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
