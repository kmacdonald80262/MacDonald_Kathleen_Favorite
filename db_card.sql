-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2019 at 09:11 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bio`
--

DROP TABLE IF EXISTS `tbl_bio`;
CREATE TABLE IF NOT EXISTS `tbl_bio` (
  `ID` int(11) NOT NULL,
  `sportID` int(11) NOT NULL,
  `Team Name` varchar(80) COLLATE utf8_bin NOT NULL,
  `Years` varchar(80) COLLATE utf8_bin NOT NULL,
  `MVP` varchar(80) COLLATE utf8_bin NOT NULL,
  `Bio` varchar(300) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_bio`
--

INSERT INTO `tbl_bio` (`ID`, `sportID`, `Team Name`, `Years`, `MVP`, `Bio`) VALUES
(1, 1, 'Hamilton Tiger-Cats', '1869-2019', 'Danny McManus', 'The Hamilton Tiger-Cats are a professional Canadian football team based in Hamilton, Ontario, Canada. They are currently members of the East Division of the Canadian Football League. The Tiger-Cats play their home games at Tim Hortons Field. They were founded in 1869 as the Hamilton Football Club'),
(2, 2, 'Denver Brocos', '1960-2019', 'Peyton Manning', 'The Denver Broncos are a professional American football franchise based in Denver, Colorado. The Broncos compete as a member club of the National Football League\'s American Football Conference West division.'),
(3, 3, 'Toronto Raptors', '1995-2019', 'Kyle Lowry', 'The Toronto Raptors are a Canadian professional basketball team based in Toronto. The Raptors compete in the National Basketball Association as a member club of the league\'s Eastern Conference Atlantic Division.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_card`
--

DROP TABLE IF EXISTS `tbl_card`;
CREATE TABLE IF NOT EXISTS `tbl_card` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(80) COLLATE utf8_bin NOT NULL,
  `Image` varchar(200) COLLATE utf8_bin NOT NULL,
  `Header` varchar(80) COLLATE utf8_bin NOT NULL,
  `Wins` varchar(80) COLLATE utf8_bin NOT NULL,
  `Losses` varchar(80) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_card`
--

INSERT INTO `tbl_card` (`ID`, `Title`, `Image`, `Header`, `Wins`, `Losses`) VALUES
(1, 'Hamilton Tiger Cats', 'tiger.jpg', 'CFL Football Team', 'Wins: 15- 2019 Season', 'Losses: 3- 2019 Season'),
(2, 'Denver Broncos', 'denver.jpg', 'NFL Football Team', 'Wins: 3 - 2019 Season', 'Losses: 6 - 2019 Season'),
(3, 'Toronto Raptors', 'raptors.jpg', 'NBA Team', 'Wins: 5 - 2019 Season', 'Losses: 2 - 2019 Season');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
