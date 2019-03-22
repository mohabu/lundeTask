-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2019 at 02:21 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lundegaard`
--

-- --------------------------------------------------------

--
-- Table structure for table `formdata`
--

CREATE TABLE `formdata` (
  `id` int(11) NOT NULL,
  `requesttype` varchar(50) NOT NULL,
  `policynumber` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `requestmessage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formdata`
--

INSERT INTO `formdata` (`id`, `requesttype`, `policynumber`, `name`, `surname`, `requestmessage`) VALUES
(42, 'Contract Adjustment', '123456nbu', 'mohammed', 'abubaker', 'zajistit kvalitu a aktuálnost nabídky v obsahu i v organizaci p&#345;i sou&#269;asném respektování profesionální úrovn&#283; a komplexnosti nabízených slu?eb zajisti'),
(43, 'Complaint', '78921mkl', 'ahmed', 'mansooor', 'Spole&#269;nost byla zalo?ena v roce 1998 holandským obchodníkem a developerem panem Leendertem de Kootem se zam&#283;&#345;ením na stavebnictví a poskytování slu?eb'),
(44, 'Damage Case', '5155ddfff478', 'honza', 'novak', 'Free themes for Bootstrap. Easy to Install. Simply download a CSS file and replace the one in Bootstrap. No messing ... Darkly. Flatly in night mode. '),
(45, 'Contract Adjustment', '7123', 'lenka', 'vackova', 'Blábot je generátor &#269;eských výpl&#328;ových text&#367;, vhodný pro &#269;eskou typografii a design jako náhrada za Lorem ipsum.Blábot je generátor &#269;eských výpl&#328;ových'),
(46, 'sample 4', '777710', 'jan', 'petrak', 'Paper. Material is the metaphor. Navbar Buttons Typography Tables Forms Navs Indicators Progress bars Containers Dialogs ...'),
(47, 'Contract Adjustment', 'sdbgsd', 'lenka', 'slamova', 'efergerg efergergefergergefergergefergergefergerg efergergefergergefergergefergergefergergefergergefergerg'),
(48, 'sample 5', '73332', 'petr', 'vesley', 'bootswatch - Bootswatch is a collection of themes for Bootstrap. - cdnjs.com - The ... https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.3.1/materia'),
(49, 'Complaint', '111127', 'salem', 'khaled', 'Bootswatch is a collection of themes for Bootstrap. ... bootswatch. 4.3.1 ? Public ? Published a month ago. Readme · 0Dependencies · 34Dependents'),
(50, 'Contract Adjustment', '837', 'bvnxbnx', 'fnfhryh', 'srthsrhrj rghrshrs rhsrhttrwhrwhtssrthsrhrj rghrshrs rhsrhttrwhrwhtssrthsrhrj rghrshrs rhsrhttrwhrwhtssrthsrhrj rghrshrs rhsrhttrwhrwhtssrthsrhrj rghr'),
(51, 'sample 4', '26314gfggf', 'ahmed', 'ffgdfbd', 'sfgfggsfgfggsfgfggsfgfggsfgfggsfgfggsfgfgg   sfgfggsfgfggsfgfggsfgfggsfgfggsfgfggsfgfggsfgfggsfgfgg  sfgfggsfgfggsfgfggsfgfggsfgfggsfgfggsfgfggsfgfggs'),
(52, 'Contract Adjustment', '665444lkkj', 'lucka', 'mala', 'See what developers are saying about Material Design for Bootstrap vs Bootswatch. Some developers prefer Material Design for Bootstrap over Bootswatch'),
(53, 'Contract Adjustment', '52727', 'mokal', 'kaleem', 'sdggtrerbhg rgbregtbertgbreb wrgbrwgtbrwgt'),
(54, 'sample 4', '8727832', 'dgag', 'sfnsfn', 'snnsfngfnsfnsnn sbnsrbnsnbsn wrhwrhwrhrhnen');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `head` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `head`) VALUES
(1, 'Contract Adjustment'),
(2, 'Damage Case'),
(3, 'Complaint'),
(4, 'sample 4'),
(5, 'sample 5');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formdata`
--
ALTER TABLE `formdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formdata`
--
ALTER TABLE `formdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
