-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2023 at 07:38 AM
-- Server version: 10.5.22-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pragyadbtechserv_security_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `vendor_id` text DEFAULT NULL,
  `customer_id` text DEFAULT NULL,
  `service_id` text DEFAULT NULL,
  `booking_date_time` text DEFAULT NULL,
  `booking_start_date` text DEFAULT NULL,
  `booking_end_date` text DEFAULT NULL,
  `booking_start_time` time DEFAULT NULL,
  `booking_end_time` time DEFAULT NULL,
  `booking_hours` text DEFAULT NULL,
  `service_charges` text DEFAULT NULL,
  `booking_total_amount` text DEFAULT NULL,
  `booking_id` text DEFAULT NULL,
  `booking_status` enum('request','confirmed','paid','canceled','completed') DEFAULT NULL,
  `location` text DEFAULT NULL,
  `zipcode` text DEFAULT NULL,
  `paid_currency` text DEFAULT NULL,
  `paid_transaction_id` text DEFAULT NULL,
  `paid_status` enum('requested','approved','rejected') DEFAULT NULL,
  `paid_amount` text DEFAULT NULL,
  `transaction_msg` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `vendor_id`, `customer_id`, `service_id`, `booking_date_time`, `booking_start_date`, `booking_end_date`, `booking_start_time`, `booking_end_time`, `booking_hours`, `service_charges`, `booking_total_amount`, `booking_id`, `booking_status`, `location`, `zipcode`, `paid_currency`, `paid_transaction_id`, `paid_status`, `paid_amount`, `transaction_msg`, `created_at`, `updated_at`) VALUES
