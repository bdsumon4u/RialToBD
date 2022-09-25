-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2022 at 02:38 AM
-- Server version: 10.5.16-MariaDB-cll-lve
-- PHP Version: 7.4.30

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bongof_lylaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `admins`
--

TRUNCATE TABLE `admins`;
--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sumon Ahmed', 'bdsumon4u@gmail.com', NULL, '$2y$10$WPyPCNFGUHPy884Aorpe2.0fcVihi2HY0vEggoGmpUTqpTbmdZqzW', 'Nte8dAJ8MWcHh6emwUCz5XPoZk2WerIpfia7QqVd5dyO4BYerLLklgG72Or2', '2022-05-21 18:26:00', '2022-05-21 18:26:00'),
(2, 'aDmiN', 'support@bongofly.com', NULL, '$2y$10$vxyUC7g1y71e7HO2.j64ZOzkpnc5zzzQ0WtfMalyFWp1H/VaiUm8m', 'ozD5SP7bqVIk9WqQsbRGYJaT1zqZJxAx2GZhUAy0D6z1apliSCiSUsPMMiRI', '2022-05-21 18:26:00', '2022-05-21 18:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `brands`
--

TRUNCATE TABLE `brands`;
--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'International', 'international', '2022-05-22 00:16:07', '2022-05-22 00:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `categories`
--

TRUNCATE TABLE `categories`;
--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Bag', 'bag', '2022-05-22 00:15:54', '2022-05-22 00:15:54'),
(2, NULL, 'Kids Item', 'kids-item', '2022-05-22 08:14:30', '2022-05-22 08:14:30'),
(3, NULL, 'Stationary', 'stationary', '2022-05-22 08:14:49', '2022-05-22 08:14:49'),
(4, NULL, 'Mixed', 'mixed', '2022-05-22 10:51:42', '2022-05-22 10:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `category_home_section`
--

CREATE TABLE `category_home_section` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `home_section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `category_home_section`
--

TRUNCATE TABLE `category_home_section`;
--
-- Dumping data for table `category_home_section`
--

INSERT INTO `category_home_section` (`id`, `category_id`, `home_section_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 3, 1, NULL, NULL),
(6, 4, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_menus`
--

CREATE TABLE `category_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `category_menus`
--

TRUNCATE TABLE `category_menus`;
--
-- Dumping data for table `category_menus`
--

INSERT INTO `category_menus` (`id`, `parent_id`, `category_id`, `order`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 0, NULL, NULL),
(2, NULL, 2, 0, NULL, NULL),
(3, NULL, 3, 0, NULL, NULL),
(4, NULL, 4, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `category_product`
--

TRUNCATE TABLE `category_product`;
--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 3, NULL, NULL),
(5, 4, 4, NULL, NULL),
(6, 4, 5, NULL, NULL),
(7, 4, 6, NULL, NULL),
(8, 4, 7, NULL, NULL),
(9, 4, 8, NULL, NULL),
(10, 4, 9, NULL, NULL),
(11, 4, 10, NULL, NULL),
(12, 4, 11, NULL, NULL),
(13, 4, 12, NULL, NULL),
(14, 4, 13, NULL, NULL),
(15, 4, 14, NULL, NULL),
(16, 4, 15, NULL, NULL),
(17, 4, 16, NULL, NULL),
(18, 4, 17, NULL, NULL),
(19, 4, 18, NULL, NULL),
(20, 4, 19, NULL, NULL),
(21, 4, 20, NULL, NULL),
(22, 4, 21, NULL, NULL),
(23, 4, 22, NULL, NULL),
(24, 4, 23, NULL, NULL),
(25, 4, 24, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `failed_jobs`
--

TRUNCATE TABLE `failed_jobs`;
-- --------------------------------------------------------

--
-- Table structure for table `home_sections`
--

CREATE TABLE `home_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `home_sections`
--

TRUNCATE TABLE `home_sections`;
--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `title`, `type`, `order`, `data`, `created_at`, `updated_at`) VALUES
(1, 'Exclusive Products', 'pure-grid', 1, '{\"rows\":\"10\",\"cols\":\"5\"}', '2022-05-22 00:24:52', '2022-05-22 11:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `images`
--

TRUNCATE TABLE `images`;
--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(1, 'Large Capacity Folding Travel Bag (1).jpg', 'public', '/storage/22-May-2022/images/1653156998-Large-Capacity-Folding-Travel-Bag-(1).jpg', 'jpeg', 'image/jpeg', '40576', '2022-05-22 00:16:38', '2022-05-22 00:16:38'),
(2, 'Large Capacity Folding Travel Bag (2).jpg', 'public', '/storage/22-May-2022/images/1653156998-Large-Capacity-Folding-Travel-Bag-(2).jpg', 'jpeg', 'image/jpeg', '89319', '2022-05-22 00:16:38', '2022-05-22 00:16:38'),
(3, 'Large Capacity Folding Travel Bag (3).jpg', 'public', '/storage/22-May-2022/images/1653156999-Large-Capacity-Folding-Travel-Bag-(3).jpg', 'jpeg', 'image/jpeg', '114830', '2022-05-22 00:16:39', '2022-05-22 00:16:39'),
(4, 'Large Capacity Folding Travel Bag (4).jpg', 'public', '/storage/22-May-2022/images/1653156999-Large-Capacity-Folding-Travel-Bag-(4).jpg', 'jpeg', 'image/jpeg', '172602', '2022-05-22 00:16:39', '2022-05-22 00:16:39'),
(5, 'Large Capacity Folding Travel Bag (5).jpg', 'public', '/storage/22-May-2022/images/1653157000-Large-Capacity-Folding-Travel-Bag-(5).jpg', 'jpeg', 'image/jpeg', '162910', '2022-05-22 00:16:40', '2022-05-22 00:16:40'),
(6, 'Large Capacity Folding Travel Bag (6).jpg', 'public', '/storage/22-May-2022/images/1653157001-Large-Capacity-Folding-Travel-Bag-(6).jpg', 'jpeg', 'image/jpeg', '163905', '2022-05-22 00:16:41', '2022-05-22 00:16:41'),
(15, 'LCD Writing Tablet 8.5 Inch (2).jpg', 'public', '/storage/22-May-2022/images/1653185916-LCD-Writing-Tablet-8.5-Inch-(2).jpg', 'jpeg', 'image/jpeg', '23272', '2022-05-22 08:18:36', '2022-05-22 08:18:36'),
(16, 'LCD Writing Tablet 8.5 Inch (1).jpg', 'public', '/storage/22-May-2022/images/1653185916-LCD-Writing-Tablet-8.5-Inch-(1).jpg', 'jpeg', 'image/jpeg', '25038', '2022-05-22 08:18:36', '2022-05-22 08:18:36'),
(17, 'LCD Writing Tablet 8.5 Inch (3).jpg', 'public', '/storage/22-May-2022/images/1653185916-LCD-Writing-Tablet-8.5-Inch-(3).jpg', 'jpeg', 'image/jpeg', '26668', '2022-05-22 08:18:36', '2022-05-22 08:18:36'),
(18, 'LCD Writing Tablet 8.5 Inch (4).jpg', 'public', '/storage/22-May-2022/images/1653185916-LCD-Writing-Tablet-8.5-Inch-(4).jpg', 'jpeg', 'image/jpeg', '18027', '2022-05-22 08:18:36', '2022-05-22 08:18:36'),
(19, 'LCD Writing Tablet 8.5 Inch (5).jpg', 'public', '/storage/22-May-2022/images/1653185916-LCD-Writing-Tablet-8.5-Inch-(5).jpg', 'jpeg', 'image/jpeg', '14438', '2022-05-22 08:18:36', '2022-05-22 08:18:36'),
(20, 'LCD Writing Tablet 8.5 Inch (6).jpg', 'public', '/storage/22-May-2022/images/1653185916-LCD-Writing-Tablet-8.5-Inch-(6).jpg', 'jpeg', 'image/jpeg', '23480', '2022-05-22 08:18:36', '2022-05-22 08:18:36'),
(21, 'LCD Writing Tablet 8.5 Inch (7).jpg', 'public', '/storage/22-May-2022/images/1653185917-LCD-Writing-Tablet-8.5-Inch-(7).jpg', 'jpeg', 'image/jpeg', '16827', '2022-05-22 08:18:37', '2022-05-22 08:18:37'),
(22, 'LCD Writing Tablet 8.5 Inch (8).jpg', 'public', '/storage/22-May-2022/images/1653185917-LCD-Writing-Tablet-8.5-Inch-(8).jpg', 'jpeg', 'image/jpeg', '23256', '2022-05-22 08:18:37', '2022-05-22 08:18:37'),
(23, '1647380282-b360.jpg', 'public', '/storage/22-May-2022/images/1653195189-1647380282-b360.jpg', 'jpeg', 'image/jpeg', '75768', '2022-05-22 10:53:09', '2022-05-22 10:53:09'),
(24, '1647380282-b360.1.jpeg', 'public', '/storage/22-May-2022/images/1653195189-1647380282-b360.1.jpeg', 'jpeg', 'image/jpeg', '104015', '2022-05-22 10:53:09', '2022-05-22 10:53:09'),
(25, '001.jpg', 'public', '/storage/22-May-2022/images/1653195363-001.jpg', 'jpeg', 'image/jpeg', '80267', '2022-05-22 10:56:03', '2022-05-22 10:56:03'),
(26, '002.jpg', 'public', '/storage/22-May-2022/images/1653195363-002.jpg', 'jpeg', 'image/jpeg', '80269', '2022-05-22 10:56:03', '2022-05-22 10:56:03'),
(27, '003.jpg', 'public', '/storage/22-May-2022/images/1653195363-003.jpg', 'jpeg', 'image/jpeg', '50430', '2022-05-22 10:56:03', '2022-05-22 10:56:03'),
(28, '004.jpeg', 'public', '/storage/22-May-2022/images/1653195363-004.jpeg', 'jpeg', 'image/jpeg', '119449', '2022-05-22 10:56:03', '2022-05-22 10:56:03'),
(29, '005.jpg', 'public', '/storage/22-May-2022/images/1653195597-005.jpg', 'jpeg', 'image/jpeg', '167239', '2022-05-22 10:59:57', '2022-05-22 10:59:57'),
(30, '004.jpg', 'public', '/storage/22-May-2022/images/1653195597-004.jpg', 'jpeg', 'image/jpeg', '145299', '2022-05-22 10:59:57', '2022-05-22 10:59:57'),
(31, '006.jpg', 'public', '/storage/22-May-2022/images/1653195597-006.jpg', 'jpeg', 'image/jpeg', '148752', '2022-05-22 10:59:57', '2022-05-22 10:59:57'),
(32, '007.jpg', 'public', '/storage/22-May-2022/images/1653195597-007.jpg', 'jpeg', 'image/jpeg', '142317', '2022-05-22 10:59:57', '2022-05-22 10:59:57'),
(33, '008.jpg', 'public', '/storage/22-May-2022/images/1653196000-008.jpg', 'jpeg', 'image/jpeg', '102197', '2022-05-22 11:06:40', '2022-05-22 11:06:40'),
(34, '009.jpg', 'public', '/storage/22-May-2022/images/1653196000-009.jpg', 'jpeg', 'image/jpeg', '124238', '2022-05-22 11:06:40', '2022-05-22 11:06:40'),
(35, '010.jpg', 'public', '/storage/22-May-2022/images/1653196000-010.jpg', 'jpeg', 'image/jpeg', '122934', '2022-05-22 11:06:40', '2022-05-22 11:06:40'),
(36, '011.jpg', 'public', '/storage/22-May-2022/images/1653196152-011.jpg', 'jpeg', 'image/jpeg', '93028', '2022-05-22 11:09:12', '2022-05-22 11:09:12'),
(37, '012.jpg', 'public', '/storage/22-May-2022/images/1653196152-012.jpg', 'jpeg', 'image/jpeg', '117986', '2022-05-22 11:09:12', '2022-05-22 11:09:12'),
(38, '013.jpg', 'public', '/storage/22-May-2022/images/1653196152-013.jpg', 'jpeg', 'image/jpeg', '74241', '2022-05-22 11:09:12', '2022-05-22 11:09:12'),
(39, '014.png', 'public', '/storage/22-May-2022/images/1653196300-014.png', 'png', 'image/png', '861358', '2022-05-22 11:11:41', '2022-05-22 11:11:41'),
(40, '015.png', 'public', '/storage/22-May-2022/images/1653196300-015.png', 'png', 'image/png', '766725', '2022-05-22 11:11:41', '2022-05-22 11:11:41'),
(41, '017.png', 'public', '/storage/22-May-2022/images/1653196301-017.png', 'png', 'image/png', '697068', '2022-05-22 11:11:42', '2022-05-22 11:11:42'),
(42, '016.png', 'public', '/storage/22-May-2022/images/1653196301-016.png', 'png', 'image/png', '859115', '2022-05-22 11:11:42', '2022-05-22 11:11:42'),
(43, '018.jpeg', 'public', '/storage/22-May-2022/images/1653196458-018.jpeg', 'jpeg', 'image/jpeg', '114830', '2022-05-22 11:14:18', '2022-05-22 11:14:18'),
(44, '019.jpg', 'public', '/storage/22-May-2022/images/1653196458-019.jpg', 'jpeg', 'image/jpeg', '96032', '2022-05-22 11:14:18', '2022-05-22 11:14:18'),
(45, '020.jpg', 'public', '/storage/22-May-2022/images/1653196458-020.jpg', 'jpeg', 'image/jpeg', '101996', '2022-05-22 11:14:18', '2022-05-22 11:14:18'),
(46, '021.jpg', 'public', '/storage/22-May-2022/images/1653196610-021.jpg', 'jpeg', 'image/jpeg', '67362', '2022-05-22 11:16:50', '2022-05-22 11:16:50'),
(47, '022.jpg', 'public', '/storage/22-May-2022/images/1653196610-022.jpg', 'jpeg', 'image/jpeg', '64525', '2022-05-22 11:16:50', '2022-05-22 11:16:50'),
(48, '023.jpg', 'public', '/storage/22-May-2022/images/1653196610-023.jpg', 'jpeg', 'image/jpeg', '67684', '2022-05-22 11:16:51', '2022-05-22 11:16:51'),
(49, '024.jpg', 'public', '/storage/22-May-2022/images/1653196611-024.jpg', 'jpeg', 'image/jpeg', '73955', '2022-05-22 11:16:51', '2022-05-22 11:16:51'),
(50, '025.jpg', 'public', '/storage/22-May-2022/images/1653196611-025.jpg', 'jpeg', 'image/jpeg', '108390', '2022-05-22 11:16:51', '2022-05-22 11:16:51'),
(51, '1641062887-Pro-Biker-Full-(3).jpg', 'public', '/storage/22-May-2022/images/1653196768-1641062887-Pro-Biker-Full-(3).jpg', 'jpeg', 'image/jpeg', '136105', '2022-05-22 11:19:28', '2022-05-22 11:19:28'),
(52, '1641062888-Pro-Biker-Full-(2).png', 'public', '/storage/22-May-2022/images/1653196768-1641062888-Pro-Biker-Full-(2).png', 'png', 'image/png', '597154', '2022-05-22 11:19:29', '2022-05-22 11:19:29'),
(53, '1641062889-Pro-Biker-Full-(3).png', 'public', '/storage/22-May-2022/images/1653196769-1641062889-Pro-Biker-Full-(3).png', 'png', 'image/png', '423428', '2022-05-22 11:19:29', '2022-05-22 11:19:29'),
(54, '1641062890-Pro-Biker-Full.png', 'public', '/storage/22-May-2022/images/1653196769-1641062890-Pro-Biker-Full.png', 'png', 'image/png', '344153', '2022-05-22 11:19:29', '2022-05-22 11:19:29'),
(55, '1641060919-Hand-gloves-&-Sunglass-Combo.jpg', 'public', '/storage/22-May-2022/images/1653196917-1641060919-Hand-gloves-&-Sunglass-Combo.jpg', 'jpeg', 'image/jpeg', '83778', '2022-05-22 11:21:57', '2022-05-22 11:21:57'),
(56, '1639297938-Innovative-Spring-EarWax-Cleaner-Tool-Set-(1).jpg', 'public', '/storage/22-May-2022/images/1653197038-1639297938-Innovative-Spring-EarWax-Cleaner-Tool-Set-(1).jpg', 'jpeg', 'image/jpeg', '47845', '2022-05-22 11:23:58', '2022-05-22 11:23:58'),
(57, '1639297938-Innovative-Spring-EarWax-Cleaner-Tool-Set.jpg', 'public', '/storage/22-May-2022/images/1653197038-1639297938-Innovative-Spring-EarWax-Cleaner-Tool-Set.jpg', 'jpeg', 'image/jpeg', '46744', '2022-05-22 11:23:58', '2022-05-22 11:23:58'),
(58, '1625825854-Best-Manual-Ear-Hair-Trimmer-(3).jpg', 'public', '/storage/22-May-2022/images/1653197167-1625825854-Best-Manual-Ear-Hair-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '91674', '2022-05-22 11:26:07', '2022-05-22 11:26:07'),
(59, '1625825854-Best-Manual-Ear-Hair-Trimmer-(2).jpg', 'public', '/storage/22-May-2022/images/1653197167-1625825854-Best-Manual-Ear-Hair-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '51637', '2022-05-22 11:26:07', '2022-05-22 11:26:07'),
(60, '1625825855-Best-Manual-Ear-Hair-Trimmer-(4).jpg', 'public', '/storage/22-May-2022/images/1653197167-1625825855-Best-Manual-Ear-Hair-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '66158', '2022-05-22 11:26:07', '2022-05-22 11:26:07'),
(61, '1625825855-Best-Manual-Ear-Hair-Trimmer.jpeg', 'public', '/storage/22-May-2022/images/1653197167-1625825855-Best-Manual-Ear-Hair-Trimmer.jpeg', 'jpeg', 'image/jpeg', '84771', '2022-05-22 11:26:07', '2022-05-22 11:26:07'),
(62, '1625825856-Best-Manual-Ear-Hair-Trimmer.jpg', 'public', '/storage/22-May-2022/images/1653197167-1625825856-Best-Manual-Ear-Hair-Trimmer.jpg', 'jpeg', 'image/jpeg', '48481', '2022-05-22 11:26:07', '2022-05-22 11:26:07'),
(63, '1618493717-Leaf-Shape-Shop-Holder-(3).jpg', 'public', '/storage/22-May-2022/images/1653197332-1618493717-Leaf-Shape-Shop-Holder-(3).jpg', 'jpeg', 'image/jpeg', '59077', '2022-05-22 11:28:52', '2022-05-22 11:28:52'),
(64, '1618493717-Leaf-Shape-Shop-Holder-(2).jpg', 'public', '/storage/22-May-2022/images/1653197332-1618493717-Leaf-Shape-Shop-Holder-(2).jpg', 'jpeg', 'image/jpeg', '77095', '2022-05-22 11:28:52', '2022-05-22 11:28:52'),
(65, '1618493718-Leaf-Shape-Shop-Holder-(5).jpg', 'public', '/storage/22-May-2022/images/1653197332-1618493718-Leaf-Shape-Shop-Holder-(5).jpg', 'jpeg', 'image/jpeg', '58698', '2022-05-22 11:28:52', '2022-05-22 11:28:52'),
(66, '1618493718-Leaf-Shape-Shop-Holder-(4).jpg', 'public', '/storage/22-May-2022/images/1653197332-1618493718-Leaf-Shape-Shop-Holder-(4).jpg', 'jpeg', 'image/jpeg', '54175', '2022-05-22 11:28:52', '2022-05-22 11:28:52'),
(67, '1618493719-Leaf-Shape-Shop-Holder.jpg', 'public', '/storage/22-May-2022/images/1653197332-1618493719-Leaf-Shape-Shop-Holder.jpg', 'jpeg', 'image/jpeg', '70290', '2022-05-22 11:28:52', '2022-05-22 11:28:52'),
(68, '1618504763-USB-Lighting-Mosquito-Killer-Lamp-(3).jpg', 'public', '/storage/22-May-2022/images/1653197473-1618504763-USB-Lighting-Mosquito-Killer-Lamp-(3).jpg', 'jpeg', 'image/jpeg', '56967', '2022-05-22 11:31:13', '2022-05-22 11:31:13'),
(69, '1618504763-USB-Lighting-Mosquito-Killer-Lamp-(2).jpg', 'public', '/storage/22-May-2022/images/1653197473-1618504763-USB-Lighting-Mosquito-Killer-Lamp-(2).jpg', 'jpeg', 'image/jpeg', '60452', '2022-05-22 11:31:13', '2022-05-22 11:31:13'),
(70, '1618504764-USB-Lighting-Mosquito-Killer-Lamp-(4).jpg', 'public', '/storage/22-May-2022/images/1653197473-1618504764-USB-Lighting-Mosquito-Killer-Lamp-(4).jpg', 'jpeg', 'image/jpeg', '69050', '2022-05-22 11:31:13', '2022-05-22 11:31:13'),
(71, '1618504764-USB-Lighting-Mosquito-Killer-Lamp.jpg', 'public', '/storage/22-May-2022/images/1653197473-1618504764-USB-Lighting-Mosquito-Killer-Lamp.jpg', 'jpeg', 'image/jpeg', '63182', '2022-05-22 11:31:13', '2022-05-22 11:31:13'),
(72, '1618494037-Mobile-Stand-(2).jpg', 'public', '/storage/22-May-2022/images/1653197606-1618494037-Mobile-Stand-(2).jpg', 'jpeg', 'image/jpeg', '57808', '2022-05-22 11:33:26', '2022-05-22 11:33:26'),
(73, '1618494038-Mobile-Stand-(3).jpg', 'public', '/storage/22-May-2022/images/1653197606-1618494038-Mobile-Stand-(3).jpg', 'jpeg', 'image/jpeg', '65222', '2022-05-22 11:33:26', '2022-05-22 11:33:26'),
(74, '1618494038-Mobile-Stand-(5).jpg', 'public', '/storage/22-May-2022/images/1653197606-1618494038-Mobile-Stand-(5).jpg', 'jpeg', 'image/jpeg', '61527', '2022-05-22 11:33:26', '2022-05-22 11:33:26'),
(75, '1618494039-Mobile-Stand.jpg', 'public', '/storage/22-May-2022/images/1653197606-1618494039-Mobile-Stand.jpg', 'jpeg', 'image/jpeg', '51477', '2022-05-22 11:33:26', '2022-05-22 11:33:26'),
(76, '1617438807-03.jpg', 'public', '/storage/22-May-2022/images/1653197728-1617438807-03.jpg', 'jpeg', 'image/jpeg', '152935', '2022-05-22 11:35:28', '2022-05-22 11:35:28'),
(77, '1617438807-04.jpg', 'public', '/storage/22-May-2022/images/1653197728-1617438807-04.jpg', 'jpeg', 'image/jpeg', '155146', '2022-05-22 11:35:28', '2022-05-22 11:35:28'),
(78, '1619373536-Table-01.jpg', 'public', '/storage/22-May-2022/images/1653197728-1619373536-Table-01.jpg', 'jpeg', 'image/jpeg', '110826', '2022-05-22 11:35:28', '2022-05-22 11:35:28'),
(79, '020.jpg', 'public', '/storage/22-May-2022/images/1653197846-020.jpg', 'jpeg', 'image/jpeg', '101996', '2022-05-22 11:37:26', '2022-05-22 11:37:26'),
(80, '1605607168-Fast-Dry-Hair-Cap-(2).jpg', 'public', '/storage/22-May-2022/images/1653197860-1605607168-Fast-Dry-Hair-Cap-(2).jpg', 'jpeg', 'image/jpeg', '70272', '2022-05-22 11:37:40', '2022-05-22 11:37:40'),
(81, '1605607169-Fast-Dry-Hair-Cap-(3) (1).jpg', 'public', '/storage/22-May-2022/images/1653197860-1605607169-Fast-Dry-Hair-Cap-(3)-(1).jpg', 'jpeg', 'image/jpeg', '58866', '2022-05-22 11:37:40', '2022-05-22 11:37:40'),
(82, '1605607169-Fast-Dry-Hair-Cap-(3).jpg', 'public', '/storage/22-May-2022/images/1653197860-1605607169-Fast-Dry-Hair-Cap-(3).jpg', 'jpeg', 'image/jpeg', '58866', '2022-05-22 11:37:40', '2022-05-22 11:37:40'),
(83, '1605607170-Fast-Dry-Hair-Cap-(4)-copy.jpg', 'public', '/storage/22-May-2022/images/1653197860-1605607170-Fast-Dry-Hair-Cap-(4)-copy.jpg', 'jpeg', 'image/jpeg', '70009', '2022-05-22 11:37:40', '2022-05-22 11:37:40'),
(84, '1605523264-Miss-Belt-(3).jpg', 'public', '/storage/22-May-2022/images/1653197986-1605523264-Miss-Belt-(3).jpg', 'jpeg', 'image/jpeg', '58322', '2022-05-22 11:39:46', '2022-05-22 11:39:46'),
(85, '1605523264-Miss-Belt-(2).jpg', 'public', '/storage/22-May-2022/images/1653197986-1605523264-Miss-Belt-(2).jpg', 'jpeg', 'image/jpeg', '64291', '2022-05-22 11:39:46', '2022-05-22 11:39:46'),
(86, '1605523266-Miss-Belt-(4).jpg', 'public', '/storage/22-May-2022/images/1653197987-1605523266-Miss-Belt-(4).jpg', 'jpeg', 'image/jpeg', '58738', '2022-05-22 11:39:47', '2022-05-22 11:39:47'),
(87, '4b12936659cb0419a29d53016d74e44c.png', 'public', '/storage/24-May-2022/images/1653384586-4b12936659cb0419a29d53016d74e44c.png', 'png', 'image/png', '1334016', '2022-05-24 15:29:47', '2022-05-24 15:29:47'),
(88, '588ba63f84670c600eea3378977d1c4a.jpg', 'public', '/storage/24-May-2022/images/1653389671-588ba63f84670c600eea3378977d1c4a.jpg', 'jpeg', 'image/jpeg', '108591', '2022-05-24 16:54:31', '2022-05-24 16:54:31'),
(89, 'c3899990e8cbb5f8ec5e8b2c3bbcd016.jpg', 'public', '/storage/24-May-2022/images/1653389671-c3899990e8cbb5f8ec5e8b2c3bbcd016.jpg', 'jpeg', 'image/jpeg', '109242', '2022-05-24 16:54:31', '2022-05-24 16:54:31'),
(90, 'iron_nsb_8.jpg', 'public', '/storage/17-Sep-2022/images/1663384053-iron_nsb_8.jpg', 'jpeg', 'image/jpeg', '61472', '2022-09-17 09:07:34', '2022-09-17 09:07:34'),
(91, 'iron_nsb_1.jpg', 'public', '/storage/17-Sep-2022/images/1663384053-iron_nsb_1.jpg', 'jpeg', 'image/jpeg', '105807', '2022-09-17 09:07:34', '2022-09-17 09:07:34'),
(92, 'iron_nsb_965.jpg', 'public', '/storage/17-Sep-2022/images/1663384054-iron_nsb_965.jpg', 'jpeg', 'image/jpeg', '82459', '2022-09-17 09:07:34', '2022-09-17 09:07:34'),
(93, 'nojel01.jpg', 'public', '/storage/17-Sep-2022/images/1663407415-nojel01.jpg', 'jpeg', 'image/jpeg', '85152', '2022-09-17 15:36:55', '2022-09-17 15:36:55'),
(94, 'nojel02.jpg', 'public', '/storage/17-Sep-2022/images/1663407415-nojel02.jpg', 'jpeg', 'image/jpeg', '76586', '2022-09-17 15:36:55', '2022-09-17 15:36:55'),
(95, 'nojel03.jpg', 'public', '/storage/17-Sep-2022/images/1663407415-nojel03.jpg', 'jpeg', 'image/jpeg', '106863', '2022-09-17 15:36:56', '2022-09-17 15:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `img_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `image_product`
--

TRUNCATE TABLE `image_product`;
--
-- Dumping data for table `image_product`
--

INSERT INTO `image_product` (`id`, `image_id`, `product_id`, `img_type`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 'base', '2022-05-22 00:19:26', '2022-05-22 00:19:26'),
(2, 6, 1, 'additional', '2022-05-22 00:19:26', '2022-05-22 00:19:26'),
(3, 4, 1, 'additional', '2022-05-22 00:19:26', '2022-05-22 00:19:26'),
(4, 3, 1, 'additional', '2022-05-22 00:19:26', '2022-05-22 00:19:26'),
(5, 2, 1, 'additional', '2022-05-22 00:19:26', '2022-05-22 00:19:26'),
(6, 1, 1, 'additional', '2022-05-22 00:19:26', '2022-05-22 00:19:26'),
(8, 17, 2, 'base', '2022-05-22 08:19:18', '2022-05-22 08:19:18'),
(9, 22, 2, 'additional', '2022-05-22 08:19:18', '2022-05-22 08:19:18'),
(10, 21, 2, 'additional', '2022-05-22 08:19:18', '2022-05-22 08:19:18'),
(11, 20, 2, 'additional', '2022-05-22 08:19:18', '2022-05-22 08:19:18'),
(12, 19, 2, 'additional', '2022-05-22 08:19:18', '2022-05-22 08:19:18'),
(13, 18, 2, 'additional', '2022-05-22 08:19:18', '2022-05-22 08:19:18'),
(14, 15, 2, 'additional', '2022-05-22 08:19:18', '2022-05-22 08:19:18'),
(15, 16, 2, 'additional', '2022-05-22 08:19:18', '2022-05-22 08:19:18'),
(16, 24, 3, 'base', '2022-05-22 10:54:09', '2022-05-22 10:54:09'),
(17, 23, 3, 'additional', '2022-05-22 10:54:09', '2022-05-22 10:54:09'),
(18, 28, 4, 'base', '2022-05-22 10:58:41', '2022-05-22 10:58:41'),
(19, 27, 4, 'additional', '2022-05-22 10:58:41', '2022-05-22 10:58:41'),
(20, 26, 4, 'additional', '2022-05-22 10:58:41', '2022-05-22 10:58:41'),
(21, 25, 4, 'additional', '2022-05-22 10:58:41', '2022-05-22 10:58:41'),
(22, 32, 5, 'base', '2022-05-22 11:01:37', '2022-05-22 11:01:37'),
(23, 31, 5, 'additional', '2022-05-22 11:01:37', '2022-05-22 11:01:37'),
(24, 29, 5, 'additional', '2022-05-22 11:01:37', '2022-05-22 11:01:37'),
(25, 30, 5, 'additional', '2022-05-22 11:01:37', '2022-05-22 11:01:37'),
(26, 35, 6, 'base', '2022-05-22 11:07:56', '2022-05-22 11:07:56'),
(27, 34, 6, 'additional', '2022-05-22 11:07:56', '2022-05-22 11:07:56'),
(28, 33, 6, 'additional', '2022-05-22 11:07:56', '2022-05-22 11:07:56'),
(29, 38, 7, 'base', '2022-05-22 11:10:34', '2022-05-22 11:10:34'),
(30, 37, 7, 'additional', '2022-05-22 11:10:34', '2022-05-22 11:10:34'),
(31, 36, 7, 'additional', '2022-05-22 11:10:34', '2022-05-22 11:10:34'),
(32, 41, 8, 'base', '2022-05-22 11:13:08', '2022-05-22 11:13:08'),
(33, 42, 8, 'additional', '2022-05-22 11:13:08', '2022-05-22 11:13:08'),
(34, 40, 8, 'additional', '2022-05-22 11:13:08', '2022-05-22 11:13:08'),
(35, 39, 8, 'additional', '2022-05-22 11:13:08', '2022-05-22 11:13:08'),
(36, 45, 9, 'base', '2022-05-22 11:15:53', '2022-05-22 11:15:53'),
(37, 44, 9, 'additional', '2022-05-22 11:15:53', '2022-05-22 11:15:53'),
(38, 43, 9, 'additional', '2022-05-22 11:15:53', '2022-05-22 11:15:53'),
(39, 50, 10, 'base', '2022-05-22 11:18:39', '2022-05-22 11:18:39'),
(40, 49, 10, 'additional', '2022-05-22 11:18:39', '2022-05-22 11:18:39'),
(41, 48, 10, 'additional', '2022-05-22 11:18:39', '2022-05-22 11:18:39'),
(42, 47, 10, 'additional', '2022-05-22 11:18:39', '2022-05-22 11:18:39'),
(43, 46, 10, 'additional', '2022-05-22 11:18:39', '2022-05-22 11:18:39'),
(44, 54, 11, 'base', '2022-05-22 11:21:17', '2022-05-22 11:21:17'),
(45, 53, 11, 'additional', '2022-05-22 11:21:17', '2022-05-22 11:21:17'),
(46, 52, 11, 'additional', '2022-05-22 11:21:17', '2022-05-22 11:21:17'),
(47, 51, 11, 'additional', '2022-05-22 11:21:17', '2022-05-22 11:21:17'),
(48, 55, 12, 'base', '2022-05-22 11:23:22', '2022-05-22 11:23:22'),
(49, 57, 13, 'base', '2022-05-22 11:25:20', '2022-05-22 11:25:20'),
(50, 56, 13, 'additional', '2022-05-22 11:25:20', '2022-05-22 11:25:20'),
(51, 61, 14, 'base', '2022-05-22 11:27:20', '2022-05-22 11:27:20'),
(52, 62, 14, 'additional', '2022-05-22 11:27:20', '2022-05-22 11:27:20'),
(53, 60, 14, 'additional', '2022-05-22 11:27:20', '2022-05-22 11:27:20'),
(54, 58, 14, 'additional', '2022-05-22 11:27:20', '2022-05-22 11:27:20'),
(55, 59, 14, 'additional', '2022-05-22 11:27:20', '2022-05-22 11:27:20'),
(56, 67, 15, 'base', '2022-05-22 11:30:29', '2022-05-22 11:30:29'),
(57, 65, 15, 'additional', '2022-05-22 11:30:29', '2022-05-22 11:30:29'),
(58, 66, 15, 'additional', '2022-05-22 11:30:29', '2022-05-22 11:30:29'),
(59, 63, 15, 'additional', '2022-05-22 11:30:29', '2022-05-22 11:30:29'),
(60, 64, 15, 'additional', '2022-05-22 11:30:29', '2022-05-22 11:30:29'),
(61, 71, 16, 'base', '2022-05-22 11:32:35', '2022-05-22 11:32:35'),
(62, 70, 16, 'additional', '2022-05-22 11:32:35', '2022-05-22 11:32:35'),
(63, 68, 16, 'additional', '2022-05-22 11:32:35', '2022-05-22 11:32:35'),
(64, 69, 16, 'additional', '2022-05-22 11:32:35', '2022-05-22 11:32:35'),
(65, 75, 17, 'base', '2022-05-22 11:34:40', '2022-05-22 11:34:40'),
(66, 74, 17, 'additional', '2022-05-22 11:34:40', '2022-05-22 11:34:40'),
(67, 73, 17, 'additional', '2022-05-22 11:34:40', '2022-05-22 11:34:40'),
(68, 72, 17, 'additional', '2022-05-22 11:34:40', '2022-05-22 11:34:40'),
(69, 76, 18, 'base', '2022-05-22 11:36:50', '2022-05-22 11:36:50'),
(70, 78, 18, 'additional', '2022-05-22 11:36:50', '2022-05-22 11:36:50'),
(71, 77, 18, 'additional', '2022-05-22 11:36:50', '2022-05-22 11:36:50'),
(72, 80, 19, 'base', '2022-05-22 11:39:26', '2022-05-22 11:39:26'),
(73, 83, 19, 'additional', '2022-05-22 11:39:26', '2022-05-22 11:39:26'),
(74, 82, 19, 'additional', '2022-05-22 11:39:26', '2022-05-22 11:39:26'),
(75, 81, 19, 'additional', '2022-05-22 11:39:26', '2022-05-22 11:39:26'),
(76, 85, 20, 'base', '2022-05-22 11:41:11', '2022-05-22 11:41:11'),
(77, 86, 20, 'additional', '2022-05-22 11:41:11', '2022-05-22 11:41:11'),
(78, 84, 20, 'additional', '2022-05-22 11:41:11', '2022-05-22 11:41:11'),
(79, 87, 21, 'base', '2022-05-24 15:30:59', '2022-05-24 17:03:42'),
(80, 88, 22, 'base', '2022-05-24 16:56:25', '2022-05-24 16:56:25'),
(81, 89, 22, 'additional', '2022-05-24 16:56:25', '2022-05-24 16:56:25'),
(82, 90, 23, 'base', '2022-09-17 09:12:39', '2022-09-17 09:12:39'),
(83, 91, 23, 'additional', '2022-09-17 09:12:39', '2022-09-17 09:12:39'),
(84, 92, 23, 'additional', '2022-09-17 09:12:39', '2022-09-17 09:12:39'),
(85, 93, 24, 'base', '2022-09-17 15:38:35', '2022-09-17 15:38:35'),
(86, 95, 24, 'additional', '2022-09-17 15:38:35', '2022-09-17 15:38:35'),
(87, 94, 24, 'additional', '2022-09-17 15:38:35', '2022-09-17 15:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `jobs`
--

TRUNCATE TABLE `jobs`;
-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `menus`
--

TRUNCATE TABLE `menus`;
--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, '', 'header-menu', '2022-05-21 18:25:49', '2022-05-21 18:25:49'),
(2, '', 'topbar-menu', '2022-05-21 18:25:49', '2022-05-21 18:25:49'),
(3, '', 'quick-links', '2022-05-21 18:25:49', '2022-05-21 18:25:49');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `menu_items`
--

TRUNCATE TABLE `menu_items`;
--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `name`, `href`, `order`, `created_at`, `updated_at`) VALUES
(1, 1, 'Shop', 'shop', 1, '2022-05-21 18:30:43', '2022-05-21 18:30:43');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `migrations`
--

TRUNCATE TABLE `migrations`;
--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_09_05_055627_create_slides_table', 1),
(4, '2020_09_05_132720_create_categories_table', 1),
(5, '2020_09_05_142606_create_brands_table', 1),
(6, '2020_09_05_152538_create_products_table', 1),
(7, '2020_09_06_045904_create_category_product_table', 1),
(8, '2020_09_06_072209_create_images_table', 1),
(9, '2020_09_07_030004_create_image_product_table', 1),
(10, '2020_09_11_075847_create_orders_table', 1),
(11, '2020_09_12_141825_create_home_sections_table', 1),
(12, '2020_09_12_144701_create_category_home_section_table', 1),
(13, '2020_09_15_071443_create_menus_table', 1),
(14, '2020_09_15_071457_create_menu_items_table', 1),
(15, '2020_09_15_134905_create_pages_table', 1),
(16, '2020_09_16_105031_create_admins_table', 1),
(17, '2020_09_19_023502_create_password_resets_table', 1),
(18, '2020_09_19_062540_create_settings_table', 1),
(19, '2020_09_23_161808_create_jobs_table', 1),
(20, '2020_12_11_120455_create_category_menus_table', 1),
(21, '2022_01_26_122948_make_email_nullable_in_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`products`)),
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`data`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `orders`
--

TRUNCATE TABLE `orders`;
-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `pages`
--

TRUNCATE TABLE `pages`;
-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `password_resets`
--

TRUNCATE TABLE `password_resets`;
-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `selling_price` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `should_track` tinyint(1) NOT NULL DEFAULT 0,
  `stock_count` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `products`
--

TRUNCATE TABLE `products`;
--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `slug`, `description`, `price`, `selling_price`, `sku`, `should_track`, `stock_count`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, '3 in 1 Large Capacity Folding Travel Bag', '3-in-1-large-capacity-folding-travel-bag', '<p><span class=\"a-text-bold\">Features:</span><br />1.Large-capacity folding travel bag, the perfect carry-on compliant bag for airline travel!<br />2.You can carry it by hand or on the shoulder, or put it on the suitcase via the additional opening design as well!<br />3. Large-capacity and multi-pocket design can meet all travel needs and better manage items.<br />4. The wet and dry separation bag can also hold sweaty clothes and towels.<br /><br /><span class=\"a-text-bold\">Specifications:</span><br />Material: Oxford cloth + polyester<br />Weight: 0.4KG<br /><br /><span class=\"a-text-bold\">Product Size:</span><br />Folding Dimension: 28cm/11.02in x 4cm/1.57in x 18cm/7.08in<br />Unfolding Dimension: 42cm/16.53in x 22cm/8.66in x 28cm/11.02in<br />Expansion Dimension: 42cm/16.53in x 22cm/8.66in x 38cm/14.96in<br /><br /><span class=\"a-text-bold\">Package include:</span><br />1 Pc * Large Capacity Folding Travel Bag</p>', 1290, 990, '1001', 0, 50, 1, '2022-05-22 00:19:26', '2022-05-22 00:19:26'),
(2, 1, 'LCD Writing Tablet 8.5 Inch', 'lcd-writing-tablet-85-inch', '<ul class=\"a-unordered-list a-vertical a-spacing-mini\">\r\n<li><span class=\"a-list-item\">SAFETY and HIGH-TECH SCREEN - This Writing pad adopt advanced 8.5 inches LCD screen, there is no radiation and safe to use. Larger screen and brighter color, which can let the children display their incomparable imagination and enjoy</span></li>\r\n<li><span class=\"a-list-item\">ADVANCED TECHNOLOGY - Adopting the newest LCD pressure-sensitive technology, This version of screen has been widely praised. It\'s a simple alternative to pen and paper. You can use Attached stylus or other plastic pens to write and draw, just like writing on the paper.</span></li>\r\n<li><span class=\"a-list-item\">LOCK and ERASE BUTTONS -The electronic tablet has a lock function. Use the lock function to switch the Lock button to the right to avoid accidental erasure. Switching the \"Lock\" button to the left will enable a one-press \"Erase\" button To Erase the content.</span></li>\r\n<li><span class=\"a-list-item\">PORTABLE -The 8.5-inch size of the drawing board would make it easy to be taken out everywhere. Kids love to scribble and sketch. Additional Battery available at each box.</span></li>\r\n<li><span class=\"a-list-item\">FLEXIBLE HANDWRITING -The screen is smooth which promotes soft writing or drawing. Enjoy the drawing, painting, alphabet writing, spell words anytime without making any mess on the ground or wall. A great way to save paper and the environment.</span></li>\r\n</ul>', 590, 490, '1002', 0, 0, 1, '2022-05-22 08:16:38', '2022-05-22 08:16:38'),
(3, 1, 'HD Zoomies Sunglass', 'hd-zoomies-sunglass', '<p>১.এটি একটি Zoomies Sunglass যার দ্বারা আপনি সহজেই দূরের জিনিস বড় করে দেখতে পারবেন।&nbsp;<br />2.কনসার্ট ,থিয়েটার শো এবং সমস্ত স্টেডিয়াম খেলা দেখার জন্য পারফেক্ট।<br />৩.এটি সানগ্লাস হওয়ায় হাতে নিয়ে দেখতে হবে না।<br />৩.খুব সহজেই বহন করতে পারবেন।<br />৪.হ্যান্ডস-ফ্রি হওয়াতে &nbsp;মাছ ধরা ও অন্যান্য অনেক কাজে খুব সহজেই ব্যবহার করতে পারবেন।</p>', 999, 799, '1003', 0, 0, 1, '2022-05-22 10:54:09', '2022-05-22 10:54:09'),
(4, 1, 'Aluminium Portable Laptop Stand', 'aluminium-portable-laptop-stand', '<p>ল্যাপটপ স্ট্যান্ড<br />আপনার সুবিধা মত ছোট-বড় করতে পারবেন। যার ফলে ল্যাপটপের দিকে দৃষ্টিকোণ চেঞ্জ করতে পারবেন। ফলে আপনার আর ঘাড় বা মাজা ব্যথা হবে না<br />ল্যাপটপ স্ট্যান্ড ব্যবহারের ফলে ল্যাপটপের কুলিং সিস্টেম ভালো থাকে। গরম হওয়া খুব সহজেই বের হয়ে যায়। যার ফলে ল্যাপটপের ব্যাটারি দীর্ঘদিন ভালো থাকে<br />খুবই হালকা এবং মজবুত যা সহজে বহনযোগ্য<br />আপনার শখের ল্যাপটপটি ভালো রাখতে ব্যবহার করুন ল্যাপটপ স্ট্যান্ড।</p>', 1050, 799, '1004', 0, 0, 1, '2022-05-22 10:58:41', '2022-05-22 10:58:41'),
(5, 1, '2 in 1 Electric blower with vacuum Cleaners', '2-in-1-electric-blower-with-vacuum-cleaners', '<p>1. ব্লোয়ার-মেশিন দিয়ে সব ধরণের ধুলা বালি পরিষ্কার করা যায় ।<br />2. পোর্টেবল হ্যান্ড এয়ার ব্লোয়ার ।<br />3. কম্পিউটার ডাস্ট রিমুভার।<br />4. ঘরের আসবাবপত্র পরিষ্কার করা যায় ।<br />5. যেকোন ইলেক্ট্রনিক্স যন্ত্রপাতি পরিষ্কার করা যায় ।</p>', 1450, 1190, '1005', 0, 0, 1, '2022-05-22 11:01:37', '2022-05-22 11:01:37'),
(6, 1, 'Capsule Cutter Juice Blender', 'capsule-cutter-juice-blender', '<p>Product specifications] ? power consumption: 200 W<br />rated voltage: 100V 50 / 60 Hz<br />size: width 11.6 x depth 11.6 x 23.3 cm (height)<br />weight:1.04kg<br />Guide: up to approx. 200 g (Cup MAX line before)<br />material<br />body: ABS plastic<br />Cover: Triton<br />Cup: Triton<br />Blade: stainless steel</p>', 1590, 1190, '105', 0, 0, 1, '2022-05-22 11:07:56', '2022-05-22 11:07:56'),
(7, 1, 'SQ11, FULL HD 1080P mini ক্যামেরা', 'sq11-full-hd-1080p-mini-ক্যামেরা', '<div dir=\"auto\">Model: SQ11</div>\r\n<div dir=\"auto\">Night Vission</div>\r\n<div dir=\"auto\">Video format: AVI</div>\r\n<div dir=\"auto\">Video resolution ratio: 1920 x 1080P, 1280 x 720P</div>\r\n<div dir=\"auto\">Image proportion: 30</div>\r\n<div dir=\"auto\">Video coding: M-JPEG</div>\r\n<div dir=\"auto\">Support 32GB TF card max. (not included)</div>\r\n<div dir=\"auto\">TF card Class Rating Requirements: Class 10 or Above</div>\r\n<div dir=\"auto\">Support system: Windows ME / 2000 / XP / 2003 / Vista, Mac OS, Linux</div>\r\n<div dir=\"auto\">Battery capacity: 200mAh</div>\r\n<div dir=\"auto\">Working time: About 100 minutes at 1080P 30fps</div>\r\n<div dir=\"auto\">Charging time: About 2-3 hours</div>\r\n<div dir=\"auto\">Charging voltage: DC- 5V</div>\r\n<div dir=\"auto\">Interface type: Mini 8 pin USB</div>\r\n<div dir=\"auto\">Storage suport: 32gb TF card</div>\r\n<div dir=\"auto\">Camera lens size: 3mm</div>', 1550, 1250, '1006', 0, 0, 1, '2022-05-22 11:10:34', '2022-05-22 11:10:34'),
(8, 1, 'Mosquito Repellent Coil Holder', 'mosquito-repellent-coil-holder', '<div dir=\"auto\">\r\n<p>100% সেইভটি এবং সিকিউর</p>\r\n<p>বাসা,অফিস ইনডোর,আউটডোর সব জায়গায় ব্যাবহারের উপযোগী</p>\r\n<p>ছোট বাচ্চাদের থেকে নিরাপদ&nbsp;</p>\r\n<p>ঘরের যে কোন জায়গায় ব্যাবহার করা যায়।</p>\r\n</div>', 750, 650, '1007', 0, 0, 1, '2022-05-22 11:13:08', '2022-05-22 11:13:08'),
(9, 1, 'Baby Rocker Chair with Musical Toy Bar & Vibrations- Pink', 'baby-rocker-chair-with-musical-toy-bar-and-vibrations-pink', '<div dir=\"auto\">\r\n<p>100% সেইভটি এবং সিকিউর</p>\r\n<p>বাসা,অফিস ইনডোর,আউটডোর সব জায়গায় ব্যাবহারের উপযোগী</p>\r\n<p>ছোট বাচ্চাদের থেকে নিরাপদ&nbsp;</p>\r\n<p>ঘরের যে কোন জায়গায় ব্যাবহার করা যায়।</p>\r\n<p>&nbsp;</p>\r\n<ul class=\"\">\r\n<li class=\"\">Reclining cradle seat for feedingor napping</li>\r\n<li class=\"\">Secure, three-point restraint</li>\r\n<li class=\"\">Calming vibrations help soothe baby</li>\r\n<li class=\"\">Toys &amp; musical caterpillar stimulate baby&rsquo;ssenses</li>\r\n<li class=\"\">Toy bar easily removes for older babies to sit andplay</li>\r\n<li class=\"\">Itbecomesatoddlerrockingchair asyourchildgrows</li>\r\n<li class=\"\">Easytocleanwithitsmachinewashablepad</li>\r\n<li class=\"\">Weight limit 18kg</li>\r\n</ul>\r\n</div>', 4500, 3920, '1008', 0, 0, 1, '2022-05-22 11:15:53', '2022-05-22 11:15:53'),
(10, 1, '16 in 1 Bike Pocket Repair Tools Set', '16-in-1-bike-pocket-repair-tools-set', '<div dir=\"auto\">\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/tb9/1/16/1f6e0.png\" alt=\"🛠️\" width=\"16\" height=\"16\" />প্রযুক্তির এই&nbsp;<span class=\"sf5mxxl7 nvdbi5me oygrvhab ditlmg2l kvgmc6g5 knj5qynh tbxw36s4 pq6dq46d\">&zwj;</span>যুগে আমরা দ্রুত যাতায়াত করার জন্য কম বেশী সবাই মটর সাইকেল বা বাইসাইকেল ড্রাইভ করে থাকি।</span></div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\">&nbsp; &nbsp; চলার পথে অনেক সময় গাড়ীর যান্তিক ত্রুটি হয়। তখন ভোগান্তি সম্মীখুন হই ।</span></div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\">&nbsp; &nbsp; এই ভোগান্তির সহজ সমাধান, মটর সাইকেল বা বাইসাইকেল পকেট রিপেয়ার টুলস সেট।</span></div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\">&nbsp; &nbsp; এই পকেট রিপেয়ার টুলস সেট সহজে বহন যোগ্য হওয়ায় আপনার যাতায়াত এর সময় পকেটে নিয়ে রাখতে পারেন</span></div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\">&nbsp; &nbsp; এবং বিপদে আপনার চলার সঙ্গী হয়ে থাকবে।</span></div>\r\n<div dir=\"auto\">&nbsp;</div>\r\n<div dir=\"auto\">&nbsp; Multi-Functional Tool Kit</div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t52/1/16/1f527.png\" alt=\"🔧\" width=\"16\" height=\"16\" /></span><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t82/1/16/1fa9b.png\" alt=\"🪛\" width=\"16\" height=\"16\" /></span>&nbsp;3 Nut Tools :: 8/10/15mm</div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t82/1/16/1fa9b.png\" alt=\"🪛\" width=\"16\" height=\"16\" /></span>&nbsp;3 Socket Hex Wrench :8/9/10mm</div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t82/1/16/1fa9b.png\" alt=\"🪛\" width=\"16\" height=\"16\" /></span>&nbsp;6Hex (Allen) Key : 2/2.5/3/4/5/6mm</div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t82/1/16/1fa9b.png\" alt=\"🪛\" width=\"16\" height=\"16\" /></span>&nbsp;15 in 1 Multi-Functional Repair Tool</div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t82/1/16/1fa9b.png\" alt=\"🪛\" width=\"16\" height=\"16\" /></span>&nbsp;High quality and Brand New</div>\r\n<div dir=\"auto\"><span class=\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\"><img src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/t82/1/16/1fa9b.png\" alt=\"🪛\" width=\"16\" height=\"16\" /></span>&nbsp;Easy to Carry And Store</div>\r\n</div>', 580, 350, '1009', 0, 0, 1, '2022-05-22 11:18:39', '2022-05-22 11:18:39'),
(11, 1, 'Full Finger Pro-Biker Hand gloves', 'full-finger-pro-biker-hand-gloves', '<p>পণ্যের বিবরনঃ&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br />&gt; ব্র্যান্ড:Pro-Biker<br />&gt; জেনুইন ডিউর<span class=\"sf5mxxl7 nvdbi5me oygrvhab ditlmg2l kvgmc6g5 knj5qynh tbxw36s4 pq6dq46d\">&zwj;</span>্যাবল ম্যাটেরিয়াল ডিজাইন<br />&gt; TPR ফিঙ্গার আরমর ফর কম্ফোরট্যাবিলিটি এন্ড ফ্লেক্সিবল প্রোটেকশন<br />&gt; আন ব্রেক্যাবল কাঙ্কেল প্রোটেকশন<br />&gt; হিট এন্ড টিয়ার রেজিস্ট্যান্স<br />&gt; ওয়াটার ডার্ট এন্ড ওয়েল রেপিল্যান্ট<br />&gt; কালার: র<span class=\"sf5mxxl7 nvdbi5me oygrvhab ditlmg2l kvgmc6g5 knj5qynh tbxw36s4 pq6dq46d\">&zwj;</span>্যান্ডম।</p>', 900, 500, '1010', 0, 0, 1, '2022-05-22 11:21:17', '2022-05-22 11:21:17'),
(12, 1, 'Sunglass & Hand gloves Combo', 'sunglass-and-hand-gloves-combo', '<p>পণ্যের বিবরনঃ&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br />&gt; ব্র্যান্ড:Melitary Hand gloves<br />&gt; জেনুইন ডিউর<span class=\"sf5mxxl7 nvdbi5me oygrvhab ditlmg2l kvgmc6g5 knj5qynh tbxw36s4 pq6dq46d\">&zwj;</span>্যাবল ম্যাটেরিয়াল ডিজাইন<br />&gt; TPR ফিঙ্গার আরমর ফর কম্ফোরট্যাবিলিটি এন্ড ফ্লেক্সিবল প্রোটেকশন<br />&gt; আন ব্রেক্যাবল কাঙ্কেল প্রোটেকশন<br />&gt; হিট এন্ড টিয়ার রেজিস্ট্যান্স<br />&gt; ওয়াটার ডার্ট এন্ড ওয়েল রেপিল্যান্ট<br />&gt; কালার: র<span class=\"sf5mxxl7 nvdbi5me oygrvhab ditlmg2l kvgmc6g5 knj5qynh tbxw36s4 pq6dq46d\">&zwj;</span>্যান্ডম।</p>\r\n<p>&gt;সাথে থাকছে সানগ্লাস ২টি,হ্যান্ড&nbsp; গ্লভস্ ১ জোড়া যে কোন কালারের।<br />&gt;&nbsp; সানগ্লাসটি যে কোন ফে্ইস এ এগজাস্টটেবল।<br />&gt; ১টি দিনের জন্য,আর ১টি রাতের জন্য।<br />&gt; কালার: ২টি</p>\r\n<p>&nbsp;</p>', 1250, 1050, '1011', 0, 0, 1, '2022-05-22 11:23:22', '2022-05-22 11:23:22'),
(13, 1, 'Ear Cleaner Tool Set (কান পরিস্কার করার টুলস্)', 'ear-cleaner-tool-set-কান-পরিস্কার-করার-টুলস্', '<p>কান পরিস্কার করার চমৎকার টুলস্</p>\r\n<p>এক সাথে 6পিছ</p>\r\n<p>কান পরিস্কার ছাড়াও প্রয়োজনীয় অনেক কাজে ব্যাবহার করা য়ায।</p>', 650, 390, '1012', 0, 0, 1, '2022-05-22 11:25:20', '2022-05-22 11:25:20'),
(14, 1, 'Best Manual Ear Hair Trimmer', 'best-manual-ear-hair-trimmer', '<ul>\r\n<li>Stainless steel material, sharp precision design, durable,can be used continuously for tens of thousands of times.</li>\r\n<li>&nbsp;</li>\r\n<li>No batteries required. Take it and use it anywhere.</li>\r\n<li>&nbsp;</li>\r\n<li>Safe &amp; painless, cutting blades never come in contact with skin.</li>\r\n<li>&nbsp;</li>\r\n<li>Mechanical, can be operated by one handed manual quickly and simply.</li>\r\n<li>&nbsp;</li>\r\n<li>Includes brush to clean tool,easy to clean.</li>\r\n</ul>', 750, 490, '1013', 0, 0, 1, '2022-05-22 11:27:20', '2022-05-22 11:27:20'),
(15, 1, 'Leaf Shape Shop Holder (1Pcs)', 'leaf-shape-shop-holder-1pcs', '<ul>\r\n<li>১০০% ব্র্যান্ড-নতুন এবং উচ্চ মানের।</li>\r\n<li>&nbsp;</li>\r\n<li>পিপি প্লাস্টিক, টেকসই এবং পরিবেশ বান্ধব</li>\r\n<li>&nbsp;</li>\r\n<li>পারিবারিক ব্যবহারের জন্য খুব সহায়ক একটি সাবান বক্স</li>\r\n<li>&nbsp;</li>\r\n<li>বাথরুম এবং রান্নাঘরের ব্যবহারের জন্য সুবিধাজনক এবং পরি পাটি সজ্জা</li>\r\n<li>&nbsp;</li>\r\n<li>সহজ শৈলী, কেতাদুরস্ত এবং উদার।</li>\r\n<li>&nbsp;</li>\r\n<li>বাসানোর জন্য নীচে কাপ আছে তাই সহজে স্লাইড হবে না</li>\r\n<li>&nbsp;</li>\r\n</ul>', 550, 390, '1014', 0, 0, 1, '2022-05-22 11:30:29', '2022-05-22 11:30:29'),
(16, 1, 'USB Lighting Mosquito Killer Lamp', 'usb-lighting-mosquito-killer-lamp', '<ul>\r\n<li>মশার যন্ত্রনা? ব্যবহার করুন এ গ্যাজেটটি। মশা মরবেই।</li>\r\n<li>&nbsp;</li>\r\n<li>USB ইলেকট্রনিক Mosquito কিলার এর সাহায্যে এখন মশার হাত থেকে বাঁচুন,</li>\r\n<li>&nbsp;</li>\r\n<li>মশা ছাড়াও অন্যান্য পোকামাকড় ধ্বংস করে,</li>\r\n<li>&nbsp;</li>\r\n<li>কোনো রাসায়নিক ধোঁয়া বা গন্ধ নেই; তাই মানব শরীরের জন্য ক্ষতিকর নয়,</li>\r\n<li>&nbsp;</li>\r\n<li>একটি শক্তিশালী আলোর সাহায্যে পতঙ্গকে আকৃষ্ট করে এবং ধ্বংস করে দেয়।</li>\r\n<li>&nbsp;</li>\r\n</ul>', 1100, 750, '1015', 0, 0, 1, '2022-05-22 11:32:35', '2022-05-22 11:32:35'),
(17, 1, 'Mobile Stand (1Pcs)', 'mobile-stand-1pcs', '<ul>\r\n<li>স্টাইলিশ মানুষদের জন্য আমরা নিয়ে এসেছি স্মার্ট ও ইউনিক ডিজাইনের Foldable Desktop Mobile Stand.</li>\r\n<li>&nbsp;</li>\r\n<li>এখন আয়েশ করে দেখা যাবে মুভি, নাটক, গান, ভিডিও ইত্যাদি।</li>\r\n<li>&nbsp;</li>\r\n<li>ফোল্ডিং ডেক্সটপ মোবাইল স্ট্যান্ড এটি ব্যাবহারে মোবাইল হ্যাং হবে না।</li>\r\n<li>&nbsp;</li>\r\n<li>অফিসে ,পড়ার টেবিল বা বিছানায় সবখানে মানান সই।</li>\r\n<li>&nbsp;</li>\r\n<li>মোবাইল ও ট্যাব খুব সহজে ব্যবহার করতে পারবেন।</li>\r\n<li>&nbsp;</li>\r\n<li>এটি ফোল্ডিং তাই সহজে বহনযোগ্য।খুবই মজবুদ ও দীর্ঘস্থায়ী।</li>\r\n<li>&nbsp;</li>\r\n<li>মুভি বা ভিডিও কলে কথা বলতে পারবেন ক্লান্তি ছাড়া !</li>\r\n<li>&nbsp;</li>\r\n<li>এটির নিচের অংশ ফাঁকা তাই চার্জে লাগিয়ে কথা বলতে পারবেন।</li>\r\n<li>&nbsp;</li>\r\n</ul>', 620, 390, '1016', 0, 0, 1, '2022-05-22 11:34:40', '2022-05-22 11:34:40'),
(18, 1, 'Multi function Folding Laptop Table', 'multi-function-folding-laptop-table', '<ul>\r\n<li>Color: Black, Wood, Green, Blue, Red</li>\r\n<li>Materials: Ply Wood &amp; Metal</li>\r\n<li>Size: 60/40/28cm</li>\r\n<li>Quality : High quality</li>\r\n<li>Use: Home, Bedroom, Sofa, Table, School, Office.</li>\r\n<li>&nbsp;</li>\r\n</ul>', 1220, 990, '1017', 0, 0, 1, '2022-05-22 11:36:50', '2022-05-22 11:36:50'),
(19, 1, 'Fast hair dryer towel', 'fast-hair-dryer-towel', '<ul>\r\n<li>ম্যাজিক ফাস্ট হেয়ার ড্রায় ওয়ার ক্যাপ<br />মাএ 3/4 মিনিটের মধ্যেই আপনার ভেজা চুল শুকানোর জন্য ( বাংলার ফ্যাশন ঘর) বাজারে নিয়ে আসলো সুলভ মূল্যে<br />নরম কাপড়ের তৈরী।<br />সহজেই ধৌত করা যায় ।</li>\r\n</ul>', 450, 390, '1018', 0, 0, 1, '2022-05-22 11:39:26', '2022-05-22 11:39:26'),
(20, 1, 'Miss Belt', 'miss-belt', '<ul>\r\n<li>\r\n<div class=\"product-details-text\">&gt;স্লিমিং বেল্ট বডি শেপার</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;দেহের অতিরিক্ত ওজন কমাতে ব্যবহার করুন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;সকলের মাঝে নিজেকে আকর্ষণীয় করে তুলতে ব্যবহার করুন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;পুরুষ/মহিলা সবাই ব্যবহার করতে পারেন</div>\r\n</li>\r\n</ul>', 600, 450, '1019', 0, 0, 1, '2022-05-22 11:41:11', '2022-05-22 11:41:11'),
(21, 1, 'Pocket Umbrella (Capsule)', 'pocket-umbrella-capsule', '<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"d44h4-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"d44h4-0-0\"><span data-offset-key=\"d44h4-0-0\">Capsule Umbrella ☂️☂️</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"928ie-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"928ie-0-0\"><span data-offset-key=\"928ie-0-0\">হঠাৎ বৃষ্টি বা রোদ?</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"5pfe8-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"5pfe8-0-0\"><span data-offset-key=\"5pfe8-0-0\">কোন অসুবিধা নাই, ছাতা থাকবে এবার আপনার পকেটে! এটা সাইজে ছোট ও ওজনে হালকা বলে সহজেই বহনযোগ্য, মজবুত ও টেকসই।</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"bpa8u-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"bpa8u-0-0\"><span data-offset-key=\"bpa8u-0-0\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"3i6l7-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"3i6l7-0-0\"><span data-offset-key=\"3i6l7-0-0\">Capsule Umbrella কেন কিনবেন?</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"asmb5-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"asmb5-0-0\"><span data-offset-key=\"asmb5-0-0\">🎀অধিকাংশ ক্ষেত্রে বহন করার ভয়ে আমরা ছাতা ব্যবহার থেকে বিরত থাকি। এটা সাইজে ছোট ও ওজনে হালকা বলে সহজেই বহনযোগ্য। যেকোনো ব্যাগ,পকেট বা হাতে সহজেই বহন করা যায়। </span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"bo2d6-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"bo2d6-0-0\"><span data-offset-key=\"bo2d6-0-0\">🎀এই ছাতা মিনি ফোল্ডিং পকেট ছাতা।</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"1j84m-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"1j84m-0-0\"><span data-offset-key=\"1j84m-0-0\">🎀সম্পূর্ণরূপে নিবিড় কালো ভিনাইল লেপ দিয়ে তাপ ও কঠোর UV রশ্মিকে ব্লক করে।</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"8amci-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"8amci-0-0\"><span data-offset-key=\"8amci-0-0\">🎀রোদ - বৃষ্টিতে সমানভাবে কাজ করে।</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"c7kl-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"c7kl-0-0\"><span data-offset-key=\"c7kl-0-0\">🎀সাইজ: ৭ ইঞ্চি</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"bbjo8-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"bbjo8-0-0\"><span data-offset-key=\"bbjo8-0-0\">🎀 ভাজযোগ্য</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"1uacj-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"1uacj-0-0\"><span data-offset-key=\"1uacj-0-0\">🎀কমপ্যাক্ট ডিজাইন সহজেই আপনার ব্যাগ বা পকেটে সংরক্ষণ করা যায়।</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"19erl-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"19erl-0-0\"><span data-offset-key=\"19erl-0-0\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"5hccp-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"5hccp-0-0\"><span data-offset-key=\"5hccp-0-0\">Color: Multi Color</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"fcq8r-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"fcq8r-0-0\"><span data-offset-key=\"fcq8r-0-0\">Type: 3 Fold Umbrella</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"5hbib-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"5hbib-0-0\"><span data-offset-key=\"5hbib-0-0\">Size: 20\" Long</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"eln4s-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"eln4s-0-0\"><span data-offset-key=\"eln4s-0-0\">Foldable Size: 7\"</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"gjhd-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"gjhd-0-0\"><span data-offset-key=\"gjhd-0-0\">Fabric: Parachute</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"cv131\" data-offset-key=\"fa56g-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"fa56g-0-0\"><span data-offset-key=\"fa56g-0-0\">Origin: China</span></div>\r\n</div>', 990, 650, '130', 0, 0, 1, '2022-05-24 15:30:59', '2022-05-24 17:03:42'),
(22, 1, 'Wall Mounted Kitchen Dispenser', 'wall-mounted-kitchen-dispenser', '<div class=\"\" data-block=\"true\" data-editor=\"fedd4\" data-offset-key=\"3atfq-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"3atfq-0-0\"><span data-offset-key=\"3atfq-0-0\">রান্নাঘর ছোট হলে সুন্দর করে গুছিয়ে রাখাটা কিছুটা হলেও কস্টকর। আর সেজন্যই এই প্রোডাক্টের প্রয়োজনীয়তা অনেক বেশি।</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"fedd4\" data-offset-key=\"csliu-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"csliu-0-0\"><span data-offset-key=\"csliu-0-0\">10L Wall Mounted Separate Rice Bucket Cereal Dispenser Moisture Proof Plastic Automatic Racks Sealed Metering Food Storage Box</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"fedd4\" data-offset-key=\"1ro4u-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"1ro4u-0-0\"><span data-offset-key=\"1ro4u-0-0\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"fedd4\" data-offset-key=\"ike4-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"ike4-0-0\"><span data-offset-key=\"ike4-0-0\">Material: PP</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"fedd4\" data-offset-key=\"6fc9d-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"6fc9d-0-0\"><span data-offset-key=\"6fc9d-0-0\">Capacity: 10L</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"fedd4\" data-offset-key=\"2ed07-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"2ed07-0-0\"><span data-offset-key=\"2ed07-0-0\">Size: 38*32.4*14.4cm</span></div>\r\n</div>', 2150, 1750, '131', 0, 0, 1, '2022-05-24 16:56:25', '2022-05-24 16:56:25'),
(23, 1, 'হ্যান্ডেল ট্র্যাভেল স্টিমার - দ্রুততম সময়ে আয়রনের জন্য ব্যবহার করুন', 'Iron Steamer Handheld Mini Garment Steamer', '<p>Electric Clothes Iron Steamer Handheld Mini Garment Steamer Machine Portable Wet Dry Steam Iron Ironing Machine For Home Travel</p>\r\n<p>◾ হ্যান্ডেল ট্র্যাভেল স্টিমার আয়রন অতি সহজে, দ্রুততম সময়ে আয়রনের জন্য ব্যবহার করুন steam Iron.</p>\r\n<p>◾ বিদ্যুৎ সাশ্রয়ী, স্বল্প সময়ে স্টিম এর সাহায্যে আয়রন করতে পারবেন।</p>\r\n<p>◾ শার্ট, প্যান্ট, শাড়ি ও প্রয়োজনীয় দৈনন্দিন ব্যবহারের কাপড় আয়রন করতে পারবেন। ব্যাবহার করা খুবই সহজ। তাই এখনি আপনার জন্য Handle Travel Steamer Ironটি সংগ্রহ করুন।</p>\r\n<p>◾ যারা ভ্রমন প্রিয় ও অফিসের কাজে বাহিরে যেতে হয় তাদের জন&zwj;্য বেস্ট।</p>\r\n<p>◾ আর যেহেতু Vacuum সিস্টেম তাই কাপড় নষ্ট হওয়ার ভয় থাকে না।</p>\r\n<p>◾ Portable Steam Garments Iron Material: ABS+Metal Power: 30W Size: 18cm**8cm**8.4cm Temperature: 150&deg;C Water Capacity: 60ml Colour: Green Weight: 0.4kg Iron+Straw Cover+Water</p>', 1330, 1090, '000452', 0, 0, 1, '2022-09-17 09:12:39', '2022-09-17 09:12:39'),
(24, 1, 'High pressure car washing spray gun', 'high-pressure-car-washing-spray-gun', '<p>হাই প্রেসার কার ওয়াশিং স্প্রে গান এর সাহায্যে আপনি বাইক/কার/ট্রাক/বাস/পিকাপ এবং ট্রাক্টর সহ যাবতীয় জিনিস খুব সহজেই পরিষ্কার করতে পারবেন । এছাড়া ফসলের জমিতে ওষুধ ছিটানো, বাগানে ওষুধ দেয়ার কাজে ব্যবহার করতে পারবেন । যে কোন সাধারণ পানির লাইনের সাথে সেট করে দিলে আপনি পেয়ে যাবেন অধিক গতিসম্পন্ন পানির স্পীড । যার ফলে যেকোনো ময়লা গাড়ি এবং মোটরসাইকেলের কোনায় কোনায় থেকে পরিষ্কার করে। আপনি নজেল ঘুরিয়ে আপনি পানি ছিটানোর ধরন পরিবর্তন করতে পারবেন।</p>', 990, 790, '521425', 0, 0, 1, '2022-09-17 15:38:35', '2022-09-17 15:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`value`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `settings`
--

TRUNCATE TABLE `settings`;
--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'logo', '{\"favicon\":\"\\/storage\\/22-May-2022\\/logo\\/1653157258-bongofly-icon.png\",\"desktop\":\"\\/storage\\/22-May-2022\\/logo\\/1653157258-bongofly-logo.png\",\"mobile\":\"\\/storage\\/22-May-2022\\/logo\\/1653157258-bongofly-logo.png\"}', '2022-05-21 18:25:45', '2022-05-22 00:20:58'),
(2, 'company', '{\"name\":\"Bongofly\",\"email\":\"info@bongofly.com\",\"phone\":\"01780149849\",\"tagline\":\"Lowest price for best products!\",\"address\":\"Dhaka, Bangladesh.\"}', '2022-05-21 18:25:45', '2022-09-17 09:16:07'),
(3, 'social', '{\"facebook\":{\"link\":\"#\"},\"twitter\":{\"link\":null},\"instagram\":{\"link\":null},\"youtube\":{\"link\":\"#\"}}', '2022-05-21 18:25:45', '2022-05-22 00:23:56'),
(4, 'related_products', '{\"rows\":\"3\",\"cols\":\"5\"}', '2022-05-21 18:25:45', '2022-05-21 18:29:16'),
(5, 'products_page', '{\"rows\":\"5\",\"cols\":\"5\"}', '2022-05-21 18:25:45', '2022-05-22 00:23:56'),
(6, 'call_for_order', '\"01780-149849\"', '2022-05-21 18:25:45', '2022-09-17 09:16:07'),
(7, 'delivery_charge', '{\"inside_dhaka\":\"60\",\"outside_dhaka\":\"130\"}', '2022-05-21 18:29:16', '2022-05-22 00:23:56'),
(8, 'delivery_text', '\"<div class=\\\"cxmmr5t8 oygrvhab hcukyx3x c1et5uql o9v6fnle ii04i59q\\\">\\r\\n<div dir=\\\"auto\\\"><span class=\\\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\\\"><img src=\\\"https:\\/\\/static.xx.fbcdn.net\\/images\\/emoji.php\\/v9\\/t6f\\/1.5\\/16\\/1f69a.png\\\" alt=\\\"\\ud83d\\ude9a\\\" width=\\\"16\\\" height=\\\"16\\\" \\/><\\/span> \\u09a1\\u09c7\\u09b2\\u09bf\\u09ad\\u09be\\u09b0\\u09bf \\u09aa\\u09a6\\u09cd\\u09a7\\u09a4\\u09bf-<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"cxmmr5t8 oygrvhab hcukyx3x c1et5uql o9v6fnle ii04i59q\\\">\\r\\n<div dir=\\\"auto\\\"><span class=\\\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\\\"><img src=\\\"https:\\/\\/static.xx.fbcdn.net\\/images\\/emoji.php\\/v9\\/t39\\/1.5\\/16\\/1f3d9.png\\\" alt=\\\"\\ud83c\\udfd9\\ufe0f\\\" width=\\\"16\\\" height=\\\"16\\\" \\/><\\/span> \\u09a2\\u09be\\u0995\\u09be\\u09b0 \\u09ae\\u09a7\\u09cd\\u09af\\u09c7\\u0983 \\u09b9\\u09cb\\u09ae \\u09a1\\u09c7\\u09b2\\u09bf\\u09ad\\u09be\\u09b0\\u09bf\\u0964<\\/div>\\r\\n<div dir=\\\"auto\\\">\\u09aa\\u09a3\\u09cd\\u09af \\u09b9\\u09be\\u09a4\\u09c7 \\u09aa\\u09be\\u09ac\\u09be\\u09b0 \\u09aa\\u09b0 \\u09a6\\u09be\\u09ae \\u09aa\\u09b0\\u09bf\\u09b6\\u09cb\\u09a7 \\u0995\\u09b0\\u09c1\\u09a8\\u0964<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"cxmmr5t8 oygrvhab hcukyx3x c1et5uql o9v6fnle ii04i59q\\\">\\r\\n<div dir=\\\"auto\\\"><span class=\\\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\\\"><img src=\\\"https:\\/\\/static.xx.fbcdn.net\\/images\\/emoji.php\\/v9\\/td0\\/1.5\\/16\\/1f3e1.png\\\" alt=\\\"\\ud83c\\udfe1\\\" width=\\\"16\\\" height=\\\"16\\\" \\/><\\/span> \\u09a2\\u09be\\u0995\\u09be\\u09b0 \\u09ac\\u09be\\u0987\\u09b0\\u09c7\\u0983 \\u0995\\u09a8\\u09cd\\u09a1\\u09bf\\u09b6\\u09a8\\u09be\\u09b2 \\u0995\\u09c1\\u09b0\\u09bf\\u09df\\u09be\\u09b0\\u0964<\\/div>\\r\\n<div dir=\\\"auto\\\">\\u0995\\u09c1\\u09b0\\u09bf\\u09df\\u09be\\u09b0 \\u09b8\\u09be\\u09b0\\u09cd\\u09ad\\u09bf\\u09b8\\u09c7\\u09b0 \\u09ae\\u09be\\u09a7\\u09cd\\u09af\\u09ae\\u09c7 \\u0986\\u09ae\\u09b0\\u09be \\u0986\\u09aa\\u09a8\\u09be\\u0995\\u09c7 \\u09aa\\u09a3\\u09cd\\u09af \\u09aa\\u09be\\u09a0\\u09be\\u09ac\\u09cb\\u0964 \\u09a1\\u09c7\\u09b2\\u09bf\\u09ad\\u09be\\u09b0\\u09bf \\u09ae\\u09cd\\u09af\\u09be\\u09a8 \\u0986\\u09aa\\u09a8\\u09be\\u0995\\u09c7 \\u0995\\u09b2 \\u0995\\u09b0\\u09c7 \\u0986\\u09aa\\u09a8\\u09be\\u09b0 \\u0995\\u09be\\u099b\\u09c7 \\u09aa\\u09a3\\u09cd\\u09af \\u09aa\\u09cc\\u099b\\u09c7 \\u09a6\\u09bf\\u09ac\\u09c7\\u0964 \\u09aa\\u09a3\\u09cd\\u09af \\u09b9\\u09be\\u09a4\\u09c7 \\u09aa\\u09be\\u09ac\\u09be\\u09b0 \\u09aa\\u09b0 \\u09a6\\u09be\\u09ae \\u09aa\\u09b0\\u09bf\\u09b6\\u09cb\\u09a7 \\u0995\\u09b0\\u09c1\\u09a8\\u0964<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"cxmmr5t8 oygrvhab hcukyx3x c1et5uql o9v6fnle ii04i59q\\\">\\r\\n<div dir=\\\"auto\\\"><span class=\\\"pq6dq46d tbxw36s4 knj5qynh kvgmc6g5 ditlmg2l oygrvhab nvdbi5me sf5mxxl7 gl3lb2sf hhz5lgdu\\\"><img src=\\\"https:\\/\\/static.xx.fbcdn.net\\/images\\/emoji.php\\/v9\\/tb3\\/1.5\\/16\\/1f4b0.png\\\" alt=\\\"\\ud83d\\udcb0\\\" width=\\\"16\\\" height=\\\"16\\\" \\/><\\/span> \\u09a1\\u09c7\\u09b2\\u09bf\\u09ad\\u09be\\u09b0\\u09c0 \\u099a\\u09be\\u09b0\\u09cd\\u099c-<\\/div>\\r\\n<div dir=\\\"auto\\\">\\u09a2\\u09be\\u0995\\u09be\\u09b0 \\u09ae\\u09a7\\u09cd\\u09af\\u09c7\\u0983 60 \\u099f\\u09be\\u0995\\u09be<\\/div>\\r\\n<div dir=\\\"auto\\\">\\u09a2\\u09be\\u0995\\u09be\\u09b0 \\u09ac\\u09be\\u0987\\u09b0\\u09c7\\u0983 130 \\u099f\\u09be\\u0995\\u09be\\u0964<\\/div>\\r\\n<\\/div>\"', '2022-05-21 18:29:16', '2022-05-22 00:23:56'),
(9, 'services', '{\"one\":{\"title\":\"Fast Delivery\",\"detail\":null},\"two\":{\"title\":\"24 HelpLIne\",\"detail\":null},\"three\":{\"title\":\"Secure Payments\",\"detail\":null},\"four\":{\"title\":\"Exclusive Offer\",\"detail\":null}}', '2022-05-21 18:29:16', '2022-05-22 00:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desktop_src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_href` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `slides`
--

TRUNCATE TABLE `slides`;
--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `mobile_src`, `desktop_src`, `title`, `text`, `btn_name`, `btn_href`, `is_active`, `created_at`, `updated_at`) VALUES
(4, '/storage/22-May-2022/slides/mobile/1653194583-banner.png', '/storage/22-May-2022/slides/desktop/1653194583-banner.png', NULL, NULL, NULL, NULL, 1, '2022-05-22 10:43:03', '2022-05-22 10:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `address`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cyber 32', NULL, '+8801611369000', '89 BOUNDARY ROAD, CIRCLE-10', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-22 00:53:41', '2022-05-22 00:53:41'),
(2, 'আফজাল হোসেন', NULL, '+8801680994620', 'বাড়ি-৪৮, রোড-১২, সেক্টর -১০, উত্তরা', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-22 17:59:36', '2022-05-22 17:59:36'),
(3, 'Ananto', NULL, '+8801861753399', 'Bandarban sadar, Bandarban', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-22 18:33:38', '2022-05-22 18:33:38'),
(4, 'অভিজিৎ', NULL, '+8801767638538', 'সাতক্ষীরা, কালিগঞ্জ,', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-22 18:40:40', '2022-05-22 18:40:40'),
(5, 'Selim Hossain', NULL, '+8801734008479', 'Sonapur, Maijdee, Noakhali', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-22 19:47:22', '2022-05-22 19:47:22'),
(6, 'Bir  Muktijuddha Nripesh Ranjan Sarker', NULL, '+8801912909676', '106/1 Kali Bari Road (Ex Uposham Hospital ,Patgudam) Mymensingh.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-22 22:09:47', '2022-05-22 22:09:47'),
(7, 'Imran Rasheed', NULL, '+8801614116806', 'Rasheed manzil house no 121 Dargagate Sylhet 3100', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-23 11:59:17', '2022-05-23 11:59:17'),
(8, 'Abul Hashem', NULL, '+8801613442211', '43 C, Road-2, Uttar Khulsi, Chittagong.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-23 14:47:40', '2022-05-23 14:47:40'),
(9, 'Mizan Hossain', NULL, '+8801736420456', 'Ruppur, Iswardi, Pabna', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-23 16:00:08', '2022-05-23 16:00:08'),
(10, 'Chowdhury Nazim Ahmed', NULL, '+8801717130867', 'Garden Tower,3113,Sylhet', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-23 16:04:09', '2022-05-23 16:04:09'),
(11, 'Milan chakma', NULL, '+8801556576006', 'MadhuPur,Khagra Chari District  \r\nDadar Khagra Chari', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-23 20:08:31', '2022-05-23 20:08:31'),
(12, 'Md mazbah uddin', NULL, '+8801819453292', 'ATI keranigong dhaka', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-23 20:20:15', '2022-05-23 20:20:15'),
(13, 'Md,.Belal Hossain', NULL, '+8801762800129', 'Modern More, Dinajpur', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-23 21:55:20', '2022-05-23 21:55:20'),
(14, 'MD sohel', NULL, '+8801755040624', 'Road 94 house 3 Gulshan 2', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 00:23:13', '2022-05-24 00:23:13'),
(15, 'miss belt', NULL, '+8801715753353', 'mirpur kustia', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 02:36:11', '2022-05-24 02:36:11'),
(16, 'Samsu Miah 01712156959', NULL, '+8801712156959', 'Green view 69a housing estate Amborkhana sylhet Near masjid', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 09:12:40', '2022-05-24 09:12:40'),
(17, 'Saiful Islam', NULL, '+8801964059484', 'N,A, Traditional, Lal bazar, Sylhet', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 10:36:06', '2022-05-24 10:36:06'),
(18, 'মামুন', NULL, '+8801973162389', '14,C-01,Rupayan Town,Bhuigor,Fatulla,Narayanganj.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 16:53:25', '2022-05-24 16:53:25'),
(19, 'Md Mithun Mithun', NULL, '+8801914202433', 'Munshiganj Sadar', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 18:06:50', '2022-05-24 18:06:50'),
(20, 'Md Fazaur Ali', NULL, '+8801916619547', 'Kotalipara. Gopalgonj.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 19:19:19', '2022-05-24 19:19:19'),
(21, 'Md omar faruk', NULL, '+8801756129497', 'Citagon mohori fara', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 20:17:39', '2022-05-24 20:17:39'),
(22, 'অনিকা মুসলিম', NULL, '+8801706132796', 'সেক হাটি বাজার', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 21:05:11', '2022-05-24 21:05:11'),
(23, 'md aman ullah', NULL, '+8801813698806', '944/1523 jafar tower Bahaddarhat Panchlaish Chattogram', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 22:18:57', '2022-05-24 22:18:57'),
(24, 'Tonni islam', NULL, '+8801709777496', 'Kamolgonj thana mulovibazar', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 22:33:33', '2022-05-24 22:33:33'),
(25, 'Md.Nazmul Hossain', NULL, '+8801733892687', 'Noyapara kashimpur gazipur', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 23:44:02', '2022-05-24 23:44:02'),
(26, 'পলাশ', NULL, '+8801822372153', 'নোয়াখালী কোম্পানিগঞ্জ চাপরাশির হাট', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-24 23:49:38', '2022-05-24 23:49:38'),
(27, 'ফরহাদ', NULL, '+8801771626222', 'গ্রাম=গোপালপুর  থানা =নবিনগর  জেলা=বি-বাড়ীয়া। গোপালপুর হাসপালের সামনে বিসমিল্লাহ ভ্যারাইটিজ ষ্টোর আমার দোকান।', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 00:07:21', '2022-05-25 00:07:21'),
(28, 'মো জুবায়ের', NULL, '+8801752908039', 'নোয়াখালী, সেনবাগ রাস্তার মাথা, মহিদীপুর', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 00:45:27', '2022-05-25 00:45:27'),
(29, 'সাইফুল', NULL, '+8801845663701', 'চৌমুনী চৌরাস্তা মাইজদী নোয়াখালী', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 00:56:17', '2022-05-25 00:56:17'),
(30, 'মোহাম্মদ মোবারক হোসেন', NULL, '+8801834618596', 'মরিয়ম মঞ্জিল নুর পাড়া এন্ডারসন রোড উত্তর পৌরসভা কক্সবাজার সদর', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 01:34:02', '2022-05-25 01:34:02'),
(31, 'নুরে আলম', NULL, '+8801711071762', 'রমজান টেলিকম কাঁচপুর পুলিশ ফাঁড়ির সাথে সোনার গাঁও নারায়ণগঞ্জ', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 02:28:26', '2022-05-25 02:28:26'),
(32, 'Md Nazmul Hawlader', NULL, '+8801957061052', 'সীমাখালী বাজার মাগুরা', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 09:07:13', '2022-05-25 09:07:13'),
(33, 'Md Fazaur Ali', NULL, '+8801313412160', 'সখিপুর, দেবহাটা, সাতক্ষীরা।', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 12:07:35', '2022-05-25 12:07:35'),
(34, 'Md. Mubarak Hossain', NULL, '+8801318018608', 'Moriam Manjil, Nur Para, Angerson Road, Uttar 3 No. Word, Pourasava, Coxs Bazar.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 12:23:06', '2022-05-25 12:23:06'),
(35, 'Jiyor Rahman', NULL, '+8801842452245', 'Holiday Mor, Coxs Bazar', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 12:47:46', '2022-05-25 12:47:46'),
(36, 'Jahidul karim', NULL, '+8801979823655', '36 no, Munshipara, 2nd Gali, Khulna sadar', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 12:50:02', '2022-05-25 12:50:02'),
(37, 'Abul Kashem', NULL, '+8801746287064', 'Jogonnathpur, Sonamganj', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 12:51:42', '2022-05-25 12:51:42'),
(38, 'Khandaker Mohiuddin Mohiuddin', NULL, '+8801819212783', '45/2/A dilu road moghbazar. Dhaka', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 13:05:57', '2022-05-25 13:05:57'),
(39, 'আজমীর হোসেন আখির', NULL, '+8801625097580', '50/f inner circular VIP road naya paltan Dhaka 1000', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 13:25:16', '2022-05-25 13:25:16'),
(40, 'Md.Murshed', NULL, '+8801815113776', 'Gunagari,Banskhali,Chittagong.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 15:20:37', '2022-05-25 15:20:37'),
(41, 'কামরুল হাসান', NULL, '+8801998448345', 'Narayangonj  chasara', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 15:41:01', '2022-05-25 15:41:01'),
(42, 'Titu', NULL, '+8801712690054', 'Kalapania, Sandwip, Chittagong', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 15:50:32', '2022-05-25 15:50:32'),
(43, 'Rajib Miazi', NULL, '+8801834974472', 'Mohakhali  warless gate gp cha 27/6 monwara kotrez', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 16:03:02', '2022-05-25 16:03:02'),
(44, 'Md karim khan', NULL, '+8801815185027', 'padma oil company limited chatragram\r\nBangladesh', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 16:15:45', '2022-05-25 16:15:45'),
(45, 'মোঃ জসীম', NULL, '+8801758129229', 'Alom market.karanegong', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 16:39:15', '2022-05-25 16:39:15'),
(46, 'Qamrul islam Madani', NULL, '+8801819183535', '#HOUSE 14 F BLOCK. GAET NO 8 ARAM BAG MIR PUR SECTION 7', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 16:57:53', '2022-05-25 16:57:53'),
(47, 'Oyes ahmed', NULL, '+8801749577365', 'Puler muk derai bazar sunamgonj', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 19:31:45', '2022-05-25 19:31:45'),
(48, 'জয়া আবেদিন লতা', NULL, '+8801610675908', 'গাজীপুর মাস্টার বাড়ি থেকে কাউলতিয়া', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 19:35:24', '2022-05-25 19:35:24'),
(49, 'মোফাজ্জলহুসেন', NULL, '+8801406152877', 'বড়বাজার কিশোরগন্জ', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 20:26:39', '2022-05-25 20:26:39'),
(50, 'মোঃ জাহিদুল ইসলাম', NULL, '+8801716475014', 'Fair service road,  RHD officers quarter,  Patuakhali.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 21:01:05', '2022-05-25 21:01:05'),
(51, 'মামুন', NULL, '+8801839939089', 'কটিয়াদীতে', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 22:24:45', '2022-05-25 22:24:45'),
(52, 'Md.Azhar Uddin', NULL, '+8801909091976', '32,Muncefpara , Brahmanbaria(sadar)\r\n(মিরুন কালার ও হলুদ কালার)', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-25 23:15:51', '2022-05-25 23:15:51'),
(53, 'Shah Amir Ali', NULL, '+8801740922837', 'Kali bari Road Habiganj 3300', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 00:24:58', '2022-05-26 00:24:58'),
(54, 'Hussen Mahmud', NULL, '+8801765361962', '39, West World Shopping City, Zindabazar, Sylhet', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 02:06:09', '2022-05-26 02:06:09'),
(55, 'MD. LUTFOR RHAMAN', NULL, '+8801711022982', 'KISHORGONJ  TARIAL OPOJELA', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 06:26:18', '2022-05-26 06:26:18'),
(56, 'MD Reaz uddin Reaz', NULL, '+8801820226126', 'Passport office . Chandpur sadar.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 07:56:40', '2022-05-26 07:56:40'),
(57, 'jashim', NULL, '+8801886214023', 'sattar khan complex,Cumilla sadar ,kandirpar.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 09:30:06', '2022-05-26 09:30:06'),
(58, 'Monirul Islam', NULL, '+8801741687768', 'Nupur enterprise.dewan bazar.Bijoy Nagar.b baria', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 11:25:22', '2022-05-26 11:25:22'),
(59, 'Fayzur rahman', NULL, '+8801759140166', 'Durlabpur moluvibazar', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 11:32:20', '2022-05-26 11:32:20'),
(60, 'Suhel Ahmed', NULL, '+8801726659615', 'Modina Market, Sylhet', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 12:40:31', '2022-05-26 12:40:31'),
(61, 'Md. Yakub Hossain Biswas', NULL, '+8801718469735', '20/C, MONESHWAR ROAD Zigatola, Dhaka-1209', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 13:47:39', '2022-05-26 13:47:39'),
(62, 'sayed', NULL, '+8801721250790', 'savar new market,savar', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 14:01:38', '2022-05-26 14:01:38'),
(63, 'Noor Mohammad SUZA', NULL, '+8801711102855', 'Sonartoari abason juiltoli Faridpur', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 15:38:59', '2022-05-26 15:38:59'),
(64, 'মিজানুর রহমান', NULL, '+8801672969621', 'Razia Towe. Kallyanpur', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 15:48:23', '2022-05-26 15:48:23'),
(65, 'MD RIFAT AL ASAD', NULL, '+8801916032050', 'Rifan House, 8/3/A, North Bashabo, Dosh er mor, Mitha Goli Club er pashe, Dhaka-1214', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 17:14:05', '2022-05-26 17:14:05'),
(66, 'Md. Murshed', NULL, '+8801712451243', 'Srimongol Sadar', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 17:56:44', '2022-05-26 17:56:44'),
(67, 'Sahin Rupa', NULL, '+8801710046215', 'Domar.Nilphamari', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 17:57:41', '2022-05-26 17:57:41'),
(68, 'Md, Shahidul Islam', NULL, '+8801721891302', 'Ashuliya noroshinhopur, Amin bazar 1no gate,', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 18:16:30', '2022-05-26 18:16:30'),
(69, 'Test 32', NULL, '+8801783110247', 'Latifpur, Mirzapur, Tangail, Dhaka-BD.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 18:29:21', '2022-05-26 18:29:21'),
(70, 'Md safiqul Islam safique', NULL, '+8801712292637', 'Arab ali member bari road Diabari uttara, sec 15, Dhaka', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 18:34:48', '2022-05-26 18:34:48'),
(71, 'Milton khandakar', NULL, '+8801887165612', 'Jhenidah sadar', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 19:52:51', '2022-05-26 19:52:51'),
(72, 'sayek alam', NULL, '+8801711345133', 'bagbari, chhatak, sunamgong.', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 20:38:46', '2022-05-26 20:38:46'),
(73, 'Roquibul Hassan', NULL, '+8801876009422', 'Herapur, dagonbhuyai, feni', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 20:39:00', '2022-05-26 20:39:00'),
(74, 'nafiz hossain', NULL, '+8801940060699', 'west narisha dohar dhaka', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 21:39:08', '2022-05-26 21:39:08'),
(75, 'shiponp sarker', NULL, '+8801799337775', 'sakhipur.  Tangail Totall 700taka', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 22:24:14', '2022-05-26 22:24:14'),
(76, 'sumon', NULL, '+8801724259522', 'jhinaidaha souilkupa sheikhpara', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 22:58:21', '2022-05-26 22:58:21'),
(77, 'Md robiiul', NULL, '+8801755290141', 'Banglabandha Tetulia ponchogor', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-26 23:01:50', '2022-05-26 23:01:50'),
(78, 'Md. Biplob', NULL, '+8801889731835', 'Jirani Bazar, Mannan Collage', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-27 14:36:40', '2022-05-27 14:36:40'),
(79, 'Abdullah Al Munsor', NULL, '+8801775198912', 'Shahjadpur Bus Stand, Dhaka', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-27 14:41:28', '2022-05-27 14:41:28'),
(80, 'Roman Sharif', NULL, '+8801961147733', 'Sheikhpur Bazar, Mosjid Road, Shibchar, Madaripur', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-29 14:54:28', '2022-05-29 14:54:28'),
(81, 'Ridoy', NULL, '+8801304963141', 'Mirpur 10 Sanpara', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-05-29 16:15:04', '2022-05-29 16:15:04'),
(82, 'আতাউর', NULL, '+8801731922432', 'ভেলাবাড়ী, আদিতমারী, লালমনির হাট।', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-06-20 19:11:22', '2022-06-20 19:11:22'),
(83, 'Test', NULL, '+8801712209979', 'Test', NULL, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2022-09-17 13:41:33', '2022-09-17 13:41:33');

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
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `category_home_section`
--
ALTER TABLE `category_home_section`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_home_section_category_id_foreign` (`category_id`),
  ADD KEY `category_home_section_home_section_id_foreign` (`home_section_id`);

--
-- Indexes for table `category_menus`
--
ALTER TABLE `category_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_menus_parent_id_foreign` (`parent_id`),
  ADD KEY `category_menus_category_id_foreign` (`category_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sections`
--
ALTER TABLE `home_sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image_product_image_id_foreign` (`image_id`),
  ADD KEY `image_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_home_section`
--
ALTER TABLE `category_home_section`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_menus`
--
ALTER TABLE `category_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_home_section`
--
ALTER TABLE `category_home_section`
  ADD CONSTRAINT `category_home_section_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_home_section_home_section_id_foreign` FOREIGN KEY (`home_section_id`) REFERENCES `home_sections` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_menus`
--
ALTER TABLE `category_menus`
  ADD CONSTRAINT `category_menus_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `category_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `image_product_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `image_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
