-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2017 at 04:32 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nave`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `title` varchar(99) NOT NULL,
  `filename` varchar(99) NOT NULL,
  `nickname` varchar(99) NOT NULL,
  `date` timestamp NOT NULL,
  `update#` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `title`, `filename`, `nickname`, `date`, `update#`) VALUES
(14, '×¤×§×•×“×” ×“\'', '9cf313cc36404640256eca6792c3c2e6.pdf', '×¨×‘×˜ × ×•×•×” ×©×˜×¨×™×ª', '2017-06-16 14:48:13', 1),
(13, '×¤×§×•×“×” ×’\'', 'e294fec3d0c30db8447d1cc35c75fefc.pdf', '×¨×‘×˜ × ×•×•×” ×©×˜×¨×™×ª', '2017-06-16 14:47:51', 4),
(12, '×¤×§×•×“×” ×‘\'', '8ee9857b30c2a4c66a0791d783672aaf.pdf', '×¡×ž"×œ × ×•×•×”', '2017-06-16 14:47:22', 1),
(11, '×¤×§×•×“×” ×\'', '1648bc9adef690fdef65b796031fde8e.pdf', '×¨×‘×˜ × ×•×•×” ×©×˜×¨×™×ª', '2017-06-16 14:46:52', 12),
(15, '×¤×§×•×“×” ×”\'', '3ccf65a53c4f5ab4e18e211fbf90525e.pdf', '×¨×‘×˜ × ×•×•×” ×©×˜×¨×™×ª', '2017-06-16 14:48:27', 18),
(16, '×¤×§×•×“×” ×•\'', '98548019b4e79f6dfb638718c90accd4.pdf', '×¨×‘×˜ × ×•×•×” ×©×˜×¨×™×ª', '2017-06-16 14:48:41', 12),
(17, '×¤×§×•×“×” ×–\'', '9c10e990cfd7d6ef322888eca5de3f52.pdf', '×¨×‘×˜ × ×•×•×” ×©×˜×¨×™×ª', '2017-06-16 14:48:52', 1),
(18, '×¤×§×•×“×” ×—\'', 'd10dc89e8261251166fdd797853b7a3e.pdf', '×¨×‘×˜ × ×•×•×” ×©×˜×¨×™×ª', '2017-06-16 14:49:04', 2),
(19, '×¤×§×•×“×” ×˜\'', 'ec2f36c687ad0478df6cc23ac572eb32.pdf', '×¡×ž"×œ × ×•×•×”', '2017-06-16 14:49:17', 1),
(20, '×¤×§×•×“×” ×ž××™ 2017', 'a74e110fe13524f0d62a305601314fb2.pdf', '×¨×‘×˜ × ×•×•×” ×©×˜×¨×™×ª', '2017-06-16 14:54:32', 11);

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `id` int(11) NOT NULL,
  `name` varchar(99) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`id`, `name`, `can_add`, `can_edit`) VALUES
(1, 'admin', 1, 1),
(2, 'editor', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `id` int(11) NOT NULL,
  `title` varchar(999) NOT NULL,
  `html` text CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`id`, `title`, `html`, `user_id`, `date`) VALUES
