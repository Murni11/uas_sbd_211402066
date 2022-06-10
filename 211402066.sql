-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220609.11e34a6fec
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 08:06 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_manager`
--

-- --------------------------------------------------------

--
-- Structure for view `211402066`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `211402066`  AS SELECT `a`.`id` AS `Task id`, `a`.`task_name` AS `Nama Task`, `a`.`task_status` AS `Status`, `a`.`indicators_id` AS `Kategori Indikator`, `a`.`task_priority` AS `Prioritas`, `a`.`user_create` AS `Creator ID`, `b`.`category_name` AS `Kategori`, `c`.`indicator_name` AS `Indikator`, `d`.`name` AS `Creator Name` FROM ((`task_indicators` `c` left join (`task_categories` `b` left join `task_plans` `a` on(`a`.`category_id` = `b`.`id`)) on(`a`.`indicators_id` = `c`.`id`)) left join `users` `d` on(`a`.`user_create` = `d`.`id`))  ;

--
-- VIEW `211402066`
-- Data: None
--

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



