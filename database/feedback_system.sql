-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2020 at 09:23 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user`, `pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `mobile`, `message`, `Date`) VALUES
(5, 'Gopal Kumar', '200101120096@cutm.ac.in', 9523426614, 'I have created this website', '2023-03-30 17:53:28'),
(6, 'Yedla Suresh Kumar', '200101120067@cutm.ac.in', 7205724122, 'I have created this website', '2023-03-30 17:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `user_alias` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `programme` varchar(50) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(75) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `date` datetime NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `user_alias`, `Name`, `designation`, `programme`, `semester`, `email`, `password`, `mobile`, `date`, `status`) VALUES
(01, 'jagannath123', 'jagannathpadhy', 'Assistant Professior', 'B.Tech', 'vi', 'jagannath123@cutm.ac.in', 'jp@12345', 8917399363, '2023-03-30 14:30:53', 1),
(02, 'soumench123', 'soumenchakraborthy', 'Assistant Professior', 'B.Tech', 'vi', 'soumench123@cutm.ac.in', 'sch@12345', 9007389848, '2023-03-30 14:37:35', 2),
(03, 'dhawleswar123', 'dhawleswarrao', 'Assistant Professior', 'B.Tech', 'vi', 'dhawleswar123@cutm.ac.in', 'dhr@12345', 7779871797, '2023-03-30 14:37:35', 3),
(04, 'rajesh123', 'rajeshmishra', 'Assistant Professior', 'B.Tech', 'vi', 'rajeshmishra123@cutm.ac.in', 'rm@12345', 8984152388, '2023-03-30 14:37:35', 4),
(05, 'sushant123', 'sushantnahak', 'Assistant Professior', 'B.Tech', 'vi', 'sushantnahak123@cutm.ac.in', 'sn@12345', 9420352211, '2023-03-30 14:37:35', 5),
(06, 'debender123', 'debendermaharana', 'Head of the Department', 'B.Tech', 'iv', 'debender123@cutm.ac.in', 'dm@12345', 7008798443, '2023-03-30 14:37:35', 1),
(07, 'rajen123', 'rajenboss', 'Assistant Professior', 'B.Tech', 'vi', 'rajen123@cutm.ac.in', 'rb@12345', 7010479500, '2023-03-30 14:37:35', 1),
(08, 'ashish', 'ashishranjandas', 'Professior DEAN(SoET)', 'B.Tech', 'iv', 'ashish123@cutm.ac.in', 'ard@12345', 9437268679, '2023-03-30 14:37:35', 1);
-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `faculty_id` varchar(50) NOT NULL,
  `Teacher provided the course outline having weekly content plan w` enum('5','4','3','2','1') NOT NULL,
  `Course objectives,learning outcomes and grading criteria are cle` enum('5','4','3','2','1') NOT NULL,
  `Course integrates throretical course concepts with the real worl` enum('5','4','3','2','1') NOT NULL,
  `Teacher is punctual,arrives on time and leaves on time` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at stimulating the interest in the course conten` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at explaining the subject matter` enum('5','4','3','2','1') NOT NULL,
  `Teacher's presentation was clear,loud ad easy to understand` enum('5','4','3','2','1') NOT NULL,
  `Teacher is good at using innovative teaching methods/ways` enum('5','4','3','2','1') NOT NULL,
  `Teacher is available and helpful during counseling hours` enum('5','4','3','2','1') NOT NULL,
  `Teacher has competed the whole course as per course outline` enum('5','4','3','2','1') NOT NULL,
  `Teacher was always fair and impartial:` enum('5','4','3','2','1') NOT NULL,
  `Assessments conducted are clearly connected to maximize learinin` enum('5','4','3','2','1') NOT NULL,
  `What I liked about the course` text NOT NULL,
  `Why I disliked about the course` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `student_id`, `faculty_id`, `Teacher provided the course outline having weekly content plan w`, `Course objectives,learning outcomes and grading criteria are cle`, `Course integrates throretical course concepts with the real worl`, `Teacher is punctual,arrives on time and leaves on time`, `Teacher is good at stimulating the interest in the course conten`, `Teacher is good at explaining the subject matter`, `Teacher's presentation was clear,loud ad easy to understand`, `Teacher is good at using innovative teaching methods/ways`, `Teacher is available and helpful during counseling hours`, `Teacher has competed the whole course as per course outline`, `Teacher was always fair and impartial:`, `Assessments conducted are clearly connected to maximize learinin`, `What I liked about the course`, `Why I disliked about the course`, `date`) VALUES
(96, 'gopal123@cutm.ac.in', 'jagannath123@cutm.ac.in', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\jp\gxxxxxxxxxxx', 'excellent', '2023-03-30'),
(67, 'suresh@cutm.ac.in', 'jagannath123@cutm.ac.in', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\jp\sxxxxxxxxxxx', 'excellent', '2023-03-30'),
(116, 'knikhil123@cutm.ac.in', 'jagannath123@cutm.ac.in', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\n\gxxxxxxxxxxx', 'excellent', '2023-03-30'),
(130, 'sibo123@cutm.ac.in', 'jagannath123@cutm.ac.in', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\jp\sbxxxxxxxxxxx', 'excellent', '2023-03-30'),
(131, 'saikiran123@cutm.ac.in', 'jagannath123@cutm.ac.in', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '\jp\skxxxxxxxxxxx', 'excellent', '2023-03-30');
-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `notice_id` int(11) NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`notice_id`, `attachment`, `subject`, `Description`, `Date`) VALUES
(01, 'feedback.docx', 'Advanced_Web_Programming', 'This_course_is_very_helful', '2023-03-30 12:39:35');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` char(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `programme` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `gender` varchar(40) NOT NULL,
  `hobbies` varchar(40) NOT NULL,
  `image` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `regid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `pass`, `mobile`, `programme`, `semester`, `gender`, `hobbies`, `image`, `dob`, `regid`) VALUES
(96, 'Gopal Kumar', '200101120096@cutm.ac.in', 'cutm@12345', 9523426614, 'B.Tech', 'vi', 'm', 'swimming', 'gopal.jpg', '2002-12-01', '2023-03-30 15:52:01'),
(67, 'Yedla Suresh Kumar', '200101120067@cutm.ac.in', 'cutm@12345', 7205724122, 'B.Tech', 'vi', 'm', 'reading', 'suresh.jpg', '2002-12-20', '2023-03-30 15:52:01'),
(116, 'Konchada Nikhil', '200101120116@cutm.ac.in', 'cutm@12345', 9178525694, 'B.Tech', 'vi', 'm', 'reading', 'nikhil.jpg', '2002-12-30', '2023-03-30 15:52:01'),
(130, 'Sibo Kumar Borado', '200101121130@cutm.ac.in', 'cutm@12345', 7995142524, 'B.Tech', 'vi', 'm', 'reading', 'sibo.jpg', '2002-12-25', '2023-03-30 15:52:01'),
(131, 'T Sai Kiran', '200101121131@cutm.ac.in', 'cutm@12345', 8480875954, 'B.Tech', 'vi', 'm', 'reading', 'skiran.jpg', '2002-12-26', '2023-03-30 15:52:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);
ALTER TABLE `user` ADD FULLTEXT KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
