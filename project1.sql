-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 23, 2023 at 07:52 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('64455aed9d483', 'a'),
('64455aee3fd06', 'b'),
('64455aee865d6', 'a'),
('64455aeedd41c', 'd'),
('64455aef518bf', 'a'),
('64456f5786948', 'a'),
('64456f5831440', 'c'),
('64456f587ffac', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('55846be776610', 'testing', 'sunnygkp10@gmail.com', 'testing', 'testing stART', '2015-06-19', '09:22:15pm'),
('5584ddd0da0ab', 'netcamp', 'sunnygkp10@gmail.com', 'feedback', ';mLBLB', '2015-06-20', '05:28:16am'),
('558510a8a1234', 'sunnygkp10', 'sunnygkp10@gmail.com', 'dl;dsnklfn', 'fmdsfld fdj', '2015-06-20', '09:05:12am'),
('5585509097ae2', 'sunny', 'sunnygkp10@gmail.com', 'kcsncsk', 'l.mdsavn', '2015-06-20', '01:37:52pm'),
('5586ee27af2c9', 'vikas', 'vikas@gmail.com', 'trial feedback', 'triaal feedbak', '2015-06-21', '07:02:31pm'),
('5589858b6c43b', 'nik', 'nik1@gmail.com', 'good', 'good site', '2015-06-23', '06:12:59pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('sahil@gmail.com', '64455940e851b', 5, 5, 5, 0, '2023-04-23 17:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('64455aed9d483', 'data structure and algorithm ', 'a'),
('64455aed9d483', 'data base and algorithm', 'b'),
('64455aed9d483', 'data system', 'c'),
('64455aed9d483', 'data management application ', 'd'),
('64455aee3fd06', 'int', 'a'),
('64455aee3fd06', 'float', 'b'),
('64455aee3fd06', 'bool', 'c'),
('64455aee3fd06', 'char', 'd'),
('64455aee865d6', 'linear and non-linear', 'a'),
('64455aee865d6', 'complex and simple', 'b'),
('64455aee865d6', 'easy', 'c'),
('64455aee865d6', 'discrete and continuous ', 'd'),
('64455aeedd41c', 'FIF', 'a'),
('64455aeedd41c', 'ASo', 'b'),
('64455aeedd41c', 'FIFO', 'c'),
('64455aeedd41c', 'LIFO', 'd'),
('64455aef518bf', 'FIFO', 'a'),
('64455aef518bf', 'LIFO', 'b'),
('64455aef518bf', 'SO', 'c'),
('64455aef518bf', 'KO', 'd'),
('64456f5786948', 'washington', 'a'),
('64456f5786948', 'new york', 'b'),
('64456f5786948', 'paris', 'c'),
('64456f5786948', 'yourop', 'd'),
('64456f5831440', 'pune', 'a'),
('64456f5831440', 'mumbai', 'b'),
('64456f5831440', 'delhi', 'c'),
('64456f5831440', 'nashik', 'd'),
('64456f587ffac', 'bhopal', 'a'),
('64456f587ffac', 'lucknow', 'b'),
('64456f587ffac', 'varanasi ', 'c'),
('64456f587ffac', 'gl', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`, `title`) VALUES
('64455940e851b', '64455aed9d483', 'dsa full form?', 4, 1, 'Data Structure'),
('64455940e851b', '64455aee3fd06', 'what are the data type of number 7.91?', 4, 2, 'Data Structure'),
('64455940e851b', '64455aee865d6', 'what are the types of data structure is there?', 4, 3, 'Data Structure'),
('64455940e851b', '64455aeedd41c', 'for stack which property is used?', 4, 4, 'Data Structure'),
('64455940e851b', '64455aef518bf', 'queue is  what is?', 4, 5, 'Data Structure'),
('64456ee156d31', '64456f5786948', 'what is the capital of america?', 4, 1, 'Gk'),
('64456ee156d31', '64456f5831440', 'capital of india?', 4, 2, 'Gk'),
('64456ee156d31', '64456f587ffac', 'capital of up?', 4, 3, 'Gk');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('64455940e851b', 'Data Structure', 1, 0, 5, 3, 'dsa test', 'data', '2023-04-23 16:13:52'),
('64456ee156d31', 'Gk', 1, 0, 3, 5, 'gerneral k', 'g', '2023-04-23 17:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`, `title`) VALUES
('sahil@gmail.com', 9, '2023-04-23 17:43:13', 'Data Structure');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Ajay', 'M', 'adf', 'ajay@gmail.com', 8805738056, '827ccb0eea8a706c4c34a16891f84e7b'),
('Avinash', 'M', 'kkwagh', 'avinash@gmail.com', 9856234175, '97cddd635cef02b3ceaf25641f9b2eee'),
('Sahil Pagare', 'M', 'k n kela', 'sahil@gmail.com', 846125322, '827ccb0eea8a706c4c34a16891f84e7b'),
('Sakshi', 'F', 'avv school', 'sakshigaikwad9822@gmail.com', 87457645232, '827ccb0eea8a706c4c34a16891f84e7b'),
('Sam', 'F', 'jfghsbgfg', 'samruddhipachore@gmail.com', 9420914464, '5d41402abc4b2a76b9719d911017c592'),
('Sonal', 'F', 'kvm', 'sonal@gmail.com', 78364723645, '40d0984083a127ba2864ea438914211a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
