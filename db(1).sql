-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2020 at 07:03 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `password` int(20) NOT NULL,
  `type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`, `type`) VALUES
(1111, 1111, 'warehouse'),
(1621, 1621, 'admin'),
(2222, 2222, 'hr');

-- --------------------------------------------------------

--
-- Table structure for table `attendancein`
--

CREATE TABLE `attendancein` (
  `id` int(12) NOT NULL,
  `barcode` int(20) NOT NULL,
  `indate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendancein`
--

INSERT INTO `attendancein` (`id`, `barcode`, `indate`, `status`) VALUES
(63, 1, '2020-03-16 20:05:14', 'Hattww'),
(66, 4, '2020-03-16 20:05:22', 'Hattww'),
(67, 5, '2020-03-16 20:05:25', 'Hattww'),
(68, 6, '2020-03-16 20:05:28', 'Hattww'),
(69, 7, '2020-03-16 20:05:31', 'Hattww'),
(70, 8, '2020-03-16 20:05:33', 'Hattww'),
(71, 9, '2020-03-16 20:05:37', 'Hattww'),
(73, 10100013, '2020-03-16 20:07:24', 'Hattww'),
(78, 12, '2020-03-16 20:46:29', 'Hattww');

-- --------------------------------------------------------

--
-- Table structure for table `attendanceout`
--

CREATE TABLE `attendanceout` (
  `id` int(12) NOT NULL,
  `barcode` int(20) NOT NULL,
  `outdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendanceout`
--

INSERT INTO `attendanceout` (`id`, `barcode`, `outdate`, `status`) VALUES
(1247, 1, '2020-03-16 20:05:57', 'Hattww'),
(1250, 4, '2020-03-16 20:06:06', 'Hattww'),
(1251, 5, '2020-03-16 20:06:09', 'Hattww'),
(1252, 6, '2020-03-16 20:06:12', 'Hattww'),
(1255, 10100013, '2020-03-16 20:07:32', 'Hattww'),
(1256, 12, '2020-03-16 20:46:40', 'Hattww');

-- --------------------------------------------------------

--
-- Table structure for table `dawakary_koga`
--

CREATE TABLE `dawakary_koga` (
  `id` int(11) NOT NULL,
  `jore_kala` varchar(250) CHARACTER SET utf8 NOT NULL,
  `zhmaray_kala` int(11) NOT NULL,
  `shwene_kalay_dawakraw` varchar(255) CHARACTER SET utf8 NOT NULL,
  `tebene` varchar(3000) CHARACTER SET utf8 NOT NULL,
  `cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dawakary_koga`
--

INSERT INTO `dawakary_koga` (`id`, `jore_kala`, `zhmaray_kala`, `shwene_kalay_dawakraw`, `tebene`, `cod`) VALUES
(23, 'يلبيل', 1, 'location four', 'test 3 yam', 3),
(22, 'p30', 1, 'location three', 'am kalayaman pewesta', 5);

-- --------------------------------------------------------

--
-- Table structure for table `hr`
--

CREATE TABLE `hr` (
  `id` int(11) NOT NULL,
  `naw` varchar(75) CHARACTER SET utf8 NOT NULL,
  `ragaz` varchar(32) CHARACTER SET utf8 NOT NULL,
  `taman` date NOT NULL,
  `zhmaray_mo` int(12) NOT NULL,
  `shwene_ladaek_bwn` varchar(32) CHARACTER SET utf8 NOT NULL,
  `shwene_neshtajebwn` varchar(32) CHARACTER SET utf8 NOT NULL,
  `mucha` int(12) NOT NULL,
  `shwene_eshkrdn` varchar(60) CHARACTER SET utf8 NOT NULL,
  `barwary_dast_bakar_bwn` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hr`
--

INSERT INTO `hr` (`id`, `naw`, `ragaz`, `taman`, `zhmaray_mo`, `shwene_ladaek_bwn`, `shwene_neshtajebwn`, `mucha`, `shwene_eshkrdn`, `barwary_dast_bakar_bwn`) VALUES
(1, 'hawdang', '', '2019-12-18', 0, '', '', 0, '', '0000-00-00'),
(4, 'هەلگورد مەحەمەد', 'نیر', '2019-12-11', 2147483647, 'سلیمانی', 'سلیمانی', 98000, 'location one', '2019-12-03'),
(5, 'ibrahem', 'نیر', '1997-10-15', 2147483647, 'kalar', 'kalar', 89000, 'location three', '2018-11-03'),
(6, 'halmat', 'نیر', '2019-12-12', 2147483647, 'slemany', 'slemany', 670000, 'location one', '2019-12-18'),
(7, 'hawdang', 'نیر', '2019-12-03', 2147483647, 'chamchamal', 'slemani', 950000, 'location one', '2018-12-03'),
(8, 'kani', 'مێ', '2019-12-17', 2147483647, 'shanaxse', 'ranya', 99000, 'location four', '2019-12-26'),
(9, 'halgurd', 'نیر', '2019-02-05', 2147483647, 'badana', 'slemany', 20000, 'location three', '2019-01-03'),
(10, 'shkar', 'نیر', '1997-02-05', 2147483647, 'arbat', 'slemany', 800000, 'location two', '2019-02-04'),
(11, 'hawzhin', 'مێ', '2020-01-01', 2147483647, 'chanchamal', 'slemani', 750000, 'location one', '2020-01-20'),
(12, 'hawdang', 'نیر', '1993-12-01', 880653652, 'KALARSTAN', 'wlwbya', 2147483647, 'location four', '2020-01-31'),
(10100013, 'Talar Soran abdullah', 'مێ', '1995-08-12', 1421623, 'سلێمانی-سەرشەقام', 'قڕگـە', 1200000, 'location_two', '2018-03-04'),
(10100014, 'hare', 'نیر', '1998-02-20', 2147483647, 'slemany', 'slemane', 700000, 'location two', '2020-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `kala_roshtw`
--

CREATE TABLE `kala_roshtw` (
  `id` varchar(11) NOT NULL,
  `jore_kala` varchar(250) CHARACTER SET utf8 NOT NULL,
  `zhmaray_kala_roshtw` varchar(250) NOT NULL,
  `shwene_kalay_dawakraw` varchar(250) NOT NULL,
  `tebene` varchar(250) CHARACTER SET utf8 NOT NULL,
  `cod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kala_roshtw`
--

INSERT INTO `kala_roshtw` (`id`, `jore_kala`, `zhmaray_kala_roshtw`, `shwene_kalay_dawakraw`, `tebene`, `cod`) VALUES
('18', 'test1', '1', 'location three', 'tkaya  am dataya  bgwaznawa', 36),
('23', 'يلبيل', '1', 'location three', 'begayana', 37);

-- --------------------------------------------------------

--
-- Table structure for table `koga_insert`
--

CREATE TABLE `koga_insert` (
  `id` int(11) NOT NULL,
  `jore_kala` varchar(255) CHARACTER SET utf8 NOT NULL,
  `baskrdne_kala` varchar(255) CHARACTER SET utf8 NOT NULL,
  `zhmaray_kala` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `koga_insert`
--

INSERT INTO `koga_insert` (`id`, `jore_kala`, `baskrdne_kala`, `zhmaray_kala`) VALUES
(4, 'Ashti', 'halbast', 250000),
(5, 'Ashti', 'knkjbjbjbjb', 250000),
(7, '23', 'hgh', 0),
(8, '54', ',cmmkdff', 880),
(9, '544', 'dfdfd', 0),
(10, '345', 'sdsds', 0),
(11, 'hgshsgs', 'nsdbhsdge', 65),
(14, 'JJBG', 'BJHVH', 76),
(15, 'کۆلا', 'خراپە', 123),
(16, 'kani', '1234', 1234),
(17, '1234', '1234', 1234),
(18, 'test1', 'hhgf', 1233),
(20, 'P300', 'لەبەر خاتری کانی', 5),
(21, 'kanu78', 'هسبدئوگد', 67),
(22, 'p30', 'کار', 1),
(23, 'يلبيل', 'تاتاب', 1),
(24, 'waxlegent', 'waxse qzh', 0),
(25, 'hamabareza', 'darayaka', 0),
(26, 'hrt', 'zor basha', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendancein`
--
ALTER TABLE `attendancein`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barcode` (`barcode`);

--
-- Indexes for table `attendanceout`
--
ALTER TABLE `attendanceout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barcode` (`barcode`);

--
-- Indexes for table `dawakary_koga`
--
ALTER TABLE `dawakary_koga`
  ADD PRIMARY KEY (`cod`);

--
-- Indexes for table `hr`
--
ALTER TABLE `hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kala_roshtw`
--
ALTER TABLE `kala_roshtw`
  ADD PRIMARY KEY (`cod`) USING BTREE;

--
-- Indexes for table `koga_insert`
--
ALTER TABLE `koga_insert`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendancein`
--
ALTER TABLE `attendancein`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `attendanceout`
--
ALTER TABLE `attendanceout`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1257;

--
-- AUTO_INCREMENT for table `dawakary_koga`
--
ALTER TABLE `dawakary_koga`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hr`
--
ALTER TABLE `hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10100015;

--
-- AUTO_INCREMENT for table `kala_roshtw`
--
ALTER TABLE `kala_roshtw`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `koga_insert`
--
ALTER TABLE `koga_insert`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendancein`
--
ALTER TABLE `attendancein`
  ADD CONSTRAINT `attendancein_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `hr` (`id`);

--
-- Constraints for table `attendanceout`
--
ALTER TABLE `attendanceout`
  ADD CONSTRAINT `attendanceout_ibfk_1` FOREIGN KEY (`barcode`) REFERENCES `attendancein` (`barcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
