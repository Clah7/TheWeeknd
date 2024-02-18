-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 12:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theweeknd`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(11) NOT NULL,
  `nama_album` varchar(255) DEFAULT NULL,
  `tahun_rilis` year(4) DEFAULT NULL,
  `album_image` varchar(255) DEFAULT NULL,
  `spotify_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `nama_album`, `tahun_rilis`, `album_image`, `spotify_id`) VALUES
(1, 'Starboy (Deluxe)', '2023', 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '35dut3ICqF3NEDkjxfzJJ1'),
(2, 'Live At SoFi Stadium', '2023', 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '1OARrXe5sB0gyy3MhQ8h92'),
(3, 'Avatar: The Way of Water (Original Motion Picture Soundtrack)', '2022', 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '4M2Mf4pmARKGVT9MLCe3HA'),
(4, 'Dawn FM (Alternate World)', '2022', 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '12INlMsFtBjyehNnawBv36'),
(5, 'Dawn FM', '2022', 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '2nLOHgzXzwFEpl62zAgCEC'),
(6, 'After Hours (Deluxe)', '2020', 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '742eAldb4AJKLoPgJhGRE7'),
(7, 'After Hours', '2020', 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '4yP0hdKOZPNshxUOjY0cZj'),
(8, 'My Dear Melancholy,', '2018', 'https://i.scdn.co/image/ab67616d0000b2731f6a2a40bb692936879db730', '4qZBW3f2Q8y0k1A84d4iAO'),
(9, 'Starboy', '2016', 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '2ODvWsOgouMbaA5xf0RkJe'),
(10, 'Beauty Behind The Madness', '2015', 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '0P3oVJBFOv3TDXlYRhGL7s'),
(11, 'Kiss Land (Deluxe)', '2013', 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '6wRev1uYL0JsMsWqktJuVi'),
(12, 'Kiss Land', '2013', 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '3hhDpPtCFuQbppwYgsVhMO'),
(13, 'Trilogy', '2012', 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '2XGEyGU76kj55OdHWynX0S'),
(14, 'Echoes Of Silence (Original)', '2011', 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '04hy4jb1GDD00otiwzsFUB'),
(15, 'Thursday (Original)', '2011', 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '6F87lH0I09qlrzvCCKc7lz'),
(16, 'House Of Balloons (Original)', '2011', 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '7zCODUHkfuRxsUjtuzNqbd'),
(17, 'Another One Of Me (feat. 21 Savage)', '2023', 'https://i.scdn.co/image/ab67616d0000b27337249f80325e2e529a74f857', '2xnqikpcvH2vBYc89VnwwL'),
(18, 'K-POP', '2023', 'https://i.scdn.co/image/ab67616d0000b273893489768de0c42b4d217b82', '10eNMeTimUzAKLhCOpIUlb'),
(19, 'K-POP (Chopped & Screwed)', '2023', 'https://i.scdn.co/image/ab67616d0000b273dd8912dfae6121b0e25bcaec', '0jiAYLsE1PumLJncO7vUIl'),
(20, 'The Idol Episode 5 Part 2 (Music from the HBO Original Series)', '2023', 'https://i.scdn.co/image/ab67616d0000b27338b9ba68af98c3c0855b47ee', '10SppFk45za4CHPEiiuQaD');

-- --------------------------------------------------------

--
-- Table structure for table `lagu`
--

