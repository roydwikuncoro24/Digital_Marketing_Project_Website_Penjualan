-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Sep 2020 pada 10.30
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpres`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-16 14:18:07', '2020-09-16 14:18:07', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0),
(2, 24, 'ActionScheduler', '', '', '', '2020-09-16 14:58:10', '2020-09-16 14:58:10', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(3, 24, 'ActionScheduler', '', '', '', '2020-09-16 14:59:10', '2020-09-16 14:59:10', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(4, 25, 'ActionScheduler', '', '', '', '2020-09-16 14:59:11', '2020-09-16 14:59:11', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(5, 24, 'ActionScheduler', '', '', '', '2020-09-16 14:59:11', '2020-09-16 14:59:11', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(6, 25, 'ActionScheduler', '', '', '', '2020-09-18 06:00:35', '2020-09-18 06:00:35', 'action started', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(7, 137, 'ActionScheduler', '', '', '', '2020-09-18 06:00:36', '2020-09-18 06:00:36', 'action created', 0, '1', 'ActionScheduler', 'action_log', 0, 0),
(8, 25, 'ActionScheduler', '', '', '', '2020-09-18 06:00:36', '2020-09-18 06:00:36', 'action complete', 0, '1', 'ActionScheduler', 'action_log', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Sepatu Purwokerto', 'yes'),
(4, 'blogdescription', 'Menjual Sepatu Original dengan Harga Terjangkau', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'roydwikuncoro@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:199:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:39:\"index.php/tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"index.php/wpt_product_table/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:65:\"index.php/wpt_product_table/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:85:\"index.php/wpt_product_table/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:80:\"index.php/wpt_product_table/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:80:\"index.php/wpt_product_table/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:61:\"index.php/wpt_product_table/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"index.php/wpt_product_table/([^/]+)/embed/?$\";s:50:\"index.php?wpt_product_table=$matches[1]&embed=true\";s:48:\"index.php/wpt_product_table/([^/]+)/trackback/?$\";s:44:\"index.php?wpt_product_table=$matches[1]&tb=1\";s:56:\"index.php/wpt_product_table/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?wpt_product_table=$matches[1]&paged=$matches[2]\";s:63:\"index.php/wpt_product_table/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?wpt_product_table=$matches[1]&cpage=$matches[2]\";s:53:\"index.php/wpt_product_table/([^/]+)/wc-api(/(.*))?/?$\";s:58:\"index.php?wpt_product_table=$matches[1]&wc-api=$matches[3]\";s:59:\"index.php/wpt_product_table/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:70:\"index.php/wpt_product_table/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/wpt_product_table/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?wpt_product_table=$matches[1]&page=$matches[2]\";s:44:\"index.php/wpt_product_table/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"index.php/wpt_product_table/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"index.php/wpt_product_table/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"index.php/wpt_product_table/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"index.php/wpt_product_table/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"index.php/wpt_product_table/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:65:\"index.php/product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:60:\"index.php/product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:41:\"index.php/product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:53:\"index.php/product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:35:\"index.php/product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:62:\"index.php/product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:57:\"index.php/product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:38:\"index.php/product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:50:\"index.php/product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:32:\"index.php/product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"index.php/product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:55:\"index.php/product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:75:\"index.php/product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:70:\"index.php/product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:51:\"index.php/product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"index.php/product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:38:\"index.php/product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:46:\"index.php/product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:53:\"index.php/product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:49:\"index.php/product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:60:\"index.php/product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"index.php/product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:34:\"index.php/product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"index.php/product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"index.php/product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"index.php/product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"index.php/product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:55:\"index.php/amn_exact-metrics/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:65:\"index.php/amn_exact-metrics/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:85:\"index.php/amn_exact-metrics/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:80:\"index.php/amn_exact-metrics/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:80:\"index.php/amn_exact-metrics/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:61:\"index.php/amn_exact-metrics/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"index.php/amn_exact-metrics/([^/]+)/embed/?$\";s:50:\"index.php?amn_exact-metrics=$matches[1]&embed=true\";s:48:\"index.php/amn_exact-metrics/([^/]+)/trackback/?$\";s:44:\"index.php?amn_exact-metrics=$matches[1]&tb=1\";s:56:\"index.php/amn_exact-metrics/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?amn_exact-metrics=$matches[1]&paged=$matches[2]\";s:63:\"index.php/amn_exact-metrics/([^/]+)/comment-page-([0-9]{1,})/?$\";s:57:\"index.php?amn_exact-metrics=$matches[1]&cpage=$matches[2]\";s:53:\"index.php/amn_exact-metrics/([^/]+)/wc-api(/(.*))?/?$\";s:58:\"index.php?amn_exact-metrics=$matches[1]&wc-api=$matches[3]\";s:59:\"index.php/amn_exact-metrics/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:70:\"index.php/amn_exact-metrics/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/amn_exact-metrics/([^/]+)(?:/([0-9]+))?/?$\";s:56:\"index.php?amn_exact-metrics=$matches[1]&page=$matches[2]\";s:44:\"index.php/amn_exact-metrics/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"index.php/amn_exact-metrics/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"index.php/amn_exact-metrics/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"index.php/amn_exact-metrics/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"index.php/amn_exact-metrics/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"index.php/amn_exact-metrics/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:37:\"index.php/comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=29&cpage=$matches[1]\";s:27:\"index.php/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:36:\"index.php/comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:39:\"index.php/search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:42:\"index.php/author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:64:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:51:\"index.php/([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:38:\"index.php/([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:72:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:72:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:83:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:35:\"index.php/(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:42:\"index.php/(.?.+?)/edit-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&edit-password=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-profile(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-profile=$matches[3]\";s:42:\"index.php/(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:40:\"index.php/(.?.+?)/user-logout(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&user-logout=$matches[3]\";s:38:\"index.php/(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:43:\"index.php/(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:35:\"index.php/(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:39:\"index.php/(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:38:\"index.php/(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:41:\"index.php/(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:44:\"index.php/(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:44:\"index.php/(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:47:\"index.php/(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:50:\"index.php/(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:55:\"index.php/(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:41:\"index.php/.?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:52:\"index.php/.?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:19:{i:0;s:55:\"contact-form-7-datepicker/contact-form-7-datepicker.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:35:\"contact-widgets/contact-widgets.php\";i:3;s:33:\"dynamic-to-top/dynamic-to-top.php\";i:4;s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";i:5;s:35:\"insert-headers-and-footers/ihaf.php\";i:6;s:23:\"ml-slider/ml-slider.php\";i:7;s:61:\"ni-woocommerce-cost-of-goods/ni-woocommerce-cost-of-goods.php\";i:8;s:33:\"ongkoskirim-id/ongkoskirim-id.php\";i:9;s:20:\"printfriendly/pf.php\";i:10;s:41:\"sassy-social-share/sassy-social-share.php\";i:11;s:35:\"ultimate-member/ultimate-member.php\";i:12;s:39:\"user-registration/user-registration.php\";i:13;s:35:\"whatshelp-chat-button/whatshelp.php\";i:14;s:47:\"woo-order-export-lite/woo-order-export-lite.php\";i:15;s:39:\"woo-photo-reviews/woo-photo-reviews.php\";i:16;s:39:\"woo-product-table/woo-product-table.php\";i:17;s:70:\"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php\";i:18;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:66:\"F:\\xampp\\htdocs\\wordpress/wp-content/themes/twentytwenty/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:3:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(77, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:15:\"About This Site\";s:4:\"text\";s:85:\"This may be a good place to introduce yourself and your site or include some credits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:7:\"Find Us\";s:4:\"text\";s:168:\"<strong>Address</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>Hours</strong>\nMonday&ndash;Friday: 9:00AM&ndash;5:00PM\nSaturday &amp; Sunday: 11:00AM&ndash;3:00PM\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:3:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";a:2:{i:0;s:15:\"GADWP_Uninstall\";i:1;s:9:\"uninstall\";}s:47:\"woo-order-export-lite/woo-order-export-lite.php\";a:2:{i:0;s:21:\"WC_Order_Export_Admin\";i:1;s:9:\"uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '29', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1615817876', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:16:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:132:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:24:\"manage_user_registration\";b:1;s:22:\"edit_user_registration\";b:1;s:22:\"read_user_registration\";b:1;s:24:\"delete_user_registration\";b:1;s:23:\"edit_user_registrations\";b:1;s:30:\"edit_others_user_registrations\";b:1;s:26:\"publish_user_registrations\";b:1;s:31:\"read_private_user_registrations\";b:1;s:25:\"delete_user_registrations\";b:1;s:33:\"delete_private_user_registrations\";b:1;s:35:\"delete_published_user_registrations\";b:1;s:32:\"delete_others_user_registrations\";b:1;s:31:\"edit_private_user_registrations\";b:1;s:33:\"edit_published_user_registrations\";b:1;s:30:\"manage_user_registration_terms\";b:1;s:28:\"edit_user_registration_terms\";b:1;s:30:\"delete_user_registration_terms\";b:1;s:30:\"assign_user_registration_terms\";b:1;}s:22:\"_um_can_access_wpadmin\";i:1;s:24:\"_um_can_not_see_adminbar\";i:0;s:21:\"_um_can_edit_everyone\";i:1;s:23:\"_um_can_delete_everyone\";i:1;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:20:\"_um_default_homepage\";i:1;s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:1;s:30:\"_um_can_access_private_profile\";i:1;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:6:\"editor\";a:16:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:6:\"author\";a:16:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:11:\"contributor\";a:16:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:12:\"upload_files\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:10:\"subscriber\";a:16:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"upload_files\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:12:\"upload_files\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:11:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:12:\"categories-4\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:5:\"rss-3\";i:8;s:28:\"woocommerce_recent_reviews-3\";i:9;s:6:\"text-2\";i:10;s:6:\"text-3\";}s:9:\"sidebar-1\";a:2:{i:0;s:32:\"woocommerce_product_categories-3\";i:1;s:14:\"wpcw_contact-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:20:\"heateor_sss_follow-3\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:21:{i:1600428058;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1600428926;a:1:{s:26:\"um_hourly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600431491;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1600431575;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1600438689;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600438691;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600438727;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600438728;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600438729;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600440295;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600440305;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600451095;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600454126;a:1:{s:30:\"um_twicedaily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600461895;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1600473600;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600497199;a:1:{s:28:\"um_check_extensions_licenses\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600497326;a:1:{s:25:\"um_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1600957089;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1601015726;a:1:{s:26:\"um_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1601942400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.1\";s:7:\"version\";s:5:\"5.5.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1600411819;s:15:\"version_checked\";s:5:\"5.5.1\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'theme_mods_twentytwenty', 'a:19:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:18;}s:16:\"background_color\";s:6:\"ffffff\";s:17:\"accent_hue_active\";s:7:\"default\";s:10:\"accent_hue\";i:344;s:24:\"accent_accessible_colors\";a:2:{s:7:\"content\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#e22658\";s:10:\"background\";s:7:\"#ffffff\";s:7:\"borders\";s:7:\"#dbdbdb\";s:9:\"secondary\";s:7:\"#6d6d6d\";}s:13:\"header-footer\";a:5:{s:4:\"text\";s:7:\"#ffffff\";s:6:\"accent\";s:7:\"#f8e2e7\";s:10:\"background\";s:7:\"#686868\";s:7:\"borders\";s:7:\"#7f7f7f\";s:9:\"secondary\";s:7:\"#f4f4f4\";}}s:12:\"blog_content\";s:4:\"full\";s:20:\"enable_header_search\";b:1;s:15:\"show_author_bio\";b:1;s:39:\"cover_template_overlay_background_color\";s:7:\"#aaaaaa\";s:30:\"header_footer_background_color\";s:7:\"#686868\";s:16:\"background_image\";s:0:\"\";s:17:\"background_preset\";s:6:\"custom\";s:21:\"background_position_x\";s:5:\"right\";s:21:\"background_position_y\";s:6:\"center\";s:15:\"background_size\";s:7:\"contain\";s:17:\"background_repeat\";s:9:\"no-repeat\";s:21:\"background_attachment\";s:5:\"fixed\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600345017;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:2:{i:0;s:32:\"woocommerce_product_categories-3\";i:1;s:14:\"wpcw_contact-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:20:\"heateor_sss_follow-3\";}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(128, 'finished_updating_comment_type', '1', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(129, 'WPLANG', '', 'yes'),
(130, 'new_admin_email', 'roydwikuncoro@gmail.com', 'yes'),
(138, 'recently_activated', 'a:0:{}', 'yes'),
(143, 'woocommerce_store_address', 'Tinggarjaya, Jatilawang', 'yes'),
(144, 'woocommerce_store_address_2', 'Banyumas', 'yes'),
(145, 'woocommerce_store_city', 'Purwokerto', 'yes'),
(146, 'woocommerce_default_country', 'ID:JT', 'yes'),
(147, 'woocommerce_store_postcode', '53174', 'yes'),
(148, 'woocommerce_allowed_countries', 'specific', 'yes'),
(149, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(150, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:\"ID\";}', 'yes'),
(151, 'woocommerce_ship_to_countries', 'specific', 'yes'),
(152, 'woocommerce_specific_ship_to_countries', 'a:1:{i:0;s:2:\"ID\";}', 'yes'),
(153, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(154, 'woocommerce_calc_taxes', 'no', 'yes'),
(155, 'woocommerce_enable_coupons', 'yes', 'yes'),
(156, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(157, 'woocommerce_currency', 'IDR', 'yes'),
(158, 'woocommerce_currency_pos', 'left', 'yes'),
(159, 'woocommerce_price_thousand_sep', '.', 'yes'),
(160, 'woocommerce_price_decimal_sep', ',', 'yes'),
(161, 'woocommerce_price_num_decimals', '2', 'yes'),
(162, 'woocommerce_shop_page_id', '19', 'yes'),
(163, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(164, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(165, 'woocommerce_placeholder_image', '18', 'yes'),
(166, 'woocommerce_weight_unit', 'kg', 'yes'),
(167, 'woocommerce_dimension_unit', 'cm', 'yes'),
(168, 'woocommerce_enable_reviews', 'yes', 'yes'),
(169, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(170, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(171, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(172, 'woocommerce_review_rating_required', 'yes', 'no'),
(173, 'woocommerce_manage_stock', 'yes', 'yes'),
(174, 'woocommerce_hold_stock_minutes', '60', 'no'),
(175, 'woocommerce_notify_low_stock', 'yes', 'no'),
(176, 'woocommerce_notify_no_stock', 'yes', 'no'),
(177, 'woocommerce_stock_email_recipient', 'roydwikuncoro@gmail.com', 'no'),
(178, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(179, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(180, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(181, 'woocommerce_stock_format', '', 'yes'),
(182, 'woocommerce_file_download_method', 'force', 'no'),
(183, 'woocommerce_downloads_require_login', 'no', 'no'),
(184, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(185, 'woocommerce_prices_include_tax', 'no', 'yes'),
(186, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(187, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(188, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(189, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(190, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(191, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(192, 'woocommerce_price_display_suffix', '', 'yes'),
(193, 'woocommerce_tax_total_display', 'itemized', 'no'),
(194, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(195, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(196, 'woocommerce_ship_to_destination', 'billing', 'no'),
(197, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(198, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(199, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(200, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(201, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(202, 'woocommerce_registration_generate_username', 'yes', 'no'),
(203, 'woocommerce_registration_generate_password', 'yes', 'no'),
(204, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(205, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(206, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(207, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(208, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(209, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(210, 'woocommerce_trash_pending_orders', '', 'no'),
(211, 'woocommerce_trash_failed_orders', '', 'no'),
(212, 'woocommerce_trash_cancelled_orders', '', 'no'),
(213, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(214, 'woocommerce_email_from_name', 'Sepatu Purwokerto', 'no'),
(215, 'woocommerce_email_from_address', 'roydwikuncoro@gmail.com', 'no'),
(216, 'woocommerce_email_header_image', '', 'no'),
(217, 'woocommerce_email_footer_text', '{site_title}<br/>Built with <a href=\"https://woocommerce.com/\">WooCommerce</a>', 'no'),
(218, 'woocommerce_email_base_color', '#96588a', 'no'),
(219, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(220, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(221, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(222, 'woocommerce_cart_page_id', '20', 'yes'),
(223, 'woocommerce_checkout_page_id', '21', 'yes'),
(224, 'woocommerce_myaccount_page_id', '22', 'yes'),
(225, 'woocommerce_terms_page_id', '', 'no'),
(226, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(227, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(228, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(229, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(230, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(231, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(232, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(233, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(234, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(235, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(236, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(237, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(238, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(239, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(240, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(241, 'woocommerce_api_enabled', 'no', 'yes'),
(242, 'woocommerce_allow_tracking', 'yes', 'no'),
(243, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(244, 'woocommerce_single_image_width', '600', 'yes'),
(245, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(246, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(247, 'woocommerce_demo_store', 'no', 'no'),
(248, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(249, 'current_theme_supports_woocommerce', 'no', 'yes'),
(250, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(251, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(253, 'default_product_cat', '15', 'yes'),
(256, 'woocommerce_version', '3.6.4', 'yes'),
(257, 'woocommerce_db_version', '3.6.4', 'yes'),
(258, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(259, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(260, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_product_categories', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:8:{s:5:\"title\";s:15:\"Kategori Produk\";s:7:\"orderby\";s:5:\"order\";s:8:\"dropdown\";i:0;s:5:\"count\";i:1;s:12:\"hierarchical\";i:1;s:18:\"show_children_only\";i:1;s:10:\"hide_empty\";i:1;s:9:\"max_depth\";s:0:\"\";}}', 'yes'),
(265, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_recent_reviews', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:14:\"Recent reviews\";s:6:\"number\";i:7;}}', 'yes'),
(271, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(274, '_transient_timeout_external_ip_address_::1', '1600872299', 'no'),
(275, '_transient_external_ip_address_::1', '0.0.0.0', 'no'),
(280, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(282, 'woocommerce_obw_last_completed_step', 'recommended', 'yes'),
(285, 'woocommerce_product_type', 'physical', 'yes'),
(286, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(287, 'woocommerce_bacs_settings', 'a:5:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:20:\"Direct bank transfer\";s:11:\"description\";s:176:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";}', 'yes'),
(288, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(289, 'woocommerce_tracker_last_send', '1600267874', 'yes'),
(290, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(293, 'woocommerce_admin_notice_storefront_install_error', 'storefront could not be installed (Unable to connect to the filesystem. Please confirm your credentials.). <a href=\"http://localhost/wordpress/wp-admin/update.php?action=install-theme&#038;theme=storefront&#038;_wpnonce=f436d085a5\">Please install it manually by clicking here.</a>', 'yes'),
(294, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp for WooCommerce could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/forums/\">support forums</a>.). <a href=\"http://localhost/wordpress/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce\">Please install it manually by clicking here.</a>', 'yes'),
(296, 'woocommerce_admin_notice_facebook-for-woocommerce_install_error', 'Facebook for WooCommerce could not be installed (An unexpected error occurred. Something may be wrong with WordPress.org or this server&#8217;s configuration. If you continue to have problems, please try the <a href=\"https://wordpress.org/support/forums/\">support forums</a>.). <a href=\"http://localhost/wordpress/wp-admin/index.php?wc-install-plugin-redirect=facebook-for-woocommerce\">Please install it manually by clicking here.</a>', 'yes'),
(303, '_transient_shipping-transient-version', '1600268615', 'yes'),
(304, '_transient_timeout_wc_shipping_method_count', '1602860663', 'no'),
(305, '_transient_wc_shipping_method_count', 'a:2:{s:7:\"version\";s:10:\"1600268615\";s:5:\"value\";i:0;}', 'no'),
(306, '_transient_timeout_wc_report_sales_by_date', '1600499168', 'no'),
(307, '_transient_wc_report_sales_by_date', 'a:32:{s:32:\"3abca3bf8b5ef12c87e3c986a66f0f11\";a:0:{}s:32:\"fe663690b4aa33f18ae86f98afb6cf33\";a:0:{}s:32:\"b000c5f35db657badeecd495d68fb05a\";a:0:{}s:32:\"818b948b067b7b1650a3040988137eef\";N;s:32:\"797b18856a8515de2641c03be3fcd483\";a:0:{}s:32:\"7640d190495adc9e35c7e380a26a527b\";a:0:{}s:32:\"3ba78c6be3aacd027b96a88e052dc2ab\";a:0:{}s:32:\"12a41a88c562a29fc52df817592a760b\";a:0:{}s:32:\"716ceb29d4882c0a672df85fce4963b9\";a:0:{}s:32:\"c57395b158e35ab1231e0ac2d978db09\";a:0:{}s:32:\"d4d676174ce97a81f13538a8d0260743\";a:0:{}s:32:\"56948046ab5d212066aa3ea98b948278\";N;s:32:\"0d9eb247e9103bdb7b39c44bc27c2ac3\";a:0:{}s:32:\"e216ca4f9beb0596344f365b7691e267\";a:0:{}s:32:\"28644afe2f90b7877666082619e3f3b1\";a:0:{}s:32:\"ee7c3f2194cd2a04a6e37cc2096b0ada\";a:0:{}s:32:\"2a930e17bec92234554b68bea59d3f8a\";a:0:{}s:32:\"72bb0c8f64acbada920403f3bce158b3\";a:0:{}s:32:\"43b9b7d38f38b3a895fd997e9378d887\";a:0:{}s:32:\"eac0326b125721d03a2f25ff8755c8b2\";N;s:32:\"9c4db13561c0b0bfd3230794c29db5bd\";a:0:{}s:32:\"faf7b25931be52921c9f4e70c793f69f\";a:0:{}s:32:\"4c279a6d04d43af5da50ca5ff5cfaa61\";a:0:{}s:32:\"143e49425f6b125613726451269f5beb\";a:0:{}s:32:\"40cc90951a0efcd4c237472ad16ef97f\";a:0:{}s:32:\"25e5eb0669fa141bfb03a4892644c5d8\";a:0:{}s:32:\"d239606fdde2cb24da8f7354352b1005\";a:0:{}s:32:\"0c2dfe777e772bf638b791dc65e35294\";N;s:32:\"e93bbfd10abfc05572ca16c615a544aa\";a:0:{}s:32:\"c215d89973d3e15b968e4083d92c2061\";a:0:{}s:32:\"2441bd08eb29d08c95f65e973c66518d\";a:0:{}s:32:\"9662b100ebc9a5df1772f3242ab0f535\";a:0:{}}', 'no'),
(323, 'ongkoskirim_id_version_type', '0', 'yes'),
(324, 'ongkoskirim_id_license_key', '', 'yes'),
(325, 'ongkoskirim_id_license_status', 'free', 'yes'),
(326, 'ongkoskirim_id_shipping_company_enabled', 'a:0:{}', 'yes'),
(327, 'ongkoskirim_id_store_city_id', '', 'yes'),
(328, 'ongkoskirim_id_is_show_weight', '1', 'yes'),
(329, 'ongkoskirim_id_is_unique_code', '1', 'yes'),
(330, 'ongkoskirim_id_unique_code_length', '3', 'yes'),
(331, 'ongkoskirim_id_is_added_cost_enable', '0', 'yes'),
(332, 'ongkoskirim_id_added_cost', '0', 'yes'),
(333, 'ongkoskirim_id_default_weight', '1', 'yes'),
(334, 'ongkoskirim_id_weight_tolerance', '300', 'yes'),
(335, '_transient_product_query-transient-version', '1600412799', 'yes'),
(339, 'woocommerce_marketplace_suggestions', 'a:2:{s:11:\"suggestions\";a:0:{}s:7:\"updated\";i:1600408836;}', 'no'),
(343, 'woocommerce_ongkoskirim-id_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(350, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:\"account_name\";s:15:\"Roy Dwi Kuncoro\";s:14:\"account_number\";s:10:\"0772949095\";s:9:\"bank_name\";s:11:\"BNI Syariah\";s:9:\"sort_code\";s:3:\"427\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}', 'yes'),
(366, 'woocommerce_tracker_ua', 'a:1:{i:0;s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";}', 'yes'),
(380, '_transient_product-transient-version', '1600338694', 'yes'),
(421, '_transient_timeout_wc_product_loop_afe4ed599db02f8a058454fb9a456150', '1602918804', 'no'),
(422, '_transient_wc_product_loop_afe4ed599db02f8a058454fb9a456150', 'a:2:{s:7:\"version\";s:10:\"1600326073\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:26;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:12;s:12:\"current_page\";i:1;}}', 'no'),
(425, '_transient_timeout_wc_product_loop_5c99b4dd395ebeb89f54906a202aed52', '1602918915', 'no'),
(426, '_transient_wc_product_loop_5c99b4dd395ebeb89f54906a202aed52', 'a:2:{s:7:\"version\";s:10:\"1600326073\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:26;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}}', 'no'),
(437, '_transient_timeout_wc_product_loop_6e0e783e66454f725cab1fd6e3b45725', '1602919486', 'no'),
(438, '_transient_wc_product_loop_6e0e783e66454f725cab1fd6e3b45725', 'a:2:{s:7:\"version\";s:10:\"1600326073\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:26;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:5;s:12:\"current_page\";i:1;}}', 'no'),
(439, '_transient_timeout_wc_product_loop_427db5c7463a0b2558b43b1be32d9118', '1602925030', 'no'),
(440, '_transient_wc_product_loop_427db5c7463a0b2558b43b1be32d9118', 'a:2:{s:7:\"version\";s:10:\"1600333014\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:26;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(444, '_transient_timeout_wc_shipping_method_count_legacy', '1602919630', 'no'),
(445, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1600268615\";s:5:\"value\";i:1;}', 'no'),
(450, '_transient_timeout_wc_product_loop_402b952fda2de8bf2630e45ab6f3ada9', '1602919753', 'no'),
(451, '_transient_wc_product_loop_402b952fda2de8bf2630e45ab6f3ada9', 'a:2:{s:7:\"version\";s:10:\"1600326073\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:1:{i:0;i:26;}s:5:\"total\";i:1;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(460, 'popup_status', 'on', 'yes'),
(478, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:18;}}', 'yes'),
(485, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(505, 'product_cat_children', 'a:0:{}', 'yes'),
(513, '_transient_timeout_wc_product_loop_a41c6dc35e44f5f607670c82f60fd9d8', '1602929882', 'no'),
(514, '_transient_wc_product_loop_a41c6dc35e44f5f607670c82f60fd9d8', 'a:2:{s:7:\"version\";s:10:\"1600337693\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:65;i:1;i:61;i:2;i:26;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(552, 'gadwp_options', '{\"client_id\":\"\",\"client_secret\":\"\",\"access_front\":[\"administrator\"],\"access_back\":[\"administrator\"],\"tableid_jail\":\"\",\"theme_color\":\"#1e73be\",\"switch_profile\":0,\"tracking_type\":\"universal\",\"ga_anonymize_ip\":0,\"user_api\":\"1\",\"ga_event_tracking\":0,\"ga_event_downloads\":\"zip|mp3*|mpe*g|pdf|docx*|pptx*|xlsx*|rar*\",\"track_exclude\":[],\"ga_target_geomap\":\"\",\"ga_realtime_pages\":10,\"token\":\"\",\"ga_profiles_list\":[],\"ga_enhanced_links\":0,\"ga_remarketing\":0,\"network_mode\":0,\"ga_speed_samplerate\":1,\"ga_user_samplerate\":100,\"ga_event_bouncerate\":0,\"ga_crossdomain_tracking\":0,\"ga_crossdomain_list\":\"\",\"ga_author_dimindex\":0,\"ga_category_dimindex\":0,\"ga_tag_dimindex\":0,\"ga_user_dimindex\":0,\"ga_pubyear_dimindex\":0,\"ga_pubyearmonth_dimindex\":0,\"ga_aff_tracking\":0,\"ga_event_affiliates\":\"\\/out\\/\",\"automatic_updates_minorversion\":0,\"backend_item_reports\":1,\"backend_realtime_report\":0,\"frontend_item_reports\":0,\"dashboard_widget\":1,\"api_backoff\":0,\"ga_cookiedomain\":\"\",\"ga_cookiename\":\"\",\"ga_cookieexpires\":\"\",\"pagetitle_404\":\"Page Not Found\",\"maps_api_key\":\"\",\"tm_author_var\":0,\"tm_category_var\":0,\"tm_tag_var\":0,\"tm_user_var\":0,\"tm_pubyear_var\":0,\"tm_pubyearmonth_var\":0,\"web_containerid\":\"\",\"amp_containerid\":\"\",\"amp_tracking_tagmanager\":0,\"amp_tracking_analytics\":0,\"amp_tracking_clientidapi\":0,\"trackingcode_infooter\":0,\"trackingevents_infooter\":0,\"ecommerce_mode\":\"disabled\",\"ga_formsubmit_tracking\":0,\"optimize_tracking\":0,\"optimize_containerid\":\"\",\"optimize_pagehiding\":0,\"superadmin_tracking\":0,\"ga_pagescrolldepth_tracking\":0,\"tm_pagescrolldepth_tracking\":0,\"ga_event_precision\":0,\"ga_force_ssl\":0,\"with_endpoint\":1,\"ga_optout\":0,\"ga_dnt_optout\":0,\"tm_optout\":0,\"tm_dnt_optout\":0,\"ga_with_gtag\":0,\"usage_tracking\":0,\"hide_am_notices\":0,\"network_hide_am_notices\":0,\"ga_enhanced_excludesa\":0,\"ga_hash_tracking\":0,\"gadwp_hidden\":\"Y\"}', 'yes'),
(553, 'widget_gadwp-frontwidget-report', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(554, '_amn_exact-metrics_to_check', '1600751659', 'yes'),
(559, 'heateor_sss', 'a:79:{s:24:\"horizontal_sharing_shape\";s:5:\"round\";s:23:\"horizontal_sharing_size\";s:2:\"35\";s:24:\"horizontal_sharing_width\";s:2:\"70\";s:25:\"horizontal_sharing_height\";s:2:\"35\";s:24:\"horizontal_border_radius\";s:0:\"\";s:29:\"horizontal_font_color_default\";s:0:\"\";s:32:\"horizontal_sharing_replace_color\";s:4:\"#fff\";s:27:\"horizontal_font_color_hover\";s:0:\"\";s:38:\"horizontal_sharing_replace_color_hover\";s:4:\"#fff\";s:27:\"horizontal_bg_color_default\";s:0:\"\";s:25:\"horizontal_bg_color_hover\";s:0:\"\";s:31:\"horizontal_border_width_default\";s:0:\"\";s:31:\"horizontal_border_color_default\";s:0:\"\";s:29:\"horizontal_border_width_hover\";s:0:\"\";s:29:\"horizontal_border_color_hover\";s:0:\"\";s:22:\"vertical_sharing_shape\";s:6:\"square\";s:21:\"vertical_sharing_size\";s:2:\"40\";s:22:\"vertical_sharing_width\";s:2:\"80\";s:23:\"vertical_sharing_height\";s:2:\"40\";s:22:\"vertical_border_radius\";s:0:\"\";s:27:\"vertical_font_color_default\";s:0:\"\";s:30:\"vertical_sharing_replace_color\";s:4:\"#fff\";s:25:\"vertical_font_color_hover\";s:0:\"\";s:36:\"vertical_sharing_replace_color_hover\";s:4:\"#fff\";s:25:\"vertical_bg_color_default\";s:0:\"\";s:23:\"vertical_bg_color_hover\";s:0:\"\";s:29:\"vertical_border_width_default\";s:0:\"\";s:29:\"vertical_border_color_default\";s:0:\"\";s:27:\"vertical_border_width_hover\";s:0:\"\";s:27:\"vertical_border_color_hover\";s:0:\"\";s:10:\"hor_enable\";s:1:\"1\";s:21:\"horizontal_target_url\";s:7:\"default\";s:28:\"horizontal_target_url_custom\";s:0:\"\";s:5:\"title\";s:15:\"Spread the love\";s:18:\"instagram_username\";s:0:\"\";s:20:\"comment_container_id\";s:7:\"respond\";s:23:\"horizontal_re_providers\";a:7:{i:0;s:8:\"facebook\";i:1;s:18:\"Facebook_Messenger\";i:2;s:9:\"instagram\";i:3;s:7:\"twitter\";i:4;s:8:\"Telegram\";i:5;s:8:\"whatsapp\";i:6;s:4:\"Line\";}s:21:\"hor_sharing_alignment\";s:6:\"center\";s:6:\"bottom\";s:1:\"1\";s:4:\"home\";s:1:\"1\";s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";s:7:\"product\";s:1:\"1\";s:14:\"woocom_product\";s:1:\"1\";s:15:\"vertical_enable\";s:1:\"1\";s:19:\"vertical_target_url\";s:7:\"default\";s:26:\"vertical_target_url_custom\";s:0:\"\";s:27:\"vertical_instagram_username\";s:0:\"\";s:29:\"vertical_comment_container_id\";s:7:\"respond\";s:21:\"vertical_re_providers\";a:7:{i:0;s:8:\"facebook\";i:1;s:18:\"Facebook_Messenger\";i:2;s:9:\"instagram\";i:3;s:7:\"twitter\";i:4;s:8:\"Telegram\";i:5;s:8:\"whatsapp\";i:6;s:4:\"Line\";}s:11:\"vertical_bg\";s:0:\"\";s:9:\"alignment\";s:4:\"left\";s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:13:\"vertical_home\";s:1:\"1\";s:13:\"vertical_post\";s:1:\"1\";s:13:\"vertical_page\";s:1:\"1\";s:16:\"vertical_product\";s:1:\"1\";s:19:\"hide_mobile_sharing\";s:1:\"1\";s:21:\"vertical_screen_width\";s:3:\"783\";s:21:\"bottom_mobile_sharing\";s:1:\"1\";s:23:\"horizontal_screen_width\";s:3:\"783\";s:23:\"bottom_sharing_position\";s:1:\"0\";s:24:\"bottom_sharing_alignment\";s:4:\"left\";s:29:\"bottom_sharing_position_radio\";s:10:\"responsive\";s:6:\"fb_key\";s:0:\"\";s:9:\"fb_secret\";s:0:\"\";s:13:\"footer_script\";s:1:\"1\";s:14:\"delete_options\";s:1:\"1\";s:31:\"share_count_cache_refresh_count\";s:2:\"10\";s:30:\"share_count_cache_refresh_unit\";s:7:\"minutes\";s:14:\"bitly_username\";s:0:\"\";s:9:\"bitly_key\";s:0:\"\";s:8:\"language\";s:5:\"en_US\";s:16:\"twitter_username\";s:0:\"\";s:15:\"buffer_username\";s:0:\"\";s:10:\"amp_enable\";s:1:\"1\";s:10:\"custom_css\";s:0:\"\";}', 'yes'),
(560, 'heateor_sss_version', '3.2.24', 'yes'),
(563, 'widget_heateor_sss_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(564, 'widget_heateor_sss_floating_sharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(565, 'widget_heateor_sss_follow', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:28:{s:5:\"title\";s:12:\"Sosial Media\";s:4:\"size\";i:32;s:10:\"icon_shape\";s:5:\"round\";s:8:\"facebook\";s:29:\"facebook.com/sepatupurwokerto\";s:7:\"twitter\";s:0:\"\";s:9:\"instagram\";s:39:\"instagram.com/sepatupurwokerto.original\";s:9:\"pinterest\";s:0:\"\";s:7:\"behance\";s:0:\"\";s:6:\"flickr\";s:0:\"\";s:10:\"foursquare\";s:0:\"\";s:6:\"github\";s:0:\"\";s:6:\"gitlab\";N;s:8:\"linkedin\";s:0:\"\";s:16:\"linkedin_company\";s:0:\"\";s:6:\"medium\";s:0:\"\";s:4:\"mewe\";s:0:\"\";s:13:\"odnoklassniki\";s:0:\"\";s:8:\"snapchat\";s:0:\"\";s:8:\"telegram\";s:0:\"\";s:6:\"tumblr\";s:0:\"\";s:5:\"vimeo\";s:0:\"\";s:9:\"vkontakte\";s:0:\"\";s:4:\"xing\";s:0:\"\";s:7:\"youtube\";s:0:\"\";s:15:\"youtube_channel\";s:0:\"\";s:8:\"rss_feed\";s:0:\"\";s:21:\"before_widget_content\";s:0:\"\";s:20:\"after_widget_content\";s:0:\"\";}}', 'yes'),
(574, 'user_registration_general_setting_login_options', 'default', 'yes'),
(575, 'user_registration_general_setting_disabled_user_roles', 'a:1:{i:0;s:10:\"subscriber\";}', 'yes'),
(576, 'user_registration_general_setting_uninstall_option', 'no', 'yes'),
(577, 'user_registration_myaccount_page_id', '78', 'yes'),
(578, 'user_registration_my_account_layout', 'horizontal', 'yes'),
(579, 'user_registration_myaccount_edit_profile_endpoint', 'edit-profile', 'yes'),
(580, 'user_registration_myaccount_change_password_endpoint', 'edit-password', 'yes'),
(581, 'user_registration_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(582, 'user_registration_logout_endpoint', 'user-logout', 'yes'),
(583, 'user_registration_integration_setting_recaptcha_version', 'v2', 'yes'),
(584, 'user_registration_integration_setting_recaptcha_site_key', '', 'yes'),
(585, 'user_registration_integration_setting_recaptcha_site_secret', '', 'yes'),
(586, 'user_registration_integration_setting_recaptcha_site_key_v3', '', 'yes'),
(587, 'user_registration_integration_setting_recaptcha_site_secret_v3', '', 'yes'),
(588, 'user_registration_email_setting_disable_email', 'no', 'no'),
(589, 'user_registration_email_from_name', 'Sepatu Purwokerto', 'no'),
(590, 'user_registration_email_from_address', 'roydwikuncoro@gmail.com', 'no'),
(591, 'user_registration_default_form_page_id', '73', 'yes'),
(594, 'user_registration_version', '1.6.1', 'yes'),
(595, 'user_registration_db_version', '1.6.1', 'yes'),
(596, 'user_registration_activated', '2020-09-17', 'yes'),
(597, 'user_registration_admin_notices', 'a:0:{}', 'yes'),
(598, 'heateor_sss_gdpr_notification_read', '1', 'yes'),
(613, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:18;s:6:\"social\";i:0;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600336006;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(617, 'current_theme', 'Twenty Twenty', 'yes'),
(618, 'theme_switched', '', 'yes'),
(619, 'theme_switched_via_customizer', '', 'yes'),
(620, 'customize_stashed_theme_mods', 'a:1:{s:15:\"twentyseventeen\";a:2:{s:23:\"nav_menu_locations[top]\";a:4:{s:5:\"value\";i:18;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-09-17 09:46:12\";}s:26:\"nav_menu_locations[social]\";a:4:{s:5:\"value\";i:0;s:4:\"type\";s:9:\"theme_mod\";s:7:\"user_id\";i:1;s:17:\"date_modified_gmt\";s:19:\"2020-09-17 09:46:12\";}}}', 'no'),
(635, 'theme_mods_twentyseventeen', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(656, 'user_registration_registration_page_id', '79', 'yes'),
(668, '_transient_timeout_wc_product_loop_5d5c7d1c8684fbb1d49003e39d7074f3', '1602929231', 'no'),
(669, '_transient_wc_product_loop_5d5c7d1c8684fbb1d49003e39d7074f3', 'a:2:{s:7:\"version\";s:10:\"1600334451\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:61;i:1;i:65;i:2;i:26;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(686, '_transient_timeout_dynamic_to_top_transient_css', '1608113882', 'no'),
(687, '_transient_dynamic_to_top_transient_css', 'body{position:relative}#dynamic-to-top{display:none;overflow:hidden;width:auto;z-index:90;position:fixed;bottom:20px;right:20px;top:auto;left:auto;font-family:sans-serif;font-size:1em;color:#fff;text-decoration:none;padding:17px 16px;border:1px solid #000;background:#272727;-webkit-background-origin:border;-moz-background-origin:border;-icab-background-origin:border;-khtml-background-origin:border;-o-background-origin:border;background-origin:border;-webkit-background-clip:padding-box;-moz-background-clip:padding-box;-icab-background-clip:padding-box;-khtml-background-clip:padding-box;-o-background-clip:padding-box;background-clip:padding-box;-webkit-box-shadow:0 1px 3px rgba( 0, 0, 0, 0.4 ), inset 0 0 0 1px rgba( 0, 0, 0, 0.2 ), inset 0 1px 0 rgba( 255, 255, 255, .4 ), inset 0 10px 10px rgba( 255, 255, 255, .1 );-ms-box-shadow:0 1px 3px rgba( 0, 0, 0, 0.4 ), inset 0 0 0 1px rgba( 0, 0, 0, 0.2 ), inset 0 1px 0 rgba( 255, 255, 255, .4 ), inset 0 10px 10px rgba( 255, 255, 255, .1 );-moz-box-shadow:0 1px 3px rgba( 0, 0, 0, 0.4 ), inset 0 0 0 1px rgba( 0, 0, 0, 0.2 ), inset 0 1px 0 rgba( 255, 255, 255, .4 ), inset 0 10px 10px rgba( 255, 255, 255, .1 );-o-box-shadow:0 1px 3px rgba( 0, 0, 0, 0.4 ), inset 0 0 0 1px rgba( 0, 0, 0, 0.2 ), inset 0 1px 0 rgba( 255, 255, 255, .4 ), inset 0 10px 10px rgba( 255, 255, 255, .1 );-khtml-box-shadow:0 1px 3px rgba( 0, 0, 0, 0.4 ), inset 0 0 0 1px rgba( 0, 0, 0, 0.2 ), inset 0 1px 0 rgba( 255, 255, 255, .4 ), inset 0 10px 10px rgba( 255, 255, 255, .1 );-icab-box-shadow:0 1px 3px rgba( 0, 0, 0, 0.4 ), inset 0 0 0 1px rgba( 0, 0, 0, 0.2 ), inset 0 1px 0 rgba( 255, 255, 255, .4 ), inset 0 10px 10px rgba( 255, 255, 255, .1 );box-shadow:0 1px 3px rgba( 0, 0, 0, 0.4 ), inset 0 0 0 1px rgba( 0, 0, 0, 0.2 ), inset 0 1px 0 rgba( 255, 255, 255, .4 ), inset 0 10px 10px rgba( 255, 255, 255, .1 );-webkit-border-radius:30px;-moz-border-radius:30px;-icab-border-radius:30px;-khtml-border-radius:30px;border-radius:30px}#dynamic-to-top:hover{background:#4e9c9c;background:#272727 -webkit-gradient( linear, 0% 0%, 0% 100%, from( rgba( 255, 255, 255, .2 ) ), to( rgba( 0, 0, 0, 0 ) ) );background:#272727 -webkit-linear-gradient( top, rgba( 255, 255, 255, .2 ), rgba( 0, 0, 0, 0 ) );background:#272727 -khtml-linear-gradient( top, rgba( 255, 255, 255, .2 ), rgba( 0, 0, 0, 0 ) );background:#272727 -moz-linear-gradient( top, rgba( 255, 255, 255, .2 ), rgba( 0, 0, 0, 0 ) );background:#272727 -o-linear-gradient( top, rgba( 255, 255, 255, .2 ), rgba( 0, 0, 0, 0 ) );background:#272727 -ms-linear-gradient( top, rgba( 255, 255, 255, .2 ), rgba( 0, 0, 0, 0 ) );background:#272727 -icab-linear-gradient( top, rgba( 255, 255, 255, .2 ), rgba( 0, 0, 0, 0 ) );background:#272727 linear-gradient( top, rgba( 255, 255, 255, .2 ), rgba( 0, 0, 0, 0 ) );cursor:pointer}#dynamic-to-top:active{background:#272727;background:#272727 -webkit-gradient( linear, 0% 0%, 0% 100%, from( rgba( 0, 0, 0, .3 ) ), to( rgba( 0, 0, 0, 0 ) ) );background:#272727 -webkit-linear-gradient( top, rgba( 0, 0, 0, .1 ), rgba( 0, 0, 0, 0 ) );background:#272727 -moz-linear-gradient( top, rgba( 0, 0, 0, .1 ), rgba( 0, 0, 0, 0 ) );background:#272727 -khtml-linear-gradient( top, rgba( 0, 0, 0, .1 ), rgba( 0, 0, 0, 0 ) );background:#272727 -o-linear-gradient( top, rgba( 0, 0, 0, .1 ), rgba( 0, 0, 0, 0 ) );background:#272727 -ms-linear-gradient( top, rgba( 0, 0, 0, .1 ), rgba( 0, 0, 0, 0 ) );background:#272727 -icab-linear-gradient( top, rgba( 0, 0, 0, .1 ), rgba( 0, 0, 0, 0 ) );background:#272727 linear-gradient( top, rgba( 0, 0, 0, .1 ), rgba( 0, 0, 0, 0 ) )}#dynamic-to-top,#dynamic-to-top:active,#dynamic-to-top:focus,#dynamic-to-top:hover{outline:none}#dynamic-to-top span{display:block;overflow:hidden;width:14px;height:12px;background:url( http://localhost/wordpress/wp-content/plugins/dynamic-to-top/css/images/up.png )no-repeat center center}', 'no'),
(693, 'widget_wpcw_contact', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:7:{s:5:\"title\";s:6:\"Kontak\";s:5:\"email\";a:2:{s:5:\"value\";s:26:\"sepatupurwokerto@gmail.com\";s:5:\"order\";i:1;}s:5:\"phone\";a:2:{s:5:\"value\";s:13:\"0895612462015\";s:5:\"order\";i:2;}s:3:\"fax\";a:2:{s:5:\"value\";s:0:\"\";s:5:\"order\";i:3;}s:7:\"address\";a:2:{s:5:\"value\";s:58:\"Tinggarjaya Rt 01 Rw 12, Jatilawang, Banyumas, Jawa Tengah\";s:5:\"order\";i:4;}s:6:\"labels\";a:2:{s:5:\"value\";s:3:\"yes\";s:5:\"order\";i:5;}s:3:\"map\";a:2:{s:5:\"value\";s:2:\"no\";s:5:\"order\";i:6;}}}', 'yes'),
(694, 'widget_wpcw_social', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(703, '_transient_timeout_wc_related_91', '1600510778', 'no'),
(704, '_transient_wc_related_91', 'a:2:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=91\";a:2:{i:0;s:2:\"26\";i:1;s:2:\"94\";}s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=91\";a:2:{i:0;s:2:\"26\";i:1;s:2:\"94\";}}', 'no'),
(710, '_transient_timeout_wc_product_loop_a4032b8bf76e17e2539e833baf613c99', '1602930313', 'no'),
(711, '_transient_wc_product_loop_a4032b8bf76e17e2539e833baf613c99', 'a:2:{s:7:\"version\";s:10:\"1600338273\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:91;i:1;i:65;i:2;i:61;i:3;i:26;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(715, '_transient_timeout_wc_product_loop_53e2af668b5d2a5fab237327fe53c2ec', '1602930481', 'no'),
(716, '_transient_wc_product_loop_53e2af668b5d2a5fab237327fe53c2ec', 'a:2:{s:7:\"version\";s:10:\"1600338475\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:5:{i:0;i:94;i:1;i:91;i:2;i:26;i:3;i:65;i:4;i:61;}s:5:\"total\";i:5;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(720, '_transient_timeout_wc_product_loop_2ff4d91e664113be68360739cb7eccf0', '1602930451', 'no'),
(721, '_transient_wc_product_loop_2ff4d91e664113be68360739cb7eccf0', 'a:2:{s:7:\"version\";s:10:\"1600338449\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:94;i:1;i:91;i:2;i:65;i:3;i:61;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(728, '_transient_timeout_wc_product_loop_ab6d815f5c6216d96314843a073a148c', '1602930569', 'no'),
(729, '_transient_wc_product_loop_ab6d815f5c6216d96314843a073a148c', 'a:2:{s:7:\"version\";s:10:\"1600338566\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:6:{i:0;i:97;i:1;i:94;i:2;i:91;i:3;i:26;i:4;i:65;i:5;i:61;}s:5:\"total\";i:6;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(733, '_transient_timeout_wc_product_loop_f97e0ad8acd683a086cc146fd8092aca', '1603004805', 'no'),
(734, '_transient_wc_product_loop_f97e0ad8acd683a086cc146fd8092aca', 'a:2:{s:7:\"version\";s:10:\"1600412799\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:6:{i:0;i:99;i:1;i:97;i:2;i:94;i:3;i:91;i:4;i:26;i:5;i:65;}s:5:\"total\";i:6;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(736, '_transient_timeout_wc_products_onsale', '1602930696', 'no'),
(737, '_transient_wc_products_onsale', 'a:7:{i:0;i:26;i:1;i:61;i:2;i:65;i:3;i:91;i:4;i:94;i:5;i:97;i:6;i:99;}', 'no'),
(745, '_transient_timeout_villatheme_call', '1600514447', 'no'),
(746, '_transient_villatheme_call', 'woo-photo-reviews', 'no'),
(747, '_transient_woocommerce_photo_review_update_data_version_1_1_0', '1600339170', 'yes'),
(748, 'woo-photo-reviews_start_use', '1', 'yes'),
(749, '_transient_timeout_woo-photo-reviews1.1.2.3_hide_notices', '1600598371', 'no'),
(750, '_transient_woo-photo-reviews1.1.2.3_hide_notices', '1', 'no'),
(751, '_transient_timeout_villatheme_notices', '1600511048', 'no'),
(752, '_transient_villatheme_notices', '', 'no'),
(757, 'printfriendly_option', 'a:33:{s:11:\"button_type\";s:36:\"buttons/printfriendly-pdf-button.png\";s:16:\"content_position\";s:4:\"left\";s:17:\"content_placement\";s:5:\"after\";s:18:\"custom_button_icon\";s:61:\"https://cdn.printfriendly.com/icons/printfriendly-icon-md.png\";s:18:\"custom_button_text\";s:11:\"custom-text\";s:12:\"custom_image\";s:0:\"\";s:11:\"custom_text\";s:13:\"PrintFriendly\";s:10:\"enable_css\";s:2:\"on\";s:10:\"margin_top\";s:2:\"12\";s:12:\"margin_right\";s:2:\"12\";s:13:\"margin_bottom\";s:2:\"12\";s:11:\"margin_left\";s:2:\"12\";s:13:\"show_on_posts\";s:2:\"on\";s:13:\"show_on_pages\";s:2:\"on\";s:10:\"text_color\";s:7:\"#3AAA11\";s:9:\"text_size\";i:14;s:4:\"logo\";s:7:\"favicon\";s:9:\"image_url\";s:0:\"\";s:7:\"tagline\";s:0:\"\";s:15:\"click_to_delete\";s:1:\"0\";s:11:\"hide-images\";s:1:\"0\";s:11:\"image-style\";s:5:\"right\";s:5:\"email\";s:1:\"0\";s:3:\"pdf\";s:1:\"0\";s:5:\"print\";s:1:\"0\";s:18:\"password_protected\";s:2:\"no\";s:10:\"javascript\";s:3:\"yes\";s:14:\"custom_css_url\";s:0:\"\";s:23:\"enable_google_analytics\";s:2:\"no\";s:22:\"enable_error_reporting\";s:3:\"yes\";s:7:\"pf_algo\";s:2:\"wp\";s:11:\"images-size\";s:9:\"full-size\";s:10:\"db_version\";i:17;}', 'yes'),
(762, 'wptf_configure_options', 'a:50:{s:29:\"custom_message_on_single_page\";b:1;s:11:\"plugin_name\";s:38:\"WooCommerce Product Table - Super Fast\";s:14:\"plugin_version\";s:3:\"1.6\";s:11:\"footer_cart\";s:11:\"always_show\";s:16:\"sort_mini_filter\";s:3:\"ASC\";s:21:\"sort_searchbox_filter\";s:3:\"ASC\";s:18:\"custom_add_to_cart\";s:18:\"add_cart_left_icon\";s:17:\"thumbs_image_size\";i:60;s:15:\"thumbs_lightbox\";s:1:\"1\";s:12:\"popup_notice\";s:1:\"1\";s:20:\"disable_product_link\";s:1:\"1\";s:20:\"disable_cat_tag_link\";s:1:\"0\";s:19:\"product_link_target\";s:6:\"_blank\";s:19:\"product_not_founded\";s:21:\"Products Not founded!\";s:14:\"load_more_text\";s:9:\"Load more\";s:19:\"quick_view_btn_text\";s:10:\"Quick View\";s:17:\"loading_more_text\";s:9:\"Loading..\";s:18:\"search_button_text\";s:6:\"Search\";s:19:\"search_keyword_text\";s:14:\"Search Keyword\";s:20:\"disable_loading_more\";s:6:\"normal\";s:21:\"instant_search_filter\";s:1:\"0\";s:11:\"filter_text\";s:7:\"Filter:\";s:19:\"filter_reset_button\";s:5:\"Reset\";s:19:\"instant_search_text\";s:16:\"Instant Search..\";s:16:\"yith_browse_list\";s:15:\"Browse the list\";s:22:\"yith_add_to_quote_text\";s:12:\"Add to Quote\";s:24:\"yith_add_to_quote_adding\";s:8:\"Adding..\";s:23:\"yith_add_to_quote_added\";s:6:\"Quoted\";s:4:\"item\";s:4:\"Item\";s:5:\"items\";s:5:\"Items\";s:23:\"add2cart_all_added_text\";s:5:\"Added\";s:25:\"right_combination_message\";s:13:\"Not available\";s:29:\"right_combination_message_alt\";s:92:\"Product variations is not set Properly. May be: price is not inputted. may be: Out of Stock.\";s:21:\"no_more_query_message\";s:49:\"There is no more products based on current Query.\";s:24:\"select_all_items_message\";s:24:\"Please select all items.\";s:20:\"out_of_stock_message\";s:12:\"Out of Stock\";s:18:\"adding_in_progress\";s:18:\"Adding in Progress\";s:20:\"no_right_combination\";s:20:\"No Right Combination\";s:18:\"sorry_out_of_stock\";s:20:\"Sorry! Out of Stock!\";s:17:\"type_your_message\";s:18:\"Type your Message.\";s:27:\"sorry_plz_right_combination\";s:39:\"Sorry, Please choose right combination.\";s:28:\"all_selected_direct_checkout\";s:2:\"no\";s:23:\"product_direct_checkout\";s:2:\"no\";s:16:\"search_box_title\";s:47:\"Search Box (<small>All Fields Optional</small>)\";s:24:\"search_box_searchkeyword\";s:14:\"Search Keyword\";s:18:\"search_box_orderby\";s:8:\"Order By\";s:16:\"search_box_order\";s:5:\"Order\";s:14:\"table_in_stock\";s:8:\"In Stock\";s:18:\"table_out_of_stock\";s:12:\"Out of Stock\";s:19:\"table_on_back_order\";s:13:\"On Back Order\";}', 'yes'),
(766, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1600339381;s:7:\"version\";s:5:\"5.1.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(769, 'cf7dp_ui_theme', 'smoothness', 'yes'),
(774, 'woocommerce-order-export-activation-notice-shown', '1', 'no'),
(778, '_transient_timeout_wc_low_stock_count', '1602931623', 'no'),
(779, '_transient_wc_low_stock_count', '0', 'no'),
(780, '_transient_timeout_wc_outofstock_count', '1602931623', 'no'),
(781, '_transient_wc_outofstock_count', '0', 'no'),
(782, '_transient_timeout_villatheme_ads', '1600495668', 'no'),
(783, '_transient_villatheme_ads', '', 'no'),
(801, '_transient_timeout_wc_related_99', '1600510979', 'no'),
(802, '_transient_wc_related_99', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=99\";a:3:{i:0;s:2:\"61\";i:1;s:2:\"65\";i:2;s:2:\"97\";}}', 'no'),
(803, '_transient_timeout_wc_related_97', '1600510979', 'no'),
(804, '_transient_wc_related_97', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=97\";a:3:{i:0;s:2:\"61\";i:1;s:2:\"65\";i:2;s:2:\"99\";}}', 'no'),
(805, '_transient_timeout_wc_related_94', '1600510979', 'no'),
(806, '_transient_wc_related_94', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=94\";a:2:{i:0;s:2:\"26\";i:1;s:2:\"91\";}}', 'no'),
(807, '_transient_timeout_wc_related_26', '1600510778', 'no'),
(808, '_transient_wc_related_26', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=26\";a:2:{i:0;s:2:\"91\";i:1;s:2:\"94\";}}', 'no'),
(809, '_transient_timeout_wc_related_65', '1600510778', 'no'),
(810, '_transient_wc_related_65', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=65\";a:3:{i:0;s:2:\"61\";i:1;s:2:\"97\";i:2;s:2:\"99\";}}', 'no'),
(817, 'category_children', 'a:0:{}', 'yes'),
(821, '_transient_timeout_wc_term_counts', '1602934136', 'no'),
(822, '_transient_wc_term_counts', 'a:4:{i:17;s:1:\"4\";i:19;s:1:\"4\";i:16;s:1:\"3\";i:15;s:1:\"0\";}', 'no'),
(854, 'widget_accesspress_store_icon_text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(855, 'widget_accesspress_cta_simple', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(856, 'widget_accesspress_storemo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(857, 'widget_accesspress_store_product', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(858, 'widget_accesspress_store_product2', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(859, 'widget_accesspress_cta_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(860, 'widget_accesspress_store_full_promo', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(861, 'accesspressstore_plugin_installed_notif', '0', 'yes'),
(862, 'theme_mods_accesspress-store', 'a:6:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:18;}s:27:\"accesspress_ticker_checkbox\";i:1;s:27:\"accesspress_background_type\";s:7:\"pattern\";s:36:\"accesspress_background_image_pattern\";s:8:\"pattern3\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600345399;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:2:{i:0;s:32:\"woocommerce_product_categories-3\";i:1;s:14:\"wpcw_contact-3\";}s:9:\"sidebar-2\";a:1:{i:0;s:20:\"heateor_sss_follow-3\";}}}}', 'yes'),
(867, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600411822;s:7:\"checked\";a:4:{s:17:\"accesspress-store\";s:5:\"2.2.7\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:17:\"accesspress-store\";a:6:{s:5:\"theme\";s:17:\"accesspress-store\";s:11:\"new_version\";s:5:\"2.4.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/accesspress-store/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/theme/accesspress-store.2.4.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(891, '_transient_timeout_wc_product_loop_12d49866f3b8b3d54b66396eac90f914', '1602938163', 'no'),
(892, '_transient_wc_product_loop_12d49866f3b8b3d54b66396eac90f914', 'a:2:{s:7:\"version\";s:10:\"1600345668\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:6:{i:0;i:97;i:1;i:99;i:2;i:61;i:3;i:65;i:4;i:94;i:5;i:91;}s:5:\"total\";i:6;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:6;s:12:\"current_page\";i:1;}}', 'no'),
(911, 'exactmetrics_tracking_notice', '1', 'yes'),
(997, 'whatshelp-code', '<!-- GetButton.io widget -->\r\n<script type=\"text/javascript\">\r\n(function () {\r\nvar options = {\r\nwhatsapp: \"+62895612462015\", // WhatsApp number\r\ncall_to_action: \"Message us\", // Call to action\r\nposition: \"left\", // Position may be \'right\' or \'left\'\r\n};\r\nvar proto = document.location.protocol, host = \"getbutton.io\", url = proto + \"//static.\" + host;\r\nvar s = document.createElement(\'script\'); s.type = \'text/javascript\'; s.async = true; s.src = url + \'/widget-send-button/js/init.js\';\r\ns.onload = function () { WhWidgetSendButton.init(host, proto, options); };\r\nvar x = document.getElementsByTagName(\'script\')[0]; x.parentNode.insertBefore(s, x);\r\n})();\r\n</script>\r\n<!-- /GetButton.io widget -->', 'yes'),
(1007, 'insert-headers-and-footers_welcome_dismissed_key', '1', 'yes'),
(1014, '_transient_health-check-site-status-result', '{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}', 'yes'),
(1025, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:8;s:3:\"all\";i:8;s:8:\"approved\";s:1:\"8\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1026, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(1027, '_transient_timeout_wc_admin_report', '1600495306', 'no'),
(1028, '_transient_wc_admin_report', 'a:1:{s:32:\"d7d78abe6333171b6f9aa75785b0308e\";a:0:{}}', 'no'),
(1029, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1600452112', 'no'),
(1030, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> Array</p></div>', 'no'),
(1048, '_site_transient_timeout_theme_roots', '1600412511', 'no'),
(1049, '_site_transient_theme_roots', 'a:4:{s:17:\"accesspress-store\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1050, '_transient_timeout__woocommerce_helper_updates', '1600453911', 'no'),
(1051, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1600410711;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1053, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1600421531', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1054, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4721;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4357;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2684;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2564;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1975;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1819;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1804;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1489;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1489;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1481;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1457;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1452;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1443;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1306;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1220;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1204;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1154;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1134;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1102;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1012;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:902;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:898;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:884;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:881;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:808;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:801;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:793;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:782;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:774;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:753;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:746;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:725;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:718;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:703;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:700;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:684;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:663;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:663;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:656;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:650;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:635;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:635;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:611;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:601;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:589;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:583;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:581;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:578;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:562;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:558;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:557;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:556;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:551;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:551;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:542;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:532;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:532;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:524;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:522;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:519;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:515;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:505;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:496;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:491;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:482;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:479;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:476;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:463;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:454;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:441;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:439;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:438;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:437;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:432;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:429;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:424;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:423;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:422;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:416;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:416;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:414;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:411;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:401;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:398;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:397;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:392;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:385;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:384;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:379;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:379;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:378;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:375;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:373;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:366;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:360;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:356;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:348;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:344;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:343;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:341;}}', 'no'),
(1058, 'um_last_version_upgrade', '2.1.9', 'yes'),
(1059, 'um_first_activation_date', '1600410799', 'yes'),
(1060, 'um_version', '2.1.9', 'yes'),
(1061, '__ultimatemember_sitekey', 'localhost/wordpress-AxXqTqTw5Cj96gfGVLhR', 'yes'),
(1062, 'um_is_installed', '1', 'yes'),
(1063, 'um_core_forms', 'a:3:{s:8:\"register\";i:141;s:5:\"login\";i:142;s:7:\"profile\";i:143;}', 'yes'),
(1064, 'um_core_directories', 'a:1:{s:7:\"members\";i:144;}', 'yes'),
(1065, 'um_options', 'a:165:{s:30:\"restricted_access_post_metabox\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:1;}s:19:\"uninstall_on_delete\";i:0;s:14:\"permalink_base\";s:10:\"user_login\";s:12:\"display_name\";s:9:\"full_name\";s:18:\"display_name_field\";s:0:\"\";s:15:\"author_redirect\";i:1;s:12:\"members_page\";i:1;s:13:\"use_gravatars\";i:0;s:37:\"use_um_gravatar_default_builtin_image\";s:7:\"default\";s:29:\"use_um_gravatar_default_image\";i:0;s:24:\"reset_require_strongpass\";i:0;s:20:\"account_tab_password\";i:1;s:19:\"account_tab_privacy\";i:1;s:25:\"account_tab_notifications\";i:1;s:18:\"account_tab_delete\";i:1;s:19:\"delete_account_text\";s:151:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account enter your password below.\";s:36:\"delete_account_no_pass_required_text\";s:152:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account, click on the button below.\";s:12:\"account_name\";i:1;s:20:\"account_name_disable\";i:0;s:20:\"account_name_require\";i:1;s:13:\"account_email\";i:1;s:24:\"account_general_password\";i:0;s:25:\"account_hide_in_directory\";i:1;s:33:\"account_hide_in_directory_default\";s:2:\"No\";s:26:\"account_require_strongpass\";i:0;s:17:\"photo_thumb_sizes\";a:3:{i:0;i:40;i:1;i:80;i:2;i:190;}s:17:\"cover_thumb_sizes\";a:2:{i:0;i:300;i:1;i:600;}s:10:\"accessible\";i:0;s:15:\"access_redirect\";s:0:\"\";s:19:\"access_exclude_uris\";a:0:{}s:20:\"home_page_accessible\";i:1;s:24:\"category_page_accessible\";i:1;s:25:\"restricted_access_message\";s:0:\"\";s:17:\"restricted_blocks\";i:0;s:13:\"enable_blocks\";i:0;s:24:\"restricted_block_message\";s:0:\"\";s:27:\"enable_reset_password_limit\";i:1;s:27:\"reset_password_limit_number\";i:3;s:14:\"blocked_emails\";s:0:\"\";s:13:\"blocked_words\";s:47:\"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff\";s:14:\"default_avatar\";s:0:\"\";s:13:\"default_cover\";s:0:\"\";s:28:\"disable_profile_photo_upload\";i:0;s:21:\"profile_show_metaicon\";i:0;s:12:\"profile_menu\";i:1;s:24:\"profile_menu_default_tab\";s:4:\"main\";s:18:\"profile_menu_icons\";i:1;s:13:\"form_asterisk\";i:0;s:13:\"profile_title\";s:28:\"{display_name} | {site_name}\";s:12:\"profile_desc\";s:83:\"{display_name} is on {site_name}. Join {site_name} to view {display_name}\'s profile\";s:11:\"admin_email\";s:23:\"roydwikuncoro@gmail.com\";s:9:\"mail_from\";s:17:\"Sepatu Purwokerto\";s:14:\"mail_from_addr\";s:23:\"roydwikuncoro@gmail.com\";s:10:\"email_html\";i:1;s:25:\"image_orientation_by_exif\";i:0;s:17:\"image_compression\";i:60;s:15:\"image_max_width\";i:1000;s:15:\"cover_min_width\";i:1000;s:22:\"profile_photo_max_size\";i:999999999;s:20:\"cover_photo_max_size\";i:999999999;s:22:\"custom_roles_increment\";i:1;s:28:\"um_profile_object_cache_stop\";i:0;s:16:\"rest_api_version\";s:3:\"2.0\";s:26:\"member_directory_own_table\";i:0;s:21:\"profile_show_html_bio\";i:0;s:16:\"profile_tab_main\";i:1;s:24:\"profile_tab_main_privacy\";i:0;s:22:\"profile_tab_main_roles\";s:0:\"\";s:17:\"profile_tab_posts\";i:1;s:25:\"profile_tab_posts_privacy\";i:0;s:23:\"profile_tab_posts_roles\";s:0:\"\";s:20:\"profile_tab_comments\";i:1;s:28:\"profile_tab_comments_privacy\";i:0;s:26:\"profile_tab_comments_roles\";s:0:\"\";s:16:\"welcome_email_on\";b:1;s:17:\"welcome_email_sub\";s:23:\"Welcome to {site_name}!\";s:13:\"welcome_email\";s:365:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account is now active.<br /><br />To login please visit the following url:<br /><br />{login_url} <br /><br />Your account e-mail: {email} <br />Your account username: {username} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:18:\"checkmail_email_on\";b:0;s:19:\"checkmail_email_sub\";s:28:\"Please activate your account\";s:15:\"checkmail_email\";s:304:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:<br /><br />{account_activation_link} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks, <br />{site_name}\";s:16:\"pending_email_on\";b:0;s:17:\"pending_email_sub\";s:30:\"[{site_name}] New user account\";s:13:\"pending_email\";s:309:\"Hi {display_name}, <br /><br />Thank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.<br /><br />Please allow us some time to process your request.<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"approved_email_on\";b:0;s:18:\"approved_email_sub\";s:41:\"Your account at {site_name} is now active\";s:14:\"approved_email\";s:438:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account has been approved and is now active.<br /><br />To login please visit the following url:<br /><br />{login_url}<br /><br />Your account e-mail: {email}<br />Your account username: {username}<br />Set your account password: {password_reset_link}<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"rejected_email_on\";b:0;s:18:\"rejected_email_sub\";s:30:\"Your account has been rejected\";s:14:\"rejected_email\";s:288:\"Hi {display_name},<br /><br />Thank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.<br /><br />Please feel free to apply again at a future date.<br /><br />Thanks,<br />{site_name}\";s:17:\"inactive_email_on\";b:1;s:18:\"inactive_email_sub\";s:33:\"Your account has been deactivated\";s:14:\"inactive_email\";s:250:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deactivated.<br /><br />If you would like your account to be reactivated please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"deletion_email_on\";b:1;s:18:\"deletion_email_sub\";s:29:\"Your account has been deleted\";s:14:\"deletion_email\";s:355:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.<br /><br />If your account has been deleted by accident please contact us at {admin_email} <br />Thanks,<br />{site_name}\";s:16:\"resetpw_email_on\";b:1;s:17:\"resetpw_email_sub\";s:19:\"Reset your password\";s:13:\"resetpw_email\";s:303:\"Hi {display_name},<br /><br />We received a request to reset the password for your account. If you made this request, click the link below to change your password:<br /><br />{password_reset_link}<br /><br />If you didn\'t make this request, you can ignore this email <br /><br />Thanks,<br />{site_name}\";s:18:\"changedpw_email_on\";b:1;s:19:\"changedpw_email_sub\";s:42:\"Your {site_name} password has been changed\";s:15:\"changedpw_email\";s:307:\"Hi {display_name},<br /><br />You recently changed the password associated with your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:23:\"changedaccount_email_on\";b:1;s:24:\"changedaccount_email_sub\";s:39:\"Your account at {site_name} was updated\";s:20:\"changedaccount_email\";s:278:\"Hi {display_name},<br /><br />You recently updated your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:24:\"notification_new_user_on\";b:1;s:25:\"notification_new_user_sub\";s:30:\"[{site_name}] New user account\";s:21:\"notification_new_user\";s:211:\"{display_name} has just created an account on {site_name}. To view their profile click here:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:22:\"notification_review_on\";b:0;s:23:\"notification_review_sub\";s:38:\"[{site_name}] New user awaiting review\";s:19:\"notification_review\";s:277:\"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.<br /><br />To review this member please click the following link:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:24:\"notification_deletion_on\";b:0;s:25:\"notification_deletion_sub\";s:29:\"[{site_name}] Account deleted\";s:21:\"notification_deletion\";s:58:\"{display_name} has just deleted their {site_name} account.\";s:9:\"core_user\";s:0:\"\";s:10:\"core_login\";s:0:\"\";s:13:\"core_register\";s:0:\"\";s:12:\"core_members\";s:0:\"\";s:11:\"core_logout\";s:0:\"\";s:12:\"core_account\";s:0:\"\";s:19:\"core_password-reset\";s:0:\"\";s:17:\"profile_show_name\";i:1;s:25:\"profile_show_social_links\";i:0;s:16:\"profile_show_bio\";i:1;s:20:\"profile_bio_maxchars\";i:180;s:19:\"profile_header_menu\";s:2:\"bc\";s:18:\"profile_empty_text\";i:1;s:22:\"profile_empty_text_emo\";i:1;s:12:\"profile_role\";a:0:{}s:16:\"profile_template\";s:7:\"profile\";s:17:\"profile_max_width\";s:6:\"1000px\";s:22:\"profile_area_max_width\";s:5:\"600px\";s:13:\"profile_align\";s:6:\"center\";s:13:\"profile_icons\";s:5:\"label\";s:28:\"profile_disable_photo_upload\";i:0;s:17:\"profile_photosize\";s:3:\"190\";s:21:\"profile_cover_enabled\";i:1;s:17:\"profile_coversize\";s:8:\"original\";s:19:\"profile_cover_ratio\";s:5:\"2.7:1\";s:19:\"profile_photocorner\";s:1:\"1\";s:17:\"profile_header_bg\";s:0:\"\";s:24:\"profile_primary_btn_word\";s:14:\"Update Profile\";s:21:\"profile_secondary_btn\";s:1:\"1\";s:26:\"profile_secondary_btn_word\";s:6:\"Cancel\";s:13:\"register_role\";s:1:\"0\";s:17:\"register_template\";s:8:\"register\";s:18:\"register_max_width\";s:5:\"450px\";s:14:\"register_align\";s:6:\"center\";s:14:\"register_icons\";s:5:\"label\";s:25:\"register_primary_btn_word\";s:8:\"Register\";s:22:\"register_secondary_btn\";i:1;s:27:\"register_secondary_btn_word\";s:5:\"Login\";s:26:\"register_secondary_btn_url\";s:0:\"\";s:14:\"login_template\";s:5:\"login\";s:15:\"login_max_width\";s:5:\"450px\";s:11:\"login_align\";s:6:\"center\";s:11:\"login_icons\";s:5:\"label\";s:22:\"login_primary_btn_word\";s:5:\"Login\";s:22:\"login_forgot_pass_link\";i:1;s:21:\"login_show_rememberme\";i:1;s:19:\"login_secondary_btn\";i:1;s:24:\"login_secondary_btn_word\";s:8:\"Register\";s:23:\"login_secondary_btn_url\";s:0:\"\";s:18:\"directory_template\";s:7:\"members\";s:16:\"directory_header\";s:21:\"{total_users} Members\";s:23:\"directory_header_single\";s:20:\"{total_users} Member\";}', 'yes'),
(1066, 'um_role_subscriber_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(1067, 'um_role_author_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(1068, 'um_role_contributor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(1069, 'um_role_editor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(1070, 'um_role_administrator_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:1;s:24:\"_um_can_not_see_adminbar\";i:0;s:21:\"_um_can_edit_everyone\";i:1;s:23:\"_um_can_delete_everyone\";i:1;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:20:\"_um_default_homepage\";i:1;s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:1;s:30:\"_um_can_access_private_profile\";i:1;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(1071, 'widget_um_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1072, 'um_cache_userdata_1', 'a:191:{s:2:\"ID\";i:1;s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$BlsgEpGuCiVg9kIfwUOKySr1cX5w1.0\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:23:\"roydwikuncoro@gmail.com\";s:8:\"user_url\";s:26:\"http://localhost/wordpress\";s:15:\"user_registered\";s:19:\"2020-09-16 14:18:05\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:24:\"manage_user_registration\";b:1;s:22:\"edit_user_registration\";b:1;s:22:\"read_user_registration\";b:1;s:24:\"delete_user_registration\";b:1;s:23:\"edit_user_registrations\";b:1;s:30:\"edit_others_user_registrations\";b:1;s:26:\"publish_user_registrations\";b:1;s:31:\"read_private_user_registrations\";b:1;s:25:\"delete_user_registrations\";b:1;s:33:\"delete_private_user_registrations\";b:1;s:35:\"delete_published_user_registrations\";b:1;s:32:\"delete_others_user_registrations\";b:1;s:31:\"edit_private_user_registrations\";b:1;s:33:\"edit_published_user_registrations\";b:1;s:30:\"manage_user_registration_terms\";b:1;s:28:\"edit_user_registration_terms\";b:1;s:30:\"delete_user_registration_terms\";b:1;s:30:\"assign_user_registration_terms\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:5:\"admin\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:18:\"show_welcome_panel\";s:1:\"1\";s:37:\"wp_dashboard_quick_press_last_post_id\";s:1:\"4\";s:27:\"_woocommerce_tracks_anon_id\";s:28:\"woo:GX/tJzXosnzd185g+vKN/2MS\";s:30:\"_woocommerce_persistent_cart_1\";s:843:\"a:1:{s:4:\"cart\";a:2:{s:32:\"54229abfcfa5649e7003b83dd4755294\";a:11:{s:3:\"key\";s:32:\"54229abfcfa5649e7003b83dd4755294\";s:10:\"product_id\";i:91;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:98000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:98000;s:8:\"line_tax\";i:0;}s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";a:11:{s:3:\"key\";s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";s:10:\"product_id\";i:94;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:98000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:98000;s:8:\"line_tax\";i:0;}}}\";s:14:\"wc_last_active\";s:10:\"1600387200\";s:11:\"last_update\";s:10:\"1600337117\";s:18:\"billing_first_name\";s:3:\"roy\";s:17:\"billing_last_name\";s:7:\"kuncoro\";s:15:\"billing_company\";s:0:\"\";s:17:\"billing_address_1\";s:0:\"\";s:17:\"billing_address_2\";s:0:\"\";s:12:\"billing_city\";s:0:\"\";s:16:\"billing_postcode\";s:0:\"\";s:15:\"billing_country\";s:2:\"ID\";s:13:\"billing_state\";s:2:\"JT\";s:13:\"billing_phone\";s:0:\"\";s:13:\"billing_email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:2:\"ID\";s:14:\"shipping_state\";s:2:\"JT\";s:14:\"account_status\";s:8:\"approved\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:19:\"account_status_name\";s:8:\"Approved\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}', 'no'),
(1074, '_transient_timeout_ur_upgrade_notice_1.6.1', '1600497208', 'no'),
(1075, '_transient_ur_upgrade_notice_1.6.1', '', 'no'),
(1076, '_transient_timeout_wc_upgrade_notice_4.5.2', '1600497209', 'no'),
(1077, '_transient_wc_upgrade_notice_4.5.2', '<p class=\"wc_plugin_upgrade_notice\">4.0 is a major update. Make a full site backup, update your theme and extensions, and <a href=\"https://docs.woocommerce.com/document/how-to-update-your-site\">review update best practices</a> before upgrading.</p>', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1080, 'um_cache_fonticons', 'a:1219:{i:0;s:13:\"um-icon-alert\";i:1;s:21:\"um-icon-alert-circled\";i:2;s:19:\"um-icon-android-add\";i:3;s:26:\"um-icon-android-add-circle\";i:4;s:27:\"um-icon-android-alarm-clock\";i:5;s:21:\"um-icon-android-alert\";i:6;s:20:\"um-icon-android-apps\";i:7;s:23:\"um-icon-android-archive\";i:8;s:26:\"um-icon-android-arrow-back\";i:9;s:26:\"um-icon-android-arrow-down\";i:10;s:30:\"um-icon-android-arrow-dropdown\";i:11;s:37:\"um-icon-android-arrow-dropdown-circle\";i:12;s:30:\"um-icon-android-arrow-dropleft\";i:13;s:37:\"um-icon-android-arrow-dropleft-circle\";i:14;s:31:\"um-icon-android-arrow-dropright\";i:15;s:38:\"um-icon-android-arrow-dropright-circle\";i:16;s:28:\"um-icon-android-arrow-dropup\";i:17;s:35:\"um-icon-android-arrow-dropup-circle\";i:18;s:29:\"um-icon-android-arrow-forward\";i:19;s:24:\"um-icon-android-arrow-up\";i:20;s:22:\"um-icon-android-attach\";i:21;s:19:\"um-icon-android-bar\";i:22;s:23:\"um-icon-android-bicycle\";i:23;s:20:\"um-icon-android-boat\";i:24;s:24:\"um-icon-android-bookmark\";i:25;s:20:\"um-icon-android-bulb\";i:26;s:19:\"um-icon-android-bus\";i:27;s:24:\"um-icon-android-calendar\";i:28;s:20:\"um-icon-android-call\";i:29;s:22:\"um-icon-android-camera\";i:30;s:22:\"um-icon-android-cancel\";i:31;s:19:\"um-icon-android-car\";i:32;s:20:\"um-icon-android-cart\";i:33;s:20:\"um-icon-android-chat\";i:34;s:24:\"um-icon-android-checkbox\";i:35;s:30:\"um-icon-android-checkbox-blank\";i:36;s:32:\"um-icon-android-checkbox-outline\";i:37;s:38:\"um-icon-android-checkbox-outline-blank\";i:38;s:32:\"um-icon-android-checkmark-circle\";i:39;s:25:\"um-icon-android-clipboard\";i:40;s:21:\"um-icon-android-close\";i:41;s:21:\"um-icon-android-cloud\";i:42;s:28:\"um-icon-android-cloud-circle\";i:43;s:26:\"um-icon-android-cloud-done\";i:44;s:29:\"um-icon-android-cloud-outline\";i:45;s:29:\"um-icon-android-color-palette\";i:46;s:23:\"um-icon-android-compass\";i:47;s:23:\"um-icon-android-contact\";i:48;s:24:\"um-icon-android-contacts\";i:49;s:24:\"um-icon-android-contract\";i:50;s:22:\"um-icon-android-create\";i:51;s:22:\"um-icon-android-delete\";i:52;s:23:\"um-icon-android-desktop\";i:53;s:24:\"um-icon-android-document\";i:54;s:20:\"um-icon-android-done\";i:55;s:24:\"um-icon-android-done-all\";i:56;s:24:\"um-icon-android-download\";i:57;s:22:\"um-icon-android-drafts\";i:58;s:20:\"um-icon-android-exit\";i:59;s:22:\"um-icon-android-expand\";i:60;s:24:\"um-icon-android-favorite\";i:61;s:32:\"um-icon-android-favorite-outline\";i:62;s:20:\"um-icon-android-film\";i:63;s:22:\"um-icon-android-folder\";i:64;s:27:\"um-icon-android-folder-open\";i:65;s:22:\"um-icon-android-funnel\";i:66;s:21:\"um-icon-android-globe\";i:67;s:20:\"um-icon-android-hand\";i:68;s:23:\"um-icon-android-hangout\";i:69;s:21:\"um-icon-android-happy\";i:70;s:20:\"um-icon-android-home\";i:71;s:21:\"um-icon-android-image\";i:72;s:22:\"um-icon-android-laptop\";i:73;s:20:\"um-icon-android-list\";i:74;s:22:\"um-icon-android-locate\";i:75;s:20:\"um-icon-android-lock\";i:76;s:20:\"um-icon-android-mail\";i:77;s:19:\"um-icon-android-map\";i:78;s:20:\"um-icon-android-menu\";i:79;s:26:\"um-icon-android-microphone\";i:80;s:30:\"um-icon-android-microphone-off\";i:81;s:31:\"um-icon-android-more-horizontal\";i:82;s:29:\"um-icon-android-more-vertical\";i:83;s:24:\"um-icon-android-navigate\";i:84;s:29:\"um-icon-android-notifications\";i:85;s:34:\"um-icon-android-notifications-none\";i:86;s:33:\"um-icon-android-notifications-off\";i:87;s:20:\"um-icon-android-open\";i:88;s:23:\"um-icon-android-options\";i:89;s:22:\"um-icon-android-people\";i:90;s:22:\"um-icon-android-person\";i:91;s:26:\"um-icon-android-person-add\";i:92;s:31:\"um-icon-android-phone-landscape\";i:93;s:30:\"um-icon-android-phone-portrait\";i:94;s:19:\"um-icon-android-pin\";i:95;s:21:\"um-icon-android-plane\";i:96;s:25:\"um-icon-android-playstore\";i:97;s:21:\"um-icon-android-print\";i:98;s:32:\"um-icon-android-radio-button-off\";i:99;s:31:\"um-icon-android-radio-button-on\";i:100;s:23:\"um-icon-android-refresh\";i:101;s:22:\"um-icon-android-remove\";i:102;s:29:\"um-icon-android-remove-circle\";i:103;s:26:\"um-icon-android-restaurant\";i:104;s:19:\"um-icon-android-sad\";i:105;s:22:\"um-icon-android-search\";i:106;s:20:\"um-icon-android-send\";i:107;s:24:\"um-icon-android-settings\";i:108;s:21:\"um-icon-android-share\";i:109;s:25:\"um-icon-android-share-alt\";i:110;s:20:\"um-icon-android-star\";i:111;s:25:\"um-icon-android-star-half\";i:112;s:28:\"um-icon-android-star-outline\";i:113;s:25:\"um-icon-android-stopwatch\";i:114;s:22:\"um-icon-android-subway\";i:115;s:21:\"um-icon-android-sunny\";i:116;s:20:\"um-icon-android-sync\";i:117;s:23:\"um-icon-android-textsms\";i:118;s:20:\"um-icon-android-time\";i:119;s:21:\"um-icon-android-train\";i:120;s:22:\"um-icon-android-unlock\";i:121;s:22:\"um-icon-android-upload\";i:122;s:27:\"um-icon-android-volume-down\";i:123;s:27:\"um-icon-android-volume-mute\";i:124;s:26:\"um-icon-android-volume-off\";i:125;s:25:\"um-icon-android-volume-up\";i:126;s:20:\"um-icon-android-walk\";i:127;s:23:\"um-icon-android-warning\";i:128;s:21:\"um-icon-android-watch\";i:129;s:20:\"um-icon-android-wifi\";i:130;s:16:\"um-icon-aperture\";i:131;s:15:\"um-icon-archive\";i:132;s:20:\"um-icon-arrow-down-a\";i:133;s:20:\"um-icon-arrow-down-b\";i:134;s:20:\"um-icon-arrow-down-c\";i:135;s:20:\"um-icon-arrow-expand\";i:136;s:29:\"um-icon-arrow-graph-down-left\";i:137;s:30:\"um-icon-arrow-graph-down-right\";i:138;s:27:\"um-icon-arrow-graph-up-left\";i:139;s:28:\"um-icon-arrow-graph-up-right\";i:140;s:20:\"um-icon-arrow-left-a\";i:141;s:20:\"um-icon-arrow-left-b\";i:142;s:20:\"um-icon-arrow-left-c\";i:143;s:18:\"um-icon-arrow-move\";i:144;s:20:\"um-icon-arrow-resize\";i:145;s:25:\"um-icon-arrow-return-left\";i:146;s:26:\"um-icon-arrow-return-right\";i:147;s:21:\"um-icon-arrow-right-a\";i:148;s:21:\"um-icon-arrow-right-b\";i:149;s:21:\"um-icon-arrow-right-c\";i:150;s:20:\"um-icon-arrow-shrink\";i:151;s:18:\"um-icon-arrow-swap\";i:152;s:18:\"um-icon-arrow-up-a\";i:153;s:18:\"um-icon-arrow-up-b\";i:154;s:18:\"um-icon-arrow-up-c\";i:155;s:16:\"um-icon-asterisk\";i:156;s:10:\"um-icon-at\";i:157;s:17:\"um-icon-backspace\";i:158;s:25:\"um-icon-backspace-outline\";i:159;s:11:\"um-icon-bag\";i:160;s:24:\"um-icon-battery-charging\";i:161;s:21:\"um-icon-battery-empty\";i:162;s:20:\"um-icon-battery-full\";i:163;s:20:\"um-icon-battery-half\";i:164;s:19:\"um-icon-battery-low\";i:165;s:14:\"um-icon-beaker\";i:166;s:12:\"um-icon-beer\";i:167;s:17:\"um-icon-bluetooth\";i:168;s:15:\"um-icon-bonfire\";i:169;s:16:\"um-icon-bookmark\";i:170;s:14:\"um-icon-bowtie\";i:171;s:17:\"um-icon-briefcase\";i:172;s:11:\"um-icon-bug\";i:173;s:18:\"um-icon-calculator\";i:174;s:16:\"um-icon-calendar\";i:175;s:14:\"um-icon-camera\";i:176;s:12:\"um-icon-card\";i:177;s:12:\"um-icon-cash\";i:178;s:15:\"um-icon-chatbox\";i:179;s:23:\"um-icon-chatbox-working\";i:180;s:17:\"um-icon-chatboxes\";i:181;s:18:\"um-icon-chatbubble\";i:182;s:26:\"um-icon-chatbubble-working\";i:183;s:19:\"um-icon-chatbubbles\";i:184;s:17:\"um-icon-checkmark\";i:185;s:25:\"um-icon-checkmark-circled\";i:186;s:23:\"um-icon-checkmark-round\";i:187;s:20:\"um-icon-chevron-down\";i:188;s:20:\"um-icon-chevron-left\";i:189;s:21:\"um-icon-chevron-right\";i:190;s:18:\"um-icon-chevron-up\";i:191;s:17:\"um-icon-clipboard\";i:192;s:13:\"um-icon-clock\";i:193;s:13:\"um-icon-close\";i:194;s:21:\"um-icon-close-circled\";i:195;s:19:\"um-icon-close-round\";i:196;s:25:\"um-icon-closed-captioning\";i:197;s:13:\"um-icon-cloud\";i:198;s:12:\"um-icon-code\";i:199;s:21:\"um-icon-code-download\";i:200;s:20:\"um-icon-code-working\";i:201;s:14:\"um-icon-coffee\";i:202;s:15:\"um-icon-compass\";i:203;s:15:\"um-icon-compose\";i:204;s:23:\"um-icon-connection-bars\";i:205;s:16:\"um-icon-contrast\";i:206;s:12:\"um-icon-crop\";i:207;s:12:\"um-icon-cube\";i:208;s:12:\"um-icon-disc\";i:209;s:16:\"um-icon-document\";i:210;s:21:\"um-icon-document-text\";i:211;s:12:\"um-icon-drag\";i:212;s:13:\"um-icon-earth\";i:213;s:13:\"um-icon-easel\";i:214;s:12:\"um-icon-edit\";i:215;s:11:\"um-icon-egg\";i:216;s:13:\"um-icon-eject\";i:217;s:13:\"um-icon-email\";i:218;s:20:\"um-icon-email-unread\";i:219;s:24:\"um-icon-erlenmeyer-flask\";i:220;s:32:\"um-icon-erlenmeyer-flask-bubbles\";i:221;s:11:\"um-icon-eye\";i:222;s:20:\"um-icon-eye-disabled\";i:223;s:14:\"um-icon-female\";i:224;s:14:\"um-icon-filing\";i:225;s:19:\"um-icon-film-marker\";i:226;s:16:\"um-icon-fireball\";i:227;s:12:\"um-icon-flag\";i:228;s:13:\"um-icon-flame\";i:229;s:13:\"um-icon-flash\";i:230;s:17:\"um-icon-flash-off\";i:231;s:14:\"um-icon-folder\";i:232;s:12:\"um-icon-fork\";i:233;s:17:\"um-icon-fork-repo\";i:234;s:15:\"um-icon-forward\";i:235;s:14:\"um-icon-funnel\";i:236;s:14:\"um-icon-gear-a\";i:237;s:14:\"um-icon-gear-b\";i:238;s:12:\"um-icon-grid\";i:239;s:14:\"um-icon-hammer\";i:240;s:13:\"um-icon-happy\";i:241;s:21:\"um-icon-happy-outline\";i:242;s:17:\"um-icon-headphone\";i:243;s:13:\"um-icon-heart\";i:244;s:20:\"um-icon-heart-broken\";i:245;s:12:\"um-icon-help\";i:246;s:17:\"um-icon-help-buoy\";i:247;s:20:\"um-icon-help-circled\";i:248;s:12:\"um-icon-home\";i:249;s:16:\"um-icon-icecream\";i:250;s:13:\"um-icon-image\";i:251;s:14:\"um-icon-images\";i:252;s:19:\"um-icon-information\";i:253;s:27:\"um-icon-information-circled\";i:254;s:13:\"um-icon-ionic\";i:255;s:17:\"um-icon-ios-alarm\";i:256;s:25:\"um-icon-ios-alarm-outline\";i:257;s:18:\"um-icon-ios-albums\";i:258;s:26:\"um-icon-ios-albums-outline\";i:259;s:28:\"um-icon-ios-americanfootball\";i:260;s:36:\"um-icon-ios-americanfootball-outline\";i:261;s:21:\"um-icon-ios-analytics\";i:262;s:29:\"um-icon-ios-analytics-outline\";i:263;s:22:\"um-icon-ios-arrow-back\";i:264;s:22:\"um-icon-ios-arrow-down\";i:265;s:25:\"um-icon-ios-arrow-forward\";i:266;s:22:\"um-icon-ios-arrow-left\";i:267;s:23:\"um-icon-ios-arrow-right\";i:268;s:27:\"um-icon-ios-arrow-thin-down\";i:269;s:27:\"um-icon-ios-arrow-thin-left\";i:270;s:28:\"um-icon-ios-arrow-thin-right\";i:271;s:25:\"um-icon-ios-arrow-thin-up\";i:272;s:20:\"um-icon-ios-arrow-up\";i:273;s:14:\"um-icon-ios-at\";i:274;s:22:\"um-icon-ios-at-outline\";i:275;s:19:\"um-icon-ios-barcode\";i:276;s:27:\"um-icon-ios-barcode-outline\";i:277;s:20:\"um-icon-ios-baseball\";i:278;s:28:\"um-icon-ios-baseball-outline\";i:279;s:22:\"um-icon-ios-basketball\";i:280;s:30:\"um-icon-ios-basketball-outline\";i:281;s:16:\"um-icon-ios-bell\";i:282;s:24:\"um-icon-ios-bell-outline\";i:283;s:16:\"um-icon-ios-body\";i:284;s:24:\"um-icon-ios-body-outline\";i:285;s:16:\"um-icon-ios-bolt\";i:286;s:24:\"um-icon-ios-bolt-outline\";i:287;s:16:\"um-icon-ios-book\";i:288;s:24:\"um-icon-ios-book-outline\";i:289;s:21:\"um-icon-ios-bookmarks\";i:290;s:29:\"um-icon-ios-bookmarks-outline\";i:291;s:15:\"um-icon-ios-box\";i:292;s:23:\"um-icon-ios-box-outline\";i:293;s:21:\"um-icon-ios-briefcase\";i:294;s:29:\"um-icon-ios-briefcase-outline\";i:295;s:20:\"um-icon-ios-browsers\";i:296;s:28:\"um-icon-ios-browsers-outline\";i:297;s:22:\"um-icon-ios-calculator\";i:298;s:30:\"um-icon-ios-calculator-outline\";i:299;s:20:\"um-icon-ios-calendar\";i:300;s:28:\"um-icon-ios-calendar-outline\";i:301;s:18:\"um-icon-ios-camera\";i:302;s:26:\"um-icon-ios-camera-outline\";i:303;s:16:\"um-icon-ios-cart\";i:304;s:24:\"um-icon-ios-cart-outline\";i:305;s:21:\"um-icon-ios-chatboxes\";i:306;s:29:\"um-icon-ios-chatboxes-outline\";i:307;s:22:\"um-icon-ios-chatbubble\";i:308;s:30:\"um-icon-ios-chatbubble-outline\";i:309;s:21:\"um-icon-ios-checkmark\";i:310;s:27:\"um-icon-ios-checkmark-empty\";i:311;s:29:\"um-icon-ios-checkmark-outline\";i:312;s:25:\"um-icon-ios-circle-filled\";i:313;s:26:\"um-icon-ios-circle-outline\";i:314;s:17:\"um-icon-ios-clock\";i:315;s:25:\"um-icon-ios-clock-outline\";i:316;s:17:\"um-icon-ios-close\";i:317;s:23:\"um-icon-ios-close-empty\";i:318;s:25:\"um-icon-ios-close-outline\";i:319;s:17:\"um-icon-ios-cloud\";i:320;s:26:\"um-icon-ios-cloud-download\";i:321;s:34:\"um-icon-ios-cloud-download-outline\";i:322;s:25:\"um-icon-ios-cloud-outline\";i:323;s:24:\"um-icon-ios-cloud-upload\";i:324;s:32:\"um-icon-ios-cloud-upload-outline\";i:325;s:18:\"um-icon-ios-cloudy\";i:326;s:24:\"um-icon-ios-cloudy-night\";i:327;s:32:\"um-icon-ios-cloudy-night-outline\";i:328;s:26:\"um-icon-ios-cloudy-outline\";i:329;s:15:\"um-icon-ios-cog\";i:330;s:23:\"um-icon-ios-cog-outline\";i:331;s:24:\"um-icon-ios-color-filter\";i:332;s:32:\"um-icon-ios-color-filter-outline\";i:333;s:22:\"um-icon-ios-color-wand\";i:334;s:30:\"um-icon-ios-color-wand-outline\";i:335;s:19:\"um-icon-ios-compose\";i:336;s:27:\"um-icon-ios-compose-outline\";i:337;s:19:\"um-icon-ios-contact\";i:338;s:27:\"um-icon-ios-contact-outline\";i:339;s:16:\"um-icon-ios-copy\";i:340;s:24:\"um-icon-ios-copy-outline\";i:341;s:16:\"um-icon-ios-crop\";i:342;s:23:\"um-icon-ios-crop-strong\";i:343;s:20:\"um-icon-ios-download\";i:344;s:28:\"um-icon-ios-download-outline\";i:345;s:16:\"um-icon-ios-drag\";i:346;s:17:\"um-icon-ios-email\";i:347;s:25:\"um-icon-ios-email-outline\";i:348;s:15:\"um-icon-ios-eye\";i:349;s:23:\"um-icon-ios-eye-outline\";i:350;s:23:\"um-icon-ios-fastforward\";i:351;s:31:\"um-icon-ios-fastforward-outline\";i:352;s:18:\"um-icon-ios-filing\";i:353;s:26:\"um-icon-ios-filing-outline\";i:354;s:16:\"um-icon-ios-film\";i:355;s:24:\"um-icon-ios-film-outline\";i:356;s:16:\"um-icon-ios-flag\";i:357;s:24:\"um-icon-ios-flag-outline\";i:358;s:17:\"um-icon-ios-flame\";i:359;s:25:\"um-icon-ios-flame-outline\";i:360;s:17:\"um-icon-ios-flask\";i:361;s:25:\"um-icon-ios-flask-outline\";i:362;s:18:\"um-icon-ios-flower\";i:363;s:26:\"um-icon-ios-flower-outline\";i:364;s:18:\"um-icon-ios-folder\";i:365;s:26:\"um-icon-ios-folder-outline\";i:366;s:20:\"um-icon-ios-football\";i:367;s:28:\"um-icon-ios-football-outline\";i:368;s:29:\"um-icon-ios-game-controller-a\";i:369;s:37:\"um-icon-ios-game-controller-a-outline\";i:370;s:29:\"um-icon-ios-game-controller-b\";i:371;s:37:\"um-icon-ios-game-controller-b-outline\";i:372;s:16:\"um-icon-ios-gear\";i:373;s:24:\"um-icon-ios-gear-outline\";i:374;s:19:\"um-icon-ios-glasses\";i:375;s:27:\"um-icon-ios-glasses-outline\";i:376;s:21:\"um-icon-ios-grid-view\";i:377;s:29:\"um-icon-ios-grid-view-outline\";i:378;s:17:\"um-icon-ios-heart\";i:379;s:25:\"um-icon-ios-heart-outline\";i:380;s:16:\"um-icon-ios-help\";i:381;s:22:\"um-icon-ios-help-empty\";i:382;s:24:\"um-icon-ios-help-outline\";i:383;s:16:\"um-icon-ios-home\";i:384;s:24:\"um-icon-ios-home-outline\";i:385;s:20:\"um-icon-ios-infinite\";i:386;s:28:\"um-icon-ios-infinite-outline\";i:387;s:23:\"um-icon-ios-information\";i:388;s:29:\"um-icon-ios-information-empty\";i:389;s:31:\"um-icon-ios-information-outline\";i:390;s:25:\"um-icon-ios-ionic-outline\";i:391;s:18:\"um-icon-ios-keypad\";i:392;s:26:\"um-icon-ios-keypad-outline\";i:393;s:21:\"um-icon-ios-lightbulb\";i:394;s:29:\"um-icon-ios-lightbulb-outline\";i:395;s:16:\"um-icon-ios-list\";i:396;s:24:\"um-icon-ios-list-outline\";i:397;s:20:\"um-icon-ios-location\";i:398;s:28:\"um-icon-ios-location-outline\";i:399;s:18:\"um-icon-ios-locked\";i:400;s:26:\"um-icon-ios-locked-outline\";i:401;s:16:\"um-icon-ios-loop\";i:402;s:23:\"um-icon-ios-loop-strong\";i:403;s:19:\"um-icon-ios-medical\";i:404;s:27:\"um-icon-ios-medical-outline\";i:405;s:18:\"um-icon-ios-medkit\";i:406;s:26:\"um-icon-ios-medkit-outline\";i:407;s:15:\"um-icon-ios-mic\";i:408;s:19:\"um-icon-ios-mic-off\";i:409;s:23:\"um-icon-ios-mic-outline\";i:410;s:17:\"um-icon-ios-minus\";i:411;s:23:\"um-icon-ios-minus-empty\";i:412;s:25:\"um-icon-ios-minus-outline\";i:413;s:19:\"um-icon-ios-monitor\";i:414;s:27:\"um-icon-ios-monitor-outline\";i:415;s:16:\"um-icon-ios-moon\";i:416;s:24:\"um-icon-ios-moon-outline\";i:417;s:16:\"um-icon-ios-more\";i:418;s:24:\"um-icon-ios-more-outline\";i:419;s:24:\"um-icon-ios-musical-note\";i:420;s:25:\"um-icon-ios-musical-notes\";i:421;s:20:\"um-icon-ios-navigate\";i:422;s:28:\"um-icon-ios-navigate-outline\";i:423;s:21:\"um-icon-ios-nutrition\";i:424;s:29:\"um-icon-ios-nutrition-outline\";i:425;s:17:\"um-icon-ios-paper\";i:426;s:25:\"um-icon-ios-paper-outline\";i:427;s:22:\"um-icon-ios-paperplane\";i:428;s:30:\"um-icon-ios-paperplane-outline\";i:429;s:23:\"um-icon-ios-partlysunny\";i:430;s:31:\"um-icon-ios-partlysunny-outline\";i:431;s:17:\"um-icon-ios-pause\";i:432;s:25:\"um-icon-ios-pause-outline\";i:433;s:15:\"um-icon-ios-paw\";i:434;s:23:\"um-icon-ios-paw-outline\";i:435;s:18:\"um-icon-ios-people\";i:436;s:26:\"um-icon-ios-people-outline\";i:437;s:18:\"um-icon-ios-person\";i:438;s:26:\"um-icon-ios-person-outline\";i:439;s:21:\"um-icon-ios-personadd\";i:440;s:29:\"um-icon-ios-personadd-outline\";i:441;s:18:\"um-icon-ios-photos\";i:442;s:26:\"um-icon-ios-photos-outline\";i:443;s:15:\"um-icon-ios-pie\";i:444;s:23:\"um-icon-ios-pie-outline\";i:445;s:16:\"um-icon-ios-pint\";i:446;s:24:\"um-icon-ios-pint-outline\";i:447;s:16:\"um-icon-ios-play\";i:448;s:24:\"um-icon-ios-play-outline\";i:449;s:16:\"um-icon-ios-plus\";i:450;s:22:\"um-icon-ios-plus-empty\";i:451;s:24:\"um-icon-ios-plus-outline\";i:452;s:20:\"um-icon-ios-pricetag\";i:453;s:28:\"um-icon-ios-pricetag-outline\";i:454;s:21:\"um-icon-ios-pricetags\";i:455;s:29:\"um-icon-ios-pricetags-outline\";i:456;s:19:\"um-icon-ios-printer\";i:457;s:27:\"um-icon-ios-printer-outline\";i:458;s:17:\"um-icon-ios-pulse\";i:459;s:24:\"um-icon-ios-pulse-strong\";i:460;s:17:\"um-icon-ios-rainy\";i:461;s:25:\"um-icon-ios-rainy-outline\";i:462;s:21:\"um-icon-ios-recording\";i:463;s:29:\"um-icon-ios-recording-outline\";i:464;s:16:\"um-icon-ios-redo\";i:465;s:24:\"um-icon-ios-redo-outline\";i:466;s:19:\"um-icon-ios-refresh\";i:467;s:25:\"um-icon-ios-refresh-empty\";i:468;s:27:\"um-icon-ios-refresh-outline\";i:469;s:18:\"um-icon-ios-reload\";i:470;s:26:\"um-icon-ios-reverse-camera\";i:471;s:34:\"um-icon-ios-reverse-camera-outline\";i:472;s:18:\"um-icon-ios-rewind\";i:473;s:26:\"um-icon-ios-rewind-outline\";i:474;s:16:\"um-icon-ios-rose\";i:475;s:24:\"um-icon-ios-rose-outline\";i:476;s:18:\"um-icon-ios-search\";i:477;s:25:\"um-icon-ios-search-strong\";i:478;s:20:\"um-icon-ios-settings\";i:479;s:27:\"um-icon-ios-settings-strong\";i:480;s:19:\"um-icon-ios-shuffle\";i:481;s:26:\"um-icon-ios-shuffle-strong\";i:482;s:24:\"um-icon-ios-skipbackward\";i:483;s:32:\"um-icon-ios-skipbackward-outline\";i:484;s:23:\"um-icon-ios-skipforward\";i:485;s:31:\"um-icon-ios-skipforward-outline\";i:486;s:17:\"um-icon-ios-snowy\";i:487;s:23:\"um-icon-ios-speedometer\";i:488;s:31:\"um-icon-ios-speedometer-outline\";i:489;s:16:\"um-icon-ios-star\";i:490;s:21:\"um-icon-ios-star-half\";i:491;s:24:\"um-icon-ios-star-outline\";i:492;s:21:\"um-icon-ios-stopwatch\";i:493;s:29:\"um-icon-ios-stopwatch-outline\";i:494;s:17:\"um-icon-ios-sunny\";i:495;s:25:\"um-icon-ios-sunny-outline\";i:496;s:21:\"um-icon-ios-telephone\";i:497;s:29:\"um-icon-ios-telephone-outline\";i:498;s:22:\"um-icon-ios-tennisball\";i:499;s:30:\"um-icon-ios-tennisball-outline\";i:500;s:24:\"um-icon-ios-thunderstorm\";i:501;s:32:\"um-icon-ios-thunderstorm-outline\";i:502;s:16:\"um-icon-ios-time\";i:503;s:24:\"um-icon-ios-time-outline\";i:504;s:17:\"um-icon-ios-timer\";i:505;s:25:\"um-icon-ios-timer-outline\";i:506;s:18:\"um-icon-ios-toggle\";i:507;s:26:\"um-icon-ios-toggle-outline\";i:508;s:17:\"um-icon-ios-trash\";i:509;s:25:\"um-icon-ios-trash-outline\";i:510;s:16:\"um-icon-ios-undo\";i:511;s:24:\"um-icon-ios-undo-outline\";i:512;s:20:\"um-icon-ios-unlocked\";i:513;s:28:\"um-icon-ios-unlocked-outline\";i:514;s:18:\"um-icon-ios-upload\";i:515;s:26:\"um-icon-ios-upload-outline\";i:516;s:20:\"um-icon-ios-videocam\";i:517;s:28:\"um-icon-ios-videocam-outline\";i:518;s:23:\"um-icon-ios-volume-high\";i:519;s:22:\"um-icon-ios-volume-low\";i:520;s:21:\"um-icon-ios-wineglass\";i:521;s:29:\"um-icon-ios-wineglass-outline\";i:522;s:17:\"um-icon-ios-world\";i:523;s:25:\"um-icon-ios-world-outline\";i:524;s:12:\"um-icon-ipad\";i:525;s:14:\"um-icon-iphone\";i:526;s:12:\"um-icon-ipod\";i:527;s:11:\"um-icon-jet\";i:528;s:11:\"um-icon-key\";i:529;s:13:\"um-icon-knife\";i:530;s:14:\"um-icon-laptop\";i:531;s:12:\"um-icon-leaf\";i:532;s:14:\"um-icon-levels\";i:533;s:17:\"um-icon-lightbulb\";i:534;s:12:\"um-icon-link\";i:535;s:14:\"um-icon-load-a\";i:536;s:14:\"um-icon-load-b\";i:537;s:14:\"um-icon-load-c\";i:538;s:14:\"um-icon-load-d\";i:539;s:16:\"um-icon-location\";i:540;s:24:\"um-icon-lock-combination\";i:541;s:14:\"um-icon-locked\";i:542;s:14:\"um-icon-log-in\";i:543;s:15:\"um-icon-log-out\";i:544;s:12:\"um-icon-loop\";i:545;s:14:\"um-icon-magnet\";i:546;s:12:\"um-icon-male\";i:547;s:11:\"um-icon-man\";i:548;s:11:\"um-icon-map\";i:549;s:14:\"um-icon-medkit\";i:550;s:13:\"um-icon-merge\";i:551;s:13:\"um-icon-mic-a\";i:552;s:13:\"um-icon-mic-b\";i:553;s:13:\"um-icon-mic-c\";i:554;s:13:\"um-icon-minus\";i:555;s:21:\"um-icon-minus-circled\";i:556;s:19:\"um-icon-minus-round\";i:557;s:15:\"um-icon-model-s\";i:558;s:15:\"um-icon-monitor\";i:559;s:12:\"um-icon-more\";i:560;s:13:\"um-icon-mouse\";i:561;s:18:\"um-icon-music-note\";i:562;s:15:\"um-icon-navicon\";i:563;s:21:\"um-icon-navicon-round\";i:564;s:16:\"um-icon-navigate\";i:565;s:15:\"um-icon-network\";i:566;s:18:\"um-icon-no-smoking\";i:567;s:15:\"um-icon-nuclear\";i:568;s:14:\"um-icon-outlet\";i:569;s:18:\"um-icon-paintbrush\";i:570;s:19:\"um-icon-paintbucket\";i:571;s:22:\"um-icon-paper-airplane\";i:572;s:17:\"um-icon-paperclip\";i:573;s:13:\"um-icon-pause\";i:574;s:14:\"um-icon-person\";i:575;s:18:\"um-icon-person-add\";i:576;s:22:\"um-icon-person-stalker\";i:577;s:17:\"um-icon-pie-graph\";i:578;s:11:\"um-icon-pin\";i:579;s:16:\"um-icon-pinpoint\";i:580;s:13:\"um-icon-pizza\";i:581;s:13:\"um-icon-plane\";i:582;s:14:\"um-icon-planet\";i:583;s:12:\"um-icon-play\";i:584;s:19:\"um-icon-playstation\";i:585;s:12:\"um-icon-plus\";i:586;s:20:\"um-icon-plus-circled\";i:587;s:18:\"um-icon-plus-round\";i:588;s:14:\"um-icon-podium\";i:589;s:13:\"um-icon-pound\";i:590;s:13:\"um-icon-power\";i:591;s:16:\"um-icon-pricetag\";i:592;s:17:\"um-icon-pricetags\";i:593;s:15:\"um-icon-printer\";i:594;s:20:\"um-icon-pull-request\";i:595;s:18:\"um-icon-qr-scanner\";i:596;s:13:\"um-icon-quote\";i:597;s:19:\"um-icon-radio-waves\";i:598;s:14:\"um-icon-record\";i:599;s:15:\"um-icon-refresh\";i:600;s:13:\"um-icon-reply\";i:601;s:17:\"um-icon-reply-all\";i:602;s:16:\"um-icon-ribbon-a\";i:603;s:16:\"um-icon-ribbon-b\";i:604;s:11:\"um-icon-sad\";i:605;s:19:\"um-icon-sad-outline\";i:606;s:16:\"um-icon-scissors\";i:607;s:14:\"um-icon-search\";i:608;s:16:\"um-icon-settings\";i:609;s:13:\"um-icon-share\";i:610;s:15:\"um-icon-shuffle\";i:611;s:21:\"um-icon-skip-backward\";i:612;s:20:\"um-icon-skip-forward\";i:613;s:22:\"um-icon-social-android\";i:614;s:30:\"um-icon-social-android-outline\";i:615;s:22:\"um-icon-social-angular\";i:616;s:30:\"um-icon-social-angular-outline\";i:617;s:20:\"um-icon-social-apple\";i:618;s:28:\"um-icon-social-apple-outline\";i:619;s:22:\"um-icon-social-bitcoin\";i:620;s:30:\"um-icon-social-bitcoin-outline\";i:621;s:21:\"um-icon-social-buffer\";i:622;s:29:\"um-icon-social-buffer-outline\";i:623;s:21:\"um-icon-social-chrome\";i:624;s:29:\"um-icon-social-chrome-outline\";i:625;s:22:\"um-icon-social-codepen\";i:626;s:30:\"um-icon-social-codepen-outline\";i:627;s:19:\"um-icon-social-css3\";i:628;s:27:\"um-icon-social-css3-outline\";i:629;s:27:\"um-icon-social-designernews\";i:630;s:35:\"um-icon-social-designernews-outline\";i:631;s:23:\"um-icon-social-dribbble\";i:632;s:31:\"um-icon-social-dribbble-outline\";i:633;s:22:\"um-icon-social-dropbox\";i:634;s:30:\"um-icon-social-dropbox-outline\";i:635;s:19:\"um-icon-social-euro\";i:636;s:27:\"um-icon-social-euro-outline\";i:637;s:23:\"um-icon-social-facebook\";i:638;s:31:\"um-icon-social-facebook-outline\";i:639;s:25:\"um-icon-social-foursquare\";i:640;s:33:\"um-icon-social-foursquare-outline\";i:641;s:28:\"um-icon-social-freebsd-devil\";i:642;s:21:\"um-icon-social-github\";i:643;s:29:\"um-icon-social-github-outline\";i:644;s:21:\"um-icon-social-google\";i:645;s:29:\"um-icon-social-google-outline\";i:646;s:25:\"um-icon-social-googleplus\";i:647;s:33:\"um-icon-social-googleplus-outline\";i:648;s:25:\"um-icon-social-hackernews\";i:649;s:33:\"um-icon-social-hackernews-outline\";i:650;s:20:\"um-icon-social-html5\";i:651;s:28:\"um-icon-social-html5-outline\";i:652;s:24:\"um-icon-social-instagram\";i:653;s:32:\"um-icon-social-instagram-outline\";i:654;s:25:\"um-icon-social-javascript\";i:655;s:33:\"um-icon-social-javascript-outline\";i:656;s:23:\"um-icon-social-linkedin\";i:657;s:31:\"um-icon-social-linkedin-outline\";i:658;s:23:\"um-icon-social-markdown\";i:659;s:21:\"um-icon-social-nodejs\";i:660;s:22:\"um-icon-social-octocat\";i:661;s:24:\"um-icon-social-pinterest\";i:662;s:32:\"um-icon-social-pinterest-outline\";i:663;s:21:\"um-icon-social-python\";i:664;s:21:\"um-icon-social-reddit\";i:665;s:29:\"um-icon-social-reddit-outline\";i:666;s:18:\"um-icon-social-rss\";i:667;s:26:\"um-icon-social-rss-outline\";i:668;s:19:\"um-icon-social-sass\";i:669;s:20:\"um-icon-social-skype\";i:670;s:28:\"um-icon-social-skype-outline\";i:671;s:23:\"um-icon-social-snapchat\";i:672;s:31:\"um-icon-social-snapchat-outline\";i:673;s:21:\"um-icon-social-tumblr\";i:674;s:29:\"um-icon-social-tumblr-outline\";i:675;s:18:\"um-icon-social-tux\";i:676;s:21:\"um-icon-social-twitch\";i:677;s:29:\"um-icon-social-twitch-outline\";i:678;s:22:\"um-icon-social-twitter\";i:679;s:30:\"um-icon-social-twitter-outline\";i:680;s:18:\"um-icon-social-usd\";i:681;s:26:\"um-icon-social-usd-outline\";i:682;s:20:\"um-icon-social-vimeo\";i:683;s:28:\"um-icon-social-vimeo-outline\";i:684;s:23:\"um-icon-social-whatsapp\";i:685;s:31:\"um-icon-social-whatsapp-outline\";i:686;s:22:\"um-icon-social-windows\";i:687;s:30:\"um-icon-social-windows-outline\";i:688;s:24:\"um-icon-social-wordpress\";i:689;s:32:\"um-icon-social-wordpress-outline\";i:690;s:20:\"um-icon-social-yahoo\";i:691;s:28:\"um-icon-social-yahoo-outline\";i:692;s:18:\"um-icon-social-yen\";i:693;s:26:\"um-icon-social-yen-outline\";i:694;s:22:\"um-icon-social-youtube\";i:695;s:30:\"um-icon-social-youtube-outline\";i:696;s:16:\"um-icon-soup-can\";i:697;s:24:\"um-icon-soup-can-outline\";i:698;s:20:\"um-icon-speakerphone\";i:699;s:19:\"um-icon-speedometer\";i:700;s:13:\"um-icon-spoon\";i:701;s:12:\"um-icon-star\";i:702;s:18:\"um-icon-stats-bars\";i:703;s:13:\"um-icon-steam\";i:704;s:12:\"um-icon-stop\";i:705;s:19:\"um-icon-thermometer\";i:706;s:18:\"um-icon-thumbsdown\";i:707;s:16:\"um-icon-thumbsup\";i:708;s:14:\"um-icon-toggle\";i:709;s:21:\"um-icon-toggle-filled\";i:710;s:19:\"um-icon-transgender\";i:711;s:15:\"um-icon-trash-a\";i:712;s:15:\"um-icon-trash-b\";i:713;s:14:\"um-icon-trophy\";i:714;s:14:\"um-icon-tshirt\";i:715;s:22:\"um-icon-tshirt-outline\";i:716;s:16:\"um-icon-umbrella\";i:717;s:18:\"um-icon-university\";i:718;s:16:\"um-icon-unlocked\";i:719;s:14:\"um-icon-upload\";i:720;s:11:\"um-icon-usb\";i:721;s:19:\"um-icon-videocamera\";i:722;s:19:\"um-icon-volume-high\";i:723;s:18:\"um-icon-volume-low\";i:724;s:21:\"um-icon-volume-medium\";i:725;s:19:\"um-icon-volume-mute\";i:726;s:12:\"um-icon-wand\";i:727;s:17:\"um-icon-waterdrop\";i:728;s:12:\"um-icon-wifi\";i:729;s:17:\"um-icon-wineglass\";i:730;s:13:\"um-icon-woman\";i:731;s:14:\"um-icon-wrench\";i:732;s:12:\"um-icon-xbox\";i:733;s:21:\"um-faicon-sticky-note\";i:734;s:15:\"um-faicon-glass\";i:735;s:15:\"um-faicon-music\";i:736;s:16:\"um-faicon-search\";i:737;s:20:\"um-faicon-envelope-o\";i:738;s:15:\"um-faicon-heart\";i:739;s:14:\"um-faicon-star\";i:740;s:16:\"um-faicon-star-o\";i:741;s:14:\"um-faicon-user\";i:742;s:14:\"um-faicon-film\";i:743;s:18:\"um-faicon-th-large\";i:744;s:12:\"um-faicon-th\";i:745;s:17:\"um-faicon-th-list\";i:746;s:15:\"um-faicon-check\";i:747;s:15:\"um-faicon-times\";i:748;s:21:\"um-faicon-search-plus\";i:749;s:22:\"um-faicon-search-minus\";i:750;s:19:\"um-faicon-power-off\";i:751;s:16:\"um-faicon-signal\";i:752;s:13:\"um-faicon-cog\";i:753;s:17:\"um-faicon-trash-o\";i:754;s:14:\"um-faicon-home\";i:755;s:16:\"um-faicon-file-o\";i:756;s:17:\"um-faicon-clock-o\";i:757;s:14:\"um-faicon-road\";i:758;s:18:\"um-faicon-download\";i:759;s:29:\"um-faicon-arrow-circle-o-down\";i:760;s:27:\"um-faicon-arrow-circle-o-up\";i:761;s:15:\"um-faicon-inbox\";i:762;s:23:\"um-faicon-play-circle-o\";i:763;s:16:\"um-faicon-repeat\";i:764;s:17:\"um-faicon-refresh\";i:765;s:18:\"um-faicon-list-alt\";i:766;s:14:\"um-faicon-lock\";i:767;s:14:\"um-faicon-flag\";i:768;s:20:\"um-faicon-headphones\";i:769;s:20:\"um-faicon-volume-off\";i:770;s:21:\"um-faicon-volume-down\";i:771;s:19:\"um-faicon-volume-up\";i:772;s:16:\"um-faicon-qrcode\";i:773;s:17:\"um-faicon-barcode\";i:774;s:13:\"um-faicon-tag\";i:775;s:14:\"um-faicon-tags\";i:776;s:14:\"um-faicon-book\";i:777;s:18:\"um-faicon-bookmark\";i:778;s:15:\"um-faicon-print\";i:779;s:16:\"um-faicon-camera\";i:780;s:14:\"um-faicon-font\";i:781;s:14:\"um-faicon-bold\";i:782;s:16:\"um-faicon-italic\";i:783;s:21:\"um-faicon-text-height\";i:784;s:20:\"um-faicon-text-width\";i:785;s:20:\"um-faicon-align-left\";i:786;s:22:\"um-faicon-align-center\";i:787;s:21:\"um-faicon-align-right\";i:788;s:23:\"um-faicon-align-justify\";i:789;s:14:\"um-faicon-list\";i:790;s:17:\"um-faicon-outdent\";i:791;s:16:\"um-faicon-indent\";i:792;s:22:\"um-faicon-video-camera\";i:793;s:19:\"um-faicon-picture-o\";i:794;s:16:\"um-faicon-pencil\";i:795;s:20:\"um-faicon-map-marker\";i:796;s:16:\"um-faicon-adjust\";i:797;s:14:\"um-faicon-tint\";i:798;s:25:\"um-faicon-pencil-square-o\";i:799;s:24:\"um-faicon-share-square-o\";i:800;s:24:\"um-faicon-check-square-o\";i:801;s:16:\"um-faicon-arrows\";i:802;s:23:\"um-faicon-step-backward\";i:803;s:23:\"um-faicon-fast-backward\";i:804;s:18:\"um-faicon-backward\";i:805;s:14:\"um-faicon-play\";i:806;s:15:\"um-faicon-pause\";i:807;s:14:\"um-faicon-stop\";i:808;s:17:\"um-faicon-forward\";i:809;s:22:\"um-faicon-fast-forward\";i:810;s:22:\"um-faicon-step-forward\";i:811;s:15:\"um-faicon-eject\";i:812;s:22:\"um-faicon-chevron-left\";i:813;s:23:\"um-faicon-chevron-right\";i:814;s:21:\"um-faicon-plus-circle\";i:815;s:22:\"um-faicon-minus-circle\";i:816;s:22:\"um-faicon-times-circle\";i:817;s:22:\"um-faicon-check-circle\";i:818;s:25:\"um-faicon-question-circle\";i:819;s:21:\"um-faicon-info-circle\";i:820;s:20:\"um-faicon-crosshairs\";i:821;s:24:\"um-faicon-times-circle-o\";i:822;s:24:\"um-faicon-check-circle-o\";i:823;s:13:\"um-faicon-ban\";i:824;s:20:\"um-faicon-arrow-left\";i:825;s:21:\"um-faicon-arrow-right\";i:826;s:18:\"um-faicon-arrow-up\";i:827;s:20:\"um-faicon-arrow-down\";i:828;s:15:\"um-faicon-share\";i:829;s:16:\"um-faicon-expand\";i:830;s:18:\"um-faicon-compress\";i:831;s:14:\"um-faicon-plus\";i:832;s:15:\"um-faicon-minus\";i:833;s:18:\"um-faicon-asterisk\";i:834;s:28:\"um-faicon-exclamation-circle\";i:835;s:14:\"um-faicon-gift\";i:836;s:14:\"um-faicon-leaf\";i:837;s:14:\"um-faicon-fire\";i:838;s:13:\"um-faicon-eye\";i:839;s:19:\"um-faicon-eye-slash\";i:840;s:30:\"um-faicon-exclamation-triangle\";i:841;s:15:\"um-faicon-plane\";i:842;s:18:\"um-faicon-calendar\";i:843;s:16:\"um-faicon-random\";i:844;s:17:\"um-faicon-comment\";i:845;s:16:\"um-faicon-magnet\";i:846;s:20:\"um-faicon-chevron-up\";i:847;s:22:\"um-faicon-chevron-down\";i:848;s:17:\"um-faicon-retweet\";i:849;s:23:\"um-faicon-shopping-cart\";i:850;s:16:\"um-faicon-folder\";i:851;s:21:\"um-faicon-folder-open\";i:852;s:18:\"um-faicon-arrows-v\";i:853;s:18:\"um-faicon-arrows-h\";i:854;s:19:\"um-faicon-bar-chart\";i:855;s:24:\"um-faicon-twitter-square\";i:856;s:25:\"um-faicon-facebook-square\";i:857;s:22:\"um-faicon-camera-retro\";i:858;s:13:\"um-faicon-key\";i:859;s:14:\"um-faicon-cogs\";i:860;s:18:\"um-faicon-comments\";i:861;s:21:\"um-faicon-thumbs-o-up\";i:862;s:23:\"um-faicon-thumbs-o-down\";i:863;s:19:\"um-faicon-star-half\";i:864;s:17:\"um-faicon-heart-o\";i:865;s:18:\"um-faicon-sign-out\";i:866;s:25:\"um-faicon-linkedin-square\";i:867;s:20:\"um-faicon-thumb-tack\";i:868;s:23:\"um-faicon-external-link\";i:869;s:17:\"um-faicon-sign-in\";i:870;s:16:\"um-faicon-trophy\";i:871;s:23:\"um-faicon-github-square\";i:872;s:16:\"um-faicon-upload\";i:873;s:17:\"um-faicon-lemon-o\";i:874;s:15:\"um-faicon-phone\";i:875;s:18:\"um-faicon-square-o\";i:876;s:20:\"um-faicon-bookmark-o\";i:877;s:22:\"um-faicon-phone-square\";i:878;s:17:\"um-faicon-twitter\";i:879;s:18:\"um-faicon-facebook\";i:880;s:16:\"um-faicon-github\";i:881;s:16:\"um-faicon-unlock\";i:882;s:21:\"um-faicon-credit-card\";i:883;s:13:\"um-faicon-rss\";i:884;s:15:\"um-faicon-hdd-o\";i:885;s:18:\"um-faicon-bullhorn\";i:886;s:14:\"um-faicon-bell\";i:887;s:21:\"um-faicon-certificate\";i:888;s:22:\"um-faicon-hand-o-right\";i:889;s:21:\"um-faicon-hand-o-left\";i:890;s:19:\"um-faicon-hand-o-up\";i:891;s:21:\"um-faicon-hand-o-down\";i:892;s:27:\"um-faicon-arrow-circle-left\";i:893;s:28:\"um-faicon-arrow-circle-right\";i:894;s:25:\"um-faicon-arrow-circle-up\";i:895;s:27:\"um-faicon-arrow-circle-down\";i:896;s:15:\"um-faicon-globe\";i:897;s:16:\"um-faicon-wrench\";i:898;s:15:\"um-faicon-tasks\";i:899;s:16:\"um-faicon-filter\";i:900;s:19:\"um-faicon-briefcase\";i:901;s:20:\"um-faicon-arrows-alt\";i:902;s:15:\"um-faicon-users\";i:903;s:14:\"um-faicon-link\";i:904;s:15:\"um-faicon-cloud\";i:905;s:15:\"um-faicon-flask\";i:906;s:18:\"um-faicon-scissors\";i:907;s:17:\"um-faicon-files-o\";i:908;s:19:\"um-faicon-paperclip\";i:909;s:18:\"um-faicon-floppy-o\";i:910;s:16:\"um-faicon-square\";i:911;s:14:\"um-faicon-bars\";i:912;s:17:\"um-faicon-list-ul\";i:913;s:17:\"um-faicon-list-ol\";i:914;s:23:\"um-faicon-strikethrough\";i:915;s:19:\"um-faicon-underline\";i:916;s:15:\"um-faicon-table\";i:917;s:15:\"um-faicon-magic\";i:918;s:15:\"um-faicon-truck\";i:919;s:19:\"um-faicon-pinterest\";i:920;s:26:\"um-faicon-pinterest-square\";i:921;s:28:\"um-faicon-google-plus-square\";i:922;s:21:\"um-faicon-google-plus\";i:923;s:15:\"um-faicon-money\";i:924;s:20:\"um-faicon-caret-down\";i:925;s:18:\"um-faicon-caret-up\";i:926;s:20:\"um-faicon-caret-left\";i:927;s:21:\"um-faicon-caret-right\";i:928;s:17:\"um-faicon-columns\";i:929;s:14:\"um-faicon-sort\";i:930;s:19:\"um-faicon-sort-desc\";i:931;s:18:\"um-faicon-sort-asc\";i:932;s:18:\"um-faicon-envelope\";i:933;s:18:\"um-faicon-linkedin\";i:934;s:14:\"um-faicon-undo\";i:935;s:15:\"um-faicon-gavel\";i:936;s:20:\"um-faicon-tachometer\";i:937;s:19:\"um-faicon-comment-o\";i:938;s:20:\"um-faicon-comments-o\";i:939;s:14:\"um-faicon-bolt\";i:940;s:17:\"um-faicon-sitemap\";i:941;s:18:\"um-faicon-umbrella\";i:942;s:19:\"um-faicon-clipboard\";i:943;s:21:\"um-faicon-lightbulb-o\";i:944;s:18:\"um-faicon-exchange\";i:945;s:24:\"um-faicon-cloud-download\";i:946;s:22:\"um-faicon-cloud-upload\";i:947;s:17:\"um-faicon-user-md\";i:948;s:21:\"um-faicon-stethoscope\";i:949;s:18:\"um-faicon-suitcase\";i:950;s:16:\"um-faicon-bell-o\";i:951;s:16:\"um-faicon-coffee\";i:952;s:17:\"um-faicon-cutlery\";i:953;s:21:\"um-faicon-file-text-o\";i:954;s:20:\"um-faicon-building-o\";i:955;s:20:\"um-faicon-hospital-o\";i:956;s:19:\"um-faicon-ambulance\";i:957;s:16:\"um-faicon-medkit\";i:958;s:21:\"um-faicon-fighter-jet\";i:959;s:14:\"um-faicon-beer\";i:960;s:18:\"um-faicon-h-square\";i:961;s:21:\"um-faicon-plus-square\";i:962;s:27:\"um-faicon-angle-double-left\";i:963;s:28:\"um-faicon-angle-double-right\";i:964;s:25:\"um-faicon-angle-double-up\";i:965;s:27:\"um-faicon-angle-double-down\";i:966;s:20:\"um-faicon-angle-left\";i:967;s:21:\"um-faicon-angle-right\";i:968;s:18:\"um-faicon-angle-up\";i:969;s:20:\"um-faicon-angle-down\";i:970;s:17:\"um-faicon-desktop\";i:971;s:16:\"um-faicon-laptop\";i:972;s:16:\"um-faicon-tablet\";i:973;s:16:\"um-faicon-mobile\";i:974;s:18:\"um-faicon-circle-o\";i:975;s:20:\"um-faicon-quote-left\";i:976;s:21:\"um-faicon-quote-right\";i:977;s:17:\"um-faicon-spinner\";i:978;s:14:\"um-faicon-spin\";i:979;s:16:\"um-faicon-circle\";i:980;s:15:\"um-faicon-reply\";i:981;s:20:\"um-faicon-github-alt\";i:982;s:18:\"um-faicon-folder-o\";i:983;s:23:\"um-faicon-folder-open-o\";i:984;s:17:\"um-faicon-smile-o\";i:985;s:17:\"um-faicon-frown-o\";i:986;s:15:\"um-faicon-meh-o\";i:987;s:17:\"um-faicon-gamepad\";i:988;s:20:\"um-faicon-keyboard-o\";i:989;s:16:\"um-faicon-flag-o\";i:990;s:24:\"um-faicon-flag-checkered\";i:991;s:18:\"um-faicon-terminal\";i:992;s:14:\"um-faicon-code\";i:993;s:19:\"um-faicon-reply-all\";i:994;s:21:\"um-faicon-star-half-o\";i:995;s:24:\"um-faicon-location-arrow\";i:996;s:14:\"um-faicon-crop\";i:997;s:19:\"um-faicon-code-fork\";i:998;s:22:\"um-faicon-chain-broken\";i:999;s:18:\"um-faicon-question\";i:1000;s:14:\"um-faicon-info\";i:1001;s:21:\"um-faicon-exclamation\";i:1002;s:21:\"um-faicon-superscript\";i:1003;s:19:\"um-faicon-subscript\";i:1004;s:16:\"um-faicon-eraser\";i:1005;s:22:\"um-faicon-puzzle-piece\";i:1006;s:20:\"um-faicon-microphone\";i:1007;s:26:\"um-faicon-microphone-slash\";i:1008;s:16:\"um-faicon-shield\";i:1009;s:20:\"um-faicon-calendar-o\";i:1010;s:27:\"um-faicon-fire-extinguisher\";i:1011;s:16:\"um-faicon-rocket\";i:1012;s:16:\"um-faicon-maxcdn\";i:1013;s:29:\"um-faicon-chevron-circle-left\";i:1014;s:30:\"um-faicon-chevron-circle-right\";i:1015;s:27:\"um-faicon-chevron-circle-up\";i:1016;s:29:\"um-faicon-chevron-circle-down\";i:1017;s:15:\"um-faicon-html5\";i:1018;s:14:\"um-faicon-css3\";i:1019;s:16:\"um-faicon-anchor\";i:1020;s:20:\"um-faicon-unlock-alt\";i:1021;s:18:\"um-faicon-bullseye\";i:1022;s:20:\"um-faicon-ellipsis-h\";i:1023;s:20:\"um-faicon-ellipsis-v\";i:1024;s:20:\"um-faicon-rss-square\";i:1025;s:21:\"um-faicon-play-circle\";i:1026;s:16:\"um-faicon-ticket\";i:1027;s:22:\"um-faicon-minus-square\";i:1028;s:24:\"um-faicon-minus-square-o\";i:1029;s:18:\"um-faicon-level-up\";i:1030;s:20:\"um-faicon-level-down\";i:1031;s:22:\"um-faicon-check-square\";i:1032;s:23:\"um-faicon-pencil-square\";i:1033;s:30:\"um-faicon-external-link-square\";i:1034;s:22:\"um-faicon-share-square\";i:1035;s:17:\"um-faicon-compass\";i:1036;s:29:\"um-faicon-caret-square-o-down\";i:1037;s:27:\"um-faicon-caret-square-o-up\";i:1038;s:30:\"um-faicon-caret-square-o-right\";i:1039;s:13:\"um-faicon-eur\";i:1040;s:13:\"um-faicon-gbp\";i:1041;s:13:\"um-faicon-usd\";i:1042;s:13:\"um-faicon-inr\";i:1043;s:13:\"um-faicon-jpy\";i:1044;s:13:\"um-faicon-rub\";i:1045;s:13:\"um-faicon-krw\";i:1046;s:13:\"um-faicon-btc\";i:1047;s:14:\"um-faicon-file\";i:1048;s:19:\"um-faicon-file-text\";i:1049;s:24:\"um-faicon-sort-alpha-asc\";i:1050;s:25:\"um-faicon-sort-alpha-desc\";i:1051;s:25:\"um-faicon-sort-amount-asc\";i:1052;s:26:\"um-faicon-sort-amount-desc\";i:1053;s:26:\"um-faicon-sort-numeric-asc\";i:1054;s:27:\"um-faicon-sort-numeric-desc\";i:1055;s:19:\"um-faicon-thumbs-up\";i:1056;s:21:\"um-faicon-thumbs-down\";i:1057;s:24:\"um-faicon-youtube-square\";i:1058;s:17:\"um-faicon-youtube\";i:1059;s:14:\"um-faicon-xing\";i:1060;s:21:\"um-faicon-xing-square\";i:1061;s:22:\"um-faicon-youtube-play\";i:1062;s:17:\"um-faicon-dropbox\";i:1063;s:24:\"um-faicon-stack-overflow\";i:1064;s:19:\"um-faicon-instagram\";i:1065;s:16:\"um-faicon-flickr\";i:1066;s:13:\"um-faicon-adn\";i:1067;s:19:\"um-faicon-bitbucket\";i:1068;s:26:\"um-faicon-bitbucket-square\";i:1069;s:16:\"um-faicon-tumblr\";i:1070;s:23:\"um-faicon-tumblr-square\";i:1071;s:25:\"um-faicon-long-arrow-down\";i:1072;s:23:\"um-faicon-long-arrow-up\";i:1073;s:25:\"um-faicon-long-arrow-left\";i:1074;s:26:\"um-faicon-long-arrow-right\";i:1075;s:15:\"um-faicon-apple\";i:1076;s:17:\"um-faicon-windows\";i:1077;s:17:\"um-faicon-android\";i:1078;s:15:\"um-faicon-linux\";i:1079;s:18:\"um-faicon-dribbble\";i:1080;s:15:\"um-faicon-skype\";i:1081;s:20:\"um-faicon-foursquare\";i:1082;s:16:\"um-faicon-trello\";i:1083;s:16:\"um-faicon-female\";i:1084;s:14:\"um-faicon-male\";i:1085;s:16:\"um-faicon-gittip\";i:1086;s:15:\"um-faicon-sun-o\";i:1087;s:16:\"um-faicon-moon-o\";i:1088;s:17:\"um-faicon-archive\";i:1089;s:13:\"um-faicon-bug\";i:1090;s:12:\"um-faicon-vk\";i:1091;s:15:\"um-faicon-weibo\";i:1092;s:16:\"um-faicon-renren\";i:1093;s:19:\"um-faicon-pagelines\";i:1094;s:24:\"um-faicon-stack-exchange\";i:1095;s:30:\"um-faicon-arrow-circle-o-right\";i:1096;s:29:\"um-faicon-arrow-circle-o-left\";i:1097;s:29:\"um-faicon-caret-square-o-left\";i:1098;s:22:\"um-faicon-dot-circle-o\";i:1099;s:20:\"um-faicon-wheelchair\";i:1100;s:22:\"um-faicon-vimeo-square\";i:1101;s:13:\"um-faicon-try\";i:1102;s:23:\"um-faicon-plus-square-o\";i:1103;s:23:\"um-faicon-space-shuttle\";i:1104;s:15:\"um-faicon-slack\";i:1105;s:25:\"um-faicon-envelope-square\";i:1106;s:19:\"um-faicon-wordpress\";i:1107;s:16:\"um-faicon-openid\";i:1108;s:20:\"um-faicon-university\";i:1109;s:24:\"um-faicon-graduation-cap\";i:1110;s:15:\"um-faicon-yahoo\";i:1111;s:16:\"um-faicon-google\";i:1112;s:16:\"um-faicon-reddit\";i:1113;s:23:\"um-faicon-reddit-square\";i:1114;s:28:\"um-faicon-stumbleupon-circle\";i:1115;s:21:\"um-faicon-stumbleupon\";i:1116;s:19:\"um-faicon-delicious\";i:1117;s:14:\"um-faicon-digg\";i:1118;s:20:\"um-faicon-pied-piper\";i:1119;s:24:\"um-faicon-pied-piper-alt\";i:1120;s:16:\"um-faicon-drupal\";i:1121;s:16:\"um-faicon-joomla\";i:1122;s:18:\"um-faicon-language\";i:1123;s:13:\"um-faicon-fax\";i:1124;s:18:\"um-faicon-building\";i:1125;s:15:\"um-faicon-child\";i:1126;s:13:\"um-faicon-paw\";i:1127;s:15:\"um-faicon-spoon\";i:1128;s:14:\"um-faicon-cube\";i:1129;s:15:\"um-faicon-cubes\";i:1130;s:17:\"um-faicon-behance\";i:1131;s:24:\"um-faicon-behance-square\";i:1132;s:15:\"um-faicon-steam\";i:1133;s:22:\"um-faicon-steam-square\";i:1134;s:17:\"um-faicon-recycle\";i:1135;s:13:\"um-faicon-car\";i:1136;s:14:\"um-faicon-taxi\";i:1137;s:14:\"um-faicon-tree\";i:1138;s:17:\"um-faicon-spotify\";i:1139;s:20:\"um-faicon-deviantart\";i:1140;s:20:\"um-faicon-soundcloud\";i:1141;s:18:\"um-faicon-database\";i:1142;s:20:\"um-faicon-file-pdf-o\";i:1143;s:21:\"um-faicon-file-word-o\";i:1144;s:22:\"um-faicon-file-excel-o\";i:1145;s:27:\"um-faicon-file-powerpoint-o\";i:1146;s:22:\"um-faicon-file-image-o\";i:1147;s:24:\"um-faicon-file-archive-o\";i:1148;s:22:\"um-faicon-file-audio-o\";i:1149;s:22:\"um-faicon-file-video-o\";i:1150;s:21:\"um-faicon-file-code-o\";i:1151;s:14:\"um-faicon-vine\";i:1152;s:17:\"um-faicon-codepen\";i:1153;s:18:\"um-faicon-jsfiddle\";i:1154;s:19:\"um-faicon-life-ring\";i:1155;s:24:\"um-faicon-circle-o-notch\";i:1156;s:15:\"um-faicon-rebel\";i:1157;s:16:\"um-faicon-empire\";i:1158;s:20:\"um-faicon-git-square\";i:1159;s:13:\"um-faicon-git\";i:1160;s:21:\"um-faicon-hacker-news\";i:1161;s:23:\"um-faicon-tencent-weibo\";i:1162;s:12:\"um-faicon-qq\";i:1163;s:16:\"um-faicon-weixin\";i:1164;s:21:\"um-faicon-paper-plane\";i:1165;s:23:\"um-faicon-paper-plane-o\";i:1166;s:17:\"um-faicon-history\";i:1167;s:21:\"um-faicon-circle-thin\";i:1168;s:16:\"um-faicon-header\";i:1169;s:19:\"um-faicon-paragraph\";i:1170;s:17:\"um-faicon-sliders\";i:1171;s:19:\"um-faicon-share-alt\";i:1172;s:26:\"um-faicon-share-alt-square\";i:1173;s:14:\"um-faicon-bomb\";i:1174;s:18:\"um-faicon-futbol-o\";i:1175;s:13:\"um-faicon-tty\";i:1176;s:20:\"um-faicon-binoculars\";i:1177;s:14:\"um-faicon-plug\";i:1178;s:20:\"um-faicon-slideshare\";i:1179;s:16:\"um-faicon-twitch\";i:1180;s:14:\"um-faicon-yelp\";i:1181;s:21:\"um-faicon-newspaper-o\";i:1182;s:14:\"um-faicon-wifi\";i:1183;s:20:\"um-faicon-calculator\";i:1184;s:16:\"um-faicon-paypal\";i:1185;s:23:\"um-faicon-google-wallet\";i:1186;s:17:\"um-faicon-cc-visa\";i:1187;s:23:\"um-faicon-cc-mastercard\";i:1188;s:21:\"um-faicon-cc-discover\";i:1189;s:17:\"um-faicon-cc-amex\";i:1190;s:19:\"um-faicon-cc-paypal\";i:1191;s:19:\"um-faicon-cc-stripe\";i:1192;s:20:\"um-faicon-bell-slash\";i:1193;s:22:\"um-faicon-bell-slash-o\";i:1194;s:15:\"um-faicon-trash\";i:1195;s:19:\"um-faicon-copyright\";i:1196;s:12:\"um-faicon-at\";i:1197;s:20:\"um-faicon-eyedropper\";i:1198;s:21:\"um-faicon-paint-brush\";i:1199;s:23:\"um-faicon-birthday-cake\";i:1200;s:20:\"um-faicon-area-chart\";i:1201;s:19:\"um-faicon-pie-chart\";i:1202;s:20:\"um-faicon-line-chart\";i:1203;s:16:\"um-faicon-lastfm\";i:1204;s:23:\"um-faicon-lastfm-square\";i:1205;s:20:\"um-faicon-toggle-off\";i:1206;s:19:\"um-faicon-toggle-on\";i:1207;s:17:\"um-faicon-bicycle\";i:1208;s:13:\"um-faicon-bus\";i:1209;s:17:\"um-faicon-ioxhost\";i:1210;s:19:\"um-faicon-angellist\";i:1211;s:12:\"um-faicon-cc\";i:1212;s:13:\"um-faicon-ils\";i:1213;s:18:\"um-faicon-meanpath\";i:1214;s:14:\"um-faicon-spin\";i:1215;s:14:\"um-faicon-spin\";i:1216;s:14:\"um-faicon-spin\";i:1217;s:14:\"um-faicon-spin\";i:1218;s:14:\"um-faicon-spin\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1112, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1600411828;s:7:\"checked\";a:21:{s:47:\"woo-order-export-lite/woo-order-export-lite.php\";s:5:\"2.1.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.3\";s:55:\"contact-form-7-datepicker/contact-form-7-datepicker.php\";s:5:\"2.6.0\";s:35:\"contact-widgets/contact-widgets.php\";s:5:\"1.6.2\";s:33:\"dynamic-to-top/dynamic-to-top.php\";s:5:\"3.5.2\";s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";s:5:\"5.3.8\";s:9:\"hello.php\";s:5:\"1.7.2\";s:35:\"insert-headers-and-footers/ihaf.php\";s:5:\"1.4.4\";s:23:\"ml-slider/ml-slider.php\";s:6:\"3.18.0\";s:61:\"ni-woocommerce-cost-of-goods/ni-woocommerce-cost-of-goods.php\";s:5:\"2.1.9\";s:33:\"ongkoskirim-id/ongkoskirim-id.php\";s:5:\"1.0.3\";s:39:\"woo-photo-reviews/woo-photo-reviews.php\";s:7:\"1.1.2.3\";s:20:\"printfriendly/pf.php\";s:6:\"3.14.6\";s:41:\"sassy-social-share/sassy-social-share.php\";s:6:\"3.2.24\";s:35:\"ultimate-member/ultimate-member.php\";s:5:\"2.1.9\";s:39:\"user-registration/user-registration.php\";s:5:\"1.6.1\";s:35:\"whatshelp-chat-button/whatshelp.php\";s:5:\"1.4.0\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.6.4\";s:70:\"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php\";s:5:\"1.6.7\";s:39:\"woo-product-table/woo-product-table.php\";s:3:\"1.6\";}s:8:\"response\";a:15:{s:47:\"woo-order-export-lite/woo-order-export-lite.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/woo-order-export-lite\";s:4:\"slug\";s:21:\"woo-order-export-lite\";s:6:\"plugin\";s:47:\"woo-order-export-lite/woo-order-export-lite.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/woo-order-export-lite/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/woo-order-export-lite.3.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/woo-order-export-lite/assets/icon-256x256.png?rev=1365554\";s:2:\"1x\";s:74:\"https://ps.w.org/woo-order-export-lite/assets/icon-128x128.png?rev=1365560\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:5:\"5.4.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"contact-widgets/contact-widgets.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:29:\"w.org/plugins/contact-widgets\";s:4:\"slug\";s:15:\"contact-widgets\";s:6:\"plugin\";s:35:\"contact-widgets/contact-widgets.php\";s:11:\"new_version\";s:5:\"1.7.0\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/contact-widgets/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/contact-widgets.1.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/contact-widgets/assets/icon-256x256.png?rev=1885181\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-widgets/assets/icon-128x128.png?rev=1885181\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-widgets/assets/banner-1544x500.png?rev=1885181\";s:2:\"1x\";s:70:\"https://ps.w.org/contact-widgets/assets/banner-772x250.png?rev=1885181\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:47:\"w.org/plugins/google-analytics-dashboard-for-wp\";s:4:\"slug\";s:33:\"google-analytics-dashboard-for-wp\";s:6:\"plugin\";s:43:\"google-analytics-dashboard-for-wp/gadwp.php\";s:11:\"new_version\";s:5:\"6.2.2\";s:3:\"url\";s:64:\"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/\";s:7:\"package\";s:82:\"https://downloads.wordpress.org/plugin/google-analytics-dashboard-for-wp.6.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:86:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/icon-256x256.png?rev=2243225\";s:2:\"1x\";s:78:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/icon.svg?rev=2243225\";s:3:\"svg\";s:78:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/icon.svg?rev=2243225\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:89:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/banner-1544x500.png?rev=2243446\";s:2:\"1x\";s:88:\"https://ps.w.org/google-analytics-dashboard-for-wp/assets/banner-772x250.png?rev=2243446\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"insert-headers-and-footers/ihaf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:40:\"w.org/plugins/insert-headers-and-footers\";s:4:\"slug\";s:26:\"insert-headers-and-footers\";s:6:\"plugin\";s:35:\"insert-headers-and-footers/ihaf.php\";s:11:\"new_version\";s:5:\"1.4.6\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/insert-headers-and-footers/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/insert-headers-and-footers.1.4.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/insert-headers-and-footers/assets/icon-256x256.png?rev=1610266\";s:2:\"1x\";s:79:\"https://ps.w.org/insert-headers-and-footers/assets/icon-128x128.png?rev=1610266\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/insert-headers-and-footers/assets/banner-772x250.png?rev=1610266\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";s:3:\"5.2\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:61:\"ni-woocommerce-cost-of-goods/ni-woocommerce-cost-of-goods.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:42:\"w.org/plugins/ni-woocommerce-cost-of-goods\";s:4:\"slug\";s:28:\"ni-woocommerce-cost-of-goods\";s:6:\"plugin\";s:61:\"ni-woocommerce-cost-of-goods/ni-woocommerce-cost-of-goods.php\";s:11:\"new_version\";s:5:\"2.3.2\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/ni-woocommerce-cost-of-goods/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/ni-woocommerce-cost-of-goods.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:79:\"https://s.w.org/plugins/geopattern-icon/ni-woocommerce-cost-of-goods_acb4b2.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/ni-woocommerce-cost-of-goods/assets/banner-772x250.png?rev=1784081\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"ongkoskirim-id/ongkoskirim-id.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/ongkoskirim-id\";s:4:\"slug\";s:14:\"ongkoskirim-id\";s:6:\"plugin\";s:33:\"ongkoskirim-id/ongkoskirim-id.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/ongkoskirim-id/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/ongkoskirim-id.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/ongkoskirim-id/assets/icon-256x256.png?rev=1815549\";s:2:\"1x\";s:67:\"https://ps.w.org/ongkoskirim-id/assets/icon-128x128.png?rev=1815549\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:6:\"4.9.15\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"woo-photo-reviews/woo-photo-reviews.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/woo-photo-reviews\";s:4:\"slug\";s:17:\"woo-photo-reviews\";s:6:\"plugin\";s:39:\"woo-photo-reviews/woo-photo-reviews.php\";s:11:\"new_version\";s:7:\"1.1.3.7\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woo-photo-reviews/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woo-photo-reviews.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woo-photo-reviews/assets/icon-256x256.jpg?rev=2091939\";s:2:\"1x\";s:70:\"https://ps.w.org/woo-photo-reviews/assets/icon-128x128.jpg?rev=2091939\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woo-photo-reviews/assets/banner-1544x500.jpg?rev=2091939\";s:2:\"1x\";s:72:\"https://ps.w.org/woo-photo-reviews/assets/banner-772x250.jpg?rev=2091939\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:20:\"printfriendly/pf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/printfriendly\";s:4:\"slug\";s:13:\"printfriendly\";s:6:\"plugin\";s:20:\"printfriendly/pf.php\";s:11:\"new_version\";s:6:\"3.15.0\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/printfriendly/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/printfriendly.3.15.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/printfriendly/assets/icon-256x256.png?rev=1190276\";s:2:\"1x\";s:66:\"https://ps.w.org/printfriendly/assets/icon-128x128.png?rev=1190276\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/printfriendly/assets/banner-772x250.png?rev=1601184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"sassy-social-share/sassy-social-share.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:32:\"w.org/plugins/sassy-social-share\";s:4:\"slug\";s:18:\"sassy-social-share\";s:6:\"plugin\";s:41:\"sassy-social-share/sassy-social-share.php\";s:11:\"new_version\";s:6:\"3.3.12\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/sassy-social-share/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/sassy-social-share.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/sassy-social-share/assets/icon-128x128.png?rev=1300723\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/sassy-social-share/assets/banner-772x250.png?rev=1866721\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"user-registration/user-registration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/user-registration\";s:4:\"slug\";s:17:\"user-registration\";s:6:\"plugin\";s:39:\"user-registration/user-registration.php\";s:11:\"new_version\";s:7:\"1.8.7.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/user-registration/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/user-registration.1.8.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/user-registration/assets/icon-256x256.png?rev=2141788\";s:2:\"1x\";s:70:\"https://ps.w.org/user-registration/assets/icon-128x128.png?rev=2141788\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/user-registration/assets/banner-772x250.png?rev=2141793\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"5.3\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:35:\"whatshelp-chat-button/whatshelp.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/whatshelp-chat-button\";s:4:\"slug\";s:21:\"whatshelp-chat-button\";s:6:\"plugin\";s:35:\"whatshelp-chat-button/whatshelp.php\";s:11:\"new_version\";s:5:\"1.8.4\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/whatshelp-chat-button/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/whatshelp-chat-button.1.8.4.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/whatshelp-chat-button/assets/icon-128x128.png?rev=1952024\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/whatshelp-chat-button/assets/banner-772x250.png?rev=2305016\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.5.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2366418\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2366418\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2366418\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2366418\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.5.1\";s:12:\"requires_php\";s:3:\"7.0\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:70:\"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:48:\"w.org/plugins/woocommerce-login-and-registration\";s:4:\"slug\";s:34:\"woocommerce-login-and-registration\";s:6:\"plugin\";s:70:\"woocommerce-login-and-registration/woocommerce_login_signup_plugin.php\";s:11:\"new_version\";s:5:\"2.0.5\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/woocommerce-login-and-registration/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/woocommerce-login-and-registration.2.0.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/woocommerce-login-and-registration/assets/icon-256x256.jpg?rev=1298125\";s:2:\"1x\";s:87:\"https://ps.w.org/woocommerce-login-and-registration/assets/icon-128x128.jpg?rev=1298125\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/woocommerce-login-and-registration/assets/banner-772x250.jpg?rev=1297957\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:39:\"woo-product-table/woo-product-table.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:31:\"w.org/plugins/woo-product-table\";s:4:\"slug\";s:17:\"woo-product-table\";s:6:\"plugin\";s:39:\"woo-product-table/woo-product-table.php\";s:11:\"new_version\";s:5:\"2.6.1\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/woo-product-table/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woo-product-table.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/woo-product-table/assets/icon-256x256.png?rev=2342982\";s:2:\"1x\";s:70:\"https://ps.w.org/woo-product-table/assets/icon-128x128.png?rev=2342982\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woo-product-table/assets/banner-1544x500.jpg?rev=2342982\";s:2:\"1x\";s:72:\"https://ps.w.org/woo-product-table/assets/banner-772x250.jpg?rev=2342982\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.3.4\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"dynamic-to-top/dynamic-to-top.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/dynamic-to-top\";s:4:\"slug\";s:14:\"dynamic-to-top\";s:6:\"plugin\";s:33:\"dynamic-to-top/dynamic-to-top.php\";s:11:\"new_version\";s:5:\"3.5.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/dynamic-to-top/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/dynamic-to-top.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:65:\"https://s.w.org/plugins/geopattern-icon/dynamic-to-top_282828.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/dynamic-to-top/assets/banner-772x250.png?rev=478947\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"ml-slider/ml-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/ml-slider\";s:4:\"slug\";s:9:\"ml-slider\";s:6:\"plugin\";s:23:\"ml-slider/ml-slider.php\";s:11:\"new_version\";s:6:\"3.18.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/ml-slider/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/ml-slider.3.18.0.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/ml-slider/assets/icon-256x256.png?rev=2370840\";s:2:\"1x\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";s:3:\"svg\";s:54:\"https://ps.w.org/ml-slider/assets/icon.svg?rev=1837669\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/ml-slider/assets/banner-1544x500.png?rev=1837669\";s:2:\"1x\";s:64:\"https://ps.w.org/ml-slider/assets/banner-772x250.png?rev=2370840\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"ultimate-member/ultimate-member.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/ultimate-member\";s:4:\"slug\";s:15:\"ultimate-member\";s:6:\"plugin\";s:35:\"ultimate-member/ultimate-member.php\";s:11:\"new_version\";s:5:\"2.1.9\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/ultimate-member/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/ultimate-member.2.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-256x256.png?rev=2143339\";s:2:\"1x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-128x128.png?rev=2143339\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/ultimate-member/assets/banner-1544x500.png?rev=2143172\";s:2:\"1x\";s:70:\"https://ps.w.org/ultimate-member/assets/banner-772x250.png?rev=2143172\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1113, 'widget_metaslider_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(1115, 'ms_hide_all_ads_until', '1601621444', 'yes'),
(1117, 'metaslider_systemcheck', 'a:2:{s:16:\"wordPressVersion\";b:0;s:12:\"imageLibrary\";b:0;}', 'no'),
(1119, 'ml-slider_children', 'a:0:{}', 'yes'),
(1122, 'metaslider_tour_cancelled_on', 'add-image', 'yes'),
(1146, '_transient_timeout_wc_related_61', '1600510778', 'no'),
(1147, '_transient_wc_related_61', 'a:1:{s:50:\"limit=5&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=61\";a:3:{i:0;s:2:\"65\";i:1;s:2:\"97\";i:2;s:2:\"99\";}}', 'no'),
(1148, '_transient_timeout_wc_product_loop_0f6532b1a7e9543cef1df523185cc41f', '1603016383', 'no'),
(1149, '_transient_wc_product_loop_0f6532b1a7e9543cef1df523185cc41f', 'a:2:{s:7:\"version\";s:10:\"1600412799\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:7:{i:0;i:99;i:1;i:97;i:2;i:94;i:3;i:91;i:4;i:26;i:5;i:65;i:6;i:61;}s:5:\"total\";i:7;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:15;s:12:\"current_page\";i:1;}}', 'no'),
(1155, '_transient_timeout_wc_product_loop_74ce2788f499bd3bcb84812a2db0dfda', '1603016589', 'no'),
(1156, '_transient_wc_product_loop_74ce2788f499bd3bcb84812a2db0dfda', 'a:2:{s:7:\"version\";s:10:\"1600412799\";s:5:\"value\";O:8:\"stdClass\":5:{s:3:\"ids\";a:3:{i:0;i:99;i:1;i:97;i:2;i:94;}s:5:\"total\";i:3;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:3;s:12:\"current_page\";i:1;}}', 'no'),
(1158, 'um_cached_users_queue', '0', 'no');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/09/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/09/2020-landscape-1.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"2020-landscape-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-600x385.png\";s:5:\"width\";i:600;s:6:\"height\";i:385;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentytwenty'),
(6, 5, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(7, 6, '_thumbnail_id', '5'),
(8, 6, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(9, 6, '_customize_changeset_uuid', '197b4dfe-ba8a-47ec-817b-2b5365a3d483'),
(10, 7, '_customize_draft_post_name', 'about'),
(11, 7, '_customize_changeset_uuid', '197b4dfe-ba8a-47ec-817b-2b5365a3d483'),
(12, 8, '_customize_draft_post_name', 'contact'),
(13, 8, '_customize_changeset_uuid', '197b4dfe-ba8a-47ec-817b-2b5365a3d483'),
(14, 9, '_customize_draft_post_name', 'blog'),
(15, 9, '_customize_changeset_uuid', '197b4dfe-ba8a-47ec-817b-2b5365a3d483'),
(16, 11, '_wp_attached_file', '2020/09/2020-landscape-1-1.png'),
(17, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:30:\"2020/09/2020-landscape-1-1.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"2020-landscape-1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-1-600x385.png\";s:5:\"width\";i:600;s:6:\"height\";i:385;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"2020-landscape-1-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"2020-landscape-1-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(18, 11, '_starter_content_theme', 'twentytwenty'),
(19, 11, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(20, 12, '_thumbnail_id', '11'),
(21, 12, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(22, 12, '_customize_changeset_uuid', 'ac10d174-e14e-4dd1-96fe-0668c6c56acb'),
(23, 13, '_customize_draft_post_name', 'about'),
(24, 13, '_customize_changeset_uuid', 'ac10d174-e14e-4dd1-96fe-0668c6c56acb'),
(25, 14, '_customize_draft_post_name', 'contact'),
(26, 14, '_customize_changeset_uuid', 'ac10d174-e14e-4dd1-96fe-0668c6c56acb'),
(27, 15, '_customize_draft_post_name', 'blog'),
(28, 15, '_customize_changeset_uuid', 'ac10d174-e14e-4dd1-96fe-0668c6c56acb'),
(29, 10, '_customize_restore_dismissed', '1'),
(32, 18, '_wp_attached_file', 'woocommerce-placeholder.png'),
(33, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 24, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600268290;}'),
(37, 25, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600354751;}'),
(38, 26, '_edit_last', '1'),
(39, 26, '_edit_lock', '1600338475:1'),
(40, 26, 'total_sales', '0'),
(41, 26, '_tax_status', 'taxable'),
(42, 26, '_tax_class', ''),
(43, 26, '_manage_stock', 'yes'),
(44, 26, '_backorders', 'yes'),
(45, 26, '_sold_individually', 'yes'),
(46, 26, '_virtual', 'no'),
(47, 26, '_downloadable', 'no'),
(48, 26, '_download_limit', '-1'),
(49, 26, '_download_expiry', '-1'),
(50, 26, '_stock', '10'),
(51, 26, '_stock_status', 'instock'),
(52, 26, '_wc_average_rating', '0'),
(53, 26, '_wc_review_count', '0'),
(54, 26, '_product_version', '3.6.4'),
(55, 27, '_wp_attached_file', '2020/09/20200220032334IMG_20190412_150001_compress72-scaled.jpg'),
(56, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:2560;s:4:\"file\";s:63:\"2020/09/20200220032334IMG_20190412_150001_compress72-scaled.jpg\";s:5:\"sizes\";a:23:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"20200220032334IMG_20190412_150001_compress72-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:58:\"20200220032334IMG_20190412_150001_compress72-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"20200220032334IMG_20190412_150001_compress72-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:56:\"20200220032334IMG_20190412_150001_compress72-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:58:\"20200220032334IMG_20190412_150001_compress72-1536x1536.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:58:\"20200220032334IMG_20190412_150001_compress72-2048x2048.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:58:\"20200220032334IMG_20190412_150001_compress72-1200x1200.jpg\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"twentytwenty-fullscreen\";a:4:{s:4:\"file\";s:58:\"20200220032334IMG_20190412_150001_compress72-1980x1980.jpg\";s:5:\"width\";i:1980;s:6:\"height\";i:1980;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:11:\"shop_single\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x335\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-700x335.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x297\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-620x297.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x191\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-400x191.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x350\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-700x350.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x310\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-620x310.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x200\";a:4:{s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(57, 26, '_product_attributes', 'a:1:{s:6:\"ukuran\";a:6:{s:4:\"name\";s:6:\"Ukuran\";s:5:\"value\";s:17:\"39 | 40 | 41 | 42\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(58, 26, '_thumbnail_id', '27'),
(59, 26, '_regular_price', '120000'),
(60, 26, '_sale_price', '98000'),
(61, 26, '_weight', '1'),
(62, 26, '_length', '35'),
(63, 26, '_width', '15'),
(64, 26, '_height', '10'),
(65, 26, '_price', '98000'),
(66, 29, '_edit_lock', '1600428049:1'),
(67, 3, '_edit_lock', '1600326307:1'),
(68, 2, '_wp_trash_meta_status', 'publish'),
(69, 2, '_wp_trash_meta_time', '1600326438'),
(70, 2, '_wp_desired_post_slug', 'sample-page'),
(71, 29, '_wp_page_template', 'templates/template-full-width.php'),
(72, 1, '_edit_lock', '1600327471:1'),
(73, 19, '_edit_lock', '1600327632:1'),
(76, 48, '_menu_item_type', 'post_type'),
(77, 48, '_menu_item_menu_item_parent', '59'),
(78, 48, '_menu_item_object_id', '22'),
(79, 48, '_menu_item_object', 'page'),
(80, 48, '_menu_item_target', ''),
(81, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(82, 48, '_menu_item_xfn', ''),
(83, 48, '_menu_item_url', ''),
(85, 49, '_menu_item_type', 'post_type'),
(86, 49, '_menu_item_menu_item_parent', '58'),
(87, 49, '_menu_item_object_id', '21'),
(88, 49, '_menu_item_object', 'page'),
(89, 49, '_menu_item_target', ''),
(90, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 49, '_menu_item_xfn', ''),
(92, 49, '_menu_item_url', ''),
(94, 50, '_menu_item_type', 'post_type'),
(95, 50, '_menu_item_menu_item_parent', '58'),
(96, 50, '_menu_item_object_id', '20'),
(97, 50, '_menu_item_object', 'page'),
(98, 50, '_menu_item_target', ''),
(99, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(100, 50, '_menu_item_xfn', ''),
(101, 50, '_menu_item_url', ''),
(103, 51, '_menu_item_type', 'post_type'),
(104, 51, '_menu_item_menu_item_parent', '0'),
(105, 51, '_menu_item_object_id', '19'),
(106, 51, '_menu_item_object', 'page'),
(107, 51, '_menu_item_target', ''),
(108, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(109, 51, '_menu_item_xfn', ''),
(110, 51, '_menu_item_url', ''),
(112, 52, '_menu_item_type', 'custom'),
(113, 52, '_menu_item_menu_item_parent', '58'),
(114, 52, '_menu_item_object_id', '52'),
(115, 52, '_menu_item_object', 'custom'),
(116, 52, '_menu_item_target', ''),
(117, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(118, 52, '_menu_item_xfn', ''),
(119, 52, '_menu_item_url', 'http://localhost/wordpress/index.php/my-account/orders/'),
(121, 53, '_menu_item_type', 'custom'),
(122, 53, '_menu_item_menu_item_parent', '59'),
(123, 53, '_menu_item_object_id', '53'),
(124, 53, '_menu_item_object', 'custom'),
(125, 53, '_menu_item_target', ''),
(126, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(127, 53, '_menu_item_xfn', ''),
(128, 53, '_menu_item_url', 'http://localhost/wordpress/index.php/my-account/edit-address/'),
(130, 54, '_menu_item_type', 'custom'),
(131, 54, '_menu_item_menu_item_parent', '59'),
(132, 54, '_menu_item_object_id', '54'),
(133, 54, '_menu_item_object', 'custom'),
(134, 54, '_menu_item_target', ''),
(135, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(136, 54, '_menu_item_xfn', ''),
(137, 54, '_menu_item_url', 'http://localhost/wordpress/index.php/my-account/edit-account/'),
(139, 55, '_menu_item_type', 'custom'),
(140, 55, '_menu_item_menu_item_parent', '59'),
(141, 55, '_menu_item_object_id', '55'),
(142, 55, '_menu_item_object', 'custom'),
(143, 55, '_menu_item_target', ''),
(144, 55, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(145, 55, '_menu_item_xfn', ''),
(146, 55, '_menu_item_url', 'http://localhost/wordpress/index.php/my-account/customer-logout/?_wpnonce=000596f4de'),
(148, 56, '_menu_item_type', 'custom'),
(149, 56, '_menu_item_menu_item_parent', '0'),
(150, 56, '_menu_item_object_id', '56'),
(151, 56, '_menu_item_object', 'custom'),
(152, 56, '_menu_item_target', ''),
(153, 56, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 56, '_menu_item_xfn', ''),
(155, 56, '_menu_item_url', 'http://localhost/wordpress/index.php/my-account/lost-password/'),
(157, 57, '_menu_item_type', 'post_type'),
(158, 57, '_menu_item_menu_item_parent', '0'),
(159, 57, '_menu_item_object_id', '29'),
(160, 57, '_menu_item_object', 'page'),
(161, 57, '_menu_item_target', ''),
(162, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(163, 57, '_menu_item_xfn', ''),
(164, 57, '_menu_item_url', ''),
(166, 58, '_menu_item_type', 'custom'),
(167, 58, '_menu_item_menu_item_parent', '0'),
(168, 58, '_menu_item_object_id', '58'),
(169, 58, '_menu_item_object', 'custom'),
(170, 58, '_menu_item_target', ''),
(171, 58, '_menu_item_classes', 'a:1:{i:0;s:22:\"phoen-login-popup-open\";}'),
(172, 58, '_menu_item_xfn', ''),
(173, 58, '_menu_item_url', '#'),
(175, 59, '_menu_item_type', 'custom'),
(176, 59, '_menu_item_menu_item_parent', '0'),
(177, 59, '_menu_item_object_id', '59'),
(178, 59, '_menu_item_object', 'custom'),
(179, 59, '_menu_item_target', ''),
(180, 59, '_menu_item_classes', 'a:1:{i:0;s:23:\"phoen-signup-popup-open\";}'),
(181, 59, '_menu_item_xfn', ''),
(182, 59, '_menu_item_url', '#'),
(184, 16, '_customize_restore_dismissed', '1'),
(185, 60, '_edit_lock', '1600333339:1'),
(186, 60, '_wp_trash_meta_status', 'publish'),
(187, 60, '_wp_trash_meta_time', '1600333365'),
(188, 61, '_regular_price', '135000'),
(189, 61, '_sale_price', '110000'),
(190, 61, 'total_sales', '0'),
(191, 61, '_tax_status', 'taxable'),
(192, 61, '_tax_class', ''),
(193, 61, '_manage_stock', 'yes'),
(194, 61, '_backorders', 'yes'),
(195, 61, '_sold_individually', 'yes'),
(196, 61, '_weight', '1'),
(197, 61, '_length', '35'),
(198, 61, '_width', '15'),
(199, 61, '_height', '10'),
(200, 61, '_virtual', 'no'),
(201, 61, '_downloadable', 'no'),
(202, 61, '_download_limit', '-1'),
(203, 61, '_download_expiry', '-1'),
(204, 61, '_thumbnail_id', '62'),
(205, 61, '_stock', '10'),
(206, 61, '_stock_status', 'instock'),
(207, 61, '_wc_average_rating', '0'),
(208, 61, '_wc_review_count', '0'),
(209, 61, '_product_attributes', 'a:1:{s:6:\"ukuran\";a:6:{s:4:\"name\";s:6:\"Ukuran\";s:5:\"value\";s:22:\"39 | 40 | 41 | 42 | 43\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(210, 61, '_product_version', '3.6.4'),
(211, 61, '_price', '110000'),
(212, 61, '_edit_lock', '1600337557:1'),
(213, 61, '_edit_last', '1'),
(214, 62, '_wp_attached_file', '2020/09/ProAttMG-Bw.jpg'),
(215, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/09/ProAttMG-Bw.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"ProAttMG-Bw-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Bw-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Bw-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Bw-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Bw-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"ProAttMG-Bw-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Bw-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(216, 63, '_wp_attached_file', '2020/09/ProAttMG-Fb.jpg'),
(217, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:23:\"2020/09/ProAttMG-Fb.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"ProAttMG-Fb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Fb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Fb-450x450.jpg\";s:5:\"width\";i:450;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Fb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Fb-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:5:{s:4:\"file\";s:23:\"ProAttMG-Fb-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"ProAttMG-Fb-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(218, 65, '_regular_price', '135000'),
(219, 65, '_sale_price', '110000'),
(220, 65, 'total_sales', '0'),
(221, 65, '_tax_status', 'taxable'),
(222, 65, '_tax_class', ''),
(223, 65, '_manage_stock', 'yes'),
(224, 65, '_backorders', 'yes'),
(225, 65, '_sold_individually', 'yes'),
(226, 65, '_weight', '1'),
(227, 65, '_length', '35'),
(228, 65, '_width', '15'),
(229, 65, '_height', '10'),
(230, 65, '_virtual', 'no'),
(231, 65, '_downloadable', 'no'),
(232, 65, '_download_limit', '-1'),
(233, 65, '_download_expiry', '-1'),
(234, 65, '_thumbnail_id', '63'),
(235, 65, '_stock', '10'),
(236, 65, '_stock_status', 'instock'),
(237, 65, '_wc_average_rating', '0'),
(238, 65, '_wc_review_count', '0'),
(239, 65, '_product_attributes', 'a:1:{s:6:\"ukuran\";a:6:{s:4:\"name\";s:6:\"Ukuran\";s:5:\"value\";s:22:\"39 | 40 | 41 | 42 | 43\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(240, 65, '_product_version', '3.6.4'),
(241, 65, '_price', '110000'),
(242, 65, '_edit_lock', '1600337539:1'),
(243, 65, '_edit_last', '1'),
(280, 74, '_wp_trash_meta_status', 'publish'),
(281, 74, '_wp_trash_meta_time', '1600335891'),
(282, 75, '_edit_lock', '1600335973:1'),
(283, 75, '_wp_trash_meta_status', 'publish'),
(284, 75, '_wp_trash_meta_time', '1600336007'),
(285, 76, '_wp_trash_meta_status', 'publish'),
(286, 76, '_wp_trash_meta_time', '1600336064'),
(287, 77, '_edit_lock', '1600336454:1'),
(288, 77, '_wp_trash_meta_status', 'publish'),
(289, 77, '_wp_trash_meta_time', '1600336491'),
(290, 80, 'user_registration_form_setting_default_user_role', 'subscriber'),
(291, 80, 'user_registration_form_setting_enable_strong_password', 'yes'),
(292, 80, 'user_registration_form_setting_minimum_password_strength', '3'),
(293, 80, 'user_registration_form_setting_redirect_options', ''),
(294, 80, 'user_registration_form_setting_form_submit_label', 'Submit'),
(295, 80, 'user_registration_form_setting_enable_recaptcha_support', 'no'),
(296, 80, 'user_registration_form_template', 'Default'),
(297, 80, 'user_registration_form_custom_class', ''),
(298, 73, '_wp_trash_meta_status', 'publish'),
(299, 73, '_wp_trash_meta_time', '1600336907'),
(300, 73, '_wp_desired_post_slug', 'default-form'),
(301, 81, 'user_registration_form_setting_default_user_role', 'subscriber'),
(302, 81, 'user_registration_form_setting_enable_strong_password', 'yes'),
(303, 81, 'user_registration_form_setting_minimum_password_strength', '3'),
(304, 81, 'user_registration_form_setting_redirect_options', ''),
(305, 81, 'user_registration_form_setting_form_submit_label', 'Submit'),
(306, 81, 'user_registration_form_setting_enable_recaptcha_support', 'no'),
(307, 81, 'user_registration_form_template', 'Default'),
(308, 81, 'user_registration_form_custom_class', ''),
(309, 82, '_edit_lock', '1600337358:1'),
(310, 82, '_edit_last', '1'),
(311, 82, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(312, 82, '_wp_trash_meta_status', 'publish'),
(313, 82, '_wp_trash_meta_time', '1600337427'),
(314, 82, '_wp_desired_post_slug', 'register'),
(315, 84, '_menu_item_type', 'custom'),
(316, 84, '_menu_item_menu_item_parent', '59'),
(317, 84, '_menu_item_object_id', '84'),
(318, 84, '_menu_item_object', 'custom'),
(319, 84, '_menu_item_target', ''),
(320, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(321, 84, '_menu_item_xfn', ''),
(322, 84, '_menu_item_url', 'http://localhost/wordpress/index.php/my-account-2/edit-password/'),
(333, 86, '_edit_lock', '1600337573:1'),
(334, 86, '_wp_trash_meta_status', 'publish'),
(335, 86, '_wp_trash_meta_time', '1600337586'),
(336, 65, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(337, 61, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(342, 89, '_edit_lock', '1600338151:1'),
(343, 89, '_wp_trash_meta_status', 'publish'),
(344, 89, '_wp_trash_meta_time', '1600338152'),
(345, 90, '_wp_trash_meta_status', 'publish'),
(346, 90, '_wp_trash_meta_time', '1600338175'),
(347, 91, '_regular_price', '120000'),
(348, 91, '_sale_price', '98000'),
(349, 91, 'total_sales', '0'),
(350, 91, '_tax_status', 'taxable'),
(351, 91, '_tax_class', ''),
(352, 91, '_manage_stock', 'yes'),
(353, 91, '_backorders', 'yes'),
(354, 91, '_sold_individually', 'yes'),
(355, 91, '_weight', '1'),
(356, 91, '_length', '35'),
(357, 91, '_width', '15'),
(358, 91, '_height', '10'),
(359, 91, '_virtual', 'no'),
(360, 91, '_downloadable', 'no'),
(361, 91, '_download_limit', '-1'),
(362, 91, '_download_expiry', '-1'),
(363, 91, '_thumbnail_id', '92'),
(364, 91, '_stock', '10'),
(365, 91, '_stock_status', 'instock'),
(366, 91, '_wc_average_rating', '0'),
(367, 91, '_wc_review_count', '0'),
(368, 91, '_product_attributes', 'a:1:{s:6:\"ukuran\";a:6:{s:4:\"name\";s:6:\"Ukuran\";s:5:\"value\";s:17:\"39 | 40 | 41 | 42\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(369, 91, '_product_version', '3.6.4'),
(370, 91, '_price', '98000'),
(371, 91, '_edit_lock', '1600338176:1'),
(372, 91, '_edit_last', '1'),
(373, 92, '_wp_attached_file', '2020/09/ardilesdg-min.jpeg'),
(374, 92, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1280;s:4:\"file\";s:26:\"2020/09/ardilesdg-min.jpeg\";s:5:\"sizes\";a:20:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"ardilesdg-min-1024x1024.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"ardilesdg-min-1200x1200.jpeg\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"ardilesdg-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-600x600.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-600x600.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-700x300.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-620x266.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-400x171.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x335\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-700x335.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x297\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-620x297.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x191\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-400x191.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x350\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-700x350.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x310\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-620x310.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x200\";a:4:{s:4:\"file\";s:26:\"ardilesdg-min-400x200.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 91, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(376, 94, '_regular_price', '120000'),
(377, 94, '_sale_price', '98000'),
(378, 94, 'total_sales', '0'),
(379, 94, '_tax_status', 'taxable'),
(380, 94, '_tax_class', ''),
(381, 94, '_manage_stock', 'yes'),
(382, 94, '_backorders', 'yes'),
(383, 94, '_sold_individually', 'yes'),
(384, 94, '_weight', '1'),
(385, 94, '_length', '35'),
(386, 94, '_width', '15'),
(387, 94, '_height', '10'),
(388, 94, '_virtual', 'no'),
(389, 94, '_downloadable', 'no'),
(390, 94, '_download_limit', '-1'),
(391, 94, '_download_expiry', '-1'),
(392, 94, '_thumbnail_id', '95'),
(393, 94, '_stock', '10'),
(394, 94, '_stock_status', 'instock'),
(395, 94, '_wc_average_rating', '0'),
(396, 94, '_wc_review_count', '0'),
(397, 94, '_product_attributes', 'a:1:{s:6:\"ukuran\";a:6:{s:4:\"name\";s:6:\"Ukuran\";s:5:\"value\";s:17:\"39 | 40 | 41 | 42\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(398, 94, '_product_version', '3.6.4'),
(399, 94, '_price', '98000'),
(400, 94, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(401, 94, '_edit_lock', '1600338272:1'),
(402, 95, '_wp_attached_file', '2020/09/ardilesfb-min.jpeg'),
(403, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:1280;s:4:\"file\";s:26:\"2020/09/ardilesfb-min.jpeg\";s:5:\"sizes\";a:20:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"ardilesfb-min-1024x1024.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:28:\"ardilesfb-min-1200x1200.jpeg\";s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"ardilesfb-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-600x600.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-600x600.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x300\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-700x300.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x266\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-620x266.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x171\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-400x171.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x335\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-700x335.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x297\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-620x297.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x191\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-400x191.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-700x350\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-700x350.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-620x310\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-620x310.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:27:\"meta-slider-resized-400x200\";a:4:{s:4:\"file\";s:26:\"ardilesfb-min-400x200.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(404, 94, '_edit_last', '1'),
(405, 97, '_regular_price', '165000'),
(406, 97, '_sale_price', '140000'),
(407, 97, 'total_sales', '0'),
(408, 97, '_tax_status', 'taxable'),
(409, 97, '_tax_class', ''),
(410, 97, '_manage_stock', 'yes'),
(411, 97, '_backorders', 'yes'),
(412, 97, '_sold_individually', 'yes'),
(413, 97, '_weight', '1'),
(414, 97, '_length', '35'),
(415, 97, '_width', '15'),
(416, 97, '_height', '10'),
(417, 97, '_virtual', 'no'),
(418, 97, '_downloadable', 'no'),
(419, 97, '_download_limit', '-1'),
(420, 97, '_download_expiry', '-1'),
(421, 97, '_thumbnail_id', '98'),
(422, 97, '_stock', '10'),
(423, 97, '_stock_status', 'instock'),
(424, 97, '_wc_average_rating', '0'),
(425, 97, '_wc_review_count', '0'),
(426, 97, '_product_attributes', 'a:1:{s:6:\"ukuran\";a:6:{s:4:\"name\";s:6:\"Ukuran\";s:5:\"value\";s:22:\"39 | 40 | 41 | 42 | 43\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(427, 97, '_product_version', '3.6.4'),
(428, 97, '_price', '140000'),
(429, 97, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(430, 97, '_edit_lock', '1600338694:1'),
(431, 98, '_wp_attached_file', '2020/09/ProAttBMT-Gm-min.jpeg'),
(432, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:29:\"2020/09/ProAttBMT-Gm-min.jpeg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Gm-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Gm-min-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"ProAttBMT-Gm-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Gm-min-600x600.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Gm-min-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Gm-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Gm-min-600x600.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Gm-min-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(433, 97, '_edit_last', '1'),
(434, 99, '_regular_price', '165000'),
(435, 99, '_sale_price', '140000'),
(436, 99, 'total_sales', '0'),
(437, 99, '_tax_status', 'taxable'),
(438, 99, '_tax_class', ''),
(439, 99, '_manage_stock', 'yes'),
(440, 99, '_backorders', 'yes'),
(441, 99, '_sold_individually', 'yes'),
(442, 99, '_weight', '1'),
(443, 99, '_length', '35'),
(444, 99, '_width', '15'),
(445, 99, '_height', '10'),
(446, 99, '_virtual', 'no'),
(447, 99, '_downloadable', 'no'),
(448, 99, '_download_limit', '-1'),
(449, 99, '_download_expiry', '-1'),
(450, 99, '_thumbnail_id', '100'),
(451, 99, '_stock', '10'),
(452, 99, '_stock_status', 'instock'),
(453, 99, '_wc_average_rating', '0'),
(454, 99, '_wc_review_count', '0'),
(455, 99, '_product_attributes', 'a:1:{s:6:\"ukuran\";a:6:{s:4:\"name\";s:6:\"Ukuran\";s:5:\"value\";s:22:\"39 | 40 | 41 | 42 | 43\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(456, 99, '_product_version', '3.6.4'),
(457, 99, '_price', '140000'),
(458, 99, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(459, 99, '_edit_lock', '1600338533:1'),
(460, 100, '_wp_attached_file', '2020/09/ProAttBMT-Dg-min.jpeg'),
(461, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:29:\"2020/09/ProAttBMT-Dg-min.jpeg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Dg-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Dg-min-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"ProAttBMT-Dg-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Dg-min-600x600.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Dg-min-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Dg-min-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Dg-min-600x600.jpeg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"ProAttBMT-Dg-min-100x100.jpeg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(462, 99, '_edit_last', '1'),
(471, 105, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(472, 105, '_mail', 'a:8:{s:7:\"subject\";s:34:\"Sepatu Purwokerto \"[your-subject]\"\";s:6:\"sender\";s:43:\"Sepatu Purwokerto <roydwikuncoro@gmail.com>\";s:4:\"body\";s:182:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Sepatu Purwokerto (http://localhost/wordpress)\";s:9:\"recipient\";s:23:\"roydwikuncoro@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(473, 105, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:34:\"Sepatu Purwokerto \"[your-subject]\"\";s:6:\"sender\";s:43:\"Sepatu Purwokerto <roydwikuncoro@gmail.com>\";s:4:\"body\";s:124:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Sepatu Purwokerto (http://localhost/wordpress)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:33:\"Reply-To: roydwikuncoro@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(474, 105, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(475, 105, '_additional_settings', NULL),
(476, 105, '_locale', 'en_US'),
(481, 29, '_edit_last', '1'),
(482, 29, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(483, 111, '_edit_lock', '1600342038:1'),
(484, 111, '_wp_trash_meta_status', 'publish'),
(485, 111, '_wp_trash_meta_time', '1600342065'),
(486, 112, '_edit_lock', '1600342431:1'),
(487, 112, '_wp_trash_meta_status', 'publish'),
(488, 112, '_wp_trash_meta_time', '1600342458'),
(489, 100, '_wp_attachment_is_custom_background', 'twentytwenty'),
(490, 113, '_edit_lock', '1600342611:1'),
(491, 113, '_wp_trash_meta_status', 'publish'),
(492, 113, '_wp_trash_meta_time', '1600342632'),
(495, 115, '_wp_trash_meta_status', 'publish'),
(496, 115, '_wp_trash_meta_time', '1600345017'),
(497, 116, '_edit_lock', '1600345153:1'),
(498, 116, '_wp_trash_meta_status', 'publish'),
(499, 116, '_wp_trash_meta_time', '1600345174'),
(500, 117, '_wp_attached_file', '2020/09/sepatupurwokerto1.jpg'),
(501, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:114;s:6:\"height\";i:114;s:4:\"file\";s:29:\"2020/09/sepatupurwokerto1.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"sepatupurwokerto1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"sepatupurwokerto1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:11:\"Roy Kuncoro\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1561323477\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(502, 118, '_wp_attached_file', '2020/09/cropped-sepatupurwokerto1.jpg'),
(503, 118, '_wp_attachment_context', 'custom-header'),
(504, 118, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:37:\"2020/09/cropped-sepatupurwokerto1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-sepatupurwokerto1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"accesspress-service-thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-sepatupurwokerto1-300x252.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:252;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-sepatupurwokerto1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"cropped-sepatupurwokerto1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:117;}'),
(505, 118, '_wp_attachment_custom_header_last_used_accesspress-store', '1600345271'),
(506, 118, '_wp_attachment_is_custom_header', 'accesspress-store'),
(517, 119, '_customize_restore_dismissed', '1'),
(518, 121, '_wp_trash_meta_status', 'publish'),
(519, 121, '_wp_trash_meta_time', '1600345741'),
(520, 79, '_edit_lock', '1600346114:1'),
(521, 79, '_edit_last', '1'),
(522, 79, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(523, 124, '_edit_lock', '1600346327:1'),
(524, 124, '_edit_last', '1'),
(525, 124, '_heateor_sss_meta', 'a:2:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;}'),
(526, 126, '_menu_item_type', 'post_type'),
(527, 126, '_menu_item_menu_item_parent', '0'),
(528, 126, '_menu_item_object_id', '124'),
(529, 126, '_menu_item_object', 'page'),
(530, 126, '_menu_item_target', ''),
(531, 126, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(532, 126, '_menu_item_xfn', ''),
(533, 126, '_menu_item_url', ''),
(534, 127, '_edit_lock', '1600346955:1'),
(535, 127, '_customize_restore_dismissed', '1'),
(536, 128, '_edit_lock', '1600347202:1'),
(537, 128, '_wp_trash_meta_status', 'publish'),
(538, 128, '_wp_trash_meta_time', '1600347209'),
(539, 129, '_edit_lock', '1600347322:1'),
(540, 129, '_wp_trash_meta_status', 'publish'),
(541, 129, '_wp_trash_meta_time', '1600347351'),
(542, 130, '_wp_trash_meta_status', 'publish'),
(543, 130, '_wp_trash_meta_time', '1600347368'),
(544, 131, '_edit_lock', '1600347424:1'),
(545, 131, '_wp_trash_meta_status', 'publish'),
(546, 131, '_wp_trash_meta_time', '1600347432'),
(555, 137, '_action_manager_schedule', 'O:30:\"ActionScheduler_SimpleSchedule\":1:{s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1600495236;}'),
(556, 79, '_wp_trash_meta_status', 'publish'),
(557, 79, '_wp_trash_meta_time', '1600408930'),
(558, 79, '_wp_desired_post_slug', 'registration'),
(559, 138, '_wp_trash_meta_status', 'publish'),
(560, 138, '_wp_trash_meta_time', '1600409060'),
(561, 139, '_wp_trash_meta_status', 'publish'),
(562, 139, '_wp_trash_meta_time', '1600409089'),
(563, 140, '_wp_trash_meta_status', 'publish'),
(564, 140, '_wp_trash_meta_time', '1600409553');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(565, 141, '_um_custom_fields', 'a:6:{s:10:\"user_login\";a:15:{s:5:\"title\";s:8:\"Username\";s:7:\"metakey\";s:10:\"user_login\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:8:\"Username\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:15:\"unique_username\";s:9:\"min_chars\";i:3;s:9:\"max_chars\";i:24;s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"user_email\";a:13:{s:5:\"title\";s:14:\"E-mail Address\";s:7:\"metakey\";s:10:\"user_email\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:14:\"E-mail Address\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"validate\";s:12:\"unique_email\";s:8:\"position\";s:1:\"4\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"5\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"first_name\";a:12:{s:5:\"title\";s:10:\"First Name\";s:7:\"metakey\";s:10:\"first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"First Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"last_name\";a:12:{s:5:\"title\";s:9:\"Last Name\";s:7:\"metakey\";s:9:\"last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Last Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"3\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(566, 141, '_um_mode', 'register'),
(567, 141, '_um_core', 'register'),
(568, 141, '_um_register_use_custom_settings', '0'),
(569, 142, '_um_custom_fields', 'a:3:{s:8:\"username\";a:13:{s:5:\"title\";s:18:\"Username or E-mail\";s:7:\"metakey\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:18:\"Username or E-mail\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:24:\"unique_username_or_email\";s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(570, 142, '_um_mode', 'login'),
(571, 142, '_um_core', 'login'),
(572, 142, '_um_login_use_custom_settings', '0'),
(573, 143, '_um_custom_fields', 'a:1:{s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(574, 143, '_um_mode', 'profile'),
(575, 143, '_um_core', 'profile'),
(576, 143, '_um_profile_use_custom_settings', '0'),
(577, 144, '_um_core', 'members'),
(578, 144, '_um_template', 'members'),
(579, 144, '_um_mode', 'directory'),
(580, 144, '_um_view_types', 'a:1:{i:0;s:4:\"grid\";}'),
(581, 144, '_um_default_view', 'grid'),
(582, 144, '_um_roles', 'a:0:{}'),
(583, 144, '_um_has_profile_photo', '0'),
(584, 144, '_um_has_cover_photo', '0'),
(585, 144, '_um_show_these_users', ''),
(586, 144, '_um_exclude_these_users', ''),
(587, 144, '_um_sortby', 'user_registered_desc'),
(588, 144, '_um_sortby_custom', ''),
(589, 144, '_um_sortby_custom_label', ''),
(590, 144, '_um_enable_sorting', '0'),
(591, 144, '_um_sorting_fields', 'a:0:{}'),
(592, 144, '_um_profile_photo', '1'),
(593, 144, '_um_cover_photos', '1'),
(594, 144, '_um_show_name', '1'),
(595, 144, '_um_show_tagline', '0'),
(596, 144, '_um_tagline_fields', 'a:0:{}'),
(597, 144, '_um_show_userinfo', '0'),
(598, 144, '_um_reveal_fields', 'a:0:{}'),
(599, 144, '_um_show_social', '0'),
(600, 144, '_um_userinfo_animate', '1'),
(601, 144, '_um_search', '0'),
(602, 144, '_um_roles_can_search', 'a:0:{}'),
(603, 144, '_um_filters', '0'),
(604, 144, '_um_roles_can_filter', 'a:0:{}'),
(605, 144, '_um_search_fields', 'a:0:{}'),
(606, 144, '_um_filters_expanded', '0'),
(607, 144, '_um_filters_is_collapsible', '1'),
(608, 144, '_um_search_filters', 'a:0:{}'),
(609, 144, '_um_must_search', '0'),
(610, 144, '_um_max_users', ''),
(611, 144, '_um_profiles_per_page', '12'),
(612, 144, '_um_profiles_per_page_mobile', '6'),
(613, 144, '_um_directory_header', '{total_users} Members'),
(614, 144, '_um_directory_header_single', '{total_users} Member'),
(615, 144, '_um_directory_no_users', 'We are sorry. We cannot find any users who match your search criteria.'),
(616, 59, 'menu-item-um_nav_public', '2'),
(617, 126, 'menu-item-um_nav_public', '1'),
(618, 56, 'menu-item-um_nav_public', '1'),
(619, 145, '_menu_item_type', 'custom'),
(620, 145, '_menu_item_menu_item_parent', '0'),
(621, 145, '_menu_item_object_id', '145'),
(622, 145, '_menu_item_object', 'custom'),
(623, 145, '_menu_item_target', ''),
(624, 145, '_menu_item_classes', 'a:1:{i:0;s:22:\"phoen-login-popup-open\";}'),
(625, 145, '_menu_item_xfn', ''),
(626, 145, '_menu_item_url', '#'),
(628, 145, 'menu-item-um_nav_public', '1'),
(629, 146, 'ml-slider_settings', 'a:39:{s:5:\"title\";s:13:\"New Slideshow\";s:4:\"type\";s:4:\"flex\";s:6:\"random\";s:5:\"false\";s:8:\"cssClass\";s:0:\"\";s:8:\"printCss\";s:4:\"true\";s:7:\"printJs\";s:4:\"true\";s:5:\"width\";s:3:\"700\";s:6:\"height\";s:3:\"350\";s:3:\"spw\";i:7;s:3:\"sph\";i:5;s:5:\"delay\";s:4:\"3000\";s:6:\"sDelay\";i:30;s:7:\"opacity\";d:0.7;s:10:\"titleSpeed\";i:500;s:6:\"effect\";s:4:\"fade\";s:10:\"navigation\";s:4:\"true\";s:5:\"links\";s:4:\"true\";s:10:\"hoverPause\";s:4:\"true\";s:5:\"theme\";s:4:\"none\";s:9:\"direction\";s:10:\"horizontal\";s:7:\"reverse\";s:5:\"false\";s:14:\"animationSpeed\";s:3:\"600\";s:8:\"prevText\";s:8:\"Previous\";s:8:\"nextText\";s:4:\"Next\";s:6:\"slices\";i:15;s:6:\"center\";s:5:\"false\";s:9:\"smartCrop\";s:4:\"true\";s:12:\"carouselMode\";s:5:\"false\";s:14:\"carouselMargin\";s:1:\"5\";s:16:\"firstSlideFadeIn\";s:5:\"false\";s:6:\"easing\";s:6:\"linear\";s:8:\"autoPlay\";s:4:\"true\";s:11:\"thumb_width\";i:150;s:12:\"thumb_height\";i:100;s:17:\"responsive_thumbs\";s:5:\"false\";s:15:\"thumb_min_width\";i:100;s:9:\"fullWidth\";s:4:\"true\";s:10:\"noConflict\";s:4:\"true\";s:12:\"smoothHeight\";s:5:\"false\";}'),
(630, 146, 'metaslider_slideshow_theme', ''),
(631, 147, '_thumbnail_id', '95'),
(632, 147, 'ml-slider_type', 'image'),
(633, 147, 'ml-slider_inherit_image_title', '1'),
(634, 147, 'ml-slider_inherit_image_alt', '1'),
(635, 148, '_thumbnail_id', '92'),
(636, 148, 'ml-slider_type', 'image'),
(637, 148, 'ml-slider_inherit_image_title', '1'),
(638, 148, 'ml-slider_inherit_image_alt', '1'),
(639, 149, '_thumbnail_id', '27'),
(640, 149, 'ml-slider_type', 'image'),
(641, 149, 'ml-slider_inherit_image_title', '1'),
(642, 149, 'ml-slider_inherit_image_alt', '1'),
(643, 147, 'ml-slider_crop_position', 'center-center'),
(644, 147, 'ml-slider_caption_source', 'image-caption'),
(645, 147, '_wp_attachment_image_alt', ''),
(646, 148, 'ml-slider_crop_position', 'center-center'),
(647, 148, 'ml-slider_caption_source', 'image-caption'),
(648, 148, '_wp_attachment_image_alt', ''),
(649, 149, 'ml-slider_crop_position', 'center-center'),
(650, 149, 'ml-slider_caption_source', 'image-caption'),
(651, 149, '_wp_attachment_image_alt', ''),
(652, 95, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesfb-min-700x300.jpeg\";s:4:\"file\";s:26:\"ardilesfb-min-700x300.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesfb-min-620x266.jpeg\";s:4:\"file\";s:26:\"ardilesfb-min-620x266.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesfb-min-400x171.jpeg\";s:4:\"file\";s:26:\"ardilesfb-min-400x171.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x335\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesfb-min-700x335.jpeg\";s:4:\"file\";s:26:\"ardilesfb-min-700x335.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x297\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesfb-min-620x297.jpeg\";s:4:\"file\";s:26:\"ardilesfb-min-620x297.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x191\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesfb-min-400x191.jpeg\";s:4:\"file\";s:26:\"ardilesfb-min-400x191.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x350\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesfb-min-700x350.jpeg\";s:4:\"file\";s:26:\"ardilesfb-min-700x350.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x310\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesfb-min-620x310.jpeg\";s:4:\"file\";s:26:\"ardilesfb-min-620x310.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x200\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesfb-min-400x200.jpeg\";s:4:\"file\";s:26:\"ardilesfb-min-400x200.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(653, 92, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesdg-min-700x300.jpeg\";s:4:\"file\";s:26:\"ardilesdg-min-700x300.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesdg-min-620x266.jpeg\";s:4:\"file\";s:26:\"ardilesdg-min-620x266.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesdg-min-400x171.jpeg\";s:4:\"file\";s:26:\"ardilesdg-min-400x171.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x335\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesdg-min-700x335.jpeg\";s:4:\"file\";s:26:\"ardilesdg-min-700x335.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x297\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesdg-min-620x297.jpeg\";s:4:\"file\";s:26:\"ardilesdg-min-620x297.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x191\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesdg-min-400x191.jpeg\";s:4:\"file\";s:26:\"ardilesdg-min-400x191.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x350\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesdg-min-700x350.jpeg\";s:4:\"file\";s:26:\"ardilesdg-min-700x350.jpeg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x310\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesdg-min-620x310.jpeg\";s:4:\"file\";s:26:\"ardilesdg-min-620x310.jpeg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x200\";a:5:{s:4:\"path\";s:76:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/ardilesdg-min-400x200.jpeg\";s:4:\"file\";s:26:\"ardilesdg-min-400x200.jpeg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(654, 27, '_wp_attachment_backup_sizes', 'a:9:{s:15:\"resized-700x300\";a:5:{s:4:\"path\";s:113:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72-scaled-700x300.jpg\";s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-700x300.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x266\";a:5:{s:4:\"path\";s:113:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72-scaled-620x266.jpg\";s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-620x266.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:266;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x171\";a:5:{s:4:\"path\";s:113:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72-scaled-400x171.jpg\";s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-400x171.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:171;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x335\";a:5:{s:4:\"path\";s:113:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72-scaled-700x335.jpg\";s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-700x335.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x297\";a:5:{s:4:\"path\";s:113:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72-scaled-620x297.jpg\";s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-620x297.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:297;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x191\";a:5:{s:4:\"path\";s:113:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72-scaled-400x191.jpg\";s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-400x191.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:191;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-700x350\";a:5:{s:4:\"path\";s:113:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72-scaled-700x350.jpg\";s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-700x350.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-620x310\";a:5:{s:4:\"path\";s:113:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72-scaled-620x310.jpg\";s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-620x310.jpg\";s:5:\"width\";i:620;s:6:\"height\";i:310;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"resized-400x200\";a:5:{s:4:\"path\";s:113:\"F:xampphtdocswordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72-scaled-400x200.jpg\";s:4:\"file\";s:63:\"20200220032334IMG_20190412_150001_compress72-scaled-400x200.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}'),
(655, 29, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-16 14:18:07', '2020-09-16 14:18:07', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-16 14:18:07', '2020-09-16 14:18:07', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-16 14:18:07', '2020-09-16 14:18:07', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2020-09-17 07:07:19', '2020-09-17 07:07:19', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-16 14:18:07', '2020-09-16 14:18:07', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-16 14:18:07', '2020-09-16 14:18:07', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-09-16 14:18:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-09-16 14:18:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2020-09-16 14:24:41', '0000-00-00 00:00:00', '', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-09-16 14:24:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/09/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-09-16 14:24:41', '0000-00-00 00:00:00', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-16 14:24:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-09-16 14:24:41', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-16 14:24:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-09-16 14:24:41', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-16 14:24:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-09-16 14:24:41', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-16 14:24:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-09-16 14:24:41', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d45cde8423c2a63012951ff49d9833e9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a072358d7668a1f5c1314e17a52304ee\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:24:41\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '197b4dfe-ba8a-47ec-817b-2b5365a3d483', '', '', '2020-09-16 14:24:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2020-09-16 14:25:37', '0000-00-00 00:00:00', '', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-09-16 14:25:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/09/2020-landscape-1-1.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2020-09-16 14:25:37', '0000-00-00 00:00:00', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/wordpress/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-16 14:25:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-09-16 14:25:37', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-16 14:25:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-09-16 14:25:37', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-16 14:25:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=14', 0, 'page', '', 0),
(15, 1, '2020-09-16 14:25:37', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-16 14:25:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-09-16 14:25:37', '0000-00-00 00:00:00', '{\n    \"widget_text[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"About This Site\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d45cde8423c2a63012951ff49d9833e9\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"widget_text[5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZuZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Find Us\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a072358d7668a1f5c1314e17a52304ee\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-5\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            11,\n            12,\n            13,\n            14,\n            15\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 13,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 15,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 14,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 13,\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 15,\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 14,\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 12,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 15,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-16 14:25:37\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ac10d174-e14e-4dd1-96fe-0668c6c56acb', '', '', '2020-09-16 14:25:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=16', 0, 'customize_changeset', '', 0),
(18, 1, '2020-09-16 14:44:55', '2020-09-16 14:44:55', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-09-16 14:44:55', '2020-09-16 14:44:55', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/09/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2020-09-16 14:48:03', '2020-09-16 14:48:03', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-09-17 07:29:34', '2020-09-17 07:29:34', '', 29, 'http://localhost/wordpress/index.php/shop/', 0, 'page', '', 0),
(20, 1, '2020-09-16 14:48:03', '2020-09-16 14:48:03', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-09-16 14:48:03', '2020-09-16 14:48:03', '', 0, 'http://localhost/wordpress/index.php/cart/', 0, 'page', '', 0),
(21, 1, '2020-09-16 14:48:04', '2020-09-16 14:48:04', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-09-16 14:48:04', '2020-09-16 14:48:04', '', 0, 'http://localhost/wordpress/index.php/checkout/', 0, 'page', '', 0),
(22, 1, '2020-09-16 14:48:04', '2020-09-16 14:48:04', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-09-16 14:48:04', '2020-09-16 14:48:04', '', 0, 'http://localhost/wordpress/index.php/my-account/', 0, 'page', '', 0),
(24, 0, '2020-09-16 14:58:10', '2020-09-16 14:58:10', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5f62283fd7a038.87663451-hvMfoZJoV5ZRVtTwFrrYSmrO7Wt9fptk', '', '', '2020-09-16 14:59:11', '2020-09-16 14:59:11', '', 0, 'http://localhost/wordpress/?post_type=scheduled-action&#038;p=24', 0, 'scheduled-action', '', 3),
(25, 0, '2020-09-17 14:59:11', '2020-09-17 14:59:11', '[]', 'woocommerce_update_marketplace_suggestions', '', 'publish', 'open', 'closed', '', 'scheduled-action-5f644d04afe887.21546718-ykG0vHRfIsWYxcESN2FuJxWZxdCPtm17', '', '', '2020-09-18 06:00:36', '2020-09-18 06:00:36', '', 0, 'http://localhost/wordpress/?post_type=scheduled-action&#038;p=25', 0, 'scheduled-action', '', 3),
(26, 1, '2020-09-17 10:20:18', '2020-09-17 10:20:18', '', 'Ardiles Slip On - Biru Navy', '', 'publish', 'open', 'closed', '', 'ardiles-slip-on-biru-navy', '', '', '2020-09-17 10:27:55', '2020-09-17 10:27:55', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=26', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(27, 1, '2020-09-17 06:51:13', '2020-09-17 06:51:13', '', '20200220032334IMG_20190412_150001_compress72', '', 'inherit', 'open', 'closed', '', '20200220032334img_20190412_150001_compress72', '', '', '2020-09-17 09:17:46', '2020-09-17 09:17:46', '', 26, 'http://localhost/wordpress/wp-content/uploads/2020/09/20200220032334IMG_20190412_150001_compress72.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2020-09-17 07:05:43', '2020-09-17 07:05:43', '<!-- wp:pullquote {\"className\":\"is-style-solid-color\"} -->\n<figure class=\"wp-block-pullquote is-style-solid-color\"><blockquote><p>Selamat Datang di Website Sepatu Purwokerto</p><cite>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami ^_^</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:shortcode -->\n[metaslider id=\"146\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":5,\"rows\":3} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"15\" columns=\"5\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'publish', 'closed', 'closed', '', 'beranda', '', '', '2020-09-18 10:24:05', '2020-09-18 10:24:05', '', 0, 'http://localhost/wordpress/?page_id=29', 10, 'page', '', 0),
(30, 1, '2020-09-17 07:05:43', '2020-09-17 07:05:43', '', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:05:43', '2020-09-17 07:05:43', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2020-09-17 07:07:19', '2020-09-17 07:07:19', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-09-17 07:07:19', '2020-09-17 07:07:19', '', 2, 'http://localhost/wordpress/index.php/2020/09/17/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-09-17 07:13:24', '2020-09-17 07:13:24', '<!-- wp:paragraph -->\n<p>Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":6,\"rows\":2} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"12\" columns=\"6\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:13:24', '2020-09-17 07:13:24', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-09-17 07:15:15', '2020-09-17 07:15:15', '<!-- wp:paragraph -->\n<p><strong>Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:15:15', '2020-09-17 07:15:15', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-09-17 07:16:33', '2020-09-17 07:16:33', '<!-- wp:heading -->\n<h2><strong>Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</strong></h2>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:16:33', '2020-09-17 07:16:33', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2020-09-17 07:19:04', '2020-09-17 07:19:04', '<!-- wp:heading {\"align\":\"center\",\"level\":1} -->\n<h1 class=\"has-text-align-center\"><strong>Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</strong></h1>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:19:04', '2020-09-17 07:19:04', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2020-09-17 07:19:39', '2020-09-17 07:19:39', '<!-- wp:heading {\"align\":\"center\",\"level\":6} -->\n<h6 class=\"has-text-align-center\">Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</h6>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:19:39', '2020-09-17 07:19:39', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-09-17 07:20:16', '2020-09-17 07:20:16', '<!-- wp:heading {\"align\":\"center\",\"level\":5} -->\n<h5 class=\"has-text-align-center\">Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</h5>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:20:16', '2020-09-17 07:20:16', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-09-17 07:20:49', '2020-09-17 07:20:49', '<!-- wp:heading {\"align\":\"center\",\"level\":5} -->\n<h5 class=\"has-text-align-center\">Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami😊</h5>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:20:49', '2020-09-17 07:20:49', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-09-17 07:21:24', '2020-09-17 07:21:24', '<!-- wp:heading {\"align\":\"center\",\"level\":4} -->\n<h4 class=\"has-text-align-center\">Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</h4>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:21:24', '2020-09-17 07:21:24', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2020-09-17 07:22:10', '2020-09-17 07:22:10', '<!-- wp:heading {\"level\":5} -->\n<h5 id=\"block-679b4555-9d1e-4e7b-a36b-a8f832c4b55f\">Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</h5>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":4} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"4\" columns=\"4\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:22:10', '2020-09-17 07:22:10', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-09-17 07:24:46', '2020-09-17 07:24:46', '<!-- wp:heading {\"level\":5} -->\n<h5 id=\"block-679b4555-9d1e-4e7b-a36b-a8f832c4b55f\">Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</h5>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":5} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"5\" columns=\"5\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:24:46', '2020-09-17 07:24:46', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-09-17 07:24:56', '2020-09-17 07:24:56', '<!-- wp:heading {\"level\":5} -->\n<h5 id=\"block-679b4555-9d1e-4e7b-a36b-a8f832c4b55f\">Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami</h5>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":6} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"6\" columns=\"6\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:24:56', '2020-09-17 07:24:56', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2020-09-17 07:25:33', '2020-09-17 07:25:33', '<!-- wp:heading {\"level\":5} -->\n<h5 id=\"block-679b4555-9d1e-4e7b-a36b-a8f832c4b55f\">Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami😊</h5>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":6} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"6\" columns=\"6\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:25:33', '2020-09-17 07:25:33', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-09-17 07:26:06', '2020-09-17 07:26:06', '<!-- wp:heading {\"level\":5} -->\n<h5 id=\"block-679b4555-9d1e-4e7b-a36b-a8f832c4b55f\">Selamat Datang di Website Sepatu Purwokerto<br>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami ^_^</h5>\n<!-- /wp:heading -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":6} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"6\" columns=\"6\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 07:26:06', '2020-09-17 07:26:06', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2020-09-17 07:29:34', '2020-09-17 07:29:34', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-09-17 07:29:34', '2020-09-17 07:29:34', '', 19, 'http://localhost/wordpress/index.php/2020/09/17/19-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2020-09-17 08:56:53', '2020-09-17 08:56:53', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2020-09-18 06:44:29', '2020-09-18 06:44:29', '', 0, 'http://localhost/wordpress/?p=48', 8, 'nav_menu_item', '', 0),
(49, 1, '2020-09-17 08:56:53', '2020-09-17 08:56:53', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2020-09-18 06:44:29', '2020-09-18 06:44:29', '', 0, 'http://localhost/wordpress/?p=49', 5, 'nav_menu_item', '', 0),
(50, 1, '2020-09-17 08:56:53', '2020-09-17 08:56:53', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2020-09-18 06:44:29', '2020-09-18 06:44:29', '', 0, 'http://localhost/wordpress/?p=50', 4, 'nav_menu_item', '', 0),
(51, 1, '2020-09-17 08:56:52', '2020-09-17 08:56:52', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2020-09-18 06:44:29', '2020-09-18 06:44:29', '', 29, 'http://localhost/wordpress/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2020-09-17 08:56:53', '2020-09-17 08:56:53', '', 'Orders', '', 'publish', 'closed', 'closed', '', 'orders', '', '', '2020-09-18 06:44:29', '2020-09-18 06:44:29', '', 0, 'http://localhost/wordpress/?p=52', 6, 'nav_menu_item', '', 0),
(53, 1, '2020-09-17 08:56:54', '2020-09-17 08:56:54', '', 'Addresses', '', 'publish', 'closed', 'closed', '', 'addresses', '', '', '2020-09-18 06:44:30', '2020-09-18 06:44:30', '', 0, 'http://localhost/wordpress/?p=53', 10, 'nav_menu_item', '', 0),
(54, 1, '2020-09-17 08:56:54', '2020-09-17 08:56:54', '', 'Account details', '', 'publish', 'closed', 'closed', '', 'account-details', '', '', '2020-09-18 06:44:30', '2020-09-18 06:44:30', '', 0, 'http://localhost/wordpress/?p=54', 9, 'nav_menu_item', '', 0),
(55, 1, '2020-09-17 08:56:54', '2020-09-17 08:56:54', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2020-09-18 06:44:30', '2020-09-18 06:44:30', '', 0, 'http://localhost/wordpress/?p=55', 12, 'nav_menu_item', '', 0),
(56, 1, '2020-09-17 08:56:54', '2020-09-17 08:56:54', '', 'Lupa Password', '', 'publish', 'closed', 'closed', '', 'lost-password', '', '', '2020-09-18 06:44:30', '2020-09-18 06:44:30', '', 0, 'http://localhost/wordpress/?p=56', 15, 'nav_menu_item', '', 0),
(57, 1, '2020-09-17 08:56:52', '2020-09-17 08:56:52', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2020-09-18 06:44:29', '2020-09-18 06:44:29', '', 0, 'http://localhost/wordpress/?p=57', 1, 'nav_menu_item', '', 0),
(58, 1, '2020-09-17 08:56:52', '2020-09-17 08:56:52', '', 'Pesanan', '', 'publish', 'closed', 'closed', '', 'pesanan', '', '', '2020-09-18 06:44:29', '2020-09-18 06:44:29', '', 0, 'http://localhost/wordpress/?p=58', 3, 'nav_menu_item', '', 0),
(59, 1, '2020-09-17 08:56:53', '2020-09-17 08:56:53', '', 'Akun', '', 'publish', 'closed', 'closed', '', 'akun', '', '', '2020-09-18 06:44:29', '2020-09-18 06:44:29', '', 0, 'http://localhost/wordpress/?p=59', 7, 'nav_menu_item', '', 0),
(60, 1, '2020-09-17 09:02:44', '2020-09-17 09:02:44', '{\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:00:19\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:00:19\"\n    },\n    \"twentytwenty::nav_menu_locations[mobile]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:02:44\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:01:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2d4f006-59b3-4cac-b737-b5fd36741f33', '', '', '2020-09-17 09:02:44', '2020-09-17 09:02:44', '', 0, 'http://localhost/wordpress/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2020-09-17 09:07:57', '2020-09-17 09:07:57', '', 'Pro Att BMT - Hitam Putih', '', 'publish', 'open', 'closed', '', 'proattbmt-hitamputih', '', '', '2020-09-17 10:14:53', '2020-09-17 10:14:53', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=61', 0, 'product', '', 0),
(62, 1, '2020-09-17 09:09:56', '2020-09-17 09:09:56', '', 'ProAttMG-Bw', '', 'inherit', 'open', 'closed', '', 'proattmg-bw', '', '', '2020-09-17 09:09:56', '2020-09-17 09:09:56', '', 61, 'http://localhost/wordpress/wp-content/uploads/2020/09/ProAttMG-Bw.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-09-17 09:13:07', '2020-09-17 09:13:07', '', 'ProAttMG-Fb', '', 'inherit', 'open', 'closed', '', 'proattmg-fb', '', '', '2020-09-17 09:13:07', '2020-09-17 09:13:07', '', 61, 'http://localhost/wordpress/wp-content/uploads/2020/09/ProAttMG-Fb.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2020-09-17 09:13:21', '2020-09-17 09:13:21', '', 'Pro Att BMT - Hitam', 'Sepatu Original Pro Att dengan model sporty yang nyaman dipakai untuk olahraga dan sekolah, dibuat dengan bahan berkualitas menjadikan sepatu ini kuat dan awet untuk dipakai kegiatan harian anda', 'inherit', 'closed', 'closed', '', '61-autosave-v1', '', '', '2020-09-17 09:13:21', '2020-09-17 09:13:21', '', 61, 'http://localhost/wordpress/index.php/2020/09/17/61-autosave-v1/', 0, 'revision', '', 0),
(65, 1, '2020-09-17 09:13:53', '2020-09-17 09:13:53', '', 'Pro Att BMT - Hitam', '', 'publish', 'open', 'closed', '', 'pro-att-bmt-hitam', '', '', '2020-09-17 10:14:40', '2020-09-17 10:14:40', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=65', 0, 'product', '', 0),
(68, 1, '2020-09-17 09:25:17', '2020-09-17 09:25:17', 'Sepatu Original Ardiles dengan model slip on yang gampang dan nyaman dipakai, dibuat dengan bahan berkualitas menjadikan sepatu ini kuat dan awet untuk dipakai kegiatan harian anda', 'Ardiles Slip On - Biru Navy', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2020-09-17 09:25:17', '2020-09-17 09:25:17', '', 26, 'http://localhost/wordpress/index.php/2020/09/17/26-autosave-v1/', 0, 'revision', '', 0),
(73, 1, '2020-09-17 09:32:43', '2020-09-17 09:32:43', '[[[{\"field_key\":\"user_login\",\"general_setting\":{\"label\":\"Username\",\"field_name\":\"user_login\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_pass\",\"general_setting\":{\"label\":\"User Password\",\"field_name\":\"user_pass\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}}],[{\"field_key\":\"user_email\",\"general_setting\":{\"label\":\"User Email\",\"field_name\":\"user_email\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}},{\"field_key\":\"user_confirm_password\",\"general_setting\":{\"label\":\"Confirm Password\",\"field_name\":\"user_confirm_password\",\"placeholder\":\"\",\"required\":\"yes\"},\"advance_setting\":{}}]]]', 'Default form', '', 'trash', 'closed', 'closed', '', 'default-form__trashed', '', '', '2020-09-17 10:01:47', '2020-09-17 10:01:47', '', 0, 'http://localhost/wordpress/?post_type=user_registration&#038;p=73', 0, 'user_registration', '', 0),
(74, 1, '2020-09-17 09:44:50', '2020-09-17 09:44:50', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\"\n            ],\n            \"sidebar-2\": [\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:44:50\"\n    },\n    \"twentynineteen::nav_menu_locations[menu-1]\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:44:50\"\n    },\n    \"twentynineteen::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:44:50\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c09d2a53-4a0d-4305-a66d-eb608fd7a9cf', '', '', '2020-09-17 09:44:50', '2020-09-17 09:44:50', '', 0, 'http://localhost/wordpress/index.php/2020/09/17/c09d2a53-4a0d-4305-a66d-eb608fd7a9cf/', 0, 'customize_changeset', '', 0),
(75, 1, '2020-09-17 09:46:47', '2020-09-17 09:46:47', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"text-2\",\n                \"text-3\"\n            ],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:46:12\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:46:12\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:46:12\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:46:46\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:46:46\"\n    },\n    \"twentytwenty::nav_menu_locations[mobile]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:46:46\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:46:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '27e73f40-7754-4516-ba9c-460ad0a6ecb0', '', '', '2020-09-17 09:46:47', '2020-09-17 09:46:47', '', 0, 'http://localhost/wordpress/?p=75', 0, 'customize_changeset', '', 0),
(76, 1, '2020-09-17 09:47:43', '2020-09-17 09:47:43', '{\n    \"twentytwenty::background_color\": {\n        \"value\": \"#e8e8e8\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:47:43\"\n    },\n    \"twentytwenty::accent_hue_active\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:47:43\"\n    },\n    \"twentytwenty::accent_hue\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:47:43\"\n    },\n    \"twentytwenty::accent_accessible_colors\": {\n        \"value\": {\n            \"content\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#cd1d1d\",\n                \"background\": \"#e8e8e8\",\n                \"borders\": \"#c6c6c6\",\n                \"secondary\": \"#606060\"\n            },\n            \"header-footer\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#ee0606\",\n                \"background\": \"#ffffff\",\n                \"borders\": \"#dbdbdb\",\n                \"secondary\": \"#6d6d6d\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:47:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9d4afe87-a209-4668-9d60-7f6307c2053d', '', '', '2020-09-17 09:47:43', '2020-09-17 09:47:43', '', 0, 'http://localhost/wordpress/index.php/2020/09/17/9d4afe87-a209-4668-9d60-7f6307c2053d/', 0, 'customize_changeset', '', 0),
(77, 1, '2020-09-17 09:54:51', '2020-09-17 09:54:51', '{\n    \"twentytwenty::blog_content\": {\n        \"value\": \"full\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:54:51\"\n    },\n    \"twentytwenty::enable_header_search\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:49:06\"\n    },\n    \"twentytwenty::show_author_bio\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:49:06\"\n    },\n    \"twentytwenty::cover_template_overlay_background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:49:06\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"recent-posts-2\",\n            \"recent-comments-2\",\n            \"archives-2\",\n            \"categories-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:51:06\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [\n            \"heateor_sss_follow-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:51:06\"\n    },\n    \"widget_heateor_sss_follow[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyODp7czo1OiJ0aXRsZSI7czoxMjoiU29zaWFsIE1lZGlhIjtzOjQ6InNpemUiO2k6MzI7czoxMDoiaWNvbl9zaGFwZSI7czo1OiJyb3VuZCI7czo4OiJmYWNlYm9vayI7czoyOToiZmFjZWJvb2suY29tL3NlcGF0dXB1cndva2VydG8iO3M6NzoidHdpdHRlciI7czowOiIiO3M6OToiaW5zdGFncmFtIjtzOjM5OiJpbnN0YWdyYW0uY29tL3NlcGF0dXB1cndva2VydG8ub3JpZ2luYWwiO3M6OToicGludGVyZXN0IjtzOjA6IiI7czo3OiJiZWhhbmNlIjtzOjA6IiI7czo2OiJmbGlja3IiO3M6MDoiIjtzOjEwOiJmb3Vyc3F1YXJlIjtzOjA6IiI7czo2OiJnaXRodWIiO3M6MDoiIjtzOjY6ImdpdGxhYiI7TjtzOjg6ImxpbmtlZGluIjtzOjA6IiI7czoxNjoibGlua2VkaW5fY29tcGFueSI7czowOiIiO3M6NjoibWVkaXVtIjtzOjA6IiI7czo0OiJtZXdlIjtzOjA6IiI7czoxMzoib2Rub2tsYXNzbmlraSI7czowOiIiO3M6ODoic25hcGNoYXQiO3M6MDoiIjtzOjg6InRlbGVncmFtIjtzOjA6IiI7czo2OiJ0dW1ibHIiO3M6MDoiIjtzOjU6InZpbWVvIjtzOjA6IiI7czo5OiJ2a29udGFrdGUiO3M6MDoiIjtzOjQ6InhpbmciO3M6MDoiIjtzOjc6InlvdXR1YmUiO3M6MDoiIjtzOjE1OiJ5b3V0dWJlX2NoYW5uZWwiO3M6MDoiIjtzOjg6InJzc19mZWVkIjtzOjA6IiI7czoyMToiYmVmb3JlX3dpZGdldF9jb250ZW50IjtzOjA6IiI7czoyMDoiYWZ0ZXJfd2lkZ2V0X2NvbnRlbnQiO3M6MDoiIjt9\",\n            \"title\": \"Sosial Media\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"0f9d78023a0c95a1f912b751d29177ce\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 09:54:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9b8aca81-1571-4aa3-a0c7-7a2f77b31aa3', '', '', '2020-09-17 09:54:51', '2020-09-17 09:54:51', '', 0, 'http://localhost/wordpress/?p=77', 0, 'customize_changeset', '', 0),
(78, 1, '2020-09-17 09:56:37', '2020-09-17 09:56:37', '[user_registration_my_account]', 'My Account', '', 'publish', 'closed', 'closed', '', 'my-account-2', '', '', '2020-09-17 09:56:37', '2020-09-17 09:56:37', '', 0, 'http://localhost/wordpress/index.php/my-account-2/', 0, 'page', '', 0),
(79, 1, '2020-09-17 09:56:37', '2020-09-17 09:56:37', '<!-- wp:shortcode -->\n[user_registration_form id=\"81\"]\n<!-- /wp:shortcode -->', 'Login', '', 'trash', 'closed', 'closed', '', 'registration__trashed', '', '', '2020-09-18 06:02:10', '2020-09-18 06:02:10', '', 0, 'http://localhost/wordpress/index.php/registration/', 0, 'page', '', 0),
(80, 1, '2020-09-17 12:33:29', '2020-09-17 12:33:29', '[[[{\"field_key\":\"first_name\",\"general_setting\":{\"label\":\"First Name\",\"description\":\"\",\"field_name\":\"first_name\",\"placeholder\":\"\",\"required\":\"no\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"last_name\",\"general_setting\":{\"label\":\"Last Name\",\"description\":\"\",\"field_name\":\"last_name\",\"placeholder\":\"\",\"required\":\"no\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"user_login\",\"general_setting\":{\"label\":\"Username\",\"description\":\"\",\"field_name\":\"user_login\",\"placeholder\":\"\",\"required\":\"no\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"user_email\",\"general_setting\":{\"label\":\"Email\",\"description\":\"\",\"field_name\":\"user_email\",\"placeholder\":\"\",\"required\":\"yes\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"number\",\"general_setting\":{\"label\":\"Number\",\"description\":\"\",\"field_name\":\"number_box_1600336871\",\"placeholder\":\"\",\"required\":\"no\",\"hide_label\":\"no\"},\"advance_setting\":{\"min\":\"\",\"max\":\"\",\"step\":\"1\",\"custom_class\":\"\"}},{\"field_key\":\"user_pass\",\"general_setting\":{\"label\":\"Password\",\"description\":\"\",\"field_name\":\"user_pass\",\"placeholder\":\"\",\"required\":\"yes\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"user_confirm_password\",\"general_setting\":{\"label\":\"Confirm Password\",\"description\":\"\",\"field_name\":\"user_confirm_password\",\"placeholder\":\"\",\"required\":\"no\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}}]]]', 'Regristrasi', '', 'publish', 'closed', 'closed', '', 'regristrasi', '', '', '2020-09-17 12:33:29', '2020-09-17 12:33:29', '', 0, 'http://localhost/wordpress/?post_type=user_registration&#038;p=80', 0, 'user_registration', '', 0),
(81, 1, '2020-09-17 13:14:21', '2020-09-17 13:14:21', '[[[{\"field_key\":\"user_email\",\"general_setting\":{\"label\":\"Email\",\"description\":\"\",\"field_name\":\"user_email\",\"placeholder\":\"\",\"required\":\"yes\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}},{\"field_key\":\"user_pass\",\"general_setting\":{\"label\":\"Password\",\"description\":\"\",\"field_name\":\"user_pass\",\"placeholder\":\"\",\"required\":\"yes\",\"hide_label\":\"no\"},\"advance_setting\":{\"custom_class\":\"\"}}]]]', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2020-09-17 13:14:21', '2020-09-17 13:14:21', '', 0, 'http://localhost/wordpress/?post_type=user_registration&#038;p=81', 0, 'user_registration', '', 0),
(82, 1, '2020-09-17 10:08:09', '2020-09-17 10:08:09', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&#91;user_registration_form id=\"80\"]</code></pre>\n<!-- /wp:code -->', 'Register', '', 'trash', 'closed', 'closed', '', 'register__trashed', '', '', '2020-09-17 10:10:27', '2020-09-17 10:10:27', '', 0, 'http://localhost/wordpress/?page_id=82', 0, 'page', '', 0),
(83, 1, '2020-09-17 10:08:09', '2020-09-17 10:08:09', '<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>&#91;user_registration_form id=\"80\"]</code></pre>\n<!-- /wp:code -->', 'Register', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2020-09-17 10:08:09', '2020-09-17 10:08:09', '', 82, 'http://localhost/wordpress/index.php/2020/09/17/82-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2020-09-17 10:11:41', '2020-09-17 10:11:41', '', 'Change Password', '', 'publish', 'closed', 'closed', '', 'change-password', '', '', '2020-09-18 06:44:30', '2020-09-18 06:44:30', '', 0, 'http://localhost/wordpress/?p=84', 11, 'nav_menu_item', '', 0),
(86, 1, '2020-09-17 10:13:05', '2020-09-17 10:13:05', '{\n    \"nav_menu_item[85]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 10:12:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aee27820-b233-40d0-a671-bacff5566397', '', '', '2020-09-17 10:13:05', '2020-09-17 10:13:05', '', 0, 'http://localhost/wordpress/?p=86', 0, 'customize_changeset', '', 0),
(89, 1, '2020-09-17 10:22:31', '2020-09-17 10:22:31', '{\n    \"twentytwenty::header_footer_background_color\": {\n        \"value\": \"#686868\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 10:22:31\"\n    },\n    \"twentytwenty::accent_hue_active\": {\n        \"value\": \"default\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 10:20:39\"\n    },\n    \"twentytwenty::accent_hue\": {\n        \"value\": 344,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 10:20:39\"\n    },\n    \"twentytwenty::accent_accessible_colors\": {\n        \"value\": {\n            \"content\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#e22658\",\n                \"background\": \"#ffffff\",\n                \"borders\": \"#dbdbdb\",\n                \"secondary\": \"#6d6d6d\"\n            },\n            \"header-footer\": {\n                \"text\": \"#ffffff\",\n                \"accent\": \"#f8e2e7\",\n                \"background\": \"#686868\",\n                \"borders\": \"#7f7f7f\",\n                \"secondary\": \"#f4f4f4\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 10:22:31\"\n    },\n    \"twentytwenty::cover_template_overlay_background_color\": {\n        \"value\": \"#aaaaaa\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 10:20:39\"\n    },\n    \"twentytwenty::background_color\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 10:22:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2aa31dee-dc8f-4071-bc68-1869304dc802', '', '', '2020-09-17 10:22:31', '2020-09-17 10:22:31', '', 0, 'http://localhost/wordpress/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2020-09-17 10:22:55', '2020-09-17 10:22:55', '{\n    \"twentytwenty::blog_content\": {\n        \"value\": \"full\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 10:22:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '15c27211-0f0e-4b3a-b837-11fb60f65e5e', '', '', '2020-09-17 10:22:55', '2020-09-17 10:22:55', '', 0, 'http://localhost/wordpress/index.php/2020/09/17/15c27211-0f0e-4b3a-b837-11fb60f65e5e/', 0, 'customize_changeset', '', 0),
(91, 1, '2020-09-17 10:23:07', '2020-09-17 10:23:07', '', 'Ardiles Slip On - Grey', '', 'publish', 'open', 'closed', '', 'ardiles-slip-on-grey', '', '', '2020-09-17 10:24:33', '2020-09-17 10:24:33', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2020-09-17 10:24:22', '2020-09-17 10:24:22', '', 'ardilesdg-min', '', 'inherit', 'open', 'closed', '', 'ardilesdg-min', '', '', '2020-09-17 10:24:22', '2020-09-17 10:24:22', '', 91, 'http://localhost/wordpress/wp-content/uploads/2020/09/ardilesdg-min.jpeg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2020-09-17 10:24:42', '2020-09-17 10:24:42', '', 'Ardiles Slip On - Grey', '', 'inherit', 'closed', 'closed', '', '91-autosave-v1', '', '', '2020-09-17 10:24:42', '2020-09-17 10:24:42', '', 91, 'http://localhost/wordpress/index.php/2020/09/17/91-autosave-v1/', 0, 'revision', '', 0),
(94, 1, '2020-09-17 10:25:42', '2020-09-17 10:25:42', '', 'Ardiles Slip On - Hitam', '', 'publish', 'open', 'closed', '', 'ardiles-slip-on-hitam', '', '', '2020-09-17 10:26:38', '2020-09-17 10:26:38', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=94', 0, 'product', '', 0),
(95, 1, '2020-09-17 10:26:24', '2020-09-17 10:26:24', '', 'ardilesfb-min', '', 'inherit', 'open', 'closed', '', 'ardilesfb-min', '', '', '2020-09-17 10:26:24', '2020-09-17 10:26:24', '', 94, 'http://localhost/wordpress/wp-content/uploads/2020/09/ardilesfb-min.jpeg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2020-09-17 10:28:28', '0000-00-00 00:00:00', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-09-17 10:28:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=product&p=96', 0, 'product', '', 0),
(97, 1, '2020-09-17 10:28:37', '2020-09-17 10:28:37', '', 'Pro Att MG - Grey', '', 'publish', 'open', 'closed', '', 'pro-att-mg-grey', '', '', '2020-09-17 10:31:34', '2020-09-17 10:31:34', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2020-09-17 10:29:16', '2020-09-17 10:29:16', '', 'ProAttBMT-Gm-min', '', 'inherit', 'open', 'closed', '', 'proattbmt-gm-min', '', '', '2020-09-17 10:29:16', '2020-09-17 10:29:16', '', 97, 'http://localhost/wordpress/wp-content/uploads/2020/09/ProAttBMT-Gm-min.jpeg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2020-09-17 10:29:40', '2020-09-17 10:29:40', '', 'Pro Att MG - Dark Grey', '', 'publish', 'open', 'closed', '', 'pro-att-mg-darkgrey', '', '', '2020-09-17 10:31:13', '2020-09-17 10:31:13', '', 0, 'http://localhost/wordpress/?post_type=product&#038;p=99', 0, 'product', '', 0),
(100, 1, '2020-09-17 10:30:11', '2020-09-17 10:30:11', '', 'ProAttBMT-Dg-min', '', 'inherit', 'open', 'closed', '', 'proattbmt-dg-min', '', '', '2020-09-17 10:30:11', '2020-09-17 10:30:11', '', 99, 'http://localhost/wordpress/wp-content/uploads/2020/09/ProAttBMT-Dg-min.jpeg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2020-09-17 10:43:01', '2020-09-17 10:43:01', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\nSepatu Purwokerto \"[your-subject]\"\nSepatu Purwokerto <roydwikuncoro@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Sepatu Purwokerto (http://localhost/wordpress)\nroydwikuncoro@gmail.com\nReply-To: [your-email]\n\n0\n0\n\nSepatu Purwokerto \"[your-subject]\"\nSepatu Purwokerto <roydwikuncoro@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Sepatu Purwokerto (http://localhost/wordpress)\n[your-email]\nReply-To: roydwikuncoro@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-09-17 10:43:01', '2020-09-17 10:43:01', '', 0, 'http://localhost/wordpress/?post_type=wpcf7_contact_form&p=105', 0, 'wpcf7_contact_form', '', 0),
(108, 1, '2020-09-17 10:48:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-17 10:48:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=wpt_product_table&p=108', 0, 'wpt_product_table', '', 0),
(110, 1, '2020-09-17 11:26:37', '2020-09-17 11:26:37', '<!-- wp:pullquote {\"className\":\"is-style-solid-color\"} -->\n<figure class=\"wp-block-pullquote is-style-solid-color\"><blockquote><p>Selamat Datang di Website Sepatu Purwokerto</p><cite>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami ^_^</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":6} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"6\" columns=\"6\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-17 11:26:37', '2020-09-17 11:26:37', '', 29, 'http://localhost/wordpress/index.php/2020/09/17/29-revision-v1/', 0, 'revision', '', 0),
(111, 1, '2020-09-17 11:27:45', '2020-09-17 11:27:45', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:27:45\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '78c249a9-8de6-42d3-9b76-229a27ca3404', '', '', '2020-09-17 11:27:45', '2020-09-17 11:27:45', '', 0, 'http://localhost/wordpress/?p=111', 0, 'customize_changeset', '', 0),
(112, 1, '2020-09-17 11:34:17', '2020-09-17 11:34:17', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"woocommerce_product_categories-3\",\n            \"wpcw_contact-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:31:17\"\n    },\n    \"widget_categories[4]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:28:17\"\n    },\n    \"widget_woocommerce_product_categories[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo4OntzOjU6InRpdGxlIjtzOjE1OiJLYXRlZ29yaSBQcm9kdWsiO3M6Nzoib3JkZXJieSI7czo1OiJvcmRlciI7czo4OiJkcm9wZG93biI7aToxO3M6NToiY291bnQiO2k6MTtzOjEyOiJoaWVyYXJjaGljYWwiO2k6MTtzOjE4OiJzaG93X2NoaWxkcmVuX29ubHkiO2k6MTtzOjEwOiJoaWRlX2VtcHR5IjtpOjE7czo5OiJtYXhfZGVwdGgiO3M6MDoiIjt9\",\n            \"title\": \"Kategori Produk\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"21c7d9dd3b48ba6dfd4a11a6fc9e408d\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:30:17\"\n    },\n    \"widget_rss[3]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:31:17\"\n    },\n    \"widget_wpcw_contact[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo3OntzOjU6InRpdGxlIjtzOjY6IktvbnRhayI7czo1OiJlbWFpbCI7YToyOntzOjU6InZhbHVlIjtzOjI2OiJzZXBhdHVwdXJ3b2tlcnRvQGdtYWlsLmNvbSI7czo1OiJvcmRlciI7aToxO31zOjU6InBob25lIjthOjI6e3M6NToidmFsdWUiO3M6MTM6IjA4OTU2MTI0NjIwMTUiO3M6NToib3JkZXIiO2k6Mjt9czozOiJmYXgiO2E6Mjp7czo1OiJ2YWx1ZSI7czowOiIiO3M6NToib3JkZXIiO2k6Mzt9czo3OiJhZGRyZXNzIjthOjI6e3M6NToidmFsdWUiO3M6NTg6IlRpbmdnYXJqYXlhIFJ0IDAxIFJ3IDEyLCBKYXRpbGF3YW5nLCBCYW55dW1hcywgSmF3YSBUZW5nYWgiO3M6NToib3JkZXIiO2k6NDt9czo2OiJsYWJlbHMiO2E6Mjp7czo1OiJ2YWx1ZSI7czozOiJ5ZXMiO3M6NToib3JkZXIiO2k6NTt9czozOiJtYXAiO2E6Mjp7czo1OiJ2YWx1ZSI7czoyOiJubyI7czo1OiJvcmRlciI7aTo2O319\",\n            \"title\": \"Kontak\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"dbafb32c73b247468ca837e3fa02e71f\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:33:17\"\n    },\n    \"widget_woocommerce_recent_reviews[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToyOntzOjU6InRpdGxlIjtzOjE0OiJSZWNlbnQgcmV2aWV3cyI7czo2OiJudW1iZXIiO2k6Nzt9\",\n            \"title\": \"Recent reviews\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"745216cc061f9518f2a704e3c41d5c81\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:34:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd933a89-a20a-44e0-98a6-a6977bb22e2f', '', '', '2020-09-17 11:34:17', '2020-09-17 11:34:17', '', 0, 'http://localhost/wordpress/?p=112', 0, 'customize_changeset', '', 0),
(113, 1, '2020-09-17 11:37:11', '2020-09-17 11:37:11', '{\n    \"twentytwenty::background_image\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:36:18\"\n    },\n    \"twentytwenty::background_preset\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:36:18\"\n    },\n    \"twentytwenty::background_position_x\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:36:18\"\n    },\n    \"twentytwenty::background_position_y\": {\n        \"value\": \"center\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:36:18\"\n    },\n    \"twentytwenty::background_size\": {\n        \"value\": \"contain\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:36:18\"\n    },\n    \"twentytwenty::background_repeat\": {\n        \"value\": \"no-repeat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:36:18\"\n    },\n    \"twentytwenty::background_attachment\": {\n        \"value\": \"fixed\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:36:18\"\n    },\n    \"widget_woocommerce_product_categories[3]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo4OntzOjU6InRpdGxlIjtzOjE1OiJLYXRlZ29yaSBQcm9kdWsiO3M6Nzoib3JkZXJieSI7czo1OiJvcmRlciI7czo4OiJkcm9wZG93biI7aTowO3M6NToiY291bnQiO2k6MTtzOjEyOiJoaWVyYXJjaGljYWwiO2k6MTtzOjE4OiJzaG93X2NoaWxkcmVuX29ubHkiO2k6MTtzOjEwOiJoaWRlX2VtcHR5IjtpOjE7czo5OiJtYXhfZGVwdGgiO3M6MDoiIjt9\",\n            \"title\": \"Kategori Produk\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"a6a262415b33c4ac0236c08770bd6a72\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 11:37:11\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8e8fee01-caa1-48d5-8a44-3a35396cba39', '', '', '2020-09-17 11:37:11', '2020-09-17 11:37:11', '', 0, 'http://localhost/wordpress/?p=113', 0, 'customize_changeset', '', 0),
(115, 1, '2020-09-17 12:16:57', '2020-09-17 12:16:57', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"text-2\",\n                \"text-3\"\n            ],\n            \"sidebar-1\": [\n                \"woocommerce_product_categories-3\",\n                \"wpcw_contact-3\"\n            ],\n            \"sidebar-2\": [\n                \"heateor_sss_follow-3\"\n            ]\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:16:57\"\n    },\n    \"accesspress-store::nav_menu_locations[primary]\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:16:57\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '81fc3375-9039-4b3f-a8fd-ecfd108a76df', '', '', '2020-09-17 12:16:57', '2020-09-17 12:16:57', '', 0, 'http://localhost/wordpress/index.php/2020/09/17/81fc3375-9039-4b3f-a8fd-ecfd108a76df/', 0, 'customize_changeset', '', 0),
(116, 1, '2020-09-17 12:19:34', '2020-09-17 12:19:34', '{\n    \"accesspress-store::accesspress_ticker_checkbox\": {\n        \"value\": \"1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:19:13\"\n    },\n    \"accesspress-store::accesspress_background_type\": {\n        \"value\": \"pattern\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:19:34\"\n    },\n    \"accesspress-store::accesspress_background_image_pattern\": {\n        \"value\": \"pattern3\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:19:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '44d652b4-42a5-4d1f-96be-4cde7f761f6f', '', '', '2020-09-17 12:19:34', '2020-09-17 12:19:34', '', 0, 'http://localhost/wordpress/?p=116', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(117, 1, '2020-09-17 12:20:59', '2020-09-17 12:20:59', '', 'sepatupurwokerto1', '', 'inherit', 'open', 'closed', '', 'sepatupurwokerto1', '', '', '2020-09-17 12:20:59', '2020-09-17 12:20:59', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/09/sepatupurwokerto1.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2020-09-17 12:21:09', '2020-09-17 12:21:09', '', 'cropped-sepatupurwokerto1.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-sepatupurwokerto1-jpg', '', '', '2020-09-17 12:21:09', '2020-09-17 12:21:09', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/09/cropped-sepatupurwokerto1.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2020-09-17 12:22:17', '0000-00-00 00:00:00', '{\n    \"accesspress-store::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:22:17\"\n    },\n    \"accesspress-store::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:22:17\"\n    },\n    \"accesspress-store::accesspress_background_type\": {\n        \"value\": \"color\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:21:17\"\n    },\n    \"accesspress-store::accesspress_background_image_pattern\": {\n        \"value\": \"pattern1\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:21:17\"\n    },\n    \"accesspress-store::accesspress_webpage_layout\": {\n        \"value\": \"fullwidth\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:22:17\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '358a4c14-a92b-4fba-bc4e-cb4291eb8a93', '', '', '2020-09-17 12:22:17', '2020-09-17 12:22:17', '', 0, 'http://localhost/wordpress/?p=119', 0, 'customize_changeset', '', 0),
(121, 1, '2020-09-17 12:29:00', '2020-09-17 12:29:00', '{\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:29:00\"\n    },\n    \"twentytwenty::nav_menu_locations[mobile]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:29:00\"\n    },\n    \"twentytwenty::nav_menu_locations[footer]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:29:00\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"value\": 0,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:29:00\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '613b38f5-f8b5-43a1-b9c5-2cf1ed798350', '', '', '2020-09-17 12:29:00', '2020-09-17 12:29:00', '', 0, 'http://localhost/wordpress/index.php/2020/09/17/613b38f5-f8b5-43a1-b9c5-2cf1ed798350/', 0, 'customize_changeset', '', 0),
(123, 1, '2020-09-17 12:37:09', '2020-09-17 12:37:09', '<!-- wp:shortcode -->\n[user_registration_form id=\"81\"]\n<!-- /wp:shortcode -->', 'Login', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2020-09-17 12:37:09', '2020-09-17 12:37:09', '', 79, 'http://localhost/wordpress/index.php/2020/09/17/79-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2020-09-17 12:38:45', '2020-09-17 12:38:45', '<!-- wp:shortcode -->\n[user_registration_form id=\"80\"]\n<!-- /wp:shortcode -->', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2020-09-17 12:38:47', '2020-09-17 12:38:47', '', 0, 'http://localhost/wordpress/?page_id=124', 0, 'page', '', 0),
(125, 1, '2020-09-17 12:38:31', '2020-09-17 12:38:31', '<!-- wp:shortcode -->\n[user_registration_form id=\"80\"]\n<!-- /wp:shortcode -->', 'Register', '', 'inherit', 'closed', 'closed', '', '124-revision-v1', '', '', '2020-09-17 12:38:31', '2020-09-17 12:38:31', '', 124, 'http://localhost/wordpress/index.php/2020/09/17/124-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2020-09-17 12:38:45', '2020-09-17 12:38:45', '', 'Daftar', '', 'publish', 'closed', 'closed', '', '126', '', '', '2020-09-18 06:44:30', '2020-09-18 06:44:30', '', 0, 'http://localhost/wordpress/index.php/2020/09/17/126/', 13, 'nav_menu_item', '', 0),
(127, 1, '2020-09-17 12:49:15', '0000-00-00 00:00:00', '{\n    \"twentytwenty::background_position_x\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:49:15\"\n    },\n    \"twentytwenty::background_position_y\": {\n        \"value\": \"bottom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:49:15\"\n    },\n    \"twentytwenty::background_size\": {\n        \"value\": \"auto\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:49:15\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '6973ab45-8b35-4dda-92bb-65181c438c04', '', '', '2020-09-17 12:49:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=127', 0, 'customize_changeset', '', 0),
(128, 1, '2020-09-17 12:53:28', '2020-09-17 12:53:28', '{\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"value\": 18,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:53:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ee3d308b-32f3-40ec-aec9-de0321222b2a', '', '', '2020-09-17 12:53:28', '2020-09-17 12:53:28', '', 0, 'http://localhost/wordpress/?p=128', 0, 'customize_changeset', '', 0),
(129, 1, '2020-09-17 12:55:51', '2020-09-17 12:55:51', '{\n    \"nav_menu_item[57]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 29,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Front Page\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"title\": \"\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Beranda\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:55:22\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd14e95a7-c0f5-4239-bc0c-8980c1824018', '', '', '2020-09-17 12:55:51', '2020-09-17 12:55:51', '', 0, 'http://localhost/wordpress/?p=129', 0, 'customize_changeset', '', 0),
(130, 1, '2020-09-17 12:56:07', '2020-09-17 12:56:07', '{\n    \"nav_menu_item[57]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 29,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Front Page\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Beranda\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:56:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b7a557f1-5986-4daf-93ed-83b5fee70592', '', '', '2020-09-17 12:56:07', '2020-09-17 12:56:07', '', 0, 'http://localhost/wordpress/index.php/2020/09/17/b7a557f1-5986-4daf-93ed-83b5fee70592/', 0, 'customize_changeset', '', 0),
(131, 1, '2020-09-17 12:57:12', '2020-09-17 12:57:12', '{\n    \"nav_menu_item[57]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 29,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Front Page\",\n            \"url\": \"http://localhost/wordpress/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 1,\n            \"status\": \"publish\",\n            \"original_title\": \"Beranda\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:56:22\"\n    },\n    \"nav_menu_item[51]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 19,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Shop Page\",\n            \"url\": \"http://localhost/wordpress/index.php/beranda/shop/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 2,\n            \"status\": \"publish\",\n            \"original_title\": \"Shop\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:56:22\"\n    },\n    \"nav_menu_item[58]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 58,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Custom Link\",\n            \"title\": \"Pesanan\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:57:12\"\n    },\n    \"nav_menu_item[59]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 59,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Custom Link\",\n            \"title\": \"Akun\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 7,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:57:12\"\n    },\n    \"nav_menu_item[126]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 124,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/index.php/register/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 13,\n            \"status\": \"publish\",\n            \"original_title\": \"Register\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:57:12\"\n    },\n    \"nav_menu_item[120]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 79,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/index.php/registration/\",\n            \"title\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 14,\n            \"status\": \"publish\",\n            \"original_title\": \"Login\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:57:12\"\n    },\n    \"nav_menu_item[56]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 56,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Custom Link\",\n            \"title\": \"Lost password\",\n            \"url\": \"http://localhost/wordpress/index.php/my-account/lost-password/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 15,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-17 12:57:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '54736f0c-cb35-44f5-94e3-588e5d740427', '', '', '2020-09-17 12:57:12', '2020-09-17 12:57:12', '', 0, 'http://localhost/wordpress/?p=131', 0, 'customize_changeset', '', 0),
(136, 1, '2020-09-17 14:12:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-17 14:12:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?post_type=wpt_product_table&p=136', 0, 'wpt_product_table', '', 0),
(137, 0, '2020-09-19 06:00:36', '2020-09-19 06:00:36', '[]', 'woocommerce_update_marketplace_suggestions', '', 'pending', 'open', 'closed', '', '', '', '', '2020-09-19 06:00:36', '2020-09-19 06:00:36', '', 0, 'http://localhost/wordpress/?post_type=scheduled-action&p=137', 0, 'scheduled-action', '', 1),
(138, 1, '2020-09-18 06:04:19', '2020-09-18 06:04:19', '{\n    \"nav_menu_item[126]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 124,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/index.php/register/\",\n            \"title\": \"Daftar\",\n            \"target\": \"_blank\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 13,\n            \"status\": \"publish\",\n            \"original_title\": \"Register\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 06:04:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '89f8da1d-1f1e-4ef7-893f-8b8540fc6103', '', '', '2020-09-18 06:04:19', '2020-09-18 06:04:19', '', 0, 'http://localhost/wordpress/index.php/2020/09/18/89f8da1d-1f1e-4ef7-893f-8b8540fc6103/', 0, 'customize_changeset', '', 0),
(139, 1, '2020-09-18 06:04:49', '2020-09-18 06:04:49', '{\n    \"nav_menu_item[56]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 56,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Custom Link\",\n            \"title\": \"Lupa Password\",\n            \"url\": \"http://localhost/wordpress/index.php/my-account/lost-password/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 14,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 06:04:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '38f17f78-d044-4c88-8c17-c1278577ed21', '', '', '2020-09-18 06:04:49', '2020-09-18 06:04:49', '', 0, 'http://localhost/wordpress/index.php/2020/09/18/38f17f78-d044-4c88-8c17-c1278577ed21/', 0, 'customize_changeset', '', 0),
(140, 1, '2020-09-18 06:12:33', '2020-09-18 06:12:33', '{\n    \"nav_menu_item[126]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 124,\n            \"object\": \"page\",\n            \"type\": \"post_type\",\n            \"type_label\": \"Page\",\n            \"url\": \"http://localhost/wordpress/index.php/register/\",\n            \"title\": \"Daftar\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 18,\n            \"position\": 13,\n            \"status\": \"publish\",\n            \"original_title\": \"Register\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-18 06:12:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '28e2799d-d5ed-499e-9812-745f2f757f95', '', '', '2020-09-18 06:12:33', '2020-09-18 06:12:33', '', 0, 'http://localhost/wordpress/index.php/2020/09/18/28e2799d-d5ed-499e-9812-745f2f757f95/', 0, 'customize_changeset', '', 0),
(141, 1, '2020-09-18 06:33:20', '2020-09-18 06:33:20', '', 'Default Registration', '', 'publish', 'closed', 'closed', '', 'default-registration', '', '', '2020-09-18 06:33:20', '2020-09-18 06:33:20', '', 0, 'http://localhost/wordpress/index.php/um_form/default-registration/', 0, 'um_form', '', 0),
(142, 1, '2020-09-18 06:33:21', '2020-09-18 06:33:21', '', 'Default Login', '', 'publish', 'closed', 'closed', '', 'default-login', '', '', '2020-09-18 06:33:21', '2020-09-18 06:33:21', '', 0, 'http://localhost/wordpress/index.php/um_form/default-login/', 0, 'um_form', '', 0),
(143, 1, '2020-09-18 06:33:21', '2020-09-18 06:33:21', '', 'Default Profile', '', 'publish', 'closed', 'closed', '', 'default-profile', '', '', '2020-09-18 06:33:21', '2020-09-18 06:33:21', '', 0, 'http://localhost/wordpress/index.php/um_form/default-profile/', 0, 'um_form', '', 0),
(144, 1, '2020-09-18 06:33:21', '2020-09-18 06:33:21', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2020-09-18 06:33:21', '2020-09-18 06:33:21', '', 0, 'http://localhost/wordpress/index.php/um_directory/members/', 0, 'um_directory', '', 0),
(145, 1, '2020-09-18 06:40:01', '2020-09-18 06:40:01', '', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2020-09-18 06:44:30', '2020-09-18 06:44:30', '', 0, 'http://localhost/wordpress/?p=145', 14, 'nav_menu_item', '', 0),
(146, 1, '2020-09-18 06:51:38', '2020-09-18 06:51:38', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2020-09-18 06:51:38', '2020-09-18 06:51:38', '', 0, 'http://localhost/wordpress/?post_type=ml-slider&p=146', 0, 'ml-slider', '', 0),
(147, 1, '2020-09-18 07:06:36', '2020-09-18 07:06:36', '', 'Slider 146 - image', '', 'publish', 'closed', 'closed', '', 'slider-146-image', '', '', '2020-09-18 07:10:03', '2020-09-18 07:10:03', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=147', 0, 'ml-slide', '', 0),
(148, 1, '2020-09-18 07:06:38', '2020-09-18 07:06:38', '', 'Slider 146 - image', '', 'publish', 'closed', 'closed', '', 'slider-146-image-2', '', '', '2020-09-18 07:10:04', '2020-09-18 07:10:04', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=148', 1, 'ml-slide', '', 0),
(149, 1, '2020-09-18 07:06:39', '2020-09-18 07:06:39', '', 'Slider 146 - image', '', 'publish', 'closed', 'closed', '', 'slider-146-image-3', '', '', '2020-09-18 07:10:04', '2020-09-18 07:10:04', '', 0, 'http://localhost/wordpress/?post_type=ml-slide&#038;p=149', 2, 'ml-slide', '', 0),
(151, 1, '2020-09-18 07:12:18', '2020-09-18 07:12:18', '<!-- wp:pullquote {\"className\":\"is-style-solid-color\"} -->\n<figure class=\"wp-block-pullquote is-style-solid-color\"><blockquote><p>Selamat Datang di Website Sepatu Purwokerto</p><cite>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami ^_^</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:shortcode -->\n[metaslider id=\"146\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":6} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"6\" columns=\"6\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-18 07:12:18', '2020-09-18 07:12:18', '', 29, 'http://localhost/wordpress/index.php/2020/09/18/29-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2020-09-18 10:19:42', '2020-09-18 10:19:42', '<!-- wp:pullquote {\"className\":\"is-style-solid-color\"} -->\n<figure class=\"wp-block-pullquote is-style-solid-color\"><blockquote><p>Selamat Datang di Website Sepatu Purwokerto</p><cite>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami ^_^</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:shortcode -->\n[metaslider id=\"146\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":5,\"rows\":3} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"15\" columns=\"5\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-18 10:19:42', '2020-09-18 10:19:42', '', 29, 'http://localhost/wordpress/index.php/2020/09/18/29-revision-v1/', 0, 'revision', '', 0),
(154, 1, '2020-09-18 10:24:04', '2020-09-18 10:24:04', '<!-- wp:pullquote {\"className\":\"is-style-solid-color\"} -->\n<figure class=\"wp-block-pullquote is-style-solid-color\"><blockquote><p>Selamat Datang di Website Sepatu Purwokerto</p><cite>Tempat berbelanja sepatu murah dan original untuk keperluan anda, kepuasan anda adalah prioritas kami ^_^</cite></blockquote></figure>\n<!-- /wp:pullquote -->\n\n<!-- wp:shortcode -->\n[metaslider id=\"146\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:woocommerce/product-on-sale {\"columns\":5,\"rows\":3} -->\n<div class=\"wp-block-woocommerce-product-on-sale\">[products limit=\"15\" columns=\"5\" orderby=\"date\" order=\"DESC\" on_sale=\"1\"]</div>\n<!-- /wp:woocommerce/product-on-sale -->', 'Beranda', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2020-09-18 10:24:04', '2020-09-18 10:24:04', '', 29, 'http://localhost/wordpress/index.php/2020/09/18/29-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 15, 'product_count_product_cat', '0'),
(2, 16, 'order', '0'),
(3, 17, 'order', '0'),
(4, 16, 'product_count_product_cat', '3'),
(5, 19, 'order', '0'),
(6, 19, 'product_count_product_cat', '4'),
(7, 17, 'product_count_product_cat', '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Sepatu Slip On', 'sepatu-slip-on', 0),
(17, 'Sepatu Olahraga', 'sepatu-olahraga', 0),
(18, 'Main Menu', 'main-menu', 0),
(19, 'Sepatu Sekolah', 'sepatu-sekolah', 0),
(21, '146', '146', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 2, 0),
(26, 16, 0),
(48, 18, 0),
(49, 18, 0),
(50, 18, 0),
(51, 18, 0),
(52, 18, 0),
(53, 18, 0),
(54, 18, 0),
(55, 18, 0),
(56, 18, 0),
(57, 18, 0),
(58, 18, 0),
(59, 18, 0),
(61, 2, 0),
(61, 17, 0),
(61, 19, 0),
(65, 2, 0),
(65, 17, 0),
(65, 19, 0),
(84, 18, 0),
(91, 2, 0),
(91, 16, 0),
(94, 2, 0),
(94, 16, 0),
(97, 2, 0),
(97, 17, 0),
(97, 19, 0),
(99, 2, 0),
(99, 17, 0),
(99, 19, 0),
(126, 18, 0),
(145, 18, 0),
(147, 21, 0),
(148, 21, 0),
(149, 21, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 7),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 3),
(17, 17, 'product_cat', '', 0, 4),
(18, 18, 'nav_menu', '', 0, 15),
(19, 19, 'product_cat', '', 0, 4),
(21, 21, 'ml-slider', '', 0, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_um_metadata`
--

