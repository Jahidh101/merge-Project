-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2022 at 03:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `merge_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_users`
--

CREATE TABLE `all_users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(300) NOT NULL,
  `user_types_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `is_verified` int(10) NOT NULL DEFAULT 0,
  `profile_pic` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_users`
--

INSERT INTO `all_users` (`id`, `username`, `password`, `name`, `gender`, `phone`, `email`, `address`, `user_types_id`, `status`, `email_verified_at`, `verification_code`, `is_verified`, `profile_pic`) VALUES
(1, 'hasan12', '81dc9bdb52d04dc20036dbd8313ed055', 'Hasan md', 'male', '01798765432', 'jahidh101894@gmail.com', 'Kamarpara', 1, 1, NULL, NULL, 1, 'storage/profile_pics/hasan121647019091.jpg'),
(2, 'alam22', '6074c6aa3488f3c2dddff2a7ca821aab', 'Joshim Alam', 'male', '01899887766', 'alam2@gmail.com', 'Tongi', 2, 1, NULL, NULL, 1, 'storage/profile_pics/profile3.jpg'),
(16, 'alina', 'b0baee9d279d34fa1dfd71aadb908c3f', 'aaa', 'female', NULL, 'alina@gmail.com', 'Mogbazar', 3, 1, '2022-03-07 16:30:58', '948c86d726f6a4b220a6afdd2377440d1245038c', 1, 'storage/profile_pics/alina1649439658.jpg'),
(18, 'mmmmm', '81dc9bdb52d04dc20036dbd8313ed055', 'alam', 'male', NULL, 'alam@gmail.com', 'Uttara, Dhaka', 2, 1, '2022-03-07 16:48:56', '6fb624fccfcec278ca609eb15b43d685ca913d96', 1, 'storage/profile_pics/profile2.jpg'),
(19, 'gggggg', '81dc9bdb52d04dc20036dbd8313ed055', 'fddd', 'male', '01934465432', 'shrou101@gmail.com', 'dhaka, uttara 1111', 3, 1, '2022-03-09 16:48:27', '3c2e744e8340150346229ea51b11601fdb7aec4c', 1, 'storage/profile_pics/gggggg1647002242.jpg'),
(21, 'jahangir1', '81dc9bdb52d04dc20036dbd8313ed055', 'hasan jahangir', 'male', NULL, 'shroud@gmail.com', 'dhaka', 3, 1, '2022-03-13 13:02:27', 'c91f4ba05e5434e34e7ebd3e4db8a9b4347f16e2', 1, NULL),
(22, 'jamal', '81dc9bdb52d04dc20036dbd8313ed055', 'jamal uddin', 'male', NULL, 'shrou@gmail.com', 'uttara', 3, 1, '2022-03-13 16:57:05', '7396acd0faae680fc486003955202b87ff9df6ef', 1, NULL),
(23, 'hridoy', '81dc9bdb52d04dc20036dbd8313ed055', 'Hridoy khan', 'male', NULL, 'fghfh@gmail.com', 'tongi', 5, 1, '2022-03-13 17:01:33', 'e68e1e87ba644370f4b3a81876cbfedbe707bcca', 1, NULL),
(24, 'hasan1', '81dc9bdb52d04dc20036dbd8313ed055', 'hasan joni', 'male', NULL, 'jsfds@hjdgfd', 'fhgfjfgh', 4, 1, NULL, 'f04d1f0e7e96dac3204983f595d7bba4cb17b8f5', 1, NULL),
(25, 'delivary1', '81dc9bdb52d04dc20036dbd8313ed055', 'Delivary man', 'male', NULL, 'shroudh101@gmail.com', 'dhaka', 5, 1, '2022-04-01 06:17:10', '68000ae2952d070f08ba158001852c77ff5fb99b', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `medicines_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `price` double NOT NULL,
  `ordered` int(5) NOT NULL DEFAULT 0,
  `order_id` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `username`, `medicines_id`, `quantity`, `price`, `ordered`, `order_id`) VALUES
