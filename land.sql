-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 02 2017 г., 09:59
-- Версия сервера: 5.5.45
-- Версия PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `land`
--

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_18_040826_create_table_pages', 1),
('2016_06_18_040905_create_table_services', 1),
('2016_06_18_040935_create_table_portfolios', 1),
('2016_06_18_041340_create_table_peoples', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name`, `alias`, `text`, `images`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', '<h2>We create <strong>awesome</strong> web templates</h2>\r\n              <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text  printer took a galley of type and scrambled it to make a type specimen.</p>\r\n              ', 'main_device_image.png', '2017-04-29 17:59:57', '0000-00-00 00:00:00'),
(2, 'About us', 'aboutUs', '<h3>Lorem Ipsum has been the industry''s standard dummy text ever..</h3>\r\n<br>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.PageMaker including versions of Lorem Ipsum.</p>\r\n<br>\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'about-img.jpg', '2017-04-29 18:01:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `peoples`
--

CREATE TABLE IF NOT EXISTS `peoples` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `peoples`
--

INSERT INTO `peoples` (`id`, `name`, `position`, `images`, `text`, `created_at`, `updated_at`) VALUES
(1, 'Tom Rensed', 'Chief Executive Officer', 'team_pic1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consequat sollicitudin cursus. Dolor sit amet, consectetur adipiscing elit proin consequat.', '2017-04-29 19:51:09', '0000-00-00 00:00:00'),
(2, 'Kathren Mory', 'Vice President', 'team_pic2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consequat sollicitudin cursus. Dolor sit amet, consectetur adipiscing elit proin consequat.', '2017-04-29 19:51:09', '0000-00-00 00:00:00'),
(3, 'Lancer Jack', 'Senior Manager', 'team_pic3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin consequat sollicitudin cursus. Dolor sit amet, consectetur adipiscing elit proin consequat.', '2017-04-29 19:51:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `portfolios`
--

CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `filter` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `portfolios`
--

INSERT INTO `portfolios` (`id`, `name`, `images`, `filter`, `created_at`, `updated_at`) VALUES
(1, 'SMS Mobile App', 'portfolio_pic1.jpg', 'appleIOS', '2017-04-29 19:07:36', '0000-00-00 00:00:00'),
(2, 'Finance App', 'portfolio_pic2.jpg', 'design', '2017-04-29 19:07:36', '0000-00-00 00:00:00'),
(3, 'GPS Concept', 'portfolio_pic3.jpg', 'design', '2017-04-29 19:09:03', '0000-00-00 00:00:00'),
(4, 'Shopping', 'portfolio_pic4.jpg', 'android', '2017-04-29 19:09:03', '0000-00-00 00:00:00'),
(5, 'Managment', 'portfolio_pic5.jpg', 'design', '2017-04-29 19:10:55', '0000-00-00 00:00:00'),
(6, 'iPhone', 'portfolio_pic6.jpg', 'web', '2017-04-29 19:10:55', '0000-00-00 00:00:00'),
(7, 'Nexus Phone', 'portfolio_pic7.jpg', 'web', '2017-04-29 19:12:16', '0000-00-00 00:00:00'),
(8, 'Android', 'portfolio_pic8.jpg', 'android', '2017-04-29 19:12:16', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `prices`
--

CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `cena` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `kol` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `prices`
--

INSERT INTO `prices` (`id`, `name`, `text`, `cena`, `kol`, `created_at`, `updated_at`) VALUES
(1, 'Круг зачистной армированный стеклосеткой (пр-во ЛАЗ) Д 100-6-16 14А', 'шт.', '123', '3', '2017-04-29 18:18:22', '2017-05-01 21:32:53'),
(2, 'Круг зачистной армированный стеклосеткой (пр-во ЛАЗ) Д 100-6-22 14А', 'шт.', '344', '42', '2017-04-29 18:29:55', '2017-05-01 23:26:22'),
(3, 'Круг зачистной армированный стеклосеткой (пр-во ЛАЗ) Д 125-6-22 14А', 'шт.', '332', '6', '2017-04-29 18:35:22', '2017-05-01 21:32:22'),
(4, 'Круг зачистной армированный стеклосеткой (пр-во ЛАЗ) Д 125-6-22(32) 14А', 'шт.', '140', '7', '2017-04-29 18:35:43', '2017-05-01 21:32:31'),
(5, 'Круг зачистной армированный стеклосеткой (пр-во ЛАЗ) Д 230-6-22(32) 14А', 'шт.', '500', '8', '2017-04-29 18:43:04', '2017-05-01 21:32:42');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `name`, `text`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Android', '2Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text.', 'fa-android', '2017-04-29 18:18:22', '2017-05-01 07:47:43'),
(2, 'Apple IOS', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text.2', 'fa-apple', '2017-04-29 18:29:55', '2017-05-01 20:29:58'),
(3, 'Design', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text.', 'fa-dropbox', '2017-04-29 18:35:22', '0000-00-00 00:00:00'),
(4, 'Concept', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text.', 'fa-html5', '2017-04-29 18:35:43', '0000-00-00 00:00:00'),
(5, 'User Research', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text.', 'fa-slack', '2017-04-29 18:43:04', '0000-00-00 00:00:00'),
(6, 'User Experience', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text.', 'fa-users', '2017-04-29 18:43:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@mail.ru', '$2y$10$CCIl6Ao/eSajDyO9WkCLZOgAsLwd4nZVyv25kOrp7hUBEzmSMwZsu', NULL, '2017-05-01 02:50:09', '2017-05-01 02:50:09');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
