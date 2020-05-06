-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2020 at 11:20 AM
-- Server version: 10.3.22-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idontknow_cv`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'wiztecbd', 'wiztecbd@gmail.com', NULL, '$2y$10$psubaFHJ0yagIcu6zYtLCuWGkH/KCu74Q2Q4v0VpM8IUmtHm9UPaa', 'Ql7fIaTkwWwdlTfEmTPwb0wXd3tYDL6XqNOGhPA14sp9PoxOkj7KeEP00Znd', NULL, '2020-03-03 03:14:37', '2020-03-20 21:02:49');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` int(11) DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `code`, `department`, `IsActive`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '66', 'IT Department', 1, NULL, '2020-03-03 03:14:47', '2020-03-08 05:27:57'),
(2, '68', 'Marketing', 0, NULL, '2020-03-03 03:14:53', '2020-03-10 12:02:04'),
(3, '69', 'Construction', 0, NULL, '2020-03-03 03:14:57', '2020-03-03 03:14:57'),
(4, '7851', 'Civil', 1, NULL, '2020-03-04 12:22:54', '2020-03-15 08:33:01'),
(5, '134151', 'Architecture', 1, NULL, '2020-03-04 12:23:11', '2020-03-09 06:41:29'),
(6, '314141', 'Admin', 0, NULL, '2020-03-04 12:23:27', '2020-03-04 12:23:27');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empID` int(10) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `empID`, `filename`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'SSC Certificate', 'Document/bipu.pdf', '2020-03-03 03:33:02', '2020-03-03 03:33:02'),
(2, 1, 'HSC Certificate', 'Document/ITsupport.pdf', '2020-03-03 03:33:02', '2020-03-03 03:33:02'),
(3, 1, 'Diploma Certificate', 'Document/Laravel Developer191219.pdf', '2020-03-03 03:33:02', '2020-03-03 03:33:02'),
(4, 7, 'SSC Certificate', 'Document/Sujon Kumer.docx', '2020-03-20 21:37:46', '2020-03-20 21:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empID` int(10) UNSIGNED NOT NULL,
  `ExmTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `board` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passing_year` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CGPA` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `empID`, `ExmTitle`, `board`, `passing_year`, `group`, `CGPA`, `created_at`, `updated_at`) VALUES
(1, 1, 'Diploma Engineering', 'DTEB', '2019', 'CSE', '3', '2020-03-03 03:19:48', '2020-03-03 03:19:48'),
(2, 1, 'HSC', 'BMEB', '2017', 'General', '4', '2020-03-03 03:19:48', '2020-03-03 03:19:48'),
(3, 1, 'SSC', 'BMEB', '2015', 'General', '5', '2020-03-03 03:19:48', '2020-03-03 03:19:48'),
(4, 1, 'JSC', 'BMEB', '2012', 'General', '5', '2020-03-03 03:19:48', '2020-03-03 03:19:48'),
(9, 2, 'HSC', 'DHAKA', '2013', 'Science', '5.00', '2020-03-04 14:08:53', '2020-03-04 14:08:53'),
(8, 2, 'SSC', 'DHAKA', '2011', 'Science', '5.00', '2020-03-04 14:08:53', '2020-03-04 14:08:53'),
(10, 2, 'BSc', 'DHAKA', '2017', 'CSE', '3', '2020-03-04 14:08:53', '2020-03-04 14:08:53'),
(17, 3, 'B.SC', 'Daffodil', '2016', 'CSE', '3.50', '2020-03-04 14:24:59', '2020-03-04 14:24:59'),
(16, 3, 'HSC', 'Jessore', '2012', 'Science', '5.00', '2020-03-04 14:24:59', '2020-03-04 14:24:59'),
(15, 3, 'SSC', 'Jessore', '2010', 'Science', '5.00', '2020-03-04 14:24:59', '2020-03-04 14:24:59'),
(18, 3, 'M.SC', 'DU', '2018', 'CSE', '3.80', '2020-03-04 14:24:59', '2020-03-04 14:24:59'),
(20, 5, 'JSC', 'BMEB', '2012', 'General', '5.00', '2020-03-05 04:56:28', '2020-03-05 04:56:28'),
(21, 7, 'SSC', 'Dhaka', '2015', 'Electrical', '4.82', '2020-03-20 21:27:21', '2020-03-20 21:27:21'),
(22, 7, 'Diploma', 'Dhaka', '2019', 'Computer', '3,16', '2020-03-20 21:27:21', '2020-03-20 21:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `employeeinfos`
--

CREATE TABLE `employeeinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empID` int(10) UNSIGNED NOT NULL,
  `countrywork` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bestwork` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employeeinfos`
--

INSERT INTO `employeeinfos` (`id`, `empID`, `countrywork`, `bestwork`, `position`, `department`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bangladesh Only', 'Muktijuddho Pideya', 'Full Stack Developer', 'IT', '2020-03-03 03:30:58', '2020-03-03 03:30:58'),
(2, 3, 'Bangladesh , India , USA , UK', NULL, 'Head Of Web developer', 'IT', '2020-03-04 14:28:41', '2020-03-04 14:28:41'),
(3, 7, 'Bangladesh', 'www.standard-porduct.com', 'Fontend Developer', 'IT Department', '2020-03-20 21:34:25', '2020-03-20 21:34:25');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empID` int(10) UNSIGNED NOT NULL,
  `LangName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spoken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reading` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `writin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `empID`, `LangName`, `spoken`, `reading`, `writin`, `created_at`, `updated_at`) VALUES
(1, 1, 'English', 'Excellent', 'Excellent', 'Excellent', '2020-03-03 03:17:26', '2020-03-03 03:17:26'),
(2, 1, 'Bangla', 'Excellent', 'Excellent', 'Excellent', '2020-03-03 03:17:26', '2020-03-03 03:17:26'),
(3, 1, 'Arabiq', 'Excellent', 'Excellent', 'Excellent', '2020-03-03 03:17:26', '2020-03-03 03:17:26'),
(4, 2, 'English', 'Bad', 'Bad', 'Medium', '2020-03-04 12:43:50', '2020-03-04 12:43:50'),
(5, 2, 'Bangla', 'Good', 'Good', 'Good', '2020-03-04 12:43:50', '2020-03-04 12:43:50'),
(6, 3, 'Bangla', 'strong', 'strong', 'strong', '2020-03-04 14:25:44', '2020-03-04 14:25:44'),
(7, 3, 'English', 'strong', 'strong', 'strong', '2020-03-04 14:25:44', '2020-03-04 14:25:44'),
(17, 5, 'English', 'Basic', 'Conversant', 'Fluent', '2020-03-05 05:20:12', '2020-03-05 05:20:12'),
(16, 5, 'Arabiq', 'Proficient', 'Fluent', 'Basic', '2020-03-05 05:20:12', '2020-03-05 05:20:12'),
(18, 7, 'English', 'Conversant', 'Fluent', 'Fluent', '2020-03-20 21:28:13', '2020-03-20 21:28:13');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `linkid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starttime` date NOT NULL,
  `endtime` date NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvlink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `linkid`, `projectname`, `starttime`, `endtime`, `link`, `cvlink`, `created_at`, `updated_at`) VALUES
(1, '[\"6\",\"5\",\"3\",\"1\"]', 'LEDP', '2020-03-02', '2020-03-10', '15832372869835.041', '1', '2020-03-03 06:08:06', '2020-03-08 06:39:48'),
(2, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', 'LEDP2', '2020-03-02', '2020-03-10', '15832406231400.521', '2', '2020-03-03 07:03:43', '2020-03-08 06:14:28'),
(3, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', 'LEDP3', '2020-03-03', '2020-03-11', '15833130513875.238', '2', '2020-03-04 14:10:51', '2020-03-08 06:19:53'),
(4, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', 'LEDP4', '2020-03-04', '2020-03-09', '15833139791462.18', '1', '2020-03-04 14:26:19', '2020-03-08 06:20:29'),
(5, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', 'LEDP55', '2020-03-04', '2020-03-12', '15834031286149.59', '2', '2020-03-05 04:12:08', '2020-03-05 04:12:08'),
(6, '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', 'rte', '2020-03-02', '2020-03-24', '15836697361275.639', '2', '2020-03-08 06:15:36', '2020-03-08 06:15:36'),
(7, '[\"6\",\"5\",\"3\",\"1\"]', 'ergw', '2020-03-09', '2020-03-02', '15836708005696.04', '2', '2020-03-08 06:33:20', '2020-03-08 06:40:06'),
(8, 'null', 'BGB', '2020-03-12', '2020-03-15', '15840062595694.549', '0', '2020-03-12 13:44:19', '2020-03-12 13:44:19'),
(9, '[\"1\",\"2\",\"3\",\"5\"]', 'BGB', '2020-03-12', '2020-03-15', '15840063399607.14', '0', '2020-03-12 13:45:39', '2020-03-12 13:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(193, '2014_10_12_000000_create_users_table', 1),
(194, '2014_10_12_100000_create_password_resets_table', 1),
(195, '2019_08_13_144617_create_admins_table', 1),
(196, '2019_08_14_124941_create_settings_table', 1),
(197, '2020_02_04_110317_create_departments_table', 1),
(198, '2020_02_04_110548_create_education_table', 1),
(199, '2020_02_04_110617_create_tranings_table', 1),
(200, '2020_02_04_110736_create_workexpreances_table', 1),
(201, '2020_02_04_111046_create_documents_table', 1),
(202, '2020_02_04_111308_create_personalinfos_table', 1),
(203, '2020_02_04_111408_create_employeeinfos_table', 1),
(204, '2020_02_04_121523_create_references_table', 1),
(205, '2020_02_04_123143_create_languages_table', 1),
(206, '2020_02_04_123602_create_skills_table', 1),
(215, '2020_03_02_061333_create_links_table', 2),
(216, '2020_03_03_084714_create_permissions_table', 2),
(217, '2015_03_07_311070_create_tracker_paths_table', 3),
(218, '2015_03_07_311071_create_tracker_queries_table', 3),
(219, '2015_03_07_311072_create_tracker_queries_arguments_table', 3),
(220, '2015_03_07_311073_create_tracker_routes_table', 3),
(221, '2015_03_07_311074_create_tracker_routes_paths_table', 3),
(222, '2015_03_07_311075_create_tracker_route_path_parameters_table', 3),
(223, '2015_03_07_311076_create_tracker_agents_table', 3),
(224, '2015_03_07_311077_create_tracker_cookies_table', 3),
(225, '2015_03_07_311078_create_tracker_devices_table', 3),
(226, '2015_03_07_311079_create_tracker_domains_table', 3),
(227, '2015_03_07_311080_create_tracker_referers_table', 3),
(228, '2015_03_07_311081_create_tracker_geoip_table', 3),
(229, '2015_03_07_311082_create_tracker_sessions_table', 3),
(230, '2015_03_07_311083_create_tracker_errors_table', 3),
(231, '2015_03_07_311084_create_tracker_system_classes_table', 3),
(232, '2015_03_07_311085_create_tracker_log_table', 3),
(233, '2015_03_07_311086_create_tracker_events_table', 3),
(234, '2015_03_07_311087_create_tracker_events_log_table', 3),
(235, '2015_03_07_311088_create_tracker_sql_queries_table', 3),
(236, '2015_03_07_311089_create_tracker_sql_query_bindings_table', 3),
(237, '2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table', 3),
(238, '2015_03_07_311091_create_tracker_sql_queries_log_table', 3),
(239, '2015_03_07_311092_create_tracker_connections_table', 3),
(240, '2015_03_07_311093_create_tracker_tables_relations', 3),
(241, '2015_03_13_311094_create_tracker_referer_search_term_table', 3),
(242, '2015_03_13_311095_add_tracker_referer_columns', 3),
(243, '2015_11_23_311096_add_tracker_referer_column_to_log', 3),
(244, '2015_11_23_311097_create_tracker_languages_table', 3),
(245, '2015_11_23_311098_add_language_id_column_to_sessions', 3),
(246, '2015_11_23_311099_add_tracker_language_foreign_key_to_sessions', 3),
(247, '2015_11_23_311100_add_nullable_to_tracker_error', 3),
(248, '2017_01_31_311101_fix_agent_name', 3),
(249, '2017_06_20_311102_add_agent_name_hash', 3),
(250, '2017_12_13_150000_fix_query_arguments', 3),
(251, '2020_03_09_103919_create_views_table', 4),
(252, '2020_03_15_043630_create_projects_table', 5),
(253, '2020_03_16_093957_create_project_links_table', 6),
(254, '2020_03_16_095146_create_project_permissions_table', 7),
(255, '2020_03_18_082453_create_project_progresses_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@admin.com', '$2y$10$R.zlEce88AsX3YwhOzv2nOlRRMSPywzDFnm9ux7feTGE27mjHD5B6', '2020-03-09 23:03:45'),
('wiztecbd@gmail.com', '$2y$10$ty1vUKJkHU/f8ruPvTc7/O4W.FHhsXKkifnB1KwFMQ9IkrKGuxLVa', '2020-03-14 16:34:13'),
('sahabuddinriyaj984@gmail.com', '$2y$10$FJ6cfyZCBUYd7y6WSn4AweT4Ho3Co2sC.gXc3JbOdGLvsBB5mFiXy', '2020-03-10 11:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `linksID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `linksID`, `role`, `created_at`, `updated_at`) VALUES
(1, '15832372869835.041', '0', '2020-03-03 06:08:06', '2020-03-03 06:08:06'),
(2, '15832406231400.521', '0', '2020-03-03 07:03:43', '2020-03-08 06:10:25'),
(3, '15833130513875.238', '2', '2020-03-04 14:10:51', '2020-03-04 14:10:51'),
(4, '15833139791462.18', '1', '2020-03-04 14:26:19', '2020-03-04 14:26:19'),
(5, '15834031286149.59', '2', '2020-03-05 04:12:08', '2020-03-05 04:12:08'),
(6, '15836697361275.639', '1', '2020-03-08 06:15:36', '2020-03-08 06:15:36'),
(7, '15836708005696.04', '1', '2020-03-08 06:33:20', '2020-03-08 06:33:20'),
(8, '15840062595694.549', '1', '2020-03-12 13:44:19', '2020-03-12 13:44:19'),
(9, '15840063399607.14', '0', '2020-03-12 13:45:39', '2020-03-12 13:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `personalinfos`
--

CREATE TABLE `personalinfos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brother` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sister` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `persent_add` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_add` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membership_scosity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` int(11) DEFAULT 0,
  `expYear` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rgularStuff` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signing` date DEFAULT NULL,
  `Employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personalinfos`
--

INSERT INTO `personalinfos` (`id`, `name`, `father_name`, `mother_name`, `brother`, `sister`, `dob`, `religion`, `blood_group`, `NID`, `persent_add`, `permanent_add`, `height`, `nationality`, `membership_scosity`, `department`, `image`, `slug`, `IsActive`, `expYear`, `rgularStuff`, `signature`, `signing`, `Employee_id`, `created_at`, `updated_at`) VALUES
(1, 'Sahab Uddin', 'Obaydul Hoque', 'Monoara Begum', 'Anamul Hoque', 'Sumaiya Sultana', '1998-02-16', 'Islam', 'B(+ve)', '2121', 'Dhaka', 'Dhaka', '5-8', 'Bangladeshi', 'Applied', '1', 'Personalinfo/6CaGRgIaOGF2cdZx0rMuVJ31e.png', '15832269431515.9', 1, '1 (Year)', 'Yes', 'Signature/pcEzwAdXtKUwKijqX7G2fi678.png', '2019-01-01', '102', '2020-03-03 03:15:43', '2020-03-20 21:53:57'),
(2, 'Mostafijur Rahman', 'Monir Hossain', 'Shahina Akter', NULL, NULL, '1995-08-07', 'Islam', 'O(+ve)', '66344651619', 'Just drag the red marker anywhere on the Google Map and the address details (including the latitude & longitude) of that place will display in the pop-up window. Internally, the tool uses the Geocoding features of Google Maps to find the address of a particular point.', 'Just drag the red marker anywhere on the Google Map and the address details (including the latitude & longitude) of that place will display in the pop-up window. Internally, the tool uses the Geocoding features of Google Maps to find the address of a particular point.', '5\'8', 'Bangladeshi', 'IEB', '1', 'Personalinfo/3xUAN6z0Gvxvgxymc2DW4EmQb.jpg', '15833071138504.191', 1, '1 (Year)', 'Yes', 'Signature/zzDxFQ7yvOBv62RhgaO01RFPI.png', '2020-03-10', '103', '2020-03-04 12:31:53', '2020-03-08 05:37:10'),
(3, 'Banozir Ahamed', 'Razaul Karim', 'Bulbuli', 'Bappy', 'None', '1993-08-07', 'Islam', 'O(+ve)', '14345678879805', 'Test', 'Test', '5.11\"', 'Bangladeshi', 'IEEE', '1', 'Personalinfo/lAAZWHY1Ug1DqEHoZ1Pc8gQwa.jpg', '15833137368189.799', 1, '1 (Year)', 'Yes', 'Signature/E3vxwQNCiVSsVFA3gjRN5316g.png', '2020-03-08', '104', '2020-03-04 14:22:16', '2020-03-08 05:37:29'),
(4, 'Sakib', 'Jamal', 'Kaniz', NULL, NULL, '2020-03-27', 'Islam', 'B(+ve)', '123545665545', 'dhaka', 'bfasih', 's ffsafdssdfa', 'sdasfaafa', 'afssdfsdsd', 'IT Department', 'Personalinfo/8eSKJzVRafVAIwhpupfWijg5j.png', '15833166908407.61', 0, '1 (Year)', 'Yes', 'Signature/Xnujy2P9KAi7Redk1yMX52260.jpg', '2020-03-08', NULL, '2020-03-04 15:11:30', '2020-03-09 04:38:24'),
(5, 'Saifur', 'Rasul', 'xasss', 'xasss', 'jannati', '1997-08-10', 'Islam', 'B(+ve)', '654651', 'asda', 'asdaa', '5-8', 'Bangladeshi', 'Applied', 'Civil', 'Personalinfo/hAIdWDWCHDl39CSqz8AuU5ZHt.jpg', '15834030881807.771', 1, NULL, NULL, NULL, NULL, NULL, '2020-03-05 04:11:28', '2020-03-05 04:11:28'),
(6, 'Sahab Uddin', 'Obaydul Hoque', 'Monoara Begum', 'Anamul Hoque', 'Sumaiya Sultana', '2020-03-03', 'Islam', 'B(+ve)', '321221212', 'sas', 'sdad', '5-8', 'Bangladeshi', 'Applied', 'Architecture', 'Personalinfo/xYDIpwumZD5nVm2jwt72sNzOA.jpg', '15834108604036.602', 0, '1 (Years)', 'Yes', 'Signature/8F2nfAR11qmxYaOhU28kxdHsZ.png', '2019-01-01', NULL, '2020-03-05 06:21:00', '2020-03-09 04:38:19'),
(7, 'Sujon Kumer', 'Sudorshon Chondro', 'Mukti Rani', NULL, NULL, '2020-03-20', 'Hindu', NULL, '4653193187', 'Natore,Singra,Masinda.', 'Hatirjil,Dhaka.', '5\'6', 'Bangladeshi', NULL, '1', 'Personalinfo/zHF0aUNfVpX2fQYLrFcXvw2u1.jpg', '15847250298944.57', 1, '1', 'Yes', 'Signature/qJvOpbWrvFJF1egsGqTbjfi2k.jpg', '2020-03-20', 'sylloo01', '2020-03-20 21:23:49', '2020-03-20 21:23:49');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pctg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ptitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdetails` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `siteDDOC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SASBD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Arch` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Struc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Elec` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Plum` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Plan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visuali` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Authority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Co_Ordination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Experts` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OutSource` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FINANCE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BOQ` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Estimation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SiteEngr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Supervison` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ProjectVL` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LocationWC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PDuration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CAddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PStartDate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `PCompleteD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SCharge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `joinConsul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `NojoinCons` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'N/A',
  `NSPstaffP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NSPstaffN` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DNDescriptionP` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DDASPstaff` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Firmsname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AuthordSignature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IsActive` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `jobno`, `pctg`, `pdate`, `ptitle`, `cdetails`, `contactp`, `siteDDOC`, `SASBD`, `Arch`, `Struc`, `Elec`, `Plum`, `Plan`, `visuali`, `Authority`, `Co_Ordination`, `Experts`, `OutSource`, `FINANCE`, `BOQ`, `Estimation`, `SiteEngr`, `Supervison`, `vendor`, `note`, `ProjectVL`, `country`, `LocationWC`, `PDuration`, `Cname`, `CAddress`, `PStartDate`, `PCompleteD`, `SCharge`, `joinConsul`, `NojoinCons`, `NSPstaffP`, `NSPstaffN`, `DNDescriptionP`, `DDASPstaff`, `Firmsname`, `image`, `AuthordSignature`, `slug`, `IsActive`, `created_at`, `updated_at`) VALUES
(1, 'P.RFP/COM/102', 'PCNB', '2019-01-01', 'GAZIPUR BBL PROPERTY, GAZIPUR-TONGI, GAZIPUR ( 3 STORIED BUILDING WITH 2 BASEMENT 24000 SFT )', 'BRAC BANK', NULL, NULL, NULL, 'ARCH FARZANA AHMED,', NULL, NULL, NULL, NULL, NULL, NULL, 'ARCH. SHIRIN AKTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BANGLADESH', 'DHAKA', NULL, NULL, NULL, '2019-01-01', '2020-01-01', NULL, 'N/A', 'N/A', 'PROJECT DIRECTOR', 'ARCH. MONZOOR K. H. UDDIN', 'FFGSF', 'DFSF', 'Professional Associates Limited', 'ProjectImage/CTvUIyHK8DKMslj2VCOlQ7vLN.PNG', 'AuthordSignature/gzFgwyvumoQb3SvQhZ5ugmTRW.png', '15842635630120.15', '1', '2020-03-15 03:12:43', '2020-03-17 23:56:36');

-- --------------------------------------------------------

--
-- Table structure for table `project_links`
--

CREATE TABLE `project_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `linkid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `projectname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `starttime` date NOT NULL,
  `endtime` date NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cvlink` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_links`
--

INSERT INTO `project_links` (`id`, `linkid`, `projectname`, `starttime`, `endtime`, `link`, `cvlink`, `created_at`, `updated_at`) VALUES
(1, '[\"1\"]', 'JOMIKROY', '2020-03-15', '2020-03-11', '15843538779907.26', '1', '2020-03-16 04:17:57', '2020-03-16 06:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `project_permissions`
--

CREATE TABLE `project_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `linksID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_permissions`
--

INSERT INTO `project_permissions` (`id`, `linksID`, `role`, `created_at`, `updated_at`) VALUES
(1, '15843538779907.26', '1', '2020-03-16 04:17:58', '2020-03-16 06:04:25');

-- --------------------------------------------------------

--
-- Table structure for table `project_progresses`
--

CREATE TABLE `project_progresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Pid` int(10) UNSIGNED NOT NULL,
  `Dgname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twork` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cwork` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wstart` date DEFAULT NULL,
  `wend` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_progresses`
--

INSERT INTO `project_progresses` (`id`, `Pid`, `Dgname`, `twork`, `cwork`, `wstart`, `wend`, `created_at`, `updated_at`) VALUES
(10, 1, 'Electrical', '10', '2', NULL, NULL, '2020-03-19 01:37:44', '2020-03-19 01:37:44'),
(9, 1, 'Arch', '60', '20', '2020-03-01', NULL, '2020-03-19 01:37:44', '2020-03-19 01:37:44'),
(8, 1, 'Civil', '5', '1', '2020-03-04', NULL, '2020-03-19 01:37:44', '2020-03-19 01:37:44'),
(11, 1, 'Others', '5', '0', NULL, NULL, '2020-03-19 01:37:44', '2020-03-19 01:37:44'),
(12, 1, 'Computer', '20', '3', NULL, NULL, '2020-03-19 01:37:44', '2020-03-19 01:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

CREATE TABLE `references` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empID` int(10) UNSIGNED NOT NULL,
  `ComName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `empID`, `ComName`, `refname`, `position`, `phone`, `Details`, `created_at`, `updated_at`) VALUES
(1, 1, 'Techbeeo Software Company Pvt Limited', 'Masud Alam', 'CEO', '015202145451', 'Dhaka, mohammadpur.', '2020-03-03 03:31:48', '2020-03-03 03:31:48'),
(2, 3, 'WiztecBD', 'Sabbir', 'Head of IT', '098765432', 'llugiotdyxrety', '2020-03-04 14:29:25', '2020-03-04 14:29:25'),
(3, 7, 'Wiztecbd', 'Riyaj Uddin', 'FullStack Developer', '01867033550', 'Mohammadpur,Dhaka,Bangladesh', '2020-03-20 21:36:29', '2020-03-20 21:36:29');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'site_name', 'Employee Profile', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(2, 'site_title', 'HRMS', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(3, 'default_email_address', 'wiztecbd@gmail.com', '2020-03-03 03:14:37', '2020-03-19 17:16:50'),
(4, 'site_logo', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(5, 'site_favicon', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(6, 'footer_copyright_text', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(7, 'seo_meta_title', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(8, 'seo_meta_description', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(9, 'social_facebook', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(10, 'social_twitter', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(11, 'social_instagram', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(12, 'social_linkedin', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(13, 'google_analytics', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
(14, 'facebook_pixels', '', '2020-03-03 03:14:37', '2020-03-03 03:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empID` int(10) UNSIGNED NOT NULL,
  `skillname` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `empID`, `skillname`, `created_at`, `updated_at`) VALUES
(1, 1, 'Photoshop', '2020-03-03 03:30:29', '2020-03-03 03:30:29'),
(2, 1, 'Illistator', '2020-03-03 03:30:29', '2020-03-03 03:30:29'),
(3, 1, 'Filoma', '2020-03-03 03:30:29', '2020-03-03 03:30:29'),
(4, 1, 'MS Office', '2020-03-03 03:30:29', '2020-03-03 03:30:29'),
(5, 3, 'html', '2020-03-04 14:27:57', '2020-03-04 14:27:57'),
(6, 3, 'css', '2020-03-04 14:27:57', '2020-03-04 14:27:57'),
(7, 3, 'web development', '2020-03-04 14:27:57', '2020-03-04 14:27:57'),
(8, 3, 'Digital Marketing', '2020-03-04 14:27:57', '2020-03-04 14:27:57'),
(9, 3, NULL, '2020-03-04 14:27:57', '2020-03-04 14:27:57'),
(10, 7, 'MS Office', '2020-03-20 21:32:51', '2020-03-20 21:32:51'),
(11, 7, 'Adobe Photoshop', '2020-03-20 21:32:51', '2020-03-20 21:32:51'),
(12, 7, 'Java,php,Laravel,ajex.', '2020-03-20 21:32:51', '2020-03-20 21:32:51');

-- --------------------------------------------------------

--
-- Table structure for table `tracker_agents`
--

CREATE TABLE `tracker_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_hash` varchar(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_connections`
--

CREATE TABLE `tracker_connections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_cookies`
--

CREATE TABLE `tracker_cookies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_devices`
--

CREATE TABLE `tracker_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kind` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_domains`
--

CREATE TABLE `tracker_domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_errors`
--

CREATE TABLE `tracker_errors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_events`
--

CREATE TABLE `tracker_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_events_log`
--

CREATE TABLE `tracker_events_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_geoip`
--

CREATE TABLE `tracker_geoip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code3` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_code` bigint(20) DEFAULT NULL,
  `dma_code` double DEFAULT NULL,
  `metro_code` double DEFAULT NULL,
  `continent_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_languages`
--

CREATE TABLE `tracker_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language-range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_log`
--

CREATE TABLE `tracker_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `path_id` bigint(20) UNSIGNED DEFAULT NULL,
  `query_id` bigint(20) UNSIGNED DEFAULT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_path_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_ajax` tinyint(1) NOT NULL,
  `is_secure` tinyint(1) NOT NULL,
  `is_json` tinyint(1) NOT NULL,
  `wants_json` tinyint(1) NOT NULL,
  `error_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_log`
--

INSERT INTO `tracker_log` (`id`, `session_id`, `path_id`, `query_id`, `method`, `route_path_id`, `is_ajax`, `is_secure`, `is_json`, `wants_json`, `error_id`, `created_at`, `updated_at`, `referer_id`) VALUES
(1, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:25:25', '2020-03-09 05:25:25', NULL),
(2, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:25:29', '2020-03-09 05:25:29', NULL),
(3, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:25:30', '2020-03-09 05:25:30', NULL),
(4, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:27:00', '2020-03-09 05:27:00', NULL),
(5, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:27:13', '2020-03-09 05:27:13', NULL),
(6, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:31:57', '2020-03-09 05:31:57', NULL),
(7, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:36:42', '2020-03-09 05:36:42', NULL),
(8, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:36:52', '2020-03-09 05:36:52', NULL),
(9, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:37:13', '2020-03-09 05:37:13', NULL),
(10, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:37:15', '2020-03-09 05:37:15', NULL),
(11, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:37:46', '2020-03-09 05:37:46', NULL),
(12, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:37:55', '2020-03-09 05:37:55', NULL),
(13, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:38:06', '2020-03-09 05:38:06', NULL),
(14, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:40:02', '2020-03-09 05:40:02', NULL),
(15, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:42:49', '2020-03-09 05:42:49', NULL),
(16, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:43:04', '2020-03-09 05:43:04', NULL),
(17, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:43:21', '2020-03-09 05:43:21', NULL),
(18, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:44:18', '2020-03-09 05:44:18', NULL),
(19, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:44:56', '2020-03-09 05:44:56', NULL),
(20, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:45:12', '2020-03-09 05:45:12', NULL),
(21, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:45:41', '2020-03-09 05:45:41', NULL),
(22, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:45:45', '2020-03-09 05:45:45', NULL),
(23, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:45:49', '2020-03-09 05:45:49', NULL),
(24, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:45:53', '2020-03-09 05:45:53', NULL),
(25, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:46:17', '2020-03-09 05:46:17', NULL),
(26, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:46:25', '2020-03-09 05:46:25', NULL),
(27, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:46:45', '2020-03-09 05:46:45', NULL),
(28, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:46:50', '2020-03-09 05:46:50', NULL),
(29, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 05:46:53', '2020-03-09 05:46:53', NULL),
(30, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:38:37', '2020-03-09 06:38:37', NULL),
(31, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:39:17', '2020-03-09 06:39:17', NULL),
(32, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:41:15', '2020-03-09 06:41:15', NULL),
(33, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:41:29', '2020-03-09 06:41:29', NULL),
(34, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:41:30', '2020-03-09 06:41:30', NULL),
(35, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:41:43', '2020-03-09 06:41:43', NULL),
(36, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:41:48', '2020-03-09 06:41:48', NULL),
(37, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:42:03', '2020-03-09 06:42:03', NULL),
(38, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:42:35', '2020-03-09 06:42:35', NULL),
(39, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:43:19', '2020-03-09 06:43:19', NULL),
(40, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:43:40', '2020-03-09 06:43:40', NULL),
(41, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:43:48', '2020-03-09 06:43:48', NULL),
(42, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:44:14', '2020-03-09 06:44:14', NULL),
(43, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:44:44', '2020-03-09 06:44:44', NULL),
(44, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:44:57', '2020-03-09 06:44:57', NULL),
(45, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:45:00', '2020-03-09 06:45:00', NULL),
(46, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 06:45:11', '2020-03-09 06:45:11', NULL),
(47, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 22:21:53', '2020-03-09 22:21:53', NULL),
(48, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 22:21:55', '2020-03-09 22:21:55', NULL),
(49, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 22:48:14', '2020-03-09 22:48:14', NULL),
(50, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 22:48:16', '2020-03-09 22:48:16', NULL),
(51, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 22:48:18', '2020-03-09 22:48:18', NULL),
(52, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 22:48:19', '2020-03-09 22:48:19', NULL),
(53, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 22:48:24', '2020-03-09 22:48:24', NULL),
(54, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-09 22:48:24', '2020-03-09 22:48:24', NULL),
(55, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:21:04', '2020-03-10 09:21:04', NULL),
(56, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:21:05', '2020-03-10 09:21:05', NULL),
(57, 2, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:21:20', '2020-03-10 09:21:20', NULL),
(58, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:21:20', '2020-03-10 09:21:20', NULL),
(59, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:21:45', '2020-03-10 09:21:45', NULL),
(60, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:21:56', '2020-03-10 09:21:56', NULL),
(61, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:22:04', '2020-03-10 09:22:04', NULL),
(62, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:22:21', '2020-03-10 09:22:21', NULL),
(63, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:22:23', '2020-03-10 09:22:23', NULL),
(64, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:22:24', '2020-03-10 09:22:24', NULL),
(65, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:22:26', '2020-03-10 09:22:26', NULL),
(66, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:23:38', '2020-03-10 09:23:38', NULL),
(67, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:23:39', '2020-03-10 09:23:39', NULL),
(68, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:23:43', '2020-03-10 09:23:43', NULL),
(69, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:23:45', '2020-03-10 09:23:45', NULL),
(70, 2, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:23:59', '2020-03-10 09:23:59', NULL),
(71, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:24:00', '2020-03-10 09:24:00', NULL),
(72, 2, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:24:12', '2020-03-10 09:24:12', NULL),
(73, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:24:12', '2020-03-10 09:24:12', NULL),
(74, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:25:17', '2020-03-10 09:25:17', NULL),
(75, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:25:36', '2020-03-10 09:25:36', NULL),
(76, 2, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 09:25:37', '2020-03-10 09:25:37', NULL),
(77, 3, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 10:19:34', '2020-03-10 10:19:34', NULL),
(78, 3, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 10:19:36', '2020-03-10 10:19:36', NULL),
(79, 3, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 10:19:47', '2020-03-10 10:19:47', NULL),
(80, 3, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 10:19:47', '2020-03-10 10:19:47', NULL),
(81, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:55:48', '2020-03-10 11:55:48', NULL),
(82, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:55:48', '2020-03-10 11:55:48', NULL),
(83, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:55:51', '2020-03-10 11:55:51', NULL),
(84, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:56:02', '2020-03-10 11:56:02', NULL),
(85, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:56:02', '2020-03-10 11:56:02', NULL),
(86, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:58:12', '2020-03-10 11:58:12', NULL),
(87, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:58:12', '2020-03-10 11:58:12', NULL),
(88, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:58:23', '2020-03-10 11:58:23', NULL),
(89, 5, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:58:25', '2020-03-10 11:58:25', NULL),
(90, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:58:42', '2020-03-10 11:58:42', NULL),
(91, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:58:43', '2020-03-10 11:58:43', NULL),
(92, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:59:07', '2020-03-10 11:59:07', NULL),
(93, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 11:59:07', '2020-03-10 11:59:07', NULL),
(94, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:00:46', '2020-03-10 12:00:46', NULL),
(95, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:00:50', '2020-03-10 12:00:50', NULL),
(96, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:00:51', '2020-03-10 12:00:51', NULL),
(97, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:01:59', '2020-03-10 12:01:59', NULL),
(98, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:02', '2020-03-10 12:02:02', NULL),
(99, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:03', '2020-03-10 12:02:03', NULL),
(100, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:04', '2020-03-10 12:02:04', NULL),
(101, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:04', '2020-03-10 12:02:04', NULL),
(102, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:10', '2020-03-10 12:02:10', NULL),
(103, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:36', '2020-03-10 12:02:36', NULL),
(104, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:43', '2020-03-10 12:02:43', NULL),
(105, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:45', '2020-03-10 12:02:45', NULL),
(106, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:47', '2020-03-10 12:02:47', NULL),
(107, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:48', '2020-03-10 12:02:48', NULL),
(108, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:55', '2020-03-10 12:02:55', NULL),
(109, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:02:57', '2020-03-10 12:02:57', NULL),
(110, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:03:29', '2020-03-10 12:03:29', NULL),
(111, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:03:31', '2020-03-10 12:03:31', NULL),
(112, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:03:33', '2020-03-10 12:03:33', NULL),
(113, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:04:02', '2020-03-10 12:04:02', NULL),
(114, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:04:08', '2020-03-10 12:04:08', NULL),
(115, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:04:22', '2020-03-10 12:04:22', NULL),
(116, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:04:22', '2020-03-10 12:04:22', NULL),
(117, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:05:12', '2020-03-10 12:05:12', NULL),
(118, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:05:12', '2020-03-10 12:05:12', NULL),
(119, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:05:27', '2020-03-10 12:05:27', NULL),
(120, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:05:39', '2020-03-10 12:05:39', NULL),
(121, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:05:39', '2020-03-10 12:05:39', NULL),
(122, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:05:41', '2020-03-10 12:05:41', NULL),
(123, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:05:50', '2020-03-10 12:05:50', NULL),
(124, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:05:53', '2020-03-10 12:05:53', NULL),
(125, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:05:54', '2020-03-10 12:05:54', NULL),
(126, 6, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:06:47', '2020-03-10 12:06:47', NULL),
(127, 7, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:06:48', '2020-03-10 12:06:48', NULL),
(128, 8, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:06:48', '2020-03-10 12:06:48', NULL),
(129, 9, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:06:49', '2020-03-10 12:06:49', NULL),
(130, 10, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:06:49', '2020-03-10 12:06:49', NULL),
(131, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:07:36', '2020-03-10 12:07:36', NULL),
(132, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:07:38', '2020-03-10 12:07:38', NULL),
(133, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:22:17', '2020-03-10 12:22:17', NULL),
(134, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:22:19', '2020-03-10 12:22:19', NULL),
(135, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:22:32', '2020-03-10 12:22:32', NULL),
(136, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:22:33', '2020-03-10 12:22:33', NULL),
(137, 4, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:22:36', '2020-03-10 12:22:36', NULL),
(138, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:22:36', '2020-03-10 12:22:36', NULL),
(139, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:22:44', '2020-03-10 12:22:44', NULL),
(140, 4, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-10 12:22:49', '2020-03-10 12:22:49', NULL),
(141, 11, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-11 08:46:24', '2020-03-11 08:46:24', NULL),
(142, 12, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 00:27:07', '2020-03-12 00:27:07', NULL),
(143, 13, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 00:27:08', '2020-03-12 00:27:08', NULL),
(144, 14, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:39:54', '2020-03-12 09:39:54', NULL),
(145, 15, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:39:55', '2020-03-12 09:39:55', NULL),
(146, 16, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:39:55', '2020-03-12 09:39:55', NULL),
(147, 17, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:39:55', '2020-03-12 09:39:55', NULL),
(148, 18, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:39:56', '2020-03-12 09:39:56', NULL),
(149, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:41:45', '2020-03-12 09:41:45', NULL),
(150, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:41:45', '2020-03-12 09:41:45', NULL),
(151, 19, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:42:33', '2020-03-12 09:42:33', NULL),
(152, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:42:33', '2020-03-12 09:42:33', NULL),
(153, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:42:45', '2020-03-12 09:42:45', NULL),
(154, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:42:51', '2020-03-12 09:42:51', NULL),
(155, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:42:53', '2020-03-12 09:42:53', NULL),
(156, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:43:03', '2020-03-12 09:43:03', NULL),
(157, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:43:12', '2020-03-12 09:43:12', NULL),
(158, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:43:17', '2020-03-12 09:43:17', NULL),
(159, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:43:27', '2020-03-12 09:43:27', NULL),
(160, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:43:34', '2020-03-12 09:43:34', NULL),
(161, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:43:39', '2020-03-12 09:43:39', NULL),
(162, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:43:40', '2020-03-12 09:43:40', NULL),
(163, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:43:54', '2020-03-12 09:43:54', NULL),
(164, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:44:12', '2020-03-12 09:44:12', NULL),
(165, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:44:47', '2020-03-12 09:44:47', NULL),
(166, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:44:57', '2020-03-12 09:44:57', NULL),
(167, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:45:08', '2020-03-12 09:45:08', NULL),
(168, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:45:14', '2020-03-12 09:45:14', NULL),
(169, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:45:51', '2020-03-12 09:45:51', NULL),
(170, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:46:19', '2020-03-12 09:46:19', NULL),
(171, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:46:21', '2020-03-12 09:46:21', NULL),
(172, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:46:29', '2020-03-12 09:46:29', NULL),
(173, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:46:35', '2020-03-12 09:46:35', NULL),
(174, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:46:59', '2020-03-12 09:46:59', NULL),
(175, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:03', '2020-03-12 09:47:03', NULL),
(176, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:04', '2020-03-12 09:47:04', NULL),
(177, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:29', '2020-03-12 09:47:29', NULL),
(178, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:44', '2020-03-12 09:47:44', NULL),
(179, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:45', '2020-03-12 09:47:45', NULL),
(180, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:47', '2020-03-12 09:47:47', NULL),
(181, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:51', '2020-03-12 09:47:51', NULL),
(182, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:54', '2020-03-12 09:47:54', NULL),
(183, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:55', '2020-03-12 09:47:55', NULL),
(184, 19, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:47:59', '2020-03-12 09:47:59', NULL),
(185, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:48:00', '2020-03-12 09:48:00', NULL),
(186, 19, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:48:03', '2020-03-12 09:48:03', NULL),
(187, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:48:04', '2020-03-12 09:48:04', NULL),
(188, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:48:07', '2020-03-12 09:48:07', NULL),
(189, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:49:55', '2020-03-12 09:49:55', NULL),
(190, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:49:55', '2020-03-12 09:49:55', NULL),
(191, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:49:59', '2020-03-12 09:49:59', NULL),
(192, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:50:00', '2020-03-12 09:50:00', NULL),
(193, 20, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:50:30', '2020-03-12 09:50:30', NULL),
(194, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:50:30', '2020-03-12 09:50:30', NULL),
(195, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:51:17', '2020-03-12 09:51:17', NULL),
(196, 19, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:51:17', '2020-03-12 09:51:17', NULL),
(197, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:51:49', '2020-03-12 09:51:49', NULL),
(198, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:51:56', '2020-03-12 09:51:56', NULL),
(199, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:53:29', '2020-03-12 09:53:29', NULL),
(200, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:53:32', '2020-03-12 09:53:32', NULL),
(201, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:53:47', '2020-03-12 09:53:47', NULL),
(202, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:53:47', '2020-03-12 09:53:47', NULL),
(203, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:54:04', '2020-03-12 09:54:04', NULL),
(204, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:54:20', '2020-03-12 09:54:20', NULL),
(205, 21, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:54:23', '2020-03-12 09:54:23', NULL),
(206, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:54:23', '2020-03-12 09:54:23', NULL),
(207, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:54:24', '2020-03-12 09:54:24', NULL),
(208, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:54:32', '2020-03-12 09:54:32', NULL),
(209, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:55:10', '2020-03-12 09:55:10', NULL),
(210, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:55:37', '2020-03-12 09:55:37', NULL),
(211, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:55:40', '2020-03-12 09:55:40', NULL),
(212, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:57:05', '2020-03-12 09:57:05', NULL),
(213, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:57:23', '2020-03-12 09:57:23', NULL),
(214, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:57:33', '2020-03-12 09:57:33', NULL),
(215, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:57:39', '2020-03-12 09:57:39', NULL),
(216, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:57:40', '2020-03-12 09:57:40', NULL),
(217, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:57:48', '2020-03-12 09:57:48', NULL),
(218, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:58:17', '2020-03-12 09:58:17', NULL),
(219, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:58:17', '2020-03-12 09:58:17', NULL),
(220, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:58:20', '2020-03-12 09:58:20', NULL),
(221, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:58:27', '2020-03-12 09:58:27', NULL),
(222, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:58:31', '2020-03-12 09:58:31', NULL),
(223, 21, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:58:35', '2020-03-12 09:58:35', NULL),
(224, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 09:59:32', '2020-03-12 09:59:32', NULL),
(225, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:00:01', '2020-03-12 10:00:01', NULL),
(226, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:00:05', '2020-03-12 10:00:05', NULL),
(227, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:00:06', '2020-03-12 10:00:06', NULL),
(228, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:00:07', '2020-03-12 10:00:07', NULL),
(229, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:00:08', '2020-03-12 10:00:08', NULL),
(230, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:00:12', '2020-03-12 10:00:12', NULL),
(231, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:00:14', '2020-03-12 10:00:14', NULL),
(232, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:02:39', '2020-03-12 10:02:39', NULL),
(233, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:03:12', '2020-03-12 10:03:12', NULL),
(234, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:11:01', '2020-03-12 10:11:01', NULL),
(235, 20, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 10:11:13', '2020-03-12 10:11:13', NULL),
(236, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:05:21', '2020-03-12 11:05:21', NULL),
(237, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:05:22', '2020-03-12 11:05:22', NULL),
(238, 22, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:05:29', '2020-03-12 11:05:29', NULL),
(239, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:05:30', '2020-03-12 11:05:30', NULL),
(240, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:05:42', '2020-03-12 11:05:42', NULL),
(241, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:06:03', '2020-03-12 11:06:03', NULL),
(242, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:06:33', '2020-03-12 11:06:33', NULL),
(243, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:07:00', '2020-03-12 11:07:00', NULL),
(244, 23, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:09:52', '2020-03-12 11:09:52', NULL),
(245, 24, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:09:52', '2020-03-12 11:09:52', NULL),
(246, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:51:30', '2020-03-12 11:51:30', NULL),
(247, 22, NULL, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:51:32', '2020-03-12 11:51:32', NULL),
(248, 22, NULL, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:51:34', '2020-03-12 11:51:34', NULL),
(249, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:52:13', '2020-03-12 11:52:13', NULL),
(250, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:53:02', '2020-03-12 11:53:02', NULL),
(251, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:57:12', '2020-03-12 11:57:12', NULL),
(252, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:57:20', '2020-03-12 11:57:20', NULL),
(253, 22, NULL, NULL, 'POST', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:57:23', '2020-03-12 11:57:23', NULL),
(254, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:57:53', '2020-03-12 11:57:53', NULL),
(255, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:57:56', '2020-03-12 11:57:56', NULL),
(256, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:58:38', '2020-03-12 11:58:38', NULL),
(257, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:58:40', '2020-03-12 11:58:40', NULL),
(258, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:58:43', '2020-03-12 11:58:43', NULL),
(259, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 11:58:46', '2020-03-12 11:58:46', NULL),
(260, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:58:49', '2020-03-12 11:58:49', NULL),
(261, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:58:51', '2020-03-12 11:58:51', NULL),
(262, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:58:56', '2020-03-12 11:58:56', NULL),
(263, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 11:58:59', '2020-03-12 11:58:59', NULL),
(264, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:00:43', '2020-03-12 12:00:43', NULL),
(265, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:00:49', '2020-03-12 12:00:49', NULL),
(266, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:00:57', '2020-03-12 12:00:57', NULL),
(267, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:00:58', '2020-03-12 12:00:58', NULL),
(268, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:01:19', '2020-03-12 12:01:19', NULL),
(269, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:01:47', '2020-03-12 12:01:47', NULL),
(270, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:01:50', '2020-03-12 12:01:50', NULL),
(271, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:02:15', '2020-03-12 12:02:15', NULL),
(272, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:02:17', '2020-03-12 12:02:17', NULL),
(273, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:03:06', '2020-03-12 12:03:06', NULL),
(274, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:04:11', '2020-03-12 12:04:11', NULL),
(275, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:04:30', '2020-03-12 12:04:30', NULL),
(276, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:05:58', '2020-03-12 12:05:58', NULL),
(277, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:05:58', '2020-03-12 12:05:58', NULL),
(278, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:06:07', '2020-03-12 12:06:07', NULL),
(279, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:06:09', '2020-03-12 12:06:09', NULL),
(280, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:06:10', '2020-03-12 12:06:10', NULL),
(281, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:07:50', '2020-03-12 12:07:50', NULL),
(282, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:07:53', '2020-03-12 12:07:53', NULL),
(283, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:07:56', '2020-03-12 12:07:56', NULL),
(284, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:08:18', '2020-03-12 12:08:18', NULL),
(285, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:08:23', '2020-03-12 12:08:23', NULL),
(286, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:08:25', '2020-03-12 12:08:25', NULL),
(287, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:08:46', '2020-03-12 12:08:46', NULL),
(288, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:08:49', '2020-03-12 12:08:49', NULL),
(289, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:09:35', '2020-03-12 12:09:35', NULL),
(290, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:09:37', '2020-03-12 12:09:37', NULL),
(291, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:09:43', '2020-03-12 12:09:43', NULL),
(292, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:09:51', '2020-03-12 12:09:51', NULL),
(293, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:09:56', '2020-03-12 12:09:56', NULL),
(294, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:09:58', '2020-03-12 12:09:58', NULL),
(295, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:10:00', '2020-03-12 12:10:00', NULL),
(296, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:11:00', '2020-03-12 12:11:00', NULL),
(297, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:11:02', '2020-03-12 12:11:02', NULL),
(298, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:11:04', '2020-03-12 12:11:04', NULL),
(299, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:11:16', '2020-03-12 12:11:16', NULL),
(300, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:11:18', '2020-03-12 12:11:18', NULL),
(301, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:11:21', '2020-03-12 12:11:21', NULL),
(302, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:11:27', '2020-03-12 12:11:27', NULL),
(303, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:11:30', '2020-03-12 12:11:30', NULL),
(304, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:14:27', '2020-03-12 12:14:27', NULL),
(305, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:14:29', '2020-03-12 12:14:29', NULL),
(306, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:15:32', '2020-03-12 12:15:32', NULL),
(307, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:15:56', '2020-03-12 12:15:56', NULL),
(308, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:16:01', '2020-03-12 12:16:01', NULL),
(309, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:16:13', '2020-03-12 12:16:13', NULL),
(310, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:16:16', '2020-03-12 12:16:16', NULL),
(311, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:17:20', '2020-03-12 12:17:20', NULL),
(312, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:17:29', '2020-03-12 12:17:29', NULL),
(313, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:17:32', '2020-03-12 12:17:32', NULL),
(314, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:19:35', '2020-03-12 12:19:35', NULL),
(315, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:19:56', '2020-03-12 12:19:56', NULL),
(316, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:19:58', '2020-03-12 12:19:58', NULL),
(317, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:23:52', '2020-03-12 12:23:52', NULL),
(318, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:24:55', '2020-03-12 12:24:55', NULL),
(319, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:25:00', '2020-03-12 12:25:00', NULL),
(320, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:25:02', '2020-03-12 12:25:02', NULL),
(321, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:26:19', '2020-03-12 12:26:19', NULL),
(322, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:26:41', '2020-03-12 12:26:41', NULL),
(323, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:26:43', '2020-03-12 12:26:43', NULL),
(324, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:26:44', '2020-03-12 12:26:44', NULL),
(325, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:27:13', '2020-03-12 12:27:13', NULL),
(326, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:28:56', '2020-03-12 12:28:56', NULL),
(327, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:30:02', '2020-03-12 12:30:02', NULL),
(328, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:30:32', '2020-03-12 12:30:32', NULL),
(329, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:30:36', '2020-03-12 12:30:36', NULL),
(330, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:30:41', '2020-03-12 12:30:41', NULL),
(331, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:30:45', '2020-03-12 12:30:45', NULL),
(332, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:30:48', '2020-03-12 12:30:48', NULL),
(333, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:30:51', '2020-03-12 12:30:51', NULL),
(334, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:30:54', '2020-03-12 12:30:54', NULL),
(335, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:30:57', '2020-03-12 12:30:57', NULL),
(336, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:32:14', '2020-03-12 12:32:14', NULL),
(337, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:32:16', '2020-03-12 12:32:16', NULL),
(338, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:32:21', '2020-03-12 12:32:21', NULL),
(339, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:32:29', '2020-03-12 12:32:29', NULL),
(340, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:32:49', '2020-03-12 12:32:49', NULL),
(341, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:34:03', '2020-03-12 12:34:03', NULL),
(342, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:34:05', '2020-03-12 12:34:05', NULL),
(343, 25, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:34:18', '2020-03-12 12:34:18', NULL),
(344, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:34:39', '2020-03-12 12:34:39', NULL),
(345, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:34:44', '2020-03-12 12:34:44', NULL),
(346, 26, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:39:58', '2020-03-12 12:39:58', NULL),
(347, 26, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:41:13', '2020-03-12 12:41:13', NULL),
(348, 26, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:41:14', '2020-03-12 12:41:14', NULL),
(349, 26, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:42:04', '2020-03-12 12:42:04', NULL),
(350, 26, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:43:49', '2020-03-12 12:43:49', NULL),
(351, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:44:51', '2020-03-12 12:44:51', NULL),
(352, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:44:53', '2020-03-12 12:44:53', NULL),
(353, 27, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:45:46', '2020-03-12 12:45:46', NULL),
(354, 26, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:45:50', '2020-03-12 12:45:50', NULL),
(355, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:51:12', '2020-03-12 12:51:12', NULL),
(356, 28, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:51:47', '2020-03-12 12:51:47', NULL),
(357, 26, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:51:51', '2020-03-12 12:51:51', NULL),
(358, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:52:05', '2020-03-12 12:52:05', NULL),
(359, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:54:43', '2020-03-12 12:54:43', NULL),
(360, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:54:45', '2020-03-12 12:54:45', NULL),
(361, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:55:06', '2020-03-12 12:55:06', NULL),
(362, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:55:06', '2020-03-12 12:55:06', NULL),
(363, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:58:57', '2020-03-12 12:58:57', NULL),
(364, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 12:58:59', '2020-03-12 12:58:59', NULL),
(365, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 12:59:59', '2020-03-12 12:59:59', NULL),
(366, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:00:02', '2020-03-12 13:00:02', NULL),
(367, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:00:38', '2020-03-12 13:00:38', NULL),
(368, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:00:42', '2020-03-12 13:00:42', NULL),
(369, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:00:43', '2020-03-12 13:00:43', NULL),
(370, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:01:08', '2020-03-12 13:01:08', NULL),
(371, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:01:09', '2020-03-12 13:01:09', NULL),
(372, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:01:23', '2020-03-12 13:01:23', NULL),
(373, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:01:53', '2020-03-12 13:01:53', NULL),
(374, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:01:54', '2020-03-12 13:01:54', NULL),
(375, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:02:00', '2020-03-12 13:02:00', NULL),
(376, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:02:05', '2020-03-12 13:02:05', NULL),
(377, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:02:05', '2020-03-12 13:02:05', NULL),
(378, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:02:21', '2020-03-12 13:02:21', NULL),
(379, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:02:22', '2020-03-12 13:02:22', NULL),
(380, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:02:22', '2020-03-12 13:02:22', NULL),
(381, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:02:24', '2020-03-12 13:02:24', NULL),
(382, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:03:11', '2020-03-12 13:03:11', NULL),
(383, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:03:14', '2020-03-12 13:03:14', NULL),
(384, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:03:16', '2020-03-12 13:03:16', NULL),
(385, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:03:20', '2020-03-12 13:03:20', NULL),
(386, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:03:20', '2020-03-12 13:03:20', NULL),
(387, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:03:29', '2020-03-12 13:03:29', NULL),
(388, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:03:30', '2020-03-12 13:03:30', NULL),
(389, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:03:30', '2020-03-12 13:03:30', NULL),
(390, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:03:32', '2020-03-12 13:03:32', NULL),
(391, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:04:21', '2020-03-12 13:04:21', NULL),
(392, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:04:23', '2020-03-12 13:04:23', NULL),
(393, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:04:31', '2020-03-12 13:04:31', NULL),
(394, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:04:34', '2020-03-12 13:04:34', NULL),
(395, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:04:36', '2020-03-12 13:04:36', NULL),
(396, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:04:54', '2020-03-12 13:04:54', NULL),
(397, 22, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:05:04', '2020-03-12 13:05:04', NULL),
(398, 22, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:05:09', '2020-03-12 13:05:09', NULL),
(399, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:39:34', '2020-03-12 13:39:34', NULL),
(400, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:39:42', '2020-03-12 13:39:42', NULL),
(401, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:39:42', '2020-03-12 13:39:42', NULL),
(402, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:39:43', '2020-03-12 13:39:43', NULL),
(403, 29, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:39:59', '2020-03-12 13:39:59', NULL),
(404, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:39:59', '2020-03-12 13:39:59', NULL),
(405, 29, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:40:31', '2020-03-12 13:40:31', NULL),
(406, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:40:31', '2020-03-12 13:40:31', NULL),
(407, 29, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:40:43', '2020-03-12 13:40:43', NULL),
(408, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:40:43', '2020-03-12 13:40:43', NULL),
(409, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:41:33', '2020-03-12 13:41:33', NULL),
(410, 29, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:41:41', '2020-03-12 13:41:41', NULL),
(411, 29, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:41:55', '2020-03-12 13:41:55', NULL),
(412, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:42:08', '2020-03-12 13:42:08', NULL),
(413, 29, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:42:16', '2020-03-12 13:42:16', NULL),
(414, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:42:54', '2020-03-12 13:42:54', NULL),
(415, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:43:02', '2020-03-12 13:43:02', NULL),
(416, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:43:02', '2020-03-12 13:43:02', NULL),
(417, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:44:13', '2020-03-12 13:44:13', NULL),
(418, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:44:13', '2020-03-12 13:44:13', NULL),
(419, 29, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:44:19', '2020-03-12 13:44:19', NULL),
(420, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:44:19', '2020-03-12 13:44:19', NULL),
(421, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:44:23', '2020-03-12 13:44:23', NULL),
(422, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:44:31', '2020-03-12 13:44:31', NULL),
(423, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:44:32', '2020-03-12 13:44:32', NULL),
(424, 29, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:45:39', '2020-03-12 13:45:39', NULL),
(425, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:45:40', '2020-03-12 13:45:40', NULL),
(426, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:45:54', '2020-03-12 13:45:54', NULL),
(427, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:46:01', '2020-03-12 13:46:01', NULL),
(428, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:46:19', '2020-03-12 13:46:19', NULL),
(429, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:46:33', '2020-03-12 13:46:33', NULL),
(430, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:46:40', '2020-03-12 13:46:40', NULL),
(431, 29, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:46:42', '2020-03-12 13:46:42', NULL),
(432, 29, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:46:46', '2020-03-12 13:46:46', NULL),
(433, 29, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:47:20', '2020-03-12 13:47:20', NULL),
(434, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:47:52', '2020-03-12 13:47:52', NULL),
(435, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:47:52', '2020-03-12 13:47:52', NULL),
(436, 30, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:52:28', '2020-03-12 13:52:28', NULL),
(437, 30, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:52:47', '2020-03-12 13:52:47', NULL),
(438, 30, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:53:29', '2020-03-12 13:53:29', NULL),
(439, 30, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:53:31', '2020-03-12 13:53:31', NULL),
(440, 30, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:17', '2020-03-12 13:54:17', NULL),
(441, 30, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:17', '2020-03-12 13:54:17', NULL),
(442, 30, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:27', '2020-03-12 13:54:27', NULL),
(443, 30, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:27', '2020-03-12 13:54:27', NULL),
(444, 30, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:44', '2020-03-12 13:54:44', NULL),
(445, 30, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:45', '2020-03-12 13:54:45', NULL),
(446, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:52', '2020-03-12 13:54:52', NULL),
(447, 29, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:57', '2020-03-12 13:54:57', NULL),
(448, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:58', '2020-03-12 13:54:58', NULL),
(449, 29, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:59', '2020-03-12 13:54:59', NULL),
(450, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:54:59', '2020-03-12 13:54:59', NULL),
(451, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:55:01', '2020-03-12 13:55:01', NULL),
(452, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:55:05', '2020-03-12 13:55:05', NULL),
(453, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:55:06', '2020-03-12 13:55:06', NULL),
(454, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:55:18', '2020-03-12 13:55:18', NULL),
(455, 29, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:55:20', '2020-03-12 13:55:20', NULL),
(456, 30, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:55:35', '2020-03-12 13:55:35', NULL),
(457, 30, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:55:36', '2020-03-12 13:55:36', NULL),
(458, 30, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:56:02', '2020-03-12 13:56:02', NULL),
(459, 31, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:57:32', '2020-03-12 13:57:32', NULL),
(460, 32, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:57:32', '2020-03-12 13:57:32', NULL),
(461, 32, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:57:35', '2020-03-12 13:57:35', NULL),
(462, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:57:47', '2020-03-12 13:57:47', NULL),
(463, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:57:52', '2020-03-12 13:57:52', NULL),
(464, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:57:58', '2020-03-12 13:57:58', NULL),
(465, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:58:29', '2020-03-12 13:58:29', NULL),
(466, 29, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:58:31', '2020-03-12 13:58:31', NULL),
(467, 29, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 13:58:33', '2020-03-12 13:58:33', NULL),
(468, 32, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 13:58:47', '2020-03-12 13:58:47', NULL),
(469, 33, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 14:18:49', '2020-03-12 14:18:49', NULL),
(470, 34, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 14:18:49', '2020-03-12 14:18:49', NULL),
(471, 35, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 14:19:40', '2020-03-12 14:19:40', NULL),
(472, 35, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 14:19:43', '2020-03-12 14:19:43', NULL),
(473, 35, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 14:19:44', '2020-03-12 14:19:44', NULL),
(474, 36, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 14:37:29', '2020-03-12 14:37:29', NULL),
(475, 36, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 14:37:48', '2020-03-12 14:37:48', NULL),
(476, 37, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 14:40:05', '2020-03-12 14:40:05', NULL),
(477, 37, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 14:40:26', '2020-03-12 14:40:26', NULL),
(478, 37, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 14:40:51', '2020-03-12 14:40:51', NULL),
(479, 37, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 14:40:54', '2020-03-12 14:40:54', NULL),
(480, 37, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 14:41:01', '2020-03-12 14:41:01', NULL);
INSERT INTO `tracker_log` (`id`, `session_id`, `path_id`, `query_id`, `method`, `route_path_id`, `is_ajax`, `is_secure`, `is_json`, `wants_json`, `error_id`, `created_at`, `updated_at`, `referer_id`) VALUES
(481, 37, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 14:41:06', '2020-03-12 14:41:06', NULL),
(482, 36, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 14:52:11', '2020-03-12 14:52:11', NULL),
(483, 36, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 14:52:20', '2020-03-12 14:52:20', NULL),
(484, 39, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(485, 40, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(486, 38, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(487, 41, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(488, 42, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(489, 43, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-12 15:40:19', '2020-03-12 15:40:19', NULL),
(490, 43, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:41:01', '2020-03-12 15:41:01', NULL),
(491, 44, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:24', '2020-03-12 15:59:24', NULL),
(492, 45, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:31', '2020-03-12 15:59:31', NULL),
(493, 46, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:42', '2020-03-12 15:59:42', NULL),
(494, 47, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:42', '2020-03-12 15:59:42', NULL),
(495, 48, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:42', '2020-03-12 15:59:42', NULL),
(496, 49, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:42', '2020-03-12 15:59:42', NULL),
(497, 45, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:43', '2020-03-12 15:59:43', NULL),
(498, 45, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:44', '2020-03-12 15:59:44', NULL),
(499, 45, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:54', '2020-03-12 15:59:54', NULL),
(500, 45, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 15:59:54', '2020-03-12 15:59:54', NULL),
(501, 45, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 16:00:03', '2020-03-12 16:00:03', NULL),
(502, 45, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 16:00:07', '2020-03-12 16:00:07', NULL),
(503, 45, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 16:00:10', '2020-03-12 16:00:10', NULL),
(504, 50, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 16:57:02', '2020-03-12 16:57:02', NULL),
(505, 50, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 16:57:20', '2020-03-12 16:57:20', NULL),
(506, 50, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 16:57:20', '2020-03-12 16:57:20', NULL),
(507, 50, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 16:57:23', '2020-03-12 16:57:23', NULL),
(508, 50, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 16:58:23', '2020-03-12 16:58:23', NULL),
(509, 51, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 17:06:23', '2020-03-12 17:06:23', NULL),
(510, 52, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 21:56:43', '2020-03-12 21:56:43', NULL),
(511, 52, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 22:02:16', '2020-03-12 22:02:16', NULL),
(512, 52, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 22:02:19', '2020-03-12 22:02:19', NULL),
(513, 53, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 22:02:31', '2020-03-12 22:02:31', NULL),
(514, 54, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-12 22:28:57', '2020-03-12 22:28:57', NULL),
(515, 55, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-13 01:19:40', '2020-03-13 01:19:40', NULL),
(516, 56, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:12:06', '2020-03-14 08:12:06', NULL),
(517, 56, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:13:07', '2020-03-14 08:13:07', NULL),
(518, 56, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:13:08', '2020-03-14 08:13:08', NULL),
(519, 56, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:13:21', '2020-03-14 08:13:21', NULL),
(520, 56, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:13:21', '2020-03-14 08:13:21', NULL),
(521, 56, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:13:36', '2020-03-14 08:13:36', NULL),
(522, 56, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:13:36', '2020-03-14 08:13:36', NULL),
(523, 56, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:13:47', '2020-03-14 08:13:47', NULL),
(524, 56, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:13:47', '2020-03-14 08:13:47', NULL),
(525, 56, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:18:28', '2020-03-14 08:18:28', NULL),
(526, 56, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:18:28', '2020-03-14 08:18:28', NULL),
(527, 56, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:18:34', '2020-03-14 08:18:34', NULL),
(528, 56, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:18:35', '2020-03-14 08:18:35', NULL),
(529, 56, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:19:59', '2020-03-14 08:19:59', NULL),
(530, 56, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:20:00', '2020-03-14 08:20:00', NULL),
(531, 57, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:57:50', '2020-03-14 08:57:50', NULL),
(532, 58, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 08:59:16', '2020-03-14 08:59:16', NULL),
(533, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:32:34', '2020-03-14 09:32:34', NULL),
(534, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:32:35', '2020-03-14 09:32:35', NULL),
(535, 59, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:32:51', '2020-03-14 09:32:51', NULL),
(536, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:32:51', '2020-03-14 09:32:51', NULL),
(537, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:01', '2020-03-14 09:33:01', NULL),
(538, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:03', '2020-03-14 09:33:03', NULL),
(539, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:07', '2020-03-14 09:33:07', NULL),
(540, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:10', '2020-03-14 09:33:10', NULL),
(541, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:10', '2020-03-14 09:33:10', NULL),
(542, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:15', '2020-03-14 09:33:15', NULL),
(543, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:38', '2020-03-14 09:33:38', NULL),
(544, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:38', '2020-03-14 09:33:38', NULL),
(545, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:45', '2020-03-14 09:33:45', NULL),
(546, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:58', '2020-03-14 09:33:58', NULL),
(547, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:33:58', '2020-03-14 09:33:58', NULL),
(548, 59, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:34:03', '2020-03-14 09:34:03', NULL),
(549, 60, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:49:06', '2020-03-14 09:49:06', NULL),
(550, 61, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 09:49:43', '2020-03-14 09:49:43', NULL),
(551, 62, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 10:04:38', '2020-03-14 10:04:38', NULL),
(552, 62, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 10:04:43', '2020-03-14 10:04:43', NULL),
(553, 63, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 10:35:21', '2020-03-14 10:35:21', NULL),
(554, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:08:11', '2020-03-14 16:08:11', NULL),
(555, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:08:11', '2020-03-14 16:08:11', NULL),
(556, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:08:11', '2020-03-14 16:08:11', NULL),
(557, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:08:11', '2020-03-14 16:08:11', NULL),
(558, 64, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:08:19', '2020-03-14 16:08:19', NULL),
(559, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:08:20', '2020-03-14 16:08:20', NULL),
(560, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:08:23', '2020-03-14 16:08:23', NULL),
(561, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:27:22', '2020-03-14 16:27:22', NULL),
(562, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:27:23', '2020-03-14 16:27:23', NULL),
(563, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:27:23', '2020-03-14 16:27:23', NULL),
(564, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:27:23', '2020-03-14 16:27:23', NULL),
(565, 64, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:27:41', '2020-03-14 16:27:41', NULL),
(566, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:27:42', '2020-03-14 16:27:42', NULL),
(567, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:28:08', '2020-03-14 16:28:08', NULL),
(568, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:28:19', '2020-03-14 16:28:19', NULL),
(569, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:28:29', '2020-03-14 16:28:29', NULL),
(570, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:28:34', '2020-03-14 16:28:34', NULL),
(571, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:28:46', '2020-03-14 16:28:46', NULL),
(572, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:28:58', '2020-03-14 16:28:58', NULL),
(573, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:29:22', '2020-03-14 16:29:22', NULL),
(574, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:29:30', '2020-03-14 16:29:30', NULL),
(575, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:29:30', '2020-03-14 16:29:30', NULL),
(576, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:29:30', '2020-03-14 16:29:30', NULL),
(577, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:30:41', '2020-03-14 16:30:41', NULL),
(578, 64, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-14 16:30:46', '2020-03-14 16:30:46', NULL),
(579, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:30:55', '2020-03-14 16:30:55', NULL),
(580, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:31:00', '2020-03-14 16:31:00', NULL),
(581, 64, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:31:07', '2020-03-14 16:31:07', NULL),
(582, 65, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:32:01', '2020-03-14 16:32:01', NULL),
(583, 65, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:32:11', '2020-03-14 16:32:11', NULL),
(584, 65, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:32:11', '2020-03-14 16:32:11', NULL),
(585, 65, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:32:49', '2020-03-14 16:32:49', NULL),
(586, 65, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:32:50', '2020-03-14 16:32:50', NULL),
(587, 65, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:33:36', '2020-03-14 16:33:36', NULL),
(588, 65, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:33:59', '2020-03-14 16:33:59', NULL),
(589, 65, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:33:59', '2020-03-14 16:33:59', NULL),
(590, 65, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:34:06', '2020-03-14 16:34:06', NULL),
(591, 65, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:34:13', '2020-03-14 16:34:13', NULL),
(592, 65, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:34:14', '2020-03-14 16:34:14', NULL),
(593, 66, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:35:53', '2020-03-14 16:35:53', NULL),
(594, 67, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:35:59', '2020-03-14 16:35:59', NULL),
(595, 66, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:36:11', '2020-03-14 16:36:11', NULL),
(596, 66, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:36:12', '2020-03-14 16:36:12', NULL),
(597, 68, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:39:28', '2020-03-14 16:39:28', NULL),
(598, 68, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:39:39', '2020-03-14 16:39:39', NULL),
(599, 68, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:39:39', '2020-03-14 16:39:39', NULL),
(600, 68, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:40:20', '2020-03-14 16:40:20', NULL),
(601, 68, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:40:20', '2020-03-14 16:40:20', NULL),
(602, 68, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:41:13', '2020-03-14 16:41:13', NULL),
(603, 68, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-14 16:41:14', '2020-03-14 16:41:14', NULL),
(604, 69, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:19:24', '2020-03-15 08:19:24', NULL),
(605, 70, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:19:25', '2020-03-15 08:19:25', NULL),
(606, 71, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:20:08', '2020-03-15 08:20:08', NULL),
(607, 71, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:20:09', '2020-03-15 08:20:09', NULL),
(608, 72, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:30:18', '2020-03-15 08:30:18', NULL),
(609, 73, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:30:18', '2020-03-15 08:30:18', NULL),
(610, 74, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:30:19', '2020-03-15 08:30:19', NULL),
(611, 75, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:30:20', '2020-03-15 08:30:20', NULL),
(612, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:32:06', '2020-03-15 08:32:06', NULL),
(613, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:32:09', '2020-03-15 08:32:09', NULL),
(614, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:32:09', '2020-03-15 08:32:09', NULL),
(615, 76, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:32:17', '2020-03-15 08:32:17', NULL),
(616, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:32:18', '2020-03-15 08:32:18', NULL),
(617, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:32:23', '2020-03-15 08:32:23', NULL),
(618, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:32:40', '2020-03-15 08:32:40', NULL),
(619, 76, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:32:53', '2020-03-15 08:32:53', NULL),
(620, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:32:53', '2020-03-15 08:32:53', NULL),
(621, 76, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:33:01', '2020-03-15 08:33:01', NULL),
(622, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:33:01', '2020-03-15 08:33:01', NULL),
(623, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:33:20', '2020-03-15 08:33:20', NULL),
(624, 76, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-15 08:33:34', '2020-03-15 08:33:34', NULL),
(625, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:32:36', '2020-03-16 02:32:36', NULL),
(626, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:32:44', '2020-03-16 02:32:44', NULL),
(627, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:32:53', '2020-03-16 02:32:53', NULL),
(628, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:33:20', '2020-03-16 02:33:20', NULL),
(629, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:33:34', '2020-03-16 02:33:34', NULL),
(630, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:33:46', '2020-03-16 02:33:46', NULL),
(631, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:33:50', '2020-03-16 02:33:50', NULL),
(632, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:33:54', '2020-03-16 02:33:54', NULL),
(633, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:33:58', '2020-03-16 02:33:58', NULL),
(634, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:37:35', '2020-03-16 02:37:35', NULL),
(635, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:38:24', '2020-03-16 02:38:24', NULL),
(636, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:38:53', '2020-03-16 02:38:53', NULL),
(637, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:39:25', '2020-03-16 02:39:25', NULL),
(638, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:40:32', '2020-03-16 02:40:32', NULL),
(639, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:42:30', '2020-03-16 02:42:30', NULL),
(640, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:43:50', '2020-03-16 02:43:50', NULL),
(641, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:43:54', '2020-03-16 02:43:54', NULL),
(642, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:43:57', '2020-03-16 02:43:57', NULL),
(643, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:44:00', '2020-03-16 02:44:00', NULL),
(644, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:45:02', '2020-03-16 02:45:02', NULL),
(645, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:46:37', '2020-03-16 02:46:37', NULL),
(646, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:47:53', '2020-03-16 02:47:53', NULL),
(647, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:48:59', '2020-03-16 02:48:59', NULL),
(648, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:49:46', '2020-03-16 02:49:46', NULL),
(649, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:50:23', '2020-03-16 02:50:23', NULL),
(650, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:51:06', '2020-03-16 02:51:06', NULL),
(651, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:51:35', '2020-03-16 02:51:35', NULL),
(652, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:51:45', '2020-03-16 02:51:45', NULL),
(653, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:52:02', '2020-03-16 02:52:02', NULL),
(654, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:52:32', '2020-03-16 02:52:32', NULL),
(655, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:52:44', '2020-03-16 02:52:44', NULL),
(656, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:52:56', '2020-03-16 02:52:56', NULL),
(657, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:53:05', '2020-03-16 02:53:05', NULL),
(658, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:53:19', '2020-03-16 02:53:19', NULL),
(659, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:53:36', '2020-03-16 02:53:36', NULL),
(660, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:53:52', '2020-03-16 02:53:52', NULL),
(661, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:54:00', '2020-03-16 02:54:00', NULL),
(662, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:54:18', '2020-03-16 02:54:18', NULL),
(663, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:54:31', '2020-03-16 02:54:31', NULL),
(664, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:54:40', '2020-03-16 02:54:40', NULL),
(665, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:54:50', '2020-03-16 02:54:50', NULL),
(666, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:54:58', '2020-03-16 02:54:58', NULL),
(667, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:55:06', '2020-03-16 02:55:06', NULL),
(668, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:55:41', '2020-03-16 02:55:41', NULL),
(669, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:56:08', '2020-03-16 02:56:08', NULL),
(670, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:57:28', '2020-03-16 02:57:28', NULL),
(671, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 02:59:09', '2020-03-16 02:59:09', NULL),
(672, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:02:25', '2020-03-16 03:02:25', NULL),
(673, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:02:51', '2020-03-16 03:02:51', NULL),
(674, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:03:11', '2020-03-16 03:03:11', NULL),
(675, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:03:20', '2020-03-16 03:03:20', NULL),
(676, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:03:29', '2020-03-16 03:03:29', NULL),
(677, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:03:38', '2020-03-16 03:03:38', NULL),
(678, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:03:55', '2020-03-16 03:03:55', NULL),
(679, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:04:05', '2020-03-16 03:04:05', NULL),
(680, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:04:27', '2020-03-16 03:04:27', NULL),
(681, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:04:58', '2020-03-16 03:04:58', NULL),
(682, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:05:36', '2020-03-16 03:05:36', NULL),
(683, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:05:46', '2020-03-16 03:05:46', NULL),
(684, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:05:54', '2020-03-16 03:05:54', NULL),
(685, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:06:02', '2020-03-16 03:06:02', NULL),
(686, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:06:18', '2020-03-16 03:06:18', NULL),
(687, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:06:33', '2020-03-16 03:06:33', NULL),
(688, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:06:47', '2020-03-16 03:06:47', NULL),
(689, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:06:57', '2020-03-16 03:06:57', NULL),
(690, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:07:23', '2020-03-16 03:07:23', NULL),
(691, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:09:01', '2020-03-16 03:09:01', NULL),
(692, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:09:35', '2020-03-16 03:09:35', NULL),
(693, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:09:44', '2020-03-16 03:09:44', NULL),
(694, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:10:20', '2020-03-16 03:10:20', NULL),
(695, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:10:51', '2020-03-16 03:10:51', NULL),
(696, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:11:38', '2020-03-16 03:11:38', NULL),
(697, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:12:16', '2020-03-16 03:12:16', NULL),
(698, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:12:38', '2020-03-16 03:12:38', NULL),
(699, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:13:13', '2020-03-16 03:13:13', NULL),
(700, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:13:26', '2020-03-16 03:13:26', NULL),
(701, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:13:42', '2020-03-16 03:13:42', NULL),
(702, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:14:10', '2020-03-16 03:14:10', NULL),
(703, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:14:45', '2020-03-16 03:14:45', NULL),
(704, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:15:13', '2020-03-16 03:15:13', NULL),
(705, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:16:01', '2020-03-16 03:16:01', NULL),
(706, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:16:27', '2020-03-16 03:16:27', NULL),
(707, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:16:42', '2020-03-16 03:16:42', NULL),
(708, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:17:05', '2020-03-16 03:17:05', NULL),
(709, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:17:38', '2020-03-16 03:17:38', NULL),
(710, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:17:55', '2020-03-16 03:17:55', NULL),
(711, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:18:11', '2020-03-16 03:18:11', NULL),
(712, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:18:21', '2020-03-16 03:18:21', NULL),
(713, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:18:39', '2020-03-16 03:18:39', NULL),
(714, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:18:55', '2020-03-16 03:18:55', NULL),
(715, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:19:17', '2020-03-16 03:19:17', NULL),
(716, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:19:32', '2020-03-16 03:19:32', NULL),
(717, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:19:50', '2020-03-16 03:19:50', NULL),
(718, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:20:24', '2020-03-16 03:20:24', NULL),
(719, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:20:33', '2020-03-16 03:20:33', NULL),
(720, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:20:52', '2020-03-16 03:20:52', NULL),
(721, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:23:12', '2020-03-16 03:23:12', NULL),
(722, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:23:40', '2020-03-16 03:23:40', NULL),
(723, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:24:03', '2020-03-16 03:24:03', NULL),
(724, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:24:19', '2020-03-16 03:24:19', NULL),
(725, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:24:45', '2020-03-16 03:24:45', NULL),
(726, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:25:02', '2020-03-16 03:25:02', NULL),
(727, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:25:07', '2020-03-16 03:25:07', NULL),
(728, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:25:18', '2020-03-16 03:25:18', NULL),
(729, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:25:30', '2020-03-16 03:25:30', NULL),
(730, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:26:05', '2020-03-16 03:26:05', NULL),
(731, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:26:27', '2020-03-16 03:26:27', NULL),
(732, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:26:40', '2020-03-16 03:26:40', NULL),
(733, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:28:25', '2020-03-16 03:28:25', NULL),
(734, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:28:53', '2020-03-16 03:28:53', NULL),
(735, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:30:24', '2020-03-16 03:30:24', NULL),
(736, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:31:42', '2020-03-16 03:31:42', NULL),
(737, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:32:26', '2020-03-16 03:32:26', NULL),
(738, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:32:46', '2020-03-16 03:32:46', NULL),
(739, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:34:25', '2020-03-16 03:34:25', NULL),
(740, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:34:39', '2020-03-16 03:34:39', NULL),
(741, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:35:11', '2020-03-16 03:35:11', NULL),
(742, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:35:30', '2020-03-16 03:35:30', NULL),
(743, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:36:02', '2020-03-16 03:36:02', NULL),
(744, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:36:19', '2020-03-16 03:36:19', NULL),
(745, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:36:31', '2020-03-16 03:36:31', NULL),
(746, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:36:46', '2020-03-16 03:36:46', NULL),
(747, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:37:11', '2020-03-16 03:37:11', NULL),
(748, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:37:22', '2020-03-16 03:37:22', NULL),
(749, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:37:34', '2020-03-16 03:37:34', NULL),
(750, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:38:49', '2020-03-16 03:38:49', NULL),
(751, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:40:27', '2020-03-16 03:40:27', NULL),
(752, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:40:40', '2020-03-16 03:40:40', NULL),
(753, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:40:48', '2020-03-16 03:40:48', NULL),
(754, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:41:15', '2020-03-16 03:41:15', NULL),
(755, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:41:18', '2020-03-16 03:41:18', NULL),
(756, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:41:21', '2020-03-16 03:41:21', NULL),
(757, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:41:34', '2020-03-16 03:41:34', NULL),
(758, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:41:39', '2020-03-16 03:41:39', NULL),
(759, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:41:55', '2020-03-16 03:41:55', NULL),
(760, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:42:00', '2020-03-16 03:42:00', NULL),
(761, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:55:11', '2020-03-16 03:55:11', NULL),
(762, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:55:15', '2020-03-16 03:55:15', NULL),
(763, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:55:21', '2020-03-16 03:55:21', NULL),
(764, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:55:23', '2020-03-16 03:55:23', NULL),
(765, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:55:26', '2020-03-16 03:55:26', NULL),
(766, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 03:55:30', '2020-03-16 03:55:30', NULL),
(767, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:08:15', '2020-03-16 04:08:15', NULL),
(768, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:08:21', '2020-03-16 04:08:21', NULL),
(769, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:08:41', '2020-03-16 04:08:41', NULL),
(770, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:08:41', '2020-03-16 04:08:41', NULL),
(771, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:09:21', '2020-03-16 04:09:21', NULL),
(772, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:09:35', '2020-03-16 04:09:35', NULL),
(773, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:09:39', '2020-03-16 04:09:39', NULL),
(774, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:09:39', '2020-03-16 04:09:39', NULL),
(775, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:09:40', '2020-03-16 04:09:40', NULL),
(776, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:09:45', '2020-03-16 04:09:45', NULL),
(777, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:09:51', '2020-03-16 04:09:51', NULL),
(778, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:09:52', '2020-03-16 04:09:52', NULL),
(779, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:10:20', '2020-03-16 04:10:20', NULL),
(780, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:10:22', '2020-03-16 04:10:22', NULL),
(781, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:10:23', '2020-03-16 04:10:23', NULL),
(782, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:10:26', '2020-03-16 04:10:26', NULL),
(783, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:10:28', '2020-03-16 04:10:28', NULL),
(784, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:10:31', '2020-03-16 04:10:31', NULL),
(785, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:10:31', '2020-03-16 04:10:31', NULL),
(786, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:11:02', '2020-03-16 04:11:02', NULL),
(787, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:11:32', '2020-03-16 04:11:32', NULL),
(788, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:11:36', '2020-03-16 04:11:36', NULL),
(789, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:11:37', '2020-03-16 04:11:37', NULL),
(790, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:12:45', '2020-03-16 04:12:45', NULL),
(791, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:13:43', '2020-03-16 04:13:43', NULL),
(792, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:14:44', '2020-03-16 04:14:44', NULL),
(793, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:15:31', '2020-03-16 04:15:31', NULL),
(794, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:17:17', '2020-03-16 04:17:17', NULL),
(795, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:17:19', '2020-03-16 04:17:19', NULL),
(796, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:17:57', '2020-03-16 04:17:57', NULL),
(797, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:17:58', '2020-03-16 04:17:58', NULL),
(798, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:19:48', '2020-03-16 04:19:48', NULL),
(799, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 04:20:24', '2020-03-16 04:20:24', NULL),
(800, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:15:00', '2020-03-16 05:15:00', NULL),
(801, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:15:04', '2020-03-16 05:15:04', NULL),
(802, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:16:25', '2020-03-16 05:16:25', NULL),
(803, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:16:35', '2020-03-16 05:16:35', NULL),
(804, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:16:38', '2020-03-16 05:16:38', NULL),
(805, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:16:41', '2020-03-16 05:16:41', NULL),
(806, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:18:01', '2020-03-16 05:18:01', NULL),
(807, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:18:05', '2020-03-16 05:18:05', NULL),
(808, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:18:07', '2020-03-16 05:18:07', NULL),
(809, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:18:09', '2020-03-16 05:18:09', NULL),
(810, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:18:53', '2020-03-16 05:18:53', NULL),
(811, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:19:09', '2020-03-16 05:19:09', NULL),
(812, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:19:25', '2020-03-16 05:19:25', NULL),
(813, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:19:55', '2020-03-16 05:19:55', NULL),
(814, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:21:32', '2020-03-16 05:21:32', NULL),
(815, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:41:53', '2020-03-16 05:41:53', NULL),
(816, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:42:26', '2020-03-16 05:42:26', NULL),
(817, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:44:05', '2020-03-16 05:44:05', NULL),
(818, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:46:38', '2020-03-16 05:46:38', NULL),
(819, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:47:19', '2020-03-16 05:47:19', NULL),
(820, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:47:41', '2020-03-16 05:47:41', NULL),
(821, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:51:42', '2020-03-16 05:51:42', NULL),
(822, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:52:09', '2020-03-16 05:52:09', NULL),
(823, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:52:47', '2020-03-16 05:52:47', NULL),
(824, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:53:20', '2020-03-16 05:53:20', NULL),
(825, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:53:50', '2020-03-16 05:53:50', NULL),
(826, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 05:55:12', '2020-03-16 05:55:12', NULL),
(827, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:02:26', '2020-03-16 06:02:26', NULL),
(828, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:02:30', '2020-03-16 06:02:30', NULL),
(829, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:02:42', '2020-03-16 06:02:42', NULL),
(830, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:02:47', '2020-03-16 06:02:47', NULL),
(831, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:02:48', '2020-03-16 06:02:48', NULL),
(832, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:02:51', '2020-03-16 06:02:51', NULL),
(833, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:02:53', '2020-03-16 06:02:53', NULL),
(834, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:02:58', '2020-03-16 06:02:58', NULL),
(835, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:04:07', '2020-03-16 06:04:07', NULL),
(836, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:04:25', '2020-03-16 06:04:25', NULL),
(837, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:04:25', '2020-03-16 06:04:25', NULL),
(838, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:04:30', '2020-03-16 06:04:30', NULL),
(839, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:12:07', '2020-03-16 06:12:07', NULL),
(840, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:12:10', '2020-03-16 06:12:10', NULL),
(841, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:14:02', '2020-03-16 06:14:02', NULL),
(842, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:14:23', '2020-03-16 06:14:23', NULL),
(843, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:15:25', '2020-03-16 06:15:25', NULL),
(844, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:16:23', '2020-03-16 06:16:23', NULL),
(845, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:41:45', '2020-03-16 06:41:45', NULL),
(846, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:42:42', '2020-03-16 06:42:42', NULL),
(847, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:43:36', '2020-03-16 06:43:36', NULL),
(848, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:44:10', '2020-03-16 06:44:10', NULL),
(849, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:44:41', '2020-03-16 06:44:41', NULL),
(850, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:45:44', '2020-03-16 06:45:44', NULL),
(851, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:46:34', '2020-03-16 06:46:34', NULL),
(852, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:47:27', '2020-03-16 06:47:27', NULL),
(853, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:48:15', '2020-03-16 06:48:15', NULL),
(854, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:48:47', '2020-03-16 06:48:47', NULL),
(855, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:49:02', '2020-03-16 06:49:02', NULL),
(856, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:50:09', '2020-03-16 06:50:09', NULL),
(857, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:50:29', '2020-03-16 06:50:29', NULL),
(858, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:50:52', '2020-03-16 06:50:52', NULL),
(859, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:51:44', '2020-03-16 06:51:44', NULL),
(860, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:52:39', '2020-03-16 06:52:39', NULL),
(861, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:53:20', '2020-03-16 06:53:20', NULL),
(862, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:53:50', '2020-03-16 06:53:50', NULL),
(863, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:54:28', '2020-03-16 06:54:28', NULL),
(864, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:54:52', '2020-03-16 06:54:52', NULL),
(865, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:55:01', '2020-03-16 06:55:01', NULL),
(866, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:55:39', '2020-03-16 06:55:39', NULL),
(867, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:55:50', '2020-03-16 06:55:50', NULL),
(868, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:57:12', '2020-03-16 06:57:12', NULL),
(869, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:57:46', '2020-03-16 06:57:46', NULL),
(870, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:58:24', '2020-03-16 06:58:24', NULL),
(871, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:59:07', '2020-03-16 06:59:07', NULL),
(872, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 06:59:33', '2020-03-16 06:59:33', NULL),
(873, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-16 12:33:15', '2020-03-16 12:33:15', NULL),
(874, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:50:54', '2020-03-17 23:50:54', NULL),
(875, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:51:14', '2020-03-17 23:51:14', NULL),
(876, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:51:28', '2020-03-17 23:51:28', NULL),
(877, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:52:23', '2020-03-17 23:52:23', NULL),
(878, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:53:31', '2020-03-17 23:53:31', NULL),
(879, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:10', '2020-03-17 23:56:10', NULL),
(880, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:12', '2020-03-17 23:56:12', NULL),
(881, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:19', '2020-03-17 23:56:19', NULL),
(882, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:19', '2020-03-17 23:56:19', NULL),
(883, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:36', '2020-03-17 23:56:36', NULL),
(884, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:36', '2020-03-17 23:56:36', NULL),
(885, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:48', '2020-03-17 23:56:48', NULL),
(886, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:52', '2020-03-17 23:56:52', NULL),
(887, 77, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:59', '2020-03-17 23:56:59', NULL),
(888, 78, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:56:59', '2020-03-17 23:56:59', NULL),
(889, 79, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:00', '2020-03-17 23:57:00', NULL),
(890, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:00', '2020-03-17 23:57:00', NULL),
(891, 80, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:15', '2020-03-17 23:57:15', NULL),
(892, 81, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:16', '2020-03-17 23:57:16', NULL),
(893, 82, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:16', '2020-03-17 23:57:16', NULL),
(894, 83, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:16', '2020-03-17 23:57:16', NULL),
(895, 84, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:17', '2020-03-17 23:57:17', NULL),
(896, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:17', '2020-03-17 23:57:17', NULL),
(897, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:31', '2020-03-17 23:57:31', NULL),
(898, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:35', '2020-03-17 23:57:35', NULL),
(899, 85, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:40', '2020-03-17 23:57:40', NULL),
(900, 86, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:41', '2020-03-17 23:57:41', NULL),
(901, 87, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:41', '2020-03-17 23:57:41', NULL),
(902, 88, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:41', '2020-03-17 23:57:41', NULL),
(903, 89, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:42', '2020-03-17 23:57:42', NULL),
(904, 90, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:42', '2020-03-17 23:57:42', NULL),
(905, 91, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:43', '2020-03-17 23:57:43', NULL),
(906, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:44', '2020-03-17 23:57:44', NULL),
(907, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:57:56', '2020-03-17 23:57:56', NULL),
(908, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:58:07', '2020-03-17 23:58:07', NULL),
(909, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:59:04', '2020-03-17 23:59:04', NULL),
(910, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-17 23:59:39', '2020-03-17 23:59:39', NULL),
(911, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:00:00', '2020-03-18 00:00:00', NULL),
(912, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:15:37', '2020-03-18 00:15:37', NULL),
(913, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:15:53', '2020-03-18 00:15:53', NULL),
(914, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:16:27', '2020-03-18 00:16:27', NULL),
(915, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:16:37', '2020-03-18 00:16:37', NULL),
(916, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:27:18', '2020-03-18 00:27:18', NULL),
(917, 92, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:27:24', '2020-03-18 00:27:24', NULL),
(918, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:27:25', '2020-03-18 00:27:25', NULL),
(919, 93, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:27:45', '2020-03-18 00:27:45', NULL),
(920, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:27:46', '2020-03-18 00:27:46', NULL),
(921, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:27:59', '2020-03-18 00:27:59', NULL),
(922, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:28:03', '2020-03-18 00:28:03', NULL),
(923, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:29:57', '2020-03-18 00:29:57', NULL),
(924, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:30:00', '2020-03-18 00:30:00', NULL),
(925, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:30:11', '2020-03-18 00:30:11', NULL),
(926, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:30:24', '2020-03-18 00:30:24', NULL),
(927, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:32:42', '2020-03-18 00:32:42', NULL),
(928, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:32:42', '2020-03-18 00:32:42', NULL),
(929, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:32:48', '2020-03-18 00:32:48', NULL),
(930, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:32:49', '2020-03-18 00:32:49', NULL),
(931, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:34:44', '2020-03-18 00:34:44', NULL),
(932, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:35:54', '2020-03-18 00:35:54', NULL),
(933, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:36:15', '2020-03-18 00:36:15', NULL),
(934, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:37:07', '2020-03-18 00:37:07', NULL),
(935, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:37:15', '2020-03-18 00:37:15', NULL),
(936, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:37:18', '2020-03-18 00:37:18', NULL),
(937, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:37:25', '2020-03-18 00:37:25', NULL),
(938, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:38:17', '2020-03-18 00:38:17', NULL),
(939, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:38:19', '2020-03-18 00:38:19', NULL),
(940, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:45:42', '2020-03-18 00:45:42', NULL),
(941, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:45:48', '2020-03-18 00:45:48', NULL),
(942, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:45:50', '2020-03-18 00:45:50', NULL),
(943, 94, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:46:41', '2020-03-18 00:46:41', NULL),
(944, 95, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:46:42', '2020-03-18 00:46:42', NULL),
(945, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:46:43', '2020-03-18 00:46:43', NULL),
(946, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:47:16', '2020-03-18 00:47:16', NULL),
(947, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:47:19', '2020-03-18 00:47:19', NULL),
(948, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:47:20', '2020-03-18 00:47:20', NULL),
(949, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:47:25', '2020-03-18 00:47:25', NULL),
(950, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:47:27', '2020-03-18 00:47:27', NULL),
(951, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:47:46', '2020-03-18 00:47:46', NULL),
(952, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:47:47', '2020-03-18 00:47:47', NULL),
(953, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:48:02', '2020-03-18 00:48:02', NULL),
(954, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:48:04', '2020-03-18 00:48:04', NULL),
(955, 96, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:48:39', '2020-03-18 00:48:39', NULL),
(956, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:48:42', '2020-03-18 00:48:42', NULL),
(957, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:48:46', '2020-03-18 00:48:46', NULL),
(958, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:53:23', '2020-03-18 00:53:23', NULL),
(959, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:55:04', '2020-03-18 00:55:04', NULL),
(960, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:55:18', '2020-03-18 00:55:18', NULL),
(961, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:55:19', '2020-03-18 00:55:19', NULL);
INSERT INTO `tracker_log` (`id`, `session_id`, `path_id`, `query_id`, `method`, `route_path_id`, `is_ajax`, `is_secure`, `is_json`, `wants_json`, `error_id`, `created_at`, `updated_at`, `referer_id`) VALUES
(962, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:55:42', '2020-03-18 00:55:42', NULL),
(963, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:55:43', '2020-03-18 00:55:43', NULL),
(964, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:55:46', '2020-03-18 00:55:46', NULL),
(965, 97, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:59:26', '2020-03-18 00:59:26', NULL),
(966, 98, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:59:27', '2020-03-18 00:59:27', NULL),
(967, 99, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:59:35', '2020-03-18 00:59:35', NULL),
(968, 100, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 00:59:36', '2020-03-18 00:59:36', NULL),
(969, 101, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:00:05', '2020-03-18 01:00:05', NULL),
(970, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:00:07', '2020-03-18 01:00:07', NULL),
(971, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:00:33', '2020-03-18 01:00:33', NULL),
(972, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:00:58', '2020-03-18 01:00:58', NULL),
(973, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:01:26', '2020-03-18 01:01:26', NULL),
(974, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:01:28', '2020-03-18 01:01:28', NULL),
(975, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:02:35', '2020-03-18 01:02:35', NULL),
(976, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:02:39', '2020-03-18 01:02:39', NULL),
(977, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:02:42', '2020-03-18 01:02:42', NULL),
(978, 102, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:02:48', '2020-03-18 01:02:48', NULL),
(979, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:02:55', '2020-03-18 01:02:55', NULL),
(980, 103, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:03:15', '2020-03-18 01:03:15', NULL),
(981, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:03:17', '2020-03-18 01:03:17', NULL),
(982, 104, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:03:31', '2020-03-18 01:03:31', NULL),
(983, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:03:33', '2020-03-18 01:03:33', NULL),
(984, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:04:03', '2020-03-18 01:04:03', NULL),
(985, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:04:35', '2020-03-18 01:04:35', NULL),
(986, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:04:40', '2020-03-18 01:04:40', NULL),
(987, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:04:41', '2020-03-18 01:04:41', NULL),
(988, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:04:46', '2020-03-18 01:04:46', NULL),
(989, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:04:55', '2020-03-18 01:04:55', NULL),
(990, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:04:59', '2020-03-18 01:04:59', NULL),
(991, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:05:02', '2020-03-18 01:05:02', NULL),
(992, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:05:14', '2020-03-18 01:05:14', NULL),
(993, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:05:20', '2020-03-18 01:05:20', NULL),
(994, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:05:26', '2020-03-18 01:05:26', NULL),
(995, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:05:31', '2020-03-18 01:05:31', NULL),
(996, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:05:43', '2020-03-18 01:05:43', NULL),
(997, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:05:46', '2020-03-18 01:05:46', NULL),
(998, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:05:49', '2020-03-18 01:05:49', NULL),
(999, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:05:57', '2020-03-18 01:05:57', NULL),
(1000, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:06:22', '2020-03-18 01:06:22', NULL),
(1001, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:06:30', '2020-03-18 01:06:30', NULL),
(1002, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:06:35', '2020-03-18 01:06:35', NULL),
(1003, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:09:30', '2020-03-18 01:09:30', NULL),
(1004, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:09:30', '2020-03-18 01:09:30', NULL),
(1005, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:09:30', '2020-03-18 01:09:30', NULL),
(1006, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:09:31', '2020-03-18 01:09:31', NULL),
(1007, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:09:31', '2020-03-18 01:09:31', NULL),
(1008, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:39:30', '2020-03-18 01:39:30', NULL),
(1009, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:39:31', '2020-03-18 01:39:31', NULL),
(1010, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:42:31', '2020-03-18 01:42:31', NULL),
(1011, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:42:33', '2020-03-18 01:42:33', NULL),
(1012, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:42:36', '2020-03-18 01:42:36', NULL),
(1013, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:42:36', '2020-03-18 01:42:36', NULL),
(1014, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:42:36', '2020-03-18 01:42:36', NULL),
(1015, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:05', '2020-03-18 01:45:05', NULL),
(1016, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:45:11', '2020-03-18 01:45:11', NULL),
(1017, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:12', '2020-03-18 01:45:12', NULL),
(1018, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:19', '2020-03-18 01:45:19', NULL),
(1019, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:19', '2020-03-18 01:45:19', NULL),
(1020, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:19', '2020-03-18 01:45:19', NULL),
(1021, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:20', '2020-03-18 01:45:20', NULL),
(1022, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:20', '2020-03-18 01:45:20', NULL),
(1023, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:48', '2020-03-18 01:45:48', NULL),
(1024, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:48', '2020-03-18 01:45:48', NULL),
(1025, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:49', '2020-03-18 01:45:49', NULL),
(1026, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:49', '2020-03-18 01:45:49', NULL),
(1027, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:49', '2020-03-18 01:45:49', NULL),
(1028, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:49', '2020-03-18 01:45:49', NULL),
(1029, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:45:52', '2020-03-18 01:45:52', NULL),
(1030, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:45:52', '2020-03-18 01:45:52', NULL),
(1031, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:03', '2020-03-18 01:46:03', NULL),
(1032, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:46:06', '2020-03-18 01:46:06', NULL),
(1033, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:06', '2020-03-18 01:46:06', NULL),
(1034, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:09', '2020-03-18 01:46:09', NULL),
(1035, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:46:10', '2020-03-18 01:46:10', NULL),
(1036, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:11', '2020-03-18 01:46:11', NULL),
(1037, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:16', '2020-03-18 01:46:16', NULL),
(1038, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:36', '2020-03-18 01:46:36', NULL),
(1039, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:46:38', '2020-03-18 01:46:38', NULL),
(1040, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:38', '2020-03-18 01:46:38', NULL),
(1041, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:43', '2020-03-18 01:46:43', NULL),
(1042, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:43', '2020-03-18 01:46:43', NULL),
(1043, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:43', '2020-03-18 01:46:43', NULL),
(1044, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:44', '2020-03-18 01:46:44', NULL),
(1045, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:46:44', '2020-03-18 01:46:44', NULL),
(1046, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:47:42', '2020-03-18 01:47:42', NULL),
(1047, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:47:53', '2020-03-18 01:47:53', NULL),
(1048, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:48:00', '2020-03-18 01:48:00', NULL),
(1049, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:48:07', '2020-03-18 01:48:07', NULL),
(1050, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:48:09', '2020-03-18 01:48:09', NULL),
(1051, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:48:10', '2020-03-18 01:48:10', NULL),
(1052, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:48:14', '2020-03-18 01:48:14', NULL),
(1053, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:48:14', '2020-03-18 01:48:14', NULL),
(1054, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:48:15', '2020-03-18 01:48:15', NULL),
(1055, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:48:15', '2020-03-18 01:48:15', NULL),
(1056, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:48:15', '2020-03-18 01:48:15', NULL),
(1057, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:50:20', '2020-03-18 01:50:20', NULL),
(1058, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:50:23', '2020-03-18 01:50:23', NULL),
(1059, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:50:25', '2020-03-18 01:50:25', NULL),
(1060, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:50:28', '2020-03-18 01:50:28', NULL),
(1061, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:50:31', '2020-03-18 01:50:31', NULL),
(1062, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:51:35', '2020-03-18 01:51:35', NULL),
(1063, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:51:37', '2020-03-18 01:51:37', NULL),
(1064, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:51:48', '2020-03-18 01:51:48', NULL),
(1065, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:52:07', '2020-03-18 01:52:07', NULL),
(1066, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:52:13', '2020-03-18 01:52:13', NULL),
(1067, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:52:32', '2020-03-18 01:52:32', NULL),
(1068, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:53:42', '2020-03-18 01:53:42', NULL),
(1069, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:53:47', '2020-03-18 01:53:47', NULL),
(1070, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:53:59', '2020-03-18 01:53:59', NULL),
(1071, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:54:08', '2020-03-18 01:54:08', NULL),
(1072, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 01:54:11', '2020-03-18 01:54:11', NULL),
(1073, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:05', '2020-03-18 01:55:05', NULL),
(1074, 105, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:13', '2020-03-18 01:55:13', NULL),
(1075, 106, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:13', '2020-03-18 01:55:13', NULL),
(1076, 107, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:13', '2020-03-18 01:55:13', NULL),
(1077, 108, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:14', '2020-03-18 01:55:14', NULL),
(1078, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:14', '2020-03-18 01:55:14', NULL),
(1079, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:22', '2020-03-18 01:55:22', NULL),
(1080, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:25', '2020-03-18 01:55:25', NULL),
(1081, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:30', '2020-03-18 01:55:30', NULL),
(1082, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:34', '2020-03-18 01:55:34', NULL),
(1083, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:42', '2020-03-18 01:55:42', NULL),
(1084, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:55:53', '2020-03-18 01:55:53', NULL),
(1085, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:56:41', '2020-03-18 01:56:41', NULL),
(1086, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:59:04', '2020-03-18 01:59:04', NULL),
(1087, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:59:26', '2020-03-18 01:59:26', NULL),
(1088, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:59:30', '2020-03-18 01:59:30', NULL),
(1089, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 01:59:50', '2020-03-18 01:59:50', NULL),
(1090, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:03:31', '2020-03-18 02:03:31', NULL),
(1091, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:03:41', '2020-03-18 02:03:41', NULL),
(1092, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:03:41', '2020-03-18 02:03:41', NULL),
(1093, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:03:57', '2020-03-18 02:03:57', NULL),
(1094, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:03:58', '2020-03-18 02:03:58', NULL),
(1095, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:04:04', '2020-03-18 02:04:04', NULL),
(1096, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:04:04', '2020-03-18 02:04:04', NULL),
(1097, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:04:04', '2020-03-18 02:04:04', NULL),
(1098, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:21:31', '2020-03-18 02:21:31', NULL),
(1099, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:21:35', '2020-03-18 02:21:35', NULL),
(1100, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:29:17', '2020-03-18 02:29:17', NULL),
(1101, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:29:32', '2020-03-18 02:29:32', NULL),
(1102, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:29:45', '2020-03-18 02:29:45', NULL),
(1103, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:30:59', '2020-03-18 02:30:59', NULL),
(1104, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:31:01', '2020-03-18 02:31:01', NULL),
(1105, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:31:04', '2020-03-18 02:31:04', NULL),
(1106, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:31:07', '2020-03-18 02:31:07', NULL),
(1107, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:31:11', '2020-03-18 02:31:11', NULL),
(1108, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:31:22', '2020-03-18 02:31:22', NULL),
(1109, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:31:28', '2020-03-18 02:31:28', NULL),
(1110, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:31:28', '2020-03-18 02:31:28', NULL),
(1111, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:32:58', '2020-03-18 02:32:58', NULL),
(1112, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:33:02', '2020-03-18 02:33:02', NULL),
(1113, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:33:09', '2020-03-18 02:33:09', NULL),
(1114, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:33:21', '2020-03-18 02:33:21', NULL),
(1115, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:33:24', '2020-03-18 02:33:24', NULL),
(1116, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:33:36', '2020-03-18 02:33:36', NULL),
(1117, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:33:52', '2020-03-18 02:33:52', NULL),
(1118, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:34:42', '2020-03-18 02:34:42', NULL),
(1119, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 02:34:43', '2020-03-18 02:34:43', NULL),
(1120, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:09:50', '2020-03-18 03:09:50', NULL),
(1121, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:10:02', '2020-03-18 03:10:02', NULL),
(1122, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:10:03', '2020-03-18 03:10:03', NULL),
(1123, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:10:03', '2020-03-18 03:10:03', NULL),
(1124, 109, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:49:58', '2020-03-18 03:49:58', NULL),
(1125, 110, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:49:59', '2020-03-18 03:49:59', NULL),
(1126, 111, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:49:59', '2020-03-18 03:49:59', NULL),
(1127, 112, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:50:00', '2020-03-18 03:50:00', NULL),
(1128, 113, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:50:00', '2020-03-18 03:50:00', NULL),
(1129, 114, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:50:00', '2020-03-18 03:50:00', NULL),
(1130, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:50:02', '2020-03-18 03:50:02', NULL),
(1131, 115, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:53:17', '2020-03-18 03:53:17', NULL),
(1132, 116, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:53:17', '2020-03-18 03:53:17', NULL),
(1133, 117, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:53:17', '2020-03-18 03:53:17', NULL),
(1134, 118, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:53:18', '2020-03-18 03:53:18', NULL),
(1135, 119, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:53:18', '2020-03-18 03:53:18', NULL),
(1136, 120, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:53:18', '2020-03-18 03:53:18', NULL),
(1137, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:53:21', '2020-03-18 03:53:21', NULL),
(1138, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:55:23', '2020-03-18 03:55:23', NULL),
(1139, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:55:55', '2020-03-18 03:55:55', NULL),
(1140, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:56:30', '2020-03-18 03:56:30', NULL),
(1141, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:57:09', '2020-03-18 03:57:09', NULL),
(1142, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:57:44', '2020-03-18 03:57:44', NULL),
(1143, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 03:58:45', '2020-03-18 03:58:45', NULL),
(1144, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:00:04', '2020-03-18 04:00:04', NULL),
(1145, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:00:08', '2020-03-18 04:00:08', NULL),
(1146, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:00:08', '2020-03-18 04:00:08', NULL),
(1147, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:00:09', '2020-03-18 04:00:09', NULL),
(1148, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:01:05', '2020-03-18 04:01:05', NULL),
(1149, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:01:13', '2020-03-18 04:01:13', NULL),
(1150, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:01:26', '2020-03-18 04:01:26', NULL),
(1151, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:01:54', '2020-03-18 04:01:54', NULL),
(1152, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:02:25', '2020-03-18 04:02:25', NULL),
(1153, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:02:32', '2020-03-18 04:02:32', NULL),
(1154, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:02:33', '2020-03-18 04:02:33', NULL),
(1155, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:02:33', '2020-03-18 04:02:33', NULL),
(1156, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:03:01', '2020-03-18 04:03:01', NULL),
(1157, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:03:01', '2020-03-18 04:03:01', NULL),
(1158, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:03:01', '2020-03-18 04:03:01', NULL),
(1159, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:04:00', '2020-03-18 04:04:00', NULL),
(1160, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:04:09', '2020-03-18 04:04:09', NULL),
(1161, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:04:10', '2020-03-18 04:04:10', NULL),
(1162, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:04:10', '2020-03-18 04:04:10', NULL),
(1163, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:04:51', '2020-03-18 04:04:51', NULL),
(1164, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:05:08', '2020-03-18 04:05:08', NULL),
(1165, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:05:37', '2020-03-18 04:05:37', NULL),
(1166, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:06:19', '2020-03-18 04:06:19', NULL),
(1167, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:07:16', '2020-03-18 04:07:16', NULL),
(1168, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:07:19', '2020-03-18 04:07:19', NULL),
(1169, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:07:22', '2020-03-18 04:07:22', NULL),
(1170, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:07:24', '2020-03-18 04:07:24', NULL),
(1171, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:07:43', '2020-03-18 04:07:43', NULL),
(1172, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:08:27', '2020-03-18 04:08:27', NULL),
(1173, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:08:31', '2020-03-18 04:08:31', NULL),
(1174, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:08:33', '2020-03-18 04:08:33', NULL),
(1175, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:08:44', '2020-03-18 04:08:44', NULL),
(1176, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:09:12', '2020-03-18 04:09:12', NULL),
(1177, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:09:12', '2020-03-18 04:09:12', NULL),
(1178, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:09:20', '2020-03-18 04:09:20', NULL),
(1179, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:09:23', '2020-03-18 04:09:23', NULL),
(1180, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:09:37', '2020-03-18 04:09:37', NULL),
(1181, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:09:49', '2020-03-18 04:09:49', NULL),
(1182, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:09:49', '2020-03-18 04:09:49', NULL),
(1183, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:11:41', '2020-03-18 04:11:41', NULL),
(1184, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:11:45', '2020-03-18 04:11:45', NULL),
(1185, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:11:54', '2020-03-18 04:11:54', NULL),
(1186, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:12:11', '2020-03-18 04:12:11', NULL),
(1187, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:12:13', '2020-03-18 04:12:13', NULL),
(1188, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:12:42', '2020-03-18 04:12:42', NULL),
(1189, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:13:10', '2020-03-18 04:13:10', NULL),
(1190, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:14:13', '2020-03-18 04:14:13', NULL),
(1191, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:14:13', '2020-03-18 04:14:13', NULL),
(1192, 121, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:26', '2020-03-18 04:22:26', NULL),
(1193, 122, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:27', '2020-03-18 04:22:27', NULL),
(1194, 123, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:28', '2020-03-18 04:22:28', NULL),
(1195, 124, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:28', '2020-03-18 04:22:28', NULL),
(1196, 125, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:28', '2020-03-18 04:22:28', NULL),
(1197, 126, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:29', '2020-03-18 04:22:29', NULL),
(1198, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:30', '2020-03-18 04:22:30', NULL),
(1199, 127, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:35', '2020-03-18 04:22:35', NULL),
(1200, 128, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:36', '2020-03-18 04:22:36', NULL),
(1201, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:22:36', '2020-03-18 04:22:36', NULL),
(1202, 1, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:23:11', '2020-03-18 04:23:11', NULL),
(1203, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:23:11', '2020-03-18 04:23:11', NULL),
(1204, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:46:21', '2020-03-18 04:46:21', NULL),
(1205, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:46:52', '2020-03-18 04:46:52', NULL),
(1206, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:47:24', '2020-03-18 04:47:24', NULL),
(1207, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:48:23', '2020-03-18 04:48:23', NULL),
(1208, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:48:41', '2020-03-18 04:48:41', NULL),
(1209, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:49:02', '2020-03-18 04:49:02', NULL),
(1210, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:49:22', '2020-03-18 04:49:22', NULL),
(1211, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:49:49', '2020-03-18 04:49:49', NULL),
(1212, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:50:12', '2020-03-18 04:50:12', NULL),
(1213, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:52:48', '2020-03-18 04:52:48', NULL),
(1214, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:53:07', '2020-03-18 04:53:07', NULL),
(1215, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:53:34', '2020-03-18 04:53:34', NULL),
(1216, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:54:20', '2020-03-18 04:54:20', NULL),
(1217, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:54:23', '2020-03-18 04:54:23', NULL),
(1218, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:54:25', '2020-03-18 04:54:25', NULL),
(1219, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:54:28', '2020-03-18 04:54:28', NULL),
(1220, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:54:53', '2020-03-18 04:54:53', NULL),
(1221, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:55:37', '2020-03-18 04:55:37', NULL),
(1222, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:58:38', '2020-03-18 04:58:38', NULL),
(1223, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 04:59:32', '2020-03-18 04:59:32', NULL),
(1224, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:01:56', '2020-03-18 05:01:56', NULL),
(1225, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:07:04', '2020-03-18 05:07:04', NULL),
(1226, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:07:17', '2020-03-18 05:07:17', NULL),
(1227, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:09:09', '2020-03-18 05:09:09', NULL),
(1228, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:09:48', '2020-03-18 05:09:48', NULL),
(1229, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:10:28', '2020-03-18 05:10:28', NULL),
(1230, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:11:23', '2020-03-18 05:11:23', NULL),
(1231, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:11:27', '2020-03-18 05:11:27', NULL),
(1232, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:11:29', '2020-03-18 05:11:29', NULL),
(1233, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:11:42', '2020-03-18 05:11:42', NULL),
(1234, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:11:45', '2020-03-18 05:11:45', NULL),
(1235, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:12:06', '2020-03-18 05:12:06', NULL),
(1236, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:12:09', '2020-03-18 05:12:09', NULL),
(1237, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:12:15', '2020-03-18 05:12:15', NULL),
(1238, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:15:40', '2020-03-18 05:15:40', NULL),
(1239, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:15:47', '2020-03-18 05:15:47', NULL),
(1240, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:15:59', '2020-03-18 05:15:59', NULL),
(1241, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:16:05', '2020-03-18 05:16:05', NULL),
(1242, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:17:21', '2020-03-18 05:17:21', NULL),
(1243, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:18:08', '2020-03-18 05:18:08', NULL),
(1244, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:18:14', '2020-03-18 05:18:14', NULL),
(1245, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:18:19', '2020-03-18 05:18:19', NULL),
(1246, 1, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-18 05:18:24', '2020-03-18 05:18:24', NULL),
(1247, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:19:17', '2020-03-18 05:19:17', NULL),
(1248, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:19:18', '2020-03-18 05:19:18', NULL),
(1249, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:19:18', '2020-03-18 05:19:18', NULL),
(1250, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:19:18', '2020-03-18 05:19:18', NULL),
(1251, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:19:18', '2020-03-18 05:19:18', NULL),
(1252, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:19:30', '2020-03-18 05:19:30', NULL),
(1253, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:19:45', '2020-03-18 05:19:45', NULL),
(1254, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:20:49', '2020-03-18 05:20:49', NULL),
(1255, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:20:55', '2020-03-18 05:20:55', NULL),
(1256, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:20:58', '2020-03-18 05:20:58', NULL),
(1257, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:24:39', '2020-03-18 05:24:39', NULL),
(1258, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:26:13', '2020-03-18 05:26:13', NULL),
(1259, 1, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-18 05:31:42', '2020-03-18 05:31:42', NULL),
(1260, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:15:32', '2020-03-19 03:15:32', NULL),
(1261, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:15:39', '2020-03-19 03:15:39', NULL),
(1262, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:15:43', '2020-03-19 03:15:43', NULL),
(1263, 129, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-19 03:15:51', '2020-03-19 03:15:51', NULL),
(1264, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:15:53', '2020-03-19 03:15:53', NULL),
(1265, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:16:12', '2020-03-19 03:16:12', NULL),
(1266, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:16:15', '2020-03-19 03:16:15', NULL),
(1267, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:16:45', '2020-03-19 03:16:45', NULL),
(1268, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:16:46', '2020-03-19 03:16:46', NULL),
(1269, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:17:01', '2020-03-19 03:17:01', NULL),
(1270, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:17:03', '2020-03-19 03:17:03', NULL),
(1271, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:18:48', '2020-03-19 03:18:48', NULL),
(1272, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:19:12', '2020-03-19 03:19:12', NULL),
(1273, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:19:20', '2020-03-19 03:19:20', NULL),
(1274, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:19:32', '2020-03-19 03:19:32', NULL),
(1275, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:19:34', '2020-03-19 03:19:34', NULL),
(1276, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:20:35', '2020-03-19 03:20:35', NULL),
(1277, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:20:37', '2020-03-19 03:20:37', NULL),
(1278, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:20:40', '2020-03-19 03:20:40', NULL),
(1279, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:20:43', '2020-03-19 03:20:43', NULL),
(1280, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:20:50', '2020-03-19 03:20:50', NULL),
(1281, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:20:52', '2020-03-19 03:20:52', NULL),
(1282, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:20:56', '2020-03-19 03:20:56', NULL),
(1283, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:23:43', '2020-03-19 03:23:43', NULL),
(1284, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:23:44', '2020-03-19 03:23:44', NULL),
(1285, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:23:45', '2020-03-19 03:23:45', NULL),
(1286, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:23:48', '2020-03-19 03:23:48', NULL),
(1287, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:23:51', '2020-03-19 03:23:51', NULL),
(1288, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:23:54', '2020-03-19 03:23:54', NULL),
(1289, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:26:50', '2020-03-19 03:26:50', NULL),
(1290, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:26:52', '2020-03-19 03:26:52', NULL),
(1291, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:26:54', '2020-03-19 03:26:54', NULL),
(1292, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:26:56', '2020-03-19 03:26:56', NULL),
(1293, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:26:59', '2020-03-19 03:26:59', NULL),
(1294, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:27:02', '2020-03-19 03:27:02', NULL),
(1295, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:27:02', '2020-03-19 03:27:02', NULL),
(1296, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:28:11', '2020-03-19 03:28:11', NULL),
(1297, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:28:34', '2020-03-19 03:28:34', NULL),
(1298, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:28:42', '2020-03-19 03:28:42', NULL),
(1299, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:28:46', '2020-03-19 03:28:46', NULL),
(1300, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:28:50', '2020-03-19 03:28:50', NULL),
(1301, 129, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-19 03:28:52', '2020-03-19 03:28:52', NULL),
(1302, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:28:54', '2020-03-19 03:28:54', NULL),
(1303, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:28:57', '2020-03-19 03:28:57', NULL),
(1304, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:29:40', '2020-03-19 03:29:40', NULL),
(1305, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:31:00', '2020-03-19 03:31:00', NULL),
(1306, 129, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-19 03:31:02', '2020-03-19 03:31:02', NULL),
(1307, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:31:05', '2020-03-19 03:31:05', NULL),
(1308, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:31:07', '2020-03-19 03:31:07', NULL),
(1309, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:31:13', '2020-03-19 03:31:13', NULL),
(1310, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:31:16', '2020-03-19 03:31:16', NULL),
(1311, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:31:20', '2020-03-19 03:31:20', NULL),
(1312, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:31:23', '2020-03-19 03:31:23', NULL),
(1313, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:31:38', '2020-03-19 03:31:38', NULL),
(1314, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:32:37', '2020-03-19 03:32:37', NULL),
(1315, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:38:21', '2020-03-19 03:38:21', NULL),
(1316, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:38:26', '2020-03-19 03:38:26', NULL),
(1317, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:38:43', '2020-03-19 03:38:43', NULL),
(1318, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:38:47', '2020-03-19 03:38:47', NULL),
(1319, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:38:51', '2020-03-19 03:38:51', NULL),
(1320, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:39:03', '2020-03-19 03:39:03', NULL),
(1321, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:39:05', '2020-03-19 03:39:05', NULL),
(1322, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:41:22', '2020-03-19 03:41:22', NULL),
(1323, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:41:24', '2020-03-19 03:41:24', NULL),
(1324, 129, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 03:41:30', '2020-03-19 03:41:30', NULL),
(1325, 130, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:22', '2020-03-19 04:08:22', NULL),
(1326, 131, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:23', '2020-03-19 04:08:23', NULL),
(1327, 132, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:23', '2020-03-19 04:08:23', NULL),
(1328, 133, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:23', '2020-03-19 04:08:23', NULL),
(1329, 134, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(1330, 135, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(1331, 136, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(1332, 137, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(1333, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(1334, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(1335, 138, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:46', '2020-03-19 04:08:46', NULL),
(1336, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:47', '2020-03-19 04:08:47', NULL),
(1337, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:59', '2020-03-19 04:08:59', NULL),
(1338, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:59', '2020-03-19 04:08:59', NULL),
(1339, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:08:59', '2020-03-19 04:08:59', NULL),
(1340, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:06', '2020-03-19 04:09:06', NULL),
(1341, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:06', '2020-03-19 04:09:06', NULL),
(1342, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:06', '2020-03-19 04:09:06', NULL),
(1343, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:07', '2020-03-19 04:09:07', NULL),
(1344, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:07', '2020-03-19 04:09:07', NULL),
(1345, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:07', '2020-03-19 04:09:07', NULL),
(1346, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:50', '2020-03-19 04:09:50', NULL),
(1347, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:50', '2020-03-19 04:09:50', NULL),
(1348, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:50', '2020-03-19 04:09:50', NULL),
(1349, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:50', '2020-03-19 04:09:50', NULL),
(1350, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:09:50', '2020-03-19 04:09:50', NULL),
(1351, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:10:35', '2020-03-19 04:10:35', NULL),
(1352, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:10:38', '2020-03-19 04:10:38', NULL),
(1353, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:11:17', '2020-03-19 04:11:17', NULL),
(1354, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:11:43', '2020-03-19 04:11:43', NULL),
(1355, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:19:49', '2020-03-19 04:19:49', NULL),
(1356, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:19:49', '2020-03-19 04:19:49', NULL),
(1357, 138, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:19:57', '2020-03-19 04:19:57', NULL),
(1358, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:19:57', '2020-03-19 04:19:57', NULL),
(1359, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:20:02', '2020-03-19 04:20:02', NULL),
(1360, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:20:17', '2020-03-19 04:20:17', NULL),
(1361, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:20:31', '2020-03-19 04:20:31', NULL),
(1362, 138, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-19 04:20:34', '2020-03-19 04:20:34', NULL),
(1363, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:20:39', '2020-03-19 04:20:39', NULL),
(1364, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:20:40', '2020-03-19 04:20:40', NULL),
(1365, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:21:31', '2020-03-19 04:21:31', NULL),
(1366, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:21:33', '2020-03-19 04:21:33', NULL),
(1367, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:21:33', '2020-03-19 04:21:33', NULL),
(1368, 138, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:21:43', '2020-03-19 04:21:43', NULL),
(1369, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:21:43', '2020-03-19 04:21:43', NULL),
(1370, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:22:04', '2020-03-19 04:22:04', NULL),
(1371, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:22:29', '2020-03-19 04:22:29', NULL),
(1372, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:34:38', '2020-03-19 04:34:38', NULL),
(1373, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:36:10', '2020-03-19 04:36:10', NULL),
(1374, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:36:19', '2020-03-19 04:36:19', NULL),
(1375, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:36:25', '2020-03-19 04:36:25', NULL),
(1376, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:36:25', '2020-03-19 04:36:25', NULL),
(1377, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:36:25', '2020-03-19 04:36:25', NULL),
(1378, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:41:43', '2020-03-19 04:41:43', NULL),
(1379, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:41:46', '2020-03-19 04:41:46', NULL),
(1380, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:42:11', '2020-03-19 04:42:11', NULL),
(1381, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:46:00', '2020-03-19 04:46:00', NULL),
(1382, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:46:03', '2020-03-19 04:46:03', NULL),
(1383, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:46:22', '2020-03-19 04:46:22', NULL),
(1384, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:46:25', '2020-03-19 04:46:25', NULL),
(1385, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:46:25', '2020-03-19 04:46:25', NULL),
(1386, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:46:27', '2020-03-19 04:46:27', NULL),
(1387, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:46:28', '2020-03-19 04:46:28', NULL),
(1388, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:46:30', '2020-03-19 04:46:30', NULL),
(1389, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:47:17', '2020-03-19 04:47:17', NULL),
(1390, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:48:00', '2020-03-19 04:48:00', NULL),
(1391, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:48:53', '2020-03-19 04:48:53', NULL),
(1392, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:48:58', '2020-03-19 04:48:58', NULL),
(1393, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:06', '2020-03-19 04:49:06', NULL),
(1394, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:09', '2020-03-19 04:49:09', NULL),
(1395, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:12', '2020-03-19 04:49:12', NULL),
(1396, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:17', '2020-03-19 04:49:17', NULL),
(1397, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:19', '2020-03-19 04:49:19', NULL),
(1398, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:22', '2020-03-19 04:49:22', NULL),
(1399, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:23', '2020-03-19 04:49:23', NULL),
(1400, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:28', '2020-03-19 04:49:28', NULL),
(1401, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:30', '2020-03-19 04:49:30', NULL),
(1402, 138, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 04:49:35', '2020-03-19 04:49:35', NULL),
(1403, 139, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:34:22', '2020-03-19 15:34:22', NULL),
(1404, 139, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:34:23', '2020-03-19 15:34:23', NULL),
(1405, 140, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:05', '2020-03-19 15:49:05', NULL),
(1406, 141, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:06', '2020-03-19 15:49:06', NULL),
(1407, 142, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:10', '2020-03-19 15:49:10', NULL),
(1408, 143, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:10', '2020-03-19 15:49:10', NULL),
(1409, 144, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:10', '2020-03-19 15:49:10', NULL),
(1410, 145, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:10', '2020-03-19 15:49:10', NULL),
(1411, 146, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:11', '2020-03-19 15:49:11', NULL),
(1412, 147, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:11', '2020-03-19 15:49:11', NULL),
(1413, 141, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:11', '2020-03-19 15:49:11', NULL),
(1414, 141, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 15:49:12', '2020-03-19 15:49:12', NULL),
(1415, 148, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 16:05:46', '2020-03-19 16:05:46', NULL),
(1416, 149, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 16:05:46', '2020-03-19 16:05:46', NULL),
(1417, 150, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 16:07:52', '2020-03-19 16:07:52', NULL),
(1418, 151, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 16:07:52', '2020-03-19 16:07:52', NULL),
(1419, 152, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 16:07:52', '2020-03-19 16:07:52', NULL),
(1420, 153, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 16:07:53', '2020-03-19 16:07:53', NULL),
(1421, 151, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 16:07:53', '2020-03-19 16:07:53', NULL),
(1422, 154, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:03:14', '2020-03-19 17:03:14', NULL),
(1423, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:09:47', '2020-03-19 17:09:47', NULL),
(1424, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:09:48', '2020-03-19 17:09:48', NULL),
(1425, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:09:48', '2020-03-19 17:09:48', NULL),
(1426, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:09:48', '2020-03-19 17:09:48', NULL),
(1427, 155, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:09:53', '2020-03-19 17:09:53', NULL),
(1428, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:09:53', '2020-03-19 17:09:53', NULL),
(1429, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:09:58', '2020-03-19 17:09:58', NULL),
(1430, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:10:03', '2020-03-19 17:10:03', NULL),
(1431, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:10:08', '2020-03-19 17:10:08', NULL),
(1432, 155, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-19 17:10:18', '2020-03-19 17:10:18', NULL),
(1433, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:13:10', '2020-03-19 17:13:10', NULL),
(1434, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:13:16', '2020-03-19 17:13:16', NULL),
(1435, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:13:19', '2020-03-19 17:13:19', NULL);
INSERT INTO `tracker_log` (`id`, `session_id`, `path_id`, `query_id`, `method`, `route_path_id`, `is_ajax`, `is_secure`, `is_json`, `wants_json`, `error_id`, `created_at`, `updated_at`, `referer_id`) VALUES
(1436, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:14:03', '2020-03-19 17:14:03', NULL),
(1437, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:14:11', '2020-03-19 17:14:11', NULL),
(1438, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:14:14', '2020-03-19 17:14:14', NULL),
(1439, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:14:21', '2020-03-19 17:14:21', NULL),
(1440, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:14:26', '2020-03-19 17:14:26', NULL),
(1441, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:14:28', '2020-03-19 17:14:28', NULL),
(1442, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:14:33', '2020-03-19 17:14:33', NULL),
(1443, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:14:36', '2020-03-19 17:14:36', NULL),
(1444, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:14:39', '2020-03-19 17:14:39', NULL),
(1445, 155, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-19 17:15:04', '2020-03-19 17:15:04', NULL),
(1446, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:15:11', '2020-03-19 17:15:11', NULL),
(1447, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:16:38', '2020-03-19 17:16:38', NULL),
(1448, 155, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:16:50', '2020-03-19 17:16:50', NULL),
(1449, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:16:52', '2020-03-19 17:16:52', NULL),
(1450, 155, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:16:59', '2020-03-19 17:16:59', NULL),
(1451, 154, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:20:56', '2020-03-19 17:20:56', NULL),
(1452, 154, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:21:02', '2020-03-19 17:21:02', NULL),
(1453, 154, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:21:57', '2020-03-19 17:21:57', NULL),
(1454, 154, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 17:22:18', '2020-03-19 17:22:18', NULL),
(1455, 156, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 18:45:56', '2020-03-19 18:45:56', NULL),
(1456, 156, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-19 18:46:18', '2020-03-19 18:46:18', NULL),
(1457, 156, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-19 18:46:18', '2020-03-19 18:46:18', NULL),
(1458, 157, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 13:28:07', '2020-03-20 13:28:07', NULL),
(1459, 157, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 13:36:39', '2020-03-20 13:36:39', NULL),
(1460, 157, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 13:36:43', '2020-03-20 13:36:43', NULL),
(1461, 157, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 13:36:51', '2020-03-20 13:36:51', NULL),
(1462, 157, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 13:37:05', '2020-03-20 13:37:05', NULL),
(1463, 157, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 13:37:10', '2020-03-20 13:37:10', NULL),
(1464, 157, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 13:37:15', '2020-03-20 13:37:15', NULL),
(1465, 157, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 13:37:17', '2020-03-20 13:37:17', NULL),
(1466, 157, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 13:38:35', '2020-03-20 13:38:35', NULL),
(1467, 157, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 13:38:37', '2020-03-20 13:38:37', NULL),
(1468, 157, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 13:38:39', '2020-03-20 13:38:39', NULL),
(1469, 157, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 13:39:45', '2020-03-20 13:39:45', NULL),
(1470, 158, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 14:40:56', '2020-03-20 14:40:56', NULL),
(1471, 158, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 14:41:00', '2020-03-20 14:41:00', NULL),
(1472, 159, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:00:51', '2020-03-20 21:00:51', NULL),
(1473, 161, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:00:51', '2020-03-20 21:00:51', NULL),
(1474, 162, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:00:51', '2020-03-20 21:00:51', NULL),
(1475, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:00:51', '2020-03-20 21:00:51', NULL),
(1476, 163, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:00:52', '2020-03-20 21:00:52', NULL),
(1477, 164, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:00:52', '2020-03-20 21:00:52', NULL),
(1478, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:00:52', '2020-03-20 21:00:52', NULL),
(1479, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:00:58', '2020-03-20 21:00:58', NULL),
(1480, 160, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:02:48', '2020-03-20 21:02:48', NULL),
(1481, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:02:49', '2020-03-20 21:02:49', NULL),
(1482, 166, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:03:04', '2020-03-20 21:03:04', NULL),
(1483, 165, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:03:04', '2020-03-20 21:03:04', NULL),
(1484, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:03:41', '2020-03-20 21:03:41', NULL),
(1485, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:03:42', '2020-03-20 21:03:42', NULL),
(1486, 167, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:07:54', '2020-03-20 21:07:54', NULL),
(1487, 168, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:07:54', '2020-03-20 21:07:54', NULL),
(1488, 160, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:09:27', '2020-03-20 21:09:27', NULL),
(1489, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:09:27', '2020-03-20 21:09:27', NULL),
(1490, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:09:49', '2020-03-20 21:09:49', NULL),
(1491, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:09:55', '2020-03-20 21:09:55', NULL),
(1492, 160, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 21:09:56', '2020-03-20 21:09:56', NULL),
(1493, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:10:11', '2020-03-20 21:10:11', NULL),
(1494, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:10:11', '2020-03-20 21:10:11', NULL),
(1495, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:10:18', '2020-03-20 21:10:18', NULL),
(1496, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:10:24', '2020-03-20 21:10:24', NULL),
(1497, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:10:29', '2020-03-20 21:10:29', NULL),
(1498, 160, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 21:10:39', '2020-03-20 21:10:39', NULL),
(1499, 169, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 21:10:41', '2020-03-20 21:10:41', NULL),
(1500, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:10:52', '2020-03-20 21:10:52', NULL),
(1501, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:10:55', '2020-03-20 21:10:55', NULL),
(1502, 169, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 21:10:59', '2020-03-20 21:10:59', NULL),
(1503, 169, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 21:11:06', '2020-03-20 21:11:06', NULL),
(1504, 170, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:11:07', '2020-03-20 21:11:07', NULL),
(1505, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:11:08', '2020-03-20 21:11:08', NULL),
(1506, 169, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 21:11:08', '2020-03-20 21:11:08', NULL),
(1507, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:11:15', '2020-03-20 21:11:15', NULL),
(1508, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:12:09', '2020-03-20 21:12:09', NULL),
(1509, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:12:09', '2020-03-20 21:12:09', NULL),
(1510, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:12:55', '2020-03-20 21:12:55', NULL),
(1511, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:12:59', '2020-03-20 21:12:59', NULL),
(1512, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:13:09', '2020-03-20 21:13:09', NULL),
(1513, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:13:11', '2020-03-20 21:13:11', NULL),
(1514, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:14:29', '2020-03-20 21:14:29', NULL),
(1515, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:20:05', '2020-03-20 21:20:05', NULL),
(1516, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:20:06', '2020-03-20 21:20:06', NULL),
(1517, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:23:24', '2020-03-20 21:23:24', NULL),
(1518, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:23:24', '2020-03-20 21:23:24', NULL),
(1519, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:23:49', '2020-03-20 21:23:49', NULL),
(1520, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:23:50', '2020-03-20 21:23:50', NULL),
(1521, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:24:21', '2020-03-20 21:24:21', NULL),
(1522, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:27:21', '2020-03-20 21:27:21', NULL),
(1523, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:27:22', '2020-03-20 21:27:22', NULL),
(1524, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:27:32', '2020-03-20 21:27:32', NULL),
(1525, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:28:07', '2020-03-20 21:28:07', NULL),
(1526, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:28:13', '2020-03-20 21:28:13', NULL),
(1527, 160, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-03-20 21:28:13', '2020-03-20 21:28:13', NULL),
(1528, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:28:14', '2020-03-20 21:28:14', NULL),
(1529, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:28:19', '2020-03-20 21:28:19', NULL),
(1530, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:29:06', '2020-03-20 21:29:06', NULL),
(1531, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:29:06', '2020-03-20 21:29:06', NULL),
(1532, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:29:10', '2020-03-20 21:29:10', NULL),
(1533, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:29:53', '2020-03-20 21:29:53', NULL),
(1534, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:30:03', '2020-03-20 21:30:03', NULL),
(1535, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:30:29', '2020-03-20 21:30:29', NULL),
(1536, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:30:33', '2020-03-20 21:30:33', NULL),
(1537, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:31:10', '2020-03-20 21:31:10', NULL),
(1538, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:31:15', '2020-03-20 21:31:15', NULL),
(1539, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:31:48', '2020-03-20 21:31:48', NULL),
(1540, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:31:56', '2020-03-20 21:31:56', NULL),
(1541, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:32:51', '2020-03-20 21:32:51', NULL),
(1542, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:32:51', '2020-03-20 21:32:51', NULL),
(1543, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:33:11', '2020-03-20 21:33:11', NULL),
(1544, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:33:11', '2020-03-20 21:33:11', NULL),
(1545, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:34:19', '2020-03-20 21:34:19', NULL),
(1546, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:34:25', '2020-03-20 21:34:25', NULL),
(1547, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:34:25', '2020-03-20 21:34:25', NULL),
(1548, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:34:31', '2020-03-20 21:34:31', NULL),
(1549, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:35:27', '2020-03-20 21:35:27', NULL),
(1550, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:35:52', '2020-03-20 21:35:52', NULL),
(1551, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:36:06', '2020-03-20 21:36:06', NULL),
(1552, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:36:29', '2020-03-20 21:36:29', NULL),
(1553, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:36:29', '2020-03-20 21:36:29', NULL),
(1554, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:36:32', '2020-03-20 21:36:32', NULL),
(1555, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:36:33', '2020-03-20 21:36:33', NULL),
(1556, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:37:46', '2020-03-20 21:37:46', NULL),
(1557, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:37:46', '2020-03-20 21:37:46', NULL),
(1558, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:37:47', '2020-03-20 21:37:47', NULL),
(1559, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:37:55', '2020-03-20 21:37:55', NULL),
(1560, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:37:56', '2020-03-20 21:37:56', NULL),
(1561, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:38:20', '2020-03-20 21:38:20', NULL),
(1562, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:38:21', '2020-03-20 21:38:21', NULL),
(1563, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:39:44', '2020-03-20 21:39:44', NULL),
(1564, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:39:46', '2020-03-20 21:39:46', NULL),
(1565, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:39:48', '2020-03-20 21:39:48', NULL),
(1566, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:39:51', '2020-03-20 21:39:51', NULL),
(1567, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:41:50', '2020-03-20 21:41:50', NULL),
(1568, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:41:54', '2020-03-20 21:41:54', NULL),
(1569, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:02', '2020-03-20 21:42:02', NULL),
(1570, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:04', '2020-03-20 21:42:04', NULL),
(1571, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:05', '2020-03-20 21:42:05', NULL),
(1572, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:05', '2020-03-20 21:42:05', NULL),
(1573, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:34', '2020-03-20 21:42:34', NULL),
(1574, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:37', '2020-03-20 21:42:37', NULL),
(1575, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:46', '2020-03-20 21:42:46', NULL),
(1576, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:46', '2020-03-20 21:42:46', NULL),
(1577, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:58', '2020-03-20 21:42:58', NULL),
(1578, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:42:59', '2020-03-20 21:42:59', NULL),
(1579, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:43:04', '2020-03-20 21:43:04', NULL),
(1580, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:43:31', '2020-03-20 21:43:31', NULL),
(1581, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:43:32', '2020-03-20 21:43:32', NULL),
(1582, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:43:46', '2020-03-20 21:43:46', NULL),
(1583, 171, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:43:51', '2020-03-20 21:43:51', NULL),
(1584, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:43:51', '2020-03-20 21:43:51', NULL),
(1585, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:43:58', '2020-03-20 21:43:58', NULL),
(1586, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:44:01', '2020-03-20 21:44:01', NULL),
(1587, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:44:05', '2020-03-20 21:44:05', NULL),
(1588, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:44:55', '2020-03-20 21:44:55', NULL),
(1589, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:45:18', '2020-03-20 21:45:18', NULL),
(1590, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:46:18', '2020-03-20 21:46:18', NULL),
(1591, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:46:18', '2020-03-20 21:46:18', NULL),
(1592, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:46:21', '2020-03-20 21:46:21', NULL),
(1593, 160, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:48:37', '2020-03-20 21:48:37', NULL),
(1594, 172, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:49:15', '2020-03-20 21:49:15', NULL),
(1595, 173, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:49:17', '2020-03-20 21:49:17', NULL),
(1596, 174, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:49:19', '2020-03-20 21:49:19', NULL),
(1597, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:50:06', '2020-03-20 21:50:06', NULL),
(1598, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:50:13', '2020-03-20 21:50:13', NULL),
(1599, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:50:18', '2020-03-20 21:50:18', NULL),
(1600, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:50:19', '2020-03-20 21:50:19', NULL),
(1601, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:50:25', '2020-03-20 21:50:25', NULL),
(1602, 175, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:51:54', '2020-03-20 21:51:54', NULL),
(1603, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:52:40', '2020-03-20 21:52:40', NULL),
(1604, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:53:27', '2020-03-20 21:53:27', NULL),
(1605, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:53:28', '2020-03-20 21:53:28', NULL),
(1606, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:53:45', '2020-03-20 21:53:45', NULL),
(1607, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:53:52', '2020-03-20 21:53:52', NULL),
(1608, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:53:53', '2020-03-20 21:53:53', NULL),
(1609, 169, NULL, NULL, 'POST', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:53:57', '2020-03-20 21:53:57', NULL),
(1610, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:53:57', '2020-03-20 21:53:57', NULL),
(1611, 169, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-20 21:54:01', '2020-03-20 21:54:01', NULL),
(1612, 176, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-21 09:44:43', '2020-03-21 09:44:43', NULL),
(1613, 177, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-21 09:44:44', '2020-03-21 09:44:44', NULL),
(1614, 178, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-21 09:44:44', '2020-03-21 09:44:44', NULL),
(1615, 179, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-03-21 15:50:44', '2020-03-21 15:50:44', NULL),
(1616, 180, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-02 12:37:42', '2020-04-02 12:37:42', NULL),
(1617, 181, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-02 12:37:43', '2020-04-02 12:37:43', NULL),
(1618, 182, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-02 12:46:36', '2020-04-02 12:46:36', NULL),
(1619, 183, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-02 12:46:37', '2020-04-02 12:46:37', NULL),
(1620, 184, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-19 21:14:10', '2020-04-19 21:14:10', NULL),
(1621, 185, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:35:44', '2020-04-25 19:35:44', NULL),
(1622, 186, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:35:44', '2020-04-25 19:35:44', NULL),
(1623, 187, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:50:57', '2020-04-25 19:50:57', NULL),
(1624, 188, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:50:57', '2020-04-25 19:50:57', NULL),
(1625, 189, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:50:57', '2020-04-25 19:50:57', NULL),
(1626, 190, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:51:01', '2020-04-25 19:51:01', NULL),
(1627, 191, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:51:02', '2020-04-25 19:51:02', NULL),
(1628, 192, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:51:03', '2020-04-25 19:51:03', NULL),
(1629, 190, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:53:32', '2020-04-25 19:53:32', NULL),
(1630, 190, NULL, NULL, 'GET', NULL, 1, 0, 0, 0, NULL, '2020-04-25 19:54:03', '2020-04-25 19:54:03', NULL),
(1631, 190, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:54:45', '2020-04-25 19:54:45', NULL),
(1632, 193, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:55:35', '2020-04-25 19:55:35', NULL),
(1633, 194, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:55:53', '2020-04-25 19:55:53', NULL),
(1634, 194, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:55:55', '2020-04-25 19:55:55', NULL),
(1635, 195, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:33', '2020-04-25 19:56:33', NULL),
(1636, 196, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:33', '2020-04-25 19:56:33', NULL),
(1637, 197, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:33', '2020-04-25 19:56:33', NULL),
(1638, 198, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(1639, 199, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(1640, 200, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(1641, 201, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(1642, 202, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(1643, 203, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:35', '2020-04-25 19:56:35', NULL),
(1644, 204, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:35', '2020-04-25 19:56:35', NULL),
(1645, 205, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:36', '2020-04-25 19:56:36', NULL),
(1646, 206, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:36', '2020-04-25 19:56:36', NULL),
(1647, 207, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:36', '2020-04-25 19:56:36', NULL),
(1648, 208, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:37', '2020-04-25 19:56:37', NULL),
(1649, 209, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:38', '2020-04-25 19:56:38', NULL),
(1650, 210, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:39', '2020-04-25 19:56:39', NULL),
(1651, 211, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:40', '2020-04-25 19:56:40', NULL),
(1652, 212, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:41', '2020-04-25 19:56:41', NULL),
(1653, 213, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:41', '2020-04-25 19:56:41', NULL),
(1654, 214, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:42', '2020-04-25 19:56:42', NULL),
(1655, 215, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:43', '2020-04-25 19:56:43', NULL),
(1656, 216, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:43', '2020-04-25 19:56:43', NULL),
(1657, 217, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:44', '2020-04-25 19:56:44', NULL),
(1658, 218, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:45', '2020-04-25 19:56:45', NULL),
(1659, 219, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:46', '2020-04-25 19:56:46', NULL),
(1660, 220, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:46', '2020-04-25 19:56:46', NULL),
(1661, 221, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:47', '2020-04-25 19:56:47', NULL),
(1662, 222, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:48', '2020-04-25 19:56:48', NULL),
(1663, 223, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:48', '2020-04-25 19:56:48', NULL),
(1664, 224, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:49', '2020-04-25 19:56:49', NULL),
(1665, 225, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:49', '2020-04-25 19:56:49', NULL),
(1666, 226, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:50', '2020-04-25 19:56:50', NULL),
(1667, 227, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:50', '2020-04-25 19:56:50', NULL),
(1668, 228, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:51', '2020-04-25 19:56:51', NULL),
(1669, 229, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:53', '2020-04-25 19:56:53', NULL),
(1670, 230, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:54', '2020-04-25 19:56:54', NULL),
(1671, 231, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:55', '2020-04-25 19:56:55', NULL),
(1672, 232, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-25 19:56:56', '2020-04-25 19:56:56', NULL),
(1673, 233, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-26 12:56:57', '2020-04-26 12:56:57', NULL),
(1674, 234, NULL, NULL, 'GET', NULL, 0, 0, 0, 0, NULL, '2020-04-26 12:56:57', '2020-04-26 12:56:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_paths`
--

CREATE TABLE `tracker_paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_queries`
--

CREATE TABLE `tracker_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_query_arguments`
--

CREATE TABLE `tracker_query_arguments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query_id` bigint(20) UNSIGNED NOT NULL,
  `argument` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_referers`
--

CREATE TABLE `tracker_referers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_terms_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_referers_search_terms`
--

CREATE TABLE `tracker_referers_search_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referer_id` bigint(20) UNSIGNED NOT NULL,
  `search_term` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_routes`
--

CREATE TABLE `tracker_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_route_paths`
--

CREATE TABLE `tracker_route_paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_route_path_parameters`
--

CREATE TABLE `tracker_route_path_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_path_id` bigint(20) UNSIGNED NOT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sessions`
--

CREATE TABLE `tracker_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cookie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `geoip_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_robot` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tracker_sessions`
--

INSERT INTO `tracker_sessions` (`id`, `uuid`, `user_id`, `device_id`, `agent_id`, `client_ip`, `referer_id`, `cookie_id`, `geoip_id`, `is_robot`, `created_at`, `updated_at`, `language_id`) VALUES
(1, '0fcab5c7-2a83-4cc3-974c-c09f076e26aa', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-09 05:25:25', '2020-03-18 05:31:42', NULL),
(2, '21884666-2ac1-4dd0-abd4-7d99384ffd36', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-10 09:21:04', '2020-03-10 09:25:37', NULL),
(3, 'bc2e1543-05ca-4ce5-a39f-d53edd8b2866', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-10 10:19:34', '2020-03-10 10:19:47', NULL),
(4, 'a98aa9f3-2442-4333-b2e7-24f2111e0c50', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-10 11:55:47', '2020-03-10 12:22:49', NULL),
(5, '1bdb3faa-1e20-48cc-9c31-ba9633f7a458', NULL, NULL, NULL, '66.102.8.97', NULL, NULL, NULL, 0, '2020-03-10 11:58:25', '2020-03-10 11:58:25', NULL),
(6, '2304173a-8a92-4068-b7d6-8edd98cb46a4', NULL, NULL, NULL, '173.252.95.17', NULL, NULL, NULL, 1, '2020-03-10 12:06:47', '2020-03-10 12:06:47', NULL),
(7, '48496288-67a1-4e5d-9d5a-ba6c12a89b8b', NULL, NULL, NULL, '173.252.95.17', NULL, NULL, NULL, 1, '2020-03-10 12:06:48', '2020-03-10 12:06:48', NULL),
(8, 'c10bf082-3a47-4576-b69f-2863b2228061', NULL, NULL, NULL, '173.252.95.36', NULL, NULL, NULL, 1, '2020-03-10 12:06:48', '2020-03-10 12:06:48', NULL),
(9, 'df4fe14f-691a-4759-823e-54d1b10e7336', NULL, NULL, NULL, '173.252.95.36', NULL, NULL, NULL, 1, '2020-03-10 12:06:49', '2020-03-10 12:06:49', NULL),
(10, '490177fe-f852-40e3-996d-e3a8b1e6777d', NULL, NULL, NULL, '173.252.95.11', NULL, NULL, NULL, 1, '2020-03-10 12:06:49', '2020-03-10 12:06:49', NULL),
(11, 'b8c20ad4-68f0-4d54-90ac-b98b898296ae', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-11 08:46:24', '2020-03-11 08:46:24', NULL),
(12, '2d888fa6-db89-4a5d-8bae-d0815632cebb', NULL, NULL, NULL, '66.249.81.41', NULL, NULL, NULL, 0, '2020-03-12 00:27:07', '2020-03-12 00:27:07', NULL),
(13, 'e3844972-f2eb-4f04-860b-d35fc9fac8a0', NULL, NULL, NULL, '66.249.81.43', NULL, NULL, NULL, 0, '2020-03-12 00:27:08', '2020-03-12 00:27:08', NULL),
(14, '527b186b-6169-4b04-bdff-5a5eb952467a', NULL, NULL, NULL, '173.252.95.36', NULL, NULL, NULL, 1, '2020-03-12 09:39:54', '2020-03-12 09:39:54', NULL),
(15, '8f94e241-3ab1-45b9-9b35-799dec003249', NULL, NULL, NULL, '173.252.95.36', NULL, NULL, NULL, 1, '2020-03-12 09:39:55', '2020-03-12 09:39:55', NULL),
(16, '82656ef8-bc55-4454-b6bc-86355b8a1bae', NULL, NULL, NULL, '173.252.95.12', NULL, NULL, NULL, 1, '2020-03-12 09:39:55', '2020-03-12 09:39:55', NULL),
(17, '16e3f838-43df-4b1f-91d6-9a92918a2521', NULL, NULL, NULL, '173.252.95.12', NULL, NULL, NULL, 1, '2020-03-12 09:39:55', '2020-03-12 09:39:55', NULL),
(18, '0b6cb2f2-6d95-4ec9-b91d-d2993c9014b8', NULL, NULL, NULL, '173.252.95.33', NULL, NULL, NULL, 1, '2020-03-12 09:39:56', '2020-03-12 09:39:56', NULL),
(19, 'c109de6c-6410-4219-ace3-489f3863bdff', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-12 09:41:45', '2020-03-12 09:51:17', NULL),
(20, '293b3be4-51b3-4a30-ab96-28faf27c53e8', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 09:49:55', '2020-03-12 10:11:13', NULL),
(21, '8d87c2d9-6184-495b-bc9d-068eddeacdb1', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-12 09:53:32', '2020-03-12 09:58:35', NULL),
(22, '3b086cb7-2e2e-4a59-92c2-85a25f6cd284', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 11:05:21', '2020-03-12 13:05:09', NULL),
(23, '0616282a-c032-4116-8006-5e727f4bcb0c', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 11:09:52', '2020-03-12 11:09:52', NULL),
(24, 'b8288a58-dfe8-46dd-a85b-7f0cb02fe13e', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 11:09:52', '2020-03-12 11:09:52', NULL),
(25, 'b0106d98-e5aa-41c7-834d-a1c4078d4647', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 12:34:18', '2020-03-12 12:34:18', NULL),
(26, 'b006f096-11a0-40f1-a5ee-52360b0a8ede', NULL, NULL, NULL, '64.233.173.75', NULL, NULL, NULL, 0, '2020-03-12 12:39:58', '2020-03-12 12:51:51', NULL),
(27, '2eb135dc-7f10-465c-b2e2-b7aed486701e', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 12:45:46', '2020-03-12 12:45:46', NULL),
(28, '87a98593-a208-412d-9bd1-cf93ef9b6d18', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 12:51:47', '2020-03-12 12:51:47', NULL),
(29, '84e31598-b8b1-4835-a690-e63555b1cb3d', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-12 13:39:34', '2020-03-12 13:58:33', NULL),
(30, '938e8de2-75fb-43bc-81e3-64c82c28e979', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-12 13:52:28', '2020-03-12 13:56:02', NULL),
(31, 'e56fafe3-f510-4a61-ad37-7718af0c93b8', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-12 13:57:32', '2020-03-12 13:57:32', NULL),
(32, 'c8ac82f2-7fc1-44cf-acd4-e7bb7ba1fbf4', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-12 13:57:32', '2020-03-12 13:58:47', NULL),
(33, '229a8917-9204-4c18-b25a-c030a59b71b6', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 14:18:49', '2020-03-12 14:18:49', NULL),
(34, '81b1b74d-a475-4b4d-90c9-35d3651449d5', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 14:18:49', '2020-03-12 14:18:49', NULL),
(35, '91ff67b1-d4cf-478d-8d7d-69e5caaa76c8', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 14:19:40', '2020-03-12 14:19:44', NULL),
(36, '243c9e16-dd99-46f7-9517-c566aacc72e5', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-12 14:37:29', '2020-03-12 14:52:20', NULL),
(37, 'cf44ca2e-047d-43ae-a99b-cdc8466c3e39', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 14:40:05', '2020-03-12 14:41:06', NULL),
(38, '59dbf623-cb7a-4d7c-8a5b-4cc852956cbb', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(39, 'f6fe8dd1-42fa-44e8-b191-bb637270cc04', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(40, '0d15a162-c327-47aa-9e38-76b4221f297d', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(41, 'a3b299b6-3648-4879-851c-d55d8cd3183e', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(42, '972e602f-9535-4850-90e1-4deac65d9693', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:15:58', '2020-03-12 15:15:58', NULL),
(43, '469a51c6-8cd4-4199-ad6d-899342bb4e4f', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:40:19', '2020-03-12 15:41:01', NULL),
(44, 'b73dc1f6-c909-402e-bfd0-0868f447d522', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:59:24', '2020-03-12 15:59:24', NULL),
(45, '0794b756-011d-43e2-87ea-abe33506b763', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:59:31', '2020-03-12 16:00:10', NULL),
(46, 'e8ac03fe-c427-4521-a17f-0f3b4294b5e7', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:59:42', '2020-03-12 15:59:42', NULL),
(47, 'dcb5d4d8-db91-4d7f-9f2e-82e06760dbfe', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:59:42', '2020-03-12 15:59:42', NULL),
(48, 'af466a86-b0fd-4fcb-8268-3c87c1c1f120', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:59:42', '2020-03-12 15:59:42', NULL),
(49, 'f7d157e0-1cdf-441c-9317-ff462caf1a69', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 15:59:42', '2020-03-12 15:59:42', NULL),
(50, '3838a2a4-622f-4e68-90de-ba32ddfde0b9', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 16:57:02', '2020-03-12 16:58:23', NULL),
(51, '4d43a4bb-008c-4369-abfb-9f3c2a627743', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-12 17:06:23', '2020-03-12 17:06:23', NULL),
(52, '757eb0f0-74ad-4326-9df8-bfa40a852352', NULL, NULL, NULL, '89.187.188.208', NULL, NULL, NULL, 0, '2020-03-12 21:56:43', '2020-03-12 22:02:19', NULL),
(53, 'f0de1517-1524-4a14-a709-a701b0f6a2bb', NULL, NULL, NULL, '89.187.188.208', NULL, NULL, NULL, 0, '2020-03-12 22:02:31', '2020-03-12 22:02:31', NULL),
(54, '69be9316-1495-4905-ba5b-da9440a242ba', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-12 22:28:57', '2020-03-12 22:28:57', NULL),
(55, '0e833e23-cced-4821-baa1-f211e5b8c0ab', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-13 01:19:40', '2020-03-13 01:19:40', NULL),
(56, '66101536-d85e-4dae-810a-6dba9dfc4c28', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-14 08:12:06', '2020-03-14 08:20:00', NULL),
(57, '1a78cfe0-c5f6-44f0-9941-e1a0fb7eea56', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 08:57:50', '2020-03-14 08:57:50', NULL),
(58, 'd199b9fa-1e25-4e4c-b9e5-2c1d27ebcd78', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 08:59:16', '2020-03-14 08:59:16', NULL),
(59, 'dd3ef5cc-f6d1-431e-af56-8905a90baad8', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 09:32:34', '2020-03-14 09:34:03', NULL),
(60, '4547f03d-e13f-4d4d-8e9a-cbf9186aec3e', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 09:49:06', '2020-03-14 09:49:06', NULL),
(61, '21c3ef13-1f42-4754-ad8d-f85aa12a941b', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 09:49:43', '2020-03-14 09:49:43', NULL),
(62, '2dbc5d8c-d84d-459b-80c6-a839834165bc', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 10:04:38', '2020-03-14 10:04:43', NULL),
(63, '9cc680a3-d253-493b-96b5-dc3823d6335a', NULL, NULL, NULL, '103.217.110.133', NULL, NULL, NULL, 0, '2020-03-14 10:35:21', '2020-03-14 10:35:21', NULL),
(64, '43b48aa1-b251-4c52-8b33-dd4c322031e8', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 16:08:11', '2020-03-14 16:31:07', NULL),
(65, 'd65928f3-50bb-4601-ab7c-db85e81b5e4b', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 16:32:01', '2020-03-14 16:34:14', NULL),
(66, '3807778b-8207-4052-80ec-ff9c5100a9d5', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 16:35:53', '2020-03-14 16:36:12', NULL),
(67, 'b7f6e503-6965-467b-87e1-3939eb8c171c', NULL, NULL, NULL, '66.102.8.109', NULL, NULL, NULL, 0, '2020-03-14 16:35:59', '2020-03-14 16:35:59', NULL),
(68, '6afaf938-259c-45b1-a0ed-a22788bac2f5', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-14 16:39:28', '2020-03-14 16:41:13', NULL),
(69, '125dfa83-2bd4-4091-8f83-2c793a2e9ac4', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-15 08:19:24', '2020-03-15 08:19:24', NULL),
(70, '542cec7d-4e6d-48a4-80d5-d2c1e0b75f8f', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-15 08:19:25', '2020-03-15 08:19:25', NULL),
(71, 'e4fdc743-171e-4fbb-a16f-684789750c5e', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-15 08:20:08', '2020-03-15 08:20:09', NULL),
(72, '36eeb3a9-03c4-474f-96ea-82bf3e7fc621', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-15 08:30:18', '2020-03-15 08:30:18', NULL),
(73, '8b860704-736b-44de-9123-7cb217e383fa', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-15 08:30:18', '2020-03-15 08:30:18', NULL),
(74, 'fbc71a16-504c-42ac-97d7-ebac2f845802', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-15 08:30:19', '2020-03-15 08:30:19', NULL),
(75, '200f9b4b-e343-4c22-9208-ee63a369b0db', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-15 08:30:20', '2020-03-15 08:30:20', NULL),
(76, 'c29d3878-d452-4c8f-b709-d6eca7a58b6d', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-15 08:32:06', '2020-03-15 08:33:34', NULL),
(77, '71fcfcf2-f9cd-4d6c-a6cd-af0968ff8f43', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:56:59', '2020-03-17 23:56:59', NULL),
(78, '163e01fa-4a70-43a7-a648-f6579a46a8b4', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:56:59', '2020-03-17 23:56:59', NULL),
(79, 'd993bea3-f7c9-4109-aff8-36417c5c7941', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:56:59', '2020-03-17 23:56:59', NULL),
(80, '89fafc73-1cca-4471-9e20-82efed864342', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:15', '2020-03-17 23:57:15', NULL),
(81, '2d9a896d-3dcb-4659-9c13-9e45c7646ddc', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:15', '2020-03-17 23:57:15', NULL),
(82, '75988828-47fd-4ca6-9a0d-65721c47d088', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:16', '2020-03-17 23:57:16', NULL),
(83, 'e3351be3-82c3-490d-9eb2-71a175ad0c11', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:16', '2020-03-17 23:57:16', NULL),
(84, '036fe944-a41e-44ed-9e08-e188d1406c1f', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:16', '2020-03-17 23:57:16', NULL),
(85, '266ff894-8c2b-40e2-aac1-463a1b6f661f', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:40', '2020-03-17 23:57:40', NULL),
(86, '084be42b-047d-4ace-bf7a-b361ecb96041', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:40', '2020-03-17 23:57:40', NULL),
(87, '43956cfe-b5c1-44ee-b11e-abb8d2c3a084', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:41', '2020-03-17 23:57:41', NULL),
(88, '031ad1f6-e6c9-4c95-9764-419e1fbf697c', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:41', '2020-03-17 23:57:41', NULL),
(89, 'c45a311a-55c9-4dc6-aaed-74d2f24908f1', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:42', '2020-03-17 23:57:42', NULL),
(90, '1b9ea4b9-fe7f-4946-8899-c84fb7713fcc', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:42', '2020-03-17 23:57:42', NULL),
(91, '7aff05a1-ce28-4f93-8a7a-7a0cc3f3da26', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-17 23:57:43', '2020-03-17 23:57:43', NULL),
(92, '44ce554d-ae20-46f9-8f9c-67126fcc5a67', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 00:27:24', '2020-03-18 00:27:24', NULL),
(93, '281e7dbb-c2eb-45fc-b9a2-a00c3d5c1dcd', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 00:27:45', '2020-03-18 00:27:45', NULL),
(94, 'ee29da0b-4868-4609-99a9-896b73878aeb', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 00:46:41', '2020-03-18 00:46:41', NULL),
(95, '1df7c5d8-04cc-4ab7-9d67-aa07b0d39d82', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 00:46:42', '2020-03-18 00:46:42', NULL),
(96, '105f8f46-fa3d-44c8-8a42-0f8e3fcad279', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 00:48:39', '2020-03-18 00:48:39', NULL),
(97, '4ea15c6c-a4c6-42f4-888f-04ec87e41d61', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 00:59:26', '2020-03-18 00:59:26', NULL),
(98, '72910c31-4ebf-40b1-86dd-621a21ec3c6f', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 00:59:27', '2020-03-18 00:59:27', NULL),
(99, '7a533da4-22f3-49c1-9b15-cdb3e7546c26', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 00:59:35', '2020-03-18 00:59:35', NULL),
(100, 'd4db01cd-81ed-49a0-a8be-8f4405b7aae1', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 00:59:36', '2020-03-18 00:59:36', NULL),
(101, '068c11b1-3859-4b25-a1f8-0462e9961362', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 01:00:05', '2020-03-18 01:00:05', NULL),
(102, '0c671eaf-9ea4-489b-9243-829e3af7f7ef', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 01:02:48', '2020-03-18 01:02:48', NULL),
(103, 'b923170e-ea29-48d4-83e9-48764a87a484', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 01:03:15', '2020-03-18 01:03:15', NULL),
(104, '1f7c2571-7a38-42ed-909c-53c631d0b8b0', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 01:03:31', '2020-03-18 01:03:31', NULL),
(105, '2cb60f54-a3c7-4efe-9c8d-3a3d6820e182', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 01:55:12', '2020-03-18 01:55:12', NULL),
(106, 'ffd146ba-3d15-4f6a-b530-039776dde430', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 01:55:13', '2020-03-18 01:55:13', NULL),
(107, '7087df80-59f6-49b7-aae0-f479db5c66f1', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 01:55:13', '2020-03-18 01:55:13', NULL),
(108, '8bd1477a-7108-4a7e-8c0c-3831fbdfd6a6', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 01:55:14', '2020-03-18 01:55:14', NULL),
(109, 'a11d1576-3abe-4c45-af88-99b0cc26495f', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:49:58', '2020-03-18 03:49:58', NULL),
(110, 'dc1154f8-7ec3-475c-a01d-f63e4670ee48', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:49:59', '2020-03-18 03:49:59', NULL),
(111, '0be729f6-0c3b-4ba0-aa00-71142a8491ff', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:49:59', '2020-03-18 03:49:59', NULL),
(112, '76819102-cc30-479f-9122-3927f05d434a', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:50:00', '2020-03-18 03:50:00', NULL),
(113, '034eea22-2217-4788-be0b-73b9db7140b3', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:50:00', '2020-03-18 03:50:00', NULL),
(114, 'c159a750-f89a-4756-a9e3-733213d50b88', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:50:00', '2020-03-18 03:50:00', NULL),
(115, 'b467ae19-eb2a-4755-a685-b7ce75acb549', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:53:17', '2020-03-18 03:53:17', NULL),
(116, '1841c3f9-f829-4d8e-ac52-e974541037a6', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:53:17', '2020-03-18 03:53:17', NULL),
(117, '5e98d9f3-6005-489e-a7b8-4f6b79b2f5a8', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:53:17', '2020-03-18 03:53:17', NULL),
(118, 'd27a4dbd-fe63-495c-aa7a-dc030c92221c', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:53:18', '2020-03-18 03:53:18', NULL),
(119, '44245766-d773-45ca-8f29-43fd8ef18243', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:53:18', '2020-03-18 03:53:18', NULL),
(120, 'e6c6592f-e706-40da-bf8d-107f9a9bd8f2', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 03:53:18', '2020-03-18 03:53:18', NULL),
(121, '6894766b-f4ce-4de6-9ed3-4049ebc00aa8', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 04:22:26', '2020-03-18 04:22:26', NULL),
(122, '9f3bab63-06c3-45a2-96b2-c71808850ec2', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 04:22:27', '2020-03-18 04:22:27', NULL),
(123, 'f0d8f3ef-a447-4830-b084-df2f969509ce', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 04:22:28', '2020-03-18 04:22:28', NULL),
(124, '672b6649-efc2-4908-9775-c6937347af73', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 04:22:28', '2020-03-18 04:22:28', NULL),
(125, '1639d779-ea8a-40a9-9021-6138e8dee662', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 04:22:28', '2020-03-18 04:22:28', NULL),
(126, '09321fc3-6142-4735-89ab-311792bfbc30', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 04:22:28', '2020-03-18 04:22:28', NULL),
(127, 'b98ddd8d-926b-4928-9ff8-8f2d85b7783e', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 04:22:35', '2020-03-18 04:22:35', NULL),
(128, 'ac6a2d1a-01a7-48d3-a178-6b6a75882395', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-18 04:22:36', '2020-03-18 04:22:36', NULL),
(129, '3aebc084-5f56-4f4b-adc2-c848d477b6e7', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 03:15:32', '2020-03-19 03:41:30', NULL),
(130, '5e89657c-0c61-4865-8e27-5d076032615a', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 04:08:22', '2020-03-19 04:08:22', NULL),
(131, '1cfaa5f5-37a2-4b49-a777-da1d8a9d2b87', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 04:08:23', '2020-03-19 04:08:23', NULL),
(132, '1cfd86f8-e556-4d5d-b165-d116b674e11a', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 04:08:23', '2020-03-19 04:08:23', NULL),
(133, 'abed0f14-5560-482b-92e7-28c670a9fbb1', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 04:08:23', '2020-03-19 04:08:23', NULL),
(134, '7b00e274-4394-46c3-a6a0-737741963bdf', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(135, 'dcab51b6-7373-4560-a5dc-5b1142aebe5a', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(136, 'd1067cfd-fac1-400f-aafe-2079fe40e8a8', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(137, '8e6c3c07-af24-4f23-abeb-c1b037058207', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 04:08:24', '2020-03-19 04:08:24', NULL),
(138, '5fcab1a9-059f-40ef-9a76-411d75fccd37', NULL, NULL, NULL, '::1', NULL, NULL, NULL, 0, '2020-03-19 04:08:24', '2020-03-19 04:49:35', NULL),
(139, '4b954acd-de35-4567-ab8b-e33d4a97acd5', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 15:34:22', '2020-03-19 15:34:23', NULL),
(140, '83b06538-0e2e-4de4-9a6e-d435c9b7a1be', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 15:49:05', '2020-03-19 15:49:05', NULL),
(141, 'b3aea0fa-1b1d-4133-b8e7-5989c20595f1', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 15:49:06', '2020-03-19 15:49:12', NULL),
(142, '3f0b05ae-d186-4357-9c4b-ebffb0e0cca9', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 15:49:10', '2020-03-19 15:49:10', NULL),
(143, '324d7ad8-6ae9-4991-b54d-47e5b2565bc2', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 15:49:10', '2020-03-19 15:49:10', NULL),
(144, '3c2a0e8f-55f4-4ebf-bba0-7271f3e860a0', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 15:49:10', '2020-03-19 15:49:10', NULL),
(145, '74dd45dd-1d42-44e7-a902-04543fbf0d26', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 15:49:10', '2020-03-19 15:49:10', NULL),
(146, 'd4f3a3eb-ad18-49f9-abd6-6dd872a9578d', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 15:49:11', '2020-03-19 15:49:11', NULL),
(147, 'c920d1c5-8239-4ec4-9b0a-5e52d160047b', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 15:49:11', '2020-03-19 15:49:11', NULL),
(148, '89c51f16-4494-43f8-a890-405d7a0d767a', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 16:05:46', '2020-03-19 16:05:46', NULL),
(149, '8ceef393-1641-442f-8c5d-983ce8c1bb3e', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 16:05:46', '2020-03-19 16:05:46', NULL),
(150, '73505662-ee69-4c0d-b7d2-c63d7fb81bd0', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 16:07:52', '2020-03-19 16:07:52', NULL),
(151, 'ba8b131d-8e70-44a8-ab99-ef0e73227241', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 16:07:52', '2020-03-19 16:07:53', NULL),
(152, 'd409b5a8-6fe6-4d34-aa4e-f079e9f5e810', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 16:07:52', '2020-03-19 16:07:52', NULL),
(153, '39e4f4d6-ef05-4ce0-9ba0-8923e2787d16', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 16:07:53', '2020-03-19 16:07:53', NULL),
(154, 'c2675ce7-401d-4bf3-a402-32faca2848fd', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 17:03:14', '2020-03-19 17:22:18', NULL),
(155, '19706f55-421a-4851-bdde-04cabbeaf891', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-19 17:09:47', '2020-03-19 17:16:59', NULL),
(156, '19cce428-c052-49fe-b314-16999e272cd0', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-19 18:45:56', '2020-03-19 18:46:18', NULL),
(157, '3cfea78b-88f9-483e-8416-b7b48d073041', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 13:28:07', '2020-03-20 13:39:45', NULL),
(158, '4f72f708-d74d-4779-9cd2-a802e169cd2c', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 14:40:56', '2020-03-20 14:41:00', NULL),
(159, '63f85ba6-fd61-4424-8729-89ba5f3d27c8', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:00:51', '2020-03-20 21:00:51', NULL),
(160, 'd0354275-2ebc-455f-ac5e-b272ad44bfe6', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:00:51', '2020-03-20 21:48:37', NULL),
(161, '3c08833e-12f2-4cf4-b440-70793b48a4ab', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:00:51', '2020-03-20 21:00:51', NULL),
(162, '930140aa-c473-43d4-a943-143c3ada7bbd', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:00:51', '2020-03-20 21:00:51', NULL),
(163, '3ad7d776-d254-485f-8de1-4626c81da2d8', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:00:52', '2020-03-20 21:00:52', NULL),
(164, 'eee73e8e-d0e4-4c5b-a24b-ef67680fd3f6', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:00:52', '2020-03-20 21:00:52', NULL),
(165, '0b276e04-ddcd-451d-860e-68533233749f', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:03:04', '2020-03-20 21:03:04', NULL),
(166, 'f18955b1-ed95-408a-b117-e4c4ca38a462', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:03:04', '2020-03-20 21:03:04', NULL),
(167, 'b7a0bd73-494a-4a92-8daf-76343f40e66c', NULL, NULL, NULL, '66.220.149.34', NULL, NULL, NULL, 1, '2020-03-20 21:07:54', '2020-03-20 21:07:54', NULL),
(168, '69e9d354-bb56-4bb8-a37c-293b5d94c219', NULL, NULL, NULL, '66.220.149.29', NULL, NULL, NULL, 1, '2020-03-20 21:07:54', '2020-03-20 21:07:54', NULL),
(169, 'f58a5ed6-2644-4410-813b-93ac9575870b', NULL, NULL, NULL, '103.195.2.42', NULL, NULL, NULL, 0, '2020-03-20 21:09:55', '2020-03-20 21:54:01', NULL),
(170, '91305e07-7244-49e2-979b-e43f54229983', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:11:07', '2020-03-20 21:11:07', NULL),
(171, '40a87ba6-5625-4083-abf1-eaa1fd1cd00d', NULL, NULL, NULL, '103.83.241.9', NULL, NULL, NULL, 0, '2020-03-20 21:43:51', '2020-03-20 21:43:51', NULL),
(172, '48483fbe-5374-4911-86b9-9c94aeb128e3', NULL, NULL, NULL, '173.252.79.12', NULL, NULL, NULL, 1, '2020-03-20 21:49:15', '2020-03-20 21:49:15', NULL),
(173, '58956cc0-34fd-46cc-a6aa-ff5ff748ac32', NULL, NULL, NULL, '173.252.79.23', NULL, NULL, NULL, 1, '2020-03-20 21:49:17', '2020-03-20 21:49:17', NULL),
(174, '81867cb4-2ea2-40a0-be9a-d5542f9777d7', NULL, NULL, NULL, '173.252.95.12', NULL, NULL, NULL, 1, '2020-03-20 21:49:19', '2020-03-20 21:49:19', NULL),
(175, '9ecbd8f3-7734-4a3a-a15f-5f604cf4f2d4', NULL, NULL, NULL, '103.195.2.42', NULL, NULL, NULL, 0, '2020-03-20 21:51:54', '2020-03-20 21:51:54', NULL),
(176, 'f13ee2ee-0a7a-4685-9017-708b1fddf52f', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-21 09:44:43', '2020-03-21 09:44:43', NULL),
(177, '6320eb3f-8b2e-4d28-81e1-24cb4f1bcfc9', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-21 09:44:44', '2020-03-21 09:44:44', NULL),
(178, '0a1c042e-9f92-44d8-b31a-c67e864b7c4f', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-21 09:44:44', '2020-03-21 09:44:44', NULL),
(179, 'b2f9d14f-95a7-4e8c-a66b-2abeab1dff73', NULL, NULL, NULL, '103.107.133.134', NULL, NULL, NULL, 0, '2020-03-21 15:50:44', '2020-03-21 15:50:44', NULL),
(180, '323b33b1-862a-4952-b312-b17cbe6e8740', NULL, NULL, NULL, '37.46.114.33', NULL, NULL, NULL, 0, '2020-04-02 12:37:42', '2020-04-02 12:37:42', NULL),
(181, '740dc88a-d8c6-472d-9be0-c3008e1bd07f', NULL, NULL, NULL, '37.46.114.33', NULL, NULL, NULL, 0, '2020-04-02 12:37:43', '2020-04-02 12:37:43', NULL),
(182, '6763279c-bac6-49d9-bda3-023d134e2193', NULL, NULL, NULL, '37.46.114.33', NULL, NULL, NULL, 0, '2020-04-02 12:46:36', '2020-04-02 12:46:36', NULL),
(183, '41a39458-321b-4d86-91de-827b8486fda7', NULL, NULL, NULL, '37.46.114.33', NULL, NULL, NULL, 0, '2020-04-02 12:46:37', '2020-04-02 12:46:37', NULL),
(184, '6e7067b7-11a4-4d46-9ad4-3a63da7f5438', NULL, NULL, NULL, '58.145.189.235', NULL, NULL, NULL, 0, '2020-04-19 21:14:10', '2020-04-19 21:14:10', NULL),
(185, 'acab0ab1-7359-4939-b280-449998a292c0', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:35:44', '2020-04-25 19:35:44', NULL),
(186, '369d90cd-14d3-41a8-a820-9977aad18c79', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:35:44', '2020-04-25 19:35:44', NULL),
(187, 'c8c3ead3-0e3d-481b-9743-4665175a92ba', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:50:57', '2020-04-25 19:50:57', NULL),
(188, '15509e91-6840-477f-9f90-2ad4bd7fefa2', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:50:57', '2020-04-25 19:50:57', NULL),
(189, '6afa812e-4ce4-43a7-a73e-28287c1812a3', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:50:57', '2020-04-25 19:50:57', NULL),
(190, '052d53ac-0753-4a96-bb16-dd7f06c85838', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:51:01', '2020-04-25 19:54:45', NULL),
(191, 'fac8f83d-7f43-4064-a960-7c36f43dd203', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:51:02', '2020-04-25 19:51:02', NULL),
(192, 'c99eb157-90ac-478b-a204-388e3be1e302', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:51:03', '2020-04-25 19:51:03', NULL),
(193, '77b15890-37ff-4433-82d8-6f8569263b64', NULL, NULL, NULL, '69.171.251.15', NULL, NULL, NULL, 1, '2020-04-25 19:55:35', '2020-04-25 19:55:35', NULL),
(194, '5225bae4-6be1-4941-97c0-57f26eda92b2', NULL, NULL, NULL, '103.67.158.3', NULL, NULL, NULL, 0, '2020-04-25 19:55:53', '2020-04-25 19:55:55', NULL),
(195, 'd468eb65-d176-4af9-ab75-03b4df8e6d2d', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:33', '2020-04-25 19:56:33', NULL),
(196, '9a42421d-cd1b-4d8d-b194-808d95bdde81', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:33', '2020-04-25 19:56:33', NULL),
(197, '9536fd42-0345-4f3e-9b41-f9fc32f20e82', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:33', '2020-04-25 19:56:33', NULL),
(198, 'b34b352e-99c7-4cbf-91ac-b814b2f4a61f', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(199, 'bb5082bf-fcdd-4c34-95d3-083389506b69', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(200, '9a0cdd0c-0c70-463c-807f-637e0edf849a', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(201, 'e1351516-9632-4db8-b26f-55037a80ef96', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(202, 'da4c2a37-9806-489c-8b99-c772e7372911', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:34', '2020-04-25 19:56:34', NULL),
(203, 'ad775b77-f483-4b30-ae15-343ff881ce6d', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:35', '2020-04-25 19:56:35', NULL),
(204, '1da331d9-c7bb-4cb4-ba86-91c28deed9cd', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:35', '2020-04-25 19:56:35', NULL),
(205, '1886ae4f-a94d-4f99-9de0-a24587076f2e', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:36', '2020-04-25 19:56:36', NULL),
(206, 'fc0494ea-598c-47d2-9142-0533e6eede75', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:36', '2020-04-25 19:56:36', NULL),
(207, '222f29c1-15e8-4905-90ff-ecc22040b93a', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:36', '2020-04-25 19:56:36', NULL),
(208, '6c00dfc0-b86e-4ae3-8e86-74b9ccea34f0', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:37', '2020-04-25 19:56:37', NULL),
(209, '3269ba58-13b9-41ac-b3ef-0c97e572c350', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:38', '2020-04-25 19:56:38', NULL),
(210, 'eb977501-c874-40ad-9638-3b83a242a296', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:39', '2020-04-25 19:56:39', NULL),
(211, 'c6b41cdf-5194-4164-959a-1b15cdcb8993', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:40', '2020-04-25 19:56:40', NULL),
(212, '4401f092-ee41-4634-98d9-067e3b381a49', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:41', '2020-04-25 19:56:41', NULL),
(213, '5899b1d1-62d3-4cc0-b18d-8d876c294887', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:41', '2020-04-25 19:56:41', NULL),
(214, 'b9b0e59d-8b03-4151-980d-f441358790d2', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:42', '2020-04-25 19:56:42', NULL),
(215, '0e1e7419-194b-4ca5-95c0-e03e75cb7392', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:43', '2020-04-25 19:56:43', NULL),
(216, 'e480e898-d199-4980-871a-575469d8b1e8', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:43', '2020-04-25 19:56:43', NULL),
(217, 'd44d4155-13ea-4796-85da-4c535db8140a', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:44', '2020-04-25 19:56:44', NULL),
(218, 'c0c845a0-384f-449d-988b-f92e434600b3', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:45', '2020-04-25 19:56:45', NULL),
(219, 'c9c07ecd-b7c0-44be-be29-578a303b59c7', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:46', '2020-04-25 19:56:46', NULL),
(220, 'a031e962-c6bd-4734-879c-5cf7d172e25b', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:46', '2020-04-25 19:56:46', NULL),
(221, '7cccf855-58af-4642-b357-711cccd1fc03', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:47', '2020-04-25 19:56:47', NULL),
(222, 'd7ee95a3-6d21-4488-865c-4474303cf316', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:48', '2020-04-25 19:56:48', NULL),
(223, '5b52fe93-f3df-4f2e-b568-901e2841f4f6', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:48', '2020-04-25 19:56:48', NULL),
(224, 'e74e40ec-39a0-4ff1-b8f9-f38b48ab61fb', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:49', '2020-04-25 19:56:49', NULL),
(225, '9f2379ca-ce60-4d94-981f-41f565d22ab9', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:49', '2020-04-25 19:56:49', NULL),
(226, 'b6b7de37-ded5-4952-8d61-ed594a135163', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:50', '2020-04-25 19:56:50', NULL),
(227, '908bbb73-4709-4fdf-8845-254dc2871bb8', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:50', '2020-04-25 19:56:50', NULL),
(228, 'babd67e0-5cde-4641-8e79-da27f8bec31c', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:51', '2020-04-25 19:56:51', NULL),
(229, '6d979dc0-8122-40d6-a198-67a82960c5ba', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:53', '2020-04-25 19:56:53', NULL),
(230, 'abe4cd50-d373-409f-b39d-f3f26468b302', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:54', '2020-04-25 19:56:54', NULL),
(231, 'e2ce1685-2829-4357-b567-c640bbc0b71b', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:55', '2020-04-25 19:56:55', NULL),
(232, '7802b69e-66dd-4471-af84-4e735fe90d3f', NULL, NULL, NULL, '58.145.189.241', NULL, NULL, NULL, 0, '2020-04-25 19:56:56', '2020-04-25 19:56:56', NULL),
(233, '8217071e-18b6-4f1f-abb5-b075a8cf0e6e', NULL, NULL, NULL, '58.145.189.250', NULL, NULL, NULL, 0, '2020-04-26 12:56:57', '2020-04-26 12:56:57', NULL),
(234, 'b3a73bc7-182d-445a-b733-67c46edbe436', NULL, NULL, NULL, '58.145.189.250', NULL, NULL, NULL, 0, '2020-04-26 12:56:57', '2020-04-26 12:56:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_queries`
--

CREATE TABLE `tracker_sql_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` double NOT NULL,
  `connection_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_queries_log`
--

CREATE TABLE `tracker_sql_queries_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `sql_query_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_query_bindings`
--

CREATE TABLE `tracker_sql_query_bindings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialized` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_sql_query_bindings_parameters`
--

CREATE TABLE `tracker_sql_query_bindings_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sql_query_bindings_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracker_system_classes`
--

CREATE TABLE `tracker_system_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tranings`
--

CREATE TABLE `tranings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empID` int(10) UNSIGNED NOT NULL,
  `TraningTitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tranings`
--

INSERT INTO `tranings` (`id`, `empID`, `TraningTitle`, `duration`, `created_at`, `updated_at`) VALUES
(1, 1, 'Laravel Development', '1 Year', '2020-03-03 03:22:35', '2020-03-03 03:22:35'),
(2, 1, 'PHP Development', '1 Year', '2020-03-03 03:22:35', '2020-03-03 03:22:35'),
(3, 1, 'Frontend Development', '6 Months', '2020-03-03 03:22:35', '2020-03-03 03:22:35'),
(4, 7, 'UTC', '6 month', '2020-03-20 21:29:06', '2020-03-20 21:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(10) UNSIGNED NOT NULL,
  `viewable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visitor` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `viewable_type`, `viewable_id`, `visitor`, `collection`, `viewed_at`) VALUES
(1, 'App\\Models\\Link', NULL, 'DzKfy82RSmEUBhPkIjh0J4oQRVmrketB3u7DvcoVoRCXARkyGTdrj1mPhWqakfAMU3TvgGtyAeQwkWF2', NULL, '2020-03-09 05:27:01'),
(2, 'App\\Models\\Link', NULL, 'DzKfy82RSmEUBhPkIjh0J4oQRVmrketB3u7DvcoVoRCXARkyGTdrj1mPhWqakfAMU3TvgGtyAeQwkWF2', NULL, '2020-03-09 05:27:14'),
(3, 'App\\Models\\Link', NULL, 'DzKfy82RSmEUBhPkIjh0J4oQRVmrketB3u7DvcoVoRCXARkyGTdrj1mPhWqakfAMU3TvgGtyAeQwkWF2', NULL, '2020-03-09 05:31:58'),
(4, 'App\\Models\\Link', NULL, 'DzKfy82RSmEUBhPkIjh0J4oQRVmrketB3u7DvcoVoRCXARkyGTdrj1mPhWqakfAMU3TvgGtyAeQwkWF2', NULL, '2020-03-09 05:36:42');

-- --------------------------------------------------------

--
-- Table structure for table `workexpreances`
--

CREATE TABLE `workexpreances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `empID` int(10) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `workexpreances`
--

INSERT INTO `workexpreances` (`id`, `empID`, `company_name`, `position`, `project_name`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, 1, 'Techbeeo Software Company Private Ltd', 'Laravel Developer', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:652px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center; width:321px\"><span style=\"font-size:14px\"><strong>Project Name</strong></span></td>\r\n			<td style=\"text-align:center; width:318px\"><span style=\"font-size:14px\"><strong>Responcibility</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:321px\">\r\n			<ul>\r\n				<li style=\"text-align: left;\">Laravel E-commerce</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"text-align:center; width:318px\">\r\n			<ul>\r\n				<li style=\"text-align: left;\">Desing and Development</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:321px\">\r\n			<ul>\r\n				<li style=\"text-align: left;\">Laravel Employee management&nbsp;</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"text-align:center; width:318px\">\r\n			<ul>\r\n				<li style=\"text-align: left;\">Desing and Development</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:321px\">\r\n			<ul>\r\n				<li style=\"text-align: left;\">PHP Blog</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"text-align:center; width:318px\">\r\n			<ul>\r\n				<li style=\"text-align: left;\">Desing and Development</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>', '2019-01-02', '2019-01-10', '2020-03-03 03:29:21', '2020-03-03 03:29:21'),
(2, 1, 'Wizard Technology Bangladesh', 'Full Stack Developer', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:652px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align:center; width:321px\"><span style=\"font-size:14px\"><strong>Project Name</strong></span></td>\r\n			<td style=\"text-align:center; width:318px\"><span style=\"font-size:14px\"><strong>Responcibility</strong></span></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:321px\">\r\n			<ul>\r\n				<li style=\"text-align:left\">Laravel E-commerce</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"text-align:center; width:318px\">\r\n			<ul>\r\n				<li style=\"text-align:left\">Desing and Development</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:321px\">\r\n			<ul>\r\n				<li style=\"text-align:left\">Muktijuddho Pidea</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"text-align:center; width:318px\">\r\n			<ul>\r\n				<li style=\"text-align:left\">Desing and Development</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:321px\">\r\n			<ul>\r\n				<li style=\"text-align:left\">Inventory Management</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"text-align:center; width:318px\">\r\n			<ul>\r\n				<li style=\"text-align:left\">Desing and Development</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"text-align:center; width:321px\">\r\n			<ul>\r\n				<li style=\"text-align: left;\">Online Eevent Management System</li>\r\n			</ul>\r\n			</td>\r\n			<td style=\"text-align:center; width:318px\">\r\n			<ul>\r\n				<li style=\"text-align: left;\">Design and Development</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '2019-10-26', NULL, '2020-03-03 03:29:21', '2020-03-03 03:29:21'),
(4, 3, 'US SOFTWARE', 'CTO', '<p><strong>Responsibility</strong>&nbsp;is a common term in&nbsp;<strong>project</strong>&nbsp;management but it is defined as a task that can be assigned within the&nbsp;<strong>project</strong>&nbsp;management plan. ... The thing is that it provides guidance to the&nbsp;<strong>project</strong>&nbsp;team so that they can direct themselves to perform tasks that are necessary for the success of the&nbsp;<strong>project</strong>.</p>', '2018-06-12', '2019-05-13', '2020-03-04 14:27:18', '2020-03-04 14:27:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_empid_foreign` (`empID`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `education_empid_foreign` (`empID`);

--
-- Indexes for table `employeeinfos`
--
ALTER TABLE `employeeinfos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employeeinfos_empid_foreign` (`empID`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages_empid_foreign` (`empID`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personalinfos`
--
ALTER TABLE `personalinfos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_links`
--
ALTER TABLE `project_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_permissions`
--
ALTER TABLE `project_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_progresses`
--
ALTER TABLE `project_progresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_progresses_pid_foreign` (`Pid`);

--
-- Indexes for table `references`
--
ALTER TABLE `references`
  ADD PRIMARY KEY (`id`),
  ADD KEY `references_empid_foreign` (`empID`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skills_empid_foreign` (`empID`);

--
-- Indexes for table `tracker_agents`
--
ALTER TABLE `tracker_agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_agents_name_hash_unique` (`name_hash`),
  ADD KEY `tracker_agents_created_at_index` (`created_at`),
  ADD KEY `tracker_agents_updated_at_index` (`updated_at`),
  ADD KEY `tracker_agents_browser_index` (`browser`);

--
-- Indexes for table `tracker_connections`
--
ALTER TABLE `tracker_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_connections_created_at_index` (`created_at`),
  ADD KEY `tracker_connections_updated_at_index` (`updated_at`),
  ADD KEY `tracker_connections_name_index` (`name`);

--
-- Indexes for table `tracker_cookies`
--
ALTER TABLE `tracker_cookies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_cookies_uuid_unique` (`uuid`),
  ADD KEY `tracker_cookies_created_at_index` (`created_at`),
  ADD KEY `tracker_cookies_updated_at_index` (`updated_at`);

--
-- Indexes for table `tracker_devices`
--
ALTER TABLE `tracker_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_devices_kind_model_platform_platform_version_unique` (`kind`,`model`,`platform`,`platform_version`),
  ADD KEY `tracker_devices_created_at_index` (`created_at`),
  ADD KEY `tracker_devices_updated_at_index` (`updated_at`),
  ADD KEY `tracker_devices_kind_index` (`kind`),
  ADD KEY `tracker_devices_model_index` (`model`),
  ADD KEY `tracker_devices_platform_index` (`platform`),
  ADD KEY `tracker_devices_platform_version_index` (`platform_version`);

--
-- Indexes for table `tracker_domains`
--
ALTER TABLE `tracker_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_domains_created_at_index` (`created_at`),
  ADD KEY `tracker_domains_updated_at_index` (`updated_at`),
  ADD KEY `tracker_domains_name_index` (`name`);

--
-- Indexes for table `tracker_errors`
--
ALTER TABLE `tracker_errors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_errors_created_at_index` (`created_at`),
  ADD KEY `tracker_errors_updated_at_index` (`updated_at`),
  ADD KEY `tracker_errors_code_index` (`code`),
  ADD KEY `tracker_errors_message_index` (`message`);

--
-- Indexes for table `tracker_events`
--
ALTER TABLE `tracker_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_events_created_at_index` (`created_at`),
  ADD KEY `tracker_events_updated_at_index` (`updated_at`),
  ADD KEY `tracker_events_name_index` (`name`);

--
-- Indexes for table `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_events_log_created_at_index` (`created_at`),
  ADD KEY `tracker_events_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_events_log_event_id_index` (`event_id`),
  ADD KEY `tracker_events_log_class_id_index` (`class_id`),
  ADD KEY `tracker_events_log_log_id_index` (`log_id`);

--
-- Indexes for table `tracker_geoip`
--
ALTER TABLE `tracker_geoip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_geoip_created_at_index` (`created_at`),
  ADD KEY `tracker_geoip_updated_at_index` (`updated_at`),
  ADD KEY `tracker_geoip_latitude_index` (`latitude`),
  ADD KEY `tracker_geoip_longitude_index` (`longitude`),
  ADD KEY `tracker_geoip_country_code_index` (`country_code`),
  ADD KEY `tracker_geoip_country_code3_index` (`country_code3`),
  ADD KEY `tracker_geoip_country_name_index` (`country_name`),
  ADD KEY `tracker_geoip_city_index` (`city`);

--
-- Indexes for table `tracker_languages`
--
ALTER TABLE `tracker_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_languages_preference_language_range_unique` (`preference`,`language-range`),
  ADD KEY `tracker_languages_created_at_index` (`created_at`),
  ADD KEY `tracker_languages_updated_at_index` (`updated_at`),
  ADD KEY `tracker_languages_preference_index` (`preference`),
  ADD KEY `tracker_languages_language_range_index` (`language-range`);

--
-- Indexes for table `tracker_log`
--
ALTER TABLE `tracker_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_log_created_at_index` (`created_at`),
  ADD KEY `tracker_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_log_session_id_index` (`session_id`),
  ADD KEY `tracker_log_path_id_index` (`path_id`),
  ADD KEY `tracker_log_query_id_index` (`query_id`),
  ADD KEY `tracker_log_method_index` (`method`),
  ADD KEY `tracker_log_route_path_id_index` (`route_path_id`),
  ADD KEY `tracker_log_error_id_index` (`error_id`),
  ADD KEY `tracker_log_referer_id_index` (`referer_id`);

--
-- Indexes for table `tracker_paths`
--
ALTER TABLE `tracker_paths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_paths_created_at_index` (`created_at`),
  ADD KEY `tracker_paths_updated_at_index` (`updated_at`),
  ADD KEY `tracker_paths_path_index` (`path`);

--
-- Indexes for table `tracker_queries`
--
ALTER TABLE `tracker_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_queries_created_at_index` (`created_at`),
  ADD KEY `tracker_queries_updated_at_index` (`updated_at`),
  ADD KEY `tracker_queries_query_index` (`query`);

--
-- Indexes for table `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_query_arguments_created_at_index` (`created_at`),
  ADD KEY `tracker_query_arguments_updated_at_index` (`updated_at`),
  ADD KEY `tracker_query_arguments_query_id_index` (`query_id`),
  ADD KEY `tracker_query_arguments_argument_index` (`argument`),
  ADD KEY `tracker_query_arguments_value_index` (`value`);

--
-- Indexes for table `tracker_referers`
--
ALTER TABLE `tracker_referers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_referers_created_at_index` (`created_at`),
  ADD KEY `tracker_referers_updated_at_index` (`updated_at`),
  ADD KEY `tracker_referers_domain_id_index` (`domain_id`),
  ADD KEY `tracker_referers_url_index` (`url`),
  ADD KEY `tracker_referers_medium_index` (`medium`),
  ADD KEY `tracker_referers_source_index` (`source`),
  ADD KEY `tracker_referers_search_terms_hash_index` (`search_terms_hash`);

--
-- Indexes for table `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_referers_search_terms_created_at_index` (`created_at`),
  ADD KEY `tracker_referers_search_terms_updated_at_index` (`updated_at`),
  ADD KEY `tracker_referers_search_terms_referer_id_index` (`referer_id`),
  ADD KEY `tracker_referers_search_terms_search_term_index` (`search_term`);

--
-- Indexes for table `tracker_routes`
--
ALTER TABLE `tracker_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_routes_created_at_index` (`created_at`),
  ADD KEY `tracker_routes_updated_at_index` (`updated_at`),
  ADD KEY `tracker_routes_name_index` (`name`),
  ADD KEY `tracker_routes_action_index` (`action`);

--
-- Indexes for table `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_route_paths_created_at_index` (`created_at`),
  ADD KEY `tracker_route_paths_updated_at_index` (`updated_at`),
  ADD KEY `tracker_route_paths_route_id_index` (`route_id`),
  ADD KEY `tracker_route_paths_path_index` (`path`);

--
-- Indexes for table `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_route_path_parameters_created_at_index` (`created_at`),
  ADD KEY `tracker_route_path_parameters_updated_at_index` (`updated_at`),
  ADD KEY `tracker_route_path_parameters_route_path_id_index` (`route_path_id`),
  ADD KEY `tracker_route_path_parameters_parameter_index` (`parameter`),
  ADD KEY `tracker_route_path_parameters_value_index` (`value`);

--
-- Indexes for table `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_sessions_uuid_unique` (`uuid`),
  ADD KEY `tracker_sessions_created_at_index` (`created_at`),
  ADD KEY `tracker_sessions_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sessions_user_id_index` (`user_id`),
  ADD KEY `tracker_sessions_device_id_index` (`device_id`),
  ADD KEY `tracker_sessions_agent_id_index` (`agent_id`),
  ADD KEY `tracker_sessions_client_ip_index` (`client_ip`),
  ADD KEY `tracker_sessions_referer_id_index` (`referer_id`),
  ADD KEY `tracker_sessions_cookie_id_index` (`cookie_id`),
  ADD KEY `tracker_sessions_geoip_id_index` (`geoip_id`),
  ADD KEY `tracker_sessions_language_id_index` (`language_id`);

--
-- Indexes for table `tracker_sql_queries`
--
ALTER TABLE `tracker_sql_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_queries_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_queries_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_queries_sha1_index` (`sha1`),
  ADD KEY `tracker_sql_queries_time_index` (`time`);

--
-- Indexes for table `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_queries_log_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_queries_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_queries_log_log_id_index` (`log_id`),
  ADD KEY `tracker_sql_queries_log_sql_query_id_index` (`sql_query_id`);

--
-- Indexes for table `tracker_sql_query_bindings`
--
ALTER TABLE `tracker_sql_query_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_query_bindings_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_query_bindings_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_query_bindings_sha1_index` (`sha1`);

--
-- Indexes for table `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_query_bindings_parameters_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_query_bindings_parameters_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_query_bindings_parameters_name_index` (`name`),
  ADD KEY `tracker_sqlqb_parameters` (`sql_query_bindings_id`);

--
-- Indexes for table `tracker_system_classes`
--
ALTER TABLE `tracker_system_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_system_classes_created_at_index` (`created_at`),
  ADD KEY `tracker_system_classes_updated_at_index` (`updated_at`),
  ADD KEY `tracker_system_classes_name_index` (`name`);

--
-- Indexes for table `tranings`
--
ALTER TABLE `tranings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tranings_empid_foreign` (`empID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_viewable_type_viewable_id_index` (`viewable_type`,`viewable_id`);

--
-- Indexes for table `workexpreances`
--
ALTER TABLE `workexpreances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `workexpreances_empid_foreign` (`empID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `employeeinfos`
--
ALTER TABLE `employeeinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personalinfos`
--
ALTER TABLE `personalinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_links`
--
ALTER TABLE `project_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_permissions`
--
ALTER TABLE `project_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_progresses`
--
ALTER TABLE `project_progresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tracker_agents`
--
ALTER TABLE `tracker_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_connections`
--
ALTER TABLE `tracker_connections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_cookies`
--
ALTER TABLE `tracker_cookies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_devices`
--
ALTER TABLE `tracker_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_domains`
--
ALTER TABLE `tracker_domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_errors`
--
ALTER TABLE `tracker_errors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_events`
--
ALTER TABLE `tracker_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_geoip`
--
ALTER TABLE `tracker_geoip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_languages`
--
ALTER TABLE `tracker_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_log`
--
ALTER TABLE `tracker_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1675;

--
-- AUTO_INCREMENT for table `tracker_paths`
--
ALTER TABLE `tracker_paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_queries`
--
ALTER TABLE `tracker_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_referers`
--
ALTER TABLE `tracker_referers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_routes`
--
ALTER TABLE `tracker_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235;

--
-- AUTO_INCREMENT for table `tracker_sql_queries`
--
ALTER TABLE `tracker_sql_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sql_query_bindings`
--
ALTER TABLE `tracker_sql_query_bindings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracker_system_classes`
--
ALTER TABLE `tracker_system_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tranings`
--
ALTER TABLE `tranings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `workexpreances`
--
ALTER TABLE `workexpreances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  ADD CONSTRAINT `tracker_events_log_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `tracker_system_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_events_log_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `tracker_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_events_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_log`
--
ALTER TABLE `tracker_log`
  ADD CONSTRAINT `tracker_log_error_id_foreign` FOREIGN KEY (`error_id`) REFERENCES `tracker_errors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_path_id_foreign` FOREIGN KEY (`path_id`) REFERENCES `tracker_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `tracker_sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  ADD CONSTRAINT `tracker_query_arguments_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_referers`
--
ALTER TABLE `tracker_referers`
  ADD CONSTRAINT `tracker_referers_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `tracker_domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  ADD CONSTRAINT `tracker_referers_referer_id_fk` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  ADD CONSTRAINT `tracker_route_paths_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `tracker_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  ADD CONSTRAINT `tracker_route_path_parameters_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  ADD CONSTRAINT `tracker_sessions_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `tracker_agents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_cookie_id_foreign` FOREIGN KEY (`cookie_id`) REFERENCES `tracker_cookies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `tracker_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_geoip_id_foreign` FOREIGN KEY (`geoip_id`) REFERENCES `tracker_geoip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `tracker_languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_referer_id_foreign` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  ADD CONSTRAINT `tracker_sql_queries_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sql_queries_log_sql_query_id_foreign` FOREIGN KEY (`sql_query_id`) REFERENCES `tracker_sql_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  ADD CONSTRAINT `tracker_sqlqb_parameters` FOREIGN KEY (`sql_query_bindings_id`) REFERENCES `tracker_sql_query_bindings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
