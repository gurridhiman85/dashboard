-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 01:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `requirments`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `user_id`, `question_id`, `answer`) VALUES
(1, 6, 1, ' gfgdgdg'),
(2, 6, 2, '1'),
(3, 7, 1, ' test'),
(4, 7, 2, 'Not Sure'),
(5, 8, 1, ' dsfsdfsddf'),
(6, 8, 2, 'False'),
(7, 9, 1, ' vvx sdff xdfsdf'),
(8, 9, 2, 'True'),
(9, 10, 1, ' zxczxcz'),
(10, 10, 2, 'True'),
(11, 11, 1, ' cvxcvxv'),
(12, 11, 2, 'False'),
(13, 12, 1, ' asdasdadad'),
(14, 12, 2, 'False'),
(15, 13, 1, ' testing'),
(16, 13, 2, 'False'),
(17, 14, 1, ' ddf ererr werwer'),
(18, 14, 2, 'True'),
(19, 15, 1, ' sdfsdfsfv  ddfdsfsdf'),
(20, 15, 2, 'True'),
(21, 16, 1, ' fgdg eff'),
(22, 16, 2, 'True'),
(23, 17, 1, ' df fsdfdf'),
(24, 17, 2, 'True'),
(25, 20, 1, ' dfgdg reerewr'),
(26, 20, 2, 'False'),
(27, 23, 1, ' dfgdf dfsdfsf'),
(28, 23, 2, 'True'),
(29, 23, 1, ' dfgdf dfsdfsf'),
(30, 23, 2, 'True'),
(31, 23, 1, ' dfgdf dfsdfsf'),
(32, 23, 2, 'True'),
(33, 23, 1, ' dfgdf dfsdfsf'),
(34, 23, 2, 'True'),
(35, 23, 1, ' dfgdf dfsdfsf'),
(36, 23, 2, 'True'),
(37, 23, 1, ' dfgdf dfsdfsf'),
(38, 23, 2, 'True'),
(39, 23, 1, ' dfgdf dfsdfsf'),
(40, 23, 2, 'True'),
(41, 23, 1, ' dfgdf dfsdfsf'),
(42, 23, 2, 'True'),
(43, 23, 1, ' dfgdf dfsdfsf'),
(44, 23, 2, 'True'),
(45, 24, 1, ' sada sasdadad'),
(46, 24, 2, 'True'),
(47, 25, 1, ' wqessda'),
(48, 25, 2, 'False'),
(49, 26, 1, ' sadda asddadasd sdad'),
(50, 26, 2, 'True'),
(51, 27, 1, ' wer  ewwrre'),
(52, 27, 2, 'False'),
(53, 28, 1, ' sdfdfd sdfsfsfsdf'),
(54, 28, 2, 'False'),
(55, 29, 3, ' sdad asad'),
(56, 29, 4, ' asdad asdaddasdasdsd'),
(57, 30, 1, ' fgg dfggd fg'),
(58, 30, 2, 'False'),
(59, 32, 3, ' dgggdfggssdfd'),
(60, 34, 3, ' sdfsd dsfs ffdsfs'),
(61, 34, 4, 'option2,option3');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` mediumtext NOT NULL,
  `stakeholder` varchar(80) NOT NULL,
  `answer_type` varchar(20) NOT NULL,
  `multichoice_options` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `stakeholder`, `answer_type`, `multichoice_options`) VALUES
(1, 'How large is the ML part of the entire product?', 'ML', 'text', NULL),
(2, 'How do you initially capture expectations or requirements for an ML application?', 'ML', 'truefalse', NULL),
(3, 'How would you measure how well you are achieving those goals?', 'Data Scientist', 'text', NULL),
(4, 'What are the key performance indicators in this context?', 'Data Scientist', 'multichoice', 'option1,option2,option3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `stakeholder` varchar(80) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `stakeholder`, `created_at`) VALUES
(1, 'gurri', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 12:45:39'),
(2, 'gurri', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 12:53:25'),
(3, 'gurri1', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:02:05'),
(4, 'gurri2', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:03:42'),
(5, 'rwrre', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:04:08'),
(6, 'rwrre', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:04:35'),
(7, 'gurri2', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:09:43'),
(8, 'gurri3', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:11:28'),
(9, 'gurri3', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:14:04'),
(10, 'gurridhiman', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:18:32'),
(11, 'chandni@sodainmind.com', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:20:05'),
(12, 'home', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 13:21:00'),
(13, 'chandni', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 14:15:18'),
(14, 'home', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 14:15:56'),
(15, 'gurri.dhiman85', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 14:21:30'),
(16, 'chandni@sodainmind.com', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 14:22:08'),
(17, 'chandni@sodainmind.com', 'gurri.dhiman85@gmail.com', '1', '2022-01-24 14:22:51'),
(18, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 14:30:33'),
(19, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 14:30:56'),
(20, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 14:31:26'),
(21, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 14:48:36'),
(22, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 14:50:51'),
(23, 'chandni@sodainmind.com', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 14:54:16'),
(24, 'admin@gmail.com', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 15:05:43'),
(25, 'chandni@sodainmind.com', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 15:06:34'),
(26, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 15:07:27'),
(27, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 15:09:44'),
(28, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 15:11:08'),
(29, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 15:13:23'),
(30, 'home', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 17:09:49'),
(31, 'chandni@sodainmind.com', 'gurri.dhiman85@gmail.com', '0', '2022-01-24 17:12:14'),
(32, 'home', 'gurri.dhiman85@gmail.com', 'Data Scientist', '2022-01-24 17:26:40'),
(33, 'home', 'gurri.dhiman85@gmail.com', 'Data Scientist', '2022-01-24 17:34:40'),
(34, 'chandni@sodainmind.com', 'gurri.dhiman85@gmail.com', 'Data Scientist', '2022-01-24 17:37:05'),
(35, 'chandni@sodainmind.com', 'gurri.dhiman85@gmail.com', 'ML', '2022-01-24 17:38:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