(1, 'vendor123123', '6555fc6d2e13a', '13', NULL, '2023-11-20', '2023-11-20', '14:00:00', '20:00:00', '6', '88', '528', '6555fd36206cb', 'paid', 'test', NULL, NULL, NULL, 'approved', NULL, 'payment sent', '2023-11-16 11:29:58', '2023-11-20 10:24:20'),
(2, NULL, '6555fc6d2e13a', '13', NULL, '2023-11-20', '2023-11-20', '14:00:00', '20:00:00', '6', '150', '900', '6555ff592def6', 'request', 'test', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 11:39:05', '2023-11-16 11:39:05'),
(3, 'vendor123123', '65560c6d1698c', '13', NULL, '2023-11-20', '2023-11-20', '14:00:00', '20:00:00', '6', '150', '528', '65560ce499efe', 'confirmed', 'indore', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 12:36:52', '2023-11-16 12:36:52'),
(4, NULL, '6556119ae5237', '12', NULL, '2023-11-20', '2023-11-20', '14:00:00', '20:00:00', '6', '88', '528', '655612b2b76ee', 'request', 'indore', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 13:01:38', '2023-11-16 13:01:38'),
(5, NULL, '6556119ae5237', '13', NULL, '2023-11-20', '2023-11-20', '14:00:00', '20:00:00', '6', '88', '528', '655612c597efc', NULL, 'indore', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 13:01:57', '2023-11-17 10:49:54'),
(6, NULL, '65566cde392ea', '13', NULL, '2023-11-20', '2023-11-20', '14:00:00', '20:00:00', '6', '88', '528', '65566cfcd1c02', 'request', 'indore', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-16 19:26:52', '2023-11-16 19:26:52'),
(7, NULL, '65566cde392ea', '13', NULL, '2023-11-20', '2023-11-20', '14:00:00', '20:00:00', '6', '88', '528', '655709b1d2785', 'request', 'ill', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:35:29', '2023-11-17 06:35:29'),
(8, NULL, '65566cde392ea', '13', NULL, '2023-11-20', '2023-11-02', '14:00:00', '20:00:00', '6', '88', '528', '65570d0950417', 'request', 'ill', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:49:45', '2023-11-17 06:49:45'),
(9, NULL, '6556157d2507d', '13', NULL, '27/11/2023', '29/11/2023', '00:00:10', '00:00:10', '24:0', '150', '3600', '65570e68c68d2', 'request', 'dvdv', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:55:36', '2023-11-17 06:55:36'),
(10, NULL, '65566cde392ea', '13', NULL, '20/11/2023', '20/12/2023', '14:00:00', '20:00:00', '6', '88', '528', '65570ebd4234c', 'request', 'ill', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 06:57:01', '2023-11-17 06:57:01'),
(11, NULL, '6556157d2507d', '13', NULL, '27/11/2023', '29/11/2023', '00:00:06', '00:00:10', '4:30', '150', '600', '6557101fd4383', 'request', 'rrg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 07:02:55', '2023-11-17 07:02:55'),
(12, NULL, '6556157d2507d', '13', NULL, '22/11/2023', '26/11/2023', '00:00:06', '00:00:05', '23:0', '150', '3450', '65571076dd769', 'request', 'fvrg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 07:04:22', '2023-11-17 07:04:22'),
(13, NULL, '6556157d2507d', '13', NULL, '27/11/2023', '30/11/2023', '00:00:10', '00:00:11', '1:30', '150', '150', '655710d765ade', 'request', 'geg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 07:05:59', '2023-11-17 07:05:59'),
(14, NULL, '6556157d2507d', '17', NULL, '19/11/2023', '28/11/2023', '00:00:04', '00:00:11', '7:0', '100', '700', '6557111da2dff', 'request', 'fbfb', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 07:07:09', '2023-11-17 07:07:09'),
(15, NULL, '6556157d2507d', '17', NULL, '19/11/2023', '29/11/2023', '00:00:06', '00:00:11', '5:0', '100', '500', '6557117a1fe57', 'request', 'gtr', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 07:08:42', '2023-11-17 07:08:42'),
(16, NULL, '6556157d2507d', '17', NULL, '22/11/2023', '22/11/2023', '00:00:11', '00:00:06', '19:30', '100', '1900', '6557125c3d6b7', 'request', 'rgeeg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 07:12:28', '2023-11-17 07:12:28'),
(17, NULL, '6556157d2507d', '17', NULL, '22/11/2023', '28/11/2023', '00:00:10', '00:00:10', '24:0', '100', '2400', '655714e6985dd', 'request', 'grt', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 07:23:18', '2023-11-17 07:23:18'),
(18, NULL, '6556157d2507d', '17', NULL, '22/11/2023', '26/11/2023', '00:00:09', '00:00:11', '2:0', '100', '200', '65571faf0bb4c', 'request', 'egegrh', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 08:09:19', '2023-11-17 08:09:19'),
(19, NULL, '65573453c4ec4', '17', NULL, '21/11/2023', '22/11/2023', '00:00:05', '00:00:02', '21:0', '100', '2100', '65573599e2c17', 'request', 'fff', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 09:42:49', '2023-11-17 09:42:49'),
(20, NULL, '65573453c4ec4', '17', NULL, '27/11/2023', '29/11/2023', '00:00:05', '00:00:11', '6:0', '100', '600', '65573da3bbcd1', 'request', 'sfs', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 10:17:07', '2023-11-17 10:17:07'),
(22, NULL, '65566cde392ea', '13', '2023/11/20:2023-11-20 14:00:00-18:00:00, 2023/11/20:2023-11-20 14:00:00-18:00:00, 2023/11/20:2023-11-20 14:00:00-18:00:00,', NULL, NULL, NULL, NULL, '6', '88', '528', '65574bdacf26c', 'request', 'ill', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 11:17:46', '2023-11-17 11:17:46'),
(23, NULL, '65566cde392ea', '13', '2023/11/20:2023-11-20 14:00:00-18:00:00, 2023/11/20:2023-11-20 14:00:00-18:00:00, 2023/11/20:2023-11-20 14:00:00-18:00:00,', NULL, NULL, NULL, NULL, '23', '88', '528', '65575d0456d26', 'request', 'ill', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 12:31:00', '2023-11-17 12:31:00'),
(24, NULL, '65566cde392ea', '13', '20/11/2023:22/11/2023 6-6, 2023/11/20:2023-11-20 14:00:00-18:00:00, 2023/11/20:2023-11-20 14:00:00-0,', NULL, NULL, NULL, NULL, '4:0', '150', '600', '65576279d3475', 'request', 'vuv', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 12:54:17', '2023-11-17 12:54:17'),
(25, NULL, '65566cde392ea', '17', '21/11/2023:23/11/2023 10-10, 22/11/2023:28/11/2023 3-3, 19/11/2023:29/11/2023 11-11,', NULL, NULL, NULL, NULL, '17:0', '100', '1700', '655764d67bb69', 'request', 'hchx', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 13:04:22', '2023-11-17 13:04:22'),
(26, NULL, '65566cde392ea', '17', '23/11/2023:27/11/2023 11-11, 20/11/2023:22/11/2023 8-8, 20/11/2023:22/11/2023 7-7,', NULL, NULL, NULL, NULL, '24:0', '100', '2400', '65576556b85b8', 'request', 'fhrh', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 13:06:30', '2023-11-17 13:06:30'),
(27, NULL, '65566cde392ea', '17', '23/11/2023:26/11/2023 11-11, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '23:0', '100', '2300', '65576933a3ad1', 'request', 'ryryy', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 13:22:59', '2023-11-17 13:22:59'),
(28, NULL, '65566cde392ea', '13', '22/11/2023:27/11/2023 9-9, 23/11/2023:26/11/2023 10-10, 19/11/2023:22/11/2023 10-10,', NULL, NULL, NULL, NULL, '20:0', '150', '3000', '65576f8fd8461', 'request', 'dvvddvh c', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-17 13:50:07', '2023-11-17 13:50:07'),
(29, NULL, '65566cde392ea', '17', '24/11/2023:27/11/2023 3-3, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '8:0', '100', '800', '655ae9a108478', 'request', 'rttg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 05:07:45', '2023-11-20 05:07:45'),
(30, NULL, '65566cde392ea', '17', '21/11/2023:24/11/2023 10-10, 21/11/2023:21/11/2023 10-10, 28/11/2023:30/11/2023 9-9,', NULL, NULL, NULL, NULL, '24:0', '100', '2400', '655afa6c49d2c', 'request', 'fvd', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 06:19:24', '2023-11-20 06:19:24'),
(31, NULL, '65566cde392ea', '13', '20/11/2023:22/11/2023 10-10, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '14:30', '150', '2100', '655b2858d3693', 'request', 'dvdv', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 09:35:20', '2023-11-20 09:35:20'),
(32, NULL, '65566cde392ea', '17', '21/11/2023:23/11/2023 12-12, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '16:0', '100', '1600.0', '655b32d724661', 'request', 'india', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 10:20:07', '2023-11-20 10:20:07'),
(33, NULL, '65566cde392ea', '17', '20/11/2023:28/11/2023 7-7, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '2:0', '100', '200.0', '655b3446908fe', 'request', 'dbxb', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 10:26:14', '2023-11-20 10:26:14'),
(34, NULL, '65566cde392ea', '17', '21/11/2023:22/11/2023 8-8, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '1:0', '100', '100.0', '655b353f5f537', 'request', 'vsvs', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 10:30:23', '2023-11-20 10:30:23'),
(35, NULL, '65566cde392ea', '18', '24/11/2023:28/11/2023 3-3, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '23:0', '200', '4600.0', '655b3735962bd', 'request', 'ggf', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 10:38:45', '2023-11-20 10:38:45'),
(36, NULL, '65566cde392ea', '13', '22/11/2023:23/11/2023 20-20, 24/11/2023:24/11/2023 16-16, : 0-0,', NULL, NULL, NULL, NULL, '8:30', '150', '1200.0', '655b38485b26b', 'request', 'uk', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 10:43:20', '2023-11-20 10:43:20'),
(37, NULL, '65566cde392ea', '13', '23/11/2023:28/11/2023 8-8, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '19:0', '150', '2850.0', '655b406b8f0ca', 'request', 'uvucc', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 11:18:03', '2023-11-20 11:18:03'),
(38, NULL, '65566cde392ea', '13', '20/11/2023:24/11/2023 10-10, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '16:0', '150', '2400.0', '655b427752b4e', 'request', 'yrye', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 11:26:47', '2023-11-20 11:26:47'),
(39, NULL, '65566cde392ea', '13', '21/11/2023:24/11/2023 11-11, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '16:30', '150', '2475.0', '655b42e56ddfe', 'request', 'bfdvdb', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 11:28:37', '2023-11-20 11:28:37'),
(40, NULL, '65566cde392ea', '13', '21/11/2023:30/11/2023 8-8, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '18:30', '150', '2775.0', '655b436c9a167', 'request', 'rgr', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 11:30:52', '2023-11-20 11:30:52'),
(41, NULL, '65566cde392ea', '13', '23/11/2023:27/11/2023 7-7, 20/11/2023:23/11/2023 8-8, : 0-0,', NULL, NULL, NULL, NULL, '1:0', '150', '150.0', '655b4472f091e', 'request', 'chc hc', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 11:35:14', '2023-11-20 11:35:14'),
(42, NULL, '65566cde392ea', '13', '21/11/2023:21/11/2023 7-7, 24/11/2023:28/11/2023 9-9, : 0-0,', NULL, NULL, NULL, NULL, '19:0', '150', '2850.0', '655b457fbe76b', 'request', 'ydyd', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 11:39:43', '2023-11-20 11:39:43'),
(43, NULL, '65566cde392ea', '13', '21/11/2023:24/11/2023 0-0, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '8:30', '150', '1275.0', '655b469f75e17', 'request', 'vh h', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 11:44:31', '2023-11-20 11:44:31'),
(44, NULL, '65566cde392ea', '13', '21/11/2023:24/11/2023 9-9, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '19:30', '150', '2925.0', '655b47e7a6e19', 'request', 'rhth', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 11:49:59', '2023-11-20 11:49:59'),
(45, NULL, '65566cde392ea', '13', '26/11/2023:28/11/2023 8-8, 28/11/2023:30/11/2023 8-8, 21/11/2023:24/11/2023 7-7,', NULL, NULL, NULL, NULL, '21:30', '150', '3225.0', '655b6a82595a1', 'request', 'ccv.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 14:17:38', '2023-11-20 14:17:38'),
(46, NULL, '65566cde392ea', '13', '21/11/2023:24/11/2023 9-9, : 0-0, : 0-0,', NULL, NULL, NULL, NULL, '14:30', '150', '2175.0', '655b6b98c6f19', 'request', 'sggddg', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-20 14:22:16', '2023-11-20 14:22:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `help_and_support`
--

CREATE TABLE `help_and_support` (
  `id` int(11) NOT NULL,
  `user_id` text DEFAULT 'NULL',
  `msg` text DEFAULT '\'NULL\'',
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `help_and_support`
--

INSERT INTO `help_and_support` (`id`, `user_id`, `msg`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, '6555fc6d2e13a', 'test', 'pragya', 'pragya@gmail.com', '2023-11-16 11:28:16', '2023-11-16 11:28:16');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `user_id` text DEFAULT 'NULL',
  `sender_id` text DEFAULT 'NULL',
  `notification` text DEFAULT 'NULL',
  `notification_time` text NOT NULL,
  `status` enum('unseen','seen') DEFAULT 'unseen',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page_name` text DEFAULT '\'NULL\'',
  `page_description` text DEFAULT '\'NULL\'',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `page_description`, `created_at`, `updated_at`) VALUES
(1, 'Terms & Condition', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2023-11-16 11:24:10', '2023-11-16 11:24:43'),
(2, 'Privacy Policy', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '2023-11-16 11:24:29', '2023-11-16 11:24:29');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('pragyakushwah2017@gmail.com', '$2y$10$4CCA27mNKvvIrPDamxk8TuwmBY8CLFOBvSZBn8Zp2to8wKeeBNAny', '2023-11-16 13:37:23');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_custom`
--

CREATE TABLE `password_reset_custom` (
  `id` int(11) NOT NULL,
  `email` text DEFAULT NULL,
  `token` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `password_reset_custom`
--

INSERT INTO `password_reset_custom` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(1, 'pragyakushwah2017@gmail.com', 'XhZl96VXeIC6NaP7SlhRFjwMoj8gTUgcZK6ef4ekRLyS6ylfHq8PVQzRfY9C', '2023-11-17 09:32:15', '2023-11-17 09:32:15'),
(4, 'pragyakushwah2017@gmail.com', 'ArSJQJ', '2023-11-17 10:20:12', '2023-11-17 10:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 20, 'API TOKEN', 'e5786365881e3640614408cf38cf8d462b95c63cdcdac1acd8af7d558de37098', '[\"*\"]', '2023-11-16 12:57:18', NULL, '2023-11-16 11:26:37', '2023-11-16 12:57:18'),
(2, 'App\\Models\\User', 22, 'API TOKEN', '6b12645a6a8de591c40a4c1dd22b6c7f398bae70ca6fd4bae7f3605aaa4b009e', '[\"*\"]', '2023-11-16 12:38:45', NULL, '2023-11-16 12:34:53', '2023-11-16 12:38:45'),
(3, 'App\\Models\\User', 23, 'API TOKEN', '6ded70fc3328088f948ada034a0b0a6fc0e23562363b8f445d84866685216c9f', '[\"*\"]', '2023-11-16 13:04:27', NULL, '2023-11-16 12:56:58', '2023-11-16 13:04:27'),
(4, 'App\\Models\\User', 24, 'API TOKEN', 'c30421fab3bd4575852aadbc330d902d675679589e0699081ba691aa4c671871', '[\"*\"]', '2023-11-17 07:59:03', NULL, '2023-11-16 13:13:33', '2023-11-17 07:59:03'),
(5, 'App\\Models\\User', 25, 'API TOKEN', 'ca70f120f00d548ce68f1bd9f3a4c17d88283059b1b7f3a03462d75bf8109932', '[\"*\"]', NULL, NULL, '2023-11-16 13:16:50', '2023-11-16 13:16:50'),
(6, 'App\\Models\\User', 25, 'API TOKEN', '7673bcab2033f10c4e472cff3621012df741f5d13b05fb25b7850d9822dad7b5', '[\"*\"]', NULL, NULL, '2023-11-16 13:17:11', '2023-11-16 13:17:11'),
(7, 'App\\Models\\User', 26, 'API TOKEN', '6df63201f4e0f700ae3ec7368a845b77a1270d2dccd1644b259e5254ae694f00', '[\"*\"]', NULL, NULL, '2023-11-16 13:36:32', '2023-11-16 13:36:32'),
(8, 'App\\Models\\User', 26, 'API TOKEN', '1fb4de4feeaede027a5d14e99e9d1c397011a453dde9a382446e71bc11a603e8', '[\"*\"]', '2023-11-16 13:40:49', NULL, '2023-11-16 13:36:46', '2023-11-16 13:40:49'),
(9, 'App\\Models\\User', 27, 'API TOKEN', '84b6e1ba3ce529348bb9eedd7b262d68cb26dd7273d19ba9e761069317795722', '[\"*\"]', '2023-11-20 14:22:16', NULL, '2023-11-16 19:26:22', '2023-11-20 14:22:16'),
(10, 'App\\Models\\User', 27, 'API TOKEN', '8969b8ab990538fb981e22618427d9de0f622d6fabe2444cabc9be1f39c21432', '[\"*\"]', '2023-11-17 10:49:54', NULL, '2023-11-17 06:37:04', '2023-11-17 10:49:54'),
(11, 'App\\Models\\User', 24, 'API TOKEN', '74d8387563830705fd41de5a0cbb3a7d40d4a071ed194482a5e76b188008166e', '[\"*\"]', '2023-11-17 08:22:28', NULL, '2023-11-17 08:07:18', '2023-11-17 08:22:28'),
(12, 'App\\Models\\User', 24, 'API TOKEN', 'e8f4e5ed65e23efd8f3c0b8feda166fded391dddbe15b865bb7f096cbb07a409', '[\"*\"]', NULL, NULL, '2023-11-17 09:34:34', '2023-11-17 09:34:34'),
(13, 'App\\Models\\User', 28, 'API TOKEN', 'd1c0caeb52f78514c5d67bc993d976f8fce22ded5cfc61b88ecda469316dc651', '[\"*\"]', '2023-11-17 13:49:49', NULL, '2023-11-17 09:37:23', '2023-11-17 13:49:49'),
(14, 'App\\Models\\User', 20, 'API TOKEN', '7dd88bb9126cc1b4064112a2c4b5d213886a09f2a9892c38b7e7d4066b57bc9f', '[\"*\"]', NULL, NULL, '2023-11-17 10:17:18', '2023-11-17 10:17:18'),
(15, 'App\\Models\\User', 20, 'API TOKEN', '9c2f6022d10ed975f0d2b958bc7290679f88647611ffe7f981d8c2ce560f20c7', '[\"*\"]', NULL, NULL, '2023-11-17 10:18:09', '2023-11-17 10:18:09'),
(16, 'App\\Models\\User', 20, 'API TOKEN', 'fd1ddc89a0b0004b496b3c11b3923c4d858ee28d131174bfbe145fef5e38b03f', '[\"*\"]', NULL, NULL, '2023-11-17 10:22:14', '2023-11-17 10:22:14'),
(17, 'App\\Models\\User', 20, 'API TOKEN', 'c50be36e16719830f71b5b2d7fd3d4a72f935c6fb7c627ca40065b8298c3efdf', '[\"*\"]', '2023-11-20 07:36:56', NULL, '2023-11-17 11:01:43', '2023-11-20 07:36:56'),
(18, 'App\\Models\\User', 24, 'API TOKEN', '4a36c6289c5a0fb727cf669ed3e9b99cbab2f7b7311dce7901356ec5355e2823', '[\"*\"]', '2023-11-20 09:59:50', NULL, '2023-11-20 05:05:39', '2023-11-20 09:59:50'),
(19, 'App\\Models\\User', 29, 'API TOKEN', 'c7b6a3113e2b8e918fd7fd0cfa4ccfa026be18388a05f9b82d6241f308d64a8e', '[\"*\"]', NULL, NULL, '2023-11-20 10:16:45', '2023-11-20 10:16:45'),
(20, 'App\\Models\\User', 30, 'API TOKEN', 'f851d02269028104ec1e35fb6a6d750bbbfe184b1018234134348f8a9e97cf77', '[\"*\"]', NULL, NULL, '2023-11-20 10:18:34', '2023-11-20 10:18:34'),
(21, 'App\\Models\\User', 24, 'API TOKEN', '37f2543ccbf5e00acc556d209b140eea1bb98e0f9c079c311033b4b2f3b60707', '[\"*\"]', '2023-11-20 10:29:52', NULL, '2023-11-20 10:25:48', '2023-11-20 10:29:52'),
(22, 'App\\Models\\User', 24, 'API TOKEN', '420e331a8c5c394756f74407e3752edcc9d8095f666fc4b0c6348b08c9a0e6eb', '[\"*\"]', '2023-11-20 11:17:39', NULL, '2023-11-20 10:38:20', '2023-11-20 11:17:39'),
(23, 'App\\Models\\User', 31, 'API TOKEN', '12552d80e90f8ad58b91fe3648e066b9aa546271de5d9e440b964dddcaad0d4d', '[\"*\"]', NULL, NULL, '2023-11-20 10:41:28', '2023-11-20 10:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_title` text DEFAULT NULL,
  `service_image` text DEFAULT NULL,
  `charge` text DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `experience` text DEFAULT NULL,
  `verified_badge` enum('no','yes') DEFAULT 'no',
  `service_offered` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `service_id` text DEFAULT NULL,
  `commission` text DEFAULT NULL,
  `service_gallery_image1` text DEFAULT NULL,
  `service_gallery_image2` text DEFAULT NULL,
  `service_gallery_image3` text DEFAULT NULL,
  `service_gallery_image4` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_title`, `service_image`, `charge`, `designation`, `experience`, `verified_badge`, `service_offered`, `short_description`, `description`, `service_id`, `commission`, `service_gallery_image1`, `service_gallery_image2`, `service_gallery_image3`, `service_gallery_image4`, `created_at`, `updated_at`) VALUES
(13, 'SIA Door Supervisors', 'upload/service/716921699532139.png', '150', 'Super Guard', '6+', 'yes', 'Guard services for test', 'This is some dummy short description of guard services.', 'SIA licenced primarily working on clubs and pubs, commercial venues and office buildings or any facilities with large guest counts. The current recommendation is that there should be one Supervisor for every 100 guests.\r\n\r\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Ex eum necessitatibus odit nam reprehenderit at voluptates, cum a quam nihil voluptatibus harum assumenda nemo? Ex alias veritatis ratione distinctio porro. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ex eum necessitatibus odit nam reprehenderit at voluptates, cum a quam nihil voluptatibus harum assumenda nemo? Ex alias veritatis ratione distinctio porro.', '24', 'Yes', 'upload/service/7332381699532139.jpg', 'upload/service/8000161699532139.png', 'upload/service/9346781699532139.jpg', 'upload/service/7990651699532139.jpg', '2023-10-25 12:44:24', '2023-11-09 06:45:39'),
(17, 'Dog Unit - K9', 'upload/service/3542601699532029.png', '100', NULL, NULL, 'no', NULL, NULL, 'Dog Unit or K9 Security is a Security Service that uses highly trained dogs, also known as K9’s in American slang.\r\nA Dog Unit is made up of a SIA (Security Industry Authority) licenced dog-handler, a security-trained dog and a vehicle usually a car or a van equipped for the transportation and care of the dogs.\r\nA Dog Unit is one of the most effective forms of security. People in general and especially criminals have an instinctual fear of Security Dogs. From the logos on the van to sight of the patrolling dog everyone is warned to stay away.\r\nThe fear factor dogs instil make them much more efficient than basic security patrols, no one wants to get bitten by a big German Shepherd!\r\nA Dog unit is highly flexible form of Security, most effective performing residential security, street patrols and industrial sites. For larger events the SIA handler has no issue liaising with multiple security teams.', NULL, NULL, 'upload/service/2791931699532029.jpg', 'upload/service/3802191699532029.jpg', 'upload/service/3231571699532029.png', 'upload/service/4845171699532029.png', '2023-11-09 06:42:13', '2023-11-09 06:43:49'),
(18, 'SIA Security Guards', 'upload/service/9070041699532209.png', '200', NULL, NULL, 'no', NULL, NULL, 'SIA Licenced guards working on construction sites or any other sites without public access.\r\n\r\nLorem ipsum, dolor sit amet consectetur adipisicing elit. Ex eum necessitatibus odit nam reprehenderit at voluptates, cum a quam nihil voluptatibus harum assumenda nemo? Ex alias veritatis ratione distinctio porro. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ex eum necessitatibus odit nam reprehenderit at voluptates, cum a quam nihil voluptatibus harum assumenda nemo? Ex alias veritatis ratione distinctio porro.', NULL, NULL, 'upload/service/3575821699532209.jpg', 'upload/service/9881851699532209.jpg', 'upload/service/1598001699532209.png', 'upload/service/1508931699532209.jpg', '2023-11-09 06:46:49', '2023-11-09 06:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `user_type` enum('customer','vendor','admin') DEFAULT 'customer',
  `provider` text DEFAULT NULL,
  `provider_id` text DEFAULT NULL,
  `vendor_services` text DEFAULT NULL,
  `profile_description` text DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `availability` enum('online','offline') DEFAULT 'online',
  `app_update_on_off` enum('0','1') DEFAULT '1',
  `notification_on_off` enum('0','1') NOT NULL DEFAULT '1',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `last_activity_at` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `account_holder_name` text DEFAULT NULL,
  `swift_code` text DEFAULT NULL,
  `account_number` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `profile_image`, `user_type`, `provider`, `provider_id`, `vendor_services`, `profile_description`, `user_id`, `availability`, `app_update_on_off`, `notification_on_off`, `email_verified_at`, `password`, `remember_token`, `last_activity_at`, `ip`, `status`, `account_holder_name`, `swift_code`, `account_number`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '8103084226', '', '', 'admin', '', '', '', '', '', 'online', '', '1', NULL, '$2y$10$Y4RtATLf8rtkhVkF7XKeBueeYLbcuRhofyCesvO8IXPP.mdPB9A.S', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-10-18 06:17:21', '2023-10-18 06:17:21'),
(20, 'pragya', 'pragyakushwah2017@gmail.com', '75675676', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, '6555fc6d2e13a', 'online', '1', '1', NULL, '$2y$10$EQkrx72/oFVtM1Ivr.Sr2.h5OIFqq6SC5usUSkOpy2MySCgmIjgE.', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-11-16 11:26:37', '2023-11-17 10:22:14'),
(21, 'vendor', 'vendor@gmail.com', '5464565466', 'test address', NULL, 'vendor', NULL, NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry', 'vendor123123', 'online', '1', '1', NULL, '$2y$10$9RjFlm3SW/DfTao6DCAM6erMFhRt/WkBshvk1fpW3PncsgVajYcBu', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-11-16 11:43:44', '2023-11-17 08:20:03'),
(22, 'pragya2', 'pragya2@gmail.com', '8962800598', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, '65560c6d1698c', 'online', '1', '1', NULL, '$2y$10$3j009vydLpezmeYZxbiBpeUx8yVS7/gfViKQUhIObqTJLOPOO4.GS', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-11-16 12:34:53', '2023-11-16 12:34:53'),
(24, 'preeti', 'preeti@gmail.com', '8865639856', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, '6556157d2507d', 'online', '1', '1', NULL, '$2y$10$dhv1ww6n2a/RwIYQiPjU4eJLulXgJ8vWpBin9X9GHgjPkRcoLvEse', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-11-16 13:13:33', '2023-11-16 13:58:42'),
(27, 'pragya2', 'pragya23@gmail.com', '98786543245', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, '65566cde392ea', 'online', '1', '1', NULL, '$2y$10$eo.nlv9xaTlN4fAR4zf1suRcjcFFybza7zR6NUGn8hLvlxG4ZJWxG', NULL, NULL, NULL, 'inactive', NULL, NULL, NULL, '2023-11-16 19:26:22', '2023-11-17 08:15:01'),
(28, 'hcjvh', 'preeti123@gmail.com', '5959559954', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, '65573453c4ec4', 'online', '1', '1', NULL, '$2y$10$t2LVkyk2pF1Ngqc6W1vTheIWBqBrDunQ8YS2pGn4Te.KHlJWko5xq', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-11-17 09:37:23', '2023-11-17 09:37:23'),
(29, 'ajeet Choubey', 'ajeet.developerbajar@gmail.com', '8982027891', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, '655b320dc179b', 'online', '1', '1', NULL, '$2y$10$94dzHSXKs/QoFvy8shvp5uEWpJHXFkk.ncS3QWbFnDDa8HknWSJUm', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-11-20 10:16:45', '2023-11-20 10:16:45'),
(30, 'ajeet Choubey', 'ajeet.developerbajara@gmail.com', '8982027891', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, '655b327ab0f62', 'online', '1', '1', NULL, '$2y$10$oJ7SDHy5hLkwoXTR90pCEehW0oZ/CohHnKzvidaSgpEwSmDq/1Fga', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-11-20 10:18:34', '2023-11-20 10:18:34'),
(31, 'Ajeet', 'jeetschoubey90@gmail.com', '8982027891', NULL, NULL, 'customer', NULL, NULL, NULL, NULL, '655b37d8a4323', 'online', '1', '1', NULL, '$2y$10$UwF8Esj7VDUAawPAnZaVcOelJo56HyIELsbstJ36iSxXscmpbhxXu', NULL, NULL, NULL, 'active', NULL, NULL, NULL, '2023-11-20 10:41:28', '2023-11-20 10:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `user_documents_media`
--

CREATE TABLE `user_documents_media` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT 'NULL',
  `document` text DEFAULT 'NULL',
  `user_id` text DEFAULT 'NULL',
  `type` enum('document','gallery') NOT NULL DEFAULT 'gallery',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `help_and_support`
--
ALTER TABLE `help_and_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `password_reset_custom`
--
ALTER TABLE `password_reset_custom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_documents_media`
--
ALTER TABLE `user_documents_media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `help_and_support`
--
ALTER TABLE `help_and_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `password_reset_custom`
--
ALTER TABLE `password_reset_custom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_documents_media`
--
ALTER TABLE `user_documents_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
