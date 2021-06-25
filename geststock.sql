-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 25 juin 2021 à 12:45
-- Version du serveur :  8.0.25-0ubuntu0.20.04.1
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `geststock`
--

-- --------------------------------------------------------

--
-- Structure de la table `membres`
--

CREATE TABLE `membres` (
  `id` int NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `admin` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `membres`
--

INSERT INTO `membres` (`id`, `username`, `password`, `admin`) VALUES
(1, 'admin', 'b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1', 1),
(2, 'user', 'b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1', 0);

-- --------------------------------------------------------

--
-- Structure de la table `objets`
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
-- Déchargement des données de la table `objets`
--

INSERT INTO `objets` (`id`, `modele`, `description`, `instock`, `quantity`, `barcode`, `type`, `marque`, `comment`) VALUES
(4, 'DGS-1005D', 'D-LINK Gigabit de bureau 5 ports', 1, 1, 'DGS-1005D', 'Switch', 'D-Link', ''),
(5, 'TL-SF1005D', 'TP-Link 5-ports 10/100Mbps Desktop Switch', 1, 1, 'TL-SF1005D', 'Switch', 'TP-Link', ''),
(6, 'DES-1008P', 'D-Link 8-ports Desktock Switch with 4 PoE ports', 1, 1, 'DES-1008P_01', 'Switch', 'D-Link', ''),
(7, 'DAP-1360', 'D-Link Wireless N open source Access Point', 1, 1, 'DAP-1360_01', 'Access Point', 'D-Link', ''),
(8, 'WG602', 'Netgear Wireless-G 54 Access Point WG602', 1, 1, 'WG602-400PES_01', 'Access Point', 'Netgear', ''),
(9, 'GS605', 'Netgear 5-Ports Gigabit Ethernet Switch GS605', 0, 1, '2N212C3U0752F', 'Switch', 'Netgear', ''),
(10, 'XETB1001', 'Netgear 85 Mbps Powerline Network Adapter Kit XETB1001', 1, 2, 'XETB1001-100ISS', 'CPL', 'Netgear', ''),
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
(43, 'CAB-SS6V35FC/MT', 'Cable Série pour Switch D-Link DES-2838', 1, 6, 'n/a', 'Wire', 'D-Link', ''),
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
(61, 'DWL-2100', 'D-Link Air Plus XtremeG Wireless Access Point DWL-2100', 1, 1, 'DR9X39C003807', 'Access Point', 'D-Link', ''),
(68, 'N150', 'N150 ADSL2+ Modem router', 1, 1, '26K50BBM09E59', 'Modem', 'Netgear', ''),
(69, 'Antenne', 'GPS Antenna SIMRAD GS-25', 1, 1, '9420024122747', 'SIMRAD', 'GS-25', ''),
(70, 'WRT320N', 'Dual-Band Wireless-N Gigabit Router WRT320', 1, 1, 'CUH01J721772', 'Router', 'Cisco', ''),
(71, 'Modem', 'Netgear Broadband DSL Modem', 1, 1, '1XW22ABU00437', 'NETGEAR', 'DM111P', ''),
(72, 'Modem', 'Netgear Broadband DSL Modem', 1, 1, '1XW22ABN00408', 'NETGEAR', 'DM111P', ''),
(73, 'AIR-LAP1131AG', 'Cisco AIR-LAP1131AG Access Point', 1, 1, 'FCZ1402Q2GR', 'Access Point', 'Cisco', ''),
(74, 'WG602', 'Netgear Wireless-G 54 Access Point WG602', 1, 1, '1C436C52022B9', 'Access Point', 'Netgear', ''),
(75, 'Set-Top-Box', 'Amino Set-Top-BOX A110-5220', 1, 1, '700808D652515', 'Amino', 'AmiNET110', ''),
(76, 'WUSB600N', 'Wireless-N USB Network Adapter with Dual Band', 1, 1, 'JNW10J942571', 'Network Adapter', 'Cisco', ''),
(77, 'WUSB600N', 'Wireless-N USB Network Adapter with Dual Band', 1, 1, 'JNW10JA40024', 'Network Adapter', 'Cisco', ''),
(78, 'ST2030', 'VoIP Phone ST2030', 1, 1, 'CP0823AY45L', 'VoIp Phone', 'Thomson', ''),
(79, 'ST2030', 'VoIP Phone ST2030', 1, 1, 'CP0823AY463', 'VoIp Phone', 'Thomson', ''),
(80, 'ST2030', 'VoIP Phone ST2030', 1, 1, 'CP0823AY465', 'VoIp Phone', 'Thomson', ''),
(81, 'ST2030', 'VoIP Phone ST2030', 1, 1, 'CP0823AY44U', 'VoIp Phone', 'Thomson', ''),
(82, 'C610H', 'DEC Phone C610H', 1, 1, '4250336821498-1', 'Phone', 'Gigaset', 'Pas de code barre dispo'),
(83, 'C610H', 'DEC Phone C610H', 1, 1, '4250336821498-2', 'Phone', 'Gigaset', 'Pas de code barre dispo'),
(84, 'DFE-551FX', 'Optical fibre Fast Ethernet PCI Adapter', 1, 1, 'P1ME2BC000340', 'Network Adapter', 'D-Link', ''),
(85, 'DFE-551FX', 'Optical fibre Fast Ethernet PCI Adapter', 1, 1, 'P1ME2BC000339', 'Network Adapter', 'D-Link', ''),
(86, 'P2602H', 'ADSL2+ VoIP IAD for Soho', 1, 1, 'S070Y41057474', 'Modem', 'ZyXEL', ''),
(87, 'P2602H', 'ADSL2+ VoIP IAD for Soho', 1, 1, 'S070Y41057473', 'Modem', 'ZyXEL', ''),
(88, 'O.BOX IP', 'Office business box \r\n', 1, 1, 'C0001243', 'Box', 'Adept Telecom', ''),
(89, 'CT-633', 'VoIP IAD Box Alice\r\n', 1, 1, '052TAU00450', 'Box', 'Tiscali', ''),
(90, 'WRT320N', 'Dual-Band Wireless-N Gigabit Router WRT320', 1, 1, 'CUH01J722192', 'Router', 'Cisco', ''),
(91, 'WRT320N', 'Dual-Band Wireless-N Gigabit Router WRT320', 1, 1, 'CUH01J721987', 'Router', 'Cisco', ''),
(92, 'WRT320N', 'Dual-Band Wireless-N Gigabit Router WRT320', 1, 1, 'CUH01J721690', 'Router', 'Cisco', ''),
(93, 'WRT320N', 'Dual-Band Wireless-N Gigabit Router WRT320', 0, 1, 'CUH01J721683', 'Router', 'Cisco', 'Utilisation réseau 192.168.1.0/24'),
(94, 'TS-253 Pro', 'NAS QNAP TS-253 Pro', 1, 1, 'Q158I00386', 'NAS', 'QNAP', ''),
(95, 'GoPiGo3', 'GoPiGO3 Starter Kit robot', 1, 1, '855390007098-1', 'Robot', 'Dexter Industries', ''),
(96, 'mBot', 'mBot Educational Robot Kit', 1, 1, '90058170920000909', 'Robot', 'Makeblock', ''),
(97, 'mBot Ranger', 'mBot Ranger 3-in-1 Educational Robot Kit', 1, 1, '90092171128000299', 'Robot', 'Makeblock', ''),
(98, 'mBot Ranger', 'mBot Ranger 3-in-1 Educational Robot Kit', 1, 1, '90092171128000323', 'Robot', 'Makeblock', ''),
(99, 'mBot', 'mBot Educational Robot Kit', 1, 1, '90058170920000912', 'Robot', 'Makeblock', ''),
(100, 'Galaxy Tab2 -7.0', 'Samsumg Galaxy Tab2 -7.0', 1, 1, '8806085059542', 'Tablette', 'Samsung', ''),
(101, 'iPad Mini', 'iPad Mini', 1, 1, 'F4PK55K3F193', 'Tablette', 'Apple', ''),
(102, 'DGS-1510-50x', 'Switch D-Link 52 ports', 1, 1, 'RZGT3J2000325', 'Switch', 'D-Link', 'Switch classe'),
(103, 'Prmergy RX1330 M4', 'Fujitsu Server - Prmergy RX1330 M4', 1, 1, 'YMH005004 E15N900476', 'Server', 'Fujitsu', 'Server classe'),
(104, 'LX-3000', 'Microsoft Headset LifeChat LX-3000', 1, 1, '3124146', 'Headset', 'Microsoft', ''),
(105, 'LX-3000', 'Microsoft Headset LifeChat LX-3000', 1, 1, '3153817', 'Headset', 'Microsoft', ''),
(106, 'LX-3000', 'Microsoft Headset LifeChat LX-3000', 1, 1, '3154447', 'Headset', 'Microsoft', ''),
(107, 'LX-3000', 'Microsoft Headset LifeChat LX-3000', 1, 1, '3153961', 'Headset', 'Microsoft', ''),
(108, 'WRT320N', 'Dual-Band Wireless-N Gigabit Router WRT320', 1, 1, 'CUH01J721908', 'Router', 'Cisco', ''),
(109, 'WRT320N', 'Dual-Band Wireless-N Gigabit Router WRT320', 1, 1, 'CUH01J721746', 'Router', 'Cisco', ''),
(110, 'XETB1001', 'Netgear 85 Mbps Powerline Network Adapter Kit XETB1001', 1, 2, '1VS184B502561', 'CPL', 'Netgear', '1X'),
(111, 'StorCenter ix2', 'Iomega Network Storage StorCenter ix2 1TB', 1, 1, '12BL28415A', 'NAS', 'Iomega', ''),
(112, 'TP-MR3420', 'TP-Link 3G/4G Wireless N Router', 1, 1, '2171037006172', 'Router', 'TP-Link', ''),
(113, '7921', 'Cisco 7921 VoIP Phone', 1, 1, 'PHI1038F14G', 'Phone', 'Cisco', 'Code barre alim'),
(114, '7921', 'Cisco 7921 VoIP Phone', 1, 1, 'PHI0843F12D', 'Phone', 'Cisco', 'Code barre alim'),
(115, '7921', 'Cisco 7921 VoIP Phone', 1, 1, 'PHI0728G8YO', 'Phone', 'Cisco', 'Code barre alim'),
(116, 'LX-3000', 'Microsoft Headset LifeChat LX-3000', 1, 1, '3151954', 'Headset', 'Microsoft', ''),
(117, 'LX-3000', 'Microsoft Headset LifeChat LX-3000', 1, 1, '3153324', 'Headset', 'Microsoft', ''),
(118, 'LX-3000', 'Microsoft Headset LifeChat LX-3000', 1, 1, '3152854', 'Headset', 'Microsoft', ''),
(119, 'VivoTab Smart', 'ASUS VivoTab Smart', 1, 1, 'D10KBC810806', 'Tablette', 'ASUS', ''),
(120, 'ST2030', 'VoIP Phone ST2030', 1, 1, 'CP0823AY44N', 'VoIP Phone', 'Thomson', ''),
(121, 'AD-RT-ETH/USB-X5', 'DSL Router CXR AD-RT-ETH/USB-X5', 1, 1, '2609-5654-06-CXBG-0013', 'Router', 'CXR', ''),
(122, 'AD-RT-ETH/USB-X5', 'DSL Router CXR AD-RT-ETH/USB-X5', 1, 1, '2609-5654-06-CXBG-0017', 'Router', 'CXR', ''),
(123, 'NGT-1-USB', 'Actisense Analyser NMEA avce liaison USB', 1, 1, '181580', 'Mesure', 'Actisense', ''),
(124, 'ST2030', 'VoIP Phone ST2030', 1, 1, 'CP0823AY44Y', 'VoIP Phone', 'Thomson', 'Cod boite CP0823AY454'),
(125, 'AIR-LAP1131AG', 'Cisco AIR-LAP1131AG Access Point', 1, 1, 'FCZ1402Q2GH', 'Access Point', 'Cisco', ''),
(126, 'WUSB600N', 'Wireless-N USB Network Adapter with Dual Band', 1, 1, 'JNW10J942342', 'Network Adapter', 'Cisco', ''),
(127, 'MT2071', 'Devolo Highspeed 85 dLan Ethernet', 1, 1, '0609080750020169', 'CPL', 'Devolo', '1x'),
(128, 'MT2071', 'Devolo Highspeed 85 dLan Ethernet', 1, 1, '0609080750021768', 'CPL', 'Devolo', '1x'),
(129, 'MT2071', 'Devolo Highspeed 85 dLan Ethernet', 1, 1, '0609080750020121', 'CPL', 'Devolo', '1x'),
(130, 'CISCO 871', 'Router Cisco 871', 1, 1, 'FHK125224LX', 'Router', 'Cisco', ''),
(131, 'CISCO 871', 'Router Cisco 871', 1, 1, 'FHK125224ME', 'Router', 'Cisco', ''),
(132, 'CISCO 871', 'Router Cisco 871', 1, 1, 'FHK125224M1', 'Router', 'Cisco', 'Pb connecteur alim'),
(133, 'CISCO 871', 'Router Cisco 871', 1, 1, 'FHK125224LQ', 'Router', 'Cisco', 'Pb connecteur alim'),
(134, 'GoPiGo3', 'GoPiGO3 Starter Kit robot', 1, 1, '855390007098-2', 'Robot', 'Dexter Industries', ''),
(135, 'G05-XSE', 'Simrad navigation swstem G05-XSE', 1, 1, '107080551', 'GPS', 'Simrad', ''),
(136, 'IDST-N2000', 'Intelligent DST Triducer multisensor', 1, 1, '3670540', 'Sensor', 'Simrad', ''),
(137, 'IS42', 'Simrad IS42 Digital Display', 1, 1, '107301943', 'Display', 'Simrad', ''),
(138, 'RF25N', 'Simrad RF25N Rudder Feedback', 1, 1, '14641', 'Sensor', 'Simrad', ''),
(139, '000-11519-001', 'Transom Speed sensor 000-11519-001', 1, 1, '502230403', 'Sensor', 'Transom', ''),
(140, 'BMV-700', 'Battery Monitor', 1, 1, 'HQ1539FAVVV', 'Sensor', 'Victron Energy', ''),
(141, 'GP08', 'LG 8x External DVD rewriter', 1, 1, '004HKSB090318', 'DVD rewriter', 'LG', ''),
(142, 'Z320', 'logitech Speaker system Z320', 1, 1, '099206016590', 'Speaker', 'Logitech', ''),
(143, 'M1011', 'Axis Network camera M1011', 1, 1, '00408CA7C0BE', 'Camera', 'Axis', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `objets`
--
ALTER TABLE `objets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instock` (`instock`),
  ADD KEY `instock_2` (`instock`),
  ADD KEY `instock_3` (`instock`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `membres`
--
ALTER TABLE `membres`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `objets`
--
ALTER TABLE `objets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
