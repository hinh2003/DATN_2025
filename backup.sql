-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: sql212.infinityfree.com
-- Thời gian đã tạo: Th6 02, 2025 lúc 02:45 AM
-- Phiên bản máy phục vụ: 10.6.19-MariaDB
-- Phiên bản PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `if0_36903446_laravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banners`
--

CREATE TABLE `banners` (
                           `id` bigint(20) UNSIGNED NOT NULL,
                           `title` varchar(255) NOT NULL,
                           `image` varchar(255) NOT NULL,
                           `start_date` datetime DEFAULT NULL,
                           `end_date` datetime DEFAULT NULL,
                           `status` tinyint(1) NOT NULL DEFAULT 1,
                           `priority` int(11) NOT NULL DEFAULT 0,
                           `created_at` timestamp NULL DEFAULT NULL,
                           `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banners`
--

INSERT INTO `banners` (`id`, `title`, `image`, `start_date`, `end_date`, `status`, `priority`, `created_at`, `updated_at`) VALUES
                                                                                                                               (2, 'hoi', 'frontend/banners/360_F_732109080_4lXwGofazqAiysUpcCnrbflsNOl9EMdW.jpg', '2025-01-01 00:00:00', '2026-02-12 00:00:00', 1, 1, '2025-02-26 06:03:31', '2025-02-26 06:03:31'),
                                                                                                                               (3, '2', 'frontend/banners/360_F_959226851_X6GuMnZK215eRKbxVBCuQziVSAw1EDlG.jpg', '2025-01-21 00:00:00', '2029-02-12 00:00:00', 1, 2, '2025-02-26 06:04:06', '2025-02-26 06:04:06'),
                                                                                                                               (4, '21', 'frontend/banners/360_F_850290796_MGJwwzCiAOEmn87gc8qjkBE0ulSm0g0W.jpg', '2021-01-01 00:00:00', '2029-02-12 00:00:00', 1, 1, '2025-02-26 06:04:35', '2025-02-26 06:04:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
                         `key` varchar(255) NOT NULL,
                         `value` mediumtext NOT NULL,
                         `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
                               `key` varchar(255) NOT NULL,
                               `owner` varchar(255) NOT NULL,
                               `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
                              `id` bigint(20) UNSIGNED NOT NULL,
                              `name_category` varchar(255) NOT NULL,
                              `created_at` timestamp NULL DEFAULT NULL,
                              `updated_at` timestamp NULL DEFAULT NULL,
                              `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name_category`, `created_at`, `updated_at`, `description`) VALUES
                                                                                                (2, 'Lãng Mạng', '2024-07-01 21:22:11', '2024-07-01 21:22:11', 'ádfasd'),
                                                                                                (3, 'Hành Động', '2024-07-01 21:22:15', '2024-07-01 21:22:15', '1231223123123123123'),
                                                                                                (4, 'PHIÊU LƯU', '2024-07-01 21:23:08', '2024-07-01 21:23:08', '1231223123123123123'),
                                                                                                (5, 'Kinh Dị', '2024-07-02 07:55:12', '2024-07-02 07:55:12', 'Anime kinh dị thường mang đến cho người xem cảm giác lo âu, căng thẳng và hoang mang. Thể loại này thường khai thác những yếu tố như ma quái, huyền bí, tâm lý học sâu sắc và những tình huống đáng sợ để tạo ra không khí ám ảnh. Các câu chuyện thường có tính tâm linh cao, với những yếu tố siêu nhiên như ma quái, ma cà rồng, ma thuật hoặc những hiện tượng kỳ lạ.  Điểm chung của anime kinh dị là khả năng tạo ra sự căng thẳng và bí ẩn, thường đi kèm với một âm thanh và hình ảnh đặc biệt để làm nổi bật sự ám ảnh và sợ hãi trong câu chuyện. Ngoài ra, anime kinh dị cũng có thể chứa những thông điệp sâu sắc về con người, tâm lý và xã hội, đặc biệt là qua những phản ánh về nỗi sợ hãi và nỗi ám ảnh trong tâm trí con người.'),
                                                                                                (6, 'Hài hước', '2024-07-02 07:55:38', '2024-07-02 07:55:38', 'Mang đến cho người xem những nụ cười sảng khoái qua những tình huống hài hước, nhân vật hóm hỉnh và các câu chuyện dở khóc dở cười.'),
                                                                                                (7, 'Khoa học viễn tưởng', '2024-07-02 07:55:51', '2024-07-02 07:55:51', 'Xây dựng những thế giới tương lai, công nghệ tiên tiến và những câu chuyện xoay quanh những sự kiện khoa học, công nghệ vượt trội.'),
                                                                                                (8, 'Kỳ ảo', '2024-07-02 07:56:01', '2024-07-02 07:56:01', 'Chuyển tải những thế giới hư cấu, phép thuật, sinh vật huyền bí và những cuộc chiến giữa các thế lực siêu nhiên'),
                                                                                                (9, 'test', '2025-05-10 21:45:48', '2025-05-10 21:45:48', '123123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_movies`
--

CREATE TABLE `category_movies` (
                                   `id` bigint(20) UNSIGNED NOT NULL,
                                   `category_id` bigint(20) UNSIGNED NOT NULL,
                                   `movie_id` bigint(20) UNSIGNED NOT NULL,
                                   `created_at` timestamp NULL DEFAULT NULL,
                                   `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_movies`
--

INSERT INTO `category_movies` (`id`, `category_id`, `movie_id`, `created_at`, `updated_at`) VALUES
                                                                                                (4, 3, 34, NULL, NULL),
                                                                                                (5, 2, 34, NULL, NULL),
                                                                                                (6, 4, 34, NULL, NULL),
                                                                                                (7, 3, 35, NULL, NULL),
                                                                                                (8, 2, 35, NULL, NULL),
                                                                                                (11, 3, 2, NULL, NULL),
                                                                                                (12, 4, 2, NULL, NULL),
                                                                                                (13, 4, 3, NULL, NULL),
                                                                                                (14, 7, 3, NULL, NULL),
                                                                                                (15, 8, 3, NULL, NULL),
                                                                                                (16, 4, 4, NULL, NULL),
                                                                                                (17, 3, 4, NULL, NULL),
                                                                                                (18, 2, 4, NULL, NULL),
                                                                                                (19, 5, 5, NULL, NULL),
                                                                                                (20, 3, 5, NULL, NULL),
                                                                                                (21, 8, 5, NULL, NULL),
                                                                                                (22, 8, 6, NULL, NULL),
                                                                                                (23, 4, 6, NULL, NULL),
                                                                                                (24, 2, 6, NULL, NULL),
                                                                                                (28, 7, 24, NULL, NULL),
                                                                                                (29, 4, 24, NULL, NULL),
                                                                                                (30, 8, 24, NULL, NULL),
                                                                                                (31, 6, 9, NULL, NULL),
                                                                                                (32, 3, 9, NULL, NULL),
                                                                                                (34, 8, 2, NULL, NULL),
                                                                                                (35, 6, 3, NULL, NULL),
                                                                                                (36, 4, 36, NULL, NULL),
                                                                                                (37, 3, 36, NULL, NULL),
                                                                                                (38, 2, 36, NULL, NULL),
                                                                                                (39, 3, 37, NULL, NULL),
                                                                                                (40, 2, 37, NULL, NULL),
                                                                                                (41, 4, 37, NULL, NULL),
                                                                                                (42, 3, 38, NULL, NULL),
                                                                                                (43, 2, 38, NULL, NULL),
                                                                                                (44, 6, 38, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chap_movies`
--

CREATE TABLE `chap_movies` (
                               `id` bigint(20) UNSIGNED NOT NULL,
                               `name_chap` int(11) NOT NULL,
                               `link_chap` text NOT NULL,
                               `movie_id` bigint(20) UNSIGNED NOT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL,
                               `aws_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chap_movies`
--

INSERT INTO `chap_movies` (`id`, `name_chap`, `link_chap`, `movie_id`, `created_at`, `updated_at`, `aws_link`) VALUES
                                                                                                                   (4, 1, 'https://playhydrax.com/?v=ArnPtkd9xD', 2, '2024-07-09 06:44:36', '2024-07-12 01:44:56', 'https://videoanime.s3.ap-southeast-2.amazonaws.com/videos/1746506294_file_example_MP4_480_1_5MG.mp4'),
                                                                                                                   (5, 2, 'https://playhydrax.com/?v=ArnPtkd9xD', 2, '2024-07-09 07:42:01', '2024-07-12 01:44:58', 'https://videoanime.s3.ap-southeast-2.amazonaws.com/videos/1746506294_file_example_MP4_480_1_5MG.mp4'),
                                                                                                                   (6, 1, 'https://playhydrax.com/?v=ArnPtkd9xD', 3, '2024-07-09 23:36:40', '2024-07-09 23:36:40', 'https://videoanime.s3.ap-southeast-2.amazonaws.com/videos/1746506294_file_example_MP4_480_1_5MG.mp4'),
                                                                                                                   (9, 3, 'https://playhydrax.com/?v=gnKmH-s5t', 2, '2024-07-15 12:09:07', '2024-07-15 12:09:07', 'https://videoanime.s3.ap-southeast-2.amazonaws.com/videos/1746506294_file_example_MP4_480_1_5MG.mp4'),
                                                                                                                   (10, 4, 'https://playhydrax.com/?v=pgLRx9rJw6', 2, '2024-07-15 12:11:51', '2024-07-15 12:11:51', 'https://videoanime.s3.ap-southeast-2.amazonaws.com/videos/1746506294_file_example_MP4_480_1_5MG.mp4'),
                                                                                                                   (11, 5, 'https://playhydrax.com/?v=-aluAoggvry', 2, '2024-07-15 12:12:45', '2024-07-15 12:12:45', 'https://videoanime.s3.ap-southeast-2.amazonaws.com/videos/1746506294_file_example_MP4_480_1_5MG.mp4'),
                                                                                                                   (12, 6, 'https://playhydrax.com/?v=iYwlT6KrF', 2, '2024-07-15 12:13:28', '2024-07-15 12:13:28', 'https://videoanime.s3.ap-southeast-2.amazonaws.com/videos/1746506294_file_example_MP4_480_1_5MG.mp4'),
                                                                                                                   (13, 1, 'https://short.icu/6lMi4t-cET', 38, '2025-05-10 21:41:22', '2025-05-10 21:41:22', 'https://videoanime.s3.ap-southeast-2.amazonaws.com/videos/h7PyBkXiHPaI9JmhfACjzP8n9bOhLC83e0JdjV7t.mp4');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
                            `id` bigint(20) UNSIGNED NOT NULL,
                            `content` text NOT NULL,
                            `user_id` bigint(20) UNSIGNED NOT NULL,
                            `movie_id` bigint(20) UNSIGNED NOT NULL,
                            `created_at` timestamp NULL DEFAULT NULL,
                            `updated_at` timestamp NULL DEFAULT NULL,
                            `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `content`, `user_id`, `movie_id`, `created_at`, `updated_at`, `status`) VALUES
                                                                                                          (1, 'dfghdf', 1, 2, '2025-03-02 02:19:22', '2025-03-02 02:19:22', 1),
                                                                                                          (2, 'sadasdadasda', 1, 2, '2025-03-02 02:22:27', '2025-03-02 02:22:27', 1),
                                                                                                          (3, 'asdasdsa', 1, 2, '2025-03-02 02:24:31', '2025-03-02 02:24:31', 1),
                                                                                                          (4, 'DASDASDA', 1, 2, '2025-03-02 02:26:14', '2025-03-02 02:26:14', 1),
                                                                                                          (5, 'DASDASDA', 1, 2, '2025-03-02 02:26:15', '2025-03-02 02:26:15', 1),
                                                                                                          (6, 'DASDASDA', 1, 2, '2025-03-02 02:26:16', '2025-03-02 02:26:16', 1),
                                                                                                          (7, 'DASDASDA', 1, 2, '2025-03-02 02:26:17', '2025-03-02 02:26:17', 1),
                                                                                                          (8, 'DASDASDA', 1, 2, '2025-03-02 02:26:17', '2025-03-02 02:26:17', 1),
                                                                                                          (9, 'DASDASDA', 1, 2, '2025-03-02 02:26:17', '2025-03-02 02:26:17', 1),
                                                                                                          (10, 'SADASDA', 1, 2, '2025-03-02 02:26:31', '2025-03-02 02:26:31', 1),
                                                                                                          (11, 'HINH20031', 1, 2, '2025-03-02 02:26:39', '2025-03-02 02:26:39', 1),
                                                                                                          (12, 'DFGS', 1, 2, '2025-03-02 02:27:31', '2025-03-02 02:27:31', 1),
                                                                                                          (13, 'SDFSDFS', 1, 2, '2025-03-02 02:27:46', '2025-03-02 02:27:46', 1),
                                                                                                          (14, 'ASD1', 1, 2, '2025-03-02 02:28:00', '2025-03-02 02:28:00', 1),
                                                                                                          (15, '123', 1, 2, '2025-03-02 02:28:48', '2025-03-02 02:28:48', 1),
                                                                                                          (16, 'HINH200-3', 1, 2, '2025-03-02 02:28:55', '2025-03-02 02:28:55', 1),
                                                                                                          (17, 'asda', 1, 2, '2025-03-02 02:32:57', '2025-03-02 02:32:57', 1),
                                                                                                          (18, 'dasda', 1, 2, '2025-03-02 02:33:27', '2025-03-02 02:33:27', 1),
                                                                                                          (19, 'sadas', 2, 2, '2025-03-02 02:33:52', '2025-03-02 02:33:52', 1),
                                                                                                          (20, 'a', 2, 2, '2025-03-02 02:34:01', '2025-03-02 02:34:01', 1),
                                                                                                          (21, 'asda', 1, 2, '2025-03-02 02:34:10', '2025-03-02 02:34:10', 1),
                                                                                                          (22, 'd', 2, 2, '2025-03-02 02:34:12', '2025-03-02 02:34:12', 1),
                                                                                                          (23, 'đâs', 1, 2, '2025-03-02 03:30:10', '2025-03-02 03:30:10', 1),
                                                                                                          (24, 'gfjj', 1, 2, '2025-03-02 03:41:14', '2025-03-02 03:41:14', 1),
                                                                                                          (25, 'fsdfs', 2, 2, '2025-03-02 03:41:33', '2025-03-02 03:41:33', 1),
                                                                                                          (26, 'das', 1, 2, '2025-03-02 03:44:15', '2025-03-02 03:44:15', 1),
                                                                                                          (27, 'asd', 1, 2, '2025-03-02 03:45:45', '2025-03-02 03:45:45', 1),
                                                                                                          (28, 'gtcdthjncdfghn', 1, 2, '2025-03-02 03:47:00', '2025-03-02 03:47:00', 1),
                                                                                                          (29, 'asdasda', 2, 2, '2025-03-02 03:47:13', '2025-03-02 03:47:13', 1),
                                                                                                          (30, 'gsfdgfd', 1, 2, '2025-03-02 03:48:31', '2025-03-02 03:48:31', 1),
                                                                                                          (31, 'asdasdasdasdasdada', 2, 2, '2025-03-02 03:49:17', '2025-03-02 03:49:17', 1),
                                                                                                          (32, 'asdasda', 2, 2, '2025-03-02 03:50:20', '2025-03-02 03:50:20', 1),
                                                                                                          (33, 'cxzvxc', 1, 2, '2025-03-02 03:50:23', '2025-03-02 03:50:23', 1),
                                                                                                          (34, 'dasdasdsa', 2, 2, '2025-03-02 03:51:51', '2025-03-02 03:51:51', 1),
                                                                                                          (35, 'dasdasdasd', 1, 2, '2025-03-02 03:52:01', '2025-03-02 03:52:01', 1),
                                                                                                          (36, 'dasdsadass', 1, 2, '2025-03-02 04:03:06', '2025-03-02 04:03:06', 1),
                                                                                                          (37, 'asdasdas', 2, 2, '2025-03-02 04:03:48', '2025-05-09 07:24:18', 0),
                                                                                                          (38, 'asd', 2, 2, '2025-03-02 04:19:27', '2025-05-09 07:24:20', 0),
                                                                                                          (39, 'asdsad', 2, 2, '2025-03-02 04:23:38', '2025-05-09 07:24:24', 0),
                                                                                                          (40, 'asdasd', 2, 2, '2025-03-02 04:23:45', '2025-05-09 07:24:14', 0),
                                                                                                          (41, 'asdas', 2, 2, '2025-03-02 04:24:47', '2025-05-09 07:24:11', 0),
                                                                                                          (42, 'hjgm', 2, 2, '2025-03-02 04:25:24', '2025-05-09 07:24:08', 0),
                                                                                                          (43, 'asdasdsa', 2, 2, '2025-03-02 04:25:45', '2025-05-09 07:24:05', 0),
                                                                                                          (44, 'Phim hay quá cảm xúc thật sự', 2, 2, '2025-03-02 04:25:49', '2025-05-09 07:24:40', 1),
                                                                                                          (47, 'Hiohihihi', 1, 3, '2025-03-02 14:04:56', '2025-03-02 14:04:56', 1),
                                                                                                          (48, 'Hiohihihi', 1, 3, '2025-03-02 14:06:00', '2025-03-02 14:06:00', 1),
                                                                                                          (49, 'Hiohihihi', 1, 3, '2025-03-02 14:06:07', '2025-03-02 14:06:07', 1),
                                                                                                          (50, 'Hiohihihi', 1, 3, '2025-03-02 14:06:10', '2025-03-02 14:06:10', 1),
                                                                                                          (51, 'Hiohihihi', 1, 3, '2025-03-02 14:06:25', '2025-03-02 14:06:25', 1),
                                                                                                          (52, 'Hiohihihi', 1, 3, '2025-03-02 14:08:18', '2025-03-02 14:08:18', 1),
                                                                                                          (53, 'Hiohihihi', 1, 3, '2025-03-02 14:08:21', '2025-03-02 14:08:21', 1),
                                                                                                          (54, 'Hiohihihi', 1, 3, '2025-03-02 14:09:11', '2025-03-02 14:09:11', 1),
                                                                                                          (55, 'Hiohihihi', 1, 3, '2025-03-02 14:09:16', '2025-03-02 14:09:16', 1),
                                                                                                          (56, 'Hiohihihi', 1, 3, '2025-03-02 14:09:24', '2025-03-02 14:09:24', 1),
                                                                                                          (57, 'Hiohihihi', 1, 3, '2025-03-02 14:10:22', '2025-03-02 14:10:22', 1),
                                                                                                          (58, 'Hiohihihi', 1, 3, '2025-03-02 14:15:48', '2025-03-02 14:15:48', 1),
                                                                                                          (59, 'Hiohihihi', 1, 3, '2025-03-02 14:15:51', '2025-03-02 14:15:51', 1),
                                                                                                          (60, 'Hiohihihi', 1, 3, '2025-03-02 14:15:55', '2025-03-02 14:15:55', 1),
                                                                                                          (61, 'Hiohihihi', 1, 3, '2025-03-02 14:16:09', '2025-03-02 14:16:09', 1),
                                                                                                          (62, 'Hiohihihi', 1, 3, '2025-03-02 14:16:12', '2025-03-02 14:16:12', 1),
                                                                                                          (63, 'Hiohihihi', 1, 3, '2025-03-02 14:16:22', '2025-03-02 14:16:22', 1),
                                                                                                          (64, 'Hiohihihi', 1, 3, '2025-03-02 14:16:31', '2025-03-02 14:16:31', 1),
                                                                                                          (65, 'Hiohihihi', 1, 3, '2025-03-02 14:17:28', '2025-03-02 14:17:28', 1),
                                                                                                          (66, 'Hiohihihi', 1, 3, '2025-03-02 14:17:38', '2025-03-02 14:17:38', 1),
                                                                                                          (67, 'Hiohihihi', 1, 3, '2025-03-02 14:18:09', '2025-03-02 14:18:09', 1),
                                                                                                          (68, 'Hiohihihi', 1, 3, '2025-03-02 14:18:11', '2025-03-02 14:18:11', 1),
                                                                                                          (69, 'Hiohihihi', 1, 3, '2025-03-02 14:18:30', '2025-03-02 14:18:30', 1),
                                                                                                          (70, 'Hiohihihi', 1, 3, '2025-03-02 14:18:57', '2025-03-02 14:18:57', 1),
                                                                                                          (71, 'Hiohihihi', 1, 3, '2025-03-02 14:19:10', '2025-03-02 14:19:10', 1),
                                                                                                          (72, 'Hiohihihi', 1, 3, '2025-03-02 14:19:24', '2025-03-02 14:19:24', 1),
                                                                                                          (73, 'Hiohihihi', 1, 3, '2025-03-02 14:20:26', '2025-03-02 14:20:26', 1),
                                                                                                          (74, 'Hiohihihi', 1, 3, '2025-03-02 14:22:21', '2025-03-02 14:22:21', 1),
                                                                                                          (75, 'Hiohihihi', 1, 3, '2025-03-02 14:22:27', '2025-03-02 14:22:27', 1),
                                                                                                          (76, 'Hiohihihi', 1, 3, '2025-03-02 14:22:50', '2025-03-02 14:22:50', 1),
                                                                                                          (77, 'Hiohihihi', 1, 4, '2025-03-02 14:23:55', '2025-03-02 14:23:55', 1),
                                                                                                          (78, 'Hiohihihi', 1, 4, '2025-03-02 14:24:45', '2025-03-02 14:24:45', 1),
                                                                                                          (79, 'Hiohihihi', 1, 4, '2025-03-02 14:25:10', '2025-03-02 14:25:10', 1),
                                                                                                          (80, 'Hiohihihi', 1, 4, '2025-03-02 14:27:29', '2025-03-02 14:27:29', 1),
                                                                                                          (81, 'Hiohihihi', 1, 4, '2025-03-02 14:28:38', '2025-03-02 14:28:38', 1),
                                                                                                          (82, 'Hiohihihi', 1, 4, '2025-03-02 14:29:34', '2025-03-02 14:29:34', 1),
                                                                                                          (83, 'Hiohihihi', 1, 4, '2025-03-02 14:30:45', '2025-03-02 14:30:45', 1),
                                                                                                          (84, 'Hiohihihi', 1, 4, '2025-03-02 14:30:53', '2025-03-02 14:30:53', 1),
                                                                                                          (85, 'Hiohihihi', 1, 4, '2025-03-02 14:33:11', '2025-03-02 14:33:11', 1),
                                                                                                          (86, 'Hiohihihi', 1, 4, '2025-03-02 14:36:53', '2025-03-02 14:36:53', 1),
                                                                                                          (87, 'Hiohihihi', 1, 4, '2025-03-02 14:37:02', '2025-03-02 14:37:02', 1),
                                                                                                          (88, 'Hiohihihi', 1, 4, '2025-03-02 14:37:49', '2025-03-02 14:37:49', 1),
                                                                                                          (89, 'Hiohihihi', 1, 4, '2025-03-02 14:38:27', '2025-03-02 14:38:27', 1),
                                                                                                          (90, 'Hiohihihi', 1, 4, '2025-03-02 14:39:16', '2025-03-02 14:39:16', 1),
                                                                                                          (91, 'Phim nay hay khong', 10, 2, '2025-05-10 21:16:58', '2025-05-10 21:16:58', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
                             `id` bigint(20) UNSIGNED NOT NULL,
                             `name_country` varchar(255) NOT NULL,
                             `created_at` timestamp NULL DEFAULT NULL,
                             `updated_at` timestamp NULL DEFAULT NULL,
                             `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `name_country`, `created_at`, `updated_at`, `description`) VALUES
                                                                                              (2, 'Nhật Bản', '2024-07-01 21:21:03', '2024-07-01 21:21:03', 'Đất nước hoa anh đào'),
                                                                                              (3, 'Trung Quốc', '2024-07-01 21:21:03', '2024-07-01 21:21:03', 'dsaasd');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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

--
-- Đang đổ dữ liệu cho bảng `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
                                                                                                         (1, '7d0210df-8722-4af6-b291-81054a124ef1', 'database', 'default', '{\"uuid\":\"7d0210df-8722-4af6-b291-81054a124ef1\",\"displayName\":\"App\\\\Events\\\\CommentPosted\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:24:\\\"App\\\\Events\\\\CommentPosted\\\":1:{s:7:\\\"comment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Comment\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: The script tried to call a method on an incomplete object. Please ensure that the class definition \"App\\Events\\CommentPosted\" of the object you are trying to operate on was loaded _before_ unserialize() gets called or provide an autoloader to load the class definition in D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:76\nStack trace:\n#0 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(76): method_exists(Object(__PHP_Incomplete_Class), \'broadcastAs\')\n#1 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#27 D:\\DATN_2025\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(196): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\DATN_2025\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-03-02 14:30:40'),
                                                                                                         (2, '1f4207fb-a293-4c30-b524-27b2f0d2dddd', 'database', 'default', '{\"uuid\":\"1f4207fb-a293-4c30-b524-27b2f0d2dddd\",\"displayName\":\"App\\\\Events\\\\CommentPosted\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:24:\\\"App\\\\Events\\\\CommentPosted\\\":1:{s:7:\\\"comment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Comment\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: The script tried to call a method on an incomplete object. Please ensure that the class definition \"App\\Events\\CommentPosted\" of the object you are trying to operate on was loaded _before_ unserialize() gets called or provide an autoloader to load the class definition in D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:76\nStack trace:\n#0 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(76): method_exists(Object(__PHP_Incomplete_Class), \'broadcastAs\')\n#1 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#27 D:\\DATN_2025\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(196): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\DATN_2025\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-03-02 14:30:40'),
                                                                                                         (3, 'a56750f1-b829-49dd-9a37-3aeb9d2fa777', 'database', 'default', '{\"uuid\":\"a56750f1-b829-49dd-9a37-3aeb9d2fa777\",\"displayName\":\"App\\\\Events\\\\CommentPosted\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:24:\\\"App\\\\Events\\\\CommentPosted\\\":1:{s:7:\\\"comment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Comment\\\";s:2:\\\"id\\\";i:3;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: The script tried to call a method on an incomplete object. Please ensure that the class definition \"App\\Events\\CommentPosted\" of the object you are trying to operate on was loaded _before_ unserialize() gets called or provide an autoloader to load the class definition in D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:76\nStack trace:\n#0 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(76): method_exists(Object(__PHP_Incomplete_Class), \'broadcastAs\')\n#1 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#27 D:\\DATN_2025\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(196): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\DATN_2025\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-03-02 14:30:40'),
                                                                                                         (4, 'a72e4bf9-406d-401c-a708-7b94b99fc778', 'database', 'default', '{\"uuid\":\"a72e4bf9-406d-401c-a708-7b94b99fc778\",\"displayName\":\"App\\\\Events\\\\CommentCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\CommentCreated\\\":1:{s:7:\\\"comment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Comment\\\";s:2:\\\"id\\\";i:23;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: The script tried to call a method on an incomplete object. Please ensure that the class definition \"App\\Events\\CommentCreated\" of the object you are trying to operate on was loaded _before_ unserialize() gets called or provide an autoloader to load the class definition in D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:76\nStack trace:\n#0 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(76): method_exists(Object(__PHP_Incomplete_Class), \'broadcastAs\')\n#1 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#27 D:\\DATN_2025\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(196): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\DATN_2025\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-03-02 14:30:40'),
                                                                                                         (5, 'a78029ab-c8f5-4ecb-be5d-f8f4401d1ae2', 'database', 'default', '{\"uuid\":\"a78029ab-c8f5-4ecb-be5d-f8f4401d1ae2\",\"displayName\":\"App\\\\Events\\\\CommentCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\CommentCreated\\\":1:{s:7:\\\"comment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Comment\\\";s:2:\\\"id\\\";i:24;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: The script tried to call a method on an incomplete object. Please ensure that the class definition \"App\\Events\\CommentCreated\" of the object you are trying to operate on was loaded _before_ unserialize() gets called or provide an autoloader to load the class definition in D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:76\nStack trace:\n#0 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(76): method_exists(Object(__PHP_Incomplete_Class), \'broadcastAs\')\n#1 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#27 D:\\DATN_2025\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(196): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\DATN_2025\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-03-02 14:30:40');
INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
                                                                                                         (6, '140a5b6f-12ad-48ba-9ce6-a2e93918f59a', 'database', 'default', '{\"uuid\":\"140a5b6f-12ad-48ba-9ce6-a2e93918f59a\",\"displayName\":\"App\\\\Events\\\\CommentCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\CommentCreated\\\":1:{s:7:\\\"comment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Comment\\\";s:2:\\\"id\\\";i:25;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: The script tried to call a method on an incomplete object. Please ensure that the class definition \"App\\Events\\CommentCreated\" of the object you are trying to operate on was loaded _before_ unserialize() gets called or provide an autoloader to load the class definition in D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:76\nStack trace:\n#0 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(76): method_exists(Object(__PHP_Incomplete_Class), \'broadcastAs\')\n#1 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#27 D:\\DATN_2025\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(196): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\DATN_2025\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-03-02 14:30:40'),
                                                                                                         (7, '3738b2e8-d7c2-4128-9184-646946bbdc16', 'database', 'default', '{\"uuid\":\"3738b2e8-d7c2-4128-9184-646946bbdc16\",\"displayName\":\"App\\\\Events\\\\CommentCreated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\CommentCreated\\\":1:{s:7:\\\"comment\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Comment\\\";s:2:\\\"id\\\";i:26;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 'Error: The script tried to call a method on an incomplete object. Please ensure that the class definition \"App\\Events\\CommentCreated\" of the object you are trying to operate on was loaded _before_ unserialize() gets called or provide an autoloader to load the class definition in D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php:76\nStack trace:\n#0 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Broadcasting\\BroadcastEvent.php(76): method_exists(Object(__PHP_Incomplete_Class), \'broadcastAs\')\n#1 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Broadcasting\\BroadcastEvent->handle(Object(Illuminate\\Broadcasting\\BroadcastManager))\n#2 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#3 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#4 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#5 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#6 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#7 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#8 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#9 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#10 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(124): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(Illuminate\\Broadcasting\\BroadcastEvent), false)\n#11 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(144): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#12 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(119): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#13 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#14 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(71): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Broadcasting\\BroadcastEvent))\n#15 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(102): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#16 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#17 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#18 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(176): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#19 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(139): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#20 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(122): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#21 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#22 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#23 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#24 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#25 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#26 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(213): Illuminate\\Container\\Container->call(Array)\n#27 D:\\DATN_2025\\vendor\\symfony\\console\\Command\\Command.php(279): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#28 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(182): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#29 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(1047): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#30 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(316): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#31 D:\\DATN_2025\\vendor\\symfony\\console\\Application.php(167): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#32 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(196): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#33 D:\\DATN_2025\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(1198): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#34 D:\\DATN_2025\\artisan(13): Illuminate\\Foundation\\Application->handleCommand(Object(Symfony\\Component\\Console\\Input\\ArgvInput))\n#35 {main}', '2025-03-02 14:30:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
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
-- Cấu trúc bảng cho bảng `job_batches`
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
-- Cấu trúc bảng cho bảng `like_movies`
--

CREATE TABLE `like_movies` (
                               `id` bigint(20) UNSIGNED NOT NULL,
                               `user_id` bigint(20) UNSIGNED NOT NULL,
                               `movie_id` bigint(20) UNSIGNED NOT NULL,
                               `created_at` timestamp NULL DEFAULT NULL,
                               `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `like_movies`
--

INSERT INTO `like_movies` (`id`, `user_id`, `movie_id`, `created_at`, `updated_at`) VALUES
                                                                                        (5, 1, 4, NULL, NULL),
                                                                                        (9, 1, 5, NULL, NULL),
                                                                                        (10, 1, 7, NULL, NULL),
                                                                                        (11, 2, 4, NULL, NULL),
                                                                                        (12, 1, 2, NULL, NULL),
                                                                                        (13, 1, 10, NULL, NULL),
                                                                                        (14, 5, 2, NULL, NULL),
                                                                                        (15, 5, 5, NULL, NULL),
                                                                                        (16, 2, 2, NULL, NULL),
                                                                                        (17, 2, 36, NULL, NULL),
                                                                                        (18, 2, 25, NULL, NULL),
                                                                                        (19, 10, 2, NULL, NULL),
                                                                                        (20, 10, 37, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
                              `id` int(10) UNSIGNED NOT NULL,
                              `migration` varchar(255) NOT NULL,
                              `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
                                                          (2, '0001_01_01_000001_create_cache_table', 1),
                                                          (3, '0001_01_01_000002_create_jobs_table', 1),
                                                          (4, '2024_06_26_073508_movies', 1),
                                                          (5, '2024_07_02_054917_update_category_movies', 2),
                                                          (6, '2024_07_02_062708_remove_category_id_from_movies_table', 3),
                                                          (9, '0001_01_01_000000_create_users_table', 4),
                                                          (10, '2024_07_03_134702_movies_like_table', 5),
                                                          (11, '2024_07_05_134532_chappter_movies_table', 6),
                                                          (12, '2025_02_24_014800_edit_column_chap_movies', 7),
                                                          (13, '2025_02_24_035207_create_personal_access_tokens_table', 7),
                                                          (14, '2025_02_24_091735_create_personal_access_tokens_table', 8),
                                                          (15, '2025_02_24_132925_create_personal_access_tokens_table', 9),
                                                          (16, '2025_02_26_085342_create_banners_table', 10),
                                                          (17, '2025_02_27_081509_create_comments_table', 11),
                                                          (18, '2025_03_04_093719_add_column_aws_chap', 12),
                                                          (19, '2025_02_27_040512_add_column_slug_movies', 13),
                                                          (20, '2025_05_06_085507_add_column_avatar_user', 13),
                                                          (21, '2025_05_06_091632_add_status_comment', 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
                          `id` bigint(20) UNSIGNED NOT NULL,
                          `name_movie` varchar(255) NOT NULL,
                          `pic` varchar(255) NOT NULL,
                          `episodes` int(11) NOT NULL,
                          `description` text NOT NULL,
                          `country_id` bigint(20) UNSIGNED NOT NULL,
                          `status_id` bigint(20) UNSIGNED NOT NULL,
                          `created_at` timestamp NULL DEFAULT NULL,
                          `updated_at` timestamp NULL DEFAULT NULL,
                          `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `name_movie`, `pic`, `episodes`, `description`, `country_id`, `status_id`, `created_at`, `updated_at`, `slug`) VALUES
                                                                                                                                               (2, 'Boku no Hero Academia 7th Season', 'images/Boku no Hero Academia 7th Season.jpg', 13, '1231223123123123123', 2, 2, '2024-07-01 21:23:39', '2024-07-09 06:44:19', ''),
                                                                                                                                               (3, 'BOUSHOKU-NO-BERSERK', 'images/BOUSHOKU-NO-BERSERK.png', 13, '1231223123123123123', 2, 2, '2024-07-01 22:33:50', '2024-07-01 22:33:50', ''),
                                                                                                                                               (4, 'BUTA-NO-LIVER-WA-KANETSU-SHIRO', 'images/BUTA-NO-LIVER-WA-KANETSU-SHIRO.png', 13, '1231223123123123123', 2, 2, '2024-07-01 22:34:02', '2024-07-01 22:34:02', ''),
                                                                                                                                               (5, 'CAPTAIN-TSUBASA-SEASON-2', 'images/CAPTAIN-TSUBASA-SEASON-2.png', 13, '1231223123123123123', 2, 2, '2024-07-01 22:34:50', '2024-07-01 22:34:50', ''),
                                                                                                                                               (6, 'CỬU THẦN PHONG TÂN LỤC', 'images/CỬU-THẦN-PHONG-VÂN-LỤC.png', 13, '1231223123123123123', 3, 2, '2024-07-01 22:35:27', '2024-07-01 22:35:27', ''),
                                                                                                                                               (7, 'DARK GATHERING', 'images/DARK-GATHERING.png', 13, '1231223123123123123', 2, 2, '2024-07-01 22:35:41', '2024-07-01 22:35:41', ''),
                                                                                                                                               (8, 'Đấu La Đại Lục 2 Tuyệt Thế Đường Môn', 'images/Đấu La Đại Lục 2 Tuyệt Thế Đường Môn.jpg', 13, '1231223123123123123', 3, 2, '2024-07-01 22:35:52', '2024-07-01 22:35:52', ''),
                                                                                                                                               (9, 'Đấu Phá Thương Khung Phần 5', 'images/Đấu Phá Thương Khung Phần 5.jpg', 13, '1231223123123123123', 3, 2, '2024-07-01 22:36:03', '2024-07-01 22:36:03', ''),
                                                                                                                                               (10, 'Dekisokonai to Yobareta Motoeiyuu wa Jikka kara Tsuihou sareta node Sukikatte ni Ikiru Koto ni Shita', 'images/Dekisokonai to Yobareta Motoeiyuu wa Jikka kara Tsuihou sareta node Sukikatte ni Ikiru Koto ni Shita.jpg', 13, '1231223123123123123', 2, 2, '2024-07-01 22:36:16', '2024-07-01 22:36:16', ''),
                                                                                                                                               (11, 'DEKOBOKO-MAJO-NO-OYAKO-JIJOU', 'images/DEKOBOKO-MAJO-NO-OYAKO-JIJOU.png', 13, '1231223123123123123', 2, 2, '2024-07-01 22:36:25', '2024-07-01 22:36:25', ''),
                                                                                                                                               (12, 'Độc Bộ Tiêu Dao', 'images/Độc Bộ Tiêu Dao.jpg', 13, '1231223123123123123', 3, 2, '2024-07-01 22:36:41', '2024-07-01 22:36:41', ''),
                                                                                                                                               (13, 'Hananoi-kun to Koi no YamaiHananoi-kun to Koi no Yamai', 'images/Hananoi-kun to Koi no YamaiHananoi-kun to Koi no Yamai.jpg', 13, '1231223123123123123', 2, 2, '2024-07-01 22:38:20', '2024-07-01 22:38:20', ''),
                                                                                                                                               (14, 'Huyễn Sủng Sư', 'images/Huyễn Sủng Sư.jpg', 13, '1231223123123123123', 3, 3, '2024-07-01 22:38:33', '2024-07-01 22:38:33', ''),
                                                                                                                                               (15, 'Kaijuu 8-gou', 'images/Kaijuu 8-gou.jpg', 13, '1231223123123123123', 2, 2, '2024-07-01 22:40:15', '2024-07-01 22:40:15', ''),
                                                                                                                                               (16, 'Kim Ngô Vệ', 'images/Kim Ngô Vệ.jpg', 13, '1231223123123123123', 3, 2, '2024-07-01 22:40:26', '2024-07-01 22:40:26', ''),
                                                                                                                                               (17, 'Luyện Khí Mười Vạn Năm', 'images/Luyện Khí Mười Vạn Năm.jpg', 13, '1231223123123123123', 3, 2, '2024-07-01 22:40:44', '2024-07-01 22:40:44', ''),
                                                                                                                                               (18, 'Madogiwa no Totto-chan', 'images/Madogiwa no Totto-chan.jpg', 13, '1231223123123123123', 2, 2, '2024-07-01 22:41:43', '2024-07-01 22:41:43', ''),
                                                                                                                                               (19, 'Mahouka Koukou no Rettousei 3rd Season', 'images/Mahouka Koukou no Rettousei 3rd Season.jpg', 13, '1231223123123123123', 2, 2, '2024-07-01 22:41:53', '2024-07-01 22:41:53', ''),
                                                                                                                                               (20, 'Maou Gakuin no Futekigousha', 'images/Maou Gakuin no Futekigousha.jpg', 13, '1231223123123123123', 2, 2, '2024-07-01 22:42:05', '2024-07-01 22:42:05', ''),
                                                                                                                                               (21, 'Nghịch Thiên Chí Tôn', 'images/Nghịch Thiên Chí Tôn.jpg', 13, '1231223123123123123', 3, 2, '2024-07-01 22:42:21', '2024-07-01 22:42:21', ''),
                                                                                                                                               (22, 'Oi! Tonbo', 'images/Oi! Tonbo.jpg', 13, '1231223123123123123', 2, 2, '2024-07-01 22:42:35', '2024-07-01 22:42:35', ''),
                                                                                                                                               (23, 'One Piece', 'images/One Piece.jpg', 13, '1231223123123123123', 2, 2, '2024-07-01 22:43:12', '2024-07-01 22:43:12', ''),
                                                                                                                                               (24, 'Phàm Nhân Tu Tiên', 'images/Phàm Nhân Tu Tiên.jpg', 13, '1231223123123123123', 3, 2, '2024-07-01 22:43:33', '2024-07-01 22:43:33', ''),
                                                                                                                                               (25, 'Yuru Camp△ Season 3', 'images/Yuru Camp△ Season 3.jpg', 13, '1231223123123123123', 2, 2, '2024-07-02 00:19:13', '2024-07-02 00:19:13', ''),
                                                                                                                                               (27, 'Tru Tiên', 'images/Tru Tiên.jpg', 13, '1231223123123123123', 3, 3, '2024-07-02 01:07:57', '2024-07-02 01:07:57', ''),
                                                                                                                                               (32, 'Tru Tiên', 'images/Tru Tiên.jpg', 13, '1231223123123123123', 2, 2, '2024-07-02 01:29:09', '2024-07-02 01:29:09', ''),
                                                                                                                                               (34, 'Wind Breaker', 'images/Wind Breaker.jpg', 13, '1231223123123123123', 2, 3, '2024-07-02 01:43:58', '2024-07-02 01:43:58', ''),
                                                                                                                                               (35, 'The New Gate', 'images/The New Gate.jpg', 13, '1231223123123123123', 2, 2, '2024-07-02 01:52:10', '2024-07-02 01:52:10', ''),
                                                                                                                                               (36, 'Fairy Tail: 100 Years Quest', 'images/4103.jpg', 13, '1231223123123123123', 2, 2, '2024-07-15 02:09:01', '2024-07-15 02:09:01', ''),
                                                                                                                                               (37, 'Mushoku Tensei II: Isekai Ittara Honki Dasu-ss3', 'images/3805-1711839609.jpg', 13, '1231223123123123123', 2, 2, '2024-07-15 02:42:25', '2025-05-10 21:21:04', 'mushoku-tensei-ii-isekai-ittara-honki-dasu-ss3'),
                                                                                                                                               (38, 'test123', 'images/ChatGPT Image May 9, 2025, 09_01_59 PM.png', 13, '1231223123123123123', 2, 3, '2025-05-10 21:22:16', '2025-05-10 21:22:16', 'test123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
                                         `email` varchar(255) NOT NULL,
                                         `token` varchar(255) NOT NULL,
                                         `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
                                          `id` bigint(20) UNSIGNED NOT NULL,
                                          `tokenable_type` varchar(255) NOT NULL,
                                          `tokenable_id` bigint(20) UNSIGNED NOT NULL,
                                          `name` varchar(255) NOT NULL,
                                          `token` varchar(64) NOT NULL,
                                          `abilities` text DEFAULT NULL,
                                          `last_used_at` timestamp NULL DEFAULT NULL,
                                          `expires_at` timestamp NULL DEFAULT NULL,
                                          `created_at` timestamp NULL DEFAULT NULL,
                                          `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
                                                                                                                                                                          (9, 'App\\Models\\User', 2, 'AuthToken', '7908d6a13ed8153319b7b3adc843a864f99a3864c6ba70952882e13a9a1ee083', '[\"*\"]', NULL, NULL, '2025-02-24 20:07:12', '2025-02-24 20:07:12'),
                                                                                                                                                                          (10, 'App\\Models\\User', 2, 'AuthToken', 'a2d89d8ccbf0c585c68121c24ac666a1bf6182a2ec582e2b6799d82ddff01762', '[\"*\"]', NULL, NULL, '2025-02-24 20:09:20', '2025-02-24 20:09:20'),
                                                                                                                                                                          (11, 'App\\Models\\User', 2, 'AuthToken', 'ac2467330c400232b37ccf203f715eaf50d4d988afd084eeeaea2e402826b3fc', '[\"*\"]', NULL, NULL, '2025-02-24 20:13:44', '2025-02-24 20:13:44'),
                                                                                                                                                                          (12, 'App\\Models\\User', 2, 'AuthToken', '31fe3a917e8ec60a393c641d249c0e3b32ebba4c592ac4397f8087e3ebc2c0c6', '[\"*\"]', NULL, NULL, '2025-02-24 20:20:31', '2025-02-24 20:20:31'),
                                                                                                                                                                          (13, 'App\\Models\\User', 2, 'auth_token', 'ec1a4ad27c3c908abc74d77e3dff329cce9dc15d66b9996a7e608abe754468a9', '[\"*\"]', NULL, '2025-03-03 20:23:22', '2025-02-24 20:23:22', '2025-02-24 20:23:22'),
                                                                                                                                                                          (14, 'App\\Models\\User', 2, 'auth_token', '2b341ac2b2a11726e621a1c77476637d32a70328078bb84ac008be90fd786e6f', '[\"*\"]', NULL, '2025-03-03 20:26:24', '2025-02-24 20:26:24', '2025-02-24 20:26:24'),
                                                                                                                                                                          (15, 'App\\Models\\User', 2, 'auth_token', '21d15ff88aca8ef58fb7b610eec16b4e1337505d849ecd9769b9949f34f3847b', '[\"*\"]', '2025-02-24 20:37:32', '2025-03-03 20:36:25', '2025-02-24 20:36:25', '2025-02-24 20:37:32'),
                                                                                                                                                                          (16, 'App\\Models\\User', 2, 'auth_token', 'f6f9b1fc207d84844dbf4b975a5824dc0239a0962543f9f1e1be95e13bd300b7', '[\"*\"]', NULL, '2025-03-03 20:38:29', '2025-02-24 20:38:29', '2025-02-24 20:38:29'),
                                                                                                                                                                          (17, 'App\\Models\\User', 2, 'auth_token', '4b16bf3d5718b830a973df2a289834a5fd3dd7b40010197bd9056cf19e2ba54b', '[\"*\"]', NULL, '2025-03-03 20:38:50', '2025-02-24 20:38:50', '2025-02-24 20:38:50'),
                                                                                                                                                                          (18, 'App\\Models\\User', 2, 'auth_token', 'fef8dd92b9eae0723f09a4ff9a4eb52d6d557f1bceda16f2c89fded6ab0064f2', '[\"*\"]', NULL, '2025-03-03 20:39:37', '2025-02-24 20:39:37', '2025-02-24 20:39:37'),
                                                                                                                                                                          (19, 'App\\Models\\User', 2, 'auth_token', '65c20ff26102084ee4948a56a035f6c9a4dab13e093d203047b14adbb43e3d92', '[\"*\"]', NULL, '2025-03-03 20:40:10', '2025-02-24 20:40:10', '2025-02-24 20:40:10'),
                                                                                                                                                                          (20, 'App\\Models\\User', 2, 'auth_token', '2ce5978dfc1209aadb02552200c9bcd6e3f98cf56ca15dd6f28f52c36618421b', '[\"*\"]', NULL, '2025-03-03 20:40:34', '2025-02-24 20:40:34', '2025-02-24 20:40:34'),
                                                                                                                                                                          (21, 'App\\Models\\User', 2, 'auth_token', '93a1cf858d35069c70aee8dec31dfd3bb5074631fd49493dd103dafe80e79529', '[\"*\"]', '2025-02-24 20:43:13', '2025-03-03 20:41:09', '2025-02-24 20:41:09', '2025-02-24 20:43:13'),
                                                                                                                                                                          (22, 'App\\Models\\User', 2, 'auth_token', '0eb6155f0c83ef3085cfcd624f586656b1d98c5cb51b91c1a04937b118954ba1', '[\"*\"]', '2025-02-24 21:03:32', '2025-03-03 21:03:32', '2025-02-24 21:03:32', '2025-02-24 21:03:32'),
                                                                                                                                                                          (23, 'App\\Models\\User', 2, 'auth_token', 'c42078094ca8e969dff17782c14d66a2b7ffd56819910d462b0f271af5c42771', '[\"*\"]', NULL, '2025-03-03 21:16:50', '2025-02-24 21:16:50', '2025-02-24 21:16:50'),
                                                                                                                                                                          (24, 'App\\Models\\User', 2, 'auth_token', 'f5d0e0add43dd380975309c7b2be35e6a088dfac975117b28663e766af9cd81e', '[\"*\"]', '2025-02-24 21:24:25', '2025-03-03 21:24:16', '2025-02-24 21:24:16', '2025-02-24 21:24:25'),
                                                                                                                                                                          (25, 'App\\Models\\User', 2, 'auth_token', '1f5f3a0e0e53185f471f3fe14502c02b50bdb8f42da335221b10cfbb692060a8', '[\"*\"]', '2025-02-25 06:18:58', '2025-03-04 06:18:22', '2025-02-25 06:18:22', '2025-02-25 06:18:58'),
                                                                                                                                                                          (26, 'App\\Models\\User', 2, 'auth_token', 'af05198935f2af8ccbbb56b0d2b3676811654197f8678fab45a9f0652c0a56a5', '[\"*\"]', '2025-02-25 06:55:52', '2025-03-04 06:55:48', '2025-02-25 06:55:48', '2025-02-25 06:55:52'),
                                                                                                                                                                          (27, 'App\\Models\\User', 2, 'auth_token', '7d07c9ef62523f08b83d177fff7dc7059d977da8663775dc7ca78ec5938e3c93', '[\"*\"]', '2025-02-25 07:02:45', '2025-03-04 07:02:42', '2025-02-25 07:02:42', '2025-02-25 07:02:45'),
                                                                                                                                                                          (28, 'App\\Models\\User', 2, 'auth_token', 'acafceb40c26404107edf153b43c8f3c85d229e74854600b2cb372d8adc6a5c3', '[\"*\"]', '2025-02-25 07:03:20', '2025-03-04 07:03:20', '2025-02-25 07:03:20', '2025-02-25 07:03:20'),
                                                                                                                                                                          (29, 'App\\Models\\User', 2, 'auth_token', '88986ea31e206f4ca8538b3cac8f5dedee7d2a91df91a38ead7e84a62ee38850', '[\"*\"]', NULL, '2025-03-04 07:06:38', '2025-02-25 07:06:38', '2025-02-25 07:06:38'),
                                                                                                                                                                          (30, 'App\\Models\\User', 2, 'auth_token', 'ffaaadac9c60be658adb2f986b620ee8a204242c7daaf2c722e29955f17e6563', '[\"*\"]', NULL, '2025-03-04 07:09:59', '2025-02-25 07:09:59', '2025-02-25 07:09:59'),
                                                                                                                                                                          (31, 'App\\Models\\User', 2, 'auth_token', '8240f78da54ca5dc4be78b811d8f9850cc3aa0d6dc6a1a6c6db67caaaa6ae21d', '[\"*\"]', NULL, '2025-03-04 07:24:27', '2025-02-25 07:24:27', '2025-02-25 07:24:27'),
                                                                                                                                                                          (32, 'App\\Models\\User', 2, 'auth_token', '5a31cd1fba5e07bdec65312fe3d60ce8272a694aac043a2287f53ef224f4244d', '[\"*\"]', NULL, '2025-03-04 07:28:04', '2025-02-25 07:28:04', '2025-02-25 07:28:04'),
                                                                                                                                                                          (33, 'App\\Models\\User', 2, 'auth_token', 'bc3a71a5f125294d6898b4c3d6d89768cfcd64f18349322ab4acb697e48f2a08', '[\"*\"]', NULL, '2025-03-04 07:35:26', '2025-02-25 07:35:26', '2025-02-25 07:35:26'),
                                                                                                                                                                          (37, 'App\\Models\\User', 2, 'auth_token', 'df06c4bb3e419f160f6c7009f7dde5023dd3eae4ec6eb0953cf486faed91309f', '[\"*\"]', '2025-05-09 06:54:44', '2025-05-16 06:54:43', '2025-05-09 06:54:43', '2025-05-09 06:54:44'),
                                                                                                                                                                          (39, 'App\\Models\\User', 2, 'auth_token', '3bb1a120dd5856ff7aab11d8d9e3f616e142bb02b241dad242a600f7c0414e8e', '[\"*\"]', '2025-05-09 07:48:23', '2025-05-16 07:48:21', '2025-05-09 07:48:21', '2025-05-09 07:48:23'),
                                                                                                                                                                          (40, 'App\\Models\\User', 2, 'auth_token', '332f2e11bd02090d649237421db336775fdec1d82bab24be1946763041f6f356', '[\"*\"]', '2025-05-09 07:50:00', '2025-05-16 07:49:59', '2025-05-09 07:49:59', '2025-05-09 07:50:00'),
                                                                                                                                                                          (44, 'App\\Models\\User', 2, 'auth_token', '87b2d543220c93cbd9c42be4bb445cc673a1e5d9f68d2b420d396de00f7ab0bc', '[\"*\"]', '2025-05-09 08:04:45', '2025-05-16 08:04:44', '2025-05-09 08:04:44', '2025-05-09 08:04:45'),
                                                                                                                                                                          (45, 'App\\Models\\User', 2, 'auth_token', 'c2d55c368e032a8d85c94604dad4de6a6c867bbf6a5af64f36730793c093aee0', '[\"*\"]', '2025-05-09 08:05:08', '2025-05-16 08:05:07', '2025-05-09 08:05:07', '2025-05-09 08:05:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
                         `id` bigint(20) UNSIGNED NOT NULL,
                         `name_role` varchar(255) NOT NULL,
                         `description_role` text NOT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name_role`, `description_role`, `created_at`, `updated_at`) VALUES
                                                                                            (1, 'User', 'Regular user role', '2024-07-01 21:02:43', '2024-07-01 21:02:43'),
                                                                                            (2, 'Admin', 'Administrator role', '2024-07-01 21:02:43', '2024-07-01 21:02:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
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
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
                                                                                                     ('4ht7tpFXOSYiL0zOtL4Bo1VUAr3xi5esxO67M30D', NULL, '66.249.75.194', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.7103.92 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'ZXlKcGRpSTZJbEZXZVdsaVl6WnpURnBZUkdSNVdFdEhUMjVMWm5jOVBTSXNJblpoYkhWbElqb2lTbWt3Ymk4NGNYWlFia2xyYVRSRmVXNTVNSGRXVEhoRFRUSkhia1p4YzBnckx6QkdOV2hNWm01SGRESmtXblpSZFhWa2FWcFVjRmhyYm5CV01uaHZjelJzY1cwd1NuaGhVa3BKYlRkQmJWVnJLMEZTU0dWUGRXOVpaR2hxYVZCVlZtTTJiVkJGTkVKWWNWUjFXVUk1WlhjMVl5OVBVbEoxVVM5VVpUVlpNVzFtVkdkMU9YVmtNRmR3T1hadFdIUXdPWFJ5UWpaM1V6VmpSRW8xTTNKdk5EQkdNM2hXYTBrNVdtOWFTa2xTTldKdE5sY3ZUR3RHZG1WM1pGTTFZMk5JUjJ4SFprWTJiWFk0WkhNMWVsRllha3hZYlhwb1pra3ZhV2hEY1V0T1l5dFpaM0UzUWpkTWFXNUZNekJVWjA4emVXNWFkWEpZZVdab1MwSlJWalIwZUhkRE1ETTBWV1JtUjJwMmIzcE1TVXRXT1V0T00wRTlQU0lzSW0xaFl5STZJakZpTkRZek5qWmhZemRsTkRWaE1tTXlOMlJoTUdSak1tVTFNRFk0Tm1Zek1qY3hNVFZqWWpobU5UYzBZVGd6TVRnNE5HRTJPV1E1WldFek5ETmtZMllpTENKMFlXY2lPaUlpZlE9PQ==', 1748638006),
                                                                                                     ('5KfklJCQPZTtYn4lUjylUA3emSsx1vgRDxAK7wwp', NULL, '66.249.75.194', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.7103.113 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'ZXlKcGRpSTZJamROU0V4SFJHb3pSSGMyTHprM05YZHVSakIyWWtFOVBTSXNJblpoYkhWbElqb2lTbFpGVEhZNVNFZE5ZbkF4YkM5emFXczJhRUZJYkRSNUswRTVTbEZ0TDNkM1JYWjRibWhuYUdKUVR6aHpRa0Z3Ykdnd1ltWnNkMEpFYWpORWRuTk5iV3hOVm5kb0sxWkhka05MVG14VGNsUXhTMmhQUTBoeFJISmlRWGRCZWxkUU1reEhOMHN3VDBGalMwNW1kblI1T0dzelJ5dHNiUzlSU0RCMk5XbDVTMGRRYW5WR2NVd3dhMFJSZFRJdlZHRkpNVmMxWnpjNWVqVlRTMkkzUTFOcWIzSk1XWEpVZG5sYVdsbFpXbk5JTTA1dk5VVjJhbEJsUmtwaFdXMDBRVXhtVjJaNU0yMW9RVzAxTXpsUVNXbGxlVVJsTDJSNFZYTmxMMUZ3ZG5KdGNWcGtWRk5OUldoTFNWTlBOVXd6TTJwUlYyVmtjamRGUjBWdlQweExZWGhuYUZwa1ptRk1Ubmw0Um5GallVb3pWM3A1V2tSSE1tYzlQU0lzSW0xaFl5STZJakkwTVdObVpEQXpOVFkwWVRBMlpURXlaR1ZsTXprMFkyTTNOVGRqWkRNNE4yTmlNamxtT0dGa1pHVTROR00xWXpRMllUVTJOemc0WmpObFl6RmlPRElpTENKMFlXY2lPaUlpZlE9PQ==', 1748647736),
                                                                                                     ('dnmKUeSf3xGLsGZjrbEueU74bEeRs4NyaE9FqSpL', NULL, '66.249.75.194', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.7103.92 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'ZXlKcGRpSTZJbWhYYlZoV2JGbFFOVmhVTDNoNVYwTmliM2xPUW5jOVBTSXNJblpoYkhWbElqb2lLMVpYVVVodFpVZFVTMUJUVkZoRWVFSndOVTlSUkRNMVpuUkpUVXNyZHpWR2VFNHZSMjUxYVhOek1ubFNSWGxtVG01a1FuTndTRWc1ZUVsemRtbEtkM0F2WkVrM1MwdEpkRmxNUTBwV2NYWm9RbGRGT0VkNkwyZGphakpsYkVOMVZscFFiV0pRVEZOS01uVTNVMk5ZVTFnekwxZzFNa05WTlZGeFFWQTFkMEpOUlRKcVRHSnlSRXRxYjBrd1NWcFRMMlJ6Vlc5Nk4yZENSazAwVlRaUFZGZHhSM2x5ZWsxTWVtZEphbU5QZWxkS1lUZEhOMGt2YTNKbGJXSTBWRkVyY25aSVNuRnphR2x1YlVkc05IRXZLMGMyVGtwcGNrdDZTak14WTBJM1dIbzFWRmR0UVd4SlZuTk9TRXRzV0RWVFkyWTNVMUpRTW5wV05VSXdOVEJQVFZSbmMwSmFTVUpJWVVJNVJtWnNlRTFhYzNWc1ZFRTlQU0lzSW0xaFl5STZJbU0wTW1NelpqUTBNR00zWWpVell6ZzRaVFE1TXpOa09UQTBaVEV6TlRJek0yTmhPVGRoWWpZMU1XSmhaV05oTkRFNFpUaGpNMll3TnprM05UTmxZbUlpTENKMFlXY2lPaUlpZlE9PQ==', 1748731719),
                                                                                                     ('fxTkHFOB83zxGghSSQUSs24PSzcEX53zsoPT6b2Z', NULL, '66.249.75.193', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.7103.113 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'ZXlKcGRpSTZJbkZDVVRCd2JuSlRaR2xLYkRCdE1YRjJUR2xTZWtFOVBTSXNJblpoYkhWbElqb2lVRVZWYkdseFRIVkphMlExYzBSelRtOWFZM2hRY2tvNVZXOXlZalpoYkhOallWbHROa1pLUVdRMFFtUjNUWGhaU0c5Q1EweFFObmt2Y0VSb2F6UlBiVnBaVUc1SWJIQllTVTh5ZDBwWmJEUlJXREJVVm05eEszWjVaV1Y0UlZoemJVZHVSMFYyZGxBM1FtRktOR3BLZURKTGJGVmhhVWsxVWxkNEsyOUdRWFJwUm5OWVVuZHpka05VUkZGUVV5dDROV0pMU1dONVZpdE5Vell5YTFwRFl5dFpaMUZEVlhaeVUyNXllRkJ2Ums0ME1sVmhOSFJLZUZrd2JuWjVSQzlLYjJkUFNWcHpha3RxZEVkbVkyODJhRmRUYzFWU2NEWkVWelpGTXpCdVpXMVRiVFpIZEdRd1QyaHViSEZEYmtOMlUxcENObmhPY2pVd2QzbDViREJNVmxoQ1YxaFhibGx0ZG1wTVduRnhkSHBuUzI1SU1IYzlQU0lzSW0xaFl5STZJbVJrWWpsbU9UUXdZMkV3WTJObE1tVmhaREExWVdKa1lqUTRObVpoWVdKaU5HTmtOelE1Tnpaa1pUZGpNbVF5TTJWa09UUXlOVFpsTW1RNVlXVmpOallpTENKMFlXY2lPaUlpZlE9PQ==', 1748766198),
                                                                                                     ('nn2q3NE0h5ggf2LNIEIqEoMKxCGLjCeUsAIHUMRm', NULL, '66.249.75.195', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.7103.113 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'ZXlKcGRpSTZJbGhVUjNZd1J6RlhRbUZ4VDNsNE5qQkhVRlIyZG5jOVBTSXNJblpoYkhWbElqb2lSbkV3WWpOUVRtSmhSMjB6WWt4SlRFTjRXVnBZZURBNWRIcGxZa3RwYlRSWWNIaGhRMVJsVWpkVEt6WTJSRkIxVmxsMFpUZFJOemxvZDFoclZsTnpjbWQ0YVdsRGVtSnVUMmxYZVhVMU9XRldhRGhwWkU5aU9ERlJaVmxSYlRWdGRqRnJSemhQVlZKd1QydEZPSEo2UkZVMlZYWnJhREpFTDJKellVOXRXbVpFZUhGbU0yRlRiR05pVWtSclRYRlhNVnBGYWxOVU1HeHhVMWxTVjJOUWFHNVJkRXBzV0hSWloydEllWGRKVkdoalZ6Um9lVUZRTTNBM1oySktVVmQwYms1NlEyMWFlRzlVYjBOSFIxbDFLMHdyVVhGSWRFNW1NV3MxTWpaalIwb3JTMEZFYjFWWVIxTkRNV2xRTDNwNFJFd3JkMGhxVFVrNE9YUllWVk5wVDFscE0yWTVORFJJZWxoVFlVeEpMMnhyT0M5SFMyYzlQU0lzSW0xaFl5STZJamhrTURreE1XTmtPREUwWW1VMU56QmlOak5tTUdOaE5USXlZMlpoWmpsbE9UWTROalV3TkRWa1pUWTFZalZoTjJVNFpUa3dNemRtWW1NMU16ZzVORGtpTENKMFlXY2lPaUlpZlE9PQ==', 1748647810),
                                                                                                     ('X7GBUVH0w99aPbCfoRZpVsjjcdmv85ZOfJ4wVUjr', NULL, '66.249.75.195', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.7103.113 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'ZXlKcGRpSTZJbEpMU2tJd1ZEVndUelEzYTA1bGIyUjJPWFV6ZFhjOVBTSXNJblpoYkhWbElqb2ljM1UyT1VsRFRpOUdhMWhaWWsxV2MyWmlOek5SUW5wak0yOUdXVzQxYzAxVlN6WlJSRkZzV1dwcU9HTmhSRTU0ZUhBMVNXMHpieXQzUW5OMFFVSm5abXRLVTFnclNtSklNakI2WWxNMmVXZDJiWEppZHpCTWRETm5WamM0VUd3MVJHWkVWR1pYWmpOck4yUnhMelpLVmxGdlIwSlZVRGhGWXpWNmJERjNUREZhTXpjNVQwZEtWV2huVlVKV1ZWVkxWbU00T1RWMWJHNTBiV0kzT1ZKemNGaHpOVkYyWVdabmNXaFNZM0o1T0RWWE1YQnFObUpLVEM5bmVFc3ZSVWxUUVdKT1dTODRUR3M0SzNCbmJWTlZTSGxRZFVORFVYcHhibnBZUWt0R2VDOUNkemMxT0Zaek5tZHVTRVY1ZVd0Uk1HbDNhR2x1UjFsV1pYSjZjR05VVGt0V2RsQjJObmxsVWtOQlZEWXJjMGgwV0doSGQzYzlQU0lzSW0xaFl5STZJbU5oWWpVeU5qQXpaV0kxTkRVMlpEVTNaR05sWVdaak5EWTRZMlUyT1RNeU16TTVaREE1T1dFM1pqSmxNMkZtWm1WaU56WTFPRFkyT0dJNU9EUTFNekVpTENKMFlXY2lPaUlpZlE9PQ==', 1748766640),
                                                                                                     ('zrWmIt4GxtTFeSR4Mn7NoyRqt256w49E6kRXWnjW', NULL, '66.249.75.194', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.7103.113 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'ZXlKcGRpSTZJa2hVVUhSMGRVaDNPVlpTUTJ0ak16ZFRRMlp1TVdjOVBTSXNJblpoYkhWbElqb2lRMGxDV0VSUlFYRXlWVmxJVEd0d2JpOXhiRFZ3VlVKdmFHNVpkRWhGUkZJck5GaGxjelprTVhJNVFUbGxLMXAwTUdadVZHOXNlRE54WVdWdlpHaG1hekZSVGxSSlRFeHBabmxzYUZaeGMwWjRUbmd6V0hoemRHTmpSR1pwTDFsNFkwMU5RalpaV0ZneGNubzRSRzU0U0V0Tkt6QTVaMUJLU2tWcVVVWXZTVk4xY2xscGF5czJOemhQZW5wdmJqaEJiM2huYld3Mk5VOXpielZIUlRNdk5HRnRVbEpKUkdaTk9YVkZTMXBsV2poQk1IcGxVR3BpZFcxMVdIVmFjR0pyWjJSYWFuVnFRU3RIWW0xalVESmlkVnA2WjBFcldGWlZZbm81YUhkeE5HMVZZbWhxYzI1M1IxVmtlQzlCV1ZSc1RURndjVE5wUnpObVJGUkhlR3czSzBrd1VDdDVjMUJwY2xsbVlrVk1SMkZrVVV0eGRFRTlQU0lzSW0xaFl5STZJbVUwTWpsbU5XRmhNelUxTm1Kak56RTJNR05rTVdJek5HWm1PRFJtWmpFeE1tTTBaV1k0WkRRME1XUTRORGRrWlRCbU9ERmxNMkpsT0RFd016a3laVFFpTENKMFlXY2lPaUlpZlE9PQ==', 1748636345);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statuses`
--

CREATE TABLE `statuses` (
                            `id` bigint(20) UNSIGNED NOT NULL,
                            `name_satus` varchar(255) NOT NULL,
                            `created_at` timestamp NULL DEFAULT NULL,
                            `updated_at` timestamp NULL DEFAULT NULL,
                            `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statuses`
--

INSERT INTO `statuses` (`id`, `name_satus`, `created_at`, `updated_at`, `description`) VALUES
                                                                                           (2, 'Hoàn Thành', '2024-07-01 21:19:15', '2024-07-01 21:19:15', 'Bộ phim đã hoàn thành'),
                                                                                           (3, 'Tiếp tục', '2024-07-01 21:19:15', '2024-07-01 21:19:15', 'Bộ phim đang dang dở');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
                         `id` bigint(20) UNSIGNED NOT NULL,
                         `name` varchar(255) NOT NULL,
                         `email` varchar(255) NOT NULL,
                         `email_verified_at` timestamp NULL DEFAULT NULL,
                         `password` varchar(255) NOT NULL,
                         `remember_token` varchar(100) DEFAULT NULL,
                         `created_at` timestamp NULL DEFAULT NULL,
                         `updated_at` timestamp NULL DEFAULT NULL,
                         `role_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
                         `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `avatar`) VALUES
                                                                                                                                                    (1, 'hinh2003', 'vanhinh2003@gmail.com', NULL, '$2y$12$7EXomaAnrWjpT/Vrh67cjOUwYIarMWR39my1bWIt0Hv6o4qGV1pN.', NULL, '2024-07-02 21:13:56', '2025-05-10 21:47:29', 1, ''),
                                                                                                                                                    (2, 'admin', 'admin@gmail.com', NULL, '$2y$12$3YA9LJikZRIpg5bWrGqi6eT0TMhIIxwDPMUR1Si1WLP0foIeSyyCi', NULL, '2024-07-02 22:20:43', '2025-05-09 06:21:26', 2, 'frontend/avatar/WIN_20250101_21_33_43_Pro.jpg'),
                                                                                                                                                    (4, 'NguyenVanHinh', 'vanhinh2003123@gmail.com', '2024-07-07 23:59:26', '$2y$12$93x1AcULEwuBoex8Rwsrlu0sOk13TTZ2e3nvhnyjURRnP3REDsxqm', NULL, '2024-07-07 23:59:26', '2024-07-07 23:59:26', 1, ''),
                                                                                                                                                    (5, 'hino2003', 'hino2003@gmail.com', NULL, '$2y$12$fso6TC0wF8BV3U1/DiMcKO5jAOniGnDZpgBxAcCKoAMRcI0SbEOIi', NULL, '2024-07-13 08:27:11', '2024-07-13 08:27:11', 1, ''),
                                                                                                                                                    (6, 'Phú Mỹ Hưng', 'thathayho91@gmail.com', NULL, '$2y$12$wTxMiGPQVm9StLA1BoNlD.HyJgzwUC51.a7Rs//dqHfzV45wiYZwq', NULL, '2024-10-22 00:01:42', '2024-10-22 00:01:42', 1, ''),
                                                                                                                                                    (7, 'domino45', 'tanquocnguyen901@gmail.com', NULL, '$2y$12$6LcSBACgMMMeJYCTPPMq5upJbwhWqdGB29E5WPyn5HzNT6r8rHt4G', NULL, '2024-10-22 00:07:53', '2024-10-22 00:07:53', 1, ''),
                                                                                                                                                    (8, 'domino911<script>alert(\'XSS Attack\');</script>', 'nh4999@gmail.com', NULL, '$2y$12$UH2qbk2yjKZZKYMhUhJXS.66/GDukoFmirVbCItbPIdk03sS8Bj/m', NULL, '2024-10-22 14:04:00', '2024-10-22 14:04:00', 1, ''),
                                                                                                                                                    (9, 'hinh2003123', 'vanhinh20031@gmail.com', NULL, '$2y$12$Ilh5ZohEAtdn5yEgX2OKbeikcJpUdyupI4xKLF.m6h4nAIclNqvEC', NULL, '2025-01-24 12:51:27', '2025-01-24 12:51:27', 1, ''),
                                                                                                                                                    (10, 'hinh20031234', 'vanhinh20031234@gmail.com', NULL, '$2y$12$44j6Wwlab94WpNPu8gvm3uxj25ieBNPnHg09REXBFVCFO3QRVhG9q', NULL, '2025-05-10 21:15:11', '2025-05-10 21:15:11', 1, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banners`
--
ALTER TABLE `banners`
    ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
    ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
    ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
    ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_movies`
--
ALTER TABLE `category_movies`
    ADD PRIMARY KEY (`id`),
  ADD KEY `category_movies_category_id_foreign` (`category_id`),
  ADD KEY `category_movies_movie_id_foreign` (`movie_id`);

--
-- Chỉ mục cho bảng `chap_movies`
--
ALTER TABLE `chap_movies`
    ADD PRIMARY KEY (`id`),
  ADD KEY `chap_movies_movie_id_foreign` (`movie_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
    ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_movie_id_foreign` (`movie_id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
    ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
    ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
    ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `like_movies`
--
ALTER TABLE `like_movies`
    ADD PRIMARY KEY (`id`),
  ADD KEY `like_movies_user_id_foreign` (`user_id`),
  ADD KEY `like_movies_movie_id_foreign` (`movie_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
    ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
    ADD PRIMARY KEY (`id`),
  ADD KEY `movies_country_id_foreign` (`country_id`),
  ADD KEY `movies_status_id_foreign` (`status_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
    ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
    ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
    ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `statuses`
--
ALTER TABLE `statuses`
    ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banners`
--
ALTER TABLE `banners`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `category_movies`
--
ALTER TABLE `category_movies`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `chap_movies`
--
ALTER TABLE `chap_movies`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `like_movies`
--
ALTER TABLE `like_movies`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
    MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `statuses`
--
ALTER TABLE `statuses`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
    MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category_movies`
--
ALTER TABLE `category_movies`
    ADD CONSTRAINT `category_movies_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_movies_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chap_movies`
--
ALTER TABLE `chap_movies`
    ADD CONSTRAINT `chap_movies_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
    ADD CONSTRAINT `comments_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `like_movies`
--
ALTER TABLE `like_movies`
    ADD CONSTRAINT `like_movies_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `like_movies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `movies`
--
ALTER TABLE `movies`
    ADD CONSTRAINT `movies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `movies_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
    ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
