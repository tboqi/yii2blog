/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.7.18-log : Database - yii2blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yii2blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;

USE `yii2blog`;

/*Table structure for table `auth_assignment` */

DROP TABLE IF EXISTS `auth_assignment`;

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_assignment` */

insert  into `auth_assignment`(`item_name`,`user_id`,`created_at`) values ('系统管理员','1',1513061139);

/*Table structure for table `auth_item` */

DROP TABLE IF EXISTS `auth_item`;

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item` */

insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_blog/blog-catalog/index',2,NULL,NULL,NULL,1513064559,1513064559);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_blog/blog-comment/index',2,NULL,NULL,NULL,1513064614,1513064614);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_blog/blog-post/index',2,NULL,NULL,NULL,1513064598,1513064598);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_blog/blog-tag/index',2,NULL,NULL,NULL,1513064626,1513064626);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_system/assignment/index',2,NULL,NULL,NULL,1513063602,1513063602);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_system/default/index',2,NULL,NULL,NULL,1513060967,1513060967);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_system/menu/index',2,NULL,NULL,NULL,1513060374,1513060374);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_system/permission/index',2,NULL,NULL,NULL,1513063643,1513063643);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_system/role/index',2,NULL,NULL,NULL,1513063615,1513063615);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_system/route/index',2,NULL,NULL,NULL,1513063591,1513063591);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_system/rule/index',2,NULL,NULL,NULL,1513063702,1513063702);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('/admin_system/user/index',2,NULL,NULL,NULL,1512962447,1512962447);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('博客管理员',1,NULL,NULL,NULL,1513064933,1513064933);
insert  into `auth_item`(`name`,`type`,`description`,`rule_name`,`data`,`created_at`,`updated_at`) values ('系统管理员',1,NULL,NULL,NULL,1512638854,1513063992);

/*Table structure for table `auth_item_child` */

DROP TABLE IF EXISTS `auth_item_child`;

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_item_child` */

insert  into `auth_item_child`(`parent`,`child`) values ('博客管理员','/admin_blog/blog-catalog/index');
insert  into `auth_item_child`(`parent`,`child`) values ('博客管理员','/admin_blog/blog-comment/index');
insert  into `auth_item_child`(`parent`,`child`) values ('博客管理员','/admin_blog/blog-post/index');
insert  into `auth_item_child`(`parent`,`child`) values ('博客管理员','/admin_blog/blog-tag/index');
insert  into `auth_item_child`(`parent`,`child`) values ('系统管理员','/admin_system/assignment/index');
insert  into `auth_item_child`(`parent`,`child`) values ('系统管理员','/admin_system/default/index');
insert  into `auth_item_child`(`parent`,`child`) values ('系统管理员','/admin_system/menu/index');
insert  into `auth_item_child`(`parent`,`child`) values ('系统管理员','/admin_system/permission/index');
insert  into `auth_item_child`(`parent`,`child`) values ('系统管理员','/admin_system/role/index');
insert  into `auth_item_child`(`parent`,`child`) values ('系统管理员','/admin_system/route/index');
insert  into `auth_item_child`(`parent`,`child`) values ('系统管理员','/admin_system/rule/index');
insert  into `auth_item_child`(`parent`,`child`) values ('系统管理员','/admin_system/user/index');

/*Table structure for table `auth_rule` */

DROP TABLE IF EXISTS `auth_rule`;

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `auth_rule` */

/*Table structure for table `blog_catalog` */

DROP TABLE IF EXISTS `blog_catalog`;

CREATE TABLE `blog_catalog` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_nav` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '50',
  `page_size` int(11) NOT NULL DEFAULT '10',
  `template` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_catalog` */

insert  into `blog_catalog`(`id`,`parent_id`,`title`,`surname`,`banner`,`is_nav`,`sort_order`,`page_size`,`template`,`redirect_url`,`status`,`created_at`,`updated_at`) values (1,0,'test','test',NULL,1,50,10,'post','',1,1512956339,1512956339);

/*Table structure for table `blog_comment` */

DROP TABLE IF EXISTS `blog_comment`;

CREATE TABLE `blog_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(10) unsigned NOT NULL,
  `updated_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_comment` */

