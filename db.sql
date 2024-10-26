-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2024 at 12:46 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tria_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_18_101953_create_products_table', 1),
(5, '2020_04_18_132841_create_profiles_table', 1),
(6, '2020_04_21_154729_create_stocks_table', 1),
(7, '2020_04_24_084350_create_orders_table', 1),
(8, '2020_04_26_123151_create_reminders_table', 1),
(9, '2020_04_27_044831_create_newsletters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'nevanac07@gmail.com', '2024-10-25 08:26:03', '2024-10-25 08:26:03');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` int NOT NULL,
  `payment_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `user_id`, `name`, `cart`, `phonenumber`, `country`, `city`, `address`, `zipcode`, `payment_id`) VALUES
(1, '2024-10-25 04:52:12', '2024-10-25 04:52:12', 2, 'Test', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";s:7:\"1000000\";s:4:\"size\";s:1:\"3\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:11:\"Test Produk\";s:5:\"brand\";s:11:\"New Balance\";s:5:\"price\";s:7:\"1000000\";s:5:\"image\";s:53:\"products/Gl33oAWzTZWivYXLdEiMUR0TWNPt5dffrcHokdXG.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 11:50:36\";s:10:\"updated_at\";s:19:\"2024-10-25 11:50:36\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:11:\"Test Produk\";s:5:\"brand\";s:11:\"New Balance\";s:5:\"price\";s:7:\"1000000\";s:5:\"image\";s:53:\"products/Gl33oAWzTZWivYXLdEiMUR0TWNPt5dffrcHokdXG.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 11:50:36\";s:10:\"updated_at\";s:19:\"2024-10-25 11:50:36\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:1;}}s:13:\"totalQuantity\";i:1;s:10:\"totalPrice\";i:1000000;}', '123123123', 'ID', 'sfsf', 'Jalan Lettu Karim Kadir, Perumahan Griya Darma Sejahtera Blok E30 Gandus', 12312, NULL),
(2, '2024-10-25 05:34:13', '2024-10-25 05:34:13', 2, 'Test', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";s:7:\"1000000\";s:4:\"size\";s:1:\"1\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:11:\"Test Produk\";s:5:\"brand\";s:11:\"New Balance\";s:5:\"price\";s:7:\"1000000\";s:5:\"image\";s:53:\"products/Gl33oAWzTZWivYXLdEiMUR0TWNPt5dffrcHokdXG.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 11:50:36\";s:10:\"updated_at\";s:19:\"2024-10-25 11:50:36\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:11:\"Test Produk\";s:5:\"brand\";s:11:\"New Balance\";s:5:\"price\";s:7:\"1000000\";s:5:\"image\";s:53:\"products/Gl33oAWzTZWivYXLdEiMUR0TWNPt5dffrcHokdXG.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:5:\"Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 11:50:36\";s:10:\"updated_at\";s:19:\"2024-10-25 11:50:36\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:1;}}s:13:\"totalQuantity\";i:1;s:10:\"totalPrice\";i:1000000;}', '3232323444', '3223', '3232', '3232', 32323, NULL),
(3, '2024-10-25 08:20:43', '2024-10-25 08:20:43', 3, 'Eva', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:2:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";s:8:\"10000000\";s:4:\"size\";s:1:\"3\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:11:\"Test Produk\";s:5:\"brand\";s:11:\"New Balance\";s:5:\"price\";s:8:\"10000000\";s:5:\"image\";s:53:\"products/vOkE2UgNDO1nFaBWKsXxmCh8c39S0As4XIAjO7Se.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:13:\"Running Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 11:50:36\";s:10:\"updated_at\";s:19:\"2024-10-25 13:44:09\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:11:\"Test Produk\";s:5:\"brand\";s:11:\"New Balance\";s:5:\"price\";s:8:\"10000000\";s:5:\"image\";s:53:\"products/vOkE2UgNDO1nFaBWKsXxmCh8c39S0As4XIAjO7Se.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:13:\"Running Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 11:50:36\";s:10:\"updated_at\";s:19:\"2024-10-25 13:44:09\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:1;}i:1;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";s:5:\"10000\";s:4:\"size\";s:1:\"2\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:12:\"Sepatu Super\";s:5:\"brand\";s:8:\"Converse\";s:5:\"price\";s:5:\"10000\";s:5:\"image\";s:53:\"products/5HSjBVpGXTpuBoQe1NO64RCNofP0G8lj6kCkE1wg.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:13:\"Running Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 13:38:24\";s:10:\"updated_at\";s:19:\"2024-10-25 13:38:24\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";s:1:\"2\";s:4:\"name\";s:12:\"Sepatu Super\";s:5:\"brand\";s:8:\"Converse\";s:5:\"price\";s:5:\"10000\";s:5:\"image\";s:53:\"products/5HSjBVpGXTpuBoQe1NO64RCNofP0G8lj6kCkE1wg.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:13:\"Running Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 13:38:24\";s:10:\"updated_at\";s:19:\"2024-10-25 13:38:24\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:2;}}s:13:\"totalQuantity\";i:2;s:10:\"totalPrice\";i:10010000;}', '895331160910', 'Indonesia', 'jakarta', 'Jl.bantar jati', 18802, NULL),
(4, '2024-10-26 09:56:36', '2024-10-26 09:56:36', 3, 'Eva', 'O:8:\"App\\Cart\":3:{s:5:\"items\";a:1:{i:0;a:5:{s:8:\"quantity\";i:1;s:5:\"price\";s:8:\"10000000\";s:4:\"size\";s:1:\"1\";s:4:\"item\";O:11:\"App\\Product\":27:{s:13:\"\0*\0connection\";s:5:\"mysql\";s:8:\"\0*\0table\";s:8:\"products\";s:13:\"\0*\0primaryKey\";s:2:\"id\";s:10:\"\0*\0keyType\";s:3:\"int\";s:12:\"incrementing\";b:1;s:7:\"\0*\0with\";a:0:{}s:12:\"\0*\0withCount\";a:0:{}s:10:\"\0*\0perPage\";i:15;s:6:\"exists\";b:1;s:18:\"wasRecentlyCreated\";b:0;s:13:\"\0*\0attributes\";a:10:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:11:\"Test Produk\";s:5:\"brand\";s:11:\"New Balance\";s:5:\"price\";s:8:\"10000000\";s:5:\"image\";s:53:\"products/vOkE2UgNDO1nFaBWKsXxmCh8c39S0As4XIAjO7Se.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:13:\"Running Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 11:50:36\";s:10:\"updated_at\";s:19:\"2024-10-25 13:44:09\";}s:11:\"\0*\0original\";a:10:{s:2:\"id\";s:1:\"1\";s:4:\"name\";s:11:\"Test Produk\";s:5:\"brand\";s:11:\"New Balance\";s:5:\"price\";s:8:\"10000000\";s:5:\"image\";s:53:\"products/vOkE2UgNDO1nFaBWKsXxmCh8c39S0As4XIAjO7Se.jpg\";s:6:\"gender\";s:6:\"Female\";s:8:\"category\";s:13:\"Running Shoes\";s:8:\"quantity\";s:1:\"1\";s:10:\"created_at\";s:19:\"2024-10-25 11:50:36\";s:10:\"updated_at\";s:19:\"2024-10-25 13:44:09\";}s:10:\"\0*\0changes\";a:0:{}s:8:\"\0*\0casts\";a:0:{}s:17:\"\0*\0classCastCache\";a:0:{}s:8:\"\0*\0dates\";a:0:{}s:13:\"\0*\0dateFormat\";N;s:10:\"\0*\0appends\";a:0:{}s:19:\"\0*\0dispatchesEvents\";a:0:{}s:14:\"\0*\0observables\";a:0:{}s:12:\"\0*\0relations\";a:0:{}s:10:\"\0*\0touches\";a:0:{}s:10:\"timestamps\";b:1;s:9:\"\0*\0hidden\";a:0:{}s:10:\"\0*\0visible\";a:0:{}s:11:\"\0*\0fillable\";a:0:{}s:10:\"\0*\0guarded\";a:1:{i:0;s:1:\"*\";}}s:10:\"product_id\";i:1;}}s:13:\"totalQuantity\";i:1;s:10:\"totalPrice\";i:10000000;}', '895331160910', 'Indonesia', 'Jakarta', 'Jl.bantar jati', 13480, NULL);

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
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('test@gmail.com', '$2y$10$4MK8YF7V6V8pDlwPJ4W/QOKkH2koUFOebIoK7mkjkLZOHvMEbqBjq', '2024-10-26 10:11:29'),
('nevanac07@gmail.com', '$2y$10$H1lUfYCDBGl9b62lxNhFhOmuaZTZYcYSQMH17oisuuin/6ANIzDbi', '2024-10-26 10:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `price`, `image`, `gender`, `category`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Test Produk', 'New Balance', 10000000, 'products/vOkE2UgNDO1nFaBWKsXxmCh8c39S0As4XIAjO7Se.jpg', 'Female', 'Running Shoes', 1, '2024-10-25 04:50:36', '2024-10-25 06:44:09'),
(2, 'Sepatu Super', 'Converse', 10000, 'products/5HSjBVpGXTpuBoQe1NO64RCNofP0G8lj6kCkE1wg.jpg', 'Female', 'Running Shoes', 1, '2024-10-25 06:38:24', '2024-10-25 06:38:24'),
(3, 'Sepatu GG', 'Puma', 10000000, 'products/tRqEqnKtuZLOrplHW5Oo0kuxgrvEG00xG8Yzr5rr.jpg', 'Female', 'Running Shoes', 1, '2024-10-25 06:49:29', '2024-10-25 06:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `phonenumber` bigint DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `zipcode` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `phonenumber`, `country`, `city`, `address`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, '2024-10-25 04:47:45', '2024-10-25 04:47:45'),
(2, 2, NULL, NULL, NULL, NULL, NULL, '2024-10-25 04:51:20', '2024-10-25 04:51:20'),
(3, 3, 895331160910, 'Indonesia', 'Jakarta', 'Jl.bantar jati', 13480, '2024-10-25 07:26:25', '2024-10-25 08:27:13'),
(4, 4, NULL, NULL, NULL, NULL, NULL, '2024-10-26 10:11:57', '2024-10-26 10:11:57');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` bigint UNSIGNED NOT NULL,
  `reminder` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reminders`
--

INSERT INTO `reminders` (`id`, `reminder`, `created_at`, `updated_at`) VALUES
(1, 'Type something', '2024-10-25 04:49:42', '2024-10-25 04:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `product_id`, `name`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 0, '2024-10-25 04:50:49', '2024-10-26 09:56:36'),
(2, 1, '3', 0, '2024-10-25 04:50:56', '2024-10-25 08:20:43'),
(3, 2, '2', 9, '2024-10-25 06:38:37', '2024-10-25 08:20:43'),
(4, 1, '2', 7, '2024-10-25 06:38:44', '2024-10-25 06:39:31'),
(5, 3, 'XL', 100, '2024-10-26 09:59:52', '2024-10-26 09:59:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Customer',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Ganteng', 'admin@admin.com', NULL, '$2a$10$.CvDNmJ3rT/DFsUhThHORej5.0KTqRlnLE4l9eNzFXFQxHgNDzht.', 'Admin', 'Un17I7ilNvq64HWiwJq78jnLWjYaSDws8ZgpbtorLkibVaUYrDD3C4Jzl6D7', '2024-10-25 04:47:45', '2024-10-25 04:47:45'),
(2, 'Test', 'test@gmail.com', NULL, '$2a$10$.CvDNmJ3rT/DFsUhThHORej5.0KTqRlnLE4l9eNzFXFQxHgNDzht.', 'Customer', NULL, '2024-10-25 04:51:20', '2024-10-25 04:51:20'),
(3, 'Eva', 'nevanac07@gmail.com', NULL, '$2y$10$NcUGwRMXB0jGxm.nJLbpEe6rwCraxPEbstTcFk7tFoTX0Tzc1aMzS', 'Customer', NULL, '2024-10-25 07:26:25', '2024-10-25 07:26:25'),
(4, 'mario', 'marioardi97@gmail.com', NULL, '$2y$10$MbxUIh6JfIFsfTZO/QQTju2CbVDZdKMiTJeeyIoSdI7t2v6T8IKry', 'Customer', 'HA4Wd6s3FmdUQf2g3kX2keTA1wZNzZVDHmESQVEOiJvJFPVbosAnuNnLNkKh', '2024-10-26 10:11:57', '2024-10-26 10:29:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_index` (`user_id`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks_product_id_index` (`product_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
