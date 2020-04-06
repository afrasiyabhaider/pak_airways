-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2020 at 06:00 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pak_airways`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `passport_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `users_id`, `passport_no`, `city`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 9, 'PK5', 'Beckerfurt', NULL, NULL, NULL),
(2, 2, 'PK2', 'North Jerelmouth', NULL, NULL, NULL),
(3, 1, 'PK7', 'North Jettie', NULL, NULL, NULL),
(4, 5, 'PK6', 'Vidalview', NULL, NULL, NULL),
(5, 10, 'PK8', 'Westside', NULL, NULL, NULL),
(6, 6, 'PK3', 'East Jackyfurt', NULL, NULL, NULL),
(7, 7, 'PK9', 'Parisianport', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_flights`
--

CREATE TABLE `customer_flights` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customers_id` bigint(20) UNSIGNED NOT NULL,
  `flight_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `from` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_passenger` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_flights`
--

INSERT INTO `customer_flights` (`id`, `customers_id`, `flight_no`, `departure_time`, `arrival_time`, `from`, `to`, `no_of_passenger`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 5, 'PK-3', '07:59:15', '06:06:04', 'Ornton', 'Orlandoport', 1, 300, NULL, NULL),
(2, 4, 'PK-5', '09:04:56', '05:28:11', 'Rosamondberg', 'Kshlerinbury', 2, 300, NULL, NULL),
(3, 6, 'PK-3', '20:40:09', '19:11:05', 'Pasqualeshire', 'Shanahanside', 2, 200, NULL, NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `flight_seats`
--

CREATE TABLE `flight_seats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_flights_id` bigint(20) UNSIGNED NOT NULL,
  `seat_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `singleseat_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flight_seats`
--

INSERT INTO `flight_seats` (`id`, `customer_flights_id`, `seat_no`, `singleseat_price`, `created_at`, `updated_at`) VALUES
(1, 1, 'PK-1', 300, NULL, NULL),
(2, 3, 'PK-2', 300, NULL, NULL),
(3, 2, 'PK-1', 100, NULL, NULL),
(4, 3, 'PK-6', 200, NULL, NULL),
(5, 2, 'PK-1', 200, NULL, NULL),
(6, 1, 'PK-1', 100, NULL, NULL);

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
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_03_23_162130_create_staff_table', 1),
(5, '2020_03_24_105918_create_customers_table', 2),
(6, '2020_03_24_172246_create_customer_flights_table', 3),
(7, '2020_03_30_112730_create_flight_seats_table', 4),
(8, '2020_03_30_114935_create_packages_table', 5),
(9, '2020_03_30_120935_create_package_items_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('Umrah','Hajj') COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrip[tion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `type`, `descrip[tion`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hajj', 'Detail of the Packages of hajj and umrah discount offer', NULL, NULL, NULL),
(2, 'Hajj', 'Detail of the Packages of hajj and umrah from & to offer', NULL, NULL, NULL),
(3, 'Umrah', 'Detail of the Packages of hajj and umrah from & to offer', NULL, NULL, NULL),
(4, 'Hajj', 'Detail of the Packages of hajj and umrah discount offer', NULL, NULL, NULL),
(5, 'Hajj', 'Detail of the Packages of hajj and umrah discount offer', NULL, NULL, NULL),
(6, 'Hajj', 'Detail of the Packages of hajj and umrah from & to offer', NULL, NULL, NULL),
(7, 'Umrah', 'Detail of the Packages of hajj and umrah discount offer', NULL, NULL, NULL),
(8, 'Umrah', 'Detail of the Packages of hajj and umrah from & to offer', NULL, NULL, NULL),
(9, 'Umrah', 'Detail of the Packages of hajj and umrah discount offer', NULL, NULL, NULL),
(10, 'Hajj', 'Detail of the Packages of hajj and umrah from & to offer', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_items`
--

CREATE TABLE `package_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `packages_id` bigint(20) UNSIGNED NOT NULL,
  `price` int(11) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_items`
--

INSERT INTO `package_items` (`id`, `packages_id`, `price`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, 2, 30000, '2014-04-01', '2002-01-27', NULL, NULL),
(2, 4, 30000, '2015-09-28', '1985-01-22', NULL, NULL),
(3, 8, 30000, '1982-05-15', '2002-09-02', NULL, NULL),
(4, 10, 20000, '2009-01-31', '2019-12-23', NULL, NULL),
(5, 7, 65000, '1983-04-15', '2005-01-05', NULL, NULL),
(6, 3, 30000, '1979-03-30', '1987-04-29', NULL, NULL),
(7, 5, 65000, '2014-01-11', '1977-03-18', NULL, NULL),
(8, 9, 30000, '1985-10-15', '2018-04-11', NULL, NULL),
(9, 1, 20000, '1986-12-31', '1997-11-11', NULL, NULL),
(10, 6, 30000, '1985-04-06', '2010-06-27', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `designation` enum('Manager','CEO','Operator','Others') COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_id` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `users_id`, `designation`, `employee_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 'Operator', 'PA-2', '2020-03-23 16:41:53', NULL, NULL),
(2, 3, 'Manager', 'PA-1', '2020-03-23 16:41:53', NULL, NULL),
(3, 4, 'Others', 'PA-3', '2020-03-23 16:41:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('Staff','Customer') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cnic` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('Male','Female','Other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `email`, `password`, `image`, `cnic`, `phone_number`, `address`, `gender`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Brown Johnson', 'Customer', 'gschuppe@example.com', '$2y$10$uf39T7hDFSvNli/A0fe5k.wYbEEL.0IyZXkH.kkQXc4c25ewvBNDm', 'img/test.png', '34201-1234456-6', '(696) 851-8176', '4021 Ernie Camp Suite 685\nWest Ceceliatown, CA 16370', 'Female', '2020-03-23 16:41:52', NULL, NULL),
(2, 'Miss Gertrude Von', 'Customer', 'ayden57@example.org', '$2y$10$T7Jgnx6HpT8.n8v4Nz9XiuQjbd/p1V/QI9BtX.8lpzlofvxO5kmX2', 'img/test.png', '34201-1234456-7', '+13129168480', '3618 Johnny Circles Suite 814\nEast Faustoberg, FL 63858-6144', 'Female', '2020-03-23 16:41:52', NULL, NULL),
(3, 'Prof. Forrest Satterfield DDS', 'Staff', 'romaguera.alexzander@example.com', '$2y$10$wue7pR3OF3wZVrmgfLeEcuKBe76.56t7vQ4jf3nWYFi85mBuNxE3y', 'img/test.png', '34201-1234456-5', '+1 (983) 610-0663', '11438 Eloise Squares\nConnermouth, GA 47606', 'Male', '2020-03-23 16:41:52', NULL, NULL),
(4, 'Dr. Kamren Feil', 'Staff', 'afriesen@example.org', '$2y$10$f0gn1sfriyrdeVTh/BXy9OOt/PBJNfREUuEPQOQ1pA6t9P9y0rZ9u', 'img/test.png', '34201-1234456-9', '+19634818651', '69389 Johns Trail Suite 245\nNorth Lorenahaven, MS 83257', 'Other', '2020-03-23 16:41:52', NULL, NULL),
(5, 'Keegan Heaney', 'Customer', 'ibraun@example.org', '$2y$10$rt2KW6wkZW35CQPR/XR5lOgl50xCqDzWWqI5WmyRAkgV3lHvvJHO2', 'img/test.png', '34201-1234456-1', '+1-382-730-6333', '495 Dibbert Corners\nSouth Danialport, MN 44078', 'Female', '2020-03-23 16:41:53', NULL, NULL),
(6, 'Elfrieda Miller', 'Customer', 'hermann.kelvin@example.org', '$2y$10$rClrVNvvo6HKpYYY9eGMje3.Qss/65gqpP50lDL0RTt.x7FLcpdsi', 'img/test.png', '34201-1234456-0', '676.756.8696', '247 Hunter Trace\nLeoshire, HI 08280-0105', 'Female', '2020-03-23 16:41:53', NULL, NULL),
(7, 'Enola Kutch', 'Customer', 'lilla71@example.org', '$2y$10$yhZt8ICErDoY/MAftc74keoOkzZCX4woMg92hxAuf06PY5e5gccLW', 'img/test.png', '34201-1234456-8', '1-332-362-2599 x612', '3949 Miller Pine\nNolanville, DC 82037-9921', 'Female', '2020-03-23 16:41:53', NULL, NULL),
(8, 'Bailey Lehner', 'Staff', 'zflatley@example.net', '$2y$10$L0oWpMhRdjtH.5F9.rd17.O2sFOIwrlkOo3Am1UIx.lw9barT2XUi', 'img/test.png', '34201-1234456-3', '895.731.1948 x557', '49183 Kris Key Suite 106\nNorth Alayna, TX 50917-0828', 'Male', '2020-03-23 16:41:53', NULL, NULL),
(9, 'Mrs. Marion Ebert IV', 'Customer', 'ojerde@example.com', '$2y$10$xKxAHc9C1UL0wFpcBoNrF.gpjbL/kHQYCx7v8O60nZ1LxGrUW99Lq', 'img/test.png', '34201-1234456-4', '535-974-0895', '259 Schmitt Trail\nAlexandreland, AZ 74860', 'Other', '2020-03-23 16:41:53', NULL, NULL),
(10, 'Alexandro Zemlak', 'Customer', 'bkilback@example.com', '$2y$10$JH.W9EExYqK2HPdbwFVc/uU.ARYD3DB.uOV29nkkT.ArdZmWc.kSm', 'img/test.png', '34201-1234456-2', '509-208-9879 x0339', '671 Gerhold Shore Apt. 864\nNorth Alivia, OH 60549', 'Other', '2020-03-23 16:41:53', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_passport_no_unique` (`passport_no`),
  ADD KEY `customers_users_id_foreign` (`users_id`);

--
-- Indexes for table `customer_flights`
--
ALTER TABLE `customer_flights`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_flights_customers_id_foreign` (`customers_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_seats`
--
ALTER TABLE `flight_seats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `flight_seats_customer_flights_id_foreign` (`customer_flights_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_items`
--
ALTER TABLE `package_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_items_packages_id_foreign` (`packages_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staffs_employee_id_unique` (`employee_id`),
  ADD KEY `staffs_users_id_foreign` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_cnic_unique` (`cnic`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customer_flights`
--
ALTER TABLE `customer_flights`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flight_seats`
--
ALTER TABLE `flight_seats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `package_items`
--
ALTER TABLE `package_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_flights`
--
ALTER TABLE `customer_flights`
  ADD CONSTRAINT `customer_flights_customers_id_foreign` FOREIGN KEY (`customers_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `flight_seats`
--
ALTER TABLE `flight_seats`
  ADD CONSTRAINT `flight_seats_customer_flights_id_foreign` FOREIGN KEY (`customer_flights_id`) REFERENCES `customer_flights` (`id`);

--
-- Constraints for table `package_items`
--
ALTER TABLE `package_items`
  ADD CONSTRAINT `package_items_packages_id_foreign` FOREIGN KEY (`packages_id`) REFERENCES `packages` (`id`);

--
-- Constraints for table `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `staffs_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
