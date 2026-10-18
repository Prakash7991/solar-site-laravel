-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 12, 2026 at 06:46 PM
-- Server version: 10.11.19-MariaDB-cll-lve
-- PHP Version: 8.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_number` varchar(30) NOT NULL,
  `current_bill` decimal(12,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `name`, `email`, `mobile_number`, `current_bill`, `created_at`, `updated_at`) VALUES
(1, 'Prakash Konga', 'prakash7382012092@gmail.com', '07382012092', 2000.00, '2026-10-02 09:22:08', '2026-10-02 09:22:08'),
(2, 'welcome', 'welcome@gmail.com', '9876543210', 50000.00, '2026-10-04 22:03:59', '2026-10-04 22:03:59'),
(4, 'Giri', 'girimounis@gmail.com', '7396977505', 2500.00, '2026-10-05 12:46:29', '2026-10-05 12:46:29'),
(5, 'Ksr', 'ariseawakesaveearth@gmail.com', '7799456456', 2800.00, '2026-10-10 22:21:08', '2026-10-10 22:21:08'),
(6, 'yadagiri shamala', 'girimounis@gmail.com', '8142646915', 2500.00, '2026-10-11 07:36:47', '2026-10-11 07:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `slot` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(2, 'Nelle Houtz', 'domains@search-ssres.in', '6805242468', 'Hi\r\n\r\nList ssres.in in Google\'s Search Index and have it be displayed in Google search results!\r\n\r\nSubmit ssres.in today: indexhelper.live', '2026-10-06 02:17:27', '2026-10-06 02:17:27'),
(3, 'Rueben Bey', 'domains@search-ssres.in', '7704071194', 'Hey\r\n\r\nFeature ssres.in in Google\'s Search Index to be visible in Google search results!\r\n\r\nInclude ssres.in now: searchregister.live', '2026-10-06 03:05:48', '2026-10-06 03:05:48'),
(4, 'Christian Sandridge', 'domains@search-ssres.in', '3108986449', 'Hey\r\n\r\nFeature ssres.in in Google\'s Search Index to be visible in online search results!\r\n\r\nAdd ssres.in today: searchregister.live', '2026-10-07 01:27:30', '2026-10-07 01:27:30'),
(5, 'Dedra Bisbee', 'domains@search-ssres.in', '41061923', 'Hi\r\n\r\nAdd ssres.in in Google\'s Search Index and have it appear in online search results!\r\n\r\nInclude ssres.in now: indexregister.live', '2026-10-08 00:59:21', '2026-10-08 00:59:21'),
(6, 'Anja Pressley', 'domains@search-ssres.in', '6613304668', 'Hi\r\n\r\nRegister ssres.in in Google\'s Search Index and have it be visible in online search results!\r\n\r\nAdd ssres.in now: indexhelper.live', '2026-10-08 02:13:12', '2026-10-08 02:13:12'),
(7, 'yadagiri shamala', 'girimounis@gmail.com', '7396977505', 'Good morning sir if i am getting electricuty bill 1500 which capacity of solay i need fro use', '2026-10-11 07:39:31', '2026-10-11 07:39:31');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_15_170423_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1SIkEkl93f6qWikJIxLiw9CTJye49SbVgOwGRgoF', NULL, '185.191.171.18', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMk9nbzg3bU55N1hIbUt0QWl3ZldlckJHang3bGlBdmlxMVIwMWJBWSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozOToiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwL2Fib3V0IjtzOjU6InJvdXRlIjtzOjExOiJmcm9udF9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791840814),
('3iZFM3EKtVt5H8LHf795SLNTY8JJ8naSaaww1zV8', NULL, '192.121.149.202', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY0Z2REs1VWw1SUM3U3NwVXNrT2FOY0pIVmVZd3BZQm9NcWRUdk84ayI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNToiaHR0cDovL3NzcmVzLmluIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791850248),
('4Raw8n0F6D0gc3Jbluxpqb5uomT2avGtb1ZF6G2Y', NULL, '34.10.6.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/126 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidTNDQ0VudmxqaUJvT3ZtbWtLSXRjNjZZR0t0bE5pQ1BoZHY0T0dmaSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly93d3cuc3NyZXMuaW4iO3M6NToicm91dGUiO3M6MTQ6ImZyb250X2hvbWVfdHdvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791783914),
('77roJKNaLEQgPgGSucbUcxX5Lslw3CLwLj3PhJY0', NULL, '15.188.26.209', 'Mozilla/5.0 (compatible; DefaultsExposed/1.0; +https://defaults.exposed/headers)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic0FheHZwWGlocmFYVkhsa0RkUWpvcVRlTUhhVVBhWDI3VmdSNmZkMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791782924),
('83NkMeKfSkboAGDihbJzFcNeKcPvOqkX2l0IfqjY', NULL, '34.10.6.94', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:126.0) Gecko/20100101 Firefox/126.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVzhzdDVnb3pmc1RVTUpVVHVoN0RSakVuN1FXMGNpSk9pOUdIa2x3eSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxOToiaHR0cDovL3d3dy5zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791783915),
('9a3FmRoqkRtzadhV7JYpe5mk755ZCNQlfI1lzZVG', NULL, '185.185.175.51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOHdrQkhab3lnTGF1NUFPcWhnaVhDbUQ0OWxidTVkUXpyR1piTEpEcSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozMzoiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791775562),
('AGY0q5CwaGPtcAIOKZ49XEEcEu4gOfBoHZ1sgiVa', NULL, '103.160.27.83', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSXN5czk2VlFsVlFFNGI2dmVOblFtT29TWXVmcFlvalRCRlNBOGNxaSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyOToiaHR0cHM6Ly93d3cuc3NyZXMuaW4vZ28tc29sYXIiO3M6NToicm91dGUiO3M6ODoiZ29fc29sYXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791855854),
('BaJWW7SidXR32ADu1lxdni1eqMfnN7y0tTnfpQYB', NULL, '85.164.37.220', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUHZTNGg3bzZoSFhNazRzYVRlSHJnUk5mVGFmMU5rWlpkZ1B3eUtoQSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozOToiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwL2Fib3V0IjtzOjU6InJvdXRlIjtzOjExOiJmcm9udF9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791775520),
('bKnG9nysKMApbHXMWrjTDAyvJ8tvSO4gRQ511nnf', NULL, '173.249.59.170', 'Mozilla/5.0 (compatible; FindgBot/1.0; +https://khojbee.com/bot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY2RBMTJrWThNMVBlU01yckd1c1pHN2hkY1BFTDhacjVOMnZlWktCdSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozMzoiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791772068),
('CbsfxDExBbwVAgFmWlGY1OadtaN7cIDXXYQV7Dg2', NULL, '172.82.65.38', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicUxZSUpIZjN4TkNHYmRyYmtsNVJOSW9aQTgyZUZhc204dndHT292UyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNjoiaHR0cHM6Ly9zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791821521),
('CYaiZfdLSXsLluWZ0AhYgzwPgIIf2b8Gno701cTu', NULL, '173.249.59.170', 'Mozilla/5.0 (compatible; FindgBot/1.0; +https://khojbee.com/bot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTzJCcVRMY2xIY2R5Z2VnaGtpSDJab0phQWd0R3JIOW8zVjRsdEtQMiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwL3NlcnZpY2UiO3M6NToicm91dGUiO3M6MTM6ImZyb250X3NlcnZpY2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791772073),
('D1OpMJwj7UvpSXQZ5P9JlZkxFYsrwZJRRyESM11A', NULL, '185.191.171.15', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRDVqWkJONDA2RGpuVzk3bGJqUVhxSVF4Q2c4dWxsVEZ4WDA4V0pGNCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwL3NlcnZpY2UiO3M6NToicm91dGUiO3M6MTM6ImZyb250X3NlcnZpY2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791850005),
('EalzLHVZXZM16zUxz4Ep9sQQpYJcFqcmd6bHbFbs', NULL, '160.34.125.54', 'ProbicLeadResearch/0.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWVNPcXkybFFJS0dTNWt6NW50SjJkZ1dVSG9hZk53MEg1SXFRUkVUZCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNjoiaHR0cHM6Ly9zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791784701),
('eGVuM1N1KRVoMKTfaVCUFQBCtOkn0LHQKKGLEEjQ', NULL, '103.70.171.247', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia2RqcHFBNHRYdXQ4ck4zR2JYZkJuQnJVU2NINk1odXFqejlNWkxRbiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo5NDoiaHR0cHM6Ly9zc3Jlcy5pbi8/X2ZpZWxkcz1pZCUyQ3NsdWcmX2pzb25wPWNhbGxiYWNrJnBlcl9wYWdlPTEwMCZyZXN0X3JvdXRlPSUyRndwJTJGdjIlMkZ1c2VycyI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791822926),
('FxTaVXrWHnIYt9InN1hpTi1XipbOeq3IDIGP1n4B', NULL, '66.249.73.167', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.8010.52 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRmNNU09GT21iR2t3S0tpSFF0ZUlEMmJ3NkNnU1IwMWhlQjJBaFZLdCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozNzoiaHR0cHM6Ly93d3cuc3NyZXMuaW4vcHVibGljL2luZGV4LnBocCI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791834537),
('Gg7QNdIdI1qiWt58bxMrKZL5HvtCi0OFUG9hmDOb', NULL, '173.249.59.170', 'Mozilla/5.0 (compatible; FindgBot/1.0; +https://khojbee.com/bot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSTJSMVVqZ3lNbTFPUThTRWdoaUVlNm1VSXBsYTF4SW5wS0s4bVNoYiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNjoiaHR0cHM6Ly9zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791772075),
('GkUFygm2jomrBHIGLt7kBRPwj4l5d97PTlknFDSI', NULL, '185.191.171.2', 'Mozilla/5.0 (compatible; SemrushBot/7~bl; +http://www.semrush.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUDU0Nm9qRzZaQ1k4SjR4Z3M3Z1RWZ3hRdjF0VkprWjNEZ1pNZ2M1eiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwL2NvbnRhY3QiO3M6NToicm91dGUiO3M6MTM6ImZyb250X2NvbnRhY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791851257),
('hG2Y5dmH8I2SKrfTIm0ke1Exb4pIABVUQYBaJ4WO', NULL, '185.33.141.183', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieWk5OXNnWFVtTjRpRGk4Q0lKN1g5TkFmTzdGVDU3VE9XRDB1RThsTSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo5NDoiaHR0cHM6Ly9zc3Jlcy5pbi8/X2ZpZWxkcz1pZCUyQ3NsdWcmX2pzb25wPWNhbGxiYWNrJnBlcl9wYWdlPTEwMCZyZXN0X3JvdXRlPSUyRndwJTJGdjIlMkZ1c2VycyI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791851592),
('hp5EwDVnqEGohgeeAgKLMVqVdP2QmMVZ8byl32Q6', NULL, '66.249.74.42', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.8010.52 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTTVIVFY0NEhJOVB0ZW85Q1J0VFZBU2QxWlh4dFJYcW5tUW4xTUlsVyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozMjoiaHR0cDovL3NzcmVzLmluL3B1YmxpYy9pbmRleC5waHAiO3M6NToicm91dGUiO3M6MTQ6ImZyb250X2hvbWVfdHdvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791807397),
('HvKfWfDNCFZf2z9yWgDZOERHh2CvQoVJkcLmHEk2', NULL, '66.249.73.166', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.8010.52 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiS0VoY2hmeE9NZ0tOZHFiamI0cWFjSFdYdjZJaFJ4T0RTekJjRUtWWSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyODoiaHR0cHM6Ly93d3cuc3NyZXMuaW4vc2VydmljZSI7czo1OiJyb3V0ZSI7czoxMzoiZnJvbnRfc2VydmljZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791830029),
('igc3t9DceGKe5xHpRAulbc9FzqqTTHSpVKwcvrGa', NULL, '140.213.10.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM3dqVERlakJ4a1p3cGJiajRMaER4bkNVYk91UmJDcUhJQ2xtM010cSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMzoiaHR0cDovL3NzcmVzLmluL3Byb2plY3QiO3M6NToicm91dGUiO3M6MTM6ImZyb250X3Byb2plY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791788466),
('IroW7wA5j0LEJO57XzLGcPr7uLm8YzMQ7EwKIDcm', NULL, '15.188.26.209', 'Mozilla/5.0 (compatible; DefaultsExposed/1.0; +https://defaults.exposed/headers)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiS3Brcm9ZVjRKNFVmcmZxMGNFaDMzNXVRZW1YQk5kOG5JY2VSVXdrTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791782924),
('J9pY2gmXWk5Iq3xYfQfOV9iArRod7jbXwaKml0RG', NULL, '82.153.249.195', 'search-engine-indexer/1.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZ3pkR1Z1dTA4eTVSc2ZRTUZVOWFkM2dTVHZldU4wSmdIRzBNV1pmZyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNToiaHR0cDovL3NzcmVzLmluIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791811061),
('k169lcJ5comJDo7uKvqnpBgAN3d7SIdJNtlZ7sqI', NULL, '220.197.30.96', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZUpyM2s1VUFSbkVWVkdTSFJTbzRMYzM5YlFadktFQTFZcGhkWWl5ayI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyODoiaHR0cHM6Ly93d3cuc3NyZXMuaW4vY29udGFjdCI7czo1OiJyb3V0ZSI7czoxMzoiZnJvbnRfY29udGFjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791812516),
('KcNGHTFx0VveV40IfM9etAWNJzC4oO4tHIR33tV4', NULL, '23.94.153.140', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_0_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.0.1 Mobile/15E148 Safari/604.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUzhJVWNNc0E2cnAyUUxKZ0lyWkZUbElpTVRRb3l2TjZiNGgxdjN4QSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNToiaHR0cDovL3NzcmVzLmluIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791775016),
('lfaSHkw3ktj1AdQYr49tYa1K4zrsQyBXEZFaVXkq', NULL, '139.162.75.45', 'WebMCPIndexBot/0.1 (+https://webmcpshield.com/bot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWx6MzcyOXo4NnNRNHRnNzFMVUo4T2l2d1c2Y3JFVVNiR2tJTXB0MCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNjoiaHR0cHM6Ly9zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791842238),
('lnGLsuQmnyXtCOAPWJLYR1lugEox77l8pClxyvQF', NULL, '35.253.74.128', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 14_5) AppleWebKit/605.1.15 Safari/605.1.15', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSzFwQkp4cDJ1Mlh5TkxPbVFQWVpFa1R5Z25MeHVCQkl4RGRsbm1ERCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly93d3cuc3NyZXMuaW4iO3M6NToicm91dGUiO3M6MTQ6ImZyb250X2hvbWVfdHdvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791776511),
('LoljecgmGyxjpZOuBIXIcLWBvXRpIcTqFkQZBcvb', NULL, '183.226.82.227', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib2ttSHZRazBVSzFsbm8yZ0hvTmF3QU94ZlZDNFRGVEVkWVhSd2tJYiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNToiaHR0cDovL3NzcmVzLmluIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791814284),
('LPBd7H9LVhUOJi5EiuJuonqvRvQeW5RIr7HOJctK', NULL, '180.252.244.171', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWTdGTmh4NWZRbndZdE1MNVJ2RTNZdlI0QlM2NGNFSkpMNlUyTndVYiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwL2NvbnRhY3QiO3M6NToicm91dGUiO3M6MTM6ImZyb250X2NvbnRhY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791775509),
('lVhX4JFqPdwXubpN6cqZqplmRPNK8aOFc7C468Pi', NULL, '181.50.235.162', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSXBjYU5oWFZ2YnpHaXJmVkREeDFpNkx2WUc2VEhNUEZqeFBtbFp2MCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozMzoiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791775522),
('mtjDmo1XM16Iz62xN2AT9ErSEh96yF5SbfCfPi5A', NULL, '104.248.127.180', 'Mozilla/5.0 (X11; Linux x86_64; rv:153.0) Gecko/20100101 Firefox/153.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia2M5WklMTXVGbHpCRjJyR0FlV2xpTUpLOHFncG9wMlZZa0E4UlBZUiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNjoiaHR0cHM6Ly9zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791795656),
('NiROmBohPhqunyKvW1HKAEvA3xbZqg7bys0DNwtO', NULL, '209.213.254.192', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic3BzQThVRElmcjQwbHVJT0lkV0oxYWVRQmhtYjVHeEpKY2tkNFhHcSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyNDoiaHR0cHM6Ly9zc3Jlcy5pbi9zZXJ2aWNlIjtzOjU6InJvdXRlIjtzOjEzOiJmcm9udF9zZXJ2aWNlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791775525),
('ns4PrHzycn9ckdhyODpGGYDe1nmVKA7T04ND3e3a', NULL, '177.39.125.144', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSTRtaVZNZzQ4dDFwTlhVWVZEcHk1NzhQT3NFU0ZwZHF1VUJUdEdLUCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNjoiaHR0cHM6Ly9zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791775563),
('OEYbYgyLXa4eYJ7lvtAb3CogEiqXOvvmvbYR0XJY', NULL, '54.251.128.73', 'python-requests/2.33.1', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRUw2U09rZ0FZRW1ETDBtRDFpTjdOR0lxMWZ5VHBqcmp4YWU4OFk5WSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791808457),
('OsVQMutRfeiDCDgVSi9GtcI1iHQDnJG4hkTSoGLp', NULL, '95.246.19.78', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidVRHS0t6eVdrYnJNSm9peHRKajkyUVhnWEk4OWZZZVZaNlNoUkplZCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwL3NlcnZpY2UiO3M6NToicm91dGUiO3M6MTM6ImZyb250X3NlcnZpY2UiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791775498),
('p5UAuhhYuxmgb4RgO0FawYBSqnZXKKEVZ9YtLqUP', NULL, '103.51.147.18', 'TMP', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSThFU3hSNGtaWHNsN0JLcW5sV215MWNqTHhGUHdxb2o3dFBwdnkxbyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly93d3cuc3NyZXMuaW4iO3M6NToicm91dGUiO3M6MTQ6ImZyb250X2hvbWVfdHdvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791812512),
('PA1yjCTDgV6sH6QzcBRa79Puz5iFyY2jJVdIqJ1v', NULL, '109.124.224.9', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMUU3ZG1DeWVJMkwyNmFzZXh4RGRWMEMwQTlDeFNqNzBBWk1sb1RvcyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo4MDoiaHR0cHM6Ly9zc3Jlcy5pbi8/X2ZpZWxkcz1zbHVnJnBhZ2U9MSZwZXJfcGFnZT0xMDAmcmVzdF9yb3V0ZT0lMkZ3cCUyRnYyJTJGdXNlcnMiO3M6NToicm91dGUiO3M6MTQ6ImZyb250X2hvbWVfdHdvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791851502),
('pfW70DtUWprwRyGvjiUj7FPouZROVq5PnTl3yb1X', NULL, '17.166.23.142', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.4 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNFdNSUhDZHMwUWhhUm5rcFJ3MWFJRXF6SWdHSHc4RTNmUW9pRTZjNyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNToiaHR0cDovL3NzcmVzLmluIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791819808),
('Q5ifXUMKiy1TLHQyOmUaQqyykXCj59edjwsPTIu1', NULL, '35.253.74.128', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 Chrome/126 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiemFxNU5NaEFDR1BLa2tzOE4wdEdmMDJPVUk0UGZROWxTdmZXRm12RiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxOToiaHR0cDovL3d3dy5zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791776511),
('RSgNM3jOTLbatz6D9nzx76LR0fu30TUJXDaI2B3X', NULL, '194.118.222.106', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia0loV2p6OXl1YnF1am1TcVZPVlJlT21ZRnExaDhlanY3eE1GeXQxQiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMjoiaHR0cHM6Ly9zc3Jlcy5pbi9hYm91dCI7czo1OiJyb3V0ZSI7czoxMToiZnJvbnRfYWJvdXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791775549),
('rYuHeAlNqO0mfaeWK7KjJouImksvi1lod1iwMkC5', NULL, '103.108.59.12', 'Mozilla/5.0 (compatible; DOMHashBot/1.0)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVUNDN0ZDdmg2T0dHZ205NGJYbnF4a1BndTZXbGJ5MGRpT3JFNGZyRiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNjoiaHR0cHM6Ly9zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791780377),
('STZdULuRljkjacdjg8OD6tm3oa9byALjL3vQxKaW', NULL, '104.248.127.180', 'Mozilla/5.0 (X11; Linux x86_64; rv:153.0) Gecko/20100101 Firefox/153.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0d3MGhCMk1oOE5USk94YnphdTczNkxTUGc4WHBhWkxtVWtJRHNNbiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNToiaHR0cDovL3NzcmVzLmluIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791795654),
('syWzMgH9dSoE5MwxuTFsvrwbht7Mgsw5I3DRnDkX', NULL, '187.35.54.11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNGd0NXhkcmRQTGF4bmplRkU3MFhQRVk3UmNSYllZeG9tUkw5VWdlUiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyNDoiaHR0cHM6Ly9zc3Jlcy5pbi9wcm9qZWN0IjtzOjU6InJvdXRlIjtzOjEzOiJmcm9udF9wcm9qZWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791775528),
('tfcNCjmWui5ReH2wfIZyLmHNbO2bdHI393LR6tNX', NULL, '57.141.16.114', 'meta-externalads/1.1 (+https://developers.facebook.com/docs/sharing/webmasters/crawler)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiellJYTA5ZEkxUW10OHE1TW9kNnNldVNLdUMyRUs4UTVQN2FGZlZMRCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNjoiaHR0cHM6Ly9zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791845977),
('tvLkyJT1pkY8N7FKrwF1ZLt8FvksrhhxhYgfHOtI', NULL, '160.34.125.54', 'ProbicLeadResearch/0.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV0JKY2YxWk5MOFExdThHV3A3bFlMemU3MWtRY0p1clJQb2dJamUzOSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMjoiaHR0cHM6Ly9zc3Jlcy5pbi9hYm91dCI7czo1OiJyb3V0ZSI7czoxMToiZnJvbnRfYWJvdXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791784710),
('tWLnPbhfptqd2dsFGhuEbjhEufaILeY6yFdoO8Fs', NULL, '173.249.59.170', 'Mozilla/5.0 (compatible; FindgBot/1.0; +https://khojbee.com/bot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYnpTejZMZHE0NEZTSGlrRHpmM1k1SlpleWdOS3lmNWlVengxQURLNSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozOToiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwL2Fib3V0IjtzOjU6InJvdXRlIjtzOjExOiJmcm9udF9hYm91dCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791772070),
('u9gjQ4C1RbLGBSzo8xE8IOzIQgOUYMgIscwnnyWN', NULL, '66.249.73.166', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.8010.52 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicEN0MUpCTGRnSHVtZ3Q5Z0Z5QWJIbXcySlcwZ05GMGlmd0JEdnVreiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czozNzoiaHR0cHM6Ly93d3cuc3NyZXMuaW4vcHVibGljL2luZGV4LnBocCI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791788386),
('Ucf49TjoTPk3LO8R7iGYI9Kc3N9bgjoNM2x1lPwW', NULL, '45.15.237.152', 'Python/3.11 aiohttp/3.11.11', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVjNDTFhKU21PTTBiT2tEZk9vSG9mclRUa0FJWFB6T2U5cTNQR045SiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNToiaHR0cDovL3NzcmVzLmluIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791831915),
('UEJ3CfTWbtU5Z7uc0V1hpIMdr78nIDSPSbfcXNSX', NULL, '186.250.114.242', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoia2dMcnhvRk9OMmFZM2lLYnNvMzlmUFhSdmFTbXAySXNHNGRwYmVwaSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMzoiaHR0cDovL3NzcmVzLmluL3Byb2plY3QiO3M6NToicm91dGUiO3M6MTM6ImZyb250X3Byb2plY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791770215),
('wISqB8RmlvBfdbPSHumpA4XF8jRZa3P8fJuE3IHJ', NULL, '35.219.241.140', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko; compatible; BuiltWith/1.4; rb.gy/xprgqj) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ2Y0bm9wUURTd1F0eGN6Y1dvTFYzSGRmME1mWXpub2pxV3J2ZFVPcSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMjoiaHR0cHM6Ly9zc3Jlcy5pbi9hYm91dCI7czo1OiJyb3V0ZSI7czoxMToiZnJvbnRfYWJvdXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791780660),
('xc98pOcAYDAy0rw3MPme4V51UnE4M22CTUPYcPPl', NULL, '66.249.73.168', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.8010.52 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicVlnQlRMaXA5TEtnUElJNHFuZEVmTGV2TWJTdXBKYjJSYmJtZmszZiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyODoiaHR0cHM6Ly93d3cuc3NyZXMuaW4vcHJvamVjdCI7czo1OiJyb3V0ZSI7czoxMzoiZnJvbnRfcHJvamVjdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791825509),
('xMZWs621hOinXd06Wpz5Jr9ujQ3ptStGw0VSXfmw', NULL, '190.16.25.230', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM1djdTVCdFpvU0hYMEpvSVI1cjQwM0VRTnZsemhCSTRVNmJZUExoSCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czo0MToiaHR0cHM6Ly9zc3Jlcy5pbi9wdWJsaWMvaW5kZXgucGhwL3Byb2plY3QiO3M6NToicm91dGUiO3M6MTM6ImZyb250X3Byb2plY3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791775543),
('Xs2bdlHyJBw80UAwXVzOETGkPVozD21T4Xs40vcf', NULL, '177.47.249.23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/145.0.0.0 Safari/537.36 Edg/145.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYmVQdUUzMG9kbzhEVG5sM1VMdTBHaVh5d3pwbmVqTGlhSnJLNkJvOCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyNDoiaHR0cHM6Ly9zc3Jlcy5pbi9jb250YWN0IjtzOjU6InJvdXRlIjtzOjEzOiJmcm9udF9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791775550),
('Y2Syjm0nJx1vrZwUDFXEAXIyajjhiwuksBsbe1Gn', NULL, '66.249.73.168', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/153.0.8010.52 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicFB0dkJ3ZDZ2aHpwNUZ2MW5mNlI3NDNQZ2FuQnBxVG92OHlyM1QyNiI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyMDoiaHR0cHM6Ly93d3cuc3NyZXMuaW4iO3M6NToicm91dGUiO3M6MTQ6ImZyb250X2hvbWVfdHdvIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791788342),
('y7j74PFNsACOUoE9QivE5RODvKtvjIvsojnuJJBt', NULL, '191.30.183.76', 'Python/3.12 aiohttp/3.14.3', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUEJHUVRmVWU3UHk5Y3JMQ2pMOFNLYVNqYmd0dWNUOUpocktHVmNldCI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNToiaHR0cDovL3NzcmVzLmluIjtzOjU6InJvdXRlIjtzOjE0OiJmcm9udF9ob21lX3R3byI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1791787985),
('YLC7iHMRZgQJQmcB41hcXW0ZfOaQFQusGH2IxuDY', NULL, '52.201.223.130', 'Mozilla/5.0 (compatible; getdomaindata/1.0; +https://getdomaindata.com/bot)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiTzFrTnowZUxvS2s4cHVNZ0lReUlqRWpLS2hRb1VTajBKU2U3anFrbSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoxNjoiaHR0cHM6Ly9zc3Jlcy5pbiI7czo1OiJyb3V0ZSI7czoxNDoiZnJvbnRfaG9tZV90d28iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1791801046),
('ysRNDVMSYODnr5BobEy5i79iiappXDLDTbiaxpB6', NULL, '160.34.125.54', 'ProbicLeadResearch/0.1', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUnU2bERBc0hBSVUyWE9TdWdnT0tQalZtckVZOWUzVDFkUXl5YlY4MyI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToyOntzOjM6InVybCI7czoyNDoiaHR0cHM6Ly9zc3Jlcy5pbi9jb250YWN0IjtzOjU6InJvdXRlIjtzOjEzOiJmcm9udF9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1791784705);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(21) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `current_team_id` int(255) DEFAULT NULL,
  `profile_photo_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `email`, `email_verified_at`, `pass`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Anil', 'anil@gmail.com', NULL, 'Anil@123', '$2y$12$gTUe8ZxXBatJPc.aZSRpIuqt2CcSX.G6I3K1mUvPQ58azg90sKDPK', NULL, NULL, NULL, '2025-11-15 10:50:08', '2025-11-15 10:50:08'),
