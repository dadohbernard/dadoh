-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 18, 2021 at 05:23 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `metracor_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `auth_id` int(11) NOT NULL,
  `auth_username` varchar(250) NOT NULL,
  `auth_password` varchar(250) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `user_type_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`auth_id`, `auth_username`, `auth_password`, `full_name`, `user_type_id`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Admin', 1),
(7, 'metraco', '78bdf9d313413154f547c13b39e412b9', 'metraco', 1),
(8, 'employee', '033836b6cedd9a857d82681aafadbc19', 'employee', 2),
(9, 'accountant', '599ebb620b4a5e14c6da3d4a4e0991e5', 'accountant', 3),
(10, 'issa', '61d89581f2e43b276f9196be72c2b949', 'shimiyimana', 2),
(11, 'issa', '61d89581f2e43b276f9196be72c2b949', 'shimiyimana', 2),
(12, 'mamu ', '89cb70f7060004d59a6e4bb138fa6481', 'rurangirwa mamu', 1),
(13, 'AISHA', '30d13085f34126e234c1daaeeab1363d', 'emeryne', 1),
(14, 'hakim', '308163092187715964aa7d8728cac9ca', ' Hakimu Abdul', 2),
(15, 'habibu', '190801a472ffbe623373ca4abb44f966', 'rurangirwa', 3);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`) VALUES
(24, 'clutch disc cover'),
(25, 'Lamps'),
(26, 'shock absober'),
(27, 'universal joint'),
(28, 'zeed'),
(29, 'REPAIR KITS'),
(30, 'MOUNTING(MTG)'),
(31, 'PISTON RING'),
(32, 'BOLTS(MIXED)MISUMARI'),
(33, 'BRAKE PAD$SHOES'),
(34, 'belts'),
(35, 'seals'),
(45, 'TOPCOVERS'),
(37, 'BEARINGS'),
(38, 'FILTERS AND PUMPS'),
(39, 'RUBBERS'),
(40, '         O-RINGS'),
(44, 'ORINGS'),
(42, 'RUBBERS'),
(43, 'TOP COVERS'),
(46, 'SILCON'),
(47, 'BRAKE FLUID'),
(48, 'SPENSORS'),
(53, 'cosmetic'),
(51, 'CARIPERING');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(250) NOT NULL,
  `cus_mobile` varchar(250) NOT NULL,
  `cus_email` varchar(250) NOT NULL,
  `cus_address` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cus_id`, `cus_name`, `cus_mobile`, `cus_email`, `cus_address`) VALUES
(33, 'client', '5555', '', 'jali'),
(34, 'mukiliya', '888888', '', 'jali'),
(35, 'clients', '55555', '', 'han'),
(36, 'client45', '787878', '', 'najera'),
(37, 'client45', '787878', '', 'najera'),
(38, 'ccccc', '6666', '', 'hakk'),
(39, 'mugande', '07888899', '', 'gatsata'),
(40, 'mugande', '07888899', '', 'gatsata'),
(41, 'mugande', '07888899', '', 'gatsata'),
(42, 'mechanic', '77777', '', 'gst'),
(43, 'client 7', '7777', '', 'gst'),
(44, 'client 8', '88888', '', 'gst'),
(45, 'client 23', '88888', '', 'gst'),
(46, 'clieny', '11111', '', 'gst'),
(47, 'shoferi', '444444', '', 'gatsata'),
(48, 'petre', '2222', '', 'rwanda'),
(49, 'CLIENT', '5555', '', 'HHH'),
(50, 'CLIENT', '5555', '', 'HHH'),
(51, 'CLIENT', '5555', '', 'HHH'),
(52, 'nnnnnn', '00000', '', 'hhhhh'),
(53, 'james', '88888', '', 'gst'),
(54, 'client', '0000', '', 'gst'),
(55, 'customer', '77777', '', 'jali'),
(56, 'ggg', '6666', '', 'hhhh'),
(57, 'ttttt', '8888', '', 'uuuu'),
(58, 'tttt', '88888', '', 'hhhh'),
(59, 'gogo', '8888', '', 'kagugu'),
(60, 'yahy', '777', '', 'jik'),
(61, 'naki', '77777', '', 'gsz'),
(62, 'husse', '7777', '', 'hhh'),
(63, 'ulk', '5555', '', 'yyyy'),
(64, 'kkkk', '777', '', 'yyyy'),
(65, 'vvvv', '8888', '', 'wwww'),
(66, 'iiiiii', '99999', '', 'uuuu'),
(67, 'uuuu', '9999', '', 'jjjjjj'),
(68, 'WWWW', '7777', '', 'UUU'),
(69, 'YYY', '8888', '', 'IIIIII'),
(70, 'UUU', '88888', '', 'YYYY'),
(71, 'KKKKKK', '99999', '', 'TT'),
(72, 'LALA', '8888', '', 'TZD'),
(73, 'TITI', '999', '', 'KKKK'),
(74, 'GANZA', '87777', '', 'UUUU'),
(75, 'HATS', '999', '', 'PPPP'),
(76, 'ERIC', '7777', '', 'IIII'),
(77, 'rrrrr', '0040404', '', 'yag'),
(78, 'jjj', '777', '', 'hh'),
(79, 'kamali', '07865432213', '', 'gasabo'),
(80, 'mukiliyah', '666', '', 'gastata'),
(81, 'ISSA', '99999', '', 'NYAMIRAMBO'),
(82, 'HUSEL', '777', '', 'GASTATA'),
(83, 'GAGA', '7777', '', 'REMERA'),
(84, 'BABI', '9999', '', 'KAGUGU'),
(85, 'BABI', '9999', '', 'KAGUGU'),
(86, 'BABI', '9999', '', 'KAGUGU'),
(87, 'BABI', '9999', '', 'KAGUGU'),
(88, 'NADIA', '7777', '', 'HATS'),
(89, 'FAT', '7777', '', 'KAGUGU'),
(90, 'VANESSA', '9999', '', 'KACYIRU'),
(91, 'NKUSI', '7777', '', 'GATSATA'),
(92, 'FANY', '7777', '', 'JALI'),
(93, 'HADI', '7777', '', 'HARI'),
(94, 'FATUMA', 'YYYY', '', 'UUU'),
(95, 'FATUMA', 'YYYY', '', 'UUU'),
(96, 'UTI', '8888', '', '777'),
(97, 'UMI', '444', '', 'JALI'),
(98, 'MAMI', '9999', '', 'RUBAVU'),
(99, 'CREATIVITY', '777', '', 'GST'),
(100, 'BABY', '000', '', 'GST'),
(101, 'GISHWATI', '777', '', 'GST'),
(102, 'KAYITARE', '666', '', 'YAT'),
(103, 'KAYITARE', '666', '', 'YAT'),
(104, 'ADAMS', '0000', '', 'UG'),
(105, 'ADAMS', '0000', '', 'UG'),
(106, 'BIG', '666', '', 'KAGUGU'),
(107, 'HARRY', '7777', '', 'YYYY'),
(108, 'CLIENT', '7777', '', 'KAGUGU'),
(109, 'KAKI', '777', '', 'HY'),
(110, 'HAKIM', '078544343', 'hakim@123.com', 'kigali'),
(111, 'kimu abdul', '0781690999', 'manipo@gmail.com', 'tanzania'),
(112, 'kimu abdul', '0781690999', 'manipo@gmail.com', 'tanzania'),
(113, 'ayub', '99886776', 'ayub@gmail.com', 'tanzania'),
(114, 'LOVER', '0000', '', 'GST'),
(115, 'SIMBA', '000', '', 'FAG'),
(116, 'KIVU', '000', '', 'KACYIRU'),
(117, 'HABBY', '8888', '', 'JK'),
(118, 'CUTIE PIE ICECREAM', '078889999', '', 'NYABUGOGO'),
(119, 'SANGO', '000', '', 'GST'),
(120, 'SANGO', '000', '', 'GST'),
(121, 'MUABUIYBG', '8888', '', 'GHNN'),
(122, 'IRIS', '88', '', 'GF'),
(123, 'MINE', '999', '', 'HH'),
(124, 'RWAGAJU', '77', '', 'HH'),
(125, 'JUMI', '777', '', 'WSS'),
(126, 'JUMI', '777', '', 'WSS'),
(127, 'JUMI', '777', '', 'WSS'),
(128, 'JUMI', '777', '', 'WSS'),
(129, 'JUMI', '777', '', 'WSS'),
(130, 'JUMI', '777', '', 'WSS'),
(131, 'JUMI', '777', '', 'WSS'),
(132, 'JUMI', '777', '', 'WSS'),
(133, 'JUMI', '777', '', 'WSS'),
(134, 'GANZA', '888', '', 'MM'),
(135, 'VAVA', '77', '', 'FGHJK'),
(136, 'GIGI', '77', '', 'DFGHJ'),
(137, 'BY', '789', '', 'DFGH'),
(138, 'CUT', '3456', '', 'SDFGHJ'),
(139, 'MUMI', '3456', '', 'ZXCVBNM'),
(140, 'VUVU', '34567', '', 'ASDBN'),
(141, 'FF', '345678', '', 'XDFGH'),
(142, 'BUBU', '23456789', '', 'ASDFGHJ'),
(143, 'FIFI', '3456789', '', 'SDFGHJ'),
(144, 'SESE', '3456789O', '', 'ASDFGHJ');

