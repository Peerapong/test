-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2012 at 02:59 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itrain`
--

-- --------------------------------------------------------

--
-- Table structure for table `closed_to`
--

CREATE TABLE IF NOT EXISTS `closed_to` (
  `sid` int(3) unsigned zerofill NOT NULL,
  `spotid` int(3) unsigned zerofill NOT NULL,
  `distance` int(3) unsigned NOT NULL,
  PRIMARY KEY (`sid`,`spotid`),
  KEY `spotid` (`spotid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `closed_to`
--

INSERT INTO `closed_to` (`sid`, `spotid`, `distance`) VALUES
(001, 027, 41),
(001, 030, 21),
(005, 020, 38),
(006, 027, 46),
(006, 030, 26),
(007, 008, 65),
(007, 023, 8),
(007, 025, 38),
(008, 015, 100),
(008, 023, 34),
(008, 025, 29),
(009, 008, 34),
(009, 015, 48),
(012, 019, 130),
(016, 027, 31),
(016, 030, 35),
(017, 002, 81),
(017, 011, 78),
(018, 007, 64),
(023, 027, 24),
(023, 030, 22),
(024, 002, 72),
(024, 011, 85),
(026, 010, 144),
(028, 005, 127),
(029, 027, 12),
(029, 030, 22),
(030, 002, 4),
(033, 016, 147),
(034, 004, 98),
(035, 003, 66),
(038, 012, 122),
(038, 026, 85),
(038, 029, 101),
(039, 001, 64),
(039, 013, 83),
(039, 014, 56),
(039, 024, 98),
(040, 009, 148),
(041, 006, 47),
(041, 027, 36),
(041, 030, 16),
(042, 006, 62),
(047, 004, 68);

-- --------------------------------------------------------

--
-- Table structure for table `consist_of_train_shop`
--

CREATE TABLE IF NOT EXISTS `consist_of_train_shop` (
  `shopid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `tid` int(2) unsigned zerofill NOT NULL,
  `type_of_food` varchar(100) NOT NULL,
  `rating` int(1) unsigned NOT NULL,
  `open` time NOT NULL,
  `close` time NOT NULL,
  PRIMARY KEY (`shopid`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `consist_of_train_shop`
--

INSERT INTO `consist_of_train_shop` (`shopid`, `tid`, `type_of_food`, `rating`, `open`, `close`) VALUES
(01, 01, 'Steak, salad, soup and bread', 3, '06:30:00', '17:00:00'),
(02, 02, 'Thai Noodle, pad thai and hoi tod', 2, '09:30:00', '19:10:00'),
(03, 03, 'Roti and curry fired rice', 2, '12:30:00', '21:00:00'),
(04, 04, 'Chinese duck,pork with sweet paste on rice from the famous Sanyod restaurant', 5, '15:30:00', '23:00:00'),
(05, 13, 'Sticky rice with mango and sweet coconut cream', 4, '06:30:00', '17:30:00'),
(06, 17, 'Somtum with grilled chicken and sticky rice', 5, '03:30:00', '14:00:00'),
(07, 18, 'Japanese noodle ramen, udon and Jiro''s imported shushi', 5, '06:30:00', '16:00:00'),
(08, 22, 'Pork leg black sauce pie from Menu Khunya', 5, '09:30:00', '19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `divided_into_station`
--

CREATE TABLE IF NOT EXISTS `divided_into_station` (
  `sid` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `rid` int(2) unsigned zerofill NOT NULL,
  `order` int(2) unsigned NOT NULL,
  `sname` varchar(50) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `divided_into_station`
--

INSERT INTO `divided_into_station` (`sid`, `rid`, `order`, `sname`) VALUES
(001, 01, 1, 'Bangna'),
(002, 01, 2, 'Chacherngsao '),
(003, 01, 3, 'Chonburi'),
(004, 01, 4, 'Chantaburi'),
(005, 01, 5, 'Trad'),
(006, 02, 1, 'Bangbon'),
(007, 02, 2, 'Samutsongkarm'),
(008, 02, 3, 'Ratchaburi'),
(009, 02, 4, 'Petchaburi'),
(010, 02, 5, 'Prachuabkirikan'),
(011, 02, 6, 'Chumporn'),
(012, 02, 7, 'Suratthani'),
(013, 02, 8, 'Nakornsrithammarat'),
(014, 02, 9, 'Pattalung'),
(015, 02, 10, 'Songkla'),
(016, 03, 1, 'Meanburi'),
(017, 03, 2, 'Nakornnayok'),
(018, 03, 3, 'Nakornratchasrima'),
(019, 03, 4, 'Burirum'),
(020, 03, 5, 'Surin'),
(021, 03, 6, 'Srisaket'),
(022, 03, 7, 'Ubonratchathani'),
(023, 04, 1, 'Klongsarmwa'),
(024, 04, 2, 'Saraburi'),
(025, 04, 3, 'Chaiyabhumi'),
(026, 04, 4, 'Konkaen'),
(027, 04, 5, 'Kallasin'),
(028, 04, 6, 'Sakonnakorn'),
(029, 05, 1, 'Bangkhean'),
(030, 05, 2, 'Ayutthaya'),
(031, 05, 3, 'Lopburi'),
(032, 05, 4, 'Nakornsawan'),
(033, 05, 5, 'Pichit'),
(034, 05, 6, 'Pisanurok'),
(035, 05, 7, 'Udtharadit'),
(036, 05, 8, 'Narn'),
(037, 05, 9, 'Payao'),
(038, 05, 10, 'Chiangrai'),
(039, 05, 11, 'Chiangmai'),
(040, 05, 12, 'Maehongsorn'),
(041, 06, 1, 'Bangkae'),
(042, 06, 2, 'Nonthaburi'),
(043, 06, 3, 'Suphanburi'),
(044, 06, 4, 'Kanchanaburi'),
(045, 06, 5, 'Uthaithani'),
(046, 06, 6, 'Kumpangpetch'),
(047, 06, 7, 'Tark');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `eid` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `tid` int(2) unsigned zerofill NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `driver_license_number` int(8) NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `tid` (`tid`),
  KEY `name` (`name`),
  KEY `surname` (`surname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`eid`, `tid`, `name`, `surname`, `driver_license_number`) VALUES
