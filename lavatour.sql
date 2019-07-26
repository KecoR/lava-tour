-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2019 at 12:25 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lavatour`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bagian_id` int(10) UNSIGNED NOT NULL,
  `hari_1` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_1` datetime DEFAULT NULL,
  `hari_2` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_2` datetime DEFAULT NULL,
  `hari_3` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_3` datetime DEFAULT NULL,
  `lava_tour` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_meja` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tlp` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `bagian_id`, `hari_1`, `time_1`, `hari_2`, `time_2`, `hari_3`, `time_3`, `lava_tour`, `created_at`, `updated_at`, `no_meja`, `email`, `tlp`) VALUES
(1, 'Prasetyadi', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:24:55', '2019-07-25 20:24:55', '0', NULL, NULL),
(2, 'Guna Mulyana', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:25:04', '2019-07-25 20:25:04', '0', NULL, NULL),
(3, 'Agung Fitrianto', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:25:13', '2019-07-25 20:25:13', '0', NULL, NULL),
(4, 'Chepy', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:25:20', '2019-07-25 20:25:20', '0', NULL, NULL),
(5, 'Maulana', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:25:27', '2019-07-25 20:25:27', '0', NULL, NULL),
(6, 'Rahma', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:25:34', '2019-07-25 20:25:34', '0', NULL, NULL),
(7, 'Meilinda', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:25:42', '2019-07-25 20:25:42', '0', NULL, NULL),
(8, 'Imam R', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:25:48', '2019-07-25 20:25:48', '0', NULL, NULL),
(9, 'Hermana', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:25:54', '2019-07-25 20:25:54', '0', NULL, NULL),
(10, 'Didi', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:26:00', '2019-07-25 20:26:00', '0', NULL, NULL),
(11, 'Fendy', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:26:08', '2019-07-25 20:26:08', '0', NULL, NULL),
(12, 'Sofwan', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:26:17', '2019-07-25 20:26:17', '0', NULL, NULL),
(13, 'Nubhan', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:26:23', '2019-07-25 20:26:23', '0', NULL, NULL),
(14, 'Dimas', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:26:29', NULL, NULL, NULL, NULL),
(15, 'Bakti', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:26:35', '2019-07-25 20:26:35', '0', NULL, NULL),
(16, 'Idham', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:26:41', '2019-07-25 20:26:41', '0', NULL, NULL),
(17, 'Nurma', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:26:49', '2019-07-25 20:26:49', '0', NULL, NULL),
(18, 'Bambang', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:26:57', '2019-07-25 20:26:57', '0', NULL, NULL),
(19, 'Peni', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:27:03', '2019-07-25 20:27:03', '0', NULL, NULL),
(20, 'Resa', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:27:09', NULL, NULL, NULL, NULL),
(21, 'Nunu', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:27:18', '2019-07-25 20:27:18', '0', NULL, NULL),
(22, 'R. Mulyadi', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:27:24', '2019-07-25 20:27:24', '0', NULL, NULL),
(23, 'Syafaruddin Jamil', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:27:32', '2019-07-25 20:27:32', '0', NULL, NULL),
(24, 'Feri WIbowo', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:27:38', '2019-07-25 20:27:38', '0', NULL, NULL),
(25, 'Dendi Setyowibowo', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:27:45', '2019-07-25 20:27:45', '0', NULL, NULL),
(26, 'Luqman Muttaqin', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:27:52', '2019-07-25 20:27:52', '0', NULL, NULL),
(27, 'Donald', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:27:58', '2019-07-25 20:27:58', '0', NULL, NULL),
(28, 'Rizki Reynaldo', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:28:05', '2019-07-25 20:28:05', '0', NULL, NULL),
(29, 'Fauziazzuhry Rahadian', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:28:13', '2019-07-25 20:28:13', '0', NULL, NULL),
(30, 'Ibnu Alam', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:28:19', '2019-07-25 20:28:19', '0', NULL, NULL),
(31, 'Bombom', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:28:26', '2019-07-25 20:28:26', '0', NULL, NULL),
(32, 'Ryan Permana', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:28:32', '2019-07-25 20:28:32', '0', NULL, NULL),
(33, 'Vega', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:28:42', '2019-07-25 20:28:42', '0', NULL, NULL),
(34, 'Wawan Pujianto', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:28:48', '2019-07-25 20:28:48', '0', NULL, NULL),
(35, 'Adi P', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:28:55', '2019-07-25 20:28:55', '0', NULL, NULL),
(36, 'Ludfi', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:29:02', '2019-07-25 20:29:02', '0', NULL, NULL),
(37, 'Resky', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:29:09', '2019-07-25 20:29:09', '0', NULL, NULL),
(38, 'Rio Lasse', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:29:16', '2019-07-25 20:29:16', '0', NULL, NULL),
(39, 'Bobby', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:29:22', '2019-07-25 20:29:22', '0', NULL, NULL),
(40, 'Diko', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:29:30', '2019-07-25 20:29:30', '0', NULL, NULL),
(41, 'Budi Pratomo', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:29:37', '2019-07-25 20:29:37', '0', NULL, NULL),
(42, 'Mujianto', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:29:43', '2019-07-25 20:29:43', '0', NULL, NULL),
(43, 'Juli Tarigan', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:29:49', '2019-07-25 20:29:49', '0', NULL, NULL),
(44, 'Riawan Raden', 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:29:56', '2019-07-25 20:29:56', '0', NULL, NULL),
(45, 'Suparjo', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:30:02', '2019-07-25 20:30:02', '0', NULL, NULL),
(46, 'Budi Utoyo', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:30:47', '2019-07-25 20:30:47', '0', NULL, NULL),
(47, 'Teddy Gunawan', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:31:11', '2019-07-25 20:31:11', '0', NULL, NULL),
(48, 'Yulius Nurdin', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:31:23', '2019-07-25 20:31:23', '0', NULL, NULL),
(49, 'Sukaca', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:31:33', '2019-07-25 20:31:33', '0', NULL, NULL),
(50, 'Riswanto', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:31:47', '2019-07-25 20:31:47', '0', NULL, NULL),
(51, 'Nurhakim', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:31:54', '2019-07-25 20:31:54', '0', NULL, NULL),
(52, 'Edy Sofyan', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:32:04', '2019-07-25 20:32:04', '0', NULL, NULL),
(53, 'Drajat Sulistyo', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:32:12', '2019-07-25 20:32:12', '0', NULL, NULL),
(54, 'Agus Edi Santoso', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:32:33', '2019-07-25 20:32:33', '0', NULL, NULL),
(55, 'Adi Sugiri', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:32:41', '2019-07-25 20:32:41', '0', NULL, NULL),
(56, 'Afif Somadi', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:32:48', '2019-07-25 20:32:48', '0', NULL, NULL),
(57, 'Amin Agung', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:32:56', '2019-07-25 20:32:56', '0', NULL, NULL),
(58, 'Mustafa', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:33:04', '2019-07-25 20:33:04', '0', NULL, NULL),
(59, 'Anton Wisnu Prabowo', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:33:21', '2019-07-25 20:33:21', '0', NULL, NULL),
(60, 'Wardoyo', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:33:29', '2019-07-25 20:33:29', '0', NULL, NULL),
(61, 'Irwan ST', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:33:37', '2019-07-25 20:33:37', '0', NULL, NULL),
(62, 'Aria Ruvino', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:33:43', '2019-07-25 20:33:43', '0', NULL, NULL),
(63, 'Santoso', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:33:51', '2019-07-25 20:33:51', '0', NULL, NULL),
(64, 'Meirisal Dwi Waldi', 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:33:58', '2019-07-25 20:33:58', '0', NULL, NULL),
(65, 'Udin Mahmudin', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:34:07', '2019-07-25 20:34:07', '0', NULL, NULL),
(66, 'Deni Nurjaman', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:34:15', '2019-07-25 20:34:15', '0', NULL, NULL),
(67, 'Agus Hendrianto', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:34:21', '2019-07-25 20:34:21', '0', NULL, NULL),
(68, 'Hadi Nurmayadi', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:34:27', '2019-07-25 20:34:27', '0', NULL, NULL),
(69, 'MIftah Fajrisal', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:34:33', '2019-07-25 20:34:33', '0', NULL, NULL),
(70, 'Joehanes W', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:34:40', '2019-07-25 20:34:40', '0', NULL, NULL),
(71, 'Efri Budi Ismaya', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:34:46', '2019-07-25 20:34:46', '0', NULL, NULL),
(72, 'Rizwan Nasution', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:34:51', '2019-07-25 20:34:51', '0', NULL, NULL),
(73, 'Reini Delfianti', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:35:00', '2019-07-25 20:35:00', '0', NULL, NULL),
(74, 'Hery Irwana', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:35:06', '2019-07-25 20:35:06', '0', NULL, NULL),
(75, 'Felencia Novita Gasperz', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:35:14', '2019-07-25 20:35:14', '0', NULL, NULL),
(76, 'Indri Andriani', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:35:22', '2019-07-25 20:35:22', '0', NULL, NULL),
(77, 'Sandha Trisharjantho', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:35:28', '2019-07-25 20:35:28', '0', NULL, NULL),
(78, 'Aan Sukwinandi', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:35:39', '2019-07-25 20:35:39', '0', NULL, NULL),
(79, 'Fredy Angriawan', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:35:47', '2019-07-25 20:35:47', '0', NULL, NULL),
(80, 'Nurkholis Lukman', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:35:53', '2019-07-25 20:35:53', '0', NULL, NULL),
(81, 'Frenda', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:36:00', '2019-07-25 20:36:00', '0', NULL, NULL),
(82, 'Nugroho Iwan', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:36:09', '2019-07-25 20:36:09', '0', NULL, NULL),
(83, 'Nosep', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:36:15', '2019-07-25 20:36:15', '0', NULL, NULL),
(84, 'Taufiq', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:36:21', '2019-07-25 20:36:21', '0', NULL, NULL),
(85, 'Yossianis', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:36:27', '2019-07-25 20:36:27', '0', NULL, NULL),
(86, 'Muqham Elsafad', 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:36:32', '2019-07-25 20:36:32', '0', NULL, NULL),
(87, 'Andi Isnov', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:36:49', '2019-07-25 20:36:49', '0', NULL, NULL),
(88, 'Agoes Soeryanto', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:37:16', '2019-07-25 20:37:16', '0', NULL, NULL),
(89, 'Dicky santosa', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:37:27', '2019-07-25 20:37:27', '0', NULL, NULL),
(90, 'M. Adji', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:37:34', '2019-07-25 20:37:34', '0', NULL, NULL),
(91, 'Arif', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:37:41', '2019-07-25 20:37:41', '0', NULL, NULL),
(92, 'Sarkani', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:37:47', '2019-07-25 20:37:47', '0', NULL, NULL),
(93, 'Dadan', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:37:54', '2019-07-25 20:37:54', '0', NULL, NULL),
(94, 'Deto', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:38:02', '2019-07-25 20:38:02', '0', NULL, NULL),
(95, 'Gunta Prabawa', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:38:12', '2019-07-25 20:38:12', '0', NULL, NULL),
(96, 'Budi Cahyono', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:38:19', '2019-07-25 20:38:19', '0', NULL, NULL),
(97, 'Thava Palasanthiran', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:38:42', '2019-07-25 20:38:42', '0', NULL, NULL),
(98, 'Ario Alieth', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:38:49', '2019-07-25 20:38:49', '0', NULL, NULL),
(99, 'Sigit Suparto', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:38:57', '2019-07-25 20:38:57', '0', NULL, NULL),
(100, 'Aries Sulistyo', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:39:03', '2019-07-25 20:39:03', '0', NULL, NULL),
(101, 'Yogi Jembar Nugraha', 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:39:09', '2019-07-25 20:39:09', '0', NULL, NULL),
(102, 'Bisma', 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:39:16', '2019-07-25 20:39:16', '0', NULL, NULL),
(103, 'Ade Hartono', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:39:26', '2019-07-25 20:39:26', '0', NULL, NULL),
(104, 'Chang Ho Song', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:39:35', '2019-07-25 20:39:35', '0', NULL, NULL),
(105, 'Paulus Cahyandaru', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:39:42', '2019-07-25 20:39:42', '0', NULL, NULL),
(106, 'Judi Ginta Irawan', 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:39:48', '2019-07-25 20:39:48', '0', NULL, NULL),
(107, 'Syaiful Amin', 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:40:03', '2019-07-25 20:40:03', '0', NULL, NULL),
(108, 'Helmi', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:40:12', '2019-07-25 20:40:12', '0', NULL, NULL),
(109, 'Budi Setiawan', 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:40:18', '2019-07-25 20:40:18', '0', NULL, NULL),
(110, 'David P Sirait', 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:40:29', '2019-07-25 20:40:29', '0', NULL, NULL),
(111, 'Dawam Atmosudiro', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:40:36', '2019-07-25 20:40:36', '0', NULL, NULL),
(112, 'Supardi', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:40:42', '2019-07-25 20:40:42', '0', NULL, NULL),
(113, 'Andi Syah Kadir', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:40:48', '2019-07-25 20:40:48', '0', NULL, NULL),
(114, 'Imam Subekti', 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:40:54', '2019-07-25 20:40:54', '0', NULL, NULL),
(115, 'Agus Sulistyo', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:41:00', '2019-07-25 20:41:00', '0', NULL, NULL),
(116, 'Budi Setiawan', 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-07-25 20:41:08', '2019-07-25 20:41:08', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_kerja_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id`, `name`, `unit_kerja_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Tanjung Priok', 2, 'IPC_ori.png', NULL, NULL),
(2, 'Panjang', 2, 'IPC_ori.png', NULL, NULL),
(3, 'Palembang', 2, 'IPC_Palembang.png', NULL, NULL),
(4, 'Pontianak', 2, 'IPC_Pontianak.png', NULL, NULL),
(5, 'Teluk Bayur', 2, 'IPC_Teluk_bayur.png', NULL, NULL),
(6, 'Cirebon', 2, 'IPC_Cirebon.png', NULL, NULL),
(7, 'Banten', 2, 'IPC_ori.png', NULL, NULL),
(8, 'Sunda Kelapa', 2, 'IPC_sunda_kelapa.png', NULL, NULL),
(9, 'Jambi', 2, 'IPC_jambi.png', NULL, NULL),
(10, 'Bengkulu', 2, 'IPC_bengkulu.png', NULL, NULL),
(11, 'Pangkal Balam', 2, 'IPC_tanjung_balam.png', NULL, NULL),
(12, 'Tanjung Pandan', 2, 'IPC_tanjung_pandan.png', NULL, NULL),
(13, 'PTP', 3, 'IPC_ori.png', NULL, NULL),
(14, 'IPC TPK', 3, 'IPC_TPK.png', NULL, NULL),
(15, 'JICT', 3, 'IPC_JICT.png', NULL, NULL),
(16, 'NPCT1', 3, 'IPC_NPCT1.png', NULL, NULL),
(17, 'TPK KOJA', 3, 'IPC_TPK_KOJA.png', NULL, NULL),
(18, 'ILCS', 3, 'IPC_ILCS.png', NULL, NULL),
(19, 'EDII', 3, 'IPC_EDII.png', NULL, NULL),
(20, 'MTI', 3, 'IPC_MTI.png', NULL, NULL),
(21, 'JAI', 3, 'IPC_JAI.png', NULL, NULL),
(22, 'JPPI', 3, 'IPC_JPPI.png', NULL, NULL),
(23, 'Kantor Pusat', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kantor Pusat', NULL, NULL),
(2, 'Cabang', NULL, NULL),
(3, 'Anak Perusahaan', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bagian_id` (`bagian_id`);

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_kerja_id` (`unit_kerja_id`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`bagian_id`) REFERENCES `bagian` (`id`);

--
-- Constraints for table `bagian`
--
ALTER TABLE `bagian`
  ADD CONSTRAINT `bagian_ibfk_1` FOREIGN KEY (`unit_kerja_id`) REFERENCES `unit_kerja` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