(2, 'Abcd', 'abcd@gmail.com', NULL, 'Abcd@123', '$2y$12$xE8rBmH7IMnVOmg.9.hf2.CGAPRBdtuDc3GPocKbfIUnxjL4mp.AG', NULL, NULL, NULL, '2025-11-15 18:36:35', '2025-11-16 08:29:33'),
(3, 'sdfas', 'sdafs@gmail.com', NULL, 'sdafs@122', '$2y$12$Y1JOPjQq3N/uu5Yk83Lche6SGqHZzK9usxSQ5b7dhK7SCNckU0K0i', NULL, NULL, NULL, '2025-11-18 10:23:07', '2025-11-18 04:53:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `slot` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `password`, `slot`, `supplier_name`, `type`, `location`, `price`, `image`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sunil', 'sunil@gmail.com', 'sunil@gmail.com', '$2y$12$Ye0yoSG7sJjoUdYvsF/qyu1VfteiVXYfR.J4rKn2k/aGr.s7pf4GS', '23-11-2025 03:30', 'Anil', '3000', 'Hyderabad', 5000.00, 'portfolio-01-580x610.jpg', 'Rejected', NULL, NULL, '2025-11-18 04:54:43'),
(2, 'nithin', 'benz@gmail.com', 'benz@gmail.com', '$2y$12$R9zOkmJxY05OOR1b3Sfn6OwXKcx6o7P/.M2p4LNSe2Gu3Zaa5i06m', '23-11-2025 11:00', 'Anil', 'Benz', 'kp', 7000.00, '1763300534_6919d4b68eb75.png', 'Rejected', NULL, NULL, '2025-11-18 04:54:55'),
(3, 'sdfas', 'asdfa@gmail.com', 'asdfa@gmail.com', '$2y$12$rCxHSf9W.ifFXMqIY6moSucJ.LADNJcfL1yvRf7m3zOQIxale.UAO', '28-12-2025 11:00', 'Anil', 'asdf', 'Hyderabad', 5000.00, 'portfolio-03-740x576.jpg', '', NULL, NULL, NULL),
(5, 'zxcv', 'zxcv@gmail.com', 'zxcv@gmail.com', '$2y$12$xDhfPinkFEASId.drawnce6HCJgafYM92cSCFxVCObQPecJaH0RmO', '12-12-2025 11:00', 'sdfas', 'qwert', 'Hyderabad', 5000.00, 'Screenshot 2025-11-01 123921.png', 'Rejected', NULL, NULL, '2025-11-18 05:29:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cars_email_unique` (`email`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
