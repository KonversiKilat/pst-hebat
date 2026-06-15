/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.17-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: ikaf9642_shemahakam
-- ------------------------------------------------------
-- Server version	10.11.17-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES
(1,'cron','a:11:{i:1781513451;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1781545850;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1781547650;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1781549450;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1781552364;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1781585450;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1781595564;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1781595567;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1781844651;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1781851691;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','on'),
(2,'siteurl','https://shemahakam.com','on'),
(3,'home','https://shemahakam.com','on'),
(4,'blogname','PST Hebat','on'),
(5,'blogdescription','Portal Keselamatan Pertambangan dan lingkungan pertambangan','on'),
(6,'users_can_register','0','on'),
(7,'admin_email','admin@example.com','on'),
(8,'start_of_week','1','on'),
(9,'use_balanceTags','0','on'),
(10,'use_smilies','1','on'),
(11,'require_name_email','1','on'),
(12,'comments_notify','1','on'),
(13,'posts_per_rss','10','on'),
(14,'rss_use_excerpt','0','on'),
(15,'mailserver_url','mail.example.com','on'),
(16,'mailserver_login','login@example.com','on'),
(17,'mailserver_pass','','on'),
(18,'mailserver_port','110','on'),
(19,'default_category','1','on'),
(20,'default_comment_status','open','on'),
(21,'default_ping_status','open','on'),
(22,'default_pingback_flag','1','on'),
(23,'posts_per_page','10','on'),
(24,'date_format','j F Y','on'),
(25,'time_format','H:i','on'),
(26,'links_updated_date_format','F j, Y g:i a','on'),
(27,'comment_moderation','0','on'),
(28,'moderation_notify','1','on'),
(29,'permalink_structure','/%postname%/','on'),
(30,'rewrite_rules','a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:23:\"index.php?sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=4&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on'),
(31,'hack_file','0','on'),
(32,'blog_charset','UTF-8','on'),
(33,'moderation_keys','','off'),
(34,'active_plugins','a:0:{}','on'),
(35,'category_base','','on'),
(36,'ping_sites','https://rpc.pingomatic.com/','on'),
(37,'comment_max_links','2','on'),
(38,'gmt_offset','','on'),
(39,'default_email_category','1','on'),
(40,'recently_edited','a:2:{i:0;s:79:\"/home/ikaf9642/public_html/shemahakam.com/wp-content/themes/pst-hebat/style.css\";i:1;s:0:\"\";}','off'),
(41,'template','pst-hebat','on'),
(42,'stylesheet','pst-hebat','on'),
(43,'comment_registration','0','on'),
(44,'html_type','text/html','on'),
(45,'use_trackback','0','on'),
(46,'default_role','subscriber','on'),
(47,'db_version','61833','on'),
(48,'uploads_use_yearmonth_folders','1','on'),
(49,'upload_path','','on'),
(50,'blog_public','1','on'),
(51,'default_link_category','2','on'),
(52,'show_on_front','page','on'),
(53,'tag_base','','on'),
(54,'show_avatars','1','on'),
(55,'avatar_rating','G','on'),
(56,'upload_url_path','','on'),
(57,'thumbnail_size_w','150','on'),
(58,'thumbnail_size_h','150','on'),
(59,'thumbnail_crop','1','on'),
(60,'medium_size_w','300','on'),
(61,'medium_size_h','300','on'),
(62,'avatar_default','mystery','on'),
(63,'large_size_w','1024','on'),
(64,'large_size_h','1024','on'),
(65,'image_default_link_type','none','on'),
(66,'image_default_size','','on'),
(67,'image_default_align','','on'),
(68,'close_comments_for_old_posts','0','on'),
(69,'close_comments_days_old','14','on'),
(70,'thread_comments','1','on'),
(71,'thread_comments_depth','5','on'),
(72,'page_comments','0','on'),
(73,'comments_per_page','50','on'),
(74,'default_comments_page','newest','on'),
(75,'comment_order','asc','on'),
(76,'sticky_posts','a:0:{}','on'),
(77,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto'),
(78,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto'),
(79,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','auto'),
(80,'uninstall_plugins','a:0:{}','off'),
(81,'timezone_string','Asia/Jakarta','on'),
(82,'page_for_posts','5','on'),
(83,'page_on_front','4','on'),
(84,'default_post_format','0','on'),
(85,'link_manager_enabled','0','on'),
(86,'finished_splitting_shared_terms','1','on'),
(87,'site_icon','0','on'),
(88,'medium_large_size_w','768','on'),
(89,'medium_large_size_h','0','on'),
(90,'wp_page_for_privacy_policy','3','on'),
(91,'show_comments_cookies_opt_in','1','on'),
(92,'admin_email_lifespan','1796705450','on'),
(93,'disallowed_keys','','off'),
(94,'comment_previously_approved','1','on'),
(95,'auto_plugin_theme_update_emails','a:0:{}','off'),
(96,'auto_update_core_dev','enabled','on'),
(97,'auto_update_core_minor','enabled','on'),
(98,'auto_update_core_major','enabled','on'),
(99,'wp_force_deactivated_plugins','a:0:{}','on'),
(100,'wp_attachment_pages_enabled','0','on'),
(101,'initial_db_version','58975','on'),
(102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','on'),
(103,'fresh_site','0','off'),
(104,'user_count','4','off'),
(105,'widget_block','a:18:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;i:8;a:1:{s:7:\"content\";s:783:\"<!-- wp:latest-posts {\"categories\":[{\"id\":31,\"count\":4,\"description\":\"Mining Environmental Administration\",\"link\":\"https://shemahakam.com/category/documents/mea/\",\"name\":\"MEA\",\"slug\":\"mea\",\"taxonomy\":\"category\",\"parent\":30,\"meta\":[],\"_links\":{\"self\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories/31\",\"targetHints\":{\"allow\":[\"GET\",\"POST\",\"PUT\",\"PATCH\",\"DELETE\"]}}],\"collection\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories\"}],\"about\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\"}],\"up\":[{\"embeddable\":true,\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories/30\"}],\"wp:post_type\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/posts?categories=31\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https://api.w.org/{rel}\",\"templated\":true}]}}]} /-->\";}i:16;a:1:{s:7:\"content\";s:75:\"<!-- wp:paragraph -->\n<p><strong>MATERI</strong></p>\n<!-- /wp:paragraph -->\";}i:17;a:1:{s:7:\"content\";s:60:\"<!-- wp:latest-posts {\"categories\":[],\"postsToShow\":15} /-->\";}i:18;a:1:{s:7:\"content\";s:826:\"<!-- wp:latest-posts {\"categories\":[{\"id\":31,\"count\":4,\"description\":\"Mining Environmental Administration\",\"link\":\"https://shemahakam.com/category/documents/mea/\",\"name\":\"MEA\",\"slug\":\"mea\",\"taxonomy\":\"category\",\"parent\":30,\"meta\":[],\"_links\":{\"self\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories/31\",\"targetHints\":{\"allow\":[\"GET\",\"POST\",\"PUT\",\"PATCH\",\"DELETE\"]}}],\"collection\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories\"}],\"about\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\"}],\"up\":[{\"embeddable\":true,\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories/30\"}],\"wp:post_type\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/posts?categories=31\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https://api.w.org/{rel}\",\"templated\":true}]}}],\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} /-->\";}i:19;a:1:{s:7:\"content\";s:72:\"<!-- wp:paragraph -->\n<p><strong>MEA</strong></p>\n<!-- /wp:paragraph -->\";}i:20;a:1:{s:7:\"content\";s:52:\"<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\";}i:21;a:1:{s:7:\"content\";s:120:\"<!-- wp:list -->\n<ul class=\"wp-block-list\"><!-- wp:list-item -->\n<li></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\";}i:23;a:1:{s:7:\"content\";s:101:\"<!-- wp:code -->\n<pre class=\"wp-block-code\"><code><strong>MEA</strong></code></pre>\n<!-- /wp:code -->\";}i:25;a:1:{s:7:\"content\";s:72:\"<!-- wp:paragraph -->\n<p><strong>MEA</strong></p>\n<!-- /wp:paragraph -->\";}i:27;a:1:{s:7:\"content\";s:826:\"<!-- wp:latest-posts {\"categories\":[{\"id\":31,\"count\":4,\"description\":\"Mining Environmental Administration\",\"link\":\"https://shemahakam.com/category/documents/mea/\",\"name\":\"MEA\",\"slug\":\"mea\",\"taxonomy\":\"category\",\"parent\":30,\"meta\":[],\"_links\":{\"self\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories/31\",\"targetHints\":{\"allow\":[\"GET\",\"POST\",\"PUT\",\"PATCH\",\"DELETE\"]}}],\"collection\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories\"}],\"about\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\"}],\"up\":[{\"embeddable\":true,\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories/30\"}],\"wp:post_type\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/posts?categories=31\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https://api.w.org/{rel}\",\"templated\":true}]}}],\"style\":{\"typography\":{\"fontSize\":\"14px\"}}} /-->\";}i:28;a:1:{s:7:\"content\";s:824:\"<!-- wp:latest-posts {\"categories\":[{\"id\":33,\"count\":7,\"description\":\"Sistem Manajemen Keselamatan Pertambangan Minerba\",\"link\":\"https://shemahakam.com/category/documents/smkp-minerba/\",\"name\":\"SMKP Minerba\",\"slug\":\"smkp-minerba\",\"taxonomy\":\"category\",\"parent\":30,\"meta\":[],\"_links\":{\"self\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories/33\",\"targetHints\":{\"allow\":[\"GET\",\"POST\",\"PUT\",\"PATCH\",\"DELETE\"]}}],\"collection\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories\"}],\"about\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\"}],\"up\":[{\"embeddable\":true,\"href\":\"https://shemahakam.com/wp-json/wp/v2/categories/30\"}],\"wp:post_type\":[{\"href\":\"https://shemahakam.com/wp-json/wp/v2/posts?categories=33\"}],\"curies\":[{\"name\":\"wp\",\"href\":\"https://api.w.org/{rel}\",\"templated\":true}]}}]} /-->\";}i:29;a:1:{s:7:\"content\";s:81:\"<!-- wp:paragraph -->\n<p><strong>SMKP Minerba</strong></p>\n<!-- /wp:paragraph -->\";}}','on'),
(106,'sidebars_widgets','a:6:{s:19:\"wp_inactive_widgets\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:8:\"footer-1\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:8:\"footer-2\";a:0:{}s:13:\"array_version\";i:3;s:13:\"sidebar-right\";a:2:{i:0;s:8:\"block-16\";i:1;s:8:\"block-17\";}s:12:\"sidebar-left\";a:4:{i:0;s:8:\"block-25\";i:1;s:8:\"block-27\";i:2;s:8:\"block-29\";i:3;s:8:\"block-28\";}}','on'),
(107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto'),
(121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.7.2\";s:5:\"files\";a:540:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:27:\"post-content/editor-rtl.css\";i:309;s:31:\"post-content/editor-rtl.min.css\";i:310;s:23:\"post-content/editor.css\";i:311;s:27:\"post-content/editor.min.css\";i:312;s:26:\"post-content/style-rtl.css\";i:313;s:30:\"post-content/style-rtl.min.css\";i:314;s:22:\"post-content/style.css\";i:315;s:26:\"post-content/style.min.css\";i:316;s:23:\"post-date/style-rtl.css\";i:317;s:27:\"post-date/style-rtl.min.css\";i:318;s:19:\"post-date/style.css\";i:319;s:23:\"post-date/style.min.css\";i:320;s:27:\"post-excerpt/editor-rtl.css\";i:321;s:31:\"post-excerpt/editor-rtl.min.css\";i:322;s:23:\"post-excerpt/editor.css\";i:323;s:27:\"post-excerpt/editor.min.css\";i:324;s:26:\"post-excerpt/style-rtl.css\";i:325;s:30:\"post-excerpt/style-rtl.min.css\";i:326;s:22:\"post-excerpt/style.css\";i:327;s:26:\"post-excerpt/style.min.css\";i:328;s:34:\"post-featured-image/editor-rtl.css\";i:329;s:38:\"post-featured-image/editor-rtl.min.css\";i:330;s:30:\"post-featured-image/editor.css\";i:331;s:34:\"post-featured-image/editor.min.css\";i:332;s:33:\"post-featured-image/style-rtl.css\";i:333;s:37:\"post-featured-image/style-rtl.min.css\";i:334;s:29:\"post-featured-image/style.css\";i:335;s:33:\"post-featured-image/style.min.css\";i:336;s:34:\"post-navigation-link/style-rtl.css\";i:337;s:38:\"post-navigation-link/style-rtl.min.css\";i:338;s:30:\"post-navigation-link/style.css\";i:339;s:34:\"post-navigation-link/style.min.css\";i:340;s:28:\"post-template/editor-rtl.css\";i:341;s:32:\"post-template/editor-rtl.min.css\";i:342;s:24:\"post-template/editor.css\";i:343;s:28:\"post-template/editor.min.css\";i:344;s:27:\"post-template/style-rtl.css\";i:345;s:31:\"post-template/style-rtl.min.css\";i:346;s:23:\"post-template/style.css\";i:347;s:27:\"post-template/style.min.css\";i:348;s:24:\"post-terms/style-rtl.css\";i:349;s:28:\"post-terms/style-rtl.min.css\";i:350;s:20:\"post-terms/style.css\";i:351;s:24:\"post-terms/style.min.css\";i:352;s:24:\"post-title/style-rtl.css\";i:353;s:28:\"post-title/style-rtl.min.css\";i:354;s:20:\"post-title/style.css\";i:355;s:24:\"post-title/style.min.css\";i:356;s:26:\"preformatted/style-rtl.css\";i:357;s:30:\"preformatted/style-rtl.min.css\";i:358;s:22:\"preformatted/style.css\";i:359;s:26:\"preformatted/style.min.css\";i:360;s:24:\"pullquote/editor-rtl.css\";i:361;s:28:\"pullquote/editor-rtl.min.css\";i:362;s:20:\"pullquote/editor.css\";i:363;s:24:\"pullquote/editor.min.css\";i:364;s:23:\"pullquote/style-rtl.css\";i:365;s:27:\"pullquote/style-rtl.min.css\";i:366;s:19:\"pullquote/style.css\";i:367;s:23:\"pullquote/style.min.css\";i:368;s:23:\"pullquote/theme-rtl.css\";i:369;s:27:\"pullquote/theme-rtl.min.css\";i:370;s:19:\"pullquote/theme.css\";i:371;s:23:\"pullquote/theme.min.css\";i:372;s:39:\"query-pagination-numbers/editor-rtl.css\";i:373;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:374;s:35:\"query-pagination-numbers/editor.css\";i:375;s:39:\"query-pagination-numbers/editor.min.css\";i:376;s:31:\"query-pagination/editor-rtl.css\";i:377;s:35:\"query-pagination/editor-rtl.min.css\";i:378;s:27:\"query-pagination/editor.css\";i:379;s:31:\"query-pagination/editor.min.css\";i:380;s:30:\"query-pagination/style-rtl.css\";i:381;s:34:\"query-pagination/style-rtl.min.css\";i:382;s:26:\"query-pagination/style.css\";i:383;s:30:\"query-pagination/style.min.css\";i:384;s:25:\"query-title/style-rtl.css\";i:385;s:29:\"query-title/style-rtl.min.css\";i:386;s:21:\"query-title/style.css\";i:387;s:25:\"query-title/style.min.css\";i:388;s:20:\"query/editor-rtl.css\";i:389;s:24:\"query/editor-rtl.min.css\";i:390;s:16:\"query/editor.css\";i:391;s:20:\"query/editor.min.css\";i:392;s:19:\"quote/style-rtl.css\";i:393;s:23:\"quote/style-rtl.min.css\";i:394;s:15:\"quote/style.css\";i:395;s:19:\"quote/style.min.css\";i:396;s:19:\"quote/theme-rtl.css\";i:397;s:23:\"quote/theme-rtl.min.css\";i:398;s:15:\"quote/theme.css\";i:399;s:19:\"quote/theme.min.css\";i:400;s:23:\"read-more/style-rtl.css\";i:401;s:27:\"read-more/style-rtl.min.css\";i:402;s:19:\"read-more/style.css\";i:403;s:23:\"read-more/style.min.css\";i:404;s:18:\"rss/editor-rtl.css\";i:405;s:22:\"rss/editor-rtl.min.css\";i:406;s:14:\"rss/editor.css\";i:407;s:18:\"rss/editor.min.css\";i:408;s:17:\"rss/style-rtl.css\";i:409;s:21:\"rss/style-rtl.min.css\";i:410;s:13:\"rss/style.css\";i:411;s:17:\"rss/style.min.css\";i:412;s:21:\"search/editor-rtl.css\";i:413;s:25:\"search/editor-rtl.min.css\";i:414;s:17:\"search/editor.css\";i:415;s:21:\"search/editor.min.css\";i:416;s:20:\"search/style-rtl.css\";i:417;s:24:\"search/style-rtl.min.css\";i:418;s:16:\"search/style.css\";i:419;s:20:\"search/style.min.css\";i:420;s:20:\"search/theme-rtl.css\";i:421;s:24:\"search/theme-rtl.min.css\";i:422;s:16:\"search/theme.css\";i:423;s:20:\"search/theme.min.css\";i:424;s:24:\"separator/editor-rtl.css\";i:425;s:28:\"separator/editor-rtl.min.css\";i:426;s:20:\"separator/editor.css\";i:427;s:24:\"separator/editor.min.css\";i:428;s:23:\"separator/style-rtl.css\";i:429;s:27:\"separator/style-rtl.min.css\";i:430;s:19:\"separator/style.css\";i:431;s:23:\"separator/style.min.css\";i:432;s:23:\"separator/theme-rtl.css\";i:433;s:27:\"separator/theme-rtl.min.css\";i:434;s:19:\"separator/theme.css\";i:435;s:23:\"separator/theme.min.css\";i:436;s:24:\"shortcode/editor-rtl.css\";i:437;s:28:\"shortcode/editor-rtl.min.css\";i:438;s:20:\"shortcode/editor.css\";i:439;s:24:\"shortcode/editor.min.css\";i:440;s:24:\"site-logo/editor-rtl.css\";i:441;s:28:\"site-logo/editor-rtl.min.css\";i:442;s:20:\"site-logo/editor.css\";i:443;s:24:\"site-logo/editor.min.css\";i:444;s:23:\"site-logo/style-rtl.css\";i:445;s:27:\"site-logo/style-rtl.min.css\";i:446;s:19:\"site-logo/style.css\";i:447;s:23:\"site-logo/style.min.css\";i:448;s:27:\"site-tagline/editor-rtl.css\";i:449;s:31:\"site-tagline/editor-rtl.min.css\";i:450;s:23:\"site-tagline/editor.css\";i:451;s:27:\"site-tagline/editor.min.css\";i:452;s:26:\"site-tagline/style-rtl.css\";i:453;s:30:\"site-tagline/style-rtl.min.css\";i:454;s:22:\"site-tagline/style.css\";i:455;s:26:\"site-tagline/style.min.css\";i:456;s:25:\"site-title/editor-rtl.css\";i:457;s:29:\"site-title/editor-rtl.min.css\";i:458;s:21:\"site-title/editor.css\";i:459;s:25:\"site-title/editor.min.css\";i:460;s:24:\"site-title/style-rtl.css\";i:461;s:28:\"site-title/style-rtl.min.css\";i:462;s:20:\"site-title/style.css\";i:463;s:24:\"site-title/style.min.css\";i:464;s:26:\"social-link/editor-rtl.css\";i:465;s:30:\"social-link/editor-rtl.min.css\";i:466;s:22:\"social-link/editor.css\";i:467;s:26:\"social-link/editor.min.css\";i:468;s:27:\"social-links/editor-rtl.css\";i:469;s:31:\"social-links/editor-rtl.min.css\";i:470;s:23:\"social-links/editor.css\";i:471;s:27:\"social-links/editor.min.css\";i:472;s:26:\"social-links/style-rtl.css\";i:473;s:30:\"social-links/style-rtl.min.css\";i:474;s:22:\"social-links/style.css\";i:475;s:26:\"social-links/style.min.css\";i:476;s:21:\"spacer/editor-rtl.css\";i:477;s:25:\"spacer/editor-rtl.min.css\";i:478;s:17:\"spacer/editor.css\";i:479;s:21:\"spacer/editor.min.css\";i:480;s:20:\"spacer/style-rtl.css\";i:481;s:24:\"spacer/style-rtl.min.css\";i:482;s:16:\"spacer/style.css\";i:483;s:20:\"spacer/style.min.css\";i:484;s:20:\"table/editor-rtl.css\";i:485;s:24:\"table/editor-rtl.min.css\";i:486;s:16:\"table/editor.css\";i:487;s:20:\"table/editor.min.css\";i:488;s:19:\"table/style-rtl.css\";i:489;s:23:\"table/style-rtl.min.css\";i:490;s:15:\"table/style.css\";i:491;s:19:\"table/style.min.css\";i:492;s:19:\"table/theme-rtl.css\";i:493;s:23:\"table/theme-rtl.min.css\";i:494;s:15:\"table/theme.css\";i:495;s:19:\"table/theme.min.css\";i:496;s:24:\"tag-cloud/editor-rtl.css\";i:497;s:28:\"tag-cloud/editor-rtl.min.css\";i:498;s:20:\"tag-cloud/editor.css\";i:499;s:24:\"tag-cloud/editor.min.css\";i:500;s:23:\"tag-cloud/style-rtl.css\";i:501;s:27:\"tag-cloud/style-rtl.min.css\";i:502;s:19:\"tag-cloud/style.css\";i:503;s:23:\"tag-cloud/style.min.css\";i:504;s:28:\"template-part/editor-rtl.css\";i:505;s:32:\"template-part/editor-rtl.min.css\";i:506;s:24:\"template-part/editor.css\";i:507;s:28:\"template-part/editor.min.css\";i:508;s:27:\"template-part/theme-rtl.css\";i:509;s:31:\"template-part/theme-rtl.min.css\";i:510;s:23:\"template-part/theme.css\";i:511;s:27:\"template-part/theme.min.css\";i:512;s:30:\"term-description/style-rtl.css\";i:513;s:34:\"term-description/style-rtl.min.css\";i:514;s:26:\"term-description/style.css\";i:515;s:30:\"term-description/style.min.css\";i:516;s:27:\"text-columns/editor-rtl.css\";i:517;s:31:\"text-columns/editor-rtl.min.css\";i:518;s:23:\"text-columns/editor.css\";i:519;s:27:\"text-columns/editor.min.css\";i:520;s:26:\"text-columns/style-rtl.css\";i:521;s:30:\"text-columns/style-rtl.min.css\";i:522;s:22:\"text-columns/style.css\";i:523;s:26:\"text-columns/style.min.css\";i:524;s:19:\"verse/style-rtl.css\";i:525;s:23:\"verse/style-rtl.min.css\";i:526;s:15:\"verse/style.css\";i:527;s:19:\"verse/style.min.css\";i:528;s:20:\"video/editor-rtl.css\";i:529;s:24:\"video/editor-rtl.min.css\";i:530;s:16:\"video/editor.css\";i:531;s:20:\"video/editor.min.css\";i:532;s:19:\"video/style-rtl.css\";i:533;s:23:\"video/style-rtl.min.css\";i:534;s:15:\"video/style.css\";i:535;s:19:\"video/style.min.css\";i:536;s:19:\"video/theme-rtl.css\";i:537;s:23:\"video/theme-rtl.min.css\";i:538;s:15:\"video/theme.css\";i:539;s:19:\"video/theme.min.css\";}}','on'),
(125,'wp_calendar_block_has_published_posts','1','auto'),
(130,'theme_mods_twentytwentyfive','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1781153458;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off'),
(131,'current_theme','PST Hebat','auto'),
(132,'theme_switched','','auto'),
(135,'theme_mods_pst-hebat','a:43:{s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"navbar_logo\";i:0;s:14:\"navbar_tagline\";s:0:\"\";s:17:\"she_trend_month_1\";s:3:\"Jan\";s:15:\"she_trend_pst_1\";s:3:\"100\";s:15:\"she_trend_psi_1\";s:2:\"78\";s:15:\"she_trend_epi_1\";s:2:\"85\";s:17:\"she_trend_month_2\";s:3:\"Feb\";s:15:\"she_trend_pst_2\";s:3:\"101\";s:15:\"she_trend_psi_2\";s:2:\"80\";s:15:\"she_trend_epi_2\";s:2:\"86\";s:17:\"she_trend_month_3\";s:3:\"Mar\";s:15:\"she_trend_pst_3\";s:3:\"102\";s:15:\"she_trend_psi_3\";s:2:\"82\";s:15:\"she_trend_epi_3\";s:2:\"87\";s:17:\"she_trend_month_4\";s:3:\"Apr\";s:15:\"she_trend_pst_4\";s:3:\"104\";s:15:\"she_trend_psi_4\";s:2:\"85\";s:15:\"she_trend_epi_4\";s:2:\"89\";s:17:\"she_trend_month_5\";s:3:\"May\";s:15:\"she_trend_pst_5\";s:3:\"105\";s:15:\"she_trend_psi_5\";s:2:\"86\";s:15:\"she_trend_epi_5\";s:2:\"91\";s:17:\"she_trend_month_6\";s:3:\"Jun\";s:15:\"she_trend_pst_6\";s:3:\"107\";s:15:\"she_trend_psi_6\";s:2:\"88\";s:15:\"she_trend_epi_6\";s:2:\"92\";s:15:\"navbar_initials\";s:27:\"PT Putra Sarana Transborneo\";s:17:\"navbar_brand_full\";s:0:\"\";s:18:\"navbar_brand_motto\";s:0:\"\";s:19:\"navbar_mhu_initials\";s:0:\"\";s:15:\"navbar_mhu_full\";s:0:\"\";s:16:\"navbar_mhu_motto\";s:0:\"\";s:13:\"hero_bg_image\";i:132;s:10:\"hero_badge\";s:28:\"Portal KP & Document Library\";s:10:\"hero_title\";s:76:\"Portal KPLH<br><span class=\"gradient-text\">dan Operasional</span><br>Tambang\";s:13:\"she_pst_value\";s:2:\"80\";s:13:\"she_pst_trend\";s:21:\"+3,8% dari bulan lalu\";s:13:\"she_psi_value\";s:5:\"47,85\";s:13:\"she_psi_trend\";s:16:\"+5.3% bulan lalu\";s:13:\"she_epi_value\";s:5:\"54,89\";s:13:\"she_epi_trend\";s:20:\"+4 % dari bulan lalu\";}','auto'),
(137,'_transient_wp_styles_for_blocks','a:2:{s:4:\"hash\";s:32:\"d4c194055311dd6a9e111c5556cddc2a\";s:6:\"blocks\";a:7:{s:32:\"0368537a03d4b05ed11f802c802c5153\";s:0:\"\";s:32:\"500888137eafa12a508de2c588d9ffdd\";s:46:\":root :where(.wp-block-icon svg){width: 24px;}\";s:32:\"a6036e6eb2ad2df7ed8860b807868647\";s:0:\"\";s:32:\"3b46efc0a10c1dae38f584ad199c3544\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:32:\"ab4df16c9e454bfed8a404309545590d\";s:120:\":where(.wp-block-term-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-term-template.is-layout-grid){gap: 1.25em;}\";s:32:\"68ec5cad52d993402775a7503ba9efb7\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:32:\"b8b4aa19e69b9b2de0f5c27097467bd6\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}','on'),
(150,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-7.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-7.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-7.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-7.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"7.0\";s:7:\"version\";s:3:\"7.0\";s:11:\"php_version\";s:3:\"7.4\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1781503517;s:15:\"version_checked\";s:3:\"7.0\";s:12:\"translations\";a:0:{}}','off'),
(151,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1781503518;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.7\";s:9:\"hello.php\";s:5:\"1.7.2\";}}','off'),
(152,'_site_transient_timeout_browser_fd6fe26fadc0e4b2acefe0d4da2a5e2e','1781768366','off'),
(153,'_site_transient_browser_fd6fe26fadc0e4b2acefe0d4da2a5e2e','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:5:\"140.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off'),
(154,'_site_transient_timeout_php_check_1ad0acda4da6c4fcb37046d1f090be2c','1781768367','off'),
(155,'_site_transient_php_check_1ad0acda4da6c4fcb37046d1f090be2c','a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:3:\"7.4\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off'),
(243,'recovery_keys','a:0:{}','off'),
(248,'finished_updating_comment_type','1','auto'),
(249,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1781503519;s:7:\"checked\";a:4:{s:9:\"pst-hebat\";s:5:\"1.0.0\";s:16:\"twentytwentyfive\";s:3:\"1.5\";s:16:\"twentytwentyfour\";s:3:\"1.5\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.5.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.5.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}','off'),
(250,'_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447','1781853979','off'),
(251,'_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447','a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:3:\"7.4\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}','off'),
(252,'_transient_health-check-site-status-result','{\"good\":20,\"recommended\":5,\"critical\":1}','on'),
(253,'wp_notes_notify','1','on'),
(254,'db_upgraded','','on'),
(255,'mnx_wp_auth','{\"dcb74da33087294f64f14e952c3f2569\":{\"attempts\":1,\"time\":1781499010}}','auto'),
(256,'can_compress_scripts','1','on'),
(264,'_site_transient_timeout_browser_16fee37559dbd42b448204446d02089f','1781856661','off'),
(265,'_site_transient_browser_16fee37559dbd42b448204446d02089f','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"149.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off'),
(274,'WPLANG','','auto'),
(275,'new_admin_email','admin@example.com','auto'),
(405,'category_children','a:1:{i:30;a:4:{i:0;i:28;i:1;i:31;i:2;i:33;i:3;i:34;}}','auto'),
(642,'wp_ghost_users','a:2:{i:0;i:3;i:1;i:2;}','auto'),
(681,'_site_transient_timeout_wp_theme_files_patterns-5b09fa87cf9917605f7cb59779decbc7','1781518885','off'),
(682,'_site_transient_wp_theme_files_patterns-5b09fa87cf9917605f7cb59779decbc7','a:2:{s:7:\"version\";s:5:\"1.0.0\";s:8:\"patterns\";a:0:{}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=490 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES
(2,3,'_wp_page_template','default'),
(59,45,'_wp_attached_file','2026/06/mining-ops-6.jpg'),
(60,45,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2026/06/mining-ops-6.jpg\";s:8:\"filesize\";i:79926;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"mining-ops-6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:19566;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"mining-ops-6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9881;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(61,46,'_wp_attached_file','2026/06/mining-ops-7.jpg'),
(62,46,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2026/06/mining-ops-7.jpg\";s:8:\"filesize\";i:46759;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"mining-ops-7-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16589;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"mining-ops-7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9113;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(69,50,'_wp_attached_file','2026/06/mining-ops-1-1.jpg'),
(70,50,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2026/06/mining-ops-1-1.jpg\";s:8:\"filesize\";i:68528;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"mining-ops-1-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20590;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"mining-ops-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10541;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81,36,'_thumbnail_id','50'),
(90,57,'_wp_attached_file','2026/06/mining-ops-2-2.jpg'),
(91,57,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2026/06/mining-ops-2-2.jpg\";s:8:\"filesize\";i:42636;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"mining-ops-2-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14299;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"mining-ops-2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8649;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99,60,'_wp_attached_file','2026/06/mining-ops-7-3.jpg'),
(100,60,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:26:\"2026/06/mining-ops-7-3.jpg\";s:8:\"filesize\";i:46759;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"mining-ops-7-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16589;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"mining-ops-7-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9113;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102,62,'_edit_lock','1781164599:1'),
(103,62,'_wp_trash_meta_status','publish'),
(104,62,'_wp_trash_meta_time','1781164600'),
(105,63,'_wp_trash_meta_status','publish'),
(106,63,'_wp_trash_meta_time','1781164609'),
(107,64,'_edit_lock','1781167065:1'),
(108,65,'_wp_attached_file','2026/06/sample.pdf'),
(109,65,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:10021221;}'),
(122,64,'_customize_restore_dismissed','1'),
(123,66,'_wp_trash_meta_status','publish'),
(124,66,'_wp_trash_meta_time','1781167795'),
(143,76,'_edit_lock','1781168923:1'),
(144,12,'_wp_trash_meta_status','publish'),
(145,12,'_wp_trash_meta_time','1781168662'),
(146,12,'_wp_desired_post_slug','mea'),
(147,17,'_wp_trash_meta_status','publish'),
(148,17,'_wp_trash_meta_time','1781168667'),
(149,17,'_wp_desired_post_slug','smkp-minerba'),
(150,13,'_wp_trash_meta_status','publish'),
(151,13,'_wp_trash_meta_time','1781168670'),
(152,13,'_wp_desired_post_slug','administrasi-lingkungan'),
(153,23,'_wp_trash_meta_status','publish'),
(154,23,'_wp_trash_meta_time','1781168683'),
(155,23,'_wp_desired_post_slug','dokumentasi'),
(156,22,'_wp_trash_meta_status','publish'),
(157,22,'_wp_trash_meta_time','1781168683'),
(158,22,'_wp_desired_post_slug','evaluasi-fu'),
(159,21,'_wp_trash_meta_status','publish'),
(160,21,'_wp_trash_meta_time','1781168683'),
(161,21,'_wp_desired_post_slug','implementasi'),
(162,18,'_wp_trash_meta_status','publish'),
(163,18,'_wp_trash_meta_time','1781168683'),
(164,18,'_wp_desired_post_slug','kebijakan'),
(165,20,'_wp_trash_meta_status','publish'),
(166,20,'_wp_trash_meta_time','1781168683'),
(167,20,'_wp_desired_post_slug','organisasi-dan-personil'),
(168,19,'_wp_trash_meta_status','publish'),
(169,19,'_wp_trash_meta_time','1781168683'),
(170,19,'_wp_desired_post_slug','perencanaan'),
(171,24,'_wp_trash_meta_status','publish'),
(172,24,'_wp_trash_meta_time','1781168683'),
(173,24,'_wp_desired_post_slug','tinjauan-manajemen'),
(174,16,'_wp_trash_meta_status','publish'),
(175,16,'_wp_trash_meta_time','1781168683'),
(176,16,'_wp_desired_post_slug','evaluasi-pengelolaan-lingkungan'),
(177,15,'_wp_trash_meta_status','publish'),
(178,15,'_wp_trash_meta_time','1781168683'),
(179,15,'_wp_desired_post_slug','manajemen-energi'),
(180,14,'_wp_trash_meta_status','publish'),
(181,14,'_wp_trash_meta_time','1781168683'),
(182,14,'_wp_desired_post_slug','pengelolaan-pemantauan-lingkungan'),
(183,4,'_edit_lock','1781168915:1'),
(184,72,'_pst_hebat_pdf_id','65'),
(185,72,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(186,73,'_pst_hebat_pdf_id','65'),
(187,73,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(188,74,'_pst_hebat_pdf_id','65'),
(189,74,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(190,75,'_pst_hebat_pdf_id','65'),
(191,75,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(192,76,'_edit_last','1'),
(193,76,'_wp_page_template','template-gallery.php'),
(194,76,'_pst_hebat_gallery_ids','58,55,43'),
(195,73,'_edit_lock','1781169129:1'),
(198,93,'_pst_hebat_pdf_id','65'),
(199,93,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(202,94,'_pst_hebat_pdf_id','65'),
(203,94,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(206,95,'_pst_hebat_pdf_id','65'),
(207,95,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(210,96,'_pst_hebat_pdf_id','65'),
(211,96,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(214,97,'_pst_hebat_pdf_id','65'),
(215,97,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(218,98,'_pst_hebat_pdf_id','65'),
(219,98,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(222,99,'_pst_hebat_pdf_id','65'),
(223,99,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(224,100,'_menu_item_type','custom'),
(225,100,'_menu_item_menu_item_parent','0'),
(226,100,'_menu_item_object_id','100'),
(227,100,'_menu_item_object','custom'),
(228,100,'_menu_item_target',''),
(229,100,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(230,100,'_menu_item_xfn',''),
(231,100,'_menu_item_url','/gallery/'),
(232,101,'_menu_item_type','custom'),
(233,101,'_menu_item_menu_item_parent','0'),
(234,101,'_menu_item_object_id','101'),
(235,101,'_menu_item_object','custom'),
(236,101,'_menu_item_target',''),
(237,101,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(238,101,'_menu_item_xfn',''),
(239,101,'_menu_item_url','/contact/'),
(240,102,'_menu_item_type','taxonomy'),
(241,102,'_menu_item_menu_item_parent','0'),
(242,102,'_menu_item_object_id','30'),
(243,102,'_menu_item_object','category'),
(244,102,'_menu_item_target',''),
(245,102,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(246,102,'_menu_item_xfn',''),
(247,102,'_menu_item_url',''),
(248,103,'_menu_item_type','taxonomy'),
(249,103,'_menu_item_menu_item_parent','0'),
(250,103,'_menu_item_object_id','6'),
(251,103,'_menu_item_object','category'),
(252,103,'_menu_item_target',''),
(253,103,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
(254,103,'_menu_item_xfn',''),
(255,103,'_menu_item_url',''),
(276,110,'_pst_hebat_pdf_id','65'),
(277,110,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(278,111,'_pst_hebat_pdf_id','65'),
(279,111,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(280,112,'_pst_hebat_pdf_id','0'),
(281,112,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/PST-STD-EL1.3-GEN-01-R0-Manajemen-Risiko.pdf'),
(282,113,'_pst_hebat_pdf_id','65'),
(283,113,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(284,104,'_pst_hebat_pdf_id','65'),
(285,104,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(286,105,'_pst_hebat_pdf_id','65'),
(287,105,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(288,106,'_pst_hebat_pdf_id','65'),
(289,106,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(290,107,'_pst_hebat_pdf_id','65'),
(291,107,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(292,108,'_pst_hebat_pdf_id','65'),
(293,108,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(294,109,'_pst_hebat_pdf_id','65'),
(295,109,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(296,69,'_pst_hebat_pdf_id','65'),
(297,69,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(298,70,'_pst_hebat_pdf_id','65'),
(299,70,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(300,71,'_pst_hebat_pdf_id','65'),
(301,71,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(302,68,'_pst_hebat_pdf_id','65'),
(303,68,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(304,67,'_pst_hebat_pdf_id','65'),
(305,67,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(306,35,'_pst_hebat_pdf_id','65'),
(307,35,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(308,34,'_pst_hebat_pdf_id','65'),
(309,34,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(310,33,'_pst_hebat_pdf_id','65'),
(311,33,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(312,32,'_pst_hebat_pdf_id','65'),
(313,32,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(314,30,'_pst_hebat_pdf_id','65'),
(315,30,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(316,31,'_pst_hebat_pdf_id','65'),
(317,31,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(318,29,'_pst_hebat_pdf_id','65'),
(319,29,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf'),
(320,114,'_wp_trash_meta_status','publish'),
(321,114,'_wp_trash_meta_time','1781245059'),
(322,115,'_wp_trash_meta_status','publish'),
(323,115,'_wp_trash_meta_time','1781245067'),
(324,116,'_edit_lock','1781245317:1'),
(325,116,'_wp_trash_meta_status','publish'),
(326,116,'_wp_trash_meta_time','1781245329'),
(327,117,'_edit_lock','1781245490:1'),
(328,117,'_wp_trash_meta_status','publish'),
(329,117,'_wp_trash_meta_time','1781245524'),
(330,118,'_edit_lock','1781245630:1'),
(331,118,'_wp_trash_meta_status','publish'),
(332,118,'_wp_trash_meta_time','1781245633'),
(333,119,'_wp_trash_meta_status','publish'),
(334,119,'_wp_trash_meta_time','1781245642'),
(335,120,'_edit_lock','1781246049:1'),
(336,120,'_wp_trash_meta_status','publish'),
(337,120,'_wp_trash_meta_time','1781246096'),
(338,121,'_wp_trash_meta_status','publish'),
(339,121,'_wp_trash_meta_time','1781246130'),
(340,122,'_edit_lock','1781246457:1'),
(341,122,'_wp_trash_meta_status','publish'),
(342,122,'_wp_trash_meta_time','1781246464'),
(343,123,'_wp_trash_meta_status','publish'),
(344,123,'_wp_trash_meta_time','1781246675'),
(345,112,'_edit_lock','1781249168:1'),
(346,112,'_edit_last','1'),
(347,126,'_edit_lock','1781249229:1'),
(348,126,'_wp_trash_meta_status','publish'),
(349,126,'_wp_trash_meta_time','1781249246'),
(352,127,'_wp_trash_meta_status','publish'),
(353,127,'_wp_trash_meta_time','1781250684'),
(354,128,'_wp_attached_file','2026/06/Screenshot_20260612_150013-1.png'),
(355,128,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1547;s:6:\"height\";i:690;s:4:\"file\";s:40:\"2026/06/Screenshot_20260612_150013-1.png\";s:8:\"filesize\";i:2415252;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:40:\"Screenshot_20260612_150013-1-300x134.png\";s:5:\"width\";i:300;s:6:\"height\";i:134;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:102906;}s:5:\"large\";a:5:{s:4:\"file\";s:41:\"Screenshot_20260612_150013-1-1024x457.png\";s:5:\"width\";i:1024;s:6:\"height\";i:457;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1030548;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"Screenshot_20260612_150013-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:55535;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:40:\"Screenshot_20260612_150013-1-768x343.png\";s:5:\"width\";i:768;s:6:\"height\";i:343;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:606566;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:41:\"Screenshot_20260612_150013-1-1536x685.png\";s:5:\"width\";i:1536;s:6:\"height\";i:685;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2132615;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(356,129,'_wp_trash_meta_status','publish'),
(357,129,'_wp_trash_meta_time','1781251235'),
(360,132,'_wp_attached_file','2026/06/WhatsApp-Image-2026-05-06-at-07.39.15.jpeg'),
(361,132,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:1162;s:4:\"file\";s:50:\"2026/06/WhatsApp-Image-2026-05-06-at-07.39.15.jpeg\";s:8:\"filesize\";i:346106;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2026-05-06-at-07.39.15-300x218.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:218;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23576;}s:5:\"large\";a:5:{s:4:\"file\";s:51:\"WhatsApp-Image-2026-05-06-at-07.39.15-1024x744.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:744;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:192514;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2026-05-06-at-07.39.15-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9175;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2026-05-06-at-07.39.15-768x558.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:558;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:119436;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2026-05-06-at-07.39.15-1536x1116.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1116;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:361035;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(362,134,'_edit_lock','1781252748:1'),
(363,134,'_wp_trash_meta_status','publish'),
(364,134,'_wp_trash_meta_time','1781252778'),
(365,138,'_edit_lock','1781255083:1'),
(366,138,'_wp_trash_meta_status','publish'),
(367,138,'_wp_trash_meta_time','1781255133'),
(368,139,'_edit_lock','1781255263:1'),
(369,139,'_wp_trash_meta_status','publish'),
(370,139,'_wp_trash_meta_time','1781255263'),
(371,141,'_wp_attached_file','2026/06/WhatsApp-Image-2026-05-11-at-15.27.40.jpeg'),
(372,141,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:1063;s:4:\"file\";s:50:\"2026/06/WhatsApp-Image-2026-05-11-at-15.27.40.jpeg\";s:8:\"filesize\";i:357529;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2026-05-11-at-15.27.40-300x199.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21551;}s:5:\"large\";a:5:{s:4:\"file\";s:51:\"WhatsApp-Image-2026-05-11-at-15.27.40-1024x680.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:132088;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2026-05-11-at-15.27.40-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9447;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2026-05-11-at-15.27.40-768x510.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:88521;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2026-05-11-at-15.27.40-1536x1020.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1020;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:223945;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(373,142,'_wp_attached_file','2026/06/WhatsApp-Image-2026-05-29-at-08.05.14.jpeg'),
(374,142,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1599;s:6:\"height\";i:1200;s:4:\"file\";s:50:\"2026/06/WhatsApp-Image-2026-05-29-at-08.05.14.jpeg\";s:8:\"filesize\";i:296263;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2026-05-29-at-08.05.14-300x225.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20765;}s:5:\"large\";a:5:{s:4:\"file\";s:51:\"WhatsApp-Image-2026-05-29-at-08.05.14-1024x768.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:165510;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2026-05-29-at-08.05.14-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8303;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:50:\"WhatsApp-Image-2026-05-29-at-08.05.14-768x576.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:103501;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:52:\"WhatsApp-Image-2026-05-29-at-08.05.14-1536x1153.jpeg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:314183;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}}'),
(375,143,'_wp_attached_file','2026/06/DJI_0033_1-scaled.jpg'),
(376,143,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:29:\"2026/06/DJI_0033_1-scaled.jpg\";s:8:\"filesize\";i:734412;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"DJI_0033_1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15436;}s:5:\"large\";a:5:{s:4:\"file\";s:23:\"DJI_0033_1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:146608;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"DJI_0033_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6497;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"DJI_0033_1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:85548;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:24:\"DJI_0033_1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:303380;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:24:\"DJI_0033_1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:502628;}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:3:\"6.3\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:7:\"FC6310S\";s:7:\"caption\";s:24:\"DCIM101MEDIADJI_0033.JPG\";s:17:\"created_timestamp\";s:10:\"1718529226\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"8.8\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:8:\"0.004166\";s:5:\"title\";s:24:\"DCIM101MEDIADJI_0033.JPG\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:3:\"alt\";s:0:\"\";}s:14:\"original_image\";s:14:\"DJI_0033_1.jpg\";}'),
(377,144,'_edit_last','1'),
(378,144,'_edit_lock','1781339403:1'),
(379,145,'_wp_attached_file','2026/06/Paket-1_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf'),
(380,145,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:2840203;}'),
(385,144,'_pst_hebat_pdf_id','145'),
(386,144,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/Paket-1_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf'),
(389,148,'_edit_last','1'),
(390,148,'_edit_lock','1781339432:1'),
(393,150,'_edit_last','1'),
(394,150,'_edit_lock','1781339439:1'),
(397,152,'_edit_last','1'),
(398,152,'_edit_lock','1781339448:1'),
(401,154,'_edit_last','1'),
(402,154,'_edit_lock','1781343985:1'),
(405,156,'_edit_last','1'),
(406,156,'_edit_lock','1781339484:1'),
(413,156,'_wp_old_slug','mater-hse-indeks'),
(414,160,'_edit_last','1'),
(415,160,'_edit_lock','1781339499:1'),
(418,162,'_edit_last','1'),
(419,162,'_edit_lock','1781343506:1'),
(422,164,'_edit_last','1'),
(423,164,'_edit_lock','1781343482:1'),
(426,166,'_edit_last','1'),
(427,166,'_edit_lock','1781343460:1'),
(430,168,'_edit_last','1'),
(431,168,'_edit_lock','1781343410:1'),
(434,170,'_edit_last','1'),
(435,170,'_edit_lock','1781343366:1'),
(438,172,'_wp_trash_meta_status','publish'),
(439,172,'_wp_trash_meta_time','1781339724'),
(440,173,'_wp_attached_file','2026/06/f.Materi-Isolasi-Energi-Berbahaya-LOTO.pdf'),
(441,173,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:6807115;}'),
(442,174,'_wp_attached_file','2026/06/Paket-2_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf'),
(443,174,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:2856515;}'),
(444,175,'_wp_attached_file','2026/06/Paket-3_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf'),
(445,175,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:2845413;}'),
(446,176,'_wp_attached_file','2026/06/TRAINING-MHU-Investigasi-Kecelakaan.pdf'),
(447,176,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:2653185;}'),
(448,177,'_wp_attached_file','2026/06/1.-Training-Pengelolaan-LB3-PST-LGGN-Format-HO.pdf'),
(449,177,'_wp_attachment_metadata','a:1:{s:8:\"filesize\";i:6128261;}'),
(452,170,'_pst_hebat_pdf_id','173'),
(453,170,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/f.Materi-Isolasi-Energi-Berbahaya-LOTO.pdf'),
(456,168,'_pst_hebat_pdf_id','145'),
(457,168,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/Paket-1_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf'),
(462,166,'_pst_hebat_pdf_id','174'),
(463,166,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/Paket-2_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf'),
(468,164,'_pst_hebat_pdf_id','175'),
(469,164,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/Paket-3_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf'),
(474,162,'_pst_hebat_pdf_id','176'),
(475,162,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/TRAINING-MHU-Investigasi-Kecelakaan.pdf'),
(480,154,'_pst_hebat_pdf_id','177'),
(481,154,'_pst_hebat_pdf_url','https://shemahakam.com/wp-content/uploads/2026/06/1.-Training-Pengelolaan-LB3-PST-LGGN-Format-HO.pdf'),
(484,178,'_edit_lock','1781407474:1'),
(485,178,'_wp_trash_meta_status','auto-draft'),
(486,178,'_wp_trash_meta_time','1781407487'),
(487,144,'_wp_trash_meta_status','publish'),
(488,144,'_wp_trash_meta_time','1781407612'),
(489,144,'_wp_desired_post_slug','materi-paket-1-kplh');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES
(3,1,'2026-06-11 04:50:50','2026-06-11 04:50:50','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8080.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','publish','closed','open','','privacy-policy','','','2026-06-11 16:13:21','2026-06-11 09:13:21','',0,'http://localhost:8080/?page_id=3',0,'page','',0),
(4,0,'2026-06-11 11:50:54','2026-06-11 04:50:54','Welcome to our site.','Home','','publish','closed','closed','','home','','','2026-06-11 11:50:54','2026-06-11 04:50:54','',0,'http://localhost:8080/home/',0,'page','',0),
(5,0,'2026-06-11 11:50:54','2026-06-11 04:50:54','About us page content.','About','','publish','closed','closed','','about','','','2026-06-11 11:50:54','2026-06-11 04:50:54','',0,'http://localhost:8080/about/',0,'page','',0),
(6,0,'2026-06-11 11:50:54','2026-06-11 04:50:54','Contact us page.','Contact','','publish','closed','closed','','contact','','','2026-06-11 11:50:54','2026-06-11 04:50:54','',0,'http://localhost:8080/contact/',0,'page','',0),
(12,0,'2026-06-11 12:57:50','2026-06-11 05:57:50','Dokumentasi dan informasi terkait MEA (Mining Environmental Administration).','MEA','','trash','closed','closed','','mea__trashed','','','2026-06-11 16:04:22','2026-06-11 09:04:22','',0,'https://shemahakam.com/mea/',0,'page','',0),
(13,0,'2026-06-11 12:57:50','2026-06-11 05:57:50','Informasi terkait Administrasi Lingkungan dalam kerangka MEA.','Administrasi Lingkungan','','trash','closed','closed','','administrasi-lingkungan__trashed','','','2026-06-11 16:04:30','2026-06-11 09:04:30','',12,'https://shemahakam.com/mea/administrasi-lingkungan/',0,'page','',0),
(14,0,'2026-06-11 12:57:51','2026-06-11 05:57:51','Informasi terkait Pengelolaan & Pemantauan Lingkungan dalam kerangka MEA.','Pengelolaan & Pemantauan Lingkungan','','trash','closed','closed','','pengelolaan-pemantauan-lingkungan__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',12,'https://shemahakam.com/mea/pengelolaan-pemantauan-lingkungan/',0,'page','',0),
(15,0,'2026-06-11 12:57:51','2026-06-11 05:57:51','Informasi terkait Manajemen Energi dalam kerangka MEA.','Manajemen Energi','','trash','closed','closed','','manajemen-energi__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',12,'https://shemahakam.com/mea/manajemen-energi/',0,'page','',0),
(16,0,'2026-06-11 12:57:51','2026-06-11 05:57:51','Informasi terkait Evaluasi Pengelolaan Lingkungan dalam kerangka MEA.','Evaluasi Pengelolaan Lingkungan','','trash','closed','closed','','evaluasi-pengelolaan-lingkungan__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',12,'https://shemahakam.com/mea/evaluasi-pengelolaan-lingkungan/',0,'page','',0),
(17,0,'2026-06-11 12:57:51','2026-06-11 05:57:51','Sistem Manajemen Keselamatan Pertambangan Minerba — 7 elemen utama.','SMKP MINERBA','','trash','closed','closed','','smkp-minerba__trashed','','','2026-06-11 16:04:27','2026-06-11 09:04:27','',0,'https://shemahakam.com/smkp-minerba/',0,'page','',0),
(18,0,'2026-06-11 12:57:52','2026-06-11 05:57:52','Informasi terkait elemen SMKP MINERBA: Kebijakan.','Kebijakan','','trash','closed','closed','','kebijakan__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',17,'https://shemahakam.com/smkp-minerba/kebijakan/',0,'page','',0),
(19,0,'2026-06-11 12:57:52','2026-06-11 05:57:52','Informasi terkait elemen SMKP MINERBA: Perencanaan.','Perencanaan','','trash','closed','closed','','perencanaan__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',17,'https://shemahakam.com/smkp-minerba/perencanaan/',0,'page','',0),
(20,0,'2026-06-11 12:57:52','2026-06-11 05:57:52','Informasi terkait elemen SMKP MINERBA: Organisasi dan Personil.','Organisasi dan Personil','','trash','closed','closed','','organisasi-dan-personil__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',17,'https://shemahakam.com/smkp-minerba/organisasi-dan-personil/',0,'page','',0),
(21,0,'2026-06-11 12:57:53','2026-06-11 05:57:53','Informasi terkait elemen SMKP MINERBA: Implementasi.','Implementasi','','trash','closed','closed','','implementasi__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',17,'https://shemahakam.com/smkp-minerba/implementasi/',0,'page','',0),
(22,0,'2026-06-11 12:57:53','2026-06-11 05:57:53','Informasi terkait elemen SMKP MINERBA: Evaluasi & FU.','Evaluasi & FU','','trash','closed','closed','','evaluasi-fu__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',17,'https://shemahakam.com/smkp-minerba/evaluasi-fu/',0,'page','',0),
(23,0,'2026-06-11 12:57:53','2026-06-11 05:57:53','Informasi terkait elemen SMKP MINERBA: Dokumentasi.','Dokumentasi','','trash','closed','closed','','dokumentasi__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',17,'https://shemahakam.com/smkp-minerba/dokumentasi/',0,'page','',0),
(24,0,'2026-06-11 12:57:54','2026-06-11 05:57:54','Informasi terkait elemen SMKP MINERBA: Tinjauan Manajemen.','Tinjauan Manajemen','','trash','closed','closed','','tinjauan-manajemen__trashed','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',17,'https://shemahakam.com/smkp-minerba/tinjauan-manajemen/',0,'page','',0),
(29,0,'2026-06-11 12:57:55','2026-06-11 05:57:55','Limbah Bahan Berbahaya dan Beracun (B3) dari kegiatan pertambangan wajib dikelola sesuai regulasi yang berlaku. Mulai dari identifikasi, pengemasan, penyimpanan sementara, pengangkutan, hingga pengolahan akhir. Pengelolaan limbah B3 yang tepat mencegah pencemaran lingkungan dan sanksi hukum bagi perusahaan tambang.','Pengelolaan Limbah B3 di Sektor Pertambangan','','publish','open','open','','pengelolaan-limbah-b3-di-sektor-pertambangan','','','2026-06-11 12:57:55','2026-06-11 05:57:55','',0,'https://shemahakam.com/pengelolaan-limbah-b3-di-sektor-pertambangan/',0,'post','',0),
(30,0,'2026-06-11 12:58:24','2026-06-11 05:58:24','Tim K3 melaksanakan inspeksi rutin di area penambangan untuk memastikan seluruh peralatan dan prosedur operasional sesuai standar keselamatan. Inspeksi mencakup pemeriksaan alat berat, jalur evakuasi, dan kelengkapan APD para pekerja.','Inspeksi K3 Rutin di Area Penambangan','','publish','open','open','','inspeksi-k3-rutin-di-area-penambangan','','','2026-06-11 12:58:24','2026-06-11 05:58:24','',0,'https://shemahakam.com/inspeksi-k3-rutin-di-area-penambangan/',0,'post','',0),
(31,0,'2026-06-11 12:58:24','2026-06-11 05:58:24','Kegiatan sosialisasi SMKP Minerba diadakan untuk meningkatkan pemahaman seluruh karyawan tentang Sistem Manajemen Keselamatan Pertambangan. Acara dihadiri oleh manajemen, staff, dan operator lapangan.','Sosialisasi SMKP Minerba kepada Seluruh Karyawan','','publish','open','open','','sosialisasi-smkp-minerba-kepada-seluruh-karyawan','','','2026-06-11 12:58:24','2026-06-11 05:58:24','',0,'https://shemahakam.com/sosialisasi-smkp-minerba-kepada-seluruh-karyawan/',0,'post','',0),
(32,0,'2026-06-11 12:58:25','2026-06-11 05:58:25','Pelatihan tanggap darurat dilaksanakan secara berkala untuk memastikan kesiapan pekerja dalam menghadapi situasi darurat seperti kebakaran, gempa, dan tumpahan bahan kimia.','Pelatihan Tanggap Darurat untuk Pekerja Tambang','','publish','open','open','','pelatihan-tanggap-darurat-untuk-pekerja-tambang','','','2026-06-11 12:58:25','2026-06-11 05:58:25','',0,'https://shemahakam.com/pelatihan-tanggap-darurat-untuk-pekerja-tambang/',0,'post','',0),
(33,0,'2026-06-11 12:58:42','2026-06-11 05:58:42','Tim K3 melaksanakan inspeksi rutin di area penambangan untuk memastikan seluruh peralatan dan prosedur operasional sesuai standar keselamatan. Inspeksi mencakup pemeriksaan alat berat, jalur evakuasi, dan kelengkapan APD para pekerja.','Inspeksi K3 Rutin di Area Penambangan','','publish','open','open','','inspeksi-k3-rutin-di-area-penambangan-2','','','2026-06-11 12:58:42','2026-06-11 05:58:42','',0,'https://shemahakam.com/inspeksi-k3-rutin-di-area-penambangan-2/',0,'post','',0),
(34,0,'2026-06-11 12:58:43','2026-06-11 05:58:43','Kegiatan sosialisasi SMKP Minerba diadakan untuk meningkatkan pemahaman seluruh karyawan tentang Sistem Manajemen Keselamatan Pertambangan. Acara dihadiri oleh manajemen, staff, dan operator lapangan.','Sosialisasi SMKP Minerba kepada Seluruh Karyawan','','publish','open','open','','sosialisasi-smkp-minerba-kepada-seluruh-karyawan-2','','','2026-06-11 12:58:43','2026-06-11 05:58:43','',0,'https://shemahakam.com/sosialisasi-smkp-minerba-kepada-seluruh-karyawan-2/',0,'post','',0),
(35,0,'2026-06-11 12:58:44','2026-06-11 05:58:44','Pelatihan tanggap darurat dilaksanakan secara berkala untuk memastikan kesiapan pekerja dalam menghadapi situasi darurat seperti kebakaran, gempa, dan tumpahan bahan kimia.','Pelatihan Tanggap Darurat untuk Pekerja Tambang','','publish','open','open','','pelatihan-tanggap-darurat-untuk-pekerja-tambang-2','','','2026-06-11 12:58:44','2026-06-11 05:58:44','',0,'https://shemahakam.com/pelatihan-tanggap-darurat-untuk-pekerja-tambang-2/',0,'post','',0),
(36,0,'2026-06-11 13:00:42','2026-06-11 06:00:42','','Operasi Tambang','Penambangan batubara di area konsesi PKP2B dengan metode open pit.','publish','closed','closed','','operasi-tambang','','','2026-06-11 13:00:42','2026-06-11 06:00:42','',0,'https://shemahakam.com/gallery/operasi-tambang/',0,'gallery','',0),
(38,0,'2026-06-11 13:00:43','2026-06-11 06:00:43','','Alat Berat','Unit hauling dan excavator beroperasi di front penambangan.','publish','closed','closed','','alat-berat','','','2026-06-11 13:00:43','2026-06-11 06:00:43','',0,'https://shemahakam.com/gallery/alat-berat/',0,'gallery','',0),
(40,0,'2026-06-11 13:00:44','2026-06-11 06:00:44','','Inspeksi K3','Tim K3 melaksanakan inspeksi rutin kelengkapan APD dan alat berat.','publish','closed','closed','','inspeksi-k3','','','2026-06-11 13:00:44','2026-06-11 06:00:44','',0,'https://shemahakam.com/gallery/inspeksi-k3/',0,'gallery','',0),
(41,0,'2026-06-11 13:00:45','2026-06-11 06:00:45','','Site Tambang','Pemandangan area tambang dari elevated viewing point.','publish','closed','closed','','site-tambang','','','2026-06-11 13:00:45','2026-06-11 06:00:45','',0,'https://shemahakam.com/gallery/site-tambang/',0,'gallery','',0),
(42,0,'2026-06-11 13:00:45','2026-06-11 06:00:45','','Operasi Pengeboran','Kegiatan pengeboran eksplorasi untuk pemetaan seam batubara.','publish','closed','closed','','operasi-pengeboran','','','2026-06-11 13:00:45','2026-06-11 06:00:45','',0,'https://shemahakam.com/gallery/operasi-pengeboran/',0,'gallery','',0),
(44,0,'2026-06-11 13:00:46','2026-06-11 06:00:46','','Lanskap Tambang','Lanskap area reklamasi pasca-tambang yang telah direvegetasi.','publish','closed','closed','','lanskap-tambang','','','2026-06-11 13:00:46','2026-06-11 06:00:46','',0,'https://shemahakam.com/gallery/lanskap-tambang/',0,'gallery','',0),
(45,0,'2026-06-11 13:00:46','2026-06-11 06:00:46','','mining-ops-6','','inherit','open','closed','','mining-ops-6','','','2026-06-11 13:00:46','2026-06-11 06:00:46','',44,'https://shemahakam.com/wp-content/uploads/2026/06/mining-ops-6.jpg',0,'attachment','image/jpeg',0),
(46,0,'2026-06-11 13:01:01','2026-06-11 06:01:01','','mining-ops-7','','inherit','open','closed','','mining-ops-7','','','2026-06-11 13:01:01','2026-06-11 06:01:01','',40,'https://shemahakam.com/wp-content/uploads/2026/06/mining-ops-7.jpg',0,'attachment','image/jpeg',0),
(50,0,'2026-06-11 13:02:34','2026-06-11 06:02:34','','mining-ops-1','','inherit','open','closed','','mining-ops-1-2','','','2026-06-11 13:02:34','2026-06-11 06:02:34','',36,'https://shemahakam.com/wp-content/uploads/2026/06/mining-ops-1-1.jpg',0,'attachment','image/jpeg',0),
(57,0,'2026-06-11 14:38:14','2026-06-11 07:38:14','','mining-ops-2','','inherit','open','closed','','mining-ops-2-3','','','2026-06-11 14:38:14','2026-06-11 07:38:14','',0,'https://shemahakam.com/wp-content/uploads/2026/06/mining-ops-2-2.jpg',0,'attachment','image/jpeg',0),
(60,0,'2026-06-11 14:38:18','2026-06-11 07:38:18','','mining-ops-7','','inherit','open','closed','','mining-ops-7-4','','','2026-06-11 14:38:18','2026-06-11 07:38:18','',0,'https://shemahakam.com/wp-content/uploads/2026/06/mining-ops-7-3.jpg',0,'attachment','image/jpeg',0),
(61,1,'2026-06-11 14:39:27','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2026-06-11 14:39:27','0000-00-00 00:00:00','',0,'https://shemahakam.com/?p=61',0,'post','',0),
(62,1,'2026-06-11 14:56:40','2026-06-11 07:56:40','{\n    \"blogname\": {\n        \"value\": \"PST Hebat\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-11 07:56:39\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Portal K3, Lingkungan & Operasional Tadmbang\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-11 07:56:39\"\n    }\n}','','','trash','closed','closed','','ad642c5b-6049-4cec-92ee-4482451db7cd','','','2026-06-11 14:56:40','2026-06-11 07:56:40','',0,'https://shemahakam.com/?p=62',0,'customize_changeset','',0),
(63,1,'2026-06-11 14:56:49','2026-06-11 07:56:49','{\n    \"blogdescription\": {\n        \"value\": \"Portal K3, Lingkungan & Operasional Tambang\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-11 07:56:49\"\n    }\n}','','','trash','closed','closed','','0dba68f1-9c86-4364-ad18-2e14eab748f5','','','2026-06-11 14:56:49','2026-06-11 07:56:49','',0,'https://shemahakam.com/0dba68f1-9c86-4364-ad18-2e14eab748f5/',0,'customize_changeset','',0),
(64,1,'2026-06-11 15:37:45','0000-00-00 00:00:00','{\n    \"pst-hebat::hero_title\": {\n        \"value\": \"Portal K3, Lingkungan,<br><span class=\\\"gradient-text\\\">dan Operasional</span><br>Tambang\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-11 08:37:45\"\n    }\n}','','','auto-draft','closed','closed','','5ec91488-7cd5-4cc7-9d28-60ae367abdcb','','','2026-06-11 15:37:45','0000-00-00 00:00:00','',0,'https://shemahakam.com/?p=64',0,'customize_changeset','',0),
(65,0,'2026-06-11 15:47:01','2026-06-11 08:47:01','','sample','','inherit','open','closed','','sample','','','2026-06-11 15:47:01','2026-06-11 08:47:01','',0,'https://shemahakam.com/wp-content/uploads/2026/06/sample.pdf',0,'attachment','application/pdf',0),
(66,1,'2026-06-11 15:49:55','2026-06-11 08:49:55','{\n    \"pst-hebat::navbar_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-11 08:49:55\"\n    },\n    \"pst-hebat::navbar_tagline\": {\n        \"value\": \"Hebat\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-11 08:49:55\"\n    }\n}','','','trash','closed','closed','','8a068f38-6162-4934-88bb-8677f0a5ab06','','','2026-06-11 15:49:55','2026-06-11 08:49:55','',0,'https://shemahakam.com/8a068f38-6162-4934-88bb-8677f0a5ab06/',0,'customize_changeset','',0),
(67,0,'2026-06-11 15:52:09','2026-06-11 08:52:09','<p>Operasi pengeboran minyak dan gas bumi (migas) merupakan salah satu aktivitas dengan risiko tinggi di sektor energi. Risiko yang dihadapi meliputi ledakan (blowout), kebocoran gas beracun (H₂S), kebakaran, serta pencemaran lingkungan. Oleh karena itu, penerapan prosedur keselamatan yang ketat dan komprehensif menjadi mutlak diperlukan.</p>\n\n<h3>Prinsip Dasar Keselamatan Pengeboran</h3>\n<p>Setiap operasi pengeboran wajib mengacu pada prinsip <strong>Well Integrity Management</strong> yang mencakup:</p>\n<ul>\n<li><strong>Barrier Philosophy</strong> — Penerapan barrier ganda (primary & secondary) untuk mencegah uncontrolled release.</li>\n<li><strong>Risk Assessment</strong> — Identifikasi bahaya dan penilaian risiko sebelum setiap fase pengeboran melalui proses Hazard Identification and Risk Assessment (HIRA).</li>\n<li><strong>Stop Work Authority</strong> — Setiap pekerja memiliki hak dan kewajiban untuk menghentikan pekerjaan jika teridentifikasi kondisi tidak aman.</li>\n</ul>\n\n<h3>Perangkat Keselamatan Utama</h3>\n<p>Beberapa perangkat keselamatan kritis yang wajib terpasang dan teruji pada rig pengeboran:</p>\n<ul>\n<li><strong>Blowout Preventer (BOP):</strong> Sistem katup hidraulik untuk menutup sumur dalam kondisi darurat. Harus diuji fungsi setiap 14 hari sesuai API Standard 53.</li>\n<li><strong>Gas Detection System:</strong> Sensor H₂S, LEL, dan O₂ yang terintegrasi dengan alarm dan sistem shutdown otomatis.</li>\n<li><strong>Emergency Shutdown System (ESD):</strong> Sistem yang secara otomatis menghentikan operasi saat parameter kritis terdeteksi.</li>\n<li><strong>Fire Suppression System:</strong> Sistem pemadam kebakaran otomatis di area kritis seperti mud pump, generator, dan wellhead.</li>\n</ul>\n\n<h3>Prosedur Sebelum Pengeboran</h3>\n<ol>\n<li>Review program pengeboran dan approval dari Kepala Teknik (KKKS).</li>\n<li>Toolbox meeting dengan seluruh kru rig — membahas prosedur, potensi bahaya, dan jalur evakuasi.</li>\n<li>Positive Material Identification (PMI) dan pressure test pada seluruh peralatan kritis.</li>\n<li>Simulasi respon darurat (fire drill, H₂S drill, abandon rig drill).</li>\n</ol>\n\n<h3>Manajemen Risiko Gas H₂S</h3>\n<p>Gas hidrogen sulfida (H₂S) adalah gas sangat beracun yang umum ditemukan di sumur migas. Konsentrasi 100 ppm dapat menyebabkan kematian dalam hitungan menit. Prosedur penanganan H₂S meliputi:</p>\n<ul>\n<li>Pemasangan fixed dan portable H₂S detector.</li>\n<li>Breathing apparatus (SCBA) tersedia di titik-titik strategis.</li>\n<li>Wind sock dan alarm H₂S di lokasi pengeboran.</li>\n<li>Pelatihan H₂S awareness bagi seluruh personel rig.</li>\n</ul>\n\n<blockquote><p>\"Safety is not a priority — it is a value. Priorities change, values do not.\" — Standar Operasi Migas</p></blockquote>\n\n<p>Penerapan prosedur keselamatan yang ketat bukan hanya melindungi nyawa pekerja, tetapi juga menjaga keberlangsungan operasi dan reputasi perusahaan.</p>','Prosedur Keselamatan Pengeboran Minyak dan Gas Bumi','Panduan lengkap prosedur keselamatan pengeboran migas mencakup BOP, gas detection, H₂S management, dan emergency shutdown system.','publish','open','open','','prosedur-keselamatan-pengeboran-minyak-dan-gas-bumi','','','2026-06-11 15:52:09','2026-06-11 08:52:09','',0,'https://shemahakam.com/prosedur-keselamatan-pengeboran-minyak-dan-gas-bumi/',0,'post','',0),
(68,0,'2026-06-11 15:52:53','2026-06-11 08:52:53','<p>Sistem Manajemen Keselamatan dan Kesehatan Kerja Pertambangan Mineral dan Batubara (SMKP Minerba) adalah kerangka kerja yang diwajibkan oleh Keputusan Menteri ESDM No. 1827 K/30/MEM/2018. Sistem ini menjadi fondasi budaya keselamatan di seluruh sektor pertambangan Indonesia.</p>\n\n<h3>Pilar Utama SMKP Minerba</h3>\n<p>SMKP Minerba terdiri dari tujuh elemen utama yang saling terintegrasi:</p>\n<ol>\n<li><strong>Kebijakan</strong> — Komitman tertulis dari pucuk pimpinan perusahaan terhadap K3 pertambangan.</li>\n<li><strong>Perencanaan</strong> — Identifikasi bahaya, penilaian risiko, dan penetapan sasaran K3.</li>\n<li><strong>Organisasi dan Personil</strong> — Struktur organisasi K3 yang jelas, termasuk pembentukan P2K3 dan penunjukan Kepala Teknik Tambang.</li>\n<li><strong>Implementasi</strong> — Pelaksanaan rencana K3 melalui SOP, pelatihan, dan pengendalian operasional.</li>\n<li><strong>Evaluasi</strong> — Audit internal, inspeksi, dan tinjauan manajemen secara berkala.</li>\n<li><strong>Dokumentasi</strong> — Pengelolaan dokumen dan rekaman K3 sesuai standar.</li>\n<li><strong>Peningkatan Berkelanjutan</strong> — Tindakan perbaikan dan pencegahan berdasarkan hasil evaluasi.</li>\n</ol>\n\n<h3>Manfaat Implementasi SMKP Minerba</h3>\n<ul>\n<li>Penurunan angka kecelakaan kerja hingga 60% berdasarkan data perusahaan yang telah menerapkan.</li>\n<li>Peningkatan efisiensi operasional melalui pengendalian risiko yang sistematis.</li>\n<li>Kepatuhan terhadap regulasi pemerintah dan menghindari sanksi administratif.</li>\n<li>Meningkatkan citra perusahaan di mata pemangku kepentingan dan masyarakat.</li>\n<li>Dasar untuk mencapai target Zero Accident di tempat kerja.</li>\n</ul>\n\n<h3>Tahapan Sertifikasi SMKP</h3>\n<p>Perusahaan tambang wajib mendapatkan sertifikasi SMKP Minerba dari Lembaga Sertifikasi yang ditunjuk. Tahapannya meliputi audit dokumen, audit lapangan, dan penetapan peringkat (Emas, Hijau, Biru, Merah, Hitam). Perusahaan dengan peringkat Emas mendapatkan insentif berupa pengurangan frekuensi pelaporan dan prioritas layanan perizinan.</p>\n\n<blockquote><p>“Keselamatan bukanlah segalanya, tetapi segalanya tanpa keselamatan adalah nihil.” — Motto SMKP Minerba</p></blockquote>','Sistem Manajemen K3 Pertambangan (SMKP Minerba) untuk Operasional Tambang yang Andal','Mengenal SMKP Minerba: tujuh pilar utama, manfaat implementasi, dan tahapan sertifikasi sistem manajemen K3 pertambangan.','publish','open','open','','sistem-manajemen-k3-pertambangan-smkp-minerba-untuk-operasional-tambang-yang-andal','','','2026-06-11 15:52:53','2026-06-11 08:52:53','',0,'https://shemahakam.com/sistem-manajemen-k3-pertambangan-smkp-minerba-untuk-operasional-tambang-yang-andal/',0,'post','',0),
(69,0,'2026-06-11 15:52:54','2026-06-11 08:52:54','<p>Limbah Bahan Berbahaya dan Beracun (B3) merupakan konsekuensi operasional yang tidak terhindarkan di sektor pertambangan dan migas. Pengelolaan limbah B3 yang tidak tepat dapat mengakibatkan pencemaran lingkungan, denda regulasi, dan risiko kesehatan masyarakat.</p>\n\n<h3>Klasifikasi Limbah B3</h3>\n<p>Berdasarkan PP No. 22 Tahun 2021, limbah B3 diklasifikasikan menjadi:</p>\n<ul>\n<li><strong>Limbah B3 dari sumber spesifik:</strong> Sludge IPAL, used oil, filter bekas, dan chemical waste dari proses produksi.</li>\n<li><strong>Limbah B3 dari sumber tidak spesifik:</strong> Aki bekas, lampu TL bekas, kemasan bekas B3, dan limbah elektronik.</li>\n<li><strong>Limbah B3 dari bahan kimia kedaluwarsa:</strong> Reagen laboratorium, katalis bekas, dan aditif yang telah melewati masa pakai.</li>\n</ul>\n\n<h3>Prinsip Pengelolaan Limbah B3</h3>\n<p>Pengelolaan limbah B3 di tambang dan fasilitas migas mengacu pada prinsip <strong>Reduce, Reuse, Recycle, Recovery, and Disposal</strong> (4R+D):</p>\n<ol>\n<li><strong>Reduction:</strong> Meminimalkan timbulan limbah melalui optimasi proses dan pemilihan bahan baku yang lebih ramah lingkungan.</li>\n<li><strong>Reuse:</strong> Penggunaan kembali material seperti pelarut bekas setelah proses recovery.</li>\n<li><strong>Recycle:</strong> Daur ulang used oil menjadi bahan bakar alternatif atau pelumas dasar.</li>\n<li><strong>Recovery:</strong> Pengambilan kembali nilai ekonomis dari limbah, seperti recovery logam dari katalis bekas.</li>\n<li><strong>Disposal:</strong> Penanganan akhir di fasilitas pengolahan limbah B3 yang berizin (TPS Limbah B3).</li>\n</ol>\n\n<h3>Persyaratan Penyimpanan</h3>\n<p>Tempat Penyimpanan Sementara (TPS) Limbah B3 harus memenuhi standar teknis:</p>\n<ul>\n<li>Bangunan kedap air dengan lantai beton dan saluran drainase tertutup.</li>\n<li>Sistem ventilasi yang memadai dan perlengkapan tanggap darurat tumpahan.</li>\n<li>Label dan simbol limbah B3 pada setiap kemasan sesuai standar.</li>\n<li>Manifest limbah B3 untuk setiap pengangkutan ke pihak ketiga yang berizin.</li>\n<li>Masa simpan maksimal 90 hari untuk limbah B3 kategori 1 dan 180 hari untuk kategori 2.</li>\n</ul>\n\n<h3>Inovasi Teknologi Pengelolaan</h3>\n<p>Beberapa teknologi terkini dalam pengelolaan limbah B3 di industri tambang dan migas meliputi bioremediasi untuk tanah terkontaminasi minyak, thermal desorption untuk sludge berminyak, dan solidifikasi/stabilisasi untuk limbah logam berat.</p>','Pengelolaan Limbah B3 di Sektor Pertambangan dan Migas','Panduan pengelolaan limbah B3 di tambang dan migas: klasifikasi, prinsip 4R+D, persyaratan TPS, dan teknologi pengolahan terkini.','publish','open','open','','pengelolaan-limbah-b3-di-sektor-pertambangan-dan-migas','','','2026-06-11 15:52:54','2026-06-11 08:52:54','',0,'https://shemahakam.com/pengelolaan-limbah-b3-di-sektor-pertambangan-dan-migas/',0,'post','',0),
(70,0,'2026-06-11 15:52:54','2026-06-11 08:52:54','<p>Inspeksi dan audit Keselamatan dan Kesehatan Kerja (K3) merupakan instrumen kunci dalam mengidentifikasi potensi bahaya, mengevaluasi efektivitas pengendalian risiko, dan memastikan kepatuhan terhadap regulasi di lingkungan pertambangan.</p>\n\n<h3>Perbedaan Inspeksi dan Audit K3</h3>\n<table style=\"width:100%;border-collapse:collapse;margin:16px 0;\">\n<tr style=\"background:#f0f4f8;\"><th style=\"padding:8px 12px;border:1px solid #d9e2ec;text-align:left;\">Aspek</th><th style=\"padding:8px 12px;border:1px solid #d9e2ec;text-align:left;\">Inspeksi</th><th style=\"padding:8px 12px;border:1px solid #d9e2ec;text-align:left;\">Audit</th></tr>\n<tr><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Fokus</td><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Kondisi fisik, perilaku pekerja</td><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Sistem manajemen, dokumentasi</td></tr>\n<tr><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Frekuensi</td><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Harian/mingguan</td><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Tahunan/semesteran</td></tr>\n<tr><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Pelaksana</td><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Pengawas, petugas K3</td><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Auditor internal/eksternal</td></tr>\n<tr><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Output</td><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Laporan temuan, rekomendasi</td><td style=\"padding:8px 12px;border:1px solid #d9e2ec;\">Laporan ketidaksesuaian, skor</td></tr>\n</table>\n\n<h3>Jenis Inspeksi K3 Tambang</h3>\n<ul>\n<li><strong>Inspeksi Rutin:</strong> Dilakukan oleh pengawas setiap shift sebelum operasi dimulai. Mencakup pengecekan alat berat, area pit, jalan tambang, dan fasilitas pendukung.</li>\n<li><strong>Inspeksi Berkala:</strong> Inspeksi menyeluruh setiap minggu/bulan yang melibatkan tim K3 dan manajemen.</li>\n<li><strong>Inspeksi Khusus:</strong> Dilakukan saat kondisi tertentu seperti cuaca ekstrem, perubahan metode kerja, atau setelah terjadi kecelakaan.</li>\n<li><strong>Inspeksi Peralatan Kritis:</strong> Focus pada alat berat, conveyor, sistem listrik, dan peralatan lifting yang memerlukan sertifikasi K3.</li>\n</ul>\n\n<h3>Metode Inspeksi Efektif</h3>\n<p>Metode yang umum digunakan meliputi <strong>Checklist Inspection</strong> untuk pengecekan sistematis, <strong>Behavioral Based Safety (BBS)</strong> untuk observasi perilaku pekerja, <strong>Job Safety Analysis (JSA)</strong> untuk evaluasi risiko setiap tugas, dan <strong>Hazard Reporting System</strong> sebagai platform pelaporan bahaya oleh seluruh pekerja.</p>\n\n<h3>Tindak Lanjut Temuan</h3>\n<p>Setiap temuan inspeksi dan audit harus dicatat, dianalisis akar penyebabnya (root cause analysis), dan ditindaklanjuti dengan rencana perbaikan yang jelas. Prinsip <strong>Open-Close Finding</strong> memastikan setiap temuan memiliki penanggung jawab, tenggat waktu, dan verifikasi penutupan.</p>','Inspeksi dan Audit K3: Mencegah Kecelakaan Kerja di Tambang','Panduan inspeksi dan audit K3 tambang: jenis inspeksi, metode efektif, perbedaan inspeksi vs audit, dan tindak lanjut temuan.','publish','open','open','','inspeksi-dan-audit-k3-mencegah-kecelakaan-kerja-di-tambang','','','2026-06-11 15:52:54','2026-06-11 08:52:54','',0,'https://shemahakam.com/inspeksi-dan-audit-k3-mencegah-kecelakaan-kerja-di-tambang/',0,'post','',0),
(71,0,'2026-06-11 15:52:54','2026-06-11 08:52:54','<p>Industri pertambangan merupakan salah satu sektor dengan konsumsi energi terbesar. Biaya energi dapat mencapai 30-40% dari total biaya operasional tambang. Oleh karena itu, manajemen energi yang efektif bukan hanya isu lingkungan tetapi juga strategi bisnis yang krusial.</p>\n\n<h3>Sistem Manajemen Energi (ISO 50001)</h3>\n<p>ISO 50001:2018 menyediakan kerangka kerja sistematis untuk pengelolaan energi yang mencakup:</p>\n<ul>\n<li><strong>Energy Policy:</strong> Komitman manajemen puncak terhadap efisiensi energi dan pengurangan emisi GRK.</li>\n<li><strong>Energy Baseline dan EnPI:</strong> Penetapan baseline konsumsi energi dan Energy Performance Indicators untuk setiap area operasi.</li>\n<li><strong>Energy Review:</strong> Identifikasi Significant Energy Uses (SEU) dan peluang penghematan energi.</li>\n<li><strong>Management Review:</strong> Evaluasi berkala terhadap kinerja energi dan efektivitas program efisiensi.</li>\n</ul>\n\n<h3>Strategi Efisiensi Energi di Tambang</h3>\n<ol>\n<li><strong>Optimasi Fleet Management:</strong> Penggunaan sistem dispatch berbasis AI untuk mengurangi idle time dan empty hauling. Penghematan 10-15% konsumsi BBM.</li>\n<li><strong>High-Efficiency Equipment:</strong> Penggantian motor listrik lama dengan motor efisiensi tinggi (IE3/IE4). Potensi penghematan 20-30% energi listrik.</li>\n<li><strong>Variable Frequency Drive (VFD):</strong> Pemasangan VFD pada conveyor, crusher, dan pompa untuk mengoptimalkan konsumsi energi sesuai beban aktual.</li>\n<li><strong>Energy Recovery Systems:</strong> Pemanfaatan regenerative braking pada haul truck dan conveyor downhill untuk menghasilkan listrik.</li>\n<li><strong>Solar Hybrid Solutions:</strong> Integrasi PLTS dengan genset diesel untuk tambang di area remote. Pengurangan konsumsi solar hingga 40%.</li>\n</ol>\n\n<h3>Monitoring dan Evaluasi</h3>\n<p>Penerapan sistem monitoring energi real-time (Energy Management Information System — EMIS) memungkinkan pelacakan konsumsi energi per area, per shift, dan per unit alat. Data ini menjadi dasar pengambilan keputusan untuk continuous improvement.</p>\n\n<h3>Manfaat Ekonomi dan Lingkungan</h3>\n<p>Program efisiensi energi yang terstruktur tidak hanya menurunkan biaya operasional tetapi juga mengurangi emisi karbon (CO₂), memenuhi target Nationally Determined Contribution (NDC) Indonesia, dan meningkatkan daya saing perusahaan di pasar global yang semakin peduli terhadap aspek ESG.</p>','Manajemen Energi dan Efisiensi Operasional di Industri Pertambangan','Strategi manajemen energi tambang: ISO 50001, efisiensi BBM dan listrik, monitoring real-time, dan manfaat ekonomi-lingkungan.','publish','open','open','','manajemen-energi-dan-efisiensi-operasional-di-industri-pertambangan','','','2026-06-11 15:52:54','2026-06-11 08:52:54','',0,'https://shemahakam.com/manajemen-energi-dan-efisiensi-operasional-di-industri-pertambangan/',0,'post','',0),
(72,0,'2026-06-11 16:00:00','2026-06-11 09:00:00','Pengelolaan administrasi lingkungan sesuai regulasi pertambangan yang berlaku, mencakup dokumentasi izin lingkungan, pelaporan, dan kepatuhan terhadap AMDAL.','Administrasi Lingkungan','','publish','open','open','','administrasi-lingkungan','','','2026-06-11 16:00:00','2026-06-11 09:00:00','',0,'https://shemahakam.com/administrasi-lingkungan/',0,'post','',0),
(73,0,'2026-06-11 16:00:01','2026-06-11 09:00:01','Sistem pengelolaan dan pemantauan lingkungan operasional tambang meliputi kualitas air, udara, dan tanah di area konsesi.','Pengelolaan & Pemantauan Lingkungan','','publish','open','open','','pengelolaan-pemantauan-lingkungan','','','2026-06-11 16:00:01','2026-06-11 09:00:01','',0,'https://shemahakam.com/pengelolaan-pemantauan-lingkungan/',0,'post','',0),
(74,0,'2026-06-11 16:00:02','2026-06-11 09:00:02','Program efisiensi dan manajemen energi dalam operasional tambang untuk mengurangi konsumsi bahan bakar dan emisi karbon.','Manajemen Energi','','publish','open','open','','manajemen-energi','','','2026-06-11 16:00:02','2026-06-11 09:00:02','',0,'https://shemahakam.com/manajemen-energi/',0,'post','',0),
(75,0,'2026-06-11 16:00:03','2026-06-11 09:00:03','Evaluasi berkala terhadap pengelolaan lingkungan untuk memastikan kepatuhan terhadap standar dan regulasi yang berlaku.','Evaluasi Pengelolaan Lingkungan','','publish','open','open','','evaluasi-pengelolaan-lingkungan','','','2026-06-11 16:00:03','2026-06-11 09:00:03','',0,'https://shemahakam.com/evaluasi-pengelolaan-lingkungan/',0,'post','',0),
(76,1,'2026-06-11 16:01:49','2026-06-11 09:01:49','Galeri kegiatan operasional pertambangan, keselamatan kerja, dan lingkungan.','Galeri','','publish','closed','closed','','gallery','','','2026-06-11 16:11:06','2026-06-11 09:11:06','',0,'https://shemahakam.com/gallery/',0,'page','',0),
(77,1,'2026-06-11 16:04:22','2026-06-11 09:04:22','Dokumentasi dan informasi terkait MEA (Mining Environmental Administration).','MEA','','inherit','closed','closed','','12-revision-v1','','','2026-06-11 16:04:22','2026-06-11 09:04:22','',12,'https://shemahakam.com/?p=77',0,'revision','',0),
(78,1,'2026-06-11 16:04:27','2026-06-11 09:04:27','Sistem Manajemen Keselamatan Pertambangan Minerba — 7 elemen utama.','SMKP MINERBA','','inherit','closed','closed','','17-revision-v1','','','2026-06-11 16:04:27','2026-06-11 09:04:27','',17,'https://shemahakam.com/?p=78',0,'revision','',0),
(79,1,'2026-06-11 16:04:30','2026-06-11 09:04:30','Informasi terkait Administrasi Lingkungan dalam kerangka MEA.','Administrasi Lingkungan','','inherit','closed','closed','','13-revision-v1','','','2026-06-11 16:04:30','2026-06-11 09:04:30','',13,'https://shemahakam.com/?p=79',0,'revision','',0),
(80,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait elemen SMKP MINERBA: Dokumentasi.','Dokumentasi','','inherit','closed','closed','','23-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',23,'https://shemahakam.com/?p=80',0,'revision','',0),
(81,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait elemen SMKP MINERBA: Evaluasi & FU.','Evaluasi & FU','','inherit','closed','closed','','22-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',22,'https://shemahakam.com/?p=81',0,'revision','',0),
(82,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait elemen SMKP MINERBA: Implementasi.','Implementasi','','inherit','closed','closed','','21-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',21,'https://shemahakam.com/?p=82',0,'revision','',0),
(83,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait elemen SMKP MINERBA: Kebijakan.','Kebijakan','','inherit','closed','closed','','18-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',18,'https://shemahakam.com/?p=83',0,'revision','',0),
(84,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait elemen SMKP MINERBA: Organisasi dan Personil.','Organisasi dan Personil','','inherit','closed','closed','','20-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',20,'https://shemahakam.com/?p=84',0,'revision','',0),
(85,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait elemen SMKP MINERBA: Perencanaan.','Perencanaan','','inherit','closed','closed','','19-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',19,'https://shemahakam.com/?p=85',0,'revision','',0),
(86,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait elemen SMKP MINERBA: Tinjauan Manajemen.','Tinjauan Manajemen','','inherit','closed','closed','','24-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',24,'https://shemahakam.com/?p=86',0,'revision','',0),
(87,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait Evaluasi Pengelolaan Lingkungan dalam kerangka MEA.','Evaluasi Pengelolaan Lingkungan','','inherit','closed','closed','','16-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',16,'https://shemahakam.com/?p=87',0,'revision','',0),
(88,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait Manajemen Energi dalam kerangka MEA.','Manajemen Energi','','inherit','closed','closed','','15-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',15,'https://shemahakam.com/?p=88',0,'revision','',0),
(89,1,'2026-06-11 16:04:43','2026-06-11 09:04:43','Informasi terkait Pengelolaan & Pemantauan Lingkungan dalam kerangka MEA.','Pengelolaan & Pemantauan Lingkungan','','inherit','closed','closed','','14-revision-v1','','','2026-06-11 16:04:43','2026-06-11 09:04:43','',14,'https://shemahakam.com/?p=89',0,'revision','',0),
(90,1,'2026-06-11 16:08:12','2026-06-11 09:08:12','Galeri kegiatan operasional pertambangan, keselamatan kerja, dan lingkungan.','Galeri','','inherit','closed','closed','','76-revision-v1','','','2026-06-11 16:08:12','2026-06-11 09:08:12','',76,'https://shemahakam.com/?p=90',0,'revision','',0),
(91,0,'2026-06-11 16:13:21','2026-06-11 09:13:21','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8080.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2026-06-11 16:13:21','2026-06-11 09:13:21','',3,'https://shemahakam.com/?p=91',0,'revision','',0),
(92,0,'2026-06-11 16:13:21','2026-06-11 09:13:21','<p>Terms of Service page content coming soon.</p>','Terms of Service','','publish','closed','closed','','terms','','','2026-06-11 16:13:21','2026-06-11 09:13:21','',0,'https://shemahakam.com/terms/',0,'page','',0),
(93,0,'2026-06-11 16:30:01','2026-06-11 09:30:01','Kebijakan K3 pertambangan merupakan komitmen tertulis dari pucuk pimpinan perusahaan dalam menerapkan Sistem Manajemen Keselamatan Pertambangan (SMKP) Minerba di seluruh area operasional.','Kebijakan','','publish','open','open','','kebijakan','','','2026-06-11 16:30:01','2026-06-11 09:30:01','',0,'https://shemahakam.com/kebijakan/',0,'post','',0),
(94,0,'2026-06-11 16:30:02','2026-06-11 09:30:02','Perencanaan K3 meliputi identifikasi bahaya, penilaian risiko, penetapan sasaran, program pengendalian, serta penyusunan rencana tanggap darurat di area tambang.','Perencanaan','','publish','open','open','','perencanaan','','','2026-06-11 16:30:02','2026-06-11 09:30:02','',0,'https://shemahakam.com/perencanaan/',0,'post','',0),
(95,0,'2026-06-11 16:30:03','2026-06-11 09:30:03','Struktur organisasi K3 yang jelas dengan personil bersertifikat dan kompeten di bidang keselamatan pertambangan sesuai peraturan yang berlaku.','Organisasi dan Personil','','publish','open','open','','organisasi-dan-personil','','','2026-06-11 16:30:03','2026-06-11 09:30:03','',0,'https://shemahakam.com/organisasi-dan-personil/',0,'post','',0),
(96,0,'2026-06-11 16:30:05','2026-06-11 09:30:05','Pelaksanaan SMKP Minerba mencakup prosedur operasional standar, pengendalian risiko, pelatihan pekerja, serta komunikasi K3 di seluruh level organisasi.','Implementasi','','publish','open','open','','implementasi','','','2026-06-11 16:30:05','2026-06-11 09:30:05','',0,'https://shemahakam.com/implementasi/',0,'post','',0),
(97,0,'2026-06-11 16:30:06','2026-06-11 09:30:06','Evaluasi dan tindak lanjut (FU) dilakukan melalui audit internal, inspeksi rutin, investigasi insiden, serta tinjauan manajemen secara periodik.','Evaluasi & FU','','publish','open','open','','evaluasi-fu','','','2026-06-11 16:30:06','2026-06-11 09:30:06','',0,'https://shemahakam.com/evaluasi-fu/',0,'post','',0),
(98,0,'2026-06-11 16:30:08','2026-06-11 09:30:08','Dokumentasi SMKP Minerba meliputi prosedur tertulis, rekaman kegiatan K3, laporan insiden, serta bukti kepatuhan terhadap regulasi pertambangan.','Dokumentasi','','publish','open','open','','dokumentasi','','','2026-06-11 16:30:08','2026-06-11 09:30:08','',0,'https://shemahakam.com/dokumentasi/',0,'post','',0),
(99,0,'2026-06-11 16:30:09','2026-06-11 09:30:09','Tinjauan manajemen dilakukan secara berkala untuk mengevaluasi efektivitas penerapan SMKP Minerba dan menetapkan perbaikan berkelanjutan.','Tinjauan Manajemen','','publish','open','open','','tinjauan-manajemen','','','2026-06-11 16:30:09','2026-06-11 09:30:09','',0,'https://shemahakam.com/tinjauan-manajemen/',0,'post','',0),
(100,0,'2026-06-12 09:30:06','2026-06-12 02:30:06','','Galeri','','publish','closed','closed','','galeri','','','2026-06-12 09:30:06','2026-06-12 02:30:06','',0,'https://shemahakam.com/galeri/',0,'nav_menu_item','',0),
(101,0,'2026-06-12 09:30:06','2026-06-12 02:30:06','','Kontak','','publish','closed','closed','','kontak','','','2026-06-12 09:30:06','2026-06-12 02:30:06','',0,'https://shemahakam.com/kontak/',2,'nav_menu_item','',0),
(102,0,'2026-06-12 09:30:10','2026-06-12 02:30:10',' ','','','publish','closed','closed','','102','','','2026-06-12 09:30:10','2026-06-12 02:30:10','',0,'https://shemahakam.com/102/',3,'nav_menu_item','',0),
(103,0,'2026-06-12 09:30:10','2026-06-12 02:30:10',' ','','','publish','closed','closed','','103','','','2026-06-12 09:30:10','2026-06-12 02:30:10','',0,'https://shemahakam.com/103/',4,'nav_menu_item','',0),
(104,0,'2026-06-12 09:30:39','2026-06-12 02:30:39','Panduan keselamatan komprehensif untuk operasi pengeboran minyak dan gas bumi, mencakup prosedur darurat, penggunaan APD, dan sistem tanggap darurat.','Prosedur Keselamatan Pengeboran Minyak dan Gas Bumi','','publish','open','open','','prosedur-keselamatan-pengeboran-minyak-dan-gas-bumi-2','','','2026-06-12 09:30:39','2026-06-12 02:30:39','',0,'https://shemahakam.com/prosedur-keselamatan-pengeboran-minyak-dan-gas-bumi-2/',0,'post','',0),
(105,0,'2026-06-12 09:30:39','2026-06-12 02:30:39','Panduan inspeksi K3 rutin dan audit keselamatan untuk mengidentifikasi bahaya, menilai risiko, dan mencegah kecelakaan kerja di area pertambangan.','Inspeksi dan Audit K3: Mencegah Kecelakaan Kerja di Tambang','','publish','open','open','','inspeksi-dan-audit-k3-mencegah-kecelakaan-kerja-di-tambang-2','','','2026-06-12 09:30:39','2026-06-12 02:30:39','',0,'https://shemahakam.com/inspeksi-dan-audit-k3-mencegah-kecelakaan-kerja-di-tambang-2/',0,'post','',0),
(106,0,'2026-06-12 09:30:39','2026-06-12 02:30:39','Laporan survei geologi rinci cekungan sedimentasi Kalimantan Timur termasuk stratigrafi, geologi struktur, dan analisis potensi sumber daya mineral.','Laporan Eksplorasi Geologi: Cekungan Kalimantan Timur','','publish','open','open','','laporan-eksplorasi-geologi-cekungan-kalimantan-timur','','','2026-06-12 09:30:39','2026-06-12 02:30:39','',0,'https://shemahakam.com/laporan-eksplorasi-geologi-cekungan-kalimantan-timur/',0,'post','',0),
(107,0,'2026-06-12 09:30:39','2026-06-12 02:30:39','Laporan teknis tentang teknologi penambangan dan pengolahan nikel laterit termasuk HPAL, RKEF, dan produksi feronikel.','Teknologi Penambangan Nikel Laterit','','publish','open','open','','teknologi-penambangan-nikel-laterit','','','2026-06-12 09:30:39','2026-06-12 02:30:39','',0,'https://shemahakam.com/teknologi-penambangan-nikel-laterit/',0,'post','',0),
(108,0,'2026-06-12 09:30:39','2026-06-12 02:30:39','Standar teknis dan praktik terbaik untuk operasi pengeboran lepas pantai termasuk spesifikasi peralatan, kontrol sumur, dan perlindungan lingkungan.','Standar Teknis Pengeboran Lepas Pantai','','publish','open','open','','standar-teknis-pengeboran-lepas-pantai','','','2026-06-12 09:30:39','2026-06-12 02:30:39','',0,'https://shemahakam.com/standar-teknis-pengeboran-lepas-pantai/',0,'post','',0),
(109,0,'2026-06-12 09:30:39','2026-06-12 02:30:39','Panduan lengkap tentang Production Sharing Contracts di Indonesia termasuk persyaratan fiskal, cost recovery, dan ketentuan pelaporan.','Panduan Production Sharing Contract di Indonesia','','publish','open','open','','panduan-production-sharing-contract-di-indonesia','','','2026-06-12 09:30:39','2026-06-12 02:30:39','',0,'https://shemahakam.com/panduan-production-sharing-contract-di-indonesia/',0,'post','',0),
(110,0,'2026-06-12 09:30:40','2026-06-12 02:30:40','Naskah lengkap Undang-Undang Nomor 3 Tahun 2020 tentang perubahan atas Undang-Undang Nomor 4 Tahun 2009 tentang Pertambangan Mineral dan Batubara.','UU No. 3/2020 tentang Perubahan UU Pertambangan','','publish','open','open','','uu-no-3-2020-tentang-perubahan-uu-pertambangan','','','2026-06-12 09:30:40','2026-06-12 02:30:40','',0,'https://shemahakam.com/uu-no-3-2020-tentang-perubahan-uu-pertambangan/',0,'post','',0),
(111,0,'2026-06-12 09:30:40','2026-06-12 02:30:40','Kerangka peraturan AMDAL lengkap untuk operasi pertambangan termasuk UKL-UPL, pemantauan lingkungan, dan keterlibatan masyarakat.','AMDAL dan UKL-UPL untuk Operasi Pertambangan','','publish','open','open','','amdal-dan-ukl-upl-untuk-operasi-pertambangan','','','2026-06-12 09:30:40','2026-06-12 02:30:40','',0,'https://shemahakam.com/amdal-dan-ukl-upl-untuk-operasi-pertambangan/',0,'post','',0),
(112,1,'2026-06-12 09:30:40','2026-06-12 02:30:40','Standar nasional untuk metode investigasi geoteknik dalam operasi pertambangan termasuk mekanika tanah, mekanika batuan, dan stabilitas lereng.','SNI Investigasi Geoteknik untuk Pertambangan','','publish','open','open','','sni-investigasi-geoteknik-untuk-pertambangan','','','2026-06-12 14:28:21','2026-06-12 07:28:21','',0,'https://shemahakam.com/sni-investigasi-geoteknik-untuk-pertambangan/',0,'post','',0),
(113,0,'2026-06-12 09:30:40','2026-06-12 02:30:40','Persyaratan sistem manajemen lingkungan dan panduan implementasi untuk operasi pertambangan yang selaras dengan ISO 14001:2015.','ISO 14001: Sistem Manajemen Lingkungan untuk Pertambangan','','publish','open','open','','iso-14001-sistem-manajemen-lingkungan-untuk-pertambangan','','','2026-06-12 09:30:40','2026-06-12 02:30:40','',0,'https://shemahakam.com/iso-14001-sistem-manajemen-lingkungan-untuk-pertambangan/',0,'post','',0),
(114,1,'2026-06-12 13:17:39','2026-06-12 06:17:39','{\n    \"sidebars_widgets[sidebar-right]\": {\n        \"value\": [\n            \"block-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:17:39\"\n    },\n    \"widget_block[8]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[{\\\"id\\\":30,\\\"count\\\":0,\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"https://shemahakam.com/category/documents/\\\",\\\"name\\\":\\\"Documents\\\",\\\"slug\\\":\\\"documents\\\",\\\"taxonomy\\\":\\\"category\\\",\\\"parent\\\":0,\\\"meta\\\":[],\\\"_links\\\":{\\\"self\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/30\\\",\\\"targetHints\\\":{\\\"allow\\\":[\\\"GET\\\",\\\"POST\\\",\\\"PUT\\\",\\\"PATCH\\\",\\\"DELETE\\\"]}}],\\\"collection\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories\\\"}],\\\"about\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\\\"}],\\\"wp:post_type\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/posts?categories=30\\\"}],\\\"curies\\\":[{\\\"name\\\":\\\"wp\\\",\\\"href\\\":\\\"https://api.w.org/{rel}\\\",\\\"templated\\\":true}]}}]} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:17:39\"\n    }\n}','','','trash','closed','closed','','aa19a9ba-1a6a-46f7-a618-e1d6999364e6','','','2026-06-12 13:17:39','2026-06-12 06:17:39','',0,'https://shemahakam.com/aa19a9ba-1a6a-46f7-a618-e1d6999364e6/',0,'customize_changeset','',0),
(115,1,'2026-06-12 13:17:47','2026-06-12 06:17:47','{\n    \"widget_block[8]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[{\\\"id\\\":30,\\\"count\\\":0,\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"https://shemahakam.com/category/documents/\\\",\\\"name\\\":\\\"Documents\\\",\\\"slug\\\":\\\"documents\\\",\\\"taxonomy\\\":\\\"category\\\",\\\"parent\\\":0,\\\"meta\\\":[],\\\"_links\\\":{\\\"self\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/30\\\",\\\"targetHints\\\":{\\\"allow\\\":[\\\"GET\\\",\\\"POST\\\",\\\"PUT\\\",\\\"PATCH\\\",\\\"DELETE\\\"]}}],\\\"collection\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories\\\"}],\\\"about\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\\\"}],\\\"wp:post_type\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/posts?categories=30\\\"}],\\\"curies\\\":[{\\\"name\\\":\\\"wp\\\",\\\"href\\\":\\\"https://api.w.org/{rel}\\\",\\\"templated\\\":true}]}}]} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:17:47\"\n    }\n}','','','trash','closed','closed','','34ad2599-9a33-4b91-b562-608d06eef077','','','2026-06-12 13:17:47','2026-06-12 06:17:47','',0,'https://shemahakam.com/34ad2599-9a33-4b91-b562-608d06eef077/',0,'customize_changeset','',0),
(116,1,'2026-06-12 13:22:09','2026-06-12 06:22:09','{\n    \"sidebars_widgets[sidebar-right]\": {\n        \"value\": [\n            \"block-16\",\n            \"block-17\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:22:09\"\n    },\n    \"widget_block[8]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[{\\\"id\\\":31,\\\"count\\\":4,\\\"description\\\":\\\"Mining Environmental Administration\\\",\\\"link\\\":\\\"https://shemahakam.com/category/documents/mea/\\\",\\\"name\\\":\\\"MEA\\\",\\\"slug\\\":\\\"mea\\\",\\\"taxonomy\\\":\\\"category\\\",\\\"parent\\\":30,\\\"meta\\\":[],\\\"_links\\\":{\\\"self\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/31\\\",\\\"targetHints\\\":{\\\"allow\\\":[\\\"GET\\\",\\\"POST\\\",\\\"PUT\\\",\\\"PATCH\\\",\\\"DELETE\\\"]}}],\\\"collection\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories\\\"}],\\\"about\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\\\"}],\\\"up\\\":[{\\\"embeddable\\\":true,\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/30\\\"}],\\\"wp:post_type\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/posts?categories=31\\\"}],\\\"curies\\\":[{\\\"name\\\":\\\"wp\\\",\\\"href\\\":\\\"https://api.w.org/{rel}\\\",\\\"templated\\\":true}]}}]} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:20:57\"\n    },\n    \"widget_block[16]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p><strong>MEA</strong></p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:22:09\"\n    },\n    \"widget_block[17]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:22:09\"\n    }\n}','','','trash','closed','closed','','47677eda-2ecf-435d-ae9a-3636db225aa4','','','2026-06-12 13:22:09','2026-06-12 06:22:09','',0,'https://shemahakam.com/?p=116',0,'customize_changeset','',0),
(117,1,'2026-06-12 13:25:24','2026-06-12 06:25:24','{\n    \"widget_block[17]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:22:57\"\n    }\n}','','','trash','closed','closed','','4e3661a7-2438-4e51-b2c3-52ca4dd5ba9f','','','2026-06-12 13:25:24','2026-06-12 06:25:24','',0,'https://shemahakam.com/?p=117',0,'customize_changeset','',0),
(118,1,'2026-06-12 13:27:13','2026-06-12 06:27:13','{\n    \"sidebars_widgets[sidebar-left]\": {\n        \"value\": [\n            \"block-19\",\n            \"block-18\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:27:10\"\n    },\n    \"widget_block[18]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[{\\\"id\\\":31,\\\"count\\\":4,\\\"description\\\":\\\"Mining Environmental Administration\\\",\\\"link\\\":\\\"https://shemahakam.com/category/documents/mea/\\\",\\\"name\\\":\\\"MEA\\\",\\\"slug\\\":\\\"mea\\\",\\\"taxonomy\\\":\\\"category\\\",\\\"parent\\\":30,\\\"meta\\\":[],\\\"_links\\\":{\\\"self\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/31\\\",\\\"targetHints\\\":{\\\"allow\\\":[\\\"GET\\\",\\\"POST\\\",\\\"PUT\\\",\\\"PATCH\\\",\\\"DELETE\\\"]}}],\\\"collection\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories\\\"}],\\\"about\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\\\"}],\\\"up\\\":[{\\\"embeddable\\\":true,\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/30\\\"}],\\\"wp:post_type\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/posts?categories=31\\\"}],\\\"curies\\\":[{\\\"name\\\":\\\"wp\\\",\\\"href\\\":\\\"https://api.w.org/{rel}\\\",\\\"templated\\\":true}]}}]} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:25:57\"\n    },\n    \"widget_block[19]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p><strong>MEA</strong></p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:25:57\"\n    },\n    \"widget_block[20]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p></p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:26:57\"\n    },\n    \"widget_block[21]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:list -->\\n<ul class=\\\"wp-block-list\\\"><!-- wp:list-item -->\\n<li></li>\\n<!-- /wp:list-item --></ul>\\n<!-- /wp:list -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:26:57\"\n    }\n}','','','trash','closed','closed','','2aec31d4-8b52-46c9-97ec-b28f0b9de50e','','','2026-06-12 13:27:13','2026-06-12 06:27:13','',0,'https://shemahakam.com/?p=118',0,'customize_changeset','',0),
(119,1,'2026-06-12 13:27:22','2026-06-12 06:27:22','{\n    \"sidebars_widgets[sidebar-left]\": {\n        \"value\": [\n            \"block-19\",\n            \"block-18\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:27:22\"\n    }\n}','','','trash','closed','closed','','45bc4417-d6f7-4e68-b3b7-ee84a530c5fc','','','2026-06-12 13:27:22','2026-06-12 06:27:22','',0,'https://shemahakam.com/45bc4417-d6f7-4e68-b3b7-ee84a530c5fc/',0,'customize_changeset','',0),
(120,1,'2026-06-12 13:34:56','2026-06-12 06:34:56','{\n    \"sidebars_widgets[sidebar-left]\": {\n        \"value\": [\n            \"block-25\",\n            \"block-18\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:34:56\"\n    },\n    \"widget_block[23]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:code -->\\n<pre class=\\\"wp-block-code\\\"><code><strong>MEA</strong></code></pre>\\n<!-- /wp:code -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:31:59\"\n    },\n    \"widget_block[18]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[{\\\"id\\\":31,\\\"count\\\":4,\\\"description\\\":\\\"Mining Environmental Administration\\\",\\\"link\\\":\\\"https://shemahakam.com/category/documents/mea/\\\",\\\"name\\\":\\\"MEA\\\",\\\"slug\\\":\\\"mea\\\",\\\"taxonomy\\\":\\\"category\\\",\\\"parent\\\":30,\\\"meta\\\":[],\\\"_links\\\":{\\\"self\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/31\\\",\\\"targetHints\\\":{\\\"allow\\\":[\\\"GET\\\",\\\"POST\\\",\\\"PUT\\\",\\\"PATCH\\\",\\\"DELETE\\\"]}}],\\\"collection\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories\\\"}],\\\"about\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\\\"}],\\\"up\\\":[{\\\"embeddable\\\":true,\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/30\\\"}],\\\"wp:post_type\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/posts?categories=31\\\"}],\\\"curies\\\":[{\\\"name\\\":\\\"wp\\\",\\\"href\\\":\\\"https://api.w.org/{rel}\\\",\\\"templated\\\":true}]}}]} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:33:59\"\n    },\n    \"widget_block[25]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p><strong>MEA</strong></p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:34:56\"\n    }\n}','','','trash','closed','closed','','18475c15-4271-455e-bb45-2d43c37b76e7','','','2026-06-12 13:34:56','2026-06-12 06:34:56','',0,'https://shemahakam.com/?p=120',0,'customize_changeset','',0),
(121,1,'2026-06-12 13:35:30','2026-06-12 06:35:30','{\n    \"widget_block[18]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[{\\\"id\\\":31,\\\"count\\\":4,\\\"description\\\":\\\"Mining Environmental Administration\\\",\\\"link\\\":\\\"https://shemahakam.com/category/documents/mea/\\\",\\\"name\\\":\\\"MEA\\\",\\\"slug\\\":\\\"mea\\\",\\\"taxonomy\\\":\\\"category\\\",\\\"parent\\\":30,\\\"meta\\\":[],\\\"_links\\\":{\\\"self\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/31\\\",\\\"targetHints\\\":{\\\"allow\\\":[\\\"GET\\\",\\\"POST\\\",\\\"PUT\\\",\\\"PATCH\\\",\\\"DELETE\\\"]}}],\\\"collection\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories\\\"}],\\\"about\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\\\"}],\\\"up\\\":[{\\\"embeddable\\\":true,\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/30\\\"}],\\\"wp:post_type\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/posts?categories=31\\\"}],\\\"curies\\\":[{\\\"name\\\":\\\"wp\\\",\\\"href\\\":\\\"https://api.w.org/{rel}\\\",\\\"templated\\\":true}]}}],\\\"style\\\":{\\\"typography\\\":{\\\"fontSize\\\":\\\"14px\\\"}}} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:35:30\"\n    }\n}','','','trash','closed','closed','','369c3df2-6398-4666-8df3-3ebbe9d11908','','','2026-06-12 13:35:30','2026-06-12 06:35:30','',0,'https://shemahakam.com/369c3df2-6398-4666-8df3-3ebbe9d11908/',0,'customize_changeset','',0),
(122,1,'2026-06-12 13:41:04','2026-06-12 06:41:04','{\n    \"sidebars_widgets[sidebar-left]\": {\n        \"value\": [\n            \"block-25\",\n            \"block-27\",\n            \"block-29\",\n            \"block-28\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:40:22\"\n    },\n    \"widget_block[25]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p><strong>MEA</strong></p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:40:22\"\n    },\n    \"widget_block[27]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[{\\\"id\\\":31,\\\"count\\\":4,\\\"description\\\":\\\"Mining Environmental Administration\\\",\\\"link\\\":\\\"https://shemahakam.com/category/documents/mea/\\\",\\\"name\\\":\\\"MEA\\\",\\\"slug\\\":\\\"mea\\\",\\\"taxonomy\\\":\\\"category\\\",\\\"parent\\\":30,\\\"meta\\\":[],\\\"_links\\\":{\\\"self\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/31\\\",\\\"targetHints\\\":{\\\"allow\\\":[\\\"GET\\\",\\\"POST\\\",\\\"PUT\\\",\\\"PATCH\\\",\\\"DELETE\\\"]}}],\\\"collection\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories\\\"}],\\\"about\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\\\"}],\\\"up\\\":[{\\\"embeddable\\\":true,\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/30\\\"}],\\\"wp:post_type\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/posts?categories=31\\\"}],\\\"curies\\\":[{\\\"name\\\":\\\"wp\\\",\\\"href\\\":\\\"https://api.w.org/{rel}\\\",\\\"templated\\\":true}]}}],\\\"style\\\":{\\\"typography\\\":{\\\"fontSize\\\":\\\"14px\\\"}}} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:40:22\"\n    },\n    \"widget_block[28]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[{\\\"id\\\":33,\\\"count\\\":7,\\\"description\\\":\\\"Sistem Manajemen Keselamatan Pertambangan Minerba\\\",\\\"link\\\":\\\"https://shemahakam.com/category/documents/smkp-minerba/\\\",\\\"name\\\":\\\"SMKP Minerba\\\",\\\"slug\\\":\\\"smkp-minerba\\\",\\\"taxonomy\\\":\\\"category\\\",\\\"parent\\\":30,\\\"meta\\\":[],\\\"_links\\\":{\\\"self\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/33\\\",\\\"targetHints\\\":{\\\"allow\\\":[\\\"GET\\\",\\\"POST\\\",\\\"PUT\\\",\\\"PATCH\\\",\\\"DELETE\\\"]}}],\\\"collection\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories\\\"}],\\\"about\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\\\"}],\\\"up\\\":[{\\\"embeddable\\\":true,\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/30\\\"}],\\\"wp:post_type\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/posts?categories=33\\\"}],\\\"curies\\\":[{\\\"name\\\":\\\"wp\\\",\\\"href\\\":\\\"https://api.w.org/{rel}\\\",\\\"templated\\\":true}]}}]} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:41:04\"\n    },\n    \"widget_block[29]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p><strong>SMKP Minerba</strong></p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:40:57\"\n    }\n}','','','trash','closed','closed','','f30356d5-9a70-48cc-9ff8-481dad2ba1cc','','','2026-06-12 13:41:04','2026-06-12 06:41:04','',0,'https://shemahakam.com/?p=122',0,'customize_changeset','',0),
(123,1,'2026-06-12 13:44:35','2026-06-12 06:44:35','{\n    \"widget_block[16]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p><strong>MATERI</strong></p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:44:35\"\n    },\n    \"widget_block[17]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[{\\\"id\\\":34,\\\"count\\\":0,\\\"description\\\":\\\"\\\",\\\"link\\\":\\\"https://shemahakam.com/category/documents/materi/\\\",\\\"name\\\":\\\"Materi\\\",\\\"slug\\\":\\\"materi\\\",\\\"taxonomy\\\":\\\"category\\\",\\\"parent\\\":30,\\\"meta\\\":[],\\\"_links\\\":{\\\"self\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/34\\\",\\\"targetHints\\\":{\\\"allow\\\":[\\\"GET\\\",\\\"POST\\\",\\\"PUT\\\",\\\"PATCH\\\",\\\"DELETE\\\"]}}],\\\"collection\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories\\\"}],\\\"about\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/taxonomies/category\\\"}],\\\"up\\\":[{\\\"embeddable\\\":true,\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/categories/30\\\"}],\\\"wp:post_type\\\":[{\\\"href\\\":\\\"https://shemahakam.com/wp-json/wp/v2/posts?categories=34\\\"}],\\\"curies\\\":[{\\\"name\\\":\\\"wp\\\",\\\"href\\\":\\\"https://api.w.org/{rel}\\\",\\\"templated\\\":true}]}}]} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 06:44:35\"\n    }\n}','','','trash','closed','closed','','ef877cd1-ffcb-4d4c-a8ef-badb56f42bfb','','','2026-06-12 13:44:35','2026-06-12 06:44:35','',0,'https://shemahakam.com/ef877cd1-ffcb-4d4c-a8ef-badb56f42bfb/',0,'customize_changeset','',0),
(124,1,'2026-06-12 13:51:11','2026-06-12 06:51:11','Standar nasional untuk metode investigasi geoteknik dalam operasi pertambangan termasuk mekanika tanah, mekanika batuan, dan stabilitas lereng.','SNI Investigasi Geoteknik untuk Pertambangan','','inherit','closed','closed','','112-revision-v1','','','2026-06-12 13:51:11','2026-06-12 06:51:11','',112,'https://shemahakam.com/?p=124',0,'revision','',0),
(125,1,'2026-06-12 14:26:55','2026-06-12 07:26:55','{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-pst-hebat','','','2026-06-12 14:26:55','2026-06-12 07:26:55','',0,'https://shemahakam.com/wp-global-styles-pst-hebat/',0,'wp_global_styles','',0),
(126,1,'2026-06-12 14:27:26','2026-06-12 07:27:26','{\n    \"widget_block[17]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[]} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 07:27:09\"\n    }\n}','','','trash','closed','closed','','116b8561-3bb0-4863-b531-d5abed6481b8','','','2026-06-12 14:27:26','2026-06-12 07:27:26','',0,'https://shemahakam.com/?p=126',0,'customize_changeset','',0),
(127,1,'2026-06-12 14:51:24','2026-06-12 07:51:24','{\n    \"pst-hebat::navbar_initials\": {\n        \"value\": \"PT Putra Sarana Transborneo\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 07:51:24\"\n    },\n    \"pst-hebat::navbar_tagline\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 07:51:24\"\n    },\n    \"pst-hebat::navbar_brand_full\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 07:51:24\"\n    },\n    \"pst-hebat::navbar_brand_motto\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 07:51:24\"\n    },\n    \"pst-hebat::navbar_mhu_initials\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 07:51:24\"\n    },\n    \"pst-hebat::navbar_mhu_full\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 07:51:24\"\n    },\n    \"pst-hebat::navbar_mhu_motto\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 07:51:24\"\n    }\n}','','','trash','closed','closed','','67cbc4c9-ba24-4587-ba08-669f8c7d5fb1','','','2026-06-12 14:51:24','2026-06-12 07:51:24','',0,'https://shemahakam.com/67cbc4c9-ba24-4587-ba08-669f8c7d5fb1/',0,'customize_changeset','',0),
(128,1,'2026-06-12 15:00:28','2026-06-12 08:00:28','','Screenshot_20260612_150013-1','','inherit','open','closed','','screenshot_20260612_150013-1','','','2026-06-12 15:00:28','2026-06-12 08:00:28','',0,'https://shemahakam.com/wp-content/uploads/2026/06/Screenshot_20260612_150013-1.png',0,'attachment','image/png',0),
(129,1,'2026-06-12 15:00:35','2026-06-12 08:00:35','{\n    \"pst-hebat::hero_bg_image\": {\n        \"value\": 128,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 08:00:35\"\n    }\n}','','','trash','closed','closed','','3bcfa07d-d137-49e1-8dd2-a4a01d769659','','','2026-06-12 15:00:35','2026-06-12 08:00:35','',0,'https://shemahakam.com/3bcfa07d-d137-49e1-8dd2-a4a01d769659/',0,'customize_changeset','',0),
(130,1,'2026-06-12 15:17:23','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2026-06-12 15:17:23','0000-00-00 00:00:00','',0,'https://shemahakam.com/?p=130',0,'post','',0),
(132,1,'2026-06-12 15:21:56','2026-06-12 08:21:56','','WhatsApp Image 2026-05-06 at 07.39.15','','inherit','open','closed','','whatsapp-image-2026-05-06-at-07-39-15','','','2026-06-12 15:21:56','2026-06-12 08:21:56','',0,'https://shemahakam.com/wp-content/uploads/2026/06/WhatsApp-Image-2026-05-06-at-07.39.15.jpeg',0,'attachment','image/jpeg',0),
(133,1,'2026-06-12 15:22:16','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-06-12 15:22:16','0000-00-00 00:00:00','',0,'https://shemahakam.com/?page_id=133',0,'page','',0),
(134,1,'2026-06-12 15:26:18','2026-06-12 08:26:18','{\n    \"pst-hebat::hero_badge\": {\n        \"value\": \"Portal KP & Document Library\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 08:25:25\"\n    },\n    \"pst-hebat::hero_bg_image\": {\n        \"value\": 132,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 08:25:25\"\n    },\n    \"pst-hebat::hero_title\": {\n        \"value\": \"Portal KPLH<br><span class=\\\"gradient-text\\\">dan Operasional</span><br>Tambang\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 08:26:18\"\n    }\n}','','','trash','closed','closed','','b2af3d37-2930-4bc9-bf0e-d373c193cf6e','','','2026-06-12 15:26:18','2026-06-12 08:26:18','',0,'https://shemahakam.com/?p=134',0,'customize_changeset','',0),
(135,1,'2026-06-12 15:51:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2026-06-12 15:51:42','0000-00-00 00:00:00','',0,'https://shemahakam.com/?p=135',0,'post','',0),
(136,1,'2026-06-12 15:52:14','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2026-06-12 15:52:14','0000-00-00 00:00:00','',0,'https://shemahakam.com/?p=136',0,'post','',0),
(137,1,'2026-06-12 15:55:32','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2026-06-12 15:55:32','0000-00-00 00:00:00','',0,'https://shemahakam.com/?p=137',0,'post','',0),
(138,1,'2026-06-12 16:05:33','2026-06-12 09:05:33','{\n    \"pst-hebat::she_pst_value\": {\n        \"value\": \"80\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 09:02:39\"\n    },\n    \"pst-hebat::she_pst_trend\": {\n        \"value\": \"+3,8% dari bulan lalu\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 09:03:43\"\n    },\n    \"pst-hebat::she_psi_value\": {\n        \"value\": \"47,85\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 09:04:43\"\n    },\n    \"pst-hebat::she_psi_trend\": {\n        \"value\": \"+5.3% bulan lalu\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 09:05:33\"\n    },\n    \"pst-hebat::she_epi_value\": {\n        \"value\": \"54,89\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 09:05:33\"\n    }\n}','','','trash','closed','closed','','9bd06d4f-c81b-47b4-bd29-d55aa7192190','','','2026-06-12 16:05:33','2026-06-12 09:05:33','',0,'https://shemahakam.com/?p=138',0,'customize_changeset','',0),
(139,1,'2026-06-12 16:07:43','2026-06-12 09:07:43','{\n    \"pst-hebat::she_epi_trend\": {\n        \"value\": \"+4 % dari bulan lalu\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-12 09:07:42\"\n    }\n}','','','trash','closed','closed','','6468a417-5c6d-420c-b18f-596d1b556ae4','','','2026-06-12 16:07:43','2026-06-12 09:07:43','',0,'https://shemahakam.com/?p=139',0,'customize_changeset','',0),
(140,1,'2026-06-13 09:00:48','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2026-06-13 09:00:48','0000-00-00 00:00:00','',0,'https://shemahakam.com/?page_id=140',0,'page','',0),
(141,1,'2026-06-13 09:03:25','2026-06-13 02:03:25','','WhatsApp Image 2026-05-11 at 15.27.40','','inherit','open','closed','','whatsapp-image-2026-05-11-at-15-27-40','','','2026-06-13 09:03:25','2026-06-13 02:03:25','',140,'https://shemahakam.com/wp-content/uploads/2026/06/WhatsApp-Image-2026-05-11-at-15.27.40.jpeg',0,'attachment','image/jpeg',0),
(142,1,'2026-06-13 09:04:00','2026-06-13 02:04:00','','WhatsApp Image 2026-05-29 at 08.05.14','','inherit','open','closed','','whatsapp-image-2026-05-29-at-08-05-14','','','2026-06-13 09:04:00','2026-06-13 02:04:00','',140,'https://shemahakam.com/wp-content/uploads/2026/06/WhatsApp-Image-2026-05-29-at-08.05.14.jpeg',0,'attachment','image/jpeg',0),
(143,1,'2026-06-13 09:08:07','2026-06-13 02:08:07','','DCIM101MEDIADJI_0033.JPG','DCIM101MEDIADJI_0033.JPG','inherit','open','closed','','dcim101mediadji_0033-jpg','','','2026-06-13 09:08:07','2026-06-13 02:08:07','',140,'https://shemahakam.com/wp-content/uploads/2026/06/DJI_0033_1.jpg',0,'attachment','image/jpeg',0),
(144,1,'2026-06-13 09:50:41','2026-06-13 02:50:41','<a href=\"https://shemahakam.com/materi-paket-1-kplh/paket-1_kplh-mandatory-training-rev03-tahun-2026/\" rel=\"attachment wp-att-145\">Paket 1_KPLH Mandatory Training Rev03 tahun 2026</a>','Materi Paket 1 KPLH','','trash','open','open','','materi-paket-1-kplh__trashed','','','2026-06-14 10:26:52','2026-06-14 03:26:52','',0,'https://shemahakam.com/?p=144',0,'post','',0),
(145,1,'2026-06-13 09:47:04','2026-06-13 02:47:04','','Paket 1_KPLH Mandatory Training Rev03 tahun 2026','','inherit','open','closed','','paket-1_kplh-mandatory-training-rev03-tahun-2026','','','2026-06-13 09:47:04','2026-06-13 02:47:04','',144,'https://shemahakam.com/wp-content/uploads/2026/06/Paket-1_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf',0,'attachment','application/pdf',0),
(146,1,'2026-06-13 09:50:41','2026-06-13 02:50:41','<a href=\"https://shemahakam.com/?attachment_id=145\" rel=\"attachment wp-att-145\">Paket 1_KPLH Mandatory Training Rev03 tahun 2026</a>','Materi Paket 1 KPLH','','inherit','closed','closed','','144-revision-v1','','','2026-06-13 09:50:41','2026-06-13 02:50:41','',144,'https://shemahakam.com/?p=146',0,'revision','',0),
(147,1,'2026-06-13 09:50:41','2026-06-13 02:50:41','<a href=\"https://shemahakam.com/materi-paket-1-kplh/paket-1_kplh-mandatory-training-rev03-tahun-2026/\" rel=\"attachment wp-att-145\">Paket 1_KPLH Mandatory Training Rev03 tahun 2026</a>','Materi Paket 1 KPLH','','inherit','closed','closed','','144-revision-v1','','','2026-06-13 09:50:41','2026-06-13 02:50:41','',144,'https://shemahakam.com/?p=147',0,'revision','',0),
(148,1,'2026-06-13 15:32:51','2026-06-13 08:32:51','','Materi general induksi','','publish','open','open','','materi-general-induksi','','','2026-06-13 15:32:51','2026-06-13 08:32:51','',0,'https://shemahakam.com/?p=148',0,'post','',0),
(149,1,'2026-06-13 15:32:51','2026-06-13 08:32:51','','Materi general induksi','','inherit','closed','closed','','148-revision-v1','','','2026-06-13 15:32:51','2026-06-13 08:32:51','',148,'https://shemahakam.com/?p=149',0,'revision','',0),
(150,1,'2026-06-13 15:33:02','2026-06-13 08:33:02','','IADL','','publish','open','open','','iadl','','','2026-06-13 15:33:02','2026-06-13 08:33:02','',0,'https://shemahakam.com/?p=150',0,'post','',0),
(151,1,'2026-06-13 15:33:02','2026-06-13 08:33:02','','IADL','','inherit','closed','closed','','150-revision-v1','','','2026-06-13 15:33:02','2026-06-13 08:33:02','',150,'https://shemahakam.com/?p=151',0,'revision','',0),
(152,1,'2026-06-13 15:33:10','2026-06-13 08:33:10','','IBPR','','publish','open','open','','ibpr','','','2026-06-13 15:33:10','2026-06-13 08:33:10','',0,'https://shemahakam.com/?p=152',0,'post','',0),
(153,1,'2026-06-13 15:33:10','2026-06-13 08:33:10','','IBPR','','inherit','closed','closed','','152-revision-v1','','','2026-06-13 15:33:10','2026-06-13 08:33:10','',152,'https://shemahakam.com/?p=153',0,'revision','',0),
(154,1,'2026-06-13 15:33:20','2026-06-13 08:33:20','','Materi LB3','','publish','open','open','','materi-lb3','','','2026-06-13 16:41:06','2026-06-13 09:41:06','',0,'https://shemahakam.com/?p=154',0,'post','',0),
(155,1,'2026-06-13 15:33:20','2026-06-13 08:33:20','','Materi LB3','','inherit','closed','closed','','154-revision-v1','','','2026-06-13 15:33:20','2026-06-13 08:33:20','',154,'https://shemahakam.com/?p=155',0,'revision','',0),
(156,1,'2026-06-13 15:33:32','2026-06-13 08:33:32','','Materi HSE Indeks','','publish','open','open','','materi-hse-indeks','','','2026-06-13 15:33:48','2026-06-13 08:33:48','',0,'https://shemahakam.com/?p=156',0,'post','',0),
(157,1,'2026-06-13 15:33:32','2026-06-13 08:33:32','','Mater HSE Indeks','','inherit','closed','closed','','156-revision-v1','','','2026-06-13 15:33:32','2026-06-13 08:33:32','',156,'https://shemahakam.com/?p=157',0,'revision','',0),
(158,1,'2026-06-13 15:33:37','2026-06-13 08:33:37','','Materi HSE Indeks','','inherit','closed','closed','','156-revision-v1','','','2026-06-13 15:33:37','2026-06-13 08:33:37','',156,'https://shemahakam.com/?p=158',0,'revision','',0),
(159,1,'2026-06-13 15:33:38','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2026-06-13 15:33:38','0000-00-00 00:00:00','',0,'https://shemahakam.com/?p=159',0,'post','',0),
(160,1,'2026-06-13 15:34:01','2026-06-13 08:34:01','','Materi ZAM','','publish','open','open','','materi-zam','','','2026-06-13 15:34:01','2026-06-13 08:34:01','',0,'https://shemahakam.com/?p=160',0,'post','',0),
(161,1,'2026-06-13 15:34:01','2026-06-13 08:34:01','','Materi ZAM','','inherit','closed','closed','','160-revision-v1','','','2026-06-13 15:34:01','2026-06-13 08:34:01','',160,'https://shemahakam.com/?p=161',0,'revision','',0),
(162,1,'2026-06-13 15:34:10','2026-06-13 08:34:10','','Materi Investigasi','','publish','open','open','','materi-investigasi','','','2026-06-13 16:40:47','2026-06-13 09:40:47','',0,'https://shemahakam.com/?p=162',0,'post','',0),
(163,1,'2026-06-13 15:34:10','2026-06-13 08:34:10','','Materi Investigasi','','inherit','closed','closed','','162-revision-v1','','','2026-06-13 15:34:10','2026-06-13 08:34:10','',162,'https://shemahakam.com/?p=163',0,'revision','',0),
(164,1,'2026-06-13 15:34:26','2026-06-13 08:34:26','','Materi KPLH P3','','publish','open','open','','materi-kplh-p3','','','2026-06-13 16:40:19','2026-06-13 09:40:19','',0,'https://shemahakam.com/?p=164',0,'post','',0),
(165,1,'2026-06-13 15:34:26','2026-06-13 08:34:26','','Materi KPLH P3','','inherit','closed','closed','','164-revision-v1','','','2026-06-13 15:34:26','2026-06-13 08:34:26','',164,'https://shemahakam.com/?p=165',0,'revision','',0),
(166,1,'2026-06-13 15:34:39','2026-06-13 08:34:39','','Materi KPLH P2','','publish','open','open','','materi-kplh-p2','','','2026-06-13 16:39:33','2026-06-13 09:39:33','',0,'https://shemahakam.com/?p=166',0,'post','',0),
(167,1,'2026-06-13 15:34:39','2026-06-13 08:34:39','','Materi KPLH P2','','inherit','closed','closed','','166-revision-v1','','','2026-06-13 15:34:39','2026-06-13 08:34:39','',166,'https://shemahakam.com/?p=167',0,'revision','',0),
(168,1,'2026-06-13 15:34:48','2026-06-13 08:34:48','','Materi KPLH P1','','publish','open','open','','materi-kplh-p1','','','2026-06-13 16:39:00','2026-06-13 09:39:00','',0,'https://shemahakam.com/?p=168',0,'post','',0),
(169,1,'2026-06-13 15:34:48','2026-06-13 08:34:48','','Materi KPLH P1','','inherit','closed','closed','','168-revision-v1','','','2026-06-13 15:34:48','2026-06-13 08:34:48','',168,'https://shemahakam.com/?p=169',0,'revision','',0),
(170,1,'2026-06-13 15:34:57','2026-06-13 08:34:57','','Materi LOTO','','publish','open','open','','materi-loto','','','2026-06-13 16:37:25','2026-06-13 09:37:25','',0,'https://shemahakam.com/?p=170',0,'post','',0),
(171,1,'2026-06-13 15:34:57','2026-06-13 08:34:57','','Materi LOTO','','inherit','closed','closed','','170-revision-v1','','','2026-06-13 15:34:57','2026-06-13 08:34:57','',170,'https://shemahakam.com/?p=171',0,'revision','',0),
(172,1,'2026-06-13 15:35:24','2026-06-13 08:35:24','{\n    \"widget_block[17]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[],\\\"postsToShow\\\":15} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-13 08:35:24\"\n    }\n}','','','trash','closed','closed','','c5d46e2c-64a6-4e07-812f-d8905759f0ca','','','2026-06-13 15:35:24','2026-06-13 08:35:24','',0,'https://shemahakam.com/c5d46e2c-64a6-4e07-812f-d8905759f0ca/',0,'customize_changeset','',0),
(173,1,'2026-06-13 16:07:58','2026-06-13 09:07:58','','f.Materi Isolasi Energi Berbahaya-LOTO','','inherit','open','closed','','f-materi-isolasi-energi-berbahaya-loto','','','2026-06-13 16:07:58','2026-06-13 09:07:58','',170,'https://shemahakam.com/wp-content/uploads/2026/06/f.Materi-Isolasi-Energi-Berbahaya-LOTO.pdf',0,'attachment','application/pdf',0),
(174,1,'2026-06-13 16:08:38','2026-06-13 09:08:38','','Paket 2_KPLH Mandatory Training Rev03 tahun 2026','','inherit','open','closed','','paket-2_kplh-mandatory-training-rev03-tahun-2026','','','2026-06-13 16:08:38','2026-06-13 09:08:38','',170,'https://shemahakam.com/wp-content/uploads/2026/06/Paket-2_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf',0,'attachment','application/pdf',0),
(175,1,'2026-06-13 16:08:52','2026-06-13 09:08:52','','Paket 3_KPLH Mandatory Training Rev03 tahun 2026','','inherit','open','closed','','paket-3_kplh-mandatory-training-rev03-tahun-2026','','','2026-06-13 16:08:52','2026-06-13 09:08:52','',170,'https://shemahakam.com/wp-content/uploads/2026/06/Paket-3_KPLH-Mandatory-Training-Rev03-tahun-2026.pdf',0,'attachment','application/pdf',0),
(176,1,'2026-06-13 16:34:59','2026-06-13 09:34:59','','TRAINING MHU - Investigasi Kecelakaan','','inherit','open','closed','','training-mhu-investigasi-kecelakaan','','','2026-06-13 16:34:59','2026-06-13 09:34:59','',170,'https://shemahakam.com/wp-content/uploads/2026/06/TRAINING-MHU-Investigasi-Kecelakaan.pdf',0,'attachment','application/pdf',0),
(177,1,'2026-06-13 16:35:51','2026-06-13 09:35:51','','1. Training Pengelolaan LB3 - PST LGGN - Format HO','','inherit','open','closed','','1-training-pengelolaan-lb3-pst-lggn-format-ho','','','2026-06-13 16:35:51','2026-06-13 09:35:51','',170,'https://shemahakam.com/wp-content/uploads/2026/06/1.-Training-Pengelolaan-LB3-PST-LGGN-Format-HO.pdf',0,'attachment','application/pdf',0),
(178,1,'2026-06-14 10:24:34','0000-00-00 00:00:00','{\n    \"sidebars_widgets[sidebar-right]\": {\n        \"value\": [\n            \"block-17\",\n            \"block-16\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-14 03:23:34\"\n    },\n    \"widget_block[17]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjc6ImNvbnRlbnQiO3M6NjA6IjwhLS0gd3A6bGF0ZXN0LXBvc3RzIHsiY2F0ZWdvcmllcyI6W10sInBvc3RzVG9TaG93IjoxNX0gLy0tPiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"86e62cbec926d30dbbb756a5eb48916b\",\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:latest-posts {\\\"categories\\\":[],\\\"postsToShow\\\":15} /-->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2026-06-14 03:23:34\"\n    }\n}','','','trash','closed','closed','','5efa7b5b-d25b-4b4c-b549-07426c4008f7','','','2026-06-14 10:24:34','2026-06-14 03:24:34','',0,'https://shemahakam.com/?p=178',0,'customize_changeset','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES
(29,6,0),
(29,20,0),
(29,21,0),
(29,22,0),
(29,23,0),
(30,1,0),
(31,1,0),
(32,1,0),
(33,5,0),
(34,5,0),
(35,5,0),
(67,6,0),
(68,6,0),
(69,6,0),
(70,6,0),
(71,6,0),
(72,31,0),
(73,31,0),
(74,31,0),
(75,31,0),
(93,33,0),
(94,33,0),
(95,33,0),
(96,33,0),
(97,33,0),
(98,33,0),
(99,33,0),
(100,2,0),
(101,2,0),
(102,2,0),
(103,2,0),
(104,1,0),
(105,1,0),
(106,1,0),
(107,1,0),
(108,1,0),
(109,1,0),
(110,1,0),
(111,1,0),
(112,28,0),
(113,28,0),
(125,35,0),
(144,34,0),
(148,34,0),
(150,34,0),
(152,34,0),
(154,34,0),
(156,34,0),
(160,34,0),
(162,34,0),
(164,34,0),
(166,34,0),
(168,34,0),
(170,34,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES
(1,1,'category','',0,11),
(2,2,'nav_menu','',0,4),
(3,3,'category','Berita terbaru',0,0),
(4,4,'category','Informasi layanan',0,0),
(5,5,'category','Kegiatan operasional tambang',0,3),
(6,6,'category','Artikel dan informasi',0,6),
(7,7,'post_tag','',0,0),
(8,8,'post_tag','',0,0),
(9,9,'post_tag','',0,0),
(10,10,'post_tag','',0,0),
(11,11,'post_tag','',0,0),
(12,12,'post_tag','',0,0),
(13,13,'post_tag','',0,0),
(14,14,'post_tag','',0,0),
(15,15,'post_tag','',0,0),
(16,16,'post_tag','',0,0),
(17,17,'post_tag','',0,0),
(18,18,'post_tag','',0,0),
(19,19,'post_tag','',0,0),
(20,20,'post_tag','',0,1),
(21,21,'post_tag','',0,1),
(22,22,'post_tag','',0,1),
(23,23,'post_tag','',0,1),
(28,28,'category','Dokumentasi standar',30,2),
(30,30,'category','',0,0),
(31,31,'category','Mining Environmental Administration',30,4),
(33,33,'category','Sistem Manajemen Keselamatan Pertambangan Minerba',30,7),
(34,34,'category','',30,11),
(35,35,'wp_theme','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES
(1,'Uncategorized','uncategorized',0),
(2,'Primary Menu','primary-menu',0),
(3,'Berita','berita',0),
(4,'Layanan','layanan',0),
(5,'Kegiatan','kegiatan',0),
(6,'Artikel','artikel',0),
(7,'SMKP','smkp',0),
(8,'K3','k3',0),
(9,'keselamatan','keselamatan',0),
(10,'tambang','tambang',0),
(11,'SHE','she',0),
(12,'PST','pst',0),
(13,'PSI','psi',0),
(14,'EPI','epi',0),
(15,'kinerja','kinerja',0),
(16,'investigasi','investigasi',0),
(17,'kecelakaan','kecelakaan',0),
(18,'alat-berat','alat-berat',0),
(19,'operasi','operasi',0),
(20,'limbah','limbah',0),
(21,'B3','b3',0),
(22,'lingkungan','lingkungan',0),
(23,'regulasi','regulasi',0),
(28,'Standards','standards',0),
(30,'Documents','documents',0),
(31,'MEA','mea',0),
(33,'SMKP Minerba','smkp-minerba',0),
(34,'Materi','materi',0),
(35,'pst-hebat','pst-hebat',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES
(1,1,'nickname','AD Jatmiko'),
(2,1,'first_name',''),
(3,1,'last_name',''),
(4,1,'description',''),
(5,1,'rich_editing','true'),
(6,1,'syntax_highlighting','true'),
(7,1,'comment_shortcuts','false'),
(8,1,'admin_color','modern'),
(9,1,'use_ssl','0'),
(10,1,'show_admin_bar_front','true'),
(11,1,'locale',''),
(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(13,1,'wp_user_level','10'),
(14,1,'dismissed_wp_pointers','theme_editor_notice'),
(15,1,'show_welcome_panel','1'),
(16,1,'session_tokens','a:9:{s:64:\"276ac823eb0cd7cd4ce33482246d4b2c19ace8a7a60ceefdaaa51653ac95b0ef\";a:4:{s:10:\"expiration\";i:1781419858;s:2:\"ip\";s:12:\"192.168.16.1\";s:2:\"ua\";s:70:\"Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0\";s:5:\"login\";i:1781247058;}s:64:\"fcffccf72a6e367958f3812ebdfe427c2e101ba4b828c4c49e38af2e9c6a16df\";a:4:{s:10:\"expiration\";i:1781423455;s:2:\"ip\";s:13:\"157.85.207.43\";s:2:\"ua\";s:70:\"Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0\";s:5:\"login\";i:1781250655;}s:64:\"9c6dd4f292ba59fd8a05a4966e5261ff80e03e21ed8047be73e87b35eb5bac6a\";a:4:{s:10:\"expiration\";i:1782461461;s:2:\"ip\";s:13:\"202.65.238.99\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36\";s:5:\"login\";i:1781251861;}s:64:\"6d4172d95676730b22e1d45e366d839ab2685193f3433cc1c0ae968327b09bde\";a:4:{s:10:\"expiration\";i:1782461789;s:2:\"ip\";s:13:\"202.65.238.99\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36\";s:5:\"login\";i:1781252189;}s:64:\"6b00eaea8efefd57ff88d4aa332405456879566613d973a8f0f169e9d539bed7\";a:4:{s:10:\"expiration\";i:1781427423;s:2:\"ip\";s:13:\"202.65.238.99\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36\";s:5:\"login\";i:1781254623;}s:64:\"22452e75c41b9102305def09b890c50a61d380400cf9b3b0cac4cb2ed9c276f5\";a:4:{s:10:\"expiration\";i:1781488442;s:2:\"ip\";s:13:\"182.3.140.216\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36\";s:5:\"login\";i:1781315642;}s:64:\"3d4886e88a3e2e75e8f42b55c9bd393cce0653a161db2de220b6d42553fb47d7\";a:4:{s:10:\"expiration\";i:1781506409;s:2:\"ip\";s:13:\"116.254.97.32\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36\";s:5:\"login\";i:1781333609;}s:64:\"1b949fb8d95e1c6391bbad70adb751216da60a5aa9fb6ee2f47ac422924aac25\";a:4:{s:10:\"expiration\";i:1781512182;s:2:\"ip\";s:13:\"157.85.207.43\";s:2:\"ua\";s:70:\"Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0\";s:5:\"login\";i:1781339382;}s:64:\"28e2502a9a8cf416147ad3f9191b84971bf9bd5058228a7ecdc0e1febb7bc316\";a:4:{s:10:\"expiration\";i:1781579852;s:2:\"ip\";s:13:\"202.65.236.36\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36\";s:5:\"login\";i:1781407052;}}'),
(17,1,'wp_dashboard_quick_press_last_post_id','61'),
(18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"202.65.236.0\";}'),
(19,1,'wp_persisted_preferences','a:4:{s:22:\"core/customize-widgets\";a:2:{s:12:\"welcomeGuide\";b:1;s:12:\"fixedToolbar\";b:1;}s:9:\"_modified\";s:24:\"2026-06-14T03:25:46.671Z\";s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:2:{s:12:\"welcomeGuide\";b:0;s:23:\"metaBoxesMainOpenHeight\";i:515;}}'),
(20,1,'wp_user-settings','libraryContent=browse&mfold=f&editor=html&urlbutton=post'),
(21,1,'wp_user-settings-time','1781319037'),
(22,1,'wp_media_library_mode','grid'),
(23,1,'meta-box-order_post','a:3:{s:4:\"side\";s:65:\"pst_hebat_pdf,submitdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:96:\"revisionsdiv,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(24,1,'screen_layout_post','2'),
(25,1,'closedpostboxes_post','a:0:{}'),
(26,1,'metaboxhidden_post','a:8:{i:0;s:12:\"revisionsdiv\";i:1;s:11:\"postexcerpt\";i:2;s:13:\"trackbacksdiv\";i:3;s:10:\"postcustom\";i:4;s:16:\"commentstatusdiv\";i:5;s:11:\"commentsdiv\";i:6;s:7:\"slugdiv\";i:7;s:9:\"authordiv\";}'),
(27,2,'nickname','levi'),
(28,2,'first_name',''),
(29,2,'last_name',''),
(30,2,'description',''),
(31,2,'rich_editing','true'),
(32,2,'syntax_highlighting','true'),
(33,2,'comment_shortcuts','false'),
(34,2,'admin_color','modern'),
(35,2,'use_ssl','0'),
(36,2,'show_admin_bar_front','true'),
(37,2,'locale',''),
(38,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(39,2,'wp_user_level','10'),
(40,3,'nickname','naruto'),
(41,3,'first_name',''),
(42,3,'last_name',''),
(43,3,'description',''),
(44,3,'rich_editing','true'),
(45,3,'syntax_highlighting','true'),
(46,3,'comment_shortcuts','false'),
(47,3,'admin_color','modern'),
(48,3,'use_ssl','0'),
(49,3,'show_admin_bar_front','true'),
(50,3,'locale',''),
(51,3,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
(52,3,'wp_user_level','10'),
(53,4,'nickname','kontol'),
(54,4,'first_name',''),
(55,4,'last_name',''),
(56,4,'description',''),
(57,4,'rich_editing','true'),
(58,4,'syntax_highlighting','true'),
(59,4,'comment_shortcuts','false'),
(60,4,'admin_color','modern'),
(61,4,'use_ssl','0'),
(62,4,'show_admin_bar_front','true'),
(63,4,'locale',''),
(64,4,'wp_capabilities','a:1:{s:6:\"editor\";b:1;}'),
(65,4,'wp_user_level','7');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES
(1,'admin','$wp$2y$10$fdnT7.q2wohUsVcvlnxanOpXMI94e.jC2zzS1kldIMcWAviymad7y','admin','admin@shemahakam.com','http://localhost:8080','2026-06-11 04:50:50','',0,'AD Jatmiko'),
(2,'levi','$wp$2y$10$SH2X7SF8IzMQCP..IJRcH.4VO7iSUD2AwWEBOoIj2ur.D6LPjPdI.','levi','asdasdasdasdasd@gmail.com','','2026-06-15 01:58:37','',0,'levi'),
(3,'naruto','$wp$2y$10$o30eqJXTVpaOMSvrV4LuWe/ZgdOptE3JphZtHy1EHG6n1wPK/LC4u','naruto','rikudosenin@duck.com','','2026-06-15 01:59:41','',0,'naruto'),
(4,'kontol','$wp$2y$10$WP8h4qE24buCS9ct.Q8BDei/lx.DTyoPrpUt/zHJvvbAguDniUu0K','kontol','asdasdasd@gmail.com','','2026-06-15 02:00:05','',0,'kontol');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-15 16:52:17
