-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2018 at 02:54 PM
-- Server version: 5.6.39-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `altuskno_altus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_pswrd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_pswrd`) VALUES
('altusknowledge', 'altus@iitjee');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `c_id` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `sub1` varchar(200) NOT NULL,
  `sub2` varchar(200) NOT NULL,
  `sub3` varchar(200) NOT NULL,
  `category` enum('JEE','NEET') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`c_id`, `start`, `end`, `sub1`, `sub2`, `sub3`, `category`) VALUES
(1, '2018-05-26', '2018-05-28', 'Units & Measurement; Motion in a Straight Line; Motion in a Plane; Laws Of Motion', 'Some Basic Concept of Chemistry; Structure of the Atom; Classification of elements and periodicity in properties', 'Sets; Relation & Functions', 'JEE'),
(2, '2018-06-23', '2018-06-24', 'Electric charges and fields; Electrostatics, Potential & Capacitance; Current Electricity', 'The Solid State; Solutions; Electrochemistry; Chemical Kinetics', 'Trigometric functions; Inverse Trignometric Functions; Principal of Mathematical Induction', 'JEE'),
(3, '2018-07-21', '2018-07-23', 'Work, Energy & Power; System of Particles &Rotation Motion; Gravitation', 'Surface Chemistry; General Principles and Process of Isolation of Elements', 'Matrices; Determinants', 'JEE'),
(4, '2018-08-25', '2018-08-27', 'Moving Charges & Magnetism; Magnetism and Matter;Mechanical Properties of Solid & Fluids', 'Chemical Bonding and Molecular Structure; States of Matter; Thermodynamics', 'Complex Numbers and Quadratic Equation; Linear Inequalities', 'JEE'),
(5, '2018-09-22', '2018-09-24', 'Electromagnetic Induction; Thermal Properties of Matter;', 'Equilibrium; Redox Reaction; Hydrogen', 'Permutation & Combinations; Continutiy and Differentiability; Application of Derivatives', 'JEE'),
(6, '2018-10-20', '2018-10-22', 'Alternating Current; Electromagnetic Waves; Thermodynamics', 'The s block,p block, d and f block Elements', 'Integrals; Application of Integrals; Binomial Theorem; Sequence and Series', 'JEE'),
(7, '2018-11-24', '2018-11-26', 'Ray Optics & Optical Instruments; Wave Optics; Oscillations', 'Coordination Compounds; Haloalkanes and Haloarenes; Organic Chemistry: Some basic principles and techniques', 'Differential Equations; Vector Algebra; Straight Lines', 'JEE'),
(8, '2018-12-22', '2018-12-24', 'Waves; Dual Nature of Radiation & Matter; Atoms', 'Alcohols Phenols & Ethers; Aldehydes Ketones and Carboxylic Acids; Hydrocarbons', 'Conic Sections; 3D Geometry', 'JEE'),
(9, '2019-01-19', '2019-01-21', 'Nuclei; Semiconductors Electronics Materials, Devices & Simple Circuits; Communication System', 'Amines; Biomolecules; Environmental Chemistry', 'Limits & Derivatives; Mathematical Reasoning; Linear Programing', 'JEE'),
(10, '2019-02-23', '2019-02-25', 'Remaining', 'Polymers; Chemistry in Everyday Life', 'Probability; Statistics', 'JEE'),
(11, '2018-05-26', '2018-05-28', 'Units & Measurement; Motion in a Straight Line; Motion in a Plane; Laws Of Motion', 'Some Basic Concept of Chemistry; Structure of the Atom; Classification of elements and periodicity in properties', 'The Living World; Biological Classification; Plant Kingdom; Reproduction in Organisms', 'NEET'),
(12, '2018-06-23', '2018-06-24', 'Electric charges and fields; Electrostatics, Potential & Capacitance; Current Electricity', 'The Solid State; Solutions; Electrochemistry; Chemical Kinetics', 'Animal Kingdom; Morphology of Flowering Plants; Anatomy of Flowering Plants; Sexual Reproduction in Flowering Plants', 'NEET'),
(13, '2018-07-21', '2018-07-23', 'Work, Energy & Power; System of Particles &Rotation Motion; Gravitation', 'Surface Chemistry; General Principles and Process of Isolation of Elements', 'Structural Organisations in Animals; Human Reproduction; Reproductive Health', 'NEET'),
(14, '2018-08-25', '2018-08-27', 'Moving Charges & Magnetism; Magnetism and Matter;Mechanical Properties of Solid & Fluids', 'Chemical Bonding and Molecular Structure; States of Matter; Thermodynamics', 'Cell: The Unit of Life; Biomolecules; Cell Cycle and Cell Division; Heridity and Variations', 'NEET'),
(15, '2018-09-22', '2018-09-24', 'Electromagnetic Induction; Thermal Properties of Matter;', 'Equilibrium; Redox Reaction; Hydrogen', 'Transport in Plants; Mineral Nutrition; Molecular Basis of Inheritance; Evolution', 'NEET'),
(16, '2018-10-20', '2018-10-22', 'Alternating Current; Electromagnetic Waves; Thermodynamics', 'The s block,p block, d and f block Elements', 'Photosynthesis; Respiration in Plants; Plant Growth and Elements Development; Digestion and Absorption', 'NEET'),
(17, '2018-11-24', '2018-11-26', 'Ray Optics & Optical Instruments; Wave Optics; Oscillations', 'Coordination Compounds; Haloalkanes and Haloarenes; Organic Chemistry: Some basic principles and techniques', 'Health and Disease; Strategies Coordination Compounds; Haloalkanes for Enhancement in Food and Haloarenes; Organic Chemistry: Production; Microbes in Human Some basic principles and techniques Welfare', 'NEET'),
(18, '2018-12-22', '2018-12-24', 'Waves; Dual Nature of Radiation & Matter; Atoms', 'Alcohols Phenols & Ethers; Aldehydes Ketones and Carboxylic Acids; Hydrocarbons', 'Breathing and Exchange of Gases; Body Fluids and Circulation; Excretory Products and their Elimination', 'NEET'),
(19, '2019-01-19', '2019-01-21', 'Nuclei; Semiconductors Electronics Materials, Devices & Simple Circuits; Communication System', 'Amines; Biomolecules; Environmental Chemistry', 'Biotechnology: Principles and Processes; Biotechnology and its Nuclei; Semiconductors Electronics Amines; Biomolecules; Environmental Applications; Locomotion and Materials, Devices & Simple Circuits;', 'NEET'),
(20, '2019-02-23', '2019-02-25', 'Remaining', 'Polymers; Chemistry in Everyday Life', 'Organisms and Environment; Ecosystem; Biodiversity and its Conservation; Environmental Issues', 'NEET');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL,
  `correct` varchar(1) NOT NULL,
  `c_id` int(11) NOT NULL,
  `type` enum('mains','advance') NOT NULL DEFAULT 'mains',
  `category` enum('Physics','Chemistry','Maths','Biology') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `correct`, `c_id`, `type`, `category`) VALUES
(1, 'a', 1, 'mains', 'Physics'),
(2, 'c', 1, 'mains', 'Physics'),
(3, 'a', 1, 'mains', 'Physics'),
(4, 'c', 1, 'mains', 'Physics'),
(5, 'b', 1, 'mains', 'Physics'),
(6, 'b', 1, 'mains', 'Physics'),
(7, 'd', 1, 'mains', 'Physics'),
(8, 'a', 1, 'mains', 'Physics'),
(9, 'b', 1, 'mains', 'Physics'),
(10, 'a', 1, 'mains', 'Physics'),
(11, 'b', 1, 'mains', 'Physics'),
(12, 'c', 1, 'mains', 'Physics'),
(13, 'd', 1, 'mains', 'Physics'),
(14, 'c', 1, 'mains', 'Physics'),
(15, 'c', 1, 'mains', 'Physics'),
(16, 'c', 1, 'mains', 'Physics'),
(17, 'a', 1, 'mains', 'Physics'),
(18, 'c', 1, 'mains', 'Physics'),
(19, 'd', 1, 'mains', 'Physics'),
(20, 'd', 1, 'mains', 'Physics'),
(21, 'c', 1, 'mains', 'Physics'),
(22, 'd', 1, 'mains', 'Physics'),
(23, 'd', 1, 'mains', 'Physics'),
(24, 'b', 1, 'mains', 'Physics'),
(25, 'b', 1, 'mains', 'Physics'),
(26, 'c', 1, 'mains', 'Physics'),
(27, 'a', 1, 'mains', 'Physics'),
(28, 'b', 1, 'mains', 'Physics'),
(29, 'b', 1, 'mains', 'Physics'),
(30, 'd', 1, 'mains', 'Physics'),
(31, 'a', 1, 'mains', 'Chemistry'),
(32, 'a', 1, 'mains', 'Chemistry'),
(33, 'a', 1, 'mains', 'Chemistry'),
(34, 'c', 1, 'mains', 'Chemistry'),
(35, 'a', 1, 'mains', 'Chemistry'),
(36, 'a', 1, 'mains', 'Chemistry'),
(37, 'b', 1, 'mains', 'Chemistry'),
(38, 'c', 1, 'mains', 'Chemistry'),
(39, 'd', 1, 'mains', 'Chemistry'),
(40, 'a', 1, 'mains', 'Chemistry'),
(41, 'a', 1, 'mains', 'Chemistry'),
(42, 'c', 1, 'mains', 'Chemistry'),
(43, 'a', 1, 'mains', 'Chemistry'),
(44, 'd', 1, 'mains', 'Chemistry'),
(45, 'a', 1, 'mains', 'Chemistry'),
(46, 'c', 1, 'mains', 'Chemistry'),
(47, 'b', 1, 'mains', 'Chemistry'),
(48, 'b', 1, 'mains', 'Chemistry'),
(49, 'a', 1, 'mains', 'Chemistry'),
(50, 'a', 1, 'mains', 'Chemistry'),
(51, 'c', 1, 'mains', 'Chemistry'),
(52, 'c', 1, 'mains', 'Chemistry'),
(53, 'b', 1, 'mains', 'Chemistry'),
(54, 'd', 1, 'mains', 'Chemistry'),
(55, 'd', 1, 'mains', 'Chemistry'),
(56, 'a', 1, 'mains', 'Chemistry'),
(57, 'b', 1, 'mains', 'Chemistry'),
(58, 'c', 1, 'mains', 'Chemistry'),
(59, 'a', 1, 'mains', 'Chemistry'),
(60, 'c', 1, 'mains', 'Chemistry'),
(61, 'b', 1, 'mains', 'Maths'),
(62, 'c', 1, 'mains', 'Maths'),
(63, 'd', 1, 'mains', 'Maths'),
(64, 'c', 1, 'mains', 'Maths'),
(65, 'd', 1, 'mains', 'Maths'),
(66, 'd', 1, 'mains', 'Maths'),
(67, 'd', 1, 'mains', 'Maths'),
(68, 'a', 1, 'mains', 'Maths'),
(69, 'b', 1, 'mains', 'Maths'),
(70, 'd', 1, 'mains', 'Maths'),
(71, 'd', 1, 'mains', 'Maths'),
(72, 'b', 1, 'mains', 'Maths'),
(73, 'b', 1, 'mains', 'Maths'),
(74, 'a', 1, 'mains', 'Maths'),
(75, 'b', 1, 'mains', 'Maths'),
(76, 'd', 1, 'mains', 'Maths'),
(77, 'd', 1, 'mains', 'Maths'),
(78, 'c', 1, 'mains', 'Maths'),
(79, 'b', 1, 'mains', 'Maths'),
(80, 'a', 1, 'mains', 'Maths'),
(81, 'a', 1, 'mains', 'Maths'),
(82, 'a', 1, 'mains', 'Maths'),
(83, 'd', 1, 'mains', 'Maths'),
(84, 'b', 1, 'mains', 'Maths'),
(85, 'b', 1, 'mains', 'Maths'),
(86, 'c', 1, 'mains', 'Maths'),
(87, 'c', 1, 'mains', 'Maths'),
(88, 'a', 1, 'mains', 'Maths'),
(89, 'b', 1, 'mains', 'Maths'),
(90, 'b', 1, 'mains', 'Maths'),
(91, 'c', 11, 'mains', 'Physics'),
(92, 'c', 11, 'mains', 'Physics'),
(93, 'c', 11, 'mains', 'Physics'),
(94, 'c', 11, 'mains', 'Physics'),
(95, 'a', 11, 'mains', 'Physics'),
(96, 'c', 11, 'mains', 'Physics'),
(97, 'a', 11, 'mains', 'Physics'),
(98, 'a', 11, 'mains', 'Physics'),
(99, 'b', 11, 'mains', 'Physics'),
(100, 'd', 11, 'mains', 'Physics'),
(101, 'b', 11, 'mains', 'Physics'),
(102, 'c', 11, 'mains', 'Physics'),
(103, 'd', 11, 'mains', 'Physics'),
(104, 'b', 11, 'mains', 'Physics'),
(105, 'c', 11, 'mains', 'Physics'),
(106, 'b', 11, 'mains', 'Physics'),
(107, 'a', 11, 'mains', 'Physics'),
(108, 'a', 11, 'mains', 'Physics'),
(109, 'b', 11, 'mains', 'Physics'),
(110, 'b', 11, 'mains', 'Physics'),
(111, 'a', 11, 'mains', 'Physics'),
(112, 'd', 11, 'mains', 'Physics'),
(113, 'a', 11, 'mains', 'Physics'),
(114, 'b', 11, 'mains', 'Physics'),
(115, 'b', 11, 'mains', 'Physics'),
(116, 'd', 11, 'mains', 'Physics'),
(117, 'd', 11, 'mains', 'Physics'),
(118, 'c', 11, 'mains', 'Physics'),
(119, 'c', 11, 'mains', 'Physics'),
(120, 'b', 11, 'mains', 'Physics'),
(121, 'c', 11, 'mains', 'Physics'),
(122, 'c', 11, 'mains', 'Physics'),
(123, 'b', 11, 'mains', 'Physics'),
(124, 'd', 11, 'mains', 'Physics'),
(125, 'b', 11, 'mains', 'Physics'),
(126, 'c', 11, 'mains', 'Physics'),
(127, 'c', 11, 'mains', 'Physics'),
(128, 'a', 11, 'mains', 'Physics'),
(129, 'a', 11, 'mains', 'Physics'),
(130, 'b', 11, 'mains', 'Physics'),
(131, 'c', 11, 'mains', 'Physics'),
(132, 'b', 11, 'mains', 'Physics'),
(133, 'a', 11, 'mains', 'Physics'),
(134, 'd', 11, 'mains', 'Physics'),
(135, 'd', 11, 'mains', 'Physics'),
(136, 'd', 11, 'mains', 'Chemistry'),
(137, 'b', 11, 'mains', 'Chemistry'),
(138, 'a', 11, 'mains', 'Chemistry'),
(139, 'b', 11, 'mains', 'Chemistry'),
(140, 'b', 11, 'mains', 'Chemistry'),
(141, 'd', 11, 'mains', 'Chemistry'),
(142, 'b', 11, 'mains', 'Chemistry'),
(143, 'c', 11, 'mains', 'Chemistry'),
(144, 'a', 11, 'mains', 'Chemistry'),
(145, 'a', 11, 'mains', 'Chemistry'),
(146, 'd', 11, 'mains', 'Chemistry'),
(147, 'b', 11, 'mains', 'Chemistry'),
(148, 'c', 11, 'mains', 'Chemistry'),
(149, 'a', 11, 'mains', 'Chemistry'),
(150, 'c', 11, 'mains', 'Chemistry'),
(151, 'a', 11, 'mains', 'Chemistry'),
(152, 'a', 11, 'mains', 'Chemistry'),
(153, 'c', 11, 'mains', 'Chemistry'),
(154, 'c', 11, 'mains', 'Chemistry'),
(155, 'a', 11, 'mains', 'Chemistry'),
(156, 'c', 11, 'mains', 'Chemistry'),
(157, 'b', 11, 'mains', 'Chemistry'),
(158, 'd', 11, 'mains', 'Chemistry'),
(159, 'a', 11, 'mains', 'Chemistry'),
(160, 'a', 11, 'mains', 'Chemistry'),
(161, 'd', 11, 'mains', 'Chemistry'),
(162, 'a', 11, 'mains', 'Chemistry'),
(163, 'a', 11, 'mains', 'Chemistry'),
(164, 'b', 11, 'mains', 'Chemistry'),
(165, 'd', 11, 'mains', 'Chemistry'),
(166, 'c', 11, 'mains', 'Chemistry'),
(167, 'c', 11, 'mains', 'Chemistry'),
(168, 'd', 11, 'mains', 'Chemistry'),
(169, 'a', 11, 'mains', 'Chemistry'),
(170, 'b', 11, 'mains', 'Chemistry'),
(171, 'a', 11, 'mains', 'Chemistry'),
(172, 'c', 11, 'mains', 'Chemistry'),
(173, 'd', 11, 'mains', 'Chemistry'),
(174, 'b', 11, 'mains', 'Chemistry'),
(175, 'd', 11, 'mains', 'Chemistry'),
(176, 'b', 11, 'mains', 'Chemistry'),
(177, 'a', 11, 'mains', 'Chemistry'),
(178, 'c', 11, 'mains', 'Chemistry'),
(179, 'c', 11, 'mains', 'Chemistry'),
(180, 'c', 11, 'mains', 'Chemistry'),
(181, 'c', 11, 'mains', 'Biology'),
(182, 'b', 11, 'mains', 'Biology'),
(183, 'c', 11, 'mains', 'Biology'),
(184, 'b', 11, 'mains', 'Biology'),
(185, 'a', 11, 'mains', 'Biology'),
(186, 'b', 11, 'mains', 'Biology'),
(187, 'd', 11, 'mains', 'Biology'),
(188, 'd', 11, 'mains', 'Biology'),
(189, 'd', 11, 'mains', 'Biology'),
(190, 'a', 11, 'mains', 'Biology'),
(191, 'b', 11, 'mains', 'Biology'),
(192, 'b', 11, 'mains', 'Biology'),
(193, 'c', 11, 'mains', 'Biology'),
(194, 'a', 11, 'mains', 'Biology'),
(195, 'b', 11, 'mains', 'Biology'),
(196, 'd', 11, 'mains', 'Biology'),
(197, 'a', 11, 'mains', 'Biology'),
(198, 'b', 11, 'mains', 'Biology'),
(199, 'c', 11, 'mains', 'Biology'),
(200, 'c', 11, 'mains', 'Biology'),
(201, 'a', 11, 'mains', 'Biology'),
(202, 'b', 11, 'mains', 'Biology'),
(203, 'a', 11, 'mains', 'Biology'),
(204, 'a', 11, 'mains', 'Biology'),
(205, 'a', 11, 'mains', 'Biology'),
(206, 'c', 11, 'mains', 'Biology'),
(207, 'd', 11, 'mains', 'Biology'),
(208, 'd', 11, 'mains', 'Biology'),
(209, 'a', 11, 'mains', 'Biology'),
(210, 'c', 11, 'mains', 'Biology'),
(211, 'c', 11, 'mains', 'Biology'),
(212, 'c', 11, 'mains', 'Biology'),
(213, 'a', 11, 'mains', 'Biology'),
(214, 'b', 11, 'mains', 'Biology'),
(215, 'b', 11, 'mains', 'Biology'),
(216, 'b', 11, 'mains', 'Biology'),
(217, 'c', 11, 'mains', 'Biology'),
(218, 'b', 11, 'mains', 'Biology'),
(219, 'a', 11, 'mains', 'Biology'),
(220, 'c', 11, 'mains', 'Biology'),
(221, 'c', 11, 'mains', 'Biology'),
(222, 'c', 11, 'mains', 'Biology'),
(223, 'd', 11, 'mains', 'Biology'),
(224, 'a', 11, 'mains', 'Biology'),
(225, 'b', 11, 'mains', 'Biology'),
(226, 'a', 11, 'mains', 'Biology'),
(227, 'a', 11, 'mains', 'Biology'),
(228, 'c', 11, 'mains', 'Biology'),
(229, 'c', 11, 'mains', 'Biology'),
(230, 'b', 11, 'mains', 'Biology'),
(231, 'c', 11, 'mains', 'Biology'),
(232, 'a', 11, 'mains', 'Biology'),
(233, 'a', 11, 'mains', 'Biology'),
(234, 'a', 11, 'mains', 'Biology'),
(235, 'a', 11, 'mains', 'Biology'),
(236, 'd', 11, 'mains', 'Biology'),
(237, 'b', 11, 'mains', 'Biology'),
(238, 'a', 11, 'mains', 'Biology'),
(239, 'a', 11, 'mains', 'Biology'),
(240, 'b', 11, 'mains', 'Biology'),
(241, 'a', 11, 'mains', 'Biology'),
(242, 'b', 11, 'mains', 'Biology'),
(243, 'a', 11, 'mains', 'Biology'),
(244, 'b', 11, 'mains', 'Biology'),
(245, 'b', 11, 'mains', 'Biology'),
(246, 'b', 11, 'mains', 'Biology'),
(247, 'b', 11, 'mains', 'Biology'),
(248, 'd', 11, 'mains', 'Biology'),
(249, 'c', 11, 'mains', 'Biology'),
(250, 'd', 11, 'mains', 'Biology'),
(251, 'c', 11, 'mains', 'Biology'),
(252, 'a', 11, 'mains', 'Biology'),
(253, 'b', 11, 'mains', 'Biology'),
(254, 'c', 11, 'mains', 'Biology'),
(255, 'c', 11, 'mains', 'Biology'),
(256, 'a', 11, 'mains', 'Biology'),
(257, 'd', 11, 'mains', 'Biology'),
(258, 'a', 11, 'mains', 'Biology'),
(259, 'b', 11, 'mains', 'Biology'),
(260, 'a', 11, 'mains', 'Biology'),
(261, 'c', 11, 'mains', 'Biology'),
(262, 'b', 11, 'mains', 'Biology'),
(263, 'a', 11, 'mains', 'Biology'),
(264, 'b', 11, 'mains', 'Biology'),
(265, 'c', 11, 'mains', 'Biology'),
(266, 'a', 11, 'mains', 'Biology'),
(267, 'd', 11, 'mains', 'Biology'),
(268, 'a', 11, 'mains', 'Biology'),
(269, 'b', 11, 'mains', 'Biology'),
(270, 'a', 11, 'mains', 'Biology');

