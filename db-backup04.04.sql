-- MariaDB dump 10.19  Distrib 10.11.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: site_data
-- ------------------------------------------------------
-- Server version	10.11.2-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add book',7,'add_book'),
(26,'Can change book',7,'change_book'),
(27,'Can delete book',7,'delete_book'),
(28,'Can view book',7,'view_book'),
(29,'Can add publisher',8,'add_publisher'),
(30,'Can change publisher',8,'change_publisher'),
(31,'Can delete publisher',8,'delete_publisher'),
(32,'Can view publisher',8,'view_publisher'),
(33,'Can add tag',9,'add_tag'),
(34,'Can change tag',9,'change_tag'),
(35,'Can delete tag',9,'delete_tag'),
(36,'Can view tag',9,'view_tag'),
(37,'Can add author',10,'add_author'),
(38,'Can change author',10,'change_author'),
(39,'Can delete author',10,'delete_author'),
(40,'Can view author',10,'view_author'),
(41,'Can add book language',11,'add_booklanguage'),
(42,'Can change book language',11,'change_booklanguage'),
(43,'Can delete book language',11,'delete_booklanguage'),
(44,'Can view book language',11,'view_booklanguage'),
(45,'Can add translator',12,'add_translator'),
(46,'Can change translator',12,'change_translator'),
(47,'Can delete translator',12,'delete_translator'),
(48,'Can view translator',12,'view_translator');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES
(1,'pbkdf2_sha256$390000$0aihhlEibloaO11zEadylj$osqaWZxfpn8fKczqUgNYgWF2Bp0fpsgPmT5pzQi/ngc=','2023-04-05 10:20:54.052653',1,'devja','','','rkipek@gmail.com',1,1,'2023-03-11 16:33:09.638293'),
(2,'pbkdf2_sha256$390000$k3PROZ9k3WG9Z0MvOOtahk$skGtvHZh0PqVAxo68cGPfkAarL/rAjKJTO4lAtmmtjk=','2023-03-30 01:26:15.545918',0,'test','','','',0,1,'2023-03-29 23:54:44.184263');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES
(1,'2023-03-27 23:15:28.911914','4','Book object (4)',3,'',7,1),
(2,'2023-03-27 23:15:28.925428','3','Book object (3)',3,'',7,1),
(3,'2023-03-27 23:15:28.930043','2','Book object (2)',3,'',7,1),
(4,'2023-03-27 23:15:28.935784','1','Book object (1)',3,'',7,1),
(5,'2023-03-27 23:15:38.802170','1','Author object (1)',3,'',10,1),
(6,'2023-03-27 23:15:49.255389','1','O\'Reilly Media',3,'',8,1),
(7,'2023-03-27 23:17:58.657137','2','Author object (2)',3,'',10,1),
(8,'2023-03-27 23:18:17.944769','5','Book object (5)',3,'',7,1),
(9,'2023-03-27 23:18:29.553006','3','Apress',3,'',8,1),
(10,'2023-03-27 23:18:29.565773','2','O\'Reilly Media',3,'',8,1),
(11,'2023-03-29 23:54:44.655629','2','test',1,'[{\"added\": {}}]',4,1),
(12,'2023-04-05 10:24:13.765548','279','UI Animations with Lottie and After Effects',2,'[]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(5,'contenttypes','contenttype'),
(10,'main','author'),
(7,'main','book'),
(11,'main','booklanguage'),
(8,'main','publisher'),
(9,'main','tag'),
(12,'main','translator'),
(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES
(1,'contenttypes','0001_initial','2023-03-11 16:01:12.540713'),
(2,'auth','0001_initial','2023-03-11 16:01:13.090215'),
(3,'admin','0001_initial','2023-03-11 16:01:13.260113'),
(4,'admin','0002_logentry_remove_auto_add','2023-03-11 16:01:13.302548'),
(5,'admin','0003_logentry_add_action_flag_choices','2023-03-11 16:01:13.343254'),
(6,'contenttypes','0002_remove_content_type_name','2023-03-11 16:01:13.495926'),
(7,'auth','0002_alter_permission_name_max_length','2023-03-11 16:01:13.589073'),
(8,'auth','0003_alter_user_email_max_length','2023-03-11 16:01:13.652026'),
(9,'auth','0004_alter_user_username_opts','2023-03-11 16:01:13.715872'),
(10,'auth','0005_alter_user_last_login_null','2023-03-11 16:01:13.870686'),
(11,'auth','0006_require_contenttypes_0002','2023-03-11 16:01:13.879255'),
(12,'auth','0007_alter_validators_add_error_messages','2023-03-11 16:01:13.906291'),
(13,'auth','0008_alter_user_username_max_length','2023-03-11 16:01:13.936690'),
(14,'auth','0009_alter_user_last_name_max_length','2023-03-11 16:01:13.960533'),
(15,'auth','0010_alter_group_name_max_length','2023-03-11 16:01:13.989790'),
(16,'auth','0011_update_proxy_permissions','2023-03-11 16:01:14.001015'),
(17,'auth','0012_alter_user_first_name_max_length','2023-03-11 16:01:14.028406'),
(18,'main','0001_initial','2023-03-11 16:01:14.334700'),
(19,'main','0002_book_language_book_pages_book_subtitle','2023-03-11 16:01:14.508997'),
(20,'main','0003_alter_book_pdf','2023-03-11 16:01:14.563301'),
(21,'main','0004_author_remove_book_contributors_and_more','2023-03-11 16:01:14.739960'),
(22,'main','0005_alter_book_description_alter_book_language','2023-03-11 16:01:14.844491'),
(23,'main','0006_remove_book_authors_remove_book_tag_alter_tag_name_and_more','2023-03-11 16:01:15.397627'),
(24,'sessions','0001_initial','2023-03-11 16:01:15.449105'),
(25,'main','0007_booklanguage_alter_book_image_and_more','2023-03-27 17:30:59.475742'),
(26,'main','0008_book_my_file_name','2023-03-27 18:55:50.659287'),
(27,'main','0009_alter_book_my_file_name','2023-03-27 23:19:18.530749'),
(28,'main','0010_alter_book_tag','2023-04-05 10:23:45.367009'),
(29,'main','0011_book_amazon_link_book_books_author_info_book_code_and_more','2023-04-05 13:05:03.718207'),
(30,'main','0012_translator_book_translators','2023-04-05 13:12:52.337189');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES
('bfc47r22yy3exyf1cmtnezhevar494pn','.eJxVjDsOwjAQBe_iGln-J6akzxkse3eNA8iW4qRC3J1ESgHtm3nzZiFuawlbpyXMyK5MssvvliI8qR4AH7HeG4dW12VO_FD4STufGtLrdrp_gRJ72d-DHEiNKjtEmwG081YQqAwaJTjhvCHIQkRPWok960R0o5bJAFoDgOzzBfChOIE:1pb2A3:-aHtXdHrtzlA0Pro48t3EXQwk08DfKB5tKweF4QogOo','2023-03-25 16:33:35.155355'),
('jl927svhv3ig0db304omy2oh7admusxd','.eJxVjEEOwiAQRe_C2hAGcQCX7nuGZmBAqgaS0q6MdzckXej2v_f-W8y0b2Xee1rnhcVVgDj9boHiM9UB-EH13mRsdVuXIIciD9rl1Di9bof7d1Col1FHpsyWMqBOygNZZxxkTjZmJJNNOCutvTLeASdkDIYviB405QjBi88XCIQ4aA:1phUPH:l6B-32AE1knit_bp4jvUA_BYagn6Iroa_vZgeve-D9M','2023-04-12 11:55:59.488806');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_author`
--

DROP TABLE IF EXISTS `main_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=374 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_author`
--

LOCK TABLES `main_author` WRITE;
/*!40000 ALTER TABLE `main_author` DISABLE KEYS */;
INSERT INTO `main_author` VALUES
(3,'Paul Graham'),
(4,'Simon Collison'),
(5,'Michael Rash'),
(6,'Tom Adelstein'),
(7,'Bill Lubanovic'),
(8,'Arnold Robbins'),
(9,'Elbert Hannah'),
(10,'Linda Lamb'),
(11,'Noah Gift'),
(12,'Jeremy M. Jones'),
(13,'Federico Biancuzzi'),
(14,'Chromatic'),
(15,'John Ross'),
(16,'Stuart Halloway'),
(17,'Kim Schulz'),
(18,'James O. Coplien'),
(19,'Gertrud Bjornvig'),
(20,'Eelco Plugge'),
(21,'Tim Hawkins'),
(22,'Peter Membrey'),
(23,'Robert Sedgewick'),
(24,'Kevin Wayne'),
(25,'Randal L. Schwartz'),
(26,'brian d foy'),
(27,'Tom Phoenix'),
(28,'Niall O\'Higgins'),
(29,'Allen B. Downey'),
(30,'Julien Bayle'),
(31,'Rich Hickey'),
(32,'Al Sweigart'),
(33,'Charles Dierbach'),
(34,'Cyrille Rossant'),
(35,'William Sanders'),
(36,'Pavel Penev'),
(37,'Peter Gasston'),
(38,'Jessica McKellar'),
(39,'Abe Fettig'),
(40,'Akhil Wali'),
(41,'Wolfram Donat'),
(42,'Rik Van Bruggen'),
(43,'Steven Lott'),
(44,'Mario Casciaro'),
(45,'David Sklar'),
(46,'Adam Trachtenberg'),
(47,'Tim Cox'),
(48,'Cornel Amariei'),
(49,'Anton Kovalyov'),
(50,'Henry Garner'),
(51,'Leonardo Borges'),
(52,'Arun Ravindran'),
(53,'Amit Saha'),
(54,'Achilleas Pipinellis'),
(55,'Pethuru Raj'),
(56,'Jeeva S. Chelladhurai'),
(57,'Vinod Singh'),
(58,'Usama Dar'),
(59,'Hannu Krosing'),
(60,'Jim Mlodgenski'),
(61,'Kirk Roybal'),
(62,'Burkhard A. Meier'),
(63,'Rakesh Vidya Chandra'),
(64,'Bala Subrahmanyam Varanasi'),
(65,'Arun Tigeraniya'),
(66,'Amit Nandi'),
(67,'Benjamin Klein'),
(68,'Edmund Weitz'),
(69,'Jennifer Davis'),
(70,'Ryn Daniels'),
(71,'Gareth Dwyer'),
(72,'Caleb Doxsey'),
(73,'Daniel J. Barrett'),
(74,'Jakub Narebski'),
(75,'Cyrus Dasadia'),
(76,'Amol Nayak'),
(77,'Dipanjan Sarkar'),
(78,'Aidas Bendoraitis'),
(79,'Stefano Picozzi'),
(80,'Mike Hepburn'),
(81,'Noel O\'Connor'),
(82,'Zed A. Shaw'),
(83,'Brad Dayley'),
(84,'Brendan Dayley'),
(85,'Caleb Dayley'),
(86,'Justin Richer'),
(87,'Antonio Sanso'),
(88,'Brian Okken'),
(89,'Harry Percival'),
(90,'Sayan Mukhopadhyay'),
(91,'Mathieu Nayrolles'),
(92,'Taweh Beysolow II'),
(93,'Anand Deshpande'),
(94,'Manish Kumar'),
(95,'Ron Brash'),
(96,'Ganesh Naik'),
(97,'Mariano Anaya'),
(98,'Mike Street'),
(99,'Andrea Passaglia'),
(100,'Paul Halliday'),
(101,'Dmitry Zinoviev'),
(102,'Michael Hausenblas'),
(103,'David Paper'),
(104,'Dejan Sarka'),
(105,'Jake Kronika'),
(106,'Aneeta Sharma'),
(107,'Isaac Abraham'),
(108,'Dustin Campbell'),
(109,'Tomas Petricek'),
(110,'Brett Nelson'),
(111,'Kenneth Geisshirt'),
(112,'Emanuele Zattin'),
(113,'Aske Olsson'),
(114,'Tony Hsu'),
(115,'Kaiwan N Billimoria'),
(116,'Jeanine Meyer'),
(117,'A.J. Henley'),
(118,'Dave Wolf'),
(119,'Fabrizio Romano'),
(120,'Gaston C. Hillar'),
(121,'Alex Banks'),
(122,'Eve Porcello'),
(123,'David Clinton'),
(124,'Phillip Johnson'),
(125,'Harish Garg'),
(126,'Daniel Gaspar'),
(127,'Jack Stouffer'),
(128,'Sergey Grinev'),
(129,'Donald A. Tevault'),
(130,'Giuseppe Bonaccorso'),
(131,'Nicolas Bevacqua'),
(132,'Ruslan Osipov'),
(133,'Sean McManus'),
(134,'Federico Kereki'),
(135,'Nihad Hassan'),
(136,'Rami Hijazi'),
(137,'Sathyajith Bhat'),
(138,'Anthony DeBarros'),
(139,'Seppe vanden Broucke'),
(140,'Bart Baesens'),
(141,'Raju Kumar Mishra'),
(142,'Matthew Lamons'),
(143,'Rahul Kumar'),
(144,'Abhishek Nagaraja'),
(145,'Valentina Porcu'),
(146,'Ryan Marvin'),
(147,'Mark Ng’ang’a'),
(148,'Amos Omondi'),
(149,'Mike Driscoll'),
(150,'Michael Heydt'),
(151,'Venkat Subramaniam'),
(152,'Julien Vehent'),
(153,'John Daniel Leon'),
(154,'Naomi Ceder'),
(155,'David Taieb'),
(156,'Erik Hanchett'),
(157,'Benjamin Listwon'),
(158,'Gabor Hajba'),
(159,'Will Kurt'),
(160,'Joshua Lospinoso'),
(161,'Sunil Kapil'),
(162,'Mikael Olsson'),
(163,'Joel Grus'),
(164,'Tommaso Teofili'),
(165,'Max Pumperla'),
(166,'Kevin Ferguson'),
(167,'Ian Miell'),
(168,'Aidan Hobson Sayers'),
(169,'Mark Williams'),
(170,'Cory Benfield'),
(171,'Brian Warner'),
(172,'Moshe Zadka'),
(173,'Dustin Mitchell'),
(174,'Kevin Samuel'),
(175,'Pierre Tardy'),
(176,'Jason Andress'),
(177,'W. David Ashley'),
(178,'Andrew Krause'),
(179,'Cody Lindley'),
(180,'Jonathan Wexler'),
(181,'Simon Holmes'),
(182,'Clive Harber'),
(183,'Mark Needham'),
(184,'Amy  Hodler'),
(185,'Thomas Mailund'),
(186,'Sammie Bae'),
(187,'Sufyan bin Uzayr'),
(188,'Nicholas Cloud'),
(189,'Tim Ambler'),
(190,'Jojo John Moolayil'),
(191,'Peter Farrell'),
(192,'Hobson Lane'),
(193,'Cole Howard'),
(194,'Hannes Hapke'),
(195,'Nina Zumel'),
(196,'John Mount'),
(197,'Kevin Hoffman'),
(198,'Moritz Lenz'),
(199,'Eric Matthes'),
(200,'Sebastian Raschka'),
(201,'Vahid Mirjalili'),
(202,'Pradeepta Mishra'),
(203,'Nader Dabit'),
(204,'Peter Yaworski'),
(205,'Dan Bergh Johnsson'),
(206,'Daniel Deogun'),
(207,'Daniel Sawano'),
(208,'William Shotts'),
(209,'Paul McFedries'),
(210,'Bob Gregory'),
(211,'Chet Ramey'),
(212,'Brian Fox'),
(213,'Joshua Willman'),
(214,'Emily Robinson'),
(215,'Jacqueline Nolis'),
(216,'Carlos Rojas'),
(217,'Betsy Beyer'),
(218,'Piotr  Lewandowski'),
(219,'Ana  Oprea'),
(220,'Paul  Blankinship'),
(221,'Heather  Adkins'),
(222,'Adam  Stubblefield'),
(223,'Art Yudin'),
(224,'Liz Rice'),
(225,'Hisham El-Amir'),
(226,'Mahmoud Hamdy'),
(227,'Antonio Mele'),
(228,'Ben Lopatin'),
(229,'Shama Hoque'),
(230,'Mark Richards'),
(231,'Neal Ford'),
(232,'Micha Gorelick'),
(233,'Ian Ozsvald'),
(234,'David Landup'),
(235,'Marcus Sanatan'),
(236,'Adam Scott'),
(237,'David Flanagan'),
(238,'Shashank Mohan Jain'),
(239,'Subhashini Chellappan'),
(240,'Dharanitharan Ganesan'),
(241,'Yuli Vasiliev'),
(242,'Matt Harrison'),
(243,'Theodore Petrou'),
(244,'Sourabh Mishra'),
(245,'Peter Bruce'),
(246,'Andrew Bruce'),
(247,'Peter  Gedeck'),
(248,'Kevin Tatroe'),
(249,'Peter MacIntyre'),
(250,'Jaime Buelta'),
(251,'Christian Mayer'),
(252,'Adam Boduch'),
(253,'Roy Derks'),
(254,'Ben Frain'),
(255,'Sven Vermeulen'),
(256,'Marco Faella'),
(257,'Titus  Winters'),
(258,'Hyrum  Wright'),
(259,'Tom  Manshreck'),
(260,'Jean-Georges Perrin'),
(261,'Michal Herda'),
(262,'Flavio Copes'),
(263,'Hannah Stepanek'),
(264,'Ken Youens-Clark'),
(265,'Yakov Fain'),
(266,'Anton Moiseev'),
(267,'David Both'),
(268,'Caleb Hattingh'),
(269,'Marcello La Rocca'),
(270,'JJ Geewax'),
(271,'Jeroen Janssens'),
(272,'Leonard Apeltsin'),
(273,'Travis Jeffery'),
(274,'Daniel G. Graham'),
(275,'Michal Jaworski'),
(276,'Tarek Ziade'),
(277,'James Urquhart'),
(278,'Dennis Byrne'),
(279,'Joseph Babcock'),
(280,'Raghav Bali'),
(281,'Jesse Liberty'),
(282,'Billy Yuen'),
(283,'Alexander Matyushentsev'),
(284,'Todd Ekenstam'),
(285,'Jesse Suen'),
(286,'Alessandro Negro'),
(287,'Samer Buna'),
(288,'Matthew MacDonald'),
(289,'Shelley Powers'),
(290,'Jack-Benny Persson'),
(291,'Alexey Grigorev'),
(292,'Marleen Meier'),
(293,'David Baldwin'),
(294,'Nathan Rozentals'),
(295,'Guy Harrison'),
(296,'Michael Harrison'),
(297,'Boris Paskhaver'),
(298,'Bruce Nikkel'),
(299,'Vsevolod Domkin'),
(300,'Miki Tebeka'),
(301,'Steven F. Lott'),
(302,'Dusty Phillips'),
(303,'Masato Hagiwara'),
(304,'Patrick Viafore'),
(305,'Tim McNamara'),
(306,'Alice Zhao'),
(307,'Luis Atencio'),
(308,'John Au-Yeung'),
(309,'Engy Fouda'),
(310,'Gineesh Madapparambath'),
(311,'Shaun R Smith'),
(312,'Nabendu Biswas'),
(313,'Abdulazeez Abdulazeez Adeshina'),
(314,'Mehdi Medjaoui'),
(315,'Erik Wilde'),
(316,'Ronnie Mitra'),
(317,'Mike Amundsen'),
(318,'Rafal Leszko'),
(319,'Jonathan Rioux'),
(320,'Yehonathan Sharvit'),
(321,'Amita Kapoor'),
(322,'Antonio Gulli'),
(323,'Sujit Pal'),
(324,'Greg Lim'),
(325,'Daniel Correa'),
(326,'Maurício Aniche'),
(327,'Luciano Ramalho'),
(328,'Juha Hinkula'),
(329,'Eric Smith'),
(330,'Sachin Rathee'),
(331,'Amol Chobe'),
(332,'Corey Ball'),
(333,'Dr. Basant Agarwal'),
(334,'Atishay Jain'),
(335,'Rosemary Wang'),
(336,'Bob Plantz'),
(337,'Eric Sarrion'),
(338,'Catalin Ghita'),
(339,'Jagdeep Jain'),
(340,'William Oettinger'),
(341,'Mikael Krief'),
(342,'Josh Goldberg'),
(343,'John Madieu'),
(344,'Phil Wilkins'),
(345,'Joos Korstanje'),
(346,'Crystalynn Shelton'),
(347,'Vijay Kumar Velu'),
(348,'Rick van Hattem'),
(349,'Jim Ledin'),
(350,'Noel Rappin'),
(351,'Tadej Magajna'),
(352,'Gilit Saporta'),
(353,'Shoshana Maraney'),
(354,'Gabor Guta'),
(355,'Matthew Fowler'),
(356,'Jake VanderPlas'),
(357,'Howard E. Poston'),
(358,'Karuna Murti'),
(359,'Christian Ciceri'),
(360,'Dave Farley'),
(361,'Andrew Harmel-Law'),
(362,'Michael Keeling'),
(363,'Carola Lilienthal'),
(364,'Joao Rosa'),
(365,'Alexander von Zitzewitz'),
(366,'Rene Weiss'),
(367,'Eoin Woods'),
(368,'John Knight'),
(369,'Nate Swenson'),
(370,'Michael Dame'),
(371,'Mireia Alegre Ruiz'),
(372,'Emilio Rodriguez Martinez'),
(373,'Yannick Lefebvre');
/*!40000 ALTER TABLE `main_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_book`
--

DROP TABLE IF EXISTS `main_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_book` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(230) NOT NULL,
  `image` varchar(100) NOT NULL,
  `pdf` varchar(100) NOT NULL,
  `publication_date` int(10) unsigned NOT NULL,
  `description` longtext NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `publisher_id` bigint(20) NOT NULL,
  `language_id` bigint(20) NOT NULL,
  `pages` int(11) NOT NULL,
  `subtitle` varchar(230) NOT NULL,
  `my_file_name` varchar(250) NOT NULL,
  `amazon_link` varchar(200) NOT NULL,
  `books_author_info` longtext NOT NULL,
  `code` varchar(200) NOT NULL,
  `link_helion` varchar(200) NOT NULL,
  `oryginal_title` varchar(270) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `main_book_publisher_id_70dfdb61_fk_main_publisher_id` (`publisher_id`),
  KEY `main_book_language_id_5b016d14` (`language_id`),
  CONSTRAINT `main_book_language_id_5b016d14_fk_main_booklanguage_id` FOREIGN KEY (`language_id`) REFERENCES `main_booklanguage` (`id`),
  CONSTRAINT `main_book_publisher_id_70dfdb61_fk_main_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `main_publisher` (`id`),
  CONSTRAINT `main_book_publication_date_04f5b07a_check` CHECK (`publication_date` >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_book`
--

LOCK TABLES `main_book` WRITE;
/*!40000 ALTER TABLE `main_book` DISABLE KEYS */;
INSERT INTO `main_book` VALUES
(6,'Hackers & Painters','9780596006624.png','',2004,'Written in clear, narrative style, Hackers &amp; Painters examines issues such as the rightness of web-based applications, the programming language renaissance, spam filtering, the Open Source Movement, internet startups and more. In each essay, Graham moves beyond widely held beliefs about the way ...','9780596006624',4,1,272,'Big Ideas from the Computer Age','2004 Hackers & Painters.pdf','','','','',''),
(7,'Beginning CSS Web Development','9781590596890.png','',2006,'Cascading Style Sheets (CSS) are one of the most important technologies on the web today. They give web developers the power to style their web sites so those sites are usable, compact, good looking, consistently displayable, and quick and efficient to change if so desired.There are many books out t...','9781590596890',5,1,448,'From Novice to Professional','2006 Beginning Perl Web Development - From Novice To Professional.pdf','','','','',''),
(8,'Linux Firewalls','9781593271411.png','',2007,'System administrators need to stay ahead of new security vulnerabilities that leave their networks exposed every day. A firewall and an intrusion detection systems (IDS) are two important weapons in that fight, enabling you to proactively deny access and monitor network traffic for signs of an attac...','9781593271411',6,1,336,'Attack Detection and Response with iptables, psad, and fwsnort','2007 LINUX FIREWALLS.pdf','','','','',''),
(9,'Linux System Administration','9780596009526.png','',2007,'If you&#039;re an experienced system administrator looking to acquire Linux skills, or a seasoned Linux user facing a new challenge, Linux System Administration offers practical knowledge for managing a complete range of Linux systems and servers. The book summarizes the steps you need to build ever...','9780596009526',4,1,304,'Solve Real-life Linux Problems Quickly','2007 Linux System Administration.pdf','','','','',''),
(10,'Learning the vi and Vim Editors, Seventh Edition','9780596529833.png','',2008,'There&#039;s nothing that hard-core Unix and Linux users are more fanatical about than their text editor. Editors are the subject of adoration and worship, or of scorn and ridicule, depending upon whether the topic of discussion is your editor or someone else&#039;s.vi has been the standard editor f...','9780596529833',4,1,496,'Text processing at maximum speed and power','2008 Learning the vi and Vim Editors.pdf','','','','',''),
(11,'Python for Unix and Linux System Administration','9780596515829.png','',2008,'Python is an ideal language for solving problems, especially for Linux and Unix. With this pragmatic book, administrators can review various tasks that often occur in the management of these systems, and learn how Python can provide a more efficient way to handle them. Once you finish this book, you...','9780596515829',4,1,464,'Efficient Problem Solving with Python','2008 Python for Unix and Linux System Administration.pdf','','','','',''),
(12,'Masterminds of Programming','9780596515171.png','',2009,'Masterminds of Programming features exclusive interviews with the creators of several historic and highly influential programming languages. In this unique collection, you&#039;ll learn about the processes that led to specific design decisions, including the goals they had in mind, the trade-offs th...','9780596515171',4,1,496,'Conversations with the Creators of Major Programming Languages','2009 Masterminds of Programming.pdf','','','','',''),
(13,'Network Know-How','9781593271916.png','',2009,'Network Know-How is your guide to connecting your machines, filled with practical advice that will show you how to get things done. You&#039;ll learn the nitty-gritty of network setup, design, and maintenance, from running cables and placing wireless access points to configuring file sharing and pri...','9781593271916',6,1,288,'An Essential Guide for the Accidental Admin','2009 NETWORK KNOW-HOW.pdf','','','','',''),
(14,'Programming Clojure','9781934356333.png','',2009,'If you are a Java programmer, if you care about concurrency, or if you enjoy working in low-ceremony language such as Ruby or Python, Programming Clojure is for you. Clojure is a general-purpose language with direct support for Java, a modern Lisp dialect, and support in both the language and data s...','9781934356333',7,1,304,'','2009 Programming Clojure.pdf','','','','',''),
(15,'Hacking Vim 7.2','9781849510509.png','',2010,'Vim is one of the most powerful open-source editors used by programmers and system administrators around the world. While Vim itself is inherently a powerful editor, personalizing it to suit your needs can be a daunting task. However, it is possible to do so with the help of this book.This book cont...','9781849510509',8,1,244,'Ready-to-use hacks with solutions for common situations encountered by users of the Vim editor','2010 Hacking Vim.pdf','','','','',''),
(16,'Lean Architecture','9780470684207.png','',2010,'More and more Agile projects are seeking architectural roots as they struggle with complexity and scale - and they&#039;re seeking lightweight ways to do it.Still seeking? In this book the authors help you to find your own path; Taking cues from Lean development, they can help steer your project tow...','9780470684207',9,1,376,'for Agile Software Development','2010 Lean Architecture for Agile Software Development.pdf','','','','',''),
(17,'The Definitive Guide to MongoDB','9781430230519.png','',2010,'MongoDB, a cross-platform NoSQL database, is the fastest-growing new database in the world. MongoDB provides a rich document-oriented structure with dynamic queries that you&#039;ll recognize from RDBMS offerings such as MySQL. In other words, this is a book about a NoSQL database that does not requ...','9781430230519',5,1,328,'The NoSQL Database for Cloud and Desktop Computing','2010 The Definitive Guide to MongoDB The NoSQL Database for Cloud and Desktop Computing by Eelco Plugge, Tim Hawkins, Peter Membrey (z-lib.org).pdf','','','','',''),
(18,'Algorithms, 4th Edition','9780321573513.png','',2011,'The latest version of Sedgewick&#039;s best-selling series, reflecting an indispensable body of knowledge developed over the past several decades.Full treatment of data structures and algorithms for sorting, searching, graph processing, and string processing, including fifty algorithms every program...','9780321573513',10,1,976,'Essential Information about Algorithms and Data Structures','2011 Algorithms.pdf','','','','',''),
(19,'Learning Perl, 6th Edition','9781449303587.png','',2011,'If you&#039;re just getting started with Perl, this is the book you want-whether you&#039;re a programmer, system administrator, or web hacker. Nicknamed &amp;quot;the Llama&amp;quot; by two generations of users, this bestseller closely follows the popular introductory Perl course taught by the auth...','9781449303587',4,1,390,'Making Easy Things Easy and Hard Things Possible','2011 Learning Perl (6th Edition).pdf','','','','',''),
(20,'MongoDB and Python','9781449310370.png','',2011,'Learn how to leverage MongoDB with your Python applications, using the hands-on recipes in this book. You get complete code samples for tasks such as making fast geo queries for location-based apps, efficiently indexing your user documents for social-graph lookups, and many other scenarios.This guid...','9781449310370',4,1,68,'Patterns and processes for the popular document-oriented database','2011 MongoDB and Python.pdf','','','','',''),
(21,'Think Complexity','9781449314637.png','',2012,'Expand your Python skills by working with data structures and algorithms in a refreshing context - through an eye-opening exploration of complexity science. Whether you&#039;re an intermediate-level Python programmer or a student of computational modeling, you&#039;ll delve into examples of complex ...','9781449314637',4,1,158,'Complexity Science and Computational Modeling','2012 Think Complexity.pdf','','','','',''),
(22,'Think Python','9781449330729.png','',2012,'If you want to learn how to program, working with Python is an excellent way to start. This hands-on guide takes you through the language one step at a time, beginning with basic programming concepts before moving on to functions, recursion, data structures, and object-oriented design.Through exerci...','9781449330729',4,1,300,'How to Think Like a Computer Scientist','2012 Think Python.pdf','','','','',''),
(23,'C Programming for Arduino','9781849517584.png','',2013,'Physical computing allows us to build interactive physical systems by using software &amp;amp; hardware in order to sense and respond to the real world. C Programming for Arduino will show you how to harness powerful capabilities like sensing, feedbacks, programming and even wiring and developing yo...','9781849517584',8,1,512,'Learn how to program and use Arduino boards with a series of engaging examples, illustrating each core concept','2013 C Programming for Arduino.pdf','','','','',''),
(24,'Clojure In Small Pieces','1001672421086.png','',2013,'Rich Hickey invented Clojure. This is a fork of the project to experiment with literate programming as a development and documentation technology.Clojure is a break with the past traditions of Lisp. This literate fork is a break with the past traditions of code development. As such it is intended as...','1001672421086',11,1,1801,'','2013 Clojure in Small Pieces.pdf','','','','',''),
(25,'Hacking Secret Ciphers with Python','9781482614374.png','',2013,'There are many books that teach beginners how to write secret messages using ciphers. There are a couple books that teach beginners how to hack ciphers. As far as I can tell, there are no books to teach beginners how to write programs to hack ciphers. This book fills that gap.This book is for comple...','9781482614374',11,1,440,'A beginner\'s guide to cryptography and computer programming with Python','2013 Hacking Secret Ciphers with Python.pdf','','','','',''),
(26,'Introduction to Computer Science Using Python','9780470555156.png','',2013,'Introduction to Computer Science Using Python: A Computational Problem-Solving Focusintroduces students to programming and computational problem-solving via a back-to-basics, step-by-step, objects-late approach that makes this book easy to teach and learn from. Students are provided with a thorough ...','9780470555156',9,1,580,'A Computational Problem-Solving Focus','2013 Introduction to computer science using python.pdf','','','','',''),
(27,'Learning IPython for Interactive Computing and Data Visualization','9781782169932.png','',2013,'You already use Python as a scripting language, but did you know it is also increasingly used for scientific computing and data analysis? Interactive programming is essential in such exploratory tasks and IPython is the perfect tool for that. Once you&#039;ve learnt it, you won&#039;t be able to liv...','9781782169932',8,1,138,'Learn IPython for interactive Python programming, high-performance numerical computing, and data visualization','2013 Learning IPython for Interactive Computing.pdf','','','','',''),
(28,'Learning PHP Design Patterns','9781449344917.png','',2013,'Build server-side applications more efficiently - and improve your PHP programming skills in the process - by learning how to use design patterns in your code. This book shows you how to apply several object-oriented patterns through simple examples, and demonstrates many of them in full-fledged wor...','9781449344917',4,1,362,'','2013 Learning Python Design Patterns.pdf','','','','',''),
(29,'Lisp Web Tales','1001631195565.png','',2013,'The book is a set of tutorials and examples. It uses the Common Lisp language and some of the libraries we&#039;ll be using for the examples and tutorials include:- The hunchentoot web server- The Restas web framework- The SEXML library for outputting XML and HTML- Closure-template for HTML templati...','1001631195565',11,1,91,'','2013 Lisp Web Tales.pdf','','','','',''),
(30,'The Modern Web','9781593274870.png','',2013,'Today&#039;s web technologies are evolving at near-light speed, bringing the promise of a seamless Internet ever closer to reality. When users can browse the Web on a three-inch phone screen as easily as on a fifty-inch HDTV, what&#039;s a developer to do?Peter Gasston&#039;s The Modern Web will gui...','9781593274870',6,1,264,'Multi-Device Web Development with HTML5, CSS3, and JavaScript','2013 The Modern Web.pdf','','','','',''),
(31,'Twisted Network Programming Essentials, 2nd Edition','9781449326111.png','',2013,'Get started with Twisted, the event-driven networking framework written in Python. With this introductory guide, you&#039;ll learn the key concepts and design patterns to build event-driven client and server applications for many popular networking protocols. You&#039;ll also learn the tools to buil...','9781449326111',4,1,194,'Event-driven Network Programming with Python','2013 Twisted Network Programming Essentials.pdf','','','','',''),
(32,'Clojure for Machine Learning','9781783284351.png','',2014,'Clojure for Machine Learning is an introduction to machine learning techniques and algorithms. This book demonstrates how you can apply these techniques to real-world problems using the Clojure programming language.It explores many machine learning techniques and also describes how to use Clojure to...','9781783284351',8,1,292,'Successfully leverage advanced machine learning techniques using the Clojure ecosystem','2014 Clojure for Machine Learning.pdf','','','','',''),
(33,'Learn Raspberry Pi Programming with Python','9781430264248.png','',2014,'Learn Raspberry Pi Programming with Python will show you how to program your nifty new $35 computer to make a web spider, a weather station, a media server, and more. You&#039;ll learn how to program in Python on your Raspberry Pi with hands-on examples and fun projects.Even if you&#039;re completel...','9781430264248',5,1,256,'','2014 Learn Raspberry Pi Programming with Python.pdf','','','','',''),
(34,'Learning Neo4j','9781849517164.png','',2014,'Learning Neo4j provides you with a step-by-step approach of adopting Neo4j, the world&#039;s leading graph database. This book includes a lot of background information, helps you grasp the fundamental concepts behind this radical new way of dealing with connected data, and will give you lots of exam...','9781849517164',8,1,222,'Run blazingly fast queries on complex graph datasets with the power of the Neo4j graph database','2014 Learning Neo4j.pdf','','','','',''),
(35,'Mastering Object-oriented Python','9781783280971.png','',2014,'This practical example-oriented guide will teach you advanced concepts of object-oriented programming in Python. This book will present detailed examples of almost all of the special method names that support creating classes that integrate seamlessly with Python&#039;s built-in features. It will sh...','9781783280971',8,1,634,'Grasp the intricacies of object-oriented programming in Python in order to efficiently build powerful real-world applications','2014 Mastering Object-oriented Python.pdf','','','','',''),
(36,'Node.js Design Patterns','9781783287314.png','',2014,'Node.js is a massively popular software platform that lets you use JavaScript to easily create scalable server-side applications. It allows you to create efficient code, enabling a more sustainable way of writing software made of only one language across the full stack, along with extreme levels of ...','9781783287314',8,1,454,'Get the best out of Node.js by mastering a series of patterns and techniques to create modular, scalable, and efficient applications','2014 Node.js Design Patterns.pdf','','','','',''),
(37,'PHP Cookbook, 3rd Edition','9781449363758.png','',2014,'Want to understand a certain PHP programming technique? Or learn how to accomplish a particular task? This cookbook is the first place to look. With more than 350 code-rich recipes revised for PHP 5.4 and 5.5, this third edition provides updated solutions for generating dynamic web content - everyth...','9781449363758',4,1,820,'Solutions & Examples for PHP Programmers','2014 PHP Cookbook.pdf','','','','',''),
(38,'Raspberry Pi Cookbook for Python Programmers','9781849696623.png','',2014,'The Raspberry Pi foundation has been selling their computers since 2012 with the aim of inspiring programmers and engineers.Raspberry Pi Cookbook for Python Programmers is a practical guide for getting the most out of this little computer. It will guide you through the many uses of the Raspberry Pi ...','9781849696623',8,1,402,'Over 50 easy-to-comprehend tailor-made recipes to get the most out of the Raspberry Pi and unleash its huge potential using Python','2014 Raspberry Pi Cookbook for Python Programmers.pdf','','','','',''),
(39,'Think Stats, 2nd Edition','9781491907337.png','',2014,'If you know how to program, you have the skills to turn data into knowledge, using tools of probability and statistics. This concise introduction shows you how to perform statistical analysis computationally, rather than mathematically, with programs written in Python.By working with a single case s...','9781491907337',4,1,226,'Exploratory Data Analysis','2014 Think stats.pdf','','','','',''),
(40,'Arduino Development Cookbook','9781783982943.png','',2015,'The single-chip computer board Arduino is small in size but vast in scope, capable of being used for electronic projects from robotics through to home automation. The most popular embedded platform in the world, Arduino users range from school children to industry experts, all incorporating it into ...','9781783982943',8,1,246,'Over 50 hands-on recipes to quickly build and understand Arduino projects, from the simplest to the most extraordinary','2015 Arduino Development Cookbook.pdf','','','','',''),
(41,'Beautiful JavaScript','9781449370756.png','',2015,'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?This guide gives you a...','9781449370756',4,1,168,'Leading Programmers Explain How They Think','2015 Beautiful JavaScript.pdf','','','','',''),
(42,'Clojure for Data Science','9781784397180.png','',2015,'The term &quot;data science&quot; has been widely used to define this new profession that is expected to interpret vast datasets and translate them to improved decision-making and performance. Clojure is a powerful language that combines the interactivity of a scripting language with the speed of a ...','9781784397180',8,1,608,'Statistics, big data, and machine learning for Clojure programmers','2015 Clojure for Data Science.pdf','','','','',''),
(43,'Clojure Reactive Programming','9781783986668.png','',2015,'Reactive Programming (RP) is central to many concurrent systems. It endeavors to make the process of developing highly-concurrent, event-driven, and asynchronous applications simpler and less error-prone. RP comes in many flavors and we will look at some of them in this book.Clojure Reactive Program...','9781783986668',8,1,232,'Design and implement highly reusable reactive applications by integrating different frameworks with Clojure','2015 Clojure Reactive Programming.pdf','','','','',''),
(44,'Django Design Patterns and Best Practices','9781783986644.png','',2015,'Learning how to write better Django code to build more maintainable websites either takes a lot of experience or familiarity with various design patterns. Filled with several idiomatic Django patterns, Django Design Patterns and Best Practices accelerates your journey into the world of web developme...','9781783986644',8,1,222,'Easily build maintainable websites with powerful and relevant Django design patterns','2015 Django Design Patterns and Best Practices.pdf','','','','',''),
(45,'Doing Math with Python','9781593276409.png','',2015,'Doing Math with Python shows you how to use Python to delve into high school-level math topics like statistics, geometry, probability, and calculus. You&#039;ll start with simple projects, like a factoring program and a quadratic-equation solver, and then create more complex projects once you&#039;v...','9781593276409',6,1,264,'Use Programming to Explore Algebra, Statistics, Calculus, and More!','2015 Doing Math with Python.pdf','','','','',''),
(46,'GitHub Essentials','9781783553716.png','',2015,'Whether you are an experienced developer or a novice, learning to work with Version Control Systems is a must in the software development world. Git is the most popular tool for that purpose and GitHub was built around it leveraging its powers by bringing it to the web.Starting with the basics of cr...','9781783553716',8,1,190,'Unleash the power of collaborative development workflow using GitHub, one step at a time','2015 GitHub Essentials.pdf','','','','',''),
(47,'Learning Docker','9781784397937.png','',2015,'Docker is a next-generation platform for simplifying application containerization life-cycle. Docker allows you to create a robust and resilient environment in which you can generate portable, composable, scalable, and stable application containers.This book is a step-by-step guide that will walk yo...','9781784397937',8,1,240,'Optimize the power of Docker to run your applications quickly and easily','2015 Learning Docker.pdf','','','','',''),
(48,'PostgreSQL Server Programming, 2nd Edition','9781783980581.png','',2015,'This book will show you that PostgreSQL is so much more than a database server. In fact, it could even be seen as an application development framework, with the added bonuses of transaction support, massive data storage, journaling, recovery, and a host of other features that the PostgreSQL engine p...','9781783980581',8,1,320,'Extend PostgreSQL using PostgreSQL server programming to create, test, debug, and optimize a range of user-defined functions in your favorite programming language','2015 PostgreSQL Server Programming.pdf','','','','',''),
(49,'Python GUI Programming Cookbook','9781785283758.png','',2015,'Python is a multi-domain, interpreted programming language. It is a widely used general-purpose, high-level programming language. It is often used as a scripting language because of its forgiving syntax and compatibility with a wide variety of different eco-systems. Its flexible syntax enables devel...','9781785283758',8,1,350,'Over 80 object-oriented recipes to help you create mind-blowing GUIs in Python','2015 Python GUI Programming Cookbook.pdf','','','','',''),
(50,'Python Requests Essentials','9781784395414.png','',2015,'Python is one of the most popular programming languages of our era; the Python Requests library is one of the world&#039;s best clients, with the highest number of downloads. It allows hassle-free interactions with web applications using simple procedures.You will be shown how to mock HTTP Requests ...','9781784395414',8,1,134,'Learn how to integrate your applications seamlessly with web services using Python Requests','2015 Python Requests Essentials.pdf','','','','',''),
(51,'Python Unlocked','9781785885990.png','',2015,'Python is a versatile programming language that can be used for a wide range of technical tasks - computation, statistics, data analysis, game development, and more. Though Python is easy to learn, it&#039;s range of features means there are many aspects of it that even experienced Python developers...','9781785885990',8,1,172,'Become more fluent in Python - learn strategies and techniques for smart and high-performance Python programming','2015 Python Unlocked.pdf','','','','',''),
(52,'Spark for Python Developers','9781784399696.png','',2015,'Looking for a cluster computing system that provides high-level APIs? Apache Spark is your answer - an open source, fast, and general purpose cluster computing system. Spark&#039;s multi-stage memory primitives provide performance up to 100 times faster than Hadoop, and it is also well-suited for ma...','9781784399696',8,1,206,'A concise guide to implementing Spark Big Data analytics for Python developers, and building a real-time and insightful trend tracker data intensive app','2015 Spark for Python Developers.pdf','','','','',''),
(53,'The VimL Primer','9781680500400.png','',2015,'VimL is the scripting language of the Vim editor. If you&#039;ve ever edited or saved a vimrc file, you&#039;ve written VimL. And VimL can do much more than simply configure settings and specify option values - you can write entire plugins in VimL. But without a background in scripting Vim, it can b...','9781680500400',7,1,84,'Edit Like a Pro with Vim Plugins and Scripts','2015 The VimL Primer.pdf','','','','',''),
(54,'Common Lisp Recipes','9781484211779.png','',2016,'Find solutions to problems and answers to questions you are likely to encounter when writing real-world applications in Common Lisp. This book covers areas as diverse as web programming, databases, graphical user interfaces, integration with other programming languages, multi-threading, and mobile d...','9781484211779',5,1,772,'A Problem-Solution Approach','2016 Common Lisp Recipes.pdf','','','','',''),
(55,'Effective DevOps','9781491926307.png','',2016,'Some companies think that adopting devops means bringing in specialists or a host of new tools. With this practical guide, you&#039;ll learn why devops is a professional and cultural movement that calls for change from inside your organization. Authors Ryn Daniels and Jennifer Davis provide several ...','9781491926307',4,1,410,'Building a Culture of Collaboration, Affinity, and Tooling at Scale','2016 Effective DevOps.pdf','','','','',''),
(56,'Flask By Example','9781785286933.png','',2016,'This book will take you on a journey from learning about web development using Flask to building fully functional web applications. In the first major project, we develop a dynamic Headlines application that displays the latest news headlines along with up-to-date currency and weather information. I...','9781785286933',8,1,276,'Unleash the full potential of the Flask web framework by creating simple yet powerful web applications','2016 Flask By Example.pdf','','','','',''),
(57,'Introducing Go','9781491941959.png','',2016,'Perfect for beginners familiar with programming basics, this hands-on guide provides an easy introduction to Go, the general-purpose programming language from Google. Author Caleb Doxsey covers the language&#039;s core features with step-by-step instructions and exercises in each chapter to help you...','9781491941959',4,1,124,'Build Reliable, Scalable Programs','2016 Introducing Go.pdf','','','','',''),
(58,'Linux Pocket Guide, 3rd Edition','9781491927571.png','',2016,'If you use Linux in your day-to-day work, this popular pocket guide is the perfect on-the-job reference. The third edition features new commands for processing image files and audio files, running and killing programs, reading and modifying the system clipboard, and manipulating PDF files, as well a...','9781491927571',4,1,272,'Essential Commands','2016 Linux Pocket Guide.pdf','','','','',''),
(59,'Mastering Git','9781783553754.png','',2016,'Git is one of the most popular types of Source Code Management (SCM) and Distributed Version Control System (DVCS). Despite the powerful and versatile nature of the tool enveloping strong support for nonlinear development and the ability to handle large projects efficiently, it is a complex tool and...','9781783553754',8,1,418,'Attain expert-level proficiency with Git for enhanced productivity and efficient collaboration by mastering advanced distributed version control features','2016 Mastering Git.pdf','','','','',''),
(60,'MongoDB Cookbook, 2nd Edition','9781785289989.png','',2016,'MongoDB is a high-performance and feature-rich NoSQL database that forms the backbone of the systems that power many different organizations - it&#039;s easy to see why it&#039;s the most popular NoSQL database on the market. Packed with many features that have become essential for many different ty...','9781785289989',8,1,371,'Harness the latest features of MongoDB 3 with this collection of 80 recipes - from managing cloud platforms to app development, this book is a vital resource','2016 MongoDB Cookbook.pdf','','','','',''),
(61,'Text Analytics with Python','9781484223871.png','',2016,'Derive useful insights from your data using Python. You will learn both basic and advanced concepts, including text and language syntax, structure, and semantics. You will focus on algorithms and techniques, such as text classification, clustering, topic modeling, and text summarization.Text Analyti...','9781484223871',5,1,385,'A Practical Real-World Approach to Gaining Actionable Insights from your Data','2016 Text Analytics with Python.pdf','','','','',''),
(62,'Web Development with Django Cookbook, 2nd Edition','9781785886775.png','',2016,'Django is a web framework that was designed to strike a balance between rapid web development and high performance. It has the capacity to handle applications with high levels of user traffic and interaction, and can integrate with massive databases on the backend, constantly collecting and processi...','9781785886775',8,1,384,'Over 90 practical recipes to help you create scalable websites using the Django 1.8 framework','2016 Web Development with Django Cookbook.pdf','','','','',''),
(63,'DevOps with OpenShift','9781491975961.png','',2017,'For many organizations, a big part of DevOps appeal is software automation using infrastructure-as-code techniques. This book presents developers, architects, and infra-ops engineers with a more practical option. You&#039;ll learn how a container-centric approach from OpenShift, Red Hat&#039;s cloud...','9781491975961',4,1,152,'Cloud Deployments Made Easy','2017 DevOps with OpenShift.pdf','','','','',''),
(64,'Learn More Python 3 the Hard Way','9780134123486.png','',2017,'Zed Shaw has perfected the world&#039;s best system for becoming a truly effective Python 3.x developer. Follow it and you will succeed - just like the tens of millions of programmers he&#039;s already taught. You bring the discipline, commitment, and persistence; the author supplies everything else...','9780134123486',10,1,240,'The Next Step for New Python Programmers','2017 LEARN MORE PYTHON 3 THE HARD WAY.pdf','','','','',''),
(65,'Learning Angular, 2nd Edition','9780134576978.png','',2017,'Learning Angular teaches modern application development with Angular 2 and Angular 4. It begins with the basics of Angular and the technologies and techniques used throughout the book, such as key features of TypeScript, newer ES6 syntax and concepts, and details about the tools needed to write prof...','9780134576978',10,1,240,'A Hands-On Guide to Angular 2 and Angular 4','2017 Learning Angular.pdf','','','','',''),
(66,'OAuth 2 in Action','9781617293276.png','',2017,'Think of OAuth 2 as the web version of a valet key. It is an HTTP-based security protocol that allows users of a service to enable applications to use that service on their behalf without handing over full control. And OAuth is used everywhere, from Facebook and Google, to startups and cloud service...','9781617293276',12,1,360,'','2017 OAuth 2 in Action.pdf','','','','',''),
(67,'Python Testing with pytest','9781680502404.png','',2017,'For Python-based projects, pytest is the undeniable choice to test your code if you&#039;re looking for a full-featured, API-independent, flexible, and extensible testing framework. With a full-bodied fixture model that is unmatched in any other tool, the pytest framework gives you powerful features...','9781680502404',7,1,220,'Simple, Rapid, Effective, and Scalable','2017 Python Testing with pytest.pdf','','','','',''),
(68,'Test-Driven Development with Python, 2nd Edition','9781491958704.png','',2017,'By taking you through the development of a real web application from beginning to end, the second edition of this hands-on guide demonstrates the practical advantages of test-driven development (TDD) with Python. You&#039;ll learn how to write and run tests before building each part of your app, and...','9781491958704',4,1,614,'Obey the Testing Goat: Using Django, Selenium, and JavaScript','2017 Test-Driven Development with Python.pdf','','','','',''),
(69,'Advanced Data Analytics Using Python','9781484234495.png','',2018,'Gain a broad foundation of advanced data analytics concepts and discover the recent revolution in databases such as Neo4j, Elasticsearch, and MongoDB. This book discusses how to implement ETL techniques including topical crawling, which is applied in domains such as high-frequency algorithmic tradin...','9781484234495',5,1,186,'With Machine Learning, Deep Learning and NLP Examples','2018 Advanced Data Analytics Using Python.pdf','','','','',''),
(70,'Angular Design Patterns','9781786461728.png','',2018,'This book is an insightful journey through the most valuable design patterns, and it will provide clear guidance on how to use them effectively in Angular. You will explore some of the best ways to work with Angular and how to use it to meet the stability and performance required in today&#039;s web...','9781786461728',8,1,178,'Implement the Gang of Four Patterns in Your Apps with Angular','2018 Angular Design Patterns.pdf','','','','',''),
(71,'Applied Natural Language Processing with Python','9781484237328.png','',2018,'Learn to harness the power of AI for natural language processing, performing tasks such as spell check, text summarization, document classification, and natural language generation. Along the way, you will learn the skills to implement these methods in larger infrastructures to replace existing code...','9781484237328',5,1,150,'Implementing Machine Learning and Deep Learning Algorithms for Natural Language Processing','2018 Applied Natural Language Processing with Python.pdf','','','','',''),
(72,'Artificial Intelligence for Big Data','9781788472173.png','',2018,'In this age of big data, companies have larger amount of consumer data than ever before, far more than what the current technologies can ever hope to keep up with. However, Artificial Intelligence closes the gap by moving past human limitations in order to analyze data.With the help of Artificial In...','9781788472173',8,1,384,'Complete guide to automating Big Data solutions using Artificial Intelligence techniques','2018 Artificial Intelligence for Robotics.pdf','','','','',''),
(73,'Bash Cookbook','9781788629362.png','',2018,'In Linux, one of the most commonly used and most powerful tools is the Bash shell. With its collection of engaging recipes, Bash Cookbook takes you through a series of exercises designed to teach you how to effectively use the Bash shell in order to create and execute your own scripts.The book start...','9781788629362',8,1,264,'Leverage Bash Scripting to Automate Daily Tasks and Improve Productivity','2018 bash Cookbook.pdf','','','','',''),
(74,'Clean Code in Python','9781788835831.png','',2018,'Python is currently used in many different areas such as software construction, systems administration, and data processing.In all of these areas, experienced professionals can find examples of inefficiency, problems, and other perils, as a result of bad code. After reading this book, readers will u...','9781788835831',8,1,332,'Refactor your legacy code base','2018 Clean Code in Python.pdf','','','','',''),
(75,'Complete Vue.js 2 Web Development','9781789959901.png','',2018,'This Learning Path is divided into three sections, with each section bringing you closer to developing high-end modern web applications with Vue.js 2. It starts with building example applications to get well versed with the Vue.js ecosystem. You will learn to use Vue.js by creating three single page...','9781789959901',8,1,704,'Learn Vue.js by building 6 web apps','2018 Complete Vue.js 2 Web Development.pdf','','','','',''),
(76,'Complex Network Analysis in Python','9781680502695.png','',2018,'Complex network analysis used to be done by hand or with non-programmable network analysis tools, but not anymore! You can now automate and program these tasks in Python. Complex networks are collections of connected items, words, concepts, or people. By exploring their structure and individual elem...','9781680502695',7,1,258,'Recognize &rarr; Construct &rarr; Visualize &rarr; Analyze &rarr; Interpret','2018 Complex Network Analysis in Python.pdf','','','','',''),
(77,'Container Networking','9781492036814.png','',2018,'When you start building your first containerized application, you&#039;re excited about the capabilities and opportunities you encounter: it runs the same in dev and in prod, it&#039;s straightforward to put together a container image using Docker, and the distribution is taken care of by a containe...','9781492036814',4,1,72,'From Docker to Kubernetes','2018 Container Networking.pdf','','','','',''),
(78,'Cracking Codes with Python','9781593278229.png','',2018,'Learn how to program in Python while making and breaking ciphers - algorithms used to create and send secret messages!After a crash course in Python programming basics, you&#039;ll learn to make, test, and hack programs that encrypt text with classical ciphers like the transposition cipher and Vigen...','9781593278229',6,1,424,'An Introduction to Building and Breaking Ciphers','2018 Cracking Codes with Python.pdf','','','','',''),
(79,'Data Science Fundamentals for Python and MongoDB','9781484235966.png','',2018,'Build the foundational data science skills necessary to work with and better understand complex data science algorithms. This example-driven book provides complete Python coding examples to complement and clarify data science concepts, and enrich the learning experience. Coding examples include visu...','9781484235966',5,1,214,'','2018 Data Science Fundamentals for Python and MongoDB.pdf','','','','',''),
(80,'Data Science with SQL Server Quick Start Guide','9781789537123.png','',2018,'SQL Server only started to fully support data science with its two most recent editions. If you are a professional from both worlds, SQL Server and data science, and interested in using SQL Server and Machine Learning (ML) Services for your projects, then this is the ideal book for you.This book is ...','9781789537123',8,1,206,'Integrate SQL Server with data science','2018 DATA SCIENCE.pdf','','','','',''),
(81,'Django 2 Web Development Cookbook, 3rd Edition','9781788837682.png','',2018,'Django is a framework designed to balance rapid web development with high performance. It handles high levels of user traffic and interaction, integrates with a variety of databases, and collects and processes data in real time. This book follows a task-based approach to guide you through developing...','9781788837682',8,1,544,'100 practical recipes on building scalable Python web apps with Django 2','2018 Django 2 Web Development Cookbook.pdf','','','','',''),
(82,'Full-Stack Web Development with Vue.js and Node','9781788831147.png','',2018,'Isomorphic JavaScript was the buzzword of the year 2017, allowing developers to utilize a single language throughout their web development stack and build cost-effective and scalable applications. MEVN is a one such modern web development stack consisting of web applications such as MongoDB, Express...','9781788831147',8,1,366,'Build scalable and powerful web apps with modern web stack: MongoDB, Vue, Node.js, and Express','2018 Full-Stack Web Development with Vue.jsand Node.pdf','','','','',''),
(83,'Get Programming with F#','9781617293993.png','',2018,'Get Programming with F#: A guide for .NET Developers shows you how to upgrade your .NET development skills by adding a touch of functional programming in F#. In just 43 bite-sized chunks, you&#039;ll learn how to use F# to tackle the most common .NET programming tasks.Examples use the familiar Visua...','9781617293993',12,1,448,'A guide for .NET developers','2018 Get Programming with Go.pdf','','','','',''),
(84,'Getting to Know Vue.js','9781484237809.png','',2018,'Learn how to render lists of items without repeating your code structure and how to work with conditional rendering items and event handling. Containing all you need to know to get started with Vue.js, this book will take you through using build tools (transpile to ES5), creating custom components, ...','9781484237809',5,1,265,'Learn to Build Single Page Applications in Vue from Scratch','2018 Getting to Know Vue.js.pdf','','','','',''),
(85,'Git Version Control Cookbook, 2nd Edition','9781789137545.png','',2018,'Git is one of the most popular tools for versioning. Git Version Control Cookbook builds on the success of the previous edition and provides you with an up-to-date guide to solving problems related to versioning.You&#039;ll start by learning about the Git data model and how it stores files and looks...','9781789137545',8,1,354,'Leverage Version Control to Transform Your Development Workflow and Boost Productivity','2018 Git Version Control Cookbook.pdf','','','','',''),
(86,'Hands-On Security in DevOps','9781788995504.png','',2018,'DevOps has provided speed and quality benefits with continuous development and deployment methods, but it does not guarantee the security of an entire organization. Hands-On Security in DevOps shows you how to adopt DevOps techniques to continuously improve your organization&#039;s security at every...','9781788995504',8,1,356,'Ensure Continuous Security, Deployment, and Delivery with DevSecOps','2018 Hands-On Security in DevOps.pdf','','','','',''),
(87,'Hands-On System Programming with Linux','9781788998475.png','',2018,'The Linux OS and its embedded and server applications are critical components of today&#039;s software infrastructure in a decentralized, networked universe. The industry&#039;s demand for proficient Linux developers is only rising with time. Hands-On System Programming with Linux gives you a solid ...','9781788998475',8,1,794,'Explore Linux system programming interfaces, theory, and practice','2018 Hands-On System Programming with Linux.pdf','','','','',''),
(88,'HTML5 and JavaScript Projects, 2nd edition','9781484238639.png','',2018,'Build on your basic knowledge of HTML5 and JavaScript to create substantial HTML5 applications. Through the many interesting projects you can create in this book, you&#039;ll develop HTML5 skills for future projects, and extend the core skills you may have learned with its companion book, The Essent...','9781484238639',5,1,425,'Build on your Basic Knowledge of HTML5 and JavaScript to Create Substantial HTML5 Applications','2018 HTML5 and JavaScript Projects.pdf','','','','',''),
(89,'Learn Data Analysis with Python','9781484234853.png','',2018,'Get started using Python in data analysis with this compact practical guide. This book includes three exercises and a case study on getting data in and out of Python code in the right format. Learn Data Analysis with Python also helps you discover meaning in the data using analysis and shows you how...','9781484234853',5,1,97,'Lessons in Coding','2018 Learn Data Analysis with Python.pdf','','','','',''),
(90,'Learn Web Development with Python','9781789953299.png','',2018,'If you want to develop complete Python web apps with Django, this Learning Path is for you. It will walk you through Python programming techniques and guide you in implementing them when creating 4 professional Django projects, teaching you how to solve common problems and develop RESTful web servic...','9781789953299',8,1,796,'Get hands-on with Python Programming and Django web development','2018 Learn Web Development with Python - Fabrizio Romano.pdf','','','','',''),
(91,'Learning GraphQL','9781492030713.png','',2018,'Why is GraphQL the most innovative technology for fetching data since Ajax? By providing a query language for your APIs and a runtime for fulfilling queries with your data, GraphQL presents a clear alternative to REST and ad hoc web service architectures. With this practical guide, Alex Banks and Ev...','9781492030713',4,1,198,'Declarative Data Fetching for Modern Web Apps','2018 Learning GraphQL.pdf','','','','',''),
(92,'Linux in Action','9781617294938.png','',2018,'Linux in Action is a task-based tutorial that will give you the skills and deep understanding you need to administer a Linux-based system. This hands-on book guides you through 12 real-world projects so you can practice as you learn. Each chapter ends with a review of best practices, new terms, and ...','9781617294938',12,1,384,'','2018 Linux in Action - David Clinton.pdf','','','','',''),
(93,'Make Your Own Python Text Adventure','9781484232309.png','',2018,'Learn programming with Python by creating a text adventure. This book will teach you the fundamentals of programming, how to organize code, and some coding best practices. By the end of the book, you will have a working game that you can play or show off to friends. You will also be able to change t...','9781484232309',5,1,149,'A Guide to Learning Programming','2018 Make Your Own Python Text Adventure.pdf','','','','',''),
(94,'Mastering Exploratory Analysis with pandas','9781789619638.png','',2018,'The pandas is a Python library that lets you manipulate, transform, and analyze data. It is a popular framework for exploratory data visualization and analyzing datasets and data pipelines based on their properties.This book will be your practical guide to exploring datasets using pandas. You will s...','9781789619638',8,1,140,'Build an end-to-end data analysis workflow with Python','2018 Mastering Exploratory Analysis with pandas.pdf','','','','',''),
(95,'Mastering Flask Web Development, 2nd Edition','9781788995405.png','',2018,'Flask is a popular Python framework known for its lightweight and modular design. Mastering Flask Web Development will take you on a complete tour of the Flask environment and teach you how to build a production-ready application.You&#039;ll begin by learning about the installation of Flask and basi...','9781788995405',8,1,332,'Build enterprise-grade, scalable Python web applications','2018 Mastering Flask Web Development2.pdf','','','','',''),
(96,'Mastering JavaFX 10','9781788293822.png','',2018,'JavaFX 10 is used to create media-rich client applications. This book takes you on a journey to use JavaFX 10 to build applications that display information in a high-performance, modern user interface featuring audio, video, graphics, and animation.Mastering JavaFX 10 begins by introducing you to t...','9781788293822',8,1,268,'Build advanced and visually stunning Java applications','2018 Mastering Java.pdf','','','','',''),
(97,'Mastering Linux Security and Hardening','9781788620307.png','',2018,'This book has extensive coverage of techniques that will help prevent attackers from breaching your system, by building a much more secure Linux environment. You will learn various security techniques such as SSH hardening, network service detection, setting up firewalls, encrypting file systems, pr...','9781788620307',8,1,376,'Secure your Linux server and protect it from intruders, malware attacks, and other external threats','2018 Mastering Linux Security and Hardening.pdf','','','','',''),
(98,'Mastering Machine Learning Algorithms','9781788621113.png','',2018,'Machine learning is a subset of AI that aims to make modern-day computer systems smarter and more intelligent. The real power of machine learning resides in its algorithms, which make even the most difficult things capable of being handled by machines. However, with the advancement in the technology...','9781788621113',8,1,576,'Expert techniques to implement popular machine learning algorithms and fine-tune your models','2018 Mastering Machine Learning for Penetration Testing [PACKT].pdf','','','','',''),
(99,'Mastering Modular JavaScript','9781491955680.png','',2018,'If you have a working knowledge of JavaScript and ECMAScript 6 (ES6), this practical guide will help you tackle modular programming to produce code that&#039;s readable, maintainable, and scalable. You&#039;ll learn the fundamentals of modular architecture with JavaScript and the benefits of writing...','9781491955680',4,1,200,'','2018 Mastering Modular JavaScript.pdf','','','','',''),
(100,'Mastering Vim','9781789341096.png','',2018,'Vim is a ubiquitous text editor that can be used for all programming languages. It has an extensive plugin system and integrates with many tools. Vim offers an extensible and customizable development environment for programmers, making it one of the most popular text editors in the world.Mastering V...','9781789341096',8,1,330,'Build a software development environment with Vim and Neovim','2018 Mastering Vim.pdf','','','','',''),
(101,'Mission Python','9781593278571.png','',2018,'Launch into coding with Mission Python, a space-themed guide to building a complete computer game in Python. You&#039;ll learn programming fundamentals like loops, strings, and lists as you build Escape!, an exciting game with a map to explore, items to collect, and tricky logic puzzles to solve. As...','9781593278571',6,1,280,'Code a Space Adventure Game!','2018 Mission Python. Code a Space Adventure Game!.pdf','','','','',''),
(102,'Modern JavaScript Web Development Cookbook','9781788992749.png','',2018,'JavaScript has evolved into a language that you can use on any platform. Modern JavaScript Web Development Cookbook is a perfect blend of solutions for traditional JavaScript development and modern areas that developers have lately been exploring with JavaScript. This comprehensive guide teaches you...','9781788992749',8,1,642,'Easy solutions to common and everyday JavaScript development problems','2018 Modern JavaScript Web Development Cookbook.pdf','','','','',''),
(103,'Open Source Intelligence Methods and Tools','9781484232125.png','',2018,'Apply Open Source Intelligence (OSINT) techniques, methods, and tools to acquire information from publicly available online sources to support your intelligence analysis. Use the harvested data in different scenarios such as financial, crime, and terrorism investigations as well as performing busine...','9781484232125',5,1,354,'A Practical Guide to Online Intelligence','2018 Open Source intelligence techniques.pdf','','','','',''),
(104,'Practical Docker with Python','9781484237830.png','',2018,'Learn the key differences between containers and virtual machines. Adopting a project based approach, this book introduces you to a simple Python application to be developed and containerized with Docker.After an introduction to Containers and Docker you&#039;ll be guided through Docker installation...','9781484237830',5,1,186,'Build, Release and Distribute your Python App with Docker','2018 Practical Docker with Python.pdf','','','','',''),
(105,'Practical SQL','9781593278274.png','',2018,'Practical SQL is an approachable and fast-paced guide to SQL (Structured Query Language), the standard programming language for defining, organizing, and exploring data in relational databases. The book focuses on using SQL to find the story your data tells, with the popular open-source database Pos...','9781593278274',6,1,392,'A Beginner\'s Guide to Storytelling with Data','2018 Practical SQL.pdf','','','','',''),
(106,'Practical Web Scraping for Data Science','9781484235812.png','',2018,'This book provides a complete and modern guide to web scraping, using Python as the programming language, without glossing over important details or best practices. Written with a data science audience in mind, the book explores both scraping and the larger context of web technologies in which it op...','9781484235812',5,1,306,'Best Practices and Examples with Python','2018 Practical Web Scraping for Data Science.pdf','','','','',''),
(107,'PySpark Recipes','9781484231401.png','',2018,'Quickly find solutions to common programming problems encountered while processing big data. Content is presented in the popular problem-solution format. Look up the programming problem that you want to solve. Read the solution. Apply the solution directly in your own code. Problem solved!PySpark Re...','9781484231401',5,1,265,'A Problem-Solution Approach with PySpark2','2018 PySpark Recipes.pdf','','','','',''),
(108,'Python Deep Learning Projects','9781788997096.png','',2018,'Deep learning has been gradually revolutionizing every field of artificial intelligence, making application development easier.Python Deep Learning Projects imparts all the knowledge needed to implement complex deep learning projects in the field of computational linguistics and computer vision. Eac...','9781788997096',8,1,472,'9 projects demystifying neural network and deep learning models for building intelligent systems','2018 Python Deep Learning Projects.pdf','','','','',''),
(109,'Python for Data Mining Quick Syntax Reference','9781484241127.png','',2018,'Learn how to use Python and its structures, how to install Python, and which tools are best suited for data analyst work. This book provides you with a handy reference and tutorial on topics ranging from basic Python concepts through to data mining, manipulating and importing datasets, and data anal...','9781484241127',5,1,260,'','2018 Python for Data Mining Quick Syntax Reference.pdf','','','','',''),
(110,'Python Fundamentals','9781789807325.png','',2018,'After a brief history of Python and key differences between Python 2 and Python 3, you&#039;ll understand how Python has been used in applications such as YouTube and Google App Engine. As you work with the language, you&#039;ll learn about control statements, delve into controlling program flow and...','9781789807325',8,1,324,'A practical guide for learning Python, complete with real-world projects for you to explore','2018 Python Fundamentals.pdf','','','','',''),
(111,'Python Interviews','9781788399081.png','',2018,'Hear from these key Python thinkers about the current status of Python, and where it&#039;s heading in the future; Listen to their close thoughts on significant Python topics, such as Python&#039;s role in scientific computing, and machine learning; Understand the direction of Python, and what needs...','9781788399081',8,1,366,'Discussions with Python Experts','2018 Python Interviews.pdf','','','','',''),
(112,'Python Web Scraping Cookbook','9781787285217.png','',2018,'Python Web Scraping Cookbook is a solution-focused book that will teach you techniques to develop high-performance scrapers and deal with crawlers, sitemaps, forms automation, Ajax-based sites, caches, and more.You&#039;ll explore a number of real-world scenarios where every part of the development ...','9781787285217',8,1,364,'Over 90 proven recipes to get you scraping with Python, microservices, Docker, and AWS','2018 Python Web Scraping Cookbook.pdf','','','','',''),
(113,'Rediscovering JavaScript','9781680505467.png','',2018,'JavaScript is a black swan that no one, including the author of the language, thought would become a popular and ubiquitous language. Not long ago, it was the most hated and feared language you could use to program the web. JavaScript ES6 and beyond has gone through a significant makeover. Troubleso...','9781680505467',7,1,286,'Master ES6, ES7, and ES8','2018 Rediscovering JavaScript.pdf','','','','',''),
(114,'Securing DevOps','9781617294136.png','',2018,'An application running in the cloud can benefit from incredible efficiencies, but they come with unique security threats too. A DevOps team&#039;s highest priority is understanding those risks and hardening the system against them.Securing DevOps teaches you the essential techniques to secure your c...','9781617294136',12,1,384,'Security in the Cloud','2018 Securing DevOps Security in the Cloud.pdf','','','','',''),
(115,'Security with Go','9781788627917.png','',2018,'Go is becoming more and more popular as a language for security experts. Its wide use in server and cloud environments, its speed and ease of use, and its evident capabilities for data analysis, have made it a prime choice for developers who need to think about security.Security with Go is the first...','9781788627917',8,1,340,'Explore the power of Golang to secure host, web, and cloud services','2018 Security with Go.pdf','','','','',''),
(116,'The Quick Python Book, 3rd Edition','9781617294037.png','',2018,'Initially Guido van Rossum&#039;s 1989 holiday project, Python has grown into an amazing computer language. It&#039;s a joy to learn and read, and powerful enough to handle everything from low-level system resources to advanced applications like deep learning. Elegantly simple and complete, it also ...','9781617294037',12,1,472,'','2018 The Quick Python Book.pdf','','','','',''),
(117,'Thoughtful Data Science','9781788839969.png','',2018,'Thoughtful Data Science brings new strategies and a carefully crafted programmer&#039;s toolset to work with modern, cutting-edge data analysis. This new approach is designed specifically to give developers more efficiency and power to create cutting-edge data analysis and artificial intelligence in...','9781788839969',8,1,490,'A Programmer\'s Toolset for Data Analysis and Artificial Intelligence with Python, Jupyter Notebook, and PixieDust','2018 Thoughtful Data Science.pdf','','','','',''),
(118,'Vue.js in Action','9781617294624.png','',2018,'Web pages are rich with data and graphics, and it&#039;s challenging to maintain a smooth and quick user experience. Vue.js in Action teaches you how to build a fast, flowing web UI with the Vue.js framework. As you move through the book, you&#039;ll put your skills to practice by building a complet...','9781617294624',12,1,304,'','2018 Vue.js in Action.pdf','','','','',''),
(119,'Website Scraping with Python','9781484239247.png','',2018,'Closely examine website scraping and data processing: the technique of extracting data from websites in a format suitable for further analysis. You&#039;ll review which tools to use, and compare their features and efficiency. Focusing on BeautifulSoup4 and Scrapy, this concise, focused book highligh...','9781484239247',5,1,223,'Using BeautifulSoup and Scrapy','2018 Website Scraping with Python.pdf','','','','',''),
(120,'Bayesian Statistics the Fun Way','9781593279561.png','',2019,'Probability and statistics are increasingly important in a huge range of professions. But many people use data in ways they don&#039;t even understand, meaning they aren&#039;t getting the most from it. Bayesian Statistics the Fun Way will change that.This book will give you a complete understanding...','9781593279561',6,1,256,'Understanding Statistics and Probability with Star Wars, LEGO, and Rubber Ducks','2019 BAYESIAN STATISTICS THE FUN WAY.pdf','','','','',''),
(121,'C++ Crash Course','9781593278885.png','',2019,'C++ is one of the most widely used languages for real-world software. In the hands of a knowledgeable programmer, C++ can produce small, efficient, and readable code that any programmer would be proud of.Designed for intermediate to advanced programmers, C++ Crash Course cuts through the weeds to ge...','9781593278885',6,1,792,'A Fast-Paced Introduction','2019 C++ CRASH COURSE 1.pdf','','','','',''),
(122,'Clean Python','9781484248775.png','',2019,'Discover the right way to code in Python. This book provides the tips and techniques you need to produce cleaner, error-free, and eloquent Python projects.Your journey to better code starts with understanding the importance of formatting and documenting your code for maximum readability, utilizing b...','9781484248775',5,1,267,'Elegant Coding in Python','2019 Clean Python.pdf','','','','',''),
(123,'CSS3 Quick Syntax Reference, 2nd Edition','9781484249024.png','',2019,'The CSS3 Quick Syntax Reference is a 150-page syntax reference to the Cascading Style Sheets language. It presents the essentials of CSS3 in a well-organized format that can be used as a handy reference. You won&#039;t find any technical jargon, bloated samples, drawn-out history lessons or witty st...','9781484249024',5,1,180,'A Pocket Guide to the Cascading Style Sheets Language','2019 CSS3 Quick Syntax Reference,.pdf','','','','',''),
(124,'Data Science from Scratch, 2nd Edition','9781492041139.png','',2019,'To really learn data science, you should not only master the tools - data science libraries, frameworks, modules, and toolkits - but also understand the ideas and principles underlying them. Updated for Python 3.6, this second edition of Data Science from Scratch shows you how these tools and algori...','9781492041139',4,1,406,'First Principles with Python','2019 Data Science from Scratch.pdf','','','','',''),
(125,'Deep Learning for Search','9781617294792.png','',2019,'Deep Learning for Search teaches you how to improve the effectiveness of your search by implementing neural network-based techniques. By the time you&#039;re finished with the book, you&#039;ll be ready to build amazing search engines that deliver the results your users need and that get better as t...','9781617294792',12,1,328,'','2019 Deep Learning for Search.pdf','','','','',''),
(126,'Deep Learning and the Game of Go','9781617295324.png','',2019,'Deep Learning and the Game of Go teaches you how to apply the power of deep learning to complex reasoning tasks by building a Go-playing AI. After exposing you to the foundations of machine and deep learning, you&#039;ll use Python to build a bot and then teach it the rules of the game.The ancient s...','9781617295324',12,1,384,'','2019 DEEP LEARNING.pdf','','','','',''),
(127,'Docker in Practice, 2nd Edition','9781617294808.png','',2019,'Docker in Practice, 2ond Edition presents over 100 practical techniques, hand-picked to help you get the most out of Docker. Following a Problem/Solution/Discussion format, you&#039;ll walk through specific examples that you can use immediately, and you&#039;ll get expert guidance on techniques that...','9781617294808',12,1,384,'','2019 Docker in Practice.pdf','','','','',''),
(128,'Expert Twisted','9781484237410.png','',2019,'Explore Twisted, the Python-based event-driven networking engine, and review several of its most popular application projects. It is written by community leaders who have contributed to many of the projects covered, and share their hard-won insights and experience.Expert Twisted starts with an intro...','9781484237410',5,1,382,'Event-Driven and Asynchronous Programming with Python','2019 Expert Twisted.pdf','','','','',''),
(129,'Foundations of Information Security','9781718500044.png','',2019,'A high-level survey of the information security field by best-selling author Jason Andress. The book covers the basics of a wide variety of topics, from authentication and authorization to maintaining confidentiality and performing penetration testing.Using real-world security breaches as examples, ...','9781718500044',6,1,248,'A Straightforward Introduction','2019 FOUNDATIONS OF INFORMATION SECURITY.pdf','','','','',''),
(130,'Foundations of PyGTK Development, 2nd Edition','9781484241783.png','',2019,'Learn how to develop portable GUI programs to run on multiple operating systems. Revised and updated from the popular original, with a full set of new examples in Python and using PyGTK, this book provides all the information you&#039;ll need to write easy or complex GUI applications, offering one s...','9781484241783',5,1,563,'GUI Creation with Python','2019 Foundations of Libvirt Development.pdf','','','','',''),
(131,'Front-end Developer Handbook','1001630936454.png','',2019,'This is a guide that everyone can use to learn about the practice of front-end development. It broadly outlines and discusses the practice of front-end engineering: how to learn it and what tools are used when practicing.It is specifically written with the intention of being a professional resource ...','1001630936454',11,1,145,'','2019 Front-end Developer Handbook.pdf','','','','',''),
(132,'Get Programming with Node.js','9781617294747.png','',2019,'Get Programming with Node.js Get Programming with Node.js teaches you to write server-side code in JavaScript using Node.js. In 37 fast-paced, fun, and practical lessons, you&#039;ll discover how to extend your existing JavaScript skills to write back-end code for your web applications.Node.js deliv...','9781617294747',12,1,480,'','2019 Get Programming with Node.js.pdf','','','','',''),
(133,'Getting MEAN with Mongo, Express, Angular, and Node, 2nd Edition','9781617294754.png','',2019,'Getting MEAN, Second Edition teaches you how to develop full-stack web applications using the MEAN stack. This edition was completely revised and updated to cover MongoDB 4, Express 4, Angular 7, Node 11, and the latest mainstream release of JavaScript ES2015.Juggling languages mid-application can r...','9781617294754',12,1,504,'','2019 Getting MEAN.pdf','','','','',''),
(134,'Graph Algorithms','9781492047681.png','',2019,'Learn how graph algorithms can help you leverage relationships within your data to develop intelligent solutions and enhance your machine learning models. With this practical guide,developers and data scientists will discover how graph analytics deliver value, whether they&#039;re used for building ...','9781492047681',4,1,256,'Practical Examples in Apache Spark and Neo4j','2019 Graph Algorithms.pdf','','','','',''),
(135,'Introducing Markdown and Pandoc','9781484251485.png','',2019,'Discover how to write manuscripts in Markdown and translate them with Pandoc into different output formats. You&#039;ll use Markdown to annotate text formatting information with a strong focus on semantic information: you can annotate your text with information about where chapters and sections star...','9781484251485',5,1,139,'Using Markup Language and Document Converter','2019 Introducing Markdown and Pandoc.pdf','','','','',''),
(136,'JavaScript Data Structures and Algorithms','9781484239872.png','',2019,'Explore data structures and algorithm concepts and their relation to everyday JavaScript development. A basic understanding of these ideas is essential to any JavaScript developer wishing to analyze and build great software solutions.  You&#039;ll discover how to implement data structures such as ha...','9781484239872',5,1,357,'An Introduction to Understanding and Implementing Core Data Structure and Algorithm Fundamentals','2019 JavaScript Data Structures and Algorithms.pdf','','','','',''),
(137,'JavaScript Frameworks for Modern Web Development','9781484249949.png','',2019,'Enrich your software design skills and take a guided tour of the wild, vast, and untamed frontier that is JavaScript development. Especially useful for frontend developers, this revision includes specific chapters on React and VueJS, as well as an updated one on Angular. To help you get the most of ...','9781484249949',5,1,550,'The Essential Frameworks, Libraries, and Tools to Learn Right Now','2019 JavaScript Frameworks for Modern Web Development.pdf','','','','',''),
(138,'Learn Keras for Deep Neural Networks','9781484242391.png','',2019,'Learn, understand, and implement deep neural networks in a math- and programming-friendly approach using Keras and Python. The book focuses on an end-to-end approach to developing supervised learning algorithms in regression and classification with practical business-centric use-cases implemented in...','9781484242391',5,1,182,'A Fast-Track Approach to Modern Deep Learning with Python','2019 Learn Keras for Deep Neural Networks.pdf','','','','',''),
(139,'Math Adventures with Python','9781593278670.png','',2019,'Math Adventures with Python will show you how to harness the power of programming to keep math relevant and fun. With the aid of the Python programming language, you&#039;ll learn how to visualize solutions to a range of math problems as you use code to explore key mathematical concepts like algebra...','9781593278670',6,1,304,'An Illustrated Guide to Exploring Math with Code','2019 MATH ADVENTURES WITH PYTHON.pdf','','','','',''),
(140,'Natural Language Processing in Action','9781617294631.png','',2019,'Natural Language Processing in Action is your guide to creating machines that understand human language using the power of Python with its ecosystem of packages dedicated to NLP and AI.Recent advances in deep learning empower applications to understand text and speech with extreme accuracy. The resu...','9781617294631',12,1,544,'Understanding, analyzing, and generating text with Python','2019 Natural Language Processing in Action.pdf','','','','',''),
(141,'Practical Data Science with R, 2nd Edition','9781617295874.png','',2019,'Practical Data Science with R, Second Edition takes a practice-oriented approach to explaining basic principles in the ever expanding field of data science. You&#039;ll jump right to real-world use cases as you apply the R programming language and statistical analysis techniques to carefully explain...','9781617295874',12,1,568,'','2019 Practical Data Science with Python 3.pdf','','','','',''),
(142,'Programming WebAssembly with Rust','9781680506365.png','',2019,'WebAssembly fulfills the long-awaited promise of web technologies: fast code, type-safe at compile time, execution in the browser, on embedded devices, or anywhere else. Rust delivers the power of C in a language that strictly enforces type safety. Combine both languages and you can write for the we...','9781680506365',7,1,238,'Unified Development for Web, Mobile, and Embedded Applications','2019 Programming WebAssembly with Rust.pdf','','','','',''),
(143,'Python Continuous Integration and Delivery','9781484242803.png','',2019,'Gain the techniques and tools that enable a smooth and efficient software development process in this quick and practical guide on Python continuous integration (CI) and continuous delivery (CD). Based on example applications, this book introduces various kinds of testing and shows you how to set up...','9781484242803',5,1,194,'A Concise Guide with Examples','2019 Python Continuous Integration and Delivery.pdf','','','','',''),
(144,'Python Crash Course, 2nd Edition','9781593279288.png','',2019,'This is the 2nd edition of the best selling Python book in the world. Python Crash Course, 2nd Edition is a straightforward introduction to the core of Python programming. Author Eric Matthes dispenses with the sort of tedious, unnecessary information that can get in the way of learning how to progr...','9781593279288',6,1,544,'A Hands-On, Project-Based Introduction to Programming','2019 Python Crash Course.pdf','','','','',''),
(145,'Python Machine Learning, 3rd Edition','9781789955750.png','',2019,'Python Machine Learning, Third Edition is a comprehensive guide to machine learning and deep learning with Python. It acts as both a step-by-step tutorial, and a reference you&#039;ll keep coming back to as you build your machine learning systems.Packed with clear explanations, visualizations, and w...','9781789955750',8,1,770,'Machine Learning and Deep Learning with Python, scikit-learn, and TensorFlow 2','2019 Python Machine Learning.pdf','','','','',''),
(146,'PyTorch Recipes','9781484242575.png','',2019,'Get up to speed with the deep learning concepts of Pytorch using a problem-solution approach. Starting with an introduction to PyTorch, you&#039;ll get familiarized with tensors, a type of data structure used to calculate arithmetic operations and also learn how they operate. You will then take a lo...','9781484242575',5,1,184,'A Problem-Solution Approach','2019 PyTorch Recipes.pdf','','','','',''),
(147,'React Native in Action','9781617294051.png','',2019,'React Native in Action gives iOS, Android, and web developers the knowledge and confidence they need to begin building high-quality iOS and Android apps using the React Native framework.React Native gives mobile and web developers the power of and. Write your app once and easily deploy it to iOS and...','9781617294051',12,1,320,'Developing iOS and Android apps with JavaScript','2019 React Native in Action.pdf','','','','',''),
(148,'Real-World Bug Hunting','9781593278618.png','',2019,'Learn how people break websites and how you can, too. Real-World Bug Hunting is the premier field guide to finding software bugs. Whether you&#039;re a cyber-security beginner who wants to make the internet safer or a seasoned developer who wants to write secure code, ethical hacker Peter Yaworski w...','9781593278618',6,1,264,'A Field Guide to Web Hacking','2019 REAL-WORLD BUG HUNTING.pdf','','','','',''),
(149,'Secure by Design','9781617294358.png','',2019,'Secure by Design teaches developers how to use design to drive security in software development. This book is full of patterns, best practices, and mindsets that you can directly apply to your real world development. You&#039;ll also learn to spot weaknesses in legacy code and how to address them.Se...','9781617294358',12,1,400,'','2019 Secure by Design.pdf','','','','',''),
(150,'The Linux Command Line, 2nd Edition','9781593279523.png','',2019,'The Linux Command Line takes you from your very first terminal keystrokes to writing full programs in Bash, the most popular Linux shell (or command line). Along the way you&#039;ll learn the timeless skills handed down by generations of experienced, mouse-shunning gurus: file navigation, environmen...','9781593279523',6,1,504,'A Complete Introduction','2019 The Linux Command Line.pdf','','','','',''),
(151,'Web Design Playground','9781617294402.png','',2019,'What makes a website pop, stand out, and feel great to browse? The answer is HTML, CSS, and a little bit of an artistic eye! Without HTML and CSS, every website would just be a few lines of text on a single white page. Even a little understanding of HTML and CSS can help you create web pages that lo...','9781617294402',12,1,440,'HTML & CSS The Interactive Way','2019 WEB DESIGN PLAYGROUND HTML + CSS THE INTERACTIVE WAY.pdf','','','','',''),
(152,'Architecture Patterns with Python','9781492052203.png','',2020,'As Python continues to grow in popularity, projects are becoming larger and more complex. Many Python developers are taking an interest in high-level software design patterns such as hexagonal/clean architecture, event-driven architecture, and the strategic patterns prescribed by domain-driven desig...','9781492052203',4,1,304,'Enabling Test-Driven Development, Domain-Driven Design, and Event-Driven Microservices','2020 Architecture Patterns with Python.pdf','','','','',''),
(153,'Bash Reference Manual','1001650967766.png','',2020,'Bash is the shell, or command language interpreter, for thegnuoperating system. Thename is an acronym for the &#039;Bourne-Again SHell&#039;, a pun on Stephen Bourne, the authorof the direct ancestor of the current Unix shellsh, which appeared in the Seventh Edition Bell Labs Research version of Uni...','1001650967766',11,1,190,'Reference Documentation for Bash 5.1','2020 Bash Reference Manual.pdf','','','','',''),
(154,'Beginning PyQt','9781484258569.png','',2020,'Learn GUI application development from the ground up, taking a practical approach by building simple projects that teach the fundamentals of using PyQt. Each chapter gradually moves on to teach more advanced and diverse concepts to aid you in designing interesting applications using the latest versi...','9781484258569',5,1,440,'A Hands-on Approach to GUI Programming','2020 Beginning PyQt.pdf','','','','',''),
(155,'Build a Career in Data Science','9781617296246.png','',2020,'You are going to need more than technical knowledge to succeed as a data scientist. Build a Career in Data Science teaches you what school leaves out, from how to land your first job to the lifecycle of a data science project, and even how to become a manager.What are the keys to a data scientist&#0...','9781617296246',12,1,354,'','2020 Build a Career in Data Science.pdf','','','','',''),
(156,'Building Progressive Web Applications with Vue.js','9781484253335.png','',2020,'Obtain all the necessary tools for developing a progressive web application (PWA) with Vue.js, a modern JavaScript framework. You&#039;ll see how PWAs behave like a regular responsive website and have a similar structure to that of a web application, but feel like a native mobile app. Along the way ...','9781484253335',5,1,233,'Reliable, Fast, and Engaging Apps with Vue.js','2020 Building Progressive Web Applications with Vue.js.pdf','','','','',''),
(157,'Building Secure and Reliable Systems','9781492083122.png','',2020,'Can a system be considered truly reliable if it isn&#039;t fundamentally secure? Or can it be considered secure if it&#039;s unreliable? Security is crucial to the design and operation of scalable systems in production, as it plays an important part in product quality, performance, and availability....','9781492083122',4,1,558,'Best Practices for Designing, Implementing, and Maintaining Systems','2020 Building Secure and Reliable Systems.pdf','','','','',''),
(158,'Building Versatile Mobile Apps with Python and REST','9781484263327.png','',2020,'Develop versatile iOS apps using Python with RESTful web services. This book will show you how to blend Django, a high-level Python Web framework, with Django REST, the powerful, feature-filled extension, to build iOS mobile apps.Using easy-to-follow examples, you&#039;ll begin by building a simple ...','9781484263327',5,1,348,'RESTful Web Services with Django and React','2020 Building Versatile Mobile Apps with Python and REST RESTful Web Services with Django and React.pdf','','','','',''),
(159,'Container Security','9781492056706.png','',2020,'To facilitate scalability and resilience, many organizations now run applications in cloud native environments using containers and orchestration. But how do you know if the deployment is secure? This practical book examines key underlying technologies to help developers, operators, and security pro...','9781492056706',4,1,200,'Fundamental Technology Concepts that Protect Containerized Applications','2020 Container Security.pdf','','','','',''),
(160,'Deep Learning Pipeline','9781484253489.png','',2020,'Build your own pipeline based on modern TensorFlow approaches rather than outdated engineering concepts. This book shows you how to build a deep learning pipeline for real-life TensorFlow projects. You&#039;ll learn what a pipeline is and how it works so you can build a full application easily and r...','9781484253489',5,1,551,'Building a Deep Learning Model with TensorFlow','2020 Deep Learning Illustrated.pdf','','','','',''),
(161,'Django 3 By Example, 3rd Edition','9781838981952.png','',2020,'If you want to learn the entire process of developing professional web applications with Python and Django, then this book is for you. In the process of building four professional Django projects, you will learn about Django 3 features, how to solve common web development problems, how to implement ...','9781838981952',8,1,568,'Build powerful and reliable Python web applications from scratch','2020 Django 3 By Example.pdf','','','','',''),
(162,'Django Standalone Apps','9781484256312.png','',2020,'Develop standalone Django apps to serve as the reusable building blocks for larger Django projects. This book explores best practices for publishing these apps, with special considerations for testing Django apps, and strategies for extracting existing functionality into a separate package.This jump...','9781484256312',5,1,169,'Learn to Develop Reusable Django Libraries','2020 Django Standalone Apps Learn to Develop Reusable Django Libraries.pdf','','','','',''),
(163,'Full-Stack React Projects, 2nd Edition','9781839215414.png','',2020,'Facebook&#039;s React combined with industry-tested, server-side technologies, such as Node, Express, and MongoDB, enables you to develop and deploy robust real-world full-stack web apps. This updated second edition focuses on the latest versions and conventions of the technologies in this stack, al...','9781839215414',8,1,716,'Learn MERN stack development by building modern web apps using MongoDB, Express, React, and Node.js','2020 Full-Stack React, TypeScript, and Node.pdf','','','','',''),
(164,'Fundamentals of Software Architecture','9781492043454.png','',2020,'Salary surveys worldwide regularly place software architect in the top 10 best jobs, yet no real guide exists to help developers become architects. Until now. This book provides the first comprehensive overview of software architecture&#039;s many aspects. Aspiring and existing architects alike will...','9781492043454',4,1,422,'An Engineering Approach','2020 Fundamentals of Software Architecture.pdf','','','','',''),
(165,'High Performance Python, 2nd Edition','9781492055020.png','',2020,'Your Python code may run correctly, but you need it to run faster. Updated for Python 3, this expanded edition shows you how to locate performance bottlenecks and significantly speed up your code in high-data-volume programs. By exploring the fundamental theory behind design choices, High Performanc...','9781492055020',4,1,468,'Practical Performant Programming for Humans','2020 High Performance Python.pdf','','','','',''),
(166,'How To Code in Node.js','1001614175970.png','',2020,'Node.js is a popular open-source runtime environment that can execute JavaScript outside of the browser. The Node runtime is commonly used for back-end web development, leveraging its asynchronous capabilities to create networking applications and web servers. Node is also a popular choice for build...','1001614175970',13,1,418,'','2020 How To Code in Go.pdf','','','','',''),
(167,'JavaScript Everywhere','9781492046981.png','',2020,'JavaScript is the little scripting language that could. Once used chiefly to add interactivity to web browser windows, JavaScript is now a primary building block of powerful and robust applications. In this practical book, new and experienced JavaScript developers will learn how to use this language...','9781492046981',4,1,344,'Building Cross-Platform Applications with GraphQL, React, React Native, and Electron','2020 JavaScript Everywhere ER.pdf','','','','',''),
(168,'JavaScript: The Definitive Guide, 7th Edition','9781491952023.png','',2020,'JavaScript is the programming language of the web and is used by more software developers today than any other programming language. For nearly 25 years this best seller has been the go-to guide for JavaScript programmers. The seventh edition is fully updated to cover the 2020 version of JavaScript,...','9781491952023',4,1,706,'Master the World\'s Most-Used Programming Language','2020 JavaScript The New Toys.pdf','','','','',''),
(169,'Linux Containers and Virtualization','9781484262825.png','',2020,'Get a novel perspective on Linux containers and understand the world of virtualization. This book takes you down the rabbit hole to discover what lies below the API. You&#039;ll go on a journey of virtualization and see how containers are realized in the Linux world. Linux Containers and Virtualizat...','9781484262825',5,1,148,'A Kernel Perspective','2020 Linux Containers and Virtualization A Kernel Perspective.pdf','','','','',''),
(170,'MongoDB Recipes','9781484248904.png','',2020,'Get the most out of MongoDB using a problem-solution approach. This book starts with recipes on the MongoDB query language, including how to query various data structures stored within documents. These self-contained code examples allow you to solve your MongoDB problems without fuss.MongoDB Recipes...','9781484248904',5,1,247,'With Data Modeling and Query Building Strategies','2020 MongoDB Recipes.pdf','','','','',''),
(171,'Natural Language Processing with Python and spaCy','9781718500525.png','',2020,'Natural Language Processing with Python and spaCy will show you how to create NLP applications like chatbots, text-condensing scripts, and order-processing tools quickly and easily. You&#039;ll learn how to leverage the spaCy library to extract meaning from text intelligently; how to determine the r...','9781718500525',6,1,216,'A Practical Introduction','2020 NATURAL LANGUAGE PROCESSING WITH PYTHON AND SPACY.pdf','','','','',''),
(172,'Pandas 1.x Cookbook, 2nd Edition','9781839213106.png','',2020,'The pandas library is massive, and it&#039;s common for frequent users to be unaware of many of its more impressive features. The official pandas documentation, while thorough, does not contain many useful examples of how to piece together multiple commands as one would do during an actual analysis....','9781839213106',8,1,626,'Practical recipes for scientific computing, time series analysis, and exploratory data analysis using Python','2020 Pandas 1.x Cookbook.pdf','','','','',''),
(173,'Practical Highcharts with Angular','9781484257432.png','',2020,'Learn to create stunning animated and interactive charts using Highcharts and Angular. Use and build on your existing knowledge of HTML, CSS, and JavaScript to develop impressive dashboards that will work in all modern browsers.You will learn how to use Highcharts, call backend services for data, an...','9781484257432',5,1,302,'Your Essential Guide to Creating Real-time Dashboards','2020 Practical Highcharts with Angular.pdf','','','','',''),
(174,'Practical Statistics for Data Scientists, 2nd Edition','9781492072942.png','',2020,'Statistical methods are a key part of data science, yet few data scientists have formal statistical training. Courses and books on basic statistics rarely cover the topic from a data science perspective. The second edition of this popular guide adds comprehensive examples in Python, provides practic...','9781492072942',4,1,368,'50+ Essential Concepts Using R and Python','2020 Practical Statistics for Data Scientists.pdf','','','','',''),
(175,'Programming PHP, 4th Edition','9781492054139.png','',2020,'Why is PHP the most widely used programming language on the web? This updated edition teaches everything you need to know to create effective web applications using the latest features in PHP 7.4. You&#039;ll start with the big picture and then dive into language syntax, programming techniques, and ...','9781492054139',4,1,544,'Creating Dynamic Web Pages','2020 Programming PHP.pdf','','','','',''),
(176,'Python Automation Cookbook, 2nd Edition','9781800207080.png','',2020,'In this updated and extended version of Python Automation Cookbook, each chapter now comprises the newest recipes and is revised to align with Python 3.8 and higher. The book includes three new chapters that focus on using Python for test automation, machine learning projects, and for working with m...','9781800207080',8,1,526,'75 Python automation ideas for web scraping, data wrangling, and processing Excel, reports, emails, and more','2020 Python Automation Cookbook.pdf','','','','',''),
(177,'Python One-Liners','9781718500501.png','',2020,'Python One-Liners will teach you how to read and write &quot;one-liners&quot;: concise statements of useful functionality packed into a single line of code. You&#039;ll learn how to systematically unpack and understand any line of Python code, and write eloquent, powerfully compressed Python like an...','9781718500501',6,1,216,'Write Concise, Eloquent Python Like a Professional','2020 PYTHON ONE-LINERS.pdf','','','','',''),
(178,'React and React Native, 3rd Edition','9781839211140.png','',2020,'React and React Native, Facebook&#039;s innovative User Interface (UI) libraries, are designed to help you build robust cross-platform web and mobile applications. This updated third edition is improved and updated to cover the latest version of React. The book particularly focuses on the latest dev...','9781839211140',8,1,526,'A complete hands-on guide to modern web and mobile development with React.js','2020 React and React Native.pdf','','','','',''),
(179,'Responsive Web Design with HTML5 and CSS, 3rd Edition','9781839211560.png','',2020,'Responsive Web Design with HTML5 and CSS, Third Edition is a renewed and extended version of one of the most comprehensive and bestselling books on the latest HTML5 and CSS tools and techniques for responsive web design.Written in the author&#039;s signature friendly and informal style, this edition...','9781839211560',8,1,408,'Develop future-proof responsive websites using the latest HTML5 and CSS techniques','2020 Responsive Web Design with HTML5 and CSS.pdf','','','','',''),
(180,'SELinux System Administration, 3rd Edition','9781800201477.png','',2020,'Linux is a dominant player in many organizations and in the cloud. Securing the Linux environment is extremely important for any organization, and Security-Enhanced Linux (SELinux) acts as an additional layer to Linux system security.SELinux System Administration covers basic SELinux concepts and sh...','9781800201477',8,1,458,'Implement mandatory access control to secure applications, users, and information flows on Linux','2020 SELinux System Administration.pdf','','','','',''),
(181,'Seriously Good Software','9781617296291.png','',2020,'Serious developers know that code can always be improved. With each iteration, you make optimizations - small and large - that can have a huge impact on your application&#039;s speed, size, resilience, and maintainability.In Seriously Good Software: Code that Works, Survives, and Wins, author, teach...','9781617296291',12,1,328,'Code that works, survives, and wins','2020 Seriously Good Software.pdf','','','','',''),
(182,'Software Engineering at Google','9781492082798.png','',2020,'Today, software engineers need to know not only how to program effectively but also how to develop proper engineering practices to make their codebase sustainable and healthy. This book emphasizes this difference between programming and software engineering.How can software engineers manage a living...','9781492082798',4,1,602,'Lessons Learned from Programming Over Time','2020 Software Engineering at Google.pdf','','','','',''),
(183,'Spark in Action, 2nd Edition','9781617295522.png','',2020,'The Spark distributed data processing platform provides an easy-to-implement tool for ingesting, streaming, and processing data from any source. In Spark in Action, 2nd Edition, you&#039;ll learn to take advantage of Spark&#039;s core features and incredible processing speed, with applications inclu...','9781617295522',12,1,576,'Covers Apache Spark 3 with Examples in Java, Python, and Scala','2020 Spark in Action.pdf','','','','',''),
(184,'The Common Lisp Condition System','9781484261330.png','',2020,'Discover the functioning and example uses of the Common Lisp condition system. This book supplements already existing material for studying Common Lisp as a language by providing detailed information about the Lisp condition system and its control flow mechanisms; it also describes an example ANSI-c...','9781484261330',5,1,300,'Beyond Exception Handling with Control Flow Mechanisms','2020 The Common Lisp Condition System.pdf','','','','',''),
(185,'The React Beginner\'s Handbook','1001616584103.png','',2020,'The React Beginner&#039;s Handbook follows the 80/20 rule: learn in 20% of the time the 80% of a topic. The author find this approach gives a well-rounded overview.This book does not try to cover everything under the sun related to React. It focuses on the core of the language, trying to simplify th...','1001616584103',11,1,40,'','2020 The React Beginner\'s Handbook.pdf','','','','',''),
(186,'The React Beginner\'s Handbook','1001616584103.png','',2020,'The React Beginner&#039;s Handbook follows the 80/20 rule: learn in 20% of the time the 80% of a topic. The author find this approach gives a well-rounded overview.This book does not try to cover everything under the sun related to React. It focuses on the core of the language, trying to simplify th...','1001616584103',11,1,40,'','2020 The React Workshop.pdf','','','','',''),
(187,'Thinking in Pandas','9781484258385.png','',2020,'Understand and implement big data analysis solutions in pandas with an emphasis on performance. This book strengthens your intuition for working with pandas, the Python data analysis library, by exploring its underlying implementation and data structures.Thinking in Pandas introduces the topic of bi...','9781484258385',5,1,186,'How to Use the Python Data Analysis Library the Right Way','2020 Thinking in Pandas.pdf','','','','',''),
(188,'Tiny Python Projects','9781617297519.png','',2020,'A long journey is really a lot of little steps. The same is true when you&#039;re learning Python, so you may as well have some fun along the way! Written in a lighthearted style with entertaining exercises that build powerful skills, Tiny Python Projects takes you from amateur to Pythonista as you ...','9781617297519',12,1,440,'Learn coding and testing with puzzles and games','2020 Tiny Python Projects.pdf','','','','',''),
(189,'TypeScript Quickly','9781617295942.png','',2020,'TypeScript is JavaScript with an important upgrade! By adding a strong type system to JavaScript, TypeScript can help you eliminate entire categories of runtime errors. In TypeScript Quickly, you&#039;ll learn to build rock-solid apps through practical examples and hands-on projects under the expert...','9781617295942',12,1,488,'','2020 TypeScript Quickly.pdf','','','','',''),
(190,'Using and Administering Linux: Volume 1','9781484250488.png','',2020,'Become a Linux sysadmin and expert user of Linux, even with no previous Linux experience and learn to manage complex systems with ease. Volume 1 of this three volume training course introduces operating systems in general and Linux in particular. It briefly explores the The Linux Philosophy for SysA...','9781484250488',5,1,629,'Zero to SysAdmin: Getting Started','2020 Using and Administering Linux Volume 1.pdf','','','','',''),
(191,'Using and Administering Linux: Volume 2','9781484254547.png','',2020,'Experience an in-depth exploration of logical volume management and the use of file managers to manipulate files and directories and the critical concept that, in Linux, everything is a file and some fun and interesting uses of the fact that everything is a file.This book builds upon the skills you ...','9781484254547',5,1,583,'Zero to SysAdmin: Advanced Topics','2020 Using and Administering Linux Volume 2.pdf','','','','',''),
(192,'Using and Administering Linux: Volume 3','9781484254844.png','',2020,'Manage complex systems with ease and equip yourself for a new career. This book builds upon the skills you learned in Volumes 1 and 2 of this course and it depends upon the virtual network and virtual machine you created there. However, more experienced Linux users can begin with this volume and dow...','9781484254844',5,1,430,'Zero to SysAdmin: Network Services','2020 Using and Administering Linux Volume 3.pdf','','','','',''),
(193,'Using Asyncio in Python','9781492075332.png','',2020,'If you&#039;re among the Python developers put off by asyncio&#039;s complexity, it&#039;s time to take another look. Asyncio is complicated because it aims to solve problems in concurrent network programming for both framework and end-user developers. The features you need to consider are a small s...','9781492075332',4,1,166,'Understanding Python\'s Asynchronous Programming Features','2020 Using Asyncio in Python.pdf','','','','',''),
(194,'Advanced Algorithms and Data Structures','9781617295485.png','',2021,'As a software engineer, you&#039;ll encounter countless programming challenges that initially seem confusing, difficult, or even impossible. Don&#039;t despair! Many of these &quot;new&quot; problems already have well-established solutions. Advanced Algorithms and Data Structures teaches you powerfu...','9781617295485',12,1,768,'','2021 Advanced Algorithms and Data Structures.pdf','','','','',''),
(195,'API Design Patterns','9781617295850.png','',2021,'API Design Patterns reveals best practices for building stable, user-friendly APIs. These design patterns can be applied to solve common API problems and flexibly altered to fit your specific needs. Hands-on examples and relevant use-cases illustrate patterns for API fundamentals, advanced functiona...','9781617295850',12,1,480,'','2021 API Design Patterns.pdf','','','','',''),
(196,'Data Science at the Command Line, 2nd Edition','9781492087915.png','',2021,'This thoroughly revised guide demonstrates how the flexibility of the command line can help you become a more efficient and productive data scientist. You&#039;ll learn how to combine small yet powerful command-line tools to quickly obtain, scrub, explore, and model your data. To get you started, au...','9781492087915',4,1,282,'Obtain, Scrub, Explore, and Model Data with Unix Power Tools','2021 Data Science at the Command Line.pdf','','','','',''),
(197,'Data Science Bookcamp','9781617296253.png','',2021,'A data science project has a lot of moving parts, and it takes practice and skill to get all the code, algorithms, datasets, formats, and visualizations working together harmoniously. This unique book guides you through five realistic projects, including tracking disease outbreaks from news headline...','9781617296253',12,1,704,'Five real-world Python projects','2021 Data Science Bookcamp Five real-world Python projects.pdf','','','','',''),
(198,'Distributed Services with Go','9781680507607.png','',2021,'This is the book for Gophers who want to learn how to build distributed systems. You know the basics of Go and are eager to put your knowledge to work. Build distributed services that are highly available, resilient, and scalable. This book is just what you need to apply Go to real-world situations....','9781680507607',7,1,258,'Your Guide to Reliable, Scalable, and Maintainable Systems','2021 Distributed Services with Go.pdf','','','','',''),
(199,'Ethical Hacking','9781718501874.png','',2021,'Ethical Hacking is a crash course in modern hacking techniques. It&#039;s already being used to prepare the next generation of offensive security experts. In its many hands-on labs, you&#039;ll explore crucial skills for any aspiring penetration tester, security researcher, or malware analyst.You&#0...','9781718501874',6,1,376,'A Hands-on Introduction to Breaking In','2021 ETHICAL HACKING.pdf','','','','',''),
(200,'Expert Python Programming, 4th Edition','9781801071109.png','',2021,'This new edition of Expert Python Programming provides you with a thorough understanding of the process of building and maintaining Python apps. Complete with best practices, useful tools, and standards implemented by professional Python developers, this fourth edition has been extensively updated. ...','9781801071109',8,1,630,'Master Python by learning the best coding practices and advanced programming concepts','2021 Expert Python Programming.pdf','','','','',''),
(201,'Flow Architectures','9781492075899.png','',2021,'Software development today is embracing events and streaming data, which optimizes not only how technology interacts but also how businesses integrate with one another to meet customer needs. This phenomenon, called flow, consists of patterns and standards that determine which activity and related d...','9781492075899',4,1,254,'The Future of Streaming and Event-Driven Integration','2021 Flow Architectures.pdf','','','','',''),
(202,'Full Stack Python Security','9781617298820.png','',2021,'Full Stack Python Security: Cryptography, TLS, and attack resistance teaches you everything you&#039;ll need to build secure Python web applications. As you work through the insightful code snippets and engaging examples, you&#039;ll put security standards, best practices, and more into action. Alon...','9781617298820',12,1,304,'Cryptography, TLS, and attack resistance','2021 Full Stack Python Security.pdf','','','','',''),
(203,'Generative AI with Python and TensorFlow 2','9781800200883.png','',2021,'In recent years, generative artificial intelligence has been instrumental in the creation of lifelike data (images, speech, video, music, and text) from scratch. In this book you will unpack how these powerful models are created from relatively simple building blocks, and how you might adapt these m...','9781800200883',8,1,488,'Harness the power of generative models to create images, text, and music','2021 Generative AI with Python and TensorFlow 2.pdf','','','','',''),
(204,'Git for Programmers','9781801075732.png','',2021,'Git is the most popular version control system in the world. It allows developers to keep up with frequent code changes in a project, ensures there are no code conflicts between the developers, and reverts to an older version of code when required.Git for Programmers comprehensively equips you with ...','9781801075732',8,1,264,'Master Git for effective implementation of version control for your programming projects','2021 Git for Programmers.pdf','','','','',''),
(205,'GitOps and Kubernetes','9781617297274.png','',2021,'GitOps and Kubernetes introduces a radical idea - managing your infrastructure with the same Git pull requests you use to manage your codebase. In this in-depth tutorial, you&#039;ll learn to operate infrastructures based on powerful-but-complex technologies such as Kubernetes with the same Git vers...','9781617297274',12,1,344,'Continuous Deployment with Argo CD, Jenkins X, and Flux','2021 GitOps and Kubernetes.pdf','','','','',''),
(206,'Graph-Powered Machine Learning','9781617295645.png','',2021,'Graph-Powered Machine Learning teaches to use graph-based algorithms and data organization strategies to develop superior machine learning applications. You&#039;ll dive into the role of graphs in machine learning and big data platforms, and take an in-depth look at data source modeling, algorithm d...','9781617295645',12,1,496,'','2021 Graph-Powered Machine Learning.pdf','','','','',''),
(207,'GraphQL in Action','9781617295683.png','',2021,'Reduce bandwidth demands on your APIs by getting only the results you need - all in a single request! The GraphQL query language simplifies interactions with web servers, enabling smarter API queries that can hugely improve the efficiency of data requests. In GraphQL in Action, you&#039;ll learn how...','9781617295683',12,1,384,'','2021 GraphQL in Action.pdf','','','','',''),
(208,'JavaScript Cookbook, 3rd Edition','9781492055754.png','',2021,'Why reinvent the wheel every time you run into a problem with JavaScript? This cookbook is chock-full of code recipes for common programming tasks, along with techniques for building apps that work in any browser. You&#039;ll get adaptable code samples that you can add to almost any project-and you&...','9781492055754',4,1,538,'Programming the Web','2021 JavaScript Cookbook.pdf','','','','',''),
(209,'Linux System Programming Techniques','9781789951288.png','',2021,'Linux is the world&#039;s most popular open source operating system (OS). Linux System Programming Techniques will enable you to extend the Linux OS with your own system programs and communicate with other programs on the system.The book begins by exploring the Linux filesystem, its basic commands, ...','9781789951288',8,1,432,'Become a proficient Linux system programmer using expert recipes and techniques','2021 Linux System Programming Techniques.pdf','','','','',''),
(210,'Machine Learning Bookcamp','9781617296819.png','',2021,'The only way to learn is to practice! In Machine Learning Bookcamp, you&#039;ll create and deploy Python-based machine learning models for a variety of increasingly challenging projects. Taking you from the basics of machine learning to complex applications such as image analysis, each new project b...','9781617296819',12,1,472,'Build a portfolio of real-life projects','2021 Machine Learning Bookcamp.pdf','','','','',''),
(211,'Mastering Tableau 2021, 3rd Edition','9781800561649.png','',2021,'Tableau is one of the leading business intelligence (BI) tools used to solve data analysis challenges. With this book, you will master Tableau&#039;s features and offerings in various paradigms of the BI domain.Updated with fresh topics including Quick Level of Detail expressions, the newest Tableau...','9781800561649',8,1,792,'Implement advanced business intelligence techniques and analytics with Tableau','2021 Mastering Ansible.pdf','','','','',''),
(212,'Mastering TypeScript, 4th Edition','9781800564732.png','',2021,'TypeScript is both a language and a set of tools to generate JavaScript. It was designed by Anders Hejlsberg at Microsoft to help developers write enterprise-scale JavaScript.Using a fast-paced, but easy-to-follow set of code samples, this fourth edition will get you up and running with Typescript q...','9781800564732',8,1,538,'Build enterprise-ready, modular web applications using TypeScript 4 and modern frameworks','2021 Mastering TypeScript.pdf','','','','',''),
(213,'MongoDB Performance Tuning','9781484268780.png','',2021,'Use this fast and complete guide to optimize the performance of MongoDB databases and the applications that depend on them. You will be able to turbo-charge the performance of your MongoDB applications to provide a better experience for your users, reduce your running costs, and avoid application gr...','9781484268780',5,1,349,'Optimizing MongoDB Databases and their Applications','2021 MongoDB Performance Tuning.pdf','','','','',''),
(214,'Pandas in Action','9781617297434.png','',2021,'Pandas has rapidly become one of Python&#039;s most popular data analysis libraries. In Pandas in Action, a friendly and example-rich introduction, author Boris Paskhaver shows you how to master this versatile tool and take the next steps in your data science career. You&#039;ll learn how easy Panda...','9781617297434',12,1,440,'','2021 Pandas in Action.pdf','','','','',''),
(215,'Practical Linux Forensics','9781718501966.png','',2021,'Practical Linux Forensics dives into the technical details of analyzing postmortem forensic images of Linux systems that have been misused, abused, or the target of malicious attacks. This essential practitioner&#039;s guide will show you how to locate and interpret digital evidence found on Linux d...','9781718501966',6,1,400,'A Guide for Digital Investigators','2021 PRACTICAL LINUX FORENSICS.pdf','','','','',''),
(216,'Programming Algorithms in Lisp','9781484264270.png','',2021,'Master algorithms programming using Lisp, including the most important data structures and algorithms. This book also covers the essential tools that help in the development of algorithmic code to give you all you need to enhance your code.Programming Algorithms in Lisp shows real-world engineering ...','9781484264270',5,1,377,'Writing Efficient Programs with Examples in ANSI Common Lisp','2021 Programming Algorithms in Lisp.pdf','','','','',''),
(217,'Python Brain Teasers','9781680509007.png','',2021,'We geeks love puzzles and solving them. The Python programming language is a simple one, but like all other languages it has quirks. This book uses those quirks as teaching opportunities via 30 simple Python programs that challenge your understanding of Python. The teasers will help you avoid mistak...','9781680509007',7,1,116,'Exercise Your Mind','2021 Python Brain Teasers.pdf','','','','',''),
(218,'Python Object-Oriented Programming, 4th Edition','9781801077262.png','',2021,'Object-oriented programming (OOP) is a popular design paradigm in which data and behaviors are encapsulated in such a way that they can be manipulated together. Python Object-Oriented Programming, Fourth Edition dives deep into the various aspects of OOP, Python as an OOP language, common and advanc...','9781801077262',8,1,714,'Build robust and maintainable object-oriented Python applications and libraries','2021 Python Object-Oriented Programming.pdf','','','','',''),
(219,'Real-World Natural Language Processing','9781617296420.png','',2021,'Real-world Natural Language Processing teaches you how to create practical NLP applications without getting bogged down in complex language theory and the mathematics of deep learning. In this engaging book, you&#039;ll explore the core tools and techniques required to build a huge range of powerful...','9781617296420',12,1,336,'Practical applications with deep learning','2021 Real-World Natural Language Processing.pdf','','','','',''),
(220,'Robust Python','9781098100667.png','',2021,'Does it seem like your Python projects are getting bigger and bigger? Are you feeling the pain as your codebase expands and gets tougher to debug and maintain? Python is an easy language to learn and use, but that also means systems can quickly grow beyond comprehension. Thankfully, Python has featu...','9781098100667',4,1,380,'Write Clean and Maintainable Code','2021 Robust Python.pdf','','','','',''),
(221,'Rust in Action','9781617294556.png','',2021,'Rust in Action introduces the Rust programming language by exploring numerous systems programming concepts and techniques. You&#039;ll be learning Rust by delving into how computers work under the hood. You&#039;ll find yourself playing with persistent storage, memory, networking and even tinkering ...','9781617294556',12,1,456,'Systems programming concepts and techniques','2021 Rust in Action.pdf','','','','',''),
(222,'SQL Pocket Guide, 4th Edition','9781492090403.png','',2021,'If you use SQL in your day-to-day work as a data analyst, data scientist, or data engineer, this popular pocket guide is your ideal on-the-job reference. You&#039;ll find many examples that address the language&#039;s complexities, along with key aspects of SQL used in Microsoft SQL Server, MySQL, O...','9781492090403',4,1,356,'A Guide to SQL Usage','2021 SQL Pocket Guide.pdf','','','','',''),
(223,'The Joy of JavaScript','9781617295867.png','',2021,'Whether building interactive browser-based applications or creating server-side applications in Node, JavaScript is the most widely used language for web programming. With new features, language improvements, paradigms, and potential use cases appearing regularly, there&#039;s never been a more exci...','9781617295867',12,1,360,'','2021 The Joy of JavaScript  .pdf','','','','',''),
(224,'Vue.js 3 By Example','9781838826345.png','',2021,'With its huge ecosystem and wide adoption, Vue is one of the leading frameworks thanks to its ease of use when developing applications. This book will help you understand how you can leverage Vue effectively to develop impressive apps quickly using its latest version - Vue 3.0.The book takes an exam...','9781838826345',8,1,320,'Blueprints to learn Vue web development, full-stack development, and cross-platform development quickly','2021 Vue.js 3 By Example.pdf','','','','',''),
(225,'A Complete Guide to Docker for Operations and Development','9781484281161.png','',2022,'Harness the power of Docker by containerizing your code with all its libraries and file systems to consistently run anywhere. This book is your source for learning all about Docker operations and development. It&#039;s divided into two units and focuses on the topics that the Docker Certified Associ...','9781484281161',5,1,201,'Test-Prep for the Docker Certified Associate (DCA) Exam','2022 A Complete Guide to Docker for Operations and Development.pdf','','','','',''),
(226,'Ansible for Real-Life Automation','9781803235417.png','',2022,'Get ready to leverage the power of Ansible&#039;s wide applicability to automate and manage IT infrastructure with Ansible for Real-Life Automation. This book will guide you in setting up and managing the free and open source automation tool and remote-managed nodes in the production and dev/staging...','9781803235417',8,1,480,'A complete Ansible handbook filled with practical IT automation use cases','2022 Ansible for Real-Life Automation.pdf','','','','',''),
(227,'Beginning Ansible Concepts and Application','9781484281727.png','',2022,'Learn the concepts and develop the skills to be a true Ansible artist and use it inside and outside the box. This book applies key concepts immediately while building up your Ansible skills layer by layer through easy to grasp examples and engaging projects. You&#039;ll also think about security, wh...','9781484281727',5,1,283,'Provisioning, Configuring, and Managing Servers, Applications, and Their Dependencies','2022 Beginning Ansible Concepts and Application.pdf','','','','',''),
(228,'Beginning React and Firebase','9781484278116.png','',2022,'Use React with Firebase to build four beginner-friendly apps. A lot of React tutorials out there today only cover basic web apps, but with additional features the web apps included in this book can be converted into fully scaled startups.You will start with the basics: learn to deploy a React app wi...','9781484278116',5,1,184,'Create Four Beginner-Friendly Projects Using React and Firebase','2022 Beginning React and Firebase.pdf','','','','',''),
(229,'Building Python Web APIs with FastAPI','9781801076630.png','',2022,'RESTful web services are commonly used to create APIs for web-based applications owing to their light weight and high scalability. This book will show you how FastAPI, a high-performance web framework for building RESTful APIs in Python, allows you to build robust web APIs that are simple and intuit...','9781801076630',8,1,216,'A fast-paced guide to building high-performance, robust web APIs with very little boilerplate code','2022 Building Python Web APIs with FastAPI.pdf','','','','',''),
(230,'Command-Line Rust','9781098109431.png','',2022,'For several consecutive years, Rust has been voted &quot;most loved programming language&quot; in Stack Overflow&#039;s annual developer survey. This open source systems programming language is now used for everything from game engines and operating systems to browser components and virtual reality ...','9781098109431',4,1,396,'A Project-Based Primer for Writing Rust CLIs','2022 Command-Line Rust.pdf','','','','',''),
(231,'Continuous API Management, 2nd Edition','9781098103521.png','',2022,'A lot of work is required to release an API, but the effort doesn&#039;t always pay off. Overplanning before an API matures is a wasted investment, while underplanning can lead to disaster. The second edition of this book provides maturity models for individual APIs and multi-API landscapes to help ...','9781098103521',4,1,362,'Making the Right Decisions in an Evolving Landscape','2022 Continuous API Management.pdf','','','','',''),
(232,'Continuous Delivery with Docker and Jenkins, 3rd Edition','9781803237480.png','',2022,'This updated third edition of Continuous Delivery with Docker and Jenkins will explain the advantages of combining Jenkins and Docker to improve the continuous integration and delivery process of app development.You&#039;ll start by setting up a Docker server and configuring Jenkins on it. Next, you...','9781803237480',8,1,374,'Create secure applications by building complete CI/CD pipelines','2022 Continuous Delivery with Docker and Jenkins.pdf','','','','',''),
(233,'Data Analysis with Python and PySpark','9781617297205.png','',2022,'Data Analysis with Python and PySpark is your guide to delivering successful Python-driven data projects. Packed with relevant examples and essential techniques, this practical book teaches you to build pipelines for reporting, machine learning, and other data-centric tasks. Quick exercises in every...','9781617297205',12,1,456,'','2022 Data Analysis with Python and PySpark.pdf','','','','',''),
(234,'Data-Oriented Programming','9781617298578.png','',2022,'Data-Oriented Programming is a one-of-a-kind guide that introduces the data-oriented paradigm. This groundbreaking approach represents data with generic immutable data structures. It simplifies state management, eases concurrency, and does away with the common problems you&#039;ll find in object-ori...','9781617298578',12,1,424,'Reduce software complexity','2022 Data-Oriented Programming.pdf','','','','',''),
(235,'Deep Learning with TensorFlow and Keras, 3rd Edition','9781803232911.png','',2022,'Deep Learning with TensorFlow and Keras teaches you neural networks and deep learning techniques using TensorFlow (TF) and Keras. You&#039;ll learn how to write deep learning applications in the most powerful, popular, and scalable machine learning stack available.TensorFlow 2.x focuses on simplicit...','9781803232911',8,1,698,'Build and deploy supervised, unsupervised, deep, and reinforcement learning models','2022 Deep Learning with TensorFlow and Keras.pdf','','','','',''),
(236,'Django 4 for the Impatient','9781803245836.png','',2022,'Learning Django can be a tricky and time-consuming activity. There are hundreds of tutorials, loads of documentation, and many explanations that are hard to digest. However, this book enables you to use and learn Django in just a couple of days.In this book, you&#039;ll go on a fun, hands-on, and pr...','9781803245836',8,1,190,'Learn the core concepts of Python web development with Django in one weekend','2022 Django 4 for the Impatient.pdf','','','','',''),
(237,'Effective Software Testing','9781633439931.png','',2022,'Effective Software Testing teaches you a systematic approach to software testing that will ensure the quality of your code. It&#039;s full of techniques drawn from proven research in software engineering, and each chapter puts a new technique into practice. Follow the real-world use cases and detail...','9781633439931',12,1,328,'A developer\'s guide','2022 Effective Software Testing.pdf','','','','',''),
(238,'Efficient Linux at the Command Line','9781098113407.png','',2022,'Take your Linux skills to the next level! Whether you&#039;re a system administrator, software developer, site reliability engineer, or enthusiastic hobbyist, this practical, hands-on book will help you work faster, smarter, and more efficiently. You&#039;ll learn how to create and run complex comma...','9781098113407',4,1,245,'Boost Your Command-Line Skills','2022 Efficient Linux at the Command Line.pdf','','','','',''),
(239,'Fluent Python, 2nd Edition','9781492056355.png','',2022,'Python&#039;s simplicity lets you become productive quickly, but often this means you aren&#039;t using everything it has to offer. With the updated edition of this hands-on guide, you&#039;ll learn how to write effective, modern Python 3 code by leveraging its best ideas.Don&#039;t waste time bendi...','9781492056355',4,1,1008,'Clear, Concise, and Effective Programming','2022 Fluent Python.pdf','','','','',''),
(240,'Full Stack Development with Spring Boot and React, 3rd Edition','9781801816786.png','',2022,'Getting started with full stack development can be daunting. Even developers who are familiar with the best tools, such as Spring Boot and React, can struggle to nail the basics, let alone master the more advanced elements. If you&#039;re one of these developers, this comprehensive guide covers ever...','9781801816786',8,1,378,'Build modern and scalable full stack applications using the power of Spring Boot and React','2022 Full Stack Development with MongoDB.pdf','','','','',''),
(241,'Game Development with Rust and WebAssembly','9781801070973.png','',2022,'The Rust programming language has held the most-loved technology ranking on Stack Overflow for 6 years running, while JavaScript has been the most-used programming language for 9 years straight as it runs on every web browser. Now, thanks to WebAssembly (or Wasm), you can use the language you love o...','9781801070973',8,1,476,'Learn how to run Rust on the web while building a game','2022 Game Development with Rust and WebAssembly.pdf','','','','',''),
(242,'Getting Started with Open Source Technologies','9781484281277.png','',2022,'Using real life examples, learn how open source projects are consumed and explore the nuances within different industries in adopting open source technologies.After gaining a basic understanding of open source and open standards, understand how licensing helps turn community code into an enterprise ...','9781484281277',5,1,194,'Applying Open Source Technologies with Projects and Real Use Cases','2022 Getting Started with CockroachDB.pdf','','','','',''),
(243,'Getting Started with Open Source Technologies','9781484281277.png','',2022,'Using real life examples, learn how open source projects are consumed and explore the nuances within different industries in adopting open source technologies.After gaining a basic understanding of open source and open standards, understand how licensing helps turn community code into an enterprise ...','9781484281277',5,1,194,'Applying Open Source Technologies with Projects and Real Use Cases','2022 Getting Started with Elastic Stack 8.0.pdf','','','','',''),
(244,'Hacking APIs','9781718502444.png','',2022,'An Application Programming Interface (API) is a software connection that allows applications to communicate and share services. Hacking APIs will teach you how to test web APIs for security vulnerabilities. You&#039;ll learn how the common API types, REST, SOAP, and GraphQL, work in the wild. Then y...','9781718502444',6,1,368,'Breaking Web Application Programming Interfaces','2022 HACKING APIS.pdf','','','','',''),
(245,'Hands-On Data Structures and Algorithms with Python, 3rd Edition','9781801073448.png','',2022,'Choosing the right data structure is pivotal to optimizing the performance and scalability of applications. This new edition of Hands-On Data Structures and Algorithms with Python will expand your understanding of key structures, including stacks, queues, and lists, and also show you how to apply pr...','9781801073448',8,1,496,'Store, manipulate, and access data effectively and boost the performance of your applications','2022 Hands-On Data Structures and Algorithms with Python.pdf','','','','',''),
(246,'Hugo in Action','9781617297007.png','',2022,'Sometimes, simple is better. Static websites - sites with fixed content - are easier to create and maintain, and inherently more secure than dynamic pages. Hugo in Action is a hands-on guide to using the Hugo static site engine to render these websites in milliseconds. Working with a complete exampl...','9781617297007',12,1,488,'Static sites and dynamic Jamstack apps','2022 Hugo in Action.pdf','','','','',''),
(247,'Infrastructure as Code, Patterns and Practices','9781617298295.png','',2022,'Infrastructure as Code, Patterns and Practices teaches you to automate infrastructure by applying changes in a codified manner. You&#039;ll learn how to create, test, and deploy infrastructure components in a way that&#039;s easy to scale and share across an entire organization. The book is full of ...','9781617298295',12,1,400,'With examples in Python and Terraform','2022 Infrastructure as Code, Patterns and Practices with examples in python and terraform.pdf','','','','',''),
(248,'Introduction to Computer Organization','9781718500099.png','',2022,'Introduction to Computer Organization gives programmers a practical understanding of what happens in a computer when you execute your code. You may never have to write x86-64 assembly language or design hardware yourself, but knowing how the hardware and software works will give you greater control ...','9781718500099',6,1,502,'An Under the Hood Look at Hardware and x86-64 Assembly','2022 INTRODUCTION TO COMPUTER ORGANIZATION.pdf','','','','',''),
(249,'JavaScript from Frontend to Backend','9781801070317.png','',2022,'JavaScript, the most widely used programming language in the world, has numerous libraries and modules and a dizzying array of need-to-know topics. Picking a starting point can be difficult. Enter JavaScript from Frontend to Backend. This concise, practical guide will get you up to speed in next to ...','9781801070317',8,1,336,'Learn full stack JavaScript development using the MEVN stack with quick and easy steps','2022 JavaScript from Frontend to Backend.pdf','','','','',''),
(250,'Kickstart Modern Android Development with Jetpack and Kotlin','9781801811071.png','',2022,'With Jetpack libraries, you can build and design high-quality, robust Android apps that have an improved architecture and work consistently across different versions and devices. This book will help you understand how Jetpack allows developers to follow best practices and architectural patterns when...','9781801811071',8,1,472,'Enhance your applications by integrating Jetpack and applying modern app architectural concepts','2022 Kickstart Modern Android Development with Jetpack and Kotlin.pdf','','','','',''),
(251,'Learn API Testing','9781484281413.png','',2022,'Explore software web application architecture, API testing, coding practices, and the standards for better API test automation development and management. This book focuses on aspiring software testing engineers currently working in API testing, and those starting their journey in the field of softw...','9781484281413',5,1,223,'Norms, Practices, and Guidelines for Building Effective Test Automation','2022 Learn API Testing.pdf','','','','',''),
(252,'Learn Computer Forensics, 2nd Edition','9781803238302.png','',2022,'Computer Forensics, being a broad topic, involves a variety of skills which will involve seizing electronic evidence, acquiring data from electronic evidence, data analysis, and finally developing a forensic report.This book will help you to build up the skills you need to work in a highly technical...','9781803238302',8,1,434,'Your one-stop guide to searching, analyzing, acquiring, and securing digital evidence','2022 Learn Computer Forensics (1).pdf','','','','',''),
(253,'Learning DevOps, 2nd Edition','9781801818964.png','',2022,'In the implementation of DevOps processes, the choice of tools is crucial to the sustainability of projects and collaboration between developers and ops. This book presents the different patterns and tools for provisioning and configuring an infrastructure in the cloud, covering mostly open source t...','9781801818964',8,1,560,'A comprehensive guide to accelerating DevOps culture adoption with Terraform, Azure DevOps, Kubernetes, and Jenkins','2022 Learning DevOps.pdf','','','','',''),
(254,'Learning Modern Linux','9781098108946.png','',2022,'If you use Linux in development or operations and need a structured approach to help you dive deeper, this book is for you. Author Michael Hausenblas also provides tips and tricks for improving your workflow with this open source operating system. Whether you&#039;re a developer, software architect,...','9781098108946',4,1,258,'A Handbook for the Cloud Native Practitioner','2022 Learning Modern Linux.pdf','','','','',''),
(255,'Learning TypeScript','9781098110338.png','',2022,'TypeScript has conquered the world of JavaScript: it&#039;s one of the world&#039;s fastest growing and most popular languages across developer surveys, widely used in consumer and business companies alike, and frequently credited for helping massive web applications scale. But what is TypeScript? H...','9781098110338',4,1,318,'Enhance Your Web Development Skills Using Type-Safe JavaScript','2022 Learning TypeScript.pdf','','','','',''),
(256,'Linux Device Driver Development, 2nd Edition','9781803240060.png','',2022,'Linux is by far the most-used kernel on embedded systems. Thanks to its subsystems, the Linux kernel supports almost all of the application fields in the industrial world. This updated second edition of Linux Device Driver Development is a comprehensive introduction to the Linux kernel world and the...','9781803240060',8,1,708,'Everything you need to start with device driver development for Linux kernel and embedded Linux','2022 Linux Device Driver Development.pdf','','','','',''),
(257,'Linux Kernel Debugging','9781801075039.png','',2022,'The Linux kernel is at the very core of arguably the world&#039;s best production-quality OS. Debugging it, though, can be a complex endeavor.Linux Kernel Debugging is a comprehensive guide to learning all about advanced kernel debugging. This book covers many areas in-depth, such as instrumentation...','9781801075039',8,1,638,'Leverage proven tools and advanced techniques to effectively debug Linux kernels and kernel modules','2022 Linux Kernel Debugging.pdf','','','','',''),
(258,'Logging in Action','9781617298356.png','',2022,'Logging in Action is a guide to optimize and organize logging using the CNCF Fluentd and Fluent Bit projects. You&#039;ll use the powerful log management tool Fluentd to solve common log management, and learn how proper log management can improve performance and make management of software and infra...','9781617298356',12,1,392,'With Fluentd, Kubernetes and more','2022 Logging in Action  .pdf','','','','',''),
(259,'Machine Learning for Streaming Data with Python','9781803248363.png','',2022,'Streaming data is the new top technology to watch out for in the field of data science and machine learning. As business needs become more demanding, many use cases require real-time analysis as well as real-time machine learning. This book will help you to get up to speed with data analytics for st...','9781803248363',8,1,258,'Rapidly build practical online machine learning solutions using River and other top key frameworks','2022 Machine Learning for Streaming Data with Python.pdf','','','','',''),
(260,'Mastering QuickBooks 2022, 3rd Edition','9781803244280.png','',2022,'Whether you have bookkeeping experience or not, handling the financial side of your growing business requires expertise. With Mastering QuickBooks® 2022, Third Edition, you&#039;ll learn how to use QuickBooks® to build the perfect budget, simplify tax return preparation, manage inventory, track jo...','9781803244280',8,1,478,'The bestselling guide to bookkeeping and the QuickBooks Online accounting software','2022 Mastering Cyber Intelligence.pdf','','','','',''),
(261,'Mastering Kali Linux for Advanced Penetration Testing, 4th Edition','9781801819770.png','',2022,'Remote working has given hackers plenty of opportunities as more confidential information is shared over the internet than ever before. In this new edition of Mastering Kali Linux for Advanced Penetration Testing, you&#039;ll learn an offensive approach to enhance your penetration testing skills by ...','9781801819770',8,1,572,'Become a cybersecurity ethical hacking expert using Metasploit, Nmap, Wireshark, and Burp Suite','2022 Mastering Kali Linux for Advanced Penetration Testing.pdf','','','','',''),
(262,'Mastering Python, 2nd Edition','9781800207721.png','',2022,'Even if you find writing Python code easy, writing code that is efficient, maintainable, and reusable is not so straightforward. Many of Python&#039;s capabilities are underutilized even by more experienced programmers. Mastering Python, Second Edition, is an authoritative guide to understanding adv...','9781800207721',8,1,710,'Write powerful and efficient code using the full range of Python&#039;s capabilities','2022 Mastering Python.pdf','','','','',''),
(263,'Modern Computer Architecture and Organization, 2nd Edition','9781803234519.png','',2022,'Are you a software developer, systems designer, or computer architecture student looking for a methodical introduction to digital device architectures, but are overwhelmed by the complexity of modern systems? This step-by-step guide will teach you how modern computer systems work with the help of pr...','9781803234519',8,1,666,'Learn x86, ARM, and RISC-V architectures and the design of smartphones, PCs, and cloud servers','2022 Modern Computer Architecture and Organization.pdf','','','','',''),
(264,'Modern CSS with Tailwind, 2nd Edition','9781680509403.png','',2022,'Tailwind CSS is an exciting new CSS framework that allows you to design your site by composing simple utility classes to create complex effects. With Tailwind, you can style your text, move your items on the page, design complex page layouts, and adapt your design for devices from a phone to a wide-...','9781680509403',7,1,102,'Flexible Styling Without the Fuss','2022 Modern CSS with Tailwind.pdf','','','','',''),
(265,'Natural Language Processing with Flair','9781801072311.png','',2022,'Flair is an easy-to-understand natural language processing (NLP) framework designed to facilitate training and distribution of state-of-the-art NLP models for named entity recognition, part-of-speech tagging, and text classification. Flair is also a text embedding library for combining different typ...','9781801072311',8,1,200,'A practical guide to understanding and solving NLP problems with Flair','2022 Natural Language Processing with Flair.pdf','','','','',''),
(266,'Practical Fraud Prevention','9781492093329.png','',2022,'Over the past two decades, the booming ecommerce and fintech industries have become a breeding ground for fraud. Organizations that conduct business online are constantly engaged in a cat-and-mouse game with these invaders. In this practical book, Gilit Saporta and Shoshana Maraney draw on their fra...','9781492093329',4,1,396,'Fraud and AML Analytics for Fintech and eCommerce, Using SQL and Python','2022 Practical Security for Agile and DevOps (Mark S. Merkow).pdf','','','','',''),
(267,'Practical SQL, 2nd Edition','9781718501065.png','',2022,'Practical SQL is an approachable and fast-paced guide to SQL (Structured Query Language), the standard programming language for defining, organizing, and exploring data in relational databases. Anthony DeBarros, a journalist and data analyst, focuses on using SQL to find the story within your data. ...','9781718501065',6,1,392,'A Beginner\'s Guide to Storytelling with Data','2022 Practical SQL.pdf','','','','',''),
(268,'Pragmatic Python Programming','9781484281512.png','',2022,'Explore the world of programming languages through Python and learn the building blocks of writing programs. This book covers Python 3.10, explaining it through six key concepts. Each chapter contains a real-world example with practical advice and a section on advanced concepts.You&#039;ll start by ...','9781484281512',5,1,198,'Learning Python the Smart Way','2022 Pragmatic Python Programming Learning Python the Smart Way.pdf','','','','',''),
(269,'Python Architecture Patterns','9781801819992.png','',2022,'Developing large-scale systems that continuously grow in scale and complexity requires a thorough understanding of how software projects should be implemented. Software developers, architects, and technical management teams rely on high-level software design patterns such as microservices architectu...','9781801819992',8,1,594,'Master API design, event-driven structures, and package management in Python','2022 Python Architecture Patterns.pdf','','','','',''),
(270,'Python Concurrency with asyncio','9781617298660.png','',2022,'Python is flexible, versatile, and easy to learn. It can also be very slow compared to lower-level languages. Python Concurrency with asyncio teaches you how to boost Python&#039;s performance by applying a variety of concurrency techniques. You&#039;ll learn how the complex-but-powerful asyncio lib...','9781617298660',12,1,376,'','2022 Python Concurrency with asyncio.pdf','','','','',''),
(271,'Python Data Science Handbook, 2nd Edition','9781098121228.png','',2022,'Python is a first-class tool for many researchers, primarily because of its libraries for storing, manipulating, and gaining insight from data. Several resources exist for individual pieces of this data science stack, but only with the new edition of Python Data Science Handbook do you get them all ...','9781098121228',4,1,550,'Essential Tools for Working with Data','2022 Python Data Science Handbook ER.pdf','','','','',''),
(272,'Python for Cybersecurity','9781119850649.png','',2022,'Python For Cybersecurity: Using Python for Cyber Offense and Defense delivers an intuitive and hands-on explanation of using Python for cybersecurity. It relies on the MITRE ATT&amp;CK framework to structure its exploration of cyberattack techniques, attack defenses, and the key cybersecurity challe...','9781119850649',9,1,240,'Using Python for Cyber Offense and Defense','2022 Python for Cybersecurity Using Python.pdf','','','','',''),
(273,'React Projects, 2nd Edition','9781801070638.png','',2022,'Developed by Facebook, React is a popular library for building impressive user interfaces. React extends its capabilities to mobile platforms using the React Native framework and integrates with popular web and mobile tools to build scalable applications.React Projects is your guide to learning Reac...','9781801070638',8,1,384,'Build advanced cross-platform projects with React and React Native to become a professional developer','2022 React Projects.pdf','','','','',''),
(274,'Responsive Web Design with HTML5 and CSS, 4th Edition','9781803242712.png','',2022,'Responsive Web Design with HTML5 and CSS, Fourth Edition, is a fully revamped and extended version of one of the most comprehensive and bestselling books on the latest HTML5 and CSS techniques for responsive web design. It emphasizes pragmatic application, teaching you the approaches needed to build...','9781803242712',8,1,498,'Build future-proof responsive websites using the latest HTML5 and CSS techniques','2022 Responsive Web Design with HTML5 and CSS.pdf','','','','',''),
(275,'Rust Web Development with Rocket','9781800561304.png','',2022,'Looking for a fast, powerful, and intuitive framework to build web applications? This Rust book will help you kickstart your web development journey and take your Rust programming skills to the next level as you uncover the power of Rocket - a fast, flexible, and fun framework powered by Rust.Rust W...','9781800561304',8,1,420,'A practical guide to starting your journey in Rust web development using the Rocket framework','2022 Rust Web Development with Rocket.pdf','','','','',''),
(276,'Software Architecture Metrics','9781098112233.png','',2022,'Software architecture metrics are key to the maintainability and architectural quality of a software project and they can warn you about dangerous accumulations of architectural and technical debt early in the process. In this practical book, leading hands-on software architects share case studies t...','9781098112233',4,1,215,'Case Studies to Improve the Quality of Your Architecture','2022 Software Architecture Metrics.pdf','','','','',''),
(277,'The DevOps Career Handbook','9781803230948.png','',2022,'DevOps is a set of practices that make up a culture, and practicing DevOps methods can make developers more productive and easier to work with. The DevOps Career Handbook is filled with hundreds of tips and tricks from experts regarding every step of the interview process, helping you save time and ...','9781803230948',8,1,234,'The ultimate guide to pursuing a successful career in DevOps','2022 The DevOps Career Handbook.pdf','','','','',''),
(278,'The Kubernetes Operator Framework Book','9781803232850.png','',2022,'From incomplete collections of knowledge and varying design approaches to technical knowledge barriers, Kubernetes users face various challenges when developing their own operators. Knowing how to write, deploy, and pack operators makes cluster management automation much easier - and that&#039;s wha...','9781803232850',8,1,328,'Overcome complex Kubernetes cluster management challenges with automation toolkits','2022 The Kubernetes Operator Framework Book.pdf','','','','',''),
(279,'UI Animations with Lottie and After Effects','9781803243801.png','',2022,'Lottie is a small and scalable JSON-based animation file. LottieFiles is the platform where Lottie animations can be uploaded, tested, and shared. By combining the LottieFiles plugin and the LottieFiles platform, you&#039;ll be able to create stunning animations that are easy to integrate in any dev...','9781803243801',8,1,302,'Create, render, and ship stunning animations natively on mobile with React Native','2022 UI Animations with Lottie and After Effects.pdf','','','','',''),
(280,'WordPress Plugin Development Cookbook, 3rd Edition','9781801810777.png','',2022,'WordPress is one of the most widely used, powerful, and open content management systems (CMSs). Whether you&#039;re a site owner trying to find the right extension, a developer who wants to contribute to the community, or a website developer working to fulfill a client&#039;s needs, learning how to ...','9781801810777',8,1,420,'Explore the complete set of tools to craft powerful plugins that extend the world&#039;s most popular CMS','2022 WordPress Plugin Development Cookbook.pdf','','','','','');
/*!40000 ALTER TABLE `main_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_book_authors`
--

DROP TABLE IF EXISTS `main_book_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_book_authors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `author_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_book_authors_book_id_author_id_eae32fb5_uniq` (`book_id`,`author_id`),
  KEY `main_book_authors_author_id_ef2e353b_fk_main_author_id` (`author_id`),
  CONSTRAINT `main_book_authors_author_id_ef2e353b_fk_main_author_id` FOREIGN KEY (`author_id`) REFERENCES `main_author` (`id`),
  CONSTRAINT `main_book_authors_book_id_94d32c0d_fk_main_book_id` FOREIGN KEY (`book_id`) REFERENCES `main_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=395 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_book_authors`
--

LOCK TABLES `main_book_authors` WRITE;
/*!40000 ALTER TABLE `main_book_authors` DISABLE KEYS */;
INSERT INTO `main_book_authors` VALUES
(2,6,3),
(3,7,4),
(4,8,5),
(5,9,6),
(6,9,7),
(7,10,8),
(8,10,9),
(9,10,10),
(10,11,11),
(11,11,12),
(12,12,13),
(13,12,14),
(14,13,15),
(15,14,16),
(16,15,17),
(17,16,18),
(18,16,19),
(19,17,20),
(20,17,21),
(21,17,22),
(22,18,23),
(23,18,24),
(24,19,25),
(25,19,26),
(26,19,27),
(27,20,28),
(28,21,29),
(29,22,29),
(30,23,30),
(31,24,31),
(32,25,32),
(33,26,33),
(34,27,34),
(35,28,35),
(36,29,36),
(37,30,37),
(38,31,38),
(39,31,39),
(40,32,40),
(41,33,41),
(42,34,42),
(43,35,43),
(44,36,44),
(45,37,45),
(46,37,46),
(47,38,47),
(48,39,29),
(49,40,48),
(50,41,49),
(51,42,50),
(52,43,51),
(53,44,52),
(54,45,53),
(55,46,54),
(56,47,55),
(57,47,56),
(58,47,57),
(59,48,58),
(60,48,59),
(61,48,60),
(62,48,61),
(63,49,62),
(64,50,63),
(65,50,64),
(66,51,65),
(67,52,66),
(68,53,67),
(69,54,68),
(70,55,69),
(71,55,70),
(72,56,71),
(73,57,72),
(74,58,73),
(75,59,74),
(76,60,75),
(77,60,76),
(78,61,77),
(79,62,78),
(80,63,79),
(81,63,80),
(82,63,81),
(83,64,82),
(84,65,83),
(85,65,84),
(86,65,85),
(87,66,86),
(88,66,87),
(89,67,88),
(90,68,89),
(91,69,90),
(92,70,91),
(93,71,92),
(94,72,93),
(95,72,94),
(96,73,95),
(97,73,96),
(98,74,97),
(99,75,98),
(100,75,99),
(101,75,100),
(102,76,101),
(103,77,102),
(104,78,32),
(105,79,103),
(106,80,104),
(108,81,78),
(107,81,105),
(109,82,106),
(110,83,107),
(111,83,108),
(112,83,109),
(113,84,110),
(114,85,111),
(115,85,112),
(116,85,113),
(117,86,114),
(118,87,115),
(119,88,116),
(120,89,117),
(121,89,118),
(124,90,52),
(122,90,119),
(123,90,120),
(125,91,121),
(126,91,122),
(127,92,123),
(128,93,124),
(129,94,125),
(130,95,126),
(131,95,127),
(132,96,128),
(133,97,129),
(134,98,130),
(135,99,131),
(136,100,132),
(137,101,133),
(138,102,134),
(139,103,135),
(140,103,136),
(141,104,137),
(142,105,138),
(143,106,139),
(144,106,140),
(145,107,141),
(146,108,142),
(147,108,143),
(148,108,144),
(149,109,145),
(150,110,146),
(151,110,147),
(152,110,148),
(153,111,149),
(154,112,150),
(155,113,151),
(156,114,152),
(157,115,153),
(158,116,154),
(159,117,155),
(160,118,156),
(161,118,157),
(162,119,158),
(163,120,159),
(164,121,160),
(165,122,161),
(166,123,162),
(167,124,163),
(168,125,164),
(169,126,165),
(170,126,166),
(171,127,167),
(172,127,168),
(173,128,169),
(174,128,170),
(175,128,171),
(176,128,172),
(177,128,173),
(178,128,174),
(179,128,175),
(180,129,176),
(181,130,177),
(182,130,178),
(183,131,179),
(184,132,180),
(185,133,181),
(186,133,182),
(187,134,183),
(188,134,184),
(189,135,185),
(190,136,186),
(191,137,187),
(192,137,188),
(193,137,189),
(194,138,190),
(195,139,191),
(196,140,192),
(197,140,193),
(198,140,194),
(199,141,195),
(200,141,196),
(201,142,197),
(202,143,198),
(203,144,199),
(204,145,200),
(205,145,201),
(206,146,202),
(207,147,203),
(208,148,204),
(209,149,205),
(210,149,206),
(211,149,207),
(212,150,208),
(213,151,209),
(214,152,89),
(215,152,210),
(216,153,211),
(217,153,212),
(218,154,213),
(219,155,214),
(220,155,215),
(221,156,216),
(222,157,217),
(223,157,218),
(224,157,219),
(225,157,220),
(226,157,221),
(227,157,222),
(228,158,223),
(229,159,224),
(230,160,225),
(231,160,226),
(232,161,227),
(233,162,228),
(234,163,229),
(235,164,230),
(236,164,231),
(237,165,232),
(238,165,233),
(239,166,234),
(240,166,235),
(241,167,236),
(242,168,237),
(243,169,238),
(244,170,239),
(245,170,240),
(246,171,241),
(247,172,242),
(248,172,243),
(249,173,244),
(250,174,245),
(251,174,246),
(252,174,247),
(253,175,248),
(254,175,249),
(255,176,250),
(256,177,251),
(257,178,252),
(258,178,253),
(259,179,254),
(260,180,255),
(261,181,256),
(262,182,257),
(263,182,258),
(264,182,259),
(265,183,260),
(266,184,261),
(267,185,262),
(268,186,262),
(269,187,263),
(270,188,264),
(271,189,265),
(272,189,266),
(273,190,267),
(274,191,267),
(275,192,267),
(276,193,268),
(277,194,269),
(278,195,270),
(279,196,271),
(280,197,272),
(281,198,273),
(282,199,274),
(283,200,275),
(284,200,276),
(285,201,277),
(286,202,278),
(287,203,279),
(288,203,280),
(289,204,281),
(290,205,282),
(291,205,283),
(292,205,284),
(293,205,285),
(294,206,286),
(295,207,287),
(296,208,236),
(297,208,288),
(298,208,289),
(299,209,290),
(300,210,291),
(301,211,292),
(302,211,293),
(303,212,294),
(304,213,295),
(305,213,296),
(306,214,297),
(307,215,298),
(308,216,299),
(309,217,300),
(310,218,301),
(311,218,302),
(312,219,303),
(313,220,304),
(314,221,305),
(315,222,306),
(316,223,307),
(317,224,308),
(318,225,309),
(319,226,310),
(321,227,22),
(320,227,311),
(322,228,312),
(323,229,313),
(324,230,264),
(325,231,314),
(326,231,315),
(327,231,316),
(328,231,317),
(329,232,318),
(330,233,319),
(331,234,320),
(332,235,321),
(333,235,322),
(334,235,323),
(335,236,324),
(336,236,325),
(337,237,326),
(338,238,73),
(339,239,327),
(340,240,328),
(341,241,329),
(342,242,330),
(343,242,331),
(344,243,330),
(345,243,331),
(346,244,332),
(347,245,333),
(348,246,334),
(349,247,335),
(350,248,336),
(351,249,337),
(352,250,338),
(353,251,339),
(354,252,340),
(355,253,341),
(356,254,102),
(357,255,342),
(358,256,343),
(359,257,115),
(360,258,344),
(361,259,345),
(362,260,346),
(363,261,347),
(364,262,348),
(365,263,349),
(366,264,350),
(367,265,351),
(368,266,352),
(369,266,353),
(370,267,138),
(371,268,354),
(372,269,250),
(373,270,355),
(374,271,356),
(375,272,357),
(376,273,253),
(377,274,254),
(378,275,358),
(381,276,231),
(379,276,359),
(380,276,360),
(382,276,361),
(383,276,362),
(384,276,363),
(385,276,364),
(386,276,365),
(387,276,366),
(388,276,367),
(389,277,368),
(390,277,369),
(391,278,370),
(392,279,371),
(393,279,372),
(394,280,373);
/*!40000 ALTER TABLE `main_book_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_book_tag`
--

DROP TABLE IF EXISTS `main_book_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_book_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_book_tag_book_id_tag_id_850a2358_uniq` (`book_id`,`tag_id`),
  KEY `main_book_tag_tag_id_0d5ff863_fk_main_tag_id` (`tag_id`),
  CONSTRAINT `main_book_tag_book_id_3e88eced_fk_main_book_id` FOREIGN KEY (`book_id`) REFERENCES `main_book` (`id`),
  CONSTRAINT `main_book_tag_tag_id_0d5ff863_fk_main_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `main_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_book_tag`
--

LOCK TABLES `main_book_tag` WRITE;
/*!40000 ALTER TABLE `main_book_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_book_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_book_translators`
--

DROP TABLE IF EXISTS `main_book_translators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_book_translators` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `book_id` bigint(20) NOT NULL,
  `translator_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `main_book_translators_book_id_translator_id_6e0ae3c6_uniq` (`book_id`,`translator_id`),
  KEY `main_book_translator_translator_id_69b33c61_fk_main_tran` (`translator_id`),
  CONSTRAINT `main_book_translator_translator_id_69b33c61_fk_main_tran` FOREIGN KEY (`translator_id`) REFERENCES `main_translator` (`id`),
  CONSTRAINT `main_book_translators_book_id_fab86d37_fk_main_book_id` FOREIGN KEY (`book_id`) REFERENCES `main_book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_book_translators`
--

LOCK TABLES `main_book_translators` WRITE;
/*!40000 ALTER TABLE `main_book_translators` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_book_translators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_booklanguage`
--

DROP TABLE IF EXISTS `main_booklanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_booklanguage` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `language` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_booklanguage`
--

LOCK TABLES `main_booklanguage` WRITE;
/*!40000 ALTER TABLE `main_booklanguage` DISABLE KEYS */;
INSERT INTO `main_booklanguage` VALUES
(1,'English');
/*!40000 ALTER TABLE `main_booklanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_publisher`
--

DROP TABLE IF EXISTS `main_publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_publisher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `adres` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_publisher`
--

LOCK TABLES `main_publisher` WRITE;
/*!40000 ALTER TABLE `main_publisher` DISABLE KEYS */;
INSERT INTO `main_publisher` VALUES
(4,'O\'Reilly Media',''),
(5,'Apress',''),
(6,'No Starch Press',''),
(7,'The Pragmatic Programmers',''),
(8,'Packt Publishing',''),
(9,'Wiley',''),
(10,'Addison-Wesley',''),
(11,'Self-publishing',''),
(12,'Manning',''),
(13,'DigitalOcean','');
/*!40000 ALTER TABLE `main_publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_tag`
--

DROP TABLE IF EXISTS `main_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_tag`
--

LOCK TABLES `main_tag` WRITE;
/*!40000 ALTER TABLE `main_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_translator`
--

DROP TABLE IF EXISTS `main_translator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_translator` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_translator`
--

LOCK TABLES `main_translator` WRITE;
/*!40000 ALTER TABLE `main_translator` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_translator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-05 20:49:18
