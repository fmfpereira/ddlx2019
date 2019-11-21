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
-- Table structure for table `access`
--

DROP TABLE IF EXISTS `access`;
CREATE TABLE `access` (
  `id` tinyint(10) NOT NULL AUTO_INCREMENT,
  `mask` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `reason` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mask` (`mask`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access`
--

LOCK TABLES `access` WRITE;
/*!40000 ALTER TABLE `access` DISABLE KEYS */;
/*!40000 ALTER TABLE `access` ENABLE KEYS */;
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
INSERT INTO `blocks` VALUES ('Calendar to browse archives','calendar',0,0,0,0,0),('Most recent poll','poll',0,0,0,0,0),('Sites','cloud',0,0,0,0,0),('Syndicate','node',0,0,0,0,0),('Top 10: users','rating',0,0,0,0,0),('User blogs','blog',0,0,0,0,0);
/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

LOCK TABLES `blog` WRITE;
/*!40000 ALTER TABLE `blog` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  `section` int(10) NOT NULL DEFAULT '0',
  `parent` int(10) NOT NULL DEFAULT '0',
  `weight` tinyint(3) NOT NULL DEFAULT '0',
  `pid` int(10) NOT NULL DEFAULT '0',
  `log` text NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,3,'asd',0,0,0,0,'');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boxes`
--

DROP TABLE IF EXISTS `boxes`;
CREATE TABLE `boxes` (
  `bid` tinyint(4) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '',
  `body` text,
  `info` varchar(128) NOT NULL DEFAULT '',
  `link` varchar(128) NOT NULL DEFAULT '',
  `type` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `subject` (`title`),
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
-- Table structure for table `bundle`
--

DROP TABLE IF EXISTS `bundle`;
CREATE TABLE `bundle` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`bid`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bundle`
--

LOCK TABLES `bundle` WRITE;
/*!40000 ALTER TABLE `bundle` DISABLE KEYS */;
/*!40000 ALTER TABLE `bundle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `url` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `type` varchar(16) NOT NULL DEFAULT '',
  `post` int(3) NOT NULL DEFAULT '0',
  `dump` int(3) NOT NULL DEFAULT '0',
  `expire` int(3) NOT NULL DEFAULT '0',
  `comment` int(2) unsigned NOT NULL DEFAULT '0',
  `submission` int(2) unsigned NOT NULL DEFAULT '0',
  `promote` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
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
-- Table structure for table `chatevents`
--

DROP TABLE IF EXISTS `chatevents`;
CREATE TABLE `chatevents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatevents`
--

LOCK TABLES `chatevents` WRITE;
/*!40000 ALTER TABLE `chatevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chatmembers`
--

DROP TABLE IF EXISTS `chatmembers`;
CREATE TABLE `chatmembers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(32) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatmembers`
--

LOCK TABLES `chatmembers` WRITE;
/*!40000 ALTER TABLE `chatmembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `chatmembers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collection`
--

DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `types` varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

LOCK TABLES `collection` WRITE;
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `cid` int(6) NOT NULL AUTO_INCREMENT,
  `pid` int(6) NOT NULL DEFAULT '0',
  `lid` int(6) NOT NULL DEFAULT '0',
  `author` int(6) NOT NULL DEFAULT '0',
  `subject` varchar(64) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `score` int(6) NOT NULL DEFAULT '0',
  `votes` int(6) NOT NULL DEFAULT '0',
  `link` varchar(16) NOT NULL DEFAULT '',
  `users` text NOT NULL,
  PRIMARY KEY (`cid`),
  KEY `lid` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cvs`
--

DROP TABLE IF EXISTS `cvs`;
CREATE TABLE `cvs` (
  `user` varchar(32) NOT NULL DEFAULT '',
  `files` text,
  `status` int(2) NOT NULL DEFAULT '0',
  `message` text,
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cvs`
--

LOCK TABLES `cvs` WRITE;
/*!40000 ALTER TABLE `cvs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cvs` ENABLE KEYS */;
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
-- Table structure for table `diary`
--

DROP TABLE IF EXISTS `diary`;
CREATE TABLE `diary` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diary`
--

LOCK TABLES `diary` WRITE;
/*!40000 ALTER TABLE `diary` DISABLE KEYS */;
/*!40000 ALTER TABLE `diary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry`
--

DROP TABLE IF EXISTS `entry`;
CREATE TABLE `entry` (
  `eid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `collection` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`eid`),
  UNIQUE KEY `name` (`name`,`collection`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entry`
--

LOCK TABLES `entry` WRITE;
/*!40000 ALTER TABLE `entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feed`
--

DROP TABLE IF EXISTS `feed`;
CREATE TABLE `feed` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `refresh` int(11) DEFAULT NULL,
  `uncache` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `link` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feed`
--

LOCK TABLES `feed` WRITE;
/*!40000 ALTER TABLE `feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `version` varchar(10) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text NOT NULL,
  `description` text NOT NULL,
  `homepage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fmfpereira`
--

DROP TABLE IF EXISTS `fmfpereira`;
CREATE TABLE `fmfpereira` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fmfpereira`
--

LOCK TABLES `fmfpereira` WRITE;
/*!40000 ALTER TABLE `fmfpereira` DISABLE KEYS */;
INSERT INTO `fmfpereira` VALUES (1,2,'','this is a node from the fmfpereira module');
/*!40000 ALTER TABLE `fmfpereira` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `body` text NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE `item` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `author` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `timestamp` int(11) DEFAULT NULL,
  `attributes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`iid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
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
INSERT INTO `modules` VALUES ('access'),('account'),('block'),('blog'),('book'),('box'),('calendar'),('cloud'),('comment'),('cvs'),('fmfpereira'),('forum'),('help'),('import'),('locale'),('meta'),('node'),('page'),('poll'),('queue'),('rating'),('search'),('statistics'),('story'),('system'),('watchdog');
/*!40000 ALTER TABLE `modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `nid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT '',
  `title` varchar(128) NOT NULL DEFAULT '',
  `score` int(11) NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `author` int(6) NOT NULL DEFAULT '0',
  `status` int(4) NOT NULL DEFAULT '1',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `comment` int(2) NOT NULL DEFAULT '1',
  `promote` int(2) NOT NULL DEFAULT '1',
  `moderate` text NOT NULL,
  `users` text NOT NULL,
  `timestamp_posted` int(11) NOT NULL DEFAULT '0',
  `timestamp_queued` int(11) NOT NULL DEFAULT '0',
  `timestamp_hidden` int(11) NOT NULL DEFAULT '0',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`nid`),
  KEY `type` (`lid`,`type`),
  KEY `author` (`author`),
  KEY `title` (`title`,`type`),
  KEY `promote` (`promote`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (1,1,'story',' Using drupal 3.0 in 2019',0,0,1,3,1574122502,0,1,'','',0,0,0,''),(2,1,'fmfpereira','fmfpereira node test',0,0,1,3,1574122582,0,1,'','',0,0,0,'');
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `link` varchar(128) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `format` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll`
--

DROP TABLE IF EXISTS `poll`;
CREATE TABLE `poll` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `runtime` int(10) NOT NULL DEFAULT '0',
  `voters` text NOT NULL,
  `active` int(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll`
--

LOCK TABLES `poll` WRITE;
/*!40000 ALTER TABLE `poll` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poll_choices`
--

DROP TABLE IF EXISTS `poll_choices`;
CREATE TABLE `poll_choices` (
  `chid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `chtext` varchar(128) NOT NULL DEFAULT '',
  `chvotes` int(6) NOT NULL DEFAULT '0',
  `chorder` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`chid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_choices`
--

LOCK TABLES `poll_choices` WRITE;
/*!40000 ALTER TABLE `poll_choices` DISABLE KEYS */;
/*!40000 ALTER TABLE `poll_choices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
CREATE TABLE `rating` (
  `user` int(6) NOT NULL DEFAULT '0',
  `new` int(6) NOT NULL DEFAULT '0',
  `old` int(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referer`
--

DROP TABLE IF EXISTS `referer`;
CREATE TABLE `referer` (
  `url` varchar(255) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referer`
--

LOCK TABLES `referer` WRITE;
/*!40000 ALTER TABLE `referer` DISABLE KEYS */;
/*!40000 ALTER TABLE `referer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `perm` text NOT NULL,
  PRIMARY KEY (`rid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'anonymous user','access blogs, access comments, access content, access cvs messages, access news feeds, access submission queue, access user ratings, search content'),(2,'authenticated user','');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site`
--

DROP TABLE IF EXISTS `site`;
CREATE TABLE `site` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `size` text NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `feed` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sid`),
  UNIQUE KEY `title` (`name`),
  UNIQUE KEY `url` (`link`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

LOCK TABLES `site` WRITE;
/*!40000 ALTER TABLE `site` DISABLE KEYS */;
/*!40000 ALTER TABLE `site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
CREATE TABLE `story` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(10) unsigned NOT NULL DEFAULT '0',
  `abstract` text NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
INSERT INTO `story` VALUES (1,1,'Docker is amazing! I cant\'t imagine back in 2000 how long I would take to setup a LAMP stack.','Docker is amazing! I cant\'t imagine back in 2000 how long I would take to setup a LAMP stack.');
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  `attributes` varchar(255) NOT NULL DEFAULT '',
  `collections` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`),
  UNIQUE KEY `name` (`name`,`collections`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL DEFAULT '',
  `moderate` text NOT NULL,
  PRIMARY KEY (`tid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `userid` varchar(32) NOT NULL DEFAULT '',
  `passwd` varchar(20) NOT NULL DEFAULT '',
  `real_email` varchar(60) NOT NULL DEFAULT '',
  `fake_email` varchar(60) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `nodes` tinyint(2) DEFAULT '10',
  `mode` tinyint(1) NOT NULL DEFAULT '0',
  `sort` tinyint(1) DEFAULT '0',
  `threshold` tinyint(1) DEFAULT '0',
  `bio` tinytext NOT NULL,
  `theme` varchar(255) NOT NULL DEFAULT '',
  `signature` varchar(255) NOT NULL DEFAULT '',
  `last_access` int(10) unsigned DEFAULT NULL,
  `last_host` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `hash` varchar(12) NOT NULL DEFAULT '',
  `timezone` varchar(8) DEFAULT NULL,
  `rating` decimal(8,2) DEFAULT NULL,
  `language` char(2) NOT NULL DEFAULT '',
  `role` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `real_email` (`real_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fmfpereira','fmfpereira','*00A51F3F48415C7D4E8','fmfpereira@gmail.com','','',10,0,0,0,'Me!','','',1574122820,'172.18.0.3',2,'',NULL,NULL,'','authenticated user');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variable`
--

DROP TABLE IF EXISTS `variable`;
CREATE TABLE `variable` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variable`
--

LOCK TABLES `variable` WRITE;
/*!40000 ALTER TABLE `variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchdog`
--

DROP TABLE IF EXISTS `watchdog`;
CREATE TABLE `watchdog` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `user` int(6) NOT NULL DEFAULT '0',
  `type` varchar(16) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `location` varchar(128) NOT NULL DEFAULT '',
  `hostname` varchar(128) NOT NULL DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `watchdog`
--

LOCK TABLES `watchdog` WRITE;
/*!40000 ALTER TABLE `watchdog` DISABLE KEYS */;
INSERT INTO `watchdog` VALUES (1,1,'special','node: added story \' Using drupal 3.0 in 2019\'','/submit.php?mod=story&op=Next+step','172.18.0.3',1574122502),(2,1,'special','node: added fmfpereira \'fmfpereira node test\'','/submit.php?mod=fmfpereira&op=Next+step','172.18.0.3',1574122582),(3,1,'error','warning: array_intersect(): Argument #2 is not an array in /var/www/html/includes/node.inc on line 167.','/admin.php?mod=node&op=status&id=2','172.18.0.3',1574122594),(4,1,'error','warning: array_intersect(): Argument #2 is not an array in /var/www/html/includes/node.inc on line 167.','/admin.php?mod=node&op=status&id=2','172.18.0.3',1574122622),(5,1,'error','warning: array_intersect(): Argument #2 is not an array in /var/www/html/includes/node.inc on line 167.','/admin.php?mod=node&op=status&id=2','172.18.0.3',1574122712);
/*!40000 ALTER TABLE `watchdog` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