CREATE TABLE `wp_um_metadata` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `um_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `um_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'roy'),
(3, 1, 'last_name', 'kuncoro'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:8:{s:64:\"396ca22c3c638ba5023a3ad02721e874840198cdf72804af38466e10c20b1300\";a:4:{s:10:\"expiration\";i:1600438727;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1600265927;}s:64:\"197cd6ab366cba9a22d395bda7140deeef5e1f1dc84d05261aa47f50cbe0d6ff\";a:4:{s:10:\"expiration\";i:1601558185;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1600348585;}s:64:\"c4dc32c69b77fc03886004defb71067d2c73cbc1e3587bb0bc95a28a924277e1\";a:4:{s:10:\"expiration\";i:1600521556;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1600348756;}s:64:\"142e3bc97ce1f02dd11d58c1048bc895b978270714c74848078c79287b2511fc\";a:4:{s:10:\"expiration\";i:1601618488;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1600408888;}s:64:\"377d3c637c292d088a455efa64efc75654a4972a01b3761f851fd1e58aaced63\";a:4:{s:10:\"expiration\";i:1601621204;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1600411604;}s:64:\"1ea2a5ecf710de30c55fd56cd23ed935f0eb1beb1c445fbe7252d37c45771942\";a:4:{s:10:\"expiration\";i:1600584404;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1600411604;}s:64:\"1b4225abe9fb5f9b3362bd7060fe8c1480acc0a72a50ca9c5a429bd68b6a8817\";a:4:{s:10:\"expiration\";i:1601622361;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1600412761;}s:64:\"f31b0c5f7a887593277df4063763205ff6adb0dff369c3034824b1d8054e989e\";a:4:{s:10:\"expiration\";i:1600585562;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36\";s:5:\"login\";i:1600412762;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, '_woocommerce_tracks_anon_id', 'woo:GX/tJzXosnzd185g+vKN/2MS'),
(19, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"54229abfcfa5649e7003b83dd4755294\";a:11:{s:3:\"key\";s:32:\"54229abfcfa5649e7003b83dd4755294\";s:10:\"product_id\";i:91;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:98000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:98000;s:8:\"line_tax\";i:0;}}}'),
(20, 1, 'wc_last_active', '1600387200'),
(21, 1, 'dismissed_wc_admin_notice', '1'),
(22, 1, 'dismissed_no_secure_connection_notice', '1'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&post_dfw=off&hidetb=0&mfold=o'),
(25, 1, 'wp_user-settings-time', '1600337906'),
(26, 1, 'managenav-menuscolumnshidden', 'a:0:{}'),
(27, 1, 'metaboxhidden_nav-menus', 'a:0:{}'),
(28, 1, 'nav_menu_recently_edited', '18'),
(29, 1, 'last_update', '1600337117'),
(30, 1, 'billing_first_name', 'roy'),
(31, 1, 'billing_last_name', 'kuncoro'),
(32, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:67:\"postexcerpt,postcustom,slugdiv,woocommerce-product-data,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(33, 1, 'screen_layout_product', '2'),
(34, 1, 'closedpostboxes_product', 'a:0:{}'),
(35, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(36, 1, 'dismissed_no_shipping_methods_notice', '1'),
(37, 1, 'billing_company', ''),
(38, 1, 'billing_address_1', ''),
(39, 1, 'billing_address_2', ''),
(40, 1, 'billing_city', ''),
(41, 1, 'billing_postcode', ''),
(42, 1, 'billing_country', 'ID'),
(43, 1, 'billing_state', 'JT'),
(44, 1, 'billing_phone', ''),
(45, 1, 'billing_email', 'roydwikuncoro@gmail.com'),
(46, 1, 'shipping_first_name', ''),
(47, 1, 'shipping_last_name', ''),
(48, 1, 'shipping_company', ''),
(49, 1, 'shipping_address_1', ''),
(50, 1, 'shipping_address_2', ''),
(51, 1, 'shipping_city', ''),
(52, 1, 'shipping_postcode', ''),
(53, 1, 'shipping_country', 'ID'),
(54, 1, 'shipping_state', 'JT'),
(56, 2, 'nickname', 'user'),
(57, 2, 'first_name', 'dwi'),
(58, 2, 'last_name', 'kuncoro'),
(59, 2, 'description', ''),
(60, 2, 'rich_editing', 'true'),
(61, 2, 'syntax_highlighting', 'true'),
(62, 2, 'comment_shortcuts', 'false'),
(63, 2, 'admin_color', 'fresh'),
(64, 2, 'use_ssl', '0'),
(65, 2, 'show_admin_bar_front', 'true'),
(66, 2, 'locale', ''),
(67, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(68, 2, 'wp_user_level', '0'),
(69, 2, 'dismissed_wp_pointers', ''),
(70, 1, 'closedpostboxes_nav-menus', 'a:0:{}'),
(113, 1, 'account_status', 'approved'),
(114, 1, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(115, 2, 'account_status', 'approved'),
(116, 2, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(118, 1, '_um_last_login', '1600412762'),
(122, 1, 'wp_metaslider_user_saw_callout_toolbar', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BlsgEpGuCiVg9kIfwUOKySr1cX5w1.0', 'admin', 'roydwikuncoro@gmail.com', 'http://localhost/wordpress', '2020-09-16 14:18:05', '', 0, 'admin'),
(2, 'user', '$P$B2xhCPQmK5vk9FJhUSFNzZp4VUaho//', 'user', 'ucokace24@gmail.com', '', '2020-09-17 10:17:05', '', 0, 'dwi kuncoro');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_user_registration_sessions`
--

CREATE TABLE `wp_user_registration_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT 0,
  `downloadable` tinyint(1) DEFAULT 0,
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT 0,
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT 0,
  `average_rating` decimal(3,2) DEFAULT 0.00,
  `total_sales` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_wc_product_meta_lookup`
--

INSERT INTO `wp_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(26, '', 0, 0, '98000.00', '98000.00', 1, 10, 'instock', 0, '0.00', 0),
(61, '', 0, 0, '110000.00', '110000.00', 1, 10, 'instock', 0, '0.00', 0),
(65, '', 0, 0, '110000.00', '110000.00', 1, 10, 'instock', 0, '0.00', 0),
(91, '', 0, 0, '98000.00', '98000.00', 1, 10, 'instock', 0, '0.00', 0),
(94, '', 0, 0, '98000.00', '98000.00', 1, 10, 'instock', 0, '0.00', 0),
(97, '', 0, 0, '140000.00', '140000.00', 1, 10, 'instock', 0, '0.00', 0),
(99, '', 0, 0, '140000.00', '140000.00', 1, 10, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(613, '985fd93045d8342d7d465b0c61496c70', 'a:1:{s:8:\"customer\";s:753:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:1:\"0\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:1:\"0\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600510912),
(614, 'aaf079f3b85ee87acfaa89c8bcb83974', 'a:13:{s:4:\"cart\";s:416:\"a:1:{s:32:\"54229abfcfa5649e7003b83dd4755294\";a:11:{s:3:\"key\";s:32:\"54229abfcfa5649e7003b83dd4755294\";s:10:\"product_id\";i:91;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:98000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:98000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:416:\"a:15:{s:8:\"subtotal\";s:8:\"98000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:8:\"98000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:6:\"538.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"98538.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:25:\"previous_shipping_methods\";s:16:\"a:1:{i:0;a:0:{}}\";s:23:\"chosen_shipping_methods\";s:14:\"a:1:{i:0;b:0;}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:0;}\";s:10:\"wc_notices\";N;s:8:\"customer\";s:691:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:4:\"bacs\";s:22:\"shipping_for_package_0\";s:92:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_9b54031c868f84aa0622c1631a95412c\";s:5:\"rates\";a:0:{}}\";}', 1600520880),
(648, '26eb500dfd0f28e4223b9b8effd606b6', 'a:1:{s:8:\"customer\";s:751:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600520880),
(649, 'a53eb354a2d8b0bcaaa1a2f200e88bfe', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:691:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600521385),
(654, '0bc86e3404fe17e076f5ccef3c36b7f2', 'a:1:{s:8:\"customer\";s:751:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600521386),
(655, 'f0dc73b08f05d62db685ef780f03577b', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:691:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600521453),
(657, '909fdf704bf5d53035506ebe8f4860d9', 'a:11:{s:4:\"cart\";s:416:\"a:1:{s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";a:11:{s:3:\"key\";s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";s:10:\"product_id\";i:94;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:98000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:98000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:416:\"a:15:{s:8:\"subtotal\";s:8:\"98000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:8:\"98000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:6:\"602.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"98602.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:92:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_b415cdac57173882f3958e434a1ff747\";s:5:\"rates\";a:0:{}}\";s:25:\"previous_shipping_methods\";s:16:\"a:1:{i:0;a:0:{}}\";s:23:\"chosen_shipping_methods\";s:14:\"a:1:{i:0;b:0;}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:0;}\";s:8:\"customer\";s:691:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600521525),
(799, 'c4ff0256043825c50769d9d19b093d48', 'a:1:{s:8:\"customer\";s:751:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600521525),
(817, 'c172efcbc1d5676f49eebf15de47bae7', 'a:1:{s:8:\"customer\";s:751:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600581995),
(818, '1e33cf2703ba7c4f0ccf52eed17a885e', 'a:11:{s:4:\"cart\";s:416:\"a:1:{s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";a:11:{s:3:\"key\";s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";s:10:\"product_id\";i:94;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:98000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:98000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:416:\"a:15:{s:8:\"subtotal\";s:8:\"98000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:8:\"98000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:6:\"166.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"98166.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:92:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_b415cdac57173882f3958e434a1ff747\";s:5:\"rates\";a:0:{}}\";s:25:\"previous_shipping_methods\";s:16:\"a:1:{i:0;a:0:{}}\";s:23:\"chosen_shipping_methods\";s:14:\"a:1:{i:0;b:0;}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:0;}\";s:8:\"customer\";s:691:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600582210),
(849, '12ed34b5570afc70aded0406a624dfab', 'a:1:{s:8:\"customer\";s:751:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600582210),
(864, '07a117b58b5122dd0aad8f4a49cf065c', 'a:1:{s:8:\"customer\";s:751:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600583836),
(886, '24f80d614e240a2d225c0165188dce69', 'a:1:{s:8:\"customer\";s:751:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600584155),
(895, '80ba194d7f38303c7ed7f9ec03a1a474', 'a:1:{s:8:\"customer\";s:751:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600584242),
(896, '670f7fe1ea045c9953ade0007db9e174', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:691:\"a:26:{s:2:\"id\";s:1:\"0\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:0:\"\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1600584403),
(897, '1', 'a:13:{s:4:\"cart\";s:416:\"a:1:{s:32:\"54229abfcfa5649e7003b83dd4755294\";a:11:{s:3:\"key\";s:32:\"54229abfcfa5649e7003b83dd4755294\";s:10:\"product_id\";i:91;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:98000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:98000;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:416:\"a:15:{s:8:\"subtotal\";s:8:\"98000.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:8:\"98000.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:6:\"153.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:8:\"98153.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:416:\"a:1:{s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";a:11:{s:3:\"key\";s:32:\"f4b9ec30ad9f68f89b29639786cb62ef\";s:10:\"product_id\";i:94;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:98000;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:98000;s:8:\"line_tax\";i:0;}}\";s:25:\"previous_shipping_methods\";s:16:\"a:1:{i:0;a:0:{}}\";s:23:\"chosen_shipping_methods\";s:14:\"a:1:{i:0;b:0;}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:0;}\";s:8:\"customer\";s:833:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2020-09-17T10:05:17+00:00\";s:8:\"postcode\";s:5:\"53174\";s:4:\"city\";s:1:\"0\";s:9:\"address_1\";s:37:\"Jl.Desa Rt 1/12, Jatilawang, Banyumas\";s:7:\"address\";s:37:\"Jl.Desa Rt 1/12, Jatilawang, Banyumas\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"JT\";s:7:\"country\";s:2:\"ID\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"JT\";s:16:\"shipping_country\";s:2:\"ID\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:3:\"roy\";s:9:\"last_name\";s:7:\"kuncoro\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:23:\"roydwikuncoro@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:10:\"wc_notices\";N;s:21:\"chosen_payment_method\";s:4:\"bacs\";s:22:\"shipping_for_package_0\";s:92:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_fb0fe3a1f3c5692737c06e4eec627036\";s:5:\"rates\";a:0:{}}\";}', 1600584404);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indeks untuk tabel `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indeks untuk tabel `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indeks untuk tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indeks untuk tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indeks untuk tabel `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indeks untuk tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indeks untuk tabel `wp_um_metadata`
--
ALTER TABLE `wp_um_metadata`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id_indx` (`user_id`),
  ADD KEY `meta_key_indx` (`um_key`),
  ADD KEY `meta_value_indx` (`um_value`(191));

--
-- Indeks untuk tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeks untuk tabel `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indeks untuk tabel `wp_user_registration_sessions`
--
ALTER TABLE `wp_user_registration_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indeks untuk tabel `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indeks untuk tabel `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indeks untuk tabel `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indeks untuk tabel `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indeks untuk tabel `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indeks untuk tabel `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indeks untuk tabel `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indeks untuk tabel `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indeks untuk tabel `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indeks untuk tabel `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indeks untuk tabel `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indeks untuk tabel `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indeks untuk tabel `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indeks untuk tabel `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indeks untuk tabel `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1170;

--
-- AUTO_INCREMENT untuk tabel `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=656;

--
-- AUTO_INCREMENT untuk tabel `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `wp_um_metadata`
--
ALTER TABLE `wp_um_metadata`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `wp_user_registration_sessions`
--
ALTER TABLE `wp_user_registration_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1020;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
