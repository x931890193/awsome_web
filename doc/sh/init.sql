-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: go_web
-- ------------------------------------------------------
-- Server version	5.7.21-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` longtext,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `sort` bigint(20) DEFAULT NULL,
  `status` bigint(20) NOT NULL DEFAULT '2',
  `siteid` bigint(20) NOT NULL DEFAULT '0',
  `type` bigint(20) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `pid` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'About','About-T','About','2018-10-11 18:24:47',NULL,0,1,0,0,'/file/image/46/maxresdefault.jpg',0),(2,'News','News-T','News','2018-10-11 18:24:47',NULL,0,1,0,0,'/file/image/46/maxresdefault.jpg',0),(3,'Lifes','Lifes-T','Lifes','2018-10-11 18:24:47',NULL,0,1,0,0,'/file/image/46/maxresdefault.jpg',0),(4,'Production','Production-T','Production','2018-10-11 18:24:47',NULL,0,1,0,1,'/file/image/46/maxresdefault.jpg',0),(5,'Flower','Flower-T','Flower','2018-10-11 18:24:47',NULL,0,1,0,1,'/file/image/46/maxresdefault.jpg',4),(6,'TeaCup','TeaCup-T','TeaCup','2018-10-11 18:24:47',NULL,0,1,0,1,'/file/image/46/maxresdefault.jpg',4),(7,'Books','Books-T','Books','2018-10-11 18:24:47',NULL,0,1,0,1,'/file/image/46/maxresdefault.jpg',4),(8,'Musics','Musics-T','Musics','2018-10-11 18:24:47',NULL,0,1,0,1,'/file/image/46/maxresdefault.jpg',4);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `address` longtext,
  `phone` varchar(255) NOT NULL DEFAULT '',
  `webinfo` longtext,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `slogan` longtext,
  `code1` longtext,
  `code2` longtext,
  `code3` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'awsome_web','<div align=\"center\">\r\n	<p>\r\n		<img src=\"/file/image/53/68756e7465726875671e5573ac53bb5813b6b51d47d2db806b.gif\" alt=\"\" /> \r\n	</p>\r\n</div>','<meta description=\"awsome_web\" >\r\n<!-- some other script put in here -->','110','	{\r\n	\"1\":{\"name\":\"About\",\"limit\":6},\r\n        \"2\":{\"name\":\"News\",\"limit\":6},\r\n        \"3\":{\"name\":\"Lifes\",\"limit\":6},\r\n        \"4\":{\"name\":\"Production\",\"limit\":6},\r\n        \"5\":{\"name\":\"Flower\",\"limit\":6},\r\n        \"6\":{\"name\":\"TeaCup\",\"limit\":6}\r\n	}\r\n	','/file/image/34/61646d696e3d42c48e6e2365008f290859f2316c39.png','A Enterprise Web, You can have a try','Comment Code','Stats Code','Power by admin at 2018');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'后台','后台管理',1,1),(2,'后台','文章管理',1,2),(3,'后台','图片管理',1,3);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node`
--

