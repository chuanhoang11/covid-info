-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 08:08 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `password`, `username`) VALUES
(1, '123', 'phat'),
(2, 'admin', 'chinh'),
(3, '123', 'admin'),
(4, '123', 'tomcat');

-- --------------------------------------------------------

--
-- Table structure for table `health_daily`
--

CREATE TABLE `health_daily` (
  `id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) NOT NULL,
  `is_cough` bit(1) NOT NULL,
  `is_fever` bit(1) NOT NULL,
  `is_breath` bit(1) NOT NULL,
  `is_tired` bit(1) NOT NULL,
  `is_strong` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `health_daily`
--

INSERT INTO `health_daily` (`id`, `timestamp`, `user_id`, `is_cough`, `is_fever`, `is_breath`, `is_tired`, `is_strong`) VALUES
(1, '2021-09-11 07:20:35', 2, b'1', b'1', b'1', b'1', b'0'),
(2, '2021-09-15 09:19:07', 7, b'0', b'0', b'0', b'1', b'0'),
(3, '2021-09-15 09:19:09', 7, b'0', b'0', b'0', b'0', b'1'),
(4, '2021-09-15 09:19:20', 7, b'1', b'1', b'0', b'0', b'0'),
(5, '2021-09-16 01:00:28', 19, b'0', b'0', b'0', b'0', b'1'),
(6, '2021-09-16 01:00:28', 18, b'1', b'0', b'0', b'0', b'0'),
(7, '2021-09-16 01:01:00', 4, b'1', b'0', b'0', b'1', b'0'),
(8, '2021-09-16 01:02:49', 23, b'1', b'1', b'1', b'1', b'0'),
(9, '2021-09-16 01:02:49', 28, b'0', b'1', b'1', b'1', b'1'),
(10, '2021-09-16 01:02:49', 23, b'1', b'1', b'0', b'1', b'1'),
(11, '2021-09-16 01:02:49', 2, b'1', b'0', b'1', b'1', b'1'),
(12, '2021-09-16 01:02:49', 10, b'0', b'0', b'1', b'1', b'1'),
(13, '2021-09-16 01:02:49', 26, b'0', b'1', b'1', b'0', b'1'),
(14, '2021-09-16 01:02:49', 16, b'1', b'1', b'1', b'1', b'0'),
(15, '2021-09-16 01:02:49', 8, b'1', b'1', b'1', b'1', b'0'),
(16, '2021-09-16 01:02:49', 7, b'1', b'1', b'1', b'1', b'0'),
(17, '2021-09-16 01:02:49', 25, b'0', b'0', b'1', b'0', b'1'),
(18, '2021-09-16 04:24:50', 2, b'1', b'1', b'0', b'1', b'0'),
(19, '2021-09-16 04:25:06', 2, b'0', b'0', b'0', b'0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `health_dcl`
--

CREATE TABLE `health_dcl` (
  `id` bigint(20) NOT NULL,
  `have_cancer` bit(1) DEFAULT NULL,
  `have_chronic` bit(1) DEFAULT NULL,
  `have_diabetes` bit(1) DEFAULT NULL,
  `have_heart_pressure` bit(1) DEFAULT NULL,
  `have_hiv_immu` bit(1) DEFAULT NULL,
  `have_prenant` bit(1) DEFAULT NULL,
  `have_transplant` bit(1) DEFAULT NULL,
  `is_contact_f0` bit(1) DEFAULT NULL,
  `is_contact_suspect` bit(1) DEFAULT NULL,
  `is_cough` bit(1) DEFAULT NULL,
  `is_fever` bit(1) DEFAULT NULL,
  `is_nobreath` bit(1) DEFAULT NULL,
  `is_pnue` bit(1) DEFAULT NULL,
  `is_throat` bit(1) DEFAULT NULL,
  `is_tire` bit(1) DEFAULT NULL,
  `is_travel` bit(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `health_dcl`
--

INSERT INTO `health_dcl` (`id`, `have_cancer`, `have_chronic`, `have_diabetes`, `have_heart_pressure`, `have_hiv_immu`, `have_prenant`, `have_transplant`, `is_contact_f0`, `is_contact_suspect`, `is_cough`, `is_fever`, `is_nobreath`, `is_pnue`, `is_throat`, `is_tire`, `is_travel`, `time`, `user_id`) VALUES
(1, b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '2021-09-11 13:56:12', 2),
(2, b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', b'0', '2021-09-15 16:18:41', 7),
(3, b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '2021-09-16 03:02:53', 22),
(4, b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '2021-09-16 03:02:53', 10),
(5, b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '2021-09-16 03:02:53', 9),
(6, b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '2021-09-16 03:02:53', 7),
(7, b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '2021-09-16 03:02:53', 20),
(8, b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '2021-09-16 03:02:53', 15),
(9, b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', b'1', '2021-09-16 03:02:53', 12),
(10, b'1', b'1', b'1', b'0', b'1', b'0', b'0', b'0', b'0', b'1', b'1', b'0', b'0', b'0', b'0', b'0', '2021-09-16 11:27:19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `medstf`
--

CREATE TABLE `medstf` (
  `id` bigint(20) NOT NULL,
  `medical_l??cense` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `medstf`
--

INSERT INTO `medstf` (`id`, `medical_l??cense`, `name`, `password`, `username`, `dob`) VALUES
(1, '044326/HCM-CCHN', 'Nguy???n Duy Nam', '123', 'staff', '1990-08-21'),
(4, '124302/HCM-CCHN', 'V?? Ph????ng Vi', '123', 'staff1', '1990-02-12'),
(5, '414322/HCM-CCHN', 'Tr???n Duy Quang', '123', 'staff2', '1984-06-03'),
(6, '431112/CM-CCHN', 'Minh Nguy???n Ho??ng', '123', 'staff6', '1980-03-12'),
(7, '122210/CM-CCHN', 'V??? Minh Huy', '123', 'staffstaff', '1994-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `pcr`
--

CREATE TABLE `pcr` (
  `id` bigint(20) NOT NULL,
  `result` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `pcr`
--

INSERT INTO `pcr` (`id`, `result`, `time`, `user_id`) VALUES
(2, 'POSITIVE', '2021-09-15 16:55:00', 4),
(3, 'NEGATIVE', '2021-09-15 16:55:00', 17),
(4, 'NEGATIVE', '2021-09-15 16:55:00', 27),
(5, 'NEGATIVE', '2021-09-15 16:55:00', 2),
(6, 'NEGATIVE', '2021-09-15 16:55:00', 16),
(7, 'POSITIVE', '2021-09-15 16:55:00', 28),
(8, 'POSITIVE', '2021-09-15 16:55:00', 20),
(9, 'POSITIVE', '2021-09-15 16:55:00', 19),
(10, 'POSITIVE', '2021-09-15 16:55:00', 24),
(11, 'POSITIVE', '2021-09-15 16:55:00', 28),
(12, 'NEGATIVE', '2021-09-16 11:09:49', 4);

-- --------------------------------------------------------

--
-- Table structure for table `quarantine_area`
--

CREATE TABLE `quarantine_area` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `quarantine_area`
--

INSERT INTO `quarantine_area` (`id`, `name`, `address`) VALUES
(1, 'Khu c??ch Ly Qu???n 7', '101 Nguy???n Th??? Th???p, T??n Ph??, Qu???n 7, Th??nh ph??? H??? Ch?? Minh, Vietnam'),
(2, 'Khu c??ch ly Qu???n 5', '642 A Nguy???n Tr??i, Ph?????ng 11, Qu???n 5, Th??nh ph??? H??? Ch?? Minh 700000, Vietnam'),
(3, 'Khu C??ch Ly qu???n 4', '364 Nguy???n T???t Th??nh, Ph?????ng 18, Qu???n 4, Th??nh ph??? H??? Ch?? Minh, Vietnam'),
(4, 'Khu C??ch Ly Qu???n 11', '2-4 L?? ?????i H??nh, Ph?????ng 15, Qu???n 11, Th??nh ph??? H??? Ch?? Minh, Vietnam'),
(5, 'Khu c??ch ly b???nh vi???n Ho??n M???', '60-60A Phan X??ch Long, Ph?????ng 1, Ph?? Nhu???n, Th??nh ph??? H??? Ch?? Minh, Vietnam'),
(6, 'Khu c??ch ly T??n Ph??', '611 ??u C??, Ph?? Trung, T??n Ph??, Th??nh ph??? H??? Ch?? Minh, Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `spring_session`
--

CREATE TABLE `spring_session` (
  `PRIMARY_ID` char(36) COLLATE utf8_vietnamese_ci NOT NULL,
  `SESSION_ID` char(36) COLLATE utf8_vietnamese_ci NOT NULL,
  `CREATION_TIME` bigint(20) NOT NULL,
  `LAST_ACCESS_TIME` bigint(20) NOT NULL,
  `MAX_INACTIVE_INTERVAL` int(11) NOT NULL,
  `EXPIRY_TIME` bigint(20) NOT NULL,
  `PRINCIPAL_NAME` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `spring_session_attributes`
--

CREATE TABLE `spring_session_attributes` (
  `SESSION_PRIMARY_ID` char(36) COLLATE utf8_vietnamese_ci NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `travel_history`
--

CREATE TABLE `travel_history` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `travel_history`
--

INSERT INTO `travel_history` (`id`, `address`, `date`, `user_id`) VALUES
(1, '1443 Hu???nh T???n Ph??t', '2021-09-01', 2),
(2, '208 Nguy???n H???u C???nh, Ph?????ng 22, B??nh Th???nh, Th??nh ph??? H??? Ch?? Minh 700000, Vi???t Nam', '2021-09-01', 20),
(3, '??. 46, Ph?????ng 2, Qu???n 4, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-10', 9),
(4, '328 V?? V??n Ki???t, Ph?????ng C?? Giang, Qu???n 1, Th??nh ph??? H??? Ch?? Minh 710200, Vi???t Nam', '2021-08-20', 26),
(5, '02 V??nh Kh??nh, Ph?????ng 9, Qu???n 4, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-10', 19),
(6, '6 Nguy???n L????ng B???ng, T??n Ph??, Qu???n 7, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-05', 19),
(7, '???????ng D4, T??n H??ng, Qu???n 7, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-13', 6),
(8, 'PPVJ+F87, T??n Thu???n ????ng, Qu???n 7, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-14', 26),
(9, '201B Nguy???n Ch?? Thanh, Ph?????ng 12, Qu???n 5, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-14', 22),
(10, '194 Ho??ng V??n Th???, Ph?????ng 9, Ph?? Nhu???n, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-15', 9),
(11, '461 C???ng H??a, Ph?????ng 15, T??n B??nh, Th??nh ph??? H??? Ch?? Minh 700000, Vi???t Nam', '2021-09-13', 18),
(12, 'Quang Trung, Ph?????ng 11, G?? V???p, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-08-24', 20),
(13, 'L?? Th?????ng Ki???t, Ph?????ng 4, G?? V???p, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-09', 25),
(14, 'L?? B9, ??. Th??nh Th??i, Ph?????ng 15, Qu???n 10, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-14', 2),
(15, '314 Nguy???n Tr??i, Ph?????ng 8, Qu???n 5, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-10', 21),
(16, '45 Nguy???n Kh???c Nhu, Ph?????ng C?? Giang, Qu???n 1, Th??nh ph??? H??? Ch?? Minh 700000, Vi???t Nam', '2021-09-08', 10),
(17, '227 ??. Nguy???n V??n C???, Ph?????ng 4, Qu???n 5, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-10', 20),
(18, '285 H???m 285 C??ch M???ng Th??ng T??m, Ph?????ng 12, Qu???n 10, Th??nh ph??? H??? Ch?? Minh 700000, Vi???t Nam', '2021-09-11', 25),
(19, 'Chung c?? ??u C??, 130 P. 9,, T??n B??nh, Vi???t Nam', '2021-09-07', 2),
(20, '3 M???c C???u, Ph?????ng 13, Qu???n 5, Th??nh ph??? H??? Ch?? Minh, Vi???t Nam', '2021-09-14', 10),
(21, '2B Ph??? Quang, Ph?????ng 2, T??n B??nh, Th??nh ph??? H??? Ch?? Minh 700000, Vi???t Nam', '2021-09-15', 23);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_area`
--

CREATE TABLE `treatment_area` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `treatment_area`
--

INSERT INTO `treatment_area` (`id`, `name`, `address`) VALUES
(1, 'Khu ch???a tr??? Qu???n 7', '101 Nguy???n Th??? Th???p, T??n Ph??, Qu???n 7, Th??nh ph??? H??? Ch?? Minh, Vietnam'),
(2, 'Khu ch???a tr??? Qu???n 1', '338 Hai B?? Tr??ng, T??n ?????nh, Qu???n 1, Th??nh ph??? H??? Ch?? Minh, Vietnam'),
(3, 'Khu Ch???a Tr??? B???nh Vi???n Th???ng Nh???t', '1 L?? Th?????ng Ki???t, Ph?????ng 7, T??n B??nh, Th??nh ph??? H??? Ch?? Minh 700000, Vietnam'),
(4, 'Khu Ch???a B???nh G?? V???p', '2 Th???ng Nh???t, Ph?????ng 10, G?? V???p, Th??nh ph??? H??? Ch?? Minh, Vietnam'),
(5, 'B???nh Vi???n Ch??? R???y', '201B Nguy???n Ch?? Thanh, Ph?????ng 12, Qu???n 5, Th??nh ph??? H??? Ch?? Minh, Vietnam');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_vietnamese_ci NOT NULL,
  `citizen_id` int(15) NOT NULL,
  `gender` bit(1) NOT NULL,
  `yob` year(4) NOT NULL,
  `address` varchar(250) COLLATE utf8_vietnamese_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `status` int(1) NOT NULL,
  `vac_status` int(1) NOT NULL,
  `vac1` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `date1` date DEFAULT NULL,
  `vac2` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `date2` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `citizen_id`, `gender`, `yob`, `address`, `phone`, `status`, `vac_status`, `vac1`, `date1`, `vac2`, `date2`) VALUES
