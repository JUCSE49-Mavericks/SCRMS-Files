-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 11:38 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_class_routine`
--

-- --------------------------------------------------------

--
-- Table structure for table `classroutine`
--

CREATE TABLE `classroutine` (
  `id` int(11) NOT NULL,
  `deptId` int(11) DEFAULT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `teacher` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  `year` varchar(10) NOT NULL,
  `startTime` time NOT NULL,
  `endTime` time NOT NULL,
  `course` varchar(255) NOT NULL,
  `room` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroutine`
--

INSERT INTO `classroutine` (`id`, `deptId`, `teacherId`, `teacher`, `day`, `year`, `startTime`, `endTime`, `course`, `room`) VALUES
(1108, 2, 1, 'Dr. Md. Musfique Anwar', 'Sunday', '4th year', '10:20:00', '11:40:00', 'Software Engineering', '[\"101\"'),
(1109, 2, 1, 'Dr. Md. Musfique Anwar', 'Tuesday', '4th year', '10:20:00', '11:40:00', 'Software Engineering', '[\"101\"'),
(1110, 2, 1, 'Dr. Md. Musfique Anwar', 'Sunday', '4th year', '14:00:00', '15:20:00', 'Software Engineering & ISD Lab', '[\"203\"'),
(1111, 2, 1, 'Dr. Md. Musfique Anwar', 'Sunday', '4th year', '15:20:00', '16:40:00', 'Software Engineering & ISD Lab', '[\"203\"');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classroutine`
--
ALTER TABLE `classroutine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Dept_id` (`deptId`),
  ADD KEY `Teacher_id` (`teacherId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classroutine`
--
ALTER TABLE `classroutine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1112;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `classroutine`
--
ALTER TABLE `classroutine`
  ADD CONSTRAINT `classroutine_ibfk_1` FOREIGN KEY (`deptId`) REFERENCES `department` (`dept_id`),
  ADD CONSTRAINT `classroutine_ibfk_2` FOREIGN KEY (`teacherId`) REFERENCES `teacher` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
