-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2021 at 06:03 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `basketball_management_system_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add role', 7, 'add_role'),
(26, 'Can change role', 7, 'change_role'),
(27, 'Can delete role', 7, 'delete_role'),
(28, 'Can view role', 7, 'view_role'),
(29, 'Can add team', 8, 'add_team'),
(30, 'Can change team', 8, 'change_team'),
(31, 'Can delete team', 8, 'delete_team'),
(32, 'Can view team', 8, 'view_team'),
(33, 'Can add user_ role', 9, 'add_user_role'),
(34, 'Can change user_ role', 9, 'change_user_role'),
(35, 'Can delete user_ role', 9, 'delete_user_role'),
(36, 'Can view user_ role', 9, 'view_user_role'),
(37, 'Can add user_ details', 10, 'add_user_details'),
(38, 'Can change user_ details', 10, 'change_user_details'),
(39, 'Can delete user_ details', 10, 'delete_user_details'),
(40, 'Can view user_ details', 10, 'view_user_details'),
(41, 'Can add player_ details', 11, 'add_player_details'),
(42, 'Can change player_ details', 11, 'change_player_details'),
(43, 'Can delete player_ details', 11, 'delete_player_details'),
(44, 'Can view player_ details', 11, 'view_player_details'),
(45, 'Can add game', 12, 'add_game'),
(46, 'Can change game', 12, 'change_game'),
(47, 'Can delete game', 12, 'delete_game'),
(48, 'Can view game', 12, 'view_game');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$AZg3LnFMGrRQheLcpIkl5T$pDurhVQNPhxE8ujBFJMDxYiaN2K8fL4K/32el2V0xvg=', '2021-12-04 15:58:13.055297', 0, 'dthompson', 'Joel', 'Wilson', 'priceeric@example.net', 0, 1, '2021-12-04 14:11:07.115895'),
(2, 'pbkdf2_sha256$260000$1JQY7iOTX0sj5AUje2oQxP$rH5jucOgGBnyFlRRCDHkbFzQlL7BZ46Rspe3S+1d5Tg=', '2021-12-04 18:45:06.876780', 0, 'rosevernon', 'Barry', 'Dodson', 'bpena@example.org', 0, 1, '2021-12-04 14:11:07.475865'),
(3, 'pbkdf2_sha256$260000$Auf0BQsM4H1hkM2UCYiwRJ$UxYTEVCfZ6lpbg3w9FeJTWDkaITg9MjgK8cIRiGDAEA=', '2021-12-04 18:55:38.644960', 0, 'ohancock', 'John', 'Morrison', 'halllarry@example.com', 0, 1, '2021-12-04 14:11:07.772497'),
(4, 'pbkdf2_sha256$260000$Bt9JASvbQtylpmJEGywUm2$1LYr4fLO9UEWbP6Rs6zuuXh47NzN9ftuDs8dMucjJ00=', '2021-12-02 16:17:02.000000', 0, 'brownjoshua', 'Samuel', 'Johnson', 'rwalters@example.net', 0, 1, '2021-12-04 14:11:08.319238'),
(5, 'pbkdf2_sha256$260000$raCJnthrA23H0kb6R3wD83$FnKXl/2TKgWZ37IKrlvRQxCNa9yOMqv2RHrTNqNkwW8=', '2021-12-04 07:04:42.000000', 0, 'karen09', 'Nicole', 'Melendez', 'emunoz@example.org', 0, 1, '2021-12-04 14:11:08.584982'),
(6, 'pbkdf2_sha256$260000$0dIGBUGL4QnhL6wF4gYDdp$z+EzorvLBtMr9h3zJfRpQ4fHfQj916T7M7eJ2ylJk1U=', '2021-12-01 18:42:38.000000', 0, 'crawfordtiffany', 'Claudia', 'Austin', 'jenna70@example.org', 0, 1, '2021-12-04 14:11:08.881785'),
(7, 'pbkdf2_sha256$260000$1i7GzM8JtvGAALcF9F9g1C$IIqnuSUOd8S+kx7O0Xt3tMvT8LhFQhe/AkOxT4hvW/w=', '2021-12-02 21:53:06.000000', 0, 'jennifermorris', 'Patrick', 'Diaz', 'brycescott@example.net', 0, 1, '2021-12-04 14:11:09.209654'),
(8, 'pbkdf2_sha256$260000$JxenEZOQJUGSiauALpkBXZ$u6muo125CbrPP1Lw/l6E2zw4kgXdriC2xNbzbFPgnCA=', '2021-12-01 07:34:47.000000', 0, 'turnerkeith', 'David', 'Thompson', 'jbutler@example.org', 0, 1, '2021-12-04 14:11:09.507043'),
(9, 'pbkdf2_sha256$260000$WEKRUoOzWs9a2DLFYbva8y$EQAvF/0pbUajmnE81V6oVP18Yry6b3PftoIEsiukAhE=', '2021-12-03 00:39:17.000000', 0, 'jimmy92', 'Curtis', 'Curtis', 'melissastone@example.com', 0, 1, '2021-12-04 14:11:09.803905'),
(10, 'pbkdf2_sha256$260000$TqNgfbYd2Mpoew8pzWnHr2$wjF3bhSl7ZwR4ZgmXmJz+COu5iJFuYOh9gd3zyO3chA=', '2021-12-04 03:54:44.000000', 0, 'gibsonedward', 'Marie', 'Rios', 'rcasey@example.com', 0, 1, '2021-12-04 14:11:10.069432'),
(11, 'pbkdf2_sha256$260000$nm6mrTHiZi8HRsJAdxBs0G$1M4dBxv3sJrxKAkgrUobi16qMumLWaYQ1OMrRMR0To0=', '2021-12-03 21:44:49.000000', 0, 'jonathangarner', 'Austin', 'Sims', 'angela48@example.org', 0, 1, '2021-12-04 14:11:10.397925'),
(12, 'pbkdf2_sha256$260000$X4HO4eB7vga12CnIAFTvUv$2cP5pqGZ+PXPXhxeJXYps9/jwYpFCl+lnsyUIpYlDRc=', '2021-12-01 04:30:09.000000', 0, 'johnbryant', 'Zachary', 'Simmons', 'odavenport@example.org', 0, 1, '2021-12-04 14:11:10.679108'),
(13, 'pbkdf2_sha256$260000$pJ5PwyEOMk7YlUzzzQPofk$Imlu7zvCP9uw6jjYROsdsnfLd5FV5nNd5QJoDQ2u63g=', '2021-12-02 03:04:55.000000', 0, 'baileymcclure', 'Christine', 'Rodriguez', 'sean95@example.net', 0, 1, '2021-12-04 14:11:11.022774'),
(14, 'pbkdf2_sha256$260000$42J7MchyDN6LwADzAJHWHd$fpg8WIaeP+2XIncTQX/u4c3RIaS40j8L53NuRgsh03M=', '2021-12-03 20:20:41.000000', 0, 'haydencatherine', 'Charles', 'Haas', 'steven18@example.org', 0, 1, '2021-12-04 14:11:11.272569'),
(15, 'pbkdf2_sha256$260000$4PxM7S2ofGZyXZN6iMzy25$WTlNgLBaj6x5Hk/4//Y+jB+t+2vHqhU42jbKmcPRjG8=', '2021-12-02 05:42:44.000000', 0, 'scottcatherine', 'Jessica', 'Gonzales', 'linda29@example.org', 0, 1, '2021-12-04 14:11:11.569659'),
(16, 'pbkdf2_sha256$260000$cRw6YVA8XGdi71PwzhcsUW$9jAgWCL4r60sWZfFQbenWik/aI8d1LDuK4o6soKg5W0=', '2021-12-02 22:28:39.000000', 0, 'michellebrewer', 'Brandi', 'Wallace', 'jennifer06@example.net', 0, 1, '2021-12-04 14:11:11.882077'),
(17, 'pbkdf2_sha256$260000$BOvOVlY4Uf5JljDDPzwNbv$DIwm1U+57cgBCZs+lqX9Un4ApxuWMb9X2ZrNCzT69ow=', '2021-12-04 03:30:23.000000', 0, 'jessegutierrez', 'Valerie', 'Glover', 'ulopez@example.com', 0, 1, '2021-12-04 14:11:12.178881'),
(18, 'pbkdf2_sha256$260000$UDLBeRron42fsciWzJu7H6$Oxj4FUKTWf2sOHM+MtRjuc1E3Nwz1tomgJQpUu1KCvE=', '2021-12-03 03:08:31.000000', 0, 'acevedoemily', 'Robert', 'Haynes', 'ericmoore@example.com', 0, 1, '2021-12-04 14:11:12.491682'),
(19, 'pbkdf2_sha256$260000$qX1X9KA2NmQiOzF3N4UsP2$i8tG+65d6ZxQMDhBZu/267MH4NMpFqYRipgedQKUBlA=', '2021-12-02 23:43:53.000000', 0, 'benjamingraves', 'Amanda', 'Barron', 'kellyfrench@example.com', 0, 1, '2021-12-04 14:11:12.804032'),
(20, 'pbkdf2_sha256$260000$n0ss9eWdiITKaEnuGNMWHt$jXaNUfK/S+y9l7IhXx97wwgcDLgWXpsqpAGdwlTLK0o=', '2021-12-01 10:26:52.000000', 0, 'michaelschwartz', 'Robert', 'Garner', 'ronaldbradley@example.net', 0, 1, '2021-12-04 14:11:13.085222'),
(21, 'pbkdf2_sha256$260000$th2ckMOM4bcku5YMRklwKB$SvwOXRB7eT8NgDSFdWG97YrRuiFFUhIZuj7039vBUWk=', '2021-12-02 20:02:52.000000', 0, 'johnmiller', 'Hannah', 'Day', 'astevens@example.org', 0, 1, '2021-12-04 14:11:13.444790'),
(22, 'pbkdf2_sha256$260000$fMrqkE2AbIh0TdJzJxX1JR$MOvkr3U31OGLL1NytJMaahDnXcoi/uJguhtVC14iOVw=', '2021-12-02 18:32:30.000000', 0, 'seth79', 'Daniel', 'Elliott', 'steven56@example.com', 0, 1, '2021-12-04 14:11:13.710532'),
(23, 'pbkdf2_sha256$260000$xxZvlzJXzBanm1F2CrnAGE$KX1P+s8qWnz4AOV3KbzRqNOZT2MpW791NjDUDkDNwOI=', '2021-12-02 14:30:13.000000', 0, 'stephanie15', 'Charlene', 'Burnett', 'jlambert@example.net', 0, 1, '2021-12-04 14:11:13.991608'),
(24, 'pbkdf2_sha256$260000$KsnNK7O1PgBf4lebb1OOfE$ccwmVJ+QMgQIgecPN8281dAkvCHr1YLm34VWXIwq5GQ=', '2021-12-01 10:57:38.000000', 0, 'wilsonwhitney', 'Justin', 'Lambert', 'tonyajones@example.net', 0, 1, '2021-12-04 14:11:14.272724'),
(25, 'pbkdf2_sha256$260000$awOd9ln3nPCxVqp5rApPrc$rxRmTwLMSM+Q6MtCewmvvrjDij2psw8RfVSCRMqr6/U=', '2021-12-02 20:43:46.000000', 0, 'vsmith', 'Mallory', 'Chan', 'catherinehamilton@example.com', 0, 1, '2021-12-04 14:11:14.526887'),
(26, 'pbkdf2_sha256$260000$GaQXPnbfCSmBbhPW7Frva3$oTOFg3G6WrvZG0fRGJ2L5Sfvs9odAQW//1vm/QU+ZT8=', '2021-12-02 09:07:41.000000', 0, 'ccannon', 'Chloe', 'James', 'dawn12@example.net', 0, 1, '2021-12-04 14:11:14.792431'),
(27, 'pbkdf2_sha256$260000$TRtQyh5WK4LFkJExeIKWEy$+MQplf7qkAqLvyrqOS8ucBtaUma84wnfKcBOkR6nE2s=', '2021-12-03 10:02:50.000000', 0, 'rebecca34', 'Kelly', 'Martinez', 'mccalljohn@example.org', 0, 1, '2021-12-04 14:11:15.104700'),
(28, 'pbkdf2_sha256$260000$DI6OCwIoVa9ldpRp7Gv7XI$yXKFhbTYOUz8BXkevWZmuUkEn/JdIY9EnVRzkuT8llQ=', '2021-12-02 22:58:15.000000', 0, 'samantha57', 'Zachary', 'Melton', 'wrighteric@example.net', 0, 1, '2021-12-04 14:11:15.526964'),
(29, 'pbkdf2_sha256$260000$uLbu4IT2IMOqh7b2RXkhIL$K2+CQOlPPyJUYuRuvYS0pBl/LgnbydXW6SFyw7/4i2Y=', '2021-12-01 16:11:30.000000', 0, 'victoria99', 'Christine', 'Anderson', 'ubarr@example.net', 0, 1, '2021-12-04 14:11:15.808224'),
(30, 'pbkdf2_sha256$260000$acl7HhI4VwhYeMG1HnfhsY$CNIDrCiUvD93F8pUvfZI0ObdTdMBksoMbNpfkazhVKs=', '2021-12-04 12:05:32.000000', 0, 'tuckerbrittany', 'Aaron', 'Robinson', 'vanessawall@example.org', 0, 1, '2021-12-04 14:11:16.073798'),
(31, 'pbkdf2_sha256$260000$ist6hDzmtxOKEmvj0Hq2bK$NAjVZchdRZw3l1C196RjVNsBZGmUcnTBhu5VNiamAMs=', '2021-12-04 00:58:19.000000', 0, 'penadennis', 'Henry', 'Gomez', 'ghickman@example.org', 0, 1, '2021-12-04 14:11:16.558443'),
(32, 'pbkdf2_sha256$260000$tbSfG4HG0Bw3xguEI7vNHc$i46SV8WqOl2HjJVJA1+EiwXEC+WeyQ5w3aeQfSzGSgo=', '2021-12-04 11:21:28.000000', 0, 'jacobwarren', 'Jared', 'Hicks', 'kelleybetty@example.com', 0, 1, '2021-12-04 14:11:16.933319'),
(33, 'pbkdf2_sha256$260000$nxthdEjuxKiec5UFz9tGb8$OL+U8FiWoA74Urjx7PCvBuVIqRY8LiSOwzS8D1rFgZA=', '2021-12-01 10:58:45.000000', 0, 'jeffrey81', 'Charles', 'Parker', 'friddle@example.org', 0, 1, '2021-12-04 14:11:17.218751'),
(34, 'pbkdf2_sha256$260000$FPHslbf9MVJju5Da2dYJJK$kcBdEe7tyUMPztsK+6Baadkx71hRb7rRW4cJ28pxluY=', '2021-12-03 19:50:07.000000', 0, 'dawnpruitt', 'Robert', 'Wallace', 'jeffrey75@example.org', 0, 1, '2021-12-04 14:11:17.531225'),
(35, 'pbkdf2_sha256$260000$jE38pQwW34Ktj4GP1ONkbm$Q5ZMsEnkAm4E2IPG0WUFG7OwTq8bwr0z1FCe6Ee66zE=', '2021-12-01 08:20:47.000000', 0, 'lynnrodriguez', 'Ronnie', 'Adams', 'kyle43@example.net', 0, 1, '2021-12-04 14:11:17.781169'),
(36, 'pbkdf2_sha256$260000$SI2lvBpaaIMmxUcDJtxECd$OzdRuNj0SCUZWemlCDEcPm+EYRrSG+6avwF67O668L8=', '2021-12-03 04:47:35.000000', 0, 'ocompton', 'Kerri', 'Lawson', 'reneemarsh@example.org', 0, 1, '2021-12-04 14:11:18.124944'),
(37, 'pbkdf2_sha256$260000$JICgKOOPxIJozgl2pf0P9o$6/VaU6ghJzdY+RPTA3tcJ/hS8TcViUgpRbJnK3XQQeE=', '2021-12-02 05:30:43.000000', 0, 'jameslyons', 'Mary', 'Knight', 'susan62@example.net', 0, 1, '2021-12-04 14:11:19.010631'),
(38, 'pbkdf2_sha256$260000$fyGRUifoGDfGREYYT7qCBP$gAaQeHpucr47o1AS60FSr0tUmRt8oeyi9Ss/5BQXB4s=', '2021-12-04 16:48:07.000000', 0, 'dayvalerie', 'Ray', 'Adams', 'twheeler@example.net', 0, 1, '2021-12-04 14:11:20.072024'),
(39, 'pbkdf2_sha256$260000$D2mBl7cWlwlzaqigoWJT21$ouhHPuSjesVmtyLZ+pAj9d8kg+VVTdr1ylEz1KCfrpc=', '2021-12-03 11:39:44.000000', 0, 'amanda46', 'Ian', 'Boyd', 'danielboyer@example.net', 0, 1, '2021-12-04 14:11:20.461518'),
(40, 'pbkdf2_sha256$260000$IvbVW8RjC5PeaAKj3RBZFc$e/+YWxwqYlyweF2ARSPlDQ/PS+nyF6NYwEK6yzto6s8=', '2021-12-03 17:15:49.000000', 0, 'craig49', 'James', 'Lloyd', 'emily86@example.net', 0, 1, '2021-12-04 14:11:20.771455'),
(41, 'pbkdf2_sha256$260000$dlvegC03nMzYvQtIgU152i$QWh6I76zjjMWpy2Z8m/p8+PzwFogS9GavCf21UV3nbI=', '2021-12-01 13:20:37.000000', 0, 'michellecole', 'Russell', 'Mendez', 'wilsonkathryn@example.org', 0, 1, '2021-12-04 14:11:21.122324'),
(42, 'pbkdf2_sha256$260000$tdyaE7K2aEhWe6dph9shBU$85+L9hAL1pHGhpVusFADJvFBTCqZEakx5JXYf77Xyc4=', '2021-12-01 07:46:55.000000', 0, 'vincentcalderon', 'Megan', 'Scott', 'mcfarlandjoseph@example.com', 0, 1, '2021-12-04 14:11:21.393492'),
(43, 'pbkdf2_sha256$260000$BlVHv9D0tewiZjW2lJKkNu$Sb1SN5BLbcMs1wIbB7nIZJb/dYITmmFRCaEJfuiXE1Y=', '2021-12-02 00:54:42.000000', 0, 'brentguerrero', 'Kyle', 'Francis', 'joshua02@example.com', 0, 1, '2021-12-04 14:11:21.715532'),
(44, 'pbkdf2_sha256$260000$1LkXgcjRyf3y8h0jRAY11p$5tGaY1BeaWAT3jriqUWyAEOYQjB0bDl7LzMbz/Yu+AE=', '2021-12-03 18:40:35.000000', 0, 'richard95', 'Cynthia', 'Bryant', 'mary12@example.com', 0, 1, '2021-12-04 14:11:22.004497'),
(45, 'pbkdf2_sha256$260000$iYVDJsQANNhcOQSDnfZHTp$ma+nd8CpnoYLxQe2TXU5vn3esUEcCRSRLjX9ZHA6j9g=', '2021-12-02 12:22:26.000000', 0, 'dustinkim', 'Edward', 'Bernard', 'apriljohnson@example.com', 0, 1, '2021-12-04 14:11:22.305724'),
(46, 'pbkdf2_sha256$260000$AKYQnTNEcOy1iTLcaYnaZ9$jbWghAk2XYQmUPvoTr73T0PojyF5Gw6iZJF56SkFAB8=', '2021-12-01 08:32:20.000000', 0, 'uprince', 'Thomas', 'Gordon', 'hubbardjessica@example.org', 0, 1, '2021-12-04 14:11:22.702496'),
(47, 'pbkdf2_sha256$260000$dH8xw71vXh4ltPgzi2ALJi$OrBASTzX3y6oRensRHeLy9oWGAtueMAlPlC9AdmetCk=', '2021-12-04 04:14:01.000000', 0, 'thomassara', 'Maria', 'Bush', 'stephaniewatkins@example.com', 0, 1, '2021-12-04 14:11:23.038552'),
(48, 'pbkdf2_sha256$260000$PDTDqrgk2Q1aR1flz2oUW0$EQNxnK+2OJQsWILefWWB15njDZ58NbAzIraaYP1V3nI=', '2021-12-01 00:10:29.000000', 0, 'dwatson', 'Eric', 'Foster', 'egilmore@example.com', 0, 1, '2021-12-04 14:11:23.309881'),
(49, 'pbkdf2_sha256$260000$5Al7asVrlk8XMTts5ZYU4z$my+pGI/IwTSbS+wU/zS8vISPwcY6ImdJKMioipIMfxo=', '2021-12-04 19:02:38.000000', 0, 'wendy86', 'Marilyn', 'Gonzalez', 'jill90@example.com', 0, 1, '2021-12-04 14:11:23.649646'),
(50, 'pbkdf2_sha256$260000$mUaA7d9V1e1o7si1d6paOu$ciRQCPWf0dth48x7KYOBJZqB8kNskg0557D0H2Kd6Do=', '2021-12-04 18:10:36.000000', 0, 'osutton', 'Alan', 'Yang', 'whiteevan@example.org', 0, 1, '2021-12-04 14:11:23.916135'),
(51, 'pbkdf2_sha256$260000$jEAK3h6AfcItbPKgMEI9NR$kMU3fiwmEGVew112nT5u8v+rVkpKWYP5mmbXgp6K3DM=', '2021-12-04 00:39:40.000000', 0, 'bford', 'Jose', 'Stone', 'nicolealvarez@example.com', 0, 1, '2021-12-04 14:11:24.182065'),
(52, 'pbkdf2_sha256$260000$jdJqzFxR2PIVqkMqhuw2EO$An7i/vz4vgmy7U5o3vSIPvkLUtIp+ZHl+3vcZ58DUqo=', '2021-12-02 08:58:57.000000', 0, 'angela46', 'Jennifer', 'Salinas', 'qduran@example.org', 0, 1, '2021-12-04 14:11:24.437490'),
(53, 'pbkdf2_sha256$260000$HTThNUZo3vUYXopOerfjAb$2GfjWCX10eYG1zUmGVcDvSiRmMabfmzhS8h8XvlIYAQ=', '2021-12-01 01:29:50.000000', 0, 'douglassimmons', 'Ryan', 'Watson', 'mflores@example.org', 0, 1, '2021-12-04 14:11:24.698073'),
(54, 'pbkdf2_sha256$260000$8dXFbnEnRPzpaAu36Y752C$BpLcUi4RKxK1nXVwfO0qasLXO6cN+9Mjl4x4xpzjqXI=', '2021-12-04 14:20:26.000000', 0, 'schneidertanya', 'Tammy', 'Ferguson', 'sarahadams@example.net', 0, 1, '2021-12-04 14:11:24.971200'),
(55, 'pbkdf2_sha256$260000$Y2IRr3LBA1ULs5SeQI7LQi$KwYLpwyDJsfBSwzMqWPhBIwbkB5sjmEE2F8IioQo7so=', '2021-12-02 16:03:07.000000', 0, 'cruzchristina', 'Charlene', 'Townsend', 'johngibson@example.com', 0, 1, '2021-12-04 14:11:25.224437'),
(56, 'pbkdf2_sha256$260000$DeutWJSWH8Xo3kgcV1KItO$iSy9NbHld2vvwmCEzS4EAXozoAeWxagrkPuvbt1puNs=', '2021-12-02 14:18:50.000000', 0, 'ywhite', 'Christine', 'Cisneros', 'michele78@example.org', 0, 1, '2021-12-04 14:11:25.563751'),
(57, 'pbkdf2_sha256$260000$Oy1DBaCHTHxu4nRcLg3Lu2$n+RCYTOLWpuz2ORy3gNnhwltqgUuO5fAsT6FmEoVWTc=', '2021-12-01 13:18:23.000000', 0, 'gwoodward', 'Matthew', 'Johnson', 'williamvaldez@example.net', 0, 1, '2021-12-04 14:11:25.880366'),
(58, 'pbkdf2_sha256$260000$UKl1EBl8gP91ucdijeHNXh$29vAWLEvz2kmldBSWjgvp62L+E2I0i9CCPNUgPL5ON4=', '2021-12-01 12:35:01.000000', 0, 'traceycruz', 'Debra', 'Mack', 'jonathananderson@example.com', 0, 1, '2021-12-04 14:11:26.138249'),
(59, 'pbkdf2_sha256$260000$KAGbx2BCQeIsbSPWCeu7Qe$GXn1rFva6ENR/9Q7pBtNz5WjD+xH2dRIYYWyJ9z/N+A=', '2021-12-02 09:18:24.000000', 0, 'joannechang', 'Elizabeth', 'Hunter', 'mballard@example.com', 0, 1, '2021-12-04 14:11:26.412322'),
(60, 'pbkdf2_sha256$260000$ShOaxj3c81jc0VYMx4KReB$9NYLFtbOE9C2OXe4H6NhN5Z+i2dxxhK1XeJGdfOAL7Y=', '2021-12-01 07:02:32.000000', 0, 'christopherwood', 'Lindsay', 'Martinez', 'iparker@example.com', 0, 1, '2021-12-04 14:11:26.751609'),
(61, 'pbkdf2_sha256$260000$tXkaMM7FQT7G54p9Opd6O7$7OxZTkGmnfxYjeiIH2z6gW+E7mBxfFqtrqrBlHlk5y0=', '2021-12-03 06:57:17.000000', 0, 'sean29', 'Emily', 'Flowers', 'tcooper@example.com', 0, 1, '2021-12-04 14:11:27.082217'),
(62, 'pbkdf2_sha256$260000$DCU51nRlOpiQKVtXOMSkk9$/12LD5TCYjL2XzmvZ66CL5mdJM8megX2kBbK//07FU8=', '2021-12-02 10:31:30.000000', 0, 'michael37', 'Lindsey', 'Becker', 'dcross@example.com', 0, 1, '2021-12-04 14:11:27.353615'),
(63, 'pbkdf2_sha256$260000$u7IYJhuE93PX7gmT5bLWRl$FgsVZtoQdGWmWbs59SX/i1haMaydyeY4ZkqAUZhZxQY=', '2021-12-02 16:12:09.000000', 0, 'christopher94', 'Beverly', 'Lawson', 'frankthomas@example.net', 0, 1, '2021-12-04 14:11:27.649036'),
(64, 'pbkdf2_sha256$260000$gxNJ1Po1Y3nV3U8arwGs2h$j+YmCNAFYWThC/ZEyxYAVhGrihbvdrj7sT7NoXL/HT8=', '2021-12-01 04:07:46.000000', 0, 'lucas45', 'Zachary', 'Ramsey', 'katelynsanchez@example.com', 0, 1, '2021-12-04 14:11:27.894562'),
(65, 'pbkdf2_sha256$260000$mJ9A4WWT9SUegWjfCU6tDd$95TEjGARnwhC0FZTOIinWRJGYjBnWX8fnt7BuP4hpYs=', '2021-12-01 08:24:48.000000', 0, 'whitekirk', 'Thomas', 'Davis', 'ldouglas@example.com', 0, 1, '2021-12-04 14:11:28.171213'),
(66, 'pbkdf2_sha256$260000$2Mhf0ftxpsgBHsmHHWZX97$RKDv7NOWCkn5KlngnppCSPMOnV85KqcpRpFcFQLYcqI=', '2021-12-03 01:34:54.000000', 0, 'davistiffany', 'Antonio', 'Cooper', 'chendanielle@example.net', 0, 1, '2021-12-04 14:11:28.471672'),
(67, 'pbkdf2_sha256$260000$YIZqx8emrZuommXebKjXVp$7EIVMU6Z02Pm20Ycia21ok5iu+GuPWkt89fcIvwaZbU=', '2021-12-04 11:14:40.000000', 0, 'daniel92', 'Brenda', 'Haney', 'jamesmathis@example.org', 0, 1, '2021-12-04 14:11:28.772685'),
(68, 'pbkdf2_sha256$260000$BDohSIq3rY82UoWGFKa1cG$OhBsXy2AKaOfgkleUdLU6RGr/4/xD7XixRQurhbZlfM=', '2021-12-03 18:20:48.000000', 0, 'fcantu', 'Nathan', 'Ward', 'michaelgarza@example.com', 0, 1, '2021-12-04 14:11:29.071827'),
(69, 'pbkdf2_sha256$260000$IUKM2J8UUpghYtrJn5s3I6$7XmF2ZjeYk/tCSeWDfc2p7F5DPgAr3PcqcjwYogy86c=', '2021-12-01 06:17:07.000000', 0, 'scottamy', 'Lisa', 'Lee', 'john53@example.net', 0, 1, '2021-12-04 14:11:29.316041'),
(70, 'pbkdf2_sha256$260000$G14pZBncRHffxM41QU4TDE$67Tj/UJKA0EoiCtQXlCmGDWi7hpBjAl/0KkgMh0pc4k=', '2021-12-04 15:28:01.000000', 0, 'susanwells', 'Rodney', 'Banks', 'christopher18@example.net', 0, 1, '2021-12-04 14:11:29.605133'),
(71, 'pbkdf2_sha256$260000$PQOMlRCOSep0icZuWhSR59$tNxVLpgBtrxuZCl7pGoNi/MFyxFUY6Fk2OxI/1iivhM=', '2021-12-02 12:54:21.000000', 0, 'asalas', 'Abigail', 'Cole', 'manuel02@example.org', 0, 1, '2021-12-04 14:11:29.846886'),
(72, 'pbkdf2_sha256$260000$bCCfE6j4HLWWVacbbYWgoI$VTNPVwLYqDRxUyveGRkz6OIqV7OyISAf0dWZxjoLLr0=', '2021-12-01 20:22:55.000000', 0, 'joseph91', 'Elizabeth', 'Logan', 'jonessamuel@example.com', 0, 1, '2021-12-04 14:11:30.116368'),
(73, 'pbkdf2_sha256$260000$a6P9NLo8GjlZUomyzTo1en$wdtVF+hIp6LbpKp/07VoX0SSz85HVPdmdG/EydzHtf4=', '2021-12-01 15:21:46.000000', 0, 'jadams', 'Patrick', 'Cain', 'kelleyjulie@example.com', 0, 1, '2021-12-04 14:11:30.361164'),
(74, 'pbkdf2_sha256$260000$O7agNbDQFYCtQbrLZbQUd5$LDfdud5fiTvrwGPDdeIOVNk/X0sXObYD8KujDAWoNUQ=', '2021-12-01 17:53:32.000000', 0, 'ogriffith', 'Ryan', 'Reilly', 'ybarrett@example.org', 0, 1, '2021-12-04 14:11:30.680172'),
(75, 'pbkdf2_sha256$260000$AobdD1MiVtOTDLTsrb7QsJ$URm3flDPuOr12EMmcddqpb1rKrgaiJ/qbtscvEbK3S0=', '2021-12-03 11:03:01.000000', 0, 'cunninghamtimothy', 'Lisa', 'Williams', 'cruzmichael@example.org', 0, 1, '2021-12-04 14:11:30.960085'),
(76, 'pbkdf2_sha256$260000$lwQDtuCGaTdqq7jz3BSsl6$Eujwyy77RVVCf6daCwWLBKsSmMDhzLEnHwirK9xXLZI=', '2021-12-02 07:44:14.000000', 0, 'kristy45', 'Sylvia', 'Monroe', 'batesmichael@example.net', 0, 1, '2021-12-04 14:11:31.227885'),
(77, 'pbkdf2_sha256$260000$4cP3DOO8jMOnpArXq3pnrE$zqRA+mQXQ9FqQI9SloGYVzSscAkTvDIG+vHx6VOnA+c=', '2021-12-01 03:26:11.000000', 0, 'phillipsdaniel', 'Mark', 'Paul', 'rgutierrez@example.com', 0, 1, '2021-12-04 14:11:31.582833'),
(78, 'pbkdf2_sha256$260000$9XXd2FEGmTPWy5uX5UdxP1$PByw/xPAEhv7xz+lXCn5LQumT0dCSAohSxJpCoCfLBg=', '2021-12-02 03:39:45.000000', 0, 'kathrynjacobs', 'Brenda', 'Green', 'cody10@example.org', 0, 1, '2021-12-04 14:11:31.916592'),
(79, 'pbkdf2_sha256$260000$nfHSK4aCvwFl2MXQtMaxpI$ZjLk8c5GIrb4CI2dMR3PiQMfLe26xma8yo3ciER1LOU=', '2021-12-02 07:35:53.000000', 0, 'brian13', 'Emily', 'Powers', 'ariel23@example.org', 0, 1, '2021-12-04 14:11:32.269856'),
(80, 'pbkdf2_sha256$260000$mJI6nCJQtazIiM1DvyQSnd$rzkqXe3WRhXPvuRiuJJ7M9ouEZUbZZUjDy89joH213c=', '2021-12-04 06:07:56.000000', 0, 'john72', 'Dorothy', 'Fischer', 'phillipsdonald@example.org', 0, 1, '2021-12-04 14:11:32.634082'),
(81, 'pbkdf2_sha256$260000$MNYeuMoYjHYWvtwXC4r0j1$2Yk8Rs9G+StKrn9BU4ssHtb1Z+zC+Os4CB1IuxJquOw=', '2021-12-01 05:18:29.000000', 0, 'jodywilson', 'Lisa', 'Scott', 'cindyreynolds@example.com', 0, 1, '2021-12-04 14:11:32.929028'),
(82, 'pbkdf2_sha256$260000$ShR6Gohi0T7PSztniy3BqM$GEDwvDW9NWphhCjcU7EBQQQrR8n61/V7ha0udo63fjE=', '2021-12-01 12:16:08.000000', 0, 'rhondaanderson', 'Francisco', 'Poole', 'bowendana@example.com', 0, 1, '2021-12-04 14:11:33.216004'),
(83, 'pbkdf2_sha256$260000$ixbyFRIAN33TcqvQEslezg$2yC1R+fcl3i0KM+MkKJ4lDIjk7J1h+o1MD9HWAas0L4=', '2021-12-01 16:54:07.000000', 0, 'danielpage', 'Ryan', 'Herrera', 'jarellano@example.com', 0, 1, '2021-12-04 14:11:33.493373'),
(84, 'pbkdf2_sha256$260000$GThG8umC6226rYU0eBXoi1$bdT74fS93c2fh2SvSe7F9Myg/lZ19F4aw6UnyrQIGQQ=', '2021-12-02 13:53:02.000000', 0, 'sjones', 'Carrie', 'Jackson', 'bakergloria@example.com', 0, 1, '2021-12-04 14:11:33.827779'),
(85, 'pbkdf2_sha256$260000$aExjoy6xLec6j3cTt7gIVW$RuB72EgBLAl0eRdqOVrBz3Hr04dH2JU7WVqRspjhVoU=', '2021-12-01 23:41:09.000000', 0, 'markjohns', 'Glenn', 'Snyder', 'lewistyler@example.net', 0, 1, '2021-12-04 14:11:34.324832'),
(86, 'pbkdf2_sha256$260000$BNUtz7MzhOivznGudOCI9V$xfbhvFQ0URcH0lr2PrW6VjSkewBboamM9e6k+Qc53Y0=', '2021-12-03 15:37:27.000000', 0, 'simmonsbarbara', 'Daniel', 'Miller', 'richard00@example.net', 0, 1, '2021-12-04 14:11:34.762244'),
(87, 'pbkdf2_sha256$260000$m6ytzOLqLDzE54VFxffP00$+aJDyGYN0R4cOsGbKQZEKLhAqYb2boKOGRLu/OOXOD8=', '2021-12-02 01:57:27.000000', 0, 'hallashley', 'Steven', 'Gibson', 'thampton@example.org', 0, 1, '2021-12-04 14:11:35.152763'),
(88, 'pbkdf2_sha256$260000$IfFYuOjEsBtW4RWm8TaWYy$fH+mdYwA6Ld2hRrweR9ekk4ZZQB3DOYe5S1+srFj+aw=', '2021-12-04 19:08:05.000000', 0, 'heatherbell', 'Shane', 'Richardson', 'shawsandy@example.org', 0, 1, '2021-12-04 14:11:35.418503'),
(89, 'pbkdf2_sha256$260000$vyduMQFu4gpPIic6rMp6vl$gFu7lblbKcoe8mH85j7+Z0g7axLeHf8CL7kMaOni9Fg=', '2021-12-01 01:46:53.000000', 0, 'madisonsimpson', 'Brian', 'Shaw', 'xrios@example.com', 0, 1, '2021-12-04 14:11:35.901732'),
(90, 'pbkdf2_sha256$260000$xCB47qQP9WPRA4vp8Iayed$9VCqq63K5pNoDLOmxV6GhS7h9ZjXd4cmpwr0xHP/jPc=', '2021-12-01 09:21:07.000000', 0, 'zachary85', 'Barbara', 'Miller', 'hannah25@example.com', 0, 1, '2021-12-04 14:11:36.357908'),
(91, 'pbkdf2_sha256$260000$dC0fnEcNVO3xNedSPzm7nZ$6JQgm1JxoDi2w0msLj5txXzH4fqrlIHLUhbeBHH2i6g=', '2021-12-01 16:14:09.000000', 0, 'emullins', 'Michelle', 'Martin', 'mrussell@example.com', 0, 1, '2021-12-04 14:11:36.722721'),
(92, 'pbkdf2_sha256$260000$lLQxgkdhOcPdfNUhql90xQ$/biKyOOfPDXPOya+UkaVPPnDBoaXkjFfKKTwNs6Hjgw=', '2021-12-02 22:00:20.000000', 0, 'tammyrogers', 'Pam', 'Clay', 'njackson@example.org', 0, 1, '2021-12-04 14:11:37.056770'),
(93, 'pbkdf2_sha256$260000$eYApgz1BMSlcSqFtWugTg9$fKQCbsyOU+Gtt/UH6UtA+wzshPvCzDv9AXbXh7jonf0=', '2021-12-01 05:29:28.000000', 0, 'munozlisa', 'John', 'Leon', 'kimberlycunningham@example.net', 0, 1, '2021-12-04 14:11:37.352871'),
(94, 'pbkdf2_sha256$260000$IEBDST1v1sK6elGUsn5iQI$4WL1X4DdR25j3xC9P0ws0XzWI/4WqrXR5ZgCGfEHYCw=', '2021-12-02 11:42:53.000000', 0, 'rivascynthia', 'Jon', 'Montgomery', 'coxcarla@example.com', 0, 1, '2021-12-04 14:11:37.723900'),
(95, 'pbkdf2_sha256$260000$rfZ9sbIufieYz11MUq19ck$2Ntt8bVMkKKLeoBAfxPc1p2lMJ6plmLIPTgYTtiezBA=', '2021-12-01 21:22:37.000000', 0, 'marktaylor', 'Cassandra', 'Johnson', 'swilliams@example.org', 0, 1, '2021-12-04 14:11:38.027483'),
(96, 'pbkdf2_sha256$260000$LDb4ZnpBz3FokCOJmbzvFv$G9JD+TP+TZaobT98QUVIvTyRbC9iZ1KcfliVEhF8E2g=', '2021-12-01 18:23:21.000000', 0, 'sroberts', 'Jamie', 'Wright', 'mary68@example.org', 0, 1, '2021-12-04 14:11:38.356005'),
(97, 'pbkdf2_sha256$260000$d5WdpKgqPL6SUZJEhI6DeL$cEkjgWuDL7NS1u7KEhZIaTwYGU36zIdzI9gjdIX/ImA=', '2021-12-01 22:54:35.000000', 0, 'klong', 'Stephanie', 'Ramirez', 'davidolson@example.net', 0, 1, '2021-12-04 14:11:38.748292'),
(98, 'pbkdf2_sha256$260000$mMMCrdHoj2JkB6cT5X7DWR$78iC6Bz/JLAjVSHw3uwHlHFclLgr3GHhxJC5c2vAKYc=', '2021-12-02 21:27:28.000000', 0, 'cardenasnatalie', 'Erik', 'Ashley', 'ericchambers@example.org', 0, 1, '2021-12-04 14:11:39.094471'),
(99, 'pbkdf2_sha256$260000$jYRcgt5AT2ud5TMQSmGjFW$Xe2JsL60bk0Lv6KOgcqqIOi8Q5DiFEj65qfL5fG+khM=', '2021-12-01 16:50:51.000000', 0, 'kimkatherine', 'Nathan', 'Bradford', 'cstevens@example.com', 0, 1, '2021-12-04 14:11:39.371617'),
(100, 'pbkdf2_sha256$260000$0cJE2hhxQfmwGokVn9VgvA$BBwcmwAPdlTx4XeIeAJPOWIEZ0wAub7FW471wg/isxA=', '2021-12-04 17:02:38.000000', 0, 'thorntonjessica', 'Kevin', 'Walsh', 'prestonbailey@example.net', 0, 1, '2021-12-04 14:11:39.649827'),
(101, 'pbkdf2_sha256$260000$EYWt7BUkW9MPPmqCvscOuB$rTZdyWaIrnP7jEr4QJ0hAsq3jNAa2WGbXK3PMwWYQdo=', '2021-12-01 11:54:48.000000', 0, 'lbecker', 'Michael', 'Clark', 'roberta93@example.org', 0, 1, '2021-12-04 14:11:40.117522'),
(102, 'pbkdf2_sha256$260000$7jE9yobHSO00R4VtI2FO0F$7OzGmT4MGnVd5JqMmBZRawG6G0TZQxDfN2zirJSb1+0=', '2021-12-03 11:49:04.000000', 0, 'daniellewilliams', 'Ryan', 'Wiley', 'aaronellison@example.com', 0, 1, '2021-12-04 14:11:40.815755'),
(103, 'pbkdf2_sha256$260000$enwBN7LNjfILCmLhQsbB6K$wgazaHHf1gvTzrUPEQxVNx7x3pMxWcjAPrE317ksXK4=', '2021-12-01 00:59:31.000000', 0, 'scooper', 'Kristi', 'Kim', 'kathy22@example.net', 0, 1, '2021-12-04 14:11:41.319407'),
(104, 'pbkdf2_sha256$260000$3VLFlEk4FfHpsJgxgGyS8h$M4R1quqDAKDsXXj7hvXj9zexfyHraNTZFAByciRm3YI=', '2021-12-02 04:13:42.000000', 0, 'whiteashley', 'Jennifer', 'Harrison', 'yolandawerner@example.org', 0, 1, '2021-12-04 14:11:41.655732'),
(105, 'pbkdf2_sha256$260000$XMWl9IZrLJFm7wkktXoBpy$I6+DmgGU2ElQN52v6F6RDeT8gnJFpdijv0FePODYlAA=', '2021-12-04 15:56:52.000000', 0, 'gregorylarson', 'Mary', 'Sanders', 'tanya75@example.com', 0, 1, '2021-12-04 14:11:41.970779'),
(106, 'pbkdf2_sha256$260000$ZSsof1BdiYeYmkf7H9rmdj$EDsRZ7ut4jkf4xu8uZFxAQXzhRFTeKa2FxWb7DnNMzc=', '2021-12-02 01:48:20.000000', 0, 'brittany20', 'Kendra', 'Hernandez', 'mirandataylor@example.com', 0, 1, '2021-12-04 14:11:42.271408'),
(107, 'pbkdf2_sha256$260000$bLYaWyd2x0q9VSI6aqB817$7A4UDX1UZaEPNtqxl6+ZijMs13oXzpmBDngy8pSzdTE=', '2021-12-02 04:47:07.000000', 0, 'richard88', 'Lori', 'Sanchez', 'calexander@example.net', 0, 1, '2021-12-04 14:11:42.539601'),
(108, 'pbkdf2_sha256$260000$91Sx8yX2bcBC1UuhXhnr2q$zaNhH5kU4irjXXlY+IpDLIjK0NJ03YGSkvkYDTYpyns=', '2021-12-03 19:42:30.000000', 0, 'elindsey', 'Katie', 'Perkins', 'jessicahicks@example.org', 0, 1, '2021-12-04 14:11:42.836761'),
(109, 'pbkdf2_sha256$260000$QFP47hH2529fQdQd1MxVgv$9cOXLN3gfAEtf03LJM2Dts/P2Jmjm1gUM4sdL/acsYk=', '2021-12-04 08:37:43.000000', 0, 'jbarnes', 'Brooke', 'Morris', 'sgonzalez@example.net', 0, 1, '2021-12-04 14:11:43.138026'),
(110, 'pbkdf2_sha256$260000$TNeh43F9DOqEkTxIIx7qJY$E/0w8IJ0QRPffc9WGslY3NOpoAnWT+i1yiYqcYHKyMA=', '2021-12-03 06:40:27.000000', 0, 'tinaellis', 'Lawrence', 'Harris', 'evansdiana@example.org', 0, 1, '2021-12-04 14:11:43.393704'),
(111, 'pbkdf2_sha256$260000$byxi4geto7i7FikTtT31pa$qfZjtLUQx5vasukn348zsno9PGyOxYKiWqXt3VhJmFg=', '2021-12-02 12:26:45.000000', 0, 'jennifer52', 'Ryan', 'Myers', 'mariacruz@example.com', 0, 1, '2021-12-04 14:11:43.764070'),
(112, 'pbkdf2_sha256$260000$DuObVJ66vXBYHH3QaVvbGf$IZVrUuMipgjdQJbwfYhcmj8RtoK/KY0WtwaiR88zX4s=', '2021-12-03 01:08:38.000000', 0, 'bellmatthew', 'Stephen', 'Smith', 'shieldsjennifer@example.net', 0, 1, '2021-12-04 14:11:44.060909'),
(113, 'pbkdf2_sha256$260000$phQfdjdBBl40ZWVtziNzgM$vrtyzrnSfdAU37DNiW1ObqtRmczt+P7Xy/YEM0Tml/A=', '2021-12-04 11:46:46.000000', 0, 'annamason', 'Cory', 'Delgado', 'sanchezangelica@example.org', 0, 1, '2021-12-04 14:11:44.314185'),
(114, 'pbkdf2_sha256$260000$LAfE2GOyLRjFOCXQPzsvxd$EN8JfWV4zGcd0s5AvWLEnrj87OeWn0SHUvc24s2Rfzk=', '2021-12-02 10:33:08.000000', 0, 'kevin13', 'Christie', 'Campbell', 'kristina89@example.net', 0, 1, '2021-12-04 14:11:44.697143'),
(115, 'pbkdf2_sha256$260000$X32uWRBWjqm7veAu17o0PV$IZBEnBAC1DmXhBFa7odjZGhKC80GKutZc7k/3WAKQlg=', '2021-12-03 16:31:42.000000', 0, 'jamesgonzalez', 'Karen', 'Green', 'hayden39@example.com', 0, 1, '2021-12-04 14:11:45.008929'),
(116, 'pbkdf2_sha256$260000$sBJvPIxIf2UfuIJuDem8jb$44K/xjLKv369fL2PdvuB3sj8E7crDWevIjLltUPYMaA=', '2021-12-02 21:12:48.000000', 0, 'caleb02', 'William', 'King', 'jennifer00@example.net', 0, 1, '2021-12-04 14:11:45.311195'),
(117, 'pbkdf2_sha256$260000$yAxbgrHKLyJ5RmYZaFbFul$NPNKjXR1OAxZGBTFgFOjaIRHwLT1EO54qkNUFoYFRC0=', '2021-12-02 21:49:27.000000', 0, 'melissajacobson', 'Susan', 'Jones', 'smithrichard@example.com', 0, 1, '2021-12-04 14:11:45.677234'),
(118, 'pbkdf2_sha256$260000$i8vCciSfExRUYJInHFYJ9A$y+AxOjX8Z2zs9EdsWdZQ5otOVIYJmEwhqHGFC6s3SB8=', '2021-12-03 09:04:14.000000', 0, 'christine24', 'Ashley', 'Tanner', 'erin82@example.com', 0, 1, '2021-12-04 14:11:46.071180'),
(119, 'pbkdf2_sha256$260000$ChxVSdcfHuUkCxwe7fikqA$gaLBC1F1RmRC4sEaJyjwaFPZHcOnKJiOWY6Uf7Kx20Y=', '2021-12-03 18:20:31.000000', 0, 'doughertysteven', 'Connie', 'Williams', 'lewisjames@example.com', 0, 1, '2021-12-04 14:11:46.533944'),
(120, 'pbkdf2_sha256$260000$6OJeD3tAR0omkA0LgdO5td$AtdeLmL0kp78lvoJs0Inds91HlVa+8gd4Wr2YiT8LYQ=', '2021-12-01 21:46:16.000000', 0, 'adriana74', 'Ronald', 'Williams', 'porterandrew@example.net', 0, 1, '2021-12-04 14:11:46.837924'),
(121, 'pbkdf2_sha256$260000$A5mtybgghJY5IdqYNay9pG$ksKDR/r0JUPTxCvYEHgOyE3Lq2BU537UchQfzrMXQJo=', '2021-12-02 07:49:32.000000', 0, 'oibarra', 'Kristin', 'Johnston', 'jgray@example.org', 0, 1, '2021-12-04 14:11:47.239851'),
(122, 'pbkdf2_sha256$260000$3tuCWgxSlZi0vwQVqP2isd$QjbOqEBb9fC+f7ixMmUqW2qx21KaFgWsA3S/wsicup0=', '2021-12-01 02:41:26.000000', 0, 'scottjason', 'Colleen', 'Love', 'smithaaron@example.net', 0, 1, '2021-12-04 14:11:47.729046'),
(123, 'pbkdf2_sha256$260000$R90NqIV8IkjsBfkOpz6CxK$uVJ1rNBF3hcsYwBgie7QGVe+TX+usVynSqQVxrULXxE=', '2021-12-02 05:59:55.000000', 0, 'carolgarrett', 'Richard', 'Cook', 'pmeadows@example.com', 0, 1, '2021-12-04 14:11:48.141628'),
(124, 'pbkdf2_sha256$260000$h3ZdKxW5BAIATizTYkMicb$lm12pMQwFYDZoRiCZHNi5ejR6IhOfih5Rjt6+ONZQv8=', '2021-12-03 13:39:55.000000', 0, 'xcohen', 'Charles', 'Reyes', 'masseymicheal@example.com', 0, 1, '2021-12-04 14:11:48.698973'),
(125, 'pbkdf2_sha256$260000$PH78LQOug0CeJv9WrpPGnW$RiQJ53ITQw45RWA6whOudjCoJnS3s94S+TrOWPV1cZU=', '2021-12-01 12:36:45.000000', 0, 'zmoody', 'Matthew', 'Taylor', 'ielliott@example.com', 0, 1, '2021-12-04 14:11:49.335593'),
(126, 'pbkdf2_sha256$260000$fwO78q3nv2yPhFpFFWlFF9$pxn937r2bczGZzhTpjzBvH7RGAqPyf5Hqtezb3UX+9w=', '2021-12-04 03:34:52.000000', 0, 'debraallen', 'Dominic', 'Martin', 'jessicavazquez@example.com', 0, 1, '2021-12-04 14:11:49.761671'),
(127, 'pbkdf2_sha256$260000$0CF3bEB9lOFn9sZP9VVRjZ$ZF10Iws5qFctFXrmKX/uM57deGMUZ9X70INyQQpkzy8=', '2021-12-03 01:02:30.000000', 0, 'tanya99', 'Victoria', 'Hill', 'theodoreperry@example.com', 0, 1, '2021-12-04 14:11:50.259876'),
(128, 'pbkdf2_sha256$260000$eVsyWmupvNjSoSVkaoTJH7$0ZGsmXemOSUluClGAVfFRDX8d3GhoPmjvyPrEc+4YJM=', '2021-12-01 04:20:21.000000', 0, 'emily46', 'Brian', 'Clark', 'adamskatherine@example.org', 0, 1, '2021-12-04 14:11:50.682747'),
(129, 'pbkdf2_sha256$260000$6MjQLRoJ0thNl3UTHnH5iW$bxxjiZULOjxZwNNz4Dv01BwNmUlKBbBQ94/E//fVoys=', '2021-12-03 08:40:05.000000', 0, 'joneshannah', 'Mary', 'Perez', 'oconnellrandy@example.net', 0, 1, '2021-12-04 14:11:51.031815'),
(130, 'pbkdf2_sha256$260000$vfw8D7k6ZgSoY5bATtFqxJ$dzdIeWHug/Qzl1jMwYtjKW4UmHlSOvxNK/kdFf6oJy8=', '2021-12-03 17:56:37.000000', 0, 'andersoncharles', 'Andrea', 'Powell', 'dellis@example.org', 0, 1, '2021-12-04 14:11:51.396837'),
(131, 'pbkdf2_sha256$260000$RcCFbNmGeYeWBOkdSOL9sb$N6cWkV7kms8w961M3pe8LJUZxy8mWoAOkAFS4l24lYc=', '2021-12-04 18:01:44.000000', 0, 'castroryan', 'James', 'Martinez', 'princemanuel@example.net', 0, 1, '2021-12-04 14:11:51.896502'),
(132, 'pbkdf2_sha256$260000$NNInatr49Rl9OAHzkUvBue$19KCNx7mB8TigwLpLlW3019Jl7abXJREoBWU9rbbMlY=', '2021-12-03 11:27:11.000000', 0, 'juliewatson', 'Richard', 'Conrad', 'heidi49@example.com', 0, 1, '2021-12-04 14:11:52.584661'),
(133, 'pbkdf2_sha256$260000$BwEHosA0aQPWJYuw5SGqBZ$AKFjStIyFQP8QxPKpICJzymPZ3aVEIB4K2MouSyicZU=', '2021-12-03 14:20:14.000000', 0, 'alyssarogers', 'Gregory', 'Reese', 'alexis90@example.net', 0, 1, '2021-12-04 14:11:53.118999'),
(134, 'pbkdf2_sha256$260000$EWqRBhcvVGWBfYmN1MCX0O$2+jIAI7/W+BgONEarHq0ZcdlLlTbxdvziipmTT0I05w=', '2021-12-02 01:58:33.000000', 0, 'jessica36', 'Derek', 'Smith', 'bpeterson@example.com', 0, 1, '2021-12-04 14:11:53.483081'),
(135, 'pbkdf2_sha256$260000$ryFApC8WCmq9KcMbR48XQR$IyJvO20xfccWBWeVzeTCwqWfqUGow5wzLlvimasOG7M=', '2021-12-02 18:08:40.000000', 0, 'crystal79', 'Lisa', 'Ferguson', 'whitekimberly@example.net', 0, 1, '2021-12-04 14:11:53.836276'),
(136, 'pbkdf2_sha256$260000$mpvliqsFBNeU3lwjWm6jzL$Asnpl8yZgsriPIz+pKME3V6j+2uyjRIxo+0WorX6sGA=', '2021-12-03 22:47:59.000000', 0, 'chelsea54', 'Gene', 'Floyd', 'mossroger@example.org', 0, 1, '2021-12-04 14:11:54.127776'),
(137, 'pbkdf2_sha256$260000$PTVwWjmL4YqwTcEQF6an85$GH+mE3m0gxvqDr7e+MaC0GKmK+6eTxhHOIVTKv2Vpqw=', '2021-12-02 08:47:16.000000', 0, 'joannparker', 'Ashley', 'Burton', 'jasonsingleton@example.org', 0, 1, '2021-12-04 14:11:54.437946'),
(138, 'pbkdf2_sha256$260000$PTMQ5ecQytmwNewKgve0XV$EP5orpPoJPlLt6rOVgeXheDaeZHUso1vJfDtdnbbOc8=', '2021-12-01 23:03:59.000000', 0, 'nicholasgonzalez', 'Robert', 'Zamora', 'padams@example.com', 0, 1, '2021-12-04 14:11:54.737771'),
(139, 'pbkdf2_sha256$260000$rUpWYoYMGNJQM2ZB0jxSKO$PPJOOfk1D7UPd4wLXU3EyZB3rkf8yX6DjLFQrLWKenk=', '2021-12-04 17:56:18.000000', 0, 'amber36', 'Calvin', 'Edwards', 'richardwiggins@example.com', 0, 1, '2021-12-04 14:11:55.016600'),
(140, 'pbkdf2_sha256$260000$DHdq12QTKq8oHC2MwNjErw$/3i6uusd7fbA3Alvq2nx+fR3qgjES8lJigQiNzC7Ehw=', '2021-12-03 00:51:58.000000', 0, 'frypeter', 'Kayla', 'Willis', 'scottprince@example.com', 0, 1, '2021-12-04 14:11:55.371624'),
(141, 'pbkdf2_sha256$260000$NK1cQYEwrBF4KGC31YgIJk$BHeZbEi6GAwfIbOBSl+3ZXiIiWkujQKY/8Ym2iN5ekw=', '2021-12-03 06:49:11.000000', 0, 'gibsonjared', 'Michael', 'Gonzales', 'matthew40@example.org', 0, 1, '2021-12-04 14:11:55.690010'),
(142, 'pbkdf2_sha256$260000$BW5848QL20jyhLRZNRdlzv$iumaysY64AFu4C3SBhMAjTdKuePaZ5pkv78hKbchwMM=', '2021-12-03 22:17:28.000000', 0, 'regina79', 'Jessica', 'Carr', 'iwilson@example.net', 0, 1, '2021-12-04 14:11:55.971543'),
(143, 'pbkdf2_sha256$260000$5wW13KIPMWTmvegi1un2b0$19uXNqyTlkxeEBQGU0Wjvz3DQrjk4/C0ygZ+TBG13w4=', '2021-12-04 04:22:57.000000', 0, 'jacksondavid', 'Thomas', 'Barron', 'stanleyevans@example.net', 0, 1, '2021-12-04 14:11:56.282184'),
(144, 'pbkdf2_sha256$260000$B87A23PjUPXRWKm2U9ZYZ2$5Lg9mJr8rlIoFhIXKrsd+G+vCnDNT5TfmGiltG+5Efk=', '2021-12-03 08:15:44.000000', 0, 'joshuasanchez', 'Deborah', 'Brown', 'jasonhall@example.com', 0, 1, '2021-12-04 14:11:56.626678'),
(145, 'pbkdf2_sha256$260000$ZlgGysaPq6aGn8ohuQAZFI$COiDsgz7oA0EA8yQEq3ySckLrNRJCFKGR/UdZhwFz5c=', '2021-12-04 03:09:42.000000', 0, 'ralphespinoza', 'Charles', 'Wolfe', 'preed@example.org', 0, 1, '2021-12-04 14:11:56.961148'),
(146, 'pbkdf2_sha256$260000$Jkjy7zmaNQbgGILlXcN8Ct$5O0LAG/0VHkFR6+3Unt9V7ucVws86i5U0FvqUjtlwtI=', '2021-12-01 12:27:42.000000', 0, 'pauljohnson', 'Patrick', 'Reeves', 'nancysmith@example.com', 0, 1, '2021-12-04 14:11:57.238925'),
(147, 'pbkdf2_sha256$260000$OJEY4ec88a8CmzZ4ZqQ3oP$k0eBrsomxUMEbrNQtAi5mvW+ChJayGdEF3+UBZzhXMc=', '2021-12-04 10:08:48.000000', 0, 'andrew64', 'Ashley', 'Hernandez', 'zlong@example.net', 0, 1, '2021-12-04 14:11:57.527456'),
(148, 'pbkdf2_sha256$260000$2WXZZWqaeW3FKwpTraCzWH$3q+y+Oiaf9o1mFo2ODdRkkEZkjosDMKNAM2zO3yxM1k=', '2021-12-03 20:50:48.000000', 0, 'oshah', 'Shelby', 'Collins', 'andersonmeghan@example.com', 0, 1, '2021-12-04 14:11:57.794014'),
(149, 'pbkdf2_sha256$260000$sVLPBfbCgRnBgFcxAN5gAz$q8DlNO8CA/sG8Wcb34KM25xvDaeCmZp9XNR78AGIc3k=', '2021-12-01 05:23:39.000000', 0, 'arobinson', 'Tyler', 'Smith', 'browneric@example.org', 0, 1, '2021-12-04 14:11:58.106242'),
(150, 'pbkdf2_sha256$260000$820mFYHoew4qyhlEun6mvg$5uTrC8XB+cBF3uFh54DgXVhj5mowSSvEO89DIH5FezI=', '2021-12-02 09:11:19.000000', 0, 'arroyotara', 'Robert', 'Blackburn', 'moraleschristopher@example.org', 0, 1, '2021-12-04 14:11:58.383052'),
(151, 'pbkdf2_sha256$260000$EMf2sUqG7y4HMRTTo3VqAa$/xhBTHDSTB/YDvwYuX5rCkkjqaVgo12MuJqKrUJyDkg=', '2021-12-02 22:56:14.000000', 0, 'stevenchavez', 'Wesley', 'Smith', 'katiejefferson@example.com', 0, 1, '2021-12-04 14:11:58.705855'),
(152, 'pbkdf2_sha256$260000$CjnlKweDyDgWOebg84QCwl$lWpqTQayVP3Ra7WMgaVlAHwP1QjaoC6vz9fDZrSoUgs=', '2021-12-04 17:07:22.000000', 0, 'bauerkeith', 'James', 'Lewis', 'bakerryan@example.com', 0, 1, '2021-12-04 14:11:58.983234'),
(153, 'pbkdf2_sha256$260000$sIrR4gayHbwy3ppVKfrHia$WZfbZo+xi1K76F2O1dGP798ScSrrfDe4eahu1VDPFQ0=', '2021-12-03 06:03:04.000000', 0, 'sanderscharles', 'Tara', 'Smith', 'lewiswilliam@example.org', 0, 1, '2021-12-04 14:11:59.250021'),
(154, 'pbkdf2_sha256$260000$XlKCPbthHf20Qu2Ajl03YW$LaehD3Mal8zrIUV/2/7eaJ1xXmeejaZ32PuMK5251Sg=', '2021-12-04 18:39:56.000000', 0, 'abigailedwards', 'Matthew', 'Garner', 'grahamdavid@example.org', 0, 1, '2021-12-04 14:11:59.539519'),
(155, 'pbkdf2_sha256$260000$tygbnAo6MOPAW2efv0Sdsg$dS5ejqKZgRuwhx1tYTUx2SWsFGg00JmLaiAUaGPZsYw=', '2021-12-02 19:35:59.000000', 0, 'perezvickie', 'Cynthia', 'Stephens', 'kellyspencer@example.com', 0, 1, '2021-12-04 14:11:59.806648'),
(156, 'pbkdf2_sha256$260000$jt3vkufpF1euKvPB83nIhr$wAqHdmsowojB1/rt9pCJatobVx2e9+z7VSyv0XP7Lhk=', '2021-12-04 16:27:57.000000', 0, 'laura93', 'Kathy', 'Rogers', 'ashleygordon@example.net', 0, 1, '2021-12-04 14:12:00.105847'),
(157, 'pbkdf2_sha256$260000$gAF5DHsGRsd2GOIAIc8pLB$bnRGfsipDwK2BBzQrGm4cda0EhQ/jZ2MqZNXw4SezE4=', '2021-12-03 19:46:10.000000', 0, 'jessica04', 'Adriana', 'Edwards', 'nrandall@example.net', 0, 1, '2021-12-04 14:12:00.403924'),
(158, 'pbkdf2_sha256$260000$nIuABjHKfKimWMWUpPbqGd$71HmJcaZw9a+FQxacKF4UiD1gGgmBfdb6zMYqn6IiPo=', '2021-12-04 17:56:30.000000', 0, 'eray', 'Angela', 'Lewis', 'alyssajohnson@example.com', 0, 1, '2021-12-04 14:12:00.729804'),
(159, 'pbkdf2_sha256$260000$PBWvwPCujSD2e4ESz98Yf9$FvCg3x5bI9HZm7d9+J3Jlp7ujA6Xn0AgP25VzD6lmIQ=', '2021-12-02 09:55:40.000000', 0, 'munozkelly', 'Allen', 'Hernandez', 'davidthomas@example.net', 0, 1, '2021-12-04 14:12:01.095246'),
(160, 'pbkdf2_sha256$260000$Rq8M1ahkHi5BKSxXpnJ7fk$P5GN4SsMlPqiIWUhMEM40p0oENB0Zg3kXnVoVeUnVsA=', '2021-12-04 04:53:39.000000', 0, 'peter12', 'Emily', 'Jones', 'zfrazier@example.net', 0, 1, '2021-12-04 14:12:01.393212'),
(161, 'pbkdf2_sha256$260000$WXCWvayQQjtT3WSxaJUQWx$P50ljoPToUvHnPgJCU+wN4kr+9ou8qQJBO+2/P1qe9s=', '2021-12-04 18:34:51.000000', 0, 'asmith', 'Michelle', 'Michael', 'allenjulie@example.org', 0, 1, '2021-12-04 14:12:01.783443'),
(162, 'pbkdf2_sha256$260000$WWzFJ927gR9DNl3ZxBfZbq$DMeLXylLxaDGgej6kBMvAGoXfG+phxueIWosP9vRP0A=', '2021-12-04 09:59:09.000000', 0, 'alejandra05', 'Cynthia', 'Harris', 'philip13@example.net', 0, 1, '2021-12-04 14:12:02.072472'),
(163, 'pbkdf2_sha256$260000$eXwcRAMAnCvmD3R72cIeIV$G6lKw4Zij9iZQOdk/pX2xoo17btMCcEI2R6lva5/cic=', '2021-12-01 19:33:56.000000', 0, 'krystalbyrd', 'Dawn', 'Dickerson', 'meyerkathy@example.net', 0, 1, '2021-12-04 14:12:02.373102'),
(164, 'pbkdf2_sha256$260000$cFZJTEYniOm8W8ZFvuSA6x$K2BYeNfULwLnskkRGV4Shfsc9ueTiZzoRLbkyBbWOX4=', '2021-12-01 21:28:54.000000', 0, 'baileydavid', 'Marissa', 'Merritt', 'rodriguezrobin@example.com', 0, 1, '2021-12-04 14:12:02.706486'),
(165, 'pbkdf2_sha256$260000$feKyRoP0aAOhuFHPYfvEwq$N16La9fp2wEEZA3C2+QwIE3l1CKl7qDhzC0fR0KYpik=', '2021-12-03 18:03:06.000000', 0, 'masonvictoria', 'Stephen', 'Davis', 'allenfigueroa@example.org', 0, 1, '2021-12-04 14:12:03.006542'),
(166, 'pbkdf2_sha256$260000$oGDRjD2KQKIGKz4bUxfsEd$VwPUDPMB2TW8vNB8m7Ad1BhDnP89Ft4VjDFGERUi22I=', '2021-12-02 15:47:48.000000', 0, 'nleon', 'Brian', 'Chan', 'davidboyd@example.com', 0, 1, '2021-12-04 14:12:03.282881'),
(167, 'pbkdf2_sha256$260000$edfyI4xBvjBVzzPpgXQvak$sA1BYBLV/Eh+50cTdXCwla3Pv8EFS3ij79lyqpd13Ic=', '2021-12-02 16:41:28.000000', 0, 'zcarey', 'Annette', 'Martin', 'jasonmartin@example.net', 0, 1, '2021-12-04 14:12:03.572888'),
(168, 'pbkdf2_sha256$260000$10Pc1H8mGLpNZ9nVK34Wmd$ETMXtV9G8kkGms/2YmmxreIWPGKxkDtSjL0880D7SGM=', '2021-12-04 08:24:52.000000', 0, 'gomeztroy', 'Savannah', 'Rogers', 'jeffrey53@example.org', 0, 1, '2021-12-04 14:12:03.872091'),
(169, 'pbkdf2_sha256$260000$foGrQEKYDprjZTxIHaGDJJ$g//r0UQ1oqv5vo72QuDETC/z16NVpH6wB30EREs+avw=', '2021-12-01 10:29:16.000000', 0, 'rachel39', 'Shelly', 'Gonzalez', 'angelawade@example.net', 0, 1, '2021-12-04 14:12:04.172076'),
(170, 'pbkdf2_sha256$260000$6XBXUuKfAw5dlsqDby4ubZ$qTfyzBCvGfAUt8CX/+0OOBtxUWcpOeHtbwlcwpj1imQ=', '2021-12-02 02:33:53.000000', 0, 'millsbridget', 'Sandra', 'Martin', 'chelseajackson@example.net', 0, 1, '2021-12-04 14:12:04.449951'),
(171, 'pbkdf2_sha256$260000$wH456Y6FbXnompRub05LtU$XaJ8FbAgHbxWb7t8LrchEJxgpsVCqloLzfErUrC6AXE=', '2021-12-01 23:49:42.000000', 0, 'changmichael', 'David', 'Grant', 'william88@example.net', 0, 1, '2021-12-04 14:12:04.749495'),
(172, 'pbkdf2_sha256$260000$8W8uXUHGNTNkMcBjgBL2FM$KIKZiW+lk9tTLPAog2Vuo6u49L/3Rs3v1hz9LeZn3j8=', '2021-12-01 06:39:44.000000', 0, 'randywest', 'Xavier', 'Hill', 'caitlinbates@example.org', 0, 1, '2021-12-04 14:12:05.085081'),
(173, 'pbkdf2_sha256$260000$sRHp8yQnGBomwEwApcp3oV$CJsbOLjHBqqjiFUHoyQpIXKEi3fKMlH2vwKqYmwxvLc=', '2021-12-01 14:57:26.000000', 0, 'ujones', 'Stephen', 'Hurley', 'ccarney@example.net', 0, 1, '2021-12-04 14:12:05.384446'),
(174, 'pbkdf2_sha256$260000$mrXBqbK7F2FW2n5HrWhlXS$SAJgjEMGAkg73HiWj1OK8+yrYaU2kPJJonzjCInkmUE=', '2021-12-03 09:06:35.000000', 0, 'zmiller', 'Kristen', 'Johnson', 'mwilliams@example.net', 0, 1, '2021-12-04 14:12:05.738605'),
(175, 'pbkdf2_sha256$260000$jxoJUNAoxKrCESkw9bsTbd$OvwTJr71tSs4pZiVYvGKYfL85o4xzVF0NGx7KFNjOUU=', '2021-12-01 05:11:42.000000', 0, 'sheltonjoshua', 'Christopher', 'Hill', 'onavarro@example.net', 0, 1, '2021-12-04 14:12:06.049781'),
(176, 'pbkdf2_sha256$260000$0YIFkzncVqO3UkFq9D1GVA$DUd5+DQGKlsOo2IiPrYKbqY6rdmL6L/h4DPdU2gZ9LI=', '2021-12-03 07:12:07.000000', 0, 'umoore', 'Erica', 'Thomas', 'wdouglas@example.org', 0, 1, '2021-12-04 14:12:06.383301'),
(177, 'pbkdf2_sha256$260000$TK718u83ZZd0NzdQ2vBnk8$S96oUvhU3KjHtWSutyx6uOYlARB7VWj10U5esTPj5z4=', '2021-12-02 04:23:08.000000', 0, 'gfitzgerald', 'Mitchell', 'Carroll', 'ryan29@example.com', 0, 1, '2021-12-04 14:12:06.740832');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(12, 'League_Management_System', 'game'),
(11, 'League_Management_System', 'player_details'),
(7, 'League_Management_System', 'role'),
(8, 'League_Management_System', 'team'),
(10, 'League_Management_System', 'user_details'),
(9, 'League_Management_System', 'user_role'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-12-04 14:07:21.720528'),
(2, 'auth', '0001_initial', '2021-12-04 14:07:28.238457'),
(3, 'League_Management_System', '0001_initial', '2021-12-04 14:07:35.286841'),
(4, 'admin', '0001_initial', '2021-12-04 14:07:37.755524'),
(5, 'admin', '0002_logentry_remove_auto_add', '2021-12-04 14:07:37.864841'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2021-12-04 14:07:37.942948'),
(7, 'contenttypes', '0002_remove_content_type_name', '2021-12-04 14:07:38.942870'),
(8, 'auth', '0002_alter_permission_name_max_length', '2021-12-04 14:07:39.787032'),
(9, 'auth', '0003_alter_user_email_max_length', '2021-12-04 14:07:40.486081'),
(10, 'auth', '0004_alter_user_username_opts', '2021-12-04 14:07:40.537565'),
(11, 'auth', '0005_alter_user_last_login_null', '2021-12-04 14:07:40.986389'),
(12, 'auth', '0006_require_contenttypes_0002', '2021-12-04 14:07:41.017648'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2021-12-04 14:07:41.048906'),
(14, 'auth', '0008_alter_user_username_max_length', '2021-12-04 14:07:41.656966'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2021-12-04 14:07:42.547377'),
(16, 'auth', '0010_alter_group_name_max_length', '2021-12-04 14:07:43.188546'),
(17, 'auth', '0011_update_proxy_permissions', '2021-12-04 14:07:43.266650'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2021-12-04 14:07:43.876058'),
(19, 'sessions', '0001_initial', '2021-12-04 14:07:44.782100');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `league_management_system_game`
--

CREATE TABLE `league_management_system_game` (
  `id` bigint(20) NOT NULL,
  `game_date` date NOT NULL,
  `game_venue` longtext NOT NULL,
  `home_score` int(11) NOT NULL,
  `visitor_score` int(11) NOT NULL,
  `home_team_id` bigint(20) NOT NULL,
  `visitor_team_id` bigint(20) NOT NULL,
  `winner_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league_management_system_game`
--

INSERT INTO `league_management_system_game` (`id`, `game_date`, `game_venue`, `home_score`, `visitor_score`, `home_team_id`, `visitor_team_id`, `winner_id`) VALUES
(1, '2020-11-04', 'series-soon-also', 11, 15, 2, 1, 1),
(2, '2021-05-06', 'stock-assume', 27, 14, 2, 3, 2),
(3, '2020-03-03', 'smile-wide-rock-of', 11, 25, 2, 5, 5),
(4, '2020-05-23', 'if-lay-because', 6, 13, 2, 7, 7),
(5, '2021-07-07', 'happen-exactly', 3, 22, 2, 9, 9),
(6, '2021-06-21', 'performance', 25, 18, 2, 11, 2),
(7, '2021-01-22', 'each-none-group', 25, 22, 2, 13, 2),
(8, '2021-06-08', 'indeed-fast-minute', 12, 9, 2, 15, 2),
(9, '2021-08-23', 'vote-lot-point', 4, 1, 4, 1, 4),
(10, '2020-05-07', 'event-past-focus', 30, 24, 4, 3, 4),
(11, '2020-07-26', 'move-both-maintain', 30, 25, 4, 5, 4),
(12, '2021-01-30', 'early-college-full', 0, 2, 4, 7, 7),
(13, '2021-03-04', 'best-worker-reason', 19, 12, 4, 9, 4),
(14, '2020-06-04', 'beyond-small', 7, 2, 4, 11, 4),
(15, '2021-09-21', 'amount-simply-bed', 29, 29, 4, 13, 13),
(16, '2021-04-08', 'bank-their-may-half', 23, 22, 4, 15, 4),
(17, '2020-08-29', 'poor-do-speak', 3, 21, 6, 1, 1),
(18, '2021-07-08', 'responsibility', 28, 1, 6, 3, 6),
(19, '2020-10-28', 'thus-home-everyone', 16, 22, 6, 5, 5),
(20, '2020-06-03', 'citizen-send-short', 26, 18, 6, 7, 6),
(21, '2020-03-14', 'marriage-thing', 27, 11, 6, 9, 6),
(22, '2020-07-19', 'recognize-group', 19, 7, 6, 11, 6),
(23, '2020-11-25', 'different-serve', 29, 0, 6, 13, 6),
(24, '2020-07-28', 'three-could-fly', 11, 1, 6, 15, 6),
(25, '2021-03-03', 'apply-leader-little', 16, 3, 8, 1, 8),
(26, '2021-12-02', 'participant-visit', 15, 17, 8, 3, 3),
(27, '2020-09-08', 'through-current', 22, 28, 8, 5, 5),
(28, '2021-01-02', 'eight-professor-bit', 7, 20, 8, 7, 7),
(29, '2021-02-11', 'must-sport-center', 25, 13, 8, 9, 8),
(30, '2020-12-15', 'official-cause', 13, 16, 8, 11, 11),
(31, '2021-02-06', 'near-article-simple', 21, 28, 8, 13, 13),
(32, '2021-03-15', 'position-wish-all', 25, 4, 8, 15, 8),
(33, '2021-05-05', 'art-she-tell', 12, 4, 10, 1, 10),
(34, '2020-12-04', 'focus-herself-she', 15, 20, 10, 3, 3),
(35, '2021-03-12', 'hit-measure-recent', 4, 23, 10, 5, 5),
(36, '2021-06-21', 'environment-year', 17, 22, 10, 7, 7),
(37, '2021-11-12', 'authority-cover-oil', 15, 19, 10, 9, 9),
(38, '2020-10-22', 'need-dinner', 5, 11, 10, 11, 11),
(39, '2020-01-17', 'fire-difficult', 26, 22, 10, 13, 10),
(40, '2021-01-25', 'sea-too-nothing', 18, 30, 10, 15, 15),
(41, '2020-07-21', 'focus-image-people', 19, 25, 12, 1, 1),
(42, '2020-04-29', 'stage-wrong', 23, 0, 12, 3, 12),
(43, '2021-02-15', 'field-behavior-rule', 24, 6, 12, 5, 12),
(44, '2020-12-07', 'life-enter-rest', 30, 21, 12, 7, 12),
(45, '2020-08-23', 'stay-base-region', 27, 0, 12, 9, 12),
(46, '2020-11-26', 'middle-reduce', 10, 19, 12, 11, 11),
(47, '2020-05-05', 'big-human-close', 12, 7, 12, 13, 12),
(48, '2021-07-27', 'different-make', 1, 19, 12, 15, 15),
(49, '2020-04-11', 'source-education', 6, 21, 14, 1, 1),
(50, '2020-04-07', 'president-bad', 1, 6, 14, 3, 3),
(51, '2021-09-23', 'major-well-idea', 1, 17, 14, 5, 5),
(52, '2021-11-26', 'compare-short', 2, 17, 14, 7, 7),
(53, '2020-04-10', 'contain-structure', 17, 0, 14, 9, 14),
(54, '2021-03-30', 'seat-right-student', 21, 8, 14, 11, 14),
(55, '2020-05-12', 'and-action-season', 11, 5, 14, 13, 14),
(56, '2020-11-05', 'out-here-mouth', 17, 4, 14, 15, 14),
(57, '2020-02-04', 'present-see-factor', 14, 11, 16, 1, 16),
(58, '2021-05-21', 'stage-than-pressure', 7, 2, 16, 3, 16),
(59, '2020-06-07', 'whether-management', 17, 14, 16, 5, 16),
(60, '2020-11-20', 'art-notice-here', 20, 29, 16, 7, 7),
(61, '2021-09-15', 'effort-open-nation', 24, 2, 16, 9, 16),
(62, '2021-11-25', 'plant-decision', 30, 16, 16, 11, 16),
(63, '2021-08-21', 'go-accept-statement', 7, 30, 16, 13, 13),
(64, '2021-06-06', 'see-art-record', 18, 21, 16, 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `league_management_system_player_details`
--

CREATE TABLE `league_management_system_player_details` (
  `id` bigint(20) NOT NULL,
  `players_height` int(11) NOT NULL,
  `players_score` int(11) NOT NULL,
  `players_team_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league_management_system_player_details`
--

INSERT INTO `league_management_system_player_details` (`id`, `players_height`, `players_score`, `players_team_id`, `user_id`) VALUES
(1, 159, 11, 1, 1),
(2, 171, 6, 1, 2),
(3, 158, 15, 1, 3),
(4, 172, 17, 1, 4),
(5, 170, 1, 1, 5),
(6, 179, 19, 1, 6),
(7, 196, 7, 1, 7),
(8, 190, 5, 1, 8),
(9, 167, 25, 1, 9),
(10, 164, 7, 1, 10),
(11, 155, 21, 2, 11),
(12, 187, 26, 2, 12),
(13, 163, 3, 2, 13),
(14, 150, 12, 2, 14),
(15, 151, 11, 2, 15),
(16, 195, 7, 2, 16),
(17, 170, 21, 2, 17),
(18, 184, 21, 2, 18),
(19, 191, 18, 2, 19),
(20, 153, 28, 2, 20),
(21, 171, 1, 3, 21),
(22, 175, 27, 3, 22),
(23, 186, 2, 3, 23),
(24, 150, 7, 3, 24),
(25, 165, 28, 3, 25),
(26, 166, 20, 3, 26),
(27, 163, 9, 3, 27),
(28, 165, 5, 3, 28),
(29, 193, 7, 3, 29),
(30, 157, 19, 3, 30),
(31, 178, 13, 4, 31),
(32, 186, 9, 4, 32),
(33, 174, 21, 4, 33),
(34, 175, 16, 4, 34),
(35, 196, 5, 4, 35),
(36, 188, 17, 4, 36),
(37, 164, 14, 4, 37),
(38, 161, 2, 4, 38),
(39, 188, 26, 4, 39),
(40, 154, 15, 4, 40),
(41, 197, 4, 5, 41),
(42, 200, 0, 5, 42),
(43, 196, 12, 5, 43),
(44, 171, 13, 5, 44),
(45, 175, 0, 5, 45),
(46, 193, 20, 5, 46),
(47, 162, 16, 5, 47),
(48, 181, 15, 5, 48),
(49, 182, 8, 5, 49),
(50, 180, 0, 5, 50),
(51, 165, 25, 6, 51),
(52, 189, 10, 6, 52),
(53, 178, 3, 6, 53),
(54, 151, 21, 6, 54),
(55, 162, 10, 6, 55),
(56, 160, 23, 6, 56),
(57, 175, 24, 6, 57),
(58, 184, 13, 6, 58),
(59, 196, 30, 6, 59),
(60, 186, 26, 6, 60),
(61, 182, 8, 7, 61),
(62, 180, 6, 7, 62),
(63, 170, 16, 7, 63),
(64, 156, 14, 7, 64),
(65, 175, 26, 7, 65),
(66, 152, 23, 7, 66),
(67, 191, 25, 7, 67),
(68, 181, 1, 7, 68),
(69, 171, 19, 7, 69),
(70, 171, 0, 7, 70),
(71, 179, 24, 8, 71),
(72, 182, 12, 8, 72),
(73, 154, 19, 8, 73),
(74, 158, 8, 8, 74),
(75, 151, 4, 8, 75),
(76, 163, 1, 8, 76),
(77, 167, 13, 8, 77),
(78, 175, 17, 8, 78),
(79, 159, 6, 8, 79),
(80, 172, 3, 8, 80),
(81, 156, 5, 9, 81),
(82, 152, 25, 9, 82),
(83, 177, 15, 9, 83),
(84, 195, 23, 9, 84),
(85, 183, 15, 9, 85),
(86, 166, 20, 9, 86),
(87, 179, 22, 9, 87),
(88, 175, 20, 9, 88),
(89, 160, 21, 9, 89),
(90, 187, 18, 9, 90),
(91, 175, 23, 10, 91),
(92, 167, 5, 10, 92),
(93, 174, 4, 10, 93),
(94, 178, 21, 10, 94),
(95, 165, 29, 10, 95),
(96, 161, 30, 10, 96),
(97, 194, 3, 10, 97),
(98, 197, 1, 10, 98),
(99, 159, 23, 10, 99),
(100, 162, 18, 10, 100),
(101, 160, 25, 11, 101),
(102, 176, 30, 11, 102),
(103, 185, 4, 11, 103),
(104, 192, 23, 11, 104),
(105, 164, 24, 11, 105),
(106, 157, 3, 11, 106),
(107, 184, 9, 11, 107),
(108, 165, 15, 11, 108),
(109, 166, 11, 11, 109),
(110, 169, 26, 11, 110),
(111, 198, 7, 12, 111),
(112, 175, 4, 12, 112),
(113, 185, 17, 12, 113),
(114, 169, 23, 12, 114),
(115, 185, 18, 12, 115),
(116, 182, 27, 12, 116),
(117, 154, 9, 12, 117),
(118, 182, 23, 12, 118),
(119, 169, 17, 12, 119),
(120, 198, 30, 12, 120),
(121, 167, 17, 13, 121),
(122, 194, 24, 13, 122),
(123, 178, 5, 13, 123),
(124, 191, 14, 13, 124),
(125, 151, 17, 13, 125),
(126, 183, 28, 13, 126),
(127, 166, 1, 13, 127),
(128, 184, 27, 13, 128),
(129, 200, 16, 13, 129),
(130, 187, 18, 13, 130),
(131, 164, 0, 14, 131),
(132, 151, 12, 14, 132),
(133, 177, 27, 14, 133),
(134, 181, 15, 14, 134),
(135, 194, 2, 14, 135),
(136, 198, 15, 14, 136),
(137, 179, 8, 14, 137),
(138, 164, 13, 14, 138),
(139, 159, 11, 14, 139),
(140, 163, 9, 14, 140),
(141, 200, 29, 15, 141),
(142, 174, 20, 15, 142),
(143, 177, 27, 15, 143),
(144, 165, 23, 15, 144),
(145, 157, 23, 15, 145),
(146, 157, 29, 15, 146),
(147, 192, 12, 15, 147),
(148, 183, 25, 15, 148),
(149, 152, 5, 15, 149),
(150, 200, 2, 15, 150),
(151, 178, 10, 16, 151),
(152, 167, 0, 16, 152),
(153, 155, 1, 16, 153),
(154, 158, 17, 16, 154),
(155, 171, 20, 16, 155),
(156, 197, 28, 16, 156),
(157, 197, 22, 16, 157),
(158, 196, 23, 16, 158),
(159, 170, 2, 16, 159),
(160, 166, 9, 16, 160);

-- --------------------------------------------------------

--
-- Table structure for table `league_management_system_role`
--

CREATE TABLE `league_management_system_role` (
  `id` bigint(20) NOT NULL,
  `user_type` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league_management_system_role`
