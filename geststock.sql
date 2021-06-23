-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 22, 2021 at 11:08 AM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `geststock`
--

-- --------------------------------------------------------

--
-- Table structure for table `membres`
--

CREATE TABLE `membres` (
  `id` int NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `admin` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `membres`
--

INSERT INTO `membres` (`id`, `username`, `password`, `admin`) VALUES
(1, 'admin', 'b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1', 1),
(2, 'user', 'b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `objets`
--

CREATE TABLE `objets` (
  `id` int NOT NULL,
  `modele` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text NOT NULL,
  `instock` tinyint NOT NULL,
  `quantity` int NOT NULL,
  `barcode` text NOT NULL,
  `type` text NOT NULL,
  `marque` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `objets`
--

INSERT INTO `objets` (`id`, `modele`, `description`, `instock`, `quantity`, `barcode`, `type`, `marque`, `comment`) VALUES
(4, 'DGS-1005D', 'D-LINK Gigabit de bureau 5 ports', 1, 1, 'DGS-1005D', 'Switch', 'D-Link', ''),
(5, 'TL-SF1005D', 'TP-Link 5-ports 10/100Mbps Desktop Switch', 1, 1, 'TL-SF1005D', 'Switch', 'TP-Link', ''),
(6, 'DES-1008P', 'D-Link 8-ports Desktock Switch with 4 PoE ports', 1, 1, 'DES-1008P_01', 'Switch', 'D-Link', ''),
(7, 'DAP-1360', 'D-Link Wireless N open source Access Point', 1, 1, 'DAP-1360_01', 'Access Point', 'D-Link', ''),
(8, 'WG602', 'Netgear Wireless-G 54 Access Point WG602', 1, 1, 'WG602-400PES_01', 'Access Point', 'Netgear', ''),
(9, 'GS605', 'Netgear 5-Ports Gigabit Ethernet Switch GS605', 0, 1, '2N212C3U0752F', 'Switch', 'Netgear', ''),
(10, 'XETB1001', 'Netgear 85 Mbps Powerline Network Adapter Kit XETB1001', 1, 1, 'XETB1001-100ISS', 'CPL', 'Netgear', ''),
(11, 'DES-1008P', 'D-Link 8-ports Desktock Switch with 4 PoE ports', 1, 1, 'DES-1008P_02', 'Switch', 'D-Link', ''),
(12, 'DES-1008P', 'D-Link 8-ports Desktock Switch with 4 PoE ports', 1, 1, 'DES-1008P_03', 'Switch', 'D-Link', ''),
(13, 'DAP-1360', 'D-Link Wireless N open source Access Point', 1, 1, 'DAP-1360_02', 'Access Point', 'D-Link', ''),
(14, 'WG602', 'Netgear Wireless-G 54 Access Point WG602', 1, 1, 'WG602-400PES_02', 'Access Point', 'Netgear', ''),
(16, 'Catalyst 2960 PD', 'Cisco Catalyst 2960 PD ', 1, 1, 'FOC1441Y2KC', 'Switch', 'Cisco', ''),
(17, 'Catalyst 2960 PD', 'Cisco Catalyst 2960 PD ', 1, 1, 'FOC1441Y2EB', 'Switch', 'Cisco', ''),
(18, 'CISCO 871', 'Router Cisco 871', 1, 1, 'FHK125224MK', 'Router', 'Cisco', ''),
(19, 'CISCO 871', 'Router Cisco 871', 1, 1, 'FHK125224M9', 'Router', 'Cisco', ''),
(20, 'CISCO 1841', 'Router Cisco 1841', 1, 1, 'FCZ1353C1WA', 'Router', 'Cisco', ''),
(21, 'CISCO 1841', 'Router Cisco 1841', 1, 1, 'FCZ1353C1VZ', 'Router', 'Cisco', ''),
(22, 'CISCO 1841', 'Router Cisco 1841', 1, 1, 'FCZ1353C1X8', 'Router', 'Cisco', ''),
(23, 'CISCO 1841', 'Router Cisco 1841', 1, 1, 'FCZ1353C1XF', 'Router', 'Cisco', ''),
(24, 'CISCO 1841', 'Router Cisco 1841', 1, 1, 'FCZ1353C1XP', 'Router', 'Cisco', ''),
(25, 'DES-3828', 'Switch D-Link DES-2838', 1, 1, 'P18Y18A000032', 'Switch', 'D-Link', ''),
(26, 'DES-3828', 'Switch D-Link DES-2838', 1, 1, 'P18Y18A000031', 'Switch', 'D-Link', ''),
(27, 'DES-3828', 'Switch D-Link DES-2838', 1, 1, 'P18Y18A000033', 'Switch', 'D-Link', ''),
(28, 'DES-3828', 'Switch D-Link DES-2838', 1, 1, 'P18Y178000020', 'Switch', 'D-Link', ''),
(29, 'DES-3828', 'Switch D-Link DES-2838', 1, 1, 'P18Y18A000283', 'Switch', 'D-Link', ''),
(30, 'DES-3828', 'Switch D-Link DES-2838', 1, 1, 'P18Y18A000063', 'Switch', 'D-Link', ''),
(31, 'DES-3828', 'Switch D-Link DES-2838 24 Ports', 1, 1, 'P18Y18A00061', 'Switch', 'D-Link', ''),
(32, '4400 SE', 'Switch 3COM 4400SE 24 Ports', 1, 1, '7Z5V1E76D2CC0', 'Switch', '3COM', ''),
(33, '4400 SE', 'Switch 3COM 4400SE 24 Ports', 1, 1, '7Z5V28628B80', 'Switch', '3COM', ''),
(34, '4400 SE', 'Switch 3COM 4400SE 24 Ports', 1, 1, 'L6DV4RBE155C0', 'Switch', '3COM', ''),
(35, '4400 SE', 'Switch 3COM 4400SE 24 Ports', 1, 1, '7Z5V1E76D3200', 'Switch', '3COM', ''),
(36, 'Baseline Dual Speed', '3COM Baseline Dual Speed Hub 12 Ports', 1, 1, '0100/LT1G029787', 'Hub', '3COM', ''),
(37, 'Super Stack', '3COM Super Stack III Hub 10 - 24 Ports', 1, 1, '0101/7WSV106060', 'Hub', '3COM', ''),
(38, 'DES-3026', 'Switch D-Link DES-3026 - 24 Ports', 1, 1, 'PL37189000106', 'Switch', 'D-Link', ''),
(39, 'DS-8124', 'DSLAM CXR DS-8124', 1, 1, '3401457831', 'DSLAM', 'CXR Anderson/Jackobson', ''),
(40, 'FS108PEU', 'Switch Netgear ProSafe 8 Ports with 4 PoE', 1, 1, '1DL2993J000BE', 'Switch', 'Netgear', ''),
(41, 'FS108PEU', 'Switch Netgear ProSafe 8 Ports with 4 PoE', 1, 1, '1DL2993B000B7', 'Switch', 'Netgear', ''),
(42, 'FS108PEU', 'Switch Netgear ProSafe 8 Ports with 4 PoE', 1, 1, '1DL2993F000BB', 'Switch', 'Netgear', ''),
(43, 'CAB-SS6V35FC/MT', 'Cable Série pour Switch D-Link DES-2838', 1, 5, 'n/a', 'Wire', 'D-Link', ''),
(44, 'CISCO 2100 ', 'CISCO 2100 serie Wireless LAN Controlle', 1, 1, 'JMX135340AD', 'Access Point', 'Cisco', ''),
(45, 'Baseline 10/100 Hub', '3COM Baseline 10/100 Hub 16 Ports', 0, 1, '0100/YV1W770026053', 'Hub', '3COM', ''),
(46, 'DS215j', 'NAS Synology DS215j', 1, 1, '14BOMPN456341', 'NAS', 'Synology', ''),
(47, 'DS215j', 'NAS Synology DS215j', 1, 1, '1520MPN293015', 'NAS', 'Synology', ''),
(48, 'Latitude 3410', 'Laptop DELL Latitude 3410', 1, 1, 'E144297', 'Laptop', 'DELL', ''),
(49, 'Latitude 3410', 'Laptop DELL Latitude 3410', 1, 1, 'E144515', 'Laptop', 'DELL', ''),
(50, 'HP 250 G7', 'Laptop HP 250 G7', 1, 1, 'CND937ONYR', 'Laptop', 'HP', ''),
(51, 'TS-212', 'NAS QNAP TS-212', 1, 1, 'Q131B27552', 'NAS', 'QNAP', ''),
(53, 'DES-105', 'Switch Netgear 5 Ports Fa ', 1, 1, 'QS3OH3001593', 'Switch', 'Netgear', ''),
(54, 'GS605', 'Netgear 5-Ports Gigabit Ethernet Switch GS605', 1, 1, '2N212C3T0752E', 'Switch', 'Netgear', ''),
(55, 'GS605', 'Netgear 5-Ports Gigabit Ethernet Switch GS605', 0, 1, '2N212C3S0752D', 'Switch', 'Netgear', 'Utilisé sur bureau prof'),
(56, 'DES-105', 'Switch Netgear 5 Ports Fa ', 1, 1, 'QS3OH3001592', 'Switch', 'Netgear', ''),
(57, '5 Ports Switch', 'BLUESTORK 5 Ports Switch', 1, 1, '092101270', 'Switch', 'BLUESTORK', ''),
(58, '5 Ports Switch', 'CANYON 5 Ports Switch', 1, 1, 'N49381225', 'Switch', 'CANYON', ''),
(59, 'CISCO 1841', 'Router Cisco 1841', 1, 1, 'FCZ1353C1VT', 'Router', 'Cisco', ''),
(60, 'Free Agent', 'Seagate Free Agent 500MB', 1, 1, '2GEXZEV3', 'HDD', 'Seagate', ''),
(61, 'DWL-2100', 'D-Link Air Plus XtremeG Wireless Access Point DWL-2100', 1, 1, 'DR9X39C003807', 'Access Point', 'D-Link', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objets`
--
ALTER TABLE `objets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instock` (`instock`),
  ADD KEY `instock_2` (`instock`),
  ADD KEY `instock_3` (`instock`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `objets`
--
ALTER TABLE `objets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
