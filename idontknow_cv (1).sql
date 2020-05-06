-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 08, 2020 at 01:41 AM
-- Server version: 10.3.22-MariaDB-log-cll-lve
-- PHP Version: 7.2.7

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
(1, 'Payton Pfeffer', 'admin@admin.com', NULL, '$2y$10$fP9LPMRJeOyqWWfmmkCL0.pcac35JmrbSTBNYJUQqaRdiZPWGhhLm', 'IvtwoOCeI8ywwPh9uxr4NGsR78u06mHywLmDsyxPiVAaL1A0DfNJZ3ZdFGrc', NULL, '2020-03-03 03:14:37', '2020-03-03 03:14:37');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `code`, `department`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '66', 'IT Department', NULL, '2020-03-03 03:14:47', '2020-03-08 09:49:02'),
(2, '68', 'Marketing', NULL, '2020-03-03 03:14:53', '2020-03-03 03:14:53'),
(3, '69', 'Construction', NULL, '2020-03-03 03:14:57', '2020-03-03 03:14:57'),
(4, '7851', 'Civil', NULL, '2020-03-04 12:22:54', '2020-03-04 12:22:54'),
(5, '134151', 'Architecture', NULL, '2020-03-04 12:23:11', '2020-03-04 12:23:11'),
(6, '314141', 'Admin', NULL, '2020-03-04 12:23:27', '2020-03-04 12:23:27');

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
(3, 1, 'Diploma Certificate', 'Document/Laravel Developer191219.pdf', '2020-03-03 03:33:02', '2020-03-03 03:33:02');

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
(20, 5, 'JSC', 'BMEB', '2012', 'General', '5.00', '2020-03-05 04:56:28', '2020-03-05 04:56:28');

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
(2, 3, 'Bangladesh , India , USA , UK', NULL, 'Head Of Web developer', 'IT', '2020-03-04 14:28:41', '2020-03-04 14:28:41');

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
(16, 5, 'Arabiq', 'Proficient', 'Fluent', 'Basic', '2020-03-05 05:20:12', '2020-03-05 05:20:12');

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
(1, '[\"3\",\"2\",\"1\"]', 'LEDP', '2020-03-02', '2020-03-10', '15832372869835.041', '0', '2020-03-03 06:08:06', '2020-03-08 09:35:26'),
(2, '[\"1\"]', 'LEDP2', '2020-03-02', '2020-03-10', '15832406231400.521', '2', '2020-03-03 07:03:43', '2020-03-03 07:03:43'),
(3, '[\"2\",\"1\"]', 'LEDP3', '2020-03-03', '2020-03-11', '15833130513875.238', '2', '2020-03-04 14:10:51', '2020-03-04 14:10:51'),
(4, '[\"4\",\"3\",\"2\",\"1\"]', 'LEDP4', '2020-03-04', '2020-03-09', '15833139791462.18', '1', '2020-03-04 14:26:19', '2020-03-04 17:48:07'),
(5, '[\"5\"]', 'LEDP55', '2020-03-04', '2020-03-12', '15834031286149.59', '2', '2020-03-05 04:12:08', '2020-03-05 04:12:08');

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
(216, '2020_03_03_084714_create_permissions_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, '15832406231400.521', '2', '2020-03-03 07:03:43', '2020-03-03 07:03:43'),
(3, '15833130513875.238', '2', '2020-03-04 14:10:51', '2020-03-04 14:10:51'),
(4, '15833139791462.18', '1', '2020-03-04 14:26:19', '2020-03-04 14:26:19'),
(5, '15834031286149.59', '2', '2020-03-05 04:12:08', '2020-03-05 04:12:08');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personalinfos`
--

INSERT INTO `personalinfos` (`id`, `name`, `father_name`, `mother_name`, `brother`, `sister`, `dob`, `religion`, `blood_group`, `NID`, `persent_add`, `permanent_add`, `height`, `nationality`, `membership_scosity`, `department`, `image`, `slug`, `IsActive`, `expYear`, `rgularStuff`, `signature`, `signing`, `created_at`, `updated_at`) VALUES
(1, 'Sahab Uddin', 'Obaydul Hoque', 'Monoara Begum', 'Anamul Hoque', 'Sumaiya Sultana', '1998-02-16', 'Islam', 'B(+ve)', '2121', 'Dhaka', 'Dhaka', '5-8', 'Bangladeshi', 'Applied', 'IT', 'Personalinfo/6CaGRgIaOGF2cdZx0rMuVJ31e.png', '15832269431515.9', 1, '1 (Year)', 'Yes', 'Signature/pcEzwAdXtKUwKijqX7G2fi678.png', '2019-01-01', '2020-03-03 03:15:43', '2020-03-05 07:08:04'),
(2, 'Mostafijur Rahman', 'Monir Hossain', 'Shahina Akter', NULL, NULL, '1995-08-07', 'Islam', 'O(+ve)', '66344651619', 'Just drag the red marker anywhere on the Google Map and the address details (including the latitude & longitude) of that place will display in the pop-up window. Internally, the tool uses the Geocoding features of Google Maps to find the address of a particular point.', 'Just drag the red marker anywhere on the Google Map and the address details (including the latitude & longitude) of that place will display in the pop-up window. Internally, the tool uses the Geocoding features of Google Maps to find the address of a particular point.', '5\'8', 'Bangladeshi', 'IEB', 'IT', 'Personalinfo/3xUAN6z0Gvxvgxymc2DW4EmQb.jpg', '15833071138504.191', 1, NULL, NULL, NULL, NULL, '2020-03-04 12:31:53', '2020-03-04 18:30:31'),
(3, 'Banozir Ahamed', 'Razaul Karim', 'Bulbuli', 'Bappy', 'None', '1993-08-07', 'Islam', 'O(+ve)', '14345678879805', 'Test', 'Test', '5.11\"', 'Bangladeshi', 'IEEE', 'IT', 'Personalinfo/lAAZWHY1Ug1DqEHoZ1Pc8gQwa.jpg', '15833137368189.799', 1, NULL, NULL, NULL, NULL, '2020-03-04 14:22:16', '2020-03-04 18:30:22'),
(4, 'Sakib', 'Jamal', 'Kaniz', NULL, NULL, '2020-03-27', 'Islam', 'B(+ve)', '123545665545', 'dhaka', 'bfasih', 's ffsafdssdfa', 'sdasfaafa', 'afssdfsdsd', 'IT', 'Personalinfo/8eSKJzVRafVAIwhpupfWijg5j.png', '15833166908407.61', 1, NULL, NULL, NULL, NULL, '2020-03-04 15:11:30', '2020-03-04 18:19:52'),
(5, 'Saifur', 'Rasul', 'xasss', 'xasss', 'jannati', '1997-08-10', 'Islam', 'B(+ve)', '654651', 'asda', 'asdaa', '5-8', 'Bangladeshi', 'Applied', 'Civil', 'Personalinfo/hAIdWDWCHDl39CSqz8AuU5ZHt.jpg', '15834030881807.771', 1, NULL, NULL, NULL, NULL, '2020-03-05 04:11:28', '2020-03-05 04:11:28'),
(6, 'Sahab Uddin', 'Obaydul Hoque', 'Monoara Begum', 'Anamul Hoque', 'Sumaiya Sultana', '2020-03-03', 'Islam', 'B(+ve)', '321221212', 'sas', 'sdad', '5-8', 'Bangladeshi', 'Applied', 'Architecture', 'Personalinfo/xYDIpwumZD5nVm2jwt72sNzOA.jpg', '15834108604036.602', 1, '1 (Years)', 'Yes', 'Signature/8F2nfAR11qmxYaOhU28kxdHsZ.png', '2019-01-01', '2020-03-05 06:21:00', '2020-03-05 06:21:00');

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
(2, 3, 'WiztecBD', 'Sabbir', 'Head of IT', '098765432', 'llugiotdyxrety', '2020-03-04 14:29:25', '2020-03-04 14:29:25');

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
(3, 'default_email_address', 'admin@admin.com', '2020-03-03 03:14:37', '2020-03-03 03:14:37'),
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
(9, 3, NULL, '2020-03-04 14:27:57', '2020-03-04 14:27:57');

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
(3, 1, 'Frontend Development', '6 Months', '2020-03-03 03:22:35', '2020-03-03 03:22:35');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `employeeinfos`
--
ALTER TABLE `employeeinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personalinfos`
--
ALTER TABLE `personalinfos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `references`
--
ALTER TABLE `references`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tranings`
--
ALTER TABLE `tranings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workexpreances`
--
ALTER TABLE `workexpreances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