(9, 'gggggg', 4, 10, 30, 1, '1648815107gggggg'),
(10, 'gggggg', 8, 10, 10, 1, '1648815107gggggg'),
(11, 'gggggg', 4, 6, 18, 1, '1648815158gggggg'),
(12, 'gggggg', 8, 5, 5, 1, '1648815158gggggg'),
(13, 'gggggg', 2, 5, 10, 1, '1648815158gggggg'),
(14, 'gggggg', 2, 15, 30, 1, '1649522997gggggg'),
(16, 'gggggg', 4, 10, 30, 1, '1649522997gggggg');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `sent_time` datetime NOT NULL,
  `is_read` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `sender`, `receiver`, `message`, `sent_time`, `is_read`) VALUES
(1, 'gggggg', 'alam22', 'Hello doctor hdgffdskhgbkhfdhg gdf dfh htr h  fh  fh fh   h  h fh  f hfhshfhf h f h  fh f', '2022-03-12 10:51:55', 1),
(2, 'alam22', 'gggggg', 'hello patient gggggg g hgfhfg hfg h gh  ghg hg hgh fg h gf h g h g h gh gh g h fg h g h g  hg hfg h fh  f', '2022-03-12 10:51:55', 1),
(3, 'gggggg', 'alam22', 'second doctor\"s msfgf ghfhfgjhtghg hej thg jgh  j h g j gh jgh  j gh jgh jhg j ghj gh jgh jgh  jhg jgh  jg', '2022-03-12 10:51:55', 1),
(4, 'alam22', 'gggggg', 'reply patient gggggg hg f h fghrt,yhnrtjhmnrt h  rtnh rth rthtrmn hmnrth rthrmtn hrtmn hrt htrhrtmnhtmnrf htrmnh rth r', '2022-03-12 10:51:55', 1),
(5, 'gggggg', 'mmmmm', 'hi doctor mmmmmm hgfhgfhfghnh f h fhfgnhnfg hfg hnfgnh nfh fgmnh fgmnh fgmnh fgnmh fnmh fnfg', '2022-03-12 11:06:00', 1),
(6, 'mmmmm', 'gggggg', 'hi patient gggggg i am mmmmm fvhfghgfhfgbfg h h fh fg hfh h  hfg hfg hfg hfg h fh fhfghf', '2022-03-12 11:06:00', 1),
(7, 'gggggg', 'mmmmm', 'seconf msg hi doctor mmmmmm ghg h ghj g h fg hfgjhgfjhfgjf gdhrtyr hthrtfhf hrghgfh ghgfhn hfghfgh  hgfhfghfghf', '2022-03-12 11:06:00', 1),
(8, 'mmmmm', 'gggggg', 'second msg from doctor mmmmmm to gggggg hfghfhftghrfthtfgh', '2022-03-12 11:06:00', 1),
(9, 'gggggg', 'alam22', 'thirm msg from gggggg to alam22', '2022-03-13 08:45:22', 1),
(10, 'gggggg', 'alam22', 'fourth msg from gggggg to alam22', '2022-03-13 08:47:19', 1),
(11, 'jahangir1', 'alam22', 'hi i am jahangir', '2022-03-13 20:23:12', 1),
(12, 'alina', 'alam22', 'hi i am alina', '2022-03-13 20:42:32', 1),
(13, 'jahangir1', 'alam22', 'hi my second msg to alam12', '2022-03-13 21:44:32', 1),
(14, 'jahangir1', 'mmmmm', 'me to mmmmm', '2022-03-13 21:45:52', 0),
(15, 'alam22', 'gggggg', 'hi hehe', '2022-03-13 22:26:02', 1),
(16, 'alam22', 'gggggg', 'hi my msg to gggggg', '2022-03-13 22:26:43', 0),
(17, 'jahangir1', 'alam22', 'hi you there', '2022-03-14 08:47:30', 1),
(18, 'gggggg', 'alam22', 'hello is me', '2022-04-10 19:45:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `delivary_man_info`
--

CREATE TABLE `delivary_man_info` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `availability` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivary_man_info`
--

INSERT INTO `delivary_man_info` (`id`, `username`, `availability`) VALUES
(1, 'hridoy', 1),
(2, 'delivary1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `login_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `username`, `login_time`) VALUES
(1, 'hasan12', '2022-03-02 22:15:25'),
(2, 'gggggg', '2022-03-14 07:37:12'),
(3, 'gggggg', '2022-03-14 07:43:47'),
(4, 'hasan12', '2022-03-14 08:37:02'),
(5, 'jahangir1', '2022-03-14 08:38:38'),
(6, 'alam22', '2022-03-14 08:39:44'),
(7, 'gggggg', '2022-03-14 08:40:08'),
(8, 'jahangir1', '2022-03-14 08:42:15'),
(9, 'gggggg', '2022-03-14 08:45:52'),
(10, 'jahangir1', '2022-03-14 08:46:54'),
(11, 'alam22', '2022-03-14 08:47:10'),
(12, 'mmmmm', '2022-03-14 08:48:38'),
(13, 'hasan12', '2022-03-24 19:13:49'),
(14, 'hasan1', '2022-03-24 19:19:06'),
(15, 'hasan12', '2022-03-24 19:20:13'),
(16, 'hasan1', '2022-03-24 19:20:47'),
(17, 'hasan1', '2022-03-24 19:32:41'),
(18, 'hasan1', '2022-03-24 19:33:52'),
(19, 'hasan1', '2022-03-24 19:34:21'),
(20, 'hasan1', '2022-03-24 19:35:11'),
(21, 'hasan1', '2022-03-25 14:30:27'),
(22, 'hasan1', '2022-03-25 14:31:35'),
(23, 'hasan1', '2022-03-25 14:47:42'),
(24, 'gggggg', '2022-03-25 20:57:30'),
(26, 'hasan12', '2022-03-25 21:00:12'),
(27, 'hasan12', '2022-03-26 15:58:09'),
(28, 'hasan1', '2022-03-26 16:34:53'),
(29, 'gggggg', '2022-03-26 20:43:32'),
(30, 'hasan1', '2022-03-26 21:08:06'),
(31, 'gggggg', '2022-03-26 21:53:54'),
(32, 'gggggg', '2022-03-31 19:08:16'),
(33, 'gggggg', '2022-04-01 01:04:10'),
(34, 'gggggg', '2022-04-01 11:15:34'),
(35, 'hasan1', '2022-04-01 11:21:09'),
(36, 'hasan12', '2022-04-01 12:15:00'),
(37, 'delivary1', '2022-04-01 17:35:47'),
(38, 'hasan1', '2022-04-01 17:36:21'),
(39, 'gggggg', '2022-04-01 17:41:21'),
(40, 'hasan1', '2022-04-02 13:15:08'),
(41, 'gggggg', '2022-04-02 13:15:46'),
(42, 'hasan12', '2022-04-02 13:32:26'),
(43, 'hasan1', '2022-04-02 13:59:23'),
(44, 'hasan1', '2022-04-02 18:42:16'),
(45, 'gggggg', '2022-04-02 19:02:30'),
(46, 'hridoy', '2022-04-02 19:31:42'),
(47, 'hridoy', '2022-04-02 19:32:36'),
(48, 'delivary1', '2022-04-02 21:26:58'),
(49, 'gggggg', '2022-04-02 21:27:20'),
(50, 'hasan1', '2022-04-02 21:28:42'),
(51, 'delivary1', '2022-04-02 21:32:09'),
(52, 'mmmmm', '2022-04-07 22:44:28'),
(53, 'mmmmm', '2022-04-07 22:44:30'),
(54, 'hasan12', '2022-04-07 22:44:38'),
(55, 'hasan12', '2022-04-07 22:45:00'),
(56, 'hasan12', '2022-04-07 22:45:50'),
(57, 'hasan12', '2022-04-07 22:46:03'),
(58, 'hasan12', '2022-04-07 22:46:49'),
(59, 'hasan12', '2022-04-07 22:46:55'),
(60, 'hasan12', '2022-04-07 22:47:10'),
(61, 'hasan12', '2022-04-07 22:47:13'),
(62, 'hasan12', '2022-04-07 22:47:17'),
(63, 'hasan12', '2022-04-07 22:52:03'),
(64, 'jahangir1', '2022-04-07 22:54:46');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_add_history`
--

CREATE TABLE `medicine_add_history` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `medicine_name` varchar(40) NOT NULL,
  `type` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adding_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_storages`
