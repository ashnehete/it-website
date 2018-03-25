-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2018 at 08:58 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `it-website`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `achievement_id` int(11) NOT NULL,
  `year` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`achievement_id`, `year`) VALUES
(124, '2018-03-13'),
(345, '2017-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `award`
--

CREATE TABLE `award` (
  `achievement_id` int(11) NOT NULL,
  `details` varchar(400) NOT NULL,
  `field` varchar(100) NOT NULL,
  `prize` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `award`
--

INSERT INTO `award` (`achievement_id`, `details`, `field`, `prize`) VALUES
(345, 'Dance competition', 'Extra curicular', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `competetive_exams`
--

CREATE TABLE `competetive_exams` (
  `achievement_id` int(11) NOT NULL,
  `name_of_exam` varchar(100) NOT NULL,
  `rank` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `competetive_exams`
--

INSERT INTO `competetive_exams` (`achievement_id`, `name_of_exam`, `rank`, `score`) VALUES
(124, 'GRE', 123, 300);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(40) NOT NULL,
  `semester` int(11) NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `semester`, `credit`) VALUES
(102, 'Datastructures', 4, 5),
(103, 'Datastructures and Algorithms', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(40) NOT NULL,
  `specialization` varchar(40) NOT NULL,
  `designation` varchar(40) NOT NULL,
  `contact` int(11) NOT NULL,
  `qualification` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `specialization`, `designation`, `contact`, `qualification`) VALUES
(23, 'Swapnali Kurhade', 'Java', 'teacher', 98394027, 'BE'),
(56, 'Rupali Sawant', 'Datastructures', 'teacher', 982302896, 'BE ');

-- --------------------------------------------------------

--
-- Table structure for table `mini_project`
--

CREATE TABLE `mini_project` (
  `project_id` int(11) NOT NULL,
  `subject` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mini_project`
--

INSERT INTO `mini_project` (`project_id`, `subject`) VALUES
(1, 'DBMS');

-- --------------------------------------------------------

--
-- Table structure for table `placement`
--

CREATE TABLE `placement` (
  `year` date NOT NULL,
  `internship` varchar(40) NOT NULL,
  `company_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placement`
--

INSERT INTO `placement` (`year`, `internship`, `company_name`) VALUES
('2017-06-07', 'no', 'Morgan Stanley'),
('2018-03-08', 'yes', 'Credit Suisse');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` int(11) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `mentor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `semester`, `topic`, `mentor`) VALUES
(1, '4', 'Hospital Management System', 'Rupali Ma''am'),
(2, '7', 'Cloud Computing', 'Swapnali Ma''am');

-- --------------------------------------------------------

--
-- Table structure for table `publication`
--

CREATE TABLE `publication` (
  `doi` int(11) NOT NULL,
  `conference` varchar(40) NOT NULL,
  `year` date NOT NULL,
  `field` varchar(40) NOT NULL,
  `publication_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publication`
--

INSERT INTO `publication` (`doi`, `conference`, `year`, `field`, `publication_name`) VALUES
(198, 'ICICI', '2018-03-22', 'Artificial Intelligence', 'captcha -recaptcha'),
(1234, 'IEEE', '2017-09-20', 'internet of things', 'Smart car');

-- --------------------------------------------------------

--
-- Table structure for table `research_project`
--

CREATE TABLE `research_project` (
  `project_id` int(11) NOT NULL,
  `research_publication` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `research_project`
--

INSERT INTO `research_project` (`project_id`, `research_publication`) VALUES
(2, 'IEEE');

-- --------------------------------------------------------

--
-- Table structure for table `scope`
--

CREATE TABLE `scope` (
  `scope_name` varchar(40) NOT NULL,
  `modules` varchar(40) NOT NULL,
  `medals` varchar(10) NOT NULL,
  `point_of_contact` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scope`
--

INSERT INTO `scope` (`scope_name`, `modules`, `medals`, `point_of_contact`) VALUES
('Morgan Stanley', 'Data structure and algos', '3', 'Swapnali Ma''am'),
('SpJimr', 'Marketing,Economics', '3', 'Rathod sir');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(40) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `year_of_graduation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `contact`, `year_of_graduation`) VALUES
(1, 'Anushree Kulai', 9823457190, '2020-05-31'),
(2, 'Urvi Bhanushali', 9820409982, '2020-05-31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`achievement_id`);

--
-- Indexes for table `award`
--
ALTER TABLE `award`
  ADD KEY `achievement_id` (`achievement_id`),
  ADD KEY `achievement_id_2` (`achievement_id`);

--
-- Indexes for table `competetive_exams`
--
ALTER TABLE `competetive_exams`
  ADD KEY `achievement_id` (`achievement_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `mini_project`
--
ALTER TABLE `mini_project`
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `publication`
--
ALTER TABLE `publication`
  ADD PRIMARY KEY (`doi`);

--
-- Indexes for table `research_project`
--
ALTER TABLE `research_project`
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `scope`
--
ALTER TABLE `scope`
  ADD PRIMARY KEY (`scope_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `award`
--
ALTER TABLE `award`
  ADD CONSTRAINT `award_ibfk_1` FOREIGN KEY (`achievement_id`) REFERENCES `achievements` (`achievement_id`);

--
-- Constraints for table `competetive_exams`
--
ALTER TABLE `competetive_exams`
  ADD CONSTRAINT `competetive_exams_ibfk_1` FOREIGN KEY (`achievement_id`) REFERENCES `achievements` (`achievement_id`);

--
-- Constraints for table `mini_project`
--
ALTER TABLE `mini_project`
  ADD CONSTRAINT `mini_project_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

--
-- Constraints for table `research_project`
--
ALTER TABLE `research_project`
  ADD CONSTRAINT `research_project_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `project` (`project_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