CREATE TABLE `lagu` (
  `id_lagu` int(11) NOT NULL,
  `nama_lagu` varchar(255) DEFAULT NULL,
  `durasi_lagu` time DEFAULT NULL,
  `id_album` int(11) NOT NULL,
  `lagu_image` varchar(255) DEFAULT NULL,
  `spotify_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lagu`
--

INSERT INTO `lagu` (`id_lagu`, `nama_lagu`, `durasi_lagu`, `id_album`, `lagu_image`, `spotify_id`) VALUES
(1, 'Starboy (feat. Daft Punk)', '00:03:50', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '76yLBykniz0SSNv0jj17M2'),
(2, 'Party Monster', '00:04:09', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '6fSvz9yrQY407xmr7cdjuA'),
(3, 'False Alarm', '00:03:40', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '4k47x4UkxG215nFLMFna8A'),
(4, 'Reminder', '00:03:38', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '4zHa39io9pjsiAE6LwM2NH'),
(5, 'Rockin’', '00:03:52', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '3mynPhglTz2Ggh8SxA34kR'),
(6, 'Secrets', '00:04:25', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '36K5mnqwfxGS0rvxz7FPyq'),
(7, 'True Colors', '00:03:26', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '2QRvliBEcGIEgTrjVfxmXo'),
(8, 'Stargirl Interlude (feat. Lana Del Rey)', '00:01:51', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '3CktmDvZGj21m3pNFj5Lr3'),
(9, 'Sidewalks (feat. Kendrick Lamar)', '00:03:51', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '3r5lHFACTti0w2REN5tcrn'),
(10, 'Six Feet Under', '00:03:57', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '4QYEtbfsqusrXN5A49LG53'),
(11, 'Love To Lay', '00:03:43', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '5ejT19NfiINj4cFmjRHwAC'),
(12, 'A Lonely Night', '00:03:40', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '5HFQB9ENLGBHTci7xPmLk6'),
(13, 'Attention', '00:03:17', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '2DsrtZoRxeHdCSGRlQVQtj'),
(14, 'Ordinary Life', '00:03:41', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '09mBPwUMt1TXNtneqvmZZ5'),
(15, 'Nothing Without You', '00:03:18', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '3iPmwJh56xbDF7Xduimf0d'),
(16, 'All I Know (feat. Future)', '00:05:21', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '3Xz0rSC29WbaobyJQfeYsp'),
(17, 'Die For You', '00:04:20', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '0awWj9Wzj375IL5etqa1Dk'),
(18, 'I Feel It Coming (feat. Daft Punk)', '00:04:29', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '0yi180gAOIJhcRo7wY4Htl'),
(19, 'Die For You (with Ariana Grande) - Remix', '00:03:52', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '4W4fNrZYkobj539TOWsLO2'),
(20, 'Starboy (feat. Daft Punk) - Kygo Remix', '00:04:04', 1, 'https://i.scdn.co/image/ab67616d0000b2738ad8f5243d6534e03b656c8b', '3DCc4HPrVukBeaDGe3Cosk'),
(21, 'Intro - Live', '00:01:35', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '7HX1VOiPj1oMlgZ3OQ92B6'),
(22, 'Alone Again - Live', '00:02:47', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '2evYKtXNAdn60ANNEdjH7V'),
(23, 'Gasoline - Live', '00:03:15', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '2h3ZotklPN6aD7OuHz7bFZ'),
(24, 'Sacrifice - Live', '00:04:23', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '7skxtd9x0d05fjz4D7w3t2'),
(25, 'How Do I Make You Love Me? - Live', '00:03:29', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '72SxWvaYsDgix2N3sjCjT1'),
(26, 'Can\'t Feel My Face - Live', '00:03:03', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '47vfGRaXEGzcM2vI7JC2OO'),
(27, 'Take My Breath - Live', '00:03:55', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '02YlAvsmptN8LisZqrWBIb'),
(28, 'Hurricane - Live', '00:02:07', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '45ypYpAdgoneWcBT0Wba3p'),
(29, 'The Hills - Live', '00:03:05', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '6N8W7Dbcsg9tRDxn0wjFkR'),
(30, 'Often - Live', '00:02:28', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '3kdEGx81MR9ftxRbF3Zf84'),
(31, 'Crew Love - Live', '00:01:53', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '03H6iCycyxfB2mZzIOEeKJ'),
(32, 'Starboy - Live', '00:04:05', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '4ZYGm4xWPhsZVijqtpWn4C'),
(33, 'Heartless - Live', '00:02:04', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '0WrIAsGJOei2FGeakvpTDU'),
(34, 'Low Life - Live', '00:01:47', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '431r2Qg4I2qFIKdSFCJN4s'),
(35, 'Or Nah - Live', '00:01:41', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '6tB01QHgH9YuVA8TomAzni'),
(36, 'Kiss Land - Live', '00:01:50', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '2YI8oiiImLkZvVgP33xrjD'),
(37, 'Party Monster - Live', '00:03:09', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '6knNhL3mIaackJvtjmUrfN'),
(38, 'Faith - Live', '00:03:05', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '5RlqhZfTao31aQUO2QjpkG'),
(39, 'After Hours - Live', '00:04:27', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '7HK0ZDEsW0lGKKIVYvni2z'),
(40, 'Out of Time - Live', '00:03:20', 2, 'https://i.scdn.co/image/ab67616d0000b273308f9319a3d6f6737f43b3fc', '6XZ8C5etRn0kiS1wwuW0SO'),
(41, 'Nothing Is Lost (You Give Me Strength)', '00:04:27', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '1DzJbVkBELu6jDu6q0T0tk'),
(42, 'Into the Water', '00:03:40', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '0uQ6JLIgzZuyjidhy3HYkV'),
(43, 'Happiness Is Simple', '00:02:22', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '7iFw1GrPSKTP7V8wr2HL7O'),
(44, 'A New Star', '00:02:56', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '2jpKHfpKt7BSgY5H9MjEFt'),
(45, 'Converging Paths', '00:01:45', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '0ycVFKwNLSNPWNPlHvupX0'),
(46, 'Rescue and Loss', '00:06:39', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '6F9i3gk2MyQC9Qjikp5j7K'),
(47, 'Family Is Our Fortress', '00:03:06', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '3bQ9uSHwb34ujmND4vpeBT'),
(48, 'Leaving Home', '00:03:27', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '36bhoKLSIcHFPP9GH8XCE8'),
(49, 'The Way of Water', '00:02:30', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '223rUKwaZJbNqAAjsOtThI'),
(50, 'Payakan', '00:03:30', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '7r3K6uYLLtZGjAnvtN1D6j'),
(51, 'Mighty Eywa', '00:04:12', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '6zPEMjUBVwjd1YXxRSyZia'),
(52, 'Friends', '00:01:47', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '5ju0Kbl3sSFocxjouvxZmP'),
(53, 'Cove of the Ancestors', '00:02:46', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '4bDuJdlFFlpfrA2Crh5fCp'),
(54, 'The Tulkun Return', '00:02:51', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '72gl2bKcfUvmDRsjyTmXg7'),
(55, 'The Hunt', '00:05:47', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '5gVsSYOVYAwer7fXKMRVFa'),
(56, 'Na\'vi Attack', '00:04:43', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '70dEet3qboXZx7u3cRMpUC'),
(57, 'Eclipse', '00:03:12', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '5Iwcv5V664HgGAbGa6REFD'),
(58, 'Bad Parents', '00:03:23', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '53j2xXmhkmHihzQFBY7T9Q'),
(59, 'Knife Fight', '00:02:47', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '5kB9NKpGU5jan7cFNkKhnG'),
(60, 'From Darkness to Light', '00:04:14', 3, 'https://i.scdn.co/image/ab67616d0000b273c8044633efdd0e991224e197', '2Znvoeb6ETGT4nPvFKXLEi'),
(61, 'Dawn FM', '00:01:36', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '3gj1hwjku4JaoamjJVqIIl'),
(62, 'Gasoline', '00:03:32', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '6Uj2XaahtYXK2WeD7GGwBY'),
(63, 'How Do I Make You Love Me?', '00:03:34', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '3kOtREqmcGaEA2KhqffFnw'),
(64, 'Take My Breath', '00:05:39', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '3WXyY2PxX88kpBtB0GH61w'),
(65, 'Sacrifice', '00:03:08', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '0xa4hvXeYHRRNhA7wBfUar'),
(66, 'A Tale By Quincy', '00:01:36', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '23iLEDPEJpcfYOw1tVhd2o'),
(67, 'Out of Time', '00:03:34', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '25C86uEjQ0fjj3bvsxIusO'),
(68, 'Here We Go… Again (feat. Tyler, the Creator)', '00:03:29', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '0khQeEwEv6GndVypzpGOG5'),
(69, 'Best Friends', '00:02:43', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '4cm7Ap6IWH6m8JyB9IXT3x'),
(70, 'Is There Someone Else?', '00:03:19', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '37zcCimcUGurQoLEAuN8nR'),
(71, 'Starry Eyes', '00:02:28', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '2022B8GxEstpvibwgbJ15s'),
(72, 'Every Angel is Terrifying', '00:02:47', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '7q9Sr5kCkha0L49GAQctHl'),
(73, 'Don’t Break My Heart', '00:03:25', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '3TVnaEVbUBFmWYk9IOIwRo'),
(74, 'I Heard You\'re Married (feat. Lil Wayne)', '00:04:23', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '7p2wRa4m9KVXEXUlkJLhUi'),
(75, 'Less Than Zero', '00:03:31', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '02w1rM6spvEcbFxd63xCl2'),
(76, 'Phantom Regret by Jim', '00:02:59', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '0DvtQkuaV0VrSHgb5pwRke'),
(77, 'Moth To A Flame (with The Weeknd)', '00:03:54', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '1S9DHKpS73KFVN7nnIql3f'),
(78, 'Dawn FM - OPN Remix', '00:03:03', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '1Jz0fAhw41suiAVekjAoLi'),
(79, 'How Do I Make You Love Me? - Sebastian Ingrosso & Salvatore Ganacci Remix', '00:03:37', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '2urqWNGpjl07PLAafoa5nT'),
(80, 'Sacrifice (Remix) (feat. Swedish House Mafia)', '00:03:58', 4, 'https://i.scdn.co/image/ab67616d0000b273ade87e5f9c3764f0a1e5df64', '0QE33jkiMTzCI8momkDmQY'),
(81, 'Dawn FM', '00:01:36', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '6krYS8KtmNAYyb5uTZiYW4'),
(82, 'Gasoline', '00:03:32', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '3KyKxJ4P3pVCgaZwaq2rUC'),
(83, 'How Do I Make You Love Me?', '00:03:34', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '2Ghp894n1laIf2w98VeAOJ'),
(84, 'Take My Breath', '00:05:39', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '2vgUijXOTRMnWXDtvgMp2b'),
(85, 'Sacrifice', '00:03:08', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '1nH2PkJL1XoUq8oE6tBZoU'),
(86, 'A Tale By Quincy', '00:01:36', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '759ndr57jb0URg4j9YSWml'),
(87, 'Out of Time', '00:03:34', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '2SLwbpExuoBDZBpjfefCtV'),
(88, 'Here We Go… Again (feat. Tyler, the Creator)', '00:03:29', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '1NhjYYcYTRywc0di98xHxf'),
(89, 'Best Friends', '00:02:43', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '1E5Xu8dur0fAjSP1VpVhAZ'),
(90, 'Is There Someone Else?', '00:03:19', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '0mL82sxCRjrs3br407IdJh'),
(91, 'Starry Eyes', '00:02:28', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '6zzdyvVWjGrQBraSvuqJPY'),
(92, 'Every Angel is Terrifying', '00:02:47', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '3vJcz8exedHCjQ9ed95NqU'),
(93, 'Don’t Break My Heart', '00:03:25', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '6a4GH1gljLL7VvmO9u5O92'),
(94, 'I Heard You’re Married (feat. Lil Wayne)', '00:04:23', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '5XbA7TAqsD0fj0dGBrbb0D'),
(95, 'Less Than Zero', '00:03:31', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '2D4dV2KXDTszzJ3p3cFqhA'),
(96, 'Phantom Regret by Jim', '00:02:59', 5, 'https://i.scdn.co/image/ab67616d0000b2734ab2520c2c77a1d66b9ee21d', '1NlK2NtpuUazpziLhnJwEV'),
(97, 'Alone Again', '00:04:10', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '1oCyEPXnvytOWS5S9mBE8N'),
(98, 'Too Late', '00:03:59', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '4LKx0dlvzsmntdhMCTtV97'),
(99, 'Hardest To Love', '00:03:31', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '5GM4EsVHaxGjzgQ81S2J61'),
(100, 'Scared To Live', '00:03:11', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '6hU8kY1Pot3gvEHb9CVj3F'),
(101, 'Snowchild', '00:04:07', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '1Hp7vdJwQ4ozmAJzPAJpfX'),
(102, 'Escape From LA', '00:05:55', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '51a6oFNsFpB2zew1tdzT6I'),
(103, 'Heartless', '00:03:18', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '0HhSydjvwLiBjnVQCG5SjK'),
(104, 'Faith', '00:04:43', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '3V937b8IsyJ0ZvVHxreiMs'),
(105, 'Blinding Lights', '00:03:20', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '4eQO9RHTjYT1O9DTuZLj9v'),
(106, 'In Your Eyes', '00:03:57', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '7gCFW1KSX4gDgAhro23URU'),
(107, 'Save Your Tears', '00:03:35', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '2pGp7wk76ZfbxYG5MRwfcs'),
(108, 'Repeat After Me (Interlude)', '00:03:15', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '5dMVtDN1RDNTOL92oDncwd'),
(109, 'After Hours', '00:06:01', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '32HKm4gUeUqQ8SQ28uGYUo'),
(110, 'Until I Bleed Out', '00:03:12', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '2BTkcHMf8j5pqa5UIMFGcy'),
(111, 'Nothing Compares - Bonus Track', '00:03:42', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '6utQlfLooYsUkq5xUg3vxt'),
(112, 'Missed You - Bonus Track', '00:02:24', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '5SGEPm9ge10bD4j3ec9UHV'),
(113, 'Final Lullaby - Bonus Track', '00:03:05', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '4TA5KWeqdDmgdVPHE7Yj3B'),
(114, 'Save Your Tears (Remix) (with Ariana Grande) - Bonus Track', '00:03:11', 6, 'https://i.scdn.co/image/ab67616d0000b273ef017e899c0547766997d874', '2PipF4mcI9d6cqq5AAp7GU'),
(115, 'Alone Again', '00:04:10', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '6b5P51m8xx2XA6U7sdNZ5E'),
(116, 'Too Late', '00:03:59', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '2K9Ovn1o2bTGqbsABGC6m3'),
(117, 'Hardest To Love', '00:03:31', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '6kWxIqQDsKFYCJGbU4AjCX'),
(118, 'Scared To Live', '00:03:11', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '4BGZF4oLbTL0pWm7C18pbv'),
(119, 'Snowchild', '00:04:07', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '3WlbeuhfRSqU7ylK2Ui5U7'),
(120, 'Escape From LA', '00:05:55', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '1sOW4PuG5X3Ie3EXUhAopJ'),
(121, 'Heartless', '00:03:18', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '6bnF93Rx87YqUBLSgjiMU8'),
(122, 'Faith', '00:04:43', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '3orEOtd8CPL8GFlpRpKuoE'),
(123, 'Blinding Lights', '00:03:20', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '0VjIjW4GlUZAMYd2vXMi3b'),
(124, 'In Your Eyes', '00:03:57', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '7szuecWAPwGoV1e5vGu8tl'),
(125, 'Save Your Tears', '00:03:35', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '5QO79kh1waicV47BqGRL3g'),
(126, 'Repeat After Me (Interlude)', '00:03:15', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '40U8d12pC5UHqmHwXjHjjl'),
(127, 'After Hours', '00:06:01', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '2p8IUWQDrpjuFltbdgLOag'),
(128, 'Until I Bleed Out', '00:03:10', 7, 'https://i.scdn.co/image/ab67616d0000b2738863bc11d2aa12b54f5aeb36', '2BcnxwxBuar5wjCaLqm5N3'),
(129, 'Call Out My Name', '00:03:48', 8, 'https://i.scdn.co/image/ab67616d0000b2731f6a2a40bb692936879db730', '09mEdoA6zrmBPgTEN5qXmN'),
(130, 'Try Me', '00:03:41', 8, 'https://i.scdn.co/image/ab67616d0000b2731f6a2a40bb692936879db730', '4ppTAJUbNXELZcoUaL90wo'),
(131, 'Wasted Times', '00:03:40', 8, 'https://i.scdn.co/image/ab67616d0000b2731f6a2a40bb692936879db730', '7DKS0rX27cCEPsK0R6tFWS'),
(132, 'I Was Never There', '00:04:01', 8, 'https://i.scdn.co/image/ab67616d0000b2731f6a2a40bb692936879db730', '1cKHdTo9u0ZymJdPGSh6nq'),
(133, 'Hurt You', '00:03:50', 8, 'https://i.scdn.co/image/ab67616d0000b2731f6a2a40bb692936879db730', '6QdnKD1zwEgyOWtkrdzlOF'),
(134, 'Privilege', '00:02:50', 8, 'https://i.scdn.co/image/ab67616d0000b2731f6a2a40bb692936879db730', '0Nwar8rweBUyfyuoyjjUvk'),
(135, 'Call Out My Name - A Cappella', '00:03:44', 8, 'https://i.scdn.co/image/ab67616d0000b2731f6a2a40bb692936879db730', '5PTfZsGlsDDPH8i3PdQnXJ'),
(136, 'Starboy', '00:03:50', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '7MXVkk9YMctZqd1Srtv4MB'),
(137, 'Party Monster', '00:04:09', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '4F7A0DXBrmUAkp32uenhZt'),
(138, 'False Alarm', '00:03:40', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '4oeaIftdpT3JuZLcCkKmVE'),
(139, 'Reminder', '00:03:38', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '37F0uwRSrdzkBiuj0D5UHI'),
(140, 'Rockin’', '00:03:52', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '36YCdzT57us0LhDmCYtrNE'),
(141, 'Secrets', '00:04:25', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '00NAQYOP4AmWR549nnYJZu'),
(142, 'True Colors', '00:03:26', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '1oGdVdYjeQvojGKDddxLQQ'),
(143, 'Stargirl Interlude', '00:01:51', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '4EDijkJdHBZZ0GwJ12iTAj'),
(144, 'Sidewalks', '00:03:51', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '4h90qkbnW1Qq6pBhoPvwko'),
(145, 'Six Feet Under', '00:03:57', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '4mU5iXHeLgbR94siF7p1sY'),
(146, 'Love To Lay', '00:03:43', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '27BgDmciSjoxTG0almHTpZ'),
(147, 'A Lonely Night', '00:03:40', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '0ifooM33X1iBxVYyOkSbXW'),
(148, 'Attention', '00:03:17', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '6pDVjCUA3B1vg9waKutAsv'),
(149, 'Ordinary Life', '00:03:41', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '15k2nBQJ0teDmPZHrOXL2N'),
(150, 'Nothing Without You', '00:03:18', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '57qiTKh8bVX0VtfUNTQqhw'),
(151, 'All I Know', '00:05:21', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '0NWqNXBJTpXbkI5rPWNy3p'),
(152, 'Die For You', '00:04:20', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '2Ch7LmS7r2Gy2kc64wv3Bz'),
(153, 'I Feel It Coming', '00:04:29', 9, 'https://i.scdn.co/image/ab67616d0000b2734718e2b124f79258be7bc452', '3dhjNA0jGA8vHBQ1VdD6vV'),
(154, 'Real Life', '00:03:43', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '03j354P848KtNU2FVSwkDG'),
(155, 'Losers', '00:04:41', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '1bAvtmTl0F9loyz9AwPwp7'),
(156, 'Tell Your Friends', '00:05:34', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '1mhVXWduD8ReDwusfaHNwU'),
(157, 'Often', '00:04:09', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '4PhsKqMdgMEUSstTDAmMpg'),
(158, 'The Hills', '00:04:02', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '7fBv7CLKzipRk6EC6TWHOB'),
(159, 'Acquainted', '00:05:48', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '7uJH0YdSZL6psjxI6Xy08b'),
(160, 'Can\'t Feel My Face', '00:03:33', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '22VdIZQfgXJea34mQxlt81'),
(161, 'Shameless', '00:04:13', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '6C6fHTuFUxVtJpBOOaMvJr'),
(162, 'Earned It (Fifty Shades Of Grey)', '00:04:37', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '4frLb7nWtsz2ymBE6k2GRP'),
(163, 'In The Night', '00:03:55', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '25KybV9BOUlvcnv7nN3Pyo'),
(164, 'As You Are', '00:05:40', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '3H3qBumaYj67PT3aMEBvAP'),
(165, 'Dark Times', '00:04:20', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '6J7PIkhtHwmFjPLq0SyuPj'),
(166, 'Prisoner', '00:04:34', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '1gZADNt16Oh23jWyMYRk4p'),
(167, 'Angel', '00:06:17', 10, 'https://i.scdn.co/image/ab67616d0000b2737fcead687e99583072cc217b', '0wzPHTgOtFIDhk2rD3Au4x'),
(168, 'Professional', '00:06:08', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '7gSjRw3wKuTeDdM0lwp9rv'),
(169, 'The Town', '00:05:07', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '3lcEVP5beEkAFiFIG5D0QF'),
(170, 'Adaptation', '00:04:43', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '3FvDYk5IC5Um84kK5FbJGR'),
(171, 'Love In The Sky', '00:04:27', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '5vjgyZm1Zhtg4RptN4evNQ'),
(172, 'Belong To The World', '00:05:07', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '4w1dIZxwO83XpKo5wgLhkk'),
(173, 'Live For', '00:03:42', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '4ER9305DBAmJqj2P96TfBr'),
(174, 'Wanderlust', '00:05:06', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '5OmX5lXxZ5sQgPuSHDn293'),
(175, 'Kiss Land', '00:07:35', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '5FUn6vN4PDHXxqnb5LQhJQ'),
(176, 'Pretty', '00:06:15', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '3ZhnXFSunfOPWSqfLLQA9W'),
(177, 'Tears In The Rain', '00:07:24', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '7FeSiBUEyqxlKvjGbfwKku'),
(178, 'Wanderlust', '00:05:05', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '14p9UeyB3zxuo62wRjk5iR'),
(179, 'Odd Look', '00:04:12', 11, 'https://i.scdn.co/image/ab67616d0000b273b06645ac5eaf2249c4f5fac7', '7xcqbjV2NfxlnJzqdRuO7E'),
(180, 'Professional', '00:06:08', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '5ZicFGBDAi9J2YCVesboUp'),
(181, 'The Town', '00:05:07', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '7jGr8wzgwOVLuktY66qM5f'),
(182, 'Adaptation', '00:04:43', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '4pHQ9RYFhn3W0ha5KEuMnj'),
(183, 'Love In The Sky', '00:04:27', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '3WKYPmiPpJas9j5Aari5iK'),
(184, 'Belong To The World', '00:05:07', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '3D7izPzeEcz7lBhcCZJccl'),
(185, 'Live For', '00:03:42', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '3kgqHVqfiabABjaFi9Tnhn'),
(186, 'Wanderlust', '00:05:06', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '6V9TlCdwLeQes4FX5zxz3f'),
(187, 'Kiss Land', '00:07:35', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '5idmfDT06TjCQ1SPDsa5qh'),
(188, 'Pretty', '00:06:15', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '0ei3uNcwJOiUocuks1vWcb'),
(189, 'Tears In The Rain', '00:07:24', 12, 'https://i.scdn.co/image/ab67616d0000b273e4860d5331509e2c9ee4de10', '5oAOK7xCJD8hzp9PuxjULL'),
(190, 'High For This - Original', '00:04:09', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '36LdTnEWBDLDDA3hEsSLvi'),
(191, 'What You Need - Original', '00:03:26', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '6zKlGJXteHq8KRKaLnUfCs'),
(192, 'House Of Balloons / Glass Table Girls - Original', '00:06:47', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '5d6lYplVOV4xJ37EVCpHqB'),
(193, 'The Morning - Original', '00:05:14', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '7wPTyxE1PNemZuyuOOaQ8q'),
(194, 'Wicked Games - Original', '00:05:25', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '7bGF2hNOP6SROacsxo1fCk'),
(195, 'The Party & The After Party - Original', '00:07:39', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '7bvkyTwVkylUGJvz1UMjFk'),
(196, 'Coming Down - Original', '00:04:55', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '4q75XguyPrsduy70hcBVFu'),
(197, 'Loft Music - Original', '00:06:03', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '78aURwMzynDMan7DfSWwsI'),
(198, 'The Knowing - Original', '00:05:42', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '4FuSnjXKARcUOwiPnEnh1p'),
(199, 'Twenty Eight', '00:04:18', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '3dQEShIMs5TW8H3eUh11r7'),
(200, 'Lonely Star - Original', '00:05:49', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '4coENUbKuiuFb0C38uqFTi'),
(201, 'Life Of The Party - Original', '00:04:56', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '3DBumrwaikaisVDQdcM7jU'),
(202, 'Thursday - Original', '00:05:20', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '7Kd39JsnLyJLEXNeWUi3T9'),
(203, 'The Zone - Original', '00:06:58', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '6HrLsSVEk6C1X2EKmOEBxA'),
(204, 'The Birds Pt. 1 - Original', '00:03:34', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '6ojrylBvc8SkXGjr02FjRX'),
(205, 'The Birds Pt. 2 - Original', '00:05:50', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '4Mnnd0fBRucoxGhtG7MccI'),
(206, 'Gone - Original', '00:08:06', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '5e5h9GeNY6janbVi34tn9e'),
(207, 'Rolling Stone - Original', '00:03:50', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '4vz3UReBbxyPuVqgIjTCeA'),
(208, 'Heaven Or Las Vegas - Original', '00:05:53', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '4WZZeEjRqC4tV8rFljQzEo'),
(209, 'Valerie', '00:04:46', 13, 'https://i.scdn.co/image/ab67616d0000b273158c84a1b6f8b935dc7fa9a9', '5JaqApg5415jtjdyjY3wa9'),
(210, 'D.D. - Original', '00:04:34', 14, 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '0WdJTI3UVvUMbLwPk5ObKI'),
(211, 'Montreal - Original', '00:04:10', 14, 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '0UGdO687azruy9tFlCxO6F'),
(212, 'Outside - Original', '00:04:19', 14, 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '58yC1Q6XKjmHeWkEWh9O6B'),
(213, 'XO / The Host - Original', '00:07:24', 14, 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '0Hs5enNuaAXmJssAybWbOw'),
(214, 'Initiation - Original', '00:04:20', 14, 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '3QWENKFYGEgp3itgTnrgq9'),
(215, 'Same Old Song - Original', '00:05:12', 14, 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '37zSTGaP8bfBDGpJnUmSDl'),
(216, 'The Fall - Original', '00:05:45', 14, 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '0JGoOLSl8A80mSPBL7ya9U'),
(217, 'Next - Original', '00:06:01', 14, 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '6pG3yiKNsX03ZFTFWdOasv'),
(218, 'Echoes Of Silence - Original', '00:03:59', 14, 'https://i.scdn.co/image/ab67616d0000b27336fb79728dbb379579cef97e', '3weHnt82LuCTMa2AnZFM78'),
(219, 'Lonely Star - Original', '00:05:49', 15, 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '5JpSjNcjuP8L9QrYmv3xcn'),
(220, 'Life Of The Party - Original', '00:04:56', 15, 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '6eJbjaoLRlfwrfWpeS6alF'),
(221, 'Thursday - Original', '00:05:20', 15, 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '0l1p13Fbujayv894H0hfpS'),
(222, 'The Zone - Original', '00:06:58', 15, 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '53qYItjefG5SUf62428dIw'),
(223, 'The Birds Pt. 1 - Original', '00:03:34', 15, 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '5SF1kcOiOmtZFUIQNGC4TC'),
(224, 'The Birds Pt. 2 - Original', '00:05:50', 15, 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '2yYDijitHN6psA2tH0ndXs'),
(225, 'Gone - Original', '00:08:06', 15, 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '7xgYvziLsxNd0UznaEw8Oi'),
(226, 'Rolling Stone - Original', '00:03:50', 15, 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '4dXnS1YXBkn4oAIxRLPJcK'),
(227, 'Heaven Or Las Vegas - Original', '00:05:53', 15, 'https://i.scdn.co/image/ab67616d0000b273e01c2631218e2de27765b7d5', '5JQ5Acrgv1VrO9UtMUN052'),
(228, 'High For This - Original', '00:04:09', 16, 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '2ye9iWj5V4g6k6HFeTTAKa'),
(229, 'What You Need - Original', '00:03:26', 16, 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '4Yw8TyBm9J8cpy2guHUYog'),
(230, 'House Of Balloons / Glass Table Girls - Original', '00:06:47', 16, 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '2r7BPog74oaTG5shNYiUnV'),
(231, 'The Morning - Original', '00:05:14', 16, 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '4jBfUB4kQJCWOrjGLQqhO0'),
(232, 'Wicked Games - Original', '00:05:25', 16, 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '00aqkszH1FdUiJJWvX6iEl'),
(233, 'The Party & The After Party - Original', '00:07:39', 16, 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '0GROiXm03OrMC5ltXLhGIu'),
(234, 'Coming Down - Original', '00:04:55', 16, 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '3mHO1J6kfiArjBo1zhLFGP'),
(235, 'Loft Music - Original', '00:06:03', 16, 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '2yBz1hupoOBncorzuKcJ2z'),
(236, 'The Knowing - Original', '00:05:42', 16, 'https://i.scdn.co/image/ab67616d0000b273274b406a7e18acebcf743079', '6tjsbysvZh8Pq8DZA5ldrn'),
(237, 'Another One Of Me (feat. 21 Savage)', '00:03:40', 17, 'https://i.scdn.co/image/ab67616d0000b27337249f80325e2e529a74f857', '3vAdBZvbr3bFBiSLT4iVap'),
(238, 'K-POP', '00:03:05', 18, 'https://i.scdn.co/image/ab67616d0000b273893489768de0c42b4d217b82', '5L3ecxQnQ9qTBmnLQiwf0C'),
(239, 'K-POP', '00:03:05', 19, 'https://i.scdn.co/image/ab67616d0000b273dd8912dfae6121b0e25bcaec', '1RlcvK95g0XfRpDvFbGLUO'),
(240, 'K-POP - Chopped & Screwed', '00:04:33', 19, 'https://i.scdn.co/image/ab67616d0000b273dd8912dfae6121b0e25bcaec', '0kHlKWunEQ5zoQmKHNJT6P'),
(241, 'K-POP - Instrumental', '00:03:05', 19, 'https://i.scdn.co/image/ab67616d0000b273dd8912dfae6121b0e25bcaec', '2kvzSGkSaU9z3uywQIrhAg'),
(242, 'K-POP - Sped Up', '00:02:25', 19, 'https://i.scdn.co/image/ab67616d0000b273dd8912dfae6121b0e25bcaec', '5mEE5p155rwEwxk83wcRIZ'),
(243, 'Dollhouse (with Lily Rose Depp)', '00:03:59', 20, 'https://i.scdn.co/image/ab67616d0000b27338b9ba68af98c3c0855b47ee', '5HUQPQ9E1a4er4UhB8C7Rc'),
(244, 'My Sweet Lord', '00:03:12', 20, 'https://i.scdn.co/image/ab67616d0000b27338b9ba68af98c3c0855b47ee', '3TBFOYhRrY2lL4lcmtvIrU'),
(245, 'Crocodile Tears', '00:03:02', 20, 'https://i.scdn.co/image/ab67616d0000b27338b9ba68af98c3c0855b47ee', '7MwYXhh2dTqc7fiwkwPZo1');

-- --------------------------------------------------------

--
-- Table structure for table `merchandise`
--

CREATE TABLE `merchandise` (
  `id_item` int(11) NOT NULL,
  `nama_item` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `item_desc` text DEFAULT NULL,
  `link_item` varchar(255) DEFAULT NULL,
  `merch_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchandise`
--

INSERT INTO `merchandise` (`id_item`, `nama_item`, `price`, `item_desc`, `link_item`, `merch_image`) VALUES
(1, '0:00:01', 135, 'LIMITED EDITION COLLECTIBLE FRAMED PRINTS FROM THE AFTER HOURS TILL DAWN GLOBAL STADIUM TOUR, SHOT BY XO PHOTOGRAPHER, HYGHLY ALLEYNE. EXPRESS SHIPPING WORLDWIDE. WOOD FRAME + DOUBLE MAT BOARDING INCLUDED. FRAMED PRINT ARRIVES READY-TO-HANG. HAND SIGNED EDITION ON MAT BOARDING. EDITIONED CERTIFICATE OF AUTHENTICITY. MADE IN USA, CAN & SWEDEN.\r\n\r\nPRINT ONLY (16\" X 20\") - NO EDITION \r\nSMALL (16\" X 20\") - $175.00 - 1 OF 50 EDITION\r\nMEDIUM (20\" X 20\") - $199.00 - 1 OF 50 EDITION\r\nLARGE (24\" X 30\") - $285.00 - 1 OF 25 EDITION\r\nGIANT (36\" X 36\") - $575.00 - 1 OF 10 EDITION\r\nSTATEMENT (31\" X 44\") - $575.00 - 1 OF 10 EDITION\r\nCOLLECTOR (36\" X 52\") - $725.00 - 1 OF 5 EDITION', 'https://xo.store/collections/all/products/0-00-01?c=%2Fcollections%2Fall&t=All', '/img/Konten/00001.webp'),
(2, 'DAWN FM TEE', 38, 'BLACK 6 OZ HEAVYWEIGHT COTTON TEE FEATURING DAWN FM GRAPHICS ON FRONT. MACHINE WASH COLD, DELICATE CYCLE, TUMBLE DRY LOW. DO NOT IRON EMBELLISHMENT. 100% COTTON.', 'https://xo.store/collections/all/products/dawn-fm-tee?c=%2Fcollections%2Fall&t=All', '/img/Konten/DawnFM.webp'),
(3, ' DAWN FM CHROME XO LOGO TEE', 50, 'WHITE 6 OZ HEAVYWEIGHT COTTON TEE FEATURING DAWN FM XO GRAPHICS ON FRONT. MACHINE WASH COLD, DELICATE CYCLE, TUMBLE DRY LOW. DO NOT IRON EMBELLISHMENT. 100% COTTON.\r\n', 'https://xo.store/collections/all/products/dawn-fm-chrome-xo-logo-tee-white?c=%2Fcollections%2Fall&t=All', '/img/Konten/XOTee.webp'),
(4, 'THE HIGHLIGHTS VINYL', 51, 'DISC 1\r\nSIDE A\r\n1. SAVE YOUR TEARS\r\n2. BLINDING LIGHTS\r\n3. IN YOUR EYES\r\n4. CAN’T FEEL MY FACE\r\n5. I FEEL IT COMING FT. DAFT PUNK\r\n\r\nSIDE B\r\n1. STARBOY FT. DRAFT PUNK\r\n2. PRAY FOR ME FT. KENDRICK LAMAR\r\n3. HEARTLESS\r\n4. OFTEN\r\n5. THE HILLS\r\n\r\nDISC 2\r\nSIDE A\r\n1. CALL OUT MY NAME\r\n2. DIE FOR YOU\r\n3. EARNED IT\r\n4. LOVE ME HARDER, ARIANA GRANDE & THE WEEKND\r\n\r\nSIDE B\r\n1. ACQUAINTED\r\n2. WICKED GAMES\r\n3. THE MORNING\r\n4. AFTER HOURS\r\n\r\nLIMITED TO 4 MUSIC PRODUCTS PER CUSTOMER.', 'https://xo.store/collections/all/products/the-highlights-vinyl?c=%2Fcollections%2Fall&t=All', '/img/Konten/Vinyl.webp'),
(5, 'AHTD TOUR XO KEYCHAIN', 30, 'GENIUNE LEATHER KEYCHAIN FEATURING AFTER HOURS TIL DAWN TOUR GRAPHICS.\r\n\r\n', 'https://xo.store/collections/all/products/ahtd-tour-xo-keychain?c=%2Fcollections%2Fall&t=All', '/img/Konten/XOKeyChainwebp.webp'),
(6, 'DAWN FM COLLECTORS 01 CD', 12, '1. DAWN FM\r\n2. GASOLINE\r\n3. HOW DO I MAKE YOU LOVE ME?\r\n4. TAKE MY BREATH\r\n5. SACRIFICE\r\n6. A TALE BY QUINCY\r\n7. OUT OF TIME\r\n8. HERE WE GO... AGAIN\r\n9. BEST FRIENDS\r\n10. IS THERE SOMEONE ELSE?\r\n11. STARRY EYES\r\n12. EVERY ANGEL IS TERRIFYING\r\n13. DON\'T BREAK MY HEART\r\n14. I HEARD YOU\'RE MARRIED\r\n15. LESS THAN ZERO\r\n16. PHANTOM REGRET BY JIM\r\n\r\nLIMITED TO 4 MUSIC PRODUCTS PER CUSTOMER.', 'https://xo.store/collections/all/products/dawn-fm-collectors-01-cd?c=%2Fcollections%2Fall&t=All', '/img/Konten/DawnFMCD.webp');

-- --------------------------------------------------------

--
-- Table structure for table `tour`
--

CREATE TABLE `tour` (
  `tour_id` int(11) NOT NULL,
  `tour_name` varchar(255) NOT NULL,
  `tour_place` text NOT NULL,
  `tour_time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tour`
--

INSERT INTO `tour` (`tour_id`, `tour_name`, `tour_place`, `tour_time`) VALUES
(1, 'Tour A', 'City A', '2023-12-15'),
(2, 'Tour B', 'City B', '2024-01-20'),
(3, 'Tour C', 'City C', '2023-11-30'),
(4, 'Tour D', 'City D', '2024-02-05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `level`) VALUES
('aaa', '$2y$10$RPFJGJkTL4PL4S7LGchB5eiNPxKYNK0SRrXPletf9ezftEPx8FYfC', 2),
('exsfo', '$2y$10$JsF5a9tqCMyuViQYizVFCeguVsSn0/tTlxjiX8ZZNCiJpUpOHN7Ti', 2),
('stevz', '$2y$10$9Jj0E0WCSdM05r07i2fpGOXti4Hhdexxm9r202Bvfuk5OJRx7.6P.', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `lagu`
--
ALTER TABLE `lagu`
  ADD PRIMARY KEY (`id_lagu`),
  ADD KEY `id_album_fk` (`id_album`);

--
-- Indexes for table `merchandise`
--
ALTER TABLE `merchandise`
  ADD PRIMARY KEY (`id_item`);

--
-- Indexes for table `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`tour_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `lagu`
--
ALTER TABLE `lagu`
  MODIFY `id_lagu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=491;

--
-- AUTO_INCREMENT for table `merchandise`
--
ALTER TABLE `merchandise`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tour`
--
ALTER TABLE `tour`
  MODIFY `tour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lagu`
--
ALTER TABLE `lagu`
  ADD CONSTRAINT `id_album_fk` FOREIGN KEY (`id_album`) REFERENCES `album` (`id_album`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
