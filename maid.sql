# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.32)
# Database: hiring_system
# Generation Time: 2021-03-25 09:02:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table action_events
# ------------------------------------------------------------

DROP TABLE IF EXISTS `action_events`;

CREATE TABLE `action_events` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint(20) unsigned NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext COLLATE utf8mb4_unicode_ci,
  `changes` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  KEY `action_events_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `action_events` WRITE;
/*!40000 ALTER TABLE `action_events` DISABLE KEYS */;

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`)
VALUES
	(2,'92ce4f03-795b-4e8f-87dd-5615d7da6b96',1,'Create','App\\Models\\Maid',3,'App\\Models\\Maid',3,'App\\Models\\Maid',3,'','finished','','2021-02-24 06:24:25','2021-02-24 06:24:25',NULL,'{\"code\":\"A123\",\"name\":\"testing\",\"full_name\":\"testing\",\"email\":\"testing@asdqwe.asd\",\"address\":\"asdqwe123\",\"dob\":\"2021-02-10\",\"gender\":\"M\",\"marital_status\":\"widowed\",\"status\":\"\\u5df2\\u6536\\u5408\\u540c\\u4f46\\u672a\\u6709\\u7c3d\\u8b49\\u8005\",\"height\":\"123\",\"weight\":\"321\",\"religion\":\"hinduism\",\"visa\":true,\"eat_pig\":false,\"pending\":false,\"airline_ticket\":\"123\",\"age\":0,\"contract\":1,\"updated_at\":\"2021-02-24T06:24:25.000000Z\",\"created_at\":\"2021-02-24T06:24:25.000000Z\",\"id\":3}'),
	(3,'92ce57f2-262f-4f28-a703-786a3efa31ca',1,'Update','App\\Models\\Maid',3,'App\\Models\\Maid',3,'App\\Models\\Maid',3,'','finished','','2021-02-24 06:49:24','2021-02-24 06:49:24','{\"pending\":\"0\",\"dob\":\"2021-02-10\",\"eat_pig\":0,\"visa\":1,\"contract\":1}','{\"pending\":false,\"dob\":\"2015-02-05 00:00:00\",\"eat_pig\":false,\"visa\":true,\"contract\":true}'),
	(4,'92ce7047-24bb-4b1d-8f7c-bc3ac8808bf0',1,'Update','App\\Models\\Maid',3,'App\\Models\\Maid',3,'App\\Models\\Maid',3,'','finished','','2021-02-24 07:57:26','2021-02-24 07:57:26','{\"pending\":\"0\",\"eat_pig\":0,\"visa\":1,\"contract\":1}','{\"pending\":false,\"eat_pig\":false,\"visa\":true,\"contract\":true}'),
	(5,'92e03a3a-c534-464e-91c0-72af83b3e08f',1,'Delete','Spatie\\MediaLibrary\\MediaCollections\\Models\\Media',1,'Spatie\\MediaLibrary\\MediaCollections\\Models\\Media',1,'Spatie\\MediaLibrary\\MediaCollections\\Models\\Media',1,'','finished','','2021-03-05 04:11:12','2021-03-05 04:11:12',NULL,NULL),
	(6,'92e03a56-7405-400c-805e-f07b2ad21061',1,'Update','App\\Models\\Maid',3,'App\\Models\\Maid',3,'App\\Models\\Maid',3,'','finished','','2021-03-05 04:11:30','2021-03-05 04:11:30','{\"pending\":\"0\",\"eat_pig\":0,\"visa\":1,\"contract\":1}','{\"pending\":false,\"eat_pig\":false,\"visa\":true,\"contract\":true}'),
	(7,'92e03bf5-4ec5-44f2-bbcf-b9c9fa5fdca3',1,'Update','App\\Models\\Maid',3,'App\\Models\\Maid',3,'App\\Models\\Maid',3,'','finished','','2021-03-05 04:16:02','2021-03-05 04:16:02','{\"pending\":\"0\",\"eat_pig\":0,\"visa\":1,\"contract\":1}','{\"pending\":false,\"eat_pig\":false,\"visa\":true,\"contract\":true}'),
	(8,'92e04382-0aa2-47f3-85ff-ccaeeef5075d',1,'Delete','Spatie\\MediaLibrary\\MediaCollections\\Models\\Media',6,'Spatie\\MediaLibrary\\MediaCollections\\Models\\Media',6,'Spatie\\MediaLibrary\\MediaCollections\\Models\\Media',6,'','finished','','2021-03-05 04:37:09','2021-03-05 04:37:09',NULL,NULL),
	(9,'92e04389-b525-4204-a699-c308242a0eee',1,'Update','App\\Models\\Maid',3,'App\\Models\\Maid',3,'App\\Models\\Maid',3,'','finished','','2021-03-05 04:37:14','2021-03-05 04:37:14','{\"pending\":\"0\",\"eat_pig\":0,\"visa\":1,\"contract\":1}','{\"pending\":false,\"eat_pig\":false,\"visa\":true,\"contract\":true}'),
	(10,'93046e31-7d7f-4c9c-aac1-2da192fde0b7',1,'Create','App\\Models\\Interview',1,'App\\Models\\Interview',1,'App\\Models\\Interview',1,'','finished','','2021-03-23 04:06:19','2021-03-23 04:06:19',NULL,'{\"started_at\":\"2021-03-26T04:00:00.000000Z\",\"maid_id\":8,\"status\":null,\"remark\":\"Testing\",\"admin_id\":1,\"updated_at\":\"2021-03-23T04:06:18.000000Z\",\"created_at\":\"2021-03-23T04:06:18.000000Z\",\"id\":1}'),
	(11,'9304a2d3-9290-4c7d-ac9f-35889d6ea9bf',1,'Make Appointment','App\\Models\\Maid',75,'App\\Models\\Maid',75,'App\\Models\\Maid',75,'a:1:{s:10:\"started_at\";s:19:\"2021-03-25 04:00:00\";}','finished','','2021-03-23 06:33:29','2021-03-23 06:33:29',NULL,NULL),
	(12,'9304a41b-8019-497a-95a7-eeee199a76e9',1,'Make Appointment','App\\Models\\Maid',75,'App\\Models\\Maid',75,'App\\Models\\Maid',75,'a:1:{s:10:\"started_at\";s:19:\"2021-03-31 04:00:00\";}','finished','','2021-03-23 06:37:04','2021-03-23 06:37:04',NULL,NULL),
	(13,'9304a41b-8019-497a-95a7-eeee199a76e9',1,'Make Appointment','App\\Models\\Maid',74,'App\\Models\\Maid',74,'App\\Models\\Maid',74,'a:1:{s:10:\"started_at\";s:19:\"2021-03-31 04:00:00\";}','finished','','2021-03-23 06:37:04','2021-03-23 06:37:04',NULL,NULL),
	(14,'9304a5bf-cdeb-479c-b80a-01cd7151cf29',1,'Make Appointment','App\\Models\\Maid',75,'App\\Models\\Maid',75,'App\\Models\\Maid',75,'a:1:{s:10:\"started_at\";s:19:\"2021-04-07 04:00:00\";}','finished','','2021-03-23 06:41:39','2021-03-23 06:41:39',NULL,NULL),
	(15,'9304a72a-9b2e-4707-8bf5-027fd76c694c',1,'Make Appointment','App\\Models\\Maid',74,'App\\Models\\Maid',74,'App\\Models\\Maid',74,'a:1:{s:10:\"started_at\";s:19:\"2021-03-30 04:00:00\";}','finished','','2021-03-23 06:45:37','2021-03-23 06:45:37',NULL,NULL),
	(16,'9304ae85-7b8a-4bc5-9467-342cc6130125',1,'Create','Spatie\\Permission\\Models\\Permission',1,'Spatie\\Permission\\Models\\Permission',1,'Spatie\\Permission\\Models\\Permission',1,'','finished','','2021-03-23 07:06:11','2021-03-23 07:06:11',NULL,'{\"guard_name\":\"admin\",\"name\":\"Edit Maid\",\"updated_at\":\"2021-03-23T07:06:11.000000Z\",\"created_at\":\"2021-03-23T07:06:11.000000Z\",\"id\":1}'),
	(17,'9304aeb4-6160-4aa7-9823-ca87b5c98d76',1,'Create','Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'','finished','','2021-03-23 07:06:42','2021-03-23 07:06:42',NULL,'{\"guard_name\":\"admin\",\"name\":\"\\u7ba1\\u7406\\u54e1\",\"updated_at\":\"2021-03-23T07:06:42.000000Z\",\"created_at\":\"2021-03-23T07:06:42.000000Z\",\"id\":1}'),
	(18,'9304aed5-2150-4b05-bd06-2466961423c3',1,'Update','Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'','finished','','2021-03-23 07:07:03','2021-03-23 07:07:03','{\"name\":\"\\u7ba1\\u7406\\u54e1\"}','{\"name\":\"\\u54e1\\u5de5\"}'),
	(19,'9304b278-485e-4902-a62a-0141140567ef',1,'Create','Spatie\\Permission\\Models\\Permission',2,'Spatie\\Permission\\Models\\Permission',2,'Spatie\\Permission\\Models\\Permission',2,'','finished','','2021-03-23 07:17:13','2021-03-23 07:17:13',NULL,'{\"guard_name\":\"admin\",\"name\":\"View Maid\",\"updated_at\":\"2021-03-23T07:17:13.000000Z\",\"created_at\":\"2021-03-23T07:17:13.000000Z\",\"id\":2}'),
	(20,'9304b290-d167-4fba-b49e-6c25e77f3f4a',1,'Create','Spatie\\Permission\\Models\\Permission',3,'Spatie\\Permission\\Models\\Permission',3,'Spatie\\Permission\\Models\\Permission',3,'','finished','','2021-03-23 07:17:29','2021-03-23 07:17:29',NULL,'{\"guard_name\":\"admin\",\"name\":\"Deleted Maid\",\"updated_at\":\"2021-03-23T07:17:29.000000Z\",\"created_at\":\"2021-03-23T07:17:29.000000Z\",\"id\":3}'),
	(21,'9304b2bb-9d1e-4da9-b90e-e7bca55d0c5c',1,'Create','Spatie\\Permission\\Models\\Permission',4,'Spatie\\Permission\\Models\\Permission',4,'Spatie\\Permission\\Models\\Permission',4,'','finished','','2021-03-23 07:17:57','2021-03-23 07:17:57',NULL,'{\"guard_name\":\"admin\",\"name\":\"Edit Interview\",\"updated_at\":\"2021-03-23T07:17:57.000000Z\",\"created_at\":\"2021-03-23T07:17:57.000000Z\",\"id\":4}'),
	(22,'9304b2c9-3e00-4e01-b921-6b7132cead69',1,'Create','Spatie\\Permission\\Models\\Permission',5,'Spatie\\Permission\\Models\\Permission',5,'Spatie\\Permission\\Models\\Permission',5,'','finished','','2021-03-23 07:18:06','2021-03-23 07:18:06',NULL,'{\"guard_name\":\"admin\",\"name\":\"View Interview\",\"updated_at\":\"2021-03-23T07:18:06.000000Z\",\"created_at\":\"2021-03-23T07:18:06.000000Z\",\"id\":5}'),
	(23,'9304b2df-0b67-478e-8eb2-041f44500bb0',1,'Create','Spatie\\Permission\\Models\\Permission',6,'Spatie\\Permission\\Models\\Permission',6,'Spatie\\Permission\\Models\\Permission',6,'','finished','','2021-03-23 07:18:21','2021-03-23 07:18:21',NULL,'{\"guard_name\":\"admin\",\"name\":\"Delete Interview\",\"updated_at\":\"2021-03-23T07:18:21.000000Z\",\"created_at\":\"2021-03-23T07:18:21.000000Z\",\"id\":6}'),
	(24,'9304b3cc-c4e0-480e-b674-2341b776a422',1,'Update','Spatie\\Permission\\Models\\Permission',3,'Spatie\\Permission\\Models\\Permission',3,'Spatie\\Permission\\Models\\Permission',3,'','finished','','2021-03-23 07:20:56','2021-03-23 07:20:56','{\"name\":\"Deleted Maid\"}','{\"name\":\"Delete Maid\"}'),
	(25,'9304b3fb-3dac-4580-8bfa-e370472cd943',1,'Create','Spatie\\Permission\\Models\\Permission',7,'Spatie\\Permission\\Models\\Permission',7,'Spatie\\Permission\\Models\\Permission',7,'','finished','','2021-03-23 07:21:27','2021-03-23 07:21:27',NULL,'{\"guard_name\":\"admin\",\"name\":\"View Admin\",\"updated_at\":\"2021-03-23T07:21:27.000000Z\",\"created_at\":\"2021-03-23T07:21:27.000000Z\",\"id\":7}'),
	(26,'9304b407-8452-40d1-ae8e-348814dbdf20',1,'Create','Spatie\\Permission\\Models\\Permission',8,'Spatie\\Permission\\Models\\Permission',8,'Spatie\\Permission\\Models\\Permission',8,'','finished','','2021-03-23 07:21:35','2021-03-23 07:21:35',NULL,'{\"guard_name\":\"admin\",\"name\":\"Edit Admin\",\"updated_at\":\"2021-03-23T07:21:35.000000Z\",\"created_at\":\"2021-03-23T07:21:35.000000Z\",\"id\":8}'),
	(27,'9304b415-7c1e-4549-b05b-434d328e58e2',1,'Create','Spatie\\Permission\\Models\\Permission',9,'Spatie\\Permission\\Models\\Permission',9,'Spatie\\Permission\\Models\\Permission',9,'','finished','','2021-03-23 07:21:44','2021-03-23 07:21:44',NULL,'{\"guard_name\":\"admin\",\"name\":\"Delete Admin\",\"updated_at\":\"2021-03-23T07:21:44.000000Z\",\"created_at\":\"2021-03-23T07:21:44.000000Z\",\"id\":9}'),
	(28,'9304b428-10a3-44bb-a5dc-4f5d9077b227',1,'Create','Spatie\\Permission\\Models\\Permission',10,'Spatie\\Permission\\Models\\Permission',10,'Spatie\\Permission\\Models\\Permission',10,'','finished','','2021-03-23 07:21:56','2021-03-23 07:21:56',NULL,'{\"guard_name\":\"admin\",\"name\":\"View Role\",\"updated_at\":\"2021-03-23T07:21:56.000000Z\",\"created_at\":\"2021-03-23T07:21:56.000000Z\",\"id\":10}'),
	(29,'9304b459-aac2-44cd-9fa8-8cbf3f383433',1,'Create','Spatie\\Permission\\Models\\Permission',11,'Spatie\\Permission\\Models\\Permission',11,'Spatie\\Permission\\Models\\Permission',11,'','finished','','2021-03-23 07:22:29','2021-03-23 07:22:29',NULL,'{\"guard_name\":\"admin\",\"name\":\"Edit Role\",\"updated_at\":\"2021-03-23T07:22:29.000000Z\",\"created_at\":\"2021-03-23T07:22:29.000000Z\",\"id\":11}'),
	(30,'9304b467-6af3-4be0-9eee-53704aabc6e8',1,'Create','Spatie\\Permission\\Models\\Permission',12,'Spatie\\Permission\\Models\\Permission',12,'Spatie\\Permission\\Models\\Permission',12,'','finished','','2021-03-23 07:22:38','2021-03-23 07:22:38',NULL,'{\"guard_name\":\"admin\",\"name\":\"Delete Role\",\"updated_at\":\"2021-03-23T07:22:38.000000Z\",\"created_at\":\"2021-03-23T07:22:38.000000Z\",\"id\":12}'),
	(31,'9304b474-978b-4460-a079-a38156334ce2',1,'Create','Spatie\\Permission\\Models\\Permission',13,'Spatie\\Permission\\Models\\Permission',13,'Spatie\\Permission\\Models\\Permission',13,'','finished','','2021-03-23 07:22:46','2021-03-23 07:22:46',NULL,'{\"guard_name\":\"admin\",\"name\":\"View permission\",\"updated_at\":\"2021-03-23T07:22:46.000000Z\",\"created_at\":\"2021-03-23T07:22:46.000000Z\",\"id\":13}'),
	(32,'9304b487-ade2-46f6-98fe-ee3108619abf',1,'Create','Spatie\\Permission\\Models\\Permission',14,'Spatie\\Permission\\Models\\Permission',14,'Spatie\\Permission\\Models\\Permission',14,'','finished','','2021-03-23 07:22:59','2021-03-23 07:22:59',NULL,'{\"guard_name\":\"admin\",\"name\":\"Edit Permission\",\"updated_at\":\"2021-03-23T07:22:59.000000Z\",\"created_at\":\"2021-03-23T07:22:59.000000Z\",\"id\":14}'),
	(33,'9304b494-567f-431d-bcfb-bb9302f2377c',1,'Create','Spatie\\Permission\\Models\\Permission',15,'Spatie\\Permission\\Models\\Permission',15,'Spatie\\Permission\\Models\\Permission',15,'','finished','','2021-03-23 07:23:07','2021-03-23 07:23:07',NULL,'{\"guard_name\":\"admin\",\"name\":\"Delete Permission\",\"updated_at\":\"2021-03-23T07:23:07.000000Z\",\"created_at\":\"2021-03-23T07:23:07.000000Z\",\"id\":15}'),
	(34,'9304b4a0-2bb6-4c80-84d6-65c312ea628e',1,'Create','Spatie\\Permission\\Models\\Permission',16,'Spatie\\Permission\\Models\\Permission',16,'Spatie\\Permission\\Models\\Permission',16,'','finished','','2021-03-23 07:23:15','2021-03-23 07:23:15',NULL,'{\"guard_name\":\"admin\",\"name\":\"View Log\",\"updated_at\":\"2021-03-23T07:23:15.000000Z\",\"created_at\":\"2021-03-23T07:23:15.000000Z\",\"id\":16}'),
	(35,'9304b4ad-bfab-48d6-ae51-cffacf962e36',1,'Create','Spatie\\Permission\\Models\\Permission',17,'Spatie\\Permission\\Models\\Permission',17,'Spatie\\Permission\\Models\\Permission',17,'','finished','','2021-03-23 07:23:24','2021-03-23 07:23:24',NULL,'{\"guard_name\":\"admin\",\"name\":\"View Backup\",\"updated_at\":\"2021-03-23T07:23:24.000000Z\",\"created_at\":\"2021-03-23T07:23:24.000000Z\",\"id\":17}'),
	(36,'9304b4e4-8aa9-4d35-81ae-8b76dc7f0b6a',1,'Update','Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'','finished','','2021-03-23 07:24:00','2021-03-23 07:24:00','{\"name\":\"\\u54e1\\u5de5\"}','{\"name\":\"SuperAdmin\"}'),
	(37,'9304b52e-fa84-4dec-ab8c-16fab190bc3a',1,'Create','Spatie\\Permission\\Models\\Role',2,'Spatie\\Permission\\Models\\Role',2,'Spatie\\Permission\\Models\\Role',2,'','finished','','2021-03-23 07:24:49','2021-03-23 07:24:49',NULL,'{\"guard_name\":\"admin\",\"name\":\"Admin\",\"updated_at\":\"2021-03-23T07:24:48.000000Z\",\"created_at\":\"2021-03-23T07:24:48.000000Z\",\"id\":2}'),
	(38,'9304b54c-6f6a-4dfb-990b-bdc4cea2c39e',1,'Create','Spatie\\Permission\\Models\\Role',3,'Spatie\\Permission\\Models\\Role',3,'Spatie\\Permission\\Models\\Role',3,'','finished','','2021-03-23 07:25:08','2021-03-23 07:25:08',NULL,'{\"guard_name\":\"admin\",\"name\":\"Staff\",\"updated_at\":\"2021-03-23T07:25:08.000000Z\",\"created_at\":\"2021-03-23T07:25:08.000000Z\",\"id\":3}'),
	(39,'93068124-7f15-40a8-8eab-bc220c392b54',1,'Create','Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'','finished','','2021-03-24 04:50:57','2021-03-24 04:50:57',NULL,'{\"guard_name\":\"user\",\"name\":\"SuperAdmin\",\"updated_at\":\"2021-03-24T04:50:57.000000Z\",\"created_at\":\"2021-03-24T04:50:57.000000Z\",\"id\":1}'),
	(40,'9306812f-3445-41ac-9d85-892686d531ac',1,'Create','Spatie\\Permission\\Models\\Role',2,'Spatie\\Permission\\Models\\Role',2,'Spatie\\Permission\\Models\\Role',2,'','finished','','2021-03-24 04:51:04','2021-03-24 04:51:04',NULL,'{\"guard_name\":\"user\",\"name\":\"Admin\",\"updated_at\":\"2021-03-24T04:51:04.000000Z\",\"created_at\":\"2021-03-24T04:51:04.000000Z\",\"id\":2}'),
	(41,'9306813c-e407-4278-b749-fd0cc0214f9b',1,'Create','Spatie\\Permission\\Models\\Role',3,'Spatie\\Permission\\Models\\Role',3,'Spatie\\Permission\\Models\\Role',3,'','finished','','2021-03-24 04:51:13','2021-03-24 04:51:13',NULL,'{\"guard_name\":\"user\",\"name\":\"Staff\",\"updated_at\":\"2021-03-24T04:51:13.000000Z\",\"created_at\":\"2021-03-24T04:51:13.000000Z\",\"id\":3}'),
	(42,'9306814b-8c6a-4b4f-ba76-6d9b2ced4ada',1,'Create','Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'','finished','','2021-03-24 04:51:23','2021-03-24 04:51:23',NULL,'{\"guard_name\":\"user\",\"name\":\"User\",\"updated_at\":\"2021-03-24T04:51:22.000000Z\",\"created_at\":\"2021-03-24T04:51:22.000000Z\",\"id\":4}'),
	(43,'930681c2-3341-496b-bc84-40132d074d7e',1,'Attach','Spatie\\Permission\\Models\\Role',1,'App\\Models\\User',1,'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot',NULL,'','finished','','2021-03-24 04:52:40','2021-03-24 04:52:40',NULL,'{\"role_id\":\"1\",\"model_id\":\"1\",\"model_type\":\"App\\\\Models\\\\User\"}'),
	(44,'9306832b-cb15-45bc-b5d3-5782ae92adbb',1,'Update','Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'Spatie\\Permission\\Models\\Role',1,'','finished','','2021-03-24 04:56:37','2021-03-24 04:56:37','{\"name\":\"SuperAdmin\"}','{\"name\":\"Super Admin\"}'),
	(45,'93068590-5686-46da-901f-569708f3e845',1,'Attach','App\\Models\\User',2,'Spatie\\Permission\\Models\\Role',2,'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot',NULL,'','finished','','2021-03-24 05:03:19','2021-03-24 05:03:19',NULL,'{\"model_id\":\"2\",\"role_id\":\"2\",\"model_type\":\"App\\\\Models\\\\User\"}'),
	(46,'9306869f-5b13-4a4a-8001-3eae70c1f6b4',1,'Attach','App\\Models\\User',3,'Spatie\\Permission\\Models\\Role',4,'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot',NULL,'','finished','','2021-03-24 05:06:16','2021-03-24 05:06:16',NULL,'{\"model_id\":\"3\",\"role_id\":\"4\",\"model_type\":\"App\\\\Models\\\\User\"}'),
	(47,'9306d46d-5e36-41e6-bfa4-8cf42c45f0e9',1,'Attach','App\\Models\\User',1,'Spatie\\Permission\\Models\\Role',2,'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot',NULL,'','finished','','2021-03-24 08:43:50','2021-03-24 08:43:50',NULL,'{\"model_id\":\"1\",\"role_id\":\"2\",\"model_type\":\"App\\\\Models\\\\User\"}'),
	(48,'9306e68d-74bc-4a03-bf64-10994edf5920',1,'Create','Spatie\\Permission\\Models\\Permission',1,'Spatie\\Permission\\Models\\Permission',1,'Spatie\\Permission\\Models\\Permission',1,'','finished','','2021-03-24 09:34:31','2021-03-24 09:34:31',NULL,'{\"guard_name\":\"user\",\"name\":\"view maids\",\"updated_at\":\"2021-03-24T09:34:31.000000Z\",\"created_at\":\"2021-03-24T09:34:31.000000Z\",\"id\":1}'),
	(49,'9306e69b-246d-4aa9-959a-8b8c86b3e608',1,'Create','Spatie\\Permission\\Models\\Permission',2,'Spatie\\Permission\\Models\\Permission',2,'Spatie\\Permission\\Models\\Permission',2,'','finished','','2021-03-24 09:34:40','2021-03-24 09:34:40',NULL,'{\"guard_name\":\"user\",\"name\":\"create maids\",\"updated_at\":\"2021-03-24T09:34:40.000000Z\",\"created_at\":\"2021-03-24T09:34:40.000000Z\",\"id\":2}'),
	(50,'9306e6a6-fe1b-4f64-9cd6-b4b353542a69',1,'Create','Spatie\\Permission\\Models\\Permission',3,'Spatie\\Permission\\Models\\Permission',3,'Spatie\\Permission\\Models\\Permission',3,'','finished','','2021-03-24 09:34:47','2021-03-24 09:34:47',NULL,'{\"guard_name\":\"user\",\"name\":\"edit maids\",\"updated_at\":\"2021-03-24T09:34:47.000000Z\",\"created_at\":\"2021-03-24T09:34:47.000000Z\",\"id\":3}'),
	(51,'9306e6b1-5f8b-46ba-ae8e-9ebef93dd813',1,'Create','Spatie\\Permission\\Models\\Permission',4,'Spatie\\Permission\\Models\\Permission',4,'Spatie\\Permission\\Models\\Permission',4,'','finished','','2021-03-24 09:34:54','2021-03-24 09:34:54',NULL,'{\"guard_name\":\"user\",\"name\":\"delete maids\",\"updated_at\":\"2021-03-24T09:34:54.000000Z\",\"created_at\":\"2021-03-24T09:34:54.000000Z\",\"id\":4}'),
	(52,'9306e6b9-c9be-4c21-b05a-e498df02b89e',1,'Create','Spatie\\Permission\\Models\\Permission',5,'Spatie\\Permission\\Models\\Permission',5,'Spatie\\Permission\\Models\\Permission',5,'','finished','','2021-03-24 09:35:00','2021-03-24 09:35:00',NULL,'{\"guard_name\":\"user\",\"name\":\"restore maids\",\"updated_at\":\"2021-03-24T09:35:00.000000Z\",\"created_at\":\"2021-03-24T09:35:00.000000Z\",\"id\":5}'),
	(53,'9306e6c2-f9f5-4c7c-bb5b-d2c5b5fab400',1,'Create','Spatie\\Permission\\Models\\Permission',6,'Spatie\\Permission\\Models\\Permission',6,'Spatie\\Permission\\Models\\Permission',6,'','finished','','2021-03-24 09:35:06','2021-03-24 09:35:06',NULL,'{\"guard_name\":\"user\",\"name\":\"force delete maids\",\"updated_at\":\"2021-03-24T09:35:06.000000Z\",\"created_at\":\"2021-03-24T09:35:06.000000Z\",\"id\":6}'),
	(54,'9306e6da-d29f-4567-a7a9-289ff8c467be',1,'Update','Spatie\\Permission\\Models\\Permission',2,'Spatie\\Permission\\Models\\Permission',2,'Spatie\\Permission\\Models\\Permission',2,'','finished','','2021-03-24 09:35:21','2021-03-24 09:35:21','[]','[]'),
	(55,'9306e6ee-bf82-4059-abd0-9a0b7d169772',1,'Update','Spatie\\Permission\\Models\\Permission',3,'Spatie\\Permission\\Models\\Permission',3,'Spatie\\Permission\\Models\\Permission',3,'','finished','','2021-03-24 09:35:34','2021-03-24 09:35:34','[]','[]'),
	(56,'9308bdce-13f8-4273-897c-ed1424639916',1,'Create','Spatie\\Permission\\Models\\Permission',7,'Spatie\\Permission\\Models\\Permission',7,'Spatie\\Permission\\Models\\Permission',7,'','finished','','2021-03-25 07:32:14','2021-03-25 07:32:14',NULL,'{\"guard_name\":\"user\",\"name\":\"view users\",\"updated_at\":\"2021-03-25T07:32:13.000000Z\",\"created_at\":\"2021-03-25T07:32:13.000000Z\",\"id\":7}'),
	(57,'9308bddd-7379-49ae-a870-8c8dfacff764',1,'Create','Spatie\\Permission\\Models\\Permission',8,'Spatie\\Permission\\Models\\Permission',8,'Spatie\\Permission\\Models\\Permission',8,'','finished','','2021-03-25 07:32:24','2021-03-25 07:32:24',NULL,'{\"guard_name\":\"user\",\"name\":\"create users\",\"updated_at\":\"2021-03-25T07:32:24.000000Z\",\"created_at\":\"2021-03-25T07:32:24.000000Z\",\"id\":8}'),
	(58,'9308bdf0-624d-4bf6-802d-0e2af71cb214',1,'Create','Spatie\\Permission\\Models\\Permission',9,'Spatie\\Permission\\Models\\Permission',9,'Spatie\\Permission\\Models\\Permission',9,'','finished','','2021-03-25 07:32:36','2021-03-25 07:32:36',NULL,'{\"guard_name\":\"user\",\"name\":\"edit users\",\"updated_at\":\"2021-03-25T07:32:36.000000Z\",\"created_at\":\"2021-03-25T07:32:36.000000Z\",\"id\":9}'),
	(59,'9308be00-4d5b-4c8e-bd2b-2bb7549986f4',1,'Create','Spatie\\Permission\\Models\\Permission',10,'Spatie\\Permission\\Models\\Permission',10,'Spatie\\Permission\\Models\\Permission',10,'','finished','','2021-03-25 07:32:47','2021-03-25 07:32:47',NULL,'{\"guard_name\":\"user\",\"name\":\"delete users\",\"updated_at\":\"2021-03-25T07:32:46.000000Z\",\"created_at\":\"2021-03-25T07:32:46.000000Z\",\"id\":10}'),
	(60,'9308be0f-9a9c-4523-a7a6-fa20d5cc86ef',1,'Create','Spatie\\Permission\\Models\\Permission',11,'Spatie\\Permission\\Models\\Permission',11,'Spatie\\Permission\\Models\\Permission',11,'','finished','','2021-03-25 07:32:57','2021-03-25 07:32:57',NULL,'{\"guard_name\":\"user\",\"name\":\"restore users\",\"updated_at\":\"2021-03-25T07:32:57.000000Z\",\"created_at\":\"2021-03-25T07:32:57.000000Z\",\"id\":11}'),
	(61,'9308be1e-eafd-4a7c-8907-73492b7c2148',1,'Create','Spatie\\Permission\\Models\\Permission',12,'Spatie\\Permission\\Models\\Permission',12,'Spatie\\Permission\\Models\\Permission',12,'','finished','','2021-03-25 07:33:07','2021-03-25 07:33:07',NULL,'{\"guard_name\":\"user\",\"name\":\"force delete users\",\"updated_at\":\"2021-03-25T07:33:07.000000Z\",\"created_at\":\"2021-03-25T07:33:07.000000Z\",\"id\":12}'),
	(62,'9308be4d-fd3b-4592-a5c4-7637bd8363ea',1,'Create','Spatie\\Permission\\Models\\Permission',13,'Spatie\\Permission\\Models\\Permission',13,'Spatie\\Permission\\Models\\Permission',13,'','finished','','2021-03-25 07:33:38','2021-03-25 07:33:38',NULL,'{\"guard_name\":\"user\",\"name\":\"view interview\",\"updated_at\":\"2021-03-25T07:33:37.000000Z\",\"created_at\":\"2021-03-25T07:33:37.000000Z\",\"id\":13}'),
	(63,'9308be61-4088-4276-895d-c51752ffe235',1,'Create','Spatie\\Permission\\Models\\Permission',14,'Spatie\\Permission\\Models\\Permission',14,'Spatie\\Permission\\Models\\Permission',14,'','finished','','2021-03-25 07:33:50','2021-03-25 07:33:50',NULL,'{\"guard_name\":\"user\",\"name\":\"create interview\",\"updated_at\":\"2021-03-25T07:33:50.000000Z\",\"created_at\":\"2021-03-25T07:33:50.000000Z\",\"id\":14}'),
	(64,'9308be73-ca87-44fe-a8a6-5192d7d512d5',1,'Create','Spatie\\Permission\\Models\\Permission',15,'Spatie\\Permission\\Models\\Permission',15,'Spatie\\Permission\\Models\\Permission',15,'','finished','','2021-03-25 07:34:02','2021-03-25 07:34:02',NULL,'{\"guard_name\":\"user\",\"name\":\"edit interview\",\"updated_at\":\"2021-03-25T07:34:02.000000Z\",\"created_at\":\"2021-03-25T07:34:02.000000Z\",\"id\":15}'),
	(65,'9308be8d-14f5-4f25-8eba-0002f8b613ee',1,'Create','Spatie\\Permission\\Models\\Permission',16,'Spatie\\Permission\\Models\\Permission',16,'Spatie\\Permission\\Models\\Permission',16,'','finished','','2021-03-25 07:34:19','2021-03-25 07:34:19',NULL,'{\"guard_name\":\"user\",\"name\":\"delete interview\",\"updated_at\":\"2021-03-25T07:34:19.000000Z\",\"created_at\":\"2021-03-25T07:34:19.000000Z\",\"id\":16}'),
	(66,'9308be9f-651d-4c1f-9df1-b25e8f14322c',1,'Create','Spatie\\Permission\\Models\\Permission',17,'Spatie\\Permission\\Models\\Permission',17,'Spatie\\Permission\\Models\\Permission',17,'','finished','','2021-03-25 07:34:31','2021-03-25 07:34:31',NULL,'{\"guard_name\":\"user\",\"name\":\"restore interview\",\"updated_at\":\"2021-03-25T07:34:31.000000Z\",\"created_at\":\"2021-03-25T07:34:31.000000Z\",\"id\":17}'),
	(67,'9308bead-7ff1-4b9c-8b5b-00f57941810f',1,'Create','Spatie\\Permission\\Models\\Permission',18,'Spatie\\Permission\\Models\\Permission',18,'Spatie\\Permission\\Models\\Permission',18,'','finished','','2021-03-25 07:34:40','2021-03-25 07:34:40',NULL,'{\"guard_name\":\"user\",\"name\":\"force delete interview\",\"updated_at\":\"2021-03-25T07:34:40.000000Z\",\"created_at\":\"2021-03-25T07:34:40.000000Z\",\"id\":18}'),
	(68,'9308c31f-b2b0-40a7-8a19-d6804a98e235',1,'Attach','App\\Models\\User',2,'Spatie\\Permission\\Models\\Role',3,'Illuminate\\Database\\Eloquent\\Relations\\MorphPivot',NULL,'','finished','','2021-03-25 07:47:06','2021-03-25 07:47:06',NULL,'{\"model_id\":\"2\",\"role_id\":\"3\",\"model_type\":\"App\\\\Models\\\\User\"}'),
	(69,'9308c41c-fe36-4216-b56f-7eeb1e419b16',1,'Update','Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'','finished','','2021-03-25 07:49:52','2021-03-25 07:49:52','[]','[]'),
	(70,'9308c6d2-3016-493e-9566-0040c5084cec',1,'Update','Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'','finished','','2021-03-25 07:57:26','2021-03-25 07:57:26','[]','[]'),
	(71,'9308c748-a808-4d62-b26c-60faf87c31dc',4,'Create','App\\Models\\Interview',7,'App\\Models\\Interview',7,'App\\Models\\Interview',7,'','finished','','2021-03-25 07:58:44','2021-03-25 07:58:44',NULL,'{\"started_at\":\"2021-04-01T04:00:00.000000Z\",\"maid_id\":74,\"status\":\"pending\",\"remark\":\"testing\",\"updated_at\":\"2021-03-25T07:58:44.000000Z\",\"created_at\":\"2021-03-25T07:58:44.000000Z\",\"id\":7}'),
	(72,'9308c8b1-abed-4ee7-8797-f379d54ddcba',1,'Update','Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'','finished','','2021-03-25 08:02:41','2021-03-25 08:02:41','[]','[]'),
	(73,'9308c8bf-ddad-4fb7-8a4d-f04aabe0ae17',4,'預約面試','App\\Models\\Maid',75,'App\\Models\\Maid',75,'App\\Models\\Maid',75,'a:2:{s:10:\"started_at\";s:19:\"2021-03-25 04:00:00\";s:6:\"remark\";s:6:\"123123\";}','finished','','2021-03-25 08:02:50','2021-03-25 08:02:50',NULL,NULL),
	(74,'9308ceed-2b3e-4ad7-bc7a-b76282820c55',1,'Update','Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'','finished','','2021-03-25 08:20:06','2021-03-25 08:20:06','[]','[]'),
	(75,'9308cf33-69bf-464d-9f52-d06d76751e8a',1,'Update','Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'','finished','','2021-03-25 08:20:52','2021-03-25 08:20:52','[]','[]'),
	(76,'9308cf42-a5a5-4d5f-8ed3-5c8aaa0de1e4',4,'預約面試','App\\Models\\Maid',75,'App\\Models\\Maid',75,'App\\Models\\Maid',75,'a:2:{s:10:\"started_at\";s:19:\"2021-04-01 04:00:00\";s:6:\"remark\";s:6:\"asdasd\";}','finished','','2021-03-25 08:21:03','2021-03-25 08:21:03',NULL,NULL),
	(77,'9308cfa1-f77d-4ab1-95e7-2cbce68fd00d',1,'Update','Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'Spatie\\Permission\\Models\\Role',4,'','finished','','2021-03-25 08:22:05','2021-03-25 08:22:05','[]','[]'),
	(78,'9308d24b-636d-4ceb-9084-c37cda1771bc',4,'預約面試','App\\Models\\Maid',75,'App\\Models\\Maid',75,'App\\Models\\Maid',75,'a:2:{s:10:\"started_at\";s:19:\"2021-04-03 04:00:00\";s:6:\"remark\";s:3:\"asd\";}','finished','','2021-03-25 08:29:31','2021-03-25 08:29:32',NULL,NULL),
	(79,'9308d24b-636d-4ceb-9084-c37cda1771bc',4,'預約面試','App\\Models\\Maid',74,'App\\Models\\Maid',74,'App\\Models\\Maid',74,'a:2:{s:10:\"started_at\";s:19:\"2021-04-03 04:00:00\";s:6:\"remark\";s:3:\"asd\";}','finished','','2021-03-25 08:29:32','2021-03-25 08:29:32',NULL,NULL);

/*!40000 ALTER TABLE `action_events` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table interviews
# ------------------------------------------------------------

DROP TABLE IF EXISTS `interviews`;

CREATE TABLE `interviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maid_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `started_at` datetime DEFAULT NULL,
  `ended_at` datetime DEFAULT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;

INSERT INTO `interviews` (`id`, `name`, `maid_id`, `admin_id`, `user_id`, `status`, `created_at`, `updated_at`, `started_at`, `ended_at`, `remark`, `deleted_at`)
VALUES
	(1,NULL,8,2,6,'pending','2021-03-23 04:06:18','2021-03-23 04:06:18','2021-03-26 04:00:00',NULL,'Testing',NULL),
	(2,NULL,75,2,23,'pending','2021-03-23 06:33:29','2021-03-23 06:33:29','2021-03-25 04:00:00',NULL,NULL,NULL),
	(3,NULL,75,3,8,'pending','2021-03-23 06:37:04','2021-03-23 06:37:04','2021-03-31 04:00:00',NULL,NULL,NULL),
	(4,NULL,74,2,16,'confirmed','2021-03-23 06:37:04','2021-03-23 06:37:04','2021-03-31 04:00:00',NULL,NULL,NULL),
	(5,NULL,75,3,10,'pending','2021-03-23 06:41:39','2021-03-23 06:41:39','2021-04-07 04:00:00',NULL,NULL,NULL),
	(6,NULL,74,3,11,'pending','2021-03-23 06:45:37','2021-03-23 06:45:37','2021-03-30 04:00:00',NULL,NULL,NULL),
	(7,NULL,74,NULL,11,'pending','2021-03-25 07:58:44','2021-03-25 07:58:44','2021-04-01 04:00:00',NULL,'testing',NULL),
	(8,NULL,75,NULL,4,'pending','2021-03-25 08:02:50','2021-03-25 08:02:50','2021-03-25 04:00:00',NULL,'123123',NULL),
	(9,NULL,75,NULL,4,'pending','2021-03-25 08:21:03','2021-03-25 08:21:03','2021-04-01 04:00:00',NULL,'asdasd',NULL),
	(10,NULL,75,NULL,4,'pending','2021-03-25 08:29:32','2021-03-25 08:29:32','2021-04-03 04:00:00',NULL,'asd',NULL),
	(11,NULL,74,NULL,4,'pending','2021-03-25 08:29:32','2021-03-25 08:29:32','2021-04-03 04:00:00',NULL,'asd',NULL);

/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table maids
# ------------------------------------------------------------

DROP TABLE IF EXISTS `maids`;

CREATE TABLE `maids` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bio_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unemployed` tinyint(1) NOT NULL,
  `cfm_date` date NOT NULL,
  `employer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `medical_date` date NOT NULL,
  `medical_result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passport_expired` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jo_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jo_rcv_date` date NOT NULL,
  `jo_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mofa_rcv_date` date NOT NULL,
  `mofa_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visa_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visa_out` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jpl_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_date` datetime NOT NULL,
  `flight_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flight_eta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `height` double(8,2) NOT NULL,
  `weight` double(8,2) NOT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eat_pig` tinyint(1) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` json DEFAULT NULL,
  `remark` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `maids_bio_no_unique` (`bio_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `maids` WRITE;
/*!40000 ALTER TABLE `maids` DISABLE KEYS */;

INSERT INTO `maids` (`id`, `bio_no`, `name`, `jobs`, `unemployed`, `cfm_date`, `employer_name`, `medical_date`, `medical_result`, `passport_no`, `passport_expired`, `jo_type`, `jo_rcv_date`, `jo_no`, `mofa_rcv_date`, `mofa_no`, `visa_in`, `visa_out`, `jpl_date`, `flight_date`, `flight_no`, `flight_eta`, `marital_status`, `address`, `dob`, `gender`, `age`, `height`, `weight`, `religion`, `eat_pig`, `status`, `tags`, `remark`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(1,'chantal.mthombeni','lesego Lewis','informal',1,'2010-05-08','Kobus Pillay','1974-09-27','','2611097201091','1991-12-23 20:37:51','other','2010-01-26','40283','2019-07-06','95058','2021-02-14 00:57:01','2023-03-24 00:16:56','1970-01-01 00:38:18','1993-03-18 02:26:32','KMGUAQ1Q3US','1975-11-15 03:25:16','widowed','1212 Barnard Summit\nNorth To chester, AZ 54419','1983-01-20 10:27:42','female',38,160.00,173.00,'christianity',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(2,'raymond.murray','Refiloe Opperman','factory',1,'2010-10-04','lesego Wolmarans','2005-09-02','','9510051719085','2006-10-15 12:56:40','other','2007-07-04','921','2010-08-11','740','2021-02-05 06:46:23','2023-03-26 16:49:20','1970-01-01 16:44:35','1986-12-09 20:21:28','UUEHODPLPGN','1987-08-04 22:45:08','widowed','1476 Kyle Ways\nEast Shaunville, ME 02983','2021-01-21 10:47:51','female',0,176.00,165.00,'judaism',1,'航程已被確定',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(3,'christiaan.mashigo','Your Africa','other',0,'2020-09-10','','1974-02-16','','6812110771088','1992-07-24 12:47:22','other','1974-02-13','725','1970-11-04','826','NULL','NULL','1970-01-01 02:10:59','2005-11-04 12:10:12','NBUDAUZC','1994-06-25 01:15:50','single','748 Ursula Prairie Apt. 829\nWest Charles, GA 23596-3204','1983-02-01 01:49:46','female',38,151.00,158.00,'buddhism',1,'已收合同但未有簽證者',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(4,'rmhlongo','Anthony Rossouw','factory',0,'1973-01-05','','1995-11-03','','2210217263089','2020-07-23 05:03:10','other','1975-12-04','85535','2013-04-10','439','NULL','NULL','1970-01-01 00:12:09','1991-08-06 12:10:39','CEQVZVXY','1994-09-13 20:12:32','separated','6735 Ngcobo Extensions Apt. 241\nNorth Heidiville, LA 09208-6390','1994-05-15 12:26:23','female',26,174.00,105.00,'hinduism',1,'直聘',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(5,'ntshangase.danie','Marius Pieterse','factory',1,'1987-06-20','unathi Mashele','1980-07-09','','8907137480081','2014-01-07 11:50:05','other','2013-10-06','121','2016-04-15','7542','2021-02-15 07:42:27','2023-03-26 08:21:44','1970-01-01 01:16:14','1996-05-12 13:59:27','AIJLHEJY0RP','1989-06-03 10:18:59','divorced','44810 John Valley\nWest Gracefurt, NY 39085-4921','1993-05-13 13:21:53','female',27,178.00,57.00,'buddhism',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(6,'your11','Jane Langa','factory',0,'1997-09-06','','1972-01-13','','7311224720080','1993-11-02 22:37:54','other','2002-11-20','11678','1992-11-28','66736','NULL','NULL','1970-01-01 11:32:58','1988-10-09 23:33:08','WFDMICZL','1976-09-29 00:23:24','separated','2800 Move Mountain Apt. 519\nDerekstad, WI 09059-6834','1977-04-23 12:29:19','female',43,151.00,127.00,'hinduism',0,'已收合同但未有簽證者',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(7,'lterblanche','Mrs. Sarah Esterhuizen','informal',1,'1990-12-04','Dr. Thembi Modise','1973-09-11','','1009164790099','1986-10-14 07:18:14','other','2010-08-24','16253','1996-04-25','941','2021-03-12 00:12:44','2023-03-25 22:08:24','1970-01-01 01:08:12','2013-09-29 12:32:46','SZJJBVLV','1972-02-26 12:26:11','single','33979 Mohale Streets\nLake Leigh, MS 84427','2019-02-09 23:43:01','female',2,168.00,122.00,'islam',1,'請確定航程',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(8,'kmohlala','Portia Fisher','construction',1,'2001-09-10','Kagiso Bell','1994-10-18','','2003205850094','1985-09-28 06:46:12','other','2011-08-28','91140','1992-10-26','97866','2021-01-04 03:33:47','2023-03-26 16:40:32','1970-01-01 06:42:46','1999-03-08 15:07:02','CMHOBCXC','2005-12-04 17:18:14','single','6926 Lee Mountains\nNew Nompumelelo, NJ 76931-2191','2004-09-22 08:42:36','female',16,161.00,149.00,'sikhism',1,'已收合同但未有簽證者',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(9,'nzungu','Juan Naude','construction',0,'1972-12-30','','2020-02-11','','6203159270085','1989-10-04 09:48:27','other','2010-04-22','288','1983-11-10','5997','NULL','NULL','1970-01-01 03:48:50','1998-09-20 19:35:20','QPUPUR39','2007-10-24 14:37:54','married','48985 Amanda Plains\nNew Yusufstad, MI 32364','1985-12-03 20:04:25','female',35,152.00,165.00,'sikhism',0,'請確定航程',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(10,'andile86','Mandla Potgieter','factory',0,'2002-11-29','','2016-07-11','','4807192988081','2017-07-07 15:14:51','other','1995-09-05','99063','1983-06-13','162','NULL','NULL','1970-01-01 00:06:31','2007-09-02 04:53:23','VXWTYNTHWDF','2005-08-02 02:44:48','widowed','3139 Danielle Greens Apt. 852\nTruterhaven, ID 33440-0095','2004-11-01 15:27:34','female',16,161.00,139.00,'sikhism',1,'機票在侯補單',NULL,NULL,'2021-03-22 07:21:24','2021-03-22 07:21:24',NULL),
	(11,'unathi52','Charl Gerber','factory',0,'2003-08-09','','2005-11-22','','4001268150095','2017-08-11 22:27:43','other','1990-12-19','92646','2016-05-25','8025','NULL','NULL','1970-01-01 06:39:32','2013-03-07 18:27:01','EBJRXPG4YUE','1991-02-25 10:41:32','married','84147 Shongwe Manor Suite 901\nMarleneside, KS 88271-6663','1977-01-06 23:30:39','female',44,161.00,59.00,'buddhism',0,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(12,'george.robinson','Beverley Mohamed','construction',1,'2008-09-26','Prof. Lindiwe Matlala','1991-04-22','','4611186897088','2020-03-22 20:43:03','other','2019-09-02','671','2005-05-02','474','2021-02-26 22:53:39','2023-03-26 22:57:06','1970-01-01 22:25:52','1978-04-23 10:40:27','XZWJQR77','1978-07-30 11:56:26','married','58098 Nhlanhla Ports\nMtsweniborough, NV 65467-4061','1973-06-30 22:43:53','female',47,162.00,134.00,'judaism',1,'航程已被確定',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(13,'donald.mkhize','Daniel Baker','factory',0,'2020-03-11','','1971-06-01','','8701096500090','2016-01-18 17:18:42','other','1982-03-12','16623','1997-06-11','814','NULL','NULL','1970-01-01 01:05:01','2001-01-26 14:55:49','WHAOPJ2C','2010-06-09 10:02:40','widowed','794 Gregory Center Suite 198\nZondiburgh, UT 30510','2007-04-19 01:16:12','female',13,152.00,144.00,'sikhism',0,'請確定航程',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(14,'ideklerk','next Theron','factory',0,'1992-01-25','','2015-06-22','','0409247166088','1971-06-24 10:00:10','other','2011-09-08','180','1984-10-21','74072','NULL','NULL','1970-01-01 00:49:55','1972-12-20 20:06:26','CKZAQPD8','1996-08-01 07:40:43','widowed','91369 Petersen Row\nDu Plooytown, CA 94920','1987-11-02 15:08:44','female',33,159.00,74.00,'christianity',1,'已收合同但未有簽證，有預訂機者',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(15,'nonkululeko76','Hon. Ivan De Villiers','factory',0,'2011-10-22','','1988-08-28','','5403073330095','1992-01-22 03:10:24','other','2014-08-06','7607','1999-12-11','5408','NULL','NULL','1970-01-01 14:14:12','2015-06-26 00:00:28','JALCHGFH','1975-06-09 07:30:18','divorced','3728 Edward Hill\nEmmanuelbury, MO 83177-5328','1994-10-27 14:24:17','female',26,162.00,170.00,'christianity',1,'已收合同但未有簽證，有預訂機者',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(16,'wvermaak','Nokuthula Phiri','construction',1,'1983-06-14','kabelo Nkomo','1983-02-14','','9506101747084','2003-03-12 09:22:25','other','2012-09-25','591','1973-08-15','6942','2021-02-02 11:09:04','2023-03-26 13:28:39','1970-01-01 02:44:11','1972-03-20 21:12:43','ZFBKKS5QBHT','2002-11-13 18:21:18','widowed','2436 Naidoo Mall\nJoubertfurt, AR 55244','1983-04-14 06:58:25','female',37,179.00,113.00,'islam',1,'機票在侯補單',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(17,'babalwa.stewart','Adele Greyling','construction',1,'1981-03-22','vuyokazi Rossouw','1998-05-17','','5104297520095','2010-09-22 00:14:12','other','2011-01-19','69008','1978-01-16','681','2021-01-11 12:57:44','2023-03-27 04:13:12','1970-01-01 00:07:26','1978-11-07 10:02:16','GPISEH9CLXX','2019-10-20 07:20:26','widowed','981 Tracey Corner\nEast Stephan, VA 81567-4700','2002-12-15 18:08:17','female',18,166.00,164.00,'hinduism',1,'機票在侯補單',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(18,'gugulethu54','Frederick Francis','informal',1,'2007-05-02','Rev. James Van Rensburg','1994-06-15','','1111192196081','1985-01-31 06:55:20','other','1997-02-28','4948','2014-07-05','8331','2021-01-30 01:51:53','2023-03-26 03:00:30','1970-01-01 01:18:27','1992-04-22 17:51:43','DFEUEOU5','1971-10-18 03:18:27','single','9645 Louw Burg Apt. 102\nMkhwanazibury, NV 45187','2000-09-15 06:25:22','female',20,170.00,105.00,'sikhism',1,'已收合同但未有簽證者',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(19,'juanita48','Rev. Nokuthula Esterhuizen','construction',1,'2006-11-15','Monica Morris','2020-12-17','','0502266244081','1993-03-06 02:48:25','other','1987-04-11','394','1999-10-22','66422','2021-02-02 10:09:50','2023-03-25 12:42:25','1970-01-01 00:05:09','1981-08-25 05:47:29','NCYMOYR9RA3','2007-11-18 11:09:59','single','4866 Linda Trace\nEast bulelwamouth, IL 22850-2485','2019-01-29 09:32:22','female',2,154.00,144.00,'islam',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(20,'mokwena.sifiso','Hon. kabelo Miya','other',0,'2009-09-10','','1996-11-13','','9608082270084','2002-04-02 18:30:07','other','1972-07-28','1795','1995-04-27','528','NULL','NULL','1970-01-01 00:09:26','2004-04-26 18:16:22','XSIMIFL6TMF','1983-05-08 14:40:27','single','8110 Ally Brook\nLake Sonja, LA 03689-3436','1976-04-02 04:50:42','female',44,165.00,60.00,'islam',1,'待聘女傭',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(21,'xkumalo','Angelique Van Eeden','factory',1,'1985-08-03','sello Truter','2007-11-25','','3010017702099','2009-07-05 17:19:27','other','1974-12-02','2640','1991-07-30','1326','2021-01-31 12:20:36','2023-03-24 22:13:16','1970-01-01 05:30:20','2005-07-30 05:08:52','HRAKIRGO','1987-10-27 14:11:39','married','1660 Mhlanga Trace\nLake Grahammouth, AR 86072-4977','2018-08-14 10:10:39','female',2,178.00,72.00,'sikhism',1,'航程已被確定',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(22,'berasmus','Sandile Hugo','other',1,'1970-12-15','Lindiwe Minnaar','1983-10-10','','2603177871091','2017-09-15 10:30:29','other','1993-06-14','72247','2007-12-04','552','2021-01-22 20:15:47','2023-03-23 05:11:50','1970-01-01 00:07:02','2000-06-12 01:37:59','FSNPPS8ERVU','1980-08-21 02:21:13','widowed','5566 Lee Centers\nPort Nhlanhla, IN 25773-6763','1995-12-10 10:10:48','female',25,169.00,93.00,'hinduism',0,'請確定航程',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(23,'grace31','Lawrence Meyer','nurse',1,'1980-10-01','Stuart Jansen van Rensburg','2019-01-01','','3508156261090','1995-06-21 08:44:32','other','2008-04-27','15861','1992-02-01','279','2021-02-14 06:24:22','2023-03-27 19:43:31','1970-01-01 00:15:57','1978-12-18 17:54:17','NFWGHN88','2002-12-10 02:40:55','separated','7653 Ross Pine\nNew Tracy, MT 79086-6667','1985-12-02 21:21:48','female',35,177.00,175.00,'judaism',1,'請確定航程',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(24,'justin.hoffman','Timothy Mostert','informal',0,'1972-08-21','','2007-02-05','','0403087842080','2015-08-18 01:49:55','other','1985-05-07','84352','2004-02-27','15061','NULL','NULL','1970-01-01 00:47:44','1971-11-02 00:00:47','SWBFVD57','1976-09-11 03:23:39','widowed','864 Pule Loop\nPort Kobus, VA 98813-9635','2014-02-19 15:47:23','female',7,176.00,157.00,'judaism',0,'已收合同但未有簽證者',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(25,'fmbele','Kagiso Steyn','informal',0,'1974-10-13','','1983-07-30','','1706058217093','1995-03-02 06:51:01','other','1990-10-13','16574','1976-07-12','6706','NULL','NULL','1970-01-01 19:22:13','2010-07-22 11:16:42','IGCJVNXH','2005-07-29 01:48:44','divorced','8576 Langa Curve Suite 750\nVilakaziville, CA 59252','2002-12-23 09:47:07','female',18,175.00,170.00,'hinduism',0,'機票在侯補單',NULL,NULL,'2021-03-23 03:39:02','2021-03-23 03:39:02',NULL),
	(26,'chantelle20','Fikile Hlongwane','informal',0,'1984-12-04','','1983-12-14','','2912215417084','1981-05-23 15:00:38','other','2001-06-06','34808','2001-07-10','2366','NULL','NULL','1970-01-01 03:43:38','2000-05-03 16:45:59','GDESXZ45','1992-06-28 07:51:17','widowed','46058 September Mill\nWest Siphokazi, HI 04730-6912','1977-06-28 11:05:41','female',43,170.00,127.00,'judaism',0,'航程已被確定',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(27,'lesego.mogale','Arnold Grobbelaar','informal',0,'1987-06-11','','2008-10-19','','7607180370087','1980-02-17 22:29:00','other','2002-04-04','12574','1971-11-15','7294','NULL','NULL','1970-01-01 02:31:42','2011-09-24 15:54:02','ZKFMFOAV','1988-12-21 01:35:20','single','231 Eugene Parkways\nSmitton, DE 85202-0328','1972-02-25 03:02:22','female',49,163.00,161.00,'hinduism',0,'請確定航程',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(28,'hendricks.yolandi','George Adams','construction',1,'1988-11-30','thulani Swart','1970-03-02','','4409135781085','1995-12-02 09:56:41','other','1986-01-07','51344','1977-03-12','46018','2021-03-02 14:05:55','2023-03-24 18:14:54','1970-01-01 00:13:47','1971-01-06 08:34:23','JREHDN9Q','1974-10-06 18:35:37','separated','210 Lindiwe Underpass Apt. 370\nMulderchester, KS 87208-0503','1976-11-25 12:42:05','female',44,159.00,152.00,'christianity',0,'直聘',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(29,'tumelo34','Brandon Mulder','factory',1,'1989-11-15','Fikile Davids','1983-02-06','','1102216148083','1972-08-09 23:00:54','other','2009-04-01','24912','2013-11-09','27327','2021-01-13 00:08:30','2023-03-25 10:24:24','1970-01-01 12:28:37','2001-05-11 03:32:49','KPASBS0H','1972-08-01 20:19:58','widowed','98645 Mnisi Unions\nSouth Melanie, UT 15112-4913','2003-12-01 13:14:59','female',17,176.00,159.00,'christianity',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(30,'wdeklerk','Dumisani Park','other',0,'1982-06-13','','2005-12-01','','3803270980083','1980-08-20 10:53:22','other','1999-12-31','385','2008-03-24','73279','NULL','NULL','1970-01-01 05:55:30','1996-01-24 20:23:50','WNQWBSAH','1984-08-26 02:26:09','divorced','6632 Philip Wall\nNew Jeanette , IA 54622-4881','1973-03-01 09:57:38','female',48,162.00,101.00,'hinduism',0,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(31,'justin.arendse','Mark Davis','nurse',0,'1971-08-15','','1994-10-24','','5305066172097','1970-08-06 14:17:52','other','1988-04-22','3046','1985-05-27','36566','NULL','NULL','1970-01-01 00:18:49','2014-10-28 19:36:38','GMGCAKHA2JU','2018-08-22 00:21:08','separated','4031 De Jager Unions Suite 917\nJuliemouth, ME 53648','2015-11-07 08:50:17','female',5,161.00,154.00,'buddhism',0,'待聘女傭',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(32,'mouton.martin','Ms. Sonja Kelly','other',1,'1988-12-01','Thandeka Patel','2016-11-27','','8302254600093','1997-02-27 10:34:15','other','1980-09-27','48463','2010-10-18','527','2021-03-17 15:56:14','2023-03-24 04:16:25','1970-01-01 00:11:01','1986-08-03 00:18:19','FUXRSHPI','2012-04-20 23:17:54','single','446 Nicolaas Islands Suite 049\nnosiphomouth, ID 05476-3631','2003-03-01 23:53:52','female',18,174.00,48.00,'buddhism',0,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(33,'qzulu','Daniel Harris','nurse',0,'1982-02-24','','2000-07-03','','9401163401087','1990-05-14 01:08:11','other','1981-08-28','95755','2003-10-10','3114','NULL','NULL','1970-01-01 01:31:48','1989-09-05 00:39:48','HILLZRQHSQ4','2016-12-04 15:04:41','single','8232 Matlala Trafficway\nHannesbury, MA 02726','1973-07-14 18:33:44','female',47,158.00,159.00,'sikhism',0,'航程已被確定',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(34,'plabuschagne','Riaan Moosa','nurse',1,'1973-11-01','phumzile Swanepoel','1997-02-16','','3005115266088','2020-06-17 00:30:40','other','1986-05-11','26160','1983-06-27','221','2021-03-14 16:02:53','2023-03-25 21:05:00','1970-01-01 14:43:16','1991-11-22 18:42:42','TICOTV2U','2013-08-16 12:39:58','single','3013 Muller Oval\nMlambochester, MD 43991','2001-04-07 19:25:54','female',19,166.00,183.00,'islam',0,'待聘女傭',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(35,'ywatson','Prof. Tanya Oosthuizen','informal',0,'1977-01-26','','2013-08-14','','9509186482080','1994-09-27 12:44:51','other','1979-06-13','9747','2017-05-06','75917','NULL','NULL','1970-01-01 05:57:43','2006-03-29 03:27:43','QRBNNCJ1FUZ','1996-06-08 02:30:16','married','8938 Deborah Estate\nnompumelelohaven, ID 72589-7347','2002-09-09 05:58:52','female',18,178.00,125.00,'sikhism',1,'已收合同但未有簽證，有預訂機者',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(36,'qevans','Bianca Mtshali','nurse',1,'2020-02-16','Natalie Wilson','1988-05-11','','6310050964086','1997-09-28 23:04:51','other','1997-10-22','296','1974-09-02','70366','2021-02-01 02:02:36','2023-03-24 06:49:56','1970-01-01 02:01:47','1990-05-10 23:49:19','GCQQTRHC','2016-07-01 01:44:17','separated','5140 Rikhotso Ferry\nRyanville, ME 46385','2002-12-09 12:22:00','female',18,177.00,150.00,'hinduism',1,'已收合同但未有簽證者',NULL,NULL,'2021-03-23 03:39:35','2021-03-23 03:39:35',NULL),
	(37,'clint27','Nosipho Gordon','factory',0,'1977-11-07','','2021-01-21','','9407147115081','2000-08-07 21:11:01','other','2014-06-26','6624','1990-10-25','4499','NULL','NULL','1970-01-01 14:47:21','1988-05-15 09:25:42','LBOSSQCJ8JT','1991-10-23 18:43:18','married','819 Debbie Heights Suite 511\nWest Grantfort, MT 55263-4367','2012-05-31 03:58:45','female',8,150.00,71.00,'judaism',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:36','2021-03-23 03:39:36',NULL),
	(38,'vuyokazi.sibiya','Prof. Julie Hoosen','construction',0,'2019-01-10','','1988-06-28','','1408269200089','2019-11-27 08:03:34','other','1989-11-18','6354','2006-07-21','684','NULL','NULL','1970-01-01 01:29:35','1980-11-10 22:57:46','ZAECEII37H3','2009-03-05 17:20:24','single','542 Your Streets Suite 640\nPort Brett, FL 54155','1973-03-24 01:34:48','female',47,157.00,90.00,'christianity',0,'請確定航程',NULL,NULL,'2021-03-23 03:39:36','2021-03-23 03:39:36',NULL),
	(39,'megan.solomon','Fikile Zwane','other',1,'2006-01-06','Nicolette Marx','1996-04-01','','2005294323099','1970-10-21 22:53:35','other','2008-07-18','3752','1982-02-02','81204','2021-01-01 12:16:05','2023-03-25 09:02:41','1970-01-01 01:03:55','1993-11-23 07:56:08','DZZXDYVP','2014-06-13 04:26:10','divorced','4702 Mtshali Falls\nMnisichester, IN 19429','2020-08-21 20:18:08','female',0,164.00,61.00,'hinduism',1,'已收合同但未有簽證者',NULL,NULL,'2021-03-23 03:39:36','2021-03-23 03:39:36',NULL),
	(40,'isaac.motaung','Sandile Ncube','nurse',0,'1978-04-04','','1975-03-11','','0506077964092','1999-12-10 17:55:36','other','1983-12-07','1363','1999-03-16','27607','NULL','NULL','1970-01-01 00:05:57','2013-02-17 15:01:20','UMVSHH97QF0','2003-08-27 09:11:44','widowed','27476 Solomon Circles Apt. 061\nNhlanhlaton, WY 04576','1986-03-05 14:52:01','female',35,165.00,173.00,'sikhism',1,'航程已被確定',NULL,NULL,'2021-03-23 03:39:36','2021-03-23 03:39:36',NULL),
	(41,'ajoseph','Kabelo Jooste','other',1,'1992-12-24','Hon. Ben Laubscher','1993-04-20','','7608127195082','2020-07-23 21:25:35','other','2018-07-11','1937','2011-07-02','4791','2021-01-25 06:37:30','2023-03-26 19:46:14','1970-01-01 01:10:25','2001-10-21 23:24:04','HUWEAYEG','1994-09-26 01:34:35','married','2418 André Brook\nThompsonhaven, IL 44913','1998-05-16 01:03:00','female',22,169.00,153.00,'sikhism',1,'已收合同但未有簽證，有預訂機者',NULL,NULL,'2021-03-23 03:39:36','2021-03-23 03:39:36',NULL),
	(42,'oneethling','Your Masuku','construction',1,'2005-09-14','Petrus Sithole','1998-02-25','','3504041714088','2006-11-25 19:08:52','other','1982-03-08','23108','2018-03-16','63098','2021-02-01 11:12:55','2023-03-24 05:06:32','1970-01-01 00:02:28','1971-12-25 21:29:33','TAQMFJT4','1983-01-23 01:29:35','married','2986 Angela Lodge\nColleenmouth, CT 18291-8061','1970-11-18 20:30:53','female',50,159.00,116.00,'christianity',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:36','2021-03-23 03:39:36',NULL),
	(43,'thandi44','Portia De Kock','construction',0,'2001-12-01','','1991-12-21','','4809151402096','2004-03-23 08:46:28','other','2010-06-07','96714','2020-12-22','369','NULL','NULL','1970-01-01 00:10:11','2002-11-05 07:44:31','QMMTKITYRID','1985-08-08 07:40:08','widowed','59279 Fisher Wells Suite 509\nSouth Roy, VA 21284-3708','1976-11-25 23:36:06','female',44,165.00,162.00,'judaism',1,'待聘女傭',NULL,NULL,'2021-03-23 03:39:36','2021-03-23 03:39:36',NULL),
	(44,'jeremy07','Nozipho Simpson','construction',0,'2013-10-15','','2006-12-28','','1408263492096','1979-12-22 00:21:57','other','1990-01-06','92372','2007-01-08','33321','NULL','NULL','1970-01-01 00:52:42','2004-05-10 15:40:43','MYIZKL2J','2004-01-07 01:25:20','married','8248 Vermeulen Hill Apt. 293\nLynnshire, IA 89473-9748','1981-03-20 19:00:11','female',40,174.00,183.00,'islam',0,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:36','2021-03-23 03:39:36',NULL),
	(45,'lindiwe.mkhize','Joseph Modiba','construction',1,'1979-05-22','Lizelle Matlala','1980-07-13','','2307037731087','2007-12-31 06:02:36','other','1973-08-19','7222','2012-11-14','694','2021-01-17 20:52:10','2023-03-25 13:24:04','1970-01-01 00:48:52','2008-01-01 23:30:41','SGFIYQ47BFI','2000-08-19 15:10:47','widowed','219 Neethling Lock\nVilakaziborough, NC 87431','2020-07-20 20:05:36','female',0,159.00,58.00,'sikhism',0,'直聘',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(46,'andrew64','Nhlanhla Cilliers','nurse',0,'2015-08-02','','2006-09-04','','5104196267095','2001-04-04 06:45:40','other','1976-01-31','9377','1975-10-31','8868','NULL','NULL','1970-01-01 00:11:55','2002-02-10 01:33:29','JYTKQEMQGDV','2016-05-04 16:50:03','widowed','63804 Olivier Harbor\nDe Kockport, HI 98165','1994-11-14 00:45:37','female',26,172.00,182.00,'judaism',1,'已收合同但未有簽證，有預訂機者',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(47,'dimakatso44','Yvette Hanekom','construction',1,'2014-02-11','Prof. Jeanette  Delport','2000-12-22','','0308011651095','2006-02-17 22:38:10','other','1996-11-11','48029','1989-10-01','973','2021-01-22 22:23:54','2023-03-24 06:40:34','1970-01-01 00:32:27','2009-09-14 02:12:09','ZNEHRFUU','2012-08-31 06:28:21','widowed','2930 Snyman Grove\nLombardside, CT 28929','2005-01-05 12:36:49','female',16,162.00,122.00,'christianity',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(48,'zama.andrews','Cindy Blignaut','informal',1,'1995-03-20','Dr. Nozipho Swartz','2006-03-02','','1111209454093','2020-04-28 02:06:34','other','1989-11-04','860','2010-06-15','522','2021-03-09 14:37:46','2023-03-23 09:13:00','1970-01-01 02:04:13','1987-12-02 14:20:37','MKISLOSQCO6','2000-12-13 20:47:11','single','36728 Francis Hills Apt. 629\nWest Refiloe, CT 29712-1601','2021-02-28 05:08:58','female',0,161.00,101.00,'buddhism',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(49,'yvette.letsoalo','Unathi Vorster','construction',0,'1977-04-11','','1995-08-27','','5610064500086','2016-01-30 09:37:56','other','1970-10-12','23735','2004-11-03','66731','NULL','NULL','1970-01-01 10:46:54','1971-10-06 06:43:57','KBMUTU87','1993-01-09 06:53:53','single','78996 Ronel Row\nNorth Brent, PA 81443-0249','1997-05-25 12:23:34','female',23,172.00,115.00,'sikhism',1,'請確定航程',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(50,'lucas.cele','Veronica Labuschagne','other',1,'2007-09-07','Nokuthula Ebrahim','1983-09-08','','6310225600094','2018-10-03 09:22:17','other','2004-10-01','94328','1979-01-16','625','2021-02-03 13:12:53','2023-03-24 00:53:43','1970-01-01 20:01:57','2009-06-20 10:25:03','KWHBFYCI9BA','1977-06-13 23:35:17','married','2355 Tsholofelo Row\nYoungshire, RI 05622-3673','2009-01-24 01:33:26','female',12,161.00,87.00,'sikhism',1,'已收合同但未有簽證者',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(51,'conrad.molefe','Janine Claassen','factory',1,'1987-01-18','Clint Magagula','1988-06-11','','5206063599086','1982-05-19 11:21:51','other','2012-06-09','258','2017-09-18','54262','2021-01-28 22:09:21','2023-03-27 19:35:43','1970-01-01 01:49:49','2009-03-11 23:06:24','WRCAAPQF','2006-09-15 12:13:48','separated','5774 Bennett Islands Suite 294\nLe Rouxton, PA 93969','2013-07-14 01:36:26','female',7,162.00,128.00,'christianity',0,'機票在侯補單',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(52,'alexander43','Rev. Tumelo Brits','other',0,'2008-05-20','','1976-10-28','','5401256589099','2011-10-27 01:33:53','other','1983-04-02','7117','1980-06-11','98102','NULL','NULL','1970-01-01 09:11:34','1989-12-25 23:46:20','MAXOOI8T2QV','1992-03-29 23:28:05','single','5265 Mandy Knolls Apt. 359\nJennyfurt, NV 23631-8325','1974-03-11 01:59:44','female',47,172.00,134.00,'judaism',0,'待聘女傭',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(53,'jnzimande','Bradley Ngwenya','factory',1,'1998-06-30','Hon. Prince Ismail','2018-06-17','','4710065790081','1983-07-30 19:34:12','other','1980-12-02','6130','2012-04-14','839','2021-02-22 11:34:53','2023-03-25 21:06:24','1970-01-01 04:44:42','2019-04-14 03:37:11','HGGWDF675H1','1973-10-14 00:40:08','married','304 Masilela Field Suite 707\nNew Adriaan, SD 30267-1038','1971-03-25 22:53:33','female',49,159.00,188.00,'buddhism',0,'直聘',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(54,'andiswa71','Rev. Laura du Plessis','nurse',1,'1977-10-23','Dirk Rautenbach','1985-11-19','','7204254611081','2010-07-14 06:44:39','other','2016-03-11','31211','1998-12-05','536','2021-03-10 21:40:49','2023-03-24 06:35:46','1970-01-01 00:45:11','1984-04-05 09:05:30','HKFGJYT6','1996-02-21 07:38:30','married','86569 Taylor Orchard Suite 613\nWest personalstad, ND 12897-0514','1993-12-17 01:22:11','female',27,173.00,66.00,'islam',1,'已收合同但未有簽證，有預訂機者',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(55,'hbotes','Precious Radebe','informal',0,'2009-09-22','','2004-06-01','','0706090151087','2012-08-01 11:14:32','other','1977-03-27','5875','1989-08-28','212','NULL','NULL','1970-01-01 21:49:21','1975-10-14 10:02:10','IOQIBWKJHJO','2001-02-10 08:53:58','separated','57771 Greeff Ferry Apt. 869\nCindyfort, ID 62754-7459','2016-05-08 22:57:30','female',4,177.00,186.00,'hinduism',0,'請確定航程',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(56,'ngcobo.stephan','Thapelo Chauke','informal',0,'1974-10-14','','1991-01-12','','2908082703085','2020-04-02 13:17:50','other','2009-09-10','32935','2000-07-30','6924','NULL','NULL','1970-01-01 00:10:38','1991-02-03 17:38:59','MEGEMM95','2016-12-01 21:36:35','married','6512 vuyokazi Island\nPort Sipho, DC 64459','1971-08-31 11:53:27','female',49,170.00,122.00,'islam',0,'已收合同但未有簽證，有預訂機者',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(57,'ruth19','Mpho Hoosen','informal',1,'1970-05-07','Nkosinathi Sibanyoni','1991-03-12','','0603206824089','1996-03-17 19:05:36','other','1994-12-18','29217','1971-09-28','70974','2021-02-01 11:08:56','2023-03-25 08:02:24','1970-01-01 01:42:20','1986-02-22 16:29:17','SHKKTBQ8UJL','1978-09-04 22:52:21','separated','417 Ruth Villages\nAdonisburgh, MT 24730','1971-12-04 05:43:41','female',49,150.00,48.00,'christianity',0,'直聘',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(58,'tkhanyile','Clinton King','construction',0,'1995-06-13','','2004-07-04','','9508184090085','2000-03-06 23:39:49','other','2009-05-26','5146','1992-08-20','8071','NULL','NULL','1970-01-02 02:07:17','2019-07-25 15:58:43','GCUAYXQ9','1983-12-16 10:38:22','separated','529 Magagula Heights\nAndreamouth, VA 98603-0700','1983-01-21 13:35:03','female',38,162.00,55.00,'christianity',0,'待聘女傭',NULL,NULL,'2021-03-23 03:39:37','2021-03-23 03:39:37',NULL),
	(59,'mogamat14','Dr. Jerome Mokone','informal',1,'2003-08-08','Dr. Ivan Oliver','1980-01-31','','1607139766084','1996-02-17 23:35:49','other','1975-10-08','80800','1977-01-27','4714','2021-01-03 20:58:39','2023-03-27 06:43:16','1970-01-01 00:04:11','1985-07-18 00:46:58','FQQLZM748S1','1991-12-27 14:55:42','married','870 Mandla Circle\nJansen van Rensburgchester, NE 12567','1993-11-10 16:13:35','female',27,172.00,128.00,'judaism',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:38','2021-03-23 03:39:38',NULL),
	(60,'human.next','Charlotte Davies','nurse',1,'2006-09-28','Lucas  Mlangeni','2000-06-17','','1106079792085','1976-03-11 00:33:44','other','1987-12-27','82993','2002-03-25','98072','2021-01-20 13:00:35','2023-03-26 23:28:07','1970-01-01 02:36:11','1979-09-06 06:47:55','VRDWPKEWOPY','1997-02-28 08:34:14','widowed','9878 Dumisani Squares\nNew Lydia, OR 51380-4736','2007-09-12 23:47:40','female',13,165.00,41.00,'hinduism',0,'航程已被確定',NULL,NULL,'2021-03-23 03:39:38','2021-03-23 03:39:38',NULL),
	(61,'vanderberg.julie','Hon. Bruce Robinson','nurse',1,'1996-10-30','Yusuf Ngobeni','1999-06-05','','6211139899097','2001-08-10 19:59:26','other','1986-09-30','494','1999-08-23','60052','2021-02-10 11:58:30','2023-03-25 19:34:05','1970-01-01 01:45:59','2011-12-05 17:03:34','VPODJP8ZXB0','2015-01-03 20:38:00','widowed','9831 Ncube Unions Apt. 392\nWest Gavin, VT 11921','2009-01-30 22:38:42','female',12,150.00,99.00,'christianity',0,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:38','2021-03-23 03:39:38',NULL),
	(62,'bulelwa.roux','Thandi Oberholzer','informal',0,'2014-10-10','','1976-05-22','','6807162941092','1992-10-10 05:37:51','other','1987-12-17','453','1995-10-07','90236','NULL','NULL','1970-01-01 01:23:36','1987-02-06 15:44:54','NBSLVNAHPZS','1978-09-09 15:34:54','divorced','8186 Vermaak Shores\nSouth Helen, ME 84627','1988-08-05 14:14:11','female',32,159.00,95.00,'christianity',1,'待聘女傭',NULL,NULL,'2021-03-23 03:39:38','2021-03-23 03:39:38',NULL),
	(63,'mashigo.yolandi','Prof. Nozipho Letsoalo','informal',0,'1990-08-11','','1971-06-22','','0605211531096','2000-05-26 07:58:25','other','1972-12-21','2489','2012-01-18','1590','NULL','NULL','1970-01-01 01:51:19','1974-09-13 23:35:27','TPCGJRGJ','2003-01-16 08:18:37','married','43266 Mathebula Knoll Suite 805\nVernonmouth, ID 31232-2848','2009-12-27 14:02:32','female',11,179.00,99.00,'judaism',1,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:39','2021-03-23 03:39:39',NULL),
	(64,'christina57','Charl Moses','construction',0,'2007-04-25','','1992-01-22','','4601229338083','1974-10-24 12:33:14','other','1992-08-11','6941','2011-03-31','181','NULL','NULL','1970-01-01 00:12:48','1971-10-22 19:50:14','VTWPDNKLILT','1985-08-26 21:14:54','widowed','9547 Mncube Hill\nNew Yourshire, TX 61454','1986-04-19 23:37:21','female',34,166.00,124.00,'hinduism',0,'已收合同但未有簽證者',NULL,NULL,'2021-03-23 03:39:39','2021-03-23 03:39:39',NULL),
	(65,'nozipho33','Charles van Deventer','informal',1,'2001-11-04','Ian Ntuli','1991-04-24','','4904289796095','2017-10-31 05:00:50','other','1982-10-15','5818','1986-05-08','651','2021-01-02 15:05:47','2023-03-23 16:43:56','1970-01-01 00:05:26','1974-12-21 06:32:27','DHKFFBNW','1983-01-15 20:47:02','married','844 Burger Road\nDimakatsoside, NM 24132-2723','1996-04-08 20:20:36','female',24,160.00,121.00,'christianity',1,'航程已被確定',NULL,NULL,'2021-03-23 03:39:40','2021-03-23 03:39:40',NULL),
	(66,'eherbst','Samuel Naidoo','construction',0,'1985-01-09','','1985-02-21','','3809071135082','1999-01-02 09:19:37','other','2012-08-19','61382','1992-09-22','12731','NULL','NULL','1970-01-01 01:18:55','2002-08-21 22:08:51','RPOHCE7S','2008-08-25 19:44:51','widowed','508 Andiswa Cliffs\nLindiwebury, WA 04718','2014-09-01 19:39:12','female',6,162.00,167.00,'hinduism',1,'請確定航程',NULL,NULL,'2021-03-23 03:39:40','2021-03-23 03:39:40',NULL),
	(67,'vdavies','André Myburgh','construction',1,'1971-01-02','Shannon Richards','2006-12-12','','9105300881081','1981-08-01 02:08:03','other','2002-09-15','9568','2020-06-20','9351','2021-02-25 07:12:51','2023-03-27 06:20:13','1970-01-01 00:08:33','2020-11-22 21:04:08','XHEAQJ056HC','2008-02-04 03:35:17','married','355 Nonkululeko Valleys\nTumelofurt, WV 84402','2013-06-22 01:02:50','female',7,173.00,89.00,'islam',0,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:40','2021-03-23 03:39:40',NULL),
	(68,'melissa.maree','Prof. Eugene Nene','construction',1,'1979-10-29','Estelle Robertson','1987-07-19','','2311043385094','2016-07-09 21:14:19','other','2011-06-11','4277','1992-02-02','540','2021-02-28 17:25:14','2023-03-27 12:03:13','1970-01-01 00:04:57','1995-11-22 02:26:17','ZLPRNZZI0AY','2001-09-29 19:31:29','widowed','987 Fourie Squares\nRobertsview, MT 17700-2424','1998-07-06 10:11:30','female',22,173.00,82.00,'sikhism',1,'已收合同但未有簽證者',NULL,NULL,'2021-03-23 03:39:40','2021-03-23 03:39:40',NULL),
	(69,'phumzile51','babalwa Malatji','informal',0,'2008-11-12','','1993-11-22','','2504143943099','1993-03-14 13:25:39','other','1979-09-03','590','2003-04-06','4036','NULL','NULL','1970-01-01 01:47:55','2013-01-17 01:30:08','ZMZTFRRZ','2002-09-27 06:55:39','widowed','8679 Mahomed Avenue\nMandisabury, KY 02504-4820','1975-03-27 15:42:20','female',45,175.00,102.00,'islam',1,'請確定航程',NULL,NULL,'2021-03-23 03:39:40','2021-03-23 03:39:40',NULL),
	(70,'lnell','André Fortuin','informal',1,'1976-08-11','Clifford Manuel','1974-03-09','','3305126710086','2005-12-01 09:28:57','other','1985-02-02','51902','1997-10-02','7320','2021-03-11 15:30:46','2023-03-26 10:26:04','1970-01-01 16:33:44','1994-09-23 05:31:19','EJNBRV24P1D','2020-05-22 05:31:30','married','9319 Watson Squares Suite 366\nJudithchester, NJ 66008','1973-11-30 21:30:19','female',47,165.00,147.00,'judaism',0,'航程已被確定',NULL,NULL,'2021-03-23 03:39:41','2021-03-23 03:39:41',NULL),
	(71,'tebogo.vanschalkwyk','Mrs. Ursula Strauss','nurse',0,'1999-01-06','','2015-09-11','','0010154302094','1978-06-03 07:57:10','other','1996-06-18','534','1991-02-21','8328','NULL','NULL','1970-01-01 02:46:08','2000-03-06 06:14:41','ESKJSFXRS0M','2004-03-05 21:32:33','single','9099 Asanda Passage Apt. 586\nSteynhaven, HI 79766','1984-10-10 05:14:58','female',36,162.00,159.00,'christianity',0,'已收合同但未有簽證者',NULL,NULL,'2021-03-23 03:39:41','2021-03-23 03:39:41',NULL),
	(72,'jsteyn','Ingrid Manuel','nurse',0,'1986-05-27','','1981-06-14','','6003095526081','1980-06-12 02:26:07','other','1999-01-27','4715','1983-01-03','78134','NULL','NULL','1970-01-01 01:53:47','1993-12-03 20:04:45','GBBQSZ5VR60','1992-07-24 02:52:00','widowed','191 Mabasa Trail Suite 513\nAndriesborough, AR 89190','2012-05-24 22:56:52','female',8,174.00,45.00,'judaism',0,'直聘',NULL,NULL,'2021-03-23 03:39:41','2021-03-23 03:39:41',NULL),
	(73,'ksimelane','Tania Barnes','factory',1,'1987-05-20','Christopher Singh','1979-07-13','','7604060137090','1989-05-09 06:49:13','other','2016-11-23','9969','1981-02-07','12569','2021-03-07 14:31:30','2023-03-27 05:58:47','1970-01-01 00:10:05','1985-09-23 07:19:51','HTDSRQ1M7NV','1976-01-02 01:06:59','widowed','2557 De Klerk Path\nKekanafurt, MI 09084-8180','2013-11-30 11:29:51','female',7,179.00,124.00,'buddhism',0,'已收合同和簽證，有預訂機票者',NULL,NULL,'2021-03-23 03:39:41','2021-03-23 03:39:41',NULL),
	(74,'pntombela','Andrea De Bruyn','construction',1,'2020-04-28','Jaco Geldenhuys','1996-12-17','','8708151421088','1987-07-05 12:38:49','other','1999-02-17','8837','1991-05-05','3643','2021-01-17 09:16:24','2023-03-24 20:31:21','1970-01-01 02:19:09','1983-01-16 11:37:59','AMXPRH0C','2016-12-18 01:04:10','married','635 Taylor Port Apt. 057\nNew Colin, TN 69400','2013-07-03 20:20:28','female',7,175.00,101.00,'buddhism',0,'直聘',NULL,NULL,'2021-03-23 03:39:41','2021-03-23 03:39:41',NULL),
	(75,'leonard.debruyn','Liezel Moloi','nurse',1,'2014-09-11','Kabelo Perumal','2006-03-28','','8908089618090','2015-12-11 21:09:00','other','1983-10-07','28794','1970-11-28','8674','2021-03-20 19:34:06','2023-03-25 08:14:56','1970-01-01 00:10:09','1971-05-26 22:24:33','RLOJQO4DFQ3','1982-07-24 20:14:51','separated','2764 Denise Grove Apt. 904\nNew thulani, TX 76910-9108','2007-06-07 17:45:38','female',13,172.00,57.00,'hinduism',1,'已收合同但未有簽證，有預訂機者',NULL,NULL,'2021-03-23 03:39:41','2021-03-23 03:39:41',NULL);

/*!40000 ALTER TABLE `maids` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`)
VALUES
	(2,'App\\Models\\Maid',3,'5e87541d-e40f-4090-b252-54b206d513ae','maid_multi_collection',' 2021-02-20 下午5.35.25','螢幕截圖-2021-02-20-下午5.35.25.png','image/png','public','public',632141,'[]','[]','[]','[]',1,'2021-02-24 06:24:26','2021-02-24 06:24:26'),
	(3,'DmitryBubyakin\\NovaMedialibraryField\\TransientModel',1,'4c199c43-528f-4996-bef7-307152b4794e','411126ec-dee8-46de-b20e-8ab3a91260f6',' 2021-03-03 上午11.21.45','螢幕截圖-2021-03-03-上午11.21.45.png','image/png','public','public',96291,'[]','{\"__target_props__\": {\"target\": \"App\\\\Models\\\\Maid\", \"collectionName\": \"collection name\"}}','[]','[]',2,'2021-03-05 04:08:08','2021-03-05 04:08:08'),
	(4,'DmitryBubyakin\\NovaMedialibraryField\\TransientModel',1,'1a78b10e-1ecd-45df-96ee-0cd2299fa724','411126ec-dee8-46de-b20e-8ab3a91260f6',' 2021-01-25 上午1.02.39','螢幕截圖-2021-01-25-上午1.02.39.png','image/png','public','public',103329,'[]','{\"__target_props__\": {\"target\": \"App\\\\Models\\\\Maid\", \"collectionName\": \"collection name\"}}','[]','[]',3,'2021-03-05 04:08:17','2021-03-05 04:08:17'),
	(5,'App\\Models\\Maid',3,'fb4092ef-48d7-4a4b-8d37-08511e69fc65','main',' 2020-07-27 上午11.14.11','螢幕截圖-2020-07-27-上午11.14.11.png','image/png','public','public',293381,'[]','[]','[]','[]',4,'2021-03-05 04:11:23','2021-03-05 04:11:23'),
	(7,'App\\Models\\Maid',3,'69cb9434-cca7-4e79-a2c7-674e6ab2d06c','multi_image','PHOTO-2020-11-10-16-37-50 2','PHOTO-2020-11-10-16-37-50-2.jpg','image/jpeg','public','public',145050,'[]','[]','[]','[]',6,'2021-03-05 04:15:52','2021-03-05 04:15:52'),
	(8,'App\\Models\\Maid',3,'f27d6f26-c431-428e-9537-0c5dad94dd84','multi_image',' 2020-08-04 上午11.21.27','螢幕截圖-2020-08-04-上午11.21.27.png','image/png','public','public',1331650,'[]','[]','[]','[]',7,'2021-03-05 04:15:52','2021-03-05 04:15:52'),
	(9,'App\\Models\\Maid',3,'2261d6aa-edf7-4657-9563-9ef623907c51','multi_image','PHOTO-2020-11-10-16-37-51','PHOTO-2020-11-10-16-37-51.jpg','image/jpeg','public','public',195135,'[]','[]','[]','[]',8,'2021-03-05 04:15:52','2021-03-05 04:15:52');

/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_10_12_000000_create_users_table',1),
	(2,'2014_10_12_100000_create_password_resets_table',1),
	(3,'2018_01_01_000000_create_action_events_table',1),
	(4,'2019_05_10_000000_add_fields_to_action_events_table',1),
	(5,'2019_08_13_000000_create_nova_settings_table',1),
	(6,'2019_08_19_000000_create_failed_jobs_table',1),
	(9,'2021_02_23_092831_create_notes_table',2),
	(10,'2021_02_24_062211_create_tag_tables',3),
	(11,'2021_02_24_062410_create_media_table',4),
	(12,'2021_02_24_070247_create_user_maids_table',5),
	(13,'2021_02_24_070514_create_interviews_table',5),
	(14,'2021_02_26_055719_create_permission_tables',6),
	(17,'2021_02_23_085713_create_maids_table',7),
	(18,'2021_02_23_090223_create_maid_documents_table',7),
	(19,'2021_03_05_041825_create_notes_table',7);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table model_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table model_has_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`)
VALUES
	(1,'App\\Models\\User',1),
	(2,'App\\Models\\User',1),
	(2,'App\\Models\\User',2),
	(3,'App\\Models\\User',2),
	(3,'App\\Models\\User',3),
	(4,'App\\Models\\User',4),
	(4,'App\\Models\\User',5),
	(4,'App\\Models\\User',6),
	(4,'App\\Models\\User',7),
	(4,'App\\Models\\User',8),
	(4,'App\\Models\\User',9),
	(4,'App\\Models\\User',10),
	(4,'App\\Models\\User',11),
	(4,'App\\Models\\User',12),
	(4,'App\\Models\\User',13),
	(4,'App\\Models\\User',14),
	(4,'App\\Models\\User',15),
	(4,'App\\Models\\User',16),
	(4,'App\\Models\\User',17),
	(4,'App\\Models\\User',18),
	(4,'App\\Models\\User',19),
	(4,'App\\Models\\User',20),
	(4,'App\\Models\\User',21),
	(4,'App\\Models\\User',22),
	(4,'App\\Models\\User',23),
	(4,'App\\Models\\User',24),
	(4,'App\\Models\\User',25),
	(4,'App\\Models\\User',26),
	(4,'App\\Models\\User',27),
	(4,'App\\Models\\User',28),
	(4,'App\\Models\\User',29),
	(4,'App\\Models\\User',30),
	(4,'App\\Models\\User',31),
	(4,'App\\Models\\User',32),
	(4,'App\\Models\\User',33),
	(4,'App\\Models\\User',34),
	(4,'App\\Models\\User',35),
	(4,'App\\Models\\User',36),
	(4,'App\\Models\\User',37),
	(4,'App\\Models\\User',38),
	(4,'App\\Models\\User',39),
	(4,'App\\Models\\User',40),
	(4,'App\\Models\\User',41),
	(4,'App\\Models\\User',42),
	(4,'App\\Models\\User',43),
	(4,'App\\Models\\User',44),
	(4,'App\\Models\\User',45),
	(4,'App\\Models\\User',46),
	(4,'App\\Models\\User',47),
	(4,'App\\Models\\User',48),
	(4,'App\\Models\\User',49),
	(4,'App\\Models\\User',50),
	(4,'App\\Models\\User',51),
	(4,'App\\Models\\User',52),
	(4,'App\\Models\\User',53);

/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notes`;

CREATE TABLE `notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` text COLLATE utf8mb4_unicode_ci,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `updated_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table nova_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `nova_settings`;

CREATE TABLE `nova_settings` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(8192) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `nova_settings` WRITE;
/*!40000 ALTER TABLE `nova_settings` DISABLE KEYS */;

INSERT INTO `nova_settings` (`key`, `value`)
VALUES
	('address','Usdasdi Drive'),
	('city','Slick Rock'),
	('email','askdll@asdasd'),
	('fax_no','123213123'),
	('head_of_dept','msa,dmas,dm'),
	('phone_no','12321312');

/*!40000 ALTER TABLE `nova_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`)
VALUES
	(1,'view maids','user','2021-03-24 09:34:31','2021-03-24 09:34:31'),
	(2,'create maids','user','2021-03-24 09:34:40','2021-03-24 09:34:40'),
	(3,'edit maids','user','2021-03-24 09:34:47','2021-03-24 09:34:47'),
	(4,'delete maids','user','2021-03-24 09:34:54','2021-03-24 09:34:54'),
	(5,'restore maids','user','2021-03-24 09:35:00','2021-03-24 09:35:00'),
	(6,'force delete maids','user','2021-03-24 09:35:06','2021-03-24 09:35:06'),
	(7,'view users','user','2021-03-25 07:32:13','2021-03-25 07:32:13'),
	(8,'create users','user','2021-03-25 07:32:24','2021-03-25 07:32:24'),
	(9,'edit users','user','2021-03-25 07:32:36','2021-03-25 07:32:36'),
	(10,'delete users','user','2021-03-25 07:32:46','2021-03-25 07:32:46'),
	(11,'restore users','user','2021-03-25 07:32:57','2021-03-25 07:32:57'),
	(12,'force delete users','user','2021-03-25 07:33:07','2021-03-25 07:33:07'),
	(13,'view interview','user','2021-03-25 07:33:37','2021-03-25 07:33:37'),
	(14,'create interview','user','2021-03-25 07:33:50','2021-03-25 07:33:50'),
	(15,'edit interview','user','2021-03-25 07:34:02','2021-03-25 07:34:02'),
	(16,'delete interview','user','2021-03-25 07:34:19','2021-03-25 07:34:19'),
	(17,'restore interview','user','2021-03-25 07:34:31','2021-03-25 07:34:31'),
	(18,'force delete interview','user','2021-03-25 07:34:40','2021-03-25 07:34:40');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role_has_permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(2,1),
	(3,1),
	(4,1),
	(5,1),
	(6,1),
	(7,1),
	(8,1),
	(9,1),
	(10,1),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(1,2),
	(2,2),
	(3,2),
	(4,2),
	(5,2),
	(6,2),
	(7,2),
	(8,2),
	(9,2),
	(10,2),
	(11,2),
	(12,2),
	(13,2),
	(14,2),
	(15,2),
	(16,2),
	(17,2),
	(18,2),
	(1,3),
	(2,3),
	(3,3),
	(4,3),
	(5,3),
	(6,3),
	(7,3),
	(8,3),
	(9,3),
	(10,3),
	(13,3),
	(14,3),
	(15,3),
	(16,3),
	(17,3),
	(1,4),
	(9,4),
	(13,4),
	(14,4),
	(15,4);

/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`)
VALUES
	(1,'Super Admin','user','2021-03-24 04:50:57','2021-03-24 04:56:37'),
	(2,'Admin','user','2021-03-24 04:51:04','2021-03-24 04:51:04'),
	(3,'Staff','user','2021-03-24 04:51:13','2021-03-24 04:51:13'),
	(4,'User','user','2021-03-24 04:51:22','2021-03-24 04:51:22');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table taggables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `taggables`;

CREATE TABLE `taggables` (
  `tag_id` bigint(20) unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `taggables_tag_id_taggable_id_taggable_type_unique` (`tag_id`,`taggable_id`,`taggable_type`),
  KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` json NOT NULL,
  `slug` json NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_column` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `slug`, `type`, `order_column`, `created_at`, `updated_at`)
VALUES
	(2,'{\"en\": \"testing\"}','{\"en\": \"testing\"}',NULL,1,'2021-02-24 06:24:25','2021-02-24 06:24:25');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_maids
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_maids`;

CREATE TABLE `user_maids` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `maid_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_maids_maid_id_foreign` (`maid_id`),
  KEY `user_maids_user_id_foreign` (`user_id`),
  CONSTRAINT `user_maids_maid_id_foreign` FOREIGN KEY (`maid_id`) REFERENCES `maids` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_maids_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'超級管理員','superadmin@localhost',NULL,'$2y$10$PnGtL3ZAlQnQpcfT4YUfrO.cHsu2e7czG.7uvM8WXU559VS2Q0m4O',NULL,'2021-03-24 08:38:27',NULL),
	(2,'測試管理員','webmaster@localhost',NULL,'$2y$10$PnGtL3ZAlQnQpcfT4YUfrO.cHsu2e7czG.7uvM8WXU559VS2Q0m4O',NULL,'2021-03-24 08:38:27',NULL),
	(3,'測試職員','staff@localhost',NULL,'$2y$10$PnGtL3ZAlQnQpcfT4YUfrO.cHsu2e7czG.7uvM8WXU559VS2Q0m4O',NULL,'2021-03-24 08:38:27',NULL),
	(4,'Dr. Anabelle A\'Hara','ofelia.senger@example.org','2021-03-24 09:44:01','$2y$10$qKQMfAFq1r15ol/5p2pWou9tJJzybpcLMVuXJiXB7NVIJeE8ys6Ia','g9jJUnfsWB48tBjp326jJcl1NGhiTHE1fn71ONle0dH7bH90J3lxdqEFfHPh','2021-03-24 09:44:02','2021-03-25 08:54:03'),
	(5,'Leilani Kilback','amari49@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','a1Ncxj0ThM','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(6,'Frederic Steuber','iweissnat@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Po9cQzJEok','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(7,'Martine Gulgowski','kohler.shania@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cWYSNdw95Z','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(8,'Jett Shanahan II','river25@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','CMGJocGMXH','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(9,'Kristopher Lubowitz','tmedhurst@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','esnQcbAv2j','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(10,'Hillard Streich','abshire.elinor@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','5fXoZO3SpI','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(11,'Winston Rowe','adolphus.brakus@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RHoccToZE9','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(12,'Zander Fritsch','satterfield.isabel@example.com','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','NLLKarDzUO','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(13,'Murphy O\'Reilly','langworth.ken@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','4KjVp7peOE','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(14,'Cora Rolfson','frami.enrico@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','uccw9yNk3S','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(15,'Mr. Santos Beatty DVM','rtremblay@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','bA79aKBPzD','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(16,'Selmer Bernier','nienow.jan@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GznkwwRmbE','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(17,'Kristina Nikolaus','hoppe.amely@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','u4djawD4pL','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(18,'Edyth Franecki','friesen.benton@example.com','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zy5L0cHGyd','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(19,'Mac Ward','arielle41@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2LJQ5VKW9Y','2021-03-24 09:44:02','2021-03-24 09:44:02'),
	(20,'Trystan Pfannerstill','everett68@example.com','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AvxMF0ZKiX','2021-03-24 09:44:03','2021-03-24 09:44:03'),
	(21,'Cornell Funk IV','rutherford.desiree@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','uQYIvspv5u','2021-03-24 09:44:03','2021-03-24 09:44:03'),
	(22,'Zelda Murphy','edyth16@example.com','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rRpSsuhUwi','2021-03-24 09:44:03','2021-03-24 09:44:03'),
	(23,'Robbie Heaney','austen.mcdermott@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','KEEqEUyNpP','2021-03-24 09:44:03','2021-03-24 09:44:03'),
	(24,'Dr. Felicita Lakin MD','qchamplin@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sh6502cfEo','2021-03-24 09:44:03','2021-03-24 09:44:03'),
	(25,'Prof. Kenneth McLaughlin','leffler.einar@example.com','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FO0oB129hn','2021-03-24 09:44:03','2021-03-24 09:44:03'),
	(26,'Fermin Senger DVM','rashawn66@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zzyxHVd5go','2021-03-24 09:44:03','2021-03-24 09:44:03'),
	(27,'Gene Kirlin','augustus.gutmann@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','sAsQOOgLvt','2021-03-24 09:44:03','2021-03-24 09:44:03'),
	(28,'Prof. Alberta Crist','zemlak.keyon@example.org','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','K4uFmpC62E','2021-03-24 09:44:04','2021-03-24 09:44:04'),
	(29,'Mr. Kiel Boyle','kcassin@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','BrnTHV9dO8','2021-03-24 09:44:04','2021-03-24 09:44:04'),
	(30,'Velma Feil','bmcdermott@example.net','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','rwbvLNespI','2021-03-24 09:44:04','2021-03-24 09:44:04'),
	(31,'Cordell Aufderhar IV','ojerde@example.com','2021-03-24 09:44:01','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TPbv4aOR82','2021-03-24 09:44:04','2021-03-24 09:44:04'),
	(32,'Mr. Orval Labadie','tpfeffer@example.net','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','khHAE4UFP0','2021-03-24 09:44:04','2021-03-24 09:44:04'),
	(33,'Eldora Wisoky','jbernier@example.net','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','NYdm2Sjlg9','2021-03-24 09:44:04','2021-03-24 09:44:04'),
	(34,'Mrs. Yessenia Wunsch Jr.','marquardt.vinnie@example.org','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','o0z6zGVh21','2021-03-24 09:44:05','2021-03-24 09:44:05'),
	(35,'Misty Sanford I','xdubuque@example.org','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','4eTl8wkbzv','2021-03-24 09:44:05','2021-03-24 09:44:05'),
	(36,'Emmy Kohler','chesley72@example.org','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','PzkMkJJ5M1','2021-03-24 09:44:05','2021-03-24 09:44:05'),
	(37,'Astrid Mayer','horacio23@example.net','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','TY0SYhSpyf','2021-03-24 09:44:05','2021-03-24 09:44:05'),
	(38,'Ms. Lelia Lemke','oturcotte@example.org','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','9HTr3F1Sri','2021-03-24 09:44:05','2021-03-24 09:44:05'),
	(39,'Elmore Lindgren','goodwin.edd@example.com','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','HEr8qLCzAJ','2021-03-24 09:44:06','2021-03-24 09:44:06'),
	(40,'Janie Keebler','mwyman@example.com','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2ZckBIrp4A','2021-03-24 09:44:06','2021-03-24 09:44:06'),
	(41,'Prof. Jaleel O\'Reilly','montana.borer@example.net','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','gZFwfxXvJf','2021-03-24 09:44:06','2021-03-24 09:44:06'),
	(42,'Vincenzo Braun DDS','heller.dina@example.org','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','LaE8HgnuCo','2021-03-24 09:44:06','2021-03-24 09:44:06'),
	(43,'Hailey Deckow','katlynn.gottlieb@example.net','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','K3fEsB3SwD','2021-03-24 09:44:07','2021-03-24 09:44:07'),
	(44,'Taya Hane','walton58@example.org','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','POqlc9uc8t','2021-03-24 09:44:07','2021-03-24 09:44:07'),
	(45,'Justina Stark','muhammad.lind@example.org','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WiqsbKGmTj','2021-03-24 09:44:07','2021-03-24 09:44:07'),
	(46,'Maud Stehr III','carrie28@example.net','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','e6J4YDlSbE','2021-03-24 09:44:07','2021-03-24 09:44:07'),
	(47,'Jameson Heidenreich PhD','wabbott@example.org','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','JYaEjBhJUu','2021-03-24 09:44:08','2021-03-24 09:44:08'),
	(48,'Prof. Zion Kovacek Sr.','xavier.bogan@example.net','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','3C4v6W42Pc','2021-03-24 09:44:08','2021-03-24 09:44:08'),
	(49,'Dr. Arden Witting I','dora65@example.org','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','zPrOtSk7eM','2021-03-24 09:44:08','2021-03-24 09:44:08'),
	(50,'Sheila Schuster','macie.ullrich@example.net','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','RbrUqdQQa9','2021-03-24 09:44:08','2021-03-24 09:44:08'),
	(51,'Mr. Jamar Gulgowski','jhomenick@example.com','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','hQPhxRWwPK','2021-03-24 09:44:09','2021-03-24 09:44:09'),
	(52,'Kade Dietrich','roscoe.fisher@example.net','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','61t7qUJVLI','2021-03-24 09:44:09','2021-03-24 09:44:09'),
	(53,'Miss Anissa Bauch','elvis.russel@example.com','2021-03-24 09:44:02','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2xvY2GDQoB','2021-03-24 09:44:09','2021-03-24 09:44:09');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
