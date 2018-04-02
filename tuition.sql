-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2018 at 05:32 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tuition`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `user_name`, `email`, `password`, `photo`) VALUES
(1, 'Hardik Thakkar', 'admin@gmail.com', '07071997', '2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `branch_mst`
--

CREATE TABLE `branch_mst` (
  `branch_id` int(11) NOT NULL,
  `branch_area` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `phone_no1` varchar(13) NOT NULL,
  `phone_no2` varchar(13) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_mst`
--

INSERT INTO `branch_mst` (`branch_id`, `branch_area`, `address`, `phone_no1`, `phone_no2`, `email`) VALUES
(3, 'Mumbai', 'Fort, Mumbai', '022-12345678', '022-16547899', 'mumbai@mediamaggi.com'),
(4, 'Thane', 'Charai, Thane', '022-12345678', '022-16547899', 'thane@mediamaggi.com');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_mst`
--

CREATE TABLE `faculty_mst` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(250) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `degree` varchar(250) NOT NULL,
  `achievment` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_mst`
--

INSERT INTO `faculty_mst` (`faculty_id`, `faculty_name`, `experience`, `degree`, `achievment`, `description`, `email`, `password`, `photo`, `contact_no`, `gender`, `active`) VALUES
(9, 'Mr. ABC2', '52', 'MCA2', 'test2', ' Test2', 'test@gmail.com', '123456', 'Mr__ABC2_1503414549.jpeg', '98712347892', 'Male', 0),
(16, 'Ranajit Basu', '10', 'MA', 'Gold Medal', ' Hello there,', 'ranajit@gmail.com', 'abc123', 'Ranajit_Basu_1504233585.jpeg', '9874563210', 'Male', 1),
(17, 'nirav', '14', 'MCA', 'NA', ' Nice sir, Testing faculty login', 'nirav.ahm@gmail.com', '123456', 'nirav_1504945219.jpeg', '7710097733', 'Male', 1),
(20, 'Viper', '5', 'B.Tech In I.T.', '55', ' ', 'hardikthakkar0707@gmail.com', '07071997', 'female.png', '8655305437', 'Female', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faculty_std_sub`
--

CREATE TABLE `faculty_std_sub` (
  `faculty_std_sub_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `subjects` varchar(250) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `faculty_std_sub`
--

INSERT INTO `faculty_std_sub` (`faculty_std_sub_id`, `faculty_id`, `standard_id`, `subjects`) VALUES
(25, 16, 1, 'English,Maths,Science'),
(26, 16, 2, 'Maths,English,History'),
(27, 16, 8, 'Civics2'),
(34, 9, 1, 'English,Maths,Science'),
(35, 9, 2, 'Maths,English,History'),
(36, 9, 3, 'Science,Maths'),
(37, 9, 6, 'History'),
(38, 17, 1, 'English,Maths,Science'),
(39, 17, 3, 'Maths'),
(51, 20, 2, 'Maths,English'),
(52, 20, 7, 'Geography');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_mst`
--

CREATE TABLE `gallery_mst` (
  `category` varchar(15) NOT NULL,
  `description` varchar(25) NOT NULL,
  `photo` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery_mst`
--

INSERT INTO `gallery_mst` (`category`, `description`, `photo`) VALUES
('Classroom', 'asd', 'asd_1516556262.jpeg'),
('Classroom', 'sadasd', 'sadasd_1516556271.jpeg'),
('Event', 'adasdasd', 'adasdasd_1516556279.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `private_announcement`
--

CREATE TABLE `private_announcement` (
  `id` int(200) NOT NULL,
  `photo` varchar(256) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `private_announcement`
--

INSERT INTO `private_announcement` (`id`, `photo`, `title`, `description`, `standard_id`, `subject`, `student_id`, `date`) VALUES
(1, 'jsdhjkad.jpeg', 'Hardik', 'dasasdsadasdasdasdasd', 1, 'Maths', 56, '0000-00-00'),
(2, 'sajda.jpeg', 'kkkkkk', 'adasdasndbasdbjkashbdjkhahdadhashjdbhjasdhjasdhjkasdjdhjsadhjsadhjsdhjsadhjasdjasdhj', 2, 'English', 56, '2017-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `public_announcement`
--

CREATE TABLE `public_announcement` (
  `id` int(250) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(750) NOT NULL,
  `photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `public_announcement`
--

INSERT INTO `public_announcement` (`id`, `date`, `title`, `description`, `photo`) VALUES
(3, '2018-02-07', 'Hardik', 'My name is Hardik', 'Hardik_1517988901.jpeg'),
(4, '2018-02-08', 'Events', 'jashdkjsakjdkajsdkjashdkjah', 'Events_1518076374.jpeg'),
(6, '2018-02-08', 'IPL Auction 2017', 'sadasdasdad', 'IPL_Auction_2017_1518076487.jpeg'),
(9, '2018-03-24', '123456', 'jasdjksadjkadjsajdhjaskdhjkashdjksadhjkasdhjkasdhjkasdhjkasdhkjasdhjkasdhjksadhjkasdhkjasdhjksadhkjsdhjksadhkjasdhkjasdhkjasdhkjasdhkjasdhk', '123456_1521887082.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `result_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `marks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`result_id`, `roll_no`, `test_id`, `standard_id`, `subject`, `marks`) VALUES
(3, 55, 4, 1, 'History', '10/50'),
(4, 159, 4, 1, 'History', '12/50'),
(5, 55, 5, 1, 'History', '40/50'),
(6, 159, 5, 1, 'History', '33/50'),
(7, 55, 6, 1, 'Maths', '60/75'),
(8, 159, 6, 1, 'Maths', '70/75'),
(9, 55, 7, 1, 'Maths', '45/75'),
(10, 159, 7, 1, 'Maths', '42/75'),
(11, 55, 8, 1, 'Maths', '25/50'),
(12, 159, 8, 1, 'Maths', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `standard_mst`
--

CREATE TABLE `standard_mst` (
  `standard_id` int(11) NOT NULL,
  `standard` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `standard_mst`
--

INSERT INTO `standard_mst` (`standard_id`, `standard`) VALUES
(1, '1st'),
(2, '2nd'),
(3, '3rd'),
(4, '4th'),
(5, '5th'),
(6, '6th'),
(7, '7th'),
(8, '8th'),
(9, '9th'),
(10, '10th'),
(11, '11th'),
(12, '12th'),
(17, '12th science ');

-- --------------------------------------------------------

--
-- Table structure for table `student_mst`
--

CREATE TABLE `student_mst` (
  `stud_id` int(11) NOT NULL,
  `roll_no` int(11) NOT NULL,
  `stud_name` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `standard_id` int(11) DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `email_id` varchar(250) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(250) DEFAULT NULL,
  `contact_no` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_mst`
--

INSERT INTO `student_mst` (`stud_id`, `roll_no`, `stud_name`, `school_name`, `branch_id`, `standard_id`, `subject`, `email_id`, `password`, `photo`, `contact_no`, `gender`) VALUES
(1, 123, 'Student 1', 'School', 3, 1, 'Geometry', 'test@gmail.com', 'abc123', 'Student_1_.jpeg', '1234567890', 'Male'),
(15, 1234, 'Darshan', 'St. George School', 3, 3, 'Science', 'mumbai@mediamaggi.com', 'abc123', 'Darshan_.jpeg', '9867123412', 'Male'),
(17, 525, 'nirav', 'swastik', 3, 10, 'English,Maths', 'mumbai@mediamaggi.com', '123456', NULL, '7710097733', 'Male'),
(29, 159, 'Tester', 'St. George School', 3, 1, 'Maths,English,History', 'darshan@gmail.com', 'abc123', NULL, '9867123412', 'Male'),
(31, 55, 'nirav_stu', 'swastik', 3, 1, 'English,Maths,Science,History,Geography,Hindi', 'nirav.ahm1@gmail.com', '123456', NULL, '7710097733', 'Male'),
(44, 1987, 'Tester', 'St. George School', 3, 1, 'English', 'test2@gmail.com', 'abc123', NULL, '9867123412', 'Male'),
(45, 55, 'rajesh', 'mount litra', 3, 4, 'Hindi', 'sbj.jalla@gmail.com', '123', 'rajesh_1504105468.jpeg', '8989822288', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `subject_mst`
--

CREATE TABLE `subject_mst` (
  `sub_id` int(11) NOT NULL,
  `sub_name` varchar(100) NOT NULL,
  `standard_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_mst`
--

INSERT INTO `subject_mst` (`sub_id`, `sub_name`, `standard_id`) VALUES
(19, 'English', 1),
(20, 'Maths', 2),
(21, 'Science', 3),
(22, 'Hindi', 4),
(24, 'Gujarati', 5),
(25, 'History', 6),
(26, 'Geography', 7),
(27, 'Civics2', 8),
(28, 'Algebra', 9),
(29, 'Geometry', 10),
(30, 'Commerce', 11),
(31, 'Arts', 12),
(32, 'Maths', 1),
(34, 'English', 2),
(37, 'Science', 1),
(40, 'Maths', 3),
(49, 'History', 2),
(50, 'History', 1),
(51, 'Geography', 1),
(52, 'Hindi', 1),
(53, 'physics', 12),
(54, 'Science', 2),
(55, 'Hindi', 2),
(56, 'physics', 17),
(57, 'CHEMISTRY', 17),
(60, 'Gujarati', 17),
(61, 'Gujarati', 17);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `standard_id` int(11) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `chapter` varchar(75) NOT NULL,
  `date` date NOT NULL,
  `total_marks` int(11) NOT NULL,
  `duration` varchar(25) NOT NULL,
  `test_type` varchar(25) NOT NULL,
  `uploaded` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `standard_id`, `subject`, `chapter`, `date`, `total_marks`, `duration`, `test_type`, `uploaded`) VALUES
(1, 2, 'Maths', 'Addition and Subtraction', '2017-12-12', 100, '3 Hours', 'Module', 0),
(3, 1, 'English', 'Grammar', '1997-07-07', 80, '2 Hours 30 Mins', 'Term', 0),
(4, 1, 'History', 'Ajanta', '2018-12-12', 50, '1 hour', 'Module', 1),
(5, 1, 'History', 'Shivaji', '2018-01-15', 50, '2 Hours 30 Mins', 'Module', 1),
(6, 1, 'Maths', 'Probability', '1997-07-07', 75, '3 Hours', 'Module', 1),
(7, 1, 'Maths', 'Equations', '2017-01-15', 75, '3 Hours', 'Module', 1),
(8, 1, 'Maths', 'Subtraction', '2018-01-25', 50, '2 Hours 30 Mins', 'Term', 1);

-- --------------------------------------------------------

--
-- Table structure for table `topper_mst`
--

CREATE TABLE `topper_mst` (
  `topper_id` int(11) NOT NULL,
  `year_id` int(11) NOT NULL,
  `standard_id` int(11) DEFAULT NULL,
  `subject` varchar(250) DEFAULT NULL,
  `student_name` varchar(250) NOT NULL,
  `result` varchar(250) NOT NULL,
  `photo` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topper_mst`
--

INSERT INTO `topper_mst` (`topper_id`, `year_id`, `standard_id`, `subject`, `student_name`, `result`, `photo`) VALUES
(18, 18, 12, 'PCM', 'Darshan', '198/200', 'tpper1503128649.jpeg'),
(19, 18, 12, 'PCM', 'Sagar', '199/200', 'tpper1503130924.jpeg'),
(20, 17, 10, 'Maths', 'John Mathew', '97/100', NULL),
(24, 18, 10, 'Maths', 'Azhar', '88', 'tpper1503467656.jpeg'),
(25, 17, 9, 'English', 'Kapadia', '98', 'tpper1503467732.jpeg'),
(26, 17, 8, 'History', 'Az', '99', 'tpper1503467767.jpeg'),
(29, 18, 9, '', 'nirav', '99%', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `topper_year_mst`
--

CREATE TABLE `topper_year_mst` (
  `year_id` int(11) NOT NULL,
  `year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topper_year_mst`
--

INSERT INTO `topper_year_mst` (`year_id`, `year`) VALUES
(16, '2014-15'),
(17, '2015-16'),
(18, '2016-17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `branch_mst`
--
ALTER TABLE `branch_mst`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `faculty_mst`
--
ALTER TABLE `faculty_mst`
  ADD PRIMARY KEY (`faculty_id`);

--
-- Indexes for table `faculty_std_sub`
--
ALTER TABLE `faculty_std_sub`
  ADD PRIMARY KEY (`faculty_std_sub_id`),
  ADD KEY `faculty_std_sub_std` (`standard_id`),
  ADD KEY `faculty_std_sub_fk` (`faculty_id`);

--
-- Indexes for table `private_announcement`
--
ALTER TABLE `private_announcement`
  ADD KEY `ID` (`id`);

--
-- Indexes for table `public_announcement`
--
ALTER TABLE `public_announcement`
  ADD UNIQUE KEY `ID` (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `standard_mst`
--
ALTER TABLE `standard_mst`
  ADD PRIMARY KEY (`standard_id`);

--
-- Indexes for table `student_mst`
--
ALTER TABLE `student_mst`
  ADD PRIMARY KEY (`stud_id`),
  ADD UNIQUE KEY `unique_roll_std` (`roll_no`,`standard_id`),
  ADD KEY `sub_id` (`subject`),
  ADD KEY `branch_id` (`branch_id`),
  ADD KEY `standard_id` (`standard_id`);

--
-- Indexes for table `subject_mst`
--
ALTER TABLE `subject_mst`
  ADD PRIMARY KEY (`sub_id`),
  ADD KEY `standard_id` (`standard_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topper_mst`
--
ALTER TABLE `topper_mst`
  ADD PRIMARY KEY (`topper_id`),
  ADD KEY `year_id` (`year_id`);

--
-- Indexes for table `topper_year_mst`
--
ALTER TABLE `topper_year_mst`
  ADD PRIMARY KEY (`year_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `branch_mst`
--
ALTER TABLE `branch_mst`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `faculty_mst`
--
ALTER TABLE `faculty_mst`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `faculty_std_sub`
--
ALTER TABLE `faculty_std_sub`
  MODIFY `faculty_std_sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `private_announcement`
--
ALTER TABLE `private_announcement`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `public_announcement`
--
ALTER TABLE `public_announcement`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `standard_mst`
--
ALTER TABLE `standard_mst`
  MODIFY `standard_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `student_mst`
--
ALTER TABLE `student_mst`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `subject_mst`
--
ALTER TABLE `subject_mst`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `topper_mst`
--
ALTER TABLE `topper_mst`
  MODIFY `topper_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `topper_year_mst`
--
ALTER TABLE `topper_year_mst`
  MODIFY `year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty_std_sub`
--
ALTER TABLE `faculty_std_sub`
  ADD CONSTRAINT `faculty_std_sub_fk` FOREIGN KEY (`faculty_id`) REFERENCES `faculty_mst` (`faculty_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `faculty_std_sub_std` FOREIGN KEY (`standard_id`) REFERENCES `standard_mst` (`standard_id`);

--
-- Constraints for table `student_mst`
--
ALTER TABLE `student_mst`
  ADD CONSTRAINT `student_branch` FOREIGN KEY (`branch_id`) REFERENCES `branch_mst` (`branch_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_mst_ibfk_1` FOREIGN KEY (`standard_id`) REFERENCES `standard_mst` (`standard_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `subject_mst`
--
ALTER TABLE `subject_mst`
  ADD CONSTRAINT `subject_mst_ibfk_1` FOREIGN KEY (`standard_id`) REFERENCES `standard_mst` (`standard_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