-- --------------------------------------------------------

--
-- Table structure for table `rankings`
--

CREATE TABLE `rankings` (
  `r_id` int(11) NOT NULL,
  `mark1` int(11) NOT NULL,
  `mark2` int(11) NOT NULL,
  `rank1` int(11) NOT NULL,
  `rank2` int(11) NOT NULL,
  `course` enum('JEE','NEET') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rankings`
--

INSERT INTO `rankings` (`r_id`, `mark1`, `mark2`, `rank1`, `rank2`, `course`) VALUES
(1, 310, 360, 1, 100, 'JEE'),
(2, 290, 309, 101, 200, 'JEE'),
(3, 270, 289, 201, 500, 'JEE'),
(4, 255, 269, 501, 1000, 'JEE'),
(5, 247, 254, 1001, 1500, 'JEE'),
(6, 240, 246, 1501, 2000, 'JEE'),
(7, 232, 239, 2001, 2500, 'JEE'),
(8, 225, 231, 2501, 3000, 'JEE'),
(9, 217, 224, 3001, 3500, 'JEE'),
(10, 210, 216, 3501, 4000, 'JEE'),
(11, 207, 209, 4001, 4500, 'JEE'),
(12, 204, 206, 4501, 5000, 'JEE'),
(13, 200, 203, 5001, 5500, 'JEE'),
(14, 197, 199, 5501, 6000, 'JEE'),
(15, 195, 196, 6001, 6500, 'JEE'),
(16, 192, 194, 6501, 7000, 'JEE'),
(17, 185, 189, 7501, 8000, 'JEE'),
(18, 182, 184, 8001, 8500, 'JEE'),
(19, 179, 181, 8501, 9000, 'JEE'),
(20, 177, 178, 9001, 9500, 'JEE'),
(21, 175, 176, 9501, 10000, 'JEE'),
(22, 165, 174, 10001, 20000, 'JEE'),
(23, 152, 164, 20001, 35000, 'JEE'),
(24, 140, 151, 35001, 50000, 'JEE'),
(25, 130, 139, 50001, 75000, 'JEE'),
(26, 125, 129, 75001, 98000, 'JEE'),
(27, 117, 124, 98001, 118000, 'JEE'),
(28, 109, 116, 118001, 139400, 'JEE'),
(29, 102, 108, 139401, 182200, 'JEE'),
(30, 94, 101, 160801, 182200, 'JEE'),
(31, 87, 93, 182201, 203600, 'JEE'),
(32, 79, 86, 203601, 225000, 'JEE'),
(33, 72, 78, 225001, 246400, 'JEE'),
(34, 64, 71, 246401, 267800, 'JEE'),
(35, 57, 63, 267801, 289200, 'JEE'),
(36, 49, 56, 289201, 310600, 'JEE'),
(37, 42, 48, 310601, 332000, 'JEE'),
(38, 34, 41, 332001, 353400, 'JEE'),
(39, 690, 700, 1, 10, 'NEET'),
(40, 681, 689, 11, 23, 'NEET'),
(41, 671, 680, 24, 83, 'NEET'),
(42, 661, 670, 84, 163, 'NEET'),
(43, 651, 660, 164, 301, 'NEET'),
(44, 641, 650, 302, 535, 'NEET'),
(45, 631, 640, 534, 870, 'NEET'),
(46, 621, 630, 871, 1308, 'NEET'),
(47, 611, 620, 1309, 1962, 'NEET'),
(48, 601, 610, 1963, 2786, 'NEET'),
(49, 591, 600, 2787, 3874, 'NEET'),
(50, 581, 590, 3875, 5229, 'NEET'),
(51, 571, 580, 5230, 6788, 'NEET'),
(52, 561, 570, 6789, 8736, 'NEET'),
(53, 551, 560, 8737, 10851, 'NEET'),
(54, 541, 550, 10851, 13353, 'NEET'),
(55, 531, 540, 13354, 16163, 'NEET'),
(56, 521, 530, 16163, 18876, 'NEET'),
(57, 511, 520, 18876, 22372, 'NEET'),
(58, 501, 510, 22372, 25842, 'NEET'),
(59, 491, 500, 25843, 29557, 'NEET'),
(60, 481, 490, 29558, 33893, 'NEET'),
(61, 471, 480, 33894, 38152, 'NEET'),
(62, 461, 470, 38153, 43019, 'NEET'),
(63, 451, 460, 43020, 47809, 'NEET'),
(64, 441, 450, 47810, 53184, 'NEET'),
(65, 431, 440, 53185, 59177, 'NEET'),
(66, 421, 430, 59178, 65280, 'NEET'),
(67, 411, 420, 65281, 71938, 'NEET'),
(68, 401, 410, 71939, 78651, 'NEET'),
(69, 391, 400, 78652, 86257, 'NEET'),
(70, 381, 390, 86258, 93741, 'NEET'),
(71, 371, 380, 93742, 101720, 'NEET'),
(72, 361, 370, 101721, 110266, 'NEET'),
(73, 351, 360, 110267, 119395, 'NEET'),
(74, 341, 350, 119396, 128853, 'NEET'),
(75, 331, 340, 128853, 138981, 'NEET'),
(76, 321, 330, 138982, 149614, 'NEET'),
(77, 311, 320, 149615, 160535, 'NEET'),
(78, 301, 310, 160536, 172278, 'NEET'),
(79, 291, 300, 172279, 184931, 'NEET'),
(80, 281, 290, 184932, 198052, 'NEET'),
(81, 271, 280, 198053, 211988, 'NEET'),
(82, 261, 270, 211989, 227224, 'NEET'),
(83, 251, 260, 227225, 242142, 'NEET'),
(84, 241, 250, 242143, 258630, 'NEET'),
(85, 231, 240, 258631, 276078, 'NEET'),
(86, 221, 230, 276079, 294822, 'NEET'),
(87, 210, 220, 294823, 314758, 'NEET'),
(88, 201, 210, 314759, 335921, 'NEET'),
(89, 191, 200, 335922, 358808, 'NEET'),
(90, 181, 190, 358809, 383340, 'NEET'),
(91, 171, 180, 383341, 409732, 'NEET'),
(92, 161, 170, 409733, 438229, 'NEET'),
(93, 151, 160, 438230, 469129, 'NEET'),
(94, 141, 150, 469130, 502572, 'NEET'),
(95, 131, 140, 502573, 543473, 'NEET'),
(96, 121, 130, 543474, 580499, 'NEET'),
(97, 111, 120, 580500, 629987, 'NEET'),
(98, 100, 110, 629988, 675637, 'NEET');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uuid` int(11) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `reg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `duration` enum('1','2') NOT NULL,
  `course` enum('JEE','NEET') NOT NULL,
  `status` enum('Active','Disabled') NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uuid`, `user_id`, `password`, `name`, `email`, `contact`, `reg_time`, `duration`, `course`, `status`) VALUES