insert  into `blog_comment`(`id`,`post_id`,`content`,`author`,`email`,`url`,`status`,`created_at`,`updated_at`) values (1,1,'455454','555','45','45',0,1512956987,1512956987);
insert  into `blog_comment`(`id`,`post_id`,`content`,`author`,`email`,`url`,`status`,`created_at`,`updated_at`) values (2,1,'ert','re','ert','ert',0,1512957011,1512957011);

/*Table structure for table `blog_post` */

DROP TABLE IF EXISTS `blog_post`;

CREATE TABLE `blog_post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brief` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_post` */

insert  into `blog_post`(`id`,`catalog_id`,`title`,`brief`,`content`,`tags`,`surname`,`banner`,`click`,`user_id`,`status`,`created_at`,`updated_at`) values (1,1,'erte','ertet','<p>ertetet</p>\r\n','er','ert',NULL,5,1,1,1512956394,1512956394);

/*Table structure for table `blog_tag` */

DROP TABLE IF EXISTS `blog_tag`;

CREATE TABLE `blog_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequency` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `blog_tag` */

insert  into `blog_tag`(`id`,`name`,`frequency`) values (1,'er',1);

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (2,'系统管理',NULL,'/admin_system/user/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (3,'用户列表',2,'/admin_system/user/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (4,'菜单列表',2,'/admin_system/menu/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (5,'帮助',2,'/admin_system/default/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (6,'分配权限',2,'/admin_system/assignment/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (7,'角色列表',2,'/admin_system/role/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (8,'权限列表',2,'/admin_system/permission/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (9,'路由列表',2,'/admin_system/route/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (10,'规则列表',2,'/admin_system/rule/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (11,'博客管理',NULL,'/admin_blog/blog-post/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (12,'分类列表',11,'/admin_blog/blog-catalog/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (13,'文章列表',11,'/admin_blog/blog-post/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (14,'评论管理',11,'/admin_blog/blog-comment/index',NULL,NULL);
insert  into `menu`(`id`,`name`,`parent`,`route`,`order`,`data`) values (15,'标签管理',11,'/admin_blog/blog-tag/index',NULL,NULL);

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values ('m000000_000000_base',1512636093);
insert  into `migration`(`version`,`apply_time`) values ('m140506_102106_rbac_init',1512636096);
insert  into `migration`(`version`,`apply_time`) values ('m140602_111327_create_menu_table',1512636460);
insert  into `migration`(`version`,`apply_time`) values ('m160312_050000_create_user',1512636460);
insert  into `migration`(`version`,`apply_time`) values ('m170907_052038_rbac_add_index_on_auth_assignment_user_id',1512636096);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (1,'admin','C5f5K1Kg8tL-IutYAom4-s7RMh_xMk_l','$2y$13$zUhKPW6Y69gn.DDWjSI.kOp9OXZWSuMDTq5JRZvw6yK9dr2QK43qu',NULL,'272067517@qq.com',10,1467626063,1467626063);
insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (2,'test','C5f5K1Kg8tL-IutYAom4-s7RMh_xMk_l','$2y$13$zUhKPW6Y69gn.DDWjSI.kOp9OXZWSuMDTq5JRZvw6yK9dr2QK43qu',NULL,'2720675171@qq.com',10,1467629909,1467629909);
insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`) values (3,'admin1','uJ9ldMmxCvz02qMUpAUwPZI0zdIJv8K4','$2y$13$n/P4Lx7CpSRJSA/TUthvFeuCRM1ZlGH/LKaXO9tq4tzl1Pb/0/HDm',NULL,'admin1@qq.com',10,1512962145,1512962145);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
