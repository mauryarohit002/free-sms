-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2018 at 02:31 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rohit`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`c_id` int(11) NOT NULL,
  `c_name` varchar(250) NOT NULL,
  `c_number` varchar(255) NOT NULL,
  `c_grid` int(11) NOT NULL,
  `c_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`c_id`, `c_name`, `c_number`, `c_grid`, `c_time`) VALUES
(9, 'vishal', '7066172076', 2, '2018-11-23 12:17:40'),
(10, 'rishabh', '8451864505', 2, '2018-11-23 12:19:45'),
(11, 'chirag', '8769054876', 2, '2018-11-23 12:31:10');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
`gr_id` int(11) NOT NULL,
  `gr_name` varchar(250) NOT NULL,
  `gr_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`gr_id`, `gr_name`, `gr_time`) VALUES
(1, 'diwali wishes', '2018-11-22 06:59:24'),
(2, 'friends', '2018-11-23 12:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE IF NOT EXISTS `library` (
`ca_id` int(11) NOT NULL,
  `ca_name` varchar(250) NOT NULL,
  `ca_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`ca_id`, `ca_name`, `ca_time`) VALUES
(1, 'Birthday', '2018-11-22 06:38:46'),
(2, 'anniversary', '2018-11-23 12:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `log_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `phone`, `email`, `pass`, `status`, `log_time`) VALUES
(3, 'chirag', NULL, 'chirag@gmail.com', '54123', '1', '2018-11-22 06:40:11'),
(10, 'chirag', NULL, 'chirag@gmail.com', 'dsfdsfad', '1', '2018-11-22 06:40:11'),
(11, 'nisha', 7482229472, 'nisha@gmail.com', '12345', '1', '2018-11-22 06:40:11'),
(12, 'nisha', 7482229472, 'nisha@gmail.com', '12345', '1', '2018-11-22 06:40:11'),
(13, 'rom', NULL, 'rom@gmail.com', '1234', '1', '2018-11-22 06:40:11'),
(31, 'Hitesh', 4545454545, 'hitu@gmail.com', '1234', '1', '2018-11-22 06:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
`sms_id` int(11) NOT NULL,
  `sms_msg` varchar(250) NOT NULL,
  `sms_caid` int(11) NOT NULL,
  `sms_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`sms_id`, `sms_msg`, `sms_caid`, `sms_time`) VALUES
(1, 'ferdsfdsfdfsdf', 1, '2018-11-23 06:56:38'),
(2, 'Wish you happy birthday dear', 1, '2018-11-23 07:17:02'),
(3, 'wish u happy anniversary', 2, '2018-11-23 12:22:23'),
(4, 'many many happy return of day', 2, '2018-11-26 12:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `sendsms`
--

CREATE TABLE IF NOT EXISTS `sendsms` (
`id` int(11) NOT NULL,
  `per_name` varchar(250) NOT NULL,
  `per_mobile` varchar(100) NOT NULL,
  `per_message` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sendsms`
--

INSERT INTO `sendsms` (`id`, `per_name`, `per_mobile`, `per_message`, `time`) VALUES
(1, 'vishal', '7066172076', 'Wish you happy birthday dear', '2018-11-26 13:28:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
 ADD PRIMARY KEY (`gr_id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
 ADD PRIMARY KEY (`ca_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
 ADD PRIMARY KEY (`sms_id`);

--
-- Indexes for table `sendsms`
--
ALTER TABLE `sendsms`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
MODIFY `gr_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
MODIFY `sms_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sendsms`
--
ALTER TABLE `sendsms`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