(6, '', '\r\n                &lt;thead&gt;\r\n                    &lt;tr&gt;\r\n                        &lt;th&gt;×ž×¡\'&lt;/th&gt;\r\n                        &lt;th&gt;×¡×™×ž×•×œ ×¢×•×¨×§&lt;/th&gt;\r\n                        &lt;th&gt;×§×¦×” ×\'&lt;/th&gt;\r\n                        &lt;th&gt;×ª×ž×¡×•×¨×ª&lt;/th&gt;\r\n                        &lt;th&gt;×§×¦×” ×‘\'&lt;/th&gt;\r\n                        &lt;th&gt;×ž×¦×¤×™×Ÿ&lt;/th&gt;\r\n                        &lt;th&gt;× ×ª×‘&lt;/th&gt;\r\n                        &lt;th&gt;×—×ž×›&quot;×¡&lt;/th&gt;\r\n                        &lt;th&gt;×”×¢×¨×•×ª&lt;/th&gt;\r\n                        &lt;th&gt;&lt;/th&gt;\r\n                    &lt;/tr&gt;\r\n                &lt;/thead&gt;\r\n                &lt;tbody&gt;\r\n                    \r\n                &lt;tr&gt;&lt;td contenteditable=&quot;&quot;&gt;1&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td&gt;\r\n            &lt;button class=&quot;btn btn-danger delete-col&quot;&gt;×ž×—×§&lt;/button&gt;\r\n        &lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td contenteditable=&quot;&quot;&gt;2&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td&gt;\r\n            &lt;button class=&quot;btn btn-danger delete-col&quot;&gt;×ž×—×§&lt;/button&gt;\r\n        &lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;\r\n            ', 1, '2017-08-19 14:42:53'),
(5, '×˜×‘×œ×” ×\'', '\r\n            \r\n            \r\n            \r\n            \r\n            \r\n                &lt;thead&gt;\r\n                    &lt;tr&gt;\r\n                        &lt;th&gt;×ž×¡\'&lt;/th&gt;\r\n                        &lt;th&gt;×¡×™×ž×•×œ ×¢×•×¨×§&lt;/th&gt;\r\n                        &lt;th&gt;×§×¦×” ×\'&lt;/th&gt;\r\n                        &lt;th&gt;×ª×ž×¡×•×¨×ª&lt;/th&gt;\r\n                        &lt;th&gt;×§×¦×” ×‘\'&lt;/th&gt;\r\n                        &lt;th&gt;×ž×¦×¤×™×Ÿ&lt;/th&gt;\r\n                        &lt;th&gt;× ×ª×‘&lt;/th&gt;\r\n                        &lt;th&gt;×—×ž×›&quot;×¡&lt;/th&gt;\r\n                        &lt;th&gt;×”×¢×¨×•×ª&lt;/th&gt;\r\n                        &lt;th&gt;&lt;/th&gt;\r\n                    &lt;/tr&gt;\r\n                &lt;/thead&gt;\r\n                &lt;tbody&gt;\r\n                    \r\n                &lt;tr&gt;&lt;td contenteditable=&quot;&quot;&gt;1&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;2&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;3&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;4&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;5&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;6&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;7&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;8&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;9&lt;/td&gt;&lt;td&gt;\r\n            &lt;button class=&quot;btn btn-danger delete-col&quot;&gt;×ž×—×§&lt;/button&gt;\r\n        &lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;999&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;123123&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;999999999&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td&gt;\r\n            &lt;button class=&quot;btn btn-danger delete-col&quot;&gt;×ž×—×§&lt;/button&gt;\r\n        &lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;\r\n                                                    ', 1, '2017-08-19 13:39:07'),
(7, '×’××’×’×¨×¢', '\r\n                &lt;thead&gt;\r\n                    &lt;tr&gt;\r\n                        &lt;th&gt;×ž×¡\'&lt;/th&gt;\r\n                        &lt;th&gt;×¡×™×ž×•×œ ×¢×•×¨×§&lt;/th&gt;\r\n                        &lt;th&gt;×§×¦×” ×\'&lt;/th&gt;\r\n                        &lt;th&gt;×ª×ž×¡×•×¨×ª&lt;/th&gt;\r\n                        &lt;th&gt;×§×¦×” ×‘\'&lt;/th&gt;\r\n                        &lt;th&gt;×ž×¦×¤×™×Ÿ&lt;/th&gt;\r\n                        &lt;th&gt;× ×ª×‘&lt;/th&gt;\r\n                        &lt;th&gt;×—×ž×›&quot;×¡&lt;/th&gt;\r\n                        &lt;th&gt;×”×¢×¨×•×ª&lt;/th&gt;\r\n                        &lt;th&gt;&lt;/th&gt;\r\n                    &lt;/tr&gt;\r\n                &lt;/thead&gt;\r\n                &lt;tbody&gt;\r\n                    \r\n                &lt;tr&gt;&lt;td contenteditable=&quot;&quot;&gt;1&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td&gt;\r\n            &lt;button class=&quot;btn btn-danger delete-col&quot;&gt;×ž×—×§&lt;/button&gt;\r\n        &lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td contenteditable=&quot;&quot;&gt;2&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td&gt;\r\n            &lt;button class=&quot;btn btn-danger delete-col&quot;&gt;×ž×—×§&lt;/button&gt;\r\n        &lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;\r\n            ', 1, '2017-08-19 14:43:02'),
(8, '×¨×¢×¨×¢×¨×¢×¨', '\r\n            \r\n                &lt;thead&gt;\r\n                    &lt;tr&gt;\r\n                        &lt;th&gt;×ž×¡\'&lt;/th&gt;\r\n                        &lt;th&gt;×¡×™×ž×•×œ ×¢×•×¨×§&lt;/th&gt;\r\n                        &lt;th&gt;×§×¦×” ×\'&lt;/th&gt;\r\n                        &lt;th&gt;×ª×ž×¡×•×¨×ª&lt;/th&gt;\r\n                        &lt;th&gt;×§×¦×” ×‘\'&lt;/th&gt;\r\n                        &lt;th&gt;×ž×¦×¤×™×Ÿ&lt;/th&gt;\r\n                        &lt;th&gt;× ×ª×‘&lt;/th&gt;\r\n                        &lt;th&gt;×—×ž×›&quot;×¡&lt;/th&gt;\r\n                        &lt;th&gt;×”×¢×¨×•×ª&lt;/th&gt;\r\n                        &lt;th&gt;&lt;/th&gt;\r\n                    &lt;/tr&gt;\r\n                &lt;/thead&gt;\r\n                &lt;tbody&gt;\r\n                    \r\n                &lt;tr&gt;&lt;td contenteditable=&quot;&quot;&gt;1&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td&gt;\r\n            &lt;button class=&quot;btn btn-danger delete-col&quot;&gt;×ž×—×§&lt;/button&gt;\r\n        &lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td contenteditable=&quot;&quot;&gt;3&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td contenteditable=&quot;&quot;&gt;--&lt;/td&gt;&lt;td&gt;\r\n            &lt;button class=&quot;btn btn-danger delete-col&quot;&gt;×ž×—×§&lt;/button&gt;\r\n        &lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;\r\n                    ', 1, '2017-08-19 14:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(99) NOT NULL,
  `password_hashed` varchar(32) NOT NULL,
  `can_edit_tables` tinyint(1) NOT NULL DEFAULT '0',
  `can_add_tables` tinyint(1) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password_hashed`, `can_edit_tables`, `can_add_tables`, `is_admin`) VALUES
(1, 'yakov', '81dc9bdb52d04dc20036dbd8313ed055', 1, 1, 1),
(3, 'Nave', '51d917f1e20bad9f5258378d532fe8b4', 1, 1, 1),
(4, '', '81dc9bdb52d04dc20036dbd8313ed055', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
