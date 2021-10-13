-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2021 lúc 03:29 PM
-- Phiên bản máy phục vụ: 10.6.2-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_quanao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `collection` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `name`, `collection`, `subtitle`, `title`, `description`, `created_at`, `updated_at`, `image`) VALUES
(1, 'TÚI XÁCH', 'BỘ SƯU TẬP MỚI', 'SẢN PHẨM ĐỘC ĐÁO!', 'BACKPACK', 'Thiết kế theo xu hướng thời trang đương đại mới nhất, khẳng định phong cách của bạn.', '2021-03-29 07:47:22', '2021-03-29 08:00:31', 'banner/2021/03/29/1.jpg'),
(2, 'TÚI XÁCH', 'BỘ SƯU TẬP MỚI', 'SANG TRỌNG & LỊCH LÃM!', 'BLACK HANDBAG', 'Những dòng sản phẩm được yêu thích nhất và được chế tác từ các chất liệu nhập khẩu 100%.', '2021-03-29 07:48:04', '2021-03-29 08:01:32', 'banner/2021/03/29/2.jpg'),
(3, 'QUẦN ÁO', 'BỘ SƯU TẬP MỚI', 'HÀNG MỚI VỀ!', 'AMAZING ADELLA', 'Năng động, trẻ trung & phong cách.', '2021-03-29 07:48:38', '2021-03-29 08:01:17', 'banner/2021/03/29/3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `buyer_id` bigint(20) UNSIGNED NOT NULL,
  `receive_date` datetime DEFAULT NULL,
  `price` double UNSIGNED NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `coupon_code` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` tinyint(3) UNSIGNED NOT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `receiver_id`, `buyer_id`, `receive_date`, `price`, `note`, `status`, `coupon_code`, `payment_type`, `cancel_reason`, `created_at`, `updated_at`) VALUES
(5, 13, 13, NULL, 1775000, 'ádasdasdasdasd', 0, NULL, 2, NULL, '2021-04-07 00:57:46', '2021-04-07 00:57:46'),
(6, 19, 19, NULL, 14799000, NULL, 0, NULL, 1, NULL, '2021-09-04 01:05:01', '2021-09-04 01:05:01'),
(7, 20, 20, NULL, 14799000, NULL, 0, NULL, 1, NULL, '2021-09-04 01:08:45', '2021-09-04 01:08:45'),
(8, 23, 23, NULL, 14799000, NULL, 0, NULL, 1, NULL, '2021-09-04 01:11:36', '2021-09-04 01:11:36'),
(9, 25, 25, NULL, 14799000, NULL, 0, NULL, 1, NULL, '2021-09-04 01:14:01', '2021-09-04 01:14:01'),
(10, 27, 27, NULL, 14799000, NULL, 0, NULL, 1, NULL, '2021-09-04 01:16:00', '2021-09-04 01:16:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_items`
--

CREATE TABLE `bill_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL,
  `base_price` double(10,2) UNSIGNED NOT NULL,
  `discount_price` double(10,2) UNSIGNED NOT NULL,
  `total_price` double(10,2) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `size` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_items`
--

INSERT INTO `bill_items` (`id`, `bill_id`, `product_id`, `quantity`, `base_price`, `discount_price`, `total_price`, `created_at`, `updated_at`, `size`) VALUES
(3, 5, 6, 2, 349000.00, 349000.00, 698000.00, '2021-04-07 00:57:46', '2021-04-07 00:57:46', '1'),
(4, 5, 5, 2, 449000.00, 449000.00, 898000.00, '2021-04-07 00:57:46', '2021-04-07 00:57:46', '6'),
(5, 5, 4, 1, 300000.00, 179000.00, 179000.00, '2021-04-07 00:57:46', '2021-04-07 00:57:46', '4'),
(6, 6, 7, 1, 15999000.00, 14799000.00, 14799000.00, '2021-09-04 01:05:01', '2021-09-04 01:05:01', '128'),
(7, 7, 7, 1, 15999000.00, 14799000.00, 14799000.00, '2021-09-04 01:08:45', '2021-09-04 01:08:45', '128'),
(8, 8, 7, 1, 15999000.00, 14799000.00, 14799000.00, '2021-09-04 01:11:36', '2021-09-04 01:11:36', '128'),
(9, 9, 7, 1, 15999000.00, 14799000.00, 14799000.00, '2021-09-04 01:14:01', '2021-09-04 01:14:01', '128'),
(10, 10, 7, 1, 15999000.00, 14799000.00, 14799000.00, '2021-09-04 01:16:00', '2021-09-04 01:16:00', '128');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Apple', '2021-03-29 00:10:45', '2021-09-02 08:17:42'),
(2, 'Sam Sung', '2021-03-29 00:10:50', '2021-09-02 08:17:53'),
(3, 'Opple', '2021-03-29 00:21:37', '2021-09-02 08:18:08'),
(4, 'Xiao Mi', '2021-03-29 00:22:13', '2021-09-02 08:18:28'),
(6, 'Phụ Kiện', '2021-03-29 01:41:54', '2021-09-02 08:18:47'),
(10, 'ViVo', '2021-09-02 08:32:50', '2021-09-02 08:32:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_number` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ward` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `phone`, `password`, `created_at`, `updated_at`, `home_number`, `ward`, `district`, `city`) VALUES
(10, 'sadasd', 'had', 'ccasasd@sdss.com', '12312312312', NULL, '2021-04-07 00:24:36', '2021-04-07 00:24:36', 'qưdqwdqw', 'áddqw', 'qdqwdqw', 'qưdqwdasd'),
(13, 'ádasdasdas', 'âsdasd', 'qsdde@asd.com', '12312312312312', NULL, '2021-04-07 00:57:45', '2021-04-07 00:57:45', 'ádwqqdqw', 'dqwdqwdqw', 'dưqfewfqdw', '1wqeqwe12'),
(14, 'Phong', 'Đình', 'gsadsad@gmail.com', '1234567890', NULL, '2021-09-04 01:02:58', '2021-09-04 01:02:58', 'Xóm 4 - Phương bản', 'Phụng Châu', 'Chương mỹ', 'Hà Nội'),
(19, 'Phong', 'Đình', 'daaaaaa@gmail.com', '212412512312', NULL, '2021-09-04 01:05:01', '2021-09-04 01:05:01', 'Xóm 4 - Phương bản', 'Phụng Châu', 'Chương mỹ', 'Hà Nội'),
(20, 'agasfdasdas', 'gágasdasfd', '12415214214@gmail.com', '124516321324', NULL, '2021-09-04 01:08:45', '2021-09-04 01:08:45', 'Xóm 4 - Phương bản', 'Phụng Châu', 'Chương mỹ', '広尾'),
(23, 'agasfdasdas', 'gágasdasfd', 'daaaaasdwww@gmail.com', '0985297851', NULL, '2021-09-04 01:11:36', '2021-09-04 01:11:36', 'Xóm 4 - Phương bản', 'Phụng Châu', 'Chương mỹ', '広尾'),
(25, 'Phong', 'Đình', 'admin12345@gmail.com', '0985297852', NULL, '2021-09-04 01:14:01', '2021-09-04 01:14:01', 'Xóm 4 - Phương bản', 'Phụng Châu', 'Chương mỹ', '広尾'),
(27, 'Phong', 'Đình', 'admin4155@gmail.com', '0985297858', NULL, '2021-09-04 01:16:00', '2021-09-04 01:16:00', 'Xóm 4 - Phương bản', 'Phụng Châu', 'Chương mỹ', 'Hà Nội');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(187, '2014_10_12_000000_create_users_table', 1),
(188, '2014_10_12_100000_create_password_resets_table', 1),
(189, '2019_08_19_000000_create_failed_jobs_table', 1),
(190, '2021_03_19_031634_create_product_categories_table', 1),
(191, '2021_03_19_032041_create_products_table', 1),
(192, '2021_03_19_035919_create_post_categories_table', 1),
(193, '2021_03_19_035930_create_posts_table', 1),
(194, '2021_03_20_021113_create_tags_table', 1),
(195, '2021_03_20_021235_create_taggables_table', 1),
(196, '2021_03_21_175859_create_verify_users_table', 1),
(197, '2021_03_22_035709_create_roles_table', 1),
(198, '2021_03_22_035927_create_permissions_table', 1),
(199, '2021_03_22_040504_create_user_roles_table', 1),
(200, '2021_03_22_040530_create_permission_roles_table', 1),
(201, '2021_03_26_031935_create_product_images_table', 1),
(202, '2021_03_29_063357_create_brands_table', 2),
(203, '2021_03_29_063436_create_sizes_table', 2),
(204, '2021_03_29_063900_add_brand_to_product_table', 3),
(205, '2021_03_29_064319_create_product_sizes_table', 3),
(206, '2021_03_29_133448_create_settings_table', 4),
(207, '2021_03_29_141613_create_banners_table', 5),
(208, '2021_03_29_143641_add_image_to_banner_table', 6),
(209, '2019_05_03_000001_create_customer_columns', 7),
(210, '2019_05_03_000002_create_subscriptions_table', 7),
(211, '2019_05_03_000003_create_subscription_items_table', 7),
(212, '2021_04_05_024351_create_customers_table', 7),
(213, '2021_04_05_032453_create_bills_table', 7),
(214, '2021_04_05_032516_create_bill_items_table', 7),
(215, '2021_04_05_042255_add_size_to_bill_items_table', 8),
(216, '2021_04_05_090840_add_address_to_customer_table', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `code`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '', 'user', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, '', 'role', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, '', 'permission', 0, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(4, 'user_view', 'view user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(5, 'user_create', 'create user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(6, 'user_edit', 'edit user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(7, 'user_delete', 'delete user', 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(8, 'role_view', 'view role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(9, 'role_create', 'create role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(10, 'role_edit', 'edit role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(11, 'role_delete', 'delete role', 2, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(12, 'permission_view', 'view permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(13, 'permission_create', 'create permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(14, 'permission_edit', 'edit permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(15, 'permission_delete', 'delete permission', 3, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(16, NULL, 'post', 0, '2021-03-28 23:01:44', '2021-03-28 23:01:44'),
(17, 'post_view', 'view post', 16, '2021-03-28 23:02:00', '2021-03-28 23:02:00'),
(18, 'post_edit', 'edit post', 16, '2021-03-28 23:02:17', '2021-03-28 23:02:17'),
(19, 'post_create', 'create post', 16, '2021-03-28 23:02:37', '2021-03-28 23:02:37'),
(20, 'post_delete', 'delete post', 16, '2021-03-28 23:02:51', '2021-03-28 23:02:51'),
(21, NULL, 'product', 0, '2021-03-28 23:03:04', '2021-03-28 23:03:04'),
(22, 'product_view', 'view product', 21, '2021-03-28 23:03:22', '2021-03-28 23:03:22'),
(23, 'product_create', 'create product', 21, '2021-03-28 23:03:39', '2021-03-28 23:03:39'),
(24, 'product_edit', 'edit product', 21, '2021-03-28 23:04:02', '2021-03-28 23:04:02'),
(25, 'product_delete', 'delete product', 21, '2021-03-28 23:04:19', '2021-03-28 23:04:19'),
(26, NULL, 'product category', 0, '2021-03-28 23:15:12', '2021-03-28 23:15:12'),
(27, 'productCategory_view', 'view product category', 26, '2021-03-28 23:15:39', '2021-03-28 23:15:39'),
(28, 'productCategory_create', 'create product category', 26, '2021-03-28 23:15:59', '2021-03-28 23:15:59'),
(29, 'productCategory_edit', 'edit product category', 26, '2021-03-28 23:16:17', '2021-03-28 23:16:17'),
(30, 'productCategory_delete', 'delete product category', 26, '2021-03-28 23:16:57', '2021-03-28 23:16:57'),
(31, NULL, 'post category', 0, '2021-03-28 23:17:34', '2021-03-28 23:17:34'),
(32, 'postCategory_view', 'view post category', 31, '2021-03-28 23:17:57', '2021-03-28 23:17:57'),
(33, 'postCategory_create', 'create post category', 31, '2021-03-28 23:18:15', '2021-03-28 23:18:15'),
(34, 'postCategory_edit', 'edit post category', 31, '2021-03-28 23:18:36', '2021-03-28 23:18:36'),
(35, 'postCategory_delete', 'delete post category', 31, '2021-03-28 23:18:52', '2021-03-28 23:18:52'),
(36, NULL, 'tag', 0, '2021-03-28 23:19:07', '2021-03-28 23:19:07'),
(37, 'tag_view', 'view tag', 36, '2021-03-28 23:19:23', '2021-03-28 23:19:23'),
(38, 'tag_create', 'create tag', 36, '2021-03-28 23:19:42', '2021-03-28 23:19:42'),
(39, 'tag_edit', 'edit tag', 36, '2021-03-28 23:19:53', '2021-03-28 23:19:53'),
(40, 'tag_delete', 'delete tag', 36, '2021-03-28 23:20:05', '2021-03-28 23:20:05'),
(41, NULL, 'brand', 0, '2021-03-29 00:03:38', '2021-03-29 00:03:38'),
(42, 'brand_view', 'view brand', 41, '2021-03-29 00:03:53', '2021-03-29 00:03:53'),
(43, 'brand_create', 'create brand', 41, '2021-03-29 00:04:08', '2021-03-29 00:04:08'),
(44, 'brand_edit', 'edit brand', 41, '2021-03-29 00:04:23', '2021-03-29 00:04:23'),
(45, 'brand_delete', 'delete brand', 41, '2021-03-29 00:04:38', '2021-03-29 00:04:38'),
(46, NULL, 'size', 0, '2021-03-29 00:04:53', '2021-03-29 00:04:53'),
(47, 'size_view', 'view size', 46, '2021-03-29 00:05:12', '2021-03-29 00:05:12'),
(48, 'size_create', 'create size', 46, '2021-03-29 00:05:26', '2021-03-29 00:05:26'),
(49, 'size_edit', 'edit size', 46, '2021-03-29 00:05:41', '2021-03-29 00:05:41'),
(50, 'size_delete', 'delete size', 46, '2021-03-29 00:05:55', '2021-03-29 00:05:55'),
(51, NULL, 'setting', 0, '2021-03-29 06:40:07', '2021-03-29 06:40:07'),
(52, 'setting_view', 'view setting', 51, '2021-03-29 06:40:23', '2021-03-29 06:40:23'),
(53, 'setting_create', 'create setting', 51, '2021-03-29 06:40:44', '2021-03-29 06:40:44'),
(54, 'setting_edit', 'edit setting', 51, '2021-03-29 06:40:59', '2021-03-29 06:40:59'),
(55, 'setting_delete', 'delete setting', 51, '2021-03-29 06:41:17', '2021-03-29 06:41:17'),
(56, NULL, 'banner', 0, '2021-03-29 07:25:08', '2021-03-29 07:25:08'),
(57, 'banner_view', 'view banner', 56, '2021-03-29 07:25:24', '2021-03-29 07:25:24'),
(58, 'banner_create', 'create banner', 56, '2021-03-29 07:25:41', '2021-03-29 07:25:41'),
(59, 'banner_edit', 'edit banner', 56, '2021-03-29 07:25:59', '2021-03-29 07:25:59'),
(60, 'banner_delete', 'delete banner', 56, '2021-03-29 07:26:21', '2021-03-29 07:26:21'),
(61, NULL, 'bill', 0, '2021-04-06 22:10:25', '2021-04-06 22:10:25'),
(62, 'bill_create', 'create bill', 61, '2021-04-06 22:10:39', '2021-04-06 22:10:39'),
(63, 'bill_view', 'view bill', 61, '2021-04-06 22:10:55', '2021-04-06 22:10:55'),
(64, 'bill_edit', 'edit bill', 61, '2021-04-06 22:11:08', '2021-04-06 22:11:08'),
(65, 'bill_delete', 'delete bill', 61, '2021-04-06 22:11:21', '2021-04-06 22:11:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, 4, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, 1, 5, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(4, 1, 6, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(5, 1, 7, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(6, 1, 8, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(7, 1, 9, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(8, 1, 10, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(9, 1, 11, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(10, 1, 12, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(11, 1, 13, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(12, 1, 14, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(13, 1, 15, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(14, 1, 17, NULL, NULL),
(15, 1, 18, NULL, NULL),
(16, 1, 19, NULL, NULL),
(17, 1, 20, NULL, NULL),
(18, 1, 22, NULL, NULL),
(19, 1, 23, NULL, NULL),
(20, 1, 24, NULL, NULL),
(21, 1, 25, NULL, NULL),
(22, 1, 27, NULL, NULL),
(23, 1, 28, NULL, NULL),
(24, 1, 29, NULL, NULL),
(25, 1, 30, NULL, NULL),
(26, 1, 32, NULL, NULL),
(27, 1, 33, NULL, NULL),
(28, 1, 34, NULL, NULL),
(29, 1, 35, NULL, NULL),
(30, 1, 37, NULL, NULL),
(31, 1, 38, NULL, NULL),
(32, 1, 39, NULL, NULL),
(33, 1, 40, NULL, NULL),
(34, 1, 42, NULL, NULL),
(35, 1, 43, NULL, NULL),
(36, 1, 44, NULL, NULL),
(37, 1, 45, NULL, NULL),
(38, 1, 47, NULL, NULL),
(39, 1, 48, NULL, NULL),
(40, 1, 49, NULL, NULL),
(41, 1, 50, NULL, NULL),
(42, 1, 52, NULL, NULL),
(43, 1, 53, NULL, NULL),
(44, 1, 54, NULL, NULL),
(45, 1, 55, NULL, NULL),
(46, 1, 57, NULL, NULL),
(47, 1, 58, NULL, NULL),
(48, 1, 59, NULL, NULL),
(49, 1, 60, NULL, NULL),
(50, 2, 17, NULL, NULL),
(51, 2, 18, NULL, NULL),
(52, 2, 19, NULL, NULL),
(53, 2, 20, NULL, NULL),
(54, 3, 22, NULL, NULL),
(55, 3, 23, NULL, NULL),
(56, 3, 24, NULL, NULL),
(57, 3, 25, NULL, NULL),
(58, 1, 62, NULL, NULL),
(59, 1, 63, NULL, NULL),
(60, 1, 64, NULL, NULL),
(61, 1, 65, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `author_id`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Vì Sao Chất Lượng Vẫn Cao Nhưng Giá Phải Chăng.', 'Câu trả lời và thông báo về một số thay đổi “nhỏ mà không nhỏ”. 2 ngày qua ADELLA nhận được nhiều sự quan tâm của c', '<h3>Điều G&igrave; L&agrave;m N&ecirc;n Thương Hiệu Adella 6 Năm Trước Chỉ L&agrave; 1 Cửa H&agrave;ng Trong Con Ng&otilde; Nhỏ !</h3>\r\n\r\n<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/09/05/636789134306190098_507502    Cáp Lightning 0.2m ivalue Fishing Đỏ.jfif', 3, '2021-03-30 23:42:46', '2021-09-05 02:00:15'),
(2, 'Các Cách Chăm Sóc phụ kiện.', 'Xin chào các độc giả của AĐELLA , hôm nay tôi sẽ nói cho các bạn về cách chăm sóc phụ kiện', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/09/05/637523738137561484_tai-nghe-airpods-max-dd-1.jpg', 2, '2021-03-30 23:47:13', '2021-09-05 02:02:17'),
(3, 'Những Mẫu Phụ kiện Cao Cấp Đẹp 2021.', 'Thời trang công sở ngày nay không còn là những khái niệm khô cứng về Phụ kiện', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/09/05/637020874852973627_529649.jpg', 4, '2021-03-30 23:48:08', '2021-09-05 02:01:36'),
(4, 'Các Cách Chăm Sóc phụ kiện.', 'Xin chào các độc giả của AĐELLA , hôm nay tôi sẽ nói cho các bạn về cách chăm sóc sản phẩm', '<p>Khi vừa h&igrave;nh th&agrave;nh, Adella l&agrave; c&ograve;n l&agrave; một cửa h&agrave;ng nằm trong con phố nhỏ tại H&agrave; Nội với những sản phẩm thời trang chất lượng v&agrave; gi&aacute; cả ph&ugrave; hợp cho c&aacute;c kh&aacute;ch h&agrave;ng trẻ. Trong những năm đầu, ch&uacute;ng t&ocirc;i đ&atilde; gặp rất nhiều kh&oacute; khăn trong vấn đề t&igrave;m kiếm kh&aacute;ch h&agrave;ng, bởi ng&agrave;y ấy, quy m&ocirc; Adella c&ograve;n l&agrave; một cửa h&agrave;ng nhỏ, chưa c&oacute; thương hiệu, chưa thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Trong những năm 2013 - 2014, c&aacute;i t&ecirc;n Adella được nhiều kh&aacute;ch h&agrave;ng biết đến hơn. Cửa h&agrave;ng của ch&uacute;ng t&ocirc;i được mở rộng hơn, ngo&agrave;i ra ch&uacute;ng t&ocirc;i đ&atilde; thu h&uacute;t được nhiều kh&aacute;ch h&agrave;ng b&aacute;n sỉ tr&ecirc;n to&agrave;n quốc. Ch&uacute;ng t&ocirc;i đ&atilde; t&igrave;m được nhiều phương &aacute;n tối ưu trong vấn dề b&aacute;n h&agrave;ng, kh&ocirc;ng đơn thuần chỉ l&agrave; b&aacute;n h&agrave;ng c&aacute; nh&acirc;n, m&agrave; ch&uacute;ng t&ocirc;i c&ograve;n l&agrave; một đại l&iacute; chuy&ecirc;n ph&acirc;n phối c&aacute;c sản phẩm tới c&aacute;c nh&agrave; b&aacute;n lẻ kh&aacute;c. Năm 2015 - 2016 l&agrave; thời k&igrave; ph&aacute;t triển mạnh của mạng x&atilde; hội, Adella kh&ocirc;ng chỉ b&aacute;n h&agrave;ng theo phương thức truyền thống l&agrave; b&aacute;n h&agrave;ng trực tiếp tại cửa h&agrave;ng, m&agrave; ch&uacute;ng t&ocirc;i thực hiện b&aacute;n h&agrave;ng online, b&aacute;n h&agrave;ng tr&ecirc;n website, tr&ecirc;n Fanpage. C&oacute; lẽ năm 2016 l&agrave; một năm đ&aacute;nh dấu bước ngoặt lớn của Adella, ch&uacute;ng t&ocirc;i đ&atilde; phục vụ được hơn 50.000 kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n quốc</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<blockquote>Uy t&iacute;n l&agrave; thứ tồn tại duy nhất v&agrave; gi&uacute;p ch&uacute;ng t&ocirc;i c&oacute; thể l&agrave;m h&agrave;i l&ograve;ng mọi kh&aacute;ch h&agrave;ng với phương ch&acirc;m (uy t&iacute;n l&agrave; v&agrave;ng) đặt l&ecirc;n đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n gửi gắm niền tin v&agrave;o từng sản phẩm để l&agrave;m h&agrave;i l&ograve;ng những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh nhất.</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Năm 2017 - 2018 Ch&uacute;ng t&ocirc;i đ&atilde; mở rộng được hệ thống cửa h&agrave;ng, đ&atilde; c&oacute; nhiều cửa h&agrave;ng b&aacute;n lẻ tr&ecirc;n địa b&agrave;n H&agrave; Nội, v&agrave; c&oacute; gần 100 CTV tr&ecirc;n mỗi th&aacute;ng. Đầu năm 2018, ch&uacute;ng t&ocirc;i trở th&agrave;nh lập C&ocirc;ng ty TNHH Sản xuất Thương mại v&agrave; Dịch vụ Adella tại trụ sở ch&iacute;nh: Số 48 Tố Hữu. Với sứ mệnh trở th&agrave;nh thương hiệu thời trang số 1 của Việt Nam, mang đến nhiều sản phẩm thời trang chất lượng. Đến nay, Adella tự h&agrave;o l&agrave; đơn vị h&agrave;ng đầu tại Việt Nam tr&ecirc;n thị trường Thời trang, mang đến cho kh&aacute;ch h&agrave;ng trẻ h&agrave;ng ngh&igrave;n mẫu sản phẩm thời trang.</p>\r\n\r\n<p>Với những mẫu sản phẩm chất c&ugrave;ng với gi&aacute; cả hợp l&yacute; v&agrave; nhiều qu&agrave; tặng v&agrave; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i d&agrave;nh cho c&aacute;c kh&aacute;ch h&agrave;ng trung th&agrave;nh của Adellach&uacute;ng t&ocirc;i cố gắng chiếm được l&ograve;ng tin v&agrave; sự tin tưởng để mọi người biết đến ch&uacute;ng t&ocirc;i nhiều hơn. Trong năm nay ch&uacute;ng t&ocirc;i ch&uacute;ng t&ocirc;i ph&aacute;t h&agrave;nh th&ecirc;m thẻ vip , kh&aacute;ch h&agrave;ng sử dụng thẻ vip sẽ c&oacute; nhiều ưu đ&atilde;i.</p>', 1, 'post/2021/09/05/637521955101878899_Redmi.jpg', 5, '2021-03-30 23:49:10', '2021-09-05 02:02:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_categories`
--

INSERT INTO `post_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Tin Tức', 0, '2021-03-28 23:21:23', '2021-03-28 23:21:23'),
(2, 'Adella Logistics', 1, '2021-03-28 23:21:35', '2021-03-28 23:21:35'),
(3, 'Thương hiệu Adella', 1, '2021-03-28 23:21:46', '2021-03-28 23:21:46'),
(4, 'Feedback khách hàng', 1, '2021-03-28 23:21:55', '2021-03-28 23:21:55'),
(5, 'Thông tin khuyến mại', 1, '2021-03-28 23:22:03', '2021-03-28 23:22:03'),
(6, 'Tuyển dụng', 1, '2021-03-28 23:22:13', '2021-03-28 23:22:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` double(10,2) UNSIGNED NOT NULL,
  `discount_price` double(10,2) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `seller_id`, `avatar`, `base_price`, `discount_price`, `category_id`, `created_at`, `updated_at`, `brand_id`) VALUES
(2, 'Iphone XR 64G', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637393169370716242_ip-xr-dd.jfif', 12999999.00, 12499000.00, 1, '2021-03-29 01:43:43', '2021-09-02 08:23:50', 1),
(4, 'Iphone 12 Mini', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637546879521249423_ip-12-dd-a2 - Copy.jpg', 18999000.00, 16499000.00, 1, '2021-03-29 01:48:00', '2021-09-02 08:32:02', 1),
(5, 'Iphone 12', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637546879521249423_ip-12-dd-a2.jpg', 21999000.00, 19699000.00, 1, '2021-03-29 01:50:00', '2021-09-02 08:30:58', 1),
(6, 'Iphone 12 Pro', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637479614485943996_ip-12-pro-max-dd-2nam.jpg', 29999000.00, 27999000.00, 1, '2021-03-29 01:51:06', '2021-09-02 08:29:20', 1),
(7, 'Iphone 11', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637393169370871358_ip-11-dd.jfif', 15999000.00, 14799000.00, 1, '2021-03-29 01:52:28', '2021-09-02 08:26:17', 1),
(8, 'Iphone 12 Pro Max', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637479614485943996_ip-12-pro-max-dd-2nam.jpg', 30699000.00, 28599000.00, 1, '2021-03-29 23:37:28', '2021-09-02 08:28:09', 1),
(9, 'Samsung Galaxy Z Fold2 5G', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637348297098045794_ss-z-fold-2-gold-dd.jfif', 50000000.00, 48000000.00, 2, '2021-09-02 08:35:41', '2021-09-02 10:23:14', 2),
(10, 'Samsung Galaxy S21 Ultra', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637462639794639518_ss-s21-ultra-128-dd.jfif', 30999000.00, 21999000.00, 2, '2021-09-02 08:36:38', '2021-09-02 10:23:31', 2),
(11, 'Samsung Galaxy S21', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637462639794669527_ss-s21-plus-dd.jfif', 25999000.00, 17999000.00, 2, '2021-09-02 08:37:34', '2021-09-02 08:37:34', 2),
(12, 'Samsung Galaxy Z Flip', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637503637729039217_ss-z-flip-dd.jpg', 20000000.00, 16900000.00, 2, '2021-09-02 08:38:16', '2021-09-02 08:38:16', 2),
(13, 'Samsung Galaxy Z Flip3 5G', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637644576020542222_samsung-galaxy-z-flip3-5g-vang-dd-bh2nam.jpg', 24900000.00, 24000000.00, 2, '2021-09-02 08:38:59', '2021-09-02 08:38:59', 2),
(14, 'Samsung Galaxy Z Fold3 5G', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637644576020854740_samsung-galaxy-z-fold3-xanh-dd-bh2nam.jpg', 41990000.00, 39900000.00, 2, '2021-09-02 08:39:49', '2021-09-02 08:39:49', 2),
(15, 'Oppo Reno5', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637445128012092437_oppo-reno5-dd.jfif', 8690000.00, 7820000.00, 3, '2021-09-02 08:42:09', '2021-09-02 08:42:09', 3),
(16, 'OPPO A94', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637558899292415149_oppo-a94-bac-dd.jpg', 7690000.00, 7505000.00, 3, '2021-09-02 08:43:00', '2021-09-02 08:43:00', 3),
(17, 'OPPO Find X3 Pro 5G', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637565961688766276_oppo-find-x3-pro-dd.jpg', 26900000.00, 21900000.00, 3, '2021-09-02 08:43:50', '2021-09-02 08:43:50', 3),
(18, 'OPPO A74 8GB-128GB', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637575356138682692_oppo-a74-dd-1.jpg', 6690000.00, 6390000.00, 3, '2021-09-02 08:44:41', '2021-09-02 08:44:41', 3),
(19, 'OPPO Reno6 Z 5G', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637641007844732573_oppo-reno6z-dd-bh2nam.jpg', 9600000.00, 9400000.00, 3, '2021-09-02 08:45:22', '2021-09-02 08:45:22', 3),
(20, 'Oppo Reno6 5G', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637641009301320775_oppo-reno6-dd-bh2nam.jpg', 12900000.00, 12600000.00, 3, '2021-09-02 08:46:08', '2021-09-02 08:46:08', 3),
(21, 'Xiaomi Redmi 9A 2GB', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637318137488561447_xiaomi-redmi-9a-xanh-dd-bh.jfif', 2900000.00, 2899000.00, 4, '2021-09-02 08:47:53', '2021-09-02 08:47:53', 4),
(22, 'Xiaomi Redmi 9C 3GB', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637318139422708501_xiaomi-redmi-9c-cam-dd-bh.jfif', 2900000.00, 2690000.00, 4, '2021-09-02 08:48:28', '2021-09-02 08:48:28', 4),
(23, 'Xiaomi Redmi Note 10 Pro', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637541693612681073_xiaomi-redmi-note-10-pro-xam-dd-1.jpg', 7699000.00, 7489000.00, 4, '2021-09-02 08:49:15', '2021-09-02 08:49:15', 4),
(24, 'Xiaomi POCO X3 Pro NFC 8GB', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637570519716076314_poco-x3-pro-den-dd.jpg', 799000.00, 699000.00, 4, '2021-09-02 08:49:54', '2021-09-02 08:49:54', 4),
(25, 'Xiaomi Mi 10T Lite 5G', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637570976003426975_xiaomi-mi-10t-lite-5g-dd.jpg', 7990000.00, 6290000.00, 4, '2021-09-02 08:50:47', '2021-09-02 08:50:47', 4),
(26, 'Xiaomi Mi 10T Lite 5G-2T', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637570976003426975_xiaomi-mi-10t-lite-5g-dd.jpg', 7990000.00, 6290000.00, 4, '2021-09-02 08:50:48', '2021-09-02 08:50:48', 4),
(27, 'Xiaomi Redmi 10 4GB', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637648311779987897_xiaomi-redmi-10-dd.jpg', 4599000.00, 4290000.00, 4, '2021-09-02 08:51:24', '2021-09-02 08:51:24', 4),
(28, 'Vivo Y20 4GB - 64GB', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637338790246029486_vivo-y20-trang-dd.jfif', 3900000.00, 3690000.00, 5, '2021-09-02 08:54:43', '2021-09-02 08:54:43', 10),
(29, 'Vivo Y12s 2021 3GB', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637515974341223613_vivo-y12s-2021-dd.jpg', 4490000.00, 4299000.00, 5, '2021-09-02 08:55:36', '2021-09-02 08:55:36', 10),
(30, 'Vivo Y72 5G 8GB', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637534872939311754_vivo-y72-xanh-dd.jpg', 7990000.00, 6999000.00, 5, '2021-09-02 08:56:27', '2021-09-02 08:56:27', 10),
(31, 'Vivo V21 5G 8GB ', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637558949238483995_vivo-v21-xanh-dd.jpg', 5999000.00, 5000000.00, 5, '2021-09-02 08:57:26', '2021-09-02 08:57:26', 10),
(32, 'Vivo Y53s 8GB+3GB ', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637588529466974447_vivo-y53s-xanhden-dd.jpg', 7290000.00, 6980000.00, 5, '2021-09-02 08:58:06', '2021-09-02 08:58:06', 10),
(33, 'Vivo Y21 4GB+1GB', 'Sản phẩm mới . Tặng kèm phụ kiện dây sạc ,tai nghe. Đặc biệt hỗ trợ trả góp 0%.', 1, 'product/2021/09/02/637644824833391058_vivo-y21-xanh-dd.jpg', 4890000.00, 4700000.00, 5, '2021-09-02 08:58:54', '2021-09-02 08:58:54', 10),
(34, 'Cáp lightning 0.2', 'Dây cáp lightning 0.2', 1, 'product/2021/09/02/636789134306190098_507502    Cáp Lightning 0.2m ivalue Fishing Đỏ.jfif', 99000.00, 89000.00, 7, '2021-09-02 09:02:09', '2021-09-02 09:02:30', 1),
(35, 'Tai nghe dây nhét tai i.value ES-103i blue', 'Tai nghe dây nhét tai i.value ES-103i blue', 1, 'product/2021/09/02/637020874852973627_529649.jpg', 129000.00, 99000.00, 7, '2021-09-02 09:03:47', '2021-09-02 09:03:47', 4),
(36, 'Tai nghe i.value B60Hi', 'Tai nghe dây nhét tai i.value B60Hi 3.5mm', 1, 'product/2021/09/02/637474502384816731_tai nghe ivalue.jpg', 119000.00, 99000.00, 2, '2021-09-02 09:04:47', '2021-09-02 09:04:47', 2),
(37, 'Sạc dự phòng 10,000mAh Xiaomi Redmi', 'Sạc dự phòng 10,000mAh Xiaomi Redmi', 1, 'product/2021/09/02/637520218597810477_AVT.jpg', 299000.00, 279000.00, 7, '2021-09-02 09:05:55', '2021-09-02 09:05:55', 4),
(38, 'Pin sạc dự phòng Samsung Battery Pack 10.000 mAh', 'Pin sạc dự phòng Samsung Battery Pack 10.000 mAh', 1, 'product/2021/09/02/637521955101878899_Redmi.jpg', 390000.00, 379000.00, 7, '2021-09-02 09:06:39', '2021-09-02 09:06:39', 2),
(39, 'Tai nghe bluetooth choàng đầu có mic i.value A8', 'Tai nghe bluetooth choàng đầu có mic i.value A8', 1, 'product/2021/09/02/637523738137561484_tai-nghe-airpods-max-dd-1.jpg', 499000.00, 479000.00, 7, '2021-09-02 09:07:33', '2021-09-02 09:07:33', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Iphone', 0, '2021-03-28 23:24:55', '2021-09-02 08:04:08', 'ao-khoac-nu'),
(2, 'Sam Sung', 0, '2021-03-28 23:25:06', '2021-09-02 08:04:20', 'ao-len'),
(3, 'Opple', 0, '2021-03-28 23:25:15', '2021-09-02 08:04:34', 'ao-khoac'),
(4, 'Xiao Mi', 0, '2021-03-28 23:25:20', '2021-09-02 08:04:49', 'nam'),
(5, 'ViVo', 0, '2021-03-28 23:25:28', '2021-09-02 08:05:05', NULL),
(6, 'Nokia', 0, '2021-03-28 23:25:40', '2021-09-02 08:06:18', NULL),
(7, 'Phụ Kiện', 0, '2021-03-28 23:25:54', '2021-09-02 08:06:31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `path`, `product_id`, `created_at`, `updated_at`) VALUES
(22, 'product/2021/09/02/637393169370716242_ip-xr-dd.jfif', 2, '2021-09-02 08:23:50', '2021-09-02 08:23:50'),
(23, 'product/2021/09/02/637393169370871358_ip-11-dd.jfif', 7, '2021-09-02 08:26:17', '2021-09-02 08:26:17'),
(24, 'product/2021/09/02/637479612642653058_ip-12-pro-dd-2nam.jpg', 8, '2021-09-02 08:28:09', '2021-09-02 08:28:09'),
(25, 'product/2021/09/02/637479612642653058_ip-12-pro-dd-2nam.jpg', 5, '2021-09-02 08:30:29', '2021-09-02 08:30:29'),
(26, 'product/2021/09/02/637479614485943996_ip-12-pro-max-dd-2nam.jpg', 5, '2021-09-02 08:30:29', '2021-09-02 08:30:29'),
(27, 'product/2021/09/02/637546879521249423_ip-12-dd-a2 - Copy.jpg', 4, '2021-09-02 08:31:56', '2021-09-02 08:31:56'),
(28, 'product/2021/09/02/637546879521249423_ip-12-dd-a2.jpg', 4, '2021-09-02 08:31:56', '2021-09-02 08:31:56'),
(29, 'product/2021/09/02/637348297098045794_ss-z-fold-2-gold-dd.jfif', 9, '2021-09-02 08:35:41', '2021-09-02 08:35:41'),
(30, 'product/2021/09/02/637462639794639518_ss-s21-ultra-128-dd.jfif', 10, '2021-09-02 08:36:38', '2021-09-02 08:36:38'),
(31, 'product/2021/09/02/637462639794669527_ss-s21-plus-dd.jfif', 11, '2021-09-02 08:37:34', '2021-09-02 08:37:34'),
(32, 'product/2021/09/02/637503637729039217_ss-z-flip-dd.jpg', 12, '2021-09-02 08:38:16', '2021-09-02 08:38:16'),
(33, 'product/2021/09/02/637644576020542222_samsung-galaxy-z-flip3-5g-vang-dd-bh2nam.jpg', 13, '2021-09-02 08:38:59', '2021-09-02 08:38:59'),
(34, 'product/2021/09/02/637644576020854740_samsung-galaxy-z-fold3-xanh-dd-bh2nam.jpg', 14, '2021-09-02 08:39:50', '2021-09-02 08:39:50'),
(35, 'product/2021/09/02/637445128012092437_oppo-reno5-dd.jfif', 15, '2021-09-02 08:42:09', '2021-09-02 08:42:09'),
(36, 'product/2021/09/02/637558899292415149_oppo-a94-bac-dd.jpg', 16, '2021-09-02 08:43:00', '2021-09-02 08:43:00'),
(37, 'product/2021/09/02/637565961688766276_oppo-find-x3-pro-dd.jpg', 17, '2021-09-02 08:43:50', '2021-09-02 08:43:50'),
(38, 'product/2021/09/02/637575356138682692_oppo-a74-dd-1.jpg', 18, '2021-09-02 08:44:41', '2021-09-02 08:44:41'),
(39, 'product/2021/09/02/637641007844732573_oppo-reno6z-dd-bh2nam.jpg', 19, '2021-09-02 08:45:22', '2021-09-02 08:45:22'),
(40, 'product/2021/09/02/637641009301320775_oppo-reno6-dd-bh2nam.jpg', 20, '2021-09-02 08:46:08', '2021-09-02 08:46:08'),
(41, 'product/2021/09/02/637318137488561447_xiaomi-redmi-9a-xanh-dd-bh.jfif', 21, '2021-09-02 08:47:53', '2021-09-02 08:47:53'),
(42, 'product/2021/09/02/637318139422708501_xiaomi-redmi-9c-cam-dd-bh.jfif', 22, '2021-09-02 08:48:28', '2021-09-02 08:48:28'),
(43, 'product/2021/09/02/637541693612681073_xiaomi-redmi-note-10-pro-xam-dd-1.jpg', 23, '2021-09-02 08:49:15', '2021-09-02 08:49:15'),
(44, 'product/2021/09/02/637570519716076314_poco-x3-pro-den-dd.jpg', 24, '2021-09-02 08:49:54', '2021-09-02 08:49:54'),
(45, 'product/2021/09/02/637570976003426975_xiaomi-mi-10t-lite-5g-dd.jpg', 25, '2021-09-02 08:50:47', '2021-09-02 08:50:47'),
(46, 'product/2021/09/02/637570976003426975_xiaomi-mi-10t-lite-5g-dd.jpg', 26, '2021-09-02 08:50:48', '2021-09-02 08:50:48'),
(47, 'product/2021/09/02/637648311779987897_xiaomi-redmi-10-dd.jpg', 27, '2021-09-02 08:51:24', '2021-09-02 08:51:24'),
(48, 'product/2021/09/02/637338790246029486_vivo-y20-trang-dd.jfif', 28, '2021-09-02 08:54:43', '2021-09-02 08:54:43'),
(49, 'product/2021/09/02/637515974341223613_vivo-y12s-2021-dd.jpg', 29, '2021-09-02 08:55:36', '2021-09-02 08:55:36'),
(50, 'product/2021/09/02/637534872939311754_vivo-y72-xanh-dd.jpg', 30, '2021-09-02 08:56:27', '2021-09-02 08:56:27'),
(51, 'product/2021/09/02/637558949238483995_vivo-v21-xanh-dd.jpg', 31, '2021-09-02 08:57:26', '2021-09-02 08:57:26'),
(52, 'product/2021/09/02/637588529466974447_vivo-y53s-xanhden-dd.jpg', 32, '2021-09-02 08:58:06', '2021-09-02 08:58:06'),
(53, 'product/2021/09/02/637644824833391058_vivo-y21-xanh-dd.jpg', 33, '2021-09-02 08:58:54', '2021-09-02 08:58:54'),
(54, 'product/2021/09/02/636789134306190098_507502    Cáp Lightning 0.2m ivalue Fishing Đỏ.jfif', 34, '2021-09-02 09:02:09', '2021-09-02 09:02:09'),
(55, 'product/2021/09/02/637020874852973627_529649.jpg', 35, '2021-09-02 09:03:47', '2021-09-02 09:03:47'),
(56, 'product/2021/09/02/637474502384816731_tai nghe ivalue.jpg', 36, '2021-09-02 09:04:47', '2021-09-02 09:04:47'),
(57, 'product/2021/09/02/637520218597810477_AVT.jpg', 37, '2021-09-02 09:05:55', '2021-09-02 09:05:55'),
(58, 'product/2021/09/02/637521955101878899_Redmi.jpg', 38, '2021-09-02 09:06:39', '2021-09-02 09:06:39'),
(59, 'product/2021/09/02/637523738137561484_tai-nghe-airpods-max-dd-1.jpg', 39, '2021-09-02 09:07:33', '2021-09-02 09:07:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `size_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(5, 1, 2, NULL, NULL),
(6, 1, 3, NULL, NULL),
(7, 1, 4, NULL, NULL),
(8, 2, 1, NULL, NULL),
(14, 3, 1, NULL, NULL),
(15, 3, 2, NULL, NULL),
(16, 3, 3, NULL, NULL),
(17, 3, 4, NULL, NULL),
(18, 4, 1, NULL, NULL),
(19, 4, 2, NULL, NULL),
(23, 6, 2, NULL, NULL),
(24, 6, 3, NULL, NULL),
(26, 7, 1, NULL, NULL),
(27, 7, 2, NULL, NULL),
(28, 7, 3, NULL, NULL),
(31, 8, 1, NULL, NULL),
(32, 8, 2, NULL, NULL),
(33, 8, 3, NULL, NULL),
(37, 5, 1, NULL, NULL),
(38, 5, 2, NULL, NULL),
(39, 9, 3, NULL, NULL),
(40, 10, 2, NULL, NULL),
(41, 11, 2, NULL, NULL),
(42, 11, 3, NULL, NULL),
(43, 12, 2, NULL, NULL),
(44, 12, 3, NULL, NULL),
(45, 13, 2, NULL, NULL),
(46, 13, 3, NULL, NULL),
(47, 14, 3, NULL, NULL),
(48, 15, 2, NULL, NULL),
(49, 16, 2, NULL, NULL),
(50, 17, 2, NULL, NULL),
(51, 18, 2, NULL, NULL),
(52, 19, 2, NULL, NULL),
(53, 20, 2, NULL, NULL),
(54, 21, 1, NULL, NULL),
(55, 22, 1, NULL, NULL),
(56, 23, 1, NULL, NULL),
(57, 24, 3, NULL, NULL),
(58, 25, 2, NULL, NULL),
(59, 26, 2, NULL, NULL),
(60, 27, 2, NULL, NULL),
(61, 28, 1, NULL, NULL),
(62, 29, 1, NULL, NULL),
(63, 30, 2, NULL, NULL),
(64, 31, 2, NULL, NULL),
(65, 32, 2, NULL, NULL),
(66, 33, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'super admin', '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(2, 'writer', 'người viết tin tức', '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(3, 'seller', 'người bán hàng', '2021-03-27 10:51:37', '2021-03-27 10:51:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`) VALUES
(1, 'Địa chỉ', '48 Tố Hữu, Trung Văn, Từ Liêm, Hà Nội', '2021-03-29 08:20:50', '2021-03-29 08:20:50'),
(2, 'Phone', '0988888888', '2021-03-29 08:21:09', '2021-03-29 08:21:09'),
(3, 'Email', 'adella_fashion@gmail.com', '2021-03-29 08:21:28', '2021-03-29 08:21:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '64G', '2021-03-29 00:22:35', '2021-09-02 08:24:13'),
(2, '128G', '2021-03-29 00:22:44', '2021-09-02 08:24:28'),
(3, '256G', '2021-03-29 00:22:47', '2021-09-02 08:24:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taggables`
--

INSERT INTO `taggables` (`tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(1, 2, 'Product', NULL, NULL),
(1, 7, 'Product', NULL, NULL),
(1, 8, 'Product', NULL, NULL),
(1, 6, 'Product', NULL, NULL),
(1, 5, 'Product', NULL, NULL),
(1, 4, 'Product', NULL, NULL),
(2, 9, 'Product', NULL, NULL),
(2, 10, 'Product', NULL, NULL),
(2, 11, 'Product', NULL, NULL),
(2, 12, 'Product', NULL, NULL),
(2, 13, 'Product', NULL, NULL),
(1, 14, 'Product', NULL, NULL),
(3, 15, 'Product', NULL, NULL),
(3, 16, 'Product', NULL, NULL),
(3, 17, 'Product', NULL, NULL),
(3, 18, 'Product', NULL, NULL),
(3, 19, 'Product', NULL, NULL),
(3, 20, 'Product', NULL, NULL),
(4, 21, 'Product', NULL, NULL),
(4, 22, 'Product', NULL, NULL),
(4, 23, 'Product', NULL, NULL),
(4, 24, 'Product', NULL, NULL),
(4, 25, 'Product', NULL, NULL),
(4, 26, 'Product', NULL, NULL),
(4, 27, 'Product', NULL, NULL),
(14, 28, 'Product', NULL, NULL),
(14, 29, 'Product', NULL, NULL),
(14, 30, 'Product', NULL, NULL),
(14, 31, 'Product', NULL, NULL),
(14, 32, 'Product', NULL, NULL),
(14, 33, 'Product', NULL, NULL),
(1, 34, 'Product', NULL, NULL),
(5, 34, 'Product', NULL, NULL),
(4, 35, 'Product', NULL, NULL),
(5, 35, 'Product', NULL, NULL),
(2, 36, 'Product', NULL, NULL),
(5, 36, 'Product', NULL, NULL),
(4, 37, 'Product', NULL, NULL),
(5, 37, 'Product', NULL, NULL),
(2, 38, 'Product', NULL, NULL),
(5, 38, 'Product', NULL, NULL),
(5, 39, 'Product', NULL, NULL),
(5, 1, 'Post', NULL, NULL),
(5, 2, 'Post', NULL, NULL),
(5, 4, 'Post', NULL, NULL),
(5, 3, 'Post', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'iphone', '2021-03-28 23:23:03', '2021-09-02 07:57:49'),
(2, 'samsung', '2021-03-28 23:23:11', '2021-09-02 07:57:58'),
(3, 'opple', '2021-03-28 23:23:17', '2021-09-02 07:58:13'),
(4, 'xiaomi', '2021-03-28 23:23:30', '2021-09-02 07:58:50'),
(5, 'phukien', '2021-03-28 23:23:41', '2021-09-02 07:59:19'),
(6, 'ViVo', '2021-09-02 08:32:38', '2021-09-02 08:32:38'),
(7, 'Nokia', '2021-09-02 08:33:06', '2021-09-02 08:33:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stripe_id` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(115) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_last_four` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `stripe_id`, `card_brand`, `card_last_four`, `trial_ends_at`) VALUES
(1, 'admin', 'admin', 'user/2021/07/05/131312979_422581302161475_522928053490360499_n.jpg', 'admin@gmail.com', '2021-03-27 10:51:37', '$2y$10$7N4tbbZIPUwWliI.KMxctuiQMD1iZx9QFH2vvzfitKT3TnZIPMkoC', 'bi7z1BkahdvxfQ7cJhtiNex792xfy5BNlWvBzoo2CQumB2w49EISUYqHyFHc', '2021-03-27 10:51:37', '2021-07-05 06:39:02', NULL, NULL, NULL, NULL),
(7, 'Dinh', 'phong', NULL, 'dinhphong2208200@gmail.com', NULL, '$2y$10$7N4tbbZIPUwWliI.KMxctuiQMD1iZx9QFH2vvzfitKT3TnZIPMkoC', NULL, '2021-07-09 18:59:05', '2021-07-09 18:59:05', NULL, NULL, NULL, NULL),
(8, 'qfasg', 'ấgsa', NULL, 'admin2@gmail.com', '2021-09-02 22:53:57', '$2y$10$TBd6TzfmaXlpPdggO0Tvy.QBZ4wDqnhDxIzxUuEjCFTrBxOMnqxcW', NULL, '2021-09-02 22:53:57', '2021-09-02 22:53:57', NULL, NULL, NULL, NULL),
(9, 'SFASGSAF', 'GÁGSAD', NULL, 'admin4@gmail.com', '2021-09-02 22:54:42', '$2y$10$W2DhNtTfa.9kkjVuv2Scyuk6r.ApNy0lOYfZmL1igCSz3GRn74.kq', NULL, '2021-09-02 22:54:42', '2021-09-02 22:54:42', NULL, NULL, NULL, NULL),
(10, '12512', '61243214', NULL, 'admin7@gmail.com', '2021-09-02 22:56:21', '$2y$10$DsP7TB7G53rlFnB/bLXebOEQ54kBYFda2QZaFGJLpKNjVhzL1iM8q', NULL, '2021-09-02 22:56:21', '2021-09-02 22:56:21', NULL, NULL, NULL, NULL),
(11, 'ágfsag', 'ưgdshsdfsd', NULL, 'admi52n@gmail.com', '2021-09-02 22:57:08', '$2y$10$Oh02jYaFcR/Ar/dWoIbYKuYHNFkJbNbczFv2yZgh8JR50EypiwnwC', NULL, '2021-09-02 22:57:08', '2021-09-02 22:57:08', NULL, NULL, NULL, NULL),
(12, 'いい', 'せい', NULL, 'dinhphong2208200000@gmail.com', NULL, '$2y$10$HZOcF3tdY1luo/eScJtdlOgN18jgqQQ/10DkV1mbPdwNoz/jt0g.y', NULL, '2021-09-05 01:27:26', '2021-09-05 01:27:26', NULL, NULL, NULL, NULL),
(13, 'いい', 'せい', NULL, 'dinhphong22082000@gmail.com', NULL, '$2y$10$Pu0Km2f/Q3QbfTDcWPnhl.2FIYFUFR4WF1GWy.pGTXb95Zl7YsLoa', NULL, '2021-09-05 01:29:49', '2021-09-05 01:29:49', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-03-27 10:51:37', '2021-03-27 10:51:37'),
(6, 8, 2, NULL, NULL),
(7, 9, 2, NULL, NULL),
(8, 10, 2, NULL, NULL),
(9, 11, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `verify_users`
--

CREATE TABLE `verify_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(115) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `verify_users`
--

INSERT INTO `verify_users` (`id`, `token`, `user_id`, `created_at`, `updated_at`) VALUES
(6, 'QVY3lbTONg4sHWOTV3Rm0jJhCIe3Q97zTNbz37bIGrCA8a1aWt2FzQkUJBzQ', 7, '2021-07-09 18:59:05', '2021-07-09 18:59:05'),
(7, '3m8dYOaMPsYm8pTgpzRKYLboMZzpuqbGCVWJrswUXFmvqkakyLbkfgFFlbbx', 8, '2021-09-02 22:53:57', '2021-09-02 22:53:57'),
(8, 'I0nnybr5no24kKNDc6jLrJYlTdriIKHrPEjEO6JKa79gFKApTXqKkqTvDjn7', 9, '2021-09-02 22:54:42', '2021-09-02 22:54:42'),
(9, 'mpwMcGpYjNDg9O7xa2iBVXl3gefhosSbZb5jt4rZEPwSID3OQYDZWakc3QLS', 10, '2021-09-02 22:56:21', '2021-09-02 22:56:21'),
(10, 'YIzwpR6OOeZi0qd2XWBHP2In5hXCklkrE3fJ4Vwlo4tDrusvcQC2OAAgur2Y', 11, '2021-09-02 22:57:08', '2021-09-02 22:57:08'),
(11, '6booZIU6d7pwb7Ax9WTdjpkI6dDQKUHowAbUeQbwG1pVHgIli6bupBBFgWVk', 12, '2021-09-05 01:27:26', '2021-09-05 01:27:26'),
(12, 'Oit31gAnDtbpQJXmqXUQRyLB96N0gOLLtiXBQ5L341WQG7bPWEbmtrFvVw4H', 13, '2021-09-05 01:29:49', '2021-09-05 01:29:49');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_items`
--
ALTER TABLE `bill_items`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_roles_role_id_foreign` (`role_id`),
  ADD KEY `permission_roles_permission_id_foreign` (`permission_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_seller_id_foreign` (`seller_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Chỉ mục cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_id_foreign` (`user_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `verify_users`
--
ALTER TABLE `verify_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_users_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `bill_items`
--
ALTER TABLE `bill_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `verify_users`
--
ALTER TABLE `verify_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `post_categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `verify_users`
--
ALTER TABLE `verify_users`
  ADD CONSTRAINT `verify_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
