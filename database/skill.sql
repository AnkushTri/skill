-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2023 at 10:40 AM
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
-- Database: `skill`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(255) NOT NULL,
  `Student_full_name` varchar(255) NOT NULL,
  `Student_father_name` varchar(255) NOT NULL,
  `Student_adhaar_no` int(12) NOT NULL,
  `Student_contact_no` int(10) NOT NULL,
  `Student_religion_id` varchar(255) NOT NULL,
  `Student_belong_to` varchar(255) NOT NULL,
  `Student_email` varchar(255) NOT NULL,
  `Student_date_of_birth` date NOT NULL,
  `Student_highest_qualification` varchar(255) NOT NULL,
  `Student_cast_id` varchar(255) NOT NULL,
  `Student_address` longtext NOT NULL,
  `Student_district_id` varchar(255) NOT NULL,
  `Student_skill_preference_1` varchar(255) NOT NULL,
  `Student_skill_preference_2` varchar(255) NOT NULL,
  `Student_skill_preference_3` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Active',
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `Student_full_name`, `Student_father_name`, `Student_adhaar_no`, `Student_contact_no`, `Student_religion_id`, `Student_belong_to`, `Student_email`, `Student_date_of_birth`, `Student_highest_qualification`, `Student_cast_id`, `Student_address`, `Student_district_id`, `Student_skill_preference_1`, `Student_skill_preference_2`, `Student_skill_preference_3`, `status`, `created_at`) VALUES
(1, 'kdlsjf', 'jukkukgv', 2147483647, 2147483647, '1', '1', 'powarmanisha281@gmail.com', '2003-04-02', '2', '4', 'kdsjfkl akejro ewlksajrkoke', '10', '484', '1710', '2183', 'Active', '2023-04-09 08:32:40.472881');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
