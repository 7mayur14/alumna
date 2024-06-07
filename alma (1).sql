-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 06:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alma`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminmember`
--

CREATE TABLE `adminmember` (
  `ad_id` varchar(5) NOT NULL,
  `ad_password` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ad_fullname` varchar(50) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminmember`
--

INSERT INTO `adminmember` (`ad_id`, `ad_password`, `ad_fullname`) VALUES
('AD1', 'ronaldo', 'Cristiano Ronaldo'),
('AD2', 'messi', 'Lionel Messi');

-- --------------------------------------------------------

--
-- Table structure for table `alumniinfo`
--

CREATE TABLE `alumniinfo` (
  `pi_name` varchar(100) NOT NULL,
  `pi_gender` varchar(20) NOT NULL,
  `pi_address` varchar(100) NOT NULL,
  `pi_email` varchar(100) NOT NULL,
  `pi_picture` longblob NOT NULL,
  `pi_session` varchar(50) NOT NULL,
  `pi_branch` varchar(50) NOT NULL,
  `pi_mobile` varchar(50) NOT NULL,
  `pi_company` varchar(50) NOT NULL,
  `pi_register` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumniinfo`
--

INSERT INTO `alumniinfo` (`pi_name`, `pi_gender`, `pi_address`, `pi_email`, `pi_picture`, `pi_session`, `pi_branch`, `pi_mobile`, `pi_company`, `pi_register`) VALUES
('lklk nm', 'Gender', '', 'l@u', '', '2022-2026', 'AIEI', '9999999999', '', '131312jjjj'),
('Sourav Ganguly', 'Male', 'Kolkata, West Bengal', 'sourav@gmail.com', '', '2005-2009', 'CSE', '9000000001', 'Google', 'R1'),
('Jasprit Bumrah', 'Male', 'Rajkot, Gujrat', 'bumrah@gmail.com', '', '2010-2014', 'MECH', '9000000010', 'L & T', 'R10'),
('Mithali Raj', 'Female', 'Jodhpur, Rjasthan', 'mithali@gmail.com', '', '2010-2014', 'IT', '9000000011', 'Google', 'R11'),
('Jhulan Goswami', 'Female', 'Kolkata, West Bengal', 'jhulan@gmail.com', '', '2016-2020', 'AIEI', '9000000012', 'Fineline', 'R12'),
('Anjum Chopra', 'Female', 'Mumbai, Maharashtra', 'anjum@gmail.com', '', '2007-2011', 'ECE', '9000000013', 'TCS', 'R13'),
('Harwinder Kaur', 'Female', 'Mohali, Punjab', 'kaur@gmail.com', '', '2012-2016', 'IT', '9000000014', 'CTS', 'R14'),
('Smriti Mandhana', 'Female', 'New Delhi', 'smriti@gmail.com', '', '2009-2013', 'EE', '9000000015', 'Amazon', 'R15'),
('Poonam Yadav', 'Female', 'Patna, Bihar', 'poonam@gmail.com', '', '2010-2014', 'MECH', '9000000016', 'Mahindra', 'R16'),
('Sania Mirza', 'Female', 'Hyderabad, Telangana', 'sania@gmail.com', '', '2012-2016', 'MECH', '9000000017', 'Godrej', 'R17'),
('Saina Nehwal', 'Female', 'New Delhi', 'saina@gmail.com', '', '2007-2011', 'CSE', '9000000018', 'Apple', 'R18'),
('PV Sindhu', 'Female', 'Chennai, Tamil Nadu', 'sindhu@gmail.com', '', '2013-2017', 'ECE', '9000000019', 'TCS', 'R19'),
('Mahendra Singh Dhoni', 'Male', 'Ranchi, Jharkhand', 'dhoni@gmail.com', '', '2006-2010', 'ECE', '9000000002', 'CTS', 'R2'),
('Rima Das', 'Female', 'Kolkata, West Bengal', 'rima@gmail.com', '', '2012-2016', 'AIEI', '9000000020', 'Bosch', 'R20'),
('Virat Kohli', 'Male', 'New Delhi', 'virat@gmail.com', '', '2009-2013', 'IT', '9000000003', 'Amazon', 'R3'),
('Rohit Sharma', 'Male', 'Mumbai, Maharashtra', 'rohit@gmail.com', '', '2012-2016', 'EE', '9000000004', 'Finolex', 'R4'),
('Yuvraj Singh', 'Male', 'Chandigarh, Punjab', 'yuvraj@gmail.com', '', '2013-2017', 'CSE', '9000000005', 'Apple', 'R5'),
('Sachin Tendulkar', 'Male', 'Mumbai, Maharashtra', 'sachin@gmail.com', '', '2005-2009', 'CSE', '9000000006', 'Samsung', 'R6'),
('Rahul Dravid', 'Male', 'Bangalore, Karnataka', 'rahul@gmail.com', '', '2005-2009', 'CSE', '9000000007', 'Flipkart', 'R7'),
('Virendra Sehwag', 'Male', 'New Delhi', 'sehwag@gmail.com', '', '2009-2013', 'AIEI', '9000000008', 'Fineline', 'R8'),
('VVS Laxman', 'Male', 'Hyderabad, Telangana', 'laxman@gmail.com', '', '2012-2016', 'MECH', '9000000009', 'Tata Motors', 'R9');

-- --------------------------------------------------------

--
-- Table structure for table `alumnimember`
--

CREATE TABLE `alumnimember` (
  `pi_register` varchar(20) NOT NULL,
  `al_password` varchar(20) NOT NULL,
  `al_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumnimember`
--

INSERT INTO `alumnimember` (`pi_register`, `al_password`, `al_status`) VALUES
('131312jjjj', '321', 'Not Approve'),
('R1', 'sourav', 'Approve'),
('R10', 'bumrah', 'Approve'),
('R11', 'mithali', 'Approve'),
('R12', 'jhulan', 'Approve'),
('R13', 'anjum', 'Approve'),
('R14', 'kaur', 'Approve'),
('R15', 'smriti', 'Approve'),
('R16', 'poonam', 'Approve'),
('R17', 'sania', 'Approve'),
('R18', 'saina', 'Approve'),
('R19', 'sindhu', 'Approve'),
('R2', 'dhoni', 'Approve'),
('R20', 'rima', 'Approve'),
('R3', 'virat', 'Approve'),
('R4', 'rohit', 'Approve'),
('R5', 'yuvraj', 'Approve'),
('R6', 'sachin', 'Approve'),
('R7', 'dravid', 'Approve'),
('R8', 'sehwag', 'Approve'),
('R9', 'laxman', 'Approve');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `ann_id` varchar(10) NOT NULL,
  `ann_name` varchar(100) NOT NULL,
  `ann_desc` text NOT NULL,
  `ann_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`ann_id`, `ann_name`, `ann_desc`, `ann_time`) VALUES
('AD1', 'Membership Fee Hike', 'The Annual Membership Fee has been increased by Rs 100 from today.\r\nThe New annual Membership fee will be Rs 600.\r\nBy ADMIN.', '2020/06/28 03:36:53a'),
('AD2', 'Cash Donation', 'If any Alumni wants to donate any amount can easily pay through any payment method. Details on website.\r\nBy ADMIN', '2020/06/28 03:38:45a');

-- --------------------------------------------------------

--
-- Table structure for table `domain`
--

CREATE TABLE `domain` (
  `id` int(11) NOT NULL,
  `domainname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `domain`
--

INSERT INTO `domain` (`id`, `domainname`) VALUES
(1, 'Cloud computing'),
(2, 'Networking');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `e_id` varchar(50) NOT NULL,
  `e_name` varchar(100) NOT NULL,
  `e_date` date NOT NULL,
  `e_time` time NOT NULL,
  `e_desc` longtext NOT NULL,
  `e_venue` varchar(50) NOT NULL,
  `e_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`e_id`, `e_name`, `e_date`, `e_time`, `e_desc`, `e_venue`, `e_pic`) VALUES
('45', 'exam', '2023-05-23', '09:00:00', 'POE', 'Dept lab', 'self');

-- --------------------------------------------------------

--
-- Table structure for table `financialdata`
--

CREATE TABLE `financialdata` (
  `payment_id` varchar(10) NOT NULL,
  `total_payment` double(10,2) NOT NULL,
  `payment_purpose` varchar(50) NOT NULL,
  `pi_register` varchar(20) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `financialdata`
--

INSERT INTO `financialdata` (`payment_id`, `total_payment`, `payment_purpose`, `pi_register`, `payment_date`) VALUES
('P1', 5000.00, 'Cash Donation', 'R1', '2023-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `forumdata`
--

CREATE TABLE `forumdata` (
  `eforum_id` int(11) NOT NULL,
  `eforum_title` varchar(250) NOT NULL,
  `eforum_author` varchar(50) DEFAULT NULL,
  `eforum_content` text DEFAULT NULL,
  `eforum_tags` varchar(50) DEFAULT NULL,
  `eforum_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forumdata`
--

INSERT INTO `forumdata` (`eforum_id`, `eforum_title`, `eforum_author`, `eforum_content`, `eforum_tags`, `eforum_time`) VALUES
(1, 'test discussion', 'Sourav Ganguly', 'kjasdoasjd', 'networking', '2023-05-10 20:51:49'),
(2, 'test job', 'Sourav Ganguly', 'skjandad', 'testing', '2023-05-13 02:52:08'),
(3, 'teetee', 'Sourav Ganguly', 'akjssadasdaslj', 'alnaln', '2023-05-13 23:49:25'),
(4, 'djasndl', 'Sourav Ganguly', 'ljnoln', 'lojndlajn', '2023-05-13 23:50:51');

-- --------------------------------------------------------

--
-- Table structure for table `forum_reply`
--

CREATE TABLE `forum_reply` (
  `forum_topic` varchar(50) NOT NULL,
  `forum_message` text NOT NULL,
  `forum_reply_id` int(11) NOT NULL,
  `forum_reply_time` varchar(50) NOT NULL,
  `forum_reply_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum_reply`
--

INSERT INTO `forum_reply` (`forum_topic`, `forum_message`, `forum_reply_id`, `forum_reply_time`, `forum_reply_name`) VALUES
('Job Referral', 'Yes, but minimum 3 years of experience.', 34, '2020/06/28 06:42:19pm', 'Jhulan Goswami'),
('Street Food', 'Yes, you can try many at cheap rate.', 35, '2020/06/28 07:02:37pm', 'Sourav Ganguly'),
('Job Referral', 'Yes, its available at Ranchi.I will mail you the requirements.', 36, '2020/07/07 02:49:10am', 'Mahendra Singh Dhoni'),
('test discussion', 'test reply', 37, '2023/05/11 02:24:35am', 'Mahendra Singh Dhoni');

-- --------------------------------------------------------

--
-- Table structure for table `helpdata`
--

CREATE TABLE `helpdata` (
  `help_id` int(11) NOT NULL,
  `help_title` varchar(255) NOT NULL,
  `help_author` varchar(255) NOT NULL,
  `help_content` text NOT NULL,
  `help_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `helpdata`
--

INSERT INTO `helpdata` (`help_id`, `help_title`, `help_author`, `help_content`, `help_time`) VALUES
(2, 'test123', 'Sourav Ganguly', 'teeteetkjasbkasd', '2023-05-14 00:59:27'),
(3, 'aisdhaisduh', 'Sourav Ganguly', 'ijsbhiajsdaisdjbasidu689454', '2023-05-14 04:00:58');

-- --------------------------------------------------------

--
-- Table structure for table `jobsdata`
--

CREATE TABLE `jobsdata` (
  `job_id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `job_author` varchar(255) NOT NULL,
  `job_content` text NOT NULL,
  `job_tags` varchar(255) NOT NULL,
  `job_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobsdata`
--

INSERT INTO `jobsdata` (`job_id`, `job_title`, `job_author`, `job_content`, `job_tags`, `job_time`) VALUES
(1, 'Test Job Title', 'Sourav Ganguly', 'asojasdojdaosdin', 'networking', '2023-05-11 04:49:53'),
(2, 'Test Job Title', 'Sourav Ganguly', 'asojasdojdaosdin', 'networking', '2023-05-11 04:50:01'),
(3, 'testing final', 'Sourav Ganguly', 'lkdnalskdnas', 'teeteet', '2023-05-13 23:57:29'),
(4, 'testing final', 'Sourav Ganguly', 'lkdnalskdnas', 'teeteet', '2023-05-13 23:58:20'),
(5, 'sw developer', 'Sourav Ganguly', 'abc', '1', '2023-05-15 20:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stu_id` int(11) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_password` varchar(255) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_gender` varchar(255) NOT NULL,
  `stu_address` varchar(255) NOT NULL,
  `stu_batch` varchar(255) NOT NULL,
  `stu_branch` varchar(255) NOT NULL,
  `stu_mobile` int(11) NOT NULL,
  `stu_register_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminmember`
--
ALTER TABLE `adminmember`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `alumniinfo`
--
ALTER TABLE `alumniinfo`
  ADD PRIMARY KEY (`pi_register`),
  ADD KEY `pi_register` (`pi_register`);

--
-- Indexes for table `alumnimember`
--
ALTER TABLE `alumnimember`
  ADD PRIMARY KEY (`pi_register`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`ann_id`);

--
-- Indexes for table `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `financialdata`
--
ALTER TABLE `financialdata`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `pi_register` (`pi_register`);

--
-- Indexes for table `forumdata`
--
ALTER TABLE `forumdata`
  ADD PRIMARY KEY (`eforum_id`);

--
-- Indexes for table `forum_reply`
--
ALTER TABLE `forum_reply`
  ADD PRIMARY KEY (`forum_reply_id`);

--
-- Indexes for table `helpdata`
--
ALTER TABLE `helpdata`
  ADD PRIMARY KEY (`help_id`);

--
-- Indexes for table `jobsdata`
--
ALTER TABLE `jobsdata`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `forumdata`
--
ALTER TABLE `forumdata`
  MODIFY `eforum_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `forum_reply`
--
ALTER TABLE `forum_reply`
  MODIFY `forum_reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `helpdata`
--
ALTER TABLE `helpdata`
  MODIFY `help_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobsdata`
--
ALTER TABLE `jobsdata`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumniinfo`
--
ALTER TABLE `alumniinfo`
  ADD CONSTRAINT `foreign_key_fk` FOREIGN KEY (`pi_register`) REFERENCES `alumnimember` (`pi_register`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
