-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: Django_Portfolio
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add profile',7,'add_profile'),(26,'Can change profile',7,'change_profile'),(27,'Can delete profile',7,'delete_profile'),(28,'Can view profile',7,'view_profile'),(29,'Can add profiles',7,'add_profiles'),(30,'Can change profiles',7,'change_profiles'),(31,'Can delete profiles',7,'delete_profiles'),(32,'Can view profiles',7,'view_profiles'),(33,'Can add projects',8,'add_projects'),(34,'Can change projects',8,'change_projects'),(35,'Can delete projects',8,'delete_projects'),(36,'Can view projects',8,'view_projects'),(37,'Can add work_ experience',9,'add_work_experience'),(38,'Can change work_ experience',9,'change_work_experience'),(39,'Can delete work_ experience',9,'delete_work_experience'),(40,'Can view work_ experience',9,'view_work_experience');
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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$180000$jLWtzwN7hnHS$JiKRolVSYhQU/h6AVBRwnMsP3NkHrgBiU+J65U8r+dM=','2020-08-21 11:19:49.033245',1,'tusher16','','','',1,1,'2020-05-23 10:57:30.738407');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-05-23 14:30:37.387448','1','Profile object (1)',1,'[{\"added\": {}}]',7,1),(2,'2020-05-23 14:31:17.995168','1','Profile object (1)',3,'',7,1),(3,'2020-05-24 06:50:31.829435','2','Profile object (2)',1,'[{\"added\": {}}]',7,1),(4,'2020-05-24 06:50:50.330455','2','Profile object (2)',3,'',7,1),(5,'2020-05-24 07:01:08.239420','3','Mohammad obaidullah Tusher',1,'[{\"added\": {}}]',7,1),(6,'2020-05-24 07:01:59.724286','3','Mohammad obaidullah Tusher',3,'',7,1),(7,'2020-05-24 07:02:46.568103','4','Mohammad obaidullah Tusher',1,'[{\"added\": {}}]',7,1),(8,'2020-05-29 15:36:56.612861','4','Mohammad Obaidullah Tusher',2,'[{\"changed\": {\"fields\": [\"Name\"]}}]',7,1),(9,'2020-05-30 15:52:16.425054','4','Mohammad Obaidullah Tusher',2,'[{\"changed\": {\"fields\": [\"Researchgate_link\", \"Google_sch_link\"]}}]',7,1),(10,'2020-05-30 16:11:48.466130','4','Mohammad Obaidullah Tusher',2,'[{\"changed\": {\"fields\": [\"About Me\"]}}]',7,1),(11,'2020-05-30 16:51:38.443072','4','Mohammad Obaidullah Tusher',2,'[{\"changed\": {\"fields\": [\"My_website_link\"]}}]',7,1),(12,'2020-05-30 16:54:51.511959','4','Mohammad Obaidullah Tusher',2,'[{\"changed\": {\"fields\": [\"My address\"]}}]',7,1),(13,'2020-08-21 11:20:15.262683','4','Mohammad Obaidullah Tusher',2,'[{\"changed\": {\"fields\": [\"My_website_link\"]}}]',7,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'home','profile'),(8,'home','projects'),(9,'home','work_experience'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-05-21 09:50:01.509967'),(2,'auth','0001_initial','2020-05-21 09:50:01.664145'),(3,'admin','0001_initial','2020-05-21 09:50:02.016234'),(4,'admin','0002_logentry_remove_auto_add','2020-05-21 09:50:02.077271'),(5,'admin','0003_logentry_add_action_flag_choices','2020-05-21 09:50:02.086838'),(6,'contenttypes','0002_remove_content_type_name','2020-05-21 09:50:02.144804'),(7,'auth','0002_alter_permission_name_max_length','2020-05-21 09:50:02.154888'),(8,'auth','0003_alter_user_email_max_length','2020-05-21 09:50:02.169179'),(9,'auth','0004_alter_user_username_opts','2020-05-21 09:50:02.180351'),(10,'auth','0005_alter_user_last_login_null','2020-05-21 09:50:02.209722'),(11,'auth','0006_require_contenttypes_0002','2020-05-21 09:50:02.212618'),(12,'auth','0007_alter_validators_add_error_messages','2020-05-21 09:50:02.224647'),(13,'auth','0008_alter_user_username_max_length','2020-05-21 09:50:02.239740'),(14,'auth','0009_alter_user_last_name_max_length','2020-05-21 09:50:02.261989'),(15,'auth','0010_alter_group_name_max_length','2020-05-21 09:50:02.282209'),(16,'auth','0011_update_proxy_permissions','2020-05-21 09:50:02.293768'),(17,'sessions','0001_initial','2020-05-21 09:50:02.311504'),(18,'home','0001_initial','2020-05-23 10:48:19.501074'),(19,'home','0002_auto_20200523_1049','2020-05-23 10:49:22.671886'),(20,'home','0003_auto_20200524_0716','2020-05-24 07:16:47.683241'),(21,'home','0004_auto_20200529_1528','2020-05-29 15:28:20.569995'),(22,'home','0005_auto_20200529_1553','2020-05-29 15:54:03.786238'),(23,'home','0006_auto_20200530_1454','2020-05-30 14:54:42.031993'),(24,'home','0007_profile_about_me','2020-05-30 16:06:23.973356'),(25,'home','0008_profile_my_website_link','2020-05-30 16:51:02.819213'),(26,'home','0009_profile_my_address','2020-05-30 16:53:42.504942'),(27,'home','0010_projects_work_experience','2020-08-21 12:16:07.321149');
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('j2xr785gf6em0ee0ly3trlca75ijk8fv','NTQ3ZTI0NDg3OWRjZGUxMGI5M2E4YjQ5YzE0YTM1NDc4MDk5MzJkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYWFiNTFkM2I4OWQ3MDExOTVjOTUwOWFjNDEyOTgzMDJiNjMxNTFkIn0=','2020-06-06 10:58:02.124781'),('woau9xcodpff89980q1crwz8tstzkrrh','NTQ3ZTI0NDg3OWRjZGUxMGI5M2E4YjQ5YzE0YTM1NDc4MDk5MzJkNjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkYWFiNTFkM2I4OWQ3MDExOTVjOTUwOWFjNDEyOTgzMDJiNjMxNTFkIn0=','2020-09-04 11:19:49.039533');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_profile`
--

DROP TABLE IF EXISTS `home_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `recent_status` varchar(100) NOT NULL,
  `facebook_link` varchar(128) NOT NULL,
  `linkedin_link` varchar(128) NOT NULL,
  `github_link` varchar(128) NOT NULL,
  `stack_overflow_link` varchar(128) NOT NULL,
  `resume` varchar(100) NOT NULL,
  `Profile_pic` varchar(100) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `google_sch_link` varchar(128) NOT NULL,
  `researchgate_link` varchar(128) NOT NULL,
  `About_Me` longtext,
  `my_website_link` varchar(128) NOT NULL,
  `my_address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `facebook_link` (`facebook_link`),
  UNIQUE KEY `linkedin_link` (`linkedin_link`),
  UNIQUE KEY `github_link` (`github_link`),
  UNIQUE KEY `stack_overflow_link` (`stack_overflow_link`),
  UNIQUE KEY `google_sch_link` (`google_sch_link`),
  UNIQUE KEY `researchgate_link` (`researchgate_link`),
  UNIQUE KEY `my_website_link` (`my_website_link`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_profile`
--

LOCK TABLES `home_profile` WRITE;
/*!40000 ALTER TABLE `home_profile` DISABLE KEYS */;
INSERT INTO `home_profile` VALUES (4,'Mohammad Obaidullah Tusher','Data Scientist at GIGABYTE','https://www.facebook.com/tusher16','https://www.linkedin.com/in/tusher16/','https://github.com/tusher16','https://stackoverflow.com/users/13601910/mohammad-obaidullah-tusher','Mohammad_Obaidullah_Tusher_Curriculum_Vitae_.pdf','tusher_dp_CqwDhh2.jpg','tusher16@gmail.com','2020-05-24 07:02:46.567186','https://scholar.google.ca/citations?hl=en&user=0A01B2UAAAAJ&fbclid=IwAR39XO9oYncZGVLvN-jU5CkStPc2zbrTorqcucivJuo5vtJeHW9lAqd3fBg','https://www.researchgate.net/profile/Mohammad_Tusher','Seeking to increase data efficiency for GIGABYTE Bangladesh Achievements include creating data regression models to predict sales prediction of the company’s total sales with 25% more accuracy than the historical average. Skilled in machine learning, data visualization, and creative thinking. Developed Data Visualizing website and Web applications, encompassing design, coding, testing, and maintenance using the Django framework.','https://www.tusher16.com','Dhanmondi, Dhaka, Bangladesh');
/*!40000 ALTER TABLE `home_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_projects`
--

DROP TABLE IF EXISTS `home_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) NOT NULL,
  `project_details` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_projects`
--

LOCK TABLES `home_projects` WRITE;
/*!40000 ALTER TABLE `home_projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `home_work_experience`
--

DROP TABLE IF EXISTS `home_work_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `home_work_experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `home_work_experience`
--

LOCK TABLES `home_work_experience` WRITE;
/*!40000 ALTER TABLE `home_work_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `home_work_experience` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-28 11:14:17
