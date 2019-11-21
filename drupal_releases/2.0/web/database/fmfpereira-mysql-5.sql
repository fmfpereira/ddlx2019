-- MySQL dump 10.9
--
-- Host: db    Database: db
-- ------------------------------------------------------
-- Server version	5.5.62

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `affiliates`
--

DROP TABLE IF EXISTS `affiliates`;
CREATE TABLE `affiliates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `affiliates`
--

LOCK TABLES `affiliates` WRITE;
/*!40000 ALTER TABLE `affiliates` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
CREATE TABLE `bans` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  `reason` text NOT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mask` (`mask`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bans`
--

LOCK TABLES `bans` WRITE;
/*!40000 ALTER TABLE `bans` DISABLE KEYS */;
/*!40000 ALTER TABLE `bans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blocks`
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE `blocks` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `module` varchar(64) NOT NULL DEFAULT '',
  `offset` tinyint(2) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `weight` tinyint(1) NOT NULL DEFAULT '0',
  `region` tinyint(1) NOT NULL DEFAULT '0',
  `remove` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blocks`
--

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boxes`
--

DROP TABLE IF EXISTS `boxes`;
CREATE TABLE `boxes` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `subject` varchar(64) NOT NULL DEFAULT '',
  `content` text,
  `info` varchar(128) NOT NULL DEFAULT '',
  `link` varchar(128) NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `subject` (`subject`),
  UNIQUE KEY `info` (`info`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boxes`
--

LOCK TABLES `boxes` WRITE;
/*!40000 ALTER TABLE `boxes` DISABLE KEYS */;
/*!40000 ALTER TABLE `boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site` varchar(255) NOT NULL DEFAULT '',
  `file` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) DEFAULT '',
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site` (`site`),
  UNIQUE KEY `file` (`file`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `cid` int(6) NOT NULL AUTO_INCREMENT,
  `pid` int(6) NOT NULL DEFAULT '0',
  `lid` int(6) NOT NULL DEFAULT '0',
  `link` varchar(16) NOT NULL DEFAULT '',
  `author` int(6) NOT NULL DEFAULT '0',
  `subject` varchar(64) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `score` int(6) NOT NULL DEFAULT '0',
  `votes` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  KEY `lid_link` (`lid`,`link`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,0,1,'story',0,'Really nice','','172.18.0.3',1573865014,0,0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crons`
--

DROP TABLE IF EXISTS `crons`;
CREATE TABLE `crons` (
  `module` varchar(64) NOT NULL DEFAULT '',
  `scheduled` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crons`
--

LOCK TABLES `crons` WRITE;
/*!40000 ALTER TABLE `crons` DISABLE KEYS */;
/*!40000 ALTER TABLE `crons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diaries`
--

DROP TABLE IF EXISTS `diaries`;
CREATE TABLE `diaries` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `author` int(6) NOT NULL DEFAULT '0',
  `text` text,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diaries`
--

LOCK TABLES `diaries` WRITE;
/*!40000 ALTER TABLE `diaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `diaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drupals`
--

DROP TABLE IF EXISTS `drupals`;
CREATE TABLE `drupals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drupals`
--

LOCK TABLES `drupals` WRITE;
/*!40000 ALTER TABLE `drupals` DISABLE KEYS */;
/*!40000 ALTER TABLE `drupals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE `faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  `weight` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `question` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `headlines`
--

DROP TABLE IF EXISTS `headlines`;
CREATE TABLE `headlines` (
  `id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `number` int(3) NOT NULL DEFAULT '0',
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `link` (`link`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headlines`
--

LOCK TABLES `headlines` WRITE;
/*!40000 ALTER TABLE `headlines` DISABLE KEYS */;
/*!40000 ALTER TABLE `headlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
CREATE TABLE `layout` (
  `user` int(11) NOT NULL DEFAULT '0',
  `block` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locales`
--

DROP TABLE IF EXISTS `locales`;
CREATE TABLE `locales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) NOT NULL DEFAULT '',
  `string` text NOT NULL,
  `da` text NOT NULL,
  `fi` text NOT NULL,
  `fr` text NOT NULL,
  `en` text NOT NULL,
  `es` text NOT NULL,
  `nl` text NOT NULL,
  `no` text NOT NULL,
  `sw` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locales`
--

LOCK TABLES `locales` WRITE;
/*!40000 ALTER TABLE `locales` DISABLE KEYS */;
/*!40000 ALTER TABLE `locales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

LOCK TABLES `modules` WRITE;
/*!40000 ALTER TABLE `modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `name` varchar(64) NOT NULL DEFAULT '',
  `post` tinyint(3) NOT NULL DEFAULT '0',
  `dump` tinyint(3) NOT NULL DEFAULT '0',
  `timout` tinyint(3) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
CREATE TABLE `stories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` int(6) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `abstract` text NOT NULL,
  `updates` text NOT NULL,
  `article` text NOT NULL,
  `section` varchar(64) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `score` int(11) NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `status` int(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `subject` (`subject`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
INSERT INTO `stories` VALUES (1,1,'Using drupal 2.0 in 2019','Docker is amazing!','','Docker is amazing! I cant\'t imagine back in 2000 how long I would take to setup a LAMP stack.','',1573864425,0,0,2);
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `userid` varchar(15) NOT NULL DEFAULT '',
  `passwd` varchar(20) NOT NULL DEFAULT '',
  `real_email` varchar(60) NOT NULL DEFAULT '',
  `fake_email` varchar(60) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `stories` tinyint(2) DEFAULT '10',
  `mode` tinyint(1) DEFAULT '0',
  `sort` tinyint(1) DEFAULT '0',
  `threshold` tinyint(1) DEFAULT '0',
  `bio` tinytext NOT NULL,
  `theme` varchar(255) NOT NULL DEFAULT '',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `last_access` int(10) unsigned DEFAULT NULL,
  `last_host` varchar(255) DEFAULT NULL,
  `access` varchar(255) NOT NULL DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `history` text NOT NULL,
  `hash` varchar(12) NOT NULL DEFAULT '',
  `rating` decimal(8,4) NOT NULL DEFAULT '0.0000',
  `timezone` varchar(8) NOT NULL DEFAULT '0',
  `language` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'','fmfpereira','*00A51F3F48415C7D4E8','fmfpereira@gmail.com','','',10,0,0,0,'','','',1573864374,'172.18.0.3','',2,'','','0.0000','0','0');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchdog`
--

DROP TABLE IF EXISTS `watchdog`;
CREATE TABLE `watchdog` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `level` int(2) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `user` int(6) NOT NULL DEFAULT '0',
  `message` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(128) NOT NULL DEFAULT '',
  `hostname` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watchdog`
--

LOCK TABLES `watchdog` WRITE;
/*!40000 ALTER TABLE `watchdog` DISABLE KEYS */;
INSERT INTO `watchdog` VALUES (1,3,1573864328,0,'new account: `fmfpereira\' &lt;fmfpereira@gmail.com&gt;','/account.php','172.18.0.3'),(2,3,1573864346,0,'fmfpereira: account confirmation successful','/account.php?op=confirm&name=fmfpereira&hash=2142c9c1a882','172.18.0.3'),(3,3,1573864352,1,'session opened for user \'fmfpereira\'','/account.php?op=login','172.18.0.3'),(4,2,1573864425,1,'story: added \'Using drupal 2.0 in 2019\'','/submit.php','172.18.0.3'),(5,3,1573864446,1,'story: modified \'Using drupal 2.0 in 2019\'','/admin.php?mod=story&id=1','172.18.0.3'),(6,0,1573865014,0,'comment: added comment with subject \'Really nice\'','/story.php?op=reply&id=1&pid=0','172.18.0.3');
/*!40000 ALTER TABLE `watchdog` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

