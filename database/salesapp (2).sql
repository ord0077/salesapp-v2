-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 01, 2021 at 09:50 AM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `salesapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `aa1`
--

DROP TABLE IF EXISTS `aa1`;
CREATE TABLE IF NOT EXISTS `aa1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aa1_key` varchar(191) DEFAULT NULL,
  `aa1_v1` varchar(191) DEFAULT NULL,
  `aa1_v2` varchar(191) DEFAULT NULL,
  `aa1_v3` varchar(191) DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aa1`
--

INSERT INTO `aa1` (`id`, `aa1_key`, `aa1_v1`, `aa1_v2`, `aa1_v3`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Equity Funds', '19.85%', '56.38%', '41.70%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Fixed Income Funds', '79.01%', '43.18%', '58.23%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Cash', '0.99%', '0.39%', '0.02%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Others Including Receivables', '0.15%', '0.05%', '0.05%', 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Equity Funds', '17.87%', '56.95%', '48.71%', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Fixed Income Funds', '79.49%', '41.42%', '50.97%', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Cash', '1.23%', '0.97%', '0.02%', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Others including receivables', '1.41%', '0.66%', '0.30%', 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'T-bills', '50.28%', '46.85%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Cash', '40.61%', '19.24%', '8.02%', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Commercial Paper', '7.97%', '6.96%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'PIBs', '-', '0.03%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'TFCs/ Sukuks', '-', '25.48%', '-', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Stock / Equities', '-', '-', '91.91%', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Others & receivables', '1.14%', '1.44%', '0.07%', 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'GoP Ijarah Sukuk', '-', '10.00%', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Cash', '72.42%', '52.06%', '9.99%', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Placement with Banks & DFIs', '15.86%', '16.08%', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'TFCs/ Sukuks', '-', '15.55%', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Commercial Paper', '7.77%', '2.14%', '-', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Stock / Equities', '-', '-', '89.94%', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Others including Receivables', '3.95%', '4.17%', '0.07%', 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `asset_allocation`
--

DROP TABLE IF EXISTS `asset_allocation`;
CREATE TABLE IF NOT EXISTS `asset_allocation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aa_keys` varchar(191) DEFAULT NULL,
  `aa_values` varchar(191) DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_allocation`
--

INSERT INTO `asset_allocation` (`id`, `aa_keys`, `aa_values`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Cash', '0.19%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(2, 'Placements with Banks & DFIs', '3.05%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(3, 'T-Bills', '95.49%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(4, 'Commercial Paper', '1.08%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(5, 'Others Including receivables', '0.19%', 10, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(6, 'Cash', '87.07%', 11, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(8, 'Commercial paper', '12.14%', 11, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(9, 'Others Including receivables', '0.79%', 11, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(11, 'Placement with Banks & DFI', '9.18%', 12, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(12, 'TFCs / Sukuks', '40.32%', 12, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(14, 'Others Including receivables', '1.48%', 12, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(15, 'Commercial Papers', '17.57%', 12, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(16, 'Cash', '56.84%', 13, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(18, 'T-Bills', '31.38%', 13, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(21, 'Others Including receivables', '0.52%', 13, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(22, 'Cash', '52.63%', 14, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(24, 'TFCs/Sukuks', '45.68%', 14, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(29, 'Others including receivables', '1.69%', 14, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(30, 'Cash', '74.85%', 15, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(34, 'T-Bills', '0.34%', 15, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(35, 'MTS/Spread Transaction', '0.79%', 15, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(36, 'Others including receivables', '2.05%', 15, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(37, 'Cash', '13.30%', 16, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(38, 'Stock/Equities', '77.89%', 16, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(40, 'Others including receivables', '8.81%', 16, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(41, 'Cash', '10.20%', 17, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(42, 'Stock/Equities', '87.30%', 17, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(43, 'Others including receivables', '2.50%', 17, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(44, 'Cash', '15.17%', 18, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(45, 'Stock/Equities', '84.18%', 18, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(46, 'Others including receivables', '0.65%', 18, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(47, 'Cash', '14.46%', 19, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(48, 'Stock/Equities', '84.43%', 19, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(49, 'Others including receivables', '1.11%', 19, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(50, 'Cash', '15.57%', 20, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(51, 'Stock/Equities', '83.63%', 20, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(52, 'Others including receivables', '0.80%', 20, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(53, 'Cash', '15.63%', 21, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(55, 'TFC/ Sukuks', '30.24%', 21, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(56, 'Stock/Equities', '25.91%', 21, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(57, 'Others Including Receivables', '1.11%', 21, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(58, 'Cash', '33.94%', 22, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(60, 'TFCs/Sukuks', '11.21%', 22, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(63, 'Stock / Equities', '53.22%', 22, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(64, 'Others including receivables', '1.63%', 22, '2018-07-10 06:20:59', '2018-07-10 06:20:59'),
(66, 'Cash', '31.45%', 12, '2018-07-20 11:24:39', '2018-07-20 11:24:39'),
(68, 'Commercial Paper', '21.97%', 15, '2018-10-15 11:19:39', '2018-10-15 11:19:39'),
(69, 'Placements with Banks & DFIs', '11.26%', 13, '2018-11-20 09:51:34', '2018-11-20 09:51:34'),
(70, 'Placements with Banks & DFIs', '17.75%', 21, '2018-11-22 07:32:14', '2018-11-22 07:32:14'),
(71, 'Commercial Paper', '9.36%', 21, '2018-11-22 07:32:45', '2018-11-22 07:32:45');

-- --------------------------------------------------------

--
-- Table structure for table `aums1`
--

DROP TABLE IF EXISTS `aums1`;
CREATE TABLE IF NOT EXISTS `aums1` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aums1`
--

INSERT INTO `aums1` (`id`, `title`, `f1`, `created_at`, `updated_at`) VALUES
(1, 'Assets Under Management (AUMs)', 'During the past 9 years, HBL AML Assets Under Management has shown a CAGR of 29.10%. AUMs grew from Rs. 5.2 billion in 2010 to Rs. 51.80 billion in Dec, 2018. This illustrates the HBL AML’s commitment towards becoming one of the leading asset management company.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aums2`
--

DROP TABLE IF EXISTS `aums2`;
CREATE TABLE IF NOT EXISTS `aums2` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `aums2`
--

INSERT INTO `aums2` (`id`, `title`, `f1`, `created_at`, `updated_at`) VALUES
(1, 'Assets Under Management (AUMs)', 'As of Dec 2018, 40.78% of our assets under management consists of Equity Schemes which offer high returns. Followed by Money Market and Fixed Income (42.42% cumulative) Schemes for those who are willing to opt for consistent returns.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aums_1_chart`
--

DROP TABLE IF EXISTS `aums_1_chart`;
CREATE TABLE IF NOT EXISTS `aums_1_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aums_1_key` varchar(191) NOT NULL,
  `aums_1_value` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aums_1_chart`
--

INSERT INTO `aums_1_chart` (`id`, `aums_1_key`, `aums_1_value`) VALUES
(1, 'Dec 18', '51806'),
(2, 'Dec 17', '55693'),
(3, 'Dec 16', '52406'),
(4, 'Dec 15', '20312'),
(5, 'Dec 14', '19022');

-- --------------------------------------------------------

--
-- Table structure for table `aums_2_chart`
--

DROP TABLE IF EXISTS `aums_2_chart`;
CREATE TABLE IF NOT EXISTS `aums_2_chart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aums_2_key` varchar(191) NOT NULL,
  `aums_2_value` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aums_2_chart`
--

INSERT INTO `aums_2_chart` (`id`, `aums_2_key`, `aums_2_value`) VALUES
(1, 'Equity Schemes', '21,126'),
(2, 'Fixed Income Schemes', '3,399'),
(3, 'Money Market Schemes', '18,577'),
(4, 'Balanced Schemes', '2,499'),
(5, 'Pension Schemes', '949'),
(6, 'Funds of Funds Schemes', '5256');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f6_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f6_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f7_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f7_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f8_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f8_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f9_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f9_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f10_bold` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f10_normal` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `f1_bold`, `f1_normal`, `f2_bold`, `f2_normal`, `f3_bold`, `f3_normal`, `f4_bold`, `f4_normal`, `f5_bold`, `f5_normal`, `f6_bold`, `f6_normal`, `f7_bold`, `f7_normal`, `f8_bold`, `f8_normal`, `f9_bold`, `f9_normal`, `f10_bold`, `f10_normal`, `created_at`, `updated_at`) VALUES
(1, 'Awards – Habib Bank Limited', 'Bank of the Year', 'in Pakistan (The Banker)', 'Safest Bank', 'in Pakistan (Global Finance)', 'Best Domestic Bank', '- Pakistan (Asiamoney)', 'Brand of the Year, Banking', '- Pakistan (World Branding Awards)', 'Best Investment Bank', 'in Pakistan (Global Finance)', 'Best Retail Bank', 'in Pakistan (Asian Banker)', 'Best Trade Finance Bank', 'in Pakistan (Global Finance)', 'Best Bank for Small Business & Agriculture', '(Institute of Bankers Pakistan IBP Awards)', 'Best Environmental, Social and Governance Bank', '(Institute of Bankers Pakistan IBP Awards)', 'The Innovators of Transaction Services', '(Global Finance, Digital Bank Awards)', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
CREATE TABLE IF NOT EXISTS `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(191) DEFAULT NULL,
  `bank_color` varchar(191) NOT NULL,
  `chart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `bank`, `bank_color`, `chart_id`) VALUES
(1, 'HBL', '#01a896', 1),
(2, 'UBL', '#004b92', 1),
(3, 'MCB', '#50b748', 1),
(4, 'NBP', '#FC0', 1),
(5, 'ABL', '#fe652c', 1),
(6, 'HBL', '#01a896', 2),
(7, 'UBL', '#004b92', 2),
(8, 'MCB', '#50b748', 2),
(9, 'NBP', '#FC0', 2),
(10, 'ABL', '#fe652c', 2);

-- --------------------------------------------------------

--
-- Table structure for table `bank_details`
--

DROP TABLE IF EXISTS `bank_details`;
CREATE TABLE IF NOT EXISTS `bank_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iban_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `bank_name_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_name_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_details`
--

INSERT INTO `bank_details` (`id`, `bank_name`, `branch_name`, `account_title`, `iban_number`, `customer_id`, `bank_name_id`, `branch_name_id`, `created_at`, `updated_at`) VALUES
(1, 'abc', 'abc', '234234234234abc', '24234A234234242423423424abc', 1, '1', '1', '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'NBP', 'Kanupp Branch', 'ABCDmmm', '24234A23423424242', 2, '20', '857', '2020-10-07 06:37:13', '2020-10-07 06:37:13'),
(3, 'ABL', 'Karachi, Baba-E-Urdu', 'TEST', '121212121212121212121212', 3, '2', '17', '2020-10-22 11:34:43', '2020-10-22 11:34:43'),
(4, 'ABL', 'Karachi, Baba-E-Urdu', 'HELLO', '787878787887878778877878', 5, '2', '17', '2020-10-22 11:54:28', '2020-10-22 11:54:28'),
(5, 'ALBARAKA', 'Clifton', 'ALI HAIDER', 'PKALBA000000012345678911', 6, '1', '2', '2020-10-23 07:02:50', '2020-10-23 07:02:50'),
(6, 'ABL', 'Karachi, Baba-E-Urdu', 'QAISER', 'PK0015151515151515151551', 7, '2', '17', '2020-10-29 05:55:46', '2020-10-29 05:55:46'),
(7, 'SCBPL', 'Centenary Branch', 'SOHAIL ALI', 'PK00SCBPL000123456789999', 8, '26', '1137', '2020-10-30 06:27:46', '2020-10-30 06:27:46'),
(8, 'ABL', 'Karachi, Clifton', 'SOHAIL RANA', 'PK00ABL00000000012345667', 9, '2', '18', '2020-10-29 09:38:40', '2020-10-29 09:38:40'),
(9, 'ABL', 'Dastgir Colony Branch, Karachi', 'KASHIF', '878789798798788245456465', 10, '2', '20', '2020-10-29 10:25:15', '2020-10-29 10:25:15'),
(10, 'ABL', 'Karachi, Cloth Market', 'TEST ACCOUNT TITLE', '112233445566778899112233', 11, '2', '19', '2020-11-04 12:30:56', '2020-11-04 12:30:56'),
(11, 'ABL', 'Karachi, Clifton', 'NOMAN ALI', 'PK00ABL12345678901011234', 12, '2', '18', '2020-11-05 04:33:33', '2020-11-05 04:33:33'),
(12, 'ABL', 'Dastgir Colony Branch, Karachi', 'EJAZ AHMED', '111111111122222222222333', 13, '2', '20', '2020-11-10 05:18:33', '2020-11-10 05:18:33'),
(13, 'ABL', 'Mereweather Tower, Karachi', 'FASDFSDFDS', '123456789123456789111111', 14, '2', '16', '2020-11-10 05:55:44', '2020-11-10 05:55:44'),
(14, 'ABL', 'Karachi, Clifton', 'TRERERTYT', '558475965845896321458745', 15, '2', '18', '2020-11-10 06:06:00', '2020-11-10 06:06:00'),
(15, 'ABL', 'Karachi, Clifton', 'GDFDFG', '369852147586932547856963', 16, '2', '18', '2020-11-10 11:06:37', '2020-11-10 11:06:37'),
(16, 'ABL', 'Dastgir Colony Branch, Karachi', 'HHHHHHH', '145874265896412358965412', 17, '2', '20', '2020-11-10 14:27:57', '2020-11-10 14:27:57'),
(17, 'ABL', 'Karachi, Clifton', 'DFDDFD', '458752563695854785236958', 18, '2', '18', '2020-11-11 06:29:34', '2020-11-11 06:29:34'),
(18, 'AKBL', 'Model Town, Lahore', 'ALI HAMZA', 'PK9877739393939393939393', 19, '3', '108', '2020-11-11 07:08:50', '2020-11-11 07:08:50'),
(19, 'ABL', 'Civic Center Branch, Karachi', 'NADIR', '547854125896325412587456', 20, '2', '21', '2020-11-12 10:39:44', '2020-11-12 10:39:44'),
(20, 'ABL', 'Dastgir Colony Branch, Karachi', 'NADEEM', '547896325856321586354258', 21, '2', '20', '2020-11-13 12:15:22', '2020-11-13 12:15:22'),
(21, 'ABL', 'Karachi, Clifton', 'ALI', '121212121212121212121212', 24, '2', '18', '2021-01-07 10:55:55', '2021-01-07 10:55:55'),
(22, 'ABL', 'Karachi, Clifton', 'BILAL', '321654987654321654898745', 25, '2', '18', '2021-01-07 11:13:37', '2021-01-07 11:13:37'),
(23, 'ABL', 'Civic Center Branch, Karachi', 'WAQAS', '564646556465465895424235', 26, '2', '21', '2021-01-12 05:34:16', '2021-01-12 05:34:16'),
(24, 'AKBL', 'Stock Exchange Branch, Karachi', 'SAFDAR1', '158742369852148745236958', 27, '3', '109', '2021-01-13 06:48:34', '2021-01-13 06:48:34'),
(25, 'AKBL', 'Model Town, Lahore', 'AHMED', '654789225568525489514568', 28, '3', '108', '2021-01-13 09:37:40', '2021-01-13 09:37:40'),
(26, 'BAHL', 'Zamzama Branch', 'AAAA', '111111111122233333333333', 29, '4', '148', '2021-01-19 09:22:06', '2021-01-19 09:22:06'),
(27, 'BIPL', 'DHA Phase IV Branch', 'SDFDSDSF', '369852147586932547856963', 30, '6', '298', '2021-01-19 10:21:18', '2021-01-19 10:21:18'),
(28, 'BIPL', 'DHA Phase IV Branch, Karachi', 'FSDFASDFD', '111111111122222222222333', 31, '6', '299', '2021-01-19 11:26:05', '2021-01-19 11:26:05'),
(29, 'BAHL', 'SITE Branch', 'VGNGFFG', '112233445566778899112233', 32, '4', '149', '2021-01-19 11:33:55', '2021-01-19 11:33:55'),
(30, 'ALBARAKA', 'Clifton', 'ALI HAMZA', 'PK00HABL0000000001111111', 33, '1', '2', '2021-01-21 06:27:49', '2021-01-21 06:27:49'),
(31, 'BAHL', 'Zamzama Branch', 'FAISAL', '111111122222222333333444', 34, '4', '148', '2021-01-27 08:11:23', '2021-01-27 08:11:23'),
(32, 'AKBL', 'Stock Exchange Branch, Karachi', 'SDDSDFDSAASDF', '456987456987456987455669', 35, '3', '109', '2021-02-04 08:36:39', '2021-02-04 08:36:39'),
(33, 'BAHL', 'Hassan Centre Sub-Branch Of Gulshan-e-Iqbal Branch', 'GGGG', '8888I9999998887777888888', 36, '4', '147', '2021-02-04 13:44:07', '2021-02-04 13:44:07'),
(34, 'SILK', 'G-9 Markaz Branch, Islamabad', 'GGGG', '888887777776666665555544', 37, '23', '1070', '2021-02-09 09:43:07', '2021-02-09 09:43:07'),
(35, 'ABL', 'Karachi, Cloth Market', 'FDGFDFSD', '555554444455858552222222', 38, '2', '19', '2021-02-10 07:50:15', '2021-02-10 07:50:15'),
(36, 'BAFL', 'Model Town, Lahore', 'HJJHGHHJ', '545645646545646545665455', 39, '5', '250', '2021-02-10 09:50:00', '2021-02-10 09:50:00'),
(37, 'BAHL', 'SITE Branch', 'TYTRRTYRTY', '564654654654654566545665', 40, '4', '149', '2021-02-16 10:37:07', '2021-02-16 10:37:07'),
(38, 'DIB', 'Tariq Road', 'TTTTTTT', '888888888899999999996666', 41, '10', '328', '2021-02-16 14:03:29', '2021-02-16 14:03:29'),
(39, 'FWBL', 'Shahrah-e-Quaideen', 'YTYTRTREY', '545645646546546545645465', 42, '12', '385', '2021-02-16 15:01:38', '2021-02-16 15:01:38'),
(40, 'BAHL', 'SITE Branch', 'JHJGJ', '566565598989889875454211', 43, '4', '149', '2021-02-17 05:46:08', '2021-02-17 05:46:08'),
(41, 'BAHL', 'Hassan Centre Sub-Branch Of Gulshan-e-Iqbal Branch', 'KLJHKLHKHJKHJ', '878754521316423123154899', 44, '4', '147', '2021-02-17 06:05:30', '2021-02-17 06:05:30'),
(42, 'BAHL', 'Bahadurabad Branch', 'WEEREWQEWR', 'SDFSDF456465456465456456', 45, '4', '150', '2021-02-18 09:50:39', '2021-02-18 09:50:39'),
(43, 'AKBL', 'DHA, Islamabad', 'YYJJHG', 'FGHFGHHGF564313215464545', 47, '3', '107', '2021-02-19 08:43:55', '2021-02-19 08:43:55'),
(44, 'BAFL', 'F-10, Markaz', 'DSDDSF', 'GFG564456454564654654545', 48, '5', '248', '2021-02-19 10:18:44', '2021-02-19 10:18:44'),
(45, 'BAHL', 'Karachi Main Branch', 'OIYUKLJKLJKL', 'HJGHJG546321564215456465', 50, '4', '145', '2021-02-22 07:39:17', '2021-02-22 07:39:17'),
(46, 'BAHL', 'SITE Branch', 'WERTFDSF', 'SDFSDF564421154545645565', 51, '4', '149', '2021-02-23 07:58:28', '2021-02-23 07:58:28'),
(47, 'BAHL', 'Zamzama Branch', 'RRRE', 'FSD564652312156564564565', 52, '4', '148', '2021-02-23 09:58:01', '2021-02-23 09:58:01'),
(48, 'BIPL', 'DHA Phase IV Branch', 'WVBFGHGF', 'SDFE56656564545454897897', 54, '6', '298', '2021-02-23 11:49:02', '2021-02-23 11:49:02'),
(49, 'BAFL', 'Model Town, Lahore', 'TRRETERW', 'SDFSF6545562121445645654', 55, '5', '250', '2021-02-24 07:27:37', '2021-02-24 07:27:37'),
(50, 'AKBL', 'Model Town, Lahore', 'TRTRHRTH', 'BGFD44454564654654654564', 56, '3', '108', '2021-02-25 06:00:28', '2021-02-25 06:00:28'),
(51, 'BAFL', 'F-10, Markaz', 'OIUIIY', 'HJHJ52454688979654523415', 59, '5', '248', '2021-02-25 11:27:38', '2021-02-25 11:27:38'),
(52, 'ABL', 'Karachi, Baba-E-Urdu', 'KJKJK', 'JNHH54548765564565644545', 60, '2', '17', '2021-02-25 11:50:09', '2021-02-25 11:50:09'),
(53, 'BAFL', 'Model Town, Lahore', 'RWEWR', 'FDSF55645645645646545645', 61, '5', '250', '2021-02-26 07:37:42', '2021-02-26 07:37:42'),
(54, 'AKBL', 'Stock Exchange Branch, Karachi', 'UYHJMHH', 'GHHGF4564654654454654545', 63, '3', '109', '2021-03-01 05:51:47', '2021-03-01 05:51:47'),
(55, 'BIPL', 'DHA Branch, Lahore', 'BNBNBNBN', 'ERE545642545423156512123', 65, '6', '297', '2021-03-01 12:18:24', '2021-03-01 12:18:24'),
(56, 'MCB', 'Bhimpura', 'UOIIOUOUI', 'SDF536248752315468779878', 66, '17', '638', '2021-03-02 06:32:03', '2021-03-02 06:32:03'),
(57, 'BIPL', 'DHA Branch, Lahore', 'RTYTER', 'WE4546545465546556456454', 67, '6', '297', '2021-03-02 11:06:06', '2021-03-02 11:06:06'),
(58, 'BAFL', 'Chuburji', 'IUYUYIYIY', 'UTYUT4545646546546654565', 68, '5', '251', '2021-03-02 12:30:33', '2021-03-02 12:30:33'),
(59, 'BAHL', 'SITE Branch', 'IKIKKIK', 'HJ9854564566456654895465', 69, '4', '149', '2021-03-03 10:01:58', '2021-03-03 10:01:58'),
(60, 'AKBL', 'Model Town, Lahore', 'YTRRETRET', 'FGGDF5646546545644564565', 70, '3', '108', '2021-03-04 06:11:02', '2021-03-04 06:11:02'),
(61, 'ABL', 'Karachi, Cloth Market', 'JNHGHG', 'TRET54546546541321212354', 71, '2', '19', '2021-03-04 06:43:17', '2021-03-04 06:43:17'),
(62, 'AKBL', 'DHA, Islamabad', 'JHGJHJHG', 'FHGF23123545231212312312', 72, '3', '107', '2021-03-08 05:50:19', '2021-03-08 05:50:19'),
(63, 'BAFL', 'Model Town, Lahore', 'YIUYIUIUY', 'FDG564565123231231523165', 73, '5', '250', '2021-03-10 11:14:52', '2021-03-10 11:14:52'),
(64, 'ICBC', 'Parsa Tower', 'YUIUUY', 'FDR554561231231231315465', 74, '15', '622', '2021-03-11 09:32:05', '2021-03-11 09:32:05'),
(65, 'ABL', 'Karachi, Clifton', 'JIBRAN', 'HDGSG5644545465465546554', 75, '2', '18', '2021-03-11 11:48:48', '2021-03-11 11:48:48'),
(66, 'ABL', 'Karachi, Baba-E-Urdu', 'TUYUIN', 'WERWER564564465646655645', 76, '2', '17', '2021-03-15 05:38:28', '2021-03-15 05:38:28'),
(67, 'BAFL', 'F-10, Markaz', 'YUU', 'YRT564545645645646545645', 77, '5', '248', '2021-03-15 06:35:33', '2021-03-15 06:35:33'),
(68, 'BIPL', 'DHA Phase IV Branch', 'YTUUYUYT', 'BHGH54556456456456654655', 78, '6', '298', '2021-03-15 07:42:45', '2021-03-15 07:42:45'),
(69, 'BAHL', 'Zamzama Branch', 'ERETRETRE', 'DFGFD5654556456465564564', 79, '4', '148', '2021-03-17 08:05:08', '2021-03-17 08:05:08'),
(70, 'AKBL', 'Model Town, Lahore', 'HJHJHJHJ', 'DFGS54564646545646544545', 80, '3', '108', '2021-03-31 14:09:19', '2021-03-31 14:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `charts`
--

DROP TABLE IF EXISTS `charts`;
CREATE TABLE IF NOT EXISTS `charts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ret` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plan` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charts`
--

INSERT INTO `charts` (`id`, `year`, `val`, `ret`, `plan`, `fund_id`, `created_at`, `updated_at`) VALUES
(7, '1 year', '10568', '5.68', NULL, 11, NULL, NULL),
(8, '3 year', '11444', '4.81', NULL, 11, NULL, NULL),
(9, '1 year', '10612', '6.12', NULL, 12, NULL, NULL),
(10, '3 year', '10587', '5.87', NULL, 12, NULL, NULL),
(11, '1 year', '10640', '6.40', NULL, 13, NULL, NULL),
(12, '3 year', '10629', '6.29', NULL, 13, NULL, NULL),
(13, '1 year', '10649', '6.49', NULL, 14, NULL, NULL),
(14, '3 year', '11697', '5.65', NULL, 14, NULL, NULL),
(15, '1 year', '10651', '6.51', NULL, 15, NULL, NULL),
(16, '3 year', '11973', '6.57', NULL, 15, NULL, NULL),
(17, '1 year', '9286', '-7.14', NULL, 16, NULL, NULL),
(18, '3 year', '10333', '3.33', NULL, 16, NULL, NULL),
(19, '1 year', '9416', '-5.84', NULL, 17, NULL, NULL),
(20, '3 year', '12270', '7.56', NULL, 17, NULL, NULL),
(21, '1 year', '9485', '-5.15', NULL, 18, NULL, NULL),
(22, '3 year', '11982', '6.60', NULL, 18, NULL, NULL),
(23, '1 year', '9485', '-5.15', NULL, 19, NULL, NULL),
(24, '3 year', '10509', '5.09', NULL, 19, NULL, NULL),
(25, '1 year', '8766', '-12.34', NULL, 20, NULL, NULL),
(26, '3 year', '11233', '12.33', NULL, 20, NULL, NULL),
(27, '1 year', '10197', '1.97', NULL, 21, NULL, NULL),
(28, '3 year', '10000', '0.00', NULL, 21, NULL, NULL),
(29, '1 year', '9802', '-1.98', NULL, 22, NULL, NULL),
(30, '3 year', '11051', '10.51', NULL, 22, NULL, NULL),
(33, '5 year', '12912', '5.82', NULL, 11, NULL, NULL),
(34, '5 year', '10000', '0.00', NULL, 12, NULL, NULL),
(35, '5 year', '10767', '7.67', NULL, 13, NULL, NULL),
(36, '5 year', '14372', '8.74', NULL, 14, NULL, NULL),
(37, '5 year', '14472', '8.94', NULL, 15, NULL, NULL),
(38, '5 year', '11927', '19.27', NULL, 16, NULL, NULL),
(39, '5 year', '30816', '41.61', NULL, 17, NULL, NULL),
(40, '5 year', '10000', '0.00', NULL, 18, NULL, NULL),
(41, '5 year', '12457', '24.57', NULL, 19, NULL, NULL),
(42, '5 year', '12499', '24.99', NULL, 20, NULL, NULL),
(43, '5 year', '10000', '0.00', NULL, 21, NULL, NULL),
(44, '5 year', '12748', '27.48', NULL, 22, NULL, NULL),
(45, '1 year', '10653', '6.53', NULL, 10, NULL, NULL),
(46, '3 year', '12057', '6.85', NULL, 10, NULL, NULL),
(47, '5 year', '14332', '8.66', NULL, 10, NULL, NULL),
(48, '1 year', '10553', '5.33', 'mmsf', 25, NULL, NULL),
(49, '3 year', '11462', '4.87', 'mmsf', 25, NULL, NULL),
(50, '5 year', '12977', '5.95', 'mmsf', 25, NULL, NULL),
(51, '1 year', '10479', '4.79', 'dsf', 25, NULL, NULL),
(52, '3 year', '10521', '5.21', 'dsf', 25, NULL, NULL),
(53, '5 year', '10779', '7.79', 'dsf', 25, NULL, NULL),
(54, '1 year', '9506', '-4.94', 'esf', 25, NULL, NULL),
(55, '3 year', '13039', '10.12', 'esf', 25, NULL, NULL),
(56, '5 year', '38521', '57.01', 'esf', 25, NULL, NULL),
(57, '1 year', '10456', '4.56%', 'mmsf', 26, NULL, NULL),
(58, '3 year', '11231', '4.10', 'mmsf', 26, NULL, NULL),
(59, '5 year', '12331', '4.66', 'mmsf', 26, NULL, NULL),
(60, '1 year', '10403', '4.03', 'dsf', 26, NULL, NULL),
(61, '3 year', '10424', '4.24', 'dsf', 26, NULL, NULL),
(62, '5 year', '10488', '4.88', 'dsf', 26, NULL, NULL),
(63, '1 year', '9640', '-3.60', 'esf', 26, NULL, NULL),
(64, '3 year', '13135', '10.44', 'esf', 26, NULL, NULL),
(65, '5 year', '43493', '66.95', 'esf', 26, NULL, NULL),
(66, '90 Days', '9965', '-0.35', 'cap', 23, NULL, NULL),
(67, '180 Days', '10157', '1.57', 'cap', 23, NULL, NULL),
(68, '1 Year', '10339', '3.39', 'cap', 23, NULL, NULL),
(69, '90 Days', '9469', '-5.31', 'aap', 23, NULL, NULL),
(70, '180 Days', '9721', '-2.79', 'aap', 23, NULL, NULL),
(71, '1 Year', '9663', '-3.37', 'aap', 23, NULL, NULL),
(72, '90 Days', '9641', '-3.59', 'sap', 23, NULL, NULL),
(73, '180 Days', '9890', '-1.10', 'sap', 23, NULL, NULL),
(74, '1 Year', '9868', '-1.32', 'sap', 23, NULL, NULL),
(75, '90 Days', '9943', '-0.57', 'cap', 24, NULL, NULL),
(76, '180 Days', '10117', '1.17', 'cap', 24, NULL, NULL),
(77, '1 Year', '10326', '3.26', 'cap', 24, NULL, NULL),
(78, '90 Days', '9379', '-6.21', 'aap', 24, NULL, NULL),
(79, '180 Days', '9564', '-4.36', 'aap', 24, NULL, NULL),
(80, '1 Year', '9472', '-5.28', 'aap', 24, NULL, NULL),
(81, '90 Days', '9499', '-5.01', 'sap', 24, NULL, NULL),
(82, '180 Days', '9674', '-3.26', 'sap', 24, NULL, NULL),
(83, '1 Year', '9628', '-3.72', 'sap', 24, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `qq` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic_attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic_issue_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pob_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pob_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occ_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org_emp_bes_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_experience` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_of_business` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_of_dependants` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `public_figure` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_annual_income` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refused_account_by_institute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `high_value_item` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `soi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soi_attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zakat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zakat_options` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zakat_certificate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pob_city_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pob_country_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city1_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country1_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soi_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `occupation_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `average_annual_income_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `qq`, `name`, `father_name`, `mother_name`, `dob`, `cnic`, `cnic_attachment`, `cnic_issue_date`, `pob_city`, `pob_country`, `email`, `cell`, `occupation`, `occ_name`, `designation`, `department`, `org_emp_bes_name`, `working_experience`, `age_of_business`, `education`, `marital_status`, `no_of_dependants`, `public_figure`, `average_annual_income`, `refused_account_by_institute`, `high_value_item`, `soi`, `soi_attachment`, `address`, `city1`, `country1`, `zakat`, `zakat_options`, `zakat_certificate`, `pob_city_id`, `pob_country_id`, `city1_id`, `country1_id`, `marital_status_id`, `soi_id`, `occupation_id`, `average_annual_income_id`, `created_at`, `updated_at`) VALUES
(1, 'pk', 'abcabc', 'abcabc', 'abcabc', '1986-11-25', '47623-4877347-9', '120-SM544611.jpg', '2020-10-06', 'KARACHIsdabc', 'Pakistandfabc', 'FSDabcaaasaFLJK@GMAIL.COM', '031031031301301asa', 'Businesssasasabc', NULL, NULL, NULL, NULL, NULL, NULL, 'Undergraduateasasabc', 'Married', '509', 'no', '1-10mn', 'yes', 'yes', 'Investmentsqwqwqw', '220-SM637538.jpg', 'TTTTaddsdsdabc', 'KARACHIasasasabc', 'Pakistanasasabc', 'yes', NULL, 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '0140405E-779F-4090-9089-A6237B4ED75C', '00769A6D-1403-44D9-BE2D-C75A4FB6A177', '185AB59D-4173-4FD4-9886-96D461B89876', '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'pk', 'fine good', 'abc', 'sdsd', '1997-01-02', '12345-6543213-2', '113.jpg', '2019-05-02', 'Centerbury', 'United States of America', 'ABCDaD@GMAIL.COM', '03331232222', 'Retired', NULL, NULL, NULL, NULL, NULL, NULL, 'Undergraduate', 'Married', '42', 'no', '1mn-10mn', 'no2', 'no2', 'Salaried', 'Capture.PNG', 'KHI222', 'Vineland', 'United States of America', 'yes', 'file', '113.jpg', '224', '5', '372', '5', 'DD81959B-9930-48E4-BA55-50D8CC8E8F5A', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', 'DC73D20C-2D83-4EBC-AE38-A64FF93B056D', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2020-10-07 06:37:12', '2020-10-07 06:37:12'),
(3, 'pk', 'TEST', 'TEST', 'TEST', '1994-02-02', '5265234264546-5', 'members_hblasset_com.jpg', '2019-01-01', 'KARACHI', 'Pakistan', 'A@GMAIL.COM', '45624726354', 'Student', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Single', '7', 'yes', '10mn-100mn', 'no', 'no', 'Salaried', 'members_hblasset_com.jpg', 'KHI', 'KARACHI', 'Pakistan', 'no', 'file', 'members_hblasset_com.jpg', '1', '1', '1', '1', 'DD81959B-9930-48E4-BA55-50D8CC8E8F5A', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '18DCFD40-5063-45C9-9651-090B35161213', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2020-10-22 11:34:43', '2020-10-22 11:34:43'),
(4, 'o', 'ABC', 'ABC', 'ABC', '2001-01-02', '9898989898989-8', 'members_hblasset_com.jpg', '2020-10-01', 'Faiha', 'Kuwait', 'G@GMAIL.COM', '67676776767', 'Housewife', NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', 'Married', '4', 'yes', '1mn-10mn', 'no', 'no', 'Professional', 'members_hblasset_com.jpg', 'SH', 'Sharq', 'Kuwait', 'no', 'file', 'members_hblasset_com.jpg', '25', '3', '17', '3', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '4D7339C4-2BE1-4F2C-8BFC-5772D0A85B48', '285AD9B7-AC49-4989-ADB1-BB8766EFA92A', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2020-10-22 11:43:32', '2020-10-22 11:43:32'),
(5, 'pk', 'HELLO', 'HELLO', 'HELLO', '1995-08-16', '87378-4637856-3', 'members_hblasset_com.jpg', '2016-02-18', 'KARACHI', 'Pakistan', 'HELLO@GMAIL.COM', '03214545454', 'Agriculture', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '8', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'members_hblasset_com.jpg', 'KHI', 'KARACHI', 'Pakistan', 'no', 'file', 'members_hblasset_com.jpg', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '37a5a7b1-8b61-4e79-898c-6988f73f922a', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2020-10-22 11:54:28', '2020-10-22 11:54:28'),
(6, 'pk', 'ALI', 'HAIDER', 'HIRA', '1975-05-07', '42501-7777777-7', 'HBL AMC 2.jfif', '2020-05-05', 'Lahore', 'Pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '03232323233', 'Business', 'GENERAL TRADING', 'DIRECTOR', NULL, 'ABC PVT LTD', '25', '18', 'Graduate', 'Married', '5', 'no', '1mn-10mn', 'no', 'no', 'Business', 'HBL AMC 2.jfif', 'STREET 3', 'KARACHI', 'Pakistan', 'no', 'email', 'no_image.png', '15', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '6D87E17B-FC54-4487-9EC1-EA2264B7B969', '00769A6D-1403-44D9-BE2D-C75A4FB6A177', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2020-10-23 07:02:50', '2020-10-23 07:02:50'),
(7, 'pk', 'QAISER', 'HAMZA', 'HIRA', '1990-01-02', '42555-5555555-5', 'Pension Fund Post - Oct 18.jpg', '2020-02-05', 'Lahore', 'Pakistan', 'NIHAL.MUQRI@HBLASSET.COM', '032222222222', 'Business', 'GENERAL TRADING', 'DIRECTOR', NULL, '10', '25', '15', 'Professional', 'Married', '2', 'no', '10mn-100mn', 'no', 'no', 'Business', 'unnamed.jpg', 'STREET 3', 'KARACHI', 'Pakistan', 'no', 'email', 'no_image.png', '15', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '6D87E17B-FC54-4487-9EC1-EA2264B7B969', '00769A6D-1403-44D9-BE2D-C75A4FB6A177', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2020-10-29 05:55:43', '2020-10-29 05:55:43'),
(8, 'pk', 'SOHAIL', 'ALI', 'MUMTAZ', '1978-05-12', '87459-5663257-4', 'HBL AMC 2.jfif', '2020-08-12', 'KARACHI', 'Pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '03223333333', 'Business', 'GENERAL TRADING', 'DIRECTOR', NULL, 'ABC PVT LTD', '25', '15', 'Postgraduate', 'Married', '6', 'no', '10mn-100mn', 'no', 'no', 'Business', 'HBL AMC 2.jfif', 'STREET 3', 'KARACHI', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '6D87E17B-FC54-4487-9EC1-EA2264B7B969', '00769A6D-1403-44D9-BE2D-C75A4FB6A177', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2020-10-30 06:27:46', '2020-10-30 06:27:46'),
(9, 'pk', 'SOHAIL', 'RANA', 'JIL', '1981-02-04', '98745-6123654-7', '22899647.jpg', '2020-10-07', 'KARACHI', 'Pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '03223333333', 'Business', 'GENERAL TRADING', 'OWNER', NULL, 'ABC PVT LTD', '25', '15', 'Undergraduate', 'Married', '5', 'no', 'Above 100mn', 'no', 'no', 'Business', '22899647.jpg', 'STREET 3', 'KARACHI', 'Pakistan', 'no', 'email', 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '6D87E17B-FC54-4487-9EC1-EA2264B7B969', '00769A6D-1403-44D9-BE2D-C75A4FB6A177', '185AB59D-4173-4FD4-9886-96D461B89876', '2020-10-29 09:38:39', '2020-10-29 09:38:39'),
(10, 'pk', 'KASHIF', 'AHMED', 'SKFJASDKFJ', '1980-06-12', '77777-777777777', 'SalesApp_UAT.jpg', '2020-10-07', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03003214569', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '3', 'no', '1mn-10mn', 'no', 'no', 'Investments', 'SalesApp_UAT.jpg', 'FDFDFGDF', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '0140405E-779F-4090-9089-A6237B4ED75C', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2020-10-29 10:25:15', '2020-10-29 10:25:15'),
(11, 'pk', 'TEST NAME', 'TEST FATHER NAME', 'TEST MOTHER NAME', '1988-04-12', '11122-2333444-5', 'Error.jpg', '2020-10-20', 'Multan', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923211234567', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '6', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'Error.jpg', 'TEST ADDRESS', 'Multan', 'Pakistan', 'yes', NULL, 'no_image.png', '31', '1', '31', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2020-11-04 12:30:55', '2020-11-04 12:30:55'),
(12, 'pk', 'NOMAN', 'ALI', 'GUL', '1982-01-04', '87585-8963214-5', 'AMC-VPS-300x250b.jpg', '2020-05-05', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03223654987', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Postgraduate', 'Married', '2', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'AMC-VPS-300x250b.jpg', 'EMERALD TOWER', 'KARACHI', 'Pakistan', 'no', 'email', 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2020-11-05 04:33:33', '2020-11-05 04:33:33'),
(13, 'pk', 'EJAZ', 'AHMED', 'SDKFJSDFJ', '1987-08-20', '55555-5555555-5', 'Error.jpg', '2020-11-03', 'Rawalpindi', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03217777777', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', 'Upto 250k', 'no', 'no', 'Salaried', 'Error.jpg', 'AAAAAAAAAAA', 'Hyderabad', 'Pakistan', 'yes', NULL, 'no_image.png', '36', '1', '39', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '96B4692A-C774-435A-931F-FDE3E04BA0FE', '2020-11-10 05:18:32', '2020-11-10 05:18:32'),
(14, 'pk', 'SDFSDSDAF', 'RWER', 'CFDSF', '1983-01-06', '23423-4324324-4', 'Error_in_Email_Sending.jpg', '2020-11-05', 'Rawalpindi', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03215478965', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '3', 'no', 'Upto 250k', 'no', 'no', 'Salaried', 'Error.jpg', 'DSFFFDFS', 'Multan', 'Pakistan', 'yes', NULL, 'no_image.png', '36', '1', '31', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '96B4692A-C774-435A-931F-FDE3E04BA0FE', '2020-11-10 05:55:44', '2020-11-10 05:55:44'),
(15, 'pk', 'RTYTRYTR', 'FDGDFGFD', 'GHGFHGDFHF', '1984-02-03', '56897-2165412-3', 'Error.jpg', '2020-11-05', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03214589654', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'Error.jpg', 'HGFHGFHGDF', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2020-11-10 06:06:00', '2020-11-10 06:06:00'),
(16, 'pk', 'FASDFSDF', 'WERWRWE', 'FGDFGFDGD', '1998-01-08', '33332-3432434-3', 'Error.jpg', '2020-11-03', 'Islamabad', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03216547896', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'Error.jpg', 'GGDSFGFGSFD', 'Islamabad', 'Pakistan', 'yes', NULL, 'no_image.png', '24', '1', '24', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2020-11-10 11:06:36', '2020-11-10 11:06:36'),
(17, 'pk', 'AAAAA', 'BBBBBB', 'CCCCCC', '1981-04-07', '98765-4356789-7', 'Error.jpg', '2020-11-06', 'Hyderabad', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03216485967', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', 'Upto 250k', 'no', 'no', 'Salaried', 'Error.jpg', 'GGGGGGG', 'Rawalpindi', 'Pakistan', 'yes', NULL, 'no_image.png', '39', '1', '36', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '96B4692A-C774-435A-931F-FDE3E04BA0FE', '2020-11-10 14:27:56', '2020-11-10 14:27:56'),
(18, 'pk', 'ABC', 'XYZ', 'FFDFD', '1982-02-03', '21121-2121212-1', 'Image1.jpg', '2020-11-02', 'Multan', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03215478549', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Postgraduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'Image1.jpg', 'FHDJHDFHFD', 'Multan', 'Pakistan', 'no', 'file', 'Image1.jpg', '31', '1', '31', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2020-11-11 06:29:34', '2020-11-11 06:29:34'),
(19, 'pk', 'ALI', 'HAMZA', 'HIRA', '1993-05-05', '52456-5555986-8', 'Transaction_Log_Size_Huge.jpg', '2020-02-05', 'Lahore', 'Pakistan', 'OMAIR.FAROOQ@HBLASSET.COM', '03223656596', 'Business', 'GENERAL TRADING', 'PARTNER', NULL, 'ABC PVT LTD', '25', '20', 'Undergraduate', 'Married', '3', 'no', '1mn-10mn', 'no', 'no', 'Professional', 'IBFT_Txn.jpg', 'ABC STREET 3', 'Lahore', 'Pakistan', 'no', 'email', 'no_image.png', '15', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '4D7339C4-2BE1-4F2C-8BFC-5772D0A85B48', '00769A6D-1403-44D9-BE2D-C75A4FB6A177', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2020-11-11 07:08:50', '2020-11-11 07:08:50'),
(20, 'pk', 'NADIR', 'AHMED', 'NAFEES', '1982-08-09', '47854-1236985-4', 'Error.jpg', '2020-10-08', 'Multan', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03125478562', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'Error.jpg', 'GULBERG', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '31', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2020-11-12 10:39:43', '2020-11-12 10:39:43'),
(21, 'pk', 'NADEEM', 'YOUSUF', 'KULSOOM', '1984-05-09', '54796-3217822-6', 'Error.jpg', '2020-10-06', 'Lahore', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '03146547896', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'GULSHAN', 'Multan', 'Pakistan', 'yes', NULL, 'no_image.png', '15', '1', '31', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2020-11-13 12:15:21', '2020-11-13 12:15:21'),
(22, 'pk', 'NIHAL', 'JAWWAD', 'HAHAH', '2003-02-01', '42101-4210159-5', 'IMG-20201006-WA0003.jpg', '2020-07-07', 'KARACHI', 'Pakistan', 'NIHAL.MUQRI@HBLASSET.COM', '923452487417', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Undergraduate', 'Married', '2', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'IMG-20201006-WA0003 (1).jpg', 'CZCASSVGAGGASDBSD', 'KARACHI', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2020-11-16 12:07:27', '2020-11-16 12:07:27'),
(23, 'pk', 'NIHAL', 'JAWWAD', 'HAHAH', '2020-11-16', '42101-4210159-8', 'Investment Attachment 10282020 112706.jpg', '2020-11-16', 'KARACHI', 'Pakistan', 'NIHAL.MUQRI@HBLASSET.COM', '952331231413', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', 'Married', '6', 'no', 'Above 100mn', 'no', 'no', 'Investments', 'Investment Attachment 10282020 112706.jpg', 'NAKSABADADAD', 'KARACHI', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '0140405E-779F-4090-9089-A6237B4ED75C', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '185AB59D-4173-4FD4-9886-96D461B89876', '2020-11-16 12:09:54', '2020-11-16 12:09:54'),
(24, 'pk', 'ALI', 'ALI', 'ALI', '2000-01-04', '45102-3546736-2', 'Test.jpg', '2020-01-01', 'KARACHI', 'Pakistan', 'ALI@GMAIL.COM', '03448565847', 'Student', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Single', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Test.jpg', 'KHI', 'KARACHI', 'Pakistan', 'no', 'file', 'Test.jpg', '1', '1', '1', '1', 'DD81959B-9930-48E4-BA55-50D8CC8E8F5A', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '18DCFD40-5063-45C9-9651-090B35161213', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-01-07 10:55:54', '2021-01-07 10:55:54'),
(25, 'pk', 'BILAL', 'AKBER', 'SUMBUL', '1988-05-26', '25436-5458545-6', 'Error.jpg', '2020-12-16', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923001234567', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'DASTAGIR', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-01-07 11:13:37', '2021-01-07 11:13:37'),
(26, 'pk', 'WAQAS', 'ASHER', 'AMNA', '1975-05-15', '44889-9633245-8', 'Error.jpg', '2021-01-01', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923216589658', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Postgraduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'DSFDS', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-01-12 05:34:15', '2021-01-12 05:34:15'),
(27, 'pk', 'SAFDAR', 'KHAN', 'MUMTAZ', '1979-04-20', '44444-5555555-7', 'Error.jpg', '2020-12-17', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923002589632', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '3', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'AAAAAAA', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-01-13 06:48:33', '2021-01-13 06:48:33'),
(28, 'pk', 'RIWAN', 'SIDDIQUI', 'SAMINA', '1980-08-19', '77777-8888888-2', 'Error.jpg', '2020-12-24', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923002541258', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '3', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'QQQQQQQ', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-01-13 09:37:39', '2021-01-13 09:37:39'),
(29, 'pk', 'RASHID', 'AHMED', 'SANA', '1982-09-15', '87878-6565656-2', 'Error.jpg', '2020-12-22', 'Peshawar', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923002677855', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'CLIFTON', 'Multan', 'Pakistan', 'yes', NULL, 'no_image.png', '43', '1', '31', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-01-19 09:22:05', '2021-01-19 09:22:05'),
(30, 'pk', 'FDSFSF', 'SFSDFF', 'FSFDFS', '1986-08-13', '23423-4424423-4', 'img.jpg', '2021-01-11', 'Multan', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923001234567', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Single', '3', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'HUYUII', 'Rawalpindi', 'Pakistan', 'yes', NULL, 'no_image.png', '31', '1', '36', '1', 'DD81959B-9930-48E4-BA55-50D8CC8E8F5A', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-01-19 10:21:18', '2021-01-19 10:21:18'),
(31, 'pk', 'REWRW', 'YURTYTR', 'UYYT', '1986-11-19', '13212-3123123-1', 'Error.jpg', '2021-01-05', 'Islamabad', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923215487878', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'GFDFDS', 'Multan', 'Pakistan', 'yes', NULL, 'no_image.png', '24', '1', '31', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-01-19 11:26:04', '2021-01-19 11:26:04'),
(32, 'pk', 'GGFDG', 'ZXCXZCXZC', 'WEQE', '1982-12-22', '23232-3232232-2', 'Error.jpg', '2021-01-07', 'Hyderabad', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923215454545', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Single', '2', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'img.jpg', 'FDFDFGDGDG', 'Multan', 'Pakistan', 'yes', NULL, 'no_image.png', '39', '1', '31', '1', 'DD81959B-9930-48E4-BA55-50D8CC8E8F5A', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2021-01-19 11:33:54', '2021-01-19 11:33:54'),
(33, 'pk', 'ALI', 'HAMZA', 'HIRA', '1995-02-08', '42511-1111111-1', 'QR Code.PNG', '2020-01-06', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923223999999', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Postgraduate', 'Married', '5', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'QR Code.PNG', 'HBL AMC', 'KARACHI', 'Pakistan', 'no', 'email', 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2021-01-21 06:27:49', '2021-01-21 06:27:49'),
(34, 'pk', 'FAISAL', 'AZAM', 'AZRA', '1985-08-22', '22222-2555555-6', 'Error.jpg', '2021-01-07', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923214444444', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'NAZIMABAD', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-01-27 08:11:22', '2021-01-27 08:11:22'),
(35, 'pk', 'AQEEL', 'AHMED', 'SANA', '1971-02-10', '88888-8888888-8', 'Error.jpg', '2021-02-02', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923216666666', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'SDFSDFDSFA', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-04 08:36:38', '2021-02-04 08:36:38'),
(36, 'pk', 'HHH', 'IIII', 'JJJ', '1982-08-11', '77777-7777777-7', 'Screenshot_2021-02-04-18-25-24.png', '2021-02-02', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923026666666', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Screenshot_2021-02-04-18-25-24.png', 'HHHH', 'KARACHI', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-04 13:44:07', '2021-02-04 13:44:07'),
(37, 'pk', 'IMAM', 'HGHG', 'HHGTH', '1980-08-14', '22222--333333-3', 'Screenshot_2021-02-08-11-59-24.png', '2021-02-03', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS @HBLASSET. COM', '923214444555', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'LANDLORD', 'Screenshot_2021-02-08-11-59-24.png', 'KKKK', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '3e93fbeb-a71c-43c6-adde-90963b27f5c1', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-02-09 09:43:07', '2021-02-09 09:43:07'),
(38, 'pk', 'ASID', 'DSFDFASF', 'HGFFDGFDG', '1995-05-09', '22222-2233333-3', 'Error.jpg', '2021-02-02', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923215558888', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'GFDGFDGFDSGFDG', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-10 07:50:15', '2021-02-10 07:50:15'),
(39, 'pk', 'qqqqqq', 'TRYTR', 'FDGFG', '1981-04-07', '44444-2222222-2', 'Error.jpg', '2021-02-03', 'KARACHI', 'Pakistan', 'MUHAMMAD.YOUNUS@HBLASSET.COM', '923215555888', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'YUIGYUGUGYU', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-10 09:50:00', '2021-02-10 09:50:00'),
(40, 'pk', 'Wasiq', 'HGFGHFFGH', 'IOUIOUOIPUPO', '1978-08-15', '33333-6666666-9', 'Error.jpg', '2021-02-03', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923335555666', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'FGHFGFTFFUYI', 'KARACHI', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-16 10:37:06', '2021-02-16 10:37:06'),
(41, 'pk', 'Saqib', 'WEFDDSEFE', 'HGJYTUYJHHJ', '1989-04-13', '66666-5555544-3', 'Error.jpg', '2021-02-11', 'KARACHI', 'Pakistan', 'saqib123@hblasset.com', '923127777888', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'IOUIUIOJKKLK', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-02-16 14:03:29', '2021-02-16 14:03:29'),
(42, 'pk', 'Muzammil', 'SDFDS', 'TYERRTER', '1990-06-12', '11111-9999999-8', 'Error.jpg', '2021-02-09', 'Lahore', 'Pakistan', 'muhammad.younus@hblasset.com', '923345588996', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Postgraduate', 'Single', '5', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'img.jpg', 'EWRWEREWREW', 'Multan', 'Pakistan', 'yes', NULL, 'no_image.png', '15', '1', '31', '1', 'DD81959B-9930-48E4-BA55-50D8CC8E8F5A', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2021-02-16 15:01:37', '2021-02-16 15:01:37'),
(43, 'pk', 'Nadir', 'SDFF', 'GFDSGDGFD', '1980-06-14', '44444-8888888-9', 'Error.jpg', '2021-02-03', 'Islamabad', 'Pakistan', 'muhammad.younus@hblasset.com', '923456666555', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Undergraduate', 'Single', '3', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'img.jpg', 'SDFFDSDSF', 'Lahore', 'Pakistan', 'no', 'file', 'no_image.png', '24', '1', '15', '1', 'DD81959B-9930-48E4-BA55-50D8CC8E8F5A', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2021-02-17 05:46:07', '2021-02-17 05:46:07'),
(44, 'pk', 'Zuhaib', 'SDFSDF', 'RTRYTRY', '1989-07-28', '11111-5555555-8', 'Error.jpg', '2021-02-05', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923026666544', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'Error.jpg', 'FGFDSFDS', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2021-02-17 06:05:30', '2021-02-17 06:05:30'),
(45, 'pk', 'Majid', 'DASFSD', 'FDSSA', '1987-08-21', '44554-9999999-9', 'Error.jpg', '2021-02-04', 'KARACHI', 'Pakistan', 'majid@hblasset.com', '923015555625', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'Error.jpg', 'FGFDFGFD', 'KARACHI', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-02-18 09:50:38', '2021-02-18 09:50:38'),
(46, 'us', 'Adeel', 'TREWRE', 'VCXZV', '1985-07-12', '66556-9999888-7', 'Error.jpg', '2021-02-10', 'Lahore', 'Pakistan', 'muhammad.younus@hblasset.com', '923145566556', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'HGJHNHN', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '15', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-19 05:17:45', '2021-02-19 05:17:45'),
(47, 'pk', 'Nabeel', 'DFDGR', 'EWRWEQRWE', '1976-10-07', '66556-7778844-8', 'Error.jpg', '2021-02-11', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923102255669', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'DFHGFTRE', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-02-19 08:43:55', '2021-02-19 08:43:55'),
(48, 'pk', 'Umair', 'HTRFFDDRTERTD', 'GHFRTFGHFHFHG', '1999-02-11', '66665-6666666-3', 'Error.jpg', '2021-02-04', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923215458548', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'HYYY', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-19 10:18:44', '2021-02-19 10:18:44'),
(49, 'us', 'Moiz Abdul Majeed', 'ABDUL MAJEED', 'JAMILA', '1990-07-15', '4200048851609', '\'UNDER taking new.jpg', '2020-11-05', 'KARACHI', 'Pakistan', 'moiz.majeed@hblasset.com', '03333630010', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Professional', 'Married', '1', 'no', 'Above 100mn', 'no', 'no', 'Salaried', '\'UNDER taking new.jpg', 'JFYTDGHIHU', 'KARACHI', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '185AB59D-4173-4FD4-9886-96D461B89876', '2021-02-19 11:38:08', '2021-02-19 11:38:08'),
(50, 'pk', 'Hanif', 'REWEQWRQEW', 'TRGFDH', '1984-07-12', '55665-7777888-9', 'Error.jpg', '2021-02-10', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923456655556', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'LOIHJJHHKJ', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-22 07:39:16', '2021-02-22 07:39:16'),
(51, 'pk', 'Shakeel', 'FDGFDSF', 'HGJGJHGJGJG', '1984-05-15', '55445-9999888-7', 'Error.jpg', '2021-02-10', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923452255663', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'GHERG', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-23 07:58:28', '2021-02-23 07:58:28'),
(52, 'pk', 'Abid', 'DSFSDFEREW', 'REWREWWERQW', '1987-05-08', '66666-7777888-9', 'Error.jpg', '2021-02-10', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923109966669', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', 'Above 100mn', 'no', 'no', 'Salaried', 'img.jpg', 'GDFGDFSASDFDS', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '185AB59D-4173-4FD4-9886-96D461B89876', '2021-02-23 09:58:01', '2021-02-23 09:58:01'),
(53, 'us', 'Jibran', 'XDSSA', 'VBNBBVN', '1990-09-21', '44558-9996666-8', 'Error.jpg', '2021-02-09', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923015555441', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'FFRF', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-23 11:22:20', '2021-02-23 11:22:20'),
(54, 'pk', 'Sohail', 'BNGGFV', 'CSDDFASASZ', '1985-02-27', '66553-9998888-7', 'img.jpg', '2021-02-04', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923016699885', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'Error.jpg', 'ERFGBGT', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-02-23 11:49:02', '2021-02-23 11:49:02'),
(55, 'pk', 'Saeed', 'KHALIL AHMED', 'JAMEELA', '1986-02-11', '66332-4477889-3', 'img.jpg', '2021-02-05', 'Lahore', 'Pakistan', 'muhammad.younus@hblasset.com', '923005544554', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'GULSHAN', 'KARACHI', 'Pakistan', 'yes', NULL, 'no_image.png', '15', '1', '1', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-02-24 07:27:36', '2021-02-24 07:27:36'),
(56, 'pk', 'Taufeeq', 'ERTHTRH', 'KUYKUYYU', '1981-08-06', '22253-6666555-9', 'img.jpg', '2021-02-11', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923215544778', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'Error.jpg', 'FDGFDFDS', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2021-02-25 06:00:27', '2021-02-25 06:00:27'),
(57, 'us', 'Khalid', 'WSXDDS', 'QASEDED', '1988-04-21', '56465-4646556-4', 'img.jpg', '2021-02-08', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923214455667', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'yes', '10mn-100mn', 'TRETRETRET', 'UTYUTYUTY', 'Salaried', 'img.jpg', 'GHFDGDFGDF', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-02-25 08:37:08', '2021-02-25 08:37:08'),
(58, 'pk', 'Waheed', 'FGFRERETR', 'GGFDHTRWERTT', '2021-02-05', '54879-8653221-2', 'Error.jpg', '2021-02-03', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923452222336', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'GFSDSDFDSF', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-25 09:55:53', '2021-02-25 09:55:53'),
(59, 'pk', 'test-1', 'GHF', 'UYUI', '1989-07-06', '21254-5455455-4', 'img.jpg', '2021-02-10', 'KARACHI', 'Pakistan', 'test@gmail.com', '923215454545', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'HJGFFGHF', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-02-25 11:27:38', '2021-02-25 11:27:38'),
(60, 'pk', 'Moin', 'HHHJY', 'FGDSDF', '1987-06-17', '21215-4548787-8', 'Error.jpg', '2021-02-02', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923142233665', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'DFRDSFDFS', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-25 11:50:08', '2021-02-25 11:50:08'),
(61, 'pk', 'Akram', 'FSEDFSSD', 'DFVXVCXC', '1988-08-03', '54562-3135878-9', 'Error.jpg', '2021-02-03', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923145566998', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'FDGFFFDS', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-02-26 07:37:42', '2021-02-26 07:37:42'),
(62, 'us', 'Farrukh', 'TYRTYTY', 'GHGHGFHFG', '1988-05-16', '71398-5245657-8', 'img.jpg', '2021-02-10', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923015454889', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'img.jpg', 'FGFFSDF', 'Lahore', 'Pakistan', 'no', 'file', 'img.jpg', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2021-02-26 15:03:09', '2021-02-26 15:03:09'),
(63, 'pk', 'Shahrukh', 'RTNBVB', 'UYXZCC', '1981-05-14', '54542-1236987-1', 'Error.jpg', '2021-02-11', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923015469875', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'CDSFWQEW', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-03-01 05:51:47', '2021-03-01 05:51:47'),
(64, 'us', 'Hashim', 'FVWEREW', 'SDFASS', '1983-04-16', '54545-8789896-5', 'img.jpg', '2021-02-12', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923046655998', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'YUYTRYRT', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-03-01 06:08:42', '2021-03-01 06:08:42'),
(65, 'us', 'Sarfaraz', 'CDCC', 'FGBGBGF', '1984-07-26', '88996-6332211-4', 'img.jpg', '2021-02-16', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923125566998', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'Error.jpg', 'TYTREE', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-03-01 12:18:24', '2021-03-01 12:18:24'),
(66, 'pk', 'Akhter', 'UIOI', 'JLKKJH', '1983-07-08', '58745-8965455-6', 'img.jpg', '2021-03-01', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923235462102', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'HJUYTYT', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-03-02 06:32:02', '2021-03-02 06:32:02'),
(67, 'us', 'Danish', 'JRTDFGFD', 'XCVCVBC', '1983-09-22', '58236-9741258-9', 'Error.jpg', '2021-03-01', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923215487963', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'SFDSSSSDF', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-03-02 11:06:05', '2021-03-02 11:06:05'),
(68, 'pk', 'Uzair', 'IULIIK', 'JMJMMJJH', '1973-05-07', '34896-2541258-9', 'img.jpg', '2021-03-01', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923420158963', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'GHNYHG', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-03-02 12:30:33', '2021-03-02 12:30:33'),
(69, 'us', 'Azeem', 'JYT', 'NGNJHGHGN', '1994-08-16', '55552-6666665-8', 'Error.jpg', '2021-03-01', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923032255661', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '1mn-10mn', 'no', 'no', 'Salaried', 'Error.jpg', 'JYJYH', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '6527E5BC-AACC-4DE3-9D0D-9D8C1ADF4F45', '2021-03-03 10:01:58', '2021-03-03 10:01:58'),
(70, 'pk', 'Wahid', 'RTWRET', 'DHBDFGFSDGGFD', '1986-06-18', '54846-2123133-6', 'Error.jpg', '2021-03-01', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923025544889', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'GGSFDSDFFAS', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-03-04 06:11:02', '2021-03-04 06:11:02'),
(71, 'pk', 'Hasnain', 'TYUTYJH', 'JHGDFGFDF', '1978-05-10', '87654-2131564-6', 'img.jpg', '2021-03-02', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923032125487', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'GFDGSFDFGD', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-03-04 06:43:16', '2021-03-04 06:43:16'),
(72, 'pk', 'Hanif', 'REHTYYFGB', 'MNJHGJN', '1985-02-13', '36528-7458965-2', 'Error.jpg', '2021-03-02', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923226548965', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'FGDF', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-03-08 05:50:19', '2021-03-08 05:50:19'),
(73, 'pk', 'Mohsin', 'YIUIUIUY', 'JHGGJHGG', '1983-07-13', '55885-2211447-7', 'Error.jpg', '2021-03-02', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923456858954', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'img.jpg', 'GHGDFBRTS', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-03-10 11:14:52', '2021-03-10 11:14:52'),
(74, 'pk', 'Jamal', 'YJUYJUJ', 'BFBFGBGBFD', '1990-08-18', '55874-1258963-5', 'img.jpg', '2021-03-03', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923225544778', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'Error.jpg', 'GFDGSGFDSG', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-03-11 09:32:04', '2021-03-11 09:32:04'),
(75, 'pk', 'Jibran', 'HASHIMAT', 'ASMAN', '1989-09-22', '65656-5656569-9', 'Error.jpg', '2021-03-03', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923010776666', 'Rental Income', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'GULSHAN', 'Lahore', 'Pakistan', 'no', 'email', 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', 'fefeef8e-b99b-455c-bca9-5c117784bf9f', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-03-11 11:48:48', '2021-03-11 11:48:48'),
(76, 'pk', 'Zohaib', 'dddddddd', 'HGJKKJGH', '1988-08-05', '21545-5555556-8', 'Error.jpg', '2021-03-04', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923405566589', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'Data changed', 'Lahore', 'Pakistan', 'no', 'file', 'Error.jpg', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-03-15 05:38:28', '2021-03-15 06:06:49'),
(77, 'pk', 'Azeem', 'FNFNFNFNFN', 'MNMNMNMN', '1979-03-09', '66969-9897654-5', 'img.jpg', '2021-03-05', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923124447777', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'Error.jpg', 'DFGFGDDSF', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-03-15 06:35:33', '2021-03-15 06:35:33'),
(78, 'pk', 'Mansoor', 'URYUYTJ', 'HJYTUYUEYRT', '1980-08-11', '55448-8996212-3', 'img.jpg', '2021-03-01', 'Lahore', 'Pakistan', 'muhammad.younus@hblasset.com', '923034477885', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '10mn-100mn', 'no', 'no', 'Salaried', 'Error.jpg', 'GGFSFDGGD', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '15', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '3E35D03A-FEDC-4341-A65F-27E4E7C8DE47', '2021-03-15 07:42:45', '2021-03-15 07:42:45'),
(79, 'pk', 'Akber', 'NADEEM', 'AMNA', '1984-08-10', '21546-4564654-5', 'Error.jpg', '2021-03-04', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923012255889', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '4', 'no', '250k-500k', 'no', 'no', 'Salaried', 'img.jpg', 'GULSHAN', 'Lahore', 'Pakistan', 'yes', NULL, NULL, '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-03-17 08:05:08', '2021-03-17 12:21:16'),
(80, 'pk', 'Shafiq', 'DFGDF', 'RTRE', '1985-08-07', '54112-2213213-1', 'img.jpg', '2021-03-10', 'KARACHI', 'Pakistan', 'muhammad.younus@hblasset.com', '923215478784', 'Service', NULL, NULL, NULL, NULL, NULL, NULL, 'Graduate', 'Married', '5', 'no', '250k-500k', 'no', 'no', 'Salaried', 'Error.jpg', 'HGFGHDFGFG', 'Lahore', 'Pakistan', 'yes', NULL, 'no_image.png', '1', '1', '15', '1', 'DAD124CE-67D8-4EBD-A71E-A30CC2AB21BE', '2A38CAF9-9FB7-4FD5-8DDD-03979085F835', '5FD0305E-727C-4D4F-BA44-FDBC62F0FD53', '2945EC3C-52F1-4E77-8D9F-0CB7B1C0EC92', '2021-03-31 14:09:19', '2021-03-31 14:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

DROP TABLE IF EXISTS `discussions`;
CREATE TABLE IF NOT EXISTS `discussions` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receiver_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `form_id`, `msg`, `receiver_id`, `sender_id`, `created_at`, `updated_at`) VALUES
(1, 'SA1893', 'ok', '78', '79', '2020-10-06 13:46:37', '2020-10-06 13:46:37'),
(2, 'SA1893', 'teseting', '78', '79', '2020-10-06 14:16:11', '2020-10-06 14:16:11'),
(3, 'SA1893', 'teseting', '78', '79', '2020-10-06 14:20:05', '2020-10-06 14:20:05'),
(4, 'SA1893', 'teseting', '78', '79', '2020-10-06 14:20:34', '2020-10-06 14:20:34'),
(5, 'SA1893', 'iik', '78', '79', '2020-10-06 14:27:46', '2020-10-06 14:27:46'),
(6, 'SA1893', 'sdlfkjslfkjsdlfk', '79', '78', '2020-10-06 14:36:29', '2020-10-06 14:36:29'),
(7, 'SA1893', 'sdlfkjslfkjsdlfk', '79', '78', '2020-10-06 14:40:45', '2020-10-06 14:40:45'),
(8, 'SA1893', 'acbb', '79', '78', '2020-10-06 14:42:22', '2020-10-06 14:42:22'),
(9, 'SA1893', 'abc', '79', '78', '2020-10-06 14:42:46', '2020-10-06 14:42:46'),
(10, 'SA1893', 'f', '79', '78', '2020-10-06 14:43:34', '2020-10-06 14:43:34'),
(11, 'SA1893', 'bahi msla solve hogya', '79', '78', '2020-10-06 14:44:07', '2020-10-06 14:44:07'),
(12, 'SA1893', 'chl beta', '79', '78', '2020-10-06 14:46:00', '2020-10-06 14:46:00'),
(13, 'SA1893', 'ddd', '79', '78', '2020-10-06 14:51:18', '2020-10-06 14:51:18'),
(14, 'SA1893', 'hdhdhd', '79', '78', '2020-10-06 14:57:07', '2020-10-06 14:57:07'),
(15, 'SA1893', 'ddd', '79', '78', '2020-10-06 14:57:51', '2020-10-06 14:57:51'),
(16, 'SA1893', 'done', '79', '78', '2020-10-06 15:09:26', '2020-10-06 15:09:26'),
(17, 'Web2633', 'Filled', '78', '79', '2020-10-07 06:44:30', '2020-10-07 06:44:30'),
(18, 'Web2633', 'ok', '79', '78', '2020-10-07 06:48:30', '2020-10-07 06:48:30'),
(19, 'Web2633', 'All fields changed', '79', '78', '2020-10-07 07:19:05', '2020-10-07 07:19:05'),
(20, 'Web2633', 'ok', '79', '78', '2020-10-07 07:22:34', '2020-10-07 07:22:34'),
(21, 'Web2633', 'business', '79', '78', '2020-10-08 06:47:52', '2020-10-08 06:47:52'),
(22, 'Web2633', 'Private Service', '79', '78', '2020-10-08 06:54:13', '2020-10-08 06:54:13'),
(23, 'Web2633', 'std', '79', '78', '2020-10-08 07:22:58', '2020-10-08 07:22:58'),
(24, 'Web2633', 'others', '79', '78', '2020-10-08 07:23:27', '2020-10-08 07:23:27'),
(25, 'Web2633', 'ret', '79', '78', '2020-10-08 07:43:05', '2020-10-08 07:43:05'),
(26, 'Web2633', 'ok', '79', '78', '2020-10-08 08:37:44', '2020-10-08 08:37:44'),
(27, 'Web2633', 'jkhkj', '79', '78', '2020-10-08 08:39:42', '2020-10-08 08:39:42'),
(28, 'Web2633', 'dsadsdad', '79', '78', '2020-10-08 08:40:55', '2020-10-08 08:40:55'),
(29, 'Web2633', 'Undergraduade', '79', '78', '2020-10-08 08:54:06', '2020-10-08 08:54:06'),
(30, 'Web2633', 'ds', '79', '78', '2020-10-08 08:58:27', '2020-10-08 08:58:27'),
(31, 'Web2633', 'pg', '79', '78', '2020-10-08 09:40:09', '2020-10-08 09:40:09'),
(32, 'Web2633', 'c', '79', '78', '2020-10-08 10:44:24', '2020-10-08 10:44:24'),
(33, 'Web2633', 'soi', '79', '78', '2020-10-08 11:04:04', '2020-10-08 11:04:04'),
(34, 'Web2633', 'sbp', '79', '78', '2020-10-08 11:30:04', '2020-10-08 11:30:04'),
(35, 'Web2633', 'jhgj', '79', '78', '2020-10-08 11:40:09', '2020-10-08 11:40:09'),
(36, 'Web2633', 'ok', '79', '78', '2020-10-08 11:40:32', '2020-10-08 11:40:32'),
(37, 'Web2633', 'odood', '79', '78', '2020-10-08 11:53:52', '2020-10-08 11:53:52'),
(38, 'Web2633', 'fund', '79', '78', '2020-10-08 12:43:16', '2020-10-08 12:43:16'),
(39, 'Web2633', 'fund', '79', '78', '2020-10-08 12:44:54', '2020-10-08 12:44:54'),
(40, 'Web2633', 'aAaaa', '79', '78', '2020-10-08 12:48:20', '2020-10-08 12:48:20'),
(41, 'Web2633', 'dd', '79', '78', '2020-10-08 12:48:42', '2020-10-08 12:48:42'),
(42, 'Web2633', 'h', '79', '78', '2020-10-08 12:50:08', '2020-10-08 12:50:08'),
(43, 'Web2633', 'a', '79', '78', '2020-10-08 12:52:02', '2020-10-08 12:52:02'),
(44, 'Web2633', 'q', '79', '78', '2020-10-08 13:07:07', '2020-10-08 13:07:07'),
(45, 'Web2633', 'pk', '79', '78', '2020-10-08 13:18:43', '2020-10-08 13:18:43'),
(46, 'Web2633', 'oq', '79', '78', '2020-10-08 13:24:58', '2020-10-08 13:24:58'),
(47, 'Web2633', 'changes dropdown', '79', '78', '2020-10-13 12:43:59', '2020-10-13 12:43:59'),
(48, 'Web2633', 'okkk', '79', '78', '2020-10-13 12:49:06', '2020-10-13 12:49:06'),
(49, 'Web2633', 'ddd', '79', '78', '2020-10-13 12:54:48', '2020-10-13 12:54:48'),
(50, 'Web2633', 'jksdf', '79', '78', '2020-10-13 13:45:11', '2020-10-13 13:45:11'),
(51, 'SA0601', 'knn,', '84', '79', '2021-02-16 09:28:41', '2021-02-16 09:28:41'),
(52, 'SA6709', 'aaaaaaa', '76', '79', '2021-03-15 05:59:57', '2021-03-15 05:59:57'),
(53, 'SA6709', 'snsnsnsnsnsn', '0', '77', '2021-03-15 06:06:49', '2021-03-15 06:06:49'),
(54, 'SA6709', 'sfdsafdsa', '84', '79', '2021-03-15 06:10:32', '2021-03-15 06:10:32'),
(55, 'SA6709', 'jjjjjjj', '84', '79', '2021-03-15 06:13:18', '2021-03-15 06:13:18'),
(56, 'SA0134', 'iiiiiii', '84', '79', '2021-03-15 06:43:42', '2021-03-15 06:43:42'),
(57, 'SA0134', 'rrrrrrr', '84', '79', '2021-03-15 06:44:25', '2021-03-15 06:44:25'),
(58, 'SA0134', 'jkhjkhjkh', '84', '79', '2021-03-15 07:18:32', '2021-03-15 07:18:32'),
(59, 'SA0134', 'jkhjkhjkh', '84', '79', '2021-03-15 07:18:42', '2021-03-15 07:18:42'),
(60, 'SA4166', 'Country, City and Email changes.', '84', '79', '2021-03-15 07:45:44', '2021-03-15 07:45:44'),
(61, 'SA4166', 'City changed.', '79', '84', '2021-03-15 07:47:51', '2021-03-15 07:47:51'),
(62, 'SA0601', 'checked...', '79', '84', '2021-03-15 07:48:39', '2021-03-15 07:48:39'),
(63, 'SA0134', 'Father Name changed.', '79', '84', '2021-03-15 07:49:32', '2021-03-15 07:49:32'),
(64, 'SA0134', 'Mother Name changed.', '79', '84', '2021-03-15 07:50:22', '2021-03-15 07:50:22'),
(65, 'SA8309', 'name change', '84', '79', '2021-03-17 08:38:34', '2021-03-17 08:38:34'),
(66, 'SA8309', 'Name changed', '79', '84', '2021-03-17 08:41:34', '2021-03-17 08:41:34'),
(67, 'SA6709', 'changed', '79', '84', '2021-03-17 11:30:45', '2021-03-17 11:30:45'),
(68, 'SA8309', 'khvgh', '0', '87', '2021-03-17 12:21:14', '2021-03-17 12:21:14'),
(69, 'SA8309', 'khvgh', '0', '87', '2021-03-17 12:21:16', '2021-03-17 12:21:16'),
(70, 'SA3329', 'pl.change', '84', '79', '2021-03-17 12:40:54', '2021-03-17 12:40:54'),
(71, 'SA3329', 'Changes Done', '79', '84', '2021-03-17 12:43:54', '2021-03-17 12:43:54');

-- --------------------------------------------------------

--
-- Table structure for table `email_activities`
--

DROP TABLE IF EXISTS `email_activities`;
CREATE TABLE IF NOT EXISTS `email_activities` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_activities`
--

INSERT INTO `email_activities` (`id`, `status`, `msg`, `action`, `created_at`, `updated_at`) VALUES
(1, 'success', 'mail has been sent successfully', 'cbc done', '2020-08-20 20:22:33', NULL),
(2, 'success', 'mail has been sent successfully', 'cbc done', '2020-08-20 20:22:34', NULL),
(3, 'success', 'mail has been sent successfully', 'cbc done', '2020-08-20 20:22:34', NULL),
(4, 'success', 'mail has been sent successfully', 'send to cbc', '2020-08-20 20:25:27', NULL),
(5, 'success', 'mail has been sent successfully', 'send to cbc', '2020-08-20 20:25:28', NULL),
(6, 'success', 'mail has been sent successfully', 'send to cbc', '2020-08-20 20:25:29', NULL),
(7, 'success', 'mail has been sent successfully', 'send back to changes', '2020-08-20 20:40:17', NULL),
(8, 'success', 'mail has been sent successfully', 'send back to changes', '2020-08-20 20:40:18', NULL),
(9, 'success', 'mail has been sent successfully', 'form creation', '2020-10-01 23:15:37', NULL),
(10, 'success', 'mail has been sent successfully', 'form creation', '2020-10-01 23:15:38', NULL),
(11, 'success', 'mail has been sent successfully', 'form creation', '2020-10-01 23:15:40', NULL),
(12, 'success', 'mail has been sent successfully', 'form creation', '2020-10-22 11:34:55', NULL),
(13, 'success', 'mail has been sent successfully', 'form creation', '2020-10-22 11:34:57', NULL),
(14, 'success', 'mail has been sent successfully', 'form creation', '2020-10-22 11:35:00', NULL),
(15, 'success', 'mail has been sent successfully', 'form creation', '2020-10-22 11:54:34', NULL),
(16, 'success', 'mail has been sent successfully', 'form creation', '2020-10-22 11:54:37', NULL),
(17, 'success', 'mail has been sent successfully', 'form creation', '2020-10-22 11:54:39', NULL),
(18, 'success', 'mail has been sent successfully', 'form creation', '2020-10-23 07:02:56', NULL),
(19, 'success', 'mail has been sent successfully', 'form creation', '2020-10-23 07:02:59', NULL),
(20, 'success', 'mail has been sent successfully', 'form creation', '2020-10-23 07:03:01', NULL),
(21, 'success', 'mail has been sent successfully', 'form creation', '2020-10-29 05:55:54', NULL),
(22, 'success', 'mail has been sent successfully', 'form creation', '2020-10-29 05:55:57', NULL),
(23, 'success', 'mail has been sent successfully', 'form creation', '2020-10-29 05:55:59', NULL),
(24, 'success', 'mail has been sent successfully', 'form creation', '2020-10-30 06:27:51', NULL),
(25, 'success', 'mail has been sent successfully', 'form creation', '2020-10-30 06:27:53', NULL),
(26, 'success', 'mail has been sent successfully', 'form creation', '2020-10-30 06:27:56', NULL),
(27, 'success', 'mail has been sent successfully', 'form creation', '2020-10-29 09:38:46', NULL),
(28, 'success', 'mail has been sent successfully', 'form creation', '2020-10-29 09:38:49', NULL),
(29, 'success', 'mail has been sent successfully', 'form creation', '2020-10-29 09:38:51', NULL),
(30, 'success', 'mail has been sent successfully', 'form creation', '2020-10-29 10:25:19', NULL),
(31, 'success', 'mail has been sent successfully', 'form creation', '2020-10-29 10:25:22', NULL),
(32, 'success', 'mail has been sent successfully', 'form creation', '2020-10-29 10:25:25', NULL),
(33, 'success', 'mail has been sent successfully', 'form creation', '2020-11-04 12:31:01', NULL),
(34, 'success', 'mail has been sent successfully', 'form creation', '2020-11-04 12:31:04', NULL),
(35, 'success', 'mail has been sent successfully', 'form creation', '2020-11-04 12:31:06', NULL),
(36, 'success', 'mail has been sent successfully', 'form creation', '2020-11-05 04:33:39', NULL),
(37, 'success', 'mail has been sent successfully', 'form creation', '2020-11-05 04:33:41', NULL),
(38, 'success', 'mail has been sent successfully', 'form creation', '2020-11-05 04:33:44', NULL),
(39, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 05:18:39', NULL),
(40, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 05:18:41', NULL),
(41, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 05:18:44', NULL),
(42, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 05:55:48', NULL),
(43, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 05:55:51', NULL),
(44, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 05:55:53', NULL),
(45, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 06:06:04', NULL),
(46, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 06:06:07', NULL),
(47, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 06:06:10', NULL),
(48, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 11:06:42', NULL),
(49, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 11:06:44', NULL),
(50, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 11:06:47', NULL),
(51, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 14:28:01', NULL),
(52, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 14:28:04', NULL),
(53, 'success', 'mail has been sent successfully', 'form creation', '2020-11-10 14:28:06', NULL),
(54, 'success', 'mail has been sent successfully', 'form creation', '2020-11-11 06:29:38', NULL),
(55, 'success', 'mail has been sent successfully', 'form creation', '2020-11-11 06:29:41', NULL),
(56, 'success', 'mail has been sent successfully', 'form creation', '2020-11-11 06:29:43', NULL),
(57, 'success', 'mail has been sent successfully', 'form creation', '2020-11-11 07:08:57', NULL),
(58, 'success', 'mail has been sent successfully', 'form creation', '2020-11-11 07:09:00', NULL),
(59, 'success', 'mail has been sent successfully', 'form creation', '2020-11-11 07:09:02', NULL),
(60, 'success', 'mail has been sent successfully', 'form creation', '2020-11-12 10:39:48', NULL),
(61, 'success', 'mail has been sent successfully', 'form creation', '2020-11-12 10:39:50', NULL),
(62, 'success', 'mail has been sent successfully', 'form creation', '2020-11-12 10:39:53', NULL),
(63, 'success', 'mail has been sent successfully', 'form creation', '2020-11-13 12:15:30', NULL),
(64, 'success', 'mail has been sent successfully', 'form creation', '2020-11-13 12:15:33', NULL),
(65, 'success', 'mail has been sent successfully', 'form creation', '2020-11-13 12:15:35', NULL),
(66, 'success', 'mail has been sent successfully', 'form creation', '2021-01-07 10:56:06', NULL),
(67, 'success', 'mail has been sent successfully', 'form creation', '2021-01-07 10:56:09', NULL),
(68, 'success', 'mail has been sent successfully', 'form creation', '2021-01-07 10:56:11', NULL),
(69, 'success', 'mail has been sent successfully', 'form creation', '2021-01-07 11:13:42', NULL),
(70, 'success', 'mail has been sent successfully', 'form creation', '2021-01-07 11:13:44', NULL),
(71, 'success', 'mail has been sent successfully', 'form creation', '2021-01-07 11:13:46', NULL),
(72, 'success', 'mail has been sent successfully', 'form creation', '2021-01-12 05:34:24', NULL),
(73, 'success', 'mail has been sent successfully', 'form creation', '2021-01-12 05:34:27', NULL),
(74, 'success', 'mail has been sent successfully', 'form creation', '2021-01-12 05:34:29', NULL),
(75, 'success', 'mail has been sent successfully', 'form creation', '2021-01-13 06:48:39', NULL),
(76, 'success', 'mail has been sent successfully', 'form creation', '2021-01-13 06:48:42', NULL),
(77, 'success', 'mail has been sent successfully', 'form creation', '2021-01-13 06:48:44', NULL),
(78, 'success', 'mail has been sent successfully', 'form creation', '2021-01-13 09:37:44', NULL),
(79, 'success', 'mail has been sent successfully', 'form creation', '2021-01-13 09:37:47', NULL),
(80, 'success', 'mail has been sent successfully', 'form creation', '2021-01-13 09:37:49', NULL),
(81, 'success', 'mail has been sent successfully', 'form creation', '2021-03-04 06:43:25', NULL),
(82, 'success', 'mail has been sent successfully', 'form creation', '2021-03-04 06:43:28', NULL),
(83, 'success', 'mail has been sent successfully', 'form creation', '2021-03-04 06:43:32', NULL),
(84, 'success', 'mail has been sent successfully', 'form creation', '2021-03-04 06:43:35', NULL),
(85, 'success', 'mail has been sent successfully', 'form creation', '2021-03-08 05:50:24', NULL),
(86, 'success', 'mail has been sent successfully', 'form creation', '2021-03-08 05:50:27', NULL),
(87, 'success', 'mail has been sent successfully', 'form creation', '2021-03-08 05:50:29', NULL),
(88, 'success', 'mail has been sent successfully', 'form creation', '2021-03-08 05:50:31', NULL),
(89, 'success', 'mail has been sent successfully', 'form creation', '2021-03-10 11:15:00', NULL),
(90, 'success', 'mail has been sent successfully', 'form creation', '2021-03-10 11:15:02', NULL),
(91, 'success', 'mail has been sent successfully', 'form creation', '2021-03-10 11:15:05', NULL),
(92, 'success', 'mail has been sent successfully', 'form creation', '2021-03-10 11:15:07', NULL),
(93, 'success', 'mail has been sent successfully', 'form creation', '2021-03-11 09:32:09', NULL),
(94, 'success', 'mail has been sent successfully', 'form creation', '2021-03-11 09:32:11', NULL),
(95, 'success', 'mail has been sent successfully', 'form creation', '2021-03-11 09:32:13', NULL),
(96, 'success', 'mail has been sent successfully', 'form creation', '2021-03-11 09:32:15', NULL),
(97, 'success', 'mail has been sent successfully', 'from assigning', '2021-03-11 09:33:20', NULL),
(98, 'success', 'mail has been sent successfully', 'from assigning', '2021-03-11 09:33:45', NULL),
(99, 'success', 'mail has been sent successfully', 'form creation', '2021-03-11 11:48:52', NULL),
(100, 'success', 'mail has been sent successfully', 'form creation', '2021-03-11 11:48:54', NULL),
(101, 'success', 'mail has been sent successfully', 'form creation', '2021-03-11 11:48:57', NULL),
(102, 'success', 'mail has been sent successfully', 'form creation', '2021-03-11 11:48:59', NULL),
(103, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 05:38:33', NULL),
(104, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 05:38:35', NULL),
(105, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 05:38:38', NULL),
(106, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 05:38:40', NULL),
(107, 'success', 'mail has been sent successfully', 'from assigning', '2021-03-15 05:41:01', NULL),
(108, 'success', 'mail has been sent successfully', 'send to cbc', '2021-03-15 05:59:50', NULL),
(109, 'success', 'mail has been sent successfully', 'send to cbc', '2021-03-15 05:59:52', NULL),
(110, 'success', 'mail has been sent successfully', 'send to cbc', '2021-03-15 05:59:55', NULL),
(111, 'success', 'mail has been sent successfully', 'send to cbc', '2021-03-15 05:59:57', NULL),
(112, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-15 06:06:52', NULL),
(113, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-15 06:06:54', NULL),
(114, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-15 06:06:57', NULL),
(115, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-15 06:06:59', NULL),
(116, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:10:35', NULL),
(117, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:10:37', NULL),
(118, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:10:39', NULL),
(119, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:13:21', NULL),
(120, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:13:23', NULL),
(121, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:13:25', NULL),
(122, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 06:35:37', NULL),
(123, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 06:35:39', NULL),
(124, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 06:35:41', NULL),
(125, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 06:35:44', NULL),
(126, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:43:45', NULL),
(127, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:43:48', NULL),
(128, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:43:50', NULL),
(129, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:44:29', NULL),
(130, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:44:32', NULL),
(131, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 06:44:34', NULL),
(132, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 07:18:36', NULL),
(133, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 07:18:38', NULL),
(134, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 07:18:41', NULL),
(135, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 07:18:44', NULL),
(136, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 07:18:47', NULL),
(137, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 07:18:49', NULL),
(138, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 07:42:49', NULL),
(139, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 07:42:51', NULL),
(140, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 07:42:53', NULL),
(141, 'success', 'mail has been sent successfully', 'form creation', '2021-03-15 07:42:55', NULL),
(142, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 07:45:47', NULL),
(143, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 07:45:49', NULL),
(144, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-15 07:45:51', NULL),
(145, 'success', 'mail has been sent successfully', 'form creation', '2021-03-17 08:05:13', NULL),
(146, 'success', 'mail has been sent successfully', 'form creation', '2021-03-17 08:05:16', NULL),
(147, 'success', 'mail has been sent successfully', 'form creation', '2021-03-17 08:05:18', NULL),
(148, 'success', 'mail has been sent successfully', 'form creation', '2021-03-17 08:05:20', NULL),
(149, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-17 08:38:41', NULL),
(150, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-17 08:38:47', NULL),
(151, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-17 08:38:52', NULL),
(152, 'success', 'mail has been sent successfully', 'from assigning', '2021-03-17 12:05:23', NULL),
(153, 'success', 'mail has been sent successfully', 'from assigning', '2021-03-17 12:17:28', NULL),
(154, 'success', 'mail has been sent successfully', 'from assigning', '2021-03-17 12:17:39', NULL),
(155, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:17', NULL),
(156, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:19', NULL),
(157, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:20', NULL),
(158, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:21', NULL),
(159, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:22', NULL),
(160, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:23', NULL),
(161, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:24', NULL),
(162, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:26', NULL),
(163, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:27', NULL),
(164, 'success', 'mail has been sent successfully', 'cbc done', '2021-03-17 12:21:28', NULL),
(165, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-17 12:40:57', NULL),
(166, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-17 12:41:00', NULL),
(167, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-17 12:41:02', NULL),
(168, 'success', 'mail has been sent successfully', 'send back to changes', '2021-03-17 12:41:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exp`
--

DROP TABLE IF EXISTS `exp`;
CREATE TABLE IF NOT EXISTS `exp` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `shd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exp`
--

INSERT INTO `exp` (`id`, `shd`, `title`, `desc`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'As of Feb 28, 2021', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 10, NULL, NULL),
(2, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 11, NULL, NULL),
(3, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 12, '0000-00-00 00:00:00', NULL),
(4, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 13, '0000-00-00 00:00:00', NULL),
(5, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 14, NULL, NULL),
(6, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 15, NULL, NULL),
(7, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 16, NULL, NULL),
(8, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 17, NULL, NULL),
(9, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 18, NULL, NULL),
(10, 'As of Dec 31 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 19, NULL, NULL),
(11, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 20, NULL, NULL),
(12, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- for one year; the cumulative value of your investment would have been as per the above chart.', 21, NULL, NULL),
(13, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 22, NULL, NULL),
(14, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 23, NULL, NULL),
(15, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 24, NULL, NULL),
(16, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- for one year; the cumulative value of your investment would have been as per the above chart.', 25, NULL, NULL),
(17, 'As of Dec 31, 2018', 'Explanation:', 'If you would have invested Rs. 10,000/- each for three different tenures of 1 Year, 3 Years and 5 Years; the cumulative value of your investment would have been as per the above chart.', 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fatca_details`
--

DROP TABLE IF EXISTS `fatca_details`;
CREATE TABLE IF NOT EXISTS `fatca_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `multiple_nat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nats` longtext COLLATE utf8mb4_unicode_ci,
  `green_card` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_resi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for_citi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `co_ma` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `co_mp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attor_addr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_fund` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wform_options` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fatca_details`
--

INSERT INTO `fatca_details` (`id`, `multiple_nat`, `nats`, `green_card`, `tax_resi`, `for_citi`, `co_ma`, `co_mp`, `attor`, `attor_addr`, `trans_fund`, `wf`, `wform`, `wform_options`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 1, '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 2, '2020-10-07 06:37:13', '2020-10-07 06:37:13'),
(3, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 3, '2020-10-22 11:34:44', '2020-10-22 11:34:44'),
(4, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 5, '2020-10-22 11:54:30', '2020-10-22 11:54:30'),
(5, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 6, '2020-10-23 07:02:51', '2020-10-23 07:02:51'),
(6, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 7, '2020-10-29 05:55:47', '2020-10-29 05:55:47'),
(7, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 8, '2020-10-30 06:27:47', '2020-10-30 06:27:47'),
(8, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 9, '2020-10-29 09:38:40', '2020-10-29 09:38:40'),
(9, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 10, '2020-10-29 10:25:16', '2020-10-29 10:25:16'),
(10, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 11, '2020-11-04 12:30:56', '2020-11-04 12:30:56'),
(11, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 12, '2020-11-05 04:33:34', '2020-11-05 04:33:34'),
(12, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 13, '2020-11-10 05:18:33', '2020-11-10 05:18:33'),
(13, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 14, '2020-11-10 05:55:44', '2020-11-10 05:55:44'),
(14, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 15, '2020-11-10 06:06:00', '2020-11-10 06:06:00'),
(15, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 16, '2020-11-10 11:06:37', '2020-11-10 11:06:37'),
(16, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 17, '2020-11-10 14:27:57', '2020-11-10 14:27:57'),
(17, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 18, '2020-11-11 06:29:34', '2020-11-11 06:29:34'),
(18, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 19, '2020-11-11 07:08:50', '2020-11-11 07:08:50'),
(19, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 20, '2020-11-12 10:39:44', '2020-11-12 10:39:44'),
(20, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 21, '2020-11-13 12:15:23', '2020-11-13 12:15:23'),
(21, 'no', NULL, 'no', 'no', 'no', 'KHI', '03334576859', 'no', NULL, 'no', 'no', 'no_image.png', NULL, 24, '2021-01-07 10:55:56', '2021-01-07 10:55:56'),
(22, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 25, '2021-01-07 11:13:38', '2021-01-07 11:13:38'),
(23, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 26, '2021-01-12 05:34:16', '2021-01-12 05:34:16'),
(24, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 27, '2021-01-13 06:48:34', '2021-01-13 06:48:34'),
(25, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 28, '2021-01-13 09:37:40', '2021-01-13 09:37:40'),
(26, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 29, '2021-01-19 09:22:06', '2021-01-19 09:22:06'),
(27, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 30, '2021-01-19 10:21:19', '2021-01-19 10:21:19'),
(28, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 31, '2021-01-19 11:26:05', '2021-01-19 11:26:05'),
(29, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 32, '2021-01-19 11:33:55', '2021-01-19 11:33:55'),
(30, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 33, '2021-01-21 06:27:50', '2021-01-21 06:27:50'),
(31, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 34, '2021-01-27 08:11:24', '2021-01-27 08:11:24'),
(32, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 35, '2021-02-04 08:36:39', '2021-02-04 08:36:39'),
(33, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 36, '2021-02-04 13:44:08', '2021-02-04 13:44:08'),
(34, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 37, '2021-02-09 09:43:08', '2021-02-09 09:43:08'),
(35, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 38, '2021-02-10 07:50:16', '2021-02-10 07:50:16'),
(36, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 39, '2021-02-10 09:50:01', '2021-02-10 09:50:01'),
(37, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 40, '2021-02-16 10:37:07', '2021-02-16 10:37:07'),
(38, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 41, '2021-02-16 14:03:29', '2021-02-16 14:03:29'),
(39, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 42, '2021-02-16 15:01:38', '2021-02-16 15:01:38'),
(40, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 43, '2021-02-17 05:46:08', '2021-02-17 05:46:08'),
(41, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 44, '2021-02-17 06:05:31', '2021-02-17 06:05:31'),
(42, 'yes', 'Pakistan,US', 'no', 'no', 'no', 'FDSDASFS', '12213213', 'no', NULL, 'no', 'yes', 'Sales App_16Feb.pdf', 'file', 45, '2021-02-18 09:50:39', '2021-02-18 09:50:39'),
(43, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 47, '2021-02-19 08:43:55', '2021-02-19 08:43:55'),
(44, 'no', NULL, 'no', 'no', 'yes', 'HJJKH', '923216954', 'yes', 'werewrew', 'yes', 'yes', 'Sales App_15Feb2021.pdf', 'file', 48, '2021-02-19 10:18:45', '2021-02-19 10:18:45'),
(45, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 50, '2021-02-22 07:39:17', '2021-02-22 07:39:17'),
(46, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 51, '2021-02-23 07:58:29', '2021-02-23 07:58:29'),
(47, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 52, '2021-02-23 09:58:02', '2021-02-23 09:58:02'),
(48, 'yes', 'Pakistan,US,UAE', 'yes', 'yes', 'yes', 'SDF SDF SADF ASD', '92654566553', 'yes', 'gggg rrrrr', 'yes', 'yes', 'img.jpg', 'file', 54, '2021-02-23 11:49:03', '2021-02-23 11:49:03'),
(49, 'yes', 'Pakistan,US,UAE', 'yes', 'no', 'yes', 'RERETW', '46554654', 'yes', 'gfdgfgsg', 'yes', 'yes', 'img.jpg', 'file', 55, '2021-02-24 07:27:37', '2021-02-24 07:27:37'),
(50, 'no', NULL, 'yes', 'no', 'yes', NULL, NULL, 'yes', 'rewrewrewr', 'no', 'yes', 'img.jpg', 'file', 56, '2021-02-25 06:00:29', '2021-02-25 06:00:29'),
(51, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 59, '2021-02-25 11:27:39', '2021-02-25 11:27:39'),
(52, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 60, '2021-02-25 11:50:09', '2021-02-25 11:50:09'),
(53, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 61, '2021-02-26 07:37:42', '2021-02-26 07:37:42'),
(54, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 63, '2021-03-01 05:51:48', '2021-03-01 05:51:48'),
(55, 'yes', 'Pakistan,US', 'yes', 'yes', 'yes', 'JHJFG', '35345435', 'yes', 'ghfhghgfhd', 'yes', 'yes', 'img.jpg', 'file', 65, '2021-03-01 12:18:25', '2021-03-01 12:18:25'),
(56, 'yes', 'Pakistan,US', 'yes', 'yes', 'yes', 'HFGHFGH', '564545', 'yes', 'gfdgfsdf', 'yes', 'yes', 'img.jpg', 'file', 66, '2021-03-02 06:32:03', '2021-03-02 06:32:03'),
(57, 'yes', 'Pakistan,USA', 'yes', 'yes', 'yes', 'GFGFDFG', '23432423', 'yes', 'kjuuiyiy', 'yes', 'yes', 'Error.jpg', 'file', 67, '2021-03-02 11:06:06', '2021-03-02 11:06:06'),
(58, 'yes', 'Pakistan,USA', 'yes', 'yes', 'yes', 'YTRYTRYTR', '565454', 'yes', 'rtytrr', 'yes', 'yes', 'img.jpg', 'file', 68, '2021-03-02 12:30:33', '2021-03-02 12:30:33'),
(59, 'yes', 'Pakistan,USA', 'yes', 'yes', 'yes', 'DFGFFD', '432424', 'yes', 'fsdsd', 'yes', 'yes', 'img.jpg', 'file', 69, '2021-03-03 10:01:58', '2021-03-03 10:01:58'),
(60, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 70, '2021-03-04 06:11:03', '2021-03-04 06:11:03'),
(61, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 71, '2021-03-04 06:43:17', '2021-03-04 06:43:17'),
(62, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 72, '2021-03-08 05:50:20', '2021-03-08 05:50:20'),
(63, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 73, '2021-03-10 11:14:53', '2021-03-10 11:14:53'),
(64, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 74, '2021-03-11 09:32:05', '2021-03-11 09:32:05'),
(65, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 75, '2021-03-11 11:48:49', '2021-03-11 11:48:49'),
(66, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 76, '2021-03-15 05:38:29', '2021-03-15 05:38:29'),
(67, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 77, '2021-03-15 06:35:34', '2021-03-15 06:35:34'),
(68, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 78, '2021-03-15 07:42:45', '2021-03-15 07:42:45'),
(69, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 79, '2021-03-17 08:05:09', '2021-03-17 08:05:09'),
(70, 'no', NULL, 'no', 'no', 'no', NULL, NULL, 'no', NULL, 'no', 'no', 'no_image.png', NULL, 80, '2021-03-31 14:09:20', '2021-03-31 14:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `features_benefits`
--

DROP TABLE IF EXISTS `features_benefits`;
CREATE TABLE IF NOT EXISTS `features_benefits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fb_bullets_rt` varchar(300) DEFAULT NULL,
  `fb_bullets_lt` varchar(300) DEFAULT NULL,
  `fund_id` int(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `features_benefits`
--

INSERT INTO `features_benefits` (`id`, `fb_bullets_rt`, `fb_bullets_lt`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Easy to Invest.', 'No back end load.', 10, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(2, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 10, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(3, 'Stable returns.', NULL, 10, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(4, 'Timely redeemable.', NULL, 10, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(7, 'Easy to Invest.', 'No back end load.', 11, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(8, 'Actively managed by experienced Fund Managers.', 'Safe Investment.', 11, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(9, 'Stable returns.', 'Actively managed by experienced Fund Managers.', 11, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(10, 'Timely redeemable.', NULL, 11, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(13, 'Easy to Invest.', 'No back end load.', 12, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(14, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 12, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(15, 'Stable returns.', NULL, 12, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(16, 'Timely redeemable.', NULL, 12, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(19, 'Easy to Invest.', 'No back end load.', 13, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(20, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 13, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(21, 'Stable returns.', NULL, 13, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(22, 'Timely redeemable.', NULL, 13, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(25, 'Easy to Invest.', 'No back end load.', 14, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(26, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 14, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(27, 'Stable returns.', NULL, 14, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(28, 'Timely redeemable.', NULL, 14, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(31, 'Easy to Invest.', 'No back end load.', 15, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(32, 'Safe Investment.', 'Actively managed by experienced Fund Managers.', 15, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(33, 'Stable returns.', NULL, 15, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(34, 'Timely redeemable.', NULL, 15, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(37, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 16, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(38, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 16, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(39, 'No back end load.', NULL, 16, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(42, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 17, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(43, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 17, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(44, 'No back end load.', NULL, 17, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(47, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 18, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(48, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 18, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(49, 'No back end load.', NULL, 18, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(52, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 19, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(53, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 19, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(54, 'No back end load.', NULL, 19, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(57, 'Easy to Invest.', 'Selective off-index allocations to generate alpha.\r\n', 20, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(58, 'Diversified portfolio with a focus on high-quality blue-chip stocks.\r\n', 'Actively managed by experienced Fund Managers.\r\n', 20, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(59, 'No back end load.', NULL, 20, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(62, 'Easy to Invest.', 'Up to 30% exposure in listed stocks.\r\n', 21, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(63, 'Up to 30% exposure in listed stocks', 'No back end load.', 21, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(64, 'Diversified into money market/fixed income and equities asset classes', 'Actively managed by experienced Fund Managers.', 21, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(68, 'Easy to Invest.', 'Time redeemable', 22, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(69, 'Safe Investment.', 'No back end load.\r\n', 22, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(70, 'Better Returns than Money Market & Fixed \r\nIncome Funds.', 'Up to 70% exposure in listed stocks.\r\n', 22, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(71, NULL, 'Actively managed by experienced Fund Managers.\r\n', 22, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(74, NULL, NULL, 23, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(75, 'Actively managed by experienced Fund Managers', NULL, 23, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(76, 'Easy to Invest.', 'Diversified into defensive (money market/fixed income) and aggressive (equities) assets classes.', 23, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(77, 'Easy to Invest.', 'Diversified into defensive (money market/fixed income) and aggressive (equities) assets classes.', 24, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(78, 'Actively managed by experienced Fund Managers.', NULL, 24, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(79, NULL, NULL, 24, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(80, 'Invest as per the investor’s risk appetite.', 'No Back End Load', 25, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(81, 'Competitive Returns.', 'Professional Management.\r\n', 25, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(82, 'Tax Credit.', 'Option to withdraw entire or partial amount 50% free of tax at retirement.\r\n', 25, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(83, 'Invest as per the investor’s risk appetite.', 'No Back End Load', 26, '2018-07-07 06:47:22', '2018-07-07 06:47:22'),
(84, 'Competitive Returns.', 'Professional Management.\r\n', 26, '2018-07-09 16:08:55', '2018-07-09 16:08:55'),
(85, 'Tax Credit.', 'Option to withdraw entire or partial amount 50% free of tax at retirement.', 26, '2018-07-09 16:08:55', '2018-07-09 16:08:55');

-- --------------------------------------------------------

--
-- Table structure for table `fi`
--

DROP TABLE IF EXISTS `fi`;
CREATE TABLE IF NOT EXISTS `fi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fi_k_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_v_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fi`
--

INSERT INTO `fi` (`id`, `fi_k_1`, `fi_v_1`, `fi_k_2`, `fi_v_2`, `fi_k_3`, `fi_v_3`, `fi_k_4`, `fi_v_4`, `fi_k_5`, `fi_v_5`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Fund Size (PKR Mn)', '29,409', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 1% of NAV', 'Back end Load', 'Nil', 10, NULL, NULL),
(2, 'Fund Size (PKR Mn)', '967', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Nil', 'Back end Load', 'Nil', 11, NULL, NULL),
(3, 'Fund Size (PKR Mn)', '1,217', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 12, NULL, NULL),
(4, 'Fund Size (PKR Mn)', '7,452', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Nil', 'Back end Load', 'Nil', 13, NULL, NULL),
(5, 'Fund Size (PKR Mn)', '1,973', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '500', 'Front end Load', '1.50%', 'Back end Load', 'Nil', 14, NULL, NULL),
(6, 'Fund Size (PKR Mn)', '209', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 15, NULL, NULL),
(7, 'Fund Size (PKR Mn)', '3,150', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.50%', 'Back end Load', 'Nil', 16, NULL, NULL),
(8, 'Fund Size (PKR Mn)', '270', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 17, NULL, NULL),
(9, 'Fund Size (PKR Mn)', '292', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', '2.00%', 'Back end Load', 'Nil', 18, NULL, NULL),
(10, 'Fund Size (PKR Mn)', '1,025', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', '2.00%', 'Back end Load', 'Nil', 19, NULL, NULL),
(11, 'Fund Size (PKR Mn)', '834', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 20, NULL, NULL),
(12, 'Fund Size (PKR Mn)', '2,233', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', 'Up to 2.00%', 'Back end Load', 'Nil', 21, NULL, NULL),
(13, 'Fund Size (PKR Mn)', '266', 'Minimum Investment (PKR)', '1,000', 'Subsequent Investment (PKR)', '1,000', 'Front end Load', '2.00%', 'Back end Load', 'Nil', 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fi1`
--

DROP TABLE IF EXISTS `fi1`;
CREATE TABLE IF NOT EXISTS `fi1` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fi_k1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k1v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k1v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k1v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k2v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k2v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k2v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k3v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k3v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k3v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k4v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k4v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k4v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k5v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k5v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fi_k5v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fi1`
--

INSERT INTO `fi1` (`id`, `fi_k1`, `fi_k1v1`, `fi_k1v2`, `fi_k1v3`, `fi_k2`, `fi_k2v1`, `fi_k2v2`, `fi_k2v3`, `fi_k3`, `fi_k3v1`, `fi_k3v2`, `fi_k3v3`, `fi_k4`, `fi_k4v1`, `fi_k4v2`, `fi_k4v3`, `fi_k5`, `fi_k5v1`, `fi_k5v2`, `fi_k5v3`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Fund Size (PKR Mn)', '25', '194', '4,138', 'Minimum Investment (PKR)', NULL, 'Rs. 10,000/-', NULL, 'Subsequent Investment', NULL, 'Rs. 1000/-', NULL, 'Front end Load', 'Up to 2%', 'Up to 2%', 'Up to 2%', 'Back end Load', 'Nil', 'Nil', '1% for Year 1 & 0.5% thereon', 23, NULL, NULL),
(2, 'Fund Size (PKR Mn)', '67', '172', '192', 'Minimum Investment (PKR)', NULL, 'Rs. 10,000/-', NULL, 'Subsequent Investment', NULL, 'Rs. 1000/-', NULL, 'Front end Load', 'Up to 2%', 'Up to 2%', 'Up to 2%', 'Back end Load', 'Nil', 'Nil', '1% for Year & 0.5% thereon', 24, NULL, NULL),
(3, 'Fund Size (PKR Mn)', '166', '174', '219', 'Minimum Investment (PKR)', NULL, 'Rs. 1,000/-', NULL, 'Subsequent Investment', NULL, 'Rs. 1,000/-', NULL, 'Front end Load', NULL, 'Max 3.00%', NULL, 'Back end Load', NULL, 'Nil', NULL, 25, NULL, NULL),
(4, 'Fund Size (PKR Mn)', '94', '111', '185', 'Minimum Investment (PKR)', NULL, 'Rs. 1,000/-', NULL, 'Subsequent Investment', NULL, 'Rs. 1,000/-', NULL, 'Front end Load', 'Up to 2%', 'Up to 2%', 'Up to 2%', 'Back end Load', 'Nil', 'Nil', '1% for Year 1 & 0.5% thereon', 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
CREATE TABLE IF NOT EXISTS `fields` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_details` longtext COLLATE utf8mb4_unicode_ci,
  `bank_details` longtext COLLATE utf8mb4_unicode_ci,
  `investment_details` longtext COLLATE utf8mb4_unicode_ci,
  `other_details` longtext COLLATE utf8mb4_unicode_ci,
  `fatca_details` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `form_id`, `customer_details`, `bank_details`, `investment_details`, `other_details`, `fatca_details`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'SA1893', '[\"name\",\"father_name\",\"mother_name\",\"dob\",\"cnic\",\"cnic_attachment\",\"cnic_issue_date\",\"pob_country\",\"pob_city\",\"email\",\"cell\",\"occupation\",\"occ_name\",\"designation\",\"department\",\"working_experience\",\"org_emp_bes_name\",\"age_of_business\",\"education\",\"marital_status\",\"no_of_dependants\",\"public_figure\",\"average_annual_income\",\"refused_account_by_institute\",\"high_value_item\",\"soi\",\"soi_attachment\",\"address\",\"country1\",\"city1\",\"zakat\",\"zakat_options\"]', '[\"bank_name\",\"branch_name\",\"account_title\",\"iban_number\"]', '[\"fund_name\",\"amount\",\"payment_mode\",\"attachment\",\"bank_name\",\"instrument_number\"]', '[\"asf\",\"dpo\",\"type_of_units\"]', '[\"multiple_nat\",\"green_card\",\"for_citi\",\"co_ma\",\"co_mp\",\"attor\",\"trans_fund\",\"wf\"]', '78', 'checked', '2020-10-06 14:27:46', '2020-10-06 14:27:46'),
(2, 'Web2633', '[\"name\",\"father_name\",\"mother_name\",\"dob\",\"cnic\",\"cnic_attachment\",\"cnic_issue_date\",\"pob_country\",\"pob_city\",\"email\",\"cell\",\"occupation\",\"occ_name\",\"designation\",\"department\",\"working_experience\",\"org_emp_bes_name\",\"age_of_business\",\"education\",\"marital_status\",\"no_of_dependants\",\"public_figure\",\"average_annual_income\",\"refused_account_by_institute\",\"high_value_item\",\"soi\",\"soi_attachment\",\"address\",\"country1\",\"city1\",\"zakat\",\"zakat_options\",\"zakat_certificate\"]', '[\"bank_name\",\"branch_name\",\"account_title\",\"iban_number\"]', '[\"fund_name\",\"amount\",\"payment_mode\",\"attachment\",\"bank_name\",\"instrument_number\"]', '[\"asf\",\"dpo\",\"type_of_units\"]', '[\"multiple_nat\",\"green_card\",\"for_citi\",\"co_ma\",\"co_mp\",\"attor\",\"trans_fund\",\"wf\"]', '78', 'checked', '2020-10-07 06:44:30', '2020-10-07 06:44:30'),
(3, 'SA0601', '[\"name\"]', 'null', 'null', 'null', 'null', '84', 'checked', '2021-02-16 09:28:41', '2021-02-16 09:28:41'),
(4, 'SA6709', '[\"address\"]', 'null', 'null', 'null', 'null', '84', 'checked', '2021-03-15 06:13:18', '2021-03-15 06:13:18'),
(5, 'SA0134', '[\"father_name\",\"mother_name\"]', 'null', 'null', 'null', 'null', '84', 'checked', '2021-03-15 07:18:42', '2021-03-15 07:18:42'),
(6, 'SA4166', '[\"pob_country\",\"pob_city\",\"email\"]', 'null', 'null', 'null', 'null', '84', 'checked', '2021-03-15 07:45:44', '2021-03-15 07:45:44'),
(7, 'SA8309', '[\"name\"]', 'null', 'null', 'null', 'null', '84', 'checked', '2021-03-17 08:38:34', '2021-03-17 08:38:34'),
(8, 'SA3329', '[\"father_name\",\"mother_name\",\"dob\",\"cnic\",\"cell\",\"occupation\"]', 'null', 'null', 'null', 'null', '84', 'checked', '2021-03-17 12:40:54', '2021-03-17 12:40:54');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
CREATE TABLE IF NOT EXISTS `forms` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `form_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `form_id`, `channel`, `status`, `customer_id`, `user_id`, `assigned_to`, `created_at`, `updated_at`) VALUES
(50, 'SA2829', 'SA', 0, 56, 84, 85, '2021-02-25 06:00:29', '2021-02-25 06:00:29'),
(49, 'SA1657', 'SA', 0, 55, 84, 85, '2021-02-24 07:27:37', '2021-02-24 07:27:37'),
(48, 'SA0943', 'SA', 0, 54, 84, 85, '2021-02-23 11:49:03', '2021-02-23 11:49:03'),
(47, 'SA4283', 'SA', 0, 52, 84, 81, '2021-02-23 09:58:03', '2021-02-23 09:58:03'),
(46, 'SA7109', 'SA', 0, 51, 84, 0, '2021-02-23 07:58:29', '2021-02-23 07:58:29'),
(45, 'SA9557', 'SA', 0, 50, 84, 0, '2021-02-22 07:39:17', '2021-02-22 07:39:17'),
(44, 'SA9925', 'SA', 0, 48, 84, 0, '2021-02-19 10:18:45', '2021-02-19 10:18:45'),
(43, 'SA4236', 'SA', 0, 47, 84, 0, '2021-02-19 08:43:56', '2021-02-19 08:43:56'),
(42, 'SA1840', 'SA', 0, 45, 84, 0, '2021-02-18 09:50:40', '2021-02-18 09:50:40'),
(41, 'SA1931', 'SA', 0, 44, 84, 0, '2021-02-17 06:05:31', '2021-02-17 06:05:31'),
(40, 'SA0768', 'SA', 0, 43, 84, 0, '2021-02-17 05:46:08', '2021-02-17 05:46:08'),
(39, 'SA7698', 'SA', 0, 42, 84, 0, '2021-02-16 15:01:38', '2021-02-16 15:01:38'),
(38, 'SA4210', 'SA', 0, 41, 84, 0, '2021-02-16 14:03:30', '2021-02-16 14:03:30'),
(37, 'SA1828', 'SA', 0, 40, 84, 0, '2021-02-16 10:37:08', '2021-02-16 10:37:08'),
(36, 'SA0601', 'SA', 2, 39, 84, 0, '2021-02-10 09:50:01', '2021-02-10 09:50:01'),
(35, 'SA3416', 'SA', 0, 38, 84, 0, '2021-02-10 07:50:16', '2021-02-10 07:50:16'),
(34, 'SA3789', 'SA', 0, 37, 84, 0, '2021-02-09 09:43:09', '2021-02-09 09:43:09'),
(33, 'SA6248', 'SA', 0, 36, 84, 0, '2021-02-04 13:44:08', '2021-02-04 13:44:08'),
(32, 'SA7800', 'SA', 0, 35, 84, 0, '2021-02-04 08:36:40', '2021-02-04 08:36:40'),
(31, 'SA5084', 'SA', 0, 34, 84, 0, '2021-01-27 08:11:24', '2021-01-27 08:11:24'),
(30, 'SA0471', 'SA', 0, 33, 84, 0, '2021-01-21 06:27:51', '2021-01-21 06:27:51'),
(29, 'SA6035', 'SA', 0, 32, 84, 0, '2021-01-19 11:33:55', '2021-01-19 11:33:55'),
(28, 'SA5565', 'SA', 0, 31, 84, 0, '2021-01-19 11:26:05', '2021-01-19 11:26:05'),
(27, 'SA1679', 'SA', 0, 30, 84, 0, '2021-01-19 10:21:19', '2021-01-19 10:21:19'),
(26, 'SA8126', 'SA', 0, 29, 84, 0, '2021-01-19 09:22:06', '2021-01-19 09:22:06'),
(25, 'SA0660', 'SA', 0, 28, 84, 0, '2021-01-13 09:37:40', '2021-01-13 09:37:40'),
(24, 'SA0514', 'SA', 0, 27, 84, 0, '2021-01-13 06:48:34', '2021-01-13 06:48:34'),
(23, 'SA9657', 'SA', 0, 26, 84, 0, '2021-01-12 05:34:17', '2021-01-12 05:34:17'),
(22, 'SA8018', 'SA', 0, 25, 84, 0, '2021-01-07 11:13:38', '2021-01-07 11:13:38'),
(21, 'SA6956', 'SA', 0, 24, 78, 0, '2021-01-07 10:55:56', '2021-01-07 10:55:56'),
(20, 'SA9723', 'SA', 0, 21, 84, 0, '2020-11-13 12:15:23', '2020-11-13 12:15:23'),
(19, 'SA7584', 'SA', 0, 20, 84, 0, '2020-11-12 10:39:44', '2020-11-12 10:39:44'),
(18, 'SA8531', 'SA', 0, 19, 84, 0, '2020-11-11 07:08:51', '2020-11-11 07:08:51'),
(17, 'SA6174', 'SA', 0, 18, 84, 0, '2020-11-11 06:29:34', '2020-11-11 06:29:34'),
(16, 'SA8477', 'SA', 0, 17, 84, 0, '2020-11-10 14:27:57', '2020-11-10 14:27:57'),
(15, 'SA6398', 'SA', 0, 16, 84, 0, '2020-11-10 11:06:38', '2020-11-10 11:06:38'),
(14, 'SA8361', 'SA', 0, 15, 84, 0, '2020-11-10 06:06:01', '2020-11-10 06:06:01'),
(13, 'SA7745', 'SA', 0, 14, 84, 0, '2020-11-10 05:55:45', '2020-11-10 05:55:45'),
(12, 'SA5514', 'SA', 0, 13, 84, 0, '2020-11-10 05:18:34', '2020-11-10 05:18:34'),
(11, 'SA0814', 'SA', 0, 12, 84, 0, '2020-11-05 04:33:34', '2020-11-05 04:33:34'),
(10, 'SA3056', 'SA', 0, 11, 59, 0, '2020-11-04 12:30:56', '2020-11-04 12:30:56'),
(9, 'SA7116', 'SA', 0, 10, 84, 0, '2020-10-29 10:25:16', '2020-10-29 10:25:16'),
(8, 'SA4320', 'SA', 0, 9, 84, 0, '2020-10-29 09:38:40', '2020-10-29 09:38:40'),
(7, 'SA9267', 'SA', 0, 8, 84, 0, '2020-10-30 06:27:47', '2020-10-30 06:27:47'),
(6, 'SA0947', 'SA', 0, 7, 78, 0, '2020-10-29 05:55:47', '2020-10-29 05:55:47'),
(5, 'SA6572', 'SA', 0, 6, 78, 0, '2020-10-23 07:02:52', '2020-10-23 07:02:52'),
(4, 'SA7670', 'SA', 0, 5, 78, 0, '2020-10-22 11:54:30', '2020-10-22 11:54:30'),
(3, 'SA6484', 'SA', 0, 3, 78, 0, '2020-10-22 11:34:44', '2020-10-22 11:34:44'),
(2, 'Web2633', 'Web', 2, 2, 78, 0, '2020-10-07 06:37:13', '2020-10-07 06:37:13'),
(1, 'SA1893', 'SA', 2, 1, 78, 0, '2020-10-06 13:44:53', '2020-10-06 13:44:53'),
(51, 'SA3809', 'SA', 0, 60, 84, 85, '2021-02-25 11:50:09', '2021-02-25 11:50:09'),
(52, 'SA5063', 'SA', 0, 61, 84, 85, '2021-02-26 07:37:43', '2021-02-26 07:37:43'),
(53, 'SA7908', 'SA', 0, 63, 84, 0, '2021-03-01 05:51:48', '2021-03-01 05:51:48'),
(54, 'SA1105', 'SA', 0, 65, 84, 0, '2021-03-01 12:18:25', '2021-03-01 12:18:25'),
(55, 'SA6723', 'SA', 0, 66, 84, 0, '2021-03-02 06:32:03', '2021-03-02 06:32:03'),
(56, 'SA3166', 'SA', 0, 67, 84, 0, '2021-03-02 11:06:06', '2021-03-02 11:06:06'),
(57, 'SA8234', 'SA', 0, 68, 84, 85, '2021-03-02 12:30:34', '2021-03-02 12:30:34'),
(58, 'SA5719', 'SA', 0, 69, 84, 0, '2021-03-03 10:01:59', '2021-03-03 10:01:59'),
(59, 'SA8263', 'SA', 0, 70, 84, 0, '2021-03-04 06:11:03', '2021-03-04 06:11:03'),
(60, 'SA0197', 'SA', 0, 71, 84, 85, '2021-03-04 06:43:17', '2021-03-04 06:43:17'),
(61, 'SA2620', 'SA', 0, 72, 84, 0, '2021-03-08 05:50:20', '2021-03-08 05:50:20'),
(62, 'SA4893', 'SA', 0, 73, 84, 0, '2021-03-10 11:14:53', '2021-03-10 11:14:53'),
(63, 'SA5125', 'SA', 0, 74, 84, 0, '2021-03-11 09:32:05', '2021-03-11 09:32:05'),
(64, 'SA3329', 'SA', 2, 75, 84, 86, '2021-03-11 11:48:49', '2021-03-11 11:48:49'),
(65, 'SA6709', 'SA', 2, 76, 84, 86, '2021-03-15 05:38:29', '2021-03-15 05:38:29'),
(66, 'SA0134', 'SA', 2, 77, 84, 0, '2021-03-15 06:35:34', '2021-03-15 06:35:34'),
(67, 'SA4166', 'SA', 2, 78, 84, 0, '2021-03-15 07:42:46', '2021-03-15 07:42:46'),
(68, 'SA8309', 'SA', 4, 79, 84, 0, '2021-03-17 08:05:09', '2021-03-17 08:05:09'),
(69, 'SA9760', 'SA', 0, 80, 84, 0, '2021-03-31 14:09:20', '2021-03-31 14:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `fr`
--

DROP TABLE IF EXISTS `fr`;
CREATE TABLE IF NOT EXISTS `fr` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `k1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k1v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k1v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k1v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k1v4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k2v4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3v1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3v2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3v3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k3v4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fr`
--

INSERT INTO `fr` (`id`, `k1`, `k1v1`, `k1v2`, `k1v3`, `k1v4`, `k2`, `k2v1`, `k2v2`, `k2v3`, `k2v4`, `k3`, `k3v1`, `k3v2`, `k3v3`, `k3v4`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '6.57', '6.75', '6.82', '6.65', 'Benchmark %', '6.67', '6.65', '6.65', '6.66', 10, NULL, NULL),
(2, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '8.54', '7.32', '6.60', '5.68', 'Benchmark %', '3.19', '3.00', '2.81', '2.70', 11, NULL, NULL),
(3, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '7.31', '6.78', '6.61', '6.12', 'Benchmark %', '3.20', '3.02', '2.85', '2.64', 12, NULL, NULL),
(4, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '8.44', '7.60', '7.12', '6.40', 'Benchmark %', '8.83', '8.10', '7.36', '6.45', 13, NULL, NULL),
(5, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '9.13', '8.71', '7.28', '6.49', 'Benchmark %', '10.63', '9.98', '8.96', '7.76', 14, NULL, NULL),
(6, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '9.59', '8.26', '7.84', '6.51', 'Benchmark %', '10.49', '9.70', '8.72', '7.56', 15, NULL, NULL),
(7, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-9.64', '-10.45', '-11.53', '-7.14', 'Benchmark %', '-10.75', '-12.30', '-13.99', '-10.29', 16, NULL, NULL),
(8, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-9.30', '-9.69', '-10.61', '-5.84', 'Benchmark %', '-8.47', '-9.59', '-11.56', '-8.41', 17, NULL, NULL),
(9, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-7.96', '-8.02', '-8.80', '-5.15', 'Benchmark %', '-10.55', '-11.64', '-13.91', '-10.84', 18, NULL, NULL),
(10, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-7.96', '-8.07', '-8.79', '-5.15', 'Benchmark %', '-10.55', '-11.64', '-13.91', '-10.84', 19, NULL, NULL),
(11, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-10.10', '-13.12', '-15.44', '-12.34', 'Benchmark %', '-10.75', '-12.30', '-13.99', '-10.29', 20, NULL, NULL),
(12, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-2.11', '-1.28', '-0.78', '1.97', 'Benchmark %', '-2.64', '-2.50', '-2.74', '-0.91', 21, NULL, NULL),
(13, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYTD*', 'Return %', '-5.66', '-5.66', '-6.45', '-1.98', 'Benchmark %', '-4.39', '-4.39', '-4.94', '-1.75', 22, NULL, NULL),
(16, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYDT*', 'Return %', '1.30', '3.44', '2.64', '3.44', 'Benchmark %', '1.50', '3.49', '3.14', '3.49', 25, NULL, NULL),
(17, 'Tenure', '30 Days', '90 Days', '180 Days', 'CYDT*', 'Return %', '3.38', '8.11', '5.77', '4.35', 'Benchmark %', '3.28', '7.71', '5.34', '7.71', 26, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fr1`
--

DROP TABLE IF EXISTS `fr1`;
CREATE TABLE IF NOT EXISTS `fr1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fr1_v1` varchar(191) DEFAULT NULL,
  `fr1_v2` varchar(191) DEFAULT NULL,
  `fr1_v3` varchar(191) DEFAULT NULL,
  `fr1_v4` varchar(191) DEFAULT NULL,
  `fund_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fr1`
--

INSERT INTO `fr1` (`id`, `fr1_v1`, `fr1_v2`, `fr1_v3`, `fr1_v4`, `fund_id`) VALUES
(1, '30 Days', '7.33', '6.86', '-9.51', 25),
(2, '90 Days', '6.77', '6.45', '-9.75', 25),
(3, '180 Days', '6.22%', '5.22%', '-9.78%', 25),
(4, '30 Days', '7.03', '6.89', '-8.72', 26),
(5, '90 Days', '6.14', '5.86', '-8.07', 26),
(6, '180 Days', '5.58', '4.97', '-8.00', 26),
(7, 'CYTD*', '4.56', '4.03', '-3.60', 26);

-- --------------------------------------------------------

--
-- Table structure for table `funds`
--

DROP TABLE IF EXISTS `funds`;
CREATE TABLE IF NOT EXISTS `funds` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `funds`
--

INSERT INTO `funds` (`id`, `title`, `created_at`, `updated_at`) VALUES
(10, 'HBL Cash Fund', NULL, NULL),
(11, 'HBL Islamic Money Market Fund\r\n', NULL, NULL),
(12, 'HBL Islamic Income Fund\r\n', NULL, NULL),
(13, 'HBL Money Market Fund', NULL, NULL),
(14, 'HBL Income Fund\r\n', NULL, NULL),
(15, 'HBL Government Securities Fund\r\n', NULL, NULL),
(16, 'HBL Stock Fund\r\n', NULL, NULL),
(17, 'HBL Equity Fund', NULL, NULL),
(18, 'HBL Islamic Equity Fund', NULL, NULL),
(19, 'HBL Islamic Stock Fund', NULL, NULL),
(20, 'HBL Energy Fund\r\n', NULL, NULL),
(21, 'HBL Islamic Asset Allocation Fund', NULL, NULL),
(22, 'HBL Multi Asset Fund', NULL, NULL),
(23, 'HBL Islamic Financial Planning Fund\r\n', NULL, NULL),
(24, 'HBL Financial Planning Fund', NULL, NULL),
(25, 'HBL Pension Fund', NULL, NULL),
(26, 'HBL Islamic Pension Fund\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hamls`
--

DROP TABLE IF EXISTS `hamls`;
CREATE TABLE IF NOT EXISTS `hamls` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b4` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b5` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b6` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hamls`
--

INSERT INTO `hamls` (`id`, `title`, `b1`, `b2`, `b3`, `b4`, `b5`, `b6`, `f1`, `f2`, `f3`, `f4`, `created_at`, `updated_at`) VALUES
(1, 'HBL Asset Management Limited', 'PKR 21.12<br />\r\nbillion  <br />\r\nEquity AUM', '17 <br />\r\nOpen-end  <br />\r\nFunds', 'Total AUMs <br />\r\nRs. 51.8<br />\r\nBillion', 'AM2+ <br />\r\nRating <br />\r\nby JCR-VIS', '2 VPS  <br />\r\nSchemes', '5th Largest <br />\r\n AMC <br />\r\nin  Pakistan', 'HBL Asset Management Limited (HBL AML) is a wholly owned subsidiary of HBL, the largest commercial bank in Pakistan.', 'With a nationwide foot print of retail and corporate clients, HBL AML is one of the largest private fund management company in the country. We offer both conventional and Shariah-compliant investment products.', 'During the year 2016, HBL AML acquired PICIC Asset Management Company Limited which has subsequently merged into HBL AML. The acquisition has increased our product suite to 19 mutual fund schemes and plans.', 'HBL Asset Management is rated AM2+ by JCR-VIS.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iimf`
--

DROP TABLE IF EXISTS `iimf`;
CREATE TABLE IF NOT EXISTS `iimf` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sf` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f6` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f7` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iimf`
--

INSERT INTO `iimf` (`id`, `title`, `sh`, `sf`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `created_at`, `updated_at`) VALUES
(1, 'ADVANTAGES OF INVESTING IN MUTUAL FUNDS', 'ADVANTAGES OF INVESTING IN MUTUAL FUNDS', 'Mutual funds are an easy, convenient and affordable way of gaining access to capital markets. Each investor has a stake in the assets and earnings of the fund in proportion to the amount of their investments. The benefits of mutual funds include:', 'Professional Management', 'Tax Efficient Way to Save', 'Diversification', 'Liquidity', 'Reduction of transaction costs', 'Convenience', 'Time', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `investment_avenues`
--

DROP TABLE IF EXISTS `investment_avenues`;
CREATE TABLE IF NOT EXISTS `investment_avenues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ai_key` varchar(191) DEFAULT NULL,
  `fund_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `investment_avenues`
--

INSERT INTO `investment_avenues` (`id`, `ai_key`, `fund_id`, `created_at`, `updated_at`) VALUES
(1, 'Cash', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(2, 'Placements with Banks & DFIs', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(3, 'T-Bills', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(4, 'Commercial Paper', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(5, 'Other including Receivables', 10, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(12, 'Cash	', 11, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(13, 'Placements with Banks & DFIs', 11, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(14, 'Other including Receivables', 11, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(16, 'Cash	', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(17, 'Commercial Paper', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(18, 'Other including Receivables', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(19, 'TFCs/ Sukuks', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(21, 'Placement with Banks and DFI', 12, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(23, 'Cash	', 13, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(24, 'Placement with Banks and DFIs', 13, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(25, 'T-Bills', 13, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(28, 'Other including Receivables', 13, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(30, 'Cash', 14, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(33, 'Other including Receivables', 14, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(36, 'TFCs/ Sukuks', 14, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(37, 'Cash', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(39, 'T-Bills', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(41, 'Other including Receivables', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(42, 'MTS / Spread Transaction', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(44, 'Commercial Paper', 15, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(47, 'Cash', 16, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(49, 'Other including Receivables', 16, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(50, 'Stock/Equities', 16, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(51, 'Cash', 17, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(52, 'Other including receivables', 17, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(53, 'Stock/Equities', 17, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(54, 'Cash', 18, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(55, 'Other including Receivables', 18, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(56, 'Stock/Equities', 18, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(57, 'Cash', 19, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(58, 'Other including Receivables', 19, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(59, 'Stock/Equities', 19, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(60, 'Cash', 20, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(61, 'Other including Receivables', 20, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(62, 'Stock/Equities', 20, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(63, 'Cash	', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(64, 'Other including Receivables', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(65, 'Stock/Equities', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(66, 'Commercial Paper', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(67, 'TFCs/Sukuks', 21, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(68, 'Cash', 22, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(71, 'TFCs / Sukuks', 22, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(72, 'Other including Receivables', 22, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(74, 'Stock/Equities', 22, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(76, 'Cash', 23, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(77, 'Other including Receivables', 23, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(78, 'Equity Funds', 23, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(79, 'Fixed Income Funds', 23, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(81, 'Cash', 24, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(82, 'Equity Funds', 24, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(83, 'Cash', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(84, 'Placement with Banks and DFIs', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(85, 'T-Bills', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(86, 'Commercial Paper', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(87, 'PIBs', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(88, 'Other including Receivables', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(89, 'TFCs/ Sukuks', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(90, 'Stock/Equities', 25, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(92, 'Cash', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(93, 'Placement with Banks and DFIs', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(94, 'Other including Receivables', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(95, 'GoP Ijara Sukuks', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(96, 'Cash', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(97, 'Stock / Equities', 26, '2018-07-15 04:29:33', '2018-07-15 04:29:33'),
(98, 'Fixed Income Funds', 24, '2018-07-20 11:02:56', '2018-07-20 11:02:56'),
(99, 'Commercial Paper', 26, '2019-01-17 11:01:22', '2019-01-17 11:01:22'),
(100, 'TFCs/ Sukuks', 26, '2019-01-17 11:01:47', '2019-01-17 11:01:47'),
(101, 'Others Including Receivables', 24, '2019-01-17 11:21:37', '2019-01-17 11:21:37'),
(102, 'Placement with Banks & DFI', 21, '2019-01-17 12:03:28', '2019-01-17 12:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `investment_details`
--

DROP TABLE IF EXISTS `investment_details`;
CREATE TABLE IF NOT EXISTS `investment_details` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fund_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_in_words` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_end_load` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instrument_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `fund_name_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investment_details`
--

INSERT INTO `investment_details` (`id`, `fund_name`, `amount`, `amount_in_words`, `front_end_load`, `payment_mode`, `attachment`, `bank_name`, `instrument_number`, `customer_id`, `fund_name_id`, `payment_mode_id`, `bank_name_id`, `created_at`, `updated_at`) VALUES
(1, 'HBL Government Securities Fund', '5,558', 'Five Thousand Five Hundred Fifty Five only', 'N/A', 'Pay Oder', '220-SM667653.jpg', 'ALBARAKA', '5556', 1, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '1', '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'HBL Cash Fund', '1000', 'Ten Thousand only', 'N/A', 'IBFT', 'Screenshot-2019-01-23-00.20.04.png', 'FINCA', '5555hh', 2, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '72', '2020-10-07 06:37:13', '2020-10-07 06:37:13'),
(3, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'members_hblasset_com.jpg', 'ABL', '453', 3, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-10-22 11:34:43', '2020-10-22 11:34:43'),
(4, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'members_hblasset_com.jpg', 'ABL', '6798', 5, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-10-22 11:54:28', '2020-10-22 11:54:28'),
(5, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'HBL AMC 2.jfif', 'ALBARAKA', '564568', 6, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '1', '2020-10-23 07:02:51', '2020-10-23 07:02:51'),
(6, 'HBL Money Market Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'HBL Tax Rebate Flyer Layout 05 2020 1.jpg', 'ABL', '56565656', 7, '7f3c02ad-c276-444e-a951-0222746843ff', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-10-29 05:55:46', '2020-10-29 05:55:46'),
(7, 'HBL Money Market Fund', '15,000', 'Fifteen Thousand only', 'N/A', 'Cheque', 'HBL AMC 2.jfif', 'SCBPL', '4879866', 8, '7f3c02ad-c276-444e-a951-0222746843ff', 'a2d08021-616f-460a-baeb-4e8728b8a674', '26', '2020-10-30 06:27:46', '2020-10-30 06:27:46'),
(8, 'HBL Islamic Money Market Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', '22899647.jpg', 'ABL', '6894889', 9, 'b3b5a6a4-594c-456b-bf6c-1d1a0759cbec', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-10-29 09:38:40', '2020-10-29 09:38:40'),
(9, 'HBL Money Market Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'SalesApp_UAT.jpg', 'ABL', '56454564564', 10, '7f3c02ad-c276-444e-a951-0222746843ff', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-10-29 10:25:15', '2020-10-29 10:25:15'),
(10, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '987654321', 11, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-04 12:30:56', '2020-11-04 12:30:56'),
(11, 'HBL Islamic Money Market Fund', '6,500', 'Six Thousand Five Hundred only', 'N/A', 'Cheque', 'AMC-VPS-300x250b.jpg', 'ABL', '9874563', 12, 'b3b5a6a4-594c-456b-bf6c-1d1a0759cbec', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-05 04:33:34', '2020-11-05 04:33:34'),
(12, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'IBFT_Txn.jpg', 'ABL', '3333333333', 13, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-10 05:18:33', '2020-11-10 05:18:33'),
(13, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '43324234324', 14, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-10 05:55:44', '2020-11-10 05:55:44'),
(14, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '54123145656', 15, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-10 06:06:00', '2020-11-10 06:06:00'),
(15, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '234324324324', 16, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-10 11:06:37', '2020-11-10 11:06:37'),
(16, 'HBL Cash Fund', '15,000', 'Fifteen Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '456487897', 17, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-10 14:27:57', '2020-11-10 14:27:57'),
(17, 'HBL Cash Fund', '15,000', 'Fifteen Thousand only', 'N/A', 'Cheque', 'Image1.jpg', 'ABL', '2323232232', 18, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-11 06:29:34', '2020-11-11 06:29:34'),
(18, 'HBL Money Market Fund', '20,000', 'Twenty Thousand only', 'N/A', 'Cheque', 'UHA_DAR_Selection.jpg', 'AKBL', '5698669', 19, '7f3c02ad-c276-444e-a951-0222746843ff', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2020-11-11 07:08:50', '2020-11-11 07:08:50'),
(19, 'HBL Cash Fund', '15,000', 'Fifteen Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '589632458', 20, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-12 10:39:44', '2020-11-12 10:39:44'),
(20, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '78454654', 21, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2020-11-13 12:15:22', '2020-11-13 12:15:22'),
(21, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Test.jpg', 'ABL', '1221', 24, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2021-01-07 10:55:56', '2021-01-07 10:55:56'),
(22, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '147852369', 25, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2021-01-07 11:13:38', '2021-01-07 11:13:38'),
(23, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '54654564564', 26, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2021-01-12 05:34:16', '2021-01-12 05:34:16'),
(24, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'AKBL', '69854785', 27, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-01-13 06:48:34', '2021-01-13 06:48:34'),
(25, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'AKBL', '6987412599', 28, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-01-13 09:37:40', '2021-01-13 09:37:40'),
(26, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAFL', '65456465465465', 29, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '5', '2021-01-19 09:22:06', '2021-01-19 09:22:06'),
(27, 'HBL Money Market Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAFL', '544654654', 30, '7f3c02ad-c276-444e-a951-0222746843ff', 'a2d08021-616f-460a-baeb-4e8728b8a674', '5', '2021-01-19 10:21:19', '2021-01-19 10:21:19'),
(28, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'AKBL', '34545435454', 31, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-01-19 11:26:05', '2021-01-19 11:26:05'),
(29, 'HBL Money Market Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '544546546', 32, '7f3c02ad-c276-444e-a951-0222746843ff', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2021-01-19 11:33:55', '2021-01-19 11:33:55'),
(30, 'HBL Cash Fund', '20,000', 'Twenty Thousand only', 'N/A', 'Cheque', 'QR Code.PNG', 'ALBARAKA', '5685686', 33, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '1', '2021-01-21 06:27:50', '2021-01-21 06:27:50'),
(31, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'AKBL', '6546465465454', 34, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-01-27 08:11:23', '2021-01-27 08:11:23'),
(32, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '5456465465', 35, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2021-02-04 08:36:39', '2021-02-04 08:36:39'),
(33, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Screenshot_2021-02-04-18-25-24.png', 'AKBL', '88888877777', 36, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-02-04 13:44:08', '2021-02-04 13:44:08'),
(34, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Screenshot_2021-02-08-11-59-24.png', 'BAHL', '76543', 37, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-02-09 09:43:08', '2021-02-09 09:43:08'),
(35, 'HBL Cash Fund', '25,000', 'Twenty Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ABL', '564897894', 38, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2021-02-10 07:50:15', '2021-02-10 07:50:15'),
(36, 'HBL Cash Fund', '25,000', 'Twenty Five Thousand only', 'N/A', 'Cheque', 'img.jpg', 'AKBL', '56465464465', 39, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-02-10 09:50:01', '2021-02-10 09:50:01'),
(37, 'HBL Islamic Asset Allocation Fund', '26,000', 'Twenty Six Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAHL', '65413148486', 40, '0', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-02-16 10:37:07', '2021-02-16 10:37:07'),
(38, 'HBL Islamic Income Fund', '35,000', 'Thirty Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BBL', '56564654564', 41, '0', 'a2d08021-616f-460a-baeb-4e8728b8a674', '7', '2021-02-16 14:03:29', '2021-02-16 14:03:29'),
(39, 'HBL Islamic Stock Fund', '50,000', 'Fifty Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'AKBL', '87897979', 42, 'bd88210e-813e-4914-babe-79d9ec750a4c', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-02-16 15:01:38', '2021-02-16 15:01:38'),
(40, 'HBL Multi Asset Fund', '100,000', 'One Hundred Thousand only', 'N/A', 'Cheque', 'img.jpg', 'BAHL', '989887785454', 43, 'c96a022a-1a76-44d1-9662-3656882709a1', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-02-17 05:46:08', '2021-02-17 05:46:08'),
(41, 'HBL Government Securities Fund', '50,000', 'Fifty Thousand only', 'N/A', 'Cheque', 'img.jpg', 'BAHL', '545648967', 44, 'a219f1e0-ab18-455c-b9ef-79c5956d8068', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-02-17 06:05:30', '2021-02-17 06:05:30'),
(42, 'HBL Financial Planning Fund - Conservative Allocation Plan', '50,000', 'Fifty Thousand only', 'N/A', 'Cheque', 'img.jpg', 'BAHL', '32234', 45, '5ffd8887-684c-403e-8cf5-a448ada5221a', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-02-18 09:50:39', '2021-02-18 09:50:39'),
(43, 'HBL Financial Planning Fund - Conservative Allocation Plan', '50,000', 'Fifty Thousand only', 'N/A', 'Cheque', 'img.jpg', 'AKBL', '897456456', 47, '5ffd8887-684c-403e-8cf5-a448ada5221a', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-02-19 08:43:55', '2021-02-19 08:43:55'),
(44, 'HBL Islamic Asset Allocation Fund', '26,000', 'Twenty Six Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'ALBARAKA', '87897979', 48, 'ee48ac97-b65b-416c-9156-796c73b1221c', 'a2d08021-616f-460a-baeb-4e8728b8a674', '1', '2021-02-19 10:18:45', '2021-02-19 10:18:45'),
(45, 'HBL Financial Planning Fund - Conservative Allocation Plan', '50,000', 'Fifty Thousand only', 'N/A', 'Cheque', 'img.jpg', 'ABL', '8974454', 50, '5ffd8887-684c-403e-8cf5-a448ada5221a', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2021-02-22 07:39:17', '2021-02-22 07:39:17'),
(46, 'HBL Islamic Asset Allocation Fund', '35,000', 'Thirty Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAHL', '454343242', 51, 'ee48ac97-b65b-416c-9156-796c73b1221c', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-02-23 07:58:28', '2021-02-23 07:58:28'),
(47, 'HBL Islamic Income Fund', '50,000', 'Fifty Thousand only', 'N/A', 'Cheque', 'img.jpg', 'AKBL', '4324332', 52, '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-02-23 09:58:01', '2021-02-23 09:58:01'),
(48, 'HBL Income Fund', '37,000', 'Thirty Seven Thousand only', 'N/A', 'Cheque', 'img.jpg', 'ABL', '233243555', 54, '9e94adef-6f33-4dd4-98a4-6b6487276c86', 'a2d08021-616f-460a-baeb-4e8728b8a674', '2', '2021-02-23 11:49:03', '2021-02-23 11:49:03'),
(49, 'HBL Equity Fund', '38,000', 'Thirty Eight Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAHL', '87954564', 55, '220e1089-73ed-4f44-8225-61418ae9d29a', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-02-24 07:27:37', '2021-02-24 07:27:37'),
(50, 'HBL Equity Fund', '36,000', 'Thirty Six Thousand only', 'N/A', 'Cheque', 'img.jpg', 'BAFL', '55666+', 56, '220e1089-73ed-4f44-8225-61418ae9d29a', 'a2d08021-616f-460a-baeb-4e8728b8a674', '5', '2021-02-25 06:00:28', '2021-02-25 06:00:28'),
(51, 'HBL Cash Fund', '36,000', 'Thirty Six Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAFL', '5877888', 59, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '5', '2021-02-25 11:27:39', '2021-02-25 11:27:39'),
(52, 'HBL Government Securities Fund', '36,000', 'Thirty Six Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAFL', '5454545', 60, 'a219f1e0-ab18-455c-b9ef-79c5956d8068', 'a2d08021-616f-460a-baeb-4e8728b8a674', '5', '2021-02-25 11:50:09', '2021-02-25 11:50:09'),
(53, 'HBL Islamic Income Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'img.jpg', 'AKBL', '8779789', 61, '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-02-26 07:37:42', '2021-02-26 07:37:42'),
(54, 'HBL Financial Planning Fund - Conservative Allocation Plan', '15,000', 'Fifteen Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAHL', '65989656', 63, '5ffd8887-684c-403e-8cf5-a448ada5221a', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-03-01 05:51:47', '2021-03-01 05:51:47'),
(55, 'HBL Government Securities Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'img.jpg', 'BAFL', '2132564897', 65, 'a219f1e0-ab18-455c-b9ef-79c5956d8068', 'a2d08021-616f-460a-baeb-4e8728b8a674', '5', '2021-03-01 12:18:25', '2021-03-01 12:18:25'),
(56, 'HBL Islamic Income Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'img.jpg', 'BAHL', '5675465787', 66, '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-03-02 06:32:03', '2021-03-02 06:32:03'),
(57, 'HBL Income Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAFL', '8561231', 67, '9e94adef-6f33-4dd4-98a4-6b6487276c86', 'a2d08021-616f-460a-baeb-4e8728b8a674', '5', '2021-03-02 11:06:06', '2021-03-02 11:06:06'),
(58, 'HBL Cash Fund', '1,000', 'One Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAHL', '5675465787', 68, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-03-02 12:30:33', '2021-03-02 12:30:33'),
(59, 'HBL Islamic Income Fund', '15,000', 'Fifteen Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAHL', '248486513', 69, '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-03-03 10:01:58', '2021-03-03 10:01:58'),
(60, 'HBL Income Fund', '15,000', 'Fifteen Thousand only', 'N/A', 'Cheque', 'img.jpg', 'BAFL', '897564564', 70, '9e94adef-6f33-4dd4-98a4-6b6487276c86', 'a2d08021-616f-460a-baeb-4e8728b8a674', '5', '2021-03-04 06:11:03', '2021-03-04 06:11:03'),
(61, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'img.jpg', 'AKBL', '98654564', 71, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-03-04 06:43:17', '2021-03-04 06:43:17'),
(62, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'img.jpg', 'BAFL', '521321', 72, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '5', '2021-03-08 05:50:20', '2021-03-08 05:50:20'),
(63, 'HBL Money Market Fund', '9,999', 'Nine Thousand Nine Hundred Ninety Nine only', 'N/A', 'Cheque', 'Error.jpg', 'AKBL', '5646874', 73, '7f3c02ad-c276-444e-a951-0222746843ff', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-03-10 11:14:53', '2021-03-10 11:14:53'),
(64, 'HBL Islamic Income Fund', '1,500', 'One Thousand Five Hundred only', 'N/A', 'Cheque', 'img.jpg', 'AKBL', '65412385478', 74, '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'a2d08021-616f-460a-baeb-4e8728b8a674', '3', '2021-03-11 09:32:05', '2021-03-11 09:32:05'),
(65, 'HBL Cash Fund', '10,000', 'Ten Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAHL', '65756567567', 75, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-03-11 11:48:48', '2021-03-11 11:48:48'),
(66, 'HBL Islamic Asset Allocation Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'img.jpg', 'BAHL', '89754456', 76, 'ee48ac97-b65b-416c-9156-796c73b1221c', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-03-15 05:38:29', '2021-03-15 05:38:29'),
(67, 'HBL Cash Fund', '5,000', 'Five Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAHL', '89787897', 77, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-03-15 06:35:34', '2021-03-15 06:35:34'),
(68, 'HBL Money Market Fund', '2,000', 'Two Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BAHL', '234332432', 78, '7f3c02ad-c276-444e-a951-0222746843ff', 'a2d08021-616f-460a-baeb-4e8728b8a674', '4', '2021-03-15 07:42:45', '2021-03-15 07:42:45'),
(69, 'HBL Money Market Fund', '2,000', 'Two Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BIPL', '568787411356', 79, '7f3c02ad-c276-444e-a951-0222746843ff', 'a2d08021-616f-460a-baeb-4e8728b8a674', '6', '2021-03-17 08:05:09', '2021-03-17 08:05:09'),
(70, 'HBL Cash Fund', '1,000', 'One Thousand only', 'N/A', 'Cheque', 'Error.jpg', 'BIPL', '564564564564', 80, '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'a2d08021-616f-460a-baeb-4e8728b8a674', '6', '2021-03-31 14:09:19', '2021-03-31 14:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

DROP TABLE IF EXISTS `lead`;
CREATE TABLE IF NOT EXISTS `lead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seller_email` varchar(191) NOT NULL,
  `client_name` varchar(191) DEFAULT NULL,
  `client_email` varchar(191) DEFAULT NULL,
  `client_number` varchar(191) DEFAULT NULL,
  `client_cnic` varchar(255) NOT NULL,
  `location` varchar(191) DEFAULT NULL,
  `fund` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mf`
--

DROP TABLE IF EXISTS `mf`;
CREATE TABLE IF NOT EXISTS `mf` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mf`
--

INSERT INTO `mf` (`id`, `title`, `f1`, `f2`, `f3`, `f4`, `created_at`, `updated_at`) VALUES
(1, 'What Are Mutual Funds?', 'A mutual fund is an investment vehicle comprising a pool of funds collected from many investors for the purpose of investing in securities such as stocks, bonds, money market instruments, securities, treasury notes and other capital market instruments.', 'All assets of the mutual fund are held by an independent trustee (such as CDC) and the asset management company only serves as a portfolio manager for the mutual fund.', 'Investors who purchase units of a mutual fund are its unit‐holders.', 'Mutual funds distribute 90% of their realized income to its unit‐holders at the time of dividend pay‐out (once every quarter or at times, once a year).', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_23_174642_create_bank_details_table', 1),
(2, '2019_09_23_174933_create_investment_details_table', 1),
(3, '2019_09_23_180051_create_forms_table', 1),
(4, '2019_09_25_175306_create_fields_table', 1),
(5, '2019_12_03_135243_create_fatca_details_table', 1),
(6, '2019_12_03_135519_create_customers_table', 1),
(7, '2019_12_03_170014_create_other_details_table', 2),
(8, '2019_12_03_174913_create_fatca_details_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `other_details`
--

DROP TABLE IF EXISTS `other_details`;
CREATE TABLE IF NOT EXISTS `other_details` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `asf` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dpo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_units` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `asf_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_details`
--

INSERT INTO `other_details` (`id`, `asf`, `dpo`, `type_of_units`, `customer_id`, `asf_id`, `created_at`, `updated_at`) VALUES
(1, 'Quarterly', 'Cash', 'NA', 1, '238b79ea-f543-43ed-9c22-6006b1466047', '2020-10-06 13:44:52', '2020-10-06 13:44:52'),
(2, 'Quarterly', 'Cash', 'NA', 2, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-10-07 06:37:13', '2020-10-07 06:37:13'),
(3, 'Yearly', 'Cash', 'NA', 3, '238b79ea-f543-43ed-9c22-6006b1466047', '2020-10-22 11:34:44', '2020-10-22 11:34:44'),
(4, 'Yearly', 'Cash', 'NA', 5, '238b79ea-f543-43ed-9c22-6006b1466047', '2020-10-22 11:54:30', '2020-10-22 11:54:30'),
(5, 'Quarterly', 'Cash', 'NA', 6, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-10-23 07:02:51', '2020-10-23 07:02:51'),
(6, 'Quarterly', 'Cash', 'NA', 7, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-10-29 05:55:47', '2020-10-29 05:55:47'),
(7, 'Quarterly', 'Cash', 'NA', 8, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-10-30 06:27:47', '2020-10-30 06:27:47'),
(8, 'Monthly', 'Cash', 'NA', 9, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2020-10-29 09:38:40', '2020-10-29 09:38:40'),
(9, 'Monthly', 'Cash', 'NA', 10, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2020-10-29 10:25:16', '2020-10-29 10:25:16'),
(10, 'Monthly', 'Cash', 'NA', 11, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2020-11-04 12:30:56', '2020-11-04 12:30:56'),
(11, 'Quarterly', 'Cash', 'NA', 12, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-11-05 04:33:34', '2020-11-05 04:33:34'),
(12, 'Quarterly', 'Cash', 'NA', 13, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-11-10 05:18:34', '2020-11-10 05:18:34'),
(13, 'Monthly', 'Cash', 'NA', 14, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2020-11-10 05:55:45', '2020-11-10 05:55:45'),
(14, 'Quarterly', 'Cash', 'NA', 15, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-11-10 06:06:01', '2020-11-10 06:06:01'),
(15, 'Quarterly', 'Cash', 'NA', 16, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-11-10 11:06:37', '2020-11-10 11:06:37'),
(16, 'Yearly', 'Cash', 'NA', 17, '238b79ea-f543-43ed-9c22-6006b1466047', '2020-11-10 14:27:57', '2020-11-10 14:27:57'),
(17, 'Monthly', 'Cash', 'NA', 18, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2020-11-11 06:29:34', '2020-11-11 06:29:34'),
(18, 'Quarterly', 'Cash', 'NA', 19, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-11-11 07:08:50', '2020-11-11 07:08:50'),
(19, 'Quarterly', 'Cash', 'NA', 20, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2020-11-12 10:39:44', '2020-11-12 10:39:44'),
(20, 'Monthly', 'Cash', 'NA', 21, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2020-11-13 12:15:23', '2020-11-13 12:15:23'),
(21, 'Yearly', 'Cash', 'NA', 24, '238b79ea-f543-43ed-9c22-6006b1466047', '2021-01-07 10:55:56', '2021-01-07 10:55:56'),
(22, 'Quarterly', 'Cash', 'NA', 25, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-01-07 11:13:38', '2021-01-07 11:13:38'),
(23, 'Monthly', 'Cash', 'NA', 26, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-01-12 05:34:17', '2021-01-12 05:34:17'),
(24, 'Monthly', 'Cash', 'NA', 27, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-01-13 06:48:34', '2021-01-13 06:48:34'),
(25, 'Monthly', 'Cash', 'NA', 28, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-01-13 09:37:40', '2021-01-13 09:37:40'),
(26, 'Monthly', 'Cash', 'NA', 29, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-01-19 09:22:06', '2021-01-19 09:22:06'),
(27, 'Quarterly', 'Reinvestment (Net of applicable taxes)', 'growth', 30, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-01-19 10:21:19', '2021-01-19 10:21:19'),
(28, 'Quarterly', 'Reinvestment (Net of applicable taxes)', 'growth', 31, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-01-19 11:26:05', '2021-01-19 11:26:05'),
(29, 'Yearly', 'Cash', 'NA', 32, '238b79ea-f543-43ed-9c22-6006b1466047', '2021-01-19 11:33:55', '2021-01-19 11:33:55'),
(30, 'Quarterly', 'Cash', 'NA', 33, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-01-21 06:27:51', '2021-01-21 06:27:51'),
(31, 'Quarterly', 'Cash', 'NA', 34, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-01-27 08:11:24', '2021-01-27 08:11:24'),
(32, 'Quarterly', 'Cash', 'NA', 35, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-04 08:36:40', '2021-02-04 08:36:40'),
(33, 'Monthly', 'Cash', 'NA', 36, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-02-04 13:44:08', '2021-02-04 13:44:08'),
(34, 'Quarterly', 'Cash', 'NA', 37, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-09 09:43:09', '2021-02-09 09:43:09'),
(35, 'Quarterly', 'Cash', 'NA', 38, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-10 07:50:16', '2021-02-10 07:50:16'),
(36, 'Quarterly', 'Cash', 'NA', 39, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-10 09:50:01', '2021-02-10 09:50:01'),
(37, 'Quarterly', 'Cash', 'NA', 40, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-16 10:37:07', '2021-02-16 10:37:07'),
(38, 'Monthly', 'Reinvestment (Net of applicable taxes)', 'growth', 41, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-02-16 14:03:30', '2021-02-16 14:03:30'),
(39, 'Quarterly', 'Cash', 'NA', 42, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-16 15:01:38', '2021-02-16 15:01:38'),
(40, 'Monthly', 'Cash', 'NA', 43, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-02-17 05:46:08', '2021-02-17 05:46:08'),
(41, 'Monthly', 'Cash', 'NA', 44, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-02-17 06:05:31', '2021-02-17 06:05:31'),
(42, 'Quarterly', 'Cash', 'NA', 45, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-18 09:50:39', '2021-02-18 09:50:39'),
(43, 'Monthly', 'Cash', 'NA', 47, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-02-19 08:43:56', '2021-02-19 08:43:56'),
(44, 'Quarterly', 'Cash', 'NA', 48, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-19 10:18:45', '2021-02-19 10:18:45'),
(45, 'Quarterly', 'Cash', 'NA', 50, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-22 07:39:17', '2021-02-22 07:39:17'),
(46, 'Quarterly', 'Cash', 'NA', 51, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-23 07:58:29', '2021-02-23 07:58:29'),
(47, 'Quarterly', 'Cash', 'NA', 52, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-23 09:58:03', '2021-02-23 09:58:03'),
(48, 'Quarterly', 'Cash', 'NA', 54, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-23 11:49:03', '2021-02-23 11:49:03'),
(49, 'Monthly', 'Cash', 'NA', 55, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-02-24 07:27:37', '2021-02-24 07:27:37'),
(50, 'Quarterly', 'Cash', 'NA', 56, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-25 06:00:29', '2021-02-25 06:00:29'),
(51, 'Monthly', 'Cash', 'NA', 59, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-02-25 11:27:39', '2021-02-25 11:27:39'),
(52, 'Quarterly', 'Cash', 'NA', 60, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-02-25 11:50:09', '2021-02-25 11:50:09'),
(53, 'Monthly', 'Cash', 'NA', 61, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-02-26 07:37:43', '2021-02-26 07:37:43'),
(54, 'Quarterly', 'Cash', 'NA', 63, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-01 05:51:48', '2021-03-01 05:51:48'),
(55, 'Quarterly', 'Cash', 'NA', 65, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-01 12:18:25', '2021-03-01 12:18:25'),
(56, 'Monthly', 'Cash', 'NA', 66, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-03-02 06:32:03', '2021-03-02 06:32:03'),
(57, 'Monthly', 'Cash', 'NA', 67, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-03-02 11:06:06', '2021-03-02 11:06:06'),
(58, 'Monthly', 'Cash', 'NA', 68, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-03-02 12:30:33', '2021-03-02 12:30:33'),
(59, 'Quarterly', 'Cash', 'NA', 69, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-03 10:01:59', '2021-03-03 10:01:59'),
(60, 'Quarterly', 'Cash', 'NA', 70, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-04 06:11:03', '2021-03-04 06:11:03'),
(61, 'Quarterly', 'Cash', 'NA', 71, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-04 06:43:17', '2021-03-04 06:43:17'),
(62, 'Monthly', 'Cash', 'NA', 72, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-03-08 05:50:20', '2021-03-08 05:50:20'),
(63, 'Quarterly', 'Cash', 'NA', 73, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-10 11:14:53', '2021-03-10 11:14:53'),
(64, 'Quarterly', 'Cash', 'NA', 74, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-11 09:32:05', '2021-03-11 09:32:05'),
(65, 'Quarterly', 'Cash', 'NA', 75, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-11 11:48:49', '2021-03-11 11:48:49'),
(66, 'Monthly', 'Cash', 'NA', 76, '2f6bb10a-1563-4b38-92f5-0e790cf37417', '2021-03-15 05:38:29', '2021-03-15 05:38:29'),
(67, 'Quarterly', 'Cash', 'NA', 77, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-15 06:35:34', '2021-03-15 06:35:34'),
(68, 'Quarterly', 'Cash', 'NA', 78, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-15 07:42:45', '2021-03-15 07:42:45'),
(69, 'Quarterly', 'Cash', 'NA', 79, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-17 08:05:09', '2021-03-17 08:05:09'),
(70, 'Quarterly', 'Cash', 'NA', 80, '2907c971-9429-45bf-b4bd-59f184ab21a8', '2021-03-31 14:09:20', '2021-03-31 14:09:20');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
CREATE TABLE IF NOT EXISTS `returns` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `risks`
--

DROP TABLE IF EXISTS `risks`;
CREATE TABLE IF NOT EXISTS `risks` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `client_cnic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'empty',
  `location` text COLLATE utf8mb4_unicode_ci,
  `choosen_fund` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choosen_fund_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `irf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crf` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decision` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pushed` tinyint(1) NOT NULL DEFAULT '0',
  `userScore` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `risks`
--

INSERT INTO `risks` (`id`, `client_name`, `client_email`, `client_number`, `client_cnic`, `location`, `choosen_fund`, `choosen_fund_id`, `irf`, `crf`, `decision`, `user_id`, `created_at`, `updated_at`, `pushed`, `userScore`) VALUES
(1, 'Hameed', 'muhammad.younus@hblasset.com', '923126655447', '77777-8885555-9', 'C 1 Block 9 Clifton, Karachi Karachi South', 'HBL Government Securities Fund', '', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-15 12:47:36', '2021-02-15 12:47:36', 1, '-1'),
(2, 'Wasiq', 'muhammad.younus@hblasset.com', '923335555666', '33333-6666666-9', 'C 1 Block 9 Clifton, Karachi Karachi South', 'HBL Islamic Asset Allocation Fund', '', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-16 10:00:16', '2021-02-16 10:00:16', 1, '-5'),
(3, 'Saqib', 'saqib123@hblasset.com', '923127777888', '66666-5555544-3', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Islamic Income Fund', '', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-16 13:58:16', '2021-02-16 13:58:16', 1, '4'),
(4, 'Muzammil', 'muhammad.younus@hblasset.com', '923345588996', '11111-9999999-8', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Islamic Stock Fund', 'bd88210e-813e-4914-babe-79d9ec750a4c', 'HBL Islamic Stock Fund,HBL Islamic Equity Fund,HBL Islamic Dedicated Fund,HBL Islamic Financial Planning Fund - Active Allocation Plan', 'HBL Stock Fund,HBL Equity Fund,HBL Energy Fund,HBL Growth Fund,HBL Investment Fund,HBL Multi Asset Fund,HBL Financial Planning Fund - Active Allocation Plan', 'I agree I will go with above recommended product', 84, '2021-02-16 14:57:58', '2021-02-16 14:57:58', 1, '8'),
(5, 'Nadir', 'muhammad.younus@hblasset.com', '923456666555', '44444-8888888-9', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Multi Asset Fund', 'c96a022a-1a76-44d1-9662-3656882709a1', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-02-17 05:27:23', '2021-02-17 05:27:23', 1, '4'),
(6, 'Zuhaib', 'muhammad.younus@hblasset.com', '923026666544', '11111-5555555-8', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Government Securities Fund', 'a219f1e0-ab18-455c-b9ef-79c5956d8068', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-17 06:02:55', '2021-02-17 06:02:55', 1, '-2'),
(7, 'Salman Munir', 'salman@hblasset.com', '923215544447', '66666-8877888-5', 'Foundation Public School Karachi Cantonment Karachi South, Karachi City Sindh', 'HBL Stock Fund', 'b3535ff7-f0fa-4047-9942-244d30986d41', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-02-18 06:23:58', '2021-02-18 06:23:58', 1, '0'),
(8, 'Safdar Khan', 'safdar@hblasset.com', '923125555669', '44444-8888888-9', 'Foundation Public School Karachi Cantonment Karachi South, Karachi City Sindh', 'HBL Energy Fund', 'bfa0e1b2-92c8-42fc-ad82-06635027c86e', NULL, 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-02-18 06:49:05', '2021-02-18 06:49:05', 1, '-3'),
(9, 'AAmir', 'aamir@hblasset.com', '923149999888', '22222-9999999-8', 'Foundation Public School Karachi Cantonment Karachi South, Karachi City Sindh', 'HBL Income Fund', '9e94adef-6f33-4dd4-98a4-6b6487276c86', NULL, 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-18 06:50:53', '2021-02-18 06:50:53', 1, '-1'),
(10, 'Ilyas', 'ilyas@hblasset.com', '923339999665', '55555-8888888-2', 'Foundation Public School Karachi Cantonment Karachi South, Karachi City Sindh', 'HBL Stock Fund', 'b3535ff7-f0fa-4047-9942-244d30986d41', NULL, 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-02-18 07:41:39', '2021-02-18 07:41:39', 1, '0'),
(11, 'Sameer', 'salman@hblasset.com', '923215555888', '66666-5555544-3', 'Foundation Public School Karachi Cantonment Karachi South, Karachi City Sindh', 'HBL Government Securities Fund', 'a219f1e0-ab18-455c-b9ef-79c5956d8068', NULL, 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-02-18 07:45:09', '2021-02-18 07:45:09', 0, '2'),
(12, 'Majid', 'majid@hblasset.com', '923015555625', '44554-9999999-9', 'Foundation Public School Karachi Cantonment Karachi South, Karachi City Sindh', 'HBL Financial Planning Fund - Conservative Allocation Plan', '5ffd8887-684c-403e-8cf5-a448ada5221a', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-18 09:40:38', '2021-02-18 09:40:38', 0, '-1'),
(13, 'Adeel', 'muhammad.younus@hblasset.com', '923145566556', '66556-9999888-7', 'Foundation Public School Karachi Cantonment Karachi South, Karachi City Sindh', 'HBL Income Fund', '9e94adef-6f33-4dd4-98a4-6b6487276c86', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-19 05:11:55', '2021-02-19 05:11:55', 0, '-2'),
(14, 'Nabeel', 'muhammad.younus@hblasset.com', '923102255669', '66556-7778844-8', 'Foundation Public School Karachi Cantonment Karachi South, Karachi City Sindh', 'HBL Financial Planning Fund - Conservative Allocation Plan', '5ffd8887-684c-403e-8cf5-a448ada5221a', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-19 05:50:20', '2021-02-19 05:50:20', 0, '4'),
(15, 'Umair', 'muhammad.younus@hblasset.com', '923215458548', '66665-6666666-3', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Islamic Asset Allocation Fund', 'ee48ac97-b65b-416c-9156-796c73b1221c', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-19 09:53:43', '2021-02-19 09:53:43', 0, '-4'),
(16, 'Moiz Abdul Majeed', 'moiz.majeed@hblasset.com', '03333630010', '4200048851609', NULL, 'HBL Equity Fund', '220e1089-73ed-4f44-8225-61418ae9d29a', NULL, 'HBL Cash Fund,HBL Money Market Fund', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-02-19 11:35:18', '2021-02-19 11:35:18', 0, '-16'),
(17, 'Hanif', 'muhammad.younus@hblasset.com', '923456655556', '55665-7777888-9', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Financial Planning Fund - Conservative Allocation Plan', '5ffd8887-684c-403e-8cf5-a448ada5221a', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-22 07:35:31', '2021-02-22 07:35:31', 0, '-4'),
(18, 'Shakeel', 'muhammad.younus@hblasset.com', '923452255663', '55445-9999888-7', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Islamic Asset Allocation Fund', 'ee48ac97-b65b-416c-9156-796c73b1221c', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-23 07:55:14', '2021-02-23 07:55:14', 0, '-2'),
(19, 'Abid', 'muhammad.younus@hblasset.com', '923109966669', '66666-7777888-9', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Islamic Income Fund', '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-23 09:55:51', '2021-02-23 09:55:51', 0, '-2'),
(20, 'test', 'test@gmail.com', '26789113', '689421012778', NULL, 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', NULL, 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-02-23 10:27:07', '2021-02-23 10:27:07', 0, '-16'),
(21, 'testA', 'testA@gmail.com', '1234568910', '768742127701', NULL, 'HBL Money Market Fund', '7f3c02ad-c276-444e-a951-0222746843ff', NULL, 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-02-23 10:32:59', '2021-02-23 10:32:59', 0, '-16'),
(22, 'testA', 'testB@gmail.com', '12345789', '1234567890123', NULL, 'HBL Money Market Fund', '7f3c02ad-c276-444e-a951-0222746843ff', NULL, 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-02-23 10:36:01', '2021-02-23 10:36:01', 0, '-16'),
(23, 'Jibran', 'muhammad.younus@hblasset.com', '923015555441', '44558-9996666-8', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Government Securities Fund', 'a219f1e0-ab18-455c-b9ef-79c5956d8068', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-23 10:55:35', '2021-02-23 10:55:35', 0, '-2'),
(24, 'Sohail', 'muhammad.younus@hblasset.com', '923016699885', '66553-9998888-7', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Income Fund', '9e94adef-6f33-4dd4-98a4-6b6487276c86', NULL, 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-23 11:32:59', '2021-02-23 11:32:59', 0, '-3'),
(25, 'Akber', 'muhammad.younus@hblasset.com', '923015555664', '55555-6644778-9', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Money Market Fund', '7f3c02ad-c276-444e-a951-0222746843ff', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-02-24 06:50:54', '2021-02-24 06:50:54', 0, '-7'),
(26, 'Imam Dino', 'imam.dino@hblasset.com', '923015556998', '55665-7777888-9', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Equity Fund', '220e1089-73ed-4f44-8225-61418ae9d29a', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-02-24 07:16:19', '2021-02-24 07:16:19', 0, '-1'),
(27, 'Saeed', 'muhammad.younus@hblasset.com', '923005544554', '66332-4477889-3', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Equity Fund', '220e1089-73ed-4f44-8225-61418ae9d29a', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-02-24 07:18:46', '2021-02-24 07:18:46', 0, '-3'),
(28, 'Taufeeq', 'muhammad.younus@hblasset.com', '923215544778', '22253-6666555-9', 'Fifth Avenue Block 5 Clifton, Karachi Karachi South', 'HBL Equity Fund', '220e1089-73ed-4f44-8225-61418ae9d29a', NULL, 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-02-24 10:06:20', '2021-02-24 10:06:20', 0, '-1'),
(29, 'Khalid', 'muhammad.younus@hblasset.com', '923214455667', '56465-4646556-4', 'Fifth Avenue Block 5 Clifton, Karachi Karachi South', 'HBL Income Fund', '9e94adef-6f33-4dd4-98a4-6b6487276c86', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-25 08:30:17', '2021-02-25 08:30:17', 0, '-1'),
(30, 'Waheed', 'muhammad.younus@hblasset.com', '923452222336', '54879-8653221-2', 'Fifth Avenue Block 5 Clifton, Karachi Karachi South', 'HBL Islamic Asset Allocation Fund', 'ee48ac97-b65b-416c-9156-796c73b1221c', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-25 09:54:02', '2021-02-25 09:54:02', 0, '0'),
(31, 'Moin', 'muhammad.younus@hblasset.com', '923142233665', '21215-4548787-8', 'Fifth Avenue Block 5 Clifton, Karachi Karachi South', 'HBL Government Securities Fund', 'a219f1e0-ab18-455c-b9ef-79c5956d8068', NULL, 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-25 11:48:18', '2021-02-25 11:48:18', 0, '0'),
(32, 'Akram', 'muhammad.younus@hblasset.com', '923145566998', '54562-3135878-9', 'Fifth Avenue Block 5 Clifton, Karachi Karachi South', 'HBL Islamic Income Fund', '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-02-26 07:35:59', '2021-02-26 07:35:59', 0, '-2'),
(33, 'Farrukh', 'muhammad.younus@hblasset.com', '923015454889', '71398-5245657-8', NULL, 'HBL Islamic Income Fund', '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', NULL, 'I agree I will go with above recommended product', 84, '2021-02-26 14:56:22', '2021-02-26 14:56:22', 0, '0'),
(34, 'Shahrukh', 'muhammad.younus@hblasset.com', '923015469875', '54542-1236987-1', NULL, 'HBL Financial Planning Fund - Conservative Allocation Plan', '5ffd8887-684c-403e-8cf5-a448ada5221a', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-03-01 05:48:51', '2021-03-01 05:48:51', 0, '0'),
(35, 'Hashim', 'muhammad.younus@hblasset.com', '923046655998', '54545-8789896-5', NULL, 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-01 05:55:33', '2021-03-01 05:55:33', 0, '-8'),
(36, 'Akhter', 'muhammad.younus@hblasset.com', '923235462102', '58745-8965455-6', NULL, 'HBL Islamic Income Fund', '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-03-01 10:23:43', '2021-03-01 10:23:43', 0, '-5'),
(37, 'Sarfaraz', 'muhammad.younus@hblasset.com', '923125566998', '88996-6332211-4', NULL, 'HBL Government Securities Fund', 'a219f1e0-ab18-455c-b9ef-79c5956d8068', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-03-01 12:02:48', '2021-03-01 12:02:48', 0, '-4'),
(38, 'Danish', 'muhammad.younus@hblasset.com', '923215487963', '58236-9741258-9', NULL, 'HBL Income Fund', '9e94adef-6f33-4dd4-98a4-6b6487276c86', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-03-02 11:01:54', '2021-03-02 11:01:54', 0, '-4'),
(39, 'Uzair', 'muhammad.younus@hblasset.com', '923420158963', '34896-2541258-9', NULL, 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-02 11:58:54', '2021-03-02 11:58:54', 0, '-7'),
(40, 'tes', 'teeest@gmail.com', '212244444444', '42789-6558997-4', NULL, 'HBL Money Market Fund', '7f3c02ad-c276-444e-a951-0222746843ff', NULL, 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-03 08:46:08', '2021-03-03 08:46:08', 0, '-16'),
(41, 'Azeem', 'muhammad.younus@hblasset.com', '923032255661', '55552-6666665-8', NULL, 'HBL Islamic Income Fund', '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-03-03 09:56:29', '2021-03-03 09:56:29', 0, '-2'),
(42, 'test', 'teeest@gmail.com', '92310232658', '46464-6464646-4', NULL, 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', NULL, 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-03 11:22:58', '2021-03-03 11:22:58', 0, '-16'),
(43, 'Wahid', 'muhammad.younus@hblasset.com', '923025544889', '54846-2123133-6', NULL, 'HBL Income Fund', '9e94adef-6f33-4dd4-98a4-6b6487276c86', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-03-04 06:09:09', '2021-03-04 06:09:09', 0, '-3'),
(44, 'Hasnain', 'muhammad.younus@hblasset.com', '923032125487', '87654-2131564-6', NULL, 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-04 06:40:48', '2021-03-04 06:40:48', 0, '-7'),
(45, 'Hanif', 'muhammad.younus@hblasset.com', '923226548965', '36528-7458965-2', NULL, 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-08 05:46:05', '2021-03-08 05:46:05', 0, '-6'),
(46, 'Tauseef', 'muhammad.younus@hblasset.com', '923125544873', '21548-7986532-5', NULL, 'HBL Income Fund', '9e94adef-6f33-4dd4-98a4-6b6487276c86', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-03-10 10:02:10', '2021-03-10 10:02:10', 0, '-4'),
(47, 'Mohsin', 'muhammad.younus@hblasset.com', '923456858954', '55885-2211447-7', NULL, 'HBL Money Market Fund', '7f3c02ad-c276-444e-a951-0222746843ff', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-10 10:37:19', '2021-03-10 10:37:19', 0, '-7'),
(48, 'Jamal', 'muhammad.younus@hblasset.com', '923225544778', '55874-1258963-5', NULL, 'HBL Islamic Income Fund', '4b5c7ae8-39b5-485b-a6d9-53763d2a77c2', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-03-11 09:29:13', '2021-03-11 09:29:13', 0, '-5'),
(49, 'Jibran', 'muhammad.younus@hblasset.com', '923010776655', '65656-5656566-6', NULL, 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I Disagree and Choose Another Product at My Own Risk', 84, '2021-03-11 11:33:23', '2021-03-11 11:33:23', 0, '-3'),
(50, 'Zohaib', 'muhammad.younus@hblasset.com', '923405566589', '21545-5555556-8', NULL, 'HBL Islamic Asset Allocation Fund', 'ee48ac97-b65b-416c-9156-796c73b1221c', 'HBL Islamic Asset Allocation Fund,HBL Islamic Income Fund,HBL Islamic Financial Planning Fund - Conservative Allocation Plan', 'HBL Income Fund,HBL Government Securities Fund,HBL Financial Planning Fund - Conservative Allocation Plan,HBL Financial Planning Fund - Special Income Plan', 'I agree I will go with above recommended product', 84, '2021-03-15 05:31:50', '2021-03-15 05:31:50', 0, '-4'),
(51, 'Azeem', 'muhammad.younus@hblasset.com', '923124447777', '66969-9897654-5', NULL, 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-15 06:33:09', '2021-03-15 06:33:09', 0, '-8'),
(52, 'Azeem', 'muhammad.younus@hblasset.com', '923124447777', '66969-9897654-5', NULL, 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-15 06:33:09', '2021-03-15 06:33:09', 0, '-8'),
(53, 'Mansoor', 'muhammad.younus@hblasset.com', '923034477885', '55448-8996212-3', NULL, 'HBL Money Market Fund', '7f3c02ad-c276-444e-a951-0222746843ff', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-15 07:40:08', '2021-03-15 07:40:08', 0, '-6'),
(54, 'Fareed', 'muhammad.younus@hblasset.com', '923012255889', '21546-4564654-5', NULL, 'HBL Money Market Fund', '7f3c02ad-c276-444e-a951-0222746843ff', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-17 07:54:44', '2021-03-17 07:54:44', 0, '-8'),
(55, 'Shafiq', 'muhammad.younus@hblasset.com', '923215478784', '54112-2213213-1', '6 5th Zamzama Street Defence V, Defence Housing Authority Karachi', 'HBL Cash Fund', '5a8e05d4-ca56-4897-8ec7-fb930a4f32d4', 'HBL Islamic Money Market Fund', 'HBL Cash Fund,HBL Money Market Fund', 'I agree I will go with above recommended product', 84, '2021-03-31 14:06:58', '2021-03-31 14:06:58', 0, '-7');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `role_title`, `created_at`, `updated_at`) VALUES
(0, 'admin', 'Admin', NULL, NULL),
(1, 'user', 'Sales', NULL, NULL),
(2, 'super_admin', 'Super Admin', NULL, NULL),
(3, 'retail_admin', 'Retail Admin', NULL, NULL),
(4, 'retail_user', 'Retail User', NULL, NULL),
(5, 'cbc', 'cbc', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rp_count`
--

DROP TABLE IF EXISTS `rp_count`;
CREATE TABLE IF NOT EXISTS `rp_count` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `counts` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rp_count`
--

INSERT INTO `rp_count` (`id`, `counts`) VALUES
(1, 211);

-- --------------------------------------------------------

--
-- Table structure for table `sc_yr`
--

DROP TABLE IF EXISTS `sc_yr`;
CREATE TABLE IF NOT EXISTS `sc_yr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yr` varchar(191) DEFAULT NULL,
  `chart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sc_yr`
--

INSERT INTO `sc_yr` (`id`, `yr`, `chart_id`) VALUES
(1, '2013', 1),
(2, '2013', 2);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Sponsers', '<p>HBL was the first commercial bank to be established in Pakistan in 1947.&nbsp;<br /><br />The Government of Pakistan privatized HBL in 2004 through which AKFED acquired 51% of the Bank\'s shareholding and the management control.&nbsp;<br /><br />Current network is over 1,600 branches and 1,700 ATMs globally and a customer base exceeding eight million relationships.<br />&nbsp;&nbsp;<br />HBL is the Largest bank by:<br />Deposits<br />Balance sheet<br />Capital<br />Profitability&nbsp;<br /><br />With a global presence in over 25 countries spanning across four continents,&nbsp;&nbsp;HBL is also the largest domestic multinational.&nbsp;<br /><br />HBL is rated AAA by JCR-VIS.&nbsp;</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sponsers`
--

DROP TABLE IF EXISTS `sponsers`;
CREATE TABLE IF NOT EXISTS `sponsers` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f6` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sponsers`
--

INSERT INTO `sponsers` (`id`, `title`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `created_at`, `updated_at`) VALUES
(1, 'Sponsor', 'HBL was the first commercial bank to be established in Pakistan in 1947.', 'The Government of Pakistan privatized HBL in 2004 through which AKFED acquired 51% of the Bank\'s shareholding and the management control.', 'Current network is over 1,600 branches and 1,700 ATMs globally and a customer base exceeding eight million relationships.', 'HBL is the Largest bank by: <br />\r\nDeposits <br />\r\nBalance sheet <br />\r\nCapital', 'With a global presence in over 25 countries spanning across four continents,  HBL is also the largest domestic multinational.', 'HBL is rated AAA by JCR-VIS.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sponsor_chart_1`
--

DROP TABLE IF EXISTS `sponsor_chart_1`;
CREATE TABLE IF NOT EXISTS `sponsor_chart_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sc_1_nums` varchar(500) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  `sort_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sponsor_chart_1`
--

INSERT INTO `sponsor_chart_1` (`id`, `sc_1_nums`, `bank_id`, `sort_id`) VALUES
(23, '8549', 1, 1),
(24, '9357', 1, 1),
(25, '9434', 1, 1),
(32, '5778', 1, 1),
(33, '3478', 1, 1),
(34, '3503', 2, 2),
(35, '9345', 2, 2),
(36, '3045', 2, 2),
(37, '2287', 2, 2),
(38, '4059', 2, 2),
(39, '39390', 3, 3),
(40, '12000', 3, 3),
(41, '12306', 3, 3),
(42, '16006', 3, 3),
(43, '19098', 3, 3),
(44, '22000', 4, 4),
(45, '22098', 4, 4),
(46, '54000', 4, 4),
(47, '6153', 4, 4),
(48, '8003', 4, 4),
(49, '55000', 5, 5),
(50, '6153', 5, 5),
(51, '6153', 5, 5),
(52, '7687', 5, 5),
(53, '8003', 5, 5),
(60, '1234', 6, 1),
(61, '7678', 6, 1),
(62, '7678', 6, 1),
(63, '7678', 6, 1),
(64, '7678', 6, 1),
(65, '1000', 7, 2),
(66, '6153', 7, 2),
(67, '8003', 7, 2),
(68, '22000', 7, 2),
(69, '22098', 7, 2),
(70, '39390', 8, 3),
(71, '12000', 8, 3),
(72, '12306', 8, 3),
(73, '16006', 8, 3),
(74, '19098', 8, 3),
(75, '22000', 9, 4),
(76, '22098', 9, 4),
(77, '54000', 9, 4),
(78, '6153', 9, 4),
(79, '8003', 9, 4),
(80, '55000', 10, 5),
(81, '6153', 10, 5),
(82, '6153', 10, 5),
(83, '7687', 10, 5),
(84, '8003', 10, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tomf`
--

DROP TABLE IF EXISTS `tomf`;
CREATE TABLE IF NOT EXISTS `tomf` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh1f1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh1f2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f4` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f5` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh2f6` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh3f1` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh3f2` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh3f3` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tomf`
--

INSERT INTO `tomf` (`id`, `title`, `sh1`, `sh1f1`, `sh1f2`, `sh2`, `sh2f1`, `sh2f2`, `sh2f3`, `sh2f4`, `sh2f5`, `sh2f6`, `sh3`, `sh3f1`, `sh3f2`, `sh3f3`, `created_at`, `updated_at`) VALUES
(1, 'Types Of Mutual Funds', 'By Structure', 'Open End Funds: These units are issued and redeemed by the Management Company', 'Closed End Funds: Only traded at the Stock Exchange and are not redeemable', 'By Investment Objective', 'Money Market Funds: Invest in most liquid securities e.g., Bank Deposits, Treasury bills etc.', 'Growth Funds – Equity Funds: Invest in Equity Securities', 'Income Funds / Debt Funds: Invest in longer term Government & Corporate Bonds.', 'Balanced Funds: Invest in both Fixed Income and Equity Securities', 'Asset Allocation Funds: Usually specifies the percentage of investment in equity and Fixed Income Securities.', 'Capital Protected Funds: Guarantees the protection of capital through different methodologies.', 'Special Funds', 'Shariah Compliant Funds:All assets are Shariah Compliant with the approval of Shariah Advisor', 'Sector Specific Funds: Invest only in the sector that is described in offering document', 'Govt. Securities Funds: Invest in Government bonds both short term and long term.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `agent_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `agent_code`) VALUES
(11, 'Ahsan Hassan', 'Ahsan.Hassan@hblasset.com', '$2y$10$UX0AE0reACRetROWp1fCXOqiUqdL7nZPQWw6mlZb0xHIE/roguid.', '5k11wC0t9pR170VkYmYKd9E5cbY8hXnAmispZaK1wpqrBsHCGidz1v7gN9Eu', '2018-07-09 02:50:44', '2018-07-09 02:50:44', 0, NULL),
(15, 'MUstafa Subhani', 'mustafa.subhani@hblasset.com', '$2y$10$GcoEeqmRiftYTCy7nTUxL.tZN4NOXgqkqBCiIE6nJLRiBbHiJwNi6', NULL, '2018-07-23 16:35:08', '2018-07-23 16:35:08', 1, 'Agent-15'),
(16, 'Mohammad Noman', 'muhammad.noman@hblasset.com', '$2y$10$9kZaz2.kHAXWvrqz6VnI0.LfJfPyIlyyrEB.NqemAgmao8dicRLqO', NULL, '2018-07-23 16:38:15', '2018-07-23 16:38:15', 1, 'Agent-16'),
(18, 'Tayyab Javed', 'tayyab.javed@hblasset.com', '$2y$10$u4Ssk55uOn8BY0U9ntYrIeaiMha3xZOmWemzUre6uwEU2WojueIvS', NULL, '2018-07-23 16:40:15', '2018-07-23 16:40:15', 1, 'Agent-18'),
(19, 'Sarmad Iqbal', 'sarmad.iqbal@hblasset.com', '$2y$10$Ot5LwxWYUV3hxv4SZXtdBejYTpDquH3OboWzw7JVQbneOq4bz5B5y', NULL, '2018-07-23 16:41:38', '2018-07-23 16:41:38', 1, 'Agent-19'),
(21, 'Gohar Ayub', 'gohar.ayub@hblasset.com', '$2y$10$cjNzHjSN1bdBTjAJpPKBXOafNkZsbTLKBrlNbEcroh6m3j5rrjrgq', NULL, '2018-07-23 16:42:41', '2018-07-23 16:42:41', 1, 'Agent-21'),
(22, 'Tahir Bin Yousuf', 'tahir.yousuf@hblasset.com', '$2y$10$.OJKbmrReNJ0FXWbhJdufuxbbpCs./HrhfZbCa1GMuIN4VFg30mmC', NULL, '2018-07-23 16:43:16', '2018-07-23 16:43:16', 1, 'Agent-22'),
(23, 'Ali Babar Syed', 'babar.syed@hblasset.com', '$2y$10$/jIeV6lrP3.NBCeQVPL0jOsM0KSYXHYOQv/yqpxJV/tRf7LRJMhna', 'HijzFSB7gHZkrIj5N53B4Y9xjns7FpiIGiCjPJATRgQWYdATN172iO0SVNIs', '2018-07-23 16:44:41', '2018-07-23 16:44:41', 1, 'Agent-23'),
(24, 'Waleed Minhaj', 'waleed.minhaj@hblasset.com', '$2y$10$I1X18k1gdYGCQ92lMZh2BuwhApMuVgQFFSUKkLGajIOL9EGMM3m6K', NULL, '2018-07-23 16:45:09', '2018-07-23 16:45:09', 1, 'Agent-24'),
(25, 'Muhib Khan', 'Muhib.khan@hblasset.com', '$2y$10$rusH0qAlWD2et2UDnC8/aOl2VWPZiQaAM22F3sdbVFzBBjBMSg1iG', 'FlQ3tKsyYsXxQmZxEQbxwjNWGrQ2GpKzpMPl2krajOU8JIHKzasjoHl9jVpJ', '2018-07-23 16:45:58', '2018-07-23 16:45:58', 1, 'Agent-25'),
(26, 'Murtaza Jafri', 'murtuza.jafri@hblasset.com', '$2y$10$mfqbIRf7woG7J6q9kh9WT.099vXnUj4kbdvn7KQXSgPbtiIlGKpEm', NULL, '2018-07-23 16:47:03', '2018-07-23 16:47:03', 1, 'Agent-26'),
(29, 'Meheboob Ali Solangi', 'mehboob.solangi@hblasset.com', '$2y$10$mXS/BclRKgzT/LdsT8PNEebf1S9ymk5.H/3zB8GkJLIiGqG4b3yn2', NULL, '2018-07-23 16:48:48', '2018-07-23 16:48:48', 1, 'Agent-29'),
(30, 'Raheel Khawer', 'raheel.khawer@hblasset.com', '$2y$12$FqVd76xuRhgfCoA.0b.Z7.p1Ukf.5UIqfV42vMBgGm7vgeqBkPvZO', '1UDCK7YKDZASRlMwqF15bPOZj44U1FsytrHej4Pir2r8QjiSLipyaL3KvmKw', '2018-07-23 16:49:43', '2018-07-23 16:49:43', 1, 'Agent-30'),
(31, 'Mubashir Azhar', 'mubashir.azhar@hblasset.com', '$2y$10$rWqj9cq9/GWijdfyhcDpp.EoYZM103nFw30ew45Vwv9/4wzgTxRXi', 'WXvmd1TOHrQZAhLKYSy1KHSJCQGjWU3NJogoFAGd3m55nXQmRNjQVg7ylwVg', '2018-07-23 16:50:18', '2018-07-23 16:50:18', 1, 'Agent-31'),
(33, 'Arsalan Ashraf', 'marsalan.ashraf@hblasset.com', '$2y$10$wQAkHu5V0vMMYz07gXjbmOg9zEDSxNnhKY28UJf8xr73YYQ2yVFZ2', 'JECZwrR2AyBGEsCFy0YMrur6wMBCyTzS4gLoNltKnvdjQQZwNPKoXeaAjK7h', '2018-07-23 16:56:02', '2018-07-23 16:56:02', 1, 'Agent-33'),
(34, 'Muhammad Shafique', 'muhammad.shafique@hblasset.com', '$2y$10$TgDGMLbxgQ2VvVCkjOHFeO.6FD/SUkMqlnBvIZTKKNToDDz93nj8G', NULL, '2018-07-23 16:58:18', '2018-07-23 16:58:18', 1, 'Agent-34'),
(35, 'Faiq Alam', 'faiq.alam@hblasset.com', '$2y$10$JHI3/WDwDolx.zjlUPPvfeWv2.UwJlvQiG8VJ83cd6Yox/zRAY/ZK', NULL, '2018-07-23 17:03:29', '2018-07-23 17:03:29', 1, 'Agent-35'),
(36, 'Zainab Mubeen', 'zainab.mubeen@hblasset.com', '$2y$10$TdRSbM42of6BQVEkZT/YOOdgWVIFOHVBXW23FPHlZbuHZS8ngElIy', NULL, '2018-07-23 17:04:02', '2018-07-23 17:04:02', 1, 'Agent-36'),
(37, 'Jahanzaib Ahmed Siddiqui', 'jahanzaib.siddiqui@hblasset.com', '$2y$10$KHDkHpBiP/PMrLblZxRK3eE8e2hwDpyz0Ao0MaxB8/aGsCmCmnz3m', NULL, '2018-07-23 17:04:56', '2018-07-23 17:04:56', 1, 'Agent-37'),
(38, 'Shaikh Muhammad Yasir bashir', 'yasir.bashir@hblasset.com', '$2y$10$ST1bBkxmGQkor/LGew8.s.sl65WtozmT6/OkXmQTBNW4EDU/cnz5e', 'cuJ3JjCcMnt2JUEFvXi7OnuNztTfI62nxvBveaLkkQklDdyaLW0pOATdTbCc', '2018-07-23 17:06:08', '2018-07-23 17:06:08', 1, 'Agent-38'),
(39, 'Muhammad Farhan Khan', 'Mfarhan.khan@hblasset.com', '$2y$10$e0BzRbdZEu8sdC/p1GqxmeYMff7W5m2jdWrcS/8rRfkvXK7vGeLVC', NULL, '2018-07-23 17:07:00', '2018-07-23 17:07:00', 1, 'Agent-39'),
(41, 'Amjad Hussain Phull', 'amjad.hussain@hblasset.com', '$2y$10$GvIBbqxCZ3QL8.xuwAuMwOb6WSl3hWLKGi9xZ48IZEm9BqVOsxnZO', '4KtbCYAgVLLwIvmqkIjlyvpiOjFlVpVxc4VZJF7gA558DsTzMtU2QlEAff5J', '2018-07-23 17:07:59', '2018-07-23 17:07:59', 1, 'Agent-41'),
(44, 'Sheeraz Ahmed', 'sheeraz.ahmed@hblasset.com', '$2y$10$25fp54h6T9QL2/N459Mj5OoAyLrGYA/w0JEQuSrIx8/z6mN/CTNtm', 'QmbP8cUYxOExXfIde0Zjkr7U7zc6f6MEndLtgRod26oI46qTfiDEVIKku56M', '2018-07-24 14:38:14', '2018-07-24 14:38:14', 1, 'Agent-44'),
(47, 'Muhammad Imran', 'muhammad.imran1@hblasset.com', '$2y$10$x0PHU9X3tmvA1faMZq73GeVb2NsEw7ppuAaOlmZ8g4T/W2yP6vmFm', NULL, '2018-08-15 13:17:38', '2018-08-15 13:17:38', 1, 'Agent-47'),
(48, 'Shahzeb Aziz', 'shahzeb.aziz@hblasset.com', '$2y$10$aialkMApczjdGgjkmsrfw.yyfqkhkEraG33ZI8aeo4ULT3/Rkcixa', NULL, '2018-08-15 13:18:51', '2018-08-15 13:18:51', 1, 'Agent-48'),
(49, 'Fiaz Ahmed Khan', 'fiaz.ahmed@hblasset.com', '$2y$10$aPW.YgnFSxAd9ewD..hIxuxCHYRB0JHsBloXJzctQX6SirQ.ahKR2', 'hPeJXD139lc1cifDxFZtY1yCkKCWHs1fSgU5xxewtrTB5dqtll76UwF5XVSX', '2018-08-15 13:19:48', '2018-08-15 13:19:48', 1, 'Agent-49'),
(50, 'Zeeshan Tahir', 'zeeshan.tahir@hblasset.com', '$2y$10$6pDCgxzKUZ528GoUTOuCFOdC2sFYk3ocdDWd0qovzUl2ksnOqU0dq', NULL, '2018-08-15 13:24:35', '2018-08-15 13:24:35', 1, 'Agent-50'),
(51, 'Shahzad Ul Haq', 'shahzad.haq@hblasset.com', '$2y$10$Y/25kjN3BA2lWMFdvPA0aOKg3RG2eSjgIiLFPJ51lsBcLbjJJEcKK', NULL, '2018-08-15 13:25:23', '2018-08-15 13:25:23', 1, 'Agent-51'),
(52, 'Saad Zaman', 'saad.zaman@hblasset.com', '$2y$10$pRkIggrYT1Qc8yg5Vogj2eeJACFKD/Y9T4rgSZx8Bj46TCA1e5hXW', 'JSyidhPMOtIGf7XRRW9kKzgTjFZzkm0YUgYhNyNkyQXKnC5S7YMLc2urWfIM', '2018-08-15 13:26:24', '2018-08-15 13:26:24', 1, 'Agent-52'),
(53, 'Ali Raza Zaidi', 'ali.raza@hblasset.com', '$2y$10$BbnsFGXZtjApxW7OjSd5eODeBd1ACipKErrG3DxhR1wI1ySGTgSpa', 'nnHG9C1lOQLosFSRi3ia0kkaagRkDBhCf1QUAOhVpCkPtCFNMhn6GmRBWcOc', '2018-08-15 17:09:25', '2018-08-15 17:09:25', 1, 'Agent-53'),
(54, 'Ali Raza', 'ali.naqvi@hblasset.com', '$2y$10$FXcvPg5VUxIto5yVDvAG9ub1ZT1efVpdcV77nDOvLDFld.wCv2o1C', 'kbEDNsSU8tdeW2FNK80cRsKWjFCqDQEYvvPmCKJ79WYLWUGrUyPVk7Sth2S8', '2018-08-15 17:10:35', '2018-08-15 17:10:35', 1, 'Agent-54'),
(56, 'Ehtisham Junaidi', 'ehtisham.junaidi@hblasset.com', '$2y$10$jj0hvJDIOEoVPziDpx6l4uz9dLRTDqDOk7nOcL.ABmxuCtQXFeNZW', NULL, '2018-09-04 14:35:49', '2018-09-04 14:35:49', 1, 'Agent-56\r\n'),
(57, 'francis.gill', 'master@erp.com', '$2y$10$UX0AE0reACRetROWp1fCXOqiUqdL7nZPQWw6mlZb0xHIE/roguid.', 'Xjz4cKpxmrQxsz9fJzmADqFBmeZAyAB0BQ46cl8Dg9EJwpzN3USr9Z1IkccS', '2018-09-05 12:01:58', '2018-09-05 12:01:58', 2, NULL),
(58, 'Imran Tariq', 'imran.tariq@hblasset.com', '$2y$10$6LCIYtsQfd4fgtfQc9J94.o5aMQCpugaBotRA/6A3Dw0FeFUdECeq', NULL, '2018-09-18 13:27:59', '2018-09-18 13:27:59', 1, 'Agent-58\r\n'),
(59, 'Amir Khan', 'amir.khan@hblasset.com', '$2y$10$UX0AE0reACRetROWp1fCXOqiUqdL7nZPQWw6mlZb0xHIE/roguid.', 'gXvOjVd735Qk3yhBkIyPXkHrMQHx5eQHYOpwUgkfWQTeFTe3AUIvh38wUe5U', '2018-10-04 01:20:28', '2018-10-04 01:20:28', 1, 'Agent-59\r\n'),
(60, 'omair.inam', 'omair.inam@hblasset.com', '$2y$10$UX0AE0reACRetROWp1fCXOqiUqdL7nZPQWw6mlZb0xHIE/roguid.', 's7fLcEABihvQnYdPKy84WSlF4h7vE524NVcmDi0KWCFCU062H56p1hH1T0iW', '2018-11-27 02:47:15', '2018-11-27 02:47:15', 2, NULL),
(77, 'francis', 'francisgill1000@gmail.com', '$2y$10$UX0AE0reACRetROWp1fCXOqiUqdL7nZPQWw6mlZb0xHIE/roguid.', 'VwMqmbsex7h4jCMoVpE3RvIITDl0tyt1FD4pxYr4xf4ol6T3g4V7vDOHU656', '2020-08-18 23:26:57', '2020-08-18 23:26:57', 5, NULL),
(78, 'Qaiser', 'qaiserinfolive@gmail.com', '$2y$10$tUw7xaeKuG7AgqsOy4pol.g1cvVHMyRq/gP6JCkk3MoUTPItHLuaG', 'wZol5yRLeATFsrNKqMIFGEbGxgsFHXzxVpE1LwibrFl35fztdXK3Vt9yPzQB', '2020-08-18 23:27:55', '2020-08-18 23:27:55', 1, 'Agent-78\r\n\r\n'),
(79, 'Nihal', 'nihal.muqri@hblasset.com', '$2y$10$0NLbHFrx2W7qv0LE6jDiz.qgpvlLX/Pj8blH7D8HpjtAjIH5R7W6a', 'cPA95LmuCyRiXYzrdojlTqubqn5FEKD2xApPwkYRwvTXS6kp4HQheloUpz1d', '2020-08-18 23:32:12', '2020-08-18 23:32:12', 3, ''),
(81, 'shaheedRU', 'hafiz.shaheed@orangeroomdigital.com', '$2y$10$r9kR6s8gaC5bEbfxcWEO4usyMrcG/CVOFi.bjZluTfNMNn243JNXe', 'VYQvwZjdfE0XtKNWwHyIQkhAdUPTgdtevVqzSNFQXr9sQcRTzTbAcHxLN1VC', '2020-08-18 23:42:13', '2020-08-18 23:42:13', 3, NULL),
(84, 'Inayat Hussain', 'inayat.hussain@hblasset.com', '$2y$10$UX0AE0reACRetROWp1fCXOqiUqdL7nZPQWw6mlZb0xHIE/roguid.', 'qnRIuDqjWbfvazlq2TIUZJreMFQ9hCu0i5GDK5b9WquVcvKHz4zZdYM4leVO', '2020-10-29 12:12:51', '2020-10-29 12:12:51', 1, 'Agent-190'),
(85, 'shahid', 'shaheedkhan336@gmail.com', '$2y$10$UX0AE0reACRetROWp1fCXOqiUqdL7nZPQWw6mlZb0xHIE/roguid.', 'qrjeKFPsuKd6Z5BMASTl0jT7UiR6nqVlPnEksPGG0JjRuq6ZN78W4UuZBVGf', '2021-02-26 13:24:21', '2021-02-26 13:24:21', 4, NULL),
(86, 'Salman', 'salman@hblasset.com', '$2y$10$yXqNW3o9vSdlbPPTa6yyDOUNlsZZmDlWo7yPfEw0SiuaHMjTz3cC2', 'PDEWlkwIYy1AMl7xcceXfx6nd1Ncxywh2L9snihXIdTGLfcyDzeTxQe35fpq', '2021-03-17 12:16:50', '2021-03-17 12:16:50', 3, NULL),
(87, 'Younas', 'younus@hblasset.com', '$2y$10$daugJsVVOXX64JpaUtW.I.BqI83EdPF4uJjhD7I/87T2MA0pWPsvi', 'lJfM8bv5AzU56ksorUGNFiYSBLzSWWI3u1mL3UF7x1KgyzbPJkQQ68rR5hUM', '2021-03-17 12:18:27', '2021-03-17 12:18:27', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
CREATE TABLE IF NOT EXISTS `views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `update_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `count`, `user_id`, `update_at`) VALUES
(1, '4', 57, '2021-03-17'),
(2, '1', 67, NULL),
(3, '2', 75, '2020-08-19'),
(4, '2', 77, '2020-09-02'),
(5, '1', 78, NULL),
(6, '136', 84, '2021-04-01'),
(7, '15', 11, '2021-03-11'),
(8, '1', 86, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `welcome`
--

DROP TABLE IF EXISTS `welcome`;
CREATE TABLE IF NOT EXISTS `welcome` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `welcome`
--

INSERT INTO `welcome` (`id`, `date`) VALUES
(1, 'February, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `ytp`
--

DROP TABLE IF EXISTS `ytp`;
CREATE TABLE IF NOT EXISTS `ytp` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f1` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f2` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f3` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f4` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f5` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ytp`
--

INSERT INTO `ytp` (`id`, `title`, `sh`, `f1`, `f2`, `f3`, `f4`, `f5`, `created_at`, `updated_at`) VALUES
(1, 'Your Trusted Partner', 'WHY HBL SHOULD BE YOUR PREFERRED PARTNER?', 'HBL Asset Management Limited (HBL AML) is backed by the largest and strongest \r\nFinancial institution of Pakistan which boasts of 75 years of rich and successful \r\nhistory. The franchise is associated with trust and credibility for our investors in \r\nmore than 25 countries that their savings are in safe hands.', 'We provide a seamless financial experience to our clients in partnership with HBL. \r\nThe entire product suite ranging from bank accounts to cash management and saving plans available under one umbrella.', 'We manage one of the largest equity portfolios in the country with a size of over Rs 21.12 billion. \r\nOur mutual funds have a demonstrated track record of over 10 years of superior returns.', 'No conflicts and no third parties involved as we take pride in providing all services in-house. \r\nOur experienced research team provides detailed equity and economic reports.', 'An experienced management team boasting exposure of both local and international markets.', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
