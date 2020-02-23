-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020 年 2 朁E19 日 16:41
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `monsto`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `kuji`
--

CREATE TABLE IF NOT EXISTS `kuji` (
`id` int(12) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `imgs` blob,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `rea` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `user_date`
--

CREATE TABLE IF NOT EXISTS `user_date` (
`id` int(12) NOT NULL,
  `user` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `money` int(8) NOT NULL DEFAULT '2000',
  `pey` int(8) NOT NULL DEFAULT '0',
  `ng0` int(1) NOT NULL DEFAULT '0',
  `ng1` int(1) NOT NULL DEFAULT '0',
  `ng2` int(1) NOT NULL DEFAULT '0',
  `ng3` int(1) NOT NULL DEFAULT '0',
  `ng4` int(1) NOT NULL DEFAULT '0',
  `sei0` int(1) NOT NULL DEFAULT '0',
  `sei1` int(1) NOT NULL DEFAULT '0',
  `sei2` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `user_log`
--

CREATE TABLE IF NOT EXISTS `user_log` (
`id` int(12) NOT NULL,
  `user` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `money` int(8) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kuji`
--
ALTER TABLE `kuji`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_date`
--
ALTER TABLE `user_date`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kuji`
--
ALTER TABLE `kuji`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_date`
--
ALTER TABLE `user_date`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