-- --------------------------------------------------------

--
-- Table structure for table `expense_orders`
--

CREATE TABLE `expense_orders` (
  `exp_order_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `exp_order_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_orders`
--

INSERT INTO `expense_orders` (`exp_order_id`, `auth_id`, `exp_order_date`) VALUES
(7, 7, '2021-07-11'),
(8, 15, '2021-07-12'),
(9, 15, '2021-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `expense_type_id` int(11) NOT NULL,
  `expense_type_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`expense_type_id`, `expense_type_name`) VALUES
(10, 'transport'),
(11, 'water');

-- --------------------------------------------------------

--
-- Table structure for table `exp_invoices`
--

CREATE TABLE `exp_invoices` (
  `exp_invoice_number` int(11) NOT NULL,
  `exp_order_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exp_invoices`
--

INSERT INTO `exp_invoices` (`exp_invoice_number`, `exp_order_id`) VALUES
(7, 7),
(8, 8),
(9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `exp_invoice_line_items`
--

CREATE TABLE `exp_invoice_line_items` (
  `exp_invoice_items_id` int(11) NOT NULL,
  `exp_order_id` int(11) NOT NULL,
  `exp_invoice_id` int(11) NOT NULL,
  `exp_product_name` varchar(250) NOT NULL,
  `exp_product_quantity` int(11) NOT NULL,
  `exp_product_rate` int(11) NOT NULL,
  `exp_total_price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exp_invoice_line_items`
--

INSERT INTO `exp_invoice_line_items` (`exp_invoice_items_id`, `exp_order_id`, `exp_invoice_id`, `exp_product_name`, `exp_product_quantity`, `exp_product_rate`, `exp_total_price`) VALUES
(7, 7, 7, 'nyabugogo - kimiromko', 1, 900, 900),
(8, 8, 8, 'water', 10, 300, 3000),
(9, 8, 8, 'juice', 5, 1000, 5000),
(10, 9, 9, 'transport', 1, 50000, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `exp_invoice_payment_detail`
--

CREATE TABLE `exp_invoice_payment_detail` (
  `exp_invoice_payment_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `exp_order_id` int(11) NOT NULL,
  `expense_type_id` int(11) NOT NULL,
  `exp_invoice_id` int(11) NOT NULL,
  `exp_grand_total_price` int(11) NOT NULL,
  `exp_paid_amount` int(11) NOT NULL,
  `exp_due_amount` int(11) NOT NULL,
  `exp_payment_detail_date` date NOT NULL,
  `exp_payment_detail_status` tinyint(1) NOT NULL,
  `exp_status` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exp_invoice_payment_detail`
--

INSERT INTO `exp_invoice_payment_detail` (`exp_invoice_payment_id`, `auth_id`, `exp_order_id`, `expense_type_id`, `exp_invoice_id`, `exp_grand_total_price`, `exp_paid_amount`, `exp_due_amount`, `exp_payment_detail_date`, `exp_payment_detail_status`, `exp_status`) VALUES
(3, 9, 3, 4, 3, 10000, 0, 10000, '2021-06-23', 1, 1),
(4, 9, 4, 5, 4, 6000, 6000, 0, '2021-06-23', 0, 0),
(5, 7, 5, 7, 5, 200, 200, 0, '2021-07-01', 0, 2),
(6, 7, 6, 8, 6, 10000, 10000, 0, '2021-07-01', 0, 0),
(7, 7, 7, 10, 7, 900, 900, 0, '2021-07-11', 0, 0),
(8, 15, 8, 11, 8, 8000, 8000, 0, '2021-07-12', 0, 0),
(9, 15, 9, 10, 9, 50000, 40000, 10000, '2021-07-12', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_number` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`invoice_number`, `order_id`) VALUES
(182, 182),
(89, 89),
(90, 90),
(91, 91),
(92, 92),
(99, 99),
(98, 98),
(179, 179),
(97, 97),
(100, 100),
(169, 169),
(170, 170),
(103, 103),
(104, 104),
(105, 105),
(106, 106),
(178, 178),
(108, 108),
(171, 171),
(181, 181),
(172, 172),
(173, 173),
(175, 175),
(115, 115),
(116, 116),
(117, 117),
(118, 118),
(119, 119),
(168, 168),
(180, 180),
(167, 167),
(166, 166),
(124, 124),
(125, 125),
(126, 126),
(127, 127),
(128, 128),
(129, 129),
(130, 130),
(131, 131),
(132, 132),
(133, 133),
(165, 165),
(135, 135),
(136, 136),
(137, 137),
(138, 138),
(146, 146),
(145, 145),
(144, 144),
(142, 142),
(143, 143),
(147, 147),
(177, 177),
(151, 151),
(150, 150),
(152, 152),
(153, 153),
(154, 154),
(155, 155),
(156, 156),
(157, 157),
(158, 158),
(161, 161),
(176, 176),
(162, 162),
(163, 163),
(174, 174),
(183, 183),
(184, 184),
(187, 187),
(186, 186),
(188, 188),
(189, 189),
(190, 190),
(191, 191),
(192, 192),
(193, 193),
(194, 194),
(211, 211),
(210, 210),
(209, 209),
(208, 208),
(207, 207),
(206, 206),
(205, 205),
(204, 204),
(203, 203),
(212, 212),
(213, 213),
(214, 214);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_line_items`
--

CREATE TABLE `invoice_line_items` (
  `order_items_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_no_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_line_items`
--

INSERT INTO `invoice_line_items` (`order_items_id`, `order_id`, `invoice_no_id`, `product_id`, `product_quantity`, `product_rate`, `discount`, `total_price`) VALUES
(239, 184, 184, 227, 1, 12000, 0, 12000),
(139, 89, 89, 89, 2, 1000, 0, 2000),
(140, 89, 89, 89, 0, 1000, 0, 0),
(141, 90, 90, 91, 1, 3000, 0, 3000),
(142, 91, 91, 93, 2, 2000, 0, 4000),
(143, 92, 92, 93, 2, 2000, 0, 4000),
(150, 99, 99, 101, 1, 1000, 0, 1000),
(149, 98, 98, 100, 2, 1000, 0, 2000),
(236, 181, 181, 108, 1, 2000, 0, 2000),
(148, 97, 97, 99, 2, 1000, 0, 2000),
(151, 100, 100, 104, 2, 1000, 0, 2000),
(226, 171, 171, 213, 2, 90000, 0, 180000),
(227, 172, 172, 222, 1, 3000, 0, 3000),
(154, 103, 103, 108, 1, 2000, 0, 2000),
(155, 104, 104, 110, 1, 9000, 9000, 0),
(156, 105, 105, 110, 1, 9000, 9000, 0),
(157, 106, 106, 110, 1, 9000, 9000, 0),
(235, 180, 180, 222, 1, 3000, 0, 3000),
(159, 108, 108, 114, 2, 1000, 0, 2000),
(228, 173, 173, 223, 1, 3000, 0, 3000),
(238, 183, 183, 223, 1, 3000, 0, 3000),
(229, 174, 174, 224, 2, 750, 0, 1500),
(230, 175, 175, 224, 2, 750, 0, 1500),
(232, 177, 177, 108, 1, 2000, 0, 2000),
(166, 115, 115, 126, 2, 1000, 0, 2000),
(167, 116, 116, 99, 5, 1000, 1000, 0),
(168, 117, 117, 128, 1, 2000, 0, 2000),
(169, 118, 118, 130, 1, 1000, 0, 1000),
(170, 119, 119, 131, 1, 1000, 0, 1000),
(225, 170, 170, 213, 2, 90000, 0, 180000),
(237, 182, 182, 224, 2, 750, 0, 1500),
(224, 169, 169, 213, 1, 9000, 0, 9000),
(223, 168, 168, 213, 20, 9000, 0, 180000),
(175, 124, 124, 140, 1, 3000, 0, 3000),
(176, 125, 125, 144, 1, 3000, 0, 3000),
(177, 126, 126, 145, 1, 6000, 0, 6000),
(178, 127, 127, 149, 1, 3000, 0, 3000),
(179, 128, 128, 150, 1, 3000, 0, 3000),
(180, 129, 129, 95, 4, 1000, 0, 4000),
(181, 130, 130, 115, 4, 1000, 250, 3000),
(182, 131, 131, 123, 2, 1000, 0, 2000),
(183, 132, 132, 108, 1, 2000, 0, 2000),
(184, 133, 133, 155, 1, 1000, 0, 1000),
(222, 167, 167, 213, 21, 9000, 0, 189000),
(221, 166, 166, 70, 0, 0, 0, 0),
(220, 166, 166, 213, 1, 15000, 0, 15000),
(219, 165, 165, 212, 60, 8000, 0, 480000),
(189, 135, 135, 156, 1, 5000, 0, 5000),
(190, 136, 136, 157, 1, 8000, 0, 8000),
(191, 137, 137, 160, 1, 5000, 0, 5000),
(192, 138, 138, 171, 2, 5000, 0, 10000),
(200, 146, 146, 175, 1, 7000, 0, 7000),
(199, 145, 145, 174, 1, 3000, 0, 3000),
(198, 144, 144, 174, 1, 3000, 0, 3000),
(196, 142, 142, 173, 1, 3000, 0, 3000),
(197, 143, 143, 145, 1, 3000, 0, 3000),
(201, 147, 147, 178, 1, 4000, 0, 4000),
(234, 179, 179, 227, 1, 12000, 0, 12000),
(205, 151, 151, 124, 2, 1000, 0, 2000),
(204, 150, 150, 155, 5, 1000, 0, 5000),
(206, 152, 152, 95, 4, 1000, 0, 4000),
(207, 153, 153, 191, 4, 2000, 0, 8000),
(208, 154, 154, 187, 4, 1000, 0, 4000),
(209, 155, 155, 126, 2, 1000, 0, 2000),
(210, 156, 156, 99, 1, 1000, 0, 1000),
(211, 157, 157, 108, 1, 2000, 0, 2000),
(212, 158, 158, 108, 1, 2000, 0, 2000),
(215, 161, 161, 199, 1, 8000, 0, 8000),
(233, 178, 178, 227, 1, 12000, 0, 12000),
(216, 162, 162, 202, 1, 3000, 0, 3000),
(217, 163, 163, 207, 1, 5000, 1000, 4000),
(231, 176, 176, 224, 2, 750, 0, 1500),
(242, 187, 187, 230, 1, 7000, 1000, 6000),
(241, 186, 186, 230, 1, 7000, 1000, 6000),
(243, 188, 188, 233, 2, 1000, 0, 2000),
(244, 189, 189, 233, 2, 1000, 0, 2000),
(245, 190, 190, 233, 2, 1000, 0, 2000),
(246, 191, 191, 130, 6, 1000, 0, 6000),
(247, 192, 192, 130, 7, 1000, 0, 7000),
(248, 193, 193, 233, 2, 1000, 0, 2000),
(249, 194, 194, 234, 1, 12000, 0, 12000),
(266, 211, 211, 239, 1, 3000, 0, 3000),
(265, 210, 210, 238, 1, 6000, 0, 6000),
(264, 209, 209, 124, 3, 1000, 0, 3000),
(263, 208, 208, 153, 2, 1000, 0, 2000),
(262, 207, 207, 237, 1, 3000, 0, 3000),
(261, 206, 206, 236, 1, 8000, 0, 8000),
(260, 205, 205, 230, 1, 7000, 1000, 6000),
(259, 204, 204, 153, 2, 1000, 0, 2000),
(258, 203, 203, 235, 1, 3000, 0, 3000),
(267, 212, 212, 240, 1, 12000, 0, 12000),
(268, 213, 213, 241, 4, 10000, 500, 38000),
(269, 214, 214, 242, 1, 5000, 1000, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payment_detail`
--

CREATE TABLE `invoice_payment_detail` (
  `invoice_payment_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_no_id` int(11) NOT NULL,
  `total_discount` int(11) NOT NULL,
  `grand_total_price` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `payment_detail_date` date NOT NULL,
  `auth_id` int(11) NOT NULL,
  `payment_detail_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_payment_detail`
--

INSERT INTO `invoice_payment_detail` (`invoice_payment_id`, `customer_id`, `order_id`, `invoice_no_id`, `total_discount`, `grand_total_price`, `paid_amount`, `due_amount`, `payment_detail_date`, `auth_id`, `payment_detail_status`) VALUES
(182, 116, 182, 182, 0, 1500, 1500, 0, '2021-07-15', 7, 0),
(89, 34, 89, 89, 0, 2000, 2000, 0, '2021-07-02', 7, 0),
(90, 35, 90, 90, 0, 3000, 3000, 0, '2021-07-02', 7, 0),
(91, 36, 91, 91, 0, 4000, 4000, 0, '2021-07-02', 7, 0),
(92, 37, 92, 92, 0, 4000, 4000, 0, '2021-07-02', 7, 0),
(99, 44, 99, 99, 0, 1000, 1000, 0, '2021-07-02', 7, 0),
(98, 43, 98, 98, 0, 2000, 2000, 0, '2021-07-02', 7, 0),
(179, 0, 179, 179, 0, 12000, 12000, 0, '2021-07-15', 7, 0),
(97, 42, 97, 97, 0, 2000, 2000, 0, '2021-07-02', 7, 0),
(100, 45, 100, 100, 0, 2000, 2000, 0, '2021-07-03', 7, 0),
(169, 110, 169, 169, 0, 9000, 9000, 0, '2021-07-11', 14, 0),
(170, 113, 170, 170, 0, 180000, 180000, 0, '2021-07-11', 14, 0),
(103, 48, 103, 103, 0, 2000, 2000, 0, '2021-07-02', 7, 0),
(104, 49, 104, 104, 9000, 0, 0, 0, '2021-07-02', 7, 0),
(105, 50, 105, 105, 9000, 0, 0, 0, '2021-07-02', 7, 0),
(106, 51, 106, 106, 9000, 0, 0, 0, '2021-07-02', 7, 0),
(178, 0, 178, 178, 0, 12000, 12000, 0, '2021-07-15', 7, 0),
(108, 53, 108, 108, 0, 2000, 2000, 0, '2021-07-02', 7, 0),
(171, 113, 171, 171, 0, 180000, 180000, 0, '2021-07-11', 14, 0),
(181, 115, 181, 181, 0, 2000, 2000, 0, '2021-07-15', 7, 0),
(172, 0, 172, 172, 0, 3000, 3000, 0, '2021-07-15', 7, 0),
(173, 0, 173, 173, 0, 3000, 3000, 0, '2021-07-15', 7, 0),
(175, 0, 175, 175, 0, 1500, 1500, 0, '2021-07-15', 7, 0),
(115, 60, 115, 115, 0, 2000, 2000, 0, '2021-07-06', 7, 0),
(116, 61, 116, 116, 5000, 0, 0, 0, '2021-07-06', 7, 0),
(117, 62, 117, 117, 0, 2000, 2000, 0, '2021-07-06', 7, 0),
(118, 63, 118, 118, 0, 1000, 1000, 0, '2021-07-06', 7, 0),
(119, 64, 119, 119, 0, 1000, 1000, 0, '2021-07-06', 7, 0),
(168, 0, 168, 168, 0, 180000, 80000, 100000, '2021-07-11', 14, 1),
(180, 114, 180, 180, 0, 3000, 3000, 0, '2021-07-15', 7, 0),
(167, 0, 167, 167, 0, 189000, 180000, 9000, '2021-07-11', 14, 1),
(166, 111, 166, 166, 0, 15000, 15000, 0, '2021-07-12', 14, 0),
(124, 69, 124, 124, 0, 3000, 3000, 0, '2021-07-06', 7, 0),
(125, 70, 125, 125, 0, 3000, 3000, 0, '2021-07-06', 7, 0),
(126, 71, 126, 126, 0, 6000, 6000, 0, '2021-07-06', 7, 0),
(127, 72, 127, 127, 0, 3000, 3000, 0, '2021-07-06', 7, 0),
(128, 73, 128, 128, 0, 3000, 3000, 0, '2021-07-06', 7, 0),
(129, 74, 129, 129, 0, 4000, 4000, 0, '2021-07-06', 7, 0),
(130, 75, 130, 130, 1000, 3000, 3000, 0, '2021-07-06', 7, 0),
(131, 76, 131, 131, 0, 2000, 2000, 0, '2021-07-06', 7, 0),
(132, 77, 132, 132, 0, 2000, 2000, 0, '2021-07-06', 7, 0),
(133, 78, 133, 133, 0, 1000, 0, 1000, '2021-07-06', 7, 1),
(165, 110, 165, 165, 0, 480000, 480000, 0, '2021-07-11', 7, 0),
(135, 80, 135, 135, 0, 5000, 5000, 0, '2021-07-07', 7, 0),
(136, 81, 136, 136, 0, 8000, 8000, 0, '2021-07-07', 7, 0),
(137, 82, 137, 137, 0, 5000, 5000, 0, '2021-07-07', 7, 0),
(138, 83, 138, 138, 0, 10000, 10000, 0, '2021-07-07', 7, 0),
(146, 91, 146, 146, 0, 7000, 0, 7000, '2021-07-07', 7, 1),
(145, 90, 145, 145, 0, 3000, 3000, 0, '2021-07-07', 7, 0),
(144, 89, 144, 144, 0, 3000, 0, 3000, '2021-07-07', 7, 1),
(142, 87, 142, 142, 0, 3000, 3000, 0, '2021-07-08', 7, 0),
(143, 88, 143, 143, 0, 3000, 3000, 0, '2021-07-07', 7, 0),
(147, 92, 147, 147, 0, 4000, 0, 4000, '2021-07-07', 7, 1),
(177, 0, 177, 177, 0, 2000, 2000, 0, '2021-07-15', 7, 0),
(151, 96, 151, 151, 0, 2000, 2000, 0, '2021-07-07', 7, 0),
(150, 95, 150, 150, 0, 5000, 5000, 0, '2021-07-07', 7, 0),
(152, 97, 152, 152, 0, 4000, 4000, 0, '2021-07-07', 7, 0),
(153, 98, 153, 153, 0, 8000, 8000, 0, '2021-07-07', 7, 0),
(154, 99, 154, 154, 0, 4000, 4000, 0, '2021-07-07', 7, 0),
(155, 100, 155, 155, 0, 2000, 2000, 0, '2021-07-07', 7, 0),
(156, 101, 156, 156, 0, 1000, 1000, 0, '2021-07-07', 7, 0),
(157, 102, 157, 157, 0, 2000, 2000, 0, '2021-07-08', 7, 0),
(158, 103, 158, 158, 0, 2000, 2000, 0, '2021-07-08', 7, 0),
(161, 106, 161, 161, 0, 8000, 8000, 0, '2021-07-07', 7, 0),
(176, 0, 176, 176, 0, 1500, 1500, 0, '2021-07-15', 7, 0),
(162, 107, 162, 162, 0, 3000, 3000, 0, '2021-07-07', 7, 0),
(163, 108, 163, 163, 1000, 4000, 4000, 0, '2021-07-07', 7, 0),
(174, 0, 174, 174, 0, 1500, 1500, 0, '2021-07-15', 7, 0),
(183, 117, 183, 183, 0, 3000, 3000, 0, '2021-07-15', 7, 0),
(184, 118, 184, 184, 0, 12000, 12000, 0, '2021-07-15', 7, 0),
(187, 121, 187, 187, 1000, 6000, 6000, 0, '2021-07-15', 7, 0),
(186, 120, 186, 186, 1000, 6000, 6000, 0, '2021-07-15', 7, 0),
(188, 98, 188, 188, 0, 2000, 2000, 0, '2021-07-15', 7, 0),
(189, 98, 189, 189, 0, 2000, 2000, 0, '2021-07-15', 7, 0),
(190, 98, 190, 190, 0, 2000, 2000, 0, '2021-07-15', 7, 0),
(191, 34, 191, 191, 0, 6000, 6000, 0, '2021-07-15', 7, 0),
(192, 122, 192, 192, 0, 7000, 7000, 0, '2021-07-16', 7, 0),
(193, 123, 193, 193, 0, 2000, 2000, 0, '2021-07-16', 7, 0),
(194, 124, 194, 194, 0, 12000, 12000, 0, '2021-07-16', 7, 0),
(211, 141, 211, 211, 0, 3000, 3000, 0, '2021-07-16', 7, 0),
(210, 140, 210, 210, 0, 6000, 6000, 0, '2021-07-16', 7, 0),
(209, 139, 209, 209, 0, 3000, 3000, 0, '2021-07-16', 7, 0),
(208, 138, 208, 208, 0, 2000, 2000, 0, '2021-07-16', 7, 0),
(207, 137, 207, 207, 0, 3000, 3000, 0, '2021-07-16', 7, 0),
(206, 136, 206, 206, 0, 8000, 8000, 0, '2021-07-16', 7, 0),
(205, 135, 205, 205, 1000, 6000, 6000, 0, '2021-07-16', 7, 0),
(204, 134, 204, 204, 0, 2000, 2000, 0, '2021-07-16', 7, 0),
(203, 133, 203, 203, 0, 3000, 3000, 0, '2021-07-16', 7, 0),
(212, 142, 212, 212, 0, 12000, 12000, 0, '2021-07-16', 7, 0),
(213, 143, 213, 213, 2000, 38000, 38000, 0, '2021-07-16', 7, 0),
(214, 144, 214, 214, 1000, 4000, 4000, 0, '2021-07-16', 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lang`
--

CREATE TABLE `lang` (
  `lang_id` int(11) NOT NULL,
  `lang` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lang`
--

INSERT INTO `lang` (`lang_id`, `lang`) VALUES
(1, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `loan_contract`
--

CREATE TABLE `loan_contract` (
  `loan_contract_id` int(11) NOT NULL,
  `loaner_id` int(11) NOT NULL,
  `date_contract_start` date NOT NULL,
  `date_contract_end` date NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `terms_and_conditions` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_contract`
--

INSERT INTO `loan_contract` (`loan_contract_id`, `loaner_id`, `date_contract_start`, `date_contract_end`, `loan_amount`, `terms_and_conditions`) VALUES
(1, 1, '2019-10-10', '2019-10-21', 13000, 'You have to pay this loan within 11 day'),
(2, 3, '2019-10-21', '2019-10-29', 2000, 'You have to pay within 8 days');

-- --------------------------------------------------------

--
-- Table structure for table `loan_needer`
--

CREATE TABLE `loan_needer` (
  `loaner_id` int(11) NOT NULL,
  `loaner_name` varchar(250) NOT NULL,
  `loaner_mobile` varchar(250) NOT NULL,
  `loaner_address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_needer`
--

INSERT INTO `loan_needer` (`loaner_id`, `loaner_name`, `loaner_mobile`, `loaner_address`) VALUES
(1, 'Murego', '0782356230', 'mdonat@gmail.com'),
(2, 'Salama Iradukunda', '0723789377', 'iradukunda@gmail.com'),
(3, 'Mugabo Christophe', '0781127378', 'mugabo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `loan_payments`
--

CREATE TABLE `loan_payments` (
  `payment_id` int(11) NOT NULL,
  `loan_contract_id` int(11) NOT NULL,
  `date_of_payment` date NOT NULL,
  `amount_of_payment` int(11) NOT NULL,
  `remarks` text NOT NULL,
  `loan_status` varchar(250) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan_payments`
--

INSERT INTO `loan_payments` (`payment_id`, `loan_contract_id`, `date_of_payment`, `amount_of_payment`, `remarks`, `loan_status`) VALUES
(1, 1, '2019-10-10', 0, 'None', '0'),
(2, 2, '2019-10-21', 0, 'None', '1');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `date_order_placed` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_id`, `auth_id`, `date_order_placed`) VALUES
(182, 116, 7, '2021-07-15'),
(89, 34, 7, '2021-07-02'),
(90, 35, 7, '2021-07-02'),
(91, 36, 7, '2021-07-02'),
(92, 37, 7, '2021-07-02'),
(99, 44, 7, '2021-07-02'),
(98, 43, 7, '2021-07-02'),
(179, 0, 7, '2021-07-15'),
(97, 42, 7, '2021-07-02'),
(100, 45, 7, '2021-07-03'),
(169, 110, 14, '2021-07-11'),
(170, 113, 14, '2021-07-11'),
(103, 48, 7, '2021-07-02'),
(104, 49, 7, '2021-07-02'),
(105, 50, 7, '2021-07-02'),
(106, 51, 7, '2021-07-02'),
(178, 0, 7, '2021-07-15'),
(108, 53, 7, '2021-07-02'),
(171, 113, 14, '2021-07-11'),
(181, 115, 7, '2021-07-15'),
(172, 0, 7, '2021-07-15'),
(173, 0, 7, '2021-07-15'),
(175, 0, 7, '2021-07-15'),
(115, 60, 7, '2021-07-06'),
(116, 61, 7, '2021-07-06'),
(117, 62, 7, '2021-07-06'),
(118, 63, 7, '2021-07-06'),
(119, 64, 7, '2021-07-06'),
(168, 0, 14, '2021-07-11'),
(180, 114, 7, '2021-07-15'),
(167, 0, 14, '2021-07-11'),
(166, 111, 14, '2021-07-12'),
(124, 69, 7, '2021-07-06'),
(125, 70, 7, '2021-07-06'),
(126, 71, 7, '2021-07-06'),
(127, 72, 7, '2021-07-06'),
(128, 73, 7, '2021-07-06'),
(129, 74, 7, '2021-07-06'),
(130, 75, 7, '2021-07-06'),
(131, 76, 7, '2021-07-06'),
(132, 77, 7, '2021-07-06'),
(133, 78, 7, '2021-07-06'),
(165, 110, 7, '2021-07-11'),
(135, 80, 7, '2021-07-07'),
(136, 81, 7, '2021-07-07'),
(137, 82, 7, '2021-07-07'),
(138, 83, 7, '2021-07-07'),
(146, 91, 7, '2021-07-07'),
(145, 90, 7, '2021-07-07'),
(144, 89, 7, '2021-07-07'),
(142, 87, 7, '2021-07-08'),
(143, 88, 7, '2021-07-07'),
(147, 92, 7, '2021-07-07'),
(177, 0, 7, '2021-07-15'),
(151, 96, 7, '2021-07-07'),
(150, 95, 7, '2021-07-07'),
(152, 97, 7, '2021-07-07'),
(153, 98, 7, '2021-07-07'),
(154, 99, 7, '2021-07-07'),
(155, 100, 7, '2021-07-07'),
(156, 101, 7, '2021-07-07'),
(157, 102, 7, '2021-07-08'),
(158, 103, 7, '2021-07-08'),
(161, 106, 7, '2021-07-07'),
(176, 0, 7, '2021-07-15'),
(162, 107, 7, '2021-07-07'),
(163, 108, 7, '2021-07-07'),
(174, 0, 7, '2021-07-15'),
(183, 117, 7, '2021-07-15'),
(184, 118, 7, '2021-07-15'),
(187, 121, 7, '2021-07-15'),
(186, 120, 7, '2021-07-15'),
(188, 98, 7, '2021-07-15'),
(189, 98, 7, '2021-07-15'),
(190, 98, 7, '2021-07-15'),
(191, 34, 7, '2021-07-15'),
(192, 122, 7, '2021-07-16'),
(193, 123, 7, '2021-07-16'),
(194, 124, 7, '2021-07-16'),
(211, 141, 7, '2021-07-16'),
(210, 140, 7, '2021-07-16'),
(209, 139, 7, '2021-07-16'),
(208, 138, 7, '2021-07-16'),
(207, 137, 7, '2021-07-16'),
(206, 136, 7, '2021-07-16'),
(205, 135, 7, '2021-07-16'),
(204, 134, 7, '2021-07-16'),
(203, 133, 7, '2021-07-16'),
(212, 142, 7, '2021-07-16'),
(213, 143, 7, '2021-07-16'),
(214, 144, 7, '2021-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(250) NOT NULL,
  `product_model` varchar(250) NOT NULL,
  `product_sku` varchar(250) NOT NULL,
  `product_image` varchar(250) NOT NULL,
  `product_detail` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_model`, `product_sku`, `product_image`, `product_detail`) VALUES
(71, ' clutch disc cover ME 500394 (F)', '2000', '500394F', '122028download.jpg', 'None'),
(66, 'clutch disc cover TA 275-2980 (F)', '2000', 'ta275-2980', '26079download.jpg', 'None'),
(63, 'clutch discs cover 30100-N8494 (F)', '1998', '3100-N8494', '473264BP0070346_YP_1.jpg', 'None'),
(70, 'clutch disc cover 31250-36073 (F)', '2000', '3125036073', '492206download.jpg', 'None'),
(68, ' clutch disc cover DT 072 (F)																															3		D-2E 11115-11010	4	10											1																				', '1999', 'DT  072F', '529145BP0070346_YP_1.jpg', 'None'),
(69, 'REPAIR KITS MB334439', '2012', '12334', '38534repair kit.jpg', 'None'),
(72, 'BELTES 7PK 1600', '2000', 'TY76', '481077belts.jpg', 'None'),
(73, 'clutch disc cover 31250-12081 (4R) (F)', '2000', '3125012081', '218220download.jpg', 'None'),
(74, 'clutch disc cover 31250-12081 (4R) (F)', '2000', '3125012081', '659341download.jpg', 'None'),
(75, 'BELTES 7PK1750', '3333', '555', '397531belts.jpg', 'None'),
(76, 'BEARING 33208', '2000', '33208', '3669922.jpg', 'None'),
(77, 'BEARING 33208', '2000', '33208', '9646452.jpg', 'None'),
(78, 'MOUNTING RADIATOR MTG FOR CARINA E', '2012', '122224', '6055406.jpg', 'None'),
(79, 'BELTS 6PK 1585 ', '1111', '44444', '750090belts.jpg', 'None'),
(80, 'BELTS 7PK  2300', '11111', '444455', '559458belts.jpg', 'None'),
(81, 'BELTS 7PK 1350', '111222', '99999', '972178belts.jpg', 'None'),
(82, 'BELTS 7PK 1350', '111222', '99999', '688888belts.jpg', 'None'),
(83, 'BOLTS SMALL', '2000', '2345', '930815bolts.jpg', 'None'),
(84, 'BOLTS SMALL', '2000', '2345', '322309bolts.jpg', 'None'),
(85, 'BELTS 7PK 1935 ', '11122', '76788', '99794belts.jpg', 'None'),
(86, 'BRAKE TPG 244-EF(TRUE)', '2010', '12345', '927889brake shoes.jpg', 'None'),
(87, 'BELTS 7PK  1900', '009998', '34255', '163361belts.jpg', 'None'),
(88, 'BELT 57 C', '2000', 'A57', '654893belts.jpg', 'None'),
(89, '7/8 HOLE BUCKET MUMAGULU', '2000', '7/8', '146828RUBBERS.jpg', 'None'),
(91, ' BELTES A 32 C', '2000', '32', '818491belts.jpg', 'None'),
(93, 'ORINGS', '2000', '333', '888641oring.jpg', 'None'),
(100, 'RBBERS  1H TOP', '1997', '1H', '190418RUBBERS.jpg', 'None'),
(95, 'RUBBERS 40H MUMAGULU', '300', '40H', '569050RUBBERS.jpg', 'None'),
(99, 'RUBBERS 13/16H INYUMA', '2000', '13/16', '657419RUBBERS.jpg', 'None'),
(98, 'TOP COVERS  26*43*8.5', '2000', '26438', '613777oil seals.jpg', 'None'),
(101, 'RUBBERS 1H INYUMA', '1998', '1H', '14336RUBBERS.jpg', 'None'),
(104, '  RUBBERS   11/4H MUMAGULU', '1988', '11/4', '194231RUBBERS.jpg', 'None'),
(105, 'BELTS B-39-C', '1977', '39', '467762belts.jpg', 'None'),
(107, 'BEARING 30205', '2000', '30205', '5545831.jpg', 'None'),
(108, 'SILCON', '2000', 'TENSON', '4724794.jpg', 'None'),
(110, ' SEALS 35*64*13', '2000', '35*64*13', '615333oil seals.jpg', 'None'),
(111, 'SEALS  22*35*7', '2000', '22357', '422154oil seals.jpg', 'None'),
(114, ' RUBBERS 15/16 TOP', '2000', '15/16', '469383RUBBERS.jpg', 'None'),
(115, ' RUBBERS 15/16H INYUMA', '2000', '1516', '517791RUBBERS.jpg', 'None'),
(118, ' SEALS  60*74*8', '2000', '60748', '478041oil seals.jpg', 'None'),
(119, ' SEALS  20*40*8', '2000', '20408', '56497oil seals.jpg', 'None'),
(120, 'SEALS 34*64*9/15', '2000', '3464', '717956oil seals.jpg', 'None'),
(123, ' RUBBERS 5/8H INYUMA', '2000', '5/8', '340974Thu Sep 10 06-41-47.bmp', 'None'),
(131, '  RUBBERS 5/8 H TOP', '1998', '11111', '106960WIN_20210506_13_40_02_Pro.jpg', 'None'),
(124, ' RUBBERS 5/8H INYUMA', '2000', '5/8', '209615Thu Sep 10 06-41-47.bmp', 'None'),
(132, ' BEARING 428240', '2000', '428240', '142818WIN_20210506_13_39_58_Pro.jpg', 'None'),
(126, ' RUBBERS 13/16 H TOP', '2000', '5/8', '581845WIN_20210506_13_39_58_Pro.jpg', 'None'),
(127, 'RUBBERS 11/8H INYUMA', '1994', '11/8', '127976WIN_20210506_13_39_58_Pro.jpg', 'None'),
(128, 'RUBBERS  2H MUMAGULU ', '1998', '2H', '575751WIN_20200824_06_14_45_Pro.jpg', 'None'),
(130, 'RUBBERS 7/8H INYUMA', '1998', '7/8', '461361WIN_20200824_06_14_45_Pro.jpg', 'None'),
(133, 'BEARING 377237', '2000', '3772337', '455158WIN_20210506_13_40_02_Pro.jpg', 'None'),
(136, 'REPAIR KITS  15/16 BLUE COVER', '2000', '333', '741918WIN_20200824_06_14_45_Pro.jpg', 'None'),
(137, ' SEALS 19*32*7', '2000', '19327', '10455WIN_20210506_13_39_58_Pro.jpg', 'None'),
(140, ' 35*49*6 SEALS', '2000', '6666', '416339WIN_20200824_06_14_45_Pro.jpg', 'None'),
(144, 'seals 29341-64130', '2000', '2222', '965482WIN_20210506_13_39_58_Pro.jpg', 'None'),
(143, '32*46*6', '1998', '19887', '969456WIN_20210506_13_39_58_Pro.jpg', 'None'),
(145, 'Seals 34*63*9/15', '2000', '7777', '315187WIN_20200824_06_14_45_Pro.jpg', 'None'),
(149, 'seals 23*34*7', '2000', '33333', '514939WIN_20210506_13_40_02_Pro.jpg', 'None'),
(150, 'seals 19*29*7', '2000', '2222', '481950WIN_20210506_13_39_58_Pro.jpg', 'None'),
(154, 'BELTS B 68', '1987', '888', '727586WIN_20210506_13_40_02_Pro.jpg', 'None'),
(153, 'rubbers 15/16 cup', '2000', 'HHH', '181669WIN_20200824_06_14_45_Pro.jpg', 'None'),
(155, 'BRAKE FLUID', '1111', '1111', '593966WIN_20210506_13_40_02_Pro.jpg', 'None'),
(156, 'BEARING 607', '2000', '607z', '608524WIN_20200824_06_14_45_Pro.jpg', 'None'),
(157, 'SEALS  75*108*10/19', '2000', '75108', '912380oil seals.jpg', 'None'),
(160, 'SEALS 48*82*12/19', '1998', '22222', '433651oil seals.jpg', 'None'),
(173, 'SEALS 34*54*9/15', '1998', '34567', '310940oil seals.jpg', 'None'),
(167, 'SEALS 50*68*9/15', '1997', '5555', '402839oil seals.jpg', 'None'),
(174, 'SEALS 25*37*7', '1998', '25377', '531725oil seals.jpg', 'None'),
(169, 'SEALS 50*68*9/15', '1997', '5555', '861347oil seals.jpg', 'None'),
(171, 'SEALS 25.5*37.5*6', '1998', '23434', '310956oil seals.jpg', 'None'),
(175, 'SEALS 47*84*10/15', '2000', '222', '307443oil seals.jpg', 'None'),
(178, 'SEALS 50*65*8 ', '2000', '2222', '838642oil seals.jpg', 'None'),
(185, 'RUBBERS 5/8 INYUMA', '2000', '3333', '784486oil seals.jpg', 'None'),
(182, 'SEALS 57*75*10', '1998', '22222', '671485oil seals.jpg', 'None'),
(184, 'RUBBERS 5/8 INYUMA', '2000', '3333', '927388oil seals.jpg', 'None'),
(186, 'RUBBERS 5/8 INYUMA', '2000', '3333', '826917oil seals.jpg', 'None'),
(187, 'RUBBERS 1H MUMAGULU', '1998', '1111', '316350RUBBERS.jpg', 'None'),
(191, 'RUBBERS 1CUP', '1998', '1111', '369788RUBBERS.jpg', 'None'),
(198, 'BEARING  38640036/339(46T 080604)', '2000', '444', '9589611.jpg', 'None'),
(199, 'BELTS 163', '2000', '163', '333916belts.jpg', 'None'),
(202, 'BELTS 3PK 600', '2000', '600', '432531belts.jpg', 'None'),
(206, 'CARIPERING', '1998', '8888', '646834oring.jpg', 'None'),
(207, 'SPENSORS', '2000', '888', '412802oil seals.jpg', 'None'),
(210, 'SEALS 20*42*7', '2000', '777', '263552oil seals.jpg', 'None'),
(211, 'SEALS  40*52*7', '2000', '555', '442968oil seals.jpg', 'None'),
(212, 'Lamps carina 897', '2012', '5456', '137256output-onlinepngtools-1.png', 'None'),
(213, 'cosmetic 23', '2222', '1222', '975938nozaax.jpg', 'None'),
(214, 'MOUNTING RADIATOR MTG FOR RAV4', '2000', '09AS', '647106download.png', 'None'),
(215, 'mountingRADIATOR MTG FOR AVENSIS VERSO', '341', '4455', '424686EWEWEW.jpg', 'None'),
(216, 'mountingENGINE Mtg RAV4', '123', '342', '444771EWEWEW.jpg', 'None'),
(217, 'mountingGB Mtg PICNIC UP', '123', '321', '199472EWEWEW.jpg', 'None'),
(218, 'mountingG.Box Mtg RAV4 2002', '1123', '3344', '776918EWEWEW.jpg', 'None'),
(219, 'mountingMtg For 100 REAR 12371-15240', 'h12', '36', '359115EWEWEW.jpg', 'None'),
(220, 'mountingMtg For RAV REAR O/M@Climael ', '234', '34', '643666EWEWEW.jpg', 'None'),
(222, 'SEALS 38*50*8', '2000', '38508', '351555oil seals.jpg', 'None'),
(223, ' SEALS 15*30*7 METAL', '2000', '2222', '970807oil seals.jpg', 'None'),
(224, 'RUBBERS 3/4H INYUMA', '2000', '3/4', '155366RUBBERS.jpg', 'None'),
(227, 'SEALS 60*100*10', '2000', '6010010', '375274oil seals.jpg', 'None'),
(230, 'SEALS 40*64*9/15', '2000', '4064', '8916oil seals.jpg', 'None'),
(232, '7/8  bottom', '555', '346', '42672551Ab4uQFBuL.jpg', 'None'),
(233, '7/8 tpo', '555', '678', '4187863.jpg', 'None'),
(234, 'BELTS MY21 TIMING', '2000', 'MY21', '312384belts.jpg', 'None'),
(235, 'SEALS 15*30*7 PLASTIC', '2000', '15307', '171773oil seals.jpg', 'None'),
(236, 'SEALS 18*30*6/7 PST', '2000', '2111', '164342oil seals.jpg', 'None'),
(237, 'SEALS 19*38*7', '2000', '19387', '511510oil seals.jpg', 'None'),
(238, 'SEALS  58*75*9', '2000', '5875', '280770oil seals.jpg', 'None'),
(239, 'SEALS 18*32*7', '2000', '18327', '908247oil seals.jpg', 'None'),
(240, 'UNIVERSAL JOINT GUT 24', '2000', '24', '160426oil seals.jpg', 'None'),
(241, 'D4D TOPCOVER', '2010', 'D4D', '813930oil seals.jpg', 'None'),
(242, 'SEAL  85*105*10 90311-8510510', '2000', '90311', '763275oil seals.jpg', 'None'),
(243, 'BELT 6PK 1935', '2000', '234', '166613belts.jpg', 'None'),
(244, 'CARIPERING ', '2000', '555', '938206oring.jpg', 'None'),
(245, '15/16 KIBUYU', '2000', '15/16', '570482RUBBERS.jpg', 'None'),
(246, 'RUBBERS  3/4CUP', '2000', '15/16', '693759RUBBERS.jpg', 'None'),
(247, 'SEALS 20*40*7', '2000', '345', '937124oil seals.jpg', 'None'),
(248, 'BELTS B45 CUT', '2000', '34', '779882oring.jpg', 'None'),
(249, 'BEARING 6301', '2000', '34567', '160680oil seals.jpg', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `productdetail_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `w_id` int(11) NOT NULL,
  `datepicker_mfg_date` date NOT NULL,
  `datepicker_exp_date` date NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_sell_price` int(11) NOT NULL,
  `product_supplier_price` int(11) NOT NULL,
  `dead_stock` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`productdetail_id`, `p_id`, `s_id`, `c_id`, `w_id`, `datepicker_mfg_date`, `datepicker_exp_date`, `product_quantity`, `product_sell_price`, `product_supplier_price`, `dead_stock`) VALUES
(70, 70, 11, 24, 5, '2021-07-01', '5021-06-21', 0, 20000, 12000, 0),
(63, 63, 9, 24, 5, '2021-07-01', '5021-06-21', 3, 20000, 13000, 0),
(68, 68, 11, 24, 5, '2021-07-01', '5021-06-21', 3, 20000, 10000, 0),
(66, 66, 11, 24, 5, '2021-07-01', '5021-06-21', 3, 25000, 12000, 0),
(69, 69, 9, 29, 5, '2021-07-01', '5021-06-21', 89, 8000, 5000, 0),
(71, 71, 11, 24, 5, '2021-07-01', '5021-06-21', 3, 25000, 13000, 0),
(72, 72, 11, 34, 5, '2021-07-01', '5021-06-21', 1, 15000, 7000, 0),
(73, 73, 11, 24, 5, '2021-07-01', '5021-06-21', 3, 20000, 12000, 0),
(74, 74, 11, 24, 5, '2021-07-01', '5021-06-21', 3, 20000, 12000, 0),
(75, 75, 11, 34, 5, '2021-07-01', '5021-06-21', 10, 15000, 8000, 0),
(76, 76, 11, 37, 5, '2021-07-01', '5021-06-21', 13, 20000, 12000, 0),
(77, 77, 11, 37, 5, '2021-07-01', '5021-06-21', 13, 20000, 12000, 0),
(78, 78, 9, 30, 5, '2021-07-01', '5021-06-21', 5, 15000, 6000, 0),
(79, 79, 8, 34, 5, '2021-07-01', '5021-06-21', 5, 15000, 7000, 0),
(80, 80, 11, 34, 5, '2021-07-01', '5021-06-21', 19, 15000, 7000, 0),
(81, 81, 11, 34, 5, '2021-07-01', '5021-06-21', 6, 15000, 7000, 0),
(82, 82, 11, 34, 5, '2021-07-01', '5021-06-21', 6, 15000, 7000, 0),
(83, 83, 11, 32, 5, '2021-07-01', '5021-06-21', 438, 1000, 200, 0),
(84, 84, 11, 32, 5, '2021-07-01', '5021-06-21', 438, 1000, 200, 0),
(85, 85, 11, 34, 5, '2021-07-01', '5021-06-21', 7, 15000, 7000, 0),
(86, 86, 10, 33, 5, '2021-07-01', '5021-06-21', 1, 15000, 10000, 0),
(87, 87, 11, 34, 5, '2021-07-01', '5021-06-21', 13, 15000, 7000, 0),
(88, 88, 8, 34, 5, '2021-07-02', '5021-06-21', 3, 5000, 3000, 0),
(89, 89, 11, 36, 5, '2021-07-02', '5021-06-21', 362, 1000, 300, 0),
(91, 91, 8, 34, 5, '2021-07-02', '5021-06-21', 17, 3000, 1500, 0),
(99, 99, 11, 39, 5, '2021-07-02', '5021-06-21', 753, 1000, 300, 0),
(93, 93, 11, 40, 5, '2021-07-02', '5021-06-21', 1805, 1000, 300, 0),
(95, 95, 11, 39, 5, '2021-07-02', '5021-06-21', 697, 1000, 300, 0),
(98, 98, 11, 45, 5, '2021-07-02', '5021-06-21', 68, 9000, 2000, 0),
(100, 100, 11, 42, 5, '2021-07-02', '5021-06-21', 9350, 1000, 300, 0),
(101, 101, 11, 39, 5, '2021-07-02', '5021-06-21', 881, 1000, 300, 0),
(104, 104, 11, 39, 5, '2021-07-02', '5021-06-21', 621, 1000, 300, 0),
(105, 105, 8, 34, 5, '2021-07-02', '5021-06-21', 68, 3500, 1500, 0),
(107, 107, 11, 37, 5, '2021-07-02', '5021-06-21', 99, 8000, 4500, 0),
(108, 108, 8, 46, 5, '2021-07-02', '5021-06-21', 18, 2000, 1400, 0),
(110, 110, 11, 35, 5, '0000-00-00', '5021-06-21', 0, 9000, 4000, 0),
(111, 111, 11, 35, 5, '0000-00-00', '5021-06-21', 73, 5000, 1500, 0),
(114, 114, 11, 39, 5, '2021-07-02', '5021-06-21', 1496, 1000, 300, 0),
(115, 115, 11, 42, 5, '2021-07-02', '5021-06-21', 325, 1000, 300, 0),
(118, 118, 11, 35, 5, '2021-07-05', '5021-06-21', 6, 8000, 4000, 0),
(119, 119, 11, 35, 5, '2021-07-06', '5021-06-21', 26, 5000, 2500, 0),
(120, 120, 11, 35, 5, '0000-00-00', '5021-06-21', 49, 3000, 1500, 0),
(123, 123, 11, 39, 5, '0000-00-00', '5021-06-21', 1424, 1000, 300, 0),
(131, 131, 11, 42, 5, '2021-07-06', '5021-06-21', 297, 1000, 300, 0),
(124, 124, 11, 39, 5, '0000-00-00', '5021-06-21', 1427, 1000, 300, 0),
(132, 132, 11, 37, 5, '2021-07-06', '5021-06-21', 8, 25000, 14000, 0),
(126, 126, 11, 39, 5, '2021-07-06', '5021-06-21', 296, 1000, 300, 0),
(127, 127, 11, 42, 5, '2021-07-06', '5021-06-21', 286, 1000, 300, 0),
(128, 128, 11, 39, 5, '2021-07-05', '5021-06-21', 518, 1000, 300, 0),
(133, 133, 11, 42, 5, '2021-07-06', '5021-06-21', 4, 3000, 15000, 0),
(130, 130, 11, 39, 5, '2021-07-06', '5021-06-21', 1071, 1000, 300, 0),
(136, 136, 11, 29, 5, '2021-08-06', '5021-06-21', 14, 10000, 5000, 0),
(137, 137, 11, 35, 5, '0000-00-00', '5021-06-21', 29, 3000, 1500, 0),
(140, 140, 11, 35, 5, '2021-07-06', '5021-06-21', 348, 3000, 1500, 0),
(143, 143, 11, 35, 5, '2021-07-06', '5021-06-21', 50, 3000, 1500, 0),
(144, 144, 11, 35, 5, '2021-07-06', '5021-06-21', 29, 3000, 1500, 0),
(145, 145, 11, 35, 5, '0000-00-00', '5021-06-21', 187, 3000, 1500, 0),
(149, 149, 11, 35, 5, '2021-07-06', '5021-06-21', 29, 3000, 1500, 0),
(150, 150, 11, 35, 5, '2021-07-06', '5021-06-21', 103, 3000, 1000, 0),
(153, 153, 11, 39, 5, '2021-07-06', '5021-06-21', 296, 1000, 300, 0),
(154, 154, 8, 34, 5, '2021-07-06', '5021-06-21', 8, 7000, 2500, 0),
(155, 155, 8, 47, 5, '2021-07-06', '5021-06-21', 14, 1000, 800, 0),
(156, 156, 11, 37, 5, '2021-07-07', '5021-06-21', 52, 5000, 2000, 0),
(157, 157, 11, 35, 5, '2021-07-07', '5021-06-21', 6, 8000, 4000, 0),
(160, 160, 11, 35, 5, '2021-07-07', '5021-06-21', 4, 5000, 2500, 0),
(167, 167, 11, 35, 5, '2021-07-07', '5021-06-21', 7, 8000, 4000, 0),
(174, 174, 11, 35, 5, '0000-00-00', '5021-06-21', 35, 3000, 1500, 0),
(171, 171, 11, 35, 5, '2021-07-07', '5021-06-21', 65, 5000, 2500, 0),
(169, 169, 11, 35, 5, '2021-07-07', '5021-06-21', 7, 8000, 4000, 0),
(173, 173, 11, 35, 5, '2021-07-07', '5021-06-21', 169, 3000, 1500, 0),
(175, 175, 11, 35, 5, '2021-07-06', '5021-06-21', 24, 7000, 3000, 0),
(178, 178, 11, 35, 5, '2021-07-07', '5021-06-21', 20, 4000, 2000, 0),
(182, 182, 8, 35, 5, '2021-07-07', '5021-06-21', 7, 15000, 5000, 0),
(184, 184, 11, 39, 5, '2021-07-07', '5021-06-21', 2117, 1000, 300, 0),
(185, 185, 11, 39, 5, '2021-07-07', '5021-06-21', 2117, 1000, 300, 0),
(186, 186, 11, 39, 5, '2021-07-07', '5021-06-21', 2117, 1000, 300, 0),
(187, 187, 11, 39, 5, '2021-07-07', '5021-06-21', 2113, 1000, 300, 0),
(191, 191, 11, 39, 5, '2021-07-07', '5021-06-21', 3278, 1000, 300, 0),
(198, 198, 11, 37, 5, '0000-00-00', '5021-06-21', 8, 30000, 15000, 0),
(199, 199, 11, 34, 5, '2021-07-07', '5021-06-21', 42, 8000, 7000, 0),
(202, 202, 8, 34, 5, '2021-07-07', '5021-06-21', 32, 3000, 1500, 0),
(206, 206, 11, 51, 5, '2021-07-07', '5021-06-21', 2969, 2000, 500, 0),
(207, 207, 11, 48, 5, '2021-07-07', '5021-06-21', 27, 5000, 2500, 0),
(210, 210, 11, 35, 5, '2021-07-06', '5021-06-21', 30, 5000, 2500, 0),
(211, 211, 11, 35, 5, '0000-00-00', '5021-06-21', 45, 6000, 2500, 0),
(212, 212, 10, 25, 5, '2021-07-11', '5021-06-21', 130, 8000, 4000, 0),
(213, 213, 13, 53, 5, '2021-07-11', '5021-06-21', 4, 90000, 10000, 0),
(214, 214, 13, 30, 5, '2021-07-11', '5021-06-21', 7, 9000, 8000, 0),
(215, 215, 8, 30, 5, '2021-07-11', '5021-06-21', 2, 10000, 8000, 0),
(216, 216, 13, 30, 5, '2021-07-11', '5021-06-21', 1, 25000, 15000, 0),
(217, 217, 11, 30, 5, '2021-07-11', '5021-06-21', 3, 18000, 10000, 0),
(218, 218, 11, 30, 5, '2021-07-11', '5021-06-21', 2, 30000, 5000, 0),
(219, 219, 8, 30, 5, '2021-07-11', '5021-06-21', 10, 28000, 20000, 0),
(220, 220, 8, 30, 5, '2021-07-11', '5021-06-21', 1, 8000, 2000, 0),
(222, 222, 11, 35, 5, '2021-07-15', '5021-06-21', 28, 3000, 1500, 0),
(223, 223, 11, 35, 5, '2021-07-15', '5021-06-21', 18, 3000, 1500, 0),
(224, 224, 11, 39, 5, '2021-07-15', '5021-06-21', 6572, 1000, 300, 0),
(227, 227, 11, 35, 5, '2021-07-15', '5021-06-21', 5, 12000, 5000, 0),
(230, 230, 11, 35, 5, '2021-07-15', '5021-06-21', 87, 7000, 3000, 0),
(232, 232, 11, 39, 5, '2021-07-15', '5021-06-21', 633, 1000, 600, 0),
(233, 233, 10, 42, 5, '2021-07-15', '5021-06-21', 1041, 1000, 600, 0),
(234, 234, 11, 34, 5, '2021-07-16', '5021-06-21', 9, 12000, 7000, 0),
(235, 235, 11, 35, 5, '2021-07-16', '5021-06-21', 4, 3000, 1500, 0),
(236, 236, 11, 35, 5, '2021-07-16', '5021-06-21', 9, 8000, 4000, 0),
(237, 237, 11, 35, 5, '2021-07-16', '5021-06-21', 74, 3000, 1500, 0),
(238, 238, 11, 35, 5, '2021-07-16', '5021-06-21', 12, 6000, 4000, 0),
(239, 239, 11, 35, 5, '2021-07-16', '5021-06-21', 306, 3000, 1500, 0),
(240, 240, 11, 35, 5, '2021-07-16', '5021-06-21', 23, 12000, 8000, 0),
(241, 241, 10, 45, 5, '0000-00-00', '5021-06-21', 27, 10000, 5000, 0),
(242, 242, 11, 35, 5, '2021-07-17', '5021-06-21', 39, 5000, 2500, 0),
(243, 243, 11, 34, 5, '2021-07-16', '5021-06-21', 25, 15000, 8000, 0),
(244, 244, 11, 32, 5, '2021-07-16', '5021-06-21', 2970, 2000, 800, 0),
(245, 245, 11, 39, 5, '2021-07-16', '5021-06-21', 2972, 1000, 300, 0),
(246, 246, 11, 42, 5, '2021-07-16', '5021-06-21', 191, 1000, 4000, 0),
(247, 247, 11, 35, 5, '2021-07-16', '5021-06-21', 27, 3000, 1500, 0),
(248, 248, 11, 34, 5, '2021-07-16', '5021-06-21', 11, 5000, 2500, 0),
(249, 249, 11, 37, 5, '2021-07-16', '5021-06-21', 17, 5000, 2500, 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(250) NOT NULL,
  `setting_logo` varchar(250) NOT NULL,
  `setting_address` varchar(250) NOT NULL,
  `setting_city` varchar(250) NOT NULL,
  `setting_country` varchar(250) NOT NULL,
  `setting_phone` varchar(250) NOT NULL,
  `setting_fax` varchar(250) NOT NULL,
  `setting_web` varchar(250) NOT NULL,
  `setting_currency` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_logo`, `setting_address`, `setting_city`, `setting_country`, `setting_phone`, `setting_fax`, `setting_web`, `setting_currency`) VALUES
(1, 'METRACO Ltd', '688618output-onlinepngtools (1).png', 'Gatsata, Kigali, Rwanda', 'Kigali', 'Rwanda', '+250785696700', '+250785696700', 'www.metraco.rw', 'Rwf ');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(250) NOT NULL,
  `supplier_contact_name` varchar(250) NOT NULL,
  `supplier_email` varchar(250) NOT NULL,
  `supplier_phone` varchar(250) NOT NULL,
  `supplier_address` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `supplier_contact_name`, `supplier_email`, `supplier_phone`, `supplier_address`) VALUES
(8, 'Rwanda', '0780927653', 'mamuamillianh@gmail.com', '07888888', 'nyabugogo'),
(9, 'china', '11383838', 'mamuamilliah@gmail.com', '5555555', 'china'),
(10, 'Dubai', '22222', 'mamuamilliah@gmail.com', '22222', 'dubai'),
(11, 'uganda', '+256774810877', 'mamuamilliah@gmail.com', '+256774810877', 'uganda'),
(13, 'tanzania', '789876678889', 'hakimu@gmail.com', '334356787543', 'tanzania');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers_orders`
--

CREATE TABLE `suppliers_orders` (
  `exp_order_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `exp_order_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers_orders`
--

INSERT INTO `suppliers_orders` (`exp_order_id`, `auth_id`, `exp_order_date`) VALUES
(5, 7, '2021-07-01'),
(6, 14, '2021-07-10');

-- --------------------------------------------------------

--
-- Table structure for table `sup_invoices`
--

CREATE TABLE `sup_invoices` (
  `exp_invoice_number` int(11) NOT NULL,
  `exp_order_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sup_invoices`
--

INSERT INTO `sup_invoices` (`exp_invoice_number`, `exp_order_id`) VALUES
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sup_invoice_line_items`
--

CREATE TABLE `sup_invoice_line_items` (
  `exp_invoice_items_id` int(11) NOT NULL,
  `exp_order_id` int(11) NOT NULL,
  `exp_invoice_id` int(11) NOT NULL,
  `exp_product_name` varchar(250) NOT NULL,
  `exp_product_quantity` int(11) NOT NULL,
  `exp_product_rate` int(11) NOT NULL,
  `exp_total_price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sup_invoice_line_items`
--

INSERT INTO `sup_invoice_line_items` (`exp_invoice_items_id`, `exp_order_id`, `exp_invoice_id`, `exp_product_name`, `exp_product_quantity`, `exp_product_rate`, `exp_total_price`) VALUES
(6, 5, 5, 'beltes', 10, 9000, 90000),
(7, 6, 6, 'cosmeti', 7, 1800, 12600);

-- --------------------------------------------------------

--
-- Table structure for table `sup_invoice_payment_detail`
--

CREATE TABLE `sup_invoice_payment_detail` (
  `exp_invoice_payment_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  `exp_order_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `exp_invoice_id` int(11) NOT NULL,
  `exp_grand_total_price` int(11) NOT NULL,
  `exp_paid_amount` int(11) NOT NULL,
  `exp_due_amount` int(11) NOT NULL,
  `sup_invoice_image` varchar(250) NOT NULL,
  `exp_payment_detail_date` date NOT NULL,
  `exp_payment_detail_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sup_invoice_payment_detail`
--

INSERT INTO `sup_invoice_payment_detail` (`exp_invoice_payment_id`, `auth_id`, `exp_order_id`, `warehouse_id`, `supplier_id`, `exp_invoice_id`, `exp_grand_total_price`, `exp_paid_amount`, `exp_due_amount`, `sup_invoice_image`, `exp_payment_detail_date`, `exp_payment_detail_status`) VALUES
(5, 7, 5, 5, 8, 5, 90000, 90000, 0, '', '2021-07-01', 0),
(6, 14, 6, 5, 13, 6, 12600, 12600, 0, '', '2021-07-10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_type`
--

CREATE TABLE `users_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_type`
--

INSERT INTO `users_type` (`user_type_id`, `user_type`) VALUES
(1, 'Super Admin'),
(2, 'Salesman'),
(3, 'Accountant');

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `war_id` int(11) NOT NULL,
  `war_name` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warehouse`
--

INSERT INTO `warehouse` (`war_id`, `war_name`) VALUES
(5, 'Metraco');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`auth_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `expense_orders`
--
ALTER TABLE `expense_orders`
  ADD PRIMARY KEY (`exp_order_id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`expense_type_id`);

--
-- Indexes for table `exp_invoices`
--
ALTER TABLE `exp_invoices`
  ADD PRIMARY KEY (`exp_invoice_number`);

--
-- Indexes for table `exp_invoice_line_items`
--
ALTER TABLE `exp_invoice_line_items`
  ADD PRIMARY KEY (`exp_invoice_items_id`);

--
-- Indexes for table `exp_invoice_payment_detail`
--
ALTER TABLE `exp_invoice_payment_detail`
  ADD PRIMARY KEY (`exp_invoice_payment_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_number`);

--
-- Indexes for table `invoice_line_items`
--
ALTER TABLE `invoice_line_items`
  ADD PRIMARY KEY (`order_items_id`);

--
-- Indexes for table `invoice_payment_detail`
--
ALTER TABLE `invoice_payment_detail`
  ADD PRIMARY KEY (`invoice_payment_id`);

--
-- Indexes for table `lang`
--
ALTER TABLE `lang`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `loan_contract`
--
ALTER TABLE `loan_contract`
  ADD PRIMARY KEY (`loan_contract_id`);

--
-- Indexes for table `loan_needer`
--
ALTER TABLE `loan_needer`
  ADD PRIMARY KEY (`loaner_id`);

--
-- Indexes for table `loan_payments`
--
ALTER TABLE `loan_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`productdetail_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `suppliers_orders`
--
ALTER TABLE `suppliers_orders`
  ADD PRIMARY KEY (`exp_order_id`);

--
-- Indexes for table `sup_invoices`
--
ALTER TABLE `sup_invoices`
  ADD PRIMARY KEY (`exp_invoice_number`);

--
-- Indexes for table `sup_invoice_line_items`
--
ALTER TABLE `sup_invoice_line_items`
  ADD PRIMARY KEY (`exp_invoice_items_id`);

--
-- Indexes for table `sup_invoice_payment_detail`
--
ALTER TABLE `sup_invoice_payment_detail`
  ADD PRIMARY KEY (`exp_invoice_payment_id`);

--
-- Indexes for table `users_type`
--
ALTER TABLE `users_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`war_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `auth_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `expense_orders`
--
ALTER TABLE `expense_orders`
  MODIFY `exp_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `expense_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `exp_invoices`
--
ALTER TABLE `exp_invoices`
  MODIFY `exp_invoice_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exp_invoice_line_items`
--
ALTER TABLE `exp_invoice_line_items`
  MODIFY `exp_invoice_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `exp_invoice_payment_detail`
--
ALTER TABLE `exp_invoice_payment_detail`
  MODIFY `exp_invoice_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `invoice_line_items`
--
ALTER TABLE `invoice_line_items`
  MODIFY `order_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

--
-- AUTO_INCREMENT for table `invoice_payment_detail`
--
ALTER TABLE `invoice_payment_detail`
  MODIFY `invoice_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `lang`
--
ALTER TABLE `lang`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_contract`
--
ALTER TABLE `loan_contract`
  MODIFY `loan_contract_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loan_needer`
--
ALTER TABLE `loan_needer`
  MODIFY `loaner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_payments`
--
ALTER TABLE `loan_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `productdetail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `suppliers_orders`
--
ALTER TABLE `suppliers_orders`
  MODIFY `exp_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sup_invoices`
--
ALTER TABLE `sup_invoices`
  MODIFY `exp_invoice_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sup_invoice_line_items`
--
ALTER TABLE `sup_invoice_line_items`
  MODIFY `exp_invoice_items_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sup_invoice_payment_detail`
--
ALTER TABLE `sup_invoice_payment_detail`
  MODIFY `exp_invoice_payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_type`
--
ALTER TABLE `users_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `war_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