(1, 'Shivesh_zBusn', 'a9000b7eea', 'Shivesh Singh', 'shivesh@altusknowledge.co.in', '9876543210', '2018-05-25 11:47:01', '1', 'JEE', 'Active'),
(2, 'Singh_NiBuY', 'c02731c1e3', 'Singh', 's@gmail.com', '4545456789', '2018-05-25 13:42:21', '2', 'NEET', 'Active'),
(3, 'Dhanisha_mlWfZ', 'b4dd5b2771', 'Dhanisha', 'dha.tulip@gmail.com', '9840992073', '2018-05-25 13:53:16', '1', 'JEE', 'Active'),
(4, 'Micah_uhNcp', 'df9074ff50', 'Micah Darrel Philip', 'philipmicah0202@gmail.com', '9769363893', '2018-05-25 13:56:16', '1', 'JEE', 'Active'),
(5, 'Tejasvi_j9avH', 'e41f401cf2', 'Tejasvi Mishra', 'tejasvi2708@gmail.com', '8840606486', '2018-05-25 13:57:53', '1', 'JEE', 'Active'),
(6, 'Kamal_mvzYM', 'baa0c441d7', 'Kamal Preet', 'skarnail161@gmail.com', '7837454808', '2018-05-25 13:59:29', '1', 'JEE', 'Active'),
(7, 'Shivam_mHDVd', 'd313f09cf5', 'Shivam mittal', 'mittal.shivam103@gmail.com', '9870365188', '2018-05-25 14:00:34', '1', 'JEE', 'Active'),
(8, 'Sukrati_7CLna', '88733c8e91', 'Sukrati Nigam', 'pradeepnigamlgc@gmail.com', '8604045216', '2018-05-25 14:01:45', '1', 'JEE', 'Active'),
(9, 'shounak_YBTMH', '636918dae8', 'shounak GHATAK', 'bibhasghatak2@gmail.com', '9416212450', '2018-05-25 14:02:47', '1', 'JEE', 'Active'),
(10, 'Vaishnavi_YgIx8', '80dc0e707b', 'Vaishnavi Gade', 'krsujeet@gmail.com', '9106628785', '2018-05-25 14:06:58', '1', 'JEE', 'Active'),
(11, 'Suporno_pOhAv', 'ed25af5151', 'Suporno Sarkar', 'sarkarsuporno36@gmail.com', '9038199168', '2018-05-25 14:08:16', '1', 'JEE', 'Active'),
(12, 'Saranya_PuBHv', 'c34c044e34', 'Saranya Sinharoy', 'biplab.acw@gmail.com', '9883134747', '2018-05-25 14:10:27', '1', 'JEE', 'Active'),
(14, 'Bhagaya_k39ql', '10575b95a1', 'Bhagaya Raj', 'vbhagyaraj6@gmail.com', '9740551982', '2018-05-25 14:13:26', '1', 'JEE', 'Active'),
(15, 'Sudheer_GsB2F', '00b89ce8b3', 'Sudheer', 'padalareddy133@gmail.com', '9502233687', '2018-05-25 14:14:32', '1', 'JEE', 'Active'),
(17, 'Saeyush_9fmsW', 'a94f09624c', 'Saeyush Mourya', 'shringaar20@gmail.com', '8624966992', '2018-05-25 14:35:43', '2', 'NEET', 'Active'),
(18, 'Isha_yEj4F', '447513cf1f', 'Isha Prasad Bhaleghare', 'prasadbhaleghare@gmail.com', '8275269501', '2018-05-25 14:37:34', '2', 'NEET', 'Active'),
(19, 'SANOBAR_os8qa', 'e475a229ea', 'SANOBAR IMRAN DESAI', 'sanobardesai@gmail.com', '9850783893', '2018-05-25 14:39:00', '2', 'NEET', 'Active'),
(20, 'Rohan_XrdCJ', '246ea1c6ee', 'Rohan Kumar Rana', 'cool.rohanrana@gmail.com', '9654401059', '2018-05-25 14:40:02', '2', 'NEET', 'Active'),
(21, 'Ema_dyP1J', '1f02a46eb0', 'Ema Chaudhari', 'pradeep.chaudhari1@gmail.com', '8078186532', '2018-05-25 14:41:04', '2', 'NEET', 'Active'),
(22, 'Harshita_JMVas', '48108eb6a1', 'Harshita Singh', 'radiohead7539@gmail.com', '8989004243', '2018-05-25 14:45:33', '1', 'JEE', 'Active'),
(23, 'Ankit_mzxrF', '67cfe8fb9f', 'Ankit Mohapatra', 'ammoh.loyola@gmail.com', '8249611422', '2018-05-25 18:50:53', '2', 'NEET', 'Active'),
(25, 'Apoorva_n08ta', '3a1d2582f6', 'Apoorva Kashyap', 'ak@gmail.com', '8986871474', '2018-05-26 06:25:36', '2', 'NEET', 'Active'),
(27, 'Aditya_a8NJ9', '21c7af5e75', 'Aditya Pratap Singh', 'adi.singh1992@gmail.com', '9044872133', '2018-05-28 14:32:20', '2', 'NEET', 'Active'),
(28, 'Gagan_FyXxu', 'altus', 'Gagan Yadav', 'gaganyadav80@gmail.com', '8800545871', '2018-05-31 06:11:58', '1', 'JEE', 'Active'),
(29, 'Vartika_jl2MB', '5e38f6944e', 'Vartika Singh', 'sengar.dushyant@gmail.com', '9589339157', '2018-06-01 09:16:54', '2', 'NEET', 'Active'),
(30, 'Akshy_3pzCg', 'yhska', 'Akshy Kumar', 'akshy47k@gmail.com', '9589339157', '2018-06-01 09:26:12', '1', 'JEE', 'Active'),
(31, 'Surya_Carvi', '59db75f8cd', 'Surya Shekhar Rana', 'ssrana212@gmail.com', '9083781488', '2018-06-04 10:56:40', '2', 'NEET', 'Active'),
(32, 'Disha_Cc2bk', '815f0e0a46', 'Disha Saharan', 'dishasaharan2507@gmail.com', '8570002605', '2018-06-07 14:15:08', '2', 'NEET', 'Active'),
(33, 'Paresh_OvgKB', '61bbdc4019', 'Paresh Kumar Sahoo', 'psahoo869@gmail.com', '8895847902', '2018-06-07 14:16:35', '2', 'NEET', 'Active'),
(34, 'Amritanshu_8CheL', '756e9c1e39', 'Amritanshu Shekar', 'amri007c@gmail.com', '7004659986', '2018-06-07 14:19:34', '1', 'JEE', 'Active'),
(35, 'Fatima_d7W52', '1cc8d40eb3', 'Fatima Ahmad', 'fatimahmd98@gmail.com', '7454958446', '2018-06-10 08:18:59', '2', 'NEET', 'Active'),
(36, 'SRADDHA_yPwYq', 'f420adec4a', 'SRADDHA DEV SARKAR', 'sraddha2devsarkar@gmail.com', '9426614794', '2018-06-10 08:20:29', '2', 'NEET', 'Active'),
(37, 'RISHABH_biuvT', 'dcb22e3b55', 'RISHABH AWASTHI', 'irishuawasthi@gmail.com', '9568269764', '2018-06-10 08:21:47', '2', 'NEET', 'Active'),
(38, 'Girish_pSVAu', '7550625682g', 'Girish Bhatt', 'girishbhatt621@gmail.com', '7550634068', '2018-06-11 05:51:00', '2', 'NEET', 'Active'),
(39, 'Sanyojita_bkHdN', '1200f6d16d', 'Sanyojita Gouria', 'sachingouria76@gmail.com', '8708715686', '2018-06-11 05:52:23', '2', 'NEET', 'Active'),
(40, 'INDRANIL_2xSKg', '6f58870957', 'INDRANIL BAR', 'indranil.bar2@gmail.com', '9933858565', '2018-06-12 06:26:44', '2', 'NEET', 'Active'),
(41, 'Aditi_2H6CI', '2f5211f453', 'Aditi Kumari', 'aditikumari@outlook.com', '7488048795', '2018-06-12 06:28:09', '2', 'NEET', 'Active'),
(42, 'Ankita_1EiFv', 'dc9e044c74', 'Ankita Karn', 'karn.ankita58@gmail.com', '9473333677', '2018-06-20 13:04:02', '2', 'NEET', 'Active'),
(43, 'RAJITA_3tjbs', '411feafd4e', 'RAJITA CHOUDHURY', 'rajib29483@gmail.com', '9401354648', '2018-06-20 13:09:17', '2', 'NEET', 'Active'),
(44, 'HARSHWARDHAN_SMh9P', '92a6b0a949', 'HARSHWARDHAN TIWARI', 'Servesh.Tiwari@dsm-sinochem.com', '9878420646', '2018-06-20 13:10:49', '2', 'NEET', 'Active'),
(45, 'SUDIP_DhPF6', 'caf5cebd6f', 'SUDIP KUMAR KAR', 'manashpanda@gmail.com', '9439763773', '2018-06-20 13:15:11', '2', 'NEET', 'Active'),
(46, 'JYOTSNA_N5TYZ', '633a9ff136', 'JYOTSNA RAJ', 'surbhiraj7@gmail.com', '9013098429', '2018-06-22 05:07:02', '2', 'NEET', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `users_solutions`
--

CREATE TABLE `users_solutions` (
  `s_id` int(11) NOT NULL,
  `uuid` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `solutions` blob NOT NULL,
  `marks` varchar(5) NOT NULL,
  `noq` varchar(4) NOT NULL,
  `type` enum('mains','advance') NOT NULL DEFAULT 'mains'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_solutions`
--

INSERT INTO `users_solutions` (`s_id`, `uuid`, `c_id`, `solutions`, `marks`, `noq`, `type`) VALUES
(1, 1, 1, 0x613a343a7b693a303b613a323a7b693a303b733a323a223338223b693a313b733a313a2264223b7d693a313b613a323a7b693a303b733a323a223530223b693a313b733a313a2263223b7d693a323b613a323a7b693a303b733a313a2233223b693a313b733a313a2264223b7d693a333b613a323a7b693a303b733a313a2231223b693a313b733a313a2261223b7d7d, '1', '4', 'mains'),
(2, 7, 1, 0x613a323a7b693a303b613a323a7b693a303b733a313a2231223b693a313b733a313a2262223b7d693a313b613a323a7b693a303b733a313a2232223b693a313b733a313a2264223b7d7d, '0', '2', 'mains'),
(3, 11, 1, 0x613a37333a7b693a303b613a323a7b693a303b733a323a223930223b693a313b733a313a2262223b7d693a313b613a323a7b693a303b733a323a223839223b693a313b733a313a2262223b7d693a323b613a323a7b693a303b733a323a223838223b693a313b733a313a2263223b7d693a333b613a323a7b693a303b733a323a223837223b693a313b733a313a2263223b7d693a343b613a323a7b693a303b733a323a223836223b693a313b733a313a2263223b7d693a353b613a323a7b693a303b733a323a223835223b693a313b733a313a2262223b7d693a363b613a323a7b693a303b733a323a223832223b693a313b733a313a2261223b7d693a373b613a323a7b693a303b733a323a223830223b693a313b733a313a2261223b7d693a383b613a323a7b693a303b733a323a223739223b693a313b733a313a2262223b7d693a393b613a323a7b693a303b733a323a223736223b693a313b733a313a2263223b7d693a31303b613a323a7b693a303b733a323a223735223b693a313b733a313a2262223b7d693a31313b613a323a7b693a303b733a323a223734223b693a313b733a313a2261223b7d693a31323b613a323a7b693a303b733a323a223733223b693a313b733a313a2262223b7d693a31333b613a323a7b693a303b733a323a223732223b693a313b733a313a2262223b7d693a31343b613a323a7b693a303b733a323a223731223b693a313b733a313a2264223b7d693a31353b613a323a7b693a303b733a323a223730223b693a313b733a313a2264223b7d693a31363b613a323a7b693a303b733a323a223639223b693a313b733a313a2262223b7d693a31373b613a323a7b693a303b733a323a223638223b693a313b733a313a2261223b7d693a31383b613a323a7b693a303b733a323a223637223b693a313b733a313a2264223b7d693a31393b613a323a7b693a303b733a323a223636223b693a313b733a313a2261223b7d693a32303b613a323a7b693a303b733a323a223635223b693a313b733a313a2262223b7d693a32313b613a323a7b693a303b733a323a223634223b693a313b733a313a2262223b7d693a32323b613a323a7b693a303b733a323a223633223b693a313b733a313a2261223b7d693a32333b613a323a7b693a303b733a323a223632223b693a313b733a313a2263223b7d693a32343b613a323a7b693a303b733a323a223631223b693a313b733a313a2262223b7d693a32353b613a323a7b693a303b733a323a223539223b693a313b733a313a2261223b7d693a32363b613a323a7b693a303b733a323a223538223b693a313b733a313a2263223b7d693a32373b613a323a7b693a303b733a323a223537223b693a313b733a313a2261223b7d693a32383b613a323a7b693a303b733a323a223536223b693a313b733a313a2263223b7d693a32393b613a323a7b693a303b733a323a223535223b693a313b733a313a2262223b7d693a33303b613a323a7b693a303b733a323a223534223b693a313b733a313a2264223b7d693a33313b613a323a7b693a303b733a323a223533223b693a313b733a313a2262223b7d693a33323b613a323a7b693a303b733a323a223532223b693a313b733a313a2263223b7d693a33333b613a323a7b693a303b733a323a223530223b693a313b733a313a2261223b7d693a33343b613a323a7b693a303b733a323a223439223b693a313b733a313a2261223b7d693a33353b613a323a7b693a303b733a323a223438223b693a313b733a313a2262223b7d693a33363b613a323a7b693a303b733a323a223437223b693a313b733a313a2262223b7d693a33373b613a323a7b693a303b733a323a223436223b693a313b733a313a2264223b7d693a33383b613a323a7b693a303b733a323a223435223b693a313b733a313a2261223b7d693a33393b613a323a7b693a303b733a323a223434223b693a313b733a313a2264223b7d693a34303b613a323a7b693a303b733a323a223433223b693a313b733a313a2261223b7d693a34313b613a323a7b693a303b733a323a223432223b693a313b733a313a2262223b7d693a34323b613a323a7b693a303b733a323a223431223b693a313b733a313a2261223b7d693a34333b613a323a7b693a303b733a323a223430223b693a313b733a313a2263223b7d693a34343b613a323a7b693a303b733a323a223339223b693a313b733a313a2262223b7d693a34353b613a323a7b693a303b733a323a223338223b693a313b733a313a2263223b7d693a34363b613a323a7b693a303b733a323a223337223b693a313b733a313a2261223b7d693a34373b613a323a7b693a303b733a323a223335223b693a313b733a313a2261223b7d693a34383b613a323a7b693a303b733a323a223334223b693a313b733a313a2263223b7d693a34393b613a323a7b693a303b733a323a223333223b693a313b733a313a2261223b7d693a35303b613a323a7b693a303b733a323a223332223b693a313b733a313a2261223b7d693a35313b613a323a7b693a303b733a323a223331223b693a313b733a313a2264223b7d693a35323b613a323a7b693a303b733a323a223239223b693a313b733a313a2262223b7d693a35333b613a323a7b693a303b733a323a223238223b693a313b733a313a2263223b7d693a35343b613a323a7b693a303b733a323a223237223b693a313b733a313a2261223b7d693a35353b613a323a7b693a303b733a323a223236223b693a313b733a313a2262223b7d693a35363b613a323a7b693a303b733a323a223235223b693a313b733a313a2262223b7d693a35373b613a323a7b693a303b733a323a223234223b693a313b733a313a2262223b7d693a35383b613a323a7b693a303b733a323a223232223b693a313b733a313a2264223b7d693a35393b613a323a7b693a303b733a323a223231223b693a313b733a313a2263223b7d693a36303b613a323a7b693a303b733a323a223137223b693a313b733a313a2262223b7d693a36313b613a323a7b693a303b733a323a223136223b693a313b733a313a2263223b7d693a36323b613a323a7b693a303b733a323a223135223b693a313b733a313a2261223b7d693a36333b613a323a7b693a303b733a323a223134223b693a313b733a313a2263223b7d693a36343b613a323a7b693a303b733a323a223133223b693a313b733a313a2262223b7d693a36353b613a323a7b693a303b733a323a223131223b693a313b733a313a2262223b7d693a36363b613a323a7b693a303b733a323a223130223b693a313b733a313a2261223b7d693a36373b613a323a7b693a303b733a313a2239223b693a313b733a313a2262223b7d693a36383b613a323a7b693a303b733a313a2238223b693a313b733a313a2261223b7d693a36393b613a323a7b693a303b733a313a2237223b693a313b733a313a2264223b7d693a37303b613a323a7b693a303b733a313a2235223b693a313b733a313a2262223b7d693a37313b613a323a7b693a303b733a313a2233223b693a313b733a313a2264223b7d693a37323b613a323a7b693a303b733a313a2232223b693a313b733a313a2263223b7d7d, '52', '73', 'mains'),
(4, 15, 1, 0x613a33303a7b693a303b613a323a7b693a303b733a323a223330223b693a313b733a313a2263223b7d693a313b613a323a7b693a303b733a323a223239223b693a313b733a313a2264223b7d693a323b613a323a7b693a303b733a323a223238223b693a313b733a313a2261223b7d693a333b613a323a7b693a303b733a323a223237223b693a313b733a313a2262223b7d693a343b613a323a7b693a303b733a323a223236223b693a313b733a313a2263223b7d693a353b613a323a7b693a303b733a323a223235223b693a313b733a313a2261223b7d693a363b613a323a7b693a303b733a323a223234223b693a313b733a313a2263223b7d693a373b613a323a7b693a303b733a323a223233223b693a313b733a313a2262223b7d693a383b613a323a7b693a303b733a323a223232223b693a313b733a313a2261223b7d693a393b613a323a7b693a303b733a323a223231223b693a313b733a313a2263223b7d693a31303b613a323a7b693a303b733a323a223230223b693a313b733a313a2262223b7d693a31313b613a323a7b693a303b733a323a223139223b693a313b733a313a2261223b7d693a31323b613a323a7b693a303b733a323a223138223b693a313b733a313a2263223b7d693a31333b613a323a7b693a303b733a323a223137223b693a313b733a313a2262223b7d693a31343b613a323a7b693a303b733a323a223136223b693a313b733a313a2261223b7d693a31353b613a323a7b693a303b733a323a223135223b693a313b733a313a2263223b7d693a31363b613a323a7b693a303b733a323a223134223b693a313b733a313a2261223b7d693a31373b613a323a7b693a303b733a323a223133223b693a313b733a313a2263223b7d693a31383b613a323a7b693a303b733a323a223132223b693a313b733a313a2264223b7d693a31393b613a323a7b693a303b733a323a223131223b693a313b733a313a2261223b7d693a32303b613a323a7b693a303b733a323a223130223b693a313b733a313a2264223b7d693a32313b613a323a7b693a303b733a313a2239223b693a313b733a313a2262223b7d693a32323b613a323a7b693a303b733a313a2238223b693a313b733a313a2263223b7d693a32333b613a323a7b693a303b733a313a2237223b693a313b733a313a2262223b7d693a32343b613a323a7b693a303b733a313a2236223b693a313b733a313a2261223b7d693a32353b613a323a7b693a303b733a313a2235223b693a313b733a313a2263223b7d693a32363b613a323a7b693a303b733a313a2234223b693a313b733a313a2264223b7d693a32373b613a323a7b693a303b733a313a2233223b693a313b733a313a2264223b7d693a32383b613a323a7b693a303b733a313a2232223b693a313b733a313a2263223b7d693a32393b613a323a7b693a303b733a313a2231223b693a313b733a313a2262223b7d7d, '6', '30', 'mains'),
(5, 19, 11, 0x613a3137393a7b693a303b613a323a7b693a303b733a333a22323637223b693a313b733a313a2261223b7d693a313b613a323a7b693a303b733a333a22323631223b693a313b733a313a2263223b7d693a323b613a323a7b693a303b733a333a22323539223b693a313b733a313a2262223b7d693a333b613a323a7b693a303b733a333a22323537223b693a313b733a313a2264223b7d693a343b613a323a7b693a303b733a333a22323536223b693a313b733a313a2261223b7d693a353b613a323a7b693a303b733a333a22323531223b693a313b733a313a2261223b7d693a363b613a323a7b693a303b733a333a22323437223b693a313b733a313a2262223b7d693a373b613a323a7b693a303b733a333a22323436223b693a313b733a313a2261223b7d693a383b613a323a7b693a303b733a333a22323432223b693a313b733a313a2262223b7d693a393b613a323a7b693a303b733a333a22323336223b693a313b733a313a2264223b7d693a31303b613a323a7b693a303b733a333a22323333223b693a313b733a313a2262223b7d693a31313b613a323a7b693a303b733a333a22323332223b693a313b733a313a2261223b7d693a31323b613a323a7b693a303b733a333a22323239223b693a313b733a313a2262223b7d693a31333b613a323a7b693a303b733a333a22323236223b693a313b733a313a2262223b7d693a31343b613a323a7b693a303b733a333a22323234223b693a313b733a313a2261223b7d693a31353b613a323a7b693a303b733a333a22323231223b693a313b733a313a2262223b7d693a31363b613a323a7b693a303b733a333a22323138223b693a313b733a313a2264223b7d693a31373b613a323a7b693a303b733a333a22323136223b693a313b733a313a2262223b7d693a31383b613a323a7b693a303b733a333a22323131223b693a313b733a313a2263223b7d693a31393b613a323a7b693a303b733a333a22323031223b693a313b733a313a2261223b7d693a32303b613a323a7b693a303b733a333a22313936223b693a313b733a313a2264223b7d693a32313b613a323a7b693a303b733a333a22313932223b693a313b733a313a2264223b7d693a32323b613a323a7b693a303b733a333a22313931223b693a313b733a313a2261223b7d693a32333b613a323a7b693a303b733a333a22313837223b693a313b733a313a2264223b7d693a32343b613a323a7b693a303b733a333a22313836223b693a313b733a313a2261223b7d693a32353b613a323a7b693a303b733a333a22313831223b693a313b733a313a2263223b7d693a32363b613a323a7b693a303b733a333a22313738223b693a313b733a313a2261223b7d693a32373b613a323a7b693a303b733a333a22313737223b693a313b733a313a2262223b7d693a32383b613a323a7b693a303b733a333a22313638223b693a313b733a313a2263223b7d693a32393b613a323a7b693a303b733a333a22313631223b693a313b733a313a2261223b7d693a33303b613a323a7b693a303b733a333a22313630223b693a313b733a313a2263223b7d693a33313b613a323a7b693a303b733a333a22313539223b693a313b733a313a2263223b7d693a33323b613a323a7b693a303b733a333a22313533223b693a313b733a313a2262223b7d693a33333b613a323a7b693a303b733a333a22313437223b693a313b733a313a2262223b7d693a33343b613a323a7b693a303b733a333a22313434223b693a313b733a313a2262223b7d693a33353b613a323a7b693a303b733a333a22313433223b693a313b733a313a2263223b7d693a33363b613a323a7b693a303b733a333a22313337223b693a313b733a313a2264223b7d693a33373b613a323a7b693a303b733a333a22313335223b693a313b733a313a2264223b7d693a33383b613a323a7b693a303b733a333a22313332223b693a313b733a313a2264223b7d693a33393b613a323a7b693a303b733a333a22313137223b693a313b733a313a2263223b7d693a34303b613a323a7b693a303b733a333a22313133223b693a313b733a313a2264223b7d693a34313b613a323a7b693a303b733a333a22313132223b693a313b733a313a2261223b7d693a34323b613a323a7b693a303b733a333a22313038223b693a313b733a313a2263223b7d693a34333b613a323a7b693a303b733a333a22313037223b693a313b733a313a2261223b7d693a34343b613a323a7b693a303b733a323a223937223b693a313b733a313a2264223b7d693a34353b613a323a7b693a303b733a333a22323730223b693a313b733a313a2261223b7d693a34363b613a323a7b693a303b733a333a22323639223b693a313b733a313a2262223b7d693a34373b613a323a7b693a303b733a333a22323638223b693a313b733a313a2262223b7d693a34383b613a323a7b693a303b733a333a22323636223b693a313b733a313a2261223b7d693a34393b613a323a7b693a303b733a333a22323635223b693a313b733a313a2263223b7d693a35303b613a323a7b693a303b733a333a22323634223b693a313b733a313a2262223b7d693a35313b613a323a7b693a303b733a333a22323633223b693a313b733a313a2261223b7d693a35323b613a323a7b693a303b733a333a22323632223b693a313b733a313a2262223b7d693a35333b613a323a7b693a303b733a333a22323630223b693a313b733a313a2261223b7d693a35343b613a323a7b693a303b733a333a22323538223b693a313b733a313a2261223b7d693a35353b613a323a7b693a303b733a333a22323534223b693a313b733a313a2263223b7d693a35363b613a323a7b693a303b733a333a22323533223b693a313b733a313a2262223b7d693a35373b613a323a7b693a303b733a333a22323532223b693a313b733a313a2261223b7d693a35383b613a323a7b693a303b733a333a22323530223b693a313b733a313a2264223b7d693a35393b613a323a7b693a303b733a333a22323439223b693a313b733a313a2263223b7d693a36303b613a323a7b693a303b733a333a22323438223b693a313b733a313a2264223b7d693a36313b613a323a7b693a303b733a333a22323435223b693a313b733a313a2262223b7d693a36323b613a323a7b693a303b733a333a22323434223b693a313b733a313a2262223b7d693a36333b613a323a7b693a303b733a333a22323433223b693a313b733a313a2261223b7d693a36343b613a323a7b693a303b733a333a22323431223b693a313b733a313a2261223b7d693a36353b613a323a7b693a303b733a333a22323430223b693a313b733a313a2262223b7d693a36363b613a323a7b693a303b733a333a22323339223b693a313b733a313a2261223b7d693a36373b613a323a7b693a303b733a333a22323338223b693a313b733a313a2261223b7d693a36383b613a323a7b693a303b733a333a22323337223b693a313b733a313a2261223b7d693a36393b613a323a7b693a303b733a333a22323335223b693a313b733a313a2261223b7d693a37303b613a323a7b693a303b733a333a22323334223b693a313b733a313a2261223b7d693a37313b613a323a7b693a303b733a333a22323331223b693a313b733a313a2263223b7d693a37323b613a323a7b693a303b733a333a22323330223b693a313b733a313a2262223b7d693a37333b613a323a7b693a303b733a333a22323238223b693a313b733a313a2263223b7d693a37343b613a323a7b693a303b733a333a22323237223b693a313b733a313a2261223b7d693a37353b613a323a7b693a303b733a333a22323235223b693a313b733a313a2262223b7d693a37363b613a323a7b693a303b733a333a22323233223b693a313b733a313a2264223b7d693a37373b613a323a7b693a303b733a333a22323232223b693a313b733a313a2264223b7d693a37383b613a323a7b693a303b733a333a22323230223b693a313b733a313a2263223b7d693a37393b613a323a7b693a303b733a333a22323139223b693a313b733a313a2261223b7d693a38303b613a323a7b693a303b733a333a22323137223b693a313b733a313a2263223b7d693a38313b613a323a7b693a303b733a333a22323135223b693a313b733a313a2262223b7d693a38323b613a323a7b693a303b733a333a22323134223b693a313b733a313a2262223b7d693a38333b613a323a7b693a303b733a333a22323133223b693a313b733a313a2261223b7d693a38343b613a323a7b693a303b733a333a22323132223b693a313b733a313a2263223b7d693a38353b613a323a7b693a303b733a333a22323130223b693a313b733a313a2263223b7d693a38363b613a323a7b693a303b733a333a22323039223b693a313b733a313a2261223b7d693a38373b613a323a7b693a303b733a333a22323038223b693a313b733a313a2264223b7d693a38383b613a323a7b693a303b733a333a22323037223b693a313b733a313a2264223b7d693a38393b613a323a7b693a303b733a333a22323036223b693a313b733a313a2263223b7d693a39303b613a323a7b693a303b733a333a22323035223b693a313b733a313a2261223b7d693a39313b613a323a7b693a303b733a333a22323034223b693a313b733a313a2261223b7d693a39323b613a323a7b693a303b733a333a22323033223b693a313b733a313a2262223b7d693a39333b613a323a7b693a303b733a333a22323032223b693a313b733a313a2264223b7d693a39343b613a323a7b693a303b733a333a22323030223b693a313b733a313a2263223b7d693a39353b613a323a7b693a303b733a333a22313939223b693a313b733a313a2263223b7d693a39363b613a323a7b693a303b733a333a22313938223b693a313b733a313a2262223b7d693a39373b613a323a7b693a303b733a333a22313937223b693a313b733a313a2261223b7d693a39383b613a323a7b693a303b733a333a22313935223b693a313b733a313a2262223b7d693a39393b613a323a7b693a303b733a333a22313934223b693a313b733a313a2261223b7d693a3130303b613a323a7b693a303b733a333a22313933223b693a313b733a313a2263223b7d693a3130313b613a323a7b693a303b733a333a22313930223b693a313b733a313a2261223b7d693a3130323b613a323a7b693a303b733a333a22313839223b693a313b733a313a2264223b7d693a3130333b613a323a7b693a303b733a333a22313838223b693a313b733a313a2264223b7d693a3130343b613a323a7b693a303b733a333a22313835223b693a313b733a313a2261223b7d693a3130353b613a323a7b693a303b733a333a22313834223b693a313b733a313a2262223b7d693a3130363b613a323a7b693a303b733a333a22313833223b693a313b733a313a2263223b7d693a3130373b613a323a7b693a303b733a333a22313832223b693a313b733a313a2262223b7d693a3130383b613a323a7b693a303b733a333a22313830223b693a313b733a313a2263223b7d693a3130393b613a323a7b693a303b733a333a22313739223b693a313b733a313a2263223b7d693a3131303b613a323a7b693a303b733a333a22313736223b693a313b733a313a2262223b7d693a3131313b613a323a7b693a303b733a333a22313735223b693a313b733a313a2264223b7d693a3131323b613a323a7b693a303b733a333a22313734223b693a313b733a313a2262223b7d693a3131333b613a323a7b693a303b733a333a22313733223b693a313b733a313a2264223b7d693a3131343b613a323a7b693a303b733a333a22313732223b693a313b733a313a2263223b7d693a3131353b613a323a7b693a303b733a333a22313731223b693a313b733a313a2261223b7d693a3131363b613a323a7b693a303b733a333a22313730223b693a313b733a313a2262223b7d693a3131373b613a323a7b693a303b733a333a22313639223b693a313b733a313a2261223b7d693a3131383b613a323a7b693a303b733a333a22313637223b693a313b733a313a2263223b7d693a3131393b613a323a7b693a303b733a333a22313636223b693a313b733a313a2263223b7d693a3132303b613a323a7b693a303b733a333a22313635223b693a313b733a313a2264223b7d693a3132313b613a323a7b693a303b733a333a22313634223b693a313b733a313a2262223b7d693a3132323b613a323a7b693a303b733a333a22313633223b693a313b733a313a2261223b7d693a3132333b613a323a7b693a303b733a333a22313632223b693a313b733a313a2261223b7d693a3132343b613a323a7b693a303b733a333a22313538223b693a313b733a313a2264223b7d693a3132353b613a323a7b693a303b733a333a22313537223b693a313b733a313a2262223b7d693a3132363b613a323a7b693a303b733a333a22313536223b693a313b733a313a2263223b7d693a3132373b613a323a7b693a303b733a333a22313535223b693a313b733a313a2261223b7d693a3132383b613a323a7b693a303b733a333a22313534223b693a313b733a313a2263223b7d693a3132393b613a323a7b693a303b733a333a22313532223b693a313b733a313a2261223b7d693a3133303b613a323a7b693a303b733a333a22313531223b693a313b733a313a2261223b7d693a3133313b613a323a7b693a303b733a333a22313530223b693a313b733a313a2263223b7d693a3133323b613a323a7b693a303b733a333a22313439223b693a313b733a313a2261223b7d693a3133333b613a323a7b693a303b733a333a22313438223b693a313b733a313a2263223b7d693a3133343b613a323a7b693a303b733a333a22313436223b693a313b733a313a2264223b7d693a3133353b613a323a7b693a303b733a333a22313435223b693a313b733a313a2261223b7d693a3133363b613a323a7b693a303b733a333a22313432223b693a313b733a313a2262223b7d693a3133373b613a323a7b693a303b733a333a22313431223b693a313b733a313a2264223b7d693a3133383b613a323a7b693a303b733a333a22313430223b693a313b733a313a2262223b7d693a3133393b613a323a7b693a303b733a333a22313339223b693a313b733a313a2262223b7d693a3134303b613a323a7b693a303b733a333a22313338223b693a313b733a313a2261223b7d693a3134313b613a323a7b693a303b733a333a22313336223b693a313b733a313a2264223b7d693a3134323b613a323a7b693a303b733a333a22313334223b693a313b733a313a2264223b7d693a3134333b613a323a7b693a303b733a333a22313333223b693a313b733a313a2261223b7d693a3134343b613a323a7b693a303b733a333a22313331223b693a313b733a313a2263223b7d693a3134353b613a323a7b693a303b733a333a22313330223b693a313b733a313a2262223b7d693a3134363b613a323a7b693a303b733a333a22313239223b693a313b733a313a2261223b7d693a3134373b613a323a7b693a303b733a333a22313238223b693a313b733a313a2261223b7d693a3134383b613a323a7b693a303b733a333a22313237223b693a313b733a313a2263223b7d693a3134393b613a323a7b693a303b733a333a22313236223b693a313b733a313a2263223b7d693a3135303b613a323a7b693a303b733a333a22313235223b693a313b733a313a2262223b7d693a3135313b613a323a7b693a303b733a333a22313234223b693a313b733a313a2264223b7d693a3135323b613a323a7b693a303b733a333a22313233223b693a313b733a313a2262223b7d693a3135333b613a323a7b693a303b733a333a22313232223b693a313b733a313a2263223b7d693a3135343b613a323a7b693a303b733a333a22313231223b693a313b733a313a2263223b7d693a3135353b613a323a7b693a303b733a333a22313230223b693a313b733a313a2262223b7d693a3135363b613a323a7b693a303b733a333a22313139223b693a313b733a313a2263223b7d693a3135373b613a323a7b693a303b733a333a22313138223b693a313b733a313a2263223b7d693a3135383b613a323a7b693a303b733a333a22313136223b693a313b733a313a2264223b7d693a3135393b613a323a7b693a303b733a333a22313135223b693a313b733a313a2262223b7d693a3136303b613a323a7b693a303b733a333a22313134223b693a313b733a313a2261223b7d693a3136313b613a323a7b693a303b733a333a22313131223b693a313b733a313a2261223b7d693a3136323b613a323a7b693a303b733a333a22313130223b693a313b733a313a2262223b7d693a3136333b613a323a7b693a303b733a333a22313039223b693a313b733a313a2262223b7d693a3136343b613a323a7b693a303b733a333a22313036223b693a313b733a313a2262223b7d693a3136353b613a323a7b693a303b733a333a22313035223b693a313b733a313a2263223b7d693a3136363b613a323a7b693a303b733a333a22313034223b693a313b733a313a2262223b7d693a3136373b613a323a7b693a303b733a333a22313033223b693a313b733a313a2264223b7d693a3136383b613a323a7b693a303b733a333a22313032223b693a313b733a313a2264223b7d693a3136393b613a323a7b693a303b733a333a22313031223b693a313b733a313a2262223b7d693a3137303b613a323a7b693a303b733a333a22313030223b693a313b733a313a2264223b7d693a3137313b613a323a7b693a303b733a323a223939223b693a313b733a313a2262223b7d693a3137323b613a323a7b693a303b733a323a223938223b693a313b733a313a2261223b7d693a3137333b613a323a7b693a303b733a323a223936223b693a313b733a313a2263223b7d693a3137343b613a323a7b693a303b733a323a223935223b693a313b733a313a2261223b7d693a3137353b613a323a7b693a303b733a323a223934223b693a313b733a313a2263223b7d693a3137363b613a323a7b693a303b733a323a223933223b693a313b733a313a2263223b7d693a3137373b613a323a7b693a303b733a323a223932223b693a313b733a313a2263223b7d693a3137383b613a323a7b693a303b733a323a223931223b693a313b733a313a2263223b7d7d, '146', '179', 'mains'),
(6, 5, 1, 0x613a37363a7b693a303b613a323a7b693a303b733a323a223930223b693a313b733a313a2262223b7d693a313b613a323a7b693a303b733a323a223839223b693a313b733a313a2262223b7d693a323b613a323a7b693a303b733a323a223838223b693a313b733a313a2261223b7d693a333b613a323a7b693a303b733a323a223836223b693a313b733a313a2263223b7d693a343b613a323a7b693a303b733a323a223835223b693a313b733a313a2262223b7d693a353b613a323a7b693a303b733a323a223834223b693a313b733a313a2263223b7d693a363b613a323a7b693a303b733a323a223830223b693a313b733a313a2261223b7d693a373b613a323a7b693a303b733a323a223739223b693a313b733a313a2262223b7d693a383b613a323a7b693a303b733a323a223738223b693a313b733a313a2262223b7d693a393b613a323a7b693a303b733a323a223736223b693a313b733a313a2263223b7d693a31303b613a323a7b693a303b733a323a223735223b693a313b733a313a2262223b7d693a31313b613a323a7b693a303b733a323a223733223b693a313b733a313a2263223b7d693a31323b613a323a7b693a303b733a323a223732223b693a313b733a313a2264223b7d693a31333b613a323a7b693a303b733a323a223730223b693a313b733a313a2262223b7d693a31343b613a323a7b693a303b733a323a223639223b693a313b733a313a2263223b7d693a31353b613a323a7b693a303b733a323a223638223b693a313b733a313a2262223b7d693a31363b613a323a7b693a303b733a323a223637223b693a313b733a313a2264223b7d693a31373b613a323a7b693a303b733a323a223636223b693a313b733a313a2263223b7d693a31383b613a323a7b693a303b733a323a223635223b693a313b733a313a2261223b7d693a31393b613a323a7b693a303b733a323a223634223b693a313b733a313a2263223b7d693a32303b613a323a7b693a303b733a323a223633223b693a313b733a313a2261223b7d693a32313b613a323a7b693a303b733a323a223632223b693a313b733a313a2263223b7d693a32323b613a323a7b693a303b733a323a223631223b693a313b733a313a2262223b7d693a32333b613a323a7b693a303b733a323a223539223b693a313b733a313a2261223b7d693a32343b613a323a7b693a303b733a323a223537223b693a313b733a313a2261223b7d693a32353b613a323a7b693a303b733a323a223536223b693a313b733a313a2261223b7d693a32363b613a323a7b693a303b733a323a223533223b693a313b733a313a2262223b7d693a32373b613a323a7b693a303b733a323a223532223b693a313b733a313a2262223b7d693a32383b613a323a7b693a303b733a323a223530223b693a313b733a313a2261223b7d693a32393b613a323a7b693a303b733a323a223439223b693a313b733a313a2262223b7d693a33303b613a323a7b693a303b733a323a223438223b693a313b733a313a2261223b7d693a33313b613a323a7b693a303b733a323a223437223b693a313b733a313a2262223b7d693a33323b613a323a7b693a303b733a323a223436223b693a313b733a313a2264223b7d693a33333b613a323a7b693a303b733a323a223435223b693a313b733a313a2262223b7d693a33343b613a323a7b693a303b733a323a223434223b693a313b733a313a2264223b7d693a33353b613a323a7b693a303b733a323a223433223b693a313b733a313a2261223b7d693a33363b613a323a7b693a303b733a323a223432223b693a313b733a313a2263223b7d693a33373b613a323a7b693a303b733a323a223431223b693a313b733a313a2261223b7d693a33383b613a323a7b693a303b733a323a223430223b693a313b733a313a2263223b7d693a33393b613a323a7b693a303b733a323a223339223b693a313b733a313a2262223b7d693a34303b613a323a7b693a303b733a323a223338223b693a313b733a313a2263223b7d693a34313b613a323a7b693a303b733a323a223337223b693a313b733a313a2262223b7d693a34323b613a323a7b693a303b733a323a223336223b693a313b733a313a2264223b7d693a34333b613a323a7b693a303b733a323a223335223b693a313b733a313a2261223b7d693a34343b613a323a7b693a303b733a323a223334223b693a313b733a313a2261223b7d693a34353b613a323a7b693a303b733a323a223333223b693a313b733a313a2261223b7d693a34363b613a323a7b693a303b733a323a223332223b693a313b733a313a2261223b7d693a34373b613a323a7b693a303b733a323a223331223b693a313b733a313a2261223b7d693a34383b613a323a7b693a303b733a323a223330223b693a313b733a313a2264223b7d693a34393b613a323a7b693a303b733a323a223239223b693a313b733a313a2262223b7d693a35303b613a323a7b693a303b733a323a223238223b693a313b733a313a2262223b7d693a35313b613a323a7b693a303b733a323a223237223b693a313b733a313a2261223b7d693a35323b613a323a7b693a303b733a323a223236223b693a313b733a313a2263223b7d693a35333b613a323a7b693a303b733a323a223235223b693a313b733a313a2261223b7d693a35343b613a323a7b693a303b733a323a223234223b693a313b733a313a2262223b7d693a35353b613a323a7b693a303b733a323a223233223b693a313b733a313a2264223b7d693a35363b613a323a7b693a303b733a323a223232223b693a313b733a313a2264223b7d693a35373b613a323a7b693a303b733a323a223231223b693a313b733a313a2263223b7d693a35383b613a323a7b693a303b733a323a223230223b693a313b733a313a2264223b7d693a35393b613a323a7b693a303b733a323a223138223b693a313b733a313a2263223b7d693a36303b613a323a7b693a303b733a323a223137223b693a313b733a313a2264223b7d693a36313b613a323a7b693a303b733a323a223136223b693a313b733a313a2263223b7d693a36323b613a323a7b693a303b733a323a223135223b693a313b733a313a2262223b7d693a36333b613a323a7b693a303b733a323a223134223b693a313b733a313a2263223b7d693a36343b613a323a7b693a303b733a323a223132223b693a313b733a313a2263223b7d693a36353b613a323a7b693a303b733a323a223131223b693a313b733a313a2261223b7d693a36363b613a323a7b693a303b733a323a223130223b693a313b733a313a2261223b7d693a36373b613a323a7b693a303b733a313a2239223b693a313b733a313a2262223b7d693a36383b613a323a7b693a303b733a313a2238223b693a313b733a313a2261223b7d693a36393b613a323a7b693a303b733a313a2237223b693a313b733a313a2264223b7d693a37303b613a323a7b693a303b733a313a2236223b693a313b733a313a2262223b7d693a37313b613a323a7b693a303b733a313a2235223b693a313b733a313a2262223b7d693a37323b613a323a7b693a303b733a313a2234223b693a313b733a313a2263223b7d693a37333b613a323a7b693a303b733a313a2233223b693a313b733a313a2261223b7d693a37343b613a323a7b693a303b733a313a2232223b693a313b733a313a2263223b7d693a37353b613a323a7b693a303b733a313a2231223b693a313b733a313a2261223b7d7d, '51', '76', 'mains'),
(7, 2, 11, 0x613a3134343a7b693a303b613a323a7b693a303b733a333a22323730223b693a313b733a313a2263223b7d693a313b613a323a7b693a303b733a333a22323639223b693a313b733a313a2263223b7d693a323b613a323a7b693a303b733a333a22323638223b693a313b733a313a2263223b7d693a333b613a323a7b693a303b733a333a22323637223b693a313b733a313a2262223b7d693a343b613a323a7b693a303b733a333a22323636223b693a313b733a313a2262223b7d693a353b613a323a7b693a303b733a333a22323635223b693a313b733a313a2262223b7d693a363b613a323a7b693a303b733a333a22323634223b693a313b733a313a2264223b7d693a373b613a323a7b693a303b733a333a22323633223b693a313b733a313a2264223b7d693a383b613a323a7b693a303b733a333a22323632223b693a313b733a313a2261223b7d693a393b613a323a7b693a303b733a333a22323631223b693a313b733a313a2261223b7d693a31303b613a323a7b693a303b733a333a22323630223b693a313b733a313a2263223b7d693a31313b613a323a7b693a303b733a333a22323539223b693a313b733a313a2261223b7d693a31323b613a323a7b693a303b733a333a22323538223b693a313b733a313a2263223b7d693a31333b613a323a7b693a303b733a333a22323537223b693a313b733a313a2263223b7d693a31343b613a323a7b693a303b733a333a22323536223b693a313b733a313a2263223b7d693a31353b613a323a7b693a303b733a333a22323535223b693a313b733a313a2262223b7d693a31363b613a323a7b693a303b733a333a22323534223b693a313b733a313a2264223b7d693a31373b613a323a7b693a303b733a333a22323533223b693a313b733a313a2262223b7d693a31383b613a323a7b693a303b733a333a22323532223b693a313b733a313a2263223b7d693a31393b613a323a7b693a303b733a333a22323531223b693a313b733a313a2261223b7d693a32303b613a323a7b693a303b733a333a22323339223b693a313b733a313a2261223b7d693a32313b613a323a7b693a303b733a333a22323338223b693a313b733a313a2261223b7d693a32323b613a323a7b693a303b733a333a22323337223b693a313b733a313a2261223b7d693a32333b613a323a7b693a303b733a333a22323336223b693a313b733a313a2262223b7d693a32343b613a323a7b693a303b733a333a22323335223b693a313b733a313a2262223b7d693a32353b613a323a7b693a303b733a333a22323334223b693a313b733a313a2263223b7d693a32363b613a323a7b693a303b733a333a22323333223b693a313b733a313a2263223b7d693a32373b613a323a7b693a303b733a333a22323332223b693a313b733a313a2263223b7d693a32383b613a323a7b693a303b733a333a22323331223b693a313b733a313a2263223b7d693a32393b613a323a7b693a303b733a333a22323330223b693a313b733a313a2263223b7d693a33303b613a323a7b693a303b733a333a22323239223b693a313b733a313a2264223b7d693a33313b613a323a7b693a303b733a333a22323238223b693a313b733a313a2264223b7d693a33323b613a323a7b693a303b733a333a22323237223b693a313b733a313a2264223b7d693a33333b613a323a7b693a303b733a333a22323236223b693a313b733a313a2264223b7d693a33343b613a323a7b693a303b733a333a22323235223b693a313b733a313a2262223b7d693a33353b613a323a7b693a303b733a333a22323234223b693a313b733a313a2261223b7d693a33363b613a323a7b693a303b733a333a22323233223b693a313b733a313a2263223b7d693a33373b613a323a7b693a303b733a333a22323232223b693a313b733a313a2263223b7d693a33383b613a323a7b693a303b733a333a22323231223b693a313b733a313a2263223b7d693a33393b613a323a7b693a303b733a333a22323230223b693a313b733a313a2263223b7d693a34303b613a323a7b693a303b733a333a22323039223b693a313b733a313a2264223b7d693a34313b613a323a7b693a303b733a333a22323038223b693a313b733a313a2262223b7d693a34323b613a323a7b693a303b733a333a22323037223b693a313b733a313a2262223b7d693a34333b613a323a7b693a303b733a333a22323036223b693a313b733a313a2264223b7d693a34343b613a323a7b693a303b733a333a22323035223b693a313b733a313a2262223b7d693a34353b613a323a7b693a303b733a333a22323034223b693a313b733a313a2262223b7d693a34363b613a323a7b693a303b733a333a22323033223b693a313b733a313a2261223b7d693a34373b613a323a7b693a303b733a333a22323032223b693a313b733a313a2261223b7d693a34383b613a323a7b693a303b733a333a22323031223b693a313b733a313a2261223b7d693a34393b613a323a7b693a303b733a333a22323030223b693a313b733a313a2263223b7d693a35303b613a323a7b693a303b733a333a22313939223b693a313b733a313a2263223b7d693a35313b613a323a7b693a303b733a333a22313938223b693a313b733a313a2263223b7d693a35323b613a323a7b693a303b733a333a22313937223b693a313b733a313a2263223b7d693a35333b613a323a7b693a303b733a333a22313936223b693a313b733a313a2263223b7d693a35343b613a323a7b693a303b733a333a22313935223b693a313b733a313a2264223b7d693a35353b613a323a7b693a303b733a333a22313934223b693a313b733a313a2261223b7d693a35363b613a323a7b693a303b733a333a22313933223b693a313b733a313a2261223b7d693a35373b613a323a7b693a303b733a333a22313932223b693a313b733a313a2261223b7d693a35383b613a323a7b693a303b733a333a22313931223b693a313b733a313a2261223b7d693a35393b613a323a7b693a303b733a333a22313930223b693a313b733a313a2261223b7d693a36303b613a323a7b693a303b733a333a22313839223b693a313b733a313a2261223b7d693a36313b613a323a7b693a303b733a333a22313838223b693a313b733a313a2264223b7d693a36323b613a323a7b693a303b733a333a22313837223b693a313b733a313a2262223b7d693a36333b613a323a7b693a303b733a333a22313836223b693a313b733a313a2262223b7d693a36343b613a323a7b693a303b733a333a22313835223b693a313b733a313a2263223b7d693a36353b613a323a7b693a303b733a333a22313834223b693a313b733a313a2263223b7d693a36363b613a323a7b693a303b733a333a22313833223b693a313b733a313a2261223b7d693a36373b613a323a7b693a303b733a333a22313832223b693a313b733a313a2261223b7d693a36383b613a323a7b693a303b733a333a22313831223b693a313b733a313a2264223b7d693a36393b613a323a7b693a303b733a333a22313830223b693a313b733a313a2263223b7d693a37303b613a323a7b693a303b733a333a22313734223b693a313b733a313a2261223b7d693a37313b613a323a7b693a303b733a333a22313733223b693a313b733a313a2261223b7d693a37323b613a323a7b693a303b733a333a22313732223b693a313b733a313a2261223b7d693a37333b613a323a7b693a303b733a333a22313731223b693a313b733a313a2263223b7d693a37343b613a323a7b693a303b733a333a22313730223b693a313b733a313a2263223b7d693a37353b613a323a7b693a303b733a333a22313639223b693a313b733a313a2262223b7d693a37363b613a323a7b693a303b733a333a22313638223b693a313b733a313a2262223b7d693a37373b613a323a7b693a303b733a333a22313637223b693a313b733a313a2262223b7d693a37383b613a323a7b693a303b733a333a22313636223b693a313b733a313a2262223b7d693a37393b613a323a7b693a303b733a333a22313635223b693a313b733a313a2262223b7d693a38303b613a323a7b693a303b733a333a22313634223b693a313b733a313a2262223b7d693a38313b613a323a7b693a303b733a333a22313633223b693a313b733a313a2262223b7d693a38323b613a323a7b693a303b733a333a22313632223b693a313b733a313a2263223b7d693a38333b613a323a7b693a303b733a333a22313631223b693a313b733a313a2261223b7d693a38343b613a323a7b693a303b733a333a22313630223b693a313b733a313a2261223b7d693a38353b613a323a7b693a303b733a333a22313539223b693a313b733a313a2261223b7d693a38363b613a323a7b693a303b733a333a22313538223b693a313b733a313a2261223b7d693a38373b613a323a7b693a303b733a333a22313537223b693a313b733a313a2264223b7d693a38383b613a323a7b693a303b733a333a22313536223b693a313b733a313a2264223b7d693a38393b613a323a7b693a303b733a333a22313535223b693a313b733a313a2264223b7d693a39303b613a323a7b693a303b733a333a22313534223b693a313b733a313a2264223b7d693a39313b613a323a7b693a303b733a333a22313533223b693a313b733a313a2262223b7d693a39323b613a323a7b693a303b733a333a22313532223b693a313b733a313a2262223b7d693a39333b613a323a7b693a303b733a333a22313531223b693a313b733a313a2263223b7d693a39343b613a323a7b693a303b733a333a22313530223b693a313b733a313a2263223b7d693a39353b613a323a7b693a303b733a333a22313439223b693a313b733a313a2263223b7d693a39363b613a323a7b693a303b733a333a22313438223b693a313b733a313a2263223b7d693a39373b613a323a7b693a303b733a333a22313437223b693a313b733a313a2263223b7d693a39383b613a323a7b693a303b733a333a22313436223b693a313b733a313a2261223b7d693a39393b613a323a7b693a303b733a333a22313435223b693a313b733a313a2261223b7d693a3130303b613a323a7b693a303b733a333a22313339223b693a313b733a313a2263223b7d693a3130313b613a323a7b693a303b733a333a22313338223b693a313b733a313a2262223b7d693a3130323b613a323a7b693a303b733a333a22313337223b693a313b733a313a2262223b7d693a3130333b613a323a7b693a303b733a333a22313336223b693a313b733a313a2262223b7d693a3130343b613a323a7b693a303b733a333a22313335223b693a313b733a313a2264223b7d693a3130353b613a323a7b693a303b733a333a22313334223b693a313b733a313a2262223b7d693a3130363b613a323a7b693a303b733a333a22313333223b693a313b733a313a2264223b7d693a3130373b613a323a7b693a303b733a333a22313332223b693a313b733a313a2264223b7d693a3130383b613a323a7b693a303b733a333a22313331223b693a313b733a313a2262223b7d693a3130393b613a323a7b693a303b733a333a22313330223b693a313b733a313a2262223b7d693a3131303b613a323a7b693a303b733a333a22313239223b693a313b733a313a2262223b7d693a3131313b613a323a7b693a303b733a333a22313238223b693a313b733a313a2262223b7d693a3131323b613a323a7b693a303b733a333a22313237223b693a313b733a313a2264223b7d693a3131333b613a323a7b693a303b733a333a22313236223b693a313b733a313a2262223b7d693a3131343b613a323a7b693a303b733a333a22313235223b693a313b733a313a2261223b7d693a3131353b613a323a7b693a303b733a333a22313139223b693a313b733a313a2261223b7d693a3131363b613a323a7b693a303b733a333a22313138223b693a313b733a313a2261223b7d693a3131373b613a323a7b693a303b733a333a22313137223b693a313b733a313a2263223b7d693a3131383b613a323a7b693a303b733a333a22313136223b693a313b733a313a2264223b7d693a3131393b613a323a7b693a303b733a333a22313135223b693a313b733a313a2263223b7d693a3132303b613a323a7b693a303b733a333a22313134223b693a313b733a313a2262223b7d693a3132313b613a323a7b693a303b733a333a22313133223b693a313b733a313a2261223b7d693a3132323b613a323a7b693a303b733a333a22313132223b693a313b733a313a2261223b7d693a3132333b613a323a7b693a303b733a333a22313131223b693a313b733a313a2263223b7d693a3132343b613a323a7b693a303b733a333a22313130223b693a313b733a313a2262223b7d693a3132353b613a323a7b693a303b733a333a22313039223b693a313b733a313a2262223b7d693a3132363b613a323a7b693a303b733a333a22313038223b693a313b733a313a2263223b7d693a3132373b613a323a7b693a303b733a333a22313037223b693a313b733a313a2263223b7d693a3132383b613a323a7b693a303b733a333a22313036223b693a313b733a313a2263223b7d693a3132393b613a323a7b693a303b733a333a22313035223b693a313b733a313a2263223b7d693a3133303b613a323a7b693a303b733a333a22313034223b693a313b733a313a2263223b7d693a3133313b613a323a7b693a303b733a333a22313033223b693a313b733a313a2263223b7d693a3133323b613a323a7b693a303b733a333a22313032223b693a313b733a313a2263223b7d693a3133333b613a323a7b693a303b733a333a22313031223b693a313b733a313a2263223b7d693a3133343b613a323a7b693a303b733a333a22313030223b693a313b733a313a2263223b7d693a3133353b613a323a7b693a303b733a323a223939223b693a313b733a313a2264223b7d693a3133363b613a323a7b693a303b733a323a223938223b693a313b733a313a2261223b7d693a3133373b613a323a7b693a303b733a323a223937223b693a313b733a313a2261223b7d693a3133383b613a323a7b693a303b733a323a223936223b693a313b733a313a2261223b7d693a3133393b613a323a7b693a303b733a323a223935223b693a313b733a313a2261223b7d693a3134303b613a323a7b693a303b733a323a223934223b693a313b733a313a2264223b7d693a3134313b613a323a7b693a303b733a323a223933223b693a313b733a313a2262223b7d693a3134323b613a323a7b693a303b733a323a223932223b693a313b733a313a2263223b7d693a3134333b613a323a7b693a303b733a323a223931223b693a313b733a313a2263223b7d7d, '39', '144', 'mains'),
(8, 27, 11, 0x613a343a7b693a303b613a323a7b693a303b733a323a223935223b693a313b733a313a2264223b7d693a313b613a323a7b693a303b733a323a223933223b693a313b733a313a2261223b7d693a323b613a323a7b693a303b733a323a223932223b693a313b733a313a2264223b7d693a333b613a323a7b693a303b733a323a223931223b693a313b733a313a2262223b7d7d, '0', '4', 'mains'),
(9, 25, 11, 0x613a3135343a7b693a303b613a323a7b693a303b733a333a22323730223b693a313b733a313a2261223b7d693a313b613a323a7b693a303b733a333a22323639223b693a313b733a313a2262223b7d693a323b613a323a7b693a303b733a333a22323638223b693a313b733a313a2262223b7d693a333b613a323a7b693a303b733a333a22323637223b693a313b733a313a2264223b7d693a343b613a323a7b693a303b733a333a22323636223b693a313b733a313a2261223b7d693a353b613a323a7b693a303b733a333a22323635223b693a313b733a313a2263223b7d693a363b613a323a7b693a303b733a333a22323634223b693a313b733a313a2262223b7d693a373b613a323a7b693a303b733a333a22323632223b693a313b733a313a2262223b7d693a383b613a323a7b693a303b733a333a22323631223b693a313b733a313a2263223b7d693a393b613a323a7b693a303b733a333a22323630223b693a313b733a313a2262223b7d693a31303b613a323a7b693a303b733a333a22323539223b693a313b733a313a2262223b7d693a31313b613a323a7b693a303b733a333a22323538223b693a313b733a313a2261223b7d693a31323b613a323a7b693a303b733a333a22323537223b693a313b733a313a2264223b7d693a31333b613a323a7b693a303b733a333a22323536223b693a313b733a313a2261223b7d693a31343b613a323a7b693a303b733a333a22323535223b693a313b733a313a2261223b7d693a31353b613a323a7b693a303b733a333a22323533223b693a313b733a313a2264223b7d693a31363b613a323a7b693a303b733a333a22323532223b693a313b733a313a2261223b7d693a31373b613a323a7b693a303b733a333a22323530223b693a313b733a313a2264223b7d693a31383b613a323a7b693a303b733a333a22323438223b693a313b733a313a2263223b7d693a31393b613a323a7b693a303b733a333a22323437223b693a313b733a313a2262223b7d693a32303b613a323a7b693a303b733a333a22323435223b693a313b733a313a2262223b7d693a32313b613a323a7b693a303b733a333a22323434223b693a313b733a313a2263223b7d693a32323b613a323a7b693a303b733a333a22323433223b693a313b733a313a2261223b7d693a32333b613a323a7b693a303b733a333a22323432223b693a313b733a313a2261223b7d693a32343b613a323a7b693a303b733a333a22323431223b693a313b733a313a2263223b7d693a32353b613a323a7b693a303b733a333a22323430223b693a313b733a313a2262223b7d693a32363b613a323a7b693a303b733a333a22323338223b693a313b733a313a2261223b7d693a32373b613a323a7b693a303b733a333a22323336223b693a313b733a313a2264223b7d693a32383b613a323a7b693a303b733a333a22323335223b693a313b733a313a2261223b7d693a32393b613a323a7b693a303b733a333a22323334223b693a313b733a313a2261223b7d693a33303b613a323a7b693a303b733a333a22323333223b693a313b733a313a2261223b7d693a33313b613a323a7b693a303b733a333a22323332223b693a313b733a313a2261223b7d693a33323b613a323a7b693a303b733a333a22323331223b693a313b733a313a2263223b7d693a33333b613a323a7b693a303b733a333a22323330223b693a313b733a313a2261223b7d693a33343b613a323a7b693a303b733a333a22323239223b693a313b733a313a2261223b7d693a33353b613a323a7b693a303b733a333a22323238223b693a313b733a313a2264223b7d693a33363b613a323a7b693a303b733a333a22323237223b693a313b733a313a2261223b7d693a33373b613a323a7b693a303b733a333a22323236223b693a313b733a313a2261223b7d693a33383b613a323a7b693a303b733a333a22323235223b693a313b733a313a2262223b7d693a33393b613a323a7b693a303b733a333a22323233223b693a313b733a313a2261223b7d693a34303b613a323a7b693a303b733a333a22323232223b693a313b733a313a2262223b7d693a34313b613a323a7b693a303b733a333a22323231223b693a313b733a313a2263223b7d693a34323b613a323a7b693a303b733a333a22323230223b693a313b733a313a2263223b7d693a34333b613a323a7b693a303b733a333a22323139223b693a313b733a313a2261223b7d693a34343b613a323a7b693a303b733a333a22323138223b693a313b733a313a2262223b7d693a34353b613a323a7b693a303b733a333a22323137223b693a313b733a313a2263223b7d693a34363b613a323a7b693a303b733a333a22323136223b693a313b733a313a2263223b7d693a34373b613a323a7b693a303b733a333a22323135223b693a313b733a313a2262223b7d693a34383b613a323a7b693a303b733a333a22323134223b693a313b733a313a2262223b7d693a34393b613a323a7b693a303b733a333a22323133223b693a313b733a313a2261223b7d693a35303b613a323a7b693a303b733a333a22323132223b693a313b733a313a2263223b7d693a35313b613a323a7b693a303b733a333a22323131223b693a313b733a313a2261223b7d693a35323b613a323a7b693a303b733a333a22323130223b693a313b733a313a2263223b7d693a35333b613a323a7b693a303b733a333a22323039223b693a313b733a313a2261223b7d693a35343b613a323a7b693a303b733a333a22323038223b693a313b733a313a2262223b7d693a35353b613a323a7b693a303b733a333a22323036223b693a313b733a313a2263223b7d693a35363b613a323a7b693a303b733a333a22323035223b693a313b733a313a2261223b7d693a35373b613a323a7b693a303b733a333a22323034223b693a313b733a313a2261223b7d693a35383b613a323a7b693a303b733a333a22323033223b693a313b733a313a2261223b7d693a35393b613a323a7b693a303b733a333a22323032223b693a313b733a313a2264223b7d693a36303b613a323a7b693a303b733a333a22323031223b693a313b733a313a2261223b7d693a36313b613a323a7b693a303b733a333a22323030223b693a313b733a313a2263223b7d693a36323b613a323a7b693a303b733a333a22313939223b693a313b733a313a2264223b7d693a36333b613a323a7b693a303b733a333a22313938223b693a313b733a313a2262223b7d693a36343b613a323a7b693a303b733a333a22313937223b693a313b733a313a2261223b7d693a36353b613a323a7b693a303b733a333a22313936223b693a313b733a313a2264223b7d693a36363b613a323a7b693a303b733a333a22313935223b693a313b733a313a2262223b7d693a36373b613a323a7b693a303b733a333a22313934223b693a313b733a313a2261223b7d693a36383b613a323a7b693a303b733a333a22313933223b693a313b733a313a2263223b7d693a36393b613a323a7b693a303b733a333a22313932223b693a313b733a313a2263223b7d693a37303b613a323a7b693a303b733a333a22313931223b693a313b733a313a2262223b7d693a37313b613a323a7b693a303b733a333a22313930223b693a313b733a313a2264223b7d693a37323b613a323a7b693a303b733a333a22313839223b693a313b733a313a2264223b7d693a37333b613a323a7b693a303b733a333a22313838223b693a313b733a313a2262223b7d693a37343b613a323a7b693a303b733a333a22313837223b693a313b733a313a2264223b7d693a37353b613a323a7b693a303b733a333a22313836223b693a313b733a313a2261223b7d693a37363b613a323a7b693a303b733a333a22313835223b693a313b733a313a2261223b7d693a37373b613a323a7b693a303b733a333a22313834223b693a313b733a313a2262223b7d693a37383b613a323a7b693a303b733a333a22313833223b693a313b733a313a2263223b7d693a37393b613a323a7b693a303b733a333a22313831223b693a313b733a313a2263223b7d693a38303b613a323a7b693a303b733a333a22313830223b693a313b733a313a2263223b7d693a38313b613a323a7b693a303b733a333a22313739223b693a313b733a313a2263223b7d693a38323b613a323a7b693a303b733a333a22313738223b693a313b733a313a2263223b7d693a38333b613a323a7b693a303b733a333a22313736223b693a313b733a313a2262223b7d693a38343b613a323a7b693a303b733a333a22313735223b693a313b733a313a2262223b7d693a38353b613a323a7b693a303b733a333a22313734223b693a313b733a313a2262223b7d693a38363b613a323a7b693a303b733a333a22313733223b693a313b733a313a2264223b7d693a38373b613a323a7b693a303b733a333a22313731223b693a313b733a313a2261223b7d693a38383b613a323a7b693a303b733a333a22313730223b693a313b733a313a2262223b7d693a38393b613a323a7b693a303b733a333a22313639223b693a313b733a313a2262223b7d693a39303b613a323a7b693a303b733a333a22313638223b693a313b733a313a2264223b7d693a39313b613a323a7b693a303b733a333a22313635223b693a313b733a313a2261223b7d693a39323b613a323a7b693a303b733a333a22313633223b693a313b733a313a2261223b7d693a39333b613a323a7b693a303b733a333a22313632223b693a313b733a313a2261223b7d693a39343b613a323a7b693a303b733a333a22313630223b693a313b733a313a2263223b7d693a39353b613a323a7b693a303b733a333a22313538223b693a313b733a313a2263223b7d693a39363b613a323a7b693a303b733a333a22313537223b693a313b733a313a2262223b7d693a39373b613a323a7b693a303b733a333a22313535223b693a313b733a313a2261223b7d693a39383b613a323a7b693a303b733a333a22313534223b693a313b733a313a2263223b7d693a39393b613a323a7b693a303b733a333a22313533223b693a313b733a313a2262223b7d693a3130303b613a323a7b693a303b733a333a22313532223b693a313b733a313a2261223b7d693a3130313b613a323a7b693a303b733a333a22313531223b693a313b733a313a2261223b7d693a3130323b613a323a7b693a303b733a333a22313530223b693a313b733a313a2263223b7d693a3130333b613a323a7b693a303b733a333a22313439223b693a313b733a313a2261223b7d693a3130343b613a323a7b693a303b733a333a22313438223b693a313b733a313a2263223b7d693a3130353b613a323a7b693a303b733a333a22313437223b693a313b733a313a2263223b7d693a3130363b613a323a7b693a303b733a333a22313436223b693a313b733a313a2263223b7d693a3130373b613a323a7b693a303b733a333a22313435223b693a313b733a313a2262223b7d693a3130383b613a323a7b693a303b733a333a22313434223b693a313b733a313a2261223b7d693a3130393b613a323a7b693a303b733a333a22313433223b693a313b733a313a2262223b7d693a3131303b613a323a7b693a303b733a333a22313432223b693a313b733a313a2261223b7d693a3131313b613a323a7b693a303b733a333a22313431223b693a313b733a313a2261223b7d693a3131323b613a323a7b693a303b733a333a22313430223b693a313b733a313a2262223b7d693a3131333b613a323a7b693a303b733a333a22313339223b693a313b733a313a2264223b7d693a3131343b613a323a7b693a303b733a333a22313338223b693a313b733a313a2261223b7d693a3131353b613a323a7b693a303b733a333a22313337223b693a313b733a313a2262223b7d693a3131363b613a323a7b693a303b733a333a22313336223b693a313b733a313a2264223b7d693a3131373b613a323a7b693a303b733a333a22313335223b693a313b733a313a2263223b7d693a3131383b613a323a7b693a303b733a333a22313332223b693a313b733a313a2262223b7d693a3131393b613a323a7b693a303b733a333a22313238223b693a313b733a313a2261223b7d693a3132303b613a323a7b693a303b733a333a22313237223b693a313b733a313a2263223b7d693a3132313b613a323a7b693a303b733a333a22313236223b693a313b733a313a2263223b7d693a3132323b613a323a7b693a303b733a333a22313235223b693a313b733a313a2262223b7d693a3132333b613a323a7b693a303b733a333a22313233223b693a313b733a313a2262223b7d693a3132343b613a323a7b693a303b733a333a22313231223b693a313b733a313a2263223b7d693a3132353b613a323a7b693a303b733a333a22313230223b693a313b733a313a2262223b7d693a3132363b613a323a7b693a303b733a333a22313139223b693a313b733a313a2262223b7d693a3132373b613a323a7b693a303b733a333a22313138223b693a313b733a313a2263223b7d693a3132383b613a323a7b693a303b733a333a22313137223b693a313b733a313a2264223b7d693a3132393b613a323a7b693a303b733a333a22313136223b693a313b733a313a2264223b7d693a3133303b613a323a7b693a303b733a333a22313135223b693a313b733a313a2262223b7d693a3133313b613a323a7b693a303b733a333a22313134223b693a313b733a313a2262223b7d693a3133323b613a323a7b693a303b733a333a22313133223b693a313b733a313a2261223b7d693a3133333b613a323a7b693a303b733a333a22313132223b693a313b733a313a2262223b7d693a3133343b613a323a7b693a303b733a333a22313131223b693a313b733a313a2261223b7d693a3133353b613a323a7b693a303b733a333a22313130223b693a313b733a313a2262223b7d693a3133363b613a323a7b693a303b733a333a22313039223b693a313b733a313a2262223b7d693a3133373b613a323a7b693a303b733a333a22313037223b693a313b733a313a2261223b7d693a3133383b613a323a7b693a303b733a333a22313036223b693a313b733a313a2261223b7d693a3133393b613a323a7b693a303b733a333a22313035223b693a313b733a313a2263223b7d693a3134303b613a323a7b693a303b733a333a22313034223b693a313b733a313a2263223b7d693a3134313b613a323a7b693a303b733a333a22313033223b693a313b733a313a2262223b7d693a3134323b613a323a7b693a303b733a333a22313032223b693a313b733a313a2264223b7d693a3134333b613a323a7b693a303b733a333a22313031223b693a313b733a313a2262223b7d693a3134343b613a323a7b693a303b733a333a22313030223b693a313b733a313a2262223b7d693a3134353b613a323a7b693a303b733a323a223939223b693a313b733a313a2262223b7d693a3134363b613a323a7b693a303b733a323a223938223b693a313b733a313a2261223b7d693a3134373b613a323a7b693a303b733a323a223937223b693a313b733a313a2262223b7d693a3134383b613a323a7b693a303b733a323a223936223b693a313b733a313a2263223b7d693a3134393b613a323a7b693a303b733a323a223935223b693a313b733a313a2264223b7d693a3135303b613a323a7b693a303b733a323a223934223b693a313b733a313a2263223b7d693a3135313b613a323a7b693a303b733a323a223933223b693a313b733a313a2263223b7d693a3135323b613a323a7b693a303b733a323a223932223b693a313b733a313a2263223b7d693a3135333b613a323a7b693a303b733a323a223931223b693a313b733a313a2263223b7d7d, '109', '154', 'mains');
INSERT INTO `users_solutions` (`s_id`, `uuid`, `c_id`, `solutions`, `marks`, `noq`, `type`) VALUES
(10, 8, 1, 0x613a37383a7b693a303b613a323a7b693a303b733a323a223930223b693a313b733a313a2262223b7d693a313b613a323a7b693a303b733a323a223838223b693a313b733a313a2261223b7d693a323b613a323a7b693a303b733a323a223836223b693a313b733a313a2263223b7d693a333b613a323a7b693a303b733a323a223835223b693a313b733a313a2263223b7d693a343b613a323a7b693a303b733a323a223832223b693a313b733a313a2261223b7d693a353b613a323a7b693a303b733a323a223739223b693a313b733a313a2263223b7d693a363b613a323a7b693a303b733a323a223738223b693a313b733a313a2262223b7d693a373b613a323a7b693a303b733a323a223737223b693a313b733a313a2262223b7d693a383b613a323a7b693a303b733a323a223736223b693a313b733a313a2262223b7d693a393b613a323a7b693a303b733a323a223735223b693a313b733a313a2262223b7d693a31303b613a323a7b693a303b733a323a223734223b693a313b733a313a2261223b7d693a31313b613a323a7b693a303b733a323a223733223b693a313b733a313a2264223b7d693a31323b613a323a7b693a303b733a323a223731223b693a313b733a313a2263223b7d693a31333b613a323a7b693a303b733a323a223730223b693a313b733a313a2264223b7d693a31343b613a323a7b693a303b733a323a223639223b693a313b733a313a2262223b7d693a31353b613a323a7b693a303b733a323a223638223b693a313b733a313a2262223b7d693a31363b613a323a7b693a303b733a323a223637223b693a313b733a313a2264223b7d693a31373b613a323a7b693a303b733a323a223636223b693a313b733a313a2262223b7d693a31383b613a323a7b693a303b733a323a223634223b693a313b733a313a2261223b7d693a31393b613a323a7b693a303b733a323a223633223b693a313b733a313a2264223b7d693a32303b613a323a7b693a303b733a323a223631223b693a313b733a313a2262223b7d693a32313b613a323a7b693a303b733a323a223630223b693a313b733a313a2263223b7d693a32323b613a323a7b693a303b733a323a223539223b693a313b733a313a2261223b7d693a32333b613a323a7b693a303b733a323a223537223b693a313b733a313a2263223b7d693a32343b613a323a7b693a303b733a323a223536223b693a313b733a313a2261223b7d693a32353b613a323a7b693a303b733a323a223535223b693a313b733a313a2263223b7d693a32363b613a323a7b693a303b733a323a223534223b693a313b733a313a2264223b7d693a32373b613a323a7b693a303b733a323a223533223b693a313b733a313a2262223b7d693a32383b613a323a7b693a303b733a323a223532223b693a313b733a313a2263223b7d693a32393b613a323a7b693a303b733a323a223531223b693a313b733a313a2263223b7d693a33303b613a323a7b693a303b733a323a223530223b693a313b733a313a2261223b7d693a33313b613a323a7b693a303b733a323a223439223b693a313b733a313a2261223b7d693a33323b613a323a7b693a303b733a323a223438223b693a313b733a313a2262223b7d693a33333b613a323a7b693a303b733a323a223437223b693a313b733a313a2262223b7d693a33343b613a323a7b693a303b733a323a223436223b693a313b733a313a2264223b7d693a33353b613a323a7b693a303b733a323a223435223b693a313b733a313a2261223b7d693a33363b613a323a7b693a303b733a323a223434223b693a313b733a313a2264223b7d693a33373b613a323a7b693a303b733a323a223433223b693a313b733a313a2261223b7d693a33383b613a323a7b693a303b733a323a223432223b693a313b733a313a2263223b7d693a33393b613a323a7b693a303b733a323a223431223b693a313b733a313a2261223b7d693a34303b613a323a7b693a303b733a323a223339223b693a313b733a313a2264223b7d693a34313b613a323a7b693a303b733a323a223338223b693a313b733a313a2263223b7d693a34323b613a323a7b693a303b733a323a223337223b693a313b733a313a2264223b7d693a34333b613a323a7b693a303b733a323a223336223b693a313b733a313a2264223b7d693a34343b613a323a7b693a303b733a323a223335223b693a313b733a313a2261223b7d693a34353b613a323a7b693a303b733a323a223334223b693a313b733a313a2263223b7d693a34363b613a323a7b693a303b733a323a223333223b693a313b733a313a2261223b7d693a34373b613a323a7b693a303b733a323a223332223b693a313b733a313a2261223b7d693a34383b613a323a7b693a303b733a323a223331223b693a313b733a313a2264223b7d693a34393b613a323a7b693a303b733a323a223330223b693a313b733a313a2262223b7d693a35303b613a323a7b693a303b733a323a223239223b693a313b733a313a2262223b7d693a35313b613a323a7b693a303b733a323a223238223b693a313b733a313a2262223b7d693a35323b613a323a7b693a303b733a323a223237223b693a313b733a313a2261223b7d693a35333b613a323a7b693a303b733a323a223236223b693a313b733a313a2263223b7d693a35343b613a323a7b693a303b733a323a223235223b693a313b733a313a2262223b7d693a35353b613a323a7b693a303b733a323a223234223b693a313b733a313a2262223b7d693a35363b613a323a7b693a303b733a323a223233223b693a313b733a313a2264223b7d693a35373b613a323a7b693a303b733a323a223232223b693a313b733a313a2264223b7d693a35383b613a323a7b693a303b733a323a223231223b693a313b733a313a2263223b7d693a35393b613a323a7b693a303b733a323a223230223b693a313b733a313a2264223b7d693a36303b613a323a7b693a303b733a323a223139223b693a313b733a313a2264223b7d693a36313b613a323a7b693a303b733a323a223138223b693a313b733a313a2263223b7d693a36323b613a323a7b693a303b733a323a223137223b693a313b733a313a2263223b7d693a36333b613a323a7b693a303b733a323a223136223b693a313b733a313a2263223b7d693a36343b613a323a7b693a303b733a323a223135223b693a313b733a313a2262223b7d693a36353b613a323a7b693a303b733a323a223134223b693a313b733a313a2263223b7d693a36363b613a323a7b693a303b733a323a223133223b693a313b733a313a2263223b7d693a36373b613a323a7b693a303b733a323a223132223b693a313b733a313a2263223b7d693a36383b613a323a7b693a303b733a323a223131223b693a313b733a313a2262223b7d693a36393b613a323a7b693a303b733a323a223130223b693a313b733a313a2261223b7d693a37303b613a323a7b693a303b733a313a2239223b693a313b733a313a2264223b7d693a37313b613a323a7b693a303b733a313a2238223b693a313b733a313a2261223b7d693a37323b613a323a7b693a303b733a313a2237223b693a313b733a313a2264223b7d693a37333b613a323a7b693a303b733a313a2235223b693a313b733a313a2262223b7d693a37343b613a323a7b693a303b733a313a2234223b693a313b733a313a2263223b7d693a37353b613a323a7b693a303b733a313a2233223b693a313b733a313a2263223b7d693a37363b613a323a7b693a303b733a313a2232223b693a313b733a313a2263223b7d693a37373b613a323a7b693a303b733a313a2231223b693a313b733a313a2261223b7d7d, '56', '78', 'mains'),
(11, 30, 1, 0x613a33313a7b693a303b613a323a7b693a303b733a323a223735223b693a313b733a313a2262223b7d693a313b613a323a7b693a303b733a323a223734223b693a313b733a313a2263223b7d693a323b613a323a7b693a303b733a323a223733223b693a313b733a313a2264223b7d693a333b613a323a7b693a303b733a323a223732223b693a313b733a313a2262223b7d693a343b613a323a7b693a303b733a323a223731223b693a313b733a313a2261223b7d693a353b613a323a7b693a303b733a323a223730223b693a313b733a313a2264223b7d693a363b613a323a7b693a303b733a323a223639223b693a313b733a313a2261223b7d693a373b613a323a7b693a303b733a323a223638223b693a313b733a313a2263223b7d693a383b613a323a7b693a303b733a323a223634223b693a313b733a313a2261223b7d693a393b613a323a7b693a303b733a323a223632223b693a313b733a313a2264223b7d693a31303b613a323a7b693a303b733a323a223538223b693a313b733a313a2263223b7d693a31313b613a323a7b693a303b733a323a223536223b693a313b733a313a2264223b7d693a31323b613a323a7b693a303b733a323a223535223b693a313b733a313a2261223b7d693a31333b613a323a7b693a303b733a323a223533223b693a313b733a313a2262223b7d693a31343b613a323a7b693a303b733a323a223532223b693a313b733a313a2262223b7d693a31353b613a323a7b693a303b733a323a223531223b693a313b733a313a2262223b7d693a31363b613a323a7b693a303b733a323a223530223b693a313b733a313a2261223b7d693a31373b613a323a7b693a303b733a323a223439223b693a313b733a313a2262223b7d693a31383b613a323a7b693a303b733a323a223438223b693a313b733a313a2262223b7d693a31393b613a323a7b693a303b733a323a223437223b693a313b733a313a2262223b7d693a32303b613a323a7b693a303b733a323a223436223b693a313b733a313a2263223b7d693a32313b613a323a7b693a303b733a323a223434223b693a313b733a313a2262223b7d693a32323b613a323a7b693a303b733a323a223433223b693a313b733a313a2261223b7d693a32333b613a323a7b693a303b733a323a223337223b693a313b733a313a2262223b7d693a32343b613a323a7b693a303b733a313a2234223b693a313b733a313a2263223b7d693a32353b613a323a7b693a303b733a313a2232223b693a313b733a313a2262223b7d693a32363b613a323a7b693a303b733a313a2231223b693a313b733a313a2261223b7d693a32373b613a323a7b693a303b733a323a223432223b693a313b733a313a2263223b7d693a32383b613a323a7b693a303b733a323a223431223b693a313b733a313a2261223b7d693a32393b613a323a7b693a303b733a323a223335223b693a313b733a313a2262223b7d693a33303b613a323a7b693a303b733a323a223333223b693a313b733a313a2261223b7d7d, '16', '31', 'mains'),
(13, 3, 1, 0x613a38393a7b693a303b613a323a7b693a303b733a323a223930223b693a313b733a313a2263223b7d693a313b613a323a7b693a303b733a323a223839223b693a313b733a313a2261223b7d693a323b613a323a7b693a303b733a323a223838223b693a313b733a313a2261223b7d693a333b613a323a7b693a303b733a323a223837223b693a313b733a313a2261223b7d693a343b613a323a7b693a303b733a323a223836223b693a313b733a313a2261223b7d693a353b613a323a7b693a303b733a323a223835223b693a313b733a313a2262223b7d693a363b613a323a7b693a303b733a323a223834223b693a313b733a313a2262223b7d693a373b613a323a7b693a303b733a323a223833223b693a313b733a313a2262223b7d693a383b613a323a7b693a303b733a323a223832223b693a313b733a313a2261223b7d693a393b613a323a7b693a303b733a323a223831223b693a313b733a313a2264223b7d693a31303b613a323a7b693a303b733a323a223830223b693a313b733a313a2261223b7d693a31313b613a323a7b693a303b733a323a223739223b693a313b733a313a2262223b7d693a31323b613a323a7b693a303b733a323a223738223b693a313b733a313a2263223b7d693a31333b613a323a7b693a303b733a323a223737223b693a313b733a313a2264223b7d693a31343b613a323a7b693a303b733a323a223736223b693a313b733a313a2263223b7d693a31353b613a323a7b693a303b733a323a223735223b693a313b733a313a2262223b7d693a31363b613a323a7b693a303b733a323a223734223b693a313b733a313a2261223b7d693a31373b613a323a7b693a303b733a323a223733223b693a313b733a313a2264223b7d693a31383b613a323a7b693a303b733a323a223732223b693a313b733a313a2261223b7d693a31393b613a323a7b693a303b733a323a223731223b693a313b733a313a2264223b7d693a32303b613a323a7b693a303b733a323a223730223b693a313b733a313a2261223b7d693a32313b613a323a7b693a303b733a323a223639223b693a313b733a313a2262223b7d693a32323b613a323a7b693a303b733a323a223638223b693a313b733a313a2261223b7d693a32333b613a323a7b693a303b733a323a223637223b693a313b733a313a2264223b7d693a32343b613a323a7b693a303b733a323a223636223b693a313b733a313a2263223b7d693a32353b613a323a7b693a303b733a323a223635223b693a313b733a313a2263223b7d693a32363b613a323a7b693a303b733a323a223634223b693a313b733a313a2261223b7d693a32373b613a323a7b693a303b733a323a223633223b693a313b733a313a2264223b7d693a32383b613a323a7b693a303b733a323a223632223b693a313b733a313a2263223b7d693a32393b613a323a7b693a303b733a323a223631223b693a313b733a313a2262223b7d693a33303b613a323a7b693a303b733a323a223539223b693a313b733a313a2261223b7d693a33313b613a323a7b693a303b733a323a223538223b693a313b733a313a2263223b7d693a33323b613a323a7b693a303b733a323a223537223b693a313b733a313a2261223b7d693a33333b613a323a7b693a303b733a323a223536223b693a313b733a313a2261223b7d693a33343b613a323a7b693a303b733a323a223535223b693a313b733a313a2262223b7d693a33353b613a323a7b693a303b733a323a223534223b693a313b733a313a2262223b7d693a33363b613a323a7b693a303b733a323a223533223b693a313b733a313a2262223b7d693a33373b613a323a7b693a303b733a323a223532223b693a313b733a313a2261223b7d693a33383b613a323a7b693a303b733a323a223531223b693a313b733a313a2263223b7d693a33393b613a323a7b693a303b733a323a223530223b693a313b733a313a2261223b7d693a34303b613a323a7b693a303b733a323a223439223b693a313b733a313a2261223b7d693a34313b613a323a7b693a303b733a323a223438223b693a313b733a313a2262223b7d693a34323b613a323a7b693a303b733a323a223437223b693a313b733a313a2262223b7d693a34333b613a323a7b693a303b733a323a223436223b693a313b733a313a2263223b7d693a34343b613a323a7b693a303b733a323a223435223b693a313b733a313a2261223b7d693a34353b613a323a7b693a303b733a323a223434223b693a313b733a313a2262223b7d693a34363b613a323a7b693a303b733a323a223433223b693a313b733a313a2261223b7d693a34373b613a323a7b693a303b733a323a223432223b693a313b733a313a2263223b7d693a34383b613a323a7b693a303b733a323a223431223b693a313b733a313a2261223b7d693a34393b613a323a7b693a303b733a323a223430223b693a313b733a313a2261223b7d693a35303b613a323a7b693a303b733a323a223339223b693a313b733a313a2264223b7d693a35313b613a323a7b693a303b733a323a223338223b693a313b733a313a2263223b7d693a35323b613a323a7b693a303b733a323a223337223b693a313b733a313a2262223b7d693a35333b613a323a7b693a303b733a323a223336223b693a313b733a313a2264223b7d693a35343b613a323a7b693a303b733a323a223335223b693a313b733a313a2261223b7d693a35353b613a323a7b693a303b733a323a223334223b693a313b733a313a2263223b7d693a35363b613a323a7b693a303b733a323a223333223b693a313b733a313a2261223b7d693a35373b613a323a7b693a303b733a323a223332223b693a313b733a313a2261223b7d693a35383b613a323a7b693a303b733a323a223331223b693a313b733a313a2261223b7d693a35393b613a323a7b693a303b733a323a223330223b693a313b733a313a2263223b7d693a36303b613a323a7b693a303b733a323a223239223b693a313b733a313a2262223b7d693a36313b613a323a7b693a303b733a323a223238223b693a313b733a313a2262223b7d693a36323b613a323a7b693a303b733a323a223237223b693a313b733a313a2261223b7d693a36333b613a323a7b693a303b733a323a223236223b693a313b733a313a2263223b7d693a36343b613a323a7b693a303b733a323a223235223b693a313b733a313a2262223b7d693a36353b613a323a7b693a303b733a323a223234223b693a313b733a313a2262223b7d693a36363b613a323a7b693a303b733a323a223233223b693a313b733a313a2263223b7d693a36373b613a323a7b693a303b733a323a223232223b693a313b733a313a2264223b7d693a36383b613a323a7b693a303b733a323a223231223b693a313b733a313a2264223b7d693a36393b613a323a7b693a303b733a323a223230223b693a313b733a313a2264223b7d693a37303b613a323a7b693a303b733a323a223139223b693a313b733a313a2264223b7d693a37313b613a323a7b693a303b733a323a223138223b693a313b733a313a2263223b7d693a37323b613a323a7b693a303b733a323a223137223b693a313b733a313a2261223b7d693a37333b613a323a7b693a303b733a323a223136223b693a313b733a313a2263223b7d693a37343b613a323a7b693a303b733a323a223135223b693a313b733a313a2261223b7d693a37353b613a323a7b693a303b733a323a223134223b693a313b733a313a2264223b7d693a37363b613a323a7b693a303b733a323a223133223b693a313b733a313a2263223b7d693a37373b613a323a7b693a303b733a323a223132223b693a313b733a313a2261223b7d693a37383b613a323a7b693a303b733a323a223131223b693a313b733a313a2262223b7d693a37393b613a323a7b693a303b733a323a223130223b693a313b733a313a2261223b7d693a38303b613a323a7b693a303b733a313a2239223b693a313b733a313a2262223b7d693a38313b613a323a7b693a303b733a313a2238223b693a313b733a313a2264223b7d693a38323b613a323a7b693a303b733a313a2237223b693a313b733a313a2264223b7d693a38333b613a323a7b693a303b733a313a2236223b693a313b733a313a2262223b7d693a38343b613a323a7b693a303b733a313a2235223b693a313b733a313a2262223b7d693a38353b613a323a7b693a303b733a313a2234223b693a313b733a313a2263223b7d693a38363b613a323a7b693a303b733a313a2233223b693a313b733a313a2264223b7d693a38373b613a323a7b693a303b733a313a2232223b693a313b733a313a2263223b7d693a38383b613a323a7b693a303b733a313a2231223b693a313b733a313a2261223b7d7d, '61', '89', 'mains'),
(14, 36, 11, 0x613a39323a7b693a303b613a323a7b693a303b733a333a22323730223b693a313b733a313a2261223b7d693a313b613a323a7b693a303b733a333a22323639223b693a313b733a313a2261223b7d693a323b613a323a7b693a303b733a333a22323638223b693a313b733a313a2261223b7d693a333b613a323a7b693a303b733a333a22323637223b693a313b733a313a2261223b7d693a343b613a323a7b693a303b733a333a22323636223b693a313b733a313a2261223b7d693a353b613a323a7b693a303b733a333a22323635223b693a313b733a313a2262223b7d693a363b613a323a7b693a303b733a333a22323634223b693a313b733a313a2263223b7d693a373b613a323a7b693a303b733a333a22323633223b693a313b733a313a2263223b7d693a383b613a323a7b693a303b733a333a22323632223b693a313b733a313a2262223b7d693a393b613a323a7b693a303b733a333a22323631223b693a313b733a313a2263223b7d693a31303b613a323a7b693a303b733a333a22323630223b693a313b733a313a2261223b7d693a31313b613a323a7b693a303b733a333a22323539223b693a313b733a313a2262223b7d693a31323b613a323a7b693a303b733a333a22323538223b693a313b733a313a2261223b7d693a31333b613a323a7b693a303b733a333a22323537223b693a313b733a313a2264223b7d693a31343b613a323a7b693a303b733a333a22323536223b693a313b733a313a2261223b7d693a31353b613a323a7b693a303b733a333a22323535223b693a313b733a313a2261223b7d693a31363b613a323a7b693a303b733a333a22323534223b693a313b733a313a2263223b7d693a31373b613a323a7b693a303b733a333a22323533223b693a313b733a313a2262223b7d693a31383b613a323a7b693a303b733a333a22323532223b693a313b733a313a2261223b7d693a31393b613a323a7b693a303b733a333a22323531223b693a313b733a313a2263223b7d693a32303b613a323a7b693a303b733a333a22323530223b693a313b733a313a2264223b7d693a32313b613a323a7b693a303b733a333a22323439223b693a313b733a313a2263223b7d693a32323b613a323a7b693a303b733a333a22323438223b693a313b733a313a2263223b7d693a32333b613a323a7b693a303b733a333a22323437223b693a313b733a313a2262223b7d693a32343b613a323a7b693a303b733a333a22323436223b693a313b733a313a2261223b7d693a32353b613a323a7b693a303b733a333a22323435223b693a313b733a313a2262223b7d693a32363b613a323a7b693a303b733a333a22323434223b693a313b733a313a2262223b7d693a32373b613a323a7b693a303b733a333a22323433223b693a313b733a313a2263223b7d693a32383b613a323a7b693a303b733a333a22323432223b693a313b733a313a2261223b7d693a32393b613a323a7b693a303b733a333a22323431223b693a313b733a313a2263223b7d693a33303b613a323a7b693a303b733a333a22323430223b693a313b733a313a2262223b7d693a33313b613a323a7b693a303b733a333a22323339223b693a313b733a313a2261223b7d693a33323b613a323a7b693a303b733a333a22323338223b693a313b733a313a2261223b7d693a33333b613a323a7b693a303b733a333a22323337223b693a313b733a313a2263223b7d693a33343b613a323a7b693a303b733a333a22323336223b693a313b733a313a2264223b7d693a33353b613a323a7b693a303b733a333a22323335223b693a313b733a313a2261223b7d693a33363b613a323a7b693a303b733a333a22323334223b693a313b733a313a2263223b7d693a33373b613a323a7b693a303b733a333a22323333223b693a313b733a313a2263223b7d693a33383b613a323a7b693a303b733a333a22323331223b693a313b733a313a2263223b7d693a33393b613a323a7b693a303b733a333a22323330223b693a313b733a313a2262223b7d693a34303b613a323a7b693a303b733a333a22323239223b693a313b733a313a2262223b7d693a34313b613a323a7b693a303b733a333a22323238223b693a313b733a313a2263223b7d693a34323b613a323a7b693a303b733a333a22323237223b693a313b733a313a2264223b7d693a34333b613a323a7b693a303b733a333a22323236223b693a313b733a313a2264223b7d693a34343b613a323a7b693a303b733a333a22323235223b693a313b733a313a2262223b7d693a34353b613a323a7b693a303b733a333a22323234223b693a313b733a313a2263223b7d693a34363b613a323a7b693a303b733a333a22323233223b693a313b733a313a2261223b7d693a34373b613a323a7b693a303b733a333a22323232223b693a313b733a313a2261223b7d693a34383b613a323a7b693a303b733a333a22323231223b693a313b733a313a2264223b7d693a34393b613a323a7b693a303b733a333a22323230223b693a313b733a313a2263223b7d693a35303b613a323a7b693a303b733a333a22323139223b693a313b733a313a2262223b7d693a35313b613a323a7b693a303b733a333a22323138223b693a313b733a313a2261223b7d693a35323b613a323a7b693a303b733a333a22323137223b693a313b733a313a2264223b7d693a35333b613a323a7b693a303b733a333a22323136223b693a313b733a313a2262223b7d693a35343b613a323a7b693a303b733a333a22323135223b693a313b733a313a2264223b7d693a35353b613a323a7b693a303b733a333a22323134223b693a313b733a313a2261223b7d693a35363b613a323a7b693a303b733a333a22323133223b693a313b733a313a2261223b7d693a35373b613a323a7b693a303b733a333a22323132223b693a313b733a313a2263223b7d693a35383b613a323a7b693a303b733a333a22323131223b693a313b733a313a2262223b7d693a35393b613a323a7b693a303b733a333a22323130223b693a313b733a313a2263223b7d693a36303b613a323a7b693a303b733a333a22323039223b693a313b733a313a2261223b7d693a36313b613a323a7b693a303b733a333a22323038223b693a313b733a313a2264223b7d693a36323b613a323a7b693a303b733a333a22323037223b693a313b733a313a2262223b7d693a36333b613a323a7b693a303b733a333a22323035223b693a313b733a313a2261223b7d693a36343b613a323a7b693a303b733a333a22323034223b693a313b733a313a2261223b7d693a36353b613a323a7b693a303b733a333a22323033223b693a313b733a313a2261223b7d693a36363b613a323a7b693a303b733a333a22323032223b693a313b733a313a2263223b7d693a36373b613a323a7b693a303b733a333a22323031223b693a313b733a313a2264223b7d693a36383b613a323a7b693a303b733a333a22323030223b693a313b733a313a2261223b7d693a36393b613a323a7b693a303b733a333a22313939223b693a313b733a313a2264223b7d693a37303b613a323a7b693a303b733a333a22313938223b693a313b733a313a2262223b7d693a37313b613a323a7b693a303b733a333a22313937223b693a313b733a313a2261223b7d693a37323b613a323a7b693a303b733a333a22313936223b693a313b733a313a2264223b7d693a37333b613a323a7b693a303b733a333a22313935223b693a313b733a313a2262223b7d693a37343b613a323a7b693a303b733a333a22313934223b693a313b733a313a2261223b7d693a37353b613a323a7b693a303b733a333a22313933223b693a313b733a313a2264223b7d693a37363b613a323a7b693a303b733a333a22313932223b693a313b733a313a2261223b7d693a37373b613a323a7b693a303b733a333a22313931223b693a313b733a313a2264223b7d693a37383b613a323a7b693a303b733a333a22313930223b693a313b733a313a2263223b7d693a37393b613a323a7b693a303b733a333a22313839223b693a313b733a313a2263223b7d693a38303b613a323a7b693a303b733a333a22313837223b693a313b733a313a2264223b7d693a38313b613a323a7b693a303b733a333a22313836223b693a313b733a313a2261223b7d693a38323b613a323a7b693a303b733a333a22313835223b693a313b733a313a2261223b7d693a38333b613a323a7b693a303b733a333a22313834223b693a313b733a313a2262223b7d693a38343b613a323a7b693a303b733a333a22313833223b693a313b733a313a2263223b7d693a38353b613a323a7b693a303b733a333a22313831223b693a313b733a313a2263223b7d693a38363b613a323a7b693a303b733a323a223936223b693a313b733a313a2262223b7d693a38373b613a323a7b693a303b733a323a223935223b693a313b733a313a2264223b7d693a38383b613a323a7b693a303b733a323a223934223b693a313b733a313a2261223b7d693a38393b613a323a7b693a303b733a323a223933223b693a313b733a313a2261223b7d693a39303b613a323a7b693a303b733a323a223932223b693a313b733a313a2264223b7d693a39313b613a323a7b693a303b733a323a223931223b693a313b733a313a2263223b7d7d, '49', '92', 'mains');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `course_id` (`c_id`);

--
-- Indexes for table `rankings`
--
ALTER TABLE `rankings`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uuid`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `users_solutions`
--
ALTER TABLE `users_solutions`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `user_id` (`uuid`),
  ADD KEY `course_id1` (`c_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;

--
-- AUTO_INCREMENT for table `rankings`
--
ALTER TABLE `rankings`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uuid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users_solutions`
--
ALTER TABLE `users_solutions`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `course_id` FOREIGN KEY (`c_id`) REFERENCES `courses` (`c_id`);

--
-- Constraints for table `users_solutions`
--
ALTER TABLE `users_solutions`
  ADD CONSTRAINT `course_id1` FOREIGN KEY (`c_id`) REFERENCES `courses` (`c_id`),
  ADD CONSTRAINT `user_id` FOREIGN KEY (`uuid`) REFERENCES `users` (`uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
