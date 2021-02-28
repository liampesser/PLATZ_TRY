-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 13, 2021 at 07:52 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DROP SCHEMA IF EXISTS `platz`;

--
-- Database: `platz`
--
CREATE DATABASE IF NOT EXISTS `platz` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `platz`;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `pseudo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `pseudo`) VALUES
(1, 'Graham'),
(2, 'Thor'),
(3, 'Petra'),
(4, 'Jayme'),
(5, 'Kiara'),
(6, 'Thor'),
(7, 'Zena'),
(8, 'Gareth'),
(9, 'Julian'),
(10, 'Lane');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `sub_category` varchar(45) DEFAULT NULL,
  `picto` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `sub_category`, `picto`, `created_at`, `updated_at`) VALUES
(1, 'Photo', 'icon-photo.svg', 'Photo macro', '2021-04-04 23:19:47', '2020-12-22 14:54:48'),
(2, 'Font', 'icon-font.svg', 'Free font', '2021-07-07 04:43:43', '2020-08-19 21:18:51'),
(3, 'Theme', 'icon-theme.svg', 'Wordpress theme', '2021-09-14 00:00:10', '2020-05-12 18:42:48'),
(4, 'Theme', 'icon-theme.svg', 'Wordpress theme', '2020-03-28 10:26:00', '2020-04-27 00:26:15'),
(5, 'Photoshop', 'icon-psd.svg', 'PSD Goodies', '2020-10-19 14:08:19', '2021-03-03 04:00:58'),
(6, 'Illustrator', 'icon-ai.svg', 'PSD icons', '2020-09-21 01:45:18', '2021-11-03 17:50:25'),
(7, 'Font', 'icon-font.svg', 'Free font', '2021-12-28 12:53:46', '2020-02-14 16:36:51'),
(8, 'Photo', 'icon-photo.svg', 'Photo portrait', '2020-11-19 23:40:04', '2021-02-02 21:15:28'),
(9, 'Illustrator', 'icon-ai.svg', 'Illustrator Freebies', '2020-04-29 18:37:09', '2020-08-11 09:20:51'),
(10, 'Photoshop', 'icon-psd.svg', 'PSD mockup', '2022-01-14 21:27:52', '2021-07-16 07:54:06');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `pseudo` varchar(45) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `pseudo`, `content`, `created_at`, `updated_at`, `post_id`) VALUES
(1, 'Garth', 'egestas lacinia. Sed congue, elit', '2022-02-02 15:17:24', '2020-02-28 02:26:45', 3),
(2, 'Mohammad', 'semper rutrum. Fusce dolor', '2020-04-24 22:58:41', '2020-06-10 19:01:42', 9),
(3, 'Vladimir', 'a ultricies', '2021-08-15 14:45:09', '2021-02-03 17:51:55', 1),
(4, 'Wylie', 'urna suscipit nonummy. Fusce', '2021-09-07 19:10:04', '2020-08-29 07:50:48', 10),
(5, 'Rajah', 'rutrum', '2021-03-04 14:19:03', '2020-05-12 21:04:08', 6),
(6, 'Alana', 'blandit', '2021-09-03 03:49:58', '2020-09-13 16:43:43', 3),
(7, 'Vernon', 'nisi. Aenean eget metus. In', '2021-06-02 05:03:58', '2021-02-18 03:38:56', 8),
(8, 'Ronan', 'Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus', '2020-06-30 08:45:07', '2021-06-02 05:15:35', 3),
(9, 'Alec', 'luctus ut, pellentesque eget, dictum', '2020-06-15 17:17:48', '2020-11-11 03:02:41', 5),
(10, 'Emma', 'velit dui, semper et, lacinia vitae, sodales', '2020-06-15 04:28:38', '2021-05-15 04:08:16', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `size` int(11) DEFAULT NULL,
  `resume` varchar(255) DEFAULT NULL,
  `content` text,
  `image` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `download` blob,
  `author_id` int(10) UNSIGNED NOT NULL,
  `categorie_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `size`, `resume`, `content`, `image`, `created_at`, `updated_at`, `download`, `author_id`, `categorie_id`) VALUES
(1, 'Donec tempor, est ac', 23, 'Cum sociis natoque', 'Aliquam erat volestas, urna justo f.eellentesque', 'pathImage', '2020-03-26 14:57:26', '2021-04-17 23:13:36', 0x6d616c657375616461206d616c6573756164612e20496e7465676572206964206d61676e61206574, 1, 2),
(2, 'sit ame,fyntyntrnt,', 25, 'eleifendzadzadzadzd', 'tortor. IntePellenfames ac', 'pathImage', '2020-03-25 00:16:46', '2021-11-02 14:25:20', 0x74696e636964756e742e20446f6e656320766974616520657261742076656c2070656465, 2, 5),
(3, 'volutpat ottpiscing', 21, 'luctus sit as est,', 'eu nulla at sem molestibero est, congue a, aliquet vel,', 'pathImage', '2022-02-13 17:34:28', '2022-01-06 23:23:21', 0x6e65717565206e6f6e207175616d2e2050656c6c656e746573717565206861626974616e74206d6f726269, 1, 5),
(4, 'Nuncheheee pulvinar', 35, 'dictum eleittpurus', 'dolor elit, pelibendum.m sodales purus, in molestie', 'pathImage', '2021-07-30 12:59:40', '2020-12-21 02:16:25', 0x746f727175656e742070657220636f6e75626961206e6f737472612c2070657220696e636570746f732068796d656e61656f732e, 6, 4),
(5, 'MorbiMorbiMorbiMorbi', 45, 'lobortis quam a .', 'eget metus elerisque sed, sapien. Nunc pulvinar', 'pathImage', '2020-06-02 04:33:15', '2020-12-17 05:26:49', 0x656765737461732c2075726e61206a7573746f206661756369627573206c65637475732c206120736f6c6c696369747564696e, 8, 1),
(6, 'elementum purus', 15, 'fermentum metus. Aenean', 'vulputate dui, nois a nunc. In at', 'pathImage', '2021-06-25 08:35:50', '2021-07-05 14:04:43', 0x617420706564652e20437261732076756c707574617465, 5, 9),
(7, 'Nullam feugiat', 32, 'metus urna convallis erat,e', 'molestuet veiquam adipiscin mmy ut,', 'pathImage', '2020-05-10 14:19:33', '2022-01-13 21:43:04', 0x6d617572697320626c616e646974206d61747469732e20437261732065676574, 1, 4),
(8, 'aptent taciti', 29, 'eu sem. PrDonecstivrsevque', 'sed sem egbh. Ps. Quisque', 'pathImage', '2020-09-08 22:10:25', '2020-09-02 18:00:05', 0x696e74657264756d2e204e756e6320736f6c6c696369747564696e20636f6d6d6f646f20697073756d2e2053757370656e6469737365206e6f6e, 4, 9),
(9, 'est, congue', 35, 'semper erat, in coue et nunc.', 'sempens ornare.', 'pathImage', '2021-09-19 05:14:40', '2021-09-23 12:28:16', 0x50726f696e2076656c206e69736c2e, 2, 8),
(10, 'ligula. Nullam', 23, 'odio fr zv, aucbstsbtstor', 'iaculis quis, pede.', 'pathImage', '2021-08-03 05:07:24', '2021-05-10 08:33:58', 0x766976657272612e20446f6e65632074656d7075732c206c6f72656d, 6, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comments_posts_idx` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_posts_authors1_idx` (`author_id`),
  ADD KEY `fk_posts_categories1_idx` (`categorie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `fk_comments_posts` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_posts_authors1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_posts_categories1` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