(00001, 01, 'Maytwin ', 'Pitipornvivat', 65020361),
(00003, 02, 'Pun', 'Suvanit', 50723742),
(00005, 03, 'Pasit', 'Kongkunakornkul', 66517115),
(00006, 04, 'Putti', 'Orungrochkul', 83350972),
(00008, 05, 'Tat', 'Sukthongchaikul', 51835002),
(00009, 06, 'Peerapong', 'Benjarungroj', 16228301),
(00010, 07, 'Fiam', 'Jaratjarungkiat', 79445212),
(00014, 08, 'Barack', 'Obama', 84782886),
(00015, 09, 'Mark', 'Zuckerberg', 70282428),
(00017, 10, 'Adam ', 'Levine', 98410279),
(00018, 11, 'Cee ', 'lo green ', 56803982),
(00019, 12, 'Christina ', 'Aguilera', 97609293),
(00025, 13, 'Jiratas ', 'Supapantita', 45020833),
(00026, 14, 'Nattapong', ' Sakulwacharayothin', 61593174),
(00027, 15, 'Sethita ', 'Legaratana', 29338565),
(00028, 07, 'Poon ', 'Wuthikulcharoenwong', 44935620),
(00040, 17, 'Arnant ', 'Chaovanayotin', 37892738),
(00043, 18, 'Thomas ', 'Jefferson', 23342545),
(00050, 19, 'Charles ', 'Xavier', 91894487),
(00051, 20, 'Bell ', 'Tantivongsakij', 32004216),
(00052, 21, 'Simon', ' Lertpaichaiyon', 85033136),
(00053, 22, 'Vipol', ' Tanakhullachet', 70158068),
(00056, 23, 'Apisit ', 'Opsasaimlikit', 44389204),
(00057, 24, 'Jennifer ', 'Kim', 41970145);

-- --------------------------------------------------------

--
-- Table structure for table `operate_on_flight`
--

