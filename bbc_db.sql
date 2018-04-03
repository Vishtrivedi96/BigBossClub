-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 06:29 PM
-- Server version: 5.7.21-log
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `big_boss_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `attendance_class_id` int(11) NOT NULL,
  `attendance_stud_id` int(11) NOT NULL,
  `attendance_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `attendance_status` varchar(255) NOT NULL DEFAULT 'present' COMMENT 'present or absance'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `attendance_class_id`, `attendance_stud_id`, `attendance_date`, `attendance_status`) VALUES
(9, 3, 1, '2018-03-26 04:00:00', 'present'),
(15, 8, 8, '2018-03-27 04:00:00', 'present'),
(16, 8, 9, '2018-03-27 04:00:00', 'present'),
(20, 4, 1, '2018-03-27 04:00:00', 'present'),
(21, 4, 9, '2018-03-27 04:00:00', 'present'),
(22, 4, 14, '2018-03-27 04:00:00', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(10) NOT NULL,
  `class_day` varchar(255) NOT NULL COMMENT 'sunday or monday',
  `class_time` varchar(255) NOT NULL COMMENT '1:00pm to 3:00 pm',
  `class_level` varchar(255) NOT NULL COMMENT 'intermediate or pro',
  `class_status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_day`, `class_time`, `class_level`, `class_status`) VALUES
