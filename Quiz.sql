-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 04:41 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(255) NOT NULL,
  `answer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `answer_id`) VALUES
(1, 4),
(2, 6),
(3, 9),
(4, 15),
(5, 19),
(6, 23),
(7, 27),
(8, 30),
(9, 34),
(10, 38),
(11, 41),
(12, 46),
(13, 50),
(14, 53),
(15, 57),
(16, 64),
(17, 67),
(18, 70),
(19, 73),
(20, 78),
(21, 81),
(22, 86),
(23, 90),
(24, 96),
(25, 99),
(26, 103),
(27, 106),
(28, 110),
(29, 113),
(30, 118),
(31, 123),
(32, 128),
(33, 131),
(34, 136),
(35, 139),
(36, 144),
(37, 147),
(38, 151),
(39, 155),
(40, 158),
(41, 161),
(42, 167),
(43, 171),
(44, 175),
(45, 178),
(46, 182),
(47, 186),
(48, 190),
(49, 193),
(50, 197),
(51, 202),
(52, 207),
(53, 209),
(54, 214);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `ques_level` varchar(255) NOT NULL,
  `topic_id` int(255) NOT NULL,
  `is_enabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ques_level`, `topic_id`, `is_enabled`) VALUES
(1, 'Ques1', 'easy', 1, 1),
(2, 'Ques2', 'easy', 1, 1),
(3, 'Ques3', 'easy', 1, 1),
(4, 'Ques4', 'easy', 1, 1),
(5, 'Ques5', 'easy', 1, 1),
(6, 'Ques6', 'easy', 1, 1),
(7, 'Ques7', 'medium', 1, 1),
(8, 'Ques8', 'medium', 1, 1),
(9, 'Ques9', 'medium', 1, 1),
(10, 'Ques10', 'medium', 1, 1),
(11, 'Ques11', 'medium', 1, 1),
(12, 'Ques12', 'medium', 1, 1),
(13, 'Ques13', 'hard', 1, 1),
(14, 'Ques14', 'hard', 1, 1),
(15, 'Ques15', 'hard', 1, 1),
(16, 'Ques16', 'hard', 1, 1),
(17, 'Ques17', 'hard', 1, 1),
(18, 'Ques18', 'hard', 1, 1),
(19, 'Ques1', 'easy', 2, 1),
(20, 'Ques2', 'easy', 2, 1),
(21, 'Ques3', 'easy', 2, 1),
(22, 'Ques4', 'easy', 2, 1),
(23, 'Ques5', 'easy', 2, 1),
(24, 'Ques6', 'easy', 2, 1),
(25, 'Ques7', 'medium', 2, 1),
(26, 'Ques8', 'medium', 2, 1),
(27, 'Ques9', 'medium', 2, 1),
(28, 'Ques10', 'medium', 2, 1),
(29, 'Ques11', 'medium', 2, 1),
(30, 'Ques12', 'medium', 2, 1),
(31, 'Ques13', 'hard', 2, 1),
(32, 'Ques14', 'hard', 2, 1),
(33, 'Ques15', 'hard', 2, 1),
(34, 'Ques16', 'hard', 2, 1),
(35, 'Ques17', 'hard', 2, 1),
(36, 'Ques18', 'hard', 2, 1),
(37, 'Ques1', 'easy', 3, 1),
(38, 'Ques2', 'easy', 3, 1),
(39, 'Ques3', 'easy', 3, 1),
(40, 'Ques4', 'easy', 3, 1),
(41, 'Ques5', 'easy', 3, 1),
(42, 'Ques6', 'easy', 3, 1),
(43, 'Ques7', 'medium', 3, 1),
(44, 'Ques8', 'medium', 3, 1),
(45, 'Ques9', 'medium', 3, 1),
(46, 'Ques10', 'medium', 3, 1),
(47, 'Ques11', 'medium', 3, 1),
(48, 'Ques12', 'medium', 3, 1),
(49, 'Ques13', 'hard', 3, 1),
(50, 'Ques14', 'hard', 3, 1),
(51, 'Ques15', 'hard', 3, 1),
(52, 'Ques16', 'hard', 3, 1),
(53, 'Ques17', 'hard', 3, 1),
(54, 'Ques18', 'hard', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_options`
--

