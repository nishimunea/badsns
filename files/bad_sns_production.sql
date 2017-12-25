-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: bad_sns_production
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','production','2017-12-12 21:47:59','2017-12-12 21:47:59');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feeds`
--

DROP TABLE IF EXISTS `feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeds` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `feed_type` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `exif` varchar(1000) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feeds`
--

LOCK TABLES `feeds` WRITE;
/*!40000 ALTER TABLE `feeds` DISABLE KEYS */;
INSERT INTO `feeds` VALUES (1,'text',1,NULL,NULL,'発言テスト。アプリちゃんと動くかな','2017-12-12 21:49:55','2017-12-12 21:49:55'),(2,'text',1,NULL,NULL,'こいつ・・・動くぞ！','2017-12-12 21:50:03','2017-12-12 21:50:03'),(3,'text',1,NULL,NULL,'画像投稿テスト','2017-12-12 21:50:11','2017-12-12 21:50:11'),(4,'image',1,'4.jpg','Sony SO-04H',NULL,'2017-12-12 21:50:22','2017-12-12 21:50:22'),(5,'text',1,NULL,NULL,'お・・・画像も投稿できた','2017-12-12 21:50:33','2017-12-12 21:50:33'),(6,'image',1,'6.jpg','Sony SO-04H',NULL,'2017-12-12 21:50:48','2017-12-12 21:50:48'),(7,'text',1,NULL,NULL,'はるぷさん、発言見えてます？','2017-12-12 21:51:27','2017-12-12 21:51:27'),(8,'text',2,NULL,NULL,'おつかれ。見えてるよ','2017-12-12 21:51:35','2017-12-12 21:51:35'),(9,'text',2,NULL,NULL,'画像も投稿できるのね。ディスク足りなくなりそうだから、容量を把握する仕組み考えないとね','2017-12-12 21:51:43','2017-12-12 21:51:43'),(10,'text',1,NULL,NULL,'あ、たしかにそうっすね。サクっと作ってみます','2017-12-12 21:51:52','2017-12-12 21:51:52'),(11,'text',1,NULL,NULL,'こんなんどうでしょう。サーバでPHP動かなかったので苦戦した・・・','2017-12-12 21:52:07','2017-12-12 21:52:07'),(12,'text',1,NULL,NULL,'http://localhost:10080/disk_monitor.php','2017-12-12 21:52:20','2017-12-12 21:52:20'),(13,'text',2,NULL,NULL,'お、いいね。ところでこのSNS、言語は何使ったの？','2017-12-12 21:52:55','2017-12-12 21:52:55'),(14,'text',1,NULL,NULL,'Railsですよー。','2017-12-12 21:53:05','2017-12-12 21:53:05'),(15,'text',2,NULL,NULL,'Railsアプリの上でPHP動いてるの？','2017-12-12 21:53:11','2017-12-12 21:53:11'),(16,'text',1,NULL,NULL,'はいー。え、だめっすか？','2017-12-12 21:53:17','2017-12-12 21:53:17'),(17,'text',2,NULL,NULL,'うーん','2017-12-12 21:53:22','2017-12-12 21:53:22'),(18,'text',1,NULL,NULL,'ひとまずこれで完成っすね。おつかれっした！','2017-12-12 21:53:30','2017-12-12 21:53:30'),(19,'text',3,NULL,NULL,'はじめまして！脆弱太郎（ぜいじゃくたろう）と言います。会社のみんなからは、略してゼータって呼ばれてます！','2017-12-12 21:55:06','2017-12-12 21:55:06'),(20,'text',3,NULL,NULL,'好きなHTTPヘッダは「WWW-Authenticate」です。理由は、なんとなく笑ってそうなんで','2017-12-12 21:55:17','2017-12-12 21:55:17'),(21,'text',4,NULL,NULL,'こんにちはー。好きな食べ物はラーメンっす。','2017-12-12 21:55:39','2017-12-12 21:55:39'),(22,'text',4,NULL,NULL,'今日も野菜マシマシっす。健康感じるっす。','2017-12-12 21:56:24','2017-12-12 21:56:24'),(23,'text',5,NULL,NULL,'じろうくん、おひさしぶりー。友達申請ありがとー','2017-12-12 21:56:38','2017-12-12 21:56:38'),(24,'text',5,NULL,NULL,'相変わらずラーメン好きだねー。僕はこれから朝ごはん。ほら、マンガ肉だよー','2017-12-12 21:57:05','2017-12-12 21:57:05'),(25,'image',5,'25.jpg','Sony SO-04H',NULL,'2017-12-12 21:57:16','2017-12-12 21:57:16'),(26,'text',4,NULL,NULL,'うわぁ、朝からすごいね！','2017-12-12 21:57:33','2017-12-12 21:57:33'),(27,'text',6,NULL,NULL,'Bad SNSのアカウント作ってみた','2017-12-12 21:59:31','2017-12-12 21:59:31'),(28,'text',6,NULL,NULL,'飯テロしに来たぞ〜','2017-12-12 21:59:59','2017-12-12 21:59:59'),(29,'image',6,'29.jpg',' ',NULL,'2017-12-12 22:00:10','2017-12-12 22:00:10'),(30,'image',6,'30.jpg',' ',NULL,'2017-12-12 22:00:17','2017-12-12 22:00:17'),(31,'image',6,'31.jpg',' ',NULL,'2017-12-12 22:00:26','2017-12-12 22:00:26'),(32,'text',1,NULL,NULL,'くっ・・・もはや暴力・・・','2017-12-12 22:00:37','2017-12-12 22:00:37'),(33,'image',6,'33.jpg',' ',NULL,'2017-12-12 22:00:48','2017-12-12 22:00:48'),(34,'image',6,'34.jpg',' ',NULL,'2017-12-12 22:00:56','2017-12-12 22:00:56'),(35,'text',1,NULL,NULL,'ぐはっ・・・','2017-12-12 22:01:03','2017-12-12 22:01:03'),(36,'text',6,NULL,NULL,'さて、これから神田へミニ四駆走らせに行ってきます','2017-12-12 22:01:10','2017-12-12 22:01:10');
/*!40000 ALTER TABLE `feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (1,1,2,'2017-12-12 21:51:14','2017-12-12 21:51:14'),(2,3,4,'2017-12-12 21:55:29','2017-12-12 21:55:29'),(3,4,5,'2017-12-12 21:56:30','2017-12-12 21:56:30'),(4,6,1,'2017-12-12 21:59:53','2017-12-12 21:59:53');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20171103073854'),('20171103073856'),('20171103073857');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `icon_file_name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'nishimunea','nishimunea','059a00192592d5444bc0caad7203f98b506332e2cf7abb35d684ea9bf7c18f08','47c0427a-1661-4b34-9a75-57f3701b3831.jpg','2017-12-12 21:49:43','2017-12-12 21:49:43'),(2,'harupu','harupu','0c7db76324507c03193844497cde0b6ce6332f43051e72cefc2af090d486b70a','73deebc8-db64-45b9-b5ed-e8686f9105bb.jpg','2017-12-12 21:51:04','2017-12-12 21:51:04'),(3,'taro','たろう','1d160b9337120c8c3a6002ec0fbc58996b646d1d28fd62bc893203e515129ef9','presets/3.png','2017-12-12 21:54:28','2017-12-12 21:54:28'),(4,'jiro','じろう','00f3491d1192b73b2981df154e9bd1a05ab62c823bdebce35fc14301f2dd6e71','presets/4.png','2017-12-12 21:54:50','2017-12-12 21:54:50'),(5,'saburo','さぶろう','e7d01253b2b10a96943736b83c018b6f8c007b96f47f44f3e8af9cc21e0465f8','presets/5.png','2017-12-12 21:56:03','2017-12-12 21:56:03'),(6,'yumano','ゆまの','e66860546f18cdbbcd86b35e18b525bffc67f772c650cedfe3ff7a0026fa1dee','8d7e4381-7b85-401f-9136-289c007d0865.jpg','2017-12-12 21:59:06','2017-12-12 21:59:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13  1:40:28