(2, 'Monday', '16:00 to 17:00', 'Beginner ', 'active'),
(3, 'Monday', '17:30 to 18:30', 'Intermediate', 'active'),
(4, 'Tuesday', '16:00 to 17:00', 'Beginner ', 'active'),
(5, 'Tuesday', '17:30 to 18:30', 'Intermediate', 'active'),
(6, 'Thursday', '17:30 to 18:30', 'Intermediate', 'active'),
(7, 'Thursday', '16:00 to 17:00', 'Beginner ', 'active'),
(8, 'Wednesday', '16:00 to 17:00', 'Beginner ', 'active'),
(9, 'Wednesday', '17:30 to 18:30', 'Intermediate', 'active'),
(10, 'Saturday', '5:00 to 6:00', 'Beginner ', 'active'),
(11, 'Saturday', '6:30 to 7:30', 'Intermediate', 'active'),
(12, 'Friday', '17:30 to 18:30', 'Intermediate', 'active'),
(13, 'Friday', '16:00 to 17:00', 'Beginner ', 'active'),
(14, 'Monday', '19:00 to 20:00', 'Expert', 'active'),
(15, 'Tuesday', '19:00 to 20:00', 'Expert', 'active'),
(16, 'Wednesday', '19:00 to 20:00', 'Expert', 'active'),
(17, 'Thursday', '19:00 to 20:00', 'Expert', 'active'),
(18, 'Friday', '19:00 to 20:00', 'Expert', 'active'),
(19, 'Saturday', '8:00 to 9:00', 'Expert', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

CREATE TABLE `parents` (
  `parents_id` int(10) NOT NULL,
  `parents_email` varchar(255) DEFAULT NULL,
  `parents_mobile` varchar(255) DEFAULT NULL,
  `parents_status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`parents_id`, `parents_email`, `parents_mobile`, `parents_status`) VALUES
(1, 'test@parents.com', '9856321475', 'active'),
(2, 'kkshah@gmail.com', '5192533000', 'active'),
(3, 'patel1bm@yahoo.com', '2265478541', 'active'),
(4, 'patel1ck@gmail.com', '4561237895', 'active'),
(5, '', '', 'active'),
(6, '', '', 'active'),
(7, '', '', 'active'),
(8, '', '', 'active'),
(9, 'rajeshbhai@uwin.com', '5199822886', 'active'),
(10, '', '', 'active'),
(11, '', '', 'active'),
(12, '', '', 'active'),
(13, '', '', 'active'),
(14, '', '', 'active'),
(15, '', '', 'active'),
(16, '', '', 'active'),
(17, '', '', 'active'),
(18, '', '', 'active'),
(19, '', '', 'active'),
(20, 'bez1@amax.com', '145789546', 'active'),
(21, 'pat@hh.com', '78945621', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) NOT NULL,
  `payment_type` int(10) NOT NULL,
  `payment_amount` double NOT NULL,
  `payment_date` date NOT NULL,
  `payment_status` varchar(255) NOT NULL COMMENT 'pending or paid',
  `payment_stud_id` int(10) NOT NULL COMMENT 'paid_by'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `payment_amount`, `payment_date`, `payment_status`, `payment_stud_id`) VALUES
(7, 1, 500, '2018-03-26', 'paid', 8),
(10, 4, 500, '2018-03-27', 'pending', 18),
(11, 5, 1000, '2018-03-27', 'paid', 12),
(12, 1, 100, '2018-03-27', 'paid', 20);

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `payment_type_id` int(10) NOT NULL,
  `payment_type_name` varchar(255) NOT NULL,
  `payment_type_stauts` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`payment_type_id`, `payment_type_name`, `payment_type_stauts`) VALUES
(1, 'Membership Fees', 'active'),
(4, 'Exam Fees', 'active'),
(5, 'Product Purchase', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `rank_id` int(10) NOT NULL,
  `rank_belt_color` varchar(255) NOT NULL,
  `rank_status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`rank_id`, `rank_belt_color`, `rank_status`) VALUES
(1, 'White Belt', 'active'),
(2, 'Yellow Belt', 'active'),
(3, 'Green Belt', 'active'),
(4, 'Blue Belt', 'active'),
(5, 'Red Belt', 'active'),
(6, 'Brown Belt', 'active'),
(7, 'Gold Belt', 'active'),
(8, 'Black Belt', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(10) NOT NULL,
  `stud_enroll_num` varchar(255) NOT NULL,
  `stud_name` varchar(255) NOT NULL,
  `stud_address` longtext NOT NULL,
  `stud_email` varchar(255) NOT NULL,
  `stud_dob` date NOT NULL,
  `stud_mobile` varchar(255) NOT NULL,
  `stud_join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stud_status` varchar(255) NOT NULL DEFAULT 'active',
  `stud_parents_id` int(10) DEFAULT NULL,
  `stud_rank_id` int(10) NOT NULL,
  `stud_user_id` int(10) NOT NULL COMMENT 'student added by'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `stud_enroll_num`, `stud_name`, `stud_address`, `stud_email`, `stud_dob`, `stud_mobile`, `stud_join_date`, `stud_status`, `stud_parents_id`, `stud_rank_id`, `stud_user_id`) VALUES
(1, 'BBC01', 'Vishvesh Trivedi', '1365 McKay ave', 'vish@uwindsor.ca', '1995-04-07', '2267452123', '2017-04-07 07:40:46', 'active', 1, 8, 1),
(8, 'BBC02', 'Aayush Patel', '938, California ave', 'aayush@gmail.com', '1995-07-20', '5199813647', '2018-03-27 03:36:38', 'active', 5, 2, 1),
(9, 'BBC03', 'Krunal Patel', '938 California Ave', 'kpkrunal3@uwindsor.ca', '1993-12-28', '5199813746', '2018-03-27 04:21:00', 'active', 6, 1, 1),
(10, 'BBC04', 'Dhruv Patel', '938 California ave', 'dhr@gmail.com', '1995-06-09', '5199822810', '2018-03-27 05:44:24', 'active', 2, 6, 1),
(12, 'BBC06', 'Pavan Desai', '349 Rosedale Ave', 'pavan@uwindsor.ca', '1995-01-23', '2894002641', '2018-03-27 15:55:46', 'active', 11, 1, 1),
(13, 'BBC07', 'Heli Shah', '477 Caron Ave', 'heli@uwindsor.ca', '1995-12-10', '5199736841', '2018-03-27 16:01:19', 'active', 12, 2, 1),
(14, 'BBC08', 'Zarna Prajapati', '477 Caron ave', 'zarna@uwindsor.ca', '1994-02-01', '4785412356', '2018-03-27 16:06:51', 'active', 14, 2, 1),
(15, 'BBC09', 'Test Demo', 'Askin ave', 'as@as.com', '2000-05-05', '1545245225', '2018-03-27 16:23:12', 'active', 15, 1, 1),
(16, 'BBC10', 'Demo Demo', 'sef', 'sdf', '1445-12-14', '215225', '2018-03-27 16:30:10', 'active', 16, 1, 1),
(17, 'BBC11', 'asfs', 'ssfsf', 'wewad', '1455-12-14', '154', '2018-03-27 16:32:17', 'active', 17, 3, 1),
(18, 'BBC12', 'Jeff Bezos', '154 USA road', 'bez@amazon.com', '1975-05-14', '789777654', '2018-03-27 16:48:19', 'active', 20, 1, 1),
(19, 'BBC13', 'Nakul Patel', '938, California ave', 'nakulpatel024@gmail.com', '1993-12-12', '6399982886', '2018-03-27 18:03:34', 'active', 2, 2, 1),
(20, 'BBC14', 'Nakul Patel', 'Califronia ave', 'nakulpatel024@gmail.com', '1993-12-12', '3692581470', '2018-03-27 18:04:16', 'active', 21, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_progress`
--

CREATE TABLE `student_progress` (
  `stud_prog_id` int(10) NOT NULL,
  `stud_prog_stud_id` int(10) NOT NULL,
  `stud_prog_rank_id` int(10) NOT NULL,
  `stud_prog_rank_date` date NOT NULL,
  `stud_prog_status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_progress`
--

INSERT INTO `student_progress` (`stud_prog_id`, `stud_prog_stud_id`, `stud_prog_rank_id`, `stud_prog_rank_date`, `stud_prog_status`) VALUES
(7, 8, 7, '2018-03-27', 'active'),
(10, 8, 3, '2018-03-22', 'active'),
(11, 1, 1, '2017-04-07', 'active'),
(15, 8, 1, '2018-03-26', 'active'),
(16, 9, 1, '2018-03-27', 'active'),
(17, 10, 1, '2018-03-27', 'active'),
(22, 8, 2, '2018-03-26', 'active'),
(24, 14, 2, '2018-03-27', 'active'),
(25, 16, 1, '2018-03-27', 'active'),
(26, 17, 1, '2018-03-27', 'active'),
(27, 17, 3, '2018-03-27', 'active'),
(28, 18, 1, '2018-03-27', 'active'),
(29, 10, 8, '2018-03-28', 'active'),
(30, 1, 8, '2018-03-27', 'active'),
(31, 10, 6, '2018-03-27', 'active'),
(32, 20, 1, '2018-03-27', 'active'),
(33, 19, 2, '2018-03-27', 'active'),
(34, 20, 4, '2018-03-27', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) NOT NULL,
  `user_type` varchar(255) NOT NULL COMMENT 'admin or instructor',
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_type`, `user_name`, `user_password`, `user_status`) VALUES
(1, 'instructor', 'bbc@bbcarts.ca', 'password', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `fK_class` (`attendance_class_id`),
  ADD KEY `FK_student` (`attendance_stud_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`parents_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `FK_payment_type` (`payment_type`),
  ADD KEY `FK_student` (`payment_stud_id`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`payment_type_id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`rank_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`),
  ADD KEY `FK_parents` (`stud_parents_id`),
  ADD KEY `FK_rank` (`stud_rank_id`),
  ADD KEY `FK_user` (`stud_user_id`);

--
-- Indexes for table `student_progress`
--
ALTER TABLE `student_progress`
  ADD PRIMARY KEY (`stud_prog_id`),
  ADD KEY `FK_student` (`stud_prog_stud_id`),
  ADD KEY `FK_rank` (`stud_prog_rank_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `parents`
--
ALTER TABLE `parents`
  MODIFY `parents_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `payment_type_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `rank_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `student_progress`
--
ALTER TABLE `student_progress`
  MODIFY `stud_prog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`attendance_class_id`) REFERENCES `class` (`class_id`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`attendance_stud_id`) REFERENCES `student` (`stud_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`payment_type`) REFERENCES `payment_type` (`payment_type_id`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`payment_stud_id`) REFERENCES `student` (`stud_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`stud_parents_id`) REFERENCES `parents` (`parents_id`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`stud_rank_id`) REFERENCES `rank` (`rank_id`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`stud_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `student_progress`
--
ALTER TABLE `student_progress`
  ADD CONSTRAINT `student_progress_ibfk_1` FOREIGN KEY (`stud_prog_stud_id`) REFERENCES `student` (`stud_id`),
  ADD CONSTRAINT `student_progress_ibfk_2` FOREIGN KEY (`stud_prog_rank_id`) REFERENCES `rank` (`rank_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