CREATE TABLE `quiz_options` (
  `id` int(255) NOT NULL,
  `q_id` int(255) NOT NULL,
  `options` varchar(255) NOT NULL,
  `is_enabled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quiz_options`
--

INSERT INTO `quiz_options` (`id`, `q_id`, `options`, `is_enabled`) VALUES
(1, 1, 'array_rev(1)', 1),
(2, 1, 'array_reverse(2)', 1),
(3, 1, 'array_recscsv(3)', 1),
(4, 1, 'array_recscv(4)', 1),
(5, 2, 'array_adarev(1)', 1),
(6, 2, 'arracscy_rev(2)', 1),
(7, 2, 'arbcjray_rev(3)', 1),
(8, 2, 'arracjsy_rev(4)', 1),
(9, 3, 'arbcjvaray_rev(1)', 1),
(10, 3, 'arbcjray_rev(2)', 1),
(11, 3, 'arcbjray_rev(3)', 1),
(12, 3, 'arxnray_rev(4)', 1),
(13, 4, 'arrxsaycc_rev(1)', 1),
(14, 4, 'abshxbrray_rev(2)', 1),
(15, 4, 'arsjbray_rev(3)', 1),
(16, 4, 'arracjsby_rev(4)', 1),
(17, 5, 'array_rev(1)', 1),
(18, 5, 'array_reverse(2)', 1),
(19, 5, 'array_recscsv(3)', 1),
(20, 5, 'array_recscv(4)', 1),
(21, 6, 'array_adarev(1)', 1),
(22, 6, 'arracscy_rev(2)', 1),
(23, 6, 'arbcjray_rev(3)', 1),
(24, 6, 'arracjsy_rev(4)', 1),
(25, 7, 'arbcjvaray_rev(1)', 1),
(26, 7, 'arbcjray_rev(2)', 1),
(27, 7, 'arcbjray_rev(3)', 1),
(28, 7, 'arxnray_rev(4)', 1),
(29, 8, 'arrxsaycc_rev(1)', 1),
(30, 8, 'abshxbrray_rev(2)', 1),
(31, 8, 'arsjbray_rev(3)', 1),
(32, 8, 'arracjsby_rev(4)', 1),
(33, 9, 'array_rev(1)', 1),
(34, 9, 'array_reverse(2)', 1),
(35, 9, 'array_recscsv(3)', 1),
(36, 9, 'array_recscv(4)', 1),
(37, 10, 'array_adarev(1)', 1),
(38, 10, 'arracscy_rev(2)', 1),
(39, 10, 'arbcjray_rev(3)', 1),
(40, 10, 'arracjsy_rev(4)', 1),
(41, 11, 'arbcjvaray_rev(1)', 1),
(42, 11, 'arbcjray_rev(2)', 1),
(43, 11, 'arcbjray_rev(3)', 1),
(44, 11, 'arxnray_rev(4)', 1),
(45, 12, 'arrxsaycc_rev(1)', 1),
(46, 12, 'abshxbrray_rev(2)', 1),
(47, 12, 'arsjbray_rev(3)', 1),
(48, 12, 'arracjsby_rev(4)', 1),
(49, 13, 'array_rev(1)', 1),
(50, 13, 'array_reverse(2)', 1),
(51, 13, 'array_recscsv(3)', 1),
(52, 13, 'array_recscv(4)', 1),
(53, 14, 'array_adarev(1)', 1),
(54, 14, 'arracscy_rev(2)', 1),
(55, 14, 'arbcjray_rev(3)', 1),
(56, 14, 'arracjsy_rev(4)', 1),
(57, 15, 'arbcjvaray_rev(1)', 1),
(58, 15, 'arbcjray_rev(2)', 1),
(59, 15, 'arcbjray_rev(3)', 1),
(60, 15, 'arxnray_rev(4)', 1),
(61, 16, 'arrxsaycc_rev(1)', 1),
(62, 16, 'abshxbrray_rev(2)', 1),
(63, 16, 'arsjbray_rev(3)', 1),
(64, 16, 'arracjsby_rev(4)', 1),
(65, 17, 'array_rev(1)', 1),
(66, 17, 'array_reverse(2)', 1),
(67, 17, 'array_recscsv(3)', 1),
(68, 17, 'array_recscv(4)', 1),
(69, 18, 'array_adarev(1)', 1),
(70, 18, 'arracscy_rev(2)', 1),
(71, 18, 'arbcjray_rev(3)', 1),
(72, 18, 'arracjsy_rev(4)', 1),
(73, 19, 'arbcjvaray_rev(1)', 1),
(74, 19, 'arbcjray_rev(2)', 1),
(75, 19, 'arcbjray_rev(3)', 1),
(76, 19, 'arxnray_rev(4)', 1),
(77, 20, 'arrxsaycc_rev(1)', 1),
(78, 20, 'abshxbrray_rev(2)', 1),
(79, 20, 'arsjbray_rev(3)', 1),
(80, 20, 'arracjsby_rev(4)', 1),
(81, 21, 'array_rev(1)', 1),
(82, 21, 'array_reverse(2)', 1),
(83, 21, 'array_recscsv(3)', 1),
(84, 21, 'array_recscv(4)', 1),
(85, 22, 'array_adarev(1)', 1),
(86, 22, 'arracscy_rev(2)', 1),
(87, 22, 'arbcjray_rev(3)', 1),
(88, 22, 'arracjsy_rev(4)', 1),
(89, 23, 'arbcjvaray_rev(1)', 1),
(90, 23, 'arbcjray_rev(2)', 1),
(91, 23, 'arcbjray_rev(3)', 1),
(92, 23, 'arxnray_rev(4)', 1),
(93, 24, 'arrxsaycc_rev(1)', 1),
(94, 24, 'abshxbrray_rev(2)', 1),
(95, 24, 'arsjbray_rev(3)', 1),
(96, 24, 'arracjsby_rev(4)', 1),
(97, 25, 'array_rev(1)', 1),
(98, 25, 'array_reverse(2)', 1),
(99, 25, 'array_recscsv(3)', 1),
(100, 25, 'array_recscv(4)', 1),
(101, 26, 'array_adarev(1)', 1),
(102, 26, 'arracscy_rev(2)', 1),
(103, 26, 'arbcjray_rev(3)', 1),
(104, 26, 'arracjsy_rev(4)', 1),
(105, 27, 'arbcjvaray_rev(1)', 1),
(106, 27, 'arbcjray_rev(2)', 1),
(107, 27, 'arcbjray_rev(3)', 1),
(108, 27, 'arxnray_rev(4)', 1),
(109, 28, 'arrxsaycc_rev(1)', 1),
(110, 28, 'abshxbrray_rev(2)', 1),
(111, 28, 'arsjbray_rev(3)', 1),
(112, 28, 'arracjsby_rev(4)', 1),
(113, 29, 'array_rev(1)', 1),
(114, 29, 'array_reverse(2)', 1),
(115, 29, 'array_recscsv(3)', 1),
(116, 29, 'array_recscv(4)', 1),
(117, 30, 'array_adarev(1)', 1),
(118, 30, 'arracscy_rev(2)', 1),
(119, 30, 'arbcjray_rev(3)', 1),
(120, 30, 'arracjsy_rev(4)', 1),
(121, 31, 'arbcjvaray_rev(1)', 1),
(122, 31, 'arbcjray_rev(2)', 1),
(123, 31, 'arcbjray_rev(3)', 1),
(124, 31, 'arxnray_rev(4)', 1),
(125, 32, 'arrxsaycc_rev(1)', 1),
(126, 32, 'abshxbrray_rev(2)', 1),
(127, 32, 'arsjbray_rev(3)', 1),
(128, 32, 'arracjsby_rev(4)', 1),
(129, 33, 'array_rev(1)', 1),
(130, 33, 'array_reverse(2)', 1),
(131, 33, 'array_recscsv(3)', 1),
(132, 33, 'array_recscv(4)', 1),
(133, 34, 'array_adarev(1)', 1),
(134, 34, 'arracscy_rev(2)', 1),
(135, 34, 'arbcjray_rev(3)', 1),
(136, 34, 'arracjsy_rev(4)', 1),
(137, 35, 'arbcjvaray_rev(1)', 1),
(138, 35, 'arbcjray_rev(2)', 1),
(139, 35, 'arcbjray_rev(3)', 1),
(140, 35, 'arxnray_rev(4)', 1),
(141, 36, 'arrxsaycc_rev(1)', 1),
(142, 36, 'abshxbrray_rev(2)', 1),
(143, 36, 'arsjbray_rev(3)', 1),
(144, 36, 'arracjsby_rev(4)', 1),
(145, 37, 'array_rev(1)', 1),
(146, 37, 'array_reverse(2)', 1),
(147, 37, 'array_recscsv(3)', 1),
(148, 37, 'array_recscv(4)', 1),
(149, 38, 'array_adarev(1)', 1),
(150, 38, 'arracscy_rev(2)', 1),
(151, 38, 'arbcjray_rev(3)', 1),
(152, 38, 'arracjsy_rev(4)', 1),
(153, 39, 'arbcjvaray_rev(1)', 1),
(154, 39, 'arbcjray_rev(2)', 1),
(155, 39, 'arcbjray_rev(3)', 1),
(156, 39, 'arxnray_rev(4)', 1),
(157, 40, 'arrxsaycc_rev(1)', 1),
(158, 40, 'abshxbrray_rev(2)', 1),
(159, 40, 'arsjbray_rev(3)', 1),
(160, 40, 'arracjsby_rev(4)', 1),
(161, 41, 'array_rev(1)', 1),
(162, 41, 'array_reverse(2)', 1),
(163, 41, 'array_recscsv(3)', 1),
(164, 41, 'array_recscv(4)', 1),
(165, 42, 'array_adarev(1)', 1),
(166, 42, 'arracscy_rev(2)', 1),
(167, 42, 'arbcjray_rev(3)', 1),
(168, 42, 'arracjsy_rev(4)', 1),
(169, 43, 'arbcjvaray_rev(1)', 1),
(170, 43, 'arbcjray_rev(2)', 1),
(171, 43, 'arcbjray_rev(3)', 1),
(172, 43, 'arxnray_rev(4)', 1),
(173, 44, 'arrxsaycc_rev(1)', 1),
(174, 44, 'abshxbrray_rev(2)', 1),
(175, 44, 'arsjbray_rev(3)', 1),
(176, 44, 'arracjsby_rev(4)', 1),
(177, 45, 'array_rev(1)', 1),
(178, 45, 'array_reverse(2)', 1),
(179, 45, 'array_recscsv(3)', 1),
(180, 45, 'array_recscv(4)', 1),
(181, 46, 'array_adarev(1)', 1),
(182, 46, 'arracscy_rev(2)', 1),
(183, 46, 'arbcjray_rev(3)', 1),
(184, 46, 'arracjsy_rev(4)', 1),
(185, 47, 'arbcjvaray_rev(1)', 1),
(186, 47, 'arbcjray_rev(2)', 1),
(187, 47, 'arcbjray_rev(3)', 1),
(188, 47, 'arxnray_rev(4)', 1),
(189, 48, 'arrxsaycc_rev(1)', 1),
(190, 48, 'abshxbrray_rev(2)', 1),
(191, 48, 'arsjbray_rev(3)', 1),
(192, 48, 'arracjsby_rev(4)', 1),
(193, 49, 'array_adarev(1)', 1),
(194, 49, 'arracscy_rev(2)', 1),
(195, 49, 'arbcjray_rev(3)', 1),
(196, 49, 'arracjsy_rev(4)', 1),
(197, 50, 'arbcjvaray_rev(1)', 1),
(198, 50, 'arbcjray_rev(2)', 1),
(199, 50, 'arcbjray_rev(3)', 1),
(200, 50, 'arxnray_rev(4)', 1),
(201, 51, 'arrxsaycc_rev(1)', 1),
(202, 51, 'abshxbrray_rev(2)', 1),
(203, 51, 'arsjbray_rev(3)', 1),
(204, 51, 'arracjsby_rev(4)', 1),
(205, 52, 'arbcjvaray_rev(1)', 1),
(206, 52, 'arbcjray_rev(2)', 1),
(207, 52, 'arcbjray_rev(3)', 1),
(208, 52, 'arxnray_rev(4)', 1),
(209, 53, 'arrxsaycc_rev(1)', 1),
(210, 53, 'abshxbrray_rev(2)', 1),
(211, 53, 'arsjbray_rev(3)', 1),
(212, 53, 'arracjsby_rev(4)', 1),
(213, 54, 'arbcjvaray_rev(1)', 1),
(214, 54, 'arbcjray_rev(2)', 1),
(215, 54, 'arcbjray_rev(3)', 1),
(216, 54, 'arxnray_rev(4)', 1);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(255) NOT NULL,
  `stud_id` int(255) NOT NULL,
  `ques_id` int(255) NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(255) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topic_name`, `description`) VALUES
(1, 'Topic1', 'Description  1'),
(2, 'Topic2', 'Description  2'),
(3, 'Topic3', 'Description  3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `quiz_options`
--
ALTER TABLE `quiz_options`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