CREATE TABLE IF NOT EXISTS `operate_on_flight` (
  `fid` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `tid` int(2) unsigned zerofill NOT NULL,
  `flight_type` int(1) unsigned NOT NULL,
  `depart_time_from_first_station` time NOT NULL,
  PRIMARY KEY (`fid`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `operate_on_flight`
--

INSERT INTO `operate_on_flight` (`fid`, `tid`, `flight_type`, `depart_time_from_first_station`) VALUES
(001, 01, 0, '06:00:00'),
(002, 02, 0, '09:00:00'),
(003, 03, 0, '12:00:00'),
(004, 04, 0, '15:00:00'),
(005, 05, 0, '06:00:00'),
(006, 06, 0, '08:00:00'),
(007, 07, 0, '10:00:00'),
(008, 08, 0, '12:00:00'),
(009, 09, 0, '06:00:00'),
(010, 10, 0, '09:00:00'),
(011, 11, 0, '12:00:00'),
(012, 12, 0, '15:00:00'),
(013, 13, 0, '06:00:00'),
(014, 14, 0, '09:00:00'),
(015, 15, 0, '12:00:00'),
(016, 16, 0, '15:00:00'),
(017, 17, 0, '03:00:00'),
(018, 18, 0, '06:00:00'),
(019, 19, 0, '09:00:00'),
(020, 20, 0, '12:00:00'),
(021, 21, 0, '06:00:00'),
(022, 22, 0, '09:00:00'),
(023, 23, 0, '12:00:00'),
(024, 24, 0, '15:00:00'),
(025, 01, 1, '16:00:00'),
(026, 02, 1, '18:00:00'),
(027, 03, 1, '20:00:00'),
(028, 04, 1, '22:00:00'),
(029, 05, 1, '13:00:00'),
(030, 06, 1, '15:00:00'),
(031, 07, 1, '17:00:00'),
(032, 08, 1, '19:00:00'),
(033, 09, 1, '15:30:00'),
(034, 10, 1, '17:30:00'),
(035, 11, 1, '19:30:00'),
(036, 12, 1, '21:30:00'),
(037, 13, 1, '14:30:00'),
(038, 14, 1, '16:30:00'),
(039, 15, 1, '18:30:00'),
(040, 16, 1, '20:30:00'),
(041, 17, 1, '08:40:00'),
(042, 18, 1, '11:40:00'),
(043, 19, 1, '14:40:00'),
(044, 20, 1, '17:40:00'),
(045, 21, 1, '15:30:00'),
(046, 22, 1, '17:30:00'),
(047, 23, 1, '19:30:00'),
(048, 24, 1, '21:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE IF NOT EXISTS `route` (
  `rid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `route_name` varchar(50) NOT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`rid`, `route_name`) VALUES
(01, 'East\n\n'),
(02, 'South'),
(03, 'Lower-North-East\n'),
(04, 'Upper-North-East\n'),
(05, 'North'),
(06, 'West');

-- --------------------------------------------------------

--
-- Table structure for table `security`
--

CREATE TABLE IF NOT EXISTS `security` (
  `eid` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `tid` int(2) unsigned zerofill NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `fighting_skills` varchar(20) NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `tid` (`tid`),
  KEY `name` (`name`),
  KEY `surname` (`surname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `security`
--

INSERT INTO `security` (`eid`, `tid`, `name`, `surname`, `fighting_skills`) VALUES
(00002, 01, 'Suphawit', ' Sappisarnkul', 'Brute Force'),
(00004, 01, 'Phakhin', 'Thaspeeraphan', 'Hand To Hand Combat'),
(00007, 02, 'Sarawut', 'Cheewarattanaphan', 'Telekinetic'),
(00011, 02, 'Nichada', 'Watcharatit', 'Fiam''s Commander'),
(00012, 03, 'Gorguson', 'Theensrat', 'Hand To Hand Combat'),
(00013, 03, 'Paisit', ' Talodsuk', 'Old Man Fighting'),
(00016, 04, 'Jakkrapat ', 'Tangsongjareon', 'Telekinetic'),
(00020, 04, 'James', ' Bond', 'Hand To Hand Combat'),
(00021, 05, 'Ip ', 'man', 'Kungfu Fighting'),
(00022, 05, 'Tony ', 'Jaa', 'Muay Thai'),
(00023, 06, 'Jackie ', 'Chan', 'Kungfu Fighting'),
(00024, 06, 'Somcha', 'Khemklad', 'Hand To Hand Combat'),
(00028, 07, 'Poon ', 'Wuthikulcharoenwong', 'Telekinetic'),
(00029, 07, 'Atom ', 'Bunjitpimol', 'Nua Boxing'),
(00030, 08, 'Peky ', 'Peace', 'Red Noise Gig'),
(00032, 08, 'Steve', ' Roger', 'Superhuman'),
(00033, 09, 'Peter', ' Parker', 'Superhuman'),
(00034, 09, 'James', ' Howlett', 'Superhuman'),
(00035, 10, 'Maruay', ' Tangmitrphracha', 'Len Krieun'),
(00036, 10, 'Kaew ', 'Pongprayoon', 'Boxing '),
(00037, 11, 'John ', 'Cena', 'Wrestler'),
(00038, 11, 'Brock ', 'Lesnar', 'Wrestler '),
(00039, 12, 'Clark ', 'Kent', 'Superhuman'),
(00041, 12, 'Achilles', 'howat', 'Swordplay'),
(00042, 13, 'Hector', 'silman', 'Swordplay'),
(00044, 13, 'Buakaw', ' Banchamek', 'Muay Thai'),
(00045, 14, 'Khaosai ', 'Galaxy', 'Muay Thai'),
(00046, 14, 'Puk', ' Sukrid', 'Brute Force'),
(00047, 15, 'Dante', 'Gorgeous', 'Monster Hunter'),
(00048, 15, 'Bruce', ' Banner', 'Superhuman'),
(00049, 16, 'Rick', ' Grimes', 'Monster Hunter'),
(00054, 16, 'Sasin ', 'Chanchamcharat', 'Basketball Boxing'),
(00055, 17, 'Geana', ' Khajonkulvanich', 'Mixed Martial Art'),
(00058, 17, 'Jason ', 'Voorhees ', 'Brute Force'),
(00059, 18, 'Freddy ', 'Krueger', 'Brute Force'),
(00060, 18, 'Thongchai', ' Mcintyre', 'Singing Attack'),
(00061, 19, 'Da ', 'Endorphine', 'Singing Attack'),
(00062, 19, 'lucus', 'mulflur', 'Telekinetic'),
(00063, 20, 'Takeshi ', 'Hongo', 'Hand To Hand Combat'),
(00064, 20, 'Tony', ' Stark', 'Hand To Hand Combat'),
(00065, 21, 'Usain', ' Bolt', 'Mix Martial Art'),
(00066, 21, 'LeBron', ' James', 'Basketball Boxing'),
(00067, 22, 'Kobe ', 'Bryant', 'Basketball Boxing'),
(00068, 22, 'Dwighdt', ' Howar', 'Basketball Boxing'),
(00069, 23, 'Kevin ', 'Durant', 'Basketball Boxing'),
(00070, 23, 'Bruce', ' Wayne', 'Hand To Hand Combat'),
(00071, 24, 'Wayne ', 'Rooney', 'Soccer Boxing'),
(00072, 24, 'Cristiano ', 'Ronaldo', 'Soccer Boxing');

-- --------------------------------------------------------

--
-- Table structure for table `stipulate_by`
--

CREATE TABLE IF NOT EXISTS `stipulate_by` (
  `fid` int(3) unsigned zerofill NOT NULL,
  `rid` int(2) unsigned zerofill NOT NULL,
  PRIMARY KEY (`fid`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stipulate_by`
--

INSERT INTO `stipulate_by` (`fid`, `rid`) VALUES
(001, 01),
(002, 01),
(003, 01),
(004, 01),
(025, 01),
(026, 01),
(027, 01),
(028, 01),
(005, 02),
(006, 02),
(007, 02),
(008, 02),
(029, 02),
(030, 02),
(031, 02),
(032, 02),
(009, 03),
(010, 03),
(011, 03),
(012, 03),
(033, 03),
(034, 03),
(035, 03),
(036, 03),
(013, 04),
(014, 04),
(015, 04),
(016, 04),
(037, 04),
(038, 04),
(039, 04),
(040, 04),
(017, 05),
(018, 05),
(019, 05),
(020, 05),
(041, 05),
(042, 05),
(043, 05),
(044, 05),
(021, 06),
(022, 06),
(023, 06),
(024, 06),
(045, 06),
(046, 06),
(047, 06),
(048, 06);

-- --------------------------------------------------------

--
-- Table structure for table `tourist_spot`
--

CREATE TABLE IF NOT EXISTS `tourist_spot` (
  `spotid` int(3) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `spot_name` varchar(50) NOT NULL,
  PRIMARY KEY (`spotid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tourist_spot`
--

INSERT INTO `tourist_spot` (`spotid`, `spot_name`) VALUES
(001, 'Pra-tad-doi-sutep'),
(002, 'Ayutthaya History Park'),
(003, 'Sesutchanalai History Park'),
(004, 'Sukolthai History Park'),
(005, 'Phatadpanom temple'),
(006, 'Pha-patom-jade'),
(007, 'Pim-pi-mine History Park'),
(008, 'Phanakorn-Kiri History Park'),
(009, 'Doi-intanon National Park'),
(010, 'Phu-ga-deung National Park'),
(011, 'Khao-Yai National Park'),
(012, 'Doi-ang-kang'),
(013, 'Huai-nam-dang National Park'),
(014, 'Doi-suthep National Park'),
(015, 'Kang-ga-jan National Park'),
(016, 'Puhin-long-gra National Park'),
(017, 'Similan Island'),
(018, 'PP Island'),
(019, 'Samui Island'),
(020, 'Chang Island'),
(021, 'Samet Island'),
(022, 'Talutao Island'),
(023, 'Aumpawa water market'),
(024, 'Pai'),
(025, 'Damnern-saduak water market'),
(026, 'Doi-mea-salong'),
(027, 'Kor-ket'),
(028, 'Chiang-Kann'),
(029, 'Doi-fah national Park'),
(030, 'the Grand Palace');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE IF NOT EXISTS `train` (
  `tid` int(2) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `status` int(1) unsigned NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`tid`, `status`) VALUES
(01, 1),
(02, 1),
(03, 1),
(04, 1),
(05, 1),
(06, 1),
(07, 1),
(08, 1),
(09, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE IF NOT EXISTS `trip` (
  `start_station` varchar(50) NOT NULL,
  `end_station` varchar(50) NOT NULL,
  `total_distance` int(4) unsigned NOT NULL,
  `price` int(4) unsigned NOT NULL,
  PRIMARY KEY (`start_station`,`end_station`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`start_station`, `end_station`, `total_distance`, `price`) VALUES
('Ayutthaya ', 'Chiangmai ', 930, 3030),
('Ayutthaya ', 'Chiangrai ', 780, 2540),
('Ayutthaya ', 'Lopburi ', 100, 330),
('Ayutthaya ', 'Maehongsorn ', 1020, 3330),
('Ayutthaya ', 'Nakornsawan ', 200, 660),
('Ayutthaya ', 'Narn ', 570, 1860),
('Ayutthaya ', 'Payao ', 670, 2190),
('Ayutthaya ', 'Pichit ', 250, 820),
('Ayutthaya ', 'Pitsanulok ', 320, 1050),
('Ayutthaya ', 'Udtaradit ', 420, 1370),
('Bangbon ', 'Chumporn ', 420, 1370),
('Bangbon ', 'Nakornsrithammarat ', 690, 2250),
('Bangbon ', 'Pattalung ', 790, 2580),
('Bangbon ', 'Petchaburi ', 160, 520),
('Bangbon ', 'Prachuabkirikan ', 240, 790),
('Bangbon ', 'Ratchaburi ', 100, 330),
('Bangbon ', 'Samutsongkarm ', 70, 230),
('Bangbon ', 'Songkla ', 890, 2900),
('Bangbon ', 'Suratthani ', 590, 1930),
('Bangkae ', 'Gumphangpetch ', 390, 1270),
('Bangkae ', 'Karnchanaburi ', 220, 720),
('Bangkae ', 'Nonthaburi ', 20, 70),
('Bangkae ', 'Suphanburi ', 120, 390),
('Bangkae ', 'Tark ', 480, 1570),
('Bangkae ', 'Uthaithani ', 310, 1010),
('Bangkaen', 'Ayutthaya ', 70, 230),
('Bangkaen', 'Nakornsawan ', 270, 880),
('Bangkaen', 'Narn ', 640, 2090),
('Bangkaen', 'Payao ', 740, 2410),
('Bangkaen', 'Pichit ', 320, 1050),
('Bangkhaen', 'Chiangmai ', 1000, 3260),
('Bangkhaen', 'Chiangrai ', 850, 2770),
('Bangkhaen', 'Lopburi ', 170, 560),
('Bangkhaen', 'Maehongsorn ', 1090, 3550),
('Bangkhaen', 'Pitsanulok ', 390, 1270),
('Bangkhaen', 'Udtaradit ', 490, 1600),
('Bangna', 'Chacherngsao ', 110, 360),
('Bangna', 'Chantaburi ', 280, 920),
('Bangna', 'Chonburi ', 170, 560),
('Bangna', 'Trad ', 340, 1110),
('Burirum ', 'Srisaket ', 140, 460),
('Burirum ', 'Surin ', 50, 170),
('Burirum ', 'Ubonratchathani ', 220, 720),
('Chacherngsao ', 'Chantaburi ', 170, 560),
('Chacherngsao ', 'Chonburi ', 60, 200),
('Chacherngsao ', 'Trad ', 230, 750),
('Chaiyabhumi ', 'Kallasin ', 260, 850),
('Chaiyabhumi ', 'Konkaen ', 150, 490),
('Chaiyabhumi ', 'Sakonnakorn ', 350, 1140),
('Chantaburi ', 'Trad ', 60, 200),
('Chiangmai ', 'Maehongsorn ', 90, 300),
('Chiangrai ', 'Chiangmai ', 250, 820),
('Chiangrai ', 'Maehongsorn ', 340, 1110),
('Chonburi ', 'Chantaburi ', 110, 360),
('Chonburi ', 'Trad ', 170, 560),
('Chumporn ', 'Nakornsrithammarat ', 270, 880),
('Chumporn ', 'Pattalung ', 370, 1210),
('Chumporn ', 'Songkla ', 470, 1530),
('Chumporn ', 'Suratthani ', 170, 560),
('Gumphangpetch ', 'Tark', 90, 300),
('Kallasin ', 'Sakonnakorn ', 90, 300),
('Karnchanaburi ', 'Gumphangpetch ', 170, 560),
('Karnchanaburi ', 'Tark', 260, 850),
('Karnchanaburi ', 'Uthaithani ', 90, 300),
('Klongsarmwa ', 'Chaiyabhumi ', 300, 980),
('Klongsarmwa ', 'Kallasin ', 560, 1830),
('Klongsarmwa ', 'Konkaen ', 450, 1470),
('Klongsarmwa ', 'Sakonnakorn ', 650, 2120),
('Klongsarmwa ', 'Saraburi ', 100, 330),
('Konkaen ', 'Kallasin ', 110, 360),
('Konkaen ', 'Sakonnakorn ', 200, 660),
('Lopburi ', 'Chiangmai ', 830, 2710),
('Lopburi ', 'Chiangrai ', 680, 2220),
('Lopburi ', 'Maehongsorn ', 920, 3000),
('Lopburi ', 'Nakornsawan ', 100, 330),
('Lopburi ', 'Narn ', 470, 1530),
('Lopburi ', 'Payao ', 570, 1860),
('Lopburi ', 'Pichit ', 150, 490),
('Lopburi ', 'Pitsanulok ', 220, 720),
('Lopburi ', 'Udtaradit ', 320, 1050),
('Meanburi ', 'Burirum ', 260, 850),
('Meanburi ', 'Nakornnayok ', 60, 200),
('Meanburi ', 'Nakornratchasrima ', 190, 620),
('Meanburi ', 'Srisaket ', 400, 1310),
('Meanburi ', 'Surin ', 310, 1010),
('Meanburi ', 'Ubonratchathani ', 480, 1570),
('Nakornnayok ', 'Burirum ', 200, 660),
('Nakornnayok ', 'Nakornratchasrima ', 130, 430),
('Nakornnayok ', 'Srisaket ', 340, 1110),
('Nakornnayok ', 'Surin ', 250, 820),
('Nakornnayok ', 'Ubonratchathani ', 420, 1370),
('Nakornratchasrima ', 'Burirum ', 70, 230),
('Nakornratchasrima ', 'Srisaket ', 210, 690),
('Nakornratchasrima ', 'Surin ', 120, 390),
('Nakornratchasrima ', 'Ubonratchathani ', 290, 950),
('Nakornsawan ', 'Chiangmai ', 730, 2380),
('Nakornsawan ', 'Chiangrai ', 580, 1890),
('Nakornsawan ', 'Maehongsorn ', 820, 2670),
('Nakornsawan ', 'Narn ', 370, 1210),
('Nakornsawan ', 'Payao ', 470, 1530),
('Nakornsawan ', 'Pichit ', 50, 170),
('Nakornsawan ', 'Pitsanulok ', 120, 390),
('Nakornsawan ', 'Udtaradit ', 220, 720),
('Nakornsrithammarat ', 'Pattalung ', 100, 330),
('Nakornsrithammarat ', 'Songkla ', 200, 660),
('Narn ', 'Chiangmai ', 360, 1180),
('Narn ', 'Chiangrai ', 210, 690),
('Narn ', 'Maehongsorn ', 450, 1470),
('Narn ', 'Payao ', 100, 330),
('Nonthaburi ', 'Gumphangpetch ', 450, 1210),
('Nonthaburi ', 'Karnchanaburi ', 200, 660),
('Nonthaburi ', 'Suphanburi ', 100, 330),
('Nonthaburi ', 'Tark', 460, 1500),
('Nonthaburi ', 'Uthaithani ', 290, 950),
('Pattalung ', 'Songkla ', 100, 330),
('Payao ', 'Chiangmai ', 260, 850),
('Payao ', 'Chiangrai ', 110, 360),
('Payao ', 'Maehongsorn ', 350, 1140),
('Petchaburi ', 'Chumporn ', 260, 850),
('Petchaburi ', 'Nakornsrithammarat ', 530, 1730),
('Petchaburi ', 'Pattalung ', 630, 2060),
('Petchaburi ', 'Prachuabkirikan ', 80, 260),
('Petchaburi ', 'Songkla ', 730, 2380),
('Petchaburi ', 'Suratthani ', 430, 1400),
('Pichit ', 'Chiangmai ', 680, 2220),
('Pichit ', 'Chiangrai ', 530, 1730),
('Pichit ', 'Maehongsorn ', 770, 2510),
('Pichit ', 'Narn ', 320, 1050),
('Pichit ', 'Payao ', 420, 1370),
('Pichit ', 'Pitsanulok ', 70, 230),
('Pichit ', 'Udtaradit ', 170, 560),
('Pitsanulok ', 'Chiangmai ', 610, 1990),
('Pitsanulok ', 'Chiangrai ', 460, 1500),
('Pitsanulok ', 'Maehongsorn ', 700, 2280),
('Pitsanulok ', 'Narn ', 250, 820),
('Pitsanulok ', 'Payao ', 350, 1140),
('Pitsanulok ', 'Udtaradit ', 100, 330),
('Prachuabkirikan ', 'Chumporn ', 180, 560),
('Prachuabkirikan ', 'Nakornsrithammarat ', 450, 1470),
('Prachuabkirikan ', 'Pattalung ', 550, 1790),
('Prachuabkirikan ', 'Songkla ', 650, 2120),
('Prachuabkirikan ', 'Suratthani ', 350, 1140),
('Ratchaburi ', 'Chumporn ', 320, 1050),
('Ratchaburi ', 'Nakornsrithammarat ', 590, 1930),
('Ratchaburi ', 'Pattalung ', 690, 2250),
('Ratchaburi ', 'Petchaburi ', 60, 200),
('Ratchaburi ', 'Prachuabkirikan ', 140, 460),
('Ratchaburi ', 'Songkla ', 790, 2600),
('Ratchaburi ', 'Suratthani ', 490, 1600),
('Samutsongkarm ', 'Chumporn ', 350, 1140),
('Samutsongkarm ', 'Nakornsrithammarat ', 620, 2020),
('Samutsongkarm ', 'Pattalung ', 720, 2350),
('Samutsongkarm ', 'Petchaburi ', 90, 300),
('Samutsongkarm ', 'Prachuabkirikan ', 170, 560),
('Samutsongkarm ', 'Ratchaburi ', 30, 100),
('Samutsongkarm ', 'Songkla ', 820, 2670),
('Samutsongkarm ', 'Suratthani ', 520, 1700),
('Saraburi ', 'Chaiyabhumi ', 200, 660),
('Saraburi ', 'Kallasin ', 460, 1500),
('Saraburi ', 'Konkaen ', 350, 1140),
('Saraburi ', 'Sakonnakorn ', 550, 1790),
('Srisaket ', 'Ubonratchathani ', 80, 260),
('Suphanburi ', 'Gumphangpetch ', 270, 880),
('Suphanburi ', 'Karnchanaburi ', 100, 330),
('Suphanburi ', 'Tark', 360, 1180),
('Suphanburi ', 'Uthaithani ', 190, 620),
('Suratthani ', 'Nakornsrithammarat ', 100, 330),
('Suratthani ', 'Pattalung ', 200, 660),
('Suratthani ', 'Songkla ', 300, 980),
('Surin ', 'Srisaket ', 90, 300),
('Surin ', 'Ubonratchathani ', 170, 560),
('Udtaradit ', 'Chiangmai ', 510, 1660),
('Udtaradit ', 'Chiangrai ', 360, 1180),
('Udtaradit ', 'Maehongsorn ', 600, 1960),
('Udtaradit ', 'Narn ', 150, 490),
('Udtaradit ', 'Payao ', 250, 820),
('Uthaithani ', 'Gumphangpetch ', 80, 260),
('Uthaithani ', 'Tark', 170, 560);

-- --------------------------------------------------------

--
-- Table structure for table `work_on_employee`
--

CREATE TABLE IF NOT EXISTS `work_on_employee` (
  `eid` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `tid` int(2) unsigned zerofill NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `start_work` time NOT NULL,
  `finish_work` time NOT NULL,
  PRIMARY KEY (`eid`),
  KEY `tid` (`tid`),
  KEY `name` (`name`),
  KEY `surname` (`surname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=73 ;

--
-- Dumping data for table `work_on_employee`
--

INSERT INTO `work_on_employee` (`eid`, `tid`, `name`, `surname`, `type`, `start_work`, `finish_work`) VALUES
(00001, 01, 'Maytwin ', 'Pitipornvivat', 'driver', '05:50:00', '18:00:00'),
(00002, 01, 'Suphawit', ' Sappisarnkul', 'security', '06:00:00', '18:00:00'),
(00003, 02, 'Pun', 'Suvanit', 'driver', '08:50:00', '20:00:00'),
(00004, 01, 'Phakhin', 'Thaspeeraphan', 'security', '06:00:00', '18:00:00'),
(00005, 03, 'Pasit', 'Kongkunakornkul', 'driver', '11:50:00', '22:00:00'),
(00006, 04, 'Putti', 'Orungrochkul', 'driver', '14:50:00', '00:00:00'),
(00007, 02, 'Sarawut', 'Cheewarattanaphan', 'security', '09:00:00', '20:00:00'),
(00008, 05, 'Tat', 'Sukthongchaikul', 'driver', '05:50:00', '16:30:00'),
(00009, 06, 'Peerapong', 'Benjarungroj', 'driver', '07:50:00', '18:30:00'),
(00010, 07, 'Fiam', 'Jaratjarungkiat', 'driver', '09:50:00', '20:30:00'),
(00011, 02, 'Nichada', 'Watcharatit', 'security', '09:00:00', '20:00:00'),
(00012, 03, 'Gorguson', 'Theensrat', 'security', '12:00:00', '22:00:00'),
(00013, 03, 'Paisit', ' Talodsuk', 'security', '12:00:00', '22:00:00'),
(00014, 08, 'Barack', 'Obama', 'driver', '11:50:00', '22:30:00'),
(00015, 09, 'Mark', 'Zuckerberg', 'driver', '05:50:00', '18:00:00'),
(00016, 04, 'Jakkrapat ', 'Tangsongjareon', 'security', '15:00:00', '00:00:00'),
(00017, 10, 'Adam ', 'Levine', 'driver', '08:50:00', '20:00:00'),
(00018, 11, 'Cee ', 'lo green ', 'driver', '11:50:00', '22:00:00'),
(00019, 12, 'Christina ', 'Aguilera', 'driver', '14:50:00', '00:00:00'),
(00020, 04, 'James', ' Bond', 'security', '15:00:00', '00:00:00'),
(00021, 05, 'Ip ', 'man', 'security', '06:00:00', '16:30:00'),
(00022, 05, 'Tony ', 'Jaa', 'security', '06:00:00', '16:30:00'),
(00023, 06, 'Jackie ', 'Chan', 'security', '08:00:00', '18:30:00'),
(00024, 06, 'Somcha', 'Khemklad', 'security', '08:00:00', '18:30:00'),
(00025, 13, 'Jiratas ', 'Supapantita', 'driver', '05:50:00', '17:30:00'),
(00026, 14, 'Nattapong', ' Sakulwacharayothin', 'driver', '08:50:00', '19:30:00'),
(00027, 15, 'Sethita ', 'Legaratana', 'driver', '11:50:00', '21:30:00'),
(00028, 07, 'Poon ', 'Wuthikulcharoenwong', 'security', '10:00:00', '20:30:00'),
(00029, 07, 'Atom ', 'Bunjitpimol', 'security', '10:00:00', '20:30:00'),
(00030, 08, 'Peky ', 'Peace', 'security', '12:00:00', '22:30:00'),
(00031, 16, 'Ton ', 'Jiropas', 'driver', '14:50:00', '23:30:00'),
(00032, 08, 'Steve', ' Roger', 'security', '12:00:00', '22:30:00'),
(00033, 09, 'Peter', ' Parker', 'security', '06:00:00', '18:00:00'),
(00034, 09, 'James', ' Howlett', 'security', '06:00:00', '18:00:00'),
(00035, 10, 'Maruay', ' Tangmitrphracha', 'security', '09:00:00', '20:00:00'),
(00036, 10, 'Kaew ', 'Pongprayoon', 'security', '09:00:00', '20:00:00'),
(00037, 11, 'John ', 'Cena', 'security', '12:00:00', '22:00:00'),
(00038, 11, 'Brock ', 'Lesnar', 'security', '12:00:00', '22:00:00'),
(00039, 12, 'Clark ', 'Kent', 'security', '15:00:00', '00:00:00'),
(00040, 17, 'Arnant ', 'Chaovanayotin', 'driver', '02:50:00', '14:10:00'),
(00041, 12, 'Achilles', 'howat', 'security', '15:00:00', '00:00:00'),
(00042, 13, 'Hector', 'silman', 'security', '06:00:00', '17:30:00'),
(00043, 18, 'Thomas ', 'Jefferson', 'driver', '05:50:00', '17:10:00'),
(00044, 13, 'Buakaw', ' Banchamek', 'security', '06:00:00', '17:30:00'),
(00045, 14, 'Khaosai ', 'Galaxy', 'security', '09:00:00', '19:30:00'),
(00046, 14, 'Puk', ' Sukrid', 'security', '09:00:00', '19:30:00'),
(00047, 15, 'Dante', 'Gorgeous', 'security', '12:00:00', '21:30:00'),
(00048, 15, 'Bruce', ' Banner', 'security', '12:00:00', '21:30:00'),
(00049, 16, 'Rick', ' Grimes', 'security', '15:00:00', '23:30:00'),
(00050, 19, 'Charles ', 'Xavier', 'driver', '08:50:00', '20:10:00'),
(00051, 20, 'Bell ', 'Tantivongsakij', 'driver', '11:50:00', '23:10:00'),
(00052, 21, 'Simon', ' Lertpaichaiyon', 'driver', '05:50:00', '18:00:00'),
(00053, 22, 'Vipol', ' Tanakhullachet', 'driver', '08:50:00', '20:00:00'),
(00054, 16, 'Sasin ', 'Chanchamcharat', 'security', '15:00:00', '23:30:00'),
(00055, 17, 'Geana', ' Khajonkulvanich', 'security', '03:00:00', '14:10:00'),
(00056, 23, 'Apisit ', 'Opsasaimlikit', 'driver', '11:50:00', '22:00:00'),
(00057, 24, 'Jennifer ', 'Kim', 'driver', '14:50:00', '00:00:00'),
(00058, 17, 'Jason ', 'Voorhees ', 'security', '03:00:00', '14:10:00'),
(00059, 18, 'Freddy ', 'Krueger', 'security', '06:00:00', '17:10:00'),
(00060, 18, 'Thongchai', ' Mcintyre', 'security', '06:00:00', '17:10:00'),
(00061, 19, 'Da ', 'Endorphine', 'security', '09:00:00', '20:10:00'),
(00062, 19, 'lucus', 'mulflur', 'security', '09:00:00', '20:10:00'),
(00063, 20, 'Takeshi ', 'Hongo', 'security', '12:00:00', '23:10:00'),
(00064, 20, 'Tony', ' Stark', 'security', '12:00:00', '23:10:00'),
(00065, 21, 'Usain', ' Bolt', 'security', '06:00:00', '18:00:00'),
(00066, 21, 'LeBron', ' James', 'security', '06:00:00', '18:00:00'),
(00067, 22, 'Kobe ', 'Bryant', 'security', '09:00:00', '20:00:00'),
(00068, 22, 'Dwighdt', ' Howar', 'security', '09:00:00', '20:00:00'),
(00069, 23, 'Kevin ', 'Durant', 'security', '12:00:00', '22:00:00'),
(00070, 23, 'Bruce', ' Wayne', 'security', '12:00:00', '22:00:00'),
(00071, 24, 'Wayne ', 'Rooney', 'security', '15:00:00', '00:00:00'),
(00072, 24, 'Cristiano ', 'Ronaldo', 'security', '15:00:00', '00:00:00');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `closed_to`
--
ALTER TABLE `closed_to`
  ADD CONSTRAINT `closed_to_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `divided_into_station` (`sid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `closed_to_ibfk_2` FOREIGN KEY (`spotid`) REFERENCES `tourist_spot` (`spotid`) ON UPDATE CASCADE;

--
-- Constraints for table `consist_of_train_shop`
--
ALTER TABLE `consist_of_train_shop`
  ADD CONSTRAINT `consist_of_train_shop_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `train` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `divided_into_station`
--
ALTER TABLE `divided_into_station`
  ADD CONSTRAINT `divided_into_station_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `route` (`rid`) ON UPDATE CASCADE;

--
-- Constraints for table `driver`
--
ALTER TABLE `driver`
  ADD CONSTRAINT `driver_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `work_on_employee` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `work_on_employee` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_ibfk_3` FOREIGN KEY (`name`) REFERENCES `work_on_employee` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `driver_ibfk_4` FOREIGN KEY (`surname`) REFERENCES `work_on_employee` (`surname`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `operate_on_flight`
--
ALTER TABLE `operate_on_flight`
  ADD CONSTRAINT `operate_on_flight_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `train` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `security`
--
ALTER TABLE `security`
  ADD CONSTRAINT `security_ibfk_4` FOREIGN KEY (`surname`) REFERENCES `work_on_employee` (`surname`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `security_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `work_on_employee` (`eid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `security_ibfk_2` FOREIGN KEY (`tid`) REFERENCES `work_on_employee` (`tid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `security_ibfk_3` FOREIGN KEY (`name`) REFERENCES `work_on_employee` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stipulate_by`
--
ALTER TABLE `stipulate_by`
  ADD CONSTRAINT `stipulate_by_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `operate_on_flight` (`fid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stipulate_by_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `route` (`rid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `work_on_employee`
--
ALTER TABLE `work_on_employee`
  ADD CONSTRAINT `work_on_employee_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `train` (`tid`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
