-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 25, 2022 at 02:13 AM
-- Server version: 10.5.16-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u636182416_bsb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Sumon Ahmed', 'support@cyber32.com', NULL, '$2y$10$dhXsT0C7CzTEknwESsGc1ekBDhBbnZwEX7i1vtKdF95ff7hAM4fk6', '2DFssPndrNWbQj7Er8a5f4HWxpYtg3TCfjc8Im08kluNYcGTTCYOT61c7cQi', '2020-09-18 09:56:58', '2020-10-19 11:19:12'),
(2, 'Bsbazar Admin', 'bsbazarbd@gmail.com', NULL, '$2y$10$7oVYr.RSWYZV7A261jfetOK9oaTmwlpFhpH2dlPHpd7/e7iuSdyli', '2DFssPndrNWbQj7Er8a5f4HWxpYtg3TCfjc8Im08kluNYcGTTCYOT61c7cQi', '2020-09-18 09:56:58', '2020-10-19 22:24:17');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(23, 'None', 'none', '2020-10-20 02:42:32', '2020-10-20 02:42:32'),
(24, 'Best way', 'best-way', '2020-10-20 04:08:53', '2020-10-20 04:08:53'),
(25, 'AFK', 'afk', '2020-10-22 02:26:37', '2020-10-22 02:26:37'),
(26, 'Kemei', 'kemei', '2020-10-26 01:05:07', '2020-10-26 01:05:07'),
(27, 'Jeep', 'jeep', '2020-10-26 02:17:31', '2020-10-26 02:17:31'),
(28, 'Haodier', '-haodier', '2020-10-26 02:20:25', '2020-10-26 02:20:25'),
(29, 'Pro-Biker', 'pro-biker', '2020-10-26 02:32:21', '2020-10-26 02:32:21'),
(30, 'China Nokia', 'china-nokia', '2020-10-26 07:48:11', '2020-10-26 07:48:11'),
(31, 'HTC', 'htc', '2020-10-28 00:23:53', '2020-10-28 00:23:53'),
(32, 'duoya', 'duoya', '2020-11-12 07:48:50', '2020-11-12 07:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, 3, 'Prof. Norene Rempel', 'aperiam-et-natus-esse-vitae-molestiae', '2020-09-15 08:17:18', '2020-09-15 08:55:21'),
(6, 2, 'yy', 'yy', '2020-09-15 08:17:18', '2020-10-18 03:29:37'),
(7, 3, 'Carleton Hoeger', 'suscipit-qui-dignissimos-magnam-sapiente', '2020-09-15 08:17:18', '2020-09-15 21:32:54'),
(8, 3, 'Katelyn Quigley I', 'soluta-nostrum-corrupti-est-maxime-voluptatem-placeat-doloribus', '2020-09-15 08:17:18', '2020-09-15 21:33:11'),
(32, 31, 'Motor', 'motor', '2020-09-28 08:53:04', '2020-09-28 08:53:04'),
(34, 33, 'Mens Collection', 'mens-collection', '2020-10-13 07:18:55', '2020-10-13 07:18:55'),
(35, 2, 'eryer', 'eryer', '2020-10-18 03:28:41', '2020-10-18 03:28:41'),
(36, NULL, 'Home Appliance', 'home-appliance', '2020-10-20 02:37:26', '2020-10-20 02:38:52'),
(37, 36, 'Kitchen & Dinning', 'kitchen-and-dinning', '2020-10-20 02:39:50', '2020-10-20 02:39:50'),
(38, NULL, 'Gadget & Electronics', 'gadget-and-electronics', '2020-10-20 02:41:35', '2020-10-20 02:41:35'),
(39, 38, 'Speaker', 'speaker', '2020-10-20 02:42:02', '2020-10-20 02:42:02'),
(40, NULL, 'Health & Beauty', 'health-and-beauity', '2020-10-22 01:55:34', '2020-10-22 01:55:34'),
(41, NULL, 'Man\'s Fashion', 'man\'s-fashion', '2020-10-25 07:20:12', '2020-10-25 07:20:12'),
(42, 41, 'Shaver & Trimmer', 'shaver-and-trimmer', '2020-10-25 07:20:51', '2020-10-25 07:20:51'),
(43, 41, 'Watch', 'watch', '2020-10-25 07:22:14', '2020-10-25 07:22:14'),
(44, 41, 'Bag', 'bag', '2020-10-26 02:11:30', '2020-10-26 02:11:30'),
(45, NULL, 'Mobile & Computer Accessories', 'mobile-and-computer-accessories', '2020-10-26 02:24:32', '2020-10-26 02:24:32'),
(47, NULL, 'Woman Fashion', 'woman-fashion', '2020-11-12 07:43:44', '2020-11-12 07:43:44'),
(48, 47, 'Ladis Watch', 'ladis-watch', '2020-11-12 07:44:49', '2020-11-12 07:44:49'),
(49, NULL, 'Baby & Kids', 'baby-and-kids', '2020-11-17 04:29:12', '2020-11-17 04:29:12');

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
(1, 2, 2, NULL, NULL),
(4, 11, 3, NULL, NULL),
(5, 28, 3, NULL, NULL),
(6, 2, 4, NULL, NULL),
(7, 3, 4, NULL, NULL),
(8, 5, 4, NULL, NULL),
(9, 6, 5, NULL, NULL),
(10, 1, 5, NULL, NULL),
(11, 12, 5, NULL, NULL),
(12, 36, 6, NULL, NULL),
(13, 37, 6, NULL, NULL),
(14, 38, 6, NULL, NULL),
(15, 39, 6, NULL, NULL),
(16, 40, 6, NULL, NULL);

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
(300, 2, 91, NULL, NULL),
(304, 5, 91, NULL, NULL),
(305, 6, 93, NULL, NULL),
(306, 22, 93, NULL, NULL),
(307, 10, 94, NULL, NULL),
(308, 12, 94, NULL, NULL),
(309, 22, 94, NULL, NULL),
(310, 26, 94, NULL, NULL),
(311, 2, 95, NULL, NULL),
(312, 29, 95, NULL, NULL),
(313, 10, 96, NULL, NULL),
(314, 11, 96, NULL, NULL),
(315, 13, 96, NULL, NULL),
(316, 16, 96, NULL, NULL),
(317, 22, 97, NULL, NULL),
(318, 23, 97, NULL, NULL),
(319, 30, 97, NULL, NULL),
(320, 9, 98, NULL, NULL),
(321, 12, 98, NULL, NULL),
(322, 1, 99, NULL, NULL),
(323, 8, 99, NULL, NULL),
(324, 20, 99, NULL, NULL),
(325, 24, 99, NULL, NULL),
(326, 1, 100, NULL, NULL),
(327, 4, 100, NULL, NULL),
(328, 23, 100, NULL, NULL),
(329, 30, 100, NULL, NULL),
(330, 1, 101, NULL, NULL),
(331, 12, 101, NULL, NULL),
(332, 24, 101, NULL, NULL),
(333, 5, 102, NULL, NULL),
(334, 9, 102, NULL, NULL),
(335, 18, 102, NULL, NULL),
(336, 27, 102, NULL, NULL),
(337, 5, 103, NULL, NULL),
(338, 6, 103, NULL, NULL),
(339, 11, 103, NULL, NULL),
(340, 12, 103, NULL, NULL),
(341, 15, 104, NULL, NULL),
(342, 26, 104, NULL, NULL),
(343, 27, 104, NULL, NULL),
(344, 5, 105, NULL, NULL),
(345, 19, 105, NULL, NULL),
(346, 30, 105, NULL, NULL),
(347, 17, 106, NULL, NULL),
(348, 29, 106, NULL, NULL),
(349, 30, 106, NULL, NULL),
(350, 2, 107, NULL, NULL),
(351, 5, 107, NULL, NULL),
(352, 23, 107, NULL, NULL),
(353, 14, 108, NULL, NULL),
(354, 15, 108, NULL, NULL),
(355, 2, 109, NULL, NULL),
(356, 7, 109, NULL, NULL),
(357, 8, 109, NULL, NULL),
(358, 20, 109, NULL, NULL),
(359, 2, 110, NULL, NULL),
(360, 16, 110, NULL, NULL),
(361, 24, 110, NULL, NULL),
(362, 16, 111, NULL, NULL),
(363, 20, 111, NULL, NULL),
(364, 24, 111, NULL, NULL),
(365, 29, 111, NULL, NULL),
(366, 5, 112, NULL, NULL),
(367, 9, 112, NULL, NULL),
(368, 10, 112, NULL, NULL),
(369, 29, 112, NULL, NULL),
(370, 4, 113, NULL, NULL),
(371, 6, 113, NULL, NULL),
(372, 7, 114, NULL, NULL),
(373, 11, 114, NULL, NULL),
(374, 18, 114, NULL, NULL),
(375, 5, 115, NULL, NULL),
(376, 6, 115, NULL, NULL),
(377, 23, 115, NULL, NULL),
(378, 25, 116, NULL, NULL),
(379, 27, 116, NULL, NULL),
(380, 28, 116, NULL, NULL),
(381, 30, 116, NULL, NULL),
(382, 9, 117, NULL, NULL),
(383, 12, 117, NULL, NULL),
(384, 17, 117, NULL, NULL),
(385, 2, 118, NULL, NULL),
(386, 7, 118, NULL, NULL),
(387, 18, 118, NULL, NULL),
(388, 3, 119, NULL, NULL),
(389, 11, 119, NULL, NULL),
(390, 22, 119, NULL, NULL),
(391, 23, 119, NULL, NULL),
(392, 10, 120, NULL, NULL),
(393, 11, 120, NULL, NULL),
(394, 26, 120, NULL, NULL),
(395, 19, 121, NULL, NULL),
(396, 26, 121, NULL, NULL),
(397, 2, 122, NULL, NULL),
(398, 20, 122, NULL, NULL),
(399, 21, 122, NULL, NULL),
(400, 30, 122, NULL, NULL),
(401, 8, 123, NULL, NULL),
(402, 23, 123, NULL, NULL),
(403, 28, 123, NULL, NULL),
(404, 7, 124, NULL, NULL),
(405, 15, 124, NULL, NULL),
(406, 6, 125, NULL, NULL),
(407, 11, 125, NULL, NULL),
(408, 12, 125, NULL, NULL),
(409, 21, 125, NULL, NULL),
(410, 3, 126, NULL, NULL),
(411, 11, 126, NULL, NULL),
(412, 22, 126, NULL, NULL),
(413, 25, 127, NULL, NULL),
(414, 28, 127, NULL, NULL),
(415, 24, 128, NULL, NULL),
(416, 28, 128, NULL, NULL),
(417, 30, 128, NULL, NULL),
(418, 8, 129, NULL, NULL),
(419, 23, 129, NULL, NULL),
(420, 7, 130, NULL, NULL),
(421, 16, 130, NULL, NULL),
(422, 20, 130, NULL, NULL),
(423, 13, 131, NULL, NULL),
(424, 15, 131, NULL, NULL),
(425, 21, 132, NULL, NULL),
(426, 27, 132, NULL, NULL),
(427, 8, 133, NULL, NULL),
(428, 27, 133, NULL, NULL),
(429, 28, 133, NULL, NULL),
(430, 9, 134, NULL, NULL),
(431, 13, 134, NULL, NULL),
(432, 15, 134, NULL, NULL),
(433, 7, 105, NULL, NULL),
(434, 8, 105, NULL, NULL),
(435, 9, 105, NULL, NULL),
(436, 2, 137, NULL, NULL),
(437, 36, 138, NULL, NULL),
(438, 37, 138, NULL, NULL),
(439, 36, 139, NULL, NULL),
(440, 37, 139, NULL, NULL),
(441, 36, 140, NULL, NULL),
(442, 36, 141, NULL, NULL),
(443, 36, 142, NULL, NULL),
(444, 37, 142, NULL, NULL),
(445, 36, 143, NULL, NULL),
(446, 36, 144, NULL, NULL),
(447, 36, 145, NULL, NULL),
(448, 36, 146, NULL, NULL),
(449, 36, 147, NULL, NULL),
(450, 36, 148, NULL, NULL),
(451, 37, 148, NULL, NULL),
(452, 36, 149, NULL, NULL),
(453, 37, 149, NULL, NULL),
(454, 36, 150, NULL, NULL),
(455, 37, 150, NULL, NULL),
(456, 36, 151, NULL, NULL),
(457, 37, 151, NULL, NULL),
(458, 36, 152, NULL, NULL),
(459, 36, 153, NULL, NULL),
(460, 37, 153, NULL, NULL),
(461, 38, 153, NULL, NULL),
(462, 36, 154, NULL, NULL),
(463, 37, 154, NULL, NULL),
(464, 38, 154, NULL, NULL),
(465, 36, 155, NULL, NULL),
(466, 37, 155, NULL, NULL),
(467, 38, 155, NULL, NULL),
(468, 40, 156, NULL, NULL),
(469, 40, 157, NULL, NULL),
(470, 40, 158, NULL, NULL),
(471, 40, 159, NULL, NULL),
(472, 40, 160, NULL, NULL),
(473, 40, 161, NULL, NULL),
(474, 40, 162, NULL, NULL),
(475, 40, 163, NULL, NULL),
(476, 40, 164, NULL, NULL),
(477, 36, 165, NULL, NULL),
(478, 37, 165, NULL, NULL),
(479, 40, 166, NULL, NULL),
(480, 36, 167, NULL, NULL),
(481, 40, 167, NULL, NULL),
(482, 36, 168, NULL, NULL),
(483, 37, 168, NULL, NULL),
(484, 36, 169, NULL, NULL),
(485, 36, 170, NULL, NULL),
(486, 38, 171, NULL, NULL),
(487, 39, 171, NULL, NULL),
(488, 38, 172, NULL, NULL),
(489, 40, 173, NULL, NULL),
(490, 36, 174, NULL, NULL),
(491, 37, 174, NULL, NULL),
(492, 36, 175, NULL, NULL),
(493, 37, 175, NULL, NULL),
(494, 38, 175, NULL, NULL),
(495, 36, 176, NULL, NULL),
(496, 37, 176, NULL, NULL),
(497, 38, 176, NULL, NULL),
(498, 38, 177, NULL, NULL),
(499, 39, 177, NULL, NULL),
(500, 36, 178, NULL, NULL),
(501, 36, 179, NULL, NULL),
(502, 38, 179, NULL, NULL),
(503, 36, 180, NULL, NULL),
(504, 37, 180, NULL, NULL),
(505, 36, 181, NULL, NULL),
(506, 37, 181, NULL, NULL),
(507, 38, 181, NULL, NULL),
(508, 36, 182, NULL, NULL),
(509, 37, 182, NULL, NULL),
(510, 36, 183, NULL, NULL),
(511, 37, 183, NULL, NULL),
(512, 36, 184, NULL, NULL),
(513, 37, 184, NULL, NULL),
(514, 36, 185, NULL, NULL),
(515, 40, 185, NULL, NULL),
(516, 38, 186, NULL, NULL),
(517, 38, 187, NULL, NULL),
(518, 39, 187, NULL, NULL),
(519, 36, 188, NULL, NULL),
(520, 38, 188, NULL, NULL),
(521, 36, 189, NULL, NULL),
(522, 38, 189, NULL, NULL),
(523, 36, 190, NULL, NULL),
(524, 38, 190, NULL, NULL),
(525, 36, 191, NULL, NULL),
(526, 38, 191, NULL, NULL),
(527, 40, 192, NULL, NULL),
(528, 36, 193, NULL, NULL),
(529, 38, 193, NULL, NULL),
(530, 40, 194, NULL, NULL),
(531, 36, 195, NULL, NULL),
(532, 36, 196, NULL, NULL),
(533, 38, 196, NULL, NULL),
(534, 41, 197, NULL, NULL),
(535, 42, 197, NULL, NULL),
(536, 38, 198, NULL, NULL),
(537, 36, 199, NULL, NULL),
(538, 38, 199, NULL, NULL),
(539, 38, 200, NULL, NULL),
(540, 40, 200, NULL, NULL),
(541, 38, 201, NULL, NULL),
(542, 40, 201, NULL, NULL),
(543, 40, 202, NULL, NULL),
(544, 40, 203, NULL, NULL),
(545, 41, 204, NULL, NULL),
(546, 43, 204, NULL, NULL),
(547, 41, 205, NULL, NULL),
(548, 43, 205, NULL, NULL),
(549, 41, 206, NULL, NULL),
(550, 43, 206, NULL, NULL),
(551, 41, 207, NULL, NULL),
(552, 44, 207, NULL, NULL),
(553, 41, 208, NULL, NULL),
(554, 44, 208, NULL, NULL),
(555, 40, 209, NULL, NULL),
(556, 45, 210, NULL, NULL),
(557, 45, 211, NULL, NULL),
(558, 41, 212, NULL, NULL),
(559, 41, 213, NULL, NULL),
(560, 36, 214, NULL, NULL),
(561, 36, 215, NULL, NULL),
(562, 38, 215, NULL, NULL),
(563, 40, 215, NULL, NULL),
(564, 41, 216, NULL, NULL),
(565, 44, 216, NULL, NULL),
(566, 41, 217, NULL, NULL),
(567, 42, 217, NULL, NULL),
(568, 38, 218, NULL, NULL),
(569, 39, 218, NULL, NULL),
(570, 45, 218, NULL, NULL),
(571, 36, 219, NULL, NULL),
(572, 37, 219, NULL, NULL),
(573, 45, 220, NULL, NULL),
(574, 36, 221, NULL, NULL),
(575, 38, 221, NULL, NULL),
(576, 36, 222, NULL, NULL),
(577, 38, 222, NULL, NULL),
(578, 45, 223, NULL, NULL),
(579, 36, 224, NULL, NULL),
(580, 38, 224, NULL, NULL),
(581, 36, 225, NULL, NULL),
(582, 36, 226, NULL, NULL),
(583, 38, 226, NULL, NULL),
(584, 36, 227, NULL, NULL),
(585, 38, 227, NULL, NULL),
(586, 38, 228, NULL, NULL),
(587, 45, 228, NULL, NULL),
(588, 38, 229, NULL, NULL),
(589, 40, 229, NULL, NULL),
(590, 41, 230, NULL, NULL),
(591, 42, 230, NULL, NULL),
(592, 41, 231, NULL, NULL),
(593, 42, 231, NULL, NULL),
(594, 41, 232, NULL, NULL),
(595, 42, 232, NULL, NULL),
(596, 41, 233, NULL, NULL),
(597, 42, 233, NULL, NULL),
(598, 41, 234, NULL, NULL),
(599, 42, 234, NULL, NULL),
(600, 41, 235, NULL, NULL),
(601, 42, 235, NULL, NULL),
(602, 41, 236, NULL, NULL),
(603, 42, 236, NULL, NULL),
(604, 41, 237, NULL, NULL),
(605, 42, 237, NULL, NULL),
(606, 41, 238, NULL, NULL),
(607, 42, 238, NULL, NULL),
(608, 41, 239, NULL, NULL),
(609, 42, 239, NULL, NULL),
(610, 41, 240, NULL, NULL),
(611, 42, 240, NULL, NULL),
(612, 44, 243, NULL, NULL),
(613, 40, 244, NULL, NULL),
(614, 41, 245, NULL, NULL),
(615, 42, 245, NULL, NULL),
(616, 41, 246, NULL, NULL),
(617, 42, 246, NULL, NULL),
(618, 36, 247, NULL, NULL),
(619, 37, 247, NULL, NULL),
(620, 36, 248, NULL, NULL),
(621, 37, 248, NULL, NULL),
(622, 36, 249, NULL, NULL),
(623, 38, 249, NULL, NULL),
(624, 36, 250, NULL, NULL),
(625, 37, 250, NULL, NULL),
(626, 41, 251, NULL, NULL),
(627, 44, 251, NULL, NULL),
(628, 47, 252, NULL, NULL),
(629, 48, 252, NULL, NULL),
(630, 47, 253, NULL, NULL),
(631, 48, 253, NULL, NULL),
(632, 47, 254, NULL, NULL),
(633, 48, 254, NULL, NULL),
(634, 47, 255, NULL, NULL),
(635, 48, 255, NULL, NULL),
(636, 38, 256, NULL, NULL),
(637, 40, 256, NULL, NULL),
(638, 36, 257, NULL, NULL),
(639, 37, 257, NULL, NULL),
(640, 40, 258, NULL, NULL),
(641, 36, 259, NULL, NULL),
(642, 37, 259, NULL, NULL),
(643, 36, 260, NULL, NULL),
(644, 37, 260, NULL, NULL),
(645, 36, 261, NULL, NULL),
(646, 37, 261, NULL, NULL),
(647, 36, 262, NULL, NULL),
(648, 37, 262, NULL, NULL),
(649, 38, 262, NULL, NULL),
(650, 41, 263, NULL, NULL),
(651, 43, 263, NULL, NULL),
(652, 40, 264, NULL, NULL),
(653, 36, 265, NULL, NULL),
(654, 37, 265, NULL, NULL),
(655, 38, 265, NULL, NULL),
(656, 36, 266, NULL, NULL),
(657, 37, 266, NULL, NULL),
(658, 40, 266, NULL, NULL),
(659, 36, 267, NULL, NULL),
(660, 37, 267, NULL, NULL),
(661, 36, 268, NULL, NULL),
(662, 37, 268, NULL, NULL),
(663, 38, 268, NULL, NULL),
(664, 36, 269, NULL, NULL),
(665, 47, 270, NULL, NULL),
(666, 40, 270, NULL, NULL),
(667, 47, 271, NULL, NULL),
(668, 40, 271, NULL, NULL),
(669, 47, 272, NULL, NULL),
(670, 40, 272, NULL, NULL),
(671, 47, 273, NULL, NULL),
(672, 40, 273, NULL, NULL),
(673, 47, 274, NULL, NULL),
(674, 40, 274, NULL, NULL),
(675, 47, 275, NULL, NULL),
(676, 40, 275, NULL, NULL),
(677, 47, 276, NULL, NULL),
(678, 40, 276, NULL, NULL),
(679, 49, 277, NULL, NULL),
(680, 49, 278, NULL, NULL),
(681, 47, 279, NULL, NULL),
(682, 40, 279, NULL, NULL),
(683, 36, 280, NULL, NULL),
(684, 38, 280, NULL, NULL),
(685, 39, 280, NULL, NULL),
(686, 45, 280, NULL, NULL),
(687, 36, 281, NULL, NULL),
(688, 40, 281, NULL, NULL),
(689, 38, 282, NULL, NULL),
(690, 45, 282, NULL, NULL),
(691, 36, 283, NULL, NULL),
(692, 38, 283, NULL, NULL),
(693, 45, 283, NULL, NULL),
(694, 41, 284, NULL, NULL),
(695, 40, 284, NULL, NULL),
(696, 41, 285, NULL, NULL),
(697, 44, 285, NULL, NULL),
(698, 41, 286, NULL, NULL),
(699, 44, 286, NULL, NULL),
(700, 41, 287, NULL, NULL),
(701, 44, 287, NULL, NULL),
(702, 41, 288, NULL, NULL),
(703, 44, 288, NULL, NULL);

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
  `title` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `home_sections`
--

TRUNCATE TABLE `home_sections`;
--
-- Dumping data for table `home_sections`
--

INSERT INTO `home_sections` (`id`, `title`, `type`, `order`, `data`, `created_at`, `updated_at`) VALUES
(6, 'Latest Collection', 'pure-grid', 1, '{\"rows\":\"50\",\"cols\":\"5\"}', '2020-10-20 02:55:26', '2020-10-23 06:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(53, 'product-7.jpg', 'public', '/storage/21-Sep-2020/images/1600685464-product-7.jpg', 'jpeg', 'image/jpeg', '92320', '2020-09-21 04:51:05', '2020-09-21 04:51:05'),
(54, 'product-8.jpg', 'public', '/storage/21-Sep-2020/images/1600685465-product-8.jpg', 'jpeg', 'image/jpeg', '100882', '2020-09-21 04:51:05', '2020-09-21 04:51:05'),
(55, 'product-9.jpg', 'public', '/storage/21-Sep-2020/images/1600685467-product-9.jpg', 'jpeg', 'image/jpeg', '64529', '2020-09-21 04:51:08', '2020-09-21 04:51:08'),
(56, 'product-10.jpg', 'public', '/storage/21-Sep-2020/images/1600685468-product-10.jpg', 'jpeg', 'image/jpeg', '110730', '2020-09-21 04:51:08', '2020-09-21 04:51:08'),
(58, 'product-11.jpg', 'public', '/storage/21-Sep-2020/images/1600685471-product-11.jpg', 'jpeg', 'image/jpeg', '198847', '2020-09-21 04:51:11', '2020-09-21 04:51:11'),
(59, 'product-13.jpg', 'public', '/storage/21-Sep-2020/images/1600685473-product-13.jpg', 'jpeg', 'image/jpeg', '73378', '2020-09-21 04:51:13', '2020-09-21 04:51:13'),
(60, 'product-14.jpg', 'public', '/storage/21-Sep-2020/images/1600685474-product-14.jpg', 'jpeg', 'image/jpeg', '151164', '2020-09-21 04:51:14', '2020-09-21 04:51:14'),
(61, 'product-15.jpg', 'public', '/storage/21-Sep-2020/images/1600685476-product-15.jpg', 'jpeg', 'image/jpeg', '105186', '2020-09-21 04:51:16', '2020-09-21 04:51:16'),
(62, 'product-16.jpg', 'public', '/storage/21-Sep-2020/images/1600685478-product-16.jpg', 'jpeg', 'image/jpeg', '112754', '2020-09-21 04:51:19', '2020-09-21 04:51:19'),
(63, 'product-16-1.jpg', 'public', '/storage/21-Sep-2020/images/1600685481-product-16-1.jpg', 'jpeg', 'image/jpeg', '103678', '2020-09-21 04:51:21', '2020-09-21 04:51:21'),
(64, 'product-16-2.jpg', 'public', '/storage/21-Sep-2020/images/1600685483-product-16-2.jpg', 'jpeg', 'image/jpeg', '70557', '2020-09-21 04:51:23', '2020-09-21 04:51:23'),
(65, 'product-16-3.jpg', 'public', '/storage/21-Sep-2020/images/1600685485-product-16-3.jpg', 'jpeg', 'image/jpeg', '98433', '2020-09-21 04:51:25', '2020-09-21 04:51:25'),
(66, '58442156_2301778263482454_8503754411053416448_n.jpg', 'public', '/storage/21-Sep-2020/images/1600685486-58442156_2301778263482454_8503754411053416448_n.jpg', 'jpeg', 'image/jpeg', '31960', '2020-09-21 04:51:27', '2020-09-21 04:51:27'),
(67, 'product-16-4.jpg', 'public', '/storage/21-Sep-2020/images/1600685487-product-16-4.jpg', 'jpeg', 'image/jpeg', '98095', '2020-09-21 04:51:27', '2020-09-21 04:51:27'),
(68, 'HTB1OcuHRjDpK1RjSZFrq6y78VXaV.jpg', 'public', '/storage/28-Sep-2020/images/1601305300-HTB1OcuHRjDpK1RjSZFrq6y78VXaV.jpg', 'jpeg', 'image/jpeg', '91634', '2020-09-28 09:01:40', '2020-09-28 09:01:40'),
(69, 'HTB1pfKTRgHqK1RjSZFEq6AGMXXa7.jpg', 'public', '/storage/28-Sep-2020/images/1601305300-HTB1pfKTRgHqK1RjSZFEq6AGMXXa7.jpg', 'jpeg', 'image/jpeg', '99448', '2020-09-28 09:01:40', '2020-09-28 09:01:40'),
(70, 'HTB1z1nuRFzqK1RjSZFoq6zfcXXaQ.jpg', 'public', '/storage/28-Sep-2020/images/1601305303-HTB1z1nuRFzqK1RjSZFoq6zfcXXaQ.jpg', 'jpeg', 'image/jpeg', '83704', '2020-09-28 09:01:43', '2020-09-28 09:01:43'),
(71, 'JEEP-Mens-Shoulder-Bag-4 copy.jpg', 'public', '/storage/28-Sep-2020/images/1601305309-JEEP-Mens-Shoulder-Bag-4-copy.jpg', 'jpeg', 'image/jpeg', '347737', '2020-09-28 09:01:49', '2020-09-28 09:01:49'),
(74, 'charlie-chaplin.jpg', 'public', '/storage/18-Oct-2020/images/1603010444-charlie-chaplin.jpg', 'jpeg', 'image/jpeg', '33288', '2020-10-18 02:40:44', '2020-10-18 02:40:44'),
(75, 'comvecteezy583342.jpg', 'public', '/storage/18-Oct-2020/images/1603013727-comvecteezy583342.jpg', 'jpeg', 'image/jpeg', '115772', '2020-10-18 03:35:27', '2020-10-18 03:35:27'),
(77, '3Layer kitchen Rack (2).jpg', 'public', '/storage/20-Oct-2020/images/1603183609-3Layer-kitchen-Rack-(2).jpg', 'jpeg', 'image/jpeg', '83259', '2020-10-20 02:46:49', '2020-10-20 02:46:49'),
(78, '3Layer kitchen Rack (3).jpg', 'public', '/storage/20-Oct-2020/images/1603183613-3Layer-kitchen-Rack-(3).jpg', 'jpeg', 'image/jpeg', '81024', '2020-10-20 02:46:53', '2020-10-20 02:46:53'),
(79, '3Layer kitchen Rack (4).jpg', 'public', '/storage/20-Oct-2020/images/1603184219-3Layer-kitchen-Rack-(4).jpg', 'jpeg', 'image/jpeg', '74743', '2020-10-20 02:56:59', '2020-10-20 02:56:59'),
(80, '3Layer kitchen Rack.jpg', 'public', '/storage/20-Oct-2020/images/1603184219-3Layer-kitchen-Rack.jpg', 'jpeg', 'image/jpeg', '81354', '2020-10-20 02:57:00', '2020-10-20 02:57:00'),
(81, '3-Layer-Cloth-Rack.jpg', 'public', '/storage/20-Oct-2020/images/1603185243-3-Layer-Cloth-Rack.jpg', 'jpeg', 'image/jpeg', '49234', '2020-10-20 03:14:04', '2020-10-20 03:14:04'),
(82, '3-Layer-Cloth-Rack-2.jpg', 'public', '/storage/20-Oct-2020/images/1603185244-3-Layer-Cloth-Rack-2.jpg', 'jpeg', 'image/jpeg', '67135', '2020-10-20 03:14:04', '2020-10-20 03:14:04'),
(83, '3-Layer-Cloth-Rack-4.jpg', 'public', '/storage/20-Oct-2020/images/1603185245-3-Layer-Cloth-Rack-4.jpg', 'jpeg', 'image/jpeg', '74801', '2020-10-20 03:14:05', '2020-10-20 03:14:05'),
(84, '16-in-1Spice-Rack.jpg', 'public', '/storage/20-Oct-2020/images/1603186374-16-in-1Spice-Rack.jpg', 'jpeg', 'image/jpeg', '58669', '2020-10-20 03:32:54', '2020-10-20 03:32:54'),
(85, '16-in-1Spice-Rack (1).jpg', 'public', '/storage/20-Oct-2020/images/1603186374-16-in-1Spice-Rack-(1).jpg', 'jpeg', 'image/jpeg', '67895', '2020-10-20 03:32:54', '2020-10-20 03:32:54'),
(86, 'Unique Design Clothing Rack (4).jpg', 'public', '/storage/20-Oct-2020/images/1603186687-Unique-Design-Clothing-Rack-(4).jpg', 'jpeg', 'image/jpeg', '78816', '2020-10-20 03:38:07', '2020-10-20 03:38:07'),
(87, 'Unique Design Clothing Rack (3).jpg', 'public', '/storage/20-Oct-2020/images/1603186696-Unique-Design-Clothing-Rack-(3).jpg', 'jpeg', 'image/jpeg', '94843', '2020-10-20 03:38:16', '2020-10-20 03:38:16'),
(88, 'Unique Design Clothing Rack (2).jpg', 'public', '/storage/20-Oct-2020/images/1603186696-Unique-Design-Clothing-Rack-(2).jpg', 'jpeg', 'image/jpeg', '94843', '2020-10-20 03:38:16', '2020-10-20 03:38:16'),
(89, 'Unique Design Clothing Rack.jpg', 'public', '/storage/20-Oct-2020/images/1603186697-Unique-Design-Clothing-Rack.jpg', 'jpeg', 'image/jpeg', '84674', '2020-10-20 03:38:17', '2020-10-20 03:38:17'),
(90, 'Multi-function-mobile-cart-3Leyer-2.jpg', 'public', '/storage/20-Oct-2020/images/1603187088-Multi-function-mobile-cart-3Leyer-2.jpg', 'jpeg', 'image/jpeg', '42800', '2020-10-20 03:44:48', '2020-10-20 03:44:48'),
(91, 'Multi-function-mobile-cart-3Leyer.jpg', 'public', '/storage/20-Oct-2020/images/1603187091-Multi-function-mobile-cart-3Leyer.jpg', 'jpeg', 'image/jpeg', '60676', '2020-10-20 03:44:51', '2020-10-20 03:44:51'),
(92, 'Multi-function-mobile-cart-3Leyer-3.jpg', 'public', '/storage/20-Oct-2020/images/1603187091-Multi-function-mobile-cart-3Leyer-3.jpg', 'jpeg', 'image/jpeg', '55456', '2020-10-20 03:44:51', '2020-10-20 03:44:51'),
(93, 'Multi-function-mobile-cart-3Leyer-4.jpg', 'public', '/storage/20-Oct-2020/images/1603187093-Multi-function-mobile-cart-3Leyer-4.jpg', 'jpeg', 'image/jpeg', '65569', '2020-10-20 03:44:53', '2020-10-20 03:44:53'),
(94, 'Bed Side Laptop Table (2).jpg', 'public', '/storage/20-Oct-2020/images/1603187508-Bed-Side-Laptop-Table-(2).jpg', 'jpeg', 'image/jpeg', '93428', '2020-10-20 03:51:48', '2020-10-20 03:51:48'),
(95, 'Bed Side Laptop Table (3).jpg', 'public', '/storage/20-Oct-2020/images/1603187508-Bed-Side-Laptop-Table-(3).jpg', 'jpeg', 'image/jpeg', '77526', '2020-10-20 03:51:48', '2020-10-20 03:51:48'),
(96, 'Bed Side Laptop Table (4).jpg', 'public', '/storage/20-Oct-2020/images/1603187510-Bed-Side-Laptop-Table-(4).jpg', 'jpeg', 'image/jpeg', '85994', '2020-10-20 03:51:50', '2020-10-20 03:51:50'),
(97, 'Bed Side Laptop Table.jpg', 'public', '/storage/20-Oct-2020/images/1603187510-Bed-Side-Laptop-Table.jpg', 'jpeg', 'image/jpeg', '71480', '2020-10-20 03:51:50', '2020-10-20 03:51:50'),
(98, 'Air Pillow (2).jpg', 'public', '/storage/20-Oct-2020/images/1603188372-Air-Pillow-(2).jpg', 'jpeg', 'image/jpeg', '182294', '2020-10-20 04:06:12', '2020-10-20 04:06:12'),
(99, 'Air Pillow (3).jpg', 'public', '/storage/20-Oct-2020/images/1603188372-Air-Pillow-(3).jpg', 'jpeg', 'image/jpeg', '306503', '2020-10-20 04:06:12', '2020-10-20 04:06:12'),
(100, 'Air Pillow (4).jpg', 'public', '/storage/20-Oct-2020/images/1603188373-Air-Pillow-(4).jpg', 'jpeg', 'image/jpeg', '221515', '2020-10-20 04:06:13', '2020-10-20 04:06:13'),
(101, 'Air Pillow.jpg', 'public', '/storage/20-Oct-2020/images/1603188374-Air-Pillow.jpg', 'jpeg', 'image/jpeg', '194824', '2020-10-20 04:06:14', '2020-10-20 04:06:14'),
(102, 'Electric Hot Water Bag (3).jpg', 'public', '/storage/20-Oct-2020/images/1603188615-Electric-Hot-Water-Bag-(3).jpg', 'jpeg', 'image/jpeg', '73445', '2020-10-20 04:10:15', '2020-10-20 04:10:15'),
(103, 'Electric Hot Water Bag (2).jpg', 'public', '/storage/20-Oct-2020/images/1603188615-Electric-Hot-Water-Bag-(2).jpg', 'jpeg', 'image/jpeg', '77672', '2020-10-20 04:10:15', '2020-10-20 04:10:15'),
(104, 'Electric Hot Water Bag (4).jpg', 'public', '/storage/20-Oct-2020/images/1603188616-Electric-Hot-Water-Bag-(4).jpg', 'jpeg', 'image/jpeg', '44806', '2020-10-20 04:10:16', '2020-10-20 04:10:16'),
(105, 'Electric Hot Water Bag.jpg', 'public', '/storage/20-Oct-2020/images/1603188617-Electric-Hot-Water-Bag.jpg', 'jpeg', 'image/jpeg', '92796', '2020-10-20 04:10:17', '2020-10-20 04:10:17'),
(106, 'Water Spray Bottol (2).jpg', 'public', '/storage/20-Oct-2020/images/1603188801-Water-Spray-Bottol-(2).jpg', 'jpeg', 'image/jpeg', '80301', '2020-10-20 04:13:21', '2020-10-20 04:13:21'),
(107, 'Water Spray Bottol (3).jpg', 'public', '/storage/20-Oct-2020/images/1603188802-Water-Spray-Bottol-(3).jpg', 'jpeg', 'image/jpeg', '75565', '2020-10-20 04:13:22', '2020-10-20 04:13:22'),
(108, 'Water Spray Bottol (4).jpg', 'public', '/storage/20-Oct-2020/images/1603188802-Water-Spray-Bottol-(4).jpg', 'jpeg', 'image/jpeg', '69411', '2020-10-20 04:13:22', '2020-10-20 04:13:22'),
(109, 'Water Spray Bottol.jpg', 'public', '/storage/20-Oct-2020/images/1603188803-Water-Spray-Bottol.jpg', 'jpeg', 'image/jpeg', '81520', '2020-10-20 04:13:23', '2020-10-20 04:13:23'),
(111, 'Soft Silicone Seat Cushion With Cover (3).jpg', 'public', '/storage/21-Oct-2020/images/1603282087-Soft-Silicone-Seat-Cushion-With-Cover-(3).jpg', 'jpeg', 'image/jpeg', '63554', '2020-10-21 06:08:07', '2020-10-21 06:08:07'),
(112, 'Soft Silicone Seat Cushion With Cover (2).jpg', 'public', '/storage/21-Oct-2020/images/1603282088-Soft-Silicone-Seat-Cushion-With-Cover-(2).jpg', 'jpeg', 'image/jpeg', '70038', '2020-10-21 06:08:08', '2020-10-21 06:08:08'),
(113, 'Soft Silicone Seat Cushion With Cover (4).jpg', 'public', '/storage/21-Oct-2020/images/1603282089-Soft-Silicone-Seat-Cushion-With-Cover-(4).jpg', 'jpeg', 'image/jpeg', '74454', '2020-10-21 06:08:09', '2020-10-21 06:08:09'),
(114, 'Soft Silicone Seat Cushion With Cover (5).jpg', 'public', '/storage/21-Oct-2020/images/1603282091-Soft-Silicone-Seat-Cushion-With-Cover-(5).jpg', 'jpeg', 'image/jpeg', '59694', '2020-10-21 06:08:11', '2020-10-21 06:08:11'),
(115, 'Soft Silicone Seat Cushion With Cover.jpg', 'public', '/storage/21-Oct-2020/images/1603282094-Soft-Silicone-Seat-Cushion-With-Cover.jpg', 'jpeg', 'image/jpeg', '98450', '2020-10-21 06:08:14', '2020-10-21 06:08:14'),
(116, 'Instant-water-heater-tap-3-2.jpg', 'public', '/storage/21-Oct-2020/images/1603288303-Instant-water-heater-tap-3-2.jpg', 'jpeg', 'image/jpeg', '41020', '2020-10-21 07:51:43', '2020-10-21 07:51:43'),
(117, 'Instant-water-heater-tap-2-2.jpg', 'public', '/storage/21-Oct-2020/images/1603288303-Instant-water-heater-tap-2-2.jpg', 'jpeg', 'image/jpeg', '41019', '2020-10-21 07:51:43', '2020-10-21 07:51:43'),
(118, 'Instant-water-heater-tap-4-2.jpg', 'public', '/storage/21-Oct-2020/images/1603288304-Instant-water-heater-tap-4-2.jpg', 'jpeg', 'image/jpeg', '34567', '2020-10-21 07:51:44', '2020-10-21 07:51:44'),
(119, 'Instant-water-heater-tap-5.jpg', 'public', '/storage/21-Oct-2020/images/1603288305-Instant-water-heater-tap-5.jpg', 'jpeg', 'image/jpeg', '47390', '2020-10-21 07:51:45', '2020-10-21 07:51:45'),
(120, 'Instant-water-heater-tap-6.jpg', 'public', '/storage/21-Oct-2020/images/1603288306-Instant-water-heater-tap-6.jpg', 'jpeg', 'image/jpeg', '46640', '2020-10-21 07:51:46', '2020-10-21 07:51:46'),
(121, 'Instant-water-heater-tap-2-3.jpg', 'public', '/storage/21-Oct-2020/images/1603288791-Instant-water-heater-tap-2-3.jpg', 'jpeg', 'image/jpeg', '44779', '2020-10-21 07:59:51', '2020-10-21 07:59:51'),
(122, 'Instant-water-heater-tap-3-3.jpg', 'public', '/storage/21-Oct-2020/images/1603288791-Instant-water-heater-tap-3-3.jpg', 'jpeg', 'image/jpeg', '46449', '2020-10-21 07:59:52', '2020-10-21 07:59:52'),
(123, 'Instant-water-heater-tap-4-3 (1).jpg', 'public', '/storage/21-Oct-2020/images/1603288792-Instant-water-heater-tap-4-3-(1).jpg', 'jpeg', 'image/jpeg', '47335', '2020-10-21 07:59:52', '2020-10-21 07:59:52'),
(124, 'Instant-water-heater-tap-5-1.jpg', 'public', '/storage/21-Oct-2020/images/1603288794-Instant-water-heater-tap-5-1.jpg', 'jpeg', 'image/jpeg', '33819', '2020-10-21 07:59:54', '2020-10-21 07:59:54'),
(125, 'Instant-water-heater-tap-7.jpg', 'public', '/storage/21-Oct-2020/images/1603288794-Instant-water-heater-tap-7.jpg', 'jpeg', 'image/jpeg', '33933', '2020-10-21 07:59:54', '2020-10-21 07:59:54'),
(134, 'Instant-water-heater-tap-2 (1).jpg', 'public', '/storage/22-Oct-2020/images/1603345688-Instant-water-heater-tap-2-(1).jpg', 'jpeg', 'image/jpeg', '49531', '2020-10-21 23:48:08', '2020-10-21 23:48:08'),
(135, 'Instant-water-heater-tap.jpg', 'public', '/storage/22-Oct-2020/images/1603345688-Instant-water-heater-tap.jpg', 'jpeg', 'image/jpeg', '33054', '2020-10-21 23:48:08', '2020-10-21 23:48:08'),
(136, 'Instant-water-heater-tap-4.jpg', 'public', '/storage/22-Oct-2020/images/1603345689-Instant-water-heater-tap-4.jpg', 'jpeg', 'image/jpeg', '26917', '2020-10-21 23:48:10', '2020-10-21 23:48:10'),
(137, 'Instant-water-heater-tap-3.jpg', 'public', '/storage/22-Oct-2020/images/1603345690-Instant-water-heater-tap-3.jpg', 'jpeg', 'image/jpeg', '40185', '2020-10-21 23:48:10', '2020-10-21 23:48:10'),
(138, 'Instant-water-heater-tap-2-1 (1).jpg', 'public', '/storage/22-Oct-2020/images/1603346123-Instant-water-heater-tap-2-1-(1).jpg', 'jpeg', 'image/jpeg', '62663', '2020-10-21 23:55:24', '2020-10-21 23:55:24'),
(139, 'Instant-water-heater-tap-1.jpg', 'public', '/storage/22-Oct-2020/images/1603346123-Instant-water-heater-tap-1.jpg', 'jpeg', 'image/jpeg', '60368', '2020-10-21 23:55:24', '2020-10-21 23:55:24'),
(140, 'Instant-water-heater-tap-3-1.jpg', 'public', '/storage/22-Oct-2020/images/1603346124-Instant-water-heater-tap-3-1.jpg', 'jpeg', 'image/jpeg', '52223', '2020-10-21 23:55:24', '2020-10-21 23:55:24'),
(141, 'Instant-water-heater-tap-4-1.jpg', 'public', '/storage/22-Oct-2020/images/1603346124-Instant-water-heater-tap-4-1.jpg', 'jpeg', 'image/jpeg', '52803', '2020-10-21 23:55:24', '2020-10-21 23:55:24'),
(142, 'Electric-Hot-Shower.jpg', 'public', '/storage/22-Oct-2020/images/1603346456-Electric-Hot-Shower.jpg', 'jpeg', 'image/jpeg', '43896', '2020-10-22 00:00:56', '2020-10-22 00:00:56'),
(143, 'Electric-Hot-Shower-2 (1).jpg', 'public', '/storage/22-Oct-2020/images/1603346456-Electric-Hot-Shower-2-(1).jpg', 'jpeg', 'image/jpeg', '53143', '2020-10-22 00:00:56', '2020-10-22 00:00:56'),
(144, 'Massage-slipper-3.jpg', 'public', '/storage/22-Oct-2020/images/1603353487-Massage-slipper-3.jpg', 'jpeg', 'image/jpeg', '69190', '2020-10-22 01:58:07', '2020-10-22 01:58:07'),
(145, 'Massage-slipper.jpg', 'public', '/storage/22-Oct-2020/images/1603353487-Massage-slipper.jpg', 'jpeg', 'image/jpeg', '54403', '2020-10-22 01:58:07', '2020-10-22 01:58:07'),
(146, 'Massage-slipper-4 (2).jpg', 'public', '/storage/22-Oct-2020/images/1603353488-Massage-slipper-4-(2).jpg', 'jpeg', 'image/jpeg', '63542', '2020-10-22 01:58:08', '2020-10-22 01:58:08'),
(147, 'Massage-slipper-4.jpg', 'public', '/storage/22-Oct-2020/images/1603353488-Massage-slipper-4.jpg', 'jpeg', 'image/jpeg', '54087', '2020-10-22 01:58:08', '2020-10-22 01:58:08'),
(148, 'Relax-and-Spin-2.jpg', 'public', '/storage/22-Oct-2020/images/1603354249-Relax-and-Spin-2.jpg', 'jpeg', 'image/jpeg', '283262', '2020-10-22 02:10:49', '2020-10-22 02:10:49'),
(149, 'Relax-and-Spin.jpg', 'public', '/storage/22-Oct-2020/images/1603354249-Relax-and-Spin.jpg', 'jpeg', 'image/jpeg', '218884', '2020-10-22 02:10:49', '2020-10-22 02:10:49'),
(150, 'Relax-and-Spin-3.jpg', 'public', '/storage/22-Oct-2020/images/1603354250-Relax-and-Spin-3.jpg', 'jpeg', 'image/jpeg', '202407', '2020-10-22 02:10:50', '2020-10-22 02:10:50'),
(151, 'Car & Home Massage Pillow (3).jpg', 'public', '/storage/22-Oct-2020/images/1603354508-Car-&-Home-Massage-Pillow-(3).jpg', 'jpeg', 'image/jpeg', '54058', '2020-10-22 02:15:08', '2020-10-22 02:15:08'),
(152, 'Car & Home Massage Pillow (2).jpg', 'public', '/storage/22-Oct-2020/images/1603354508-Car-&-Home-Massage-Pillow-(2).jpg', 'jpeg', 'image/jpeg', '71249', '2020-10-22 02:15:08', '2020-10-22 02:15:08'),
(153, 'Car & Home Massage Pillow (4).jpg', 'public', '/storage/22-Oct-2020/images/1603354508-Car-&-Home-Massage-Pillow-(4).jpg', 'jpeg', 'image/jpeg', '49755', '2020-10-22 02:15:08', '2020-10-22 02:15:08'),
(154, 'Car & Home Massage Pillow.jpg', 'public', '/storage/22-Oct-2020/images/1603354509-Car-&-Home-Massage-Pillow.jpg', 'jpeg', 'image/jpeg', '69269', '2020-10-22 02:15:09', '2020-10-22 02:15:09'),
(155, 'Pulse Oximeter (2).jpg', 'public', '/storage/22-Oct-2020/images/1603354884-Pulse-Oximeter-(2).jpg', 'jpeg', 'image/jpeg', '37712', '2020-10-22 02:21:24', '2020-10-22 02:21:24'),
(156, 'Pulse Oximeter (3).jpg', 'public', '/storage/22-Oct-2020/images/1603354884-Pulse-Oximeter-(3).jpg', 'jpeg', 'image/jpeg', '59643', '2020-10-22 02:21:24', '2020-10-22 02:21:24'),
(157, 'Pulse Oximeter (4).jpg', 'public', '/storage/22-Oct-2020/images/1603354884-Pulse-Oximeter-(4).jpg', 'jpeg', 'image/jpeg', '54887', '2020-10-22 02:21:24', '2020-10-22 02:21:24'),
(158, 'Pulse Oximeter.jpg', 'public', '/storage/22-Oct-2020/images/1603354885-Pulse-Oximeter.jpg', 'jpeg', 'image/jpeg', '51462', '2020-10-22 02:21:25', '2020-10-22 02:21:25'),
(159, 'Dental Water Power Floss (3).jpg', 'public', '/storage/22-Oct-2020/images/1603355234-Dental-Water-Power-Floss-(3).jpg', 'jpeg', 'image/jpeg', '61776', '2020-10-22 02:27:14', '2020-10-22 02:27:14'),
(160, 'Dental Water Power Floss (2).jpg', 'public', '/storage/22-Oct-2020/images/1603355234-Dental-Water-Power-Floss-(2).jpg', 'jpeg', 'image/jpeg', '45291', '2020-10-22 02:27:14', '2020-10-22 02:27:14'),
(161, 'Dental Water Power Floss (4).jpg', 'public', '/storage/22-Oct-2020/images/1603355235-Dental-Water-Power-Floss-(4).jpg', 'jpeg', 'image/jpeg', '57839', '2020-10-22 02:27:15', '2020-10-22 02:27:15'),
(162, 'Dental Water Power Floss.jpg', 'public', '/storage/22-Oct-2020/images/1603355235-Dental-Water-Power-Floss.jpg', 'jpeg', 'image/jpeg', '60763', '2020-10-22 02:27:15', '2020-10-22 02:27:15'),
(163, 'Digital Infrared Thermometer (2).jpg', 'public', '/storage/22-Oct-2020/images/1603355434-Digital-Infrared-Thermometer-(2).jpg', 'jpeg', 'image/jpeg', '56287', '2020-10-22 02:30:34', '2020-10-22 02:30:34'),
(164, 'Digital Infrared Thermometer (3).jpg', 'public', '/storage/22-Oct-2020/images/1603355434-Digital-Infrared-Thermometer-(3).jpg', 'jpeg', 'image/jpeg', '58187', '2020-10-22 02:30:34', '2020-10-22 02:30:34'),
(165, 'Digital Infrared Thermometer (4).jpg', 'public', '/storage/22-Oct-2020/images/1603355434-Digital-Infrared-Thermometer-(4).jpg', 'jpeg', 'image/jpeg', '38423', '2020-10-22 02:30:34', '2020-10-22 02:30:34'),
(166, 'Digital Infrared Thermometer (5).jpg', 'public', '/storage/22-Oct-2020/images/1603355434-Digital-Infrared-Thermometer-(5).jpg', 'jpeg', 'image/jpeg', '58918', '2020-10-22 02:30:35', '2020-10-22 02:30:35'),
(167, 'Digital Infrared Thermometer.jpg', 'public', '/storage/22-Oct-2020/images/1603355435-Digital-Infrared-Thermometer.jpg', 'jpeg', 'image/jpeg', '63447', '2020-10-22 02:30:35', '2020-10-22 02:30:35'),
(168, 'Safety Guard For Bike (4Pcs) (3).jpg', 'public', '/storage/22-Oct-2020/images/1603355899-Safety-Guard-For-Bike-(4Pcs)-(3).jpg', 'jpeg', 'image/jpeg', '212149', '2020-10-22 02:38:20', '2020-10-22 02:38:20'),
(169, 'Safety Guard For Bike (4Pcs) (2).jpg', 'public', '/storage/22-Oct-2020/images/1603355900-Safety-Guard-For-Bike-(4Pcs)-(2).jpg', 'jpeg', 'image/jpeg', '236253', '2020-10-22 02:38:20', '2020-10-22 02:38:20'),
(170, 'Safety Guard For Bike (4Pcs) (4).jpg', 'public', '/storage/22-Oct-2020/images/1603355900-Safety-Guard-For-Bike-(4Pcs)-(4).jpg', 'jpeg', 'image/jpeg', '346382', '2020-10-22 02:38:21', '2020-10-22 02:38:21'),
(171, 'Safety Guard For Bike (4Pcs) (5).jpg', 'public', '/storage/22-Oct-2020/images/1603355901-Safety-Guard-For-Bike-(4Pcs)-(5).jpg', 'jpeg', 'image/jpeg', '96918', '2020-10-22 02:38:21', '2020-10-22 02:38:21'),
(172, 'Safety Guard For Bike (4Pcs).jpg', 'public', '/storage/22-Oct-2020/images/1603355902-Safety-Guard-For-Bike-(4Pcs).jpg', 'jpeg', 'image/jpeg', '438122', '2020-10-22 02:38:22', '2020-10-22 02:38:22'),
(173, 'Food-Massager-1.jpg', 'public', '/storage/22-Oct-2020/images/1603356228-Food-Massager-1.jpg', 'jpeg', 'image/jpeg', '49885', '2020-10-22 02:43:48', '2020-10-22 02:43:48'),
(174, 'Food-massager.jpg', 'public', '/storage/22-Oct-2020/images/1603356228-Food-massager.jpg', 'jpeg', 'image/jpeg', '55913', '2020-10-22 02:43:48', '2020-10-22 02:43:48'),
(175, 'Food-Massager-2.jpg', 'public', '/storage/22-Oct-2020/images/1603356229-Food-Massager-2.jpg', 'jpeg', 'image/jpeg', '51821', '2020-10-22 02:43:50', '2020-10-22 02:43:50'),
(176, 'Food-Massager-3.jpg', 'public', '/storage/22-Oct-2020/images/1603356234-Food-Massager-3.jpg', 'jpeg', 'image/jpeg', '54975', '2020-10-22 02:43:54', '2020-10-22 02:43:54'),
(177, 'Nano spary Gun (2).jpg', 'public', '/storage/22-Oct-2020/images/1603356440-Nano-spary-Gun-(2).jpg', 'jpeg', 'image/jpeg', '41184', '2020-10-22 02:47:21', '2020-10-22 02:47:21'),
(178, 'Nano spary Gun (2).jpeg.jpg', 'public', '/storage/22-Oct-2020/images/1603356440-Nano-spary-Gun-(2).jpeg.jpg', 'jpeg', 'image/jpeg', '62016', '2020-10-22 02:47:21', '2020-10-22 02:47:21'),
(179, 'Nano spary Gun.jpg', 'public', '/storage/22-Oct-2020/images/1603356441-Nano-spary-Gun.jpg', 'jpeg', 'image/jpeg', '43147', '2020-10-22 02:47:21', '2020-10-22 02:47:21'),
(180, 'Nano spary Gun (4).jpg', 'public', '/storage/22-Oct-2020/images/1603356441-Nano-spary-Gun-(4).jpg', 'jpeg', 'image/jpeg', '36856', '2020-10-22 02:47:21', '2020-10-22 02:47:21'),
(181, 'Magic-Spin-Mop-with-Bucket-3.jpg', 'public', '/storage/23-Oct-2020/images/1603439204-Magic-Spin-Mop-with-Bucket-3.jpg', 'jpeg', 'image/jpeg', '51055', '2020-10-23 01:46:45', '2020-10-23 01:46:45'),
(182, '117271805_1215962778802203_2448361995017687818_n.jpg', 'public', '/storage/23-Oct-2020/images/1603439204-117271805_1215962778802203_2448361995017687818_n.jpg', 'jpeg', 'image/jpeg', '45698', '2020-10-23 01:46:45', '2020-10-23 01:46:45'),
(183, 'Man Woman Walking Stick Lighting (3).jpg', 'public', '/storage/23-Oct-2020/images/1603439703-Man-Woman-Walking-Stick-Lighting-(3).jpg', 'jpeg', 'image/jpeg', '215836', '2020-10-23 01:55:03', '2020-10-23 01:55:03'),
(184, 'Man Woman Walking Stick Lighting (2).jpg', 'public', '/storage/23-Oct-2020/images/1603439703-Man-Woman-Walking-Stick-Lighting-(2).jpg', 'jpeg', 'image/jpeg', '207518', '2020-10-23 01:55:04', '2020-10-23 01:55:04'),
(185, 'Man Woman Walking Stick Lighting (4).jpg', 'public', '/storage/23-Oct-2020/images/1603439704-Man-Woman-Walking-Stick-Lighting-(4).jpg', 'jpeg', 'image/jpeg', '185393', '2020-10-23 01:55:05', '2020-10-23 01:55:05'),
(186, 'Man Woman Walking Stick Lighting.jpg', 'public', '/storage/23-Oct-2020/images/1603439705-Man-Woman-Walking-Stick-Lighting.jpg', 'jpeg', 'image/jpeg', '206791', '2020-10-23 01:55:05', '2020-10-23 01:55:05'),
(187, 'Relax baby Chair.jpg', 'public', '/storage/23-Oct-2020/images/1603440599-Relax-baby-Chair.jpg', 'jpeg', 'image/jpeg', '73981', '2020-10-23 02:09:59', '2020-10-23 02:09:59'),
(188, 'Relax baby Chair (2).jpg', 'public', '/storage/23-Oct-2020/images/1603440607-Relax-baby-Chair-(2).jpg', 'jpeg', 'image/jpeg', '56348', '2020-10-23 02:10:07', '2020-10-23 02:10:07'),
(189, 'Wooden Ruti Maker (2).jpg', 'public', '/storage/23-Oct-2020/images/1603444986-Wooden-Ruti-Maker-(2).jpg', 'jpeg', 'image/jpeg', '54017', '2020-10-23 03:23:06', '2020-10-23 03:23:06'),
(190, 'Wooden Ruti Maker (3).jpg', 'public', '/storage/23-Oct-2020/images/1603444986-Wooden-Ruti-Maker-(3).jpg', 'jpeg', 'image/jpeg', '65834', '2020-10-23 03:23:06', '2020-10-23 03:23:06'),
(191, 'Wooden Ruti Maker (4).jpg', 'public', '/storage/23-Oct-2020/images/1603444988-Wooden-Ruti-Maker-(4).jpg', 'jpeg', 'image/jpeg', '44629', '2020-10-23 03:23:08', '2020-10-23 03:23:08'),
(192, 'Wooden Ruti Maker.jpg', 'public', '/storage/23-Oct-2020/images/1603444989-Wooden-Ruti-Maker.jpg', 'jpeg', 'image/jpeg', '78497', '2020-10-23 03:23:09', '2020-10-23 03:23:09'),
(193, 'Dubble Air Bed With pumper (2).jpg', 'public', '/storage/23-Oct-2020/images/1603447746-Dubble-Air-Bed-With-pumper-(2).jpg', 'jpeg', 'image/jpeg', '65126', '2020-10-23 04:09:06', '2020-10-23 04:09:06'),
(194, 'Dubble Air Bed With pumper.jpg', 'public', '/storage/23-Oct-2020/images/1603447746-Dubble-Air-Bed-With-pumper.jpg', 'jpeg', 'image/jpeg', '75719', '2020-10-23 04:09:06', '2020-10-23 04:09:06'),
(195, 'Folding Cloth Storage wardrobe (3).jpg', 'public', '/storage/23-Oct-2020/images/1603448824-Folding-Cloth-Storage-wardrobe-(3).jpg', 'jpeg', 'image/jpeg', '85233', '2020-10-23 04:27:04', '2020-10-23 04:27:04'),
(196, 'Folding Cloth Storage wardrobe (2).jpg', 'public', '/storage/23-Oct-2020/images/1603448824-Folding-Cloth-Storage-wardrobe-(2).jpg', 'jpeg', 'image/jpeg', '80128', '2020-10-23 04:27:04', '2020-10-23 04:27:04'),
(197, 'Folding Cloth Storage wardrobe.jpg', 'public', '/storage/23-Oct-2020/images/1603448825-Folding-Cloth-Storage-wardrobe.jpg', 'jpeg', 'image/jpeg', '92762', '2020-10-23 04:27:05', '2020-10-23 04:27:05'),
(198, 'KTS 1048 bluetooth speaker with microphone (2).jpg', 'public', '/storage/23-Oct-2020/images/1603467563-KTS-1048-bluetooth-speaker-with-microphone-(2).jpg', 'jpeg', 'image/jpeg', '57360', '2020-10-23 09:39:24', '2020-10-23 09:39:24'),
(199, 'KTS 1048 bluetooth speaker with microphone (3).jpg', 'public', '/storage/23-Oct-2020/images/1603467564-KTS-1048-bluetooth-speaker-with-microphone-(3).jpg', 'jpeg', 'image/jpeg', '50584', '2020-10-23 09:39:24', '2020-10-23 09:39:24'),
(200, 'KTS 1048 bluetooth speaker with microphone (4).jpg', 'public', '/storage/23-Oct-2020/images/1603467564-KTS-1048-bluetooth-speaker-with-microphone-(4).jpg', 'jpeg', 'image/jpeg', '42651', '2020-10-23 09:39:24', '2020-10-23 09:39:24'),
(201, 'KTS 1048 bluetooth speaker with microphone.jpg', 'public', '/storage/23-Oct-2020/images/1603467565-KTS-1048-bluetooth-speaker-with-microphone.jpg', 'jpeg', 'image/jpeg', '85759', '2020-10-23 09:39:25', '2020-10-23 09:39:25'),
(202, 'Mini Auto Water Pump (3).jpg', 'public', '/storage/23-Oct-2020/images/1603468156-Mini-Auto-Water-Pump-(3).jpg', 'jpeg', 'image/jpeg', '39977', '2020-10-23 09:49:16', '2020-10-23 09:49:16'),
(203, 'Mini Auto Water Pump (2).jpg', 'public', '/storage/23-Oct-2020/images/1603468156-Mini-Auto-Water-Pump-(2).jpg', 'jpeg', 'image/jpeg', '72536', '2020-10-23 09:49:16', '2020-10-23 09:49:16'),
(204, 'Mini Auto Water Pump (4).jpg', 'public', '/storage/23-Oct-2020/images/1603468157-Mini-Auto-Water-Pump-(4).jpg', 'jpeg', 'image/jpeg', '64423', '2020-10-23 09:49:17', '2020-10-23 09:49:17'),
(205, 'Mini Auto Water Pump.jpg', 'public', '/storage/23-Oct-2020/images/1603468157-Mini-Auto-Water-Pump.jpg', 'jpeg', 'image/jpeg', '46424', '2020-10-23 09:49:17', '2020-10-23 09:49:17'),
(206, 'Revoflex Xtreme (3).jpg', 'public', '/storage/23-Oct-2020/images/1603469053-Revoflex-Xtreme-(3).jpg', 'jpeg', 'image/jpeg', '57065', '2020-10-23 10:04:13', '2020-10-23 10:04:13'),
(207, 'Revoflex Xtreme (2).jpg', 'public', '/storage/23-Oct-2020/images/1603469053-Revoflex-Xtreme-(2).jpg', 'jpeg', 'image/jpeg', '62258', '2020-10-23 10:04:13', '2020-10-23 10:04:13'),
(208, 'Revoflex Xtreme.jpeg', 'public', '/storage/23-Oct-2020/images/1603469057-Revoflex-Xtreme.jpeg', 'jpeg', 'image/jpeg', '133774', '2020-10-23 10:04:18', '2020-10-23 10:04:18'),
(209, 'Revoflex Xtreme.jpg', 'public', '/storage/23-Oct-2020/images/1603469058-Revoflex-Xtreme.jpg', 'jpeg', 'image/jpeg', '68569', '2020-10-23 10:04:18', '2020-10-23 10:04:18'),
(210, 'Capsul Cutter (3).jpg', 'public', '/storage/23-Oct-2020/images/1603469615-Capsul-Cutter-(3).jpg', 'jpeg', 'image/jpeg', '53349', '2020-10-23 10:13:35', '2020-10-23 10:13:35'),
(211, 'Capsul Cutter (2).jpg', 'public', '/storage/23-Oct-2020/images/1603469615-Capsul-Cutter-(2).jpg', 'jpeg', 'image/jpeg', '63738', '2020-10-23 10:13:35', '2020-10-23 10:13:35'),
(212, 'Capsul Cutter (4).jpg', 'public', '/storage/23-Oct-2020/images/1603469616-Capsul-Cutter-(4).jpg', 'jpeg', 'image/jpeg', '67756', '2020-10-23 10:13:36', '2020-10-23 10:13:36'),
(213, 'Capsul Cutter.jpg', 'public', '/storage/23-Oct-2020/images/1603469616-Capsul-Cutter.jpg', 'jpeg', 'image/jpeg', '72215', '2020-10-23 10:13:36', '2020-10-23 10:13:36'),
(214, 'Digital Scall (3).jpg', 'public', '/storage/23-Oct-2020/images/1603470430-Digital-Scall-(3).jpg', 'jpeg', 'image/jpeg', '33565', '2020-10-23 10:27:10', '2020-10-23 10:27:10'),
(215, 'Digital Scall (2).jpg', 'public', '/storage/23-Oct-2020/images/1603470431-Digital-Scall-(2).jpg', 'jpeg', 'image/jpeg', '51578', '2020-10-23 10:27:11', '2020-10-23 10:27:11'),
(216, 'Digital Scall (4).jpg', 'public', '/storage/23-Oct-2020/images/1603470433-Digital-Scall-(4).jpg', 'jpeg', 'image/jpeg', '49864', '2020-10-23 10:27:13', '2020-10-23 10:27:13'),
(217, 'Digital Scall.jpg', 'public', '/storage/23-Oct-2020/images/1603470435-Digital-Scall.jpg', 'jpeg', 'image/jpeg', '60379', '2020-10-23 10:27:15', '2020-10-23 10:27:15'),
(218, 'Capsul Cutter (2).jpg', 'public', '/storage/24-Oct-2020/images/1603527830-Capsul-Cutter-(2).jpg', 'jpeg', 'image/jpeg', '63203', '2020-10-24 02:23:51', '2020-10-24 02:23:51'),
(219, 'Capsul Cutter (3).jpg', 'public', '/storage/24-Oct-2020/images/1603527830-Capsul-Cutter-(3).jpg', 'jpeg', 'image/jpeg', '71548', '2020-10-24 02:23:51', '2020-10-24 02:23:51'),
(220, 'Capsul Cutter (4).jpg', 'public', '/storage/24-Oct-2020/images/1603527832-Capsul-Cutter-(4).jpg', 'jpeg', 'image/jpeg', '63398', '2020-10-24 02:23:52', '2020-10-24 02:23:52'),
(221, 'Capsul Cutter.jpg', 'public', '/storage/24-Oct-2020/images/1603527833-Capsul-Cutter.jpg', 'jpeg', 'image/jpeg', '72215', '2020-10-24 02:23:53', '2020-10-24 02:23:53'),
(222, 'Rechargeable Bluetooth Karaoke Trolly Speaker With Wireless Microphone (2).jpg', 'public', '/storage/24-Oct-2020/images/1603538346-Rechargeable-Bluetooth-Karaoke-Trolly-Speaker-With-Wireless-Microphone-(2).jpg', 'jpeg', 'image/jpeg', '69297', '2020-10-24 05:19:06', '2020-10-24 05:19:06'),
(223, 'Rechargeable Bluetooth Karaoke Trolly Speaker With Wireless Microphone (3).jpg', 'public', '/storage/24-Oct-2020/images/1603538346-Rechargeable-Bluetooth-Karaoke-Trolly-Speaker-With-Wireless-Microphone-(3).jpg', 'jpeg', 'image/jpeg', '72641', '2020-10-24 05:19:06', '2020-10-24 05:19:06'),
(224, 'Rechargeable Bluetooth Karaoke Trolly Speaker With Wireless Microphone.jpg', 'public', '/storage/24-Oct-2020/images/1603538348-Rechargeable-Bluetooth-Karaoke-Trolly-Speaker-With-Wireless-Microphone.jpg', 'jpeg', 'image/jpeg', '69897', '2020-10-24 05:19:08', '2020-10-24 05:19:08'),
(225, 'Amazing 10 Layer Show Rak (3).jpg', 'public', '/storage/24-Oct-2020/images/1603539395-Amazing-10-Layer-Show-Rak-(3).jpg', 'jpeg', 'image/jpeg', '77312', '2020-10-24 05:36:35', '2020-10-24 05:36:35'),
(226, 'Amazing 10 Layer Show Rak (4).jpg', 'public', '/storage/24-Oct-2020/images/1603539395-Amazing-10-Layer-Show-Rak-(4).jpg', 'jpeg', 'image/jpeg', '68950', '2020-10-24 05:36:35', '2020-10-24 05:36:35'),
(227, 'Amazing 10 Layer Show Rak.jpg', 'public', '/storage/24-Oct-2020/images/1603539396-Amazing-10-Layer-Show-Rak.jpg', 'jpeg', 'image/jpeg', '76269', '2020-10-24 05:36:37', '2020-10-24 05:36:37'),
(228, 'Single sim Telephone Set (2).jpg', 'public', '/storage/24-Oct-2020/images/1603540157-Single-sim-Telephone-Set-(2).jpg', 'jpeg', 'image/jpeg', '48897', '2020-10-24 05:49:17', '2020-10-24 05:49:17'),
(229, 'Single sim Telephone Set.jpg', 'public', '/storage/24-Oct-2020/images/1603540157-Single-sim-Telephone-Set.jpg', 'jpeg', 'image/jpeg', '77012', '2020-10-24 05:49:17', '2020-10-24 05:49:17'),
(230, 'Spoon Set With Swan Stand (2).jpg', 'public', '/storage/24-Oct-2020/images/1603540881-Spoon-Set-With-Swan-Stand-(2).jpg', 'jpeg', 'image/jpeg', '69621', '2020-10-24 06:01:21', '2020-10-24 06:01:21'),
(231, 'Spoon Set With Swan Stand (1).jpg', 'public', '/storage/24-Oct-2020/images/1603540881-Spoon-Set-With-Swan-Stand-(1).jpg', 'jpeg', 'image/jpeg', '69232', '2020-10-24 06:01:21', '2020-10-24 06:01:21'),
(232, 'Spoon Set With Swan Stand (3).jpg', 'public', '/storage/24-Oct-2020/images/1603540884-Spoon-Set-With-Swan-Stand-(3).jpg', 'jpeg', 'image/jpeg', '67468', '2020-10-24 06:01:24', '2020-10-24 06:01:24'),
(233, 'Spoon Set With Swan Stand (4).jpg', 'public', '/storage/24-Oct-2020/images/1603540884-Spoon-Set-With-Swan-Stand-(4).jpg', 'jpeg', 'image/jpeg', '82162', '2020-10-24 06:01:24', '2020-10-24 06:01:24'),
(234, 'Nima-Grinder-Single (2).jpg', 'public', '/storage/24-Oct-2020/images/1603541691-Nima-Grinder-Single-(2).jpg', 'jpeg', 'image/jpeg', '64891', '2020-10-24 06:14:51', '2020-10-24 06:14:51'),
(235, 'Nima-Grinder-Single (3).jpg', 'public', '/storage/24-Oct-2020/images/1603541692-Nima-Grinder-Single-(3).jpg', 'jpeg', 'image/jpeg', '707488', '2020-10-24 06:14:52', '2020-10-24 06:14:52'),
(236, 'Nima-Grinder-Single.jpg', 'public', '/storage/24-Oct-2020/images/1603541692-Nima-Grinder-Single.jpg', 'jpeg', 'image/jpeg', '55399', '2020-10-24 06:14:52', '2020-10-24 06:14:52'),
(237, 'Stainless Steel Kitchen Rack (3).jpg', 'public', '/storage/24-Oct-2020/images/1603545232-Stainless-Steel-Kitchen-Rack-(3).jpg', 'jpeg', 'image/jpeg', '77497', '2020-10-24 07:13:53', '2020-10-24 07:13:53'),
(238, 'Stainless Steel Kitchen Rack (2).jpg', 'public', '/storage/24-Oct-2020/images/1603545232-Stainless-Steel-Kitchen-Rack-(2).jpg', 'jpeg', 'image/jpeg', '63271', '2020-10-24 07:13:53', '2020-10-24 07:13:53'),
(239, 'Stainless Steel Kitchen Rack.jpg', 'public', '/storage/24-Oct-2020/images/1603545234-Stainless-Steel-Kitchen-Rack.jpg', 'jpeg', 'image/jpeg', '77914', '2020-10-24 07:13:54', '2020-10-24 07:13:54'),
(240, 'Aluminium Steel Kitchen Rack (3).jpg', 'public', '/storage/24-Oct-2020/images/1603545372-Aluminium-Steel-Kitchen-Rack-(3).jpg', 'jpeg', 'image/jpeg', '75207', '2020-10-24 07:16:13', '2020-10-24 07:16:13'),
(241, 'Aluminium Steel Kitchen Rack (2).jpg', 'public', '/storage/24-Oct-2020/images/1603545373-Aluminium-Steel-Kitchen-Rack-(2).jpg', 'jpeg', 'image/jpeg', '75707', '2020-10-24 07:16:13', '2020-10-24 07:16:13'),
(242, 'Aluminium Steel Kitchen Rack (4).jpg', 'public', '/storage/24-Oct-2020/images/1603545374-Aluminium-Steel-Kitchen-Rack-(4).jpg', 'jpeg', 'image/jpeg', '80071', '2020-10-24 07:16:14', '2020-10-24 07:16:14'),
(243, 'Aluminium Steel Kitchen Rack.jpg', 'public', '/storage/24-Oct-2020/images/1603545374-Aluminium-Steel-Kitchen-Rack.jpg', 'jpeg', 'image/jpeg', '68542', '2020-10-24 07:16:14', '2020-10-24 07:16:14'),
(244, '2 layer kitchen (2).jpg', 'public', '/storage/24-Oct-2020/images/1603546101-2-layer-kitchen-(2).jpg', 'jpeg', 'image/jpeg', '76907', '2020-10-24 07:28:21', '2020-10-24 07:28:21'),
(245, '2 layer kitchen (3).jpg', 'public', '/storage/24-Oct-2020/images/1603546101-2-layer-kitchen-(3).jpg', 'jpeg', 'image/jpeg', '75629', '2020-10-24 07:28:21', '2020-10-24 07:28:21'),
(246, 'H878f20533aeb4ea3aad89031e9ebb972S.jpg', 'public', '/storage/24-Oct-2020/images/1603546103-H878f20533aeb4ea3aad89031e9ebb972S.jpg', 'jpeg', 'image/jpeg', '82263', '2020-10-24 07:28:23', '2020-10-24 07:28:23'),
(247, 'Vibro shape Slimming Vibration Belt - For Male And Female (3).jpg', 'public', '/storage/24-Oct-2020/images/1603547395-Vibro-shape-Slimming-Vibration-Belt---For-Male-And-Female-(3).jpg', 'jpeg', 'image/jpeg', '79249', '2020-10-24 07:49:56', '2020-10-24 07:49:56'),
(248, 'Vibro shape Slimming Vibration Belt - For Male And Female (2).jpg', 'public', '/storage/24-Oct-2020/images/1603547396-Vibro-shape-Slimming-Vibration-Belt---For-Male-And-Female-(2).jpg', 'jpeg', 'image/jpeg', '78585', '2020-10-24 07:49:56', '2020-10-24 07:49:56'),
(249, 'Vibro shape Slimming Vibration Belt - For Male And Female.jpg', 'public', '/storage/24-Oct-2020/images/1603547397-Vibro-shape-Slimming-Vibration-Belt---For-Male-And-Female.jpg', 'jpeg', 'image/jpeg', '76454', '2020-10-24 07:49:57', '2020-10-24 07:49:57'),
(250, 'GPS Tracker (2).jpg', 'public', '/storage/24-Oct-2020/images/1603555059-GPS-Tracker-(2).jpg', 'jpeg', 'image/jpeg', '54199', '2020-10-24 09:57:39', '2020-10-24 09:57:39'),
(251, 'GPS Tracker (3).jpg', 'public', '/storage/24-Oct-2020/images/1603555059-GPS-Tracker-(3).jpg', 'jpeg', 'image/jpeg', '81217', '2020-10-24 09:57:39', '2020-10-24 09:57:39'),
(252, 'GPS Tracker (4).jpg', 'public', '/storage/24-Oct-2020/images/1603555060-GPS-Tracker-(4).jpg', 'jpeg', 'image/jpeg', '56141', '2020-10-24 09:57:40', '2020-10-24 09:57:40'),
(253, 'GPS Tracker.jpg', 'public', '/storage/24-Oct-2020/images/1603555061-GPS-Tracker.jpg', 'jpeg', 'image/jpeg', '82143', '2020-10-24 09:57:41', '2020-10-24 09:57:41'),
(254, 'Q7 Blutooth Speaker (2) copy.jpg', 'public', '/storage/24-Oct-2020/images/1603565271-Q7-Blutooth-Speaker-(2)-copy.jpg', 'jpeg', 'image/jpeg', '76901', '2020-10-24 12:47:51', '2020-10-24 12:47:51'),
(255, 'Q7 Blutooth Speaker (3).jpg', 'public', '/storage/24-Oct-2020/images/1603565271-Q7-Blutooth-Speaker-(3).jpg', 'jpeg', 'image/jpeg', '70863', '2020-10-24 12:47:51', '2020-10-24 12:47:51'),
(256, 'Q7 Blutooth Speaker (4).jpg', 'public', '/storage/24-Oct-2020/images/1603565272-Q7-Blutooth-Speaker-(4).jpg', 'jpeg', 'image/jpeg', '64029', '2020-10-24 12:47:52', '2020-10-24 12:47:52'),
(257, 'Q7 Blutooth Speaker.jpg', 'public', '/storage/24-Oct-2020/images/1603565272-Q7-Blutooth-Speaker.jpg', 'jpeg', 'image/jpeg', '71755', '2020-10-24 12:47:52', '2020-10-24 12:47:52'),
(258, 'Drill Machine Set (2).jpg', 'public', '/storage/24-Oct-2020/images/1603566280-Drill-Machine-Set-(2).jpg', 'jpeg', 'image/jpeg', '68564', '2020-10-24 13:04:40', '2020-10-24 13:04:40'),
(259, 'Drill Machine Set (3).jpg', 'public', '/storage/24-Oct-2020/images/1603566281-Drill-Machine-Set-(3).jpg', 'jpeg', 'image/jpeg', '71868', '2020-10-24 13:04:41', '2020-10-24 13:04:41'),
(260, 'Drill Machine Set (4).jpg', 'public', '/storage/24-Oct-2020/images/1603566283-Drill-Machine-Set-(4).jpg', 'jpeg', 'image/jpeg', '70771', '2020-10-24 13:04:43', '2020-10-24 13:04:43'),
(261, 'Paint-Zoom.jpg', 'public', '/storage/24-Oct-2020/images/1603566802-Paint-Zoom.jpg', 'jpeg', 'image/jpeg', '67798', '2020-10-24 13:13:22', '2020-10-24 13:13:22'),
(262, 'Paint-Zoom00.jpg', 'public', '/storage/24-Oct-2020/images/1603566802-Paint-Zoom00.jpg', 'jpeg', 'image/jpeg', '69490', '2020-10-24 13:13:22', '2020-10-24 13:13:22'),
(263, 'Paint-Zoom-2.jpg', 'public', '/storage/24-Oct-2020/images/1603566803-Paint-Zoom-2.jpg', 'jpeg', 'image/jpeg', '68942', '2020-10-24 13:13:23', '2020-10-24 13:13:23'),
(264, 'Paint-Zoom-3-1.jpg', 'public', '/storage/24-Oct-2020/images/1603566803-Paint-Zoom-3-1.jpg', 'jpeg', 'image/jpeg', '70725', '2020-10-24 13:13:23', '2020-10-24 13:13:23'),
(265, 'Paint-Zoom-4.jpg', 'public', '/storage/24-Oct-2020/images/1603566804-Paint-Zoom-4.jpg', 'jpeg', 'image/jpeg', '67676', '2020-10-24 13:13:24', '2020-10-24 13:13:24'),
(266, 'Rechargeable Green Colour Lager Pointer (2).jpg', 'public', '/storage/24-Oct-2020/images/1603567521-Rechargeable-Green-Colour-Lager-Pointer-(2).jpg', 'jpeg', 'image/jpeg', '61374', '2020-10-24 13:25:21', '2020-10-24 13:25:21'),
(267, 'Rechargeable Green Colour Lager Pointer (3).jpg', 'public', '/storage/24-Oct-2020/images/1603567522-Rechargeable-Green-Colour-Lager-Pointer-(3).jpg', 'jpeg', 'image/jpeg', '66141', '2020-10-24 13:25:22', '2020-10-24 13:25:22'),
(268, 'Rechargeable Green Colour Lager Pointer.jpg', 'public', '/storage/24-Oct-2020/images/1603567523-Rechargeable-Green-Colour-Lager-Pointer.jpg', 'jpeg', 'image/jpeg', '61216', '2020-10-24 13:25:23', '2020-10-24 13:25:23'),
(269, 'Laptop Table (2).jpg', 'public', '/storage/25-Oct-2020/images/1603611288-Laptop-Table-(2).jpg', 'jpeg', 'image/jpeg', '54711', '2020-10-25 01:34:48', '2020-10-25 01:34:48'),
(270, 'Laptop Table (4).jpg', 'public', '/storage/25-Oct-2020/images/1603611288-Laptop-Table-(4).jpg', 'jpeg', 'image/jpeg', '58914', '2020-10-25 01:34:48', '2020-10-25 01:34:48'),
(271, 'Laptop Table.jpg', 'public', '/storage/25-Oct-2020/images/1603611291-Laptop-Table.jpg', 'jpeg', 'image/jpeg', '58331', '2020-10-25 01:34:51', '2020-10-25 01:34:51'),
(272, 'Laptop Table (5).jpg', 'public', '/storage/25-Oct-2020/images/1603611291-Laptop-Table-(5).jpg', 'jpeg', 'image/jpeg', '68262', '2020-10-25 01:34:51', '2020-10-25 01:34:51'),
(273, 'Sweat Slim Belt (2).jpeg.jpg', 'public', '/storage/25-Oct-2020/images/1603611769-Sweat-Slim-Belt-(2).jpeg.jpg', 'jpeg', 'image/jpeg', '45537', '2020-10-25 01:42:49', '2020-10-25 01:42:49'),
(274, 'Sweat Slim Belt (2).jpg', 'public', '/storage/25-Oct-2020/images/1603611769-Sweat-Slim-Belt-(2).jpg', 'jpeg', 'image/jpeg', '55560', '2020-10-25 01:42:49', '2020-10-25 01:42:49'),
(275, 'Sweat Slim Belt.jpeg.jpg', 'public', '/storage/25-Oct-2020/images/1603611770-Sweat-Slim-Belt.jpeg.jpg', 'jpeg', 'image/jpeg', '64792', '2020-10-25 01:42:50', '2020-10-25 01:42:50'),
(276, 'Sweat Slim Belt.jpg', 'public', '/storage/25-Oct-2020/images/1603611770-Sweat-Slim-Belt.jpg', 'jpeg', 'image/jpeg', '48714', '2020-10-25 01:42:50', '2020-10-25 01:42:50'),
(277, 'Alarm Lock (3).jpg', 'public', '/storage/25-Oct-2020/images/1603613017-Alarm-Lock-(3).jpg', 'jpeg', 'image/jpeg', '65502', '2020-10-25 02:03:37', '2020-10-25 02:03:37'),
(278, 'Alarm Lock (2).jpg', 'public', '/storage/25-Oct-2020/images/1603613017-Alarm-Lock-(2).jpg', 'jpeg', 'image/jpeg', '66781', '2020-10-25 02:03:37', '2020-10-25 02:03:37'),
(279, 'Alarm Lock (4).jpg', 'public', '/storage/25-Oct-2020/images/1603613018-Alarm-Lock-(4).jpg', 'jpeg', 'image/jpeg', '61880', '2020-10-25 02:03:38', '2020-10-25 02:03:38'),
(280, 'Alarm Lock.jpg', 'public', '/storage/25-Oct-2020/images/1603613019-Alarm-Lock.jpg', 'jpeg', 'image/jpeg', '78641', '2020-10-25 02:03:39', '2020-10-25 02:03:39'),
(281, 'Slim N lilt (3).jpg', 'public', '/storage/25-Oct-2020/images/1603613987-Slim-N-lilt-(3).jpg', 'jpeg', 'image/jpeg', '46173', '2020-10-25 02:19:48', '2020-10-25 02:19:48'),
(282, 'Slim N lilt (4).jpg', 'public', '/storage/25-Oct-2020/images/1603613988-Slim-N-lilt-(4).jpg', 'jpeg', 'image/jpeg', '67795', '2020-10-25 02:19:48', '2020-10-25 02:19:48'),
(283, 'Slim N lilt.jpeg.jpg', 'public', '/storage/25-Oct-2020/images/1603613988-Slim-N-lilt.jpeg.jpg', 'jpeg', 'image/jpeg', '58525', '2020-10-25 02:19:48', '2020-10-25 02:19:48'),
(284, 'Slim N lilt.jpg', 'public', '/storage/25-Oct-2020/images/1603613989-Slim-N-lilt.jpg', 'jpeg', 'image/jpeg', '76846', '2020-10-25 02:19:49', '2020-10-25 02:19:49'),
(285, 'Single Air bad with pumper (2).jpg', 'public', '/storage/25-Oct-2020/images/1603622181-Single-Air-bad-with-pumper-(2).jpg', 'jpeg', 'image/jpeg', '62384', '2020-10-25 04:36:22', '2020-10-25 04:36:22'),
(286, 'Single Air bad with pumper (3).jpg', 'public', '/storage/25-Oct-2020/images/1603622182-Single-Air-bad-with-pumper-(3).jpg', 'jpeg', 'image/jpeg', '67716', '2020-10-25 04:36:22', '2020-10-25 04:36:22'),
(287, 'Single Air bad with pumper (4).jpg', 'public', '/storage/25-Oct-2020/images/1603622183-Single-Air-bad-with-pumper-(4).jpg', 'jpeg', 'image/jpeg', '67418', '2020-10-25 04:36:23', '2020-10-25 04:36:23'),
(288, 'Single Air bad with pumper.jpg', 'public', '/storage/25-Oct-2020/images/1603622183-Single-Air-bad-with-pumper.jpg', 'jpeg', 'image/jpeg', '72355', '2020-10-25 04:36:23', '2020-10-25 04:36:23'),
(289, 'Blower Machine (2).jpg', 'public', '/storage/26-Oct-2020/images/1603695534-Blower-Machine-(2).jpg', 'jpeg', 'image/jpeg', '44716', '2020-10-26 00:58:54', '2020-10-26 00:58:54'),
(290, 'Blower Machine (3).jpg', 'public', '/storage/26-Oct-2020/images/1603695536-Blower-Machine-(3).jpg', 'jpeg', 'image/jpeg', '50322', '2020-10-26 00:58:56', '2020-10-26 00:58:56'),
(291, 'Blower Machine (4).jpg', 'public', '/storage/26-Oct-2020/images/1603695536-Blower-Machine-(4).jpg', 'jpeg', 'image/jpeg', '53146', '2020-10-26 00:58:56', '2020-10-26 00:58:56'),
(292, 'Blower Machine.jpg', 'public', '/storage/26-Oct-2020/images/1603695540-Blower-Machine.jpg', 'jpeg', 'image/jpeg', '74215', '2020-10-26 00:59:00', '2020-10-26 00:59:00'),
(293, 'Kemei 11in 1 Professonar Shaver & Trimmer (2).jpg', 'public', '/storage/26-Oct-2020/images/1603695749-Kemei-11in-1-Professonar-Shaver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '66073', '2020-10-26 01:02:29', '2020-10-26 01:02:29'),
(294, 'Kemei 11in 1 Professonar Shaver & Trimmer (3).jpg', 'public', '/storage/26-Oct-2020/images/1603695749-Kemei-11in-1-Professonar-Shaver-&-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '78746', '2020-10-26 01:02:29', '2020-10-26 01:02:29'),
(295, 'Kemei 11in 1 Professonar Shaver & Trimmer (4).jpg', 'public', '/storage/26-Oct-2020/images/1603695750-Kemei-11in-1-Professonar-Shaver-&-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '61565', '2020-10-26 01:02:30', '2020-10-26 01:02:30'),
(296, 'Kemei 11in 1 Professonar Shaver & Trimmer.jpg', 'public', '/storage/26-Oct-2020/images/1603695750-Kemei-11in-1-Professonar-Shaver-&-Trimmer.jpg', 'jpeg', 'image/jpeg', '63085', '2020-10-26 01:02:30', '2020-10-26 01:02:30'),
(297, 'portable tripot (3).jpg', 'public', '/storage/26-Oct-2020/images/1603696533-portable-tripot-(3).jpg', 'jpeg', 'image/jpeg', '45367', '2020-10-26 01:15:33', '2020-10-26 01:15:33'),
(298, 'portable tripot (2).jpg', 'public', '/storage/26-Oct-2020/images/1603696533-portable-tripot-(2).jpg', 'jpeg', 'image/jpeg', '56511', '2020-10-26 01:15:33', '2020-10-26 01:15:33'),
(299, 'portable tripot (4).jpg', 'public', '/storage/26-Oct-2020/images/1603696534-portable-tripot-(4).jpg', 'jpeg', 'image/jpeg', '35141', '2020-10-26 01:15:34', '2020-10-26 01:15:34'),
(300, 'portable tripot.jpg', 'public', '/storage/26-Oct-2020/images/1603696534-portable-tripot.jpg', 'jpeg', 'image/jpeg', '51399', '2020-10-26 01:15:34', '2020-10-26 01:15:34'),
(301, 'Remot Control Switch.jpg', 'public', '/storage/26-Oct-2020/images/1603696729-Remot-Control-Switch.jpg', 'jpeg', 'image/jpeg', '58306', '2020-10-26 01:18:49', '2020-10-26 01:18:49'),
(302, 'Remot Control Switch (2).jpg', 'public', '/storage/26-Oct-2020/images/1603696730-Remot-Control-Switch-(2).jpg', 'jpeg', 'image/jpeg', '66341', '2020-10-26 01:18:50', '2020-10-26 01:18:50'),
(303, 'Digital Boote passer machine (2).jpg', 'public', '/storage/26-Oct-2020/images/1603697036-Digital-Boote-passer-machine-(2).jpg', 'jpeg', 'image/jpeg', '31978', '2020-10-26 01:23:56', '2020-10-26 01:23:56'),
(304, 'Digital Boote passer machine (3).jpg', 'public', '/storage/26-Oct-2020/images/1603697036-Digital-Boote-passer-machine-(3).jpg', 'jpeg', 'image/jpeg', '46870', '2020-10-26 01:23:56', '2020-10-26 01:23:56'),
(305, 'Digital Boote passer machine (4).jpeg.jpg', 'public', '/storage/26-Oct-2020/images/1603697041-Digital-Boote-passer-machine-(4).jpeg.jpg', 'jpeg', 'image/jpeg', '53099', '2020-10-26 01:24:01', '2020-10-26 01:24:01'),
(306, 'Digital Boote passer machine (4).jpg', 'public', '/storage/26-Oct-2020/images/1603697041-Digital-Boote-passer-machine-(4).jpg', 'jpeg', 'image/jpeg', '55997', '2020-10-26 01:24:01', '2020-10-26 01:24:01'),
(307, 'Back Support (2).jpg', 'public', '/storage/26-Oct-2020/images/1603697302-Back-Support-(2).jpg', 'jpeg', 'image/jpeg', '73464', '2020-10-26 01:28:22', '2020-10-26 01:28:22'),
(308, 'Back Support (3).jpg', 'public', '/storage/26-Oct-2020/images/1603697302-Back-Support-(3).jpg', 'jpeg', 'image/jpeg', '46287', '2020-10-26 01:28:22', '2020-10-26 01:28:22'),
(309, 'Back Support (4).jpg', 'public', '/storage/26-Oct-2020/images/1603697303-Back-Support-(4).jpg', 'jpeg', 'image/jpeg', '62663', '2020-10-26 01:28:23', '2020-10-26 01:28:23'),
(310, 'Back Support.jpg', 'public', '/storage/26-Oct-2020/images/1603697304-Back-Support.jpg', 'jpeg', 'image/jpeg', '58585', '2020-10-26 01:28:24', '2020-10-26 01:28:24'),
(311, 'Anti shoring Device (2).jpg', 'public', '/storage/26-Oct-2020/images/1603697622-Anti-shoring-Device-(2).jpg', 'jpeg', 'image/jpeg', '45386', '2020-10-26 01:33:42', '2020-10-26 01:33:42'),
(312, 'Anti shoring Device (3).jpg', 'public', '/storage/26-Oct-2020/images/1603697622-Anti-shoring-Device-(3).jpg', 'jpeg', 'image/jpeg', '49769', '2020-10-26 01:33:42', '2020-10-26 01:33:42'),
(313, 'Anti shoring Device (4).jpg', 'public', '/storage/26-Oct-2020/images/1603697624-Anti-shoring-Device-(4).jpg', 'jpeg', 'image/jpeg', '51710', '2020-10-26 01:33:44', '2020-10-26 01:33:44'),
(314, 'Anti shoring Device.jpg', 'public', '/storage/26-Oct-2020/images/1603697624-Anti-shoring-Device.jpg', 'jpeg', 'image/jpeg', '47981', '2020-10-26 01:33:44', '2020-10-26 01:33:44'),
(315, 'Digital Tharaphy (5).jpg', 'public', '/storage/26-Oct-2020/images/1603698029-Digital-Tharaphy-(5).jpg', 'jpeg', 'image/jpeg', '53041', '2020-10-26 01:40:29', '2020-10-26 01:40:29'),
(316, 'Digital Tharaphy (6).jpg', 'public', '/storage/26-Oct-2020/images/1603698029-Digital-Tharaphy-(6).jpg', 'jpeg', 'image/jpeg', '68776', '2020-10-26 01:40:29', '2020-10-26 01:40:29'),
(317, 'Digital Tharaphy (8).jpg', 'public', '/storage/26-Oct-2020/images/1603698030-Digital-Tharaphy-(8).jpg', 'jpeg', 'image/jpeg', '57822', '2020-10-26 01:40:30', '2020-10-26 01:40:30'),
(318, 'Digital Tharaphy (7).jpg', 'public', '/storage/26-Oct-2020/images/1603698030-Digital-Tharaphy-(7).jpg', 'jpeg', 'image/jpeg', '47150', '2020-10-26 01:40:30', '2020-10-26 01:40:30'),
(319, 'T8 smart watch (2).jpg', 'public', '/storage/26-Oct-2020/images/1603698524-T8-smart-watch-(2).jpg', 'jpeg', 'image/jpeg', '62137', '2020-10-26 01:48:44', '2020-10-26 01:48:44');
INSERT INTO `images` (`id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(320, 'T8 smart watch (3).jpg', 'public', '/storage/26-Oct-2020/images/1603698524-T8-smart-watch-(3).jpg', 'jpeg', 'image/jpeg', '67112', '2020-10-26 01:48:45', '2020-10-26 01:48:45'),
(321, 'T8 smart watch (4).jpg', 'public', '/storage/26-Oct-2020/images/1603698525-T8-smart-watch-(4).jpg', 'jpeg', 'image/jpeg', '56302', '2020-10-26 01:48:45', '2020-10-26 01:48:45'),
(322, 'T8 smart watch.jpg', 'public', '/storage/26-Oct-2020/images/1603698525-T8-smart-watch.jpg', 'jpeg', 'image/jpeg', '71609', '2020-10-26 01:48:46', '2020-10-26 01:48:46'),
(323, 'V8 smart watch (3).jpg', 'public', '/storage/26-Oct-2020/images/1603699302-V8-smart-watch-(3).jpg', 'jpeg', 'image/jpeg', '54901', '2020-10-26 02:01:42', '2020-10-26 02:01:42'),
(324, 'V8 smart watch (2).jpg', 'public', '/storage/26-Oct-2020/images/1603699302-V8-smart-watch-(2).jpg', 'jpeg', 'image/jpeg', '67547', '2020-10-26 02:01:42', '2020-10-26 02:01:42'),
(325, 'V8 smart watch.jpg', 'public', '/storage/26-Oct-2020/images/1603699303-V8-smart-watch.jpg', 'jpeg', 'image/jpeg', '43547', '2020-10-26 02:01:43', '2020-10-26 02:01:43'),
(326, 'V8 smart watch copy.jpg', 'public', '/storage/26-Oct-2020/images/1603699303-V8-smart-watch-copy.jpg', 'jpeg', 'image/jpeg', '72295', '2020-10-26 02:01:43', '2020-10-26 02:01:43'),
(327, 'X6 smart watch (2).jpg', 'public', '/storage/26-Oct-2020/images/1603699587-X6-smart-watch-(2).jpg', 'jpeg', 'image/jpeg', '64915', '2020-10-26 02:06:27', '2020-10-26 02:06:27'),
(328, 'X6 smart watch (3).jpg', 'public', '/storage/26-Oct-2020/images/1603699587-X6-smart-watch-(3).jpg', 'jpeg', 'image/jpeg', '69362', '2020-10-26 02:06:27', '2020-10-26 02:06:27'),
(329, 'X6 smart watch (4).jpg', 'public', '/storage/26-Oct-2020/images/1603699589-X6-smart-watch-(4).jpg', 'jpeg', 'image/jpeg', '43466', '2020-10-26 02:06:29', '2020-10-26 02:06:29'),
(330, 'X6 smart watch.jpg', 'public', '/storage/26-Oct-2020/images/1603699589-X6-smart-watch.jpg', 'jpeg', 'image/jpeg', '50662', '2020-10-26 02:06:29', '2020-10-26 02:06:29'),
(331, 'Jeep Man\'s Sholder Bag (3).jpg', 'public', '/storage/26-Oct-2020/images/1603699995-Jeep-Man\'s-Sholder-Bag-(3).jpg', 'jpeg', 'image/jpeg', '60428', '2020-10-26 02:13:15', '2020-10-26 02:13:15'),
(332, 'Jeep Man\'s Sholder Bag (2).jpg', 'public', '/storage/26-Oct-2020/images/1603699995-Jeep-Man\'s-Sholder-Bag-(2).jpg', 'jpeg', 'image/jpeg', '68431', '2020-10-26 02:13:15', '2020-10-26 02:13:15'),
(333, 'Jeep Man\'s Sholder Bag (4).jpg', 'public', '/storage/26-Oct-2020/images/1603699996-Jeep-Man\'s-Sholder-Bag-(4).jpg', 'jpeg', 'image/jpeg', '71606', '2020-10-26 02:13:16', '2020-10-26 02:13:16'),
(334, 'Jeep Man\'s Sholder Bag.jpg', 'public', '/storage/26-Oct-2020/images/1603699996-Jeep-Man\'s-Sholder-Bag.jpg', 'jpeg', 'image/jpeg', '37354', '2020-10-26 02:13:17', '2020-10-26 02:13:17'),
(335, 'Cross-Body Bag Pack (3) copy.jpg', 'public', '/storage/26-Oct-2020/images/1603700272-Cross-Body-Bag-Pack-(3)-copy.jpg', 'jpeg', 'image/jpeg', '68677', '2020-10-26 02:17:52', '2020-10-26 02:17:52'),
(336, 'Cross-Body Bag Pack (2).jpg', 'public', '/storage/26-Oct-2020/images/1603700272-Cross-Body-Bag-Pack-(2).jpg', 'jpeg', 'image/jpeg', '60730', '2020-10-26 02:17:52', '2020-10-26 02:17:52'),
(337, 'Cross-Body Bag Pack (4).jpg', 'public', '/storage/26-Oct-2020/images/1603700273-Cross-Body-Bag-Pack-(4).jpg', 'jpeg', 'image/jpeg', '65868', '2020-10-26 02:17:53', '2020-10-26 02:17:53'),
(338, 'Cross-Body Bag Pack.jpg', 'public', '/storage/26-Oct-2020/images/1603700273-Cross-Body-Bag-Pack.jpg', 'jpeg', 'image/jpeg', '59959', '2020-10-26 02:17:53', '2020-10-26 02:17:53'),
(339, 'Pro Biker Hand Gloves00.jpg', 'public', '/storage/26-Oct-2020/images/1603701161-Pro-Biker-Hand-Gloves00.jpg', 'jpeg', 'image/jpeg', '44359', '2020-10-26 02:32:41', '2020-10-26 02:32:41'),
(340, 'Pro Biker Hand Gloves.jpg', 'public', '/storage/26-Oct-2020/images/1603701161-Pro-Biker-Hand-Gloves.jpg', 'jpeg', 'image/jpeg', '70897', '2020-10-26 02:32:41', '2020-10-26 02:32:41'),
(341, 'Pro Biker Hand Gloves0.jpg', 'public', '/storage/26-Oct-2020/images/1603701162-Pro-Biker-Hand-Gloves0.jpg', 'jpeg', 'image/jpeg', '49281', '2020-10-26 02:32:42', '2020-10-26 02:32:42'),
(342, 'Mobile-Tape-Stand-2.jpg', 'public', '/storage/26-Oct-2020/images/1603701464-Mobile-Tape-Stand-2.jpg', 'jpeg', 'image/jpeg', '64071', '2020-10-26 02:37:44', '2020-10-26 02:37:44'),
(343, 'Mobile-Tape-Stand.jpg', 'public', '/storage/26-Oct-2020/images/1603701464-Mobile-Tape-Stand.jpg', 'jpeg', 'image/jpeg', '61683', '2020-10-26 02:37:44', '2020-10-26 02:37:44'),
(344, 'Mobile-Tape-Stand-3.jpg', 'public', '/storage/26-Oct-2020/images/1603701465-Mobile-Tape-Stand-3.jpg', 'jpeg', 'image/jpeg', '63755', '2020-10-26 02:37:45', '2020-10-26 02:37:45'),
(345, 'Mobile-Tape-Stand-4.jpg', 'public', '/storage/26-Oct-2020/images/1603701465-Mobile-Tape-Stand-4.jpg', 'jpeg', 'image/jpeg', '46750', '2020-10-26 02:37:45', '2020-10-26 02:37:45'),
(346, 'Mobile Phone Holder For Bike (2).jpg', 'public', '/storage/26-Oct-2020/images/1603701883-Mobile-Phone-Holder-For-Bike-(2).jpg', 'jpeg', 'image/jpeg', '57302', '2020-10-26 02:44:43', '2020-10-26 02:44:43'),
(347, 'Mobile Phone Holder For Bike (3).jpg', 'public', '/storage/26-Oct-2020/images/1603701883-Mobile-Phone-Holder-For-Bike-(3).jpg', 'jpeg', 'image/jpeg', '62404', '2020-10-26 02:44:43', '2020-10-26 02:44:43'),
(348, 'Mobile Phone Holder For Bike.jpg', 'public', '/storage/26-Oct-2020/images/1603701884-Mobile-Phone-Holder-For-Bike.jpg', 'jpeg', 'image/jpeg', '43255', '2020-10-26 02:44:44', '2020-10-26 02:44:44'),
(349, 'Mobile Phone Holder For Bike (4).jpg', 'public', '/storage/26-Oct-2020/images/1603701884-Mobile-Phone-Holder-For-Bike-(4).jpg', 'jpeg', 'image/jpeg', '54464', '2020-10-26 02:44:44', '2020-10-26 02:44:44'),
(350, '2-in-1-Night-vision-sunglass-2.jpg', 'public', '/storage/26-Oct-2020/images/1603702029-2-in-1-Night-vision-sunglass-2.jpg', 'jpeg', 'image/jpeg', '42835', '2020-10-26 02:47:09', '2020-10-26 02:47:09'),
(351, '2-in-1-Night-vision-sunglass.jpg', 'public', '/storage/26-Oct-2020/images/1603702029-2-in-1-Night-vision-sunglass.jpg', 'jpeg', 'image/jpeg', '47300', '2020-10-26 02:47:09', '2020-10-26 02:47:09'),
(352, '2-in-1-Night-vision-sunglass-3.jpg', 'public', '/storage/26-Oct-2020/images/1603702029-2-in-1-Night-vision-sunglass-3.jpg', 'jpeg', 'image/jpeg', '68156', '2020-10-26 02:47:10', '2020-10-26 02:47:10'),
(353, '2-in-1-Night-vision-sunglass-4.jpg', 'public', '/storage/26-Oct-2020/images/1603702030-2-in-1-Night-vision-sunglass-4.jpg', 'jpeg', 'image/jpeg', '33582', '2020-10-26 02:47:10', '2020-10-26 02:47:10'),
(354, 'Winter Stylish Cap (2) copy.jpg', 'public', '/storage/26-Oct-2020/images/1603702252-Winter-Stylish-Cap-(2)-copy.jpg', 'jpeg', 'image/jpeg', '57072', '2020-10-26 02:50:52', '2020-10-26 02:50:52'),
(355, 'Winter Stylish Cap (5).jpg', 'public', '/storage/26-Oct-2020/images/1603702252-Winter-Stylish-Cap-(5).jpg', 'jpeg', 'image/jpeg', '63695', '2020-10-26 02:50:52', '2020-10-26 02:50:52'),
(356, 'Winter Stylish Cap (6).jpg', 'public', '/storage/26-Oct-2020/images/1603702254-Winter-Stylish-Cap-(6).jpg', 'jpeg', 'image/jpeg', '63585', '2020-10-26 02:50:54', '2020-10-26 02:50:54'),
(357, 'Winter Stylish Cap (7).jpg', 'public', '/storage/26-Oct-2020/images/1603702254-Winter-Stylish-Cap-(7).jpg', 'jpeg', 'image/jpeg', '66473', '2020-10-26 02:50:54', '2020-10-26 02:50:54'),
(358, '5 in 1 Sofa Bed (2).jpg', 'public', '/storage/26-Oct-2020/images/1603710684-5-in-1-Sofa-Bed-(2).jpg', 'jpeg', 'image/jpeg', '40483', '2020-10-26 05:11:24', '2020-10-26 05:11:24'),
(359, '5 in 1 Sofa Bed (3).jpg', 'public', '/storage/26-Oct-2020/images/1603710684-5-in-1-Sofa-Bed-(3).jpg', 'jpeg', 'image/jpeg', '54019', '2020-10-26 05:11:24', '2020-10-26 05:11:24'),
(360, '5 in 1 Sofa Bed (4).jpg', 'public', '/storage/26-Oct-2020/images/1603710685-5-in-1-Sofa-Bed-(4).jpg', 'jpeg', 'image/jpeg', '58067', '2020-10-26 05:11:25', '2020-10-26 05:11:25'),
(361, '5 in 1 Sofa Bed.jpg', 'public', '/storage/26-Oct-2020/images/1603710685-5-in-1-Sofa-Bed.jpg', 'jpeg', 'image/jpeg', '62563', '2020-10-26 05:11:25', '2020-10-26 05:11:25'),
(362, 'Comport baby carier bag (2) copy.jpg', 'public', '/storage/26-Oct-2020/images/1603711269-Comport-baby-carier-bag-(2)-copy.jpg', 'jpeg', 'image/jpeg', '40066', '2020-10-26 05:21:09', '2020-10-26 05:21:09'),
(363, 'Comport baby carier bag (3) copy.jpg', 'public', '/storage/26-Oct-2020/images/1603711269-Comport-baby-carier-bag-(3)-copy.jpg', 'jpeg', 'image/jpeg', '64489', '2020-10-26 05:21:09', '2020-10-26 05:21:09'),
(364, 'Comport baby carier bag (4).jpg', 'public', '/storage/26-Oct-2020/images/1603711270-Comport-baby-carier-bag-(4).jpg', 'jpeg', 'image/jpeg', '60974', '2020-10-26 05:21:10', '2020-10-26 05:21:10'),
(365, 'Comport baby carier bag copy.jpg', 'public', '/storage/26-Oct-2020/images/1603711270-Comport-baby-carier-bag-copy.jpg', 'jpeg', 'image/jpeg', '60110', '2020-10-26 05:21:10', '2020-10-26 05:21:10'),
(366, 'Jeep man\'s Cross body bag (2).jpg', 'public', '/storage/26-Oct-2020/images/1603714901-Jeep-man\'s-Cross-body-bag-(2).jpg', 'jpeg', 'image/jpeg', '31597', '2020-10-26 06:21:41', '2020-10-26 06:21:41'),
(367, 'Jeep man\'s Cross body bag.jpg', 'public', '/storage/26-Oct-2020/images/1603714901-Jeep-man\'s-Cross-body-bag.jpg', 'jpeg', 'image/jpeg', '51258', '2020-10-26 06:21:41', '2020-10-26 06:21:41'),
(368, 'Air bad (3).jpg', 'public', '/storage/26-Oct-2020/images/1603715451-Air-bad-(3).jpg', 'jpeg', 'image/jpeg', '47380', '2020-10-26 06:30:51', '2020-10-26 06:30:51'),
(369, 'KEMEI 8 IN 1 Shaver &Trimmer (4).jpg', 'public', '/storage/26-Oct-2020/images/1603717421-KEMEI-8-IN-1-Shaver-&Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '45459', '2020-10-26 07:03:41', '2020-10-26 07:03:41'),
(370, 'KEMEI 8 IN 1 Shaver &Trimmer (2).jpg', 'public', '/storage/26-Oct-2020/images/1603717422-KEMEI-8-IN-1-Shaver-&Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '41975', '2020-10-26 07:03:42', '2020-10-26 07:03:42'),
(371, 'KEMEI 8 IN 1 Shaver &Trimmer (5).jpg', 'public', '/storage/26-Oct-2020/images/1603717422-KEMEI-8-IN-1-Shaver-&Trimmer-(5).jpg', 'jpeg', 'image/jpeg', '56467', '2020-10-26 07:03:43', '2020-10-26 07:03:43'),
(372, 'KEMEI 8 IN 1 Shaver &Trimmer.jpg', 'public', '/storage/26-Oct-2020/images/1603717423-KEMEI-8-IN-1-Shaver-&Trimmer.jpg', 'jpeg', 'image/jpeg', '42589', '2020-10-26 07:03:43', '2020-10-26 07:03:43'),
(373, 'Blutooth speker 147bt (3) copy.jpg', 'public', '/storage/26-Oct-2020/images/1603717958-Blutooth-speker-147bt-(3)-copy.jpg', 'jpeg', 'image/jpeg', '72328', '2020-10-26 07:12:38', '2020-10-26 07:12:38'),
(374, 'Blutooth speker 147bt (2) copy.jpg', 'public', '/storage/26-Oct-2020/images/1603717958-Blutooth-speker-147bt-(2)-copy.jpg', 'jpeg', 'image/jpeg', '66940', '2020-10-26 07:12:38', '2020-10-26 07:12:38'),
(375, 'Blutooth speker 147bt (4) copy.jpg', 'public', '/storage/26-Oct-2020/images/1603717959-Blutooth-speker-147bt-(4)-copy.jpg', 'jpeg', 'image/jpeg', '45815', '2020-10-26 07:12:39', '2020-10-26 07:12:39'),
(376, 'Blutooth speker 147bt (5).jpg', 'public', '/storage/26-Oct-2020/images/1603717959-Blutooth-speker-147bt-(5).jpg', 'jpeg', 'image/jpeg', '57882', '2020-10-26 07:12:39', '2020-10-26 07:12:39'),
(377, '1f745ff1368bf312b56a8414cb7e64cd.jpg', 'public', '/storage/26-Oct-2020/images/1603718650-1f745ff1368bf312b56a8414cb7e64cd.jpg', 'jpeg', 'image/jpeg', '54982', '2020-10-26 07:24:10', '2020-10-26 07:24:10'),
(378, 'Magic-bullet jucer  Machine (2).jpg', 'public', '/storage/26-Oct-2020/images/1603718650-Magic-bullet-jucer-Machine-(2).jpg', 'jpeg', 'image/jpeg', '54278', '2020-10-26 07:24:10', '2020-10-26 07:24:10'),
(379, 'Magic-bullet jucer  Machine (3).jpg', 'public', '/storage/26-Oct-2020/images/1603718651-Magic-bullet-jucer-Machine-(3).jpg', 'jpeg', 'image/jpeg', '52108', '2020-10-26 07:24:12', '2020-10-26 07:24:12'),
(380, 'Magic-bullet jucer  Machine.jpg', 'public', '/storage/26-Oct-2020/images/1603718652-Magic-bullet-jucer-Machine.jpg', 'jpeg', 'image/jpeg', '54652', '2020-10-26 07:24:12', '2020-10-26 07:24:12'),
(381, 'BM-10 Mini Kokia Phone0 (3) copy.jpg', 'public', '/storage/26-Oct-2020/images/1603720114-BM-10-Mini-Kokia-Phone0-(3)-copy.jpg', 'jpeg', 'image/jpeg', '29339', '2020-10-26 07:48:34', '2020-10-26 07:48:34'),
(382, 'BM-10 Mini Kokia Phone0 (2).jpg', 'public', '/storage/26-Oct-2020/images/1603720114-BM-10-Mini-Kokia-Phone0-(2).jpg', 'jpeg', 'image/jpeg', '47294', '2020-10-26 07:48:34', '2020-10-26 07:48:34'),
(383, 'BM-10 Mini Kokia Phone0 (4).jpg', 'public', '/storage/26-Oct-2020/images/1603720116-BM-10-Mini-Kokia-Phone0-(4).jpg', 'jpeg', 'image/jpeg', '40793', '2020-10-26 07:48:36', '2020-10-26 07:48:36'),
(384, 'BM-10 Mini Kokia Phone0.jpg', 'public', '/storage/26-Oct-2020/images/1603720116-BM-10-Mini-Kokia-Phone0.jpg', 'jpeg', 'image/jpeg', '38965', '2020-10-26 07:48:36', '2020-10-26 07:48:36'),
(385, '100 in 1 Drill Machine Set.01.jpg', 'public', '/storage/26-Oct-2020/images/1603726039-100-in-1-Drill-Machine-Set.01.jpg', 'jpeg', 'image/jpeg', '63769', '2020-10-26 09:27:19', '2020-10-26 09:27:19'),
(386, '100 in 1 Drill Machine Set.jpg', 'public', '/storage/26-Oct-2020/images/1603726039-100-in-1-Drill-Machine-Set.jpg', 'jpeg', 'image/jpeg', '63909', '2020-10-26 09:27:20', '2020-10-26 09:27:20'),
(387, 'Remot holder (2).jpg', 'public', '/storage/26-Oct-2020/images/1603726448-Remot-holder-(2).jpg', 'jpeg', 'image/jpeg', '47984', '2020-10-26 09:34:08', '2020-10-26 09:34:08'),
(388, 'Remot holder (3).jpg', 'public', '/storage/26-Oct-2020/images/1603726449-Remot-holder-(3).jpg', 'jpeg', 'image/jpeg', '58867', '2020-10-26 09:34:09', '2020-10-26 09:34:09'),
(389, 'Remot holder.jpeg.jpg', 'public', '/storage/26-Oct-2020/images/1603726449-Remot-holder.jpeg.jpg', 'jpeg', 'image/jpeg', '52843', '2020-10-26 09:34:10', '2020-10-26 09:34:10'),
(390, 'Remot holder.jpg', 'public', '/storage/26-Oct-2020/images/1603726451-Remot-holder.jpg', 'jpeg', 'image/jpeg', '45551', '2020-10-26 09:34:11', '2020-10-26 09:34:11'),
(391, 'KECHAODA K115 (2).jpg', 'public', '/storage/26-Oct-2020/images/1603727519-KECHAODA-K115-(2).jpg', 'jpeg', 'image/jpeg', '37382', '2020-10-26 09:52:00', '2020-10-26 09:52:00'),
(392, 'KECHAODA K115 (3).jpg', 'public', '/storage/26-Oct-2020/images/1603727521-KECHAODA-K115-(3).jpg', 'jpeg', 'image/jpeg', '53016', '2020-10-26 09:52:02', '2020-10-26 09:52:02'),
(393, 'KECHAODA K115.jpg', 'public', '/storage/26-Oct-2020/images/1603727523-KECHAODA-K115.jpg', 'jpeg', 'image/jpeg', '30363', '2020-10-26 09:52:03', '2020-10-26 09:52:03'),
(394, 'KECHAODA K115 (4).jpg', 'public', '/storage/26-Oct-2020/images/1603727523-KECHAODA-K115-(4).jpg', 'jpeg', 'image/jpeg', '49267', '2020-10-26 09:52:03', '2020-10-26 09:52:03'),
(395, 'Money Detector Machine (2).jpg', 'public', '/storage/26-Oct-2020/images/1603728133-Money-Detector-Machine-(2).jpg', 'jpeg', 'image/jpeg', '28149', '2020-10-26 10:02:13', '2020-10-26 10:02:13'),
(396, 'Money Detector Machine (3).jpg', 'public', '/storage/26-Oct-2020/images/1603728133-Money-Detector-Machine-(3).jpg', 'jpeg', 'image/jpeg', '54088', '2020-10-26 10:02:13', '2020-10-26 10:02:13'),
(397, 'Money Detector Machine.jpg', 'public', '/storage/26-Oct-2020/images/1603728135-Money-Detector-Machine.jpg', 'jpeg', 'image/jpeg', '50384', '2020-10-26 10:02:15', '2020-10-26 10:02:15'),
(398, '2Layer clothing rak (3).jpeg.jpg', 'public', '/storage/27-Oct-2020/images/1603779484-2Layer-clothing-rak-(3).jpeg.jpg', 'jpeg', 'image/jpeg', '46652', '2020-10-27 00:18:04', '2020-10-27 00:18:04'),
(399, '2Layer clothing rak (2).jpeg.jpg', 'public', '/storage/27-Oct-2020/images/1603779485-2Layer-clothing-rak-(2).jpeg.jpg', 'jpeg', 'image/jpeg', '60136', '2020-10-27 00:18:05', '2020-10-27 00:18:05'),
(400, '2Layer clothing rak (4).jpeg.jpg', 'public', '/storage/27-Oct-2020/images/1603779485-2Layer-clothing-rak-(4).jpeg.jpg', 'jpeg', 'image/jpeg', '40546', '2020-10-27 00:18:05', '2020-10-27 00:18:05'),
(401, '40pcs hand tool combination socket  set For Motorcycles (3).jpg', 'public', '/storage/27-Oct-2020/images/1603783768-40pcs-hand-tool-combination-socket-set-For-Motorcycles-(3).jpg', 'jpeg', 'image/jpeg', '50888', '2020-10-27 01:29:28', '2020-10-27 01:29:28'),
(402, '40pcs hand tool combination socket  set For Motorcycles (2).jpg', 'public', '/storage/27-Oct-2020/images/1603783768-40pcs-hand-tool-combination-socket-set-For-Motorcycles-(2).jpg', 'jpeg', 'image/jpeg', '47161', '2020-10-27 01:29:28', '2020-10-27 01:29:28'),
(403, '40pcs hand tool combination socket  set For Motorcycles (4).jpg', 'public', '/storage/27-Oct-2020/images/1603783769-40pcs-hand-tool-combination-socket-set-For-Motorcycles-(4).jpg', 'jpeg', 'image/jpeg', '46472', '2020-10-27 01:29:29', '2020-10-27 01:29:29'),
(404, '40pcs hand tool combination socket  set For Motorcycles.jpg', 'public', '/storage/27-Oct-2020/images/1603783769-40pcs-hand-tool-combination-socket-set-For-Motorcycles.jpg', 'jpeg', 'image/jpeg', '44268', '2020-10-27 01:29:29', '2020-10-27 01:29:29'),
(405, 'Mini torch light (2).jpg', 'public', '/storage/27-Oct-2020/images/1603784718-Mini-torch-light-(2).jpg', 'jpeg', 'image/jpeg', '36609', '2020-10-27 01:45:18', '2020-10-27 01:45:18'),
(406, 'Mini torch light (3).jpg', 'public', '/storage/27-Oct-2020/images/1603784718-Mini-torch-light-(3).jpg', 'jpeg', 'image/jpeg', '44320', '2020-10-27 01:45:18', '2020-10-27 01:45:18'),
(407, 'Mini torch light copy.jpg', 'public', '/storage/27-Oct-2020/images/1603784720-Mini-torch-light-copy.jpg', 'jpeg', 'image/jpeg', '37605', '2020-10-27 01:45:20', '2020-10-27 01:45:20'),
(408, 'Solar Power Bank (3).jpg', 'public', '/storage/27-Oct-2020/images/1603785519-Solar-Power-Bank-(3).jpg', 'jpeg', 'image/jpeg', '58988', '2020-10-27 01:58:39', '2020-10-27 01:58:39'),
(409, 'Solar Power Bank.jpeg.jpg', 'public', '/storage/27-Oct-2020/images/1603785519-Solar-Power-Bank.jpeg.jpg', 'jpeg', 'image/jpeg', '66843', '2020-10-27 01:58:39', '2020-10-27 01:58:39'),
(410, 'Solar Power Bank.jpg', 'public', '/storage/27-Oct-2020/images/1603785520-Solar-Power-Bank.jpg', 'jpeg', 'image/jpeg', '55740', '2020-10-27 01:58:40', '2020-10-27 01:58:40'),
(411, 'Solar Power Bank (4).jpg', 'public', '/storage/27-Oct-2020/images/1603785520-Solar-Power-Bank-(4).jpg', 'jpeg', 'image/jpeg', '67263', '2020-10-27 01:58:40', '2020-10-27 01:58:40'),
(412, 'Dolohin Body Massager (3).jpg', 'public', '/storage/28-Oct-2020/images/1603863951-Dolohin-Body-Massager-(3).jpg', 'jpeg', 'image/jpeg', '25033', '2020-10-27 23:45:52', '2020-10-27 23:45:52'),
(413, 'Dolohin Body Massager (2).jpg', 'public', '/storage/28-Oct-2020/images/1603863951-Dolohin-Body-Massager-(2).jpg', 'jpeg', 'image/jpeg', '34692', '2020-10-27 23:45:52', '2020-10-27 23:45:52'),
(414, 'Dolohin Body Massager.jpg', 'public', '/storage/28-Oct-2020/images/1603863953-Dolohin-Body-Massager.jpg', 'jpeg', 'image/jpeg', '31146', '2020-10-27 23:45:54', '2020-10-27 23:45:54'),
(415, 'Dolohin Body Massager.jpeg.jpg', 'public', '/storage/28-Oct-2020/images/1603863954-Dolohin-Body-Massager.jpeg.jpg', 'jpeg', 'image/jpeg', '30668', '2020-10-27 23:45:54', '2020-10-27 23:45:54'),
(416, 'HTC-1107B Rechargeable Shaver & Trimmer (1).jpg', 'public', '/storage/28-Oct-2020/images/1603866258-HTC-1107B-Rechargeable-Shaver-&-Trimmer-(1).jpg', 'jpeg', 'image/jpeg', '48705', '2020-10-28 00:24:18', '2020-10-28 00:24:18'),
(417, 'HTC-1107B Rechargeable Shaver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603866258-HTC-1107B-Rechargeable-Shaver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '45249', '2020-10-28 00:24:18', '2020-10-28 00:24:18'),
(418, 'HTC-1107B Rechargeable Shaver & Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603866259-HTC-1107B-Rechargeable-Shaver-&-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '11217', '2020-10-28 00:24:20', '2020-10-28 00:24:20'),
(419, 'HTC-1107B Rechargeable Shaver & Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603866259-HTC-1107B-Rechargeable-Shaver-&-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '41863', '2020-10-28 00:24:20', '2020-10-28 00:24:20'),
(420, 'Kemei 550 Rechargeable Shaver & Trimmer (2).jpeg.jpg', 'public', '/storage/28-Oct-2020/images/1603866510-Kemei-550-Rechargeable-Shaver-&-Trimmer-(2).jpeg.jpg', 'jpeg', 'image/jpeg', '22147', '2020-10-28 00:28:30', '2020-10-28 00:28:30'),
(421, 'Kemei 550 Rechargeable Shaver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603866510-Kemei-550-Rechargeable-Shaver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '33070', '2020-10-28 00:28:30', '2020-10-28 00:28:30'),
(422, 'Kemei 550 Rechargeable Shaver & Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603866512-Kemei-550-Rechargeable-Shaver-&-Trimmer.jpg', 'jpeg', 'image/jpeg', '23496', '2020-10-28 00:28:32', '2020-10-28 00:28:32'),
(423, 'Kemei 550 Rechargeable Shaver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603866706-Kemei-550-Rechargeable-Shaver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '33070', '2020-10-28 00:31:46', '2020-10-28 00:31:46'),
(424, 'Kemei 550 Rechargeable Shaver & Trimmer (2).jpeg.jpg', 'public', '/storage/28-Oct-2020/images/1603866706-Kemei-550-Rechargeable-Shaver-&-Trimmer-(2).jpeg.jpg', 'jpeg', 'image/jpeg', '22147', '2020-10-28 00:31:46', '2020-10-28 00:31:46'),
(425, 'Kemei 550 Rechargeable Shaver & Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603866739-Kemei-550-Rechargeable-Shaver-&-Trimmer.jpg', 'jpeg', 'image/jpeg', '23496', '2020-10-28 00:32:19', '2020-10-28 00:32:19'),
(426, 'Kemei 550 Rechargeable Shaver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603866790-Kemei-550-Rechargeable-Shaver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '22147', '2020-10-28 00:33:10', '2020-10-28 00:33:10'),
(427, 'Kemei 550 Rechargeable Shaver & Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603866791-Kemei-550-Rechargeable-Shaver-&-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '23755', '2020-10-28 00:33:11', '2020-10-28 00:33:11'),
(428, 'Kemei 550 Rechargeable Shaver & Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603866792-Kemei-550-Rechargeable-Shaver-&-Trimmer.jpg', 'jpeg', 'image/jpeg', '23496', '2020-10-28 00:33:13', '2020-10-28 00:33:13'),
(429, 'Kemei 550 Rechargeable Shaver & Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603866813-Kemei-550-Rechargeable-Shaver-&-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '33070', '2020-10-28 00:33:33', '2020-10-28 00:33:33'),
(430, 'Kemei 590A-Multifunctional-Saver & Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603868053-Kemei-590A-Multifunctional-Saver-&-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '29475', '2020-10-28 00:54:13', '2020-10-28 00:54:13'),
(431, 'Kemei 590A-Multifunctional-Saver & Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603868056-Kemei-590A-Multifunctional-Saver-&-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '38412', '2020-10-28 00:54:16', '2020-10-28 00:54:16'),
(432, 'Kemei 590A-Multifunctional-Saver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603868059-Kemei-590A-Multifunctional-Saver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '30664', '2020-10-28 00:54:19', '2020-10-28 00:54:19'),
(433, 'Kemei 590A-Multifunctional-Saver & Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603868070-Kemei-590A-Multifunctional-Saver-&-Trimmer.jpg', 'jpeg', 'image/jpeg', '44375', '2020-10-28 00:54:30', '2020-10-28 00:54:30'),
(434, 'Kemei 9030 Rechargeable Shaver & Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603868475-Kemei-9030-Rechargeable-Shaver-&-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '26972', '2020-10-28 01:01:15', '2020-10-28 01:01:15'),
(435, 'Kemei 9030 Rechargeable Shaver & Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603868480-Kemei-9030-Rechargeable-Shaver-&-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '45264', '2020-10-28 01:01:20', '2020-10-28 01:01:20'),
(436, 'Kemei 9030 Rechargeable Shaver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603868480-Kemei-9030-Rechargeable-Shaver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '32705', '2020-10-28 01:01:20', '2020-10-28 01:01:20'),
(437, 'Kemei 9030 Rechargeable Shaver & Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603868510-Kemei-9030-Rechargeable-Shaver-&-Trimmer.jpg', 'jpeg', 'image/jpeg', '83588', '2020-10-28 01:01:50', '2020-10-28 01:01:50'),
(438, 'Kemei 9030 Rechargeable Shaver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603868599-Kemei-9030-Rechargeable-Shaver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '32705', '2020-10-28 01:03:19', '2020-10-28 01:03:19'),
(439, 'Kemei 9030 Rechargeable Shaver & Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603868600-Kemei-9030-Rechargeable-Shaver-&-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '26972', '2020-10-28 01:03:20', '2020-10-28 01:03:20'),
(440, 'Kemei 9030 Rechargeable Shaver & Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603868601-Kemei-9030-Rechargeable-Shaver-&-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '45264', '2020-10-28 01:03:21', '2020-10-28 01:03:21'),
(441, 'Kemei 9030 Rechargeable Shaver & Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603868695-Kemei-9030-Rechargeable-Shaver-&-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '26972', '2020-10-28 01:04:55', '2020-10-28 01:04:55'),
(442, 'Kemei 9030 Rechargeable Shaver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603868695-Kemei-9030-Rechargeable-Shaver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '32705', '2020-10-28 01:04:55', '2020-10-28 01:04:55'),
(443, 'Kemei 9030 Rechargeable Shaver & Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603868698-Kemei-9030-Rechargeable-Shaver-&-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '45264', '2020-10-28 01:04:58', '2020-10-28 01:04:58'),
(444, 'Kemei 9030 Rechargeable Shaver & Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603868698-Kemei-9030-Rechargeable-Shaver-&-Trimmer.jpg', 'jpeg', 'image/jpeg', '29765', '2020-10-28 01:04:58', '2020-10-28 01:04:58'),
(445, 'Kemei-1015 Professional Rechargeable-Shaver-and-Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603886738-Kemei-1015-Professional-Rechargeable-Shaver-and-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '26851', '2020-10-28 06:05:39', '2020-10-28 06:05:39'),
(446, 'Kemei-1015 Professional Rechargeable-Shaver-and-Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603886740-Kemei-1015-Professional-Rechargeable-Shaver-and-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '31838', '2020-10-28 06:05:40', '2020-10-28 06:05:40'),
(447, 'Kemei-1015 Professional Rechargeable-Shaver-and-Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603886741-Kemei-1015-Professional-Rechargeable-Shaver-and-Trimmer.jpg', 'jpeg', 'image/jpeg', '40457', '2020-10-28 06:05:41', '2020-10-28 06:05:41'),
(448, 'Kemei-1015 Professional Rechargeable-Shaver-and-Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603886752-Kemei-1015-Professional-Rechargeable-Shaver-and-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '44655', '2020-10-28 06:05:52', '2020-10-28 06:05:52'),
(449, 'Kemei 1015 Rechargeable Hair Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603887368-Kemei-1015-Rechargeable-Hair-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '35599', '2020-10-28 06:16:08', '2020-10-28 06:16:08'),
(450, 'Kemei 1015 Rechargeable Hair Trimmer (4) copy.jpg', 'public', '/storage/28-Oct-2020/images/1603887371-Kemei-1015-Rechargeable-Hair-Trimmer-(4)-copy.jpg', 'jpeg', 'image/jpeg', '40100', '2020-10-28 06:16:12', '2020-10-28 06:16:12'),
(451, 'Kemei 1015 Rechargeable Hair Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603887373-Kemei-1015-Rechargeable-Hair-Trimmer.jpg', 'jpeg', 'image/jpeg', '27598', '2020-10-28 06:16:13', '2020-10-28 06:16:13'),
(452, 'Kemei 1015 Rechargeable Hair Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603887389-Kemei-1015-Rechargeable-Hair-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '60958', '2020-10-28 06:16:29', '2020-10-28 06:16:29'),
(453, 'Kemei 8824 Recharable Shaver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603890021-Kemei-8824-Recharable-Shaver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '27820', '2020-10-28 07:00:22', '2020-10-28 07:00:22'),
(454, 'Kemei 8824 Recharable Shaver & Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603890022-Kemei-8824-Recharable-Shaver-&-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '24684', '2020-10-28 07:00:22', '2020-10-28 07:00:22'),
(455, 'Kemei 8824 Recharable Shaver & Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603890022-Kemei-8824-Recharable-Shaver-&-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '39134', '2020-10-28 07:00:23', '2020-10-28 07:00:23'),
(456, 'Kemei 8824 Recharable Shaver & Trimmer (5).jpg', 'public', '/storage/28-Oct-2020/images/1603890024-Kemei-8824-Recharable-Shaver-&-Trimmer-(5).jpg', 'jpeg', 'image/jpeg', '41340', '2020-10-28 07:00:24', '2020-10-28 07:00:24'),
(457, 'Kemei 4640 Professonal Hair Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603890586-Kemei-4640-Professonal-Hair-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '39659', '2020-10-28 07:09:46', '2020-10-28 07:09:46'),
(458, 'Kemei 4640 Professonal Hair Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603890586-Kemei-4640-Professonal-Hair-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '29383', '2020-10-28 07:09:46', '2020-10-28 07:09:46'),
(459, 'Kemei 4640 Professonal Hair Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603890587-Kemei-4640-Professonal-Hair-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '30353', '2020-10-28 07:09:47', '2020-10-28 07:09:47'),
(460, 'Kemei 4640 Professonal Hair Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603890587-Kemei-4640-Professonal-Hair-Trimmer.jpg', 'jpeg', 'image/jpeg', '37095', '2020-10-28 07:09:47', '2020-10-28 07:09:47'),
(461, 'Nikai 1712 Professonal Saver & Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603890776-Nikai-1712-Professonal-Saver-&-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '33483', '2020-10-28 07:12:56', '2020-10-28 07:12:56'),
(462, 'Nikai 1712 Professonal Saver & Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603890776-Nikai-1712-Professonal-Saver-&-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '27681', '2020-10-28 07:12:56', '2020-10-28 07:12:56'),
(463, 'Nikai 1712 Professonal Saver & Trimmer.jpeg.jpg', 'public', '/storage/28-Oct-2020/images/1603890777-Nikai-1712-Professonal-Saver-&-Trimmer.jpeg.jpg', 'jpeg', 'image/jpeg', '30029', '2020-10-28 07:12:57', '2020-10-28 07:12:57'),
(464, 'Nikai 1712 Professonal Saver & Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603890777-Nikai-1712-Professonal-Saver-&-Trimmer.jpg', 'jpeg', 'image/jpeg', '31745', '2020-10-28 07:12:57', '2020-10-28 07:12:57'),
(465, 'Kemei 3902 Shaver &Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603891182-Kemei-3902-Shaver-&Trimmer.jpg', 'jpeg', 'image/jpeg', '36876', '2020-10-28 07:19:43', '2020-10-28 07:19:43'),
(466, 'KEMEI KM-9020 Professional Shaving Trimmer (3).jpg', 'public', '/storage/28-Oct-2020/images/1603891424-KEMEI-KM-9020-Professional-Shaving-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '22232', '2020-10-28 07:23:44', '2020-10-28 07:23:44'),
(467, 'KEMEI KM-9020 Professional Shaving Trimmer (2).jpg', 'public', '/storage/28-Oct-2020/images/1603891424-KEMEI-KM-9020-Professional-Shaving-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '24866', '2020-10-28 07:23:44', '2020-10-28 07:23:44'),
(468, 'KEMEI KM-9020 Professional Shaving Trimmer (4).jpg', 'public', '/storage/28-Oct-2020/images/1603891424-KEMEI-KM-9020-Professional-Shaving-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '52829', '2020-10-28 07:23:44', '2020-10-28 07:23:44'),
(469, 'KEMEI KM-9020 Professional Shaving Trimmer.jpg', 'public', '/storage/28-Oct-2020/images/1603891425-KEMEI-KM-9020-Professional-Shaving-Trimmer.jpg', 'jpeg', 'image/jpeg', '32948', '2020-10-28 07:23:45', '2020-10-28 07:23:45'),
(470, 'Pull Reducer Rubber Body Trimmer (3).jpg', 'public', '/storage/10-Nov-2020/images/1604997969-Pull-Reducer-Rubber-Body-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '54618', '2020-11-10 02:46:09', '2020-11-10 02:46:09'),
(471, 'Pull Reducer Rubber Body Trimmer (2).jpg', 'public', '/storage/10-Nov-2020/images/1604997969-Pull-Reducer-Rubber-Body-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '54322', '2020-11-10 02:46:09', '2020-11-10 02:46:09'),
(472, 'Pull Reducer Rubber Body Trimmer (4).jpg', 'public', '/storage/10-Nov-2020/images/1604997971-Pull-Reducer-Rubber-Body-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '45433', '2020-11-10 02:46:11', '2020-11-10 02:46:11'),
(473, 'Pull Reducer Rubber Body Trimmer.jpg', 'public', '/storage/10-Nov-2020/images/1604997971-Pull-Reducer-Rubber-Body-Trimmer.jpg', 'jpeg', 'image/jpeg', '47074', '2020-11-10 02:46:11', '2020-11-10 02:46:11'),
(474, 'Pull Reducer Rubber Body Trimmer (2).jpg', 'public', '/storage/10-Nov-2020/images/1605017223-Pull-Reducer-Rubber-Body-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '54322', '2020-11-10 08:07:03', '2020-11-10 08:07:03'),
(475, 'Pull Reducer Rubber Body Trimmer (3).jpg', 'public', '/storage/10-Nov-2020/images/1605017223-Pull-Reducer-Rubber-Body-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '54618', '2020-11-10 08:07:03', '2020-11-10 08:07:03'),
(476, 'Pull Reducer Rubber Body Trimmer (4).jpg', 'public', '/storage/10-Nov-2020/images/1605017224-Pull-Reducer-Rubber-Body-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '45433', '2020-11-10 08:07:04', '2020-11-10 08:07:04'),
(477, 'Pull Reducer Rubber Body Trimmer.jpg', 'public', '/storage/10-Nov-2020/images/1605017224-Pull-Reducer-Rubber-Body-Trimmer.jpg', 'jpeg', 'image/jpeg', '47074', '2020-11-10 08:07:04', '2020-11-10 08:07:04'),
(478, 'Rechargeble Nose & Hair Trimmer (2).jpg', 'public', '/storage/10-Nov-2020/images/1605018463-Rechargeble-Nose-&-Hair-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '34789', '2020-11-10 08:27:43', '2020-11-10 08:27:43'),
(479, 'Rechargeble Nose & Hair Trimmer (3).jpg', 'public', '/storage/10-Nov-2020/images/1605018463-Rechargeble-Nose-&-Hair-Trimmer-(3).jpg', 'jpeg', 'image/jpeg', '33019', '2020-11-10 08:27:43', '2020-11-10 08:27:43'),
(480, 'Rechargeble Nose & Hair Trimmer (4).jpg', 'public', '/storage/10-Nov-2020/images/1605018463-Rechargeble-Nose-&-Hair-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '35847', '2020-11-10 08:27:44', '2020-11-10 08:27:44'),
(481, 'Rechargeble Nose & Hair Trimmer.jpg', 'public', '/storage/10-Nov-2020/images/1605018464-Rechargeble-Nose-&-Hair-Trimmer.jpg', 'jpeg', 'image/jpeg', '28215', '2020-11-10 08:27:44', '2020-11-10 08:27:44'),
(482, 'Rechargeble Nose Ear & Hair Trimmer (2).jpg', 'public', '/storage/10-Nov-2020/images/1605018666-Rechargeble-Nose-Ear-&-Hair-Trimmer-(2).jpg', 'jpeg', 'image/jpeg', '46953', '2020-11-10 08:31:07', '2020-11-10 08:31:07'),
(483, 'Rechargeble Nose Ear & Hair Trimmer (4).jpg', 'public', '/storage/10-Nov-2020/images/1605018667-Rechargeble-Nose-Ear-&-Hair-Trimmer-(4).jpg', 'jpeg', 'image/jpeg', '38937', '2020-11-10 08:31:07', '2020-11-10 08:31:07'),
(484, 'Rechargeble Nose Ear & Hair Trimmer (5).jpg', 'public', '/storage/10-Nov-2020/images/1605018668-Rechargeble-Nose-Ear-&-Hair-Trimmer-(5).jpg', 'jpeg', 'image/jpeg', '33151', '2020-11-10 08:31:08', '2020-11-10 08:31:08'),
(485, 'Rechargeble Nose Ear & Hair Trimmer.jpg', 'public', '/storage/10-Nov-2020/images/1605018668-Rechargeble-Nose-Ear-&-Hair-Trimmer.jpg', 'jpeg', 'image/jpeg', '56277', '2020-11-10 08:31:08', '2020-11-10 08:31:08'),
(486, '9 in 1 Vagetable Cutter (2).jpg', 'public', '/storage/10-Nov-2020/images/1605019768-9-in-1-Vagetable-Cutter-(2).jpg', 'jpeg', 'image/jpeg', '72502', '2020-11-10 08:49:28', '2020-11-10 08:49:28'),
(487, '9 in 1 Vagetable Cutter (3).jpg', 'public', '/storage/10-Nov-2020/images/1605019768-9-in-1-Vagetable-Cutter-(3).jpg', 'jpeg', 'image/jpeg', '72595', '2020-11-10 08:49:28', '2020-11-10 08:49:28'),
(488, '9 in 1 Vagetable Cutter (4).jpg', 'public', '/storage/10-Nov-2020/images/1605019769-9-in-1-Vagetable-Cutter-(4).jpg', 'jpeg', 'image/jpeg', '60568', '2020-11-10 08:49:29', '2020-11-10 08:49:29'),
(489, '9 in 1 Vagetable Cutter.jpeg.jpg', 'public', '/storage/10-Nov-2020/images/1605019769-9-in-1-Vagetable-Cutter.jpeg.jpg', 'jpeg', 'image/jpeg', '62941', '2020-11-10 08:49:29', '2020-11-10 08:49:29'),
(490, 'Stainless Steel Electric Super Hand Mixer (2).jpg', 'public', '/storage/10-Nov-2020/images/1605020338-Stainless-Steel-Electric-Super-Hand-Mixer-(2).jpg', 'jpeg', 'image/jpeg', '47366', '2020-11-10 08:58:58', '2020-11-10 08:58:58'),
(491, 'Stainless Steel Electric Super Hand Mixer (3).jpg', 'public', '/storage/10-Nov-2020/images/1605020338-Stainless-Steel-Electric-Super-Hand-Mixer-(3).jpg', 'jpeg', 'image/jpeg', '66058', '2020-11-10 08:58:59', '2020-11-10 08:58:59'),
(492, 'Stainless Steel Electric Super Hand Mixer (5).jpg', 'public', '/storage/10-Nov-2020/images/1605020340-Stainless-Steel-Electric-Super-Hand-Mixer-(5).jpg', 'jpeg', 'image/jpeg', '72723', '2020-11-10 08:59:00', '2020-11-10 08:59:00'),
(493, 'Stainless Steel Electric Super Hand Mixer.jpeg.jpg', 'public', '/storage/10-Nov-2020/images/1605020341-Stainless-Steel-Electric-Super-Hand-Mixer.jpeg.jpg', 'jpeg', 'image/jpeg', '35264', '2020-11-10 08:59:02', '2020-11-10 08:59:02'),
(494, 'Multi Function Electric vacuam clinner (2).jpg', 'public', '/storage/10-Nov-2020/images/1605028736-Multi-Function-Electric-vacuam-clinner-(2).jpg', 'jpeg', 'image/jpeg', '45899', '2020-11-10 11:18:56', '2020-11-10 11:18:56'),
(495, 'Multi Function Electric vacuam clinner (4).jpg', 'public', '/storage/10-Nov-2020/images/1605028736-Multi-Function-Electric-vacuam-clinner-(4).jpg', 'jpeg', 'image/jpeg', '52336', '2020-11-10 11:18:56', '2020-11-10 11:18:56'),
(496, 'Multi Function Electric vacuam clinner.jpeg', 'public', '/storage/10-Nov-2020/images/1605028738-Multi-Function-Electric-vacuam-clinner.jpeg', 'jpeg', 'image/jpeg', '62012', '2020-11-10 11:18:58', '2020-11-10 11:18:58'),
(497, 'Multi Function Electric vacuam clinner.jpg', 'public', '/storage/10-Nov-2020/images/1605028738-Multi-Function-Electric-vacuam-clinner.jpg', 'jpeg', 'image/jpeg', '63861', '2020-11-10 11:18:58', '2020-11-10 11:18:58'),
(498, 'Instant Water Hiter Gizer (2).jpg', 'public', '/storage/11-Nov-2020/images/1605080177-Instant-Water-Hiter-Gizer-(2).jpg', 'jpeg', 'image/jpeg', '33089', '2020-11-11 01:36:20', '2020-11-11 01:36:20'),
(499, 'Instant Water Hiter Gizer (3).jpg', 'public', '/storage/11-Nov-2020/images/1605080177-Instant-Water-Hiter-Gizer-(3).jpg', 'jpeg', 'image/jpeg', '73091', '2020-11-11 01:36:20', '2020-11-11 01:36:20'),
(500, 'Instant Water Hiter Gizer.jpg', 'public', '/storage/11-Nov-2020/images/1605080181-Instant-Water-Hiter-Gizer.jpg', 'jpeg', 'image/jpeg', '41927', '2020-11-11 01:36:22', '2020-11-11 01:36:22'),
(501, 'Instant Water Hiter Gizer (4).jpg', 'public', '/storage/11-Nov-2020/images/1605080182-Instant-Water-Hiter-Gizer-(4).jpg', 'jpeg', 'image/jpeg', '44522', '2020-11-11 01:36:22', '2020-11-11 01:36:22'),
(502, 'Jeep west bag (2).jpg', 'public', '/storage/11-Nov-2020/images/1605080722-Jeep-west-bag-(2).jpg', 'jpeg', 'image/jpeg', '36934', '2020-11-11 01:45:22', '2020-11-11 01:45:22'),
(503, 'Jeep west bag.jpg', 'public', '/storage/11-Nov-2020/images/1605080723-Jeep-west-bag.jpg', 'jpeg', 'image/jpeg', '59126', '2020-11-11 01:45:23', '2020-11-11 01:45:23'),
(504, 'duoya.jpg', 'public', '/storage/12-Nov-2020/images/1605188968-duoya.jpg', 'jpeg', 'image/jpeg', '67762', '2020-11-12 07:49:28', '2020-11-12 07:49:28'),
(505, 'Watch (8).jpg', 'public', '/storage/12-Nov-2020/images/1605189349-Watch-(8).jpg', 'jpeg', 'image/jpeg', '58764', '2020-11-12 07:55:49', '2020-11-12 07:55:49'),
(506, 'Watch (7).jpg', 'public', '/storage/12-Nov-2020/images/1605189349-Watch-(7).jpg', 'jpeg', 'image/jpeg', '66574', '2020-11-12 07:55:49', '2020-11-12 07:55:49'),
(507, 'Watch (10).jpg', 'public', '/storage/12-Nov-2020/images/1605189561-Watch-(10).jpg', 'jpeg', 'image/jpeg', '67116', '2020-11-12 07:59:21', '2020-11-12 07:59:21'),
(508, 'Watch (6).jpg', 'public', '/storage/12-Nov-2020/images/1605189561-Watch-(6).jpg', 'jpeg', 'image/jpeg', '64394', '2020-11-12 07:59:21', '2020-11-12 07:59:21'),
(509, 'Watch (2).jpg', 'public', '/storage/12-Nov-2020/images/1605189760-Watch-(2).jpg', 'jpeg', 'image/jpeg', '68066', '2020-11-12 08:02:40', '2020-11-12 08:02:40'),
(510, 'Watch (3).jpg', 'public', '/storage/12-Nov-2020/images/1605189760-Watch-(3).jpg', 'jpeg', 'image/jpeg', '65263', '2020-11-12 08:02:40', '2020-11-12 08:02:40'),
(511, 'Watch (4).jpg', 'public', '/storage/12-Nov-2020/images/1605189761-Watch-(4).jpg', 'jpeg', 'image/jpeg', '66732', '2020-11-12 08:02:41', '2020-11-12 08:02:41'),
(512, 'Watch (5).jpg', 'public', '/storage/12-Nov-2020/images/1605189928-Watch-(5).jpg', 'jpeg', 'image/jpeg', '66740', '2020-11-12 08:05:28', '2020-11-12 08:05:28'),
(513, 'Watch (9).jpg', 'public', '/storage/12-Nov-2020/images/1605189928-Watch-(9).jpg', 'jpeg', 'image/jpeg', '67199', '2020-11-12 08:05:28', '2020-11-12 08:05:28'),
(514, 'Watch.jpg', 'public', '/storage/12-Nov-2020/images/1605189931-Watch.jpg', 'jpeg', 'image/jpeg', '72165', '2020-11-12 08:05:31', '2020-11-12 08:05:31'),
(515, 'Facial Strimer Device (2).jpg', 'public', '/storage/16-Nov-2020/images/1605513126-Facial-Strimer-Device-(2).jpg', 'jpeg', 'image/jpeg', '49945', '2020-11-16 01:52:06', '2020-11-16 01:52:06'),
(516, 'Facial Strimer Device (3).jpg', 'public', '/storage/16-Nov-2020/images/1605513126-Facial-Strimer-Device-(3).jpg', 'jpeg', 'image/jpeg', '35599', '2020-11-16 01:52:06', '2020-11-16 01:52:06'),
(517, 'Facial Strimer Device.jpg', 'public', '/storage/16-Nov-2020/images/1605513127-Facial-Strimer-Device.jpg', 'jpeg', 'image/jpeg', '35559', '2020-11-16 01:52:07', '2020-11-16 01:52:07'),
(518, 'Facial Strimer Device (4).jpg', 'public', '/storage/16-Nov-2020/images/1605513128-Facial-Strimer-Device-(4).jpg', 'jpeg', 'image/jpeg', '50359', '2020-11-16 01:52:08', '2020-11-16 01:52:08'),
(519, 'Go Duster (2).jpg', 'public', '/storage/16-Nov-2020/images/1605513765-Go-Duster-(2).jpg', 'jpeg', 'image/jpeg', '36018', '2020-11-16 02:02:45', '2020-11-16 02:02:45'),
(520, 'Go Duster (3).jpg', 'public', '/storage/16-Nov-2020/images/1605513766-Go-Duster-(3).jpg', 'jpeg', 'image/jpeg', '59235', '2020-11-16 02:02:46', '2020-11-16 02:02:46'),
(521, 'Go Duster (4).jpg', 'public', '/storage/16-Nov-2020/images/1605513767-Go-Duster-(4).jpg', 'jpeg', 'image/jpeg', '54115', '2020-11-16 02:02:47', '2020-11-16 02:02:47'),
(522, 'Go Duster (5).jpg', 'public', '/storage/16-Nov-2020/images/1605513767-Go-Duster-(5).jpg', 'jpeg', 'image/jpeg', '46827', '2020-11-16 02:02:47', '2020-11-16 02:02:47'),
(523, 'Mimo Body Massager (3).jpg', 'public', '/storage/16-Nov-2020/images/1605514244-Mimo-Body-Massager-(3).jpg', 'jpeg', 'image/jpeg', '51374', '2020-11-16 02:10:44', '2020-11-16 02:10:44'),
(524, 'Mimo Body Massager (2).jpg', 'public', '/storage/16-Nov-2020/images/1605514244-Mimo-Body-Massager-(2).jpg', 'jpeg', 'image/jpeg', '31352', '2020-11-16 02:10:44', '2020-11-16 02:10:44'),
(525, 'Mimo Body Massager (4).jpg', 'public', '/storage/16-Nov-2020/images/1605514249-Mimo-Body-Massager-(4).jpg', 'jpeg', 'image/jpeg', '49888', '2020-11-16 02:10:49', '2020-11-16 02:10:49'),
(526, 'Mimo Body Massager.jpg', 'public', '/storage/16-Nov-2020/images/1605514249-Mimo-Body-Massager.jpg', 'jpeg', 'image/jpeg', '38868', '2020-11-16 02:10:49', '2020-11-16 02:10:49'),
(527, 'Flower Candy Box (4).jpg', 'public', '/storage/16-Nov-2020/images/1605522111-Flower-Candy-Box-(4).jpg', 'jpeg', 'image/jpeg', '51193', '2020-11-16 04:21:51', '2020-11-16 04:21:51'),
(528, 'Flower Candy Box (3).jpg', 'public', '/storage/16-Nov-2020/images/1605522111-Flower-Candy-Box-(3).jpg', 'jpeg', 'image/jpeg', '49610', '2020-11-16 04:21:51', '2020-11-16 04:21:51'),
(529, 'Flower Candy Box.jpeg.jpg', 'public', '/storage/16-Nov-2020/images/1605522112-Flower-Candy-Box.jpeg.jpg', 'jpeg', 'image/jpeg', '46365', '2020-11-16 04:21:52', '2020-11-16 04:21:52'),
(530, 'Flower Candy Box.jpg', 'public', '/storage/16-Nov-2020/images/1605522112-Flower-Candy-Box.jpg', 'jpeg', 'image/jpeg', '62257', '2020-11-16 04:21:53', '2020-11-16 04:21:53'),
(531, 'Floor Spary Mop (3).jpg', 'public', '/storage/16-Nov-2020/images/1605522335-Floor-Spary-Mop-(3).jpg', 'jpeg', 'image/jpeg', '41580', '2020-11-16 04:25:35', '2020-11-16 04:25:35'),
(532, 'Floor Spary Mop (2).jpg', 'public', '/storage/16-Nov-2020/images/1605522336-Floor-Spary-Mop-(2).jpg', 'jpeg', 'image/jpeg', '51774', '2020-11-16 04:25:36', '2020-11-16 04:25:36'),
(533, 'Floor Spary Mop (4).jpg', 'public', '/storage/16-Nov-2020/images/1605522337-Floor-Spary-Mop-(4).jpg', 'jpeg', 'image/jpeg', '59536', '2020-11-16 04:25:37', '2020-11-16 04:25:37'),
(534, 'Floor Spary Mop.jpg', 'public', '/storage/16-Nov-2020/images/1605522340-Floor-Spary-Mop.jpg', 'jpeg', 'image/jpeg', '55696', '2020-11-16 04:25:40', '2020-11-16 04:25:40'),
(535, 'Hurricane Scrubber Brush (4).jpg', 'public', '/storage/16-Nov-2020/images/1605522533-Hurricane-Scrubber-Brush-(4).jpg', 'jpeg', 'image/jpeg', '38741', '2020-11-16 04:28:53', '2020-11-16 04:28:53'),
(536, 'Hurricane Scrubber Brush (3).jpg', 'public', '/storage/16-Nov-2020/images/1605522534-Hurricane-Scrubber-Brush-(3).jpg', 'jpeg', 'image/jpeg', '53884', '2020-11-16 04:28:54', '2020-11-16 04:28:54'),
(537, 'Hurricane Scrubber Brush (5).jpg', 'public', '/storage/16-Nov-2020/images/1605522535-Hurricane-Scrubber-Brush-(5).jpg', 'jpeg', 'image/jpeg', '52822', '2020-11-16 04:28:55', '2020-11-16 04:28:55'),
(538, 'Hurricane Scrubber Brush (6).jpg', 'public', '/storage/16-Nov-2020/images/1605522535-Hurricane-Scrubber-Brush-(6).jpg', 'jpeg', 'image/jpeg', '30210', '2020-11-16 04:28:55', '2020-11-16 04:28:55'),
(539, 'Mosquito Killer Lamp (2).jpg', 'public', '/storage/16-Nov-2020/images/1605522775-Mosquito-Killer-Lamp-(2).jpg', 'jpeg', 'image/jpeg', '33405', '2020-11-16 04:32:55', '2020-11-16 04:32:55'),
(540, 'Mosquito Killer Lamp (3).jpg', 'public', '/storage/16-Nov-2020/images/1605522775-Mosquito-Killer-Lamp-(3).jpg', 'jpeg', 'image/jpeg', '40846', '2020-11-16 04:32:55', '2020-11-16 04:32:55'),
(541, 'Mosquito Killer Lamp.jpg', 'public', '/storage/16-Nov-2020/images/1605522777-Mosquito-Killer-Lamp.jpg', 'jpeg', 'image/jpeg', '59710', '2020-11-16 04:32:57', '2020-11-16 04:32:57'),
(542, 'Mosquito Killer Lamp (4).jpg', 'public', '/storage/16-Nov-2020/images/1605522777-Mosquito-Killer-Lamp-(4).jpg', 'jpeg', 'image/jpeg', '50605', '2020-11-16 04:32:57', '2020-11-16 04:32:57'),
(543, 'USB Lighter Watch (3).jpg', 'public', '/storage/16-Nov-2020/images/1605523044-USB-Lighter-Watch-(3).jpg', 'jpeg', 'image/jpeg', '50765', '2020-11-16 04:37:25', '2020-11-16 04:37:25'),
(544, 'USB Lighter Watch (2).jpg', 'public', '/storage/16-Nov-2020/images/1605523045-USB-Lighter-Watch-(2).jpg', 'jpeg', 'image/jpeg', '42372', '2020-11-16 04:37:25', '2020-11-16 04:37:25'),
(545, 'USB Lighter Watch (4).jpg', 'public', '/storage/16-Nov-2020/images/1605523046-USB-Lighter-Watch-(4).jpg', 'jpeg', 'image/jpeg', '51381', '2020-11-16 04:37:26', '2020-11-16 04:37:26'),
(546, 'USB Lighter Watch.jpg', 'public', '/storage/16-Nov-2020/images/1605523046-USB-Lighter-Watch.jpg', 'jpeg', 'image/jpeg', '64932', '2020-11-16 04:37:26', '2020-11-16 04:37:26'),
(547, 'Miss Belt (3).jpg', 'public', '/storage/16-Nov-2020/images/1605523264-Miss-Belt-(3).jpg', 'jpeg', 'image/jpeg', '38998', '2020-11-16 04:41:04', '2020-11-16 04:41:04'),
(548, 'Miss Belt (2).jpg', 'public', '/storage/16-Nov-2020/images/1605523264-Miss-Belt-(2).jpg', 'jpeg', 'image/jpeg', '44359', '2020-11-16 04:41:04', '2020-11-16 04:41:04'),
(549, 'Miss Belt (4).jpg', 'public', '/storage/16-Nov-2020/images/1605523266-Miss-Belt-(4).jpg', 'jpeg', 'image/jpeg', '40171', '2020-11-16 04:41:06', '2020-11-16 04:41:06'),
(550, 'Miss Belt.jpg', 'public', '/storage/16-Nov-2020/images/1605523266-Miss-Belt.jpg', 'jpeg', 'image/jpeg', '36968', '2020-11-16 04:41:06', '2020-11-16 04:41:06'),
(551, 'Recharable Electric Drinking Water Pump (4).jpg', 'public', '/storage/16-Nov-2020/images/1605524975-Recharable-Electric-Drinking-Water-Pump-(4).jpg', 'jpeg', 'image/jpeg', '41200', '2020-11-16 05:09:35', '2020-11-16 05:09:35'),
(552, 'Recharable Electric Drinking Water Pump (2).jpg', 'public', '/storage/16-Nov-2020/images/1605524975-Recharable-Electric-Drinking-Water-Pump-(2).jpg', 'jpeg', 'image/jpeg', '43845', '2020-11-16 05:09:35', '2020-11-16 05:09:35'),
(553, 'Recharable Electric Drinking Water Pump (5).jpg', 'public', '/storage/16-Nov-2020/images/1605524975-Recharable-Electric-Drinking-Water-Pump-(5).jpg', 'jpeg', 'image/jpeg', '38034', '2020-11-16 05:09:35', '2020-11-16 05:09:35'),
(554, 'Recharable Electric Drinking Water Pump.jpg', 'public', '/storage/16-Nov-2020/images/1605524977-Recharable-Electric-Drinking-Water-Pump.jpg', 'jpeg', 'image/jpeg', '39259', '2020-11-16 05:09:37', '2020-11-16 05:09:37'),
(555, 'Hot WaterTap With Shaower (2).jpg', 'public', '/storage/16-Nov-2020/images/1605525364-Hot-WaterTap-With-Shaower-(2).jpg', 'jpeg', 'image/jpeg', '33574', '2020-11-16 05:16:04', '2020-11-16 05:16:04'),
(556, 'Hot WaterTap With Shaower (3).jpg', 'public', '/storage/16-Nov-2020/images/1605525364-Hot-WaterTap-With-Shaower-(3).jpg', 'jpeg', 'image/jpeg', '38808', '2020-11-16 05:16:04', '2020-11-16 05:16:04'),
(557, 'Hot WaterTap With Shaower (4).jpg', 'public', '/storage/16-Nov-2020/images/1605525364-Hot-WaterTap-With-Shaower-(4).jpg', 'jpeg', 'image/jpeg', '34370', '2020-11-16 05:16:04', '2020-11-16 05:16:04'),
(558, 'Hot WaterTap With Shaower.jpg', 'public', '/storage/16-Nov-2020/images/1605525365-Hot-WaterTap-With-Shaower.jpg', 'jpeg', 'image/jpeg', '50626', '2020-11-16 05:16:05', '2020-11-16 05:16:05'),
(559, 'Hot WaterTap With Shaower (2).jpg', 'public', '/storage/17-Nov-2020/images/1605588872-Hot-WaterTap-With-Shaower-(2).jpg', 'jpeg', 'image/jpeg', '33574', '2020-11-16 22:54:32', '2020-11-16 22:54:32'),
(560, 'Hot WaterTap With Shaower (3).jpg', 'public', '/storage/17-Nov-2020/images/1605588872-Hot-WaterTap-With-Shaower-(3).jpg', 'jpeg', 'image/jpeg', '38808', '2020-11-16 22:54:32', '2020-11-16 22:54:32'),
(561, 'Hot WaterTap With Shaower.jpg', 'public', '/storage/17-Nov-2020/images/1605588872-Hot-WaterTap-With-Shaower.jpg', 'jpeg', 'image/jpeg', '50626', '2020-11-16 22:54:32', '2020-11-16 22:54:32');
INSERT INTO `images` (`id`, `filename`, `disk`, `path`, `extension`, `mime`, `size`, `created_at`, `updated_at`) VALUES
(562, 'Hot WaterTap With Shaower (4).jpg', 'public', '/storage/17-Nov-2020/images/1605588873-Hot-WaterTap-With-Shaower-(4).jpg', 'jpeg', 'image/jpeg', '34370', '2020-11-16 22:54:33', '2020-11-16 22:54:33'),
(563, 'Osaka Single Electric Chula.jpg', 'public', '/storage/17-Nov-2020/images/1605598617-Osaka-Single-Electric-Chula.jpg', 'jpeg', 'image/jpeg', '36635', '2020-11-17 01:36:57', '2020-11-17 01:36:57'),
(564, 'Adjustable Washing Machine Fridge Base (3).jpg', 'public', '/storage/17-Nov-2020/images/1605598974-Adjustable-Washing-Machine-Fridge-Base-(3).jpg', 'jpeg', 'image/jpeg', '38754', '2020-11-17 01:42:54', '2020-11-17 01:42:54'),
(565, 'Adjustable Washing Machine Fridge Base (2).jpg', 'public', '/storage/17-Nov-2020/images/1605598975-Adjustable-Washing-Machine-Fridge-Base-(2).jpg', 'jpeg', 'image/jpeg', '40260', '2020-11-17 01:42:55', '2020-11-17 01:42:55'),
(566, 'Adjustable Washing Machine Fridge Base (4).jpg', 'public', '/storage/17-Nov-2020/images/1605598975-Adjustable-Washing-Machine-Fridge-Base-(4).jpg', 'jpeg', 'image/jpeg', '42212', '2020-11-17 01:42:55', '2020-11-17 01:42:55'),
(567, 'Adjustable Washing Machine Fridge Base (5).jpg', 'public', '/storage/17-Nov-2020/images/1605598976-Adjustable-Washing-Machine-Fridge-Base-(5).jpg', 'jpeg', 'image/jpeg', '34393', '2020-11-17 01:42:56', '2020-11-17 01:42:56'),
(568, 'Adjustable Washing Machine Fridge Base.jpg', 'public', '/storage/17-Nov-2020/images/1605598976-Adjustable-Washing-Machine-Fridge-Base.jpg', 'jpeg', 'image/jpeg', '27412', '2020-11-17 01:42:56', '2020-11-17 01:42:56'),
(569, 'Travel Mini Portable folding  Iron (3).jpg', 'public', '/storage/17-Nov-2020/images/1605600058-Travel-Mini-Portable-folding-Iron-(3).jpg', 'jpeg', 'image/jpeg', '40042', '2020-11-17 02:00:58', '2020-11-17 02:00:58'),
(570, 'Travel Mini Portable folding  Iron (2).jpg', 'public', '/storage/17-Nov-2020/images/1605600058-Travel-Mini-Portable-folding-Iron-(2).jpg', 'jpeg', 'image/jpeg', '46513', '2020-11-17 02:00:58', '2020-11-17 02:00:58'),
(571, 'Travel Mini Portable folding  Iron (4).jpg', 'public', '/storage/17-Nov-2020/images/1605600059-Travel-Mini-Portable-folding-Iron-(4).jpg', 'jpeg', 'image/jpeg', '40719', '2020-11-17 02:00:59', '2020-11-17 02:00:59'),
(572, 'Travel Mini Portable folding  Iron.jpg', 'public', '/storage/17-Nov-2020/images/1605600059-Travel-Mini-Portable-folding-Iron.jpg', 'jpeg', 'image/jpeg', '30941', '2020-11-17 02:01:00', '2020-11-17 02:01:00'),
(573, 'Travel Mini Portable folding  Iron (2).jpg', 'public', '/storage/17-Nov-2020/images/1605604891-Travel-Mini-Portable-folding-Iron-(2).jpg', 'jpeg', 'image/jpeg', '46513', '2020-11-17 03:21:31', '2020-11-17 03:21:31'),
(574, 'Travel Mini Portable folding  Iron (3).jpg', 'public', '/storage/17-Nov-2020/images/1605604891-Travel-Mini-Portable-folding-Iron-(3).jpg', 'jpeg', 'image/jpeg', '40042', '2020-11-17 03:21:31', '2020-11-17 03:21:31'),
(575, 'Travel Mini Portable folding  Iron (4).jpg', 'public', '/storage/17-Nov-2020/images/1605604892-Travel-Mini-Portable-folding-Iron-(4).jpg', 'jpeg', 'image/jpeg', '40719', '2020-11-17 03:21:32', '2020-11-17 03:21:32'),
(576, 'Travel Mini Portable folding  Iron.jpg', 'public', '/storage/17-Nov-2020/images/1605604892-Travel-Mini-Portable-folding-Iron.jpg', 'jpeg', 'image/jpeg', '30941', '2020-11-17 03:21:32', '2020-11-17 03:21:32'),
(577, 'New Bath Towel Fashion Lady Girl (3).jpg', 'public', '/storage/17-Nov-2020/images/1605605875-New-Bath-Towel-Fashion-Lady-Girl-(3).jpg', 'jpeg', 'image/jpeg', '49828', '2020-11-17 03:37:55', '2020-11-17 03:37:55'),
(578, 'New Bath Towel Fashion Lady Girl (2).jpg', 'public', '/storage/17-Nov-2020/images/1605605875-New-Bath-Towel-Fashion-Lady-Girl-(2).jpg', 'jpeg', 'image/jpeg', '53770', '2020-11-17 03:37:55', '2020-11-17 03:37:55'),
(579, 'New Bath Towel Fashion Lady Girl.jpg', 'public', '/storage/17-Nov-2020/images/1605605876-New-Bath-Towel-Fashion-Lady-Girl.jpg', 'jpeg', 'image/jpeg', '49576', '2020-11-17 03:37:56', '2020-11-17 03:37:56'),
(580, 'combo_Offer_720.jpg', 'public', '/storage/17-Nov-2020/images/1605606173-combo_Offer_720.jpg', 'jpeg', 'image/jpeg', '50186', '2020-11-17 03:42:53', '2020-11-17 03:42:53'),
(581, 'Flawless Facial Hair Remover (2).jpg', 'public', '/storage/17-Nov-2020/images/1605606862-Flawless-Facial-Hair-Remover-(2).jpg', 'jpeg', 'image/jpeg', '34451', '2020-11-17 03:54:23', '2020-11-17 03:54:23'),
(582, 'Flawless Facial Hair Remover (3).jpg', 'public', '/storage/17-Nov-2020/images/1605606862-Flawless-Facial-Hair-Remover-(3).jpg', 'jpeg', 'image/jpeg', '54089', '2020-11-17 03:54:23', '2020-11-17 03:54:23'),
(583, 'Flawless Facial Hair Remover.jpg', 'public', '/storage/17-Nov-2020/images/1605606864-Flawless-Facial-Hair-Remover.jpg', 'jpeg', 'image/jpeg', '47616', '2020-11-17 03:54:24', '2020-11-17 03:54:24'),
(584, 'Flawless Facial Hair Remover (5).jpg', 'public', '/storage/17-Nov-2020/images/1605606865-Flawless-Facial-Hair-Remover-(5).jpg', 'jpeg', 'image/jpeg', '37481', '2020-11-17 03:54:25', '2020-11-17 03:54:25'),
(585, 'Fast Dry Hair Cap (2).jpg', 'public', '/storage/17-Nov-2020/images/1605607168-Fast-Dry-Hair-Cap-(2).jpg', 'jpeg', 'image/jpeg', '53933', '2020-11-17 03:59:29', '2020-11-17 03:59:29'),
(586, 'Fast Dry Hair Cap (3).jpg', 'public', '/storage/17-Nov-2020/images/1605607169-Fast-Dry-Hair-Cap-(3).jpg', 'jpeg', 'image/jpeg', '43520', '2020-11-17 03:59:29', '2020-11-17 03:59:29'),
(587, 'Fast Dry Hair Cap (4).jpg', 'public', '/storage/17-Nov-2020/images/1605607169-Fast-Dry-Hair-Cap-(4).jpg', 'jpeg', 'image/jpeg', '48971', '2020-11-17 03:59:29', '2020-11-17 03:59:29'),
(588, 'Fast Dry Hair Cap (4) copy.jpg', 'public', '/storage/17-Nov-2020/images/1605607170-Fast-Dry-Hair-Cap-(4)-copy.jpg', 'jpeg', 'image/jpeg', '45432', '2020-11-17 03:59:30', '2020-11-17 03:59:30'),
(589, 'Simply Hair Stratner (2).jpg', 'public', '/storage/17-Nov-2020/images/1605607833-Simply-Hair-Stratner-(2).jpg', 'jpeg', 'image/jpeg', '68799', '2020-11-17 04:10:33', '2020-11-17 04:10:33'),
(590, 'Simply Hair Stratner (3).jpg', 'public', '/storage/17-Nov-2020/images/1605607833-Simply-Hair-Stratner-(3).jpg', 'jpeg', 'image/jpeg', '66599', '2020-11-17 04:10:33', '2020-11-17 04:10:33'),
(591, 'Simply Hair Stratner.jpg', 'public', '/storage/17-Nov-2020/images/1605607834-Simply-Hair-Stratner.jpg', 'jpeg', 'image/jpeg', '67758', '2020-11-17 04:10:34', '2020-11-17 04:10:34'),
(592, 'Simply Hair Stratner (4).jpg', 'public', '/storage/17-Nov-2020/images/1605607834-Simply-Hair-Stratner-(4).jpg', 'jpeg', 'image/jpeg', '72984', '2020-11-17 04:10:34', '2020-11-17 04:10:34'),
(593, 'Slim-Body-Natural-Bamboo (2).jpg', 'public', '/storage/17-Nov-2020/images/1605608464-Slim-Body-Natural-Bamboo-(2).jpg', 'jpeg', 'image/jpeg', '22545', '2020-11-17 04:21:05', '2020-11-17 04:21:05'),
(594, 'Slim-Body-Natural-Bamboo (3).jpg', 'public', '/storage/17-Nov-2020/images/1605608465-Slim-Body-Natural-Bamboo-(3).jpg', 'jpeg', 'image/jpeg', '27542', '2020-11-17 04:21:05', '2020-11-17 04:21:05'),
(595, 'Slim-Body-Natural-Bamboo.jpg', 'public', '/storage/17-Nov-2020/images/1605608467-Slim-Body-Natural-Bamboo.jpg', 'jpeg', 'image/jpeg', '33273', '2020-11-17 04:21:07', '2020-11-17 04:21:07'),
(596, 'Slim-Body-Natural-Bamboo (4).jpg', 'public', '/storage/17-Nov-2020/images/1605608467-Slim-Body-Natural-Bamboo-(4).jpg', 'jpeg', 'image/jpeg', '37957', '2020-11-17 04:21:07', '2020-11-17 04:21:07'),
(597, 'Munafi Slimming Shaper (3).jpg', 'public', '/storage/17-Nov-2020/images/1605608664-Munafi-Slimming-Shaper-(3).jpg', 'jpeg', 'image/jpeg', '32161', '2020-11-17 04:24:24', '2020-11-17 04:24:24'),
(598, 'Munafi Slimming Shaper (2).jpg', 'public', '/storage/17-Nov-2020/images/1605608665-Munafi-Slimming-Shaper-(2).jpg', 'jpeg', 'image/jpeg', '76360', '2020-11-17 04:24:25', '2020-11-17 04:24:25'),
(599, 'Munafi Slimming Shaper (4).jpg', 'public', '/storage/17-Nov-2020/images/1605608665-Munafi-Slimming-Shaper-(4).jpg', 'jpeg', 'image/jpeg', '33852', '2020-11-17 04:24:25', '2020-11-17 04:24:25'),
(600, 'Munafi Slimming Shaper.jpg', 'public', '/storage/17-Nov-2020/images/1605608666-Munafi-Slimming-Shaper.jpg', 'jpeg', 'image/jpeg', '39941', '2020-11-17 04:24:26', '2020-11-17 04:24:26'),
(601, 'Mini Future Car (3).jpg', 'public', '/storage/17-Nov-2020/images/1605609171-Mini-Future-Car-(3).jpg', 'jpeg', 'image/jpeg', '60571', '2020-11-17 04:32:51', '2020-11-17 04:32:51'),
(602, 'Mini Future Car (2).jpg', 'public', '/storage/17-Nov-2020/images/1605609171-Mini-Future-Car-(2).jpg', 'jpeg', 'image/jpeg', '76458', '2020-11-17 04:32:51', '2020-11-17 04:32:51'),
(603, 'Mini Future Car copy.jpg', 'public', '/storage/17-Nov-2020/images/1605609172-Mini-Future-Car-copy.jpg', 'jpeg', 'image/jpeg', '61110', '2020-11-17 04:32:52', '2020-11-17 04:32:52'),
(604, 'Mini Future Car (4).jpg', 'public', '/storage/17-Nov-2020/images/1605609173-Mini-Future-Car-(4).jpg', 'jpeg', 'image/jpeg', '64032', '2020-11-17 04:32:53', '2020-11-17 04:32:53'),
(605, 'Flying Fairy Doll (2).jpg', 'public', '/storage/17-Nov-2020/images/1605609366-Flying-Fairy-Doll-(2).jpg', 'jpeg', 'image/jpeg', '46822', '2020-11-17 04:36:06', '2020-11-17 04:36:06'),
(606, 'Flying Fairy Doll (3).jpg', 'public', '/storage/17-Nov-2020/images/1605609366-Flying-Fairy-Doll-(3).jpg', 'jpeg', 'image/jpeg', '40552', '2020-11-17 04:36:06', '2020-11-17 04:36:06'),
(607, 'Flying Fairy Doll.jpeg.jpg', 'public', '/storage/17-Nov-2020/images/1605609367-Flying-Fairy-Doll.jpeg.jpg', 'jpeg', 'image/jpeg', '36396', '2020-11-17 04:36:07', '2020-11-17 04:36:07'),
(608, 'Flying-Fairy-Doll.jpg', 'public', '/storage/17-Nov-2020/images/1605609367-Flying-Fairy-Doll.jpg', 'jpeg', 'image/jpeg', '49531', '2020-11-17 04:36:07', '2020-11-17 04:36:07'),
(609, 'Evita Sliming Belt for Woman (3).jpg', 'public', '/storage/17-Nov-2020/images/1605612976-Evita-Sliming-Belt-for-Woman-(3).jpg', 'jpeg', 'image/jpeg', '34923', '2020-11-17 05:36:16', '2020-11-17 05:36:16'),
(610, 'Evita Sliming Belt for Woman (2).jpg', 'public', '/storage/17-Nov-2020/images/1605612976-Evita-Sliming-Belt-for-Woman-(2).jpg', 'jpeg', 'image/jpeg', '44496', '2020-11-17 05:36:16', '2020-11-17 05:36:16'),
(611, 'Evita Sliming Belt for Woman (4).jpg', 'public', '/storage/17-Nov-2020/images/1605612977-Evita-Sliming-Belt-for-Woman-(4).jpg', 'jpeg', 'image/jpeg', '42865', '2020-11-17 05:36:17', '2020-11-17 05:36:17'),
(612, 'Evita Sliming Belt for Woman.jpg', 'public', '/storage/17-Nov-2020/images/1605612977-Evita-Sliming-Belt-for-Woman.jpg', 'jpeg', 'image/jpeg', '39941', '2020-11-17 05:36:17', '2020-11-17 05:36:17'),
(613, 'KTS 1036 Bluetooth Speaker (2).jpg', 'public', '/storage/17-Nov-2020/images/1605613990-KTS-1036-Bluetooth-Speaker-(2).jpg', 'jpeg', 'image/jpeg', '42446', '2020-11-17 05:53:10', '2020-11-17 05:53:10'),
(614, 'KTS 1036 Bluetooth Speaker (3).jpg', 'public', '/storage/17-Nov-2020/images/1605613990-KTS-1036-Bluetooth-Speaker-(3).jpg', 'jpeg', 'image/jpeg', '53340', '2020-11-17 05:53:11', '2020-11-17 05:53:11'),
(615, 'KTS 1036 Bluetooth Speaker (4).jpg', 'public', '/storage/17-Nov-2020/images/1605613991-KTS-1036-Bluetooth-Speaker-(4).jpg', 'jpeg', 'image/jpeg', '46229', '2020-11-17 05:53:11', '2020-11-17 05:53:11'),
(616, 'KTS 1036 Bluetooth Speaker.jpg', 'public', '/storage/17-Nov-2020/images/1605613992-KTS-1036-Bluetooth-Speaker.jpg', 'jpeg', 'image/jpeg', '39004', '2020-11-17 05:53:12', '2020-11-17 05:53:12'),
(617, 'Room Heater.jpg', 'public', '/storage/17-Nov-2020/images/1605614918-Room-Heater.jpg', 'jpeg', 'image/jpeg', '54628', '2020-11-17 06:08:38', '2020-11-17 06:08:38'),
(618, 'Room Heater (2).jpg', 'public', '/storage/17-Nov-2020/images/1605614918-Room-Heater-(2).jpg', 'jpeg', 'image/jpeg', '62504', '2020-11-17 06:08:38', '2020-11-17 06:08:38'),
(619, 'Spy Video Pan (3).jpg', 'public', '/storage/18-Nov-2020/images/1605709154-Spy-Video-Pan-(3).jpg', 'jpeg', 'image/jpeg', '35105', '2020-11-18 08:19:14', '2020-11-18 08:19:14'),
(620, 'Spy Video Pan (2).jpg', 'public', '/storage/18-Nov-2020/images/1605709154-Spy-Video-Pan-(2).jpg', 'jpeg', 'image/jpeg', '31303', '2020-11-18 08:19:14', '2020-11-18 08:19:14'),
(621, 'Spy Video Pan.jpg', 'public', '/storage/18-Nov-2020/images/1605709155-Spy-Video-Pan.jpg', 'jpeg', 'image/jpeg', '37992', '2020-11-18 08:19:15', '2020-11-18 08:19:15'),
(622, 'Spy Video Pan (4).jpg', 'public', '/storage/18-Nov-2020/images/1605709155-Spy-Video-Pan-(4).jpg', 'jpeg', 'image/jpeg', '28153', '2020-11-18 08:19:15', '2020-11-18 08:19:15'),
(623, '52 in 1 Multi Function Screwdriver Set (3).jpg', 'public', '/storage/18-Nov-2020/images/1605719620-52-in-1-Multi-Function-Screwdriver-Set-(3).jpg', 'jpeg', 'image/jpeg', '40727', '2020-11-18 11:13:40', '2020-11-18 11:13:40'),
(624, '52 in 1 Multi Function Screwdriver Set (2).jpg', 'public', '/storage/18-Nov-2020/images/1605719621-52-in-1-Multi-Function-Screwdriver-Set-(2).jpg', 'jpeg', 'image/jpeg', '34071', '2020-11-18 11:13:41', '2020-11-18 11:13:41'),
(625, '52 in 1 Multi Function Screwdriver Set (4).jpg', 'public', '/storage/18-Nov-2020/images/1605719621-52-in-1-Multi-Function-Screwdriver-Set-(4).jpg', 'jpeg', 'image/jpeg', '57401', '2020-11-18 11:13:41', '2020-11-18 11:13:41'),
(626, '52 in 1 Multi Function Screwdriver Set.jpg', 'public', '/storage/18-Nov-2020/images/1605719622-52-in-1-Multi-Function-Screwdriver-Set.jpg', 'jpeg', 'image/jpeg', '68525', '2020-11-18 11:13:42', '2020-11-18 11:13:42'),
(627, 'Biker Hang Gloves (1).jpg', 'public', '/storage/18-Nov-2020/images/1605722073-Biker-Hang-Gloves-(1).jpg', 'jpeg', 'image/jpeg', '48766', '2020-11-18 11:54:33', '2020-11-18 11:54:33'),
(628, 'Biker Hang Gloves (2).jpg', 'public', '/storage/18-Nov-2020/images/1605722073-Biker-Hang-Gloves-(2).jpg', 'jpeg', 'image/jpeg', '48324', '2020-11-18 11:54:33', '2020-11-18 11:54:33'),
(629, 'Biker Hang Gloves (3).jpg', 'public', '/storage/18-Nov-2020/images/1605722075-Biker-Hang-Gloves-(3).jpg', 'jpeg', 'image/jpeg', '44457', '2020-11-18 11:54:35', '2020-11-18 11:54:35'),
(630, 'Biker Hang Gloves (4).jpg', 'public', '/storage/18-Nov-2020/images/1605722075-Biker-Hang-Gloves-(4).jpg', 'jpeg', 'image/jpeg', '49618', '2020-11-18 11:54:35', '2020-11-18 11:54:35'),
(631, '003.jpg', 'public', '/storage/20-Dec-2020/images/1608449557-003.jpg', 'jpeg', 'image/jpeg', '68305', '2020-12-20 01:32:37', '2020-12-20 01:32:37'),
(632, '001.jpg', 'public', '/storage/20-Dec-2020/images/1608449558-001.jpg', 'jpeg', 'image/jpeg', '51406', '2020-12-20 01:32:38', '2020-12-20 01:32:38'),
(633, '007.jpg', 'public', '/storage/20-Dec-2020/images/1608449559-007.jpg', 'jpeg', 'image/jpeg', '57110', '2020-12-20 01:32:39', '2020-12-20 01:32:39'),
(634, '007 copy.jpg Final.jpg55.jpg', 'public', '/storage/20-Dec-2020/images/1608449559-007-copy.jpg-Final.jpg55.jpg', 'jpeg', 'image/jpeg', '49856', '2020-12-20 01:32:39', '2020-12-20 01:32:39'),
(635, 'Jeep Massenger Bag (3) copy.jpg', 'public', '/storage/18-Jan-2021/images/1610973631-Jeep-Massenger-Bag-(3)-copy.jpg', 'jpeg', 'image/jpeg', '55497', '2021-01-18 06:40:31', '2021-01-18 06:40:31'),
(636, 'Jeep Massenger Bag (3)0.jpg', 'public', '/storage/18-Jan-2021/images/1610973631-Jeep-Massenger-Bag-(3)0.jpg', 'jpeg', 'image/jpeg', '50288', '2021-01-18 06:40:31', '2021-01-18 06:40:31'),
(637, 'Jeep Massenger Bag (4).jpg', 'public', '/storage/18-Jan-2021/images/1610973632-Jeep-Massenger-Bag-(4).jpg', 'jpeg', 'image/jpeg', '50337', '2021-01-18 06:40:32', '2021-01-18 06:40:32'),
(638, 'Jeep Massenger Bag (4) copy.jpg', 'public', '/storage/18-Jan-2021/images/1610973632-Jeep-Massenger-Bag-(4)-copy.jpg', 'jpeg', 'image/jpeg', '55384', '2021-01-18 06:40:32', '2021-01-18 06:40:32'),
(639, 'Jeep Massenger Bag (4).jpg', 'public', '/storage/18-Jan-2021/images/1610973925-Jeep-Massenger-Bag-(4).jpg', 'jpeg', 'image/jpeg', '50337', '2021-01-18 06:45:25', '2021-01-18 06:45:25'),
(640, 'Jeep Massenger Bag (3) copy.jpg', 'public', '/storage/18-Jan-2021/images/1610973926-Jeep-Massenger-Bag-(3)-copy.jpg', 'jpeg', 'image/jpeg', '55497', '2021-01-18 06:45:26', '2021-01-18 06:45:26'),
(641, 'Jeep Massenger Bag (5) copy.jpg', 'public', '/storage/18-Jan-2021/images/1610973927-Jeep-Massenger-Bag-(5)-copy.jpg', 'jpeg', 'image/jpeg', '43389', '2021-01-18 06:45:27', '2021-01-18 06:45:27'),
(642, 'Jeep Massenger Bag (5).jpg', 'public', '/storage/18-Jan-2021/images/1610973929-Jeep-Massenger-Bag-(5).jpg', 'jpeg', 'image/jpeg', '41319', '2021-01-18 06:45:29', '2021-01-18 06:45:29'),
(643, 'Jeep Crossbody (3).jpg', 'public', '/storage/18-Jan-2021/images/1610979543-Jeep-Crossbody-(3).jpg', 'jpeg', 'image/jpeg', '52437', '2021-01-18 08:19:03', '2021-01-18 08:19:03'),
(644, 'Jeep Crossbody (2).jpg', 'public', '/storage/18-Jan-2021/images/1610979543-Jeep-Crossbody-(2).jpg', 'jpeg', 'image/jpeg', '60934', '2021-01-18 08:19:03', '2021-01-18 08:19:03'),
(645, 'Jeep Crossbody (4).jpg', 'public', '/storage/18-Jan-2021/images/1610979544-Jeep-Crossbody-(4).jpg', 'jpeg', 'image/jpeg', '65698', '2021-01-18 08:19:04', '2021-01-18 08:19:04'),
(646, 'Jeep Crossbody000 copy.jpg', 'public', '/storage/18-Jan-2021/images/1610979544-Jeep-Crossbody000-copy.jpg', 'jpeg', 'image/jpeg', '47233', '2021-01-18 08:19:05', '2021-01-18 08:19:05'),
(647, '119422107_746795952837680_3336891424324270260_n.jpg', 'public', '/storage/18-Jan-2021/images/1610980323-119422107_746795952837680_3336891424324270260_n.jpg', 'jpeg', 'image/jpeg', '35058', '2021-01-18 08:32:03', '2021-01-18 08:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `image_product`
--

CREATE TABLE `image_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `img_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(530, 64, 91, 'additional', '2020-09-21 05:10:36', '2020-09-21 05:10:36'),
(535, 67, 91, 'additional', '2020-09-21 05:10:36', '2020-09-21 05:10:36'),
(536, 62, 91, 'base', '2020-09-21 05:10:36', '2020-09-21 05:10:36'),
(537, 65, 91, 'additional', '2020-09-21 05:10:36', '2020-09-21 05:10:36'),
(538, 63, 91, 'additional', '2020-09-21 05:10:36', '2020-09-21 05:10:36'),
(539, 61, 93, 'base', '2020-09-21 05:14:38', '2020-09-21 05:14:38'),
(540, 50, 93, 'additional', '2020-09-21 05:14:38', '2020-09-21 05:14:38'),
(541, 51, 93, 'additional', '2020-09-21 05:14:38', '2020-09-21 05:14:38'),
(542, 58, 93, 'additional', '2020-09-21 05:14:38', '2020-09-21 05:14:38'),
(543, 64, 93, 'additional', '2020-09-21 05:14:38', '2020-09-21 05:14:38'),
(544, 67, 93, 'additional', '2020-09-21 05:14:38', '2020-09-21 05:14:38'),
(545, 49, 94, 'base', '2020-09-21 05:15:55', '2020-09-21 05:15:55'),
(546, 47, 94, 'additional', '2020-09-21 05:15:55', '2020-09-21 05:15:55'),
(547, 52, 94, 'additional', '2020-09-21 05:15:55', '2020-09-21 05:15:55'),
(548, 56, 94, 'additional', '2020-09-21 05:15:55', '2020-09-21 05:15:55'),
(549, 58, 94, 'additional', '2020-09-21 05:15:55', '2020-09-21 05:15:55'),
(550, 61, 94, 'additional', '2020-09-21 05:15:55', '2020-09-21 05:15:55'),
(551, 64, 94, 'additional', '2020-09-21 05:15:55', '2020-09-21 05:15:55'),
(552, 49, 95, 'base', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(553, 50, 95, 'additional', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(554, 54, 95, 'additional', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(555, 60, 95, 'additional', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(556, 65, 95, 'additional', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(557, 66, 95, 'additional', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(558, 52, 96, 'base', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(559, 47, 96, 'additional', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(560, 48, 96, 'additional', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(561, 54, 96, 'additional', '2020-09-21 05:16:19', '2020-09-21 05:16:19'),
(562, 58, 96, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(563, 59, 96, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(564, 64, 96, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(565, 57, 97, 'base', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(566, 47, 97, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(567, 49, 97, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(568, 53, 97, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(569, 59, 97, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(570, 63, 97, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(571, 65, 97, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(572, 48, 98, 'base', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(573, 47, 98, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(574, 55, 98, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(575, 56, 98, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(576, 59, 98, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(577, 67, 98, 'additional', '2020-09-21 05:16:20', '2020-09-21 05:16:20'),
(578, 48, 99, 'base', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(579, 47, 99, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(580, 51, 99, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(581, 52, 99, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(582, 54, 99, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(583, 62, 99, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(584, 63, 99, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(585, 60, 100, 'base', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(586, 47, 100, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(587, 50, 100, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(588, 51, 100, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(589, 58, 100, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(590, 65, 100, 'additional', '2020-09-21 05:16:21', '2020-09-21 05:16:21'),
(591, 48, 101, 'base', '2020-09-21 05:16:22', '2020-09-21 05:16:22'),
(592, 49, 101, 'additional', '2020-09-21 05:16:22', '2020-09-21 05:16:22'),
(593, 52, 101, 'additional', '2020-09-21 05:16:22', '2020-09-21 05:16:22'),
(594, 55, 101, 'additional', '2020-09-21 05:16:22', '2020-09-21 05:16:22'),
(595, 58, 101, 'additional', '2020-09-21 05:16:22', '2020-09-21 05:16:22'),
(596, 64, 101, 'additional', '2020-09-21 05:16:22', '2020-09-21 05:16:22'),
(597, 65, 101, 'additional', '2020-09-21 05:16:22', '2020-09-21 05:16:22'),
(598, 58, 102, 'base', '2020-09-21 05:16:23', '2020-09-21 05:16:23'),
(599, 47, 102, 'additional', '2020-09-21 05:16:23', '2020-09-21 05:16:23'),
(600, 51, 102, 'additional', '2020-09-21 05:16:23', '2020-09-21 05:16:23'),
(601, 56, 102, 'additional', '2020-09-21 05:16:23', '2020-09-21 05:16:23'),
(602, 64, 102, 'additional', '2020-09-21 05:16:23', '2020-09-21 05:16:23'),
(603, 62, 103, 'base', '2020-09-21 05:16:24', '2020-09-21 05:16:24'),
(604, 47, 103, 'additional', '2020-09-21 05:16:24', '2020-09-21 05:16:24'),
(605, 49, 103, 'additional', '2020-09-21 05:16:24', '2020-09-21 05:16:24'),
(606, 50, 103, 'additional', '2020-09-21 05:16:24', '2020-09-21 05:16:24'),
(607, 55, 103, 'additional', '2020-09-21 05:16:24', '2020-09-21 05:16:24'),
(608, 60, 103, 'additional', '2020-09-21 05:16:24', '2020-09-21 05:16:24'),
(609, 64, 103, 'additional', '2020-09-21 05:16:24', '2020-09-21 05:16:24'),
(610, 56, 104, 'base', '2020-09-21 05:16:25', '2020-09-21 05:16:25'),
(611, 47, 104, 'additional', '2020-09-21 05:16:25', '2020-09-21 05:16:25'),
(612, 51, 104, 'additional', '2020-09-21 05:16:25', '2020-09-21 05:16:25'),
(613, 52, 104, 'additional', '2020-09-21 05:16:25', '2020-09-21 05:16:25'),
(614, 55, 104, 'additional', '2020-09-21 05:16:25', '2020-09-21 05:16:25'),
(615, 56, 105, 'base', '2020-09-21 05:16:25', '2020-09-28 09:05:39'),
(616, 54, 105, 'additional', '2020-09-21 05:16:25', '2020-09-28 09:05:39'),
(617, 55, 105, 'additional', '2020-09-21 05:16:25', '2020-09-28 09:05:39'),
(618, 58, 105, 'additional', '2020-09-21 05:16:25', '2020-09-28 09:05:39'),
(619, 64, 105, 'additional', '2020-09-21 05:16:25', '2020-09-28 09:05:39'),
(620, 66, 105, 'additional', '2020-09-21 05:16:25', '2020-09-28 09:05:39'),
(621, 54, 106, 'base', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(622, 47, 106, 'additional', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(623, 58, 106, 'additional', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(624, 59, 106, 'additional', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(625, 60, 106, 'additional', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(626, 62, 106, 'additional', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(627, 66, 106, 'additional', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(628, 67, 106, 'additional', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(629, 67, 107, 'base', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(630, 48, 107, 'additional', '2020-09-21 05:16:26', '2020-09-21 05:16:26'),
(631, 53, 107, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(632, 54, 107, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(633, 56, 107, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(634, 57, 107, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(635, 61, 107, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(636, 58, 108, 'base', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(637, 47, 108, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(638, 54, 108, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(639, 56, 108, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(640, 64, 108, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(641, 54, 109, 'base', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(642, 55, 109, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(643, 56, 109, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(644, 60, 109, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(645, 67, 109, 'additional', '2020-09-21 05:16:27', '2020-09-21 05:16:27'),
(646, 53, 110, 'base', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(647, 52, 110, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(648, 58, 110, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(649, 64, 110, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(650, 65, 110, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(651, 56, 111, 'base', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(652, 47, 111, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(653, 50, 111, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(654, 51, 111, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(655, 54, 111, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(656, 61, 111, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(657, 66, 111, 'additional', '2020-09-21 05:16:28', '2020-09-21 05:16:28'),
(658, 50, 112, 'base', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(659, 48, 112, 'additional', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(660, 49, 112, 'additional', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(661, 64, 112, 'additional', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(662, 66, 112, 'additional', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(663, 67, 112, 'additional', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(664, 55, 113, 'base', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(665, 49, 113, 'additional', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(666, 50, 113, 'additional', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(667, 57, 113, 'additional', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(668, 62, 113, 'additional', '2020-09-21 05:16:29', '2020-09-21 05:16:29'),
(669, 63, 113, 'additional', '2020-09-21 05:16:30', '2020-09-21 05:16:30'),
(670, 61, 114, 'base', '2020-09-21 05:16:30', '2020-09-21 05:16:30'),
(671, 47, 114, 'additional', '2020-09-21 05:16:30', '2020-09-21 05:16:30'),
(672, 49, 114, 'additional', '2020-09-21 05:16:30', '2020-09-21 05:16:30'),
(673, 51, 114, 'additional', '2020-09-21 05:16:30', '2020-09-21 05:16:30'),
(674, 52, 114, 'additional', '2020-09-21 05:16:30', '2020-09-21 05:16:30'),
(675, 54, 114, 'additional', '2020-09-21 05:16:30', '2020-09-21 05:16:30'),
(676, 58, 114, 'additional', '2020-09-21 05:16:30', '2020-09-21 05:16:30'),
(677, 59, 114, 'additional', '2020-09-21 05:16:30', '2020-09-21 05:16:30'),
(678, 66, 115, 'base', '2020-09-21 05:16:59', '2020-09-21 05:16:59'),
(679, 47, 115, 'additional', '2020-09-21 05:16:59', '2020-09-21 05:16:59'),
(680, 49, 115, 'additional', '2020-09-21 05:16:59', '2020-09-21 05:16:59'),
(681, 51, 115, 'additional', '2020-09-21 05:16:59', '2020-09-21 05:16:59'),
(682, 61, 115, 'additional', '2020-09-21 05:16:59', '2020-09-21 05:16:59'),
(683, 62, 115, 'additional', '2020-09-21 05:16:59', '2020-09-21 05:16:59'),
(684, 62, 116, 'base', '2020-09-21 05:17:00', '2020-09-21 05:17:00'),
(685, 49, 116, 'additional', '2020-09-21 05:17:00', '2020-09-21 05:17:00'),
(686, 54, 116, 'additional', '2020-09-21 05:17:00', '2020-09-21 05:17:00'),
(687, 57, 116, 'additional', '2020-09-21 05:17:00', '2020-09-21 05:17:00'),
(688, 60, 116, 'additional', '2020-09-21 05:17:00', '2020-09-21 05:17:00'),
(689, 61, 116, 'additional', '2020-09-21 05:17:00', '2020-09-21 05:17:00'),
(690, 66, 116, 'additional', '2020-09-21 05:17:00', '2020-09-21 05:17:00'),
(691, 67, 116, 'additional', '2020-09-21 05:17:00', '2020-09-21 05:17:00'),
(692, 63, 117, 'base', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(693, 53, 117, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(694, 56, 117, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(695, 60, 117, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(696, 64, 117, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(697, 67, 117, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(698, 55, 118, 'base', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(699, 51, 118, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(700, 52, 118, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(701, 57, 118, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(702, 58, 118, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(703, 63, 118, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(704, 64, 118, 'additional', '2020-09-21 05:17:01', '2020-09-21 05:17:01'),
(705, 49, 119, 'base', '2020-09-21 05:17:02', '2020-09-21 05:17:02'),
(706, 50, 119, 'additional', '2020-09-21 05:17:02', '2020-09-21 05:17:02'),
(707, 51, 119, 'additional', '2020-09-21 05:17:02', '2020-09-21 05:17:02'),
(708, 56, 119, 'additional', '2020-09-21 05:17:02', '2020-09-21 05:17:02'),
(709, 57, 119, 'additional', '2020-09-21 05:17:02', '2020-09-21 05:17:02'),
(710, 63, 119, 'additional', '2020-09-21 05:17:02', '2020-09-21 05:17:02'),
(711, 64, 119, 'additional', '2020-09-21 05:17:02', '2020-09-21 05:17:02'),
(712, 67, 120, 'base', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(713, 50, 120, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(714, 56, 120, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(715, 57, 120, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(716, 59, 120, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(717, 61, 120, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(718, 63, 121, 'base', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(719, 48, 121, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(720, 49, 121, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(721, 50, 121, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(722, 51, 121, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(723, 56, 121, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(724, 59, 121, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(725, 65, 121, 'additional', '2020-09-21 05:17:03', '2020-09-21 05:17:03'),
(726, 55, 122, 'base', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(727, 52, 122, 'additional', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(728, 54, 122, 'additional', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(729, 57, 122, 'additional', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(730, 62, 122, 'additional', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(731, 63, 122, 'additional', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(732, 64, 123, 'base', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(733, 48, 123, 'additional', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(734, 58, 123, 'additional', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(735, 61, 123, 'additional', '2020-09-21 05:17:04', '2020-09-21 05:17:04'),
(736, 57, 124, 'base', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(737, 49, 124, 'additional', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(738, 53, 124, 'additional', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(739, 59, 124, 'additional', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(740, 60, 124, 'additional', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(741, 64, 124, 'additional', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(742, 65, 125, 'base', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(743, 47, 125, 'additional', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(744, 49, 125, 'additional', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(745, 53, 125, 'additional', '2020-09-21 05:17:05', '2020-09-21 05:17:05'),
(746, 57, 125, 'additional', '2020-09-21 05:17:06', '2020-09-21 05:17:06'),
(747, 59, 125, 'additional', '2020-09-21 05:17:06', '2020-09-21 05:17:06'),
(748, 61, 125, 'additional', '2020-09-21 05:17:06', '2020-09-21 05:17:06'),
(749, 49, 126, 'base', '2020-09-21 05:17:06', '2020-09-21 05:17:06'),
(750, 47, 126, 'additional', '2020-09-21 05:17:06', '2020-09-21 05:17:06'),
(751, 51, 126, 'additional', '2020-09-21 05:17:06', '2020-09-21 05:17:06'),
(752, 54, 126, 'additional', '2020-09-21 05:17:06', '2020-09-21 05:17:06'),
(753, 60, 126, 'additional', '2020-09-21 05:17:06', '2020-09-21 05:17:06'),
(754, 66, 126, 'additional', '2020-09-21 05:17:06', '2020-09-21 05:17:06'),
(755, 53, 127, 'base', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(756, 47, 127, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(757, 48, 127, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(758, 51, 127, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(759, 59, 127, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(760, 63, 127, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(761, 65, 127, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(762, 62, 128, 'base', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(763, 55, 128, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(764, 57, 128, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(765, 58, 128, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(766, 60, 128, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(767, 61, 128, 'additional', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(768, 65, 129, 'base', '2020-09-21 05:17:07', '2020-09-21 05:17:07'),
(769, 47, 129, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(770, 60, 129, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(771, 62, 129, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(772, 63, 129, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(773, 64, 129, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(774, 66, 129, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(775, 67, 130, 'base', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(776, 47, 130, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(777, 50, 130, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(778, 55, 130, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(779, 57, 130, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(780, 60, 130, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(781, 65, 130, 'additional', '2020-09-21 05:17:08', '2020-09-21 05:17:08'),
(782, 56, 131, 'base', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(783, 47, 131, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(784, 49, 131, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(785, 51, 131, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(786, 60, 131, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(787, 56, 132, 'base', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(788, 49, 132, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(789, 51, 132, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(790, 57, 132, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(791, 58, 132, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(792, 65, 132, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(793, 67, 132, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(794, 51, 133, 'base', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(795, 48, 133, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(796, 49, 133, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(797, 61, 133, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(798, 63, 133, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(799, 66, 133, 'additional', '2020-09-21 05:17:09', '2020-09-21 05:17:09'),
(800, 60, 134, 'base', '2020-09-21 05:17:10', '2020-09-21 05:17:10'),
(801, 48, 134, 'additional', '2020-09-21 05:17:10', '2020-09-21 05:17:10'),
(802, 50, 134, 'additional', '2020-09-21 05:17:10', '2020-09-21 05:17:10'),
(803, 54, 134, 'additional', '2020-09-21 05:17:10', '2020-09-21 05:17:10'),
(804, 66, 134, 'additional', '2020-09-21 05:17:10', '2020-09-21 05:17:10'),
(805, 74, 137, 'base', '2020-10-19 21:30:20', '2020-10-19 21:30:20'),
(806, 75, 137, 'additional', '2020-10-19 21:30:20', '2020-10-19 21:30:20'),
(807, 78, 138, 'base', '2020-10-20 02:52:04', '2020-10-20 02:52:04'),
(808, 77, 138, 'additional', '2020-10-20 02:52:04', '2020-10-20 02:52:04'),
(809, 80, 139, 'base', '2020-10-20 02:58:51', '2020-10-20 02:58:51'),
(810, 79, 139, 'additional', '2020-10-20 02:58:51', '2020-10-20 02:58:51'),
(811, 83, 140, 'base', '2020-10-20 03:16:59', '2020-10-20 03:16:59'),
(812, 81, 141, 'base', '2020-10-20 03:19:15', '2020-10-20 03:20:26'),
(813, 83, 141, 'additional', '2020-10-20 03:19:15', '2020-10-20 03:20:28'),
(814, 82, 141, 'additional', '2020-10-20 03:19:15', '2020-10-20 03:20:28'),
(815, 84, 142, 'base', '2020-10-20 03:36:24', '2020-10-20 03:36:24'),
(816, 86, 143, 'base', '2020-10-20 03:41:19', '2020-10-20 03:47:29'),
(817, 89, 143, 'additional', '2020-10-20 03:41:19', '2020-10-20 03:47:29'),
(818, 88, 143, 'additional', '2020-10-20 03:41:19', '2020-10-20 03:47:29'),
(819, 90, 144, 'base', '2020-10-20 03:49:33', '2020-10-20 03:49:33'),
(820, 93, 144, 'additional', '2020-10-20 03:49:33', '2020-10-20 03:49:33'),
(821, 91, 144, 'additional', '2020-10-20 03:49:33', '2020-10-20 03:49:33'),
(822, 92, 144, 'additional', '2020-10-20 03:49:33', '2020-10-20 03:49:33'),
(823, 95, 145, 'base', '2020-10-20 04:01:11', '2020-10-20 04:01:11'),
(824, 97, 145, 'additional', '2020-10-20 04:01:11', '2020-10-20 04:01:11'),
(825, 96, 145, 'additional', '2020-10-20 04:01:11', '2020-10-20 04:01:11'),
(826, 98, 146, 'base', '2020-10-20 04:08:29', '2020-10-20 04:09:14'),
(827, 101, 146, 'additional', '2020-10-20 04:08:29', '2020-10-20 04:09:14'),
(828, 100, 146, 'additional', '2020-10-20 04:08:29', '2020-10-20 04:09:14'),
(829, 99, 146, 'additional', '2020-10-20 04:08:29', '2020-10-20 04:09:14'),
(830, 103, 147, 'base', '2020-10-20 04:12:06', '2020-10-20 04:12:06'),
(831, 105, 147, 'additional', '2020-10-20 04:12:06', '2020-10-20 04:12:06'),
(832, 104, 147, 'additional', '2020-10-20 04:12:06', '2020-10-20 04:12:06'),
(833, 102, 147, 'additional', '2020-10-20 04:12:06', '2020-10-20 04:12:06'),
(834, 107, 148, 'base', '2020-10-20 04:17:32', '2020-10-20 04:17:32'),
(835, 109, 148, 'additional', '2020-10-20 04:17:32', '2020-10-20 04:17:32'),
(836, 108, 148, 'additional', '2020-10-20 04:17:32', '2020-10-20 04:17:32'),
(837, 106, 148, 'additional', '2020-10-20 04:17:32', '2020-10-20 04:17:32'),
(838, 114, 149, 'base', '2020-10-21 06:12:05', '2020-10-21 07:57:27'),
(839, 115, 149, 'additional', '2020-10-21 06:12:05', '2020-10-21 07:57:27'),
(840, 119, 150, 'base', '2020-10-21 07:56:18', '2020-10-21 07:56:18'),
(841, 120, 150, 'additional', '2020-10-21 07:56:18', '2020-10-21 07:56:18'),
(842, 118, 150, 'additional', '2020-10-21 07:56:18', '2020-10-21 07:56:18'),
(843, 116, 150, 'additional', '2020-10-21 07:56:18', '2020-10-21 07:56:18'),
(844, 117, 150, 'additional', '2020-10-21 07:56:18', '2020-10-21 07:56:18'),
(845, 113, 149, 'additional', '2020-10-21 07:57:27', '2020-10-21 07:57:27'),
(846, 112, 149, 'additional', '2020-10-21 07:57:27', '2020-10-21 07:57:27'),
(847, 121, 151, 'base', '2020-10-21 08:02:54', '2020-10-21 08:02:54'),
(848, 125, 151, 'additional', '2020-10-21 08:02:54', '2020-10-21 08:02:54'),
(849, 124, 151, 'additional', '2020-10-21 08:02:54', '2020-10-21 08:02:54'),
(850, 123, 151, 'additional', '2020-10-21 08:02:54', '2020-10-21 08:02:54'),
(851, 109, 152, 'base', '2020-10-21 08:16:07', '2020-10-21 08:16:07'),
(852, 108, 152, 'additional', '2020-10-21 08:16:07', '2020-10-21 08:16:07'),
(853, 134, 153, 'base', '2020-10-21 23:53:09', '2020-10-21 23:53:09'),
(854, 135, 153, 'additional', '2020-10-21 23:53:09', '2020-10-21 23:53:09'),
(855, 137, 153, 'additional', '2020-10-21 23:53:09', '2020-10-21 23:53:09'),
(856, 139, 154, 'base', '2020-10-21 23:58:33', '2020-10-21 23:58:33'),
(857, 141, 154, 'additional', '2020-10-21 23:58:33', '2020-10-21 23:58:33'),
(858, 140, 154, 'additional', '2020-10-21 23:58:33', '2020-10-21 23:58:33'),
(859, 138, 154, 'additional', '2020-10-21 23:58:33', '2020-10-21 23:58:33'),
(860, 143, 155, 'base', '2020-10-22 00:03:14', '2020-10-22 00:03:14'),
(861, 142, 155, 'additional', '2020-10-22 00:03:14', '2020-10-22 00:03:14'),
(862, 146, 156, 'base', '2020-10-22 02:01:07', '2020-10-22 02:01:07'),
(863, 145, 156, 'additional', '2020-10-22 02:01:07', '2020-10-22 02:01:07'),
(864, 147, 156, 'additional', '2020-10-22 02:01:07', '2020-10-22 02:01:07'),
(865, 144, 156, 'additional', '2020-10-22 02:01:08', '2020-10-22 02:01:08'),
(866, 149, 157, 'base', '2020-10-22 02:13:50', '2020-10-22 02:13:50'),
(867, 150, 157, 'additional', '2020-10-22 02:13:53', '2020-10-22 02:13:53'),
(868, 148, 157, 'additional', '2020-10-22 02:13:53', '2020-10-22 02:13:53'),
(869, 151, 158, 'base', '2020-10-22 02:19:42', '2020-10-22 02:19:42'),
(870, 153, 158, 'additional', '2020-10-22 02:19:42', '2020-10-22 02:19:42'),
(871, 152, 158, 'additional', '2020-10-22 02:19:42', '2020-10-22 02:19:42'),
(872, 158, 159, 'base', '2020-10-22 02:24:55', '2020-10-22 02:26:56'),
(873, 157, 159, 'additional', '2020-10-22 02:24:55', '2020-10-22 02:26:56'),
(874, 156, 159, 'additional', '2020-10-22 02:24:55', '2020-10-22 02:26:56'),
(875, 155, 159, 'additional', '2020-10-22 02:24:55', '2020-10-22 02:26:57'),
(876, 162, 160, 'base', '2020-10-22 02:29:55', '2020-10-22 02:29:55'),
(877, 161, 160, 'additional', '2020-10-22 02:29:55', '2020-10-22 02:29:55'),
(878, 159, 160, 'additional', '2020-10-22 02:29:55', '2020-10-22 02:29:55'),
(879, 160, 160, 'additional', '2020-10-22 02:29:55', '2020-10-22 02:29:55'),
(880, 164, 161, 'base', '2020-10-22 02:33:02', '2020-10-22 02:33:02'),
(881, 166, 161, 'additional', '2020-10-22 02:33:02', '2020-10-22 02:33:02'),
(882, 165, 161, 'additional', '2020-10-22 02:33:02', '2020-10-22 02:33:02'),
(883, 163, 161, 'additional', '2020-10-22 02:33:02', '2020-10-22 02:33:02'),
(884, 171, 162, 'base', '2020-10-22 02:40:30', '2020-10-26 02:35:47'),
(885, 172, 162, 'additional', '2020-10-22 02:40:30', '2020-10-26 02:35:47'),
(886, 170, 162, 'additional', '2020-10-22 02:40:30', '2020-10-26 02:35:47'),
(887, 168, 162, 'additional', '2020-10-22 02:40:30', '2020-10-26 02:35:47'),
(888, 169, 162, 'additional', '2020-10-22 02:40:30', '2020-10-26 02:35:47'),
(889, 174, 163, 'base', '2020-10-22 02:46:09', '2020-10-22 02:46:09'),
(890, 176, 163, 'additional', '2020-10-22 02:46:09', '2020-10-22 02:46:09'),
(891, 179, 164, 'base', '2020-10-22 02:49:44', '2020-10-22 02:49:44'),
(892, 177, 164, 'additional', '2020-10-22 02:49:44', '2020-10-22 02:49:44'),
(893, 178, 164, 'additional', '2020-10-22 02:49:44', '2020-10-22 02:49:44'),
(894, 181, 165, 'additional', '2020-10-23 01:50:13', '2020-10-23 01:52:39'),
(895, 182, 165, 'base', '2020-10-23 01:52:39', '2020-10-23 01:52:39'),
(896, 183, 166, 'base', '2020-10-23 01:56:58', '2020-10-23 01:56:58'),
(897, 186, 166, 'additional', '2020-10-23 01:56:58', '2020-10-23 01:56:58'),
(898, 185, 166, 'additional', '2020-10-23 01:56:58', '2020-10-23 01:56:58'),
(899, 184, 166, 'additional', '2020-10-23 01:56:58', '2020-10-23 01:56:58'),
(900, 187, 167, 'base', '2020-10-23 02:11:48', '2020-10-23 02:11:48'),
(901, 188, 167, 'additional', '2020-10-23 02:11:48', '2020-10-23 02:11:48'),
(902, 192, 168, 'base', '2020-10-23 03:31:41', '2020-10-23 03:31:41'),
(903, 191, 168, 'additional', '2020-10-23 03:31:41', '2020-10-23 03:31:41'),
(904, 190, 168, 'additional', '2020-10-23 03:31:41', '2020-10-23 03:31:41'),
(905, 189, 168, 'additional', '2020-10-23 03:31:41', '2020-10-23 03:31:41'),
(906, 194, 169, 'base', '2020-10-23 04:13:51', '2020-10-23 04:13:51'),
(907, 193, 169, 'additional', '2020-10-23 04:13:51', '2020-10-23 04:13:51'),
(908, 197, 170, 'base', '2020-10-23 04:29:29', '2020-10-23 04:29:29'),
(909, 195, 170, 'additional', '2020-10-23 04:29:29', '2020-10-23 04:29:29'),
(910, 196, 170, 'additional', '2020-10-23 04:29:29', '2020-10-23 04:29:29'),
(911, 198, 171, 'base', '2020-10-23 09:45:02', '2020-10-23 09:45:02'),
(912, 201, 171, 'additional', '2020-10-23 09:45:02', '2020-10-23 09:45:02'),
(913, 200, 171, 'additional', '2020-10-23 09:45:02', '2020-10-23 09:45:02'),
(914, 199, 171, 'additional', '2020-10-23 09:45:02', '2020-10-23 09:45:02'),
(915, 203, 172, 'base', '2020-10-23 09:51:17', '2020-11-18 12:23:43'),
(916, 205, 172, 'additional', '2020-10-23 09:51:17', '2020-11-18 12:23:43'),
(917, 204, 172, 'additional', '2020-10-23 09:51:17', '2020-11-18 12:23:43'),
(918, 202, 172, 'additional', '2020-10-23 09:51:17', '2020-11-18 12:23:43'),
(919, 207, 173, 'base', '2020-10-23 10:06:09', '2020-10-23 10:06:09'),
(920, 209, 173, 'additional', '2020-10-23 10:06:09', '2020-10-23 10:06:09'),
(921, 208, 173, 'additional', '2020-10-23 10:06:09', '2020-10-23 10:06:09'),
(922, 206, 173, 'additional', '2020-10-23 10:06:09', '2020-10-23 10:06:09'),
(923, 211, 174, 'base', '2020-10-23 10:17:22', '2020-10-23 10:17:22'),
(924, 213, 174, 'additional', '2020-10-23 10:17:22', '2020-10-23 10:17:22'),
(925, 212, 174, 'additional', '2020-10-23 10:17:22', '2020-10-23 10:17:22'),
(926, 210, 174, 'additional', '2020-10-23 10:17:22', '2020-10-23 10:17:22'),
(927, 216, 175, 'base', '2020-10-23 10:31:04', '2020-10-23 10:31:04'),
(928, 217, 175, 'additional', '2020-10-23 10:31:04', '2020-10-23 10:31:04'),
(929, 214, 175, 'additional', '2020-10-23 10:31:04', '2020-10-23 10:31:04'),
(930, 215, 175, 'additional', '2020-10-23 10:31:04', '2020-10-23 10:31:04'),
(931, 218, 176, 'base', '2020-10-24 02:29:10', '2020-10-24 02:29:10'),
(932, 221, 176, 'additional', '2020-10-24 02:29:10', '2020-10-24 02:29:10'),
(933, 212, 176, 'additional', '2020-10-24 02:29:10', '2020-10-24 02:29:10'),
(934, 219, 176, 'additional', '2020-10-24 02:29:10', '2020-10-24 02:29:10'),
(935, 222, 177, 'base', '2020-10-24 05:22:31', '2020-10-24 05:22:31'),
(936, 224, 177, 'additional', '2020-10-24 05:22:31', '2020-10-24 05:22:31'),
(937, 223, 177, 'additional', '2020-10-24 05:22:31', '2020-10-24 05:22:31'),
(938, 227, 178, 'base', '2020-10-24 05:39:16', '2020-10-24 05:39:16'),
(939, 226, 178, 'additional', '2020-10-24 05:39:16', '2020-10-24 05:39:16'),
(940, 225, 178, 'additional', '2020-10-24 05:39:16', '2020-10-24 05:39:16'),
(941, 229, 179, 'base', '2020-10-24 05:51:36', '2020-10-24 05:51:36'),
(942, 228, 179, 'additional', '2020-10-24 05:51:36', '2020-10-24 05:51:36'),
(943, 230, 180, 'base', '2020-10-24 06:04:32', '2020-10-24 06:04:32'),
(944, 233, 180, 'additional', '2020-10-24 06:04:32', '2020-10-24 06:04:32'),
(945, 232, 180, 'additional', '2020-10-24 06:04:32', '2020-10-24 06:04:32'),
(946, 231, 180, 'additional', '2020-10-24 06:04:32', '2020-10-24 06:04:32'),
(947, 234, 181, 'base', '2020-10-24 06:16:30', '2020-10-24 06:16:30'),
(948, 236, 181, 'additional', '2020-10-24 06:16:30', '2020-10-24 06:16:30'),
(949, 235, 181, 'additional', '2020-10-24 06:16:30', '2020-10-24 06:16:30'),
(950, 239, 182, 'base', '2020-10-24 07:15:43', '2020-10-24 07:15:43'),
(951, 237, 182, 'additional', '2020-10-24 07:15:43', '2020-10-24 07:15:43'),
(952, 238, 182, 'additional', '2020-10-24 07:15:43', '2020-10-24 07:15:43'),
(953, 241, 183, 'base', '2020-10-24 07:18:36', '2020-10-24 07:18:36'),
(954, 243, 183, 'additional', '2020-10-24 07:18:36', '2020-10-24 07:18:36'),
(955, 242, 183, 'additional', '2020-10-24 07:18:36', '2020-10-24 07:18:36'),
(956, 240, 183, 'additional', '2020-10-24 07:18:36', '2020-10-24 07:18:36'),
(957, 244, 184, 'base', '2020-10-24 07:30:18', '2020-10-24 07:30:18'),
(958, 246, 184, 'additional', '2020-10-24 07:30:18', '2020-10-24 07:30:18'),
(959, 245, 184, 'additional', '2020-10-24 07:30:18', '2020-10-24 07:30:18'),
(960, 249, 185, 'base', '2020-10-24 07:52:32', '2020-10-24 07:52:32'),
(961, 248, 185, 'additional', '2020-10-24 07:52:32', '2020-10-24 07:52:32'),
(962, 247, 185, 'additional', '2020-10-24 07:52:32', '2020-10-24 07:52:32'),
(963, 250, 186, 'base', '2020-10-24 09:59:46', '2020-10-24 09:59:46'),
(964, 253, 186, 'additional', '2020-10-24 09:59:46', '2020-10-24 09:59:46'),
(965, 252, 186, 'additional', '2020-10-24 09:59:46', '2020-10-24 09:59:46'),
(966, 251, 186, 'additional', '2020-10-24 09:59:46', '2020-10-24 09:59:46'),
(967, 257, 187, 'base', '2020-10-24 12:50:00', '2020-10-24 12:50:00'),
(968, 256, 187, 'additional', '2020-10-24 12:50:00', '2020-10-24 12:50:00'),
(969, 255, 187, 'additional', '2020-10-24 12:50:00', '2020-10-24 12:50:00'),
(970, 254, 187, 'additional', '2020-10-24 12:50:00', '2020-10-24 12:50:00'),
(971, 260, 188, 'base', '2020-10-24 13:06:52', '2020-10-24 13:06:52'),
(972, 259, 188, 'additional', '2020-10-24 13:06:52', '2020-10-24 13:06:52'),
(973, 258, 188, 'additional', '2020-10-24 13:06:52', '2020-10-24 13:06:52'),
(974, 261, 189, 'base', '2020-10-24 13:15:07', '2020-10-24 13:15:07'),
(975, 265, 189, 'additional', '2020-10-24 13:15:08', '2020-10-24 13:15:08'),
(976, 264, 189, 'additional', '2020-10-24 13:15:08', '2020-10-24 13:15:08'),
(977, 262, 189, 'additional', '2020-10-24 13:15:08', '2020-10-24 13:15:08'),
(978, 267, 190, 'base', '2020-10-24 13:27:07', '2020-10-24 13:27:07'),
(979, 268, 190, 'additional', '2020-10-24 13:27:07', '2020-10-24 13:27:07'),
(980, 266, 190, 'additional', '2020-10-24 13:27:07', '2020-10-24 13:27:07'),
(981, 270, 191, 'base', '2020-10-25 01:37:18', '2020-10-25 01:37:18'),
(982, 271, 191, 'additional', '2020-10-25 01:37:18', '2020-10-25 01:37:18'),
(983, 272, 191, 'additional', '2020-10-25 01:37:18', '2020-10-25 01:37:18'),
(984, 269, 191, 'additional', '2020-10-25 01:37:18', '2020-10-25 01:37:18'),
(985, 275, 192, 'base', '2020-10-25 01:46:33', '2020-10-25 01:46:33'),
(986, 276, 192, 'additional', '2020-10-25 01:46:33', '2020-10-25 01:46:33'),
(987, 274, 192, 'additional', '2020-10-25 01:46:33', '2020-10-25 01:46:33'),
(988, 273, 192, 'additional', '2020-10-25 01:46:33', '2020-10-25 01:46:33'),
(989, 280, 193, 'base', '2020-10-25 02:06:21', '2020-10-25 02:06:21'),
(990, 279, 193, 'additional', '2020-10-25 02:06:21', '2020-10-25 02:06:21'),
(991, 277, 193, 'additional', '2020-10-25 02:06:21', '2020-10-25 02:06:21'),
(992, 278, 193, 'additional', '2020-10-25 02:06:21', '2020-10-25 02:06:21'),
(993, 282, 194, 'base', '2020-10-25 02:21:13', '2020-10-25 02:21:13'),
(994, 284, 194, 'additional', '2020-10-25 02:21:13', '2020-10-25 02:21:13'),
(995, 283, 194, 'additional', '2020-10-25 02:21:13', '2020-10-25 02:21:13'),
(996, 281, 194, 'additional', '2020-10-25 02:21:13', '2020-10-25 02:21:13'),
(998, 287, 195, 'additional', '2020-10-25 04:38:36', '2020-10-26 06:31:38'),
(999, 286, 195, 'additional', '2020-10-25 04:38:36', '2020-10-26 06:31:38'),
(1000, 285, 195, 'additional', '2020-10-25 04:38:36', '2020-10-26 06:31:38'),
(1001, 292, 196, 'base', '2020-10-26 01:00:47', '2020-10-26 01:00:47'),
(1002, 291, 196, 'additional', '2020-10-26 01:00:47', '2020-10-26 01:00:47'),
(1003, 290, 196, 'additional', '2020-10-26 01:00:47', '2020-10-26 01:00:47'),
(1004, 289, 196, 'additional', '2020-10-26 01:00:48', '2020-10-26 01:00:48'),
(1005, 294, 197, 'base', '2020-10-26 01:04:44', '2020-10-26 01:05:58'),
(1006, 296, 197, 'additional', '2020-10-26 01:04:44', '2020-10-26 01:05:58'),
(1007, 295, 197, 'additional', '2020-10-26 01:04:44', '2020-10-26 01:05:58'),
(1008, 293, 197, 'additional', '2020-10-26 01:04:44', '2020-10-26 01:05:58'),
(1009, 298, 198, 'base', '2020-10-26 01:17:28', '2020-10-26 01:17:28'),
(1010, 300, 198, 'additional', '2020-10-26 01:17:28', '2020-10-26 01:17:28'),
(1011, 299, 198, 'additional', '2020-10-26 01:17:28', '2020-10-26 01:17:28'),
(1012, 297, 198, 'additional', '2020-10-26 01:17:28', '2020-10-26 01:17:28'),
(1013, 302, 199, 'base', '2020-10-26 01:21:30', '2020-10-26 01:21:30'),
(1014, 301, 199, 'additional', '2020-10-26 01:21:30', '2020-10-26 01:21:30'),
(1015, 305, 200, 'base', '2020-10-26 01:27:00', '2020-10-26 01:27:00'),
(1016, 306, 200, 'additional', '2020-10-26 01:27:00', '2020-10-26 01:27:00'),
(1017, 304, 200, 'additional', '2020-10-26 01:27:00', '2020-10-26 01:27:00'),
(1018, 303, 200, 'additional', '2020-10-26 01:27:00', '2020-10-26 01:27:00'),
(1019, 310, 201, 'base', '2020-10-26 01:29:58', '2020-10-26 01:29:58'),
(1020, 309, 201, 'additional', '2020-10-26 01:29:58', '2020-10-26 01:29:58'),
(1021, 308, 201, 'additional', '2020-10-26 01:29:58', '2020-10-26 01:29:58'),
(1022, 307, 201, 'additional', '2020-10-26 01:29:58', '2020-10-26 01:29:58'),
(1023, 312, 202, 'base', '2020-10-26 01:35:52', '2020-10-26 01:35:52'),
(1024, 314, 202, 'additional', '2020-10-26 01:35:52', '2020-10-26 01:35:52'),
(1025, 313, 202, 'additional', '2020-10-26 01:35:52', '2020-10-26 01:35:52'),
(1026, 311, 202, 'additional', '2020-10-26 01:35:52', '2020-10-26 01:35:52'),
(1027, 316, 203, 'base', '2020-10-26 01:44:24', '2020-10-26 01:44:24'),
(1028, 317, 203, 'additional', '2020-10-26 01:44:24', '2020-10-26 01:44:24'),
(1029, 318, 203, 'additional', '2020-10-26 01:44:24', '2020-10-26 01:44:24'),
(1030, 315, 203, 'additional', '2020-10-26 01:44:24', '2020-10-26 01:44:24'),
(1031, 321, 204, 'base', '2020-10-26 01:50:46', '2020-10-26 01:50:46'),
(1032, 322, 204, 'additional', '2020-10-26 01:50:46', '2020-10-26 01:50:46'),
(1033, 320, 204, 'additional', '2020-10-26 01:50:46', '2020-10-26 01:50:46'),
(1034, 319, 204, 'additional', '2020-10-26 01:50:46', '2020-10-26 01:50:46'),
(1035, 326, 205, 'base', '2020-10-26 02:04:01', '2020-10-26 02:04:01'),
(1036, 325, 205, 'additional', '2020-10-26 02:04:01', '2020-10-26 02:04:01'),
(1037, 323, 205, 'additional', '2020-10-26 02:04:01', '2020-10-26 02:04:01'),
(1038, 324, 205, 'additional', '2020-10-26 02:04:01', '2020-10-26 02:04:01'),
(1039, 329, 206, 'base', '2020-10-26 02:08:03', '2020-10-26 02:08:03'),
(1040, 330, 206, 'additional', '2020-10-26 02:08:03', '2020-10-26 02:08:03'),
(1041, 328, 206, 'additional', '2020-10-26 02:08:03', '2020-10-26 02:08:03'),
(1042, 327, 206, 'additional', '2020-10-26 02:08:03', '2020-10-26 02:08:03'),
(1043, 332, 207, 'base', '2020-10-26 02:16:12', '2021-01-10 12:10:31'),
(1044, 334, 207, 'additional', '2020-10-26 02:16:12', '2021-01-10 12:10:31'),
(1045, 333, 207, 'additional', '2020-10-26 02:16:12', '2021-01-10 12:10:31'),
(1046, 331, 207, 'additional', '2020-10-26 02:16:12', '2021-01-10 12:10:31'),
(1047, 335, 208, 'base', '2020-10-26 02:20:07', '2020-10-26 02:21:00'),
(1048, 338, 208, 'additional', '2020-10-26 02:20:07', '2020-10-26 02:21:00'),
(1049, 337, 208, 'additional', '2020-10-26 02:20:07', '2020-10-26 02:21:00'),
(1050, 336, 208, 'additional', '2020-10-26 02:20:07', '2020-10-26 02:21:00'),
(1051, 340, 209, 'base', '2020-10-26 02:34:50', '2020-10-26 02:34:50'),
(1052, 341, 209, 'additional', '2020-10-26 02:34:50', '2020-10-26 02:34:50'),
(1053, 339, 209, 'additional', '2020-10-26 02:34:50', '2020-10-26 02:34:50'),
(1054, 343, 210, 'base', '2020-10-26 02:42:38', '2020-10-26 02:42:38'),
(1055, 345, 210, 'additional', '2020-10-26 02:42:38', '2020-10-26 02:42:38'),
(1056, 344, 210, 'additional', '2020-10-26 02:42:38', '2020-10-26 02:42:38'),
(1057, 342, 210, 'additional', '2020-10-26 02:42:38', '2020-10-26 02:42:38'),
(1058, 346, 211, 'base', '2020-10-26 02:46:15', '2020-10-26 02:46:15'),
(1059, 348, 211, 'additional', '2020-10-26 02:46:15', '2020-10-26 02:46:15'),
(1060, 349, 211, 'additional', '2020-10-26 02:46:15', '2020-10-26 02:46:15'),
(1061, 347, 211, 'additional', '2020-10-26 02:46:15', '2020-10-26 02:46:15'),
(1062, 351, 212, 'base', '2020-10-26 02:49:12', '2020-10-26 02:49:12'),
(1063, 353, 212, 'additional', '2020-10-26 02:49:12', '2020-10-26 02:49:12'),
(1064, 352, 212, 'additional', '2020-10-26 02:49:12', '2020-10-26 02:49:12'),
(1065, 350, 212, 'additional', '2020-10-26 02:49:12', '2020-10-26 02:49:12'),
(1066, 354, 213, 'base', '2020-10-26 02:54:25', '2020-10-26 02:54:25'),
(1067, 357, 213, 'additional', '2020-10-26 02:54:25', '2020-10-26 02:54:25'),
(1068, 356, 213, 'additional', '2020-10-26 02:54:25', '2020-10-26 02:54:25'),
(1069, 355, 213, 'additional', '2020-10-26 02:54:25', '2020-10-26 02:54:25'),
(1070, 361, 214, 'base', '2020-10-26 05:13:13', '2020-10-26 05:13:13'),
(1071, 360, 214, 'additional', '2020-10-26 05:13:13', '2020-10-26 05:13:13'),
(1072, 359, 214, 'additional', '2020-10-26 05:13:13', '2020-10-26 05:13:13'),
(1073, 358, 214, 'additional', '2020-10-26 05:13:13', '2020-10-26 05:13:13'),
(1074, 365, 215, 'base', '2020-10-26 05:24:32', '2020-10-26 05:25:08'),
(1075, 364, 215, 'additional', '2020-10-26 05:25:10', '2020-10-26 05:25:10'),
(1076, 363, 215, 'additional', '2020-10-26 05:25:10', '2020-10-26 05:25:10'),
(1077, 362, 215, 'additional', '2020-10-26 05:25:10', '2020-10-26 05:25:10'),
(1078, 366, 216, 'base', '2020-10-26 06:24:00', '2020-10-26 06:24:00'),
(1079, 367, 216, 'additional', '2020-10-26 06:24:00', '2020-10-26 06:24:00'),
(1080, 368, 195, 'base', '2020-10-26 06:31:38', '2020-10-26 06:31:38'),
(1081, 370, 217, 'base', '2020-10-26 07:05:28', '2020-10-26 07:05:28'),
(1082, 372, 217, 'additional', '2020-10-26 07:05:28', '2020-10-26 07:05:28'),
(1083, 371, 217, 'additional', '2020-10-26 07:05:28', '2020-10-26 07:05:28'),
(1084, 369, 217, 'additional', '2020-10-26 07:05:28', '2020-10-26 07:05:28'),
(1085, 373, 218, 'base', '2020-10-26 07:15:44', '2020-10-26 07:15:44'),
(1086, 376, 218, 'additional', '2020-10-26 07:15:44', '2020-10-26 07:15:44'),
(1087, 375, 218, 'additional', '2020-10-26 07:15:44', '2020-10-26 07:15:44'),
(1088, 374, 218, 'additional', '2020-10-26 07:15:44', '2020-10-26 07:15:44'),
(1089, 379, 219, 'base', '2020-10-26 07:26:21', '2020-10-26 07:26:21'),
(1090, 380, 219, 'additional', '2020-10-26 07:26:21', '2020-10-26 07:26:21'),
(1091, 378, 219, 'additional', '2020-10-26 07:26:21', '2020-10-26 07:26:21'),
(1092, 377, 219, 'additional', '2020-10-26 07:26:21', '2020-10-26 07:26:21'),
(1093, 383, 220, 'base', '2020-10-26 07:51:43', '2020-10-26 07:51:43'),
(1094, 384, 220, 'additional', '2020-10-26 07:51:43', '2020-10-26 07:51:43'),
(1095, 381, 220, 'additional', '2020-10-26 07:51:43', '2020-10-26 07:51:43'),
(1096, 382, 220, 'additional', '2020-10-26 07:51:43', '2020-10-26 07:51:43'),
(1097, 386, 221, 'base', '2020-10-26 09:28:56', '2020-10-26 09:28:56'),
(1098, 385, 221, 'additional', '2020-10-26 09:28:56', '2020-10-26 09:28:56'),
(1099, 388, 222, 'base', '2020-10-26 09:41:37', '2020-10-26 09:41:37'),
(1100, 390, 222, 'additional', '2020-10-26 09:41:38', '2020-10-26 09:41:38'),
(1101, 389, 222, 'additional', '2020-10-26 09:41:40', '2020-10-26 09:41:40'),
(1102, 387, 222, 'additional', '2020-10-26 09:41:40', '2020-10-26 09:41:40'),
(1103, 392, 223, 'base', '2020-10-26 09:53:55', '2020-10-26 09:53:55'),
(1104, 393, 223, 'additional', '2020-10-26 09:53:55', '2020-10-26 09:53:55'),
(1105, 394, 223, 'additional', '2020-10-26 09:53:55', '2020-10-26 09:53:55'),
(1106, 391, 223, 'additional', '2020-10-26 09:53:55', '2020-10-26 09:53:55'),
(1107, 397, 224, 'base', '2020-10-26 10:04:22', '2020-10-26 10:04:22'),
(1108, 396, 224, 'additional', '2020-10-26 10:04:22', '2020-10-26 10:04:22'),
(1109, 395, 224, 'additional', '2020-10-26 10:04:22', '2020-10-26 10:04:22'),
(1110, 398, 225, 'additional', '2020-10-27 00:21:30', '2020-10-27 00:38:52'),
(1111, 400, 225, 'additional', '2020-10-27 00:21:30', '2020-10-27 00:38:52'),
(1112, 399, 225, 'base', '2020-10-27 00:21:30', '2020-10-27 00:38:52'),
(1113, 403, 226, 'additional', '2020-10-27 01:32:57', '2020-10-27 01:48:27'),
(1114, 404, 226, 'additional', '2020-10-27 01:32:57', '2020-10-27 01:48:27'),
(1115, 401, 226, 'additional', '2020-10-27 01:32:57', '2020-10-27 01:48:27'),
(1116, 402, 226, 'base', '2020-10-27 01:32:57', '2020-10-27 01:48:27'),
(1117, 407, 227, 'base', '2020-10-27 01:47:05', '2020-10-27 01:47:53'),
(1118, 406, 227, 'additional', '2020-10-27 01:47:05', '2020-10-27 01:47:53'),
(1119, 405, 227, 'additional', '2020-10-27 01:47:05', '2020-10-27 01:47:53'),
(1120, 410, 228, 'base', '2020-10-27 02:00:30', '2020-10-27 02:00:30'),
(1121, 411, 228, 'additional', '2020-10-27 02:00:30', '2020-10-27 02:00:30'),
(1122, 409, 228, 'additional', '2020-10-27 02:00:30', '2020-10-27 02:00:30'),
(1123, 408, 228, 'additional', '2020-10-27 02:00:30', '2020-10-27 02:00:30'),
(1124, 413, 229, 'base', '2020-10-27 23:48:17', '2020-10-27 23:48:17'),
(1125, 415, 229, 'additional', '2020-10-27 23:48:17', '2020-10-27 23:48:17'),
(1126, 414, 229, 'additional', '2020-10-27 23:48:17', '2020-10-27 23:48:17'),
(1127, 412, 229, 'additional', '2020-10-27 23:48:17', '2020-10-27 23:48:17'),
(1128, 416, 230, 'base', '2020-10-28 00:25:55', '2020-10-28 00:25:55'),
(1129, 418, 230, 'additional', '2020-10-28 00:25:55', '2020-10-28 00:25:55'),
(1130, 419, 230, 'additional', '2020-10-28 00:25:55', '2020-10-28 00:25:55'),
(1131, 417, 230, 'additional', '2020-10-28 00:25:55', '2020-10-28 00:25:55'),
(1132, 427, 231, 'base', '2020-10-28 00:37:08', '2020-10-28 00:37:08'),
(1133, 429, 231, 'additional', '2020-10-28 00:37:08', '2020-10-28 00:37:08'),
(1134, 428, 231, 'additional', '2020-10-28 00:37:08', '2020-10-28 00:37:08'),
(1135, 426, 231, 'additional', '2020-10-28 00:37:08', '2020-10-28 00:37:08'),
(1136, 431, 232, 'base', '2020-10-28 00:57:51', '2020-10-28 00:57:51'),
(1137, 433, 232, 'additional', '2020-10-28 00:57:51', '2020-10-28 00:57:51'),
(1138, 432, 232, 'additional', '2020-10-28 00:57:51', '2020-10-28 00:57:51'),
(1139, 430, 232, 'additional', '2020-10-28 00:57:51', '2020-10-28 00:57:51'),
(1140, 444, 233, 'base', '2020-10-28 01:09:07', '2020-10-28 01:09:07'),
(1141, 443, 233, 'additional', '2020-10-28 01:09:07', '2020-10-28 01:09:07'),
(1142, 441, 233, 'additional', '2020-10-28 01:09:07', '2020-10-28 01:09:07'),
(1143, 442, 233, 'additional', '2020-10-28 01:09:07', '2020-10-28 01:09:07'),
(1144, 448, 234, 'base', '2020-10-28 06:08:10', '2020-10-28 06:08:10'),
(1145, 447, 234, 'additional', '2020-10-28 06:08:10', '2020-10-28 06:08:10'),
(1146, 446, 234, 'additional', '2020-10-28 06:08:10', '2020-10-28 06:08:10'),
(1147, 445, 234, 'additional', '2020-10-28 06:08:10', '2020-10-28 06:08:10'),
(1148, 450, 235, 'base', '2020-10-28 06:19:24', '2020-10-28 06:19:24'),
(1149, 452, 235, 'additional', '2020-10-28 06:19:24', '2020-10-28 06:19:24'),
(1150, 451, 235, 'additional', '2020-10-28 06:19:24', '2020-10-28 06:19:24'),
(1151, 449, 235, 'additional', '2020-10-28 06:19:24', '2020-10-28 06:19:24'),
(1152, 455, 236, 'base', '2020-10-28 07:02:15', '2020-10-28 07:02:15'),
(1153, 456, 236, 'additional', '2020-10-28 07:02:15', '2020-10-28 07:02:15'),
(1154, 454, 236, 'additional', '2020-10-28 07:02:15', '2020-10-28 07:02:15'),
(1155, 453, 236, 'additional', '2020-10-28 07:02:15', '2020-10-28 07:02:15'),
(1156, 460, 237, 'base', '2020-10-28 07:11:41', '2020-10-28 07:11:41'),
(1157, 459, 237, 'additional', '2020-10-28 07:11:41', '2020-10-28 07:11:41'),
(1158, 458, 237, 'additional', '2020-10-28 07:11:41', '2020-10-28 07:11:41'),
(1159, 457, 237, 'additional', '2020-10-28 07:11:41', '2020-10-28 07:11:41'),
(1160, 462, 238, 'base', '2020-10-28 07:14:43', '2020-10-28 07:14:43'),
(1161, 464, 238, 'additional', '2020-10-28 07:14:43', '2020-10-28 07:14:43'),
(1162, 463, 238, 'additional', '2020-10-28 07:14:43', '2020-10-28 07:14:43'),
(1163, 461, 238, 'additional', '2020-10-28 07:14:43', '2020-10-28 07:14:43'),
(1164, 465, 239, 'base', '2020-10-28 07:21:26', '2020-10-28 07:21:26'),
(1165, 469, 240, 'base', '2020-10-28 07:27:00', '2020-10-28 07:27:00'),
(1166, 468, 240, 'additional', '2020-10-28 07:27:00', '2020-10-28 07:27:00'),
(1167, 466, 240, 'additional', '2020-10-28 07:27:00', '2020-10-28 07:27:00'),
(1168, 467, 240, 'additional', '2020-10-28 07:27:00', '2020-10-28 07:27:00'),
(1169, 330, 243, 'base', '2020-11-10 06:32:18', '2020-11-10 06:32:18'),
(1170, 470, 244, 'base', '2020-11-10 08:08:33', '2020-11-10 08:08:33'),
(1171, 471, 244, 'additional', '2020-11-10 08:08:33', '2020-11-10 08:08:33'),
(1172, 472, 244, 'additional', '2020-11-10 08:08:33', '2020-11-10 08:08:33'),
(1173, 473, 244, 'additional', '2020-11-10 08:08:33', '2020-11-10 08:08:33'),
(1174, 479, 245, 'base', '2020-11-10 08:29:41', '2020-11-10 08:29:41'),
(1175, 478, 245, 'additional', '2020-11-10 08:29:41', '2020-11-10 08:29:41'),
(1176, 483, 246, 'base', '2020-11-10 08:32:56', '2020-11-10 08:32:56'),
(1177, 482, 246, 'additional', '2020-11-10 08:32:56', '2020-11-10 08:32:56'),
(1178, 484, 246, 'additional', '2020-11-10 08:32:56', '2020-11-10 08:32:56'),
(1179, 485, 246, 'additional', '2020-11-10 08:32:56', '2020-11-10 08:32:56'),
(1180, 488, 247, 'base', '2020-11-10 08:52:17', '2020-11-10 08:52:17'),
(1181, 486, 247, 'additional', '2020-11-10 08:52:17', '2020-11-10 08:52:17'),
(1182, 487, 247, 'additional', '2020-11-10 08:52:17', '2020-11-10 08:52:17'),
(1183, 489, 247, 'additional', '2020-11-10 08:52:17', '2020-11-10 08:52:17'),
(1184, 491, 248, 'base', '2020-11-10 09:01:10', '2020-11-10 09:01:10'),
(1185, 490, 248, 'additional', '2020-11-10 09:01:10', '2020-11-10 09:01:10'),
(1186, 492, 248, 'additional', '2020-11-10 09:01:10', '2020-11-10 09:01:10'),
(1187, 493, 248, 'additional', '2020-11-10 09:01:10', '2020-11-10 09:01:10'),
(1188, 497, 249, 'base', '2020-11-10 11:21:47', '2020-11-10 11:21:47'),
(1189, 494, 249, 'additional', '2020-11-10 11:21:47', '2020-11-10 11:21:47'),
(1190, 495, 249, 'additional', '2020-11-10 11:21:47', '2020-11-10 11:21:47'),
(1191, 496, 249, 'additional', '2020-11-10 11:21:47', '2020-11-10 11:21:47'),
(1192, 499, 250, 'base', '2020-11-11 01:40:00', '2020-11-11 09:39:57'),
(1193, 500, 250, 'additional', '2020-11-11 01:40:00', '2020-11-11 09:39:57'),
(1194, 501, 250, 'additional', '2020-11-11 01:40:00', '2020-11-11 09:39:57'),
(1195, 503, 251, 'base', '2020-11-11 01:47:35', '2020-11-11 01:47:35'),
(1196, 502, 251, 'additional', '2020-11-11 01:47:35', '2020-11-11 01:47:35'),
(1197, 504, 252, 'base', '2020-11-12 07:52:41', '2020-11-12 07:56:34'),
(1198, 506, 252, 'additional', '2020-11-12 07:56:34', '2020-11-12 07:56:34'),
(1199, 505, 252, 'additional', '2020-11-12 07:56:34', '2020-11-12 07:56:34'),
(1200, 507, 253, 'base', '2020-11-12 08:02:09', '2020-11-12 08:02:09'),
(1201, 505, 253, 'additional', '2020-11-12 08:02:09', '2020-11-12 08:02:09'),
(1202, 508, 253, 'additional', '2020-11-12 08:02:09', '2020-11-12 08:02:09'),
(1203, 509, 254, 'base', '2020-11-12 08:05:04', '2020-11-12 08:05:04'),
(1204, 510, 254, 'additional', '2020-11-12 08:05:04', '2020-11-12 08:05:04'),
(1205, 511, 254, 'additional', '2020-11-12 08:05:04', '2020-11-12 08:05:04'),
(1206, 513, 255, 'base', '2020-11-12 08:07:54', '2020-11-12 08:07:54'),
(1207, 512, 255, 'additional', '2020-11-12 08:07:54', '2020-11-12 08:07:54'),
(1208, 514, 255, 'additional', '2020-11-12 08:07:54', '2020-11-12 08:07:54'),
(1209, 515, 256, 'base', '2020-11-16 01:58:57', '2020-11-18 12:19:49'),
(1210, 516, 256, 'additional', '2020-11-16 01:58:57', '2020-11-18 12:19:49'),
(1211, 517, 256, 'additional', '2020-11-16 01:58:57', '2020-11-18 12:19:49'),
(1212, 518, 256, 'additional', '2020-11-16 01:58:57', '2020-11-18 12:19:49'),
(1213, 520, 257, 'base', '2020-11-16 02:08:38', '2020-11-16 02:08:38');
INSERT INTO `image_product` (`id`, `image_id`, `product_id`, `img_type`, `created_at`, `updated_at`) VALUES
(1214, 521, 257, 'additional', '2020-11-16 02:08:38', '2020-11-16 02:08:38'),
(1215, 522, 257, 'additional', '2020-11-16 02:08:38', '2020-11-16 02:08:38'),
(1216, 523, 258, 'base', '2020-11-16 02:18:48', '2020-11-16 02:18:48'),
(1217, 524, 258, 'additional', '2020-11-16 02:18:48', '2020-11-16 02:18:48'),
(1218, 525, 258, 'additional', '2020-11-16 02:18:48', '2020-11-16 02:18:48'),
(1219, 526, 258, 'additional', '2020-11-16 02:18:48', '2020-11-16 02:18:48'),
(1220, 529, 259, 'base', '2020-11-16 04:24:53', '2020-11-16 04:24:53'),
(1221, 528, 259, 'additional', '2020-11-16 04:24:53', '2020-11-16 04:24:53'),
(1222, 527, 259, 'additional', '2020-11-16 04:24:53', '2020-11-16 04:24:53'),
(1223, 533, 260, 'base', '2020-11-16 04:27:45', '2020-11-16 04:27:45'),
(1224, 531, 260, 'additional', '2020-11-16 04:27:45', '2020-11-16 04:27:45'),
(1225, 532, 260, 'additional', '2020-11-16 04:27:45', '2020-11-16 04:27:45'),
(1226, 534, 260, 'additional', '2020-11-16 04:27:45', '2020-11-16 04:27:45'),
(1227, 536, 261, 'base', '2020-11-16 04:31:49', '2020-11-16 04:31:49'),
(1228, 535, 261, 'additional', '2020-11-16 04:31:49', '2020-11-16 04:31:49'),
(1229, 537, 261, 'additional', '2020-11-16 04:31:49', '2020-11-16 04:31:49'),
(1230, 538, 261, 'additional', '2020-11-16 04:31:49', '2020-11-16 04:31:49'),
(1231, 541, 262, 'base', '2020-11-16 04:36:43', '2020-11-16 04:36:43'),
(1232, 540, 262, 'additional', '2020-11-16 04:36:43', '2020-11-16 04:36:43'),
(1233, 542, 262, 'additional', '2020-11-16 04:36:43', '2020-11-16 04:36:43'),
(1234, 543, 263, 'base', '2020-11-16 04:40:04', '2020-11-16 04:40:04'),
(1235, 544, 263, 'additional', '2020-11-16 04:40:04', '2020-11-16 04:40:04'),
(1236, 545, 263, 'additional', '2020-11-16 04:40:04', '2020-11-16 04:40:04'),
(1237, 546, 263, 'additional', '2020-11-16 04:40:04', '2020-11-16 04:40:04'),
(1238, 549, 264, 'base', '2020-11-16 04:45:36', '2020-11-16 04:45:36'),
(1239, 548, 264, 'additional', '2020-11-16 04:45:36', '2020-11-16 04:45:36'),
(1240, 547, 264, 'additional', '2020-11-16 04:45:36', '2020-11-16 04:45:36'),
(1241, 552, 265, 'base', '2020-11-16 05:11:43', '2020-11-16 05:11:43'),
(1242, 551, 265, 'additional', '2020-11-16 05:11:43', '2020-11-16 05:11:43'),
(1243, 553, 265, 'additional', '2020-11-16 05:11:43', '2020-11-16 05:11:43'),
(1244, 554, 265, 'additional', '2020-11-16 05:11:43', '2020-11-16 05:11:43'),
(1245, 558, 266, 'base', '2020-11-16 05:18:05', '2020-11-16 05:18:05'),
(1246, 555, 266, 'additional', '2020-11-16 05:18:05', '2020-11-16 05:18:05'),
(1247, 556, 266, 'additional', '2020-11-16 05:18:05', '2020-11-16 05:18:05'),
(1248, 557, 266, 'additional', '2020-11-16 05:18:05', '2020-11-16 05:18:05'),
(1249, 563, 267, 'base', '2020-11-17 01:39:46', '2020-11-17 01:39:46'),
(1250, 567, 268, 'base', '2020-11-17 01:47:16', '2020-11-17 01:47:16'),
(1251, 564, 268, 'additional', '2020-11-17 01:47:16', '2020-11-17 01:47:16'),
(1252, 565, 268, 'additional', '2020-11-17 01:47:16', '2020-11-17 01:47:16'),
(1253, 566, 268, 'additional', '2020-11-17 01:47:16', '2020-11-17 01:47:16'),
(1254, 568, 268, 'additional', '2020-11-17 01:47:16', '2020-11-17 01:47:16'),
(1255, 575, 269, 'base', '2020-11-17 03:34:02', '2020-11-17 03:34:02'),
(1256, 569, 269, 'additional', '2020-11-17 03:34:02', '2020-11-17 03:34:02'),
(1257, 571, 269, 'additional', '2020-11-17 03:34:02', '2020-11-17 03:34:02'),
(1258, 573, 269, 'additional', '2020-11-17 03:34:02', '2020-11-17 03:34:02'),
(1259, 574, 269, 'additional', '2020-11-17 03:34:02', '2020-11-17 03:34:02'),
(1260, 578, 270, 'base', '2020-11-17 03:41:29', '2020-11-17 03:41:29'),
(1261, 577, 270, 'additional', '2020-11-17 03:41:29', '2020-11-17 03:41:29'),
(1262, 579, 270, 'additional', '2020-11-17 03:41:29', '2020-11-17 03:41:29'),
(1263, 580, 271, 'base', '2020-11-17 03:45:37', '2020-11-17 03:45:37'),
(1264, 584, 272, 'base', '2020-11-17 03:58:14', '2020-11-17 03:58:14'),
(1265, 581, 272, 'additional', '2020-11-17 03:58:14', '2020-11-17 03:58:14'),
(1266, 582, 272, 'additional', '2020-11-17 03:58:14', '2020-11-17 03:58:14'),
(1267, 583, 272, 'additional', '2020-11-17 03:58:14', '2020-11-17 03:58:14'),
(1268, 585, 273, 'base', '2020-11-17 04:03:30', '2020-11-17 04:03:30'),
(1269, 586, 273, 'additional', '2020-11-17 04:03:30', '2020-11-17 04:03:30'),
(1270, 587, 273, 'additional', '2020-11-17 04:03:30', '2020-11-17 04:03:30'),
(1271, 588, 273, 'additional', '2020-11-17 04:03:30', '2020-11-17 04:03:30'),
(1272, 590, 274, 'base', '2020-11-17 04:14:01', '2020-11-17 04:14:01'),
(1273, 589, 274, 'additional', '2020-11-17 04:14:01', '2020-11-17 04:14:01'),
(1274, 592, 274, 'additional', '2020-11-17 04:14:01', '2020-11-17 04:14:01'),
(1275, 591, 274, 'additional', '2020-11-17 04:14:01', '2020-11-17 04:14:01'),
(1276, 593, 275, 'base', '2020-11-17 04:23:38', '2020-11-17 04:23:38'),
(1277, 594, 275, 'additional', '2020-11-17 04:23:38', '2020-11-17 04:23:38'),
(1278, 596, 275, 'additional', '2020-11-17 04:23:38', '2020-11-17 04:23:38'),
(1279, 595, 275, 'additional', '2020-11-17 04:23:38', '2020-11-17 04:23:38'),
(1280, 600, 276, 'base', '2020-11-17 04:27:54', '2020-11-17 04:27:54'),
(1281, 597, 276, 'additional', '2020-11-17 04:27:54', '2020-11-17 04:27:54'),
(1282, 598, 276, 'additional', '2020-11-17 04:27:54', '2020-11-17 04:27:54'),
(1283, 599, 276, 'additional', '2020-11-17 04:27:54', '2020-11-17 04:27:54'),
(1284, 604, 277, 'base', '2020-11-17 04:35:36', '2020-11-17 04:35:36'),
(1285, 602, 277, 'additional', '2020-11-17 04:35:36', '2020-11-17 04:35:36'),
(1286, 601, 277, 'additional', '2020-11-17 04:35:36', '2020-11-17 04:35:36'),
(1287, 603, 277, 'additional', '2020-11-17 04:35:36', '2020-11-17 04:35:36'),
(1288, 605, 278, 'base', '2020-11-17 04:39:00', '2020-11-17 04:39:00'),
(1289, 606, 278, 'additional', '2020-11-17 04:39:00', '2020-11-17 04:39:00'),
(1290, 607, 278, 'additional', '2020-11-17 04:39:00', '2020-11-17 04:39:00'),
(1291, 608, 278, 'additional', '2020-11-17 04:39:00', '2020-11-17 04:39:00'),
(1292, 611, 279, 'base', '2020-11-17 05:39:55', '2020-11-17 05:39:55'),
(1293, 610, 279, 'additional', '2020-11-17 05:39:55', '2020-11-17 05:39:55'),
(1294, 609, 279, 'additional', '2020-11-17 05:39:55', '2020-11-17 05:39:55'),
(1295, 612, 279, 'additional', '2020-11-17 05:39:55', '2020-11-17 05:39:55'),
(1296, 615, 280, 'base', '2020-11-17 05:58:52', '2020-11-17 05:58:52'),
(1297, 613, 280, 'additional', '2020-11-17 05:58:52', '2020-11-17 05:58:52'),
(1298, 614, 280, 'additional', '2020-11-17 05:58:52', '2020-11-17 05:58:52'),
(1299, 616, 280, 'additional', '2020-11-17 05:58:52', '2020-11-17 05:58:52'),
(1300, 617, 281, 'base', '2020-11-17 06:11:34', '2020-11-17 06:11:34'),
(1301, 618, 281, 'additional', '2020-11-17 06:11:34', '2020-11-17 06:11:34'),
(1302, 621, 282, 'base', '2020-11-18 08:25:26', '2020-11-18 08:25:26'),
(1303, 620, 282, 'additional', '2020-11-18 08:25:26', '2020-11-18 08:25:26'),
(1304, 619, 282, 'additional', '2020-11-18 08:25:26', '2020-11-18 08:25:26'),
(1305, 622, 282, 'additional', '2020-11-18 08:25:26', '2020-11-18 08:25:26'),
(1306, 623, 283, 'base', '2020-11-18 11:19:34', '2020-11-18 11:19:34'),
(1307, 624, 283, 'additional', '2020-11-18 11:19:34', '2020-11-18 11:19:34'),
(1308, 625, 283, 'additional', '2020-11-18 11:19:34', '2020-11-18 11:19:34'),
(1309, 626, 283, 'additional', '2020-11-18 11:19:34', '2020-11-18 11:19:34'),
(1310, 627, 284, 'base', '2020-11-18 12:03:33', '2020-11-18 12:03:33'),
(1311, 628, 284, 'additional', '2020-11-18 12:03:33', '2020-11-18 12:03:33'),
(1312, 629, 284, 'additional', '2020-11-18 12:03:33', '2020-11-18 12:03:33'),
(1313, 630, 284, 'additional', '2020-11-18 12:03:33', '2020-11-18 12:03:33'),
(1314, 634, 285, 'base', '2020-12-20 01:37:30', '2020-12-20 01:37:30'),
(1315, 631, 285, 'additional', '2020-12-20 01:37:30', '2020-12-20 01:37:30'),
(1316, 632, 285, 'additional', '2020-12-20 01:37:30', '2020-12-20 01:37:30'),
(1317, 633, 285, 'additional', '2020-12-20 01:37:30', '2020-12-20 01:37:30'),
(1318, 638, 286, 'base', '2021-01-18 06:44:06', '2021-01-18 06:44:06'),
(1319, 635, 286, 'additional', '2021-01-18 06:44:06', '2021-01-18 06:44:06'),
(1320, 636, 286, 'additional', '2021-01-18 06:44:06', '2021-01-18 06:44:06'),
(1321, 637, 286, 'additional', '2021-01-18 06:44:06', '2021-01-18 06:44:06'),
(1322, 641, 287, 'base', '2021-01-18 06:49:43', '2021-01-18 06:49:43'),
(1323, 638, 287, 'additional', '2021-01-18 06:49:43', '2021-01-18 06:49:43'),
(1324, 639, 287, 'additional', '2021-01-18 06:49:43', '2021-01-18 06:49:43'),
(1325, 640, 287, 'additional', '2021-01-18 06:49:43', '2021-01-18 06:49:43'),
(1326, 642, 287, 'additional', '2021-01-18 06:49:43', '2021-01-18 06:49:43'),
(1327, 644, 288, 'base', '2021-01-18 08:27:53', '2021-03-07 04:20:01'),
(1328, 643, 288, 'additional', '2021-01-18 08:27:53', '2021-03-07 04:20:01'),
(1329, 645, 288, 'additional', '2021-01-18 08:27:53', '2021-03-07 04:20:01'),
(1330, 646, 288, 'additional', '2021-01-18 08:27:53', '2021-03-07 04:20:01');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'TopBar Menu', 'topbar-menu', '2020-09-15 03:34:09', '2020-09-15 03:34:09'),
(2, 'Header Menu', 'header-menu', '2020-09-15 05:29:18', '2020-09-15 05:29:18'),
(3, 'Quick Links', 'quick-links', '2020-09-15 07:16:13', '2020-09-15 07:16:13');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `href` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(2, 1, 'Terms & Conditions', 'terms-and-conditions', 2, '2020-09-15 03:34:37', '2020-09-20 10:21:36'),
(3, 2, 'Shop', 'shop', 1, '2020-09-15 05:29:54', '2020-10-19 10:46:46'),
(4, 2, 'Contact Us', 'contact-us', 1, '2020-09-15 05:32:07', '2020-09-15 05:32:07'),
(5, 2, 'Pay Us', 'pay-us', 1, '2020-09-15 05:32:18', '2020-10-20 02:34:23'),
(6, 3, 'Terms & Conditions', 'terms-and-conditions', 1, '2020-09-15 07:17:04', '2020-09-15 07:17:04'),
(7, 3, 'Payment Policy', 'payment-policy', 1, '2020-09-15 07:17:21', '2020-09-15 07:17:21'),
(8, 3, 'Return Policy', 'return-policy', 1, '2020-09-15 07:17:30', '2020-09-15 07:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2020_09_05_055627_create_slides_table', 1),
(20, '2020_09_05_132720_create_categories_table', 1),
(21, '2020_09_05_142606_create_brands_table', 1),
(22, '2020_09_05_152538_create_products_table', 1),
(23, '2020_09_06_045904_create_category_product_table', 1),
(24, '2020_09_06_072209_create_images_table', 1),
(25, '2020_09_07_030004_create_image_product_table', 1),
(26, '2020_09_11_075847_create_orders_table', 1),
(27, '2020_09_12_141825_create_home_sections_table', 1),
(28, '2020_09_12_144701_create_category_home_section_table', 1),
(29, '2020_09_15_071443_create_menus_table', 1),
(30, '2020_09_15_071457_create_menu_items_table', 1),
(31, '2020_09_15_134905_create_pages_table', 2),
(32, '2020_09_16_105031_create_admins_table', 3),
(34, '2020_02_18_100001_create_options_table', 4),
(35, '2020_09_19_023502_create_password_resets_table', 5),
(36, '2020_09_19_062540_create_settings_table', 6),
(37, '2020_09_23_161808_create_jobs_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `option_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `options`
--

TRUNCATE TABLE `options`;
--
-- Dumping data for table `options`
--

INSERT INTO `options` (`option_name`, `option_value`) VALUES
('backup_time', NULL),
('fb_link', 'https://facebook.com/bdsumon4u'),
('site_name', 'CyberSHOP'),
('site_slogan', NULL),
('twitter_link', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `products` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `orders`
--

TRUNCATE TABLE `orders`;
--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `phone`, `email`, `address`, `status`, `products`, `note`, `data`, `created_at`, `updated_at`) VALUES
(48, NULL, 'Humayun kabir', '+8801712282540', 'humayunkabir0171282540@gmail.com', 'goni vabon ,Santibagh housing aria..road no.7,halishahar excess road.. chittagong...', 'COMPLETED', '[{\"id\":168,\"name\":\"High-Quality Wooden Ruti Maker\",\"slug\":\"high-quality-wooden-ruti-maker\",\"image\":\"https:\\/\\/bsbazarbd.com\\/public\\/storage\\/23-Oct-2020\\/images\\/1603444989-Wooden-Ruti-Maker.jpg\",\"price\":1950,\"quantity\":\"1\",\"total\":1950}]', NULL, '{\"shipping_area\":\"Outside Dhaka\",\"shipping_cost\":100,\"subtotal\":1950}', '2020-11-13 01:28:43', '2020-11-14 07:08:13'),
(50, NULL, 'M.A Sayeed', '+8801709907116', NULL, 'Nalitabari bazar, Nalitabari,Sherpur', 'COMPLETED', '[{\"id\":284,\"name\":\"New Biker Hand Gloves\",\"slug\":\"new-biker-hand-gloves\",\"image\":\"https:\\/\\/bsbazarbd.com\\/public\\/storage\\/18-Nov-2020\\/images\\/1605722073-Biker-Hang-Gloves-(1).jpg\",\"price\":600,\"quantity\":\"1\",\"total\":600}]', NULL, '{\"shipping_area\":\"Outside Dhaka\",\"shipping_cost\":100,\"subtotal\":600}', '2020-11-19 10:42:43', '2020-12-20 00:37:18'),
(51, NULL, 'Rupok', '+8801717644596', 'rupokmbmc@gmail.com', 'House-18,road-4,block-d,dhaka uddan,mohammadpur,dhaka', 'COMPLETED', '[{\"id\":146,\"name\":\"BESTWAY \\u098f\\u09df\\u09be\\u09b0 \\u09aa\\u09bf\\u09b2\\u09cb\",\"slug\":\"bestway-\\u098f\\u09df\\u09be\\u09b0-\\u09aa\\u09bf\\u09b2\\u09cb\",\"image\":\"https:\\/\\/bsbazarbd.com\\/public\\/storage\\/20-Oct-2020\\/images\\/1603188372-Air-Pillow-(2).jpg\",\"price\":390,\"quantity\":\"1\",\"total\":390}]', NULL, '{\"shipping_area\":\"Inside Dhaka\",\"shipping_cost\":60,\"subtotal\":390}', '2020-11-23 07:54:46', '2020-12-20 00:38:14'),
(52, NULL, 'Md jamal hossain.', '+8801711963796', NULL, 'Laksam by pass.', 'COMPLETED', '[{\"id\":176,\"name\":\"Capsul Cutter\",\"slug\":\"capsul-cutter\",\"image\":\"https:\\/\\/bsbazarbd.com\\/public\\/storage\\/24-Oct-2020\\/images\\/1603527830-Capsul-Cutter-(2).jpg\",\"price\":1350,\"quantity\":\"1\",\"total\":1350}]', NULL, '{\"shipping_area\":\"Outside Dhaka\",\"shipping_cost\":100,\"subtotal\":1350}', '2020-12-03 10:08:19', '2020-12-20 00:37:52'),
(53, NULL, 'Faisal Shahed', '+8801911389434', 'shahedsaad@gmail.com', '10/A Diluroad, New Eskaton, Moghbazar, Dhaka', 'COMPLETED', '[{\"id\":145,\"name\":\"Bed Side Laptop Table\",\"slug\":\"bed-side-laptop-table\",\"image\":\"https:\\/\\/bsbazarbd.com\\/public\\/storage\\/20-Oct-2020\\/images\\/1603187508-Bed-Side-Laptop-Table-(3).jpg\",\"price\":1700,\"quantity\":\"1\",\"total\":1700}]', NULL, '{\"shipping_area\":\"Inside Dhaka\",\"shipping_cost\":60,\"subtotal\":1700}', '2021-02-01 20:55:48', '2021-02-12 08:04:03'),
(54, NULL, 'Shohan', '+8801834586156', NULL, 'Faridpur', 'COMPLETED', '[{\"id\":199,\"name\":\"Remot Control Switch\",\"slug\":\"remot-control-switch\",\"image\":\"https:\\/\\/bsbazarbd.com\\/public\\/storage\\/26-Oct-2020\\/images\\/1603696730-Remot-Control-Switch-(2).jpg\",\"price\":790,\"quantity\":\"1\",\"total\":790}]', NULL, '{\"shipping_area\":\"Outside Dhaka\",\"shipping_cost\":100,\"subtotal\":790}', '2021-02-10 13:14:24', '2021-02-12 08:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `pages`
--

TRUNCATE TABLE `pages`;
--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Contact Us', 'contact-us', '<div class=\"contact-us__address\">\r\n<div class=\"table-responsive\">\r\n<table style=\"border-collapse: collapse; width: 500px; height: 296px;\" border=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 48.7839%;\">\r\n<h3 class=\"contact-us__header card-title\">Our Address</h3>\r\n<div class=\"contact-us__address\">\r\n<p>715 Fake Ave, Apt. 34, New York, NY 10021 USA<br />Email: stroyka@example.com<br />Phone Number: +1 754 000-00-00</p>\r\n<p><strong>Opening Hours</strong><br />Monday to Friday: 8am-8pm<br />Saturday: 8am-6pm<br />Sunday: 10am-4pm</p>\r\n<p><strong>Comment</strong><br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur suscipit suscipit mi, non tempor nulla finibus eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>', '2020-09-15 10:22:32', '2020-10-04 02:34:29'),
(6, 'Pay Us', 'pay-us', '<p>To pay in bKash</p>', '2020-10-20 02:33:56', '2020-10-20 02:33:56');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `password_resets`
--

TRUNCATE TABLE `password_resets`;
--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('bdsumon4u@gmail.com', '$2y$10$e04eIfdN5Idjrq/AflabHOZedXTzWZJLjkhIRlIX6c7coSlLPhatW', '2020-11-10 01:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `selling_price` int(10) UNSIGNED NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(138, 23, '3 Layer kitchen Rack', '3-layer-kitchen-rack', '<p>স্টেইনলেস স্টিল ডিশ র&zwnj;্যাক<br />৩ টি তাকে গ্লাস, প্লেট, চামচ, কাপ সহ রান্নাঘরের বিভিন্ন সামগ্রী গুছিয়ে রাখার জন্য আকর্ষণীয় প্রোডাক্ট<br />Size:(cm) 69*28*34 cm<br />ম্যাটেরিয়াল: স্টেইনলেস স্টিল<br />মজবুত স্ট্রাকচার<br />ডিশ ধোয়ার পর শুকানোর জন্য অালাদা জায়গা রয়েছে<br />সহজে পরিস্কার করা যায়<br />বেস্ট কোয়ালিটি<br />ব্র্যান্ড নিউ প্রোডাক্ট</p>', 2100, 1850, 'BS-101', 0, 5, 1, '2020-10-20 02:52:02', '2020-10-20 02:52:02'),
(139, 23, '3 Layer Kitchen Rack (Green)', '3-layer-kitchen-rack-green', '<p>স্টেইনলেস স্টিল ডিশ র&zwnj;্যাক<br />৩ টি তাকে গ্লাস, প্লেট, চামচ, কাপ সহ রান্নাঘরের বিভিন্ন সামগ্রী গুছিয়ে রাখার জন্য আকর্ষণীয় প্রোডাক্ট<br />Size:(cm) 69*28*34 cm<br />ম্যাটেরিয়াল: স্টেইনলেস স্টিল<br />মজবুত স্ট্রাকচার<br />ডিশ ধোয়ার পর শুকানোর জন্য অালাদা জায়গা রয়েছে<br />সহজে পরিস্কার করা যায়<br />বেস্ট কোয়ালিটি<br />ব্র্যান্ড নিউ প্রোডাক্ট</p>', 2100, 1850, 'BS-102', 0, 0, 1, '2020-10-20 02:58:51', '2020-10-20 02:58:51'),
(141, 23, '3 Layer Clothing Rack', '3-layer-clothing-rack', '<p>ফ্যাশনেবল ডিজাইন নতুন<br />শক্তিশালী এবং থিকার পোলস<br />নীচে জুতো রাক তিনটি স্তর আছে ।<br />শীর্ষে দুটি পাশের কাপড় হ্যাঙ্গার আছে ।<br />৪০ কেজি ওজন দিতে পারবেন সম্পূর্ণ র&zwnj;্যাক এ ও বাচ্চদের কাপড় রাখতে পারবেন।<br />সাইজ : 2.5 x 5.57 ফুট</p>', 2900, 2750, 'BS-103', 0, 0, 1, '2020-10-20 03:19:15', '2020-10-20 03:20:26'),
(142, 23, '16 in 1 pice Rack', '16-in-1-pice-rack', '<p>১৬ পিচ স্পাইস র&zwnj;্যাক<br />১৬টি জার সমৃদ্ধ রিভলভিং স্পাইস র&zwnj;্যাক এন্ড কাটলারী।<br />প্রয়োজনীয় স্পাইস, জিরা পাউডার, লবন, চিনি বা যেকোনো মসলা এতে সহজেই রাখা যায়।<br />১০০% Stainless Steel দ্বারা তৈরী।<br />আকর্ষনীয় এবং কার্যকরি ডিজাইন।</p>', 2250, 1950, 'BS -104', 0, 0, 1, '2020-10-20 03:36:23', '2020-10-20 03:36:23'),
(143, 23, 'Unique Design Clothing Rack', 'unique-design-clothing-rack', '<p>Fashion Coat Rack GY-288 / Clothes Rack<br />Fashion Coat Rack GY-288 is high quality multi-functional coat hanger, hat hanger is fashion and simple in style. Made of high-quality iron pipe, corrosion-resistant stainless steel makes it durable.<br />Features:<br />1. Easy to Assemble.<br />2. Excellent Storage Solution.<br />3. Portable &amp; Multi-functional Clothes Rack.<br />4. Sturdy &amp; Durable, Stylish &amp; Mobile Design.<br />5. Keep Clothes Organized &amp; Easily Accessible.<br />6. Multi-pattern classification; Storage Racks and coat hanger.<br />7. Side Hook design, simple and practical, beautiful and generous.<br />Specifications:<br />1. Model: GY-288<br />2. Size: 55cm x 36cm x 170cm (L x W x H)<br />3. Material: Metal, plastic and clothe<br />4. Load Capacity: 20 Kg (Approx.)</p>', 1800, 1390, 'BS-105', 0, 0, 1, '2020-10-20 03:41:16', '2020-10-20 03:43:16'),
(144, 23, 'Multi Function mobile card 3Layer', 'multi-function-mobile-card-3layer', '<p>&gt;Multi-function adjustable<br /><br />&gt; Utility Storage Cart<br /><br />&gt; With space saving desing<br /><br />&gt; Multi-functional storage</p>', 4500, 3900, 'BS-6', 0, 0, 1, '2020-10-20 03:49:32', '2020-10-20 03:49:32'),
(145, 23, 'Bed Side Laptop Table', 'bed-side-laptop-table', '<div dir=\"auto\">&gt; এটি সোফার পাশে,বিছার পাশে বসিয়ে ল্যাপটপ ব্যবহার করতে পারবেন।</div>\r\n<div dir=\"auto\">&gt; প্রয়োজনে নাস্তার টেবিল হিসেবে ব্যবহার করতে পারবেন।</div>\r\n<div dir=\"auto\">&gt; ছোট বাচ্চাদের পড়ার টেবিল হিসেবে এটি একটি আদর্শ টেবিল</div>\r\n<div dir=\"auto\">&gt; এটি ছোট করে ফ্লোডিং করে রাখা যায়।</div>\r\n<div dir=\"auto\">&gt; যে কোন জায়গায় সহজে এডজাস্ট করা যায়।</div>\r\n<div dir=\"auto\">&gt; সহজে বহনযোগ্য</div>\r\n<div dir=\"auto\">&gt; আপনার সুবিধামত সহজে হাই লো করতে পারবেন।</div>', 1850, 1700, 'BS-7', 0, 0, 1, '2020-10-20 04:01:09', '2020-10-20 04:01:09'),
(146, 24, 'BESTWAY এয়ার পিলো', 'bestway-এয়ার-পিলো', '<p>Bestway Air pillow Balis in BD<br />Brand : Bestway<br />Flocking material have good breathability<br />Soft and comfortable, enjoy a good sleeping<br />Inflatable pillow, convenient to carry<br />A necessary camping gear<br />Material: flocking<br />Size: about 13.8&Prime; x 7.9&Prime;/35x20cm<br />Color: random color(we do not offer color options , all orders will be sent at Random color,thanks a lot! )Package included:<br />1 x Comfortable Flocking Inflatable pillow Cushion</p>', 450, 390, 'BS-8', 0, 0, 1, '2020-10-20 04:08:29', '2020-10-20 04:09:13'),
(147, 23, 'Electric Hot Water Bag', 'electric-hot-water-bag', '<p>ব্যাথা বা যন্ত্রনা উপশম করতে সাহায্য করে<br />ব্যাগ ম্যাটেরিয়াল: ন্যাচারাল রাবার<br />মাল্টিকালার<br />ক্যাপাসিটি : ১.৭ লিটার +<br />১০০% লিক-রেজিস্ট্যান্ট<br />ফার্স্ট গ্রেড ন্যাচারাল হট ওয়াটার ব্যাগ)</p>', 750, 690, 'BS-9', 0, 0, 1, '2020-10-20 04:12:04', '2020-10-20 04:12:04'),
(148, 23, 'Water Spray Bottol', 'water-spray-bottol', '<p>&gt; এই স্প্রে দিয়ে আপনি বাসা,অফিস আসবাবপত্র জীবানু মুক্ত করতে পারবেন।</p>\r\n<p>&gt; আপনার বাগানের গাছ -পালা পোকা মাকড়ের আক্রমন থেকে চাইলেই রক্ষা করতে পারবেন।</p>\r\n<p>&gt; আপনি এবং আপনার ফ্যামেলির সদস্যদের 24 ঘন্টা জীবানুমুক্ত রাখতে চাইলে ব্যাবহার করতে পারবেন।</p>\r\n<p>&gt; অফিসে ঢুকতে এবং বাইরে যাওয়ার সময় ব্যাবহার করা অত্যন্ত জরুরী।</p>\r\n<p>&gt; এটি এমনি একটি আইটেম যা আপনি চাইলে আপনার মনমত ব্যাবহার করতে পারবেন।</p>', 750, 650, 'BS-10', 0, 0, 1, '2020-10-20 04:17:29', '2020-10-20 04:17:29'),
(149, 23, 'Soft Silicone Seat Cushion With Cover', 'soft-silicone-seat-cushion-with-cover', '<p>&gt; বাসায় যে কোন চেয়ার / টুল এ ব্যবহার করতে পারবে।<br />&gt; খোলা কোন ময়দানে/ বা মাঠে বসার জন্য ব্যবহার করতে পারবেন।<br />&gt; গাড়ি কিংবা অফিসের চেয়ারে ব্যাবহার করতে পারবেন<br />&gt; যাদের কোমরের ব্যাথা হাটুর ব্যাথা তারা অথবা মেরুদন্ডের ব্যাথায় ভুগছেন,তাদের জন্য<br />এটি ব্যবহার করে উপকৃত হবেন।<br />&gt; এটি এতটাই সফ্ ট / নরম যে, এটার উপর ডিম রেখে বসলে ডিমটি ভাংবেনা<br />&gt; সফ্ ট ও নরম হওয়ার কারনে এটি সহজে ছিরবেনা<br />&gt; এই কুশনটি 200 কেজি পর্যন্ত চাপ নিতে সক্ষম<br />&gt; সাইজ: 42 x 35 x 5CM</p>', 1250, 1150, 'BS-11', 0, 0, 1, '2020-10-21 06:12:02', '2020-10-21 06:12:02'),
(150, 23, 'Instant-water-heater-tap(Basin)', 'instant-water-heater-tap(basin)', '<ul>\r\n<li>এই শীতে ঠান্ডা পানি দিয়ে গোসল/কাজ করতে সমস্যা? বার বার গরম পানি করতে সমস্যা? আর নয় চিন্তা।</li>\r\n<li>১। ৩ সেকেন্ডের মধ্যে ওয়াটার হিটিং পক্রিয়া।</li>\r\n<li>২। বিদ্যুৎ খরচ কম।৩। সহজে স্থাপন করা যাবে।</li>\r\n<li>৪। ইন্সট্যান্ট গরম পানি পাওয়া যাবে।</li>\r\n<li>৫। চাহিদা মত গরম ও কুসুম গরম পানি সংগ্রহ করা যাবে।</li>\r\n<li>৬। ট্যাপ ও হ্যান্ড শাওয়ার ২ টা অপশন এ ব্যবহার করা যায়।</li>\r\n<li>স্পেসিফিকেশনঃ১০০% নতুন এবং হাই কোয়ালিটি</li>\r\n<li>বডি ম্যাটেরিয়ালঃ ক্রোম প্লেটেড জিঙ্ক অ্যালয়</li>\r\n<li>ভোল্টেজঃ 220-</li>\r\n<li>পাওয়ারঃ 2100-</li>\r\n<li>ক্যাপাসিটিঃ40L</li>\r\n<li>ম্যাক্সিমাম টেম্পারেচারঃ ৫০ ডিগ্রী সেলসিয়াস</li>\r\n</ul>', 2400, 1950, 'BS-12', 0, 0, 1, '2020-10-21 07:56:17', '2020-10-21 07:56:17'),
(151, 23, 'Instant Water Heater Tap (Wall)', 'instant-water-heater-tap-wall', '<ul>\r\n<li>এই শীতে ঠান্ডা পানি দিয়ে গোসল/কাজ করতে সমস্যা? বার বার গরম পানি করতে সমস্যা? আর নয় চিন্তা।</li>\r\n<li>১। ৩ সেকেন্ডের মধ্যে ওয়াটার হিটিং পক্রিয়া।</li>\r\n<li>২। বিদ্যুৎ খরচ কম।৩। সহজে স্থাপন করা যাবে।</li>\r\n<li>৪। ইন্সট্যান্ট গরম পানি পাওয়া যাবে।</li>\r\n<li>৫। চাহিদা মত গরম ও কুসুম গরম পানি সংগ্রহ করা যাবে।</li>\r\n<li>৬। ট্যাপ ও হ্যান্ড শাওয়ার ২ টা অপশন এ ব্যবহার করা যায়।</li>\r\n<li>স্পেসিফিকেশনঃ১০০% নতুন এবং হাই কোয়ালিটি</li>\r\n<li>বডি ম্যাটেরিয়ালঃ ক্রোম প্লেটেড জিঙ্ক অ্যালয়</li>\r\n<li>ভোল্টেজঃ 220-</li>\r\n<li>পাওয়ারঃ 2100-</li>\r\n<li>ক্যাপাসিটিঃ40L</li>\r\n<li>ম্যাক্সিমাম টেম্পারেচারঃ ৫০ ডিগ্রী সেলসিয়াস</li>\r\n</ul>', 2400, 1950, 'BS-13', 0, 0, 1, '2020-10-21 08:02:53', '2020-10-21 08:02:53'),
(153, 23, 'Instant-water-heater-tap(wall Big)', 'instant-water-heater tap (pwall Big)', '<ul>\r\n<li>এই শীতে ঠান্ডা পানি দিয়ে গোসল/কাজ করতে সমস্যা? বার বার গরম পানি করতে সমস্যা? আর নয় চিন্তা।</li>\r\n<li>১। ৩ সেকেন্ডের মধ্যে ওয়াটার হিটিং পক্রিয়া।</li>\r\n<li>২। বিদ্যুৎ খরচ কম।৩। সহজে স্থাপন করা যাবে।</li>\r\n<li>৪। ইন্সট্যান্ট গরম পানি পাওয়া যাবে।</li>\r\n<li>৫। চাহিদা মত গরম ও কুসুম গরম পানি সংগ্রহ করা যাবে।</li>\r\n<li>৬। ট্যাপ ও হ্যান্ড শাওয়ার ২ টা অপশন এ ব্যবহার করা যায়।</li>\r\n<li>স্পেসিফিকেশনঃ১০০% নতুন এবং হাই কোয়ালিটি</li>\r\n<li>বডি ম্যাটেরিয়ালঃ ক্রোম প্লেটেড জিঙ্ক অ্যালয়</li>\r\n<li>ভোল্টেজঃ 220-</li>\r\n<li>পাওয়ারঃ 2100-</li>\r\n<li>ক্যাপাসিটিঃ40L</li>\r\n<li>ম্যাক্সিমাম টেম্পারেচারঃ ৫০ ডিগ্রী সেলসিয়াস</li>\r\n</ul>', 2700, 2600, 'BS-14', 0, 0, 1, '2020-10-21 23:53:09', '2020-10-21 23:53:09'),
(154, 23, 'Instant Water Heater Tap (Basin)01', 'instant-water-heater-tap-basin01', '<ul>\r\n<li>এই শীতে ঠান্ডা পানি দিয়ে গোসল/কাজ করতে সমস্যা? বার বার গরম পানি করতে সমস্যা? আর নয় চিন্তা।</li>\r\n<li>১। ৩ সেকেন্ডের মধ্যে ওয়াটার হিটিং পক্রিয়া।</li>\r\n<li>২। বিদ্যুৎ খরচ কম।৩। সহজে স্থাপন করা যাবে।</li>\r\n<li>৪। ইন্সট্যান্ট গরম পানি পাওয়া যাবে।</li>\r\n<li>৫। চাহিদা মত গরম ও কুসুম গরম পানি সংগ্রহ করা যাবে।</li>\r\n<li>৬। ট্যাপ ও হ্যান্ড শাওয়ার ২ টা অপশন এ ব্যবহার করা যায়।</li>\r\n<li>স্পেসিফিকেশনঃ১০০% নতুন এবং হাই কোয়ালিটি</li>\r\n<li>বডি ম্যাটেরিয়ালঃ ক্রোম প্লেটেড জিঙ্ক অ্যালয়</li>\r\n<li>ভোল্টেজঃ 220-</li>\r\n<li>পাওয়ারঃ 2100-</li>\r\n<li>ক্যাপাসিটিঃ40L</li>\r\n<li>ম্যাক্সিমাম টেম্পারেচারঃ ৫০ ডিগ্রী সেলসিয়াস</li>\r\n</ul>', 2800, 2700, 'BS-15', 0, 0, 1, '2020-10-21 23:58:32', '2020-10-21 23:58:32'),
(155, 23, 'Electric-Hot-Shower', 'electric-hot-shower', '<p>পন্যের বিবরণ===========<br />&gt; ব্রাজিলিয়ান টেকনোলজীতে তৈরী অটোমেটিক হট ওয়াটার সাপ্লাই &gt;কম্প্যাক্ট ডিজাইন;<br />&gt; ব্যবহার করা সহজ;<br />&gt; শাওয়ারটি বৈদ্যুতিক লাইনের সাথে সেট করুন; সুইচ টিপলেই তাৎক্ষনিক হট ওয়াটার বের হবে<br />&gt; ৭৫% পর্যন্ত বিদ্যুৎ সাশ্রয়ী ৯৫% থার্মাল কন্ট্রোল ইন্সটলেশন খুবই সহজ<br />&gt; সাথে পাচ্ছেন একটি হ্যান্ড শাওয়ার ফ্রী<br />&gt; ভোল্টেজ: 220v</p>', 1550, 1400, 'BS-16', 0, 0, 1, '2020-10-22 00:03:13', '2020-10-22 00:03:13'),
(156, 23, 'Relaxing Foot Massage Slipper', 'relaxing-foot-massage-slipper', '<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />1. এই Acupressure মাসাজ স্লিপার -এ রয়েছে ১২টি ম্যাগনেটিক মাসাজ হেড ও ৮২টি মাসাজ হেড</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;2. রক্ত সঞ্চালন বৃদ্ধি করে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;3. পা মাসাজ করতে ব্যবহার করুন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;4. রোগ প্রতিরোধ ক্ষমতা বাড়ায়</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />5. নিদ্রায় সহায়তা করে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />6. ক্লান্তি দূর করে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />7. পায়ের ব্যথা উপশমে সহায়তা করে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />8. হাঁটার সময় শরীরের টেনশন কমায়</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;9. ডায়াবেটিস ও উচ্চ রক্তচাপের রোগীদের জন্য উপকারী</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />10. ব্যাটারী বা অন্য কোনো এক্সটার্নাল পাওয়ার ছাড়াই চলে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />11. Velcro র সাহায্যে সাইজ পরিবর্তন করে নেয়া যায়</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />12. মাসাজ হেডগুলো ঘুরিয়ে দেয়া যায়</div>', 1100, 950, 'BS-17', 0, 0, 1, '2020-10-22 02:01:06', '2020-10-22 02:01:06'),
(157, 23, 'Relax and Spin Tone বডি মাসাজার', 'relax-and-spin-tone-বডি-মাসাজার', '<div class=\"product-details-text\">প্রকার Massager</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />উপাদান এবিএস, পিপি</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />মাত্রা 12X16.5X12 সেমি</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ওজন 870 গ্রাম</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />বিদ্যুৎ উত্স বিদ্যুৎ</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />পাওয়ার 2500 আরপিএম</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ভোল্টেজ 110V ~ 240V</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />বিক্রয় প্যাকেজ 1 ম্যাসেজ 5 সংযুক্তি</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Type Massager</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Material ABS, PP</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Dimension 12X16.5X12 cm</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Weight 870 gm</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Power Source Electricity</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Power 2500 RPM</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Voltage 110V~240V</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Sales Package 1 Massager 5 Attachments</div>', 1600, 1490, 'BS-18', 0, 0, 1, '2020-10-22 02:13:44', '2020-10-22 02:13:44'),
(158, 23, 'Car & Home Massage Pillow', 'car-and-home-massage-pillow', '<div class=\"product-details-text\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Car &amp; Home Massage Pillow</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;বডি ম্যাসেজ পিলো</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />আপনার শরীরের যে কোন জায়গায় ম্যাসেজ করতে পারবেন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ব্যাকপেইন এর বেথায় সহজেই নিজে নিজেই ম্যাসেজ করতে পারবেন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;খুব অল্প সময়েই ব্যথা উপশম, পেশী ক্লান্তি দূর করার জন্য সহায়ক</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;চেয়ার এর সাথে লাগিয়ে সহজেই ঘাড় এর ম্যাসেজ করতে পারবেন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;হাত , পা, পেট অর্থাৎ আপনার যেখানে ইচ্ছা নিজে নিজেই ম্যাসেজ করতে পারবেন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;নিজে নিজেই ম্যাসেজ এর মাধ্যমে শরীরের অলসতা দূর করতে পারবেন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;গাড়ী তে ব্যবহার এর জন্য ব্যাটারি জ্যাক দেয়া আছে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;গাড়ি এর সিট এর সাথে সহজেই লাগাতে পারবেন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;সহজে বহন যোগ্য</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এটি সম্পুর্ন এক্সটারনাল তাই কোন পার্শপ্রতিক্রিয়া নেই</div>\r\n</div>', 1600, 1450, 'BS-19', 0, 0, 1, '2020-10-22 02:19:41', '2020-10-22 02:19:41'),
(159, 25, 'AFK Pulse Oximeter', 'afk-pulse-oximeter', '<ul>\r\n<li>কোভিড 19, হার্ট ফেইলিওর, নিউমোনিয়া, স্ট্রোকের রোগী আক্রান্ত বা এর উপশম দেখা দিলে অক্সিমিটার দিয়ে দ্রুত রক্তের অক্সিজেন নির্ণয় গুরুত্বপুর্ন।</li>\r\n<li>শরীরের রক্তে অক্সিজেনের মাত্রা সম্পর্কে আপনাকে সঠিক রিডিং দিবে এই অক্সিমিটারটি ।</li>\r\n<li>সহজে ব্যবহারযোগ্য, সহজ বোধগম্য, দীর্ঘস্থায়ী এবং টেকসই,</li>\r\n<li>আঙ্গুলে লাগালে কয়েক সেকেন্ডেই আপনাকে বলে দিবে শরীরে রক্তে অক্সিজেনের মাত্রা।</li>\r\n<li>যন্ত্রটি আপনার পরিবারে বিপদের সময়ে কাজে লাগবে।</li>\r\n<li>01 oximeter mchine, 01 pair battery</li>\r\n<li>Wrranty 1 Year</li>\r\n</ul>', 1400, 1290, 'BS-20', 0, 0, 1, '2020-10-22 02:24:48', '2020-10-22 02:26:55'),
(160, 23, 'Dental Water Power Floss', 'dental-water-power-floss', '<p>&gt;&gt;পন্যের বিবরণ===============<br />&gt; আপনি কি আপনার দাঁত কে ঝকঝকে চকচকে করতে চান?<br />&gt; দাঁতের ব্যথা থেকে মুক্তি পেতে চান?<br />&gt; তাহলে ব্যাবহার করুন Dental Oral Tooth Cleaning Flusher<br />&gt; এটি আপনার মুখের দুরগন্ধ থেকে মুক্তি দিবে।<br />&gt; আপনার দাঁতের যত্নে সহজ সমাধান<br />&gt; কোন ব্যাটারি বা বিদ্যুত ছাড়াই চলবে।</p>', 890, 800, 'BS-21', 0, 0, 1, '2020-10-22 02:29:54', '2020-10-22 02:29:54'),
(161, 23, 'Digital Infrared Thermometer', 'digital-infrared-thermometer', '<ul>\r\n<li>এটির মাধ্যমে ইলেক্ট্রনিক প্রোডাক্টের ওভারহিট এবং বাচ্চাদের দুর থেকে এর সঠিক তাপমাত্রা নির্ণয় করা যায়।</li>\r\n<li>&nbsp;লেজারের মাধ্যমে তাপমাত্রা নির্ণয় করার ফলে কাছের বা দুরের যে কোন জিনিসের তাপমাত্রা খুব সহজেই নির্ণয় করা যায়।</li>\r\n<li>১ সেকেন্ডেরও কম সময়ে তাপমাত্রা নির্ণয় করতে সক্ষম</li>\r\n<li>&nbsp;লেজার পয়েন্টার ফর অ্যাকুরেট টেম্পারেচার</li>\r\n<li>&nbsp;LCD ডিসপ্লে</li>\r\n</ul>\r\n<ul>\r\n<li>আকার: 150x95x44mm (LxWxH)</li>\r\n<li>&nbsp;সেলসিয়াস এবং ফারেনহাইট দুইভাবেই তাপমাত্রা দেখাতে সক্ষম</li>\r\n<li>&nbsp;বিঃ দ্রঃ মানব দেহের অভ্যন্তরীণ তাপমাত্রা পরিমাপের জন্য প্রযোজ্য নয় ।</li>\r\n</ul>', 1700, 1600, 'BS-22', 0, 0, 1, '2020-10-22 02:33:01', '2020-10-22 02:33:01'),
(162, 29, 'Safety Guard For Bike (4Pcs)', 'safety-guard-for-bike-4pcs', '<p>&gt;4psc/Set Motorcycle Kneepad</p>\r\n<p>&gt;Stainless Steel Moto Elbow Knee pads</p>\r\n<p>&gt;Guards Kit Brand Name:Pro-Biker</p>', 1500, 1300, 'BS-23', 0, 0, 1, '2020-10-22 02:40:29', '2020-10-26 02:35:46'),
(163, 23, 'Food-Massager', 'food-massager', '<p>ডায়বেটিস রুগিদের জন্য অত্যন্ত কার্যকর<br />এটি ব্যবহারে ফলে অতিরিক্ত মেদ সহজেই কমে যায়,<br />রক্ত সঞ্চালনে সহায়তা করে<br />ইনফ্রারেড ফুট মাসেঞ্জার শারীরিক,চৌম্বকীয় একটি জৈব কম্পন ম্যাসেজ থেরাপি<br />সঠিকভাবে রক্তপ্রবাহ, ব্যথা উপশম, পেশী ক্লান্তি নিষ্কাশনে সহায়ক<br />প্রতিদিন ১০ মিনিট ব্যবহার সুফল পেতে পারেন<br />এটি সম্পুর্ন এক্সটারনাল তাই কোন পার্শপ্রতিক্রিয়া নেই<br />পরিবারের সবার জন্য ব্যবহার উপযোগী<br />( ফোনে না পেলে SMS দিন ) অথবা আপনার নাম, মোবাইল নাম্বার, ঠিকানা এবং প্রোডাক্ট এর নাম/মডেল SMS করতে পারেন আমাদের পেজ এ (যেকোনো সময়</p>', 1800, 1750, 'BS-24', 0, 0, 1, '2020-10-22 02:46:08', '2020-10-22 02:46:08'),
(164, 23, 'Nano spary Gun', 'nano-spary-gun', '<p>&gt;বাংলাদেশে প্রথমবার জীবাণুমুক্ত ন্যানো মেশিন বাড়ির জন্য, অফিসের জন্য, দোকান জন্য ও গাড়ির জন্য<br />&gt;যে কোন ধরনের জীবাণু নাশক বোতলে ভরে আপনি সহজে জীবাণু দূর করতে পরবেন।<br />&gt;হাসপাতাল,ক্লিনিক এবং বাড়ীর মেঝে পরিস্কার করা যায়।<br />&gt; ভাইরাস জনিত যে কোন রোগ থেকে ভালো থাকতে।<br />&gt;পোলট্রি ফার্ম পরিস্কার ও জীবাণু মুক্ত করতে।<br />&gt;বন্যা কবলিত এলাকা পরিস্কার ও জীবাণু মুক্ত করতে।<br />&gt;Power:1200W<br />&gt;Weight:1.3 KG<br />&gt;Power cord length:3 M<br />&gt;water bottle capacity :260 ml<br />&gt;Dimensions: 24*9.5*23 cm</p>\r\n<p>&nbsp;</p>\r\n<p>সাথে যা পাবেনঃ<br />&gt;ন্যানো গান স্প্রেয়ার<br />&gt;কন্টেইনার ২৬০ এম এল ( প্রায়)</p>', 5900, 5500, 'BS-25', 0, 0, 1, '2020-10-22 02:49:43', '2020-10-22 02:49:43'),
(165, 23, 'Magic Spin Mop with Bucket', 'magic-spin-mop-with-bucket', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />আপনার ফ্লোর পরিস্কারের ঝামেলা দুর করতে এলো ষ্টিলের তৈরি ৩৬০ ডিগ্রি রোটেশনের সুবিধা সহ ফ্লোর ক্লিনিং মপ সেট</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এখন ঘর পরিস্কার নিমিষেই, ঝামেলা ছাড়া</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ম্যাটেরিয়াল: হাই কোয়ালিটি প্লাস্টিক + মাইক্রো ফাইবার + স্টেইনলেস স্টিল</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />টেকসই ও দীর্ঘস্থায়ী</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />অ্যাডজাস্টেবল স্টিক অ্যান্ড লং লাস্টিং</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;কালার: মাল্টি কালার</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />হাই কোয়ালিটি প্রোডাক্ট</div>\r\n</div>', 2100, 1950, 'BS-26', 0, 0, 1, '2020-10-23 01:50:12', '2020-10-23 01:50:12'),
(166, 23, 'Man Woman Walking Stick Lighting Alarm(বৃদ্ধ মানুষের হাঁটার লাঠি)', 'man-woman-walking-stick-lighting-alarmবৃদ্ধ-মানুষের-হাঁটার-লাঠি', '<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />আপনি পথ চলছেন! আপনার হাতে একটি সুন্দর লাঠি থাকলে অবশ্যই আপনার জন্য সুবিধা।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />বিল্টইন রিচার্যএবল লাইট&nbsp; থাকায় রাতে চলা ফেরা করা যায় ।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;আপনার চলার পথে কুকুর বা কোন প্রানী ডিস্টার্ব করলে আপনি তাড়াতে পারেন।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;হাটতে সময় ব্যালেন্সড রাখতে আপনি লাঠি ব্যাবহার করতে পারেন।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;বৃদ্ধ যারা আছেন তাদের হাটা-চলার সময় ব্যবহারের জন্য খুবই উপযোগী এই লাঠি।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;আপনি চাইলে এটি ছোট বড় করে নিতে পারবনে, কারন কয়েক ধাপে রয়েছে অপশন।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;লাঠিটি ১৬০-২০০ কেজি বহনে সক্ষম।</div>', 2150, 1950, 'BS-27', 0, 0, 1, '2020-10-23 01:56:57', '2020-10-23 01:56:57'),
(167, 23, 'Relax Baby Chair 1Pcs', 'relax-baby-chair-1pcs', '<p>&gt;&gt;বয়স: নিউবর্ন থেকে শুরু করে প্রায় 2 বছর পর্যন্ত প্রায় সব বাচ্চাদের জন্য (8-29 lbs/3.5 &ndash; 13kg)<br />&gt;&gt;ম্যাটেরিয়াল: কটন 60% এবং 40% পলিয়েস্টার<br />&gt;&gt; সহজেই খুলে রাখা যায় এবং মেশিন ওয়াসের জন্য উপযোগী, 40&deg;C পর্যন্ত গরম রাখতে পারে<br />&gt;&gt; হাইয়েস্ট পজিশন ডাইমেনশন: 35 &times; 15.5 &times; 23 inch (l&times;w&times;h) / 89 &times; 39 &times; 58cm (l&times;w&times;h)<br />&gt;&gt; ট্রান্সপোর্ট পজিশন ডাইমেনশন: 35 &times; 15.5 &times; 4.5 inch (l&times;w&times;h) / 89 &times; 39 &times; 11cm (l&times;w&times;h)<br />&gt;&gt; ওয়েট: 4.6 lbs / 2.1kg</p>', 1990, 1550, 'BS-28', 0, 0, 1, '2020-10-23 02:11:47', '2020-10-23 02:11:47'),
(168, 23, 'High-Quality Wooden Ruti Maker', 'high-quality-wooden-ruti-maker', '<p>এ রুটি মেকার দিয়ে প্রায় 8.5&rdquo;-9&rdquo; রুটি তৈরি করা যায়।</p>\r\n<p>উডেন রুটি মেকার বিদ্যুৎ বিহীন পরিবেশ বান্ধব কাঠের তৈরি আধুনিক রুটি মেকার।</p>\r\n<p>আপনি এ রুটি মেকার দিয়ে প্রতি মিনিটে 15 টিরও বেশি রুটি বানাতে পারবেন।</p>\r\n<p>সকল প্রকার রুটি বানানো যায়। যেমনঃ বড় মাঝারি, ছোট, আটা, ময়দা, চাল, কলাই, সমুচা, সিংগারা, ফুচকা, পাপর, এবং দেশী-বিদেশী সকল প্রকার রেসিপির রুটি বানানো যায়।</p>\r\n<p>আপনি অল্প পরিশ্রমে অনেক বেশি রুটি বানাতে পারবেন।</p>\r\n<p>এই রুটি মেকার বাংলাদেশে তৈরি.</p>\r\n<p>এই রুটি মেকার অন্তত 8/10 বছর ব্যবহার করতে পারবেন।</p>\r\n<p>&nbsp;</p>\r\n<p>সাথে থাকছেঃ &mdash;&mdash;&mdash;&mdash;</p>\r\n<p>২ বছরের রিপ্লেসমেন্ট গ্যারান্টি।</p>\r\n<p>২০০ ফিট রুটি পেপার ফ্রি।</p>\r\n<p>বোথ সাইড টেপ ফ্রি ।</p>\r\n<p>&nbsp;</p>\r\n<p>খুটি নাটি তথ্যঃ&mdash;&mdash;&mdash;</p>\r\n<p>রুটি মেকার গুলি মেহগনী (সারি) কাঠের তৈরী।</p>\r\n<p>আমাদের দেওয়া রুটি পেপার এর এক রোল এ ৩-৩.৫ বছর চলবে অনায়াসে।</p>\r\n<p>একবার রুটি পেপার পরিবর্তন করে অনায়াসে ২৫-৩০ দিন চালানো যাবে।</p>\r\n<p>রুটি তৈরির আগে রুটি মেকারের উপর হালকা সয়াবিন তৈল ব্যাবহার করলে ভালো হয়।</p>', 2100, 1950, 'BS-29', 0, 0, 1, '2020-10-23 03:31:39', '2020-10-23 03:31:39'),
(169, 24, 'Dubble Air Bed With pumper', 'dubble-air-bed-with-pumper', '<p>&gt; ব্রান্ড : BESTWAY<br />&gt; ফ্রি এয়ার পাম্পার<br />&gt; ম্যাটারিয়াল : PVC,Suede<br />&gt; ওজন : 1.5 কেজি<br />&gt; সাইজ : 4.5\' x 6.2\' x 9&Prime;<br />&gt; বেরিয়েছেন বা অ্যাডভ্যাঞ্চার এ যাচ্ছেন, সাথে নিয়ে যেতে হবে আপনার বিছানা-তোষক !<br />&gt; যেটি আপনি আপনার ব্যাগের ভিতর করে নিয়ে যেতে পারবেন দূর থেকে দুরান্তর । আর যেখানে খুশি সেখানে আপনি বানিয়ে নিতে পারবেন&nbsp; &nbsp; &nbsp; &nbsp;আরামের একটি অস্থায়ী বিছানা</p>', 4200, 3800, 'BS-30', 0, 0, 1, '2020-10-23 04:13:49', '2020-10-23 04:13:49'),
(170, 23, 'Folding Cloth Storage wardrobe', 'folding-cloth-storage-wardrobe', '<p>কাপড় গুছিয়ে রাখতে পারবেন ।<br /><br />স্টিল পাইপের থিকনেস: 13.5&times;0.22 মিমি<br /><br />ম্যাটেরিয়াল: স্টিল পাইপ, ফেব্রিক<br /><br />ইনার বক্স: 66 x 33 x 7 সেমি.<br /><br />সাইজ:42X18 X66 ইঞ্চি.</p>', 2200, 1950, 'BS-31', 0, 0, 1, '2020-10-23 04:29:29', '2020-10-23 04:29:29'),
(171, 23, 'KTS 1048 Bluetooth speaker with microphone', 'kts-1048-bluetooth-speaker-with-microphone', '<p>&gt; মডেল নং KTS-1048<br />&gt;স্পিকার বিশিষ্ট কারাওকে সাউন্ড বক্স ।<br />&gt; সহজেই মোবাইলে ব্লুটুথ কানেকশন করা যায়।<br />&gt; সাথে পাচ্ছেন ক্যাবল কানেকশন একটি মাইক্রোফোন<br />&gt;মাইক্রোফোন এ থাকা ক্যাবলের দৈর্ঘ হবে 10 ফিট।<br />&gt; সাইন্ড কোয়ালিটি হাই।<br />&gt; সাইন্ড আপ/ ডাউন করতে পারবেন।<br />&gt; ব্লুটুথে কানেকশন দিয়ে কারাউকি মিউজিক এর সাথে সাথে গান গাইতে পারবেন।<br />&gt; সরাসরি পেনড্রাইভ অথবা মেমোরি কার্ড ব্যবহার করতে পারবেন।<br />&gt; এটিতে এফ,এম রেডিও আছে।<br />&gt; বেটারীঃ 1200 Mah<br />&gt; স্পিকার উচ্চতা 17 ইন্চি<br />&gt; একবার ফুল চার্জে 4-5 ঘন্টা চলবে।</p>', 2300, 2290, 'BS-32', 0, 0, 1, '2020-10-23 09:45:00', '2020-10-23 09:45:00'),
(172, 23, 'Mini Auto Water Pump', 'mini-auto-water-pump', '<p>ফুলসেট ওয়াটার পাম্পের সাথে যা যা পাচ্ছেনঃ<br />১. ডিসি 12V হাই প্রেসার মটর,<br />২. ১টা শক্তিশালি স্প্রে-গান<br />৩. ১২V এডাপ্টার<br />৪.পাইপ ৩ ফিট,<br />৫, আরো প্রয়োজনীয় যা যা দরকার, ( TOTAL SET )।<br />৬,সম্পুর্ন সেটিং করা।<br /><br />এই ওয়াটার পাম্প দিয়ে আর যা যা করতে পারবেনঃ<br />১. বাইক ওয়াস করা<br />২. কার ওয়াস করা<br />৩. বাগানে পানি দেওয়া<br />৪. কৃষি কাজে ও বিভিন্ন গাছে ঔষধ ছিটানোর কাজে<br />৫. নতুন বাসাবাড়িতে পানি দেওয়ার কাজে<br />৬.Ac পরিষ্কার করতে পারবেন<br />পণ্যের বিবরণঃ<br />12v এটেপটর ও ডিসি 12v এর ব্যাটারি দিয়ে চলবে।<br />পাম্পের প্রেসার সর্বোচ্চ ২৫-৩০ ফিট পর্যন্ত যাবে।</p>', 1390, 1100, 'BS-33', 0, 0, 1, '2020-10-23 09:51:16', '2020-11-18 12:23:43'),
(173, 23, 'Revoflex Xtreme', 'revoflex-xtreme', '<p>&gt;&gt;Offers up to 6 levels of training, 44 different exercises.<br />&gt;&gt;Expand chest, back, arms, shoulders and abs in one motion.<br />&gt;&gt;Shape your body quickly, easily and effortlessly.<br />&gt;&gt; Compact so that you can take it anywhere!<br />&gt;&gt;Material: Pressured PP, ABS plastic, latex rubber rope, and EVA pad<br />&gt;&gt;Dimensions: 43*19* 13sm.<br />&gt;&gt;Weight: 900gr<br />&gt;&gt;Package includes</p>', 900, 790, 'BS-34', 0, 0, 1, '2020-10-23 10:06:08', '2020-10-23 10:06:08'),
(175, 23, 'Portable Digital Scall', 'portable-digital-scall', '<p>&gt; পোর্টেবল স্কেল<br />&gt; ওজন মাপার জন্য আদর্শ<br />&gt; উচ্চ ক্ষমতা সম্পন্ন সেনসর<br />&gt; ইউনিক হ্যান্ডলিং<br />&gt; টেমপারেচার ডিসপ্লে<br />&gt; ওয়েট রেঞ্জ ৫০kg<br />&gt; অটো পাওয়ার অফ ফাংশন</p>', 600, 550, 'BS-36', 0, 0, 1, '2020-10-23 10:31:03', '2020-10-23 10:31:03'),
(176, 23, 'Capsul Cutter', 'capsul-cutter', '<p><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />সকল ধরনের সবজী কাটতে পারবেন ।</p>\r\n<p><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />সাইজ: 116 x d 116 x 233 mm</p>\r\n<p><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ওজন: ১.২কেজি।</p>\r\n<p><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ধারণ ক্ষমতা : ২০০ গ্রাম,</p>\r\n<p><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ABS প্লাস্টিক , ট্রাইটন ব্লেড স্টেইনেলস স্টিল দ্বারা তৈরী ।</p>\r\n<p><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />power consumption: 200 W</p>\r\n<p><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />voltage rating: 100V 50 / 60 Hz</p>\r\n<p><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />cable length: 1 m</p>', 1490, 1350, 'BS-35', 0, 0, 1, '2020-10-24 02:29:07', '2020-10-24 02:29:07'),
(177, 23, 'Rechargeable Bluetooth Karaoke Trolly Speaker With Wireless Microphone', 'rechargeable-bluetooth-karaoke-trolly-speaker-with-wireless-microphone', '<p>Discription&gt;&gt;&gt;&gt;&gt;<br />12&Prime; Loud Speaker+ 3&Prime;x1 Horn<br />Output- 30~100W<br />Voltage: AC 110 ~220V / 50Hz<br />DC/ 7.4V / mAh<br />Frequency Response : 60Hz &mdash; 18KHz<br />USB/SD/AUX Input<br />Dual Microphone Input<br />FM Radio<br />Compatible With : VCD/DVD/CD/TUNER/BT<br />Carrying Handle<br />Dual Power Source (Batteries or Power Cord)<br />Mode Switch<br />Remote Control<br />packing size : 340*260*500 MM<br />Gross weight : 5.6Kgs<br />Net Weight : 4.6Kgs<br />Colour : Black<br />স্পিকার বিশিষ্ট কারাওকে সাউন্ড বক্স ।<br />&gt; সহজেই মোবাইলে ব্লুটুথ কানেকশন করা যায়।<br />&gt; কোন প্রকার ক্যাবল কানেকশন লাগবে না।<br />&gt; সাইন্ড কোয়ালিটি হাই।<br />&gt; সাইন্ড আপ/ ডাউন করতে পারবেন।<br />&gt; ইকো সিস্টেম দেয়া আছে,সাইন্ড সিস্টেম করতে পারবেন।<br />&gt; ব্লুটুথে কানেকশন দিয়ে কারাউকি মিউজিক এর সাথে গান গাইতে পারবেন।<br />&gt; সরাসরি পেনড্রাইভ অথবা মেমোরি কার্ড ব্যবহার করতে পারবেন।<br />&gt; এফ,এম রেডিও<br />&gt; রেকডিং সিস্টেম</p>', 7500, 5900, 'BS-37', 0, 0, 1, '2020-10-24 05:22:30', '2020-10-24 05:22:30'),
(178, 23, 'Amazing 10 Layer Show Rak', 'amazing-10-layer-show-rak', '<p>&gt; ১০ তাক ওয়ালা সু-র&zwj;্যাক<br />&gt; ১০ তাক বিশিষ্ট এই জুতার র&zwj;্যাকে আপনি সর্বোচ্চ ৩০ জোড়া পর্যন্ত জুতা রাখতে পারবেন।<br />&gt; ইজি টু ফোল্ড অ্যান্ড স্টোর<br />&gt; ৩০ জোড়া জুতা রাখা সম্ভব<br />&gt; ম্যাটেরিয়ালঃ মেটাল পাইপ,প্লাস্টিক বডি<br />&gt; সাইজঃ L55 x W17 x H142 inches</p>', 1100, 950, 'BS-38', 0, 0, 1, '2020-10-24 05:39:16', '2020-10-24 05:39:16'),
(179, 23, 'Single sim Telephone Set', 'single-sim-telephone-set', '<p>&gt;HUAWEI GSM টেলিফোন সেট<br />&gt;অফিস/বাসা কিংবা ডেস্ক এর জন্যে<br />&gt;GSM সিম সাপোর্টেড ওয়্যারলেস টেলিফোন সেট<br />&gt;Dot Matrix LCD<br />যেকোনো GSM/2G/3G সিম সাপোর্ট করে<br />&gt;ম্যাসেজিং সিস্টেম<br />&gt;ফোনবুক এবং কন্টাক্ট ম্যানেজমেন্ট<br />&gt;হাই-কোয়ালিটি ভয়েস এবং স্ট্রং নেটওয়ার্ক<br />&gt;সিগন্যাল (বুস্টার এন্টেনাসহ)<br />&gt;৫ টি পর্যন্ত স্পিড ডায়াল বাটন<br />&gt;ইমারজেন্সি কল সাপোর্ট<br />&gt;রিচার্জেবল<br />&gt;পোর্টেবল এবং আলাদা কোন ক্যাবল দরকার নেই<br />&gt;A/C ইনপুট: 240V<br />&gt;সলিড কালার কম্বিনেশন<br />&gt;আধুনিকতার এক অন্যতম উপহার।</p>', 2100, 1850, 'BS-39', 0, 0, 1, '2020-10-24 05:51:35', '2020-10-24 05:51:35'),
(180, 23, 'Spoon Set With Swan Stand(1 set )', 'spoon-set-with-swan-stand1-set-', '<p>স্পুন সেট উইথ সোয়ান স্ট্যান্ড ( সাথে ৬ পিস চামচ)<span class=\"text_exposed_show\"><br />১ পিস সোয়ান আকৃতির স্ট্যান্ড<br />ম্যাটেরিয়াল: জিঙ্ক অ্যালয় মেটাল<br />স্ট্যান্ড সাইজ: ৭X১৫.৫ সে.মি<br />স্পুন লেন্থ: ১২ সে.মি</span></p>', 790, 650, 'BS-40', 0, 0, 1, '2020-10-24 06:04:31', '2020-10-24 06:04:31'),
(181, 23, 'Nima-Grinder-Single', 'nima-grinder-single', '<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ইলেকট্রিক স্পাইস গ্রাইন্ডার</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;আর নয় ঝামেলা মশলা পিশানো, যেকোন মশলা গুড়া করা যাবে খুব সহজে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;পাওয়ার: 200W</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ভোল্টেজ: 220V-240v</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;পাওয়ারফুল মোটরঃ 150W</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ম্যাটেরিয়ালঃ স্টেইনলেস স্টীল,কভার ম্যাটেরিয়ালঃ ট্রান্সপারেন্ট প্লাস্টিক</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;আকর্ষনীয় ডিজাইন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;কালোজিরা, শুকনা মরিচ, জিরা, মেথি, সরিষা, গোলমরিচ, এলাচি, দারুচিনি সহ যেকোন ধরনের ডাল যেকোন ধরনের বাদাম ইত্যাদি গুড়া বা পাউডার করা যাবে মাত্র কয়েক সেকেন্ড হতে ১ মিনিটের মধ্যে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;বিঃদ্রঃ শুধু মাত্র শুকনো মসলার জন্য ব্যবহার করুন, ভেজা না পানিযুক্ত নয় এবং পরিস্কার করার জন্য কাপর ব্যবহার করুন</div>', 950, 720, 'BS-41', 0, 0, 1, '2020-10-24 06:16:29', '2020-10-24 06:16:29'),
(182, 23, 'Stainless Steel Kitchen Rack', 'stainless-steel-kitchen-rack', '<p>ম্যাটেরিয়াল:100% স্টেইনলেস স্টীল<br />রান্নাঘর শেল্ফ, রান্নার উপকরণ সরঞ্জাম হুক<br />পরিমাণ: 1 পিস<br />প্যাকেজ আকার: 40.0 * 20.0 * 30.0 (সেমি.)<br />ওজন : 2.0 (কেজি)</p>', 1790, 1590, 'BS-42', 0, 0, 1, '2020-10-24 07:15:42', '2020-10-24 07:15:42'),
(183, 23, 'Aluminium Steel Kitchen Rack', 'aluminium-steel-kitchen-rack', '<p>ম্যাটেরিয়াল:100% এ্যালুমিনিয়াম স্টীল<br />রান্নাঘর শেল্ফ, রান্নার উপকরণ সরঞ্জাম হুক<br />পরিমাণ: 1 পিস<br />প্যাকেজ আকার: 40.0 * 20.0 * 30.0 (সেমি.)<br />ওজন : 2.0 (কেজি)</p>', 1590, 1390, 'BS-43', 0, 0, 1, '2020-10-24 07:18:35', '2020-10-24 07:18:35'),
(184, 23, 'Stainless Steel 2 Layer Kitchen Rack', 'stainless-steel-2-layer-kitchen-rack', '<p>&gt;&gt;Made of durable Steel<br />&gt;&gt;Chrome plated<br />&gt;&gt;Plastic tray equipped to hold drips easily<br />&gt;&gt;Space saving and light weight<br />&gt;&gt;Easy to assemble<br />&gt;&gt;Easy to clean and maintain<br />&gt;&gt;Size: L55 x W25 x H49cm.</p>', 1200, 1050, 'BS-44', 0, 0, 1, '2020-10-24 07:30:16', '2020-10-24 07:30:16'),
(185, 23, 'Vibro shape স্লিমিং বেল্ট', 'vibro-shape-স্লিমিং-বেল্ট', '<p>&gt; মেদ আর বাড়তি ওজন নিয়ে ভোগার দিন শেষ<br />&gt; এটা আপনার মেদ কমিয়ে শরীরে নিয়ে আসবে সুন্দর একটা সেপ<br />&gt; সাথে সাথে কমাবে আপনার ওজন<br />&gt; শরীর মাসাজ করতে পারবেন অনায়াসে<br />&gt; আপনার বাসা কিংবা অফিসে বসেই Vibro Shape নিয়ে প্রতিদিন মাত্র ১০ থেকে ১৫ মিনিট সময় কাটান, আর Vibro Shape থেকে নিন&nbsp; &nbsp; &nbsp; &nbsp;স্লিম ফিগার! Vibro&nbsp; Shape একটি সহজে ব্যবহারযোগ্য স্লিমিং প্রোডাক্ট এটি আপনার দেহের নির্দিষ্ট অংশে মুভমেন্টের মাধ্যমে রক্ত সঞ্চালন&nbsp; &nbsp;বাড়িয়ে দেহকে স্লিম আকৃতি দেয়<br />&gt; ডাইমেনশন (ট্রাভেল ব্যাগ): ৪৫০ মি. মি&times;১৫০ মি.মি.&times;৯০ মি.মি<br />&gt; এনার্জি সোর্স: পাওয়ার অ্যাডাপ্টার<br />&gt; হ্যান্ডেল স্টোরেজ কেস<br />&gt; ওজন: ৫০০ গ্রাম</p>', 2100, 1750, 'BS-45', 0, 0, 1, '2020-10-24 07:52:31', '2020-10-24 07:52:31'),
(186, 23, 'Sim Divice With GPS Location Tracker', 'sim-divice-with-gps-location-tracker', '<p>সিম ডিভাইস। আজ ই কিনে নিন এই অসাধারণ স্পাই<br />গ্যাঁজেটটি। সিম ভরে যেখানেই রেখে যাবেন সেখান<br />কার সব কিছু শুনতে পারবেন একটা কল এর মাধ্যমেই!!!!<br />আর এই সিম ডিভাইটি যার কাছে রাখবেন,শুধু সেই নাম্বারে DW লিখে SMS করলেই ফিরতি massage এর মাধ্যমে বলে দিবে যে লোকটি কোথায় আছে।এমনি করে আপনার মুল্যবান গাড়ি,ছোট বাচ্চার স্কুলের ব্যাগ,বয়স্ক লোকের পকেটে ইত্যাদি জায়গায় রেকে লকেশন(Location) জানতে পারবেন।</p>', 1250, 1150, 'BS-46', 0, 0, 1, '2020-10-24 09:59:45', '2020-10-24 09:59:45'),
(187, 23, 'Q7 Bluetooth Speaker', 'q7-blutooth-speaker', '<p>কারাওকে যন্ত্রের বৈশিষ্ট্যঃ<br />&gt; গানের স্কেল পরিবর্তন, তাল পরিবর্তন, মিউজিক ভলিউম পরিবর্তন, মাইক্রোফোন ভলিউম পরিবর্তন ও ইকো/রিভারব পরিবর্তনের সুবিধা<br />&gt; গান রেকর্ড ও প্লে-ব্যাক সুবিধা<br />&gt; প্যাকেজে রয়েছে- একটি ব্লুটুথ স্পিকার মাইক্রোফোন, একটি USB ক্যাবল, ইউজার ম্যানুয়াল, মাইক্রো USB টু অডিও ক্যাবল</p>\r\n<p>পন্যের বিবরণ===========<br />&gt; মডেলঃ Q7<br />&gt; প্রোডাক্ট টাইপঃ ফুল মেটাল K সং মাইক্রোফোন<br />&gt; ফ্রিকুয়েন্সি রেঞ্জঃ 100HZ-10KZ<br />&gt; আউটপুট পাওয়ারঃ 3WX2 (স্পীকার)<br />&gt; ম্যাক্সিমাম সাউন্ড প্রেশারঃ &gt; 115db 1kz THD &lt;1%<br />&gt; রিভার্ব মুডঃ ইকো সাউন্ড রিভার্বেশন<br />&gt; ব্যাটারি ক্যাপাসিটিঃ 2600 mAh<br />&gt; পাওয়ার সাপ্লাইঃ বিল্ট ইন লিথিয়াম পলিমার ব্যাটারি<br />&gt; চার্জিং পাওয়ার সাপ্লাইঃ DC5V</p>', 1100, 890, 'BS-47', 0, 0, 1, '2020-10-24 12:49:59', '2020-10-24 12:49:59'),
(188, 23, 'Full Package New Drill Machine Set (120 Pcs)', 'full-package-new-drill-machine-set-120-pcs', '<p><strong>ব্রান্ড: Agni</strong>Model: A120প্যাকেটে আছে: ১ পিস ড্রিল</p>\r\n<p>১ পিস ড্রিল মেশিনের কার্ব</p>\r\n<p>১ পিস হ্যামার হ্যান্ডে</p>\r\n<p>১ পিস হাতুড়</p>\r\n<p>১ পিস স্ক্রু ড্রাইভা</p>\r\n<p>১ পিস কম্বিনেশন প্লা</p>\r\n<p>১ পিস সিলাই রেন্জ</p>\r\n<p>১ পিস কেবল কাটা</p>\r\n<p>১ পিস মেজারিং টে</p>\r\n<p>৯ পিস সকেট রেন্জ (গুটি সেট</p>\r\n<p>১২ পিস স্ক্রু সেট (১২ রকমের</p>\r\n<p>১৫ পিস ড্রিল বি</p>\r\n<p>৫০ পিস রয়েল প্লা</p>\r\n<p>১ পিস টুল বক্স</p>', 3500, 2900, 'BS-48', 0, 0, 1, '2020-10-24 13:06:51', '2020-10-24 13:06:51'),
(189, 23, 'Paint Zoom', 'paint-zoom', '<p>আপনার বাসা বাড়ি, আসবাব পত্র, গাড়ী, ফ্রীজ, সহ সব জায়গায় স্প্রে করে রং করতে পারবেন<br />৩টি অ্যাডজাস্টেবল সিস্টেম, গ্লাস পেইন্ট সিস্টেম,<br />ডাইমেনশন:24 x 19 x 12 cm<br />টিউব লেন্থ: 1.6 m<br />কন্টেইনার ক্যাপাসিটি: 800 ml<br />মোটরপাওয়ার: 650W ।</p>', 2800, 2450, 'BS-49', 0, 0, 1, '2020-10-24 13:15:06', '2020-10-24 13:15:06'),
(190, 23, 'Rechargeable Green Colour Lager Pointer', 'rechargeable-green-colour-lager-pointer', '<p><strong>Specifications:&gt;&gt;&gt;&gt;&gt;</strong><br />Brand New Green Laser<br />True 200mw Output<br />Specail feature : the green laser spot size is adjustable, the range is from 0 to 60mm<br />Keylock switch to prevent mis-use by other people<br />It can be operated by One CR123A battery or One 18650 battery<br />Great for pointing objects from long distance, such as stars<br />Extremely Visible green light beam in the dark<br />Range in excess of 6,000 ft<br />Power saving, compact and reliable<br />Max Output: &lt;= 200mW<br />Wave Length: 532nm<br />Output wave: Continuous wave<br />Power by 1x 18650 Battery<br />Length: 5.77 &rdquo;<br />Diameter: 0.9 &rdquo;<br />Weight: 3.5 oz</p>', 1100, 850, 'BS-50', 0, 0, 1, '2020-10-24 13:27:06', '2020-10-24 13:27:06'),
(191, 23, 'Folding Laptop Table with  cooling fan', 'folding-laptop-table-with-cooling-fan', '<p>&gt;&gt; শুয়ে শুয়ে এখন ল্যাপটপ ব্যাবহার করা এবং মুভি দেখা হবে আগের চেয়ে অনেক সহজে ও স্বাস্থ্যের কোন ক্ষতি ছাড়াই<br />&gt;&gt; ইচ্ছেমত অ্যাডজাস্ট করা যায়<br />&gt;&gt; খুব হাল্কা ও ফোল্ডেবল<br />&gt;&gt; ডুয়াল কুলিং ফ্যান<br />&gt;&gt; ফোল্ডেড সাইজ: 11.2&rdquo; x 12.75&rdquo; x 1.5\"<br />&gt;&gt; USB ইন্টারফেস<br />&gt;&gt; কাপ ট্রে, মাউস প্যাড ডিজাইন<br /><br /></p>', 1950, 1800, 'BS-51', 0, 0, 1, '2020-10-25 01:37:18', '2020-10-25 01:37:18'),
(192, 23, 'Sweat Slim Belt', 'sweat-slim-belt', '<p>&gt;&gt; আপনার পেটের অতিরিক্ত মেদ (ভুঁড়ি) ও চর্বি খুব সহজেই কমানোর জন্য আমরা আপনার জন্য নিয়ে এসেছি Hot Shaper Belt . যা খুব&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;দ্রুত (এটি পরীক্ষিত ) ১০০% গ্যারান্টি আপনার অতিরিক্ত মেদ (ভুঁড়ি) ও চর্বি কমিয়ে আপনাকে স্লিম ও আকর্ষণীয় করে তুলবে । এটি&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ব্যবহার করা&nbsp; &nbsp;খুবি সহজ ।<br /><br />&gt;&gt; মহিলা ও পুরুষদের জন্য একটি অনন্য গেজেট (যা আপনার অতিরিক্ত মেদ কমাতে সাহায্য করবে)।<br />&gt;&gt; আপনার ফিগার শেপ এর মধ্যে থাকবে।<br />&gt;&gt; খুব সহজেই ব্যবহার উপযোগী ।<br />&gt;&gt; এটি আপনি বাসায়, হাঁটার সময়, কাজের মধ্যে , শপিং এ , জগিং এ ব্যবহার করতে পারেন ।<br />&gt;&gt; এটির ব্যবহারে আপনার বিরক্তিবোধ করবেন না, স্বস্তি ও আরামদায়ক মনে হবে ।<br />&gt;&gt; এটি আপনাকে আরও আকর্ষণীয় ও স্লিম করে তুলবে।<br />&gt;&gt; SIZE: (M=29-31\'\') (L-32-33\") (XL-34-35\") (XXL-36-37\") (3XL-38-39\") (4XL-40-42\")<br />&nbsp; &nbsp; &nbsp;&nbsp;</p>', 700, 590, 'BS-52', 0, 0, 1, '2020-10-25 01:46:32', '2020-10-25 01:46:32'),
(193, 23, 'Bike & House Security Alarm Lock', 'bike-and-house-security-alarm-lock', '<p>&gt;&gt; বাইক ও হাউজ সিকিউরিটি অ্যালার্ম ক্লক<br />&gt;&gt;অসৎ উদ্দেশে লকের গায়ে সামান্য আঘাত প্রদান মাত্রই উচ্চ শব্দে অ্যালার্ম (১১০ ডেসিবল)বেজে উঠবে<br />&gt;&gt;ফল্স অ্যালার্ম প্রটেক্টেড, আর তাই যে কেউ ধরা মাত্রই(আঘাত প্রদান ব্যতীত)বেজে উঠে আপনাকে বিভ্রান্ত করে তুলবে না<br />&gt;&gt;মোটরসাইকেল, বাইসাইকেল এবং বাসা বাড়ির নিরাপত্তায় বিশেষভাবে উপযোগী<br />&gt;&gt;সম্পূর্ণ স্টেইনলেস স্টিলের তৈরি তাই যথেষ্ট মজবুত দু&rsquo;ভাবেই ব্যবহারযোগ্য, আর<br />&gt;&gt; তাই ব্যবহার করা যাবে সাধারণ তালা হিসেবেও অ্যালার্ম বিহীন দীর্ঘস্থায়ী ব্যাটারি, তাই চলে বহুদিন<br />&gt;&gt; ব্যাটারি সহজলভ্য হওয়ায় খুব সহজেই প্রতিস্থাপনযোগ্য সাথে পাচ্ছেন একটি ব্যাটারি ফ্রি</p>', 750, 650, 'BS-53', 0, 0, 1, '2020-10-25 02:06:20', '2020-10-25 02:06:20'),
(194, 23, 'Slim N Lift স্লিমিং স্টাইল', 'slim-n-lift-স্লিমিং-স্টাইল', '<p>&gt;&gt; এই শীতে বডিকে স্লিম আর ফিট করে ধরে রাখতে পারেন।<br />&gt;&gt; Slim N Lift একটি কার্যকর বডি স্লিমিং ভেস্ট (ফর মেন)<br />&gt;&gt;এটি নিয়মিত ব্যবহারে আপনার ভুঁড়ি ২-৩ ইঞ্চি কমে যাবে<br />&gt;&gt;আরামদায়ক ফেব্রিক<br />&gt;&gt;স্মার্ট লুক<br />&gt;&gt;সাইজ: M,L, XL, XXL<br />&gt;&gt;সহজেই আপনার পোশাকের নিচে ব্যবহার করতে পারেন</p>', 650, 590, 'BS-54', 0, 0, 1, '2020-10-25 02:21:11', '2020-10-25 02:21:11'),
(195, 24, 'Single Air Bad With Pumper', 'single-air-bad-with-pumper', '<p>&gt; ব্রান্ড : BEST WAY<br />&gt; ফ্রি এয়ার পাম্পার<br />&gt; ম্যাটারিয়াল : PVC,Suede<br />&gt; ওজন : 1.5 কেজি<br />&gt; সাইজ : 3\' x 6\' x 9&Prime;<br />&gt; বেরিয়েছেন বা অ্যাডভ্যাঞ্চার এ যাচ্ছেন, সাথে নিয়ে যেতে হবে আপনার বিছানা-তোষক !<br />&gt; যেটি আপনি আপনার ব্যাগের ভিতর করে নিয়ে যেতে পারবেন দূর থেকে দুরান্তর । আর যেখানে খুশি সেখানে আপনি বানিয়ে নিতে পারবেন আরামের একটি অস্থায়ী বিছা</p>', 2700, 2400, 'BS-56', 0, 0, 1, '2020-10-25 04:38:35', '2020-10-25 04:38:35'),
(196, 23, 'Electric Blower Machine', 'electric-blower-machine', '<p>ব্লোয়ার-মেশিন দিয়ে সব ধরণের ধুলা বালি পরিষ্কার করা যায়.<br />পোর্টেবল হ্যান্ড এয়ার ব্লোয়ার.<br />কম্পিউটার ডাস্ট রিমুভার .<br />ঘরের আসবাবপত্র পরিষ্কার করা যায় .<br />যেকোন ইলেক্ট্রনিক্স যন্ত্রপাতি পরিষ্কার করা যায়.<br />Features;&mdash;&mdash;&mdash;&mdash;&mdash;&mdash;-<br />MOD;-EB25a<br />Wind pressure- 5.5 Kpa<br />Wind Volume- 2.8m/min<br />Rated volume- 220 V<br />Rated frequency- 50 Hz<br />input power- 800 W<br />Load Speed- 13000Rpm.</p>', 1200, 1050, 'BS-57', 0, 0, 1, '2020-10-26 01:00:46', '2020-10-26 01:00:46'),
(197, 26, 'Kemei 11in 1 Professonar Shaver & Trimmer (2)', 'kemei-11in-1-professonar-shaver-and-trimmer-2', '<p>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।<br />ক্লিন শেভ করতে পারবেন ।<br />চুল এ সাইজ ছোট বড় করতে পারবেন<br />নোজ অ্যান্ড ইয়ার ট্রিমার, ডুয়েল শেভার ।<br />ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS<br />ভোল্টেজঃ 110-240V, 50/60Hz<br />এক চার্জ এ ৪৫/৫০ মিনিট চলবে<br />ব্র্যান্ড : Progemei<br />মডেল: GM-571 /<br />আইটেম থাকবে টোটাল ১০ টি<br />পাওয়ারঃ 5W, Charging Power Adapter ও মেশিন ওয়েল এবং চিরুনি সাথে পাবেন ।</p>', 2200, 1950, 'BS-58', 0, 0, 1, '2020-10-26 01:04:42', '2020-10-26 01:05:52'),
(198, 23, 'Portable Tripod', 'portable-tripot', '<div class=\"product-detail-header\">\r\n<div class=\"header-text-new\">প্রোডাক্টের বিবরণ</div>\r\n<div class=\"header-code-text\">ডিল কোড:&nbsp;<span id=\"DealCodeLabel\">৯৬০০৮৫</span></div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />মডেলঃ TF 3110 ট্রাইপড- ফর ক্যামেরা এন্ড মোবাইল</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ম্যাটেরিয়াল: অ্যালুমিনিয়াম অ্যালয়, প্লাস্টিক</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />3 Way হেড</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />বিল্ট ইন লিকুইড বাবল লেভেল</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />4-সেকশন অ্যালুমিনিয়াম লেগস</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />কুইক রিলিজ লেগ লক</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ম্যাক্সিমাম হাইটঃ ১০২০ মিমি.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />মিনিমাম হাইটঃ ৩৪৫ মিমি.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />লোডিং ক্যাপাসিটি: 450 গ্রাম</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />দারুন সুন্দর একটি ছোট আকারের ট্রাইপড। যা কিনা আপনি আপনার প্রয়োজনে যে কোন স্থানে বহন করে নিয়ে যেতে পারবেন। এবং এর কার্যক্ষমতা যথেষ্ট থাকার কারনে আপনি আপনার প্রয়োজন মত এর ব্যবহার করতে পারবেন।</div>\r\n</div>', 700, 650, 'BS-59', 0, 0, 1, '2020-10-26 01:17:27', '2020-10-26 01:17:27'),
(199, 23, 'Remot Control Switch', 'remot-control-switch', '<div class=\"product-detail-header\">\r\n<div class=\"header-text-new\">&gt; এই রিমোট কন্ট্রোল দিয়ে আপনার বাসা বা অফিসের দুইটি লাইট অফ/ অন এবং একটি<br />&nbsp; &nbsp;ফ্যান অফ/ অন যাবে<br />&gt; ফ্যানটির গতি নয়টি অবস্থায় নিয়ন্ত্রণ করতে সাহায্য করবে<br />&gt; রিমোট টি ৪০ ফিট দূর থেকে কাজ করবে$<br />&gt; আপনার পরিবারকে বৈদ্যুতিক শক থেকে নিরাপদ রাখবে<br />&gt; অসুস্থ মানুষের জন্য এটি খুবই প্রয়োজনীয়$<br />&gt; মশারির ভিতর থেকে ফ্যান/ লাইট অফ/ অন করতে পারবেন$<br />&gt; 1 বছরের গ্যারান্টি</div>\r\n</div>', 850, 790, 'BS-60', 0, 0, 1, '2020-10-26 01:21:29', '2020-10-26 01:21:29'),
(200, 23, 'Digital Blood passer machine', 'digital-blood-passer-machine', '<p>&gt;&gt;Accu Max ব্লাড প্রেশার মনিটর<br />&gt;&gt;এক্সট্রা লার্জ LCD ডিসপ্লে উইথ ডিজিটাল ডিসপ্লে সিস্টেম<br />&gt;&gt;১২০ মেমোরি স্টোরেজ<br />&gt;&gt;ব্লাড প্রেসার লেভেল ইন্ডিকেটর<br />&gt;&gt;ডিটেক্ট ইরেগুলার হার্টবিট ডিটেক্ট<br />&gt;&gt;মুভমেন্ট ডিটেকশন<br />&gt;&gt;Charger/ ৪টি AA ব্যাটারি দ্বারা চালিত<br />&gt;&gt;মেইড ইন তাইওয়ান<br />&gt;&gt;3 বছরের ওয়ারেন্টি</p>', 2100, 1690, 'BS-61', 0, 0, 1, '2020-10-26 01:26:59', '2020-10-26 01:26:59'),
(201, 23, 'Back Support', 'back-support', '<p>&gt;&gt; প্রোডাক্ট:Royal Posture<br />&gt;&gt; আপনার ব্যাকজয়েন্টকে রাখে সুরক্ষিত<br />&gt;&gt; বডি শেপকে রাখে সুন্দর<br />&gt;&gt; হালকা ব্যকপেইন বা মেরুদন্ডের ব্যাথাকে নিরাময় করে<br />&gt;&gt; সাইজ: S/M, L/XL, (S/M, Men=Waist-25\'\'-36\" &amp; Women=size-0-16 ) ( L/XL, Men=Waist-37\"-58\" &amp; Women-Size=18-38)<br />&gt;&gt; Fabrics: 70% Neoprene, 30%Polyester<br />&gt;&gt; Made in China</p>', 750, 600, 'BS-62', 0, 0, 1, '2020-10-26 01:29:57', '2020-10-26 01:29:57');
INSERT INTO `products` (`id`, `brand_id`, `name`, `slug`, `description`, `price`, `selling_price`, `sku`, `should_track`, `stock_count`, `is_active`, `created_at`, `updated_at`) VALUES
(202, 23, 'Anti shoring Device', 'anti-shoring-device', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Anti-snoring device (fixes nose problem)- 6055- HCL</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />আপনার অথবা আপনার সঙ্গীর নাক ডাকা নিয়ে বিরক্ত?</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এক নিমিষেই সমাধান করে দিতে পারে আমাদের এই এন্টি স্নোরিং ডিভাইস।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এতে রয়েছে এন্টি স্নোরিং ডিভাইস যা আপনার নাসারন্ধ্রের ভিতরের প্যাসেজগুলোতে আরো বেশী বায়ু প্রবাহিত হতে সাহায্য করে; ফলে নাক ডাকা বন্ধ হয়।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />নাকা ডাকা সমস্যা সমাধান করে।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />স্লিপিং এ্যাপনিয়া দূরীভূত করে।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />নাকের পলিপাস সংক্রান্ত সমস্যার সমাধান করে।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />হাল্কা এবং ব্যবহার করা খুবই সহজ।</div>\r\n</div>', 450, 350, 'BS-63', 0, 0, 1, '2020-10-26 01:35:48', '2020-10-26 01:35:48'),
(203, 23, 'Digital Tharephy (4 Pad)', 'digital-tharephy-4-pad', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />যে কোন ব্যাথায় ইনস্ট্যান্ট আরাম ,ঘাড়, পা, মেরুদণ্ড, পিঠ, কোমর ব্যথা থেকে শুরু করে যে কোন ব্যথায় আরাম দিবে এই ডিজিটাল থেরাপি মেশিন,</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ব্যাটারিতে চালানো সহ সরাসরি কারেন্ট কিংবা পিসির ইউএসবিতে চালানোর সুবিধা,</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />সমস্যা অনুযায়ী আছে ৮ধরনের মুড,</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />টাইম সেট করা সহ অনেক সুবিধা,</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />পরিবারের সবার জন্য ব্যবহার উপযোগী।</div>\r\n</div>', 900, 850, 'BS-64', 0, 0, 1, '2020-10-26 01:44:23', '2020-10-26 01:44:23'),
(204, 23, 'T8 Smart watch', 't8-smart-watch', '<p>@ আপনার হাতে থাকা ঘড়ি দিয়ে এখন আপনি কল রিসিভ,গান শুনা ও প্রয়োজনীয় সকল কাজ করতে পারবেন ।<br />@ আপনি মোবাইল ফোনের সকল কাজ এর মাধ্যমে করতে পারবেন ।<br />যেসব কাজ করতে পারবেনঃ<br />কথা বলতে পারবেন<br />গান শুনতে পারবেন<br />এসএমএস করতে পারবেন<br />ব্লুটুথ<br />১৬ জিবি মেমোরি কার্ড সাপোর্টেড<br />ডিসপ্লেঃ ১.৫৪\"<br />ক্যামেরাঃ ২ মেগাপিক্সেল<br />সিমঃ সিঙ্গেল সিম<br />টাচ স্ক্রীন<br />সর্বোপরি আপনি ফোনের সকল কাজ এর মাধ্যমে করতে পারবেন<br />&gt;&gt;আপনি চাইলে এই স্মার্ট ওয়াচটিকে আপনার মোবাইল ফোন এর সাথে synchronize করে ব্যাবহার করতে পারেন অথবা এটিকে একটি পরিপূর্ণ মোবাইল ফোন হিসেবে ব্যাবহার করতে পারেন<br />প্রোগ্রামসমূহঃ<br />আ্যলার্ম<br />ক্যালেন্ডার<br />ক্যালকুলেটর<br />প্রোফাইলস<br />ফাইল ম্যানেজার<br />অডিও প্লেয়ার<br />থিম সেটিং<br />ক্যমেরা<br />ভিডিও রেকর্ডার<br />ইমেজ ভিউয়ার<br />ভিডিও প্লেয়ার (শুধুমাত্র AVI সাপোর্টেড)<br />সাউন্ড রেকর্ডার সহ সবকিছু</p>', 1250, 1100, 'BS-65', 0, 0, 1, '2020-10-26 01:50:45', '2020-10-26 01:50:45'),
(205, 23, 'V8 Smart Watch', 'v8-smart-watch', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Product details of Smartwatch V8 - Black</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Display: 1.54\'\' IPS Capacitive Touchscreen</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Resolutions: 240 x 240</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Camera: 0.3MP</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Display Type:LCD</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Compatible OS: Android</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />RAM: 64MB</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ROM: 128MB</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Single SIM</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Model: V8 Max Plus Smartwatch</div>\r\n</div>', 1200, 990, 'BS-66', 0, 0, 1, '2020-10-26 02:04:00', '2020-10-26 02:04:00'),
(206, 23, 'X6 smart watch', 'x6-smart-watch', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">&nbsp;</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />X6 নতুন মডেলের স্মাট মোবাইল ওয়াচ</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;এই চমৎকার ঘড়িটি আপনার স্মার্ট মোবাইলের এক্সট্রা গিয়ার হিসেবে কাজ করবে এবং চাইলে এতে সিম ভরে মোবাইল হিসেবেও ব্যবহার করতে পারবেন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ডিসপ্লেঃ ১.৫৪\"</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;টাচ স্ক্রিন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ক্যামেরাঃ 3MP</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;সিমঃ সিঙ্গেল সিম</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;32 জিবি মেমোরি কার্ড সাপোর্টেড</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;380 mAh লিথিয়াম আয়ন ব্যাটারি</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ফিচারঃ এফএম রেডিও, কলিং অপশন,অ্যালার্ম,ক্যালেন্ডার,ক্যালকুলেটর,ফাইল ম্যানেজার,অডিও প্লেয়ার,থিম সেটিং,সাউন্ড রেকর্ডার সহ সবকিছু</div>\r\n</div>', 1500, 1250, 'BS-67', 0, 0, 1, '2020-10-26 02:08:03', '2020-10-26 02:08:03'),
(207, 27, 'JEEP Men’s Shoulder Bag', 'jeep-men’s-shoulder-bag', '<p>&gt; High-quality pu leather with smooth touch feeling, durable<br />&nbsp; &nbsp;in use.</p>\r\n<p>&gt;Adjustable nice shoulder straps,wear in 3 different styles.<br />&nbsp; Hand-carry it</p>\r\n<p>&gt; convenient opening ways including zipper and snap,<br />&nbsp; &nbsp;freely take out the things and ensure the security.</p>\r\n<p>&gt;main compartment, 2* zipper pocket outside , 1*zipper<br />&nbsp; pocket inside</p>\r\n<p>&gt;Colors: Black, Khaki</p>\r\n<p>&gt;Come with high quality wallet,the men&rsquo;s must-have items.</p>\r\n<p>&gt;High Quality Thick Top PU Leather.</p>', 1150, 990, 'BS-68', 0, 0, 1, '2020-10-26 02:16:11', '2021-01-10 12:10:31'),
(208, 28, 'Cross-Body Bag Pack', 'cross-body-bag-pack', '<p>* Brand Name: Haodier<br />* Style: Fashion<br />* Main Material: Leather<br />* Backpacks Type: Softback<br />* Closure Type: Zipper<br />* Colors: Brown<br />* Weight: 0.4kg</p>', 950, 750, 'BS-69', 0, 0, 1, '2020-10-26 02:20:05', '2020-10-26 02:20:59'),
(209, 29, 'Pro Biker Hand Gloves', 'pro-biker-hand-gloves', '<p>&gt; ব্র্যান্ড:Pro-Biker<br />&gt; জেনুইন ডিউর&zwj;্যাবল ম্যাটেরিয়াল ডিজাইন<br />&gt; TPR ফিঙ্গার আরমর ফর কম্ফোরট্যাবিলিটি এন্ড ফ্লেক্সিবল প্রোটেকশন<br />&gt; আন ব্রেক্যাবল কাঙ্কেল প্রোটেকশন<br />&gt; হিট এন্ড টিয়ার রেজিস্ট্যান্স<br />&gt; ওয়াটার ডার্ট এন্ড ওয়েল রেপিল্যান্ট<br />&gt; কালার: র&zwj;্যান্ডম।</p>', 550, 490, 'BS-70', 0, 0, 1, '2020-10-26 02:34:49', '2020-10-26 02:34:49'),
(210, 23, 'Mobile-Tape-Stand', 'mobile-tape-stand', '<div class=\"product-details-container\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">&nbsp;</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Product details of Neck Cell Phone Holder 360 Degree Mobile Stand</div>\r\n<div class=\"product-details-text\">&nbsp;</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />MULTIPLE COMPATIBILITY - suitable for any phone between 4 - 8 inch.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ADJUSTABLE ANGLE - easy to bend, free angle, firm grip clips on your phone.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />FREE YOUR HANDS - perfect for viewing phone &amp; watching movie &amp; enjoying music &amp; GPS &amp; phone games in kitchen, toilet, bedroom,car, bicycle, gym, office, exhibition and more.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />PROBLEM SOLVED - tired of holding your phone by hand, always drop your phone on your face when lying, mobile devices are mounted unstably.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />STURDY HOLDER - contains over 70% aluminium magnesium alloy, stay stable and NO shake.</div>\r\n</div>\r\n</div>\r\n<div class=\"cash-back-Condition-wrapper\">&nbsp;</div>', 850, 750, 'BS-71', 0, 0, 1, '2020-10-26 02:42:37', '2020-10-26 02:42:37'),
(211, 23, 'Mobile Phone Holder For Bike', 'mobile-phone-holder-for-bike', '<p>&gt;বাইক ফোন হোল্ডার<br />&gt;ব্রান্ড নিউ<br />&gt;যে কোন মোবাইল রাখা যাবে।<br />&gt;বাইকে লাগানো অবস্তায় মোবাইল চার্জ করা যায়।</p>', 650, 550, 'BS-72', 0, 0, 1, '2020-10-26 02:46:15', '2020-10-26 02:46:15'),
(212, 29, '2-in-1-Night-vision-sunglass', '2-in-1-night-vision-sunglass', '<p>&gt; HD সানগ্লাস<br />&gt;২ টি সানগ্লাস এক প্যাকেজে<br />&gt; র&zwj;্যাপ অ্যারাউন্ড সানগ্লাস যা আপনাকে চারিদিক থেকে আলট্রা ভায়োলেট Ray থেকে প্রোটেক্ট করে</p>', 600, 490, 'BS-73', 0, 0, 1, '2020-10-26 02:49:11', '2020-10-26 02:49:11'),
(213, 23, 'Winter Stylish Cap(1set)', 'winter-stylish-cap1set', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">&nbsp;</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />প্রতি সেটে রয়েছে ১ টি মাথায় ব্যবহারের জন্য টুপি এবং ১ টি গলায় ব্যবহারের জন্য।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;✅ ২ টি মিলে ১ সেট ।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;✅ কালার-নেভি ব্লু, কালো, বাদামি, মেরুন।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;✅ এটি ছেলে এবং মেয়ে উভয়ই ব্যবহার করতে পারবে।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;✅ ফ্যাশনেবল ইউনিক ডিজাইন।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;✅ ফ্রি সাইজ।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;✅ কমফোর্টেবল এন্ড ট্রেন্ডি স্টাইল।</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;✅ শীতে মোটরসাইকেল আরোহীদের জন্য দারুন একটি পণ্য।</div>\r\n</div>', 450, 400, 'BS-74', 0, 0, 1, '2020-10-26 02:54:24', '2020-10-26 02:54:24'),
(214, 24, '5 in 1 Sofa Bed', '5-in-1-sofa-bed', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;5 in 1 সোফা বেড</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এটি একটি sophisticated সোফা</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />একটি লাক্সারিয়াস lounger</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />একটি relaxed recliner</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />বাচ্চাদের একটি হাই রাইজ বোস্টার স্লিপার</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />একটি চমৎকার blissful বেড</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />অবিশ্বাস্য All in one প্রোডাক্ট এবং এই সবই আপনার ট্রাভেল ব্যাগের ভেতর এটে যাবে এবং আপনি যেখানেই যান, বহন করে নিয়ে যেতে পারেন সাথে করে!</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />৫ ইন ১ সোফা বেড</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ডুয়াল অ্যাকশন টার্বো পাওয়ার পাম্প</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এয়ার নোজল রিপেয়ার কিট</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ট্রাভেল ক্যারি ব্যাগ</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />একটি ফ্যাশনেবল-স্টাইল সোফা বেড যা আপনার যে কোন প্রকার ডেকোরেশনের সাথে মানানসই</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />লাক্সারিয়াস লেদার ফিনিশ ইফেক্ট</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />স্ট্রং এবং লাইট</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ওয়েটএক মুহুর্তে Rolled-Up থেকে Set &ndash;Up; সাথে আছে মাল্টি-পারপাজ ডাবল অ্যাকশন Inflation/Deflation পাম্প যা ১২০ সেকেন্ডে বায়ু পরিপূর্ণ করে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />সাথে পাম্প ফ্রি</div>\r\n</div>', 6500, 5400, 'BS-75', 0, 0, 1, '2020-10-26 05:13:12', '2020-10-26 05:13:12'),
(215, 23, 'Comport Baby Carier Bag', 'comport-baby-carier-bag', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ম্যাটেরিয়াল: পলিয়েষ্টার |</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;নিরাপদ বেবী ক্যারিয়ার |</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;৩ টি পজিশনে এই ক্যারিয়ারকে ব্যবহার করা যাবে |</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;৩-১৮ মাস বয়েসী শিশুদের ক্ষেত্রে প্রযোজ্য |</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ইম্পোর্টেডে প্রোডাক্ট |</div>\r\n</div>', 1100, 790, 'BS-76', 0, 0, 1, '2020-10-26 05:24:31', '2020-10-26 05:24:31'),
(216, 27, 'Jeep man\'s Cross body bag (1Pcs)', 'jeep-man\'s-cross-body-bag-1pcs', '<div class=\"product-detail-header\">\r\n<div class=\"header-text-new\">প্রোডাক্টের বিবরণ</div>\r\n<div class=\"header-code-text\">ডিল কোড:&nbsp;<span id=\"DealCodeLabel\">৮৯৫৯৮৫</span></div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ছেলেদের জন্য ম্যাসেঞ্জার ব্যাগ</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />messenger bag</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />for man</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />artificial leather</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />size 8\'\'/9.5\'\'</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />brand jeep</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />made in china</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />best quality</div>\r\n</div>', 1100, 890, 'BS-77', 0, 0, 1, '2020-10-26 06:23:59', '2020-10-26 06:23:59'),
(217, 26, 'KEMEI 8 IN 1 Shaver &Trimmer', 'kemei-8-in-1-shaver-and-trimmer', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ব্র্যান্ডঃ Kemei</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />কর্ডলেস ইউসেজ টাইম: 40 মিনিট (প্রায় )</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />চার্জ টাইম: 5 Hours</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />কর্ড/ কর্ডলেস Rechargeable Hair Clipper Set</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Input: AC 220V &ndash; 240 V, 50-60 Hz 3 W</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Output : 3.0 VDC, 600 mAh</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />WHAT\'S IN THE BOX: Ear / Nose Trimmer Dual Foil Shaver Precision details 3 x Beard Combs Oil, Comb Instruction Booklet Facial &amp; Body Grooming System</div>\r\n</div>', 1850, 1490, '78', 0, 0, 1, '2020-10-26 07:05:28', '2020-10-26 07:05:28'),
(218, 23, 'Blutooth speker', 'blutooth-speker', '<p>✯ Model No : BT-170BT<br />✯ Bluetooth version : V2.0<br />✯ Function : USB/TF/Bluetooth/FM Radio/Screen display<br />✯ Lound speaker : 4inch x 2<br />✯ Product color : Black/red/blue<br />✯ Out power : 8W<br />✯ Frequency respons : 80Hz-18KHz<br />✯ SNR : 85dB<br />✯ Charging voltage : DC 5V<br />✯ Speaker impedance : 4&Omega;<br />✯ Battery : 600mAH<br />✯ Body materials : ABS Plastic+PB<br />✯ Remote distance : 10 meters<br />✯ Accessoriess : Charge cable/Audio cable<br />✯ Product size : 130 x 280 x 100mm</p>', 1150, 990, 'BS-78', 0, 0, 1, '2020-10-26 07:15:43', '2020-10-26 07:15:43'),
(219, 23, 'Magic-bullet juicer  Machine', 'magic-bullet-jucer-machine', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Magic Bullet ব্লেন্ডার ২১ পিস সেট</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এটি একটি কফি মগের মতোই স্লিম</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ই ব্লেন্ডার আপনার ফুড প্রসেসর, ব্লেন্ডার, ইলেকট্রিক জুইসার এবং কফি গ্রাইন্ডার হিসেবে কাজ করবে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />সহজেই ব্যবহার করা যায়</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ম্যাজিক বুলেট ব্লেন্ডারে ভিন্ন কোন পাওয়ার বাটন নেই। শুধুমাত্র উপকরণগুলো ব্লেন্ডারে দিন আর ব্লেন্ডারটিকে পাওয়ার বেজের ওপর রেখে নীচে চাপ দিন, কয়েক সেকেন্ডের মধ্যেই আপনি পেয়ে যাবেন spaghetti সস, অনিয়ন চপ, সালসা, রসুন জুস, পনির, স্যুপ, চিকেন সালাদ</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ম্যাজিক বুলেট অবিশ্বাস্য দ্রুতগতিতে কাজ করে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />৩ সেকেন্ডে তৈরি হয় রসুন বাটা!</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />৫ সেকেন্ডে তৈরি হয় সালসা, চিকেন সালাদ!</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১০ সেকেন্ডে তৈরি হয় মিক্স সস, স্যুপ এবং অমলেট!</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />বক্সে আছে ২১ পিস ম্যাজিক বুলেট ব্লেন্ডার সেট</div>\r\n</div>', 3100, 2700, 'BS-79', 0, 0, 1, '2020-10-26 07:26:20', '2020-10-26 07:26:20'),
(220, 30, 'BM-10 Mini Kokia Phone', 'bm-10-mini-kokia-phone', '<p>MB-10 Super Nokia Mini Phone<br />Model : BM10<br />RAM:128MB<br />ROM:128MB<br />Resolution:480X360 প্রদর্শন করা হবে<br />Feature:with mp3 সাথে mp3<br />ডুয়েল sim কার্ড<br />ব্যাটারি (mah): 350 mah<br />রেকর্ড করা হচ্ছে Definition:360P<br />Network:GSM900 gsm1800 gsm1900 gsm850<br />মেমরি কার্ড to:32GB<br />ডিফল্ট: meetingresp<br />Bm10 মিনি ওয়ারলেস ডায়ালার / মিনি ফোন<br />2 টি sim কার্ডের স্লট<br />&ndash; 32 জিবি<br />আকার: 68*28*12 মিমি<br />বাজার নতুন ডিজাইন এবং মানের উপর একদম নতুন<br />হাতের আকারের ফোন তোমার হাতের হাতের চেয়ে ছোট</p>', 1450, 1350, 'BS-80', 0, 0, 1, '2020-10-26 07:51:42', '2020-10-26 07:51:42'),
(221, 23, '100 in 1 Drill Machine Set', '100-in-1-drill-machine-set', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />সাথে যা যা থাকছেঃ</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১ পিস ড্রিল</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১ পিস ড্রিল মেশিনের কার্বন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১ পিস হ্যামার হ্যান্ডেল</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১ পিস হাতুড়ি</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১ পিস স্ক্রু ড্রাইভার</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১ পিস কম্বিনেশন প্লাস</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১ পিস সিলাই রেন্জ</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১ পিস ক্যাবল কাটার</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১ পিস মেজারিং টেপ</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />৯ পিস সকেট রেন্জ (গুটি সেট)</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১২ পিস স্ক্রু সেট (১২ রকমের)</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />১৫ পিস ড্রিল বিট</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />৫০ পিস রয়েল প্লাগ</div>\r\n</div>', 2400, 2100, 'BS-81', 0, 0, 1, '2020-10-26 09:28:55', '2020-10-26 09:28:55'),
(222, 23, 'Remot holder', 'remot-holder', '<p>ঘরের ভিতরে আপনার যাবতীয় রিমোট সাজিয়ে রাথতে পারবেন</p>\r\n<p>টেবিলে,ওয়্যার ড্রপের উপরে রাখলে,ঘরের সুন্দর্য বৃদ্ধি করবে।</p>\r\n<p>স্টেইনলেস স্টিল হওয়ার কারনে,মরিচা পড়ার কোন ভয় নেই।</p>', 600, 550, 'BS-82', 0, 0, 1, '2020-10-26 09:41:31', '2020-10-26 09:41:31'),
(223, 23, 'KECHAODA K115', 'kechaoda-k115', '<p>Discription&gt;&gt;&gt;&gt;<br />1.1.44 Inch QVGA<br />2.KTK6261Chip set<br />3 Camera 4 mega<br />4.MP3/MP4<br />5 BT-v2 1/T<br />6.16 GB Memory card support<br />7.Lithium Battary<br />8.Bluetooth Dialer<br />9.Recording</p>', 1700, 1450, 'BS-83', 0, 0, 1, '2020-10-26 09:53:54', '2020-10-26 09:53:54'),
(224, 23, 'Money Detector Machine', 'money-detector-machine', '<p>&gt;&gt;পোর্টেবল এন্ড এক্সেপেনসিভ কাউন্টারফিট মানি ডিটেক্টর<br />&gt;&gt;অধিকাংশ বড় আন্তর্জাতিক আর্থিক লেনদেনের জন্য কাজ করে<br />&gt;&gt;সহজে ব্যবহারযোগ্য<br />&gt;&gt;ব্যবসায়িক কিংবা ব্যক্তিগত- যে কোন প্রযোজনেই ব্যবহার সুবিধাজনক<br />&gt;&gt;কম্প্যাক্ট এন্ড লাইট-ওয়েট<br />&gt;&gt;স্পেসিফিকেশন:<br />&gt;&gt;মডেল: AD-2138<br />&gt;&gt;ব্যাংক নোট, আইডি কার্ড, ড্রাইভিং লাইসেন্সের সঠিকতা যাচাই করে<br />&gt;&gt;ক্রেডিট কার্ড, পাসপোর্ট ও অন্যান্য ই-ডকুমেন্ট যাচাই করা যায়<br />&gt;&gt;২ টি ৬ ওয়াটের আল্ট্রা-ভায়োলেট ব্লু ল্যাম্প<br />&gt;&gt;২২০-২৩০ ভোল্ট<br />&gt;&gt;ফ্রিকোয়েন্সি: ৫০ হার্টজ<br />&gt;&gt;ডাবল ইন্সটলেশনG</p>', 1500, 1400, 'BS-84', 0, 0, 1, '2020-10-26 10:04:21', '2020-10-26 10:04:21'),
(225, 23, '2 Layer Clothing Rack', '2-layer-clothing-rack', '<p>Feature:1.Double-bar design for more hanging clothes spac<br />2.Adjustable height 35.9-60.8 inch<br /><br />3.With 4 rolling castors and bottom rack, easy to move, very convenient, 2 castors can be locked<br /><br />4. Easy to setup and disassembl<br /><br />Material: Durable stainless steel frame, plastic join<br /><br />Color: As Picture Sho<br /><br />Length: 77 cm/30.0 inc<br /><br />Width: 43 cm/16.8 inc<br /><br />Height: 92-156 cm/35.9-60.8 inc<br /><br />Frame Diameter: 2.5 cm/1.0 inch (Max<br /><br />Shoe Rack Diameter: 1.8 cm/0.7 inc<br /><br />Application: Indoor, Outdoor<br /><br />Package Content:<br /><br />1 x Garment Drying Rack</p>', 1700, 1450, 'BS-85', 0, 0, 1, '2020-10-27 00:21:29', '2020-10-27 00:37:52'),
(226, 23, '40pcs Hand Tool Combination Socket set For Motorcycles', '40pcs-hand-tool-combination-socket-set-for-motorcycles', '<p><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>1pc 3/8 Resversible Rachet হ্যান্ডেল<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>14pc 1/4\" Dr.metric সকেট:&nbsp;4mm,4.5mm,5mm,5.5mm,6mm,6.<wbr />5mm,7mm,8mm,9mm,10mm,11mm,<wbr />12mm,<span class=\"text_exposed_show\"><br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>14pc 1/4\"Dr.SAE সকেট:<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>&nbsp;5/32,3/16,7/32,1/4,9/32,5/<wbr />1611/32,3/8,13/32,<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>&nbsp;3pc 1/4\" Dr.SAE সকেট:1/4,5/16,3/8\"<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>&nbsp;1pc 3/8\" 3\"ext বার<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>1pc 1/4\"*3/8 অ্যাডাপ্টার 1pc 3/8\" 21mm স্পার্ক প্লাগ স<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>1pc spanner হান্ডেল<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>3pc 3/8\" Metric সকেট:14mm,15mm,17mm<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>3pc 3/8\" SAE সকেট:9/16,5/8,11/16\"<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>1pc ব্লো কেস<br /><span class=\"_5mfr\"><span class=\"_6qdm\">✔</span></span>1color স্লিভ</span></p>', 950, 750, 'BS-86', 0, 0, 1, '2020-10-27 01:32:56', '2020-10-27 01:48:26'),
(227, 23, 'Mini Torch Light', 'mini-torch-light', '<p>মত্র ৩ ইঞ্চি লম্বা কিন্তু খুবই শক্তিশালী আলো।<br />&gt;মিনি রিচার্জেবল LED টর্চ লাইট।<br />&gt;হাই কোয়ালিটি LED লাইট<br />&gt;স্ট্রং ফোকাস<br />&gt;চার্জার<br />&gt;রিচার্জেবল ব্যাটারি</p>', 700, 600, 'BS-87', 0, 0, 1, '2020-10-27 01:47:04', '2020-10-27 01:47:53'),
(228, 23, 'Solar Power Bank', 'solar-power-bank', '<p>&gt;&gt;সোলার প্যান: 1.5W<br />&gt;&gt;ক্যাপাসিটিঃ (mAh): 5000 mAh<br />&gt;&gt; চার্জিং টাইম:10 hours<br />&gt;&gt; ইনপুট5V-1A<br />&gt;&gt;আউটপুট: 5V 1A Output1: 5V-2.1A<br />&gt;&gt;কম্পিটিবল iPhone, Nokia, Samsung, Sony, xiaomi, etc<br />&gt;&gt; সাইজ: 120 x 75 x 20 mm/ 4.72 x 2.95 x 0.79</p>', 990, 850, 'BS-88', 0, 0, 1, '2020-10-27 02:00:29', '2020-10-27 02:00:29'),
(229, 23, 'Smart Dolphin Body Massager', 'smart-dolphin-body-massager', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />স্পোর্টস ফ্যাটিগ দূর করে মাসল রিলাক্স করতে সহায়তা করেঅনিয়মিত রক্ত সঞ্চালনজনিত ব্যাথা দূর করেrheumatism, স্লিপ স্টিফ নেক দ্বারা সৃষ্ট শোল্ডার স্প্যাজম দূর করেপুরো শরীর মাসাজের জন্য রয়েছে বল রাউন্ড মাসাজ হেডফার ইনফ্রারেড ফাংশন চর্বি ঝরাতে ও রক্ত সঞ্চালন বৃদ্ধিতে সহায়তা করেস্ট্রিমলাইন ডিজাইন এলিগ্যান্ট অ্যাপিয়ারেন্স অারামদায়ক হ্যান্ডেল</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ছোট ও হালকাস্ট্রং ভাইব্রেশন ইফেক্ট</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />পাওয়ার সাপ্লাই: ২টি AA-ব্যাটারি (সংযুক্ত নয়)</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />প্যাকেজে রয়েছে: ১টি মাসাজার,</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />৩টি মাসাজ হেড</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />কালার: র&zwnj;্যান্ডম</div>\r\n</div>', 750, 690, 'BS-89', 0, 0, 1, '2020-10-27 23:48:16', '2020-10-27 23:48:16'),
(230, 31, 'HTC-1107B Rechargeable Shaver & Trimmer (1)', 'htc-1107b-rechargeable-shaver-and-trimmer-1', '<ul>\r\n<li class=\"product-details-text\">চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।</li>\r\n<li>চুল ও শেভ করতে পারবেন ।</li>\r\n<li>চাজিং ক্যাবল ও মেশিন ওয়েল সাথে পাবেন ।</li>\r\n<li>ব্যাটারি রিচার্জ করা যাবে ।</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS&nbsp;</li>\r\n<li>ফুল চার্জে ৩০-৪০ মিনিট ব্যবহার করা যাবে</li>\r\n<li>ভোল্টেজঃ 110-240V, 50/60Hz</li>\r\n<li>ব্র্যান্ড:&nbsp;htc</li>\r\n</ul>', 990, 850, 'BS-90', 0, 0, 1, '2020-10-28 00:25:53', '2020-10-28 00:25:53'),
(231, 26, 'Kemei 550 Rechargeable Shaver & Trimmer', 'kemei-550-rechargeable-shaver-and-trimmer', '<ul>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।</li>\r\n<li>ক্লিন শেভ ও চুল কাটতে পারবেন।</li>\r\n<li>চুল ও&nbsp;দাড়ির সাইজ ছোট বড় করতে পারবেন&nbsp;।</li>\r\n<li>নোজ অ্যান্ড ইয়ার ট্রিমার, ডুয়েল শেভার ।</li>\r\n<li>আইটেম থাকবে টোটাল ৮&nbsp;&nbsp;টি&nbsp;এবং&nbsp;১টি চিরুনি,&nbsp;মেশিন ওয়েল&nbsp;ও ১টি ক্লিনিং ব্রাশ&nbsp;।</li>\r\n<li>পাওয়ারঃ Charging Power Adapter সাথে পাবেন ।&nbsp;</li>\r\n<li>ব্যাটারি পরিবর্তন করার সুবিধা ।</li>\r\n<li>ব্যাটারি রিচার্জ করা যাবে ।</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS</li>\r\n<li>ভোল্টেজঃ 110-240V, 50/60Hz</li>\r\n<li>এক চার্জ এ ৪৫/৫০ মিনিট চলবে</li>\r\n<li>ব্র্যান্ড :&nbsp;KEMEI</li>\r\n<li>মডেল:KM-550\r\n<div id=\"tab-label-description\" class=\"data item title opened\" tabindex=\"0\" data-role=\"collapsible\" data-collapsible=\"true\"></div>\r\n</li>\r\n</ul>', 2700, 2490, 'BS-91', 0, 0, 1, '2020-10-28 00:37:07', '2020-10-28 00:37:07'),
(232, 26, 'Kemei 590A-Multifunctional-Saver & Trimmer', 'kemei-590a-multifunctional-saver-and-trimmer', '<ul>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।</li>\r\n</ul>\r\n<div class=\"product-details-text\">\r\n<ul>\r\n<li>ক্লিন শেভ করতে পারবেন ।</li>\r\n<li>চুল এ সাইজ ছোট বড় করতে পারবেন&nbsp;</li>\r\n<li>নোজ অ্যান্ড ইয়ার ট্রিমার, ডুয়েল শেভার ।</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS</li>\r\n<li>ভোল্টেজঃ 110-240V, 50/60Hz</li>\r\n<li>এক চার্জ এ ৪৫/৫০ মিনিট চলবে</li>\r\n<li>ব্র্যান্ড : Kemei</li>\r\n<li>মডেলঃ KM-590A</li>\r\n<li>আইটেম থাকবে টোটাল ৭ টি</li>\r\n<li>পাওয়ারঃ 5W, Charging Power Adapter&nbsp;ও মেশিন ওয়েল এবং চিরুনি সাথে পাবেন ।&nbsp;</li>\r\n</ul>\r\n</div>', 1800, 1750, 'BS-93', 0, 0, 1, '2020-10-28 00:57:50', '2020-10-28 00:57:50'),
(233, 26, 'Kemei 9030 Rechargeable Shaver & Trimmer', 'kemei-9030-rechargeable-shaver-and-trimmer', '<ul>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।</li>\r\n<li>শেভ এবং চুল কাটতে&nbsp; পারবেন ।</li>\r\n<li>চাজিং ক্যাবল ও মেশিন ওয়েল সাথে পাবেন ।</li>\r\n<li>ব্যাটারি পরিবর্তন করার সুবিধা ।</li>\r\n<li>ব্যাটারি রিচার্জ করা যাবে ।</li>\r\n<li>ব্র্যান্ডঃ Kemei</li>\r\n<li>মডেল: KM-9030</li>\r\n<li>এক চার্জ এ ৪০ মিনিট চলবে</li>\r\n<li>ভোল্টেজঃ 220V~240V.</li>\r\n</ul>', 1400, 1350, 'BS-94', 0, 0, 1, '2020-10-28 01:09:05', '2020-10-28 01:09:05'),
(234, 26, 'Kemei-1015 Professional Rechargeable-Shaver-and-Trimmer', 'kemei-1015-professional-rechargeable-shaver-and-trimmer', '<ul>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।</li>\r\n<li>ক্লিন শেভ করতে পারবেন ।</li>\r\n<li>চুল এ সাইজ ছোট বড় করতে পারবেন&nbsp;</li>\r\n<li>নোজ অ্যান্ড ইয়ার ট্রিমার, ডুয়েল শেভার ।</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS</li>\r\n<li>ভোল্টেজঃ 110-240V, 50/60Hz</li>\r\n<li>এক চার্জ এ ৪৫/৫০ মিনিট চলবে</li>\r\n<li>ব্র্যান্ড : Kemei</li>\r\n<li>মডেল: KM-1015</li>\r\n<li>আইটেম থাকবে টোটাল ১০ টি</li>\r\n<li>পাওয়ারঃ 5W, Charging Power Adapter&nbsp;ও মেশিন ওয়েল এবং চিরুনি সাথে পাবেন ।</li>\r\n</ul>', 2300, 2100, 'BS-95', 0, 0, 1, '2020-10-28 06:08:09', '2020-10-28 06:08:09'),
(235, 26, 'Kemei 1015 Rechargeable Hair Trimmer', 'kemei-1015-rechargeable-hair-trimmer', '<ul>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।</li>\r\n<li>ক্লিন শেভ করতে পারবেন ।</li>\r\n<li>চুল এ সাইজ ছোট বড় করতে পারবেন&nbsp;</li>\r\n<li>নোজ অ্যান্ড ইয়ার ট্রিমার, ডুয়েল শেভার ।</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS</li>\r\n<li>ভোল্টেজঃ 110-240V, 50/60Hz</li>\r\n<li>এক চার্জ এ ৪৫/৫০ মিনিট চলবে</li>\r\n<li>ব্র্যান্ড :&nbsp;Progemei</li>\r\n<li>মডেল: GM-571&nbsp;/</li>\r\n<li>আইটেম থাকবে টোটাল ১০ টি</li>\r\n<li>পাওয়ারঃ 5W, Charging Power Adapter&nbsp;ও মেশিন ওয়েল এবং চিরুনি সাথে পাবেন ।</li>\r\n</ul>', 2300, 2150, 'BS-97', 0, 0, 1, '2020-10-28 06:19:23', '2020-10-28 06:19:23'),
(236, 26, 'Kemei 8824 Recharable Shaver & Trimmer', 'kemei-8824-recharable-shaver-and-trimmer', '<ul>\r\n<li>মাথার&nbsp;চুল কাটতে&nbsp;ও শেভ করতে পারবেন</li>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার&nbsp;</li>\r\n<li><span class=\"text_exposed_show\">সরাসরি ইলেক্টিক এ চলবে&nbsp;</span></li>\r\n<li>সবাই ব্যবহার করতে পারবে</li>\r\n<li>মেশিন ওয়েল ও ১টি চিরুনি&nbsp;এবং ১টি কাচি&nbsp; ও&nbsp; ৩ টি ক্লিপ সাথে পাবেন&nbsp;</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS</li>\r\n<li>Model : KM-8824</li>\r\n</ul>', 2700, 2250, 'BS-98', 0, 0, 1, '2020-10-28 07:02:14', '2020-10-28 07:02:14'),
(237, 26, 'Kemei 4640 Professonal Hair Trimmer', 'kemei-4640-professonal-hair-trimmer', '<ul>\r\n<li>মাথার&nbsp;চুল কাটতে&nbsp;ও শেভ করতে পারবেন</li>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার&nbsp;</li>\r\n<li><span class=\"text_exposed_show\">সরাসরি ইলেক্টিক এ চলবে&nbsp;</span></li>\r\n<li>সবাই ব্যবহার করতে পারবে</li>\r\n<li>মেশিন ওয়েল ও ১টি চিরুনি&nbsp;এবং ১টি কাচি&nbsp; ও&nbsp; ৪ টি ক্লিপ সাথে পাবেন&nbsp; ( 3MM, 6MM, 9MM, 12MM )</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS</li>\r\n<li>Model : KM-4640</li>\r\n</ul>', 2000, 1850, 'BS-99', 0, 0, 1, '2020-10-28 07:11:40', '2020-10-28 07:11:40'),
(238, 26, 'Nikai 1712 Professonal Saver & Trimmer', 'nikai-1712-professonal-saver-and-trimmer', '<ul>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।</li>\r\n<li>ক্লিন শেভ করতে পারবেন ।</li>\r\n<li>চুল এ সাইজ ছোট বড় করতে পারবেন&nbsp;</li>\r\n<li>নোজ অ্যান্ড ইয়ার ট্রিমার, ডুয়েল শেভার ।</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS</li>\r\n<li>ভোল্টেজঃ 110-240V, 50/60Hz</li>\r\n<li>এক চার্জ এ ৪৫/৫০ মিনিট চলবে</li>\r\n<li>ব্র্যান্ড :&nbsp;NAKAI</li>\r\n<li>মডেলঃ&nbsp;NK-1712</li>\r\n<li>আইটেম থাকবে টোটাল ৮&nbsp;&nbsp;টি</li>\r\n<li>পাওয়ারঃ 5W, Charging Power Adapter&nbsp;ও মেশিন ওয়েল এবং চিরুনি সাথে পাবেন ।&nbsp;</li>\r\n</ul>', 2100, 1950, 'BS-100', 0, 0, 1, '2020-10-28 07:14:43', '2020-10-28 07:14:43'),
(239, 26, 'Kemei 3902 Shaver &Trimmer', 'kemei-3902-shaver-and-trimmer', '<div class=\"product-details-text\">\r\n<ul>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।</li>\r\n<li>ক্লিন শেভ করতে পারবেন ।</li>\r\n<li>চুল এ সাইজ ছোট বড় করতে পারবেন.</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS</li>\r\n<li>ভোল্টেজঃ 110-240V, 50/60Hz</li>\r\n<li>এক চার্জ এ ৪৫/৫০ মিনিট চলবে</li>\r\n<li>ব্র্যান্ড : Kemei</li>\r\n<li>মডেল: KM-6688 / 3902</li>\r\n<li>আইটেম থাকবে টোটাল ৪ টি ক্লিপ&nbsp;এবং ২টি ব্যাটারি,</li>\r\n<li>পাওয়ারঃ 5W, Charging Power Adapter&nbsp;ও মেশিন ওয়েল সাথে পাবেন ।</li>\r\n<li>উচ্চ ক্ষমতা, কম শব্দ।</li>\r\n<li>রিচার্জ্যাবল হালকা ও সহজে বহনযোগ্য</li>\r\n</ul>\r\n</div>\r\n<div class=\"product-details-text\">\r\n<div class=\"product-details-text\">&nbsp;</div>\r\n</div>', 2500, 1950, 'BS-104', 0, 0, 1, '2020-10-28 07:21:26', '2020-10-28 07:21:26'),
(240, 26, 'KEMEI KM-9020 Professional Shaving Trimmer', 'kemei-km-9020-professional-shaving-trimmer', '<ul>\r\n<li>চুল বা দাড়ি কতটুকু সাইজে রাখবেন তার জন্য স্পেশাল ফিচার ।</li>\r\n<li>শেভ করতে&nbsp;ও চুল কাটতে পারবেন ।</li>\r\n<li>চাজিং ক্যাবল ও মেশিন ওয়েল সাথে পাবেন ।</li>\r\n<li>ব্যাটারি রিচার্জ করা যাবে ।</li>\r\n<li>ব্র্যান্ড : Kemei&nbsp;</li>\r\n<li>মডেল: KM-9020</li>\r\n<li>ম্যাটেরিয়াল: স্টেইনলেস স্টিল + ABS&nbsp;</li>\r\n<li>ফুল চার্জে ৪০ মিনিট ট্রিম করা যাবে</li>\r\n<li>ভোল্টেজঃ 110-240V, 50/60Hz</li>\r\n</ul>', 1100, 990, 'BS-106', 0, 0, 1, '2020-10-28 07:26:59', '2020-10-28 07:26:59'),
(244, 23, 'Pull Reducer Rubber Body Trimmer', 'pull-reducer-rubber-body-trimmer', '<ul>\r\n<li>Contoured foam pedals and handles gives you blister proof workout</li>\r\n<li>&nbsp;</li>\r\n<li>Perfect for your gym at home</li>\r\n<li>&nbsp;</li>\r\n<li>Highly elastic body ideal for slimming and strengthening stomach, waist and legs</li>\r\n<li>&nbsp;</li>\r\n<li>Waist Reducer reduces your Waist and</li>\r\n<li>&nbsp;</li>\r\n<li>Strengthens Abdominal and Lower Back muscles</li>\r\n<li>&nbsp;</li>\r\n<li>Easy to use and carry makes it portable</li>\r\n</ul>', 750, 590, 'BS-210', 0, 0, 1, '2020-11-10 08:08:33', '2020-11-10 08:08:33'),
(245, 26, 'Rechargeble Nose & Hair Trimmer', 'rechargeble-nose-and-hair-trimmer', '<ul>\r\n<li>নাক, কান, ভ্রু, ঘাড় ও অন্যান্য স্থানের অতিরিক্ত/ অবাঞ্চিত লোম ট্রিম করার জন্য জার্মান প্রযুক্তিতে তৈরি ট্রিমিং মেশিন</li>\r\n<li>1 AAA ব্যাটারিতে চলে</li>\r\n<li>2 টা ব্রাশ আসে সাথে</li>\r\n<li>স্টাইলিশ ডিজাইন</li>\r\n<li>মেইড ইন চায়না</li>\r\n</ul>', 990, 890, 'BS-211', 0, 0, 1, '2020-11-10 08:29:41', '2020-11-10 08:29:41'),
(246, 26, '2 In 1 Nose & Ear Hair Trimmer', '2-in-1-nose-and-ear-hair-trimmer', '<ul>\r\n<li>1.1 x Nose trimmer</li>\r\n<li>2.1 x Sideburn trimmer</li>\r\n<li>3.1 x Cleaning brush</li>\r\n<li>4.1 x Cable line</li>\r\n<li>5.1 x User manual</li>\r\n</ul>', 900, 850, 'BS-212', 0, 0, 1, '2020-11-10 08:32:56', '2020-11-10 08:32:56'),
(247, 23, '11 in 1 Vagetable Cutter', '11-in-1-vagetable-cutter', '<div class=\"_xlr\">\r\n<div id=\"id_5faaa853840c43780306323\" class=\"text_exposed_root text_exposed\"><span class=\"text_exposed_show\">★ Vegetable Cutter with Drain Basket<br />★ সরাসরি পাত্রের উপরই কাটা ও ধোয়া যায়।<br />★ আলু,টমেটো,পেঁয়াজ,গাজর,শসাস<wbr />হ যেকোন সবজি কাটা যায়।<br />★ বিভিন্ন সাইজে কাটার জন্য কয়েকটি কাটার দেওয়া আছে।<br />★ সবজির চামড়া ছাড়ানোর জন্য ১ টি পিলারও দেওয়া আছে।<br />★ চাল-ডাল,ফলমূল বা শাক-সবজি খুব সহজেই ধোয়া যায়।<br />★ সালাদ তৈরির জন্য এটি খুবই প্রয়োজনীয়।<br />★ এটি ব্যবহার ও পরিষ্কার করা খুবই সহজ।<br />★ Safty Guard থাকায় হাত কাটার সম্ভাবনা নাই।<br />★ ব্লেডগুলো&nbsp;<a class=\"_58cn\" href=\"https://www.facebook.com/hashtag/stainless_steel?__eep__=6&amp;epa=HASHTAG\" data-ft=\"{&quot;type&quot;:104,&quot;tn&quot;:&quot;*N&quot;}\">#Stainless_Steel</a>&nbsp;হওয়ায় খুবই মজবুত।</span></div>\r\n<div id=\"fbPhotoSnowliftProductMiniListHscroll\" class=\"fbCommerceProductMiniListHscroll\"></div>\r\n<div id=\"fbPhotoSnowliftLegacyTagList\" class=\"pts fbPhotoLegacyTagList\">\r\n<div>&nbsp;</div>\r\n</div>\r\n<div id=\"fbPhotoSnowliftCallToActionButton\" class=\"fbPhotosPhotoButtons\"></div>\r\n<div id=\"fbPhotoSnowliftPhotoFundraiser\"></div>\r\n<div id=\"fbPhotoSnowliftOwnerButtons\" class=\"mvm fbPhotosPhotoOwnerButtons stat_elem\"></div>\r\n<div id=\"fbPhotoSnowliftOriginalStory\" class=\"_56lj\"></div>\r\n<div id=\"fbPhotoSnowliftComputerVisionAnnotation\" class=\"fbPhotosPhotoCVAnnotation\"></div>\r\n</div>\r\n<div id=\"fbPhotoSnowliftVideoFundraiser\"></div>\r\n<div id=\"fbPhotoSnowliftGeneric Inform Treatments\" class=\"_98zx\"></div>\r\n<div id=\"fbPhotoSnowliftViews\" class=\"_4p3v\"></div>\r\n<form id=\"u_7e_2\" class=\"fbPhotosSnowliftFeedbackForm commentable_item collapsible_comments\" action=\"https://www.facebook.com/ajax/ufi/modify.php\" method=\"post\" data-ft=\"{&quot;tn&quot;:&quot;]&quot;}\">\r\n<div id=\"fbPhotoSnowliftFeedback\" class=\"fbPhotosSnowliftFeedback\"></div>\r\n<div>\r\n<div>\r\n<div class=\"_6iji\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</form>', 1100, 950, 'BS-213', 0, 0, 1, '2020-11-10 08:52:17', '2020-11-10 08:52:17'),
(248, 23, 'Stainless Steel Electric Super Hand Mixer', 'stainless-steel-electric-super-hand-mixer', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">&nbsp;</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Category</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Shopee</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Home Appliances</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Small Kitchen Appliances</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Blender, Juicer, &amp; Mixer</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />BrandScarlett</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Stock15</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Ships From Barangay 184, Tondo I / Ii, Metro Manila, Metro Manila</div>\r\n</div>', 1800, 1700, 'BS-214', 0, 0, 1, '2020-11-10 09:01:10', '2020-11-10 09:01:10'),
(249, 23, '2 in 1 High Quality Vacuum Cleaner (JK-8)', '2-in-1-high-quality-vacuum-cleaner-jk-8', '<p>➥JK-8 1000W Bowling ভ্যাকুয়াম ক্লিনার<br />➥পাওয়ারঃ ১০০০ ওয়াট<br />➥মাল্টি-ফাংশন ব্যাক ব্লোয়ার ব্লো এবং সাকশন ফাংশন<br />➥Flexional হোস<br />➥Upholstery নজল ব্রাশসহ Crevice টুল<br />➥সহজে পরিষ্কার করা যায়<br />➥রিইউজেবল মজবুত ফিল্টার<br />➥বাড়ি, গাড়ি, ক্যারাভ্যান পরিষ্কারের জন্য আদর্শ</p>', 3650, 3350, 'BS-215', 0, 0, 1, '2020-11-10 11:21:47', '2020-11-10 11:21:47'),
(250, 23, 'Instant Water Hiter Geyser', 'instant-water-hiter-geyser', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">&gt;মাত্র ৫ সেকেন্ডে গরম পানি পাওয়া যাবে।<br />&gt;ইনস্টলেশন এবং পানি স্টোরেজ করার কোন ঝামেলা নেই।<br />&gt;বিদ্যুৎ খরচ কম হয়।<br />&gt;বৈদ্যুতিক শকের বা হিটিং এর কোনো ভয় নেই।<br />&gt;Type: Instant<br />&gt;Power Consumption: 3000 W<br />&gt;W x H: 13 x 26 cm<br />&gt;1Year Service Warranty।</div>\r\n</div>', 2750, 2400, 'BS-216', 0, 0, 1, '2020-11-11 01:40:00', '2020-11-11 09:39:57'),
(251, 27, 'JEEP Men’s West Bag', 'jeep-men’s-west-bag', '<div class=\"\" data-block=\"true\" data-editor=\"34av\" data-offset-key=\"5orau-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"5orau-0-0\"><span data-offset-key=\"5orau-0-0\">&gt; আধুনিক এবং স্টাইলিশ</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"34av\" data-offset-key=\"3hbdp-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"3hbdp-0-0\"><span data-offset-key=\"3hbdp-0-0\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"34av\" data-offset-key=\"aqlnr-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"aqlnr-0-0\"><span data-offset-key=\"aqlnr-0-0\">&gt;অরিজিনাল চায়না আর্র্টিফেসিয়াল লেদার</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"34av\" data-offset-key=\"5eclf-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"5eclf-0-0\"><span data-offset-key=\"5eclf-0-0\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"34av\" data-offset-key=\"2cjm2-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"2cjm2-0-0\"><span data-offset-key=\"2cjm2-0-0\">&gt; পকেট 4টি,কমরের সাইজ অনুযায়ী ছোট বড় করতে পারবেন।</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"34av\" data-offset-key=\"ar4k2-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"ar4k2-0-0\"><span data-offset-key=\"ar4k2-0-0\">&nbsp;</span></div>\r\n</div>\r\n<div class=\"\" data-block=\"true\" data-editor=\"34av\" data-offset-key=\"967cm-0-0\">\r\n<div class=\"_1mf _1mj\" data-offset-key=\"967cm-0-0\"><span data-offset-key=\"967cm-0-0\">&gt; 1বছরের ওয়ারেন্টি</span></div>\r\n</div>', 690, 550, 'BS-217', 0, 0, 1, '2020-11-11 01:47:35', '2020-11-11 01:47:35'),
(252, 32, 'Fashionable Women Bracelet Watch DUOYA', 'fashionable-women-bracelet-watch-duoya', '<ul>\r\n<li>Brand: DUOYA</li>\r\n<li>Item Type: Bracelet Watch</li>\r\n<li>Movement: Quartz</li>\r\n<li>Case Shape: Round</li>\r\n<li>Dial Window Material: Glass</li>\r\n<li>Band Material: Leather</li>\r\n<li>Clasp Type: Leather Deployment Bucket</li>\r\n<li>Style: Fashion,Casual</li>\r\n<li>Gender: Female</li>\r\n<li>Dial Display: Analog</li>\r\n<li>Water Resistance: Life Waterproof,not for shower,swim and dive.</li>\r\n<li>Features: Time Display</li>\r\n<li>Dial Diameter: 27mm</li>\r\n<li>Case Thickness: 6mm</li>\r\n<li>Band Width: 6mm</li>\r\n<li>Band Length: 540mm</li>\r\n<li>Battery Type: AG4</li>\r\n<li>Package Included: 1 x DUOYA Watch</li>\r\n</ul>', 800, 750, 'BS-218', 0, 0, 1, '2020-11-12 07:52:41', '2020-11-12 07:52:41');
INSERT INTO `products` (`id`, `brand_id`, `name`, `slug`, `description`, `price`, `selling_price`, `sku`, `should_track`, `stock_count`, `is_active`, `created_at`, `updated_at`) VALUES
(253, 32, 'Fashionable Women Bracelet Watch DUOYA', 'fashionable-women bracelet watch duoya', '<div class=\"panel panel-info\">\r\n<div class=\"panel-body\">\r\n<div class=\"row\">\r\n<div class=\" col-lg-12 col-sm-12 brand text-center\">\r\n<div id=\"my-tab-content\" class=\"tab-content\">\r\n<div id=\"course-detail797\" class=\"tab-pane active\">\r\n<div class=\"tab-content panel-body\">\r\n<div class=\"tab-content panel-body\">\r\n<div class=\"col-sm-6 text-left product-dynamic-details\">\r\n<ul>\r\n<li>Brand: DUOYA</li>\r\n<li>Item Type: Bracelet Watch</li>\r\n<li>Movement: Quartz</li>\r\n<li>Case Shape: Round</li>\r\n<li>Dial Window Material: Glass</li>\r\n<li>Band Material: Leather</li>\r\n<li>Clasp Type: Leather Deployment Bucket</li>\r\n<li>Style: Fashion,Casual</li>\r\n<li>Gender: Female</li>\r\n<li>Dial Display: Analog</li>\r\n<li>Water Resistance: Life Waterproof,not for shower,swim and dive.</li>\r\n<li>Features: Time Display</li>\r\n<li>Dial Diameter: 27mm</li>\r\n<li>Case Thickness: 6mm</li>\r\n<li>Band Width: 6mm</li>\r\n<li>Band Length: 540mm</li>\r\n<li>Battery Type: AG4</li>\r\n<li>Package Included: 1 x DUOYA Watch</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"panel panel-info\">\r\n<div class=\"panel-heading\"><strong>&nbsp;Delivery and Payment</strong></div>\r\n</div>', 800, 750, 'BS-219', 0, 0, 1, '2020-11-12 08:02:09', '2020-11-12 08:02:09'),
(254, 32, 'Fashionable Women Bracelet Watch DUOYA', 'fashionable-women bracelet watch duoya 01', '<div class=\"panel panel-info\">\r\n<div class=\"panel-body\">\r\n<div class=\"row\">\r\n<div class=\" col-lg-12 col-sm-12 brand text-center\">\r\n<div id=\"my-tab-content\" class=\"tab-content\">\r\n<div id=\"course-detail797\" class=\"tab-pane active\">\r\n<div class=\"tab-content panel-body\">\r\n<div class=\"tab-content panel-body\">\r\n<div class=\"col-sm-6 text-left product-dynamic-details\">\r\n<ul>\r\n<li>Brand: DUOYA</li>\r\n<li>Item Type: Bracelet Watch</li>\r\n<li>Movement: Quartz</li>\r\n<li>Case Shape: Round</li>\r\n<li>Dial Window Material: Glass</li>\r\n<li>Band Material: Leather</li>\r\n<li>Clasp Type: Leather Deployment Bucket</li>\r\n<li>Style: Fashion,Casual</li>\r\n<li>Gender: Female</li>\r\n<li>Dial Display: Analog</li>\r\n<li>Water Resistance: Life Waterproof,not for shower,swim and dive.</li>\r\n<li>Features: Time Display</li>\r\n<li>Dial Diameter: 27mm</li>\r\n<li>Case Thickness: 6mm</li>\r\n<li>Band Width: 6mm</li>\r\n<li>Band Length: 540mm</li>\r\n<li>Battery Type: AG4</li>\r\n<li>Package Included: 1 x DUOYA Watch</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"panel panel-info\">\r\n<div class=\"panel-heading\"><strong>&nbsp;Delivery and Payment</strong></div>\r\n</div>', 800, 750, 'BS-220', 0, 0, 1, '2020-11-12 08:05:04', '2020-11-12 08:05:04'),
(255, 32, 'Fashionable Women Bracelet Watch DUOYA', 'fashionable-women-bracelet watch duoya', '<ul>\r\n<li>Brand: DUOYA</li>\r\n<li>Item Type: Bracelet Watch</li>\r\n<li>Movement: Quartz</li>\r\n<li>Case Shape: Round</li>\r\n<li>Dial Window Material: Glass</li>\r\n<li>Band Material: Leather</li>\r\n<li>Clasp Type: Leather Deployment Bucket</li>\r\n<li>Style: Fashion,Casual</li>\r\n<li>Gender: Female</li>\r\n<li>Dial Display: Analog</li>\r\n<li>Water Resistance: Life Waterproof,not for shower,swim and dive.</li>\r\n<li>Features: Time Display</li>\r\n<li>Dial Diameter: 27mm</li>\r\n<li>Case Thickness: 6mm</li>\r\n<li>Band Width: 6mm</li>\r\n<li>Band Length: 540mm</li>\r\n<li>Battery Type: AG4</li>\r\n<li>Package Included: 1 x DUOYA Watch</li>\r\n</ul>', 800, 750, 'BS-221', 0, 0, 1, '2020-11-12 08:07:54', '2020-11-12 08:07:54'),
(256, 23, 'Facial Strimer Device', 'facial-strimer-device', '<p>&gt;বিশেষজ্ঞদের মতে গরম ভাপ নিলে আপনার করনার প্রাথমিক উপসর্গ দুর হয়ে যাবে।<br />&gt;তাই আমরা নিয়ে এলাম আপনার জন্য ইলেকট্রিক স্টিমার ডিভাইস।<br />&gt;দিনে ২/৩ তিন বার ব্যাবহার করলে ভাল ফলাফল পাবেন।<br />&gt;Cartshopper Benice Electric Home Use Beauty 3 In 1 Steam Sauna &gt;Vaporizer Facial Steamer Machine<br />&gt;BNS-016 Beauty Facial Steamer<br />&gt;Machine &ndash; White and Blue<br />&gt;Product Type: Beauty Facial Steamer Machine<br />&gt;Steam Duration: 15-20 minutes<br />&gt;Voltage (V): 220<br />&gt;Suitable for different skin, including oily skin, dry skin, sensitive skin, acne-prone skin<br />&gt;You can add aromatherapy, essential oils, herbs, spices, etc. with personal preferences<br />&gt;It can effectively delay aging, moisturizing, whitening, prevent acne, smooth airway</p>', 2100, 1590, 'BS-222', 0, 0, 1, '2020-11-16 01:58:57', '2020-11-18 12:19:49'),
(257, 23, 'Go Duster', 'go-duster', '<div class=\"product-detail-header\">&nbsp;</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\">&nbsp;</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />আপনার ঘরের যে কোন স্থানের ময়লা পরিস্কার করুন খুব সহজেই এবং দ্রুত ডাস্টারটি ৩৬০ ডিগ্রি তে ঘূর্ণায়ম্যান;</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ফলে খুব সহজেই যে কোন স্থানের ময়লা পরিস্কার করা যায়</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />৩ টি ডাস্টার যা সহজেই হ্যান্ডেল থেকে খুলে প্রয়োজন মত ব্যবহার করা যায়</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />৪ টি AA ব্যাটারি দ্বারা চালিত (সংযুক্ত নয়)</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ডায়মেনশন: 46 x 11 x 0.54 সে.মি প্যাকেজে আছে: ১টি লার্জ ডাস্টার, ১টি স্মল ডাস্টার, মোটরাইজড বেস ও ক্লিনজার বোতল</div>\r\n</div>', 990, 950, 'BS-223', 0, 0, 1, '2020-11-16 02:08:38', '2020-11-16 02:08:38'),
(258, 23, 'Mimo Body Massager', 'mimo-body-massager', '<div class=\"product-detail-header\">\r\n<div class=\"header-text-new\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />হেড, নেক, শোল্ডার, হিপ, চেষ্ট ও ফেসে ব্যবহার করা যায়</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;হাই পারফরম্যান্স ভাইব্রেটর</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;এটি আপনার শরীরের যে কোন স্থানের ব্যথাকে অল্প সময়ের মধ্যে দূর করবে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ব্যথাযুক্ত স্থানে চেপে ধরলে ভাইব্রেটর এর মাধ্যমে ব্যথা কমিয়ে আনবে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Ergonomic ডিজাইন UFO-আকৃতির চেহারা পাওয়ার মোড: ইলেকট্রিক বহনের জন্য সুবিধাজনক</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;আল্ট্রা কম্প্যাক্ট এবং হালকা ওজন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;USB ক্যাবল যুক্ত</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;৩টি AAA ব্যাটারী ব্যবহার করুন (ব্যাটারী সংযুক্ত নয়)</div>\r\n</div>', 450, 350, 'BS-224', 0, 0, 1, '2020-11-16 02:18:48', '2020-11-16 02:18:48'),
(259, 23, 'Flower Candy Box', 'flower-candy-box', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />মসলা ও ক্যান্ডি রাউটিং বক্স</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ছোট খাবারের সহজ 5 টি পৃথক বক্স ও মোবাইল স্ট্যান্ড খাকবে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ট্রে গুলো হাত দিয়ে ঘুরিয়ে খুলতে ও বন্ধ পারবেন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ট্রে গুলোতে 5 প্রকারের মসলা অথবা 5 প্রকারের খাবার রাখতে পারবেন</div>\r\n</div>', 850, 690, 'BS-225', 0, 0, 1, '2020-11-16 04:24:52', '2020-11-16 04:24:52'),
(260, 23, 'Floor Spary Mop', 'floor-spary-mop', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />হেলদি স্প্রে মপ</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ম্যাটেরিয়াল: প্লাস্টিক</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ক্যাপাসিটি স্ট্যান্ডার্ড</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />কালার: র&zwj;্যান্ডম</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ওজন : 739 গ্রাম</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />পণ্য ডাইমেনশন : 64 x 14.4 x 10 সেমি</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />হাই কোয়ালিটি</div>\r\n</div>\r\n</div>', 1700, 1450, 'BS-226', 0, 0, 1, '2020-11-16 04:27:43', '2020-11-16 04:27:43'),
(261, 23, 'Hurricane Scrubber Brush', 'hurricane-scrubber-brush', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-details-text\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Hurricane Spin Scrubber</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;3 scrubbing heads,</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />An AC adapter</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;An extension pole</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Flexible bristles get into cracks and crevices</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Cordless</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />For indoor/outdoor use</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />So you can effortlessly reach high places without straining.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1850, 1600, 'BS-227', 0, 0, 1, '2020-11-16 04:31:49', '2020-11-16 04:31:49'),
(262, 23, 'Mosquito Killer Lamp', 'mosquito-killer-lamp', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-details-text\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Electronic Mosquito Killer</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ইলেকট্রনিক Mosquito কিলার এর সাহায্যে এখন মশার হাত থেকে বাঁচুন,</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />মশা ছাড়াও অন্যান্য পোকামাকড় ধ্বংস করে,</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />কোনো রাসায়নিক ধোঁয়া বা গন্ধ নেই; তাই মানব শরীরের জন্য ক্ষতিকর নয়,</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />একটি শক্তিশালী আলোর সাহায্যে পতঙ্গকে আকৃষ্ট করে এবং ইলেক্ট্রিক Fan দিয়ে ধ্বংস করে দেয়।</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1200, 990, 'BS-228', 0, 0, 1, '2020-11-16 04:36:43', '2020-11-16 04:36:43'),
(263, 23, 'USB Lighter Watch', 'usb-lighter-watch', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-details-text\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />USB Lighter watch.............</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />100% original</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Product Specification----</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Net Weight: 100g.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Powered by a rechargeable battery, no gas/fuel is required.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Can use USB charging cycle.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Charging time is short (about 3-4 hours).</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Smoke-free environment.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Silent cigarette lighter.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Lights a cigarette in any weather.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Can be charged by using USB slot, and doesn&rsquo;t need fill any fuel into it.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Full Functional Wrist watch.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Perfect travel gadget.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Color: Black</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1400, 1100, 'BS-229', 0, 0, 1, '2020-11-16 04:40:03', '2020-11-16 04:40:03'),
(264, 23, 'Miss Belt', 'miss-belt', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-details-text\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\">\r\n<div class=\"product-details-text\">&gt;স্লিমিং বেল্ট বডি শেপার</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;দেহের অতিরিক্ত ওজন কমাতে ব্যবহার করুন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;সকলের মাঝে নিজেকে আকর্ষণীয় করে তুলতে ব্যবহার করুন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;পুরুষ/মহিলা সবাই ব্যবহার করতে পারেন</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 600, 550, 'BS-230', 0, 0, 1, '2020-11-16 04:45:36', '2020-11-16 04:45:36'),
(265, 23, 'Recharable Electric Drinking Water Pump', 'recharable-electric-drinking-water-pump', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />Material: ABS and Stainless Steel</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Charge: 3-4 hours</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Work: 9-12 bottles of water/ 30 Days.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Powered by bulit-in rechargeable battery, supports micro-USB cable for charging.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Strong ABS housing and safe 304 stainless steel spout, elegant and durble.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Easy to operate, just press the button and then hold cup waiting for drinking water.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Suitable for 4.5L,5L, 7.5L, 10L, 11.3L, 15L, 18.9L bottled water, easy to carry with.</div>\r\n</div>', 1300, 1100, 'BS-231', 0, 0, 1, '2020-11-16 05:11:43', '2020-11-16 05:11:43'),
(266, 23, 'Hot Water Tap With Shaower', 'hot-water-tap-with-shaower', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;water in 3 seconds</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Bathroom and sink fitting</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Low power consumption</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Easy installation</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Hot and tasty hot water like demand</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Interesting designs</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Kitchens can be used in sinks and bathrooms</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Temperatures: 30 - 60 &deg; C</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;Voltage: 220V</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />t is really great for washing pots &amp; pans &amp; dishes or whatever with hot water in kitchen sink.It is easier with hot water that comes instantly for oily stuff.Plus with a shower head you can install it in bathroom as a shower.This appliance is about less than half the cost of an instant hot water for bathroom.</div>\r\n</div>', 3400, 2800, 'BS-232', 0, 0, 1, '2020-11-16 05:18:05', '2020-11-16 05:18:05'),
(267, 23, 'Osaka Single Electric Chula', 'osaka-single-electric-chula', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&gt;&gt; সিঙ্গেল বার্নার</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&gt;&gt; কালারঃ ব্ল্যাক</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&gt;&gt; ডায়মেনশনঃ 8\" W x 8\" D</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&gt;&gt; কুকিং সার্ফেস ডায়ামিটারঃ 3.75\"</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&gt;&gt; ওজনঃ 4.5 lbs</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&gt;&gt; পাওয়ারঃ 1100W</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&gt;&gt; Brand: OSAKA</div>\r\n</div>', 1800, 1490, 'BS-233', 0, 0, 1, '2020-11-17 01:39:46', '2020-11-17 01:39:46'),
(268, 23, 'Adjustable Washing Machine Fridge Base', 'adjustable-washing-machine-fridge-base', '<p>Model: Extendable Washing-Refrigerator-Base<br />Height: 10 cm<br />Maximum load: 138kg<br />Maximum Stretton: 57cm x 57cm</p>\r\n<p>Smooth and firm, adjustable dimension and convenient movement</p>\r\n<p>Material: ABS, Stainless steel</p>\r\n<p>Color: black</p>', 1800, 1490, 'BS-234', 0, 0, 1, '2020-11-17 01:47:16', '2020-11-17 01:47:16'),
(269, 23, 'Travel Mini Portable folding  Iron', 'travel-mini-portable-folding-iron', '<ul>\r\n<li>আপনি নিখুঁত ভাবে খুব দ্রুত জামা কাপড় আয়রন করতে পারবেন।</li>\r\n<li>আপনি যেখানেই ভ্রমণ করবেন সেখানে নিয়ে যেতে পারবেন এই ট্রাভেল আয়রনটি ভাঁজ করে</li>\r\n<li>কলার, পকেট সহ সব জায়গায় নিখুঁত ভাবে আয়রন করতে পারবেন</li>\r\n<li>এখানে 6 টি নিয়মিত তাপমাত্রার নিদর্শন রয়েছে, যা বিভিন্ন কাপড় (পলিয়েস্টার, সিল্ক, উল, কটন, ডেনিম এবং লিনেন) অনুযায়ী ব্যবহার করা যায়।</li>\r\n<li>Material:&nbsp;Aluminum</li>\r\n<li>Volt: 60V-140V</li>\r\n<li>size:13*8.5*3.5cm</li>\r\n<li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.455529352mROzz\">No need for water.</li>\r\n<li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.455529352mROzz\">colour:black&nbsp;</li>\r\n<li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.455529352mROzz\">140 W (Heating)</li>\r\n<li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.455529352mROzz\">Heat Plate Size : 30.79 cm</li>\r\n<li class=\"\" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.455529352mROzz\">Weight :0.35 kg</li>\r\n</ul>', 1100, 990, 'BS-236', 0, 0, 1, '2020-11-17 03:34:00', '2020-11-17 03:34:00'),
(270, 23, 'New Bath Towel Fashion Lady Girl', 'new-bath-towel-fashion-lady-girl', '<ul>\r\n<li>গোসলের পর শরীর এবং মাথার চুল শুকানোর মুহূর্তটাকে আরও আরামদায়ক-প্রাণবন্ত করতে অনন্য এক নাম \'</li>\r\n<li>Women Bath Skirt Towel</li>\r\n</ul>\r\n<ul>\r\n<li dir=\"auto\">\r\n<div dir=\"auto\">যারা শরীরে লোশন ব্যবহারের সমস্যায় পড়েন, তাদের জন্যও চমৎকার সল্যুশন পাচ্ছেন আকর্ষণীয় ডিজাইনে।</div>\r\n</li>\r\n</ul>', 750, 650, 'BS-237', 0, 0, 1, '2020-11-17 03:41:28', '2020-11-17 03:41:28'),
(271, 23, 'Hair Dryer Cap and Women Bath Skirt Towel', 'hair-dryer-cap-and-women-bath-skirt-towel', '<ul>\r\n<li>গোসলের পর শরীর এবং মাথার চুল শুকানোর মুহূর্তটাকে আরও আরামদায়ক-প্রাণবন্ত করতে অনন্য এক নাম \'\'Hair Dryer Cap &amp; Women Bath Skirt Towel</li>\r\n</ul>\r\n<ul>\r\n<li dir=\"auto\">\r\n<div dir=\"auto\">যারা শরীরে লোশন ব্যবহারের সমস্যায় পড়েন, তাদের জন্যও চমৎকার সল্যুশন পাচ্ছেন আকর্ষণীয় ডিজাইনে।</div>\r\n</li>\r\n</ul>', 1100, 890, 'BS-238', 0, 0, 1, '2020-11-17 03:45:37', '2020-11-17 03:45:37'),
(272, 26, 'Flawless Facial Hair Remover', 'flawless-facial-hair-remover', '<ul>\r\n<li>&nbsp;মুখ মন্ডলের অবাঞ্চিত লোম পরিষ্কার করতে পারেন ।</li>\r\n<li><span class=\"text_exposed_show\">&nbsp;ভেতরে লাইট থাকায় একটি লোম কাটতে সুবিধা ।</span></li>\r\n<li><span class=\"text_exposed_show\">হাতের মুঠোয় ধরে ব্যাবহার করতে পারবেন ।</span></li>\r\n<li><span class=\"text_exposed_show\">&nbsp;সব মহিলাদের জন্য উপযুক্ত।</span></li>\r\n<li><span class=\"text_exposed_show\">ব্যবহারে আপনি পাবেন নিখুঁত এবং দীর্ঘস্থায়ী মসৃণতা ।</span></li>\r\n<li><span class=\"text_exposed_show\">ব্যাটারি চালিত ( ব্যাটারি সংযুক্ত নয় )&nbsp;</span></li>\r\n</ul>', 700, 620, 'BS-239', 0, 0, 1, '2020-11-17 03:58:14', '2020-11-17 03:58:14'),
(273, 23, 'Fast hair dryer towel', 'fast-hair-dryer-towel', '<p>ম্যাজিক ফাস্ট হেয়ার ড্রায় ওয়ার ক্যাপ<br />মাএ 3/4 মিনিটের মধ্যেই আপনার ভেজা চুল শুকানোর জন্য ( বাংলার ফ্যাশন ঘর) বাজারে নিয়ে আসলো সুলভ মূল্যে<br />নরম কাপড়ের তৈরী।<br />সহজেই ধৌত করা যায় ।</p>', 450, 350, 'BS-240', 0, 0, 1, '2020-11-17 04:03:27', '2020-11-17 04:03:27'),
(274, 23, 'Simply Hair Straightener Brush', 'simply-hair-straightener-brush', '<p><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />আপনার কুকড়ানো চুল সোজা করতে পারবেন ।<br /><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />সহজেই ব্যাবহার করতে পারবেন ।<span class=\"text_exposed_show\"><br /><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />সব ধরনের চুলের জন্য উপযোগী ।<br /><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />দ্রুত,নিরাপদ এবং সহজ ।</span></p>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ম্যাক্সিমাম টেম্পারেচার: সর্বোচ্চ 240&deg;, সর্বনিম্ন 120&deg;</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;পাওয়ার সোর্স: ইলেকট্রিক</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />থার্মোস্ট্যাট অ্যাডজাস্টমেন্ট সেগমেন্ট: 6</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ডায়ামিটার অফ থার্মাল কন্ডাক্টর: Less than15 mm</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ভোল্টেজ: 210-240V</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />চুল স্ট্রেইট করার জন্য ব্যবহার করুন</div>', 1100, 990, 'BS-241', 0, 0, 1, '2020-11-17 04:14:01', '2020-11-17 04:14:01'),
(275, 23, 'Slim-Body-Natural-Bamboo', 'slim-body-natural-bamboo', '<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />বডি স্লিমিং ভেস্ট</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;দেহের অতিরিক্ত ওজন কন্ট্রোল করতে ব্যবহার করুন</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;সকলের মাঝে নিজেকে আকর্ষণীয় করে তুলতে ব্যবহার করুন ন্যাচারাল ব্যাম্বো লেডিজ Slim n Lift ভেষ্ট</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;হাই কোয়ালিটি ম্যাটেরিয়ালে তৈরি</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;স্মার্ট লুকের জন্য</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ফ্রি সাইজ</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ম্যাটেরিয়াল: ব্যাম্বু, কার্বন ফাইবার ও লিক্রা</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ব্যবহার করুন, স্মার্ট লুকের জন্য</div>', 1390, 1250, 'BS-242', 0, 0, 1, '2020-11-17 04:23:38', '2020-11-17 04:23:38'),
(276, 23, 'Munafi Slimming Shaper', 'munafi-slimming-shaper', '<div class=\"product-details-text\">\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />MUNAFIE ওয়েস্ট স্লিমিং প্যান্ট</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;১ পিস</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ফেব্রিক: 100% নায়লন/স্প্যান্ডেক্স</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ফেব্রিকেশন:70 GSM</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;সাইজ: ফ্রি</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;ওয়েস্ট স্লিম দেখাতে সাহায্য করে</div>\r\n</div>\r\n</div>', 650, 490, 'BS-243', 0, 0, 1, '2020-11-17 04:27:54', '2020-11-17 04:27:54'),
(277, 23, 'Mini Future Car copy', 'mini-future-car-copy', '<p>&gt;খেলনাটি আধুনিক ডিজাইনের অত্যন্ত চমৎকার<br />&gt;অটোমেটিক গাড়ী,<br />&gt;সুইচ অন করে দিলে চলতে থাকে<br />&gt;কোথাও ধাক্কা খেলে ব্যাক করে আসে,<br />&gt;3D লাইট গ্লো করে, সেই সাথে মিউজিক হয়।<br />&gt;চার্জ খুবই কম লাগে,<br />&gt;৩টি পেন্সিল ব্যাটারিতে চলে (3টি ব্যাটারী ফ্রি )।<br />&gt;Made in China.<br />&gt;খেলনাটি 3+ year বেবীদের জন্য উপযুক্ত।<br />&gt;খেলনাটির সাইজ 12x9x9cm.</p>', 550, 490, 'BS-244', 0, 0, 1, '2020-11-17 04:35:35', '2020-11-17 04:35:35'),
(278, 23, 'Flying-Fairy-Doll', 'flying-fairy-doll', '<div class=\"product-detail-header\">&nbsp;</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />চমৎকার পিঙ্ক ও পার্পল ফেয়রী ড্রেস পরা এই খেলনা পুতুলটির পিঠে একজোড়া</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />ডানা রয়েছে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />সুইচ টিপলেই পুতুলটি ডানা ঝাপটাবে ও বাতাসে ভেসে বেড়াবে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />হাতের তালুর ভঙ্গীর মাধ্যমে এর গতিবিধি নিয়ন্ত্রণ করা যায়</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />রিচার্জেবল ব্যাটারি</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />চার্জিং টাইম: ৪০ মিনিট (৮-১০ মিনিট ফ্লাইং টাইমের জন্য)</div>\r\n</div>', 1100, 950, 'BS-245', 0, 0, 1, '2020-11-17 04:39:00', '2020-11-17 04:39:00'),
(279, 23, 'Evita Sliming Belt for Woman', 'evita-sliming-belt-for-woman', '<div class=\"product-details-text\">শরীরের ওজন বেড়ে গেছে???</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />আপনি খুব চিন্তিত!!</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />আপনার জন্য Evita Bradex Tourmaline Slimming Undergarment Set For Women.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />স্লিমিং ভেস্ট ফর উইমেন.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এটি ব্যবহার করে নিজেকে দেখুন মনে হবে ৫ বা ১০ পাউন্ড কমে গেছে.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />নিজেকে লাগবে আরও আকর্ষণীয়.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এটি ব্যবহারে ফলে অতিরিক্ত মেদ/ভুঁড়ি বাইরে থেকে বোঝা যায়না. উন্নত মানের কাপড়ের,তাই অনেকদিন ব্যবহার করা যায়.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এটি সম্পূর্ণ এক্সটারনাল তাই কোন পার্শ্বপ্রতিক্রিয়া নেই এটি. ব্যবহারের ফলে অনেক বেশি স্মার্ট ও লম্বা দেখায় এটি ফ্রী সাইজের হয়, তাই যে কোন শরীরেই মানানসই.</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />মেড ইন চায়না.</div>', 1450, 1390, 'BS-246', 0, 0, 1, '2020-11-17 05:39:55', '2020-11-17 05:39:55'),
(280, 23, 'KTS 1036 Bluetooth Speaker', 'kts-1036-bluetooth-speaker', '<p>Wireless transmission range up to 10m</p>\r\n<p>Speaker drive size: 3.5 inch</p>\r\n<p>Output power: 5w</p>\r\n<p>Frequency response: 100hz - 20khz</p>\r\n<p>Signal Noise ratio: &gt;=85db</p>\r\n<p>USB charging: DC5V</p>\r\n<p>Battery Capacity: 1200mah</p>\r\n<p>Can support SD card up to 32gb</p>\r\n<p>Charging time: 3 hrs</p>\r\n<p>&nbsp;</p>\r\n<p>Package included:</p>\r\n<p>1 x USB charging cable</p>', 1590, 1490, 'BS-247', 0, 0, 1, '2020-11-17 05:58:51', '2020-11-17 05:58:51'),
(281, 23, 'Room Heater', 'room-heater', '<div class=\"panel panel-info\">\r\n<div class=\"panel-body\">\r\n<div class=\"row\">\r\n<div class=\" col-lg-12 col-sm-12 brand text-center\">\r\n<div id=\"my-tab-content\" class=\"tab-content\">\r\n<div id=\"course-detail519\" class=\"tab-pane active\">\r\n<div class=\"tab-content panel-body\">\r\n<div class=\"tab-content panel-body\">\r\n<div class=\"col-sm-12 text-left product-dynamic-details\">\r\n<div class=\"product-details-text\">\r\n<div class=\"product-details-text\">\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><strong><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;রুম হিটার পাওয়ার: 2000W 2 টি হিট সেটিং</strong></div>\r\n<div class=\"product-details-text\"><strong><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />পাওয়ার ইনডিকেটর</strong></div>\r\n<div class=\"product-details-text\"><strong><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;কুল-টাচ হাউসিং</strong></div>\r\n<div class=\"product-details-text\"><strong><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;থার্মোস্টাট কন্ট্রোল</strong></div>\r\n<div class=\"product-details-text\"><strong><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;সেফটি সুইচথার্মাল কাট-অফ ডিভাইস</strong></div>\r\n<div class=\"product-details-text\"><strong><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;হাই কোয়ালিটি ব্র্যান্ড নিউ প্রোডাক্ট</strong></div>\r\n<div class=\"product-details-text\"><strong><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />&nbsp;লং লাইফ হিটিং ইলিমেন্ট</strong></div>\r\n</div>\r\n</div>\r\n<div class=\"product-details-text\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"panel panel-info\">\r\n<div class=\"panel-heading\"><strong>&nbsp;</strong></div>\r\n</div>', 1950, 1650, 'BS-248', 0, 0, 1, '2020-11-17 06:11:34', '2020-11-17 06:11:34'),
(282, 23, 'Spy Video Pan', 'spy-video-pan', '<div class=\"product-detail-header\">\r\n<div class=\"header-code-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />স্পাই ভিডিও পেন 32GBবল</div>\r\n</div>\r\n<div class=\"product-details-text-wrapper\">\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />পয়েন্টে USB ড্রাইভ একই সাথে লেখা যায়</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />LED ইন্ডিকেটররিয়েল টাইম ভিডিওতে টাইম ও ডেট দেখা যায়</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />লিথিয়াম ব্যাটারিতে চলে</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />এ্যাকসেসরিজ: ইউএসবি ক্যাবল - ১ টা</div>\r\n<div class=\"product-details-text\"><img src=\"https://static.ajkerdeal.com/images/dealdetailsnew/dealdetails_arrow.svg\" />রে্জ্যুলেশন- JPG format, 3264x2880 pixels pixels</div>\r\n</div>', 1850, 1490, 'BS-249', 0, 0, 1, '2020-11-18 08:25:25', '2020-11-18 08:25:25'),
(283, 23, '52 in 1 Multi Function Screwdriver Set', '52-in-1-multi-function-screwdriver-set', '<p>&gt;&gt; 52 In 1 মাল্টি ফাংশন হার্ডওয়ার টুলস হাই কোয়ালিটি প্রোডাক্ট<br />&gt;&gt; দৈনন্দিন জীবনে মোবাইল কম্পিউটার সহ টুকিটাকি অনেক কাজের</p>\r\n<p>&gt;&gt;ছোটো বড় নানান ধরনের স্ক্রু/ টুল খুলতে বা লাগাতে হতে পারে; তার জন্য দরকার একটি টুল বক্স<br />&gt;&gt; এই 52 in 1 টুল বক্সটি অনায়াসে আপনার কাজে সাহায্য করতে পারে, অফিস কিংবা বাসায় প্রয়োজনে নিজের কাজ টুকু সেরে নিতে রাখতে&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;পারেন এই টুল বক্স ব্যবহার করে</p>', 1100, 990, 'BS-250', 0, 0, 1, '2020-11-18 11:19:34', '2020-11-18 11:19:34'),
(284, 23, 'New Biker Hand Gloves', 'new-biker-hand-gloves', '<p>&gt; জেনুইন ডিউর&zwj;্যাবল ম্যাটেরিয়াল ডিজাইন<br />&gt; TPR ফিঙ্গার আরমর ফর কম্ফোরট্যাবিলিটি এন্ড ফ্লেক্সিবল প্রোটেকশন<br />&gt; আন ব্রেক্যাবল এঙ্কেল প্রোটেকশন<br />&gt; হিট এন্ড টিয়ার রেজিস্ট্যান্স<br />&gt; ওয়াটার ডার্ট এন্ড ওয়েল রেপিল্যান্ট<br />&gt; কালার: (1)কালো এবং (2) খাকী</p>', 650, 600, 'BS-251', 0, 0, 1, '2020-11-18 12:03:33', '2020-11-18 12:03:33'),
(285, 27, 'Jeep man\'s Cross body bag (1Pcs)', 'jeep man\'s cross body bag 1pcs', '<p>&gt; High-quality pu leather with smooth touch feeling, durable<br />&nbsp; &nbsp;in use.</p>\r\n<p>&gt;Adjustable nice shoulder straps,wear in 3 different styles.<br />&nbsp; Hand-carry it</p>\r\n<p>&gt; convenient opening ways including zipper and snap,<br />&nbsp; &nbsp;freely take out the things and ensure the security.</p>\r\n<p>&gt;main compartment, 2* zipper pocket outside , 1*zipper<br />&nbsp; pocket inside</p>\r\n<p>&gt;Colors: Black, Khaki</p>\r\n<p>&gt;Come with high quality wallet,the men&rsquo;s must-have items.</p>\r\n<p>&gt;High Quality Thick Top PU Leather.</p>', 1250, 1150, 'BS-255', 0, 0, 1, '2020-12-20 01:37:29', '2020-12-20 01:37:29'),
(286, 27, '3 in 1 Multi Function Messenger Bag', '3-in-1-multi-function-messenger-bag', '<p>বিস্তারিত&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br />&gt;এই ব্যাগটি উন্নত মানের চায়না আর্টিফেসিয়াল লেদারের তৈরী।<br />&gt;ব্যাগটি উন্নত মানের চায়না লেদার এবং এটি ওয়াটার প্রুভ।<br />&gt; অফিসিয়াল যাবতীয় কাগজ পত্র সহ &nbsp;গুরুত্বপূর্ণ ডুকোমেন্ট&nbsp;বহনযোগ্য।<br />&gt; দুরে কোথায় বেড়াতে &nbsp;গেলে প্রয়োজনীয় সবকিছু বহন করা যায়।<br />&gt; &nbsp;প্রয়োজনীয় ডূকোমেন্ট ছাড়াও,এই ব্যাগটিতে ল্যাপটোপ বহন করতে&nbsp;<br />&nbsp; পারবেন।<br />&gt; ল্যাপটোপ রাখার জন্য আলাদা ফোম এর জায়গা আছে(বেল্ট সংযুক্ত)<br />&gt; ব্যাগটি 3 টি কালার আছে-(1) চকলেট (2) কফি ও(3) কালো<br />&gt; 3 in 1 Multi- Function ব্যাগটি 1 বছরের ওয়ারেন্টি।</p>', 2400, 2250, 'BS-254', 0, 0, 1, '2021-01-18 06:44:05', '2021-01-18 06:44:05'),
(287, 27, '3 in 1 Multi Function Messenger Bag(Black)', '3-in-1-multi-function-messenger-bagblack', '<p>বিস্তারিত&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br />&gt;এই ব্যাগটি উন্নত মানের চায়না আর্টিফেসিয়াল লেদারের তৈরী।<br />&gt;ব্যাগটি উন্নত মানের চায়না লেদার এবং এটি ওয়াটার প্রুভ।<br />&gt; অফিসিয়াল যাবতীয় কাগজ পত্র সহ &nbsp;গুরুত্বপূর্ণ ডুকোমেন্ট&nbsp;<br />&nbsp; বহনযোগ্য।<br />&gt; দুরে কোথায় বেড়াতে &nbsp;গেলে প্রয়োজনীয় সবকিছু বহন করা যায়।<br />&gt; &nbsp;প্রয়োজনীয় ডূকোমেন্ট ছাড়াও,এই ব্যাগটিতে ল্যাপটোপ বহন করতে&nbsp;<br />&nbsp; পারবেন।<br />&gt; ল্যাপটোপ রাখার জন্য আলাদা ফোম এর জায়গা আছে(বেল্ট সংযুক্ত)<br />&gt; ব্যাগটি 3 টি কালার আছে-(1) চকলেট (2) কফি ও(3) কালো<br />&gt; 3 in 1 Multi- Function ব্যাগটির 1 বছরের ওয়ারেন্টি।</p>', 2400, 2250, 'BS-256', 0, 0, 1, '2021-01-18 06:49:43', '2021-01-18 06:49:43'),
(288, 27, 'Jeep man\'s Cross body bagpack (1Pcs)', 'jeep man\'s cross-body bagpack-1pcs', '<p>বিস্তারিত&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br />&gt;এই ব্যাগটি উন্নত মানের চায়না আর্টিফেসিয়াল লেদারের তৈরী,এবং এটি ওয়াটার প্রুভ।<br />&gt; যাবতীয় কাগজ পত্র সহ &nbsp;গুরুত্বপূর্ণ ডুকোমেন্ট বহনযোগ্য।<br />&gt; দুরে কোথায় বেড়াতে &nbsp;গেলে প্রয়োজনীয় সবকিছু বহন করা যায়।<br />&gt; ব্যাগটি 2 টি কালার আছে-(1) কফি ও (3) কালো<br />&gt; ডিজাইন এবং স্টাইলে আধুনীকতার শীর্ষে ।</p>\r\n<p>&nbsp;</p>', 1050, 950, 'BS-257', 0, 0, 1, '2021-01-18 08:27:53', '2021-01-18 08:27:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `settings`
--

TRUNCATE TABLE `settings`;
--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'logo', '{\"desktop\":\"\\/storage\\/27-Sep-2020\\/logo\\/1601219805-logo-text.png\",\"mobile\":\"\\/storage\\/18-Oct-2020\\/logo\\/1603014758-1601219805-logo-text.png\",\"favicon\":\"\\/storage\\/27-Sep-2020\\/logo\\/1601217670-bs-logo.png\"}', NULL, '2020-10-18 03:52:38'),
(2, 'company', '{\"name\":\"BsBazar BD\",\"email\":\"info@bsbazarbd.com\",\"phone\":\"01776934366\",\"tagline\":\"Best online shopping site in Bangladesh.\",\"address\":\"Mirpur-10, Dhaka-1216.\"}', NULL, '2020-10-13 07:07:14'),
(3, 'social', '{\"facebook\":{\"link\":\"https:\\/\\/facebook.com\\/cyber32.official\",\"display\":\"on\"},\"twitter\":{\"link\":null},\"instagram\":{\"link\":null,\"display\":\"on\"},\"youtube\":{\"link\":null,\"display\":\"on\"}}', NULL, NULL),
(4, 'related_products', '{\"rows\":\"50\",\"cols\":\"5\"}', NULL, '2020-10-13 07:07:14'),
(5, 'products_page', '{\"rows\":\"50\",\"cols\":\"5\"}', '2020-09-27 08:35:14', '2020-10-23 06:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mobile_src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desktop_src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_href` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
(16, '/storage/20-Oct-2020/slides/mobile/1603184708-Banner.jpg', '/storage/20-Oct-2020/slides/desktop/1603184708-Banner.jpg', NULL, NULL, 'Shop Now', 'https://cuba.cyber32.net/categories/home-appliance/products', 1, '2020-10-20 03:05:08', '2020-10-20 03:06:34'),
(17, '/storage/20-Oct-2020/slides/mobile/1603185038-Banner2.jpg', '/storage/20-Oct-2020/slides/desktop/1603185038-Banner2.jpg', NULL, NULL, 'Shop Now', 'https://cuba.cyber32.net/categories/home-appliance/products', 1, '2020-10-20 03:10:38', '2020-10-20 03:12:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'Sumon Ahmed', 'bdsumon4u@gmail.com', '+8801624093099', 'Nice Address, Dhaka-Tangail High-Way.', NULL, '$2y$10$IBnJYli1zESK0GAjE8V6ReB5eDlw3JoldSAfqIgMlZ6Nyks4k6wku', '9355GFrQrhGKHoshIXYZWgKCrIpkSME3PhSXFtA1ilNHuZKyw2jYTWGQGrOZ', '2020-09-16 07:05:21', '2020-09-23 06:05:50'),
(2, 'Dr. Hoyt Swift', 'user0@cyber32.com', '+8284405557371', '870 Meagan Lodge\nParkerburgh, OK 98621-9752', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dCx4XlQs0E8P2a7QgFEerD1gyaOjTIKW3OHmmZzQW0dJIOdm9eCL8RwGPbzU', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(3, 'Whitney Jaskolski', 'user1@cyber32.com', '+6114736143799', '3953 Bradtke Light Apt. 708\nWolffbury, TX 37243-1340', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W1WC5ZDwlS', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(4, 'Salma Johns', 'user2@cyber32.com', '+5828138264465', '214 Ila Crescent\nTillmanstad, ND 45961', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'E6IKGSFGok', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(5, 'Aniya Torp', 'user3@cyber32.com', '+6722316841353', '616 Lemke Radial\nWest Chaddbury, SD 56512-5450', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'z9wjQ806ac', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(6, 'Savanna Shields', 'user4@cyber32.com', '+6365616030349', '404 Upton Union Suite 405\nNorth Keaganton, MT 85410-0076', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mhGB3XiHgNJHhyf6ZXaJCYjc7ag2ZPoKsCTnRn6VnJdSfBHwbYHP0xx0nu5x', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(7, 'Chadrick Prohaska', 'user5@cyber32.com', '+1826255273666', '455 Elmer Brook Apt. 954\nNorth Jasper, NE 99385-3570', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '85XxV4E704', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(8, 'Alan Gerhold', 'user6@cyber32.com', '+7109764253315', '497 Dach Fall Apt. 991\nPort Hadley, UT 52406-5715', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jas2CvtVFU', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(9, 'Raina Murazik', 'user7@cyber32.com', '+7379862227119', '390 Ryan Spurs Suite 679\nNorth Augustusside, VA 16385', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vdlhR58C6l', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(10, 'Miss Liliana Collier DDS', 'user8@cyber32.com', '+2600241924929', '433 Tromp Groves Suite 613\nPorterland, AK 18103', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V5FnVa5dZA', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(11, 'Malvina Thiel', 'user9@cyber32.com', '+2008746452531', '963 Glover Isle Suite 911\nSouth Chetbury, ND 25023', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q7kjunPWr7HwqIesJO79sflN7aHs1swF4ifDTYYRsH0M7pKqatkI84Kyctun', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(12, 'Morris Ledner', 'user10@cyber32.com', '+4700685631036', '22417 Garret Vista Suite 724\nMaximilianfurt, MD 72158', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rMwBTwkLHQ', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(13, 'Jasmin Kutch', 'user11@cyber32.com', '+1354026212016', '1595 Bonnie Field\nNorth Jimmie, WY 07381', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IrRCGe2D4F', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(14, 'Prof. Chandler Corkery Sr.', 'user12@cyber32.com', '+5767822095430', '3210 Jacobs Course Suite 949\nGerholdstad, KS 09078', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sImcQrbbBz', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(15, 'Trace Okuneva', 'user13@cyber32.com', '+4919627302995', '13379 Consuelo Ranch\nNorth Kaleigh, HI 88595-0359', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NIq2WpHsw1', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(16, 'Marilyne Prosacco', 'user14@cyber32.com', '+4650685657305', '5830 Gislason Stravenue\nGoodwinborough, MD 09807-7776', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LN0B6K1c8V', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(17, 'Roscoe Gutmann MD', 'user15@cyber32.com', '+6438450734535', '53916 Mills Hills\nMuellerport, AL 41967', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3UYhwul9JF', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(18, 'Abelardo Cronin', 'user16@cyber32.com', '+7401318270912', '51801 Alverta Fields\nHipolitomouth, DC 23436-9178', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tUetSgVxsK', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(19, 'Eric Murray', 'user17@cyber32.com', '+3374696089538', '795 Chaim Burgs\nSouth Ursula, WA 28456-0794', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4v43zIhT0u', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(20, 'Clifton Buckridge PhD', 'user18@cyber32.com', '+1378613323105', '952 Sophia Union Apt. 622\nSouth Annamariehaven, DE 10083', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i2QCWyjr15', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(21, 'Yessenia Wiza', 'user19@cyber32.com', '+5911887348811', '776 Mozelle Stravenue Suite 468\nPort Edison, FL 37269-2018', '2020-09-23 10:49:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vAIDndEBTL', '2020-09-23 10:49:21', '2020-09-23 10:49:21'),
(22, 'Aponzon Dhaka', 'aponzondhaka@gmail.com', '+8801407500500', NULL, NULL, '$2y$10$aG4Z6GYdWfo6I2j1BFqlJuYY8n51QobfFABtDrHc6yqw/uEy42ZOa', NULL, '2020-12-30 09:51:44', '2020-12-30 09:51:44'),
(23, 'Noman', 'noman820043@gmail.com', '+8801700820043', NULL, NULL, '$2y$10$rgv7BZuI9zXyjfpwQPNUYOVurf6vWpqHJ5hujq1v1kzc8cfWnSEk6', NULL, '2021-01-21 02:20:48', '2021-01-21 02:20:48');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `category_home_section`
--
ALTER TABLE `category_home_section`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=704;

--
-- AUTO_INCREMENT for table `home_sections`
--
ALTER TABLE `home_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=648;

--
-- AUTO_INCREMENT for table `image_product`
--
ALTER TABLE `image_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1331;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