(2, 'Nguy???n Nhu???n Ph??t', 212576645, b'0', 1996, '1251 Hu???nh T???n Ph??t Qu???n 7 Th??nh Ph??? H??? Ch?? Minh', 965420753, 1, 2, 'Astra', '2021-09-16', 'Astra', '2021-09-30'),
(4, 'Ho??ng Giang Chu??n', 214245714, b'1', 1994, '45 Tr???n H??ng ?????o Th??nh Ph??? H??? Ch?? Minh', 967541188, 2, 1, 'Mordena', '2021-09-08', NULL, NULL),
(5, 'V?? ?????c Tu???n', 254116845, b'0', 1997, '590 Nguy???n Th??? Th???p Qu???n 7 Th??nh Ph??? H??? Ch?? Minh', 38215540, 0, 0, NULL, NULL, NULL, NULL),
(6, 'Nguy???n Minh Phong', 345124751, b'0', 1997, '590 C??ch M???ng Th??ng T??m Th??nh Ph??? H??? Ch?? Minh', 914455745, 0, 0, NULL, NULL, NULL, NULL),
(7, 'Nguy???n Tu???n Minh', 421578135, b'1', 2000, '120 ??i???n Bi??n Ph??? Th??nh Ph??? H??? Ch?? Minh', 94215451, 0, 0, NULL, NULL, NULL, NULL),
(8, 'V?? Minh Ho??ng', 247055431, b'1', 1984, '348 V?? Th??? S??u Th??nh Ph??? H??? Ch?? Minh', 97245157, 2, 1, 'Pfizer', '2021-08-26', NULL, NULL),
(9, 'Nguy???n Th??? Hi???n', 245135487, b'1', 1989, '32 Quang Trung Th??nh Ph??? H??? Ch?? Minh', 942111351, 1, 0, NULL, NULL, NULL, NULL),
(10, 'Nguy???n V??n A', 684251357, b'1', 1987, '240 V?? V??n Ki???t Th??nh Ph??? H??? Ch?? Minh', 95481234, 2, 0, NULL, NULL, NULL, NULL),
(11, 'T??? V??n B??', 214351576, b'0', 1997, '123 Nguy???n V??n Linh Th??nh Ph??? H??? Ch?? Minh', 964213547, 0, 0, NULL, NULL, NULL, NULL),
(12, 'Tr???n Minh V????ng', 214523547, b'1', 1990, '80 Ho??ng Di???u Th??nh Ph??? H??? Ch?? Minh', 97515347, 0, 1, 'Mordena', '2021-08-23', NULL, NULL),
(13, 'V?? Minh To??n', 975441324, b'1', 1995, '23 Nguy???n Th??? Th???p Th??nh Ph??? H??? Ch?? Minh', 883456751, 0, 0, NULL, NULL, NULL, NULL),
(14, 'V?? Di???u Linh', 877531357, b'0', 1994, '12 V?? Th??? S??u Th??nh Ph??? H??? Ch?? Minh', 943774551, 0, 0, NULL, NULL, NULL, NULL),
(15, 'Tr???n Minh To??n', 214474457, b'0', 1987, '45 ??u C?? Th??nh Ph??? H??? Ch?? Minh', 987172814, 0, 1, 'Astra', '2021-09-08', NULL, NULL),
(16, 'Nguy???n ?????c B??nh', 103028878, b'1', 1974, 'H???m 96 Phan ????nh Ph??ng, Ph?????ng 2, Ph?? Nhu???n, Th??nh ph??? H??? Ch?? Minh, Vietnam', 515730299, 1, 0, NULL, NULL, NULL, NULL),
(17, 'Nguy???n Kh??nh Minh', 901858577, b'1', 1994, '254 Nguy???n Tr??i, Ph?????ng Nguy???n C?? Trinh, Qu???n 1, Th??nh ph??? H??? Ch?? Minh, Vietnam', 974049392, 2, 0, NULL, NULL, NULL, NULL),
(18, 'Nguy???n ?????c Th???', 912292955, b'0', 1983, '305 L?? Th??i T???, Ph?????ng 9, Qu???n 10, Th??nh ph??? H??? Ch?? Minh, Vietnam', 980179380, 0, 0, NULL, NULL, NULL, NULL),
(19, 'Nguy???n Minh Quang', 588360097, b'0', 1994, '270b L?? Th?????ng Ki???t, Ph?????ng 14, T??n B??nh, Th??nh ph??? H??? Ch?? Minh, Vietnam', 362160318, 1, 0, NULL, NULL, NULL, NULL),
(20, 'Nguy???n L??m Vi??n', 181688093, b'0', 1974, '33 ??.Nguy???n H???u Th???, T??n H??ng, Qu???n 7, Th??nh ph??? H??? Ch?? Minh, Vietnam', 528408000, 0, 0, NULL, NULL, NULL, NULL),
(21, 'Nguy???n Tu???n Anh', 183701827, b'1', 1986, 'D. B?? Tr???c, Ph?????ng 2, Qu???n 8, Th??nh ph??? H??? Ch?? Minh, Vietnam', 816833873, 2, 0, NULL, NULL, NULL, NULL),
(22, 'Nguy???n Gia Ph??c', 575783449, b'0', 1996, '??. Tr???n H??ng ?????o, Ph?????ng Nguy???n C?? Trinh, Qu???n 1, Th??nh ph??? H??? Ch?? Minh, Vietnam', 748529931, 0, 2, 'Mordena', '2021-09-01', 'Astra', '2021-09-30'),
(23, 'Nguy???n Ti???n Hi???p', 461366354, b'0', 1990, 'Ph?????ng 4, District 5, Ho Chi Minh City, Vietnam', 628263905, 0, 0, NULL, NULL, NULL, NULL),
(24, 'Nguy???n Giang Thi??n', 594783879, b'1', 1997, '02 ???????ng H??ng V????ng, Ph?????ng 1, Qu???n 5, Th??nh ph??? H??? Ch?? Minh, Vietnam', 341977566, 1, 0, NULL, NULL, NULL, NULL),
(25, 'Nguy???n Huy T?????ng', 295480765, b'1', 1992, '214/2B Nguy???n Tr??i, Ph?????ng Nguy???n C?? Trinh, Qu???n 1, Th??nh ph??? H??? Ch?? Minh, Vietnam', 552568077, 1, 0, NULL, NULL, NULL, NULL),
(26, 'Ph???m B??ch Quy??n', 537469289, b'1', 1997, '277 Ph???m Ng?? L??o, Ph?????ng Ph???m Ng?? L??o, Qu???n 1, Th??nh ph??? H??? Ch?? Minh 700000, Vietnam', 714946699, 2, 0, NULL, NULL, NULL, NULL),
(27, 'Ph???m Thanh H???ng', 128996253, b'1', 1998, 'TK40/24 ??. Tr???n H??ng ?????o, P, Qu???n 1, Th??nh ph??? H??? Ch?? Minh 700000, Vietnam', 349414472, 2, 0, NULL, NULL, NULL, NULL),
(28, 'Ph???m Di???p Anh', 496777474, b'0', 1995, '212B Nguy???n Tr??i, Ph?????ng Nguy???n C?? Trinh, Qu???n 1, Th??nh ph??? H??? Ch?? Minh 700000, Vietnam', 418470807, 1, 0, NULL, NULL, NULL, NULL),
(29, 'Ph???m S??n Ca', 141454773, b'0', 1987, '189B T??n Th???t Thuy???t, Ph?????ng 3, Qu???n 4, Th??nh ph??? H??? Ch?? Minh, Vietnam', 618090808, 0, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_f0`
--

CREATE TABLE `user_f0` (
  `id` bigint(20) NOT NULL,
  `area_id` int(11) DEFAULT NULL,
  `heart_rate` bigint(20) DEFAULT NULL,
  `spo2` bigint(20) DEFAULT NULL,
  `temp` bigint(20) DEFAULT NULL,
  `tlc` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user_f0`
--

INSERT INTO `user_f0` (`id`, `area_id`, `heart_rate`, `spo2`, `temp`, `tlc`, `user_id`) VALUES
(14, 1, 2200, 80, 37, 800, 4),
(17, 4, 120, 80, 38, 3800, 8),
(18, 2, 100, 85, 37, 3400, 10),
(19, 3, 90, 84, 39, 3400, 17),
(20, 5, 140, 89, 38, 2900, 21),
(21, 2, 121, 79, 37, 2500, 26),
(22, 5, 134, 80, 38, 3000, 27);

-- --------------------------------------------------------

--
-- Table structure for table `user_f1`
--

CREATE TABLE `user_f1` (
  `id` bigint(20) NOT NULL,
  `area_id` int(11) NOT NULL,
  `day_end` date NOT NULL,
  `day_start` date NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user_f1`
--

INSERT INTO `user_f1` (`id`, `area_id`, `day_end`, `day_start`, `user_id`) VALUES
(9, 3, '2021-09-20', '2021-09-06', 9),
(12, 4, '2021-09-30', '2021-09-15', 19),
(13, 6, '2021-09-22', '2021-09-08', 24),
(14, 4, '2021-09-28', '2021-09-14', 25),
(15, 2, '2021-09-25', '2021-09-11', 28),
(16, 5, '2021-10-07', '2021-09-16', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `health_daily`
--
ALTER TABLE `health_daily`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_dly` (`user_id`);

--
-- Indexes for table `health_dcl`
--
ALTER TABLE `health_dcl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_dcl` (`user_id`);

--
-- Indexes for table `medstf`
--
ALTER TABLE `medstf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcr`
--
ALTER TABLE `pcr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_pcr` (`user_id`);

--
-- Indexes for table `quarantine_area`
--
ALTER TABLE `quarantine_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spring_session`
--
ALTER TABLE `spring_session`
  ADD PRIMARY KEY (`PRIMARY_ID`),
  ADD UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  ADD KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  ADD KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`);

--
-- Indexes for table `spring_session_attributes`
--
ALTER TABLE `spring_session_attributes`
  ADD PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`);

--
-- Indexes for table `travel_history`
--
ALTER TABLE `travel_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_his` (`user_id`);

--
-- Indexes for table `treatment_area`
--
ALTER TABLE `treatment_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_f0`
--
ALTER TABLE `user_f0`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id_f0` (`user_id`),
  ADD KEY `area_id_f0` (`area_id`);

--
-- Indexes for table `user_f1`
--
ALTER TABLE `user_f1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `area_id_f1` (`user_id`),
  ADD KEY `user_id_f1` (`area_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `health_daily`
--
ALTER TABLE `health_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `health_dcl`
--
ALTER TABLE `health_dcl`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `medstf`
--
ALTER TABLE `medstf`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pcr`
--
ALTER TABLE `pcr`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quarantine_area`
--
ALTER TABLE `quarantine_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `travel_history`
--
ALTER TABLE `travel_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `treatment_area`
--
ALTER TABLE `treatment_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_f0`
--
ALTER TABLE `user_f0`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user_f1`
--
ALTER TABLE `user_f1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `health_daily`
--
ALTER TABLE `health_daily`
  ADD CONSTRAINT `user_id_dly` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `health_dcl`
--
ALTER TABLE `health_dcl`
  ADD CONSTRAINT `user_id_dcl` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pcr`
--
ALTER TABLE `pcr`
  ADD CONSTRAINT `user_id_pcr` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `spring_session_attributes`
--
ALTER TABLE `spring_session_attributes`
  ADD CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `spring_session` (`PRIMARY_ID`) ON DELETE CASCADE;

--
-- Constraints for table `travel_history`
--
ALTER TABLE `travel_history`
  ADD CONSTRAINT `user_id_his` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_f0`
--
ALTER TABLE `user_f0`
  ADD CONSTRAINT `area_id_f0` FOREIGN KEY (`area_id`) REFERENCES `treatment_area` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_f0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_f1`
--
ALTER TABLE `user_f1`
  ADD CONSTRAINT `area_id_f1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id_f1` FOREIGN KEY (`area_id`) REFERENCES `quarantine_area` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
