-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 04, 2022 at 08:54 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparsham`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_donation`
--

DROP TABLE IF EXISTS `blood_donation`;
CREATE TABLE IF NOT EXISTS `blood_donation` (
  `blood_donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `no_of_bottle` int(11) NOT NULL,
  `no_of_donation` int(11) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `description` varchar(50) NOT NULL,
  `blood_donation_status` int(3) NOT NULL DEFAULT '0',
  `donation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`blood_donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_donation`
--

INSERT INTO `blood_donation` (`blood_donation_id`, `email`, `no_of_bottle`, `no_of_donation`, `blood_group`, `description`, `blood_donation_status`, `donation_date`) VALUES
(1, 'aliyas123@gmail.com', 5, 5, 'O+', 'jhghgsdh kjbsjkbns cnksbib', 3, '2021-11-24 18:09:04'),
(2, 'public@mail.com', 20, 6, 'O-ve', 'blood donation', 1, '2021-11-27 12:18:25'),
(3, 'public@mail.com', 31, 0, 'O-ve', 'blood donation', 2, '2021-11-27 12:29:05'),
(4, 'public@mail.com', 13, 0, 'O-ve', 'blood donation', 0, '2021-12-08 16:41:58'),
(5, 'public@mail.com', 4, 0, 'O+', 'Within 24 Hour', 0, '2021-12-08 18:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `blood_donation_list`
--

DROP TABLE IF EXISTS `blood_donation_list`;
CREATE TABLE IF NOT EXISTS `blood_donation_list` (
  `donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `blood_donation_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_donation_list`
--

INSERT INTO `blood_donation_list` (`donation_id`, `blood_donation_id`, `email`) VALUES
(50, 2, 'jaganravi242@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_email` varchar(50) NOT NULL,
  `reciever_email` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `chat_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `sender_email`, `reciever_email`, `message`, `chat_time`) VALUES
(1, 'public@mail.com', 'jaganravi012@gmail.com', 'hi', '2021-12-07 18:59:52'),
(2, 'public@mail.com', 'jaganravi012@gmail.com', 'hello', '2021-12-07 19:04:05'),
(3, 'jaganravi012@gmail.com', 'public@mail.com', 'jhjhh', '2021-12-07 19:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(30) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country`) VALUES
(1, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE IF NOT EXISTS `district` (
  `district_id` int(11) NOT NULL AUTO_INCREMENT,
  `state_id` int(11) NOT NULL,
  `district` varchar(30) NOT NULL,
  PRIMARY KEY (`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `state_id`, `district`) VALUES
(1, 1, 'Ernakulam');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(30) NOT NULL,
  `event_discription` text NOT NULL,
  `event_date` date NOT NULL,
  `expected_students` int(11) NOT NULL,
  `accepted_students` int(11) NOT NULL DEFAULT '0',
  `event_status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_discription`, `event_date`, `expected_students`, `accepted_students`, `event_status`) VALUES
(1, 'wqee', 'we', '2021-12-09', 22, 1, 1),
(2, 'wqee', 'we', '2021-12-09', 22, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_list`
--

DROP TABLE IF EXISTS `event_list`;
CREATE TABLE IF NOT EXISTS `event_list` (
  `event_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`event_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event_list`
--

INSERT INTO `event_list` (`event_list_id`, `event_id`, `email`) VALUES
(1, 1, 'jaganravi242@gmail.com'),
(2, 2, 'jaganravi242@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `food_donation`
--

DROP TABLE IF EXISTS `food_donation`;
CREATE TABLE IF NOT EXISTS `food_donation` (
  `food_donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `no_of_packets` int(11) NOT NULL,
  `no_of_donations` int(11) NOT NULL,
  `donation_name` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `food_donation_status` int(3) NOT NULL DEFAULT '0',
  `donation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`food_donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_donation`
--

INSERT INTO `food_donation` (`food_donation_id`, `email`, `no_of_packets`, `no_of_donations`, `donation_name`, `description`, `food_donation_status`, `donation_date`) VALUES
(1, 'public@mail.com', 55, 55, 'donation 1', 'food donation', 3, '2021-11-27 12:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `food_donation_list`
--

DROP TABLE IF EXISTS `food_donation_list`;
CREATE TABLE IF NOT EXISTS `food_donation_list` (
  `donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `food_donation_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_donation_list`
--

INSERT INTO `food_donation_list` (`donation_id`, `food_donation_id`, `email`) VALUES
(19, 1, 'jaganravi242@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_donation`
--

DROP TABLE IF EXISTS `inventory_donation`;
CREATE TABLE IF NOT EXISTS `inventory_donation` (
  `donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `donation_name` varchar(30) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  `item_required` int(11) NOT NULL,
  `item_collected` int(11) NOT NULL,
  `discription` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `donation_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_donation`
--

INSERT INTO `inventory_donation` (`donation_id`, `donation_name`, `item_name`, `item_required`, `item_collected`, `discription`, `email`, `donation_status`) VALUES
(1, 'qwewweq', 'qewqewew', 11, 1, 'aswqadsads', 'public@mail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_donation_list`
--

DROP TABLE IF EXISTS `inventory_donation_list`;
CREATE TABLE IF NOT EXISTS `inventory_donation_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `donation_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory_donation_list`
--

INSERT INTO `inventory_donation_list` (`id`, `donation_id`, `email`) VALUES
(1, 1, 'public@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `usertype` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`email`, `password`, `usertype`, `status`) VALUES
('admin123@gmail.com', 'admin123', 'admin', 1),
('aliyas123@gmail.com', 'aliyas123', 'public', 0),
('arya@gmail.com', 'asdfgh', 'public', 0),
('jishnugopalan2000@gmail.com', 'jishnu123', 'student', 1),
('public@mail.com', '123456', 'public', 0),
('sayooj0123@gmail.com', 'sayoojca', 'secratary', 1);

-- --------------------------------------------------------

--
-- Table structure for table `money_donation`
--

DROP TABLE IF EXISTS `money_donation`;
CREATE TABLE IF NOT EXISTS `money_donation` (
  `money_donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL,
  `requested_amount` int(11) NOT NULL,
  `collected_amount` int(11) NOT NULL DEFAULT '0',
  `donation_name` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `money_donation_status` int(3) NOT NULL DEFAULT '0',
  `donation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`money_donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `money_donation`
--

INSERT INTO `money_donation` (`money_donation_id`, `email`, `requested_amount`, `collected_amount`, `donation_name`, `description`, `money_donation_status`, `donation_date`) VALUES
(1, 'public@mail.com', 1000, 1500, 'donation 1', 'money donation', 3, '2021-11-27 13:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `money_donation_list`
--

DROP TABLE IF EXISTS `money_donation_list`;
CREATE TABLE IF NOT EXISTS `money_donation_list` (
  `donation_id` int(11) NOT NULL AUTO_INCREMENT,
  `money_donation_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`donation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `money_donation_list`
--

INSERT INTO `money_donation_list` (`donation_id`, `money_donation_id`, `email`, `amount`) VALUES
(5, 1, 'jaganravi242@gmail.com', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `name` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` bigint(11) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `date_of_birth` varchar(20) DEFAULT NULL,
  `house` varchar(80) DEFAULT NULL,
  `place` varchar(80) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT '../images/avathar.jpg',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `email`, `phone`, `gender`, `date_of_birth`, `house`, `place`, `country`, `state`, `district`, `pincode`, `profile_pic`) VALUES
('Aliys', 'aliyas123@gmail.com', 9778146653, '', '', '', '', 0, 0, 0, 0, '../images/avathar.jpg'),
('Arya Haridas', 'arya@gmail.com', 8138844444, 'Male', '2022-05-31', 'Haridhas bhavan', 'ekm', 1, 1, 1, 680311, '../images/avathar.jpg'),
('Jishnu Gopalan', 'jishnugopalan2000@gmail.com', 7994245510, 'Male', '1999-03-11', 'dgffg', 'sdfsdf', 1, 1, 1, 686691, '../images/avathar.jpg'),
('werty', 'public@mail.com', 8089355672, '', '', '', '', 0, 0, 0, 0, '../images/avathar.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE IF NOT EXISTS `state` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `state` varchar(30) NOT NULL,
  PRIMARY KEY (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `country_id`, `state`) VALUES
(1, 1, 'Kerala');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

DROP TABLE IF EXISTS `verification`;
CREATE TABLE IF NOT EXISTS `verification` (
  `verification_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `id_card` varchar(50) NOT NULL,
  PRIMARY KEY (`verification_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `verification`
--

INSERT INTO `verification` (`verification_id`, `email`, `id_card`) VALUES
(2, 'jishnugopalan2000@gmail.com', 'uploads/jishnu.jpg'),
(3, 'jaganravi242@gmail.com', 'uploads/Controlflow.docx'),
(4, 'arya@gmail.com', 'uploads/WhatsApp Image 2021-07-06 at 13.05.50.jpeg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