DROP TABLE IF EXISTS `node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `level` int(11) NOT NULL DEFAULT '1',
  `pid` bigint(20) NOT NULL DEFAULT '0',
  `remark` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `group_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node`
--

LOCK TABLES `node` WRITE;
/*!40000 ALTER TABLE `node` DISABLE KEYS */;
INSERT INTO `node` VALUES (1,'权限中心','rbac',1,0,'',1,1),(2,'节点管理','node/index',2,1,'',1,1),(3,'节点首页','Index',3,2,'',1,1),(4,'增编节点','AddAndEdit',3,2,'',1,1),(5,'删除节点','DelNode',3,2,'',1,1),(6,'用户管理','user/index',2,1,'',1,1),(7,'用户首页','Index',3,6,'',1,1),(8,'增加用户','AddUser',3,6,'',1,1),(9,'更新用户','UpdateUser',3,6,'',1,1),(10,'删除用户','DelUser',3,6,'',1,1),(11,'分组管理','group/index',2,1,'',1,1),(12,'分组首页','Index',3,11,'',1,1),(13,'增加分组','AddGroup',3,11,'',1,1),(14,'更新分组','UpdateGroup',3,11,'',1,1),(15,'删除分组','DelGroup',3,11,'',1,1),(16,'角色管理','role/index',2,1,'',1,1),(17,'角色首页','index',3,16,'',1,1),(18,'增编角色','AddAndEdit',3,16,'',1,1),(19,'删除角色','DelRole',3,16,'',1,1),(20,'列出角色','GetList',3,16,'',1,1),(21,'显示权限','AccessToNode',3,16,'',1,1),(22,'增加权限','AddAccess',3,16,'',1,1),(23,'列出角色下用户','RoleToUserList',3,16,'',1,1),(24,'授予用户角色','AddRoleToUser',3,16,'',1,1),(25,'配置中心','config',1,0,'',1,1),(26,'网站配置','option/index',2,25,'',1,1),(27,'网站配置首页','Index',3,26,'',1,1),(28,'更新网站配置','UpdateOption',3,26,'',1,1),(29,'个人信息','user/index',2,25,'',1,1),(30,'个人信息首页','Index',3,29,'',1,1),(31,'更新个人信息','UpdateUser',3,29,'',1,1),(32,'文章中心','blog',1,0,'',1,2),(33,'目录列表','category/index',2,32,'',1,2),(34,'目录列表首页','Index',3,33,'',1,2),(35,'增加目录','AddCategory',3,33,'',1,2),(36,'修改目录','UpdateCategory',3,33,'',1,2),(37,'文章列表','paper/index',2,32,'',1,2),(38,'文章列表首页','Index',3,37,'',1,2),(39,'增加文章','AddPaper',3,37,'',1,2),(40,'修改文章','UpdatePaper',3,37,'',1,2),(41,'回收文章','DeletePaper',3,37,'',1,2),(42,'删除文章','RealDelPaper',3,37,'',1,2),(43,'图片中心','picture',1,0,'',1,3),(44,'相册管理','album/index',2,43,'',1,3),(45,'相册首页','Index',3,44,'',1,3),(46,'增加相册','AddAlbum',3,44,'',1,3),(47,'删除相册','DeleteAlbum',3,44,'',1,3),(48,'修改相册','UpdateAlbum',3,44,'',1,3),(49,'图片管理','photo/index',2,43,'',1,3),(50,'图片首页','Index',3,49,'',1,3),(51,'增加图片','AddPhoto',3,49,'',1,3),(52,'回收图片','DeletePhoto',3,49,'',1,3),(53,'修改图片','UpdatePhoto',3,49,'',1,3),(54,'删除图片','RealDelPhoto',3,49,'',1,3),(55,'删除目录','DeleteCategory',3,33,'',1,2),(56,'文章回收站','paper/rubbish',2,32,'',1,2),(57,'文章回收站','Rubbish',3,56,'',1,2),(58,'图片回收站','photo/rubbish',2,43,'',1,3),(59,'图片回收站','Rubbish',3,58,'',1,3),(60,'首页轮转','roll/index',2,25,'',1,1),(61,'轮转列表','Index',3,60,'',1,1),(62,'增加轮转','AddRoll',3,60,'',1,1),(63,'更新轮转','UpdateRoll',3,60,'',1,1),(64,'删除轮转','DeleteRoll',3,60,'',1,1),(65,'test','test',3,60,'',1,2);
/*!40000 ALTER TABLE `node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `node_roles`
--

DROP TABLE IF EXISTS `node_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `node_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `node_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `node_roles`
--

LOCK TABLES `node_roles` WRITE;
/*!40000 ALTER TABLE `node_roles` DISABLE KEYS */;
INSERT INTO `node_roles` VALUES (1,0,1);
/*!40000 ALTER TABLE `node_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `descontent` longtext,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(20) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `view` bigint(20) NOT NULL DEFAULT '0',
  `cid` bigint(20) NOT NULL DEFAULT '0',
  `istop` bigint(20) NOT NULL DEFAULT '0',
  `ishot` bigint(20) NOT NULL DEFAULT '0',
  `isroll` bigint(20) NOT NULL DEFAULT '0',
  `rollpath` varchar(255) NOT NULL DEFAULT '',
  `type` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES (141,'spring','','flower','2018-11-22 10:59:58',NULL,0,1,'sato','/file/image/69/61646d696e2a6a1818fe58e07e2adeb6f6863515d2.JPG',4,4,1,0,1,'',1),(142,'test','','','2018-11-11 03:02:25',NULL,1,1,'sato','/file/image/37/61646d696ebd3ff1000cf04b0c9abb71b0b9267fb4.JPG',38,5,1,0,1,'',1);
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'管理员角色','管理员','权限最高的一群人',1);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roll`
--

DROP TABLE IF EXISTS `roll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roll` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `sort` bigint(20) NOT NULL DEFAULT '0',
  `status` bigint(20) NOT NULL DEFAULT '0',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `view` bigint(20) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roll`
--

LOCK TABLES `roll` WRITE;
/*!40000 ALTER TABLE `roll` DISABLE KEYS */;
INSERT INTO `roll` VALUES (1,'test','请输入图片描述','2017-08-11 10:24:47','2018-11-23 18:47:12',0,1,'/file/image/34/61646d696e3d42c48e6e2365008f290859f2316c39.png',0,''),(3,'test','请输入图片描述','2017-08-11 10:24:47','2018-11-23 18:47:33',0,1,'/file/image/31/61646d696e99be8344411d1b8e9ab5c1c19ff21b9b.jpg',0,'');
/*!40000 ALTER TABLE `roll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logincount` int(11) NOT NULL DEFAULT '0',
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `nickname` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `remark` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '2',
  `lastlogintime` datetime DEFAULT NULL,
  `createtime` datetime NOT NULL,
  `lastip` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `nickname` (`nickname`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,2,'admin','21232f297a57a5a743894a0e4a801fc3','TuziAdmin','569929309@qq.com','God in awsome_web Country',2,'2018-11-23 18:44:44','2017-08-11 02:24:42','127.0.0.1'),(2,0,'test','098f6bcd4621d373cade4e832627b4f6','TuziTest','569929309@qq.com','Just a Test User',2,NULL,'2017-08-11 18:24:42','');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-23 19:16:19