--

INSERT INTO `league_management_system_role` (`id`, `user_type`) VALUES
(1, 'C'),
(2, 'P'),
(3, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `league_management_system_team`
--

CREATE TABLE `league_management_system_team` (
  `id` bigint(20) NOT NULL,
  `name` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league_management_system_team`
--

INSERT INTO `league_management_system_team` (`id`, `name`) VALUES
(1, 'blood-run-detail'),
(2, 'exist-budget-finish'),
(3, 'democrat-including'),
(4, 'agreement-then'),
(5, 'seven-teacher'),
(6, 'head-stock-american'),
(7, 'economic-itself'),
(8, 'must-church-enjoy'),
(9, 'on-table-generation'),
(10, 'guy-top-hotel'),
(11, 'federal-defense'),
(12, 'animal-week-yard'),
(13, 'choose-head-list'),
(14, 'soldier-eight-read'),
(15, 'western-seek-recent'),
(16, 'certainly-real-boy');

-- --------------------------------------------------------

--
-- Table structure for table `league_management_system_user_details`
--

CREATE TABLE `league_management_system_user_details` (
  `id` bigint(20) NOT NULL,
  `is_logged_in` tinyint(1) NOT NULL,
  `login_time` datetime(6) NOT NULL,
  `logout_time` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league_management_system_user_details`
--

INSERT INTO `league_management_system_user_details` (`id`, `is_logged_in`, `login_time`, `logout_time`, `user_id`) VALUES
(1, 0, '2021-12-01 15:29:42.000000', '2021-12-09 00:33:55.000000', 1),
(2, 1, '2021-12-03 07:41:47.000000', '2021-12-28 21:42:04.000000', 2),
(3, 0, '2021-12-01 01:20:23.000000', '2021-12-08 19:41:40.000000', 3),
(4, 0, '2021-12-01 03:15:57.000000', '2021-12-09 14:36:41.000000', 4),
(5, 1, '2021-12-02 21:13:19.000000', '2021-12-10 22:16:11.000000', 5),
(6, 1, '2021-12-04 19:00:17.000000', '2021-12-10 02:47:55.000000', 6),
(7, 1, '2021-12-03 23:19:18.000000', '2021-12-08 02:12:31.000000', 7),
(8, 0, '2021-12-01 20:03:04.000000', '2021-12-05 20:07:28.000000', 8),
(9, 0, '2021-12-04 13:16:14.000000', '2021-12-07 17:56:08.000000', 9),
(10, 1, '2021-12-03 17:05:32.000000', '2021-12-05 02:49:13.000000', 10),
(11, 0, '2021-12-01 11:14:00.000000', '2021-12-13 15:50:57.000000', 11),
(12, 0, '2021-12-03 09:05:29.000000', '2021-12-23 05:32:27.000000', 12),
(13, 1, '2021-12-04 15:25:07.000000', '2021-12-19 09:54:49.000000', 13),
(14, 0, '2021-12-01 09:15:04.000000', '2021-12-29 05:26:33.000000', 14),
(15, 1, '2021-12-01 07:45:26.000000', '2021-12-08 00:07:15.000000', 15),
(16, 0, '2021-12-03 10:52:23.000000', '2021-12-10 12:41:07.000000', 16),
(17, 0, '2021-12-01 14:22:39.000000', '2021-12-08 20:00:44.000000', 17),
(18, 1, '2021-12-03 17:53:32.000000', '2021-12-17 14:22:11.000000', 18),
(19, 0, '2021-12-01 00:57:07.000000', '2021-12-10 12:37:29.000000', 19),
(20, 1, '2021-12-03 03:15:36.000000', '2021-12-18 09:36:46.000000', 20),
(21, 0, '2021-12-04 06:29:24.000000', '2021-12-28 14:58:35.000000', 21),
(22, 1, '2021-12-02 10:41:34.000000', '2021-12-20 00:37:31.000000', 22),
(23, 1, '2021-12-03 20:31:50.000000', '2021-12-27 22:51:53.000000', 23),
(24, 1, '2021-12-02 23:53:16.000000', '2021-12-18 21:12:55.000000', 24),
(25, 1, '2021-12-04 07:52:57.000000', '2021-12-14 21:47:26.000000', 25),
(26, 0, '2021-12-04 18:12:06.000000', '2021-12-17 04:53:00.000000', 26),
(27, 1, '2021-12-01 00:08:40.000000', '2021-12-05 23:18:37.000000', 27),
(28, 1, '2021-12-04 03:04:23.000000', '2021-12-11 12:00:21.000000', 28),
(29, 0, '2021-12-02 10:20:43.000000', '2021-12-22 20:15:51.000000', 29),
(30, 0, '2021-12-01 18:58:44.000000', '2021-12-12 02:08:57.000000', 30),
(31, 0, '2021-12-03 19:38:58.000000', '2021-12-31 01:27:45.000000', 31),
(32, 1, '2021-12-01 23:59:57.000000', '2021-12-04 22:37:33.000000', 32),
(33, 1, '2021-12-01 03:38:39.000000', '2021-12-21 18:58:31.000000', 33),
(34, 0, '2021-12-03 21:32:29.000000', '2021-12-19 05:07:29.000000', 34),
(35, 1, '2021-12-02 01:57:25.000000', '2021-12-21 14:59:59.000000', 35),
(36, 1, '2021-12-01 21:34:20.000000', '2021-12-20 08:49:06.000000', 36),
(37, 1, '2021-12-04 00:05:11.000000', '2021-12-22 18:41:54.000000', 37),
(38, 0, '2021-12-04 13:34:53.000000', '2021-12-15 20:42:32.000000', 38),
(39, 1, '2021-12-02 15:00:51.000000', '2021-12-16 08:15:07.000000', 39),
(40, 0, '2021-12-02 15:20:22.000000', '2021-12-11 05:52:03.000000', 40),
(41, 1, '2021-12-03 22:12:43.000000', '2021-12-12 07:24:29.000000', 41),
(42, 1, '2021-12-04 14:02:18.000000', '2021-12-18 09:08:12.000000', 42),
(43, 1, '2021-12-02 23:45:32.000000', '2021-12-26 18:17:28.000000', 43),
(44, 1, '2021-12-01 07:59:02.000000', '2021-12-18 06:54:57.000000', 44),
(45, 1, '2021-12-03 07:59:23.000000', '2021-12-20 13:29:10.000000', 45),
(46, 1, '2021-12-04 16:49:26.000000', '2021-12-26 20:07:50.000000', 46),
(47, 0, '2021-12-03 22:30:07.000000', '2021-12-06 05:23:00.000000', 47),
(48, 0, '2021-12-03 09:48:56.000000', '2021-12-06 15:21:11.000000', 48),
(49, 0, '2021-12-03 03:51:33.000000', '2021-12-17 17:35:43.000000', 49),
(50, 1, '2021-12-03 02:20:56.000000', '2021-12-04 20:43:39.000000', 50),
(51, 1, '2021-12-03 01:22:34.000000', '2021-12-27 00:37:37.000000', 51),
(52, 0, '2021-12-04 11:19:23.000000', '2021-12-18 19:08:25.000000', 52),
(53, 0, '2021-12-04 07:50:27.000000', '2021-12-12 16:47:08.000000', 53),
(54, 1, '2021-12-02 04:25:15.000000', '2021-12-28 01:42:13.000000', 54),
(55, 1, '2021-12-04 03:08:15.000000', '2021-12-21 22:38:11.000000', 55),
(56, 1, '2021-12-02 10:23:51.000000', '2021-12-29 08:25:05.000000', 56),
(57, 0, '2021-12-01 20:05:02.000000', '2021-12-22 09:14:08.000000', 57),
(58, 1, '2021-12-03 06:52:07.000000', '2021-12-11 02:16:52.000000', 58),
(59, 1, '2021-12-03 01:30:53.000000', '2021-12-20 05:17:17.000000', 59),
(60, 1, '2021-12-04 17:54:44.000000', '2021-12-09 06:22:35.000000', 60),
(61, 1, '2021-12-04 11:11:24.000000', '2021-12-05 17:42:52.000000', 61),
(62, 0, '2021-12-04 07:22:37.000000', '2021-12-29 20:50:36.000000', 62),
(63, 1, '2021-12-04 01:04:36.000000', '2021-12-09 13:00:30.000000', 63),
(64, 0, '2021-12-01 00:13:31.000000', '2021-12-22 20:34:27.000000', 64),
(65, 0, '2021-12-03 16:13:17.000000', '2021-12-10 00:33:27.000000', 65),
(66, 0, '2021-12-02 19:23:55.000000', '2021-12-06 11:09:54.000000', 66),
(67, 1, '2021-12-03 03:59:17.000000', '2021-12-13 08:23:11.000000', 67),
(68, 0, '2021-12-04 04:49:29.000000', '2021-12-18 19:47:25.000000', 68),
(69, 1, '2021-12-02 10:55:53.000000', '2021-12-25 04:44:40.000000', 69),
(70, 0, '2021-12-01 09:31:56.000000', '2021-12-13 16:05:14.000000', 70),
(71, 0, '2021-12-01 14:54:07.000000', '2021-12-11 22:40:38.000000', 71),
(72, 0, '2021-12-03 15:10:15.000000', '2021-12-09 05:22:04.000000', 72),
(73, 1, '2021-12-02 11:03:22.000000', '2021-12-22 19:11:51.000000', 73),
(74, 1, '2021-12-03 01:52:29.000000', '2021-12-15 00:11:00.000000', 74),
(75, 0, '2021-12-02 20:06:30.000000', '2021-12-08 01:47:22.000000', 75),
(76, 1, '2021-12-01 07:37:43.000000', '2021-12-05 07:42:32.000000', 76),
(77, 1, '2021-12-01 16:59:24.000000', '2021-12-21 01:03:50.000000', 77),
(78, 1, '2021-12-02 23:55:49.000000', '2021-12-08 16:24:13.000000', 78),
(79, 1, '2021-12-02 20:05:28.000000', '2021-12-24 18:54:12.000000', 79),
(80, 1, '2021-12-02 09:31:57.000000', '2021-12-28 00:15:55.000000', 80),
(81, 0, '2021-12-02 20:13:57.000000', '2021-12-23 10:16:46.000000', 81),
(82, 0, '2021-12-02 21:47:06.000000', '2021-12-13 06:12:14.000000', 82),
(83, 0, '2021-12-02 18:25:20.000000', '2021-12-26 17:25:18.000000', 83),
(84, 1, '2021-12-04 07:27:49.000000', '2021-12-07 00:41:32.000000', 84),
(85, 0, '2021-12-01 14:27:27.000000', '2021-12-08 20:52:59.000000', 85),
(86, 1, '2021-12-03 17:39:03.000000', '2021-12-05 06:23:21.000000', 86),
(87, 0, '2021-12-03 06:21:10.000000', '2021-12-15 07:10:37.000000', 87),
(88, 0, '2021-12-02 21:52:00.000000', '2021-12-12 00:19:42.000000', 88),
(89, 1, '2021-12-03 07:26:54.000000', '2021-12-08 18:20:41.000000', 89),
(90, 1, '2021-12-01 16:50:26.000000', '2021-12-23 09:53:44.000000', 90),
(91, 0, '2021-12-04 07:45:05.000000', '2021-12-04 20:31:05.000000', 91),
(92, 1, '2021-12-02 13:45:32.000000', '2021-12-17 22:33:37.000000', 92),
(93, 1, '2021-12-02 12:58:21.000000', '2021-12-29 03:14:47.000000', 93),
(94, 1, '2021-12-02 04:35:43.000000', '2021-12-10 23:21:52.000000', 94),
(95, 0, '2021-12-04 17:36:42.000000', '2021-12-27 20:35:48.000000', 95),
(96, 0, '2021-12-03 06:07:36.000000', '2021-12-12 17:00:47.000000', 96),
(97, 0, '2021-12-03 18:32:30.000000', '2021-12-22 18:22:35.000000', 97),
(98, 1, '2021-12-04 07:36:45.000000', '2021-12-19 17:00:45.000000', 98),
(99, 1, '2021-12-01 21:34:34.000000', '2021-12-05 11:15:02.000000', 99),
(100, 0, '2021-12-02 17:41:41.000000', '2021-12-27 04:48:07.000000', 100),
(101, 0, '2021-12-02 20:50:37.000000', '2021-12-30 06:09:51.000000', 101),
(102, 0, '2021-12-03 04:22:59.000000', '2021-12-23 02:23:07.000000', 102),
(103, 0, '2021-12-01 02:25:02.000000', '2021-12-13 20:57:54.000000', 103),
(104, 0, '2021-12-04 01:12:17.000000', '2021-12-19 04:57:35.000000', 104),
(105, 0, '2021-12-04 14:07:33.000000', '2021-12-16 03:42:41.000000', 105),
(106, 1, '2021-12-04 09:06:20.000000', '2021-12-17 12:40:46.000000', 106),
(107, 0, '2021-12-04 13:53:34.000000', '2021-12-27 05:47:45.000000', 107),
(108, 1, '2021-12-04 17:53:18.000000', '2021-12-27 16:14:20.000000', 108),
(109, 1, '2021-12-04 00:33:53.000000', '2021-12-12 07:09:33.000000', 109),
(110, 0, '2021-12-03 11:01:29.000000', '2021-12-20 12:41:48.000000', 110),
(111, 1, '2021-12-03 06:37:14.000000', '2021-12-18 04:20:07.000000', 111),
(112, 0, '2021-12-02 00:24:43.000000', '2021-12-30 10:23:07.000000', 112),
(113, 0, '2021-12-03 02:50:40.000000', '2021-12-08 16:26:31.000000', 113),
(114, 1, '2021-12-03 20:54:17.000000', '2021-12-10 07:28:44.000000', 114),
(115, 1, '2021-12-04 02:52:19.000000', '2021-12-15 03:12:31.000000', 115),
(116, 1, '2021-12-01 04:59:01.000000', '2021-12-30 14:12:30.000000', 116),
(117, 1, '2021-12-03 11:42:31.000000', '2021-12-21 16:56:10.000000', 117),
(118, 0, '2021-12-02 19:36:47.000000', '2021-12-31 15:06:11.000000', 118),
(119, 0, '2021-12-03 09:24:46.000000', '2021-12-25 15:52:40.000000', 119),
(120, 0, '2021-12-04 16:16:48.000000', '2021-12-24 00:31:48.000000', 120),
(121, 1, '2021-12-01 14:41:08.000000', '2021-12-26 07:29:43.000000', 121),
(122, 1, '2021-12-04 02:49:24.000000', '2021-12-11 16:11:46.000000', 122),
(123, 1, '2021-12-02 21:44:08.000000', '2021-12-24 19:52:33.000000', 123),
(124, 1, '2021-12-03 20:55:30.000000', '2021-12-22 20:56:44.000000', 124),
(125, 1, '2021-12-02 12:47:13.000000', '2021-12-20 12:15:30.000000', 125),
(126, 0, '2021-12-02 07:24:14.000000', '2021-12-22 12:47:44.000000', 126),
(127, 0, '2021-12-02 11:27:28.000000', '2021-12-17 10:15:54.000000', 127),
(128, 1, '2021-12-02 02:01:26.000000', '2021-12-27 03:45:16.000000', 128),
(129, 1, '2021-12-04 15:17:31.000000', '2021-12-17 01:30:33.000000', 129),
(130, 0, '2021-12-03 23:31:29.000000', '2021-12-08 12:49:06.000000', 130),
(131, 1, '2021-12-02 16:41:38.000000', '2021-12-09 23:17:18.000000', 131),
(132, 0, '2021-12-02 13:31:55.000000', '2021-12-30 00:43:32.000000', 132),
(133, 1, '2021-12-04 03:05:23.000000', '2021-12-18 00:56:50.000000', 133),
(134, 1, '2021-12-02 06:41:20.000000', '2021-12-20 10:30:20.000000', 134),
(135, 1, '2021-12-02 10:15:29.000000', '2021-12-05 12:37:38.000000', 135),
(136, 1, '2021-12-01 03:51:33.000000', '2021-12-11 05:12:33.000000', 136),
(137, 1, '2021-12-03 08:00:30.000000', '2021-12-27 14:35:02.000000', 137),
(138, 0, '2021-12-04 12:37:05.000000', '2021-12-22 05:54:59.000000', 138),
(139, 0, '2021-12-02 17:36:02.000000', '2021-12-17 09:27:43.000000', 139),
(140, 1, '2021-12-02 21:15:51.000000', '2021-12-07 03:58:18.000000', 140),
(141, 1, '2021-12-04 01:50:17.000000', '2021-12-28 17:50:51.000000', 141),
(142, 0, '2021-12-02 00:31:18.000000', '2021-12-30 23:51:35.000000', 142),
(143, 1, '2021-12-03 11:56:35.000000', '2021-12-31 04:55:32.000000', 143),
(144, 0, '2021-12-02 16:56:38.000000', '2021-12-11 12:30:48.000000', 144),
(145, 1, '2021-12-04 02:33:57.000000', '2021-12-31 14:26:55.000000', 145),
(146, 1, '2021-12-02 08:57:42.000000', '2021-12-17 11:48:07.000000', 146),
(147, 0, '2021-12-02 23:48:28.000000', '2021-12-28 02:02:23.000000', 147),
(148, 0, '2021-12-02 05:31:20.000000', '2021-12-08 01:41:37.000000', 148),
(149, 1, '2021-12-04 09:54:23.000000', '2021-12-30 22:59:09.000000', 149),
(150, 0, '2021-12-02 19:34:13.000000', '2021-12-27 11:49:40.000000', 150),
(151, 0, '2021-12-01 18:27:40.000000', '2021-12-11 23:48:35.000000', 151),
(152, 0, '2021-12-01 17:34:29.000000', '2021-12-11 18:06:22.000000', 152),
(153, 1, '2021-12-03 01:56:28.000000', '2021-12-19 15:12:20.000000', 153),
(154, 0, '2021-12-01 18:57:37.000000', '2021-12-17 16:55:16.000000', 154),
(155, 1, '2021-12-02 04:18:37.000000', '2021-12-19 12:06:00.000000', 155),
(156, 1, '2021-12-04 16:26:33.000000', '2021-12-28 15:51:27.000000', 156),
(157, 1, '2021-12-01 07:00:34.000000', '2021-12-17 10:34:19.000000', 157),
(158, 1, '2021-12-03 13:30:49.000000', '2021-12-20 10:11:16.000000', 158),
(159, 1, '2021-12-03 15:50:23.000000', '2021-12-21 02:28:04.000000', 159),
(160, 0, '2021-12-03 14:05:39.000000', '2021-12-15 23:32:46.000000', 160),
(161, 1, '2021-12-01 09:39:43.000000', '2021-12-20 17:04:45.000000', 161),
(162, 1, '2021-12-01 02:27:24.000000', '2021-12-11 20:04:01.000000', 162),
(163, 1, '2021-12-01 13:09:27.000000', '2021-12-10 02:19:26.000000', 163),
(164, 0, '2021-12-01 02:47:13.000000', '2021-12-28 06:30:06.000000', 164),
(165, 0, '2021-12-01 04:38:38.000000', '2021-12-11 16:35:10.000000', 165),
(166, 0, '2021-12-04 12:04:09.000000', '2021-12-21 02:34:04.000000', 166),
(167, 0, '2021-12-03 01:55:10.000000', '2021-12-05 11:49:30.000000', 167),
(168, 1, '2021-12-02 15:50:02.000000', '2021-12-22 02:25:03.000000', 168),
(169, 1, '2021-12-02 01:01:40.000000', '2021-12-15 01:13:25.000000', 169),
(170, 0, '2021-12-04 11:45:53.000000', '2021-12-20 08:03:55.000000', 170),
(171, 0, '2021-12-04 08:39:17.000000', '2021-12-09 21:55:51.000000', 171),
(172, 0, '2021-12-04 02:01:02.000000', '2021-12-17 15:07:06.000000', 172),
(173, 0, '2021-12-02 13:14:26.000000', '2021-12-06 13:11:04.000000', 173),
(174, 1, '2021-12-02 04:35:02.000000', '2021-12-10 09:31:28.000000', 174),
(175, 1, '2021-12-03 23:51:23.000000', '2021-12-29 12:24:19.000000', 175),
(176, 0, '2021-12-04 18:32:23.000000', '2021-12-19 06:37:40.000000', 176),
(177, 1, '2021-12-02 18:20:53.000000', '2021-12-20 02:59:59.000000', 177);

-- --------------------------------------------------------

--
-- Table structure for table `league_management_system_user_role`
--

CREATE TABLE `league_management_system_user_role` (
  `id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `league_management_system_user_role`
--

INSERT INTO `league_management_system_user_role` (`id`, `role_id`, `user_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 2, 36),
(37, 2, 37),
(38, 2, 38),
(39, 2, 39),
(40, 2, 40),
(41, 2, 41),
(42, 2, 42),
(43, 2, 43),
(44, 2, 44),
(45, 2, 45),
(46, 2, 46),
(47, 2, 47),
(48, 2, 48),
(49, 2, 49),
(50, 2, 50),
(51, 2, 51),
(52, 2, 52),
(53, 2, 53),
(54, 2, 54),
(55, 2, 55),
(56, 2, 56),
(57, 2, 57),
(58, 2, 58),
(59, 2, 59),
(60, 2, 60),
(61, 2, 61),
(62, 2, 62),
(63, 2, 63),
(64, 2, 64),
(65, 2, 65),
(66, 2, 66),
(67, 2, 67),
(68, 2, 68),
(69, 2, 69),
(70, 2, 70),
(71, 2, 71),
(72, 2, 72),
(73, 2, 73),
(74, 2, 74),
(75, 2, 75),
(76, 2, 76),
(77, 2, 77),
(78, 2, 78),
(79, 2, 79),
(80, 2, 80),
(81, 2, 81),
(82, 2, 82),
(83, 2, 83),
(84, 2, 84),
(85, 2, 85),
(86, 2, 86),
(87, 2, 87),
(88, 2, 88),
(89, 2, 89),
(90, 2, 90),
(91, 2, 91),
(92, 2, 92),
(93, 2, 93),
(94, 2, 94),
(95, 2, 95),
(96, 2, 96),
(97, 2, 97),
(98, 2, 98),
(99, 2, 99),
(100, 2, 100),
(101, 2, 101),
(102, 2, 102),
(103, 2, 103),
(104, 2, 104),
(105, 2, 105),
(106, 2, 106),
(107, 2, 107),
(108, 2, 108),
(109, 2, 109),
(110, 2, 110),
(111, 2, 111),
(112, 2, 112),
(113, 2, 113),
(114, 2, 114),
(115, 2, 115),
(116, 2, 116),
(117, 2, 117),
(118, 2, 118),
(119, 2, 119),
(120, 2, 120),
(121, 2, 121),
(122, 2, 122),
(123, 2, 123),
(124, 2, 124),
(125, 2, 125),
(126, 2, 126),
(127, 2, 127),
(128, 2, 128),
(129, 2, 129),
(130, 2, 130),
(131, 2, 131),
(132, 2, 132),
(133, 2, 133),
(134, 2, 134),
(135, 2, 135),
(136, 2, 136),
(137, 2, 137),
(138, 2, 138),
(139, 2, 139),
(140, 2, 140),
(141, 2, 141),
(142, 2, 142),
(143, 2, 143),
(144, 2, 144),
(145, 2, 145),
(146, 2, 146),
(147, 2, 147),
(148, 2, 148),
(149, 2, 149),
(150, 2, 150),
(151, 2, 151),
(152, 2, 152),
(153, 2, 153),
(154, 2, 154),
(155, 2, 155),
(156, 2, 156),
(157, 2, 157),
(158, 2, 158),
(159, 2, 159),
(160, 2, 160),
(161, 1, 161),
(162, 1, 162),
(163, 1, 163),
(164, 1, 164),
(165, 1, 165),
(166, 1, 166),
(167, 1, 167),
(168, 1, 168),
(169, 1, 169),
(170, 1, 170),
(171, 1, 171),
(172, 1, 172),
(173, 1, 173),
(174, 1, 174),
(175, 1, 175),
(176, 1, 176),
(177, 3, 177);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `league_management_system_game`
--
ALTER TABLE `league_management_system_game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `League_Management_Sy_home_team_id_d5796f1b_fk_League_Ma` (`home_team_id`),
  ADD KEY `League_Management_Sy_visitor_team_id_c0d34314_fk_League_Ma` (`visitor_team_id`),
  ADD KEY `League_Management_Sy_winner_id_4979ea1a_fk_League_Ma` (`winner_id`);

--
-- Indexes for table `league_management_system_player_details`
--
ALTER TABLE `league_management_system_player_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `League_Management_Sy_players_team_id_4f081303_fk_League_Ma` (`players_team_id`),
  ADD KEY `League_Management_Sy_user_id_782ad24f_fk_auth_user` (`user_id`);

--
-- Indexes for table `league_management_system_role`
--
ALTER TABLE `league_management_system_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `league_management_system_team`
--
ALTER TABLE `league_management_system_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `league_management_system_user_details`
--
ALTER TABLE `league_management_system_user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `League_Management_Sy_user_id_4190659b_fk_auth_user` (`user_id`);

--
-- Indexes for table `league_management_system_user_role`
--
ALTER TABLE `league_management_system_user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `League_Management_Sy_role_id_c7446e69_fk_League_Ma` (`role_id`),
  ADD KEY `League_Management_Sy_user_id_b5817a5c_fk_auth_user` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `league_management_system_game`
--
ALTER TABLE `league_management_system_game`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `league_management_system_player_details`
--
ALTER TABLE `league_management_system_player_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `league_management_system_role`
--
ALTER TABLE `league_management_system_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `league_management_system_team`
--
ALTER TABLE `league_management_system_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `league_management_system_user_details`
--
ALTER TABLE `league_management_system_user_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `league_management_system_user_role`
--
ALTER TABLE `league_management_system_user_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `league_management_system_game`
--
ALTER TABLE `league_management_system_game`
  ADD CONSTRAINT `League_Management_Sy_home_team_id_d5796f1b_fk_League_Ma` FOREIGN KEY (`home_team_id`) REFERENCES `league_management_system_team` (`id`),
  ADD CONSTRAINT `League_Management_Sy_visitor_team_id_c0d34314_fk_League_Ma` FOREIGN KEY (`visitor_team_id`) REFERENCES `league_management_system_team` (`id`),
  ADD CONSTRAINT `League_Management_Sy_winner_id_4979ea1a_fk_League_Ma` FOREIGN KEY (`winner_id`) REFERENCES `league_management_system_team` (`id`);

--
-- Constraints for table `league_management_system_player_details`
--
ALTER TABLE `league_management_system_player_details`
  ADD CONSTRAINT `League_Management_Sy_players_team_id_4f081303_fk_League_Ma` FOREIGN KEY (`players_team_id`) REFERENCES `league_management_system_team` (`id`),
  ADD CONSTRAINT `League_Management_Sy_user_id_782ad24f_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `league_management_system_user_details`
--
ALTER TABLE `league_management_system_user_details`
  ADD CONSTRAINT `League_Management_Sy_user_id_4190659b_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `league_management_system_user_role`
--
ALTER TABLE `league_management_system_user_role`
  ADD CONSTRAINT `League_Management_Sy_role_id_c7446e69_fk_League_Ma` FOREIGN KEY (`role_id`) REFERENCES `league_management_system_role` (`id`),
  ADD CONSTRAINT `League_Management_Sy_user_id_b5817a5c_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