--

CREATE TABLE `medicine_storages` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` int(10) NOT NULL,
  `weight` varchar(40) NOT NULL,
  `price_per_piece` double DEFAULT NULL,
  `quantity` int(30) NOT NULL,
  `permission` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine_storages`
--

INSERT INTO `medicine_storages` (`id`, `name`, `type`, `weight`, `price_per_piece`, `quantity`, `permission`) VALUES
(2, 'Napa', 2, '500 mg', 2, 470, 1),
(3, 'Paracetamol', 2, '500 mg', 4, 150, 1),
(4, 'Atorvastatin', 2, '40 mg', 3, 80, 1),
(8, 'Napa', 2, '200 mg', 1, 140, 1),
(10, 'Napa', 1, '400 mg', NULL, 30, 1),
(11, 'Napa', 2, '300 mg', 2, 15, 0),
(14, 'Napa', 2, '50 mg', NULL, 30, 1),
(15, 'Napa', 2, '70 mg', NULL, 30, 1),
(16, 'napppa', 2, '20 mg', NULL, 40, 1);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_types`
--

CREATE TABLE `medicine_types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicine_types`
--

INSERT INTO `medicine_types` (`id`, `type`) VALUES
(1, 'capsule'),
(2, 'tablet'),
(3, 'syrup');

-- --------------------------------------------------------

--
-- Table structure for table `order_lists`
--

CREATE TABLE `order_lists` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `status` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `address` varchar(500) NOT NULL,
  `ordered_at` datetime DEFAULT NULL,
  `seller_username` varchar(20) DEFAULT NULL,
  `accept_reject_at` datetime DEFAULT NULL,
  `delivary_username` varchar(20) DEFAULT NULL,
  `delivary_assigned_at` datetime DEFAULT NULL,
  `delivary_completed_at` datetime DEFAULT NULL,
  `product_received_at` datetime DEFAULT NULL,
  `refund` int(11) NOT NULL DEFAULT 0,
  `paid` varchar(5) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_lists`
--

INSERT INTO `order_lists` (`id`, `order_id`, `price`, `status`, `username`, `address`, `ordered_at`, `seller_username`, `accept_reject_at`, `delivary_username`, `delivary_assigned_at`, `delivary_completed_at`, `product_received_at`, `refund`, `paid`) VALUES
(4, '0', 0, 100, 'hasan12', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '0'),
(5, '1648815107gggggg', 55, 9, 'gggggg', 'dhaka, uttara 1230', '2022-04-01 18:11:47', 'hasan1', '2022-04-01 18:18:23', 'delivary1', '2022-04-02 21:30:28', '2022-04-02 22:06:09', '2022-04-02 21:54:10', 0, 'Yes'),
(6, '1648815158gggggg', 48, 0, 'gggggg', 'dhaka, uttara 1230', '2022-04-01 18:12:38', 'hasan1', '2022-04-01 19:28:35', NULL, NULL, NULL, NULL, 0, 'No'),
(15, '1649522997gggggg', 75, 9, 'gggggg', 'dhaka, uttara 1111', '2022-04-09 22:49:57', 'hasan1', '2022-04-09 23:06:38', 'hridoy', '2022-04-09 23:41:38', '2022-04-09 23:51:26', '2022-04-09 23:49:55', 0, 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `token` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `expired_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `username`, `token`, `created_at`, `expired_at`) VALUES
(1, 'hasan12', 'kC32peEgDiXn4Ay6geJXRhCzK5r2EiHyZRaBiobIXRXI0nPenbeeINKq5jFgttKr', '2022-04-08 14:20:11', NULL),
(2, 'delivary1', 'Iev2hZDXd2ztqBQeFG1pJkqPFags6kDhCVDxgyF5n0wTm1jaWP04a60xkaX4Pc92', '2022-04-08 15:00:33', NULL),
(11, 'hasan12', 'SGZH8WaeLG5cB67T0mvciaj01RBEKSa6fCfhVk51m8IerQA8otMMWisaqcOofIx3', '2022-04-08 16:44:48', NULL),
(12, 'delivary1', '7tnMTqG0GQhIwceLKKSKXVsqKQtnloPowW1sJQktWG24ZeeSANqbODo32HNyUrAl', '2022-04-08 16:47:00', NULL),
(13, 'delivary1', 'hEry6XrDNFu3GN4PwssGNGkeIbQG3hwFL6o2Rt1gelgYTB7HQiL1N8xXwbvPjwKS', '2022-04-08 16:49:02', NULL),
(14, 'hasan12', 'AmjEnjUNlYBTAx9p17C7X7gUYKgc8xZ4X4ZxAlsZqC2nKiHg8Y3l1YqIDABJqzbc', '2022-04-08 16:49:23', NULL),
(15, 'hasan12', 'NF12eYeiuwQ0UGnOpjRFgqbkNDWuXSHUjo9EOPpwbPBNAxXyN5zAAwWWn32YNjp1', '2022-04-08 16:50:37', NULL),
(16, 'delivary1', 'puiHQvsmx36gK35yoEA9MLKdxAZLhGUA8N3bNkFcJodl0rpk270cwuUJpUMc816n', '2022-04-08 16:50:54', NULL),
(17, 'hasan12', 'LamEyZ5uMGOYu7e6KAUDfXmGVPi24dUYtoS1isUyHguCd7YnCzNCmR0J8UEqY1Rv', '2022-04-08 16:52:29', NULL),
(18, 'delivary1', 'w27ouxgnTzS35MyyeunhvlA1EWgYqDu5EFYEB4HWYxMSCNPLk0fHzXhnckMMUnXS', '2022-04-08 16:52:49', NULL),
(19, 'hasan12', 'OcLmEUXtsuoE6fSbCfCFHkY91IRdqD8eMqaVxPgob9y45capNqoqvSwwY3nvgjEk', '2022-04-08 16:53:51', NULL),
(20, 'delivary1', 'BlG0so94CmznyNoxSrX2fMw4cdbLPD3WWr23DJ4iAao0ehbhG6Vgng3Lqm4Xu7wm', '2022-04-08 16:54:32', NULL),
(21, 'hasan12', 'SYEVQciM5owRnje5vrVnHR1ZYppRfc2PsTMymFPe55LoAmT399WDSxtHEQ3KYH31', '2022-04-08 16:54:50', NULL),
(22, 'delivary1', '9sGD4t4qS9uXYpbJyYdEMk7A6BVKLB03BmkKukubeh1KiQcpZtN0xasJok7d7RgU', '2022-04-08 16:55:07', NULL),
(23, 'hasan12', '443NhsKji4zm6ufZeLqQ7C2BNPDQvhrLdvA3gMG05gcxwIUQCCIk9jteVv7VgHqr', '2022-04-08 16:55:36', NULL),
(24, 'hasan12', 'ihOXEtzxq8iJz1VzpHNz4YdUCq804BJClGnsmmCddV6aU0adP1UYOKlndK3wFO7I', '2022-04-08 16:56:26', NULL),
(25, 'delivary1', '2XZf3dERQVYqBJrk30PT4i28fd3bWTTB2G1GSFR4AaZYKXN85uOyZsOXM614hnFB', '2022-04-08 16:56:51', NULL),
(26, 'hasan12', 'dP4uhhFkkRLnR9Digod2KTl9besJl3V3umW219Pk9Kq7VD6pyY4lG8Tquh2Gbd8V', '2022-04-08 16:57:40', NULL),
(27, 'hasan12', 'gWU5a2z0xOBFq76CPdxc0tLLATNGBLFUXWlmPA3d8wbhht5D9WVmgqG6L5ROBcI9', '2022-04-08 17:11:12', NULL),
(28, 'hasan12', 'DrBkflFIugQBMOQPtvFxH4KSTxcRczqTcei6BHvOD9PxM9pBjdEODJ8aGBWR6MBl', '2022-04-08 17:20:52', NULL),
(29, 'delivary1', 'yAs0UJSP5qfivwiDNO7mcqGOBd0tnnDLoae7KhIY0F3Aypd5BVOCka3fC0TXuu8a', '2022-04-08 17:21:18', NULL),
(30, 'hasan12', 'Ui7GrAPg4WMzcrtj1PDGuls8Abp18qhDES28btbUAdwCfgGBY9ln8T0sW1Y8GGc2', '2022-04-08 17:22:40', NULL),
(31, 'delivary1', '13BMzhXTwZlR54UQcCtcmGvxsqIFpO9VF90BQJk9U2xmrzYwl2fIrm9pk8JgfWpe', '2022-04-08 17:25:00', NULL),
(32, 'hasan12', '7FjIYVQm5NTKde5VLI1eolPS4G5og26UctgOGQR7sL6D1gIO4a8M2bn5y70JBExU', '2022-04-08 17:26:59', NULL),
(33, 'delivary1', 'uHnVBfSjNN4BsxWXQkkIeZTcWLFBeUXNj86oBVecjgfN61572v0YJGine0luKyQn', '2022-04-08 19:04:42', NULL),
(34, 'hasan12', 'RGvHHOph0a1yYmov6mB484vUvlQA56lXD0PsQlFljlhBzXoffW7XA4cIPmiZYqcz', '2022-04-08 19:17:06', NULL),
(35, 'delivary1', '4qifmvAczbvSEyPvtYAlOwf3XbqM0pvxuh6eNDKzxcOQWXWmjAqfsIVusmg65kuY', '2022-04-08 19:17:19', NULL),
(36, 'gggggg', 'uKVBlYJ8NcojX3fQTusofK1oyhbSNG3m3UXkBdATd68LdakbvuqrnLoRDfqMEG4P', '2022-04-08 19:17:31', NULL),
(37, 'hasan12', '3b880SSq2shCcLcdJAp1ft12Hri4tIW2uR2DsEr7elJOkfXCLIIMKiKKxeTja8xZ', '2022-04-08 19:20:14', NULL),
(38, 'hasan12', 'PpX3mSX92mByunsMr9VdRmsAMnvvc5P7ExPGGoLNIjNquSpd1iiMWhF7cdRQtNW2', '2022-04-08 19:24:25', NULL),
(39, 'hasan12', 'HhpCeSUZchVRBAnKG55sQLcM9lDecgPkAi7T5KCh7A7GaYtDTA6tzg0G4xCdeEy5', '2022-04-08 19:47:06', NULL),
(40, 'delivary1', 'pdH3Iq9hhSMpNp8YXdp9P0pmDGK9uWDrHQg2xxfwrNnaowtZIiJKMykYaEM5vMWH', '2022-04-08 19:47:34', NULL),
(41, 'delivary1', 'IQ1NKADperYMcsAvgQKJnkbM6VN514zUvUJuhcI9zA62w7b7zN4vWJF2VEzDU4lR', '2022-04-08 19:48:51', NULL),
(42, 'hasan12', 'XRJoWoe0fV4YKSPe6uI6zEE52wzfEX5sOC9w31AZAVrhBVJf1mJtKLzBuutKytNv', '2022-04-08 19:49:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type`) VALUES
(1, 'admin'),
(2, 'doctor'),
(3, 'patient'),
(4, 'seller'),
(5, 'delivaryman');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_users`
--
ALTER TABLE `all_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `verification_code` (`verification_code`),
  ADD KEY `all_users_user_types_fk` (`user_types_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivary_man_info`
--
ALTER TABLE `delivary_man_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_history_all_users_fk` (`username`);

--
-- Indexes for table `medicine_add_history`
--
ALTER TABLE `medicine_add_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_storages`
--
ALTER TABLE `medicine_storages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_types`
--
ALTER TABLE `medicine_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_lists`
--
ALTER TABLE `order_lists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `all_users`
--
ALTER TABLE `all_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `delivary_man_info`
--
ALTER TABLE `delivary_man_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `medicine_add_history`
--
ALTER TABLE `medicine_add_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_storages`
--
ALTER TABLE `medicine_storages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `medicine_types`
--
ALTER TABLE `medicine_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_lists`
--
ALTER TABLE `order_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `all_users`
--
ALTER TABLE `all_users`
  ADD CONSTRAINT `all_users_user_types_fk` FOREIGN KEY (`user_types_id`) REFERENCES `user_types` (`id`);

--
-- Constraints for table `login_history`
--
ALTER TABLE `login_history`
  ADD CONSTRAINT `login_history_all_users_fk` FOREIGN KEY (`username`) REFERENCES `all_users` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
