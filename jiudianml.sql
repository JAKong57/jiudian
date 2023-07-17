/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 5.7.29 : Database - jiudianml
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiudianml` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiudianml`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号id',
  `name` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `realName` varchar(32) DEFAULT NULL,
  `idCard` varchar(32) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `account` */

insert  into `account`(`id`,`name`,`password`,`realName`,`idCard`,`mobile`,`address`,`status`) values 
(2,'dingxinran','e10adc3949ba59abbe56e057f20f883e','张刚','4622987745565656','13673581593','北京 三里屯 酒吧',0),
(3,'lichengai','e10adc3949ba59abbe56e057f20f883e','王宏','6565656565656','13999999999','南京',-1),
(4,'liutianzhuo','e10adc3949ba59abbe56e057f20f883e','刘显','110110120121110110','13656565656','北京 朝阳区 群众',0),
(5,'xiaoming','e10adc3949ba59abbe56e057f20f883e','小明','31012002522555','13545455454','江苏 南京',0),
(32,'admin','e10adc3949ba59abbe56e057f20f883e',' ',' ','11111111111',' ',0),
(33,'kangkang','e10adc3949ba59abbe56e057f20f883e',' ',' ','15375867386',' ',0),
(34,'kang','e10adc3949ba59abbe56e057f20f883e',' ',' ','15375867396',' ',0);

/*Table structure for table `authority` */

DROP TABLE IF EXISTS `authority`;

CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `roleId` (`roleId`) USING BTREE,
  KEY `menuId` (`menuId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=442 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;

/*Data for the table `authority` */

insert  into `authority`(`id`,`roleId`,`menuId`) values 
(148,2,35),
(149,2,36),
(150,2,25),
(151,2,1),
(152,2,14),
(153,2,15),
(383,1,1),
(384,1,5),
(385,1,17),
(386,1,18),
(387,1,19),
(388,1,20),
(389,1,13),
(390,1,21),
(391,1,22),
(392,1,23),
(393,1,35),
(394,1,36),
(395,1,14),
(396,1,15),
(397,1,24),
(398,1,25),
(399,1,26),
(400,1,31),
(401,1,32),
(402,1,33),
(403,1,34),
(404,1,37),
(405,1,38),
(406,1,39),
(407,1,40),
(408,1,41),
(409,1,42),
(410,1,43),
(411,1,44),
(412,1,45),
(413,1,46),
(419,1,52),
(420,1,53),
(421,1,54),
(422,1,55),
(423,1,56),
(424,1,57),
(425,1,58),
(426,1,59),
(427,1,60),
(428,1,61),
(429,1,62),
(430,1,63),
(431,1,64),
(432,1,65),
(433,1,66),
(434,1,67),
(435,1,68),
(436,1,69),
(437,1,70),
(438,1,71),
(439,1,72),
(440,1,73),
(441,1,74);

/*Table structure for table `book_order` */

DROP TABLE IF EXISTS `book_order`;

CREATE TABLE `book_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountId` int(11) NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `idCard` varchar(32) DEFAULT NULL,
  `mobile` varchar(16) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `arriveDate` varchar(32) DEFAULT NULL,
  `leaveDate` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `createTime` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `accountId` (`accountId`) USING BTREE,
  KEY `roomTypeId` (`roomTypeId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `book_order` */

insert  into `book_order`(`id`,`accountId`,`roomTypeId`,`name`,`idCard`,`mobile`,`status`,`arriveDate`,`leaveDate`,`remark`,`createTime`) values 
(11,2,2,'张三五','622987745565656','13918655256',2,'2020-01-18','2020-01-19','','2020-01-18 23:57:11'),
(13,3,1,'李四','6565656565656','13999999999',0,'2020-01-19','2020-01-20','预计晚上八点到。','2020-01-19 13:27:35'),
(14,5,2,'小明','31012002522555','13545455454',2,'2020-01-19','2020-01-20','帮我留一个有窗户的靠南的！谢谢！','2020-01-19 23:02:16'),
(15,5,6,'小明','31012002522555','13545455454',1,'2020-01-21','2020-01-22','我会尽快赶来！','2020-01-19 23:02:45'),
(16,5,10,'??','31012002522555','13545455454',2,'2020-01-21','2020-01-23','?????','2020-01-19 23:03:25'),
(17,6,3,'hehe','34433434343434434343','18253232323',2,'2020-06-03','2020-06-25','4334','2020-06-20 09:46:08'),
(18,7,9,'yuh','4222','13557382054',1,'2020-11-15','2020-11-13','22222','2020-11-23 21:46:18'),
(19,24,1,'yuh','2133','123456789',0,'2020-12-03','2020-12-04','sdaasd','2020-12-21 22:33:32'),
(20,38,1,'刘亦菲',' ','12311234324',0,'2021-02-11','2021-02-16','','2021-02-23 11:51:09'),
(21,39,1,'desc',' 1234444444','15322223454',0,'2021-03-03','2021-03-12','好吧','2021-03-24 16:02:22'),
(22,39,1,'desc',' ','15322223454',0,'2021-03-01','2021-03-02','','2021-03-24 21:53:37'),
(23,39,1,'desc',' 122334566','15322223454',0,'2021-03-01','2021-03-05','哈哈哈哈哈哈哈','2021-03-24 21:55:02'),
(24,40,3,'zhang',' ','1233333333333',0,'2021-03-01','2021-03-12','','2021-03-30 08:05:45'),
(25,40,4,'zhang',' ','1233333333333',0,'2021-03-05','2021-03-31','','2021-03-30 08:06:44'),
(26,40,1,'zhang',' ','1233333333333',0,'2021-03-16','2021-03-26','','2021-03-30 08:07:43'),
(27,40,1,'zhang',' ','1233333333333',0,'2021-03-02','2021-03-27','','2021-03-30 08:09:43'),
(28,32,1,'jiang',' ','15433212345',0,'2021-04-29','2021-04-30','','2021-04-26 07:51:57'),
(29,32,1,'jiang',' 123444444444444','15433212345',0,'2021-04-27','2021-04-29','','2021-04-26 13:07:54'),
(30,32,1,'admin','350521200108244513','11111111111',2,'2023-01-05','2023-01-08','','2023-01-05 19:51:22'),
(31,32,2,'admin',' 350521200108244513','11111111111',0,'2023-02-10','2023-02-13','','2023-02-13 13:55:14'),
(32,32,2,'admin',' 350521200108244513','11111111111',0,'2023-02-10','2023-02-13','2','2023-02-13 13:55:22'),
(33,32,1,'admin',' 350521200108244513','11111111111',0,'2023-02-16','2023-02-22','11','2023-02-25 14:38:43'),
(34,34,1,'kang','35052120040784518','15375867396',0,'2023-02-25','2023-02-27','111','2023-02-25 15:27:03'),
(35,32,3,'admin',' 350527199910014513','15375651245',0,'2023-03-10','2023-03-10','123','2023-03-09 08:49:33'),
(36,32,3,'admin',' 350527199910014513','15375651245',0,'2023-03-10','2023-03-10','123','2023-03-09 08:58:22'),
(37,32,3,'admin',' 350527199910014513','15375651245',0,'2023-03-10','2023-03-10','123','2023-03-09 08:58:29');

/*Table structure for table `checkin` */

DROP TABLE IF EXISTS `checkin`;

CREATE TABLE `checkin` (
  `id` bigint(200) NOT NULL AUTO_INCREMENT COMMENT '入住id',
  `roomId` bigint(200) DEFAULT NULL COMMENT '房间id',
  `roomTypeId` bigint(200) DEFAULT NULL COMMENT '型id',
  `checkinPrice` float(10,2) DEFAULT NULL COMMENT '入住价格',
  `name` varchar(255) DEFAULT NULL COMMENT '入住者姓名',
  `idCard` varchar(255) DEFAULT NULL COMMENT '身份证号码',
  `mobile` varchar(255) DEFAULT NULL COMMENT '手机号',
  `status` int(10) DEFAULT NULL COMMENT '状态：0：入住中，1：已结算离店',
  `arriveDate` varchar(255) DEFAULT NULL COMMENT '入住日期',
  `leaveDate` varchar(255) DEFAULT NULL COMMENT '离店日期',
  `createTime` datetime NOT NULL COMMENT '创建时间',
  `reserveOrderId` bigint(200) DEFAULT NULL COMMENT '预定订单id，可为空',
  `bookOrderId` bigint(200) DEFAULT NULL COMMENT '预定订单id，可为空',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `checkin` */

insert  into `checkin`(`id`,`roomId`,`roomTypeId`,`checkinPrice`,`name`,`idCard`,`mobile`,`status`,`arriveDate`,`leaveDate`,`createTime`,`reserveOrderId`,`bookOrderId`,`remark`) values 
(3,2,1,120.00,'dingxinran','4622987745565656','13673581593',1,'2020-10-23','2020-10-24','2020-10-24 21:34:08',NULL,23,'1天'),
(4,2,1,168.00,'李四','6565656565656','13999999999',0,'2020-01-19','2020-01-20','2021-05-08 22:34:04',NULL,13,'预计晚上八点到。'),
(5,2,3,399.00,'hehe','34433434343434434343','18253232323',1,'2020-06-03','2020-06-25','2021-05-08 22:41:31',NULL,17,'4334'),
(6,4,1,168.00,'admin','350521200108244513','11111111111',1,'2023-01-05','2023-01-08','2023-02-25 13:43:17',NULL,30,''),
(7,4,1,168.00,'kang','35052120040784518','15375867396',1,'2023-02-25','2023-02-27','2023-02-25 15:29:28',NULL,34,'111');

/*Table structure for table `floor` */

DROP TABLE IF EXISTS `floor`;

CREATE TABLE `floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `floor` */

insert  into `floor`(`id`,`name`,`remark`) values 
(1,'1楼','一楼'),
(2,'2楼','2楼的逃生通道有点阻塞。'),
(3,'3楼','3楼'),
(4,'4楼','4楼监控坏了。'),
(6,'6楼','六楼正常'),
(7,'7楼','正常'),
(12,'1','aa');

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `log` */

insert  into `log`(`id`,`content`,`createTime`) values 
(139,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2021-05-07 20:38:48'),
(140,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2021-05-07 20:46:08'),
(141,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2021-05-07 21:50:12'),
(142,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2021-05-07 21:59:40'),
(143,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2021-05-07 22:03:12'),
(144,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2021-05-08 22:15:20'),
(145,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2021-05-08 22:33:15'),
(146,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-01-05 19:42:20'),
(147,'用户名为admin的用户登录时输入密码错误!','2023-02-13 14:09:18'),
(148,'用户名为admin的用户登录时输入密码错误!','2023-02-13 14:09:26'),
(149,'用户名为admin的用户登录时输入密码错误!','2023-02-13 14:09:34'),
(150,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-13 14:11:19'),
(151,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-22 23:22:25'),
(152,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-22 23:23:16'),
(153,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 10:39:19'),
(154,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 11:30:09'),
(155,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 11:33:06'),
(156,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 12:04:22'),
(157,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 12:05:07'),
(158,'用户名为admin的用户登录时输入密码错误!','2023-02-23 12:05:28'),
(159,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 12:05:36'),
(160,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 12:20:55'),
(161,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 12:46:29'),
(162,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 12:51:09'),
(163,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 12:51:32'),
(164,'用户名为admin的用户登录时输入验证码错误!','2023-02-23 13:05:50'),
(165,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 13:05:57'),
(166,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 13:09:18'),
(167,'用户名为admin的用户登录时输入验证码错误!','2023-02-23 13:09:34'),
(168,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 13:09:42'),
(169,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 13:27:45'),
(170,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 13:34:22'),
(171,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 13:35:56'),
(172,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 13:41:56'),
(173,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-23 13:51:46'),
(174,'用户名为admin的用户登录时输入密码错误!','2023-02-24 16:10:47'),
(175,'用户名为admin的用户登录时输入密码错误!','2023-02-24 16:10:55'),
(176,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 20:00:02'),
(177,'用户名为admin的用户登录时输入验证码错误!','2023-02-24 20:07:42'),
(178,'用户名为admin的用户登录时输入密码错误!','2023-02-24 20:07:47'),
(179,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 20:07:55'),
(180,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 20:16:19'),
(181,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 20:23:56'),
(182,'用户名为admin的用户登录时输入密码错误!','2023-02-24 20:34:01'),
(183,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 20:34:09'),
(184,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 20:43:37'),
(185,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 20:45:26'),
(186,'用户名为admin的用户登录时输入密码错误!','2023-02-24 21:02:25'),
(187,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 21:02:34'),
(188,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 21:05:40'),
(189,'用户名为admin的用户登录时输入密码错误!','2023-02-24 21:07:49'),
(190,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 21:07:57'),
(191,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 21:16:09'),
(192,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 21:25:31'),
(193,'用户名为admin的用户登录时输入验证码错误!','2023-02-24 21:31:11'),
(194,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 21:31:20'),
(195,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 21:34:07'),
(196,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 21:35:40'),
(197,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 21:46:29'),
(198,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 22:41:37'),
(199,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 23:18:06'),
(200,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-24 23:22:51'),
(201,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-25 11:27:15'),
(202,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-25 11:35:46'),
(203,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-25 11:41:26'),
(204,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-25 11:45:29'),
(205,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-25 13:33:52'),
(206,'用户名为admin的用户登录时输入验证码错误!','2023-02-25 13:48:24'),
(207,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-25 13:48:35'),
(208,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-25 14:43:13'),
(209,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-25 15:27:47'),
(210,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-02-26 15:53:43'),
(211,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-03-01 22:17:48'),
(212,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-03-03 11:44:32'),
(213,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-03-08 19:59:35'),
(214,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-03-09 09:11:08'),
(215,'用户名为{admin}，角色为{超级管理员}的用户登录成功!','2023-03-09 10:54:52');

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `menu` */

insert  into `menu`(`id`,`parentId`,`name`,`url`,`icon`) values 
(1,0,'系统设置','','icon-advancedsettings'),
(14,0,'用户管理','','icon-group-gear'),
(15,14,'用户列表','../admin/user/list','icon-group'),
(24,15,'添加','openAdd()','icon-add'),
(25,15,'编辑','openEdit()','icon-bullet-edit'),
(26,15,'删除','remove()','icon-cross'),
(35,1,'修改密码','edit_password','icon-lock-edit'),
(36,35,'修改密码','openAdd()','icon-lock-edit'),
(37,0,'楼层管理','','icon-house'),
(38,37,'楼层列表','../admin/floor/list','icon-house-connect'),
(39,38,'添加','openAdd()','icon-add'),
(40,38,'编辑','openEdit()','icon-bullet-edit'),
(41,38,'删除','remove()','icon-cancel'),
(42,0,'房型管理','','icon-house-star'),
(43,42,'房型列表','../admin/room_type/list','icon-house-key'),
(44,43,'添加','openAdd()','icon-add'),
(45,43,'编辑','openEdit()','icon-bullet-edit'),
(46,43,'删除','remove()','icon-cancel'),
(47,0,'房间管理','','icon-house-go'),
(48,47,'房间列表','../admin/room/list','icon-house-key'),
(49,48,'添加','openAdd()','icon-add'),
(50,48,'编辑','openEdit()','icon-bullet-edit'),
(51,48,'删除','remove()','icon-cancel'),
(52,0,'客户管理','','icon-users'),
(53,52,'客户列表','../admin/account/list','icon-user-business-boss'),
(54,53,'添加','openAdd()','icon-add'),
(55,53,'编辑','openEdit()','icon-bullet-edit'),
(56,53,'删除','remove()','icon-cancel'),
(57,0,'预定管理','','icon-time-green'),
(58,57,'预定列表','../admin/book_order/list','icon-clock'),
(59,58,'新增预定','openAdd()','icon-clock-add'),
(60,58,'编辑预定','openEdit()','icon-clock-edit'),
(61,0,'入住管理','','icon-heart-connect'),
(62,61,'入住列表','../admin/checkin/list','icon-heart'),
(63,62,'登记入住','openAdd()','icon-heart-add'),
(64,62,'编辑入住','openEdit()','icon-heart-connect'),
(65,62,'登记退房','openCheckOut()','icon-heart-delete'),
(66,0,'营业统计','','icon-money-yen'),
(67,66,'统计图表','../admin/stats/stats','icon-chart-curve'),
(68,67,'按月统计','statsByMonth()','icon-chart-curve-add'),
(69,67,'按日统计','statsByDay()','icon-chart-curve-edit'),
(70,0,'留言管理','','icon-house'),
(71,70,'留言列表','../admin/message/list','ico-house-connect'),
(72,71,'添加','openAdd()','icon-add'),
(73,71,'回复','openEdit()','icon-bullet-edit'),
(74,71,'删除','remove()','icon-cancel');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `userName` varchar(200) DEFAULT NULL COMMENT '用户名字',
  `userPhone` varchar(20) DEFAULT NULL COMMENT '用户电话',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户状态 0未回复 1已回复',
  `remark` varchar(2000) DEFAULT NULL COMMENT '存放留言信息',
  `answer` varchar(2000) DEFAULT NULL COMMENT '管理员回复信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4;

/*Data for the table `message` */

insert  into `message`(`id`,`userName`,`userPhone`,`status`,`remark`,`answer`) values 
(2,'123','123',1,'123','111'),
(3,'12312','12312',0,'213','1231'),
(4,'123','123',0,'123',NULL),
(5,'1','1',0,'1',NULL),
(6,'1','1',1,'1','111'),
(7,'1','1',0,'1',NULL),
(8,'1','1',0,'1',NULL),
(9,'1','1',0,'1',NULL),
(10,'1','1',0,'1',NULL),
(11,'11','11',0,'11',NULL),
(12,'11','111',0,'11',NULL),
(13,'213','123',0,'123',NULL),
(14,'123','123',0,'123',NULL),
(15,'123','123',0,'123',NULL),
(16,'康康','15375867562',0,'111',NULL),
(17,'康康','15375867562',0,'111',NULL),
(18,'康康','15375867562',0,'111',NULL),
(19,'康康','15375867562',0,'111',NULL),
(20,'123','213',0,'213',NULL),
(22,'11','11',0,'11',NULL),
(23,'123','111',0,'22',NULL),
(24,'11','123',0,'123',NULL),
(25,'11','123',0,'123',NULL),
(26,'11','123',0,'123',NULL),
(27,'11','123',0,'123',NULL),
(28,'213','123124',0,'124',NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`remark`) values 
(1,'超级管理员','超级管理员拥有一切权限！'),
(2,'普通用户','普通用户，请自由授权！');

/*Table structure for table `room` */

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(128) DEFAULT NULL,
  `sn` varchar(32) NOT NULL,
  `roomTypeId` int(11) NOT NULL,
  `floorId` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `roomTypeId` (`roomTypeId`) USING BTREE,
  KEY `floorId` (`floorId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `room` */

insert  into `room`(`id`,`photo`,`sn`,`roomTypeId`,`floorId`,`status`,`remark`) values 
(3,'/resources/upload/1677240529893.jpg','2001',2,2,2,'2楼普通大床房'),
(4,'resources/upload/1547863202049.jpg','3001',3,3,1,'3001豪华大床房'),
(5,'resources/upload/1547863202049.jpg','4001',4,4,1,'商务大床房');

/*Table structure for table `room_type` */

DROP TABLE IF EXISTS `room_type`;

CREATE TABLE `room_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `price` float(8,2) NOT NULL,
  `liveNum` int(2) NOT NULL,
  `bedNum` int(2) NOT NULL,
  `roomNum` int(5) NOT NULL,
  `avilableNum` int(5) NOT NULL,
  `bookNum` int(5) NOT NULL DEFAULT '0',
  `livedNum` int(5) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1',
  `remark` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `room_type` */

insert  into `room_type`(`id`,`name`,`photo`,`price`,`liveNum`,`bedNum`,`roomNum`,`avilableNum`,`bookNum`,`livedNum`,`status`,`remark`) values 
(1,'单人间','/resources/upload/1672919647948.jpg',168.00,1,1,12,6,4,2,1,'单人间只能入住一个人，大概15平米左右！'),
(2,'普通大床房','resources/upload/1547863299550.jpg',299.00,2,1,15,13,2,0,1,'普通大床房，面积25平左右！'),
(3,'豪华大床房','resources/upload/1547863308339.jpg',399.00,2,1,8,5,3,0,1,'豪华大床房，面积30平左右！'),
(4,'商务大床房','resources/upload/1547865202071.jpg',429.00,2,1,10,10,0,0,1,'商务大床房，面积40平左右！'),
(5,'普通标准间','resources/upload/1547863370413.jpg',199.00,2,2,11,11,0,0,1,'普通标准房，面积20平左右！'),
(6,'豪华标准房','resources/upload/1547863398297.jpg',199.00,2,2,10,10,0,0,1,'豪华标准房，面积30平左右！'),
(7,'商务标准间','resources/upload/1547863458969.jpg',299.00,2,2,10,10,0,0,1,'商务标准间，面积35平左右！'),
(12,'kunkun','/resources/upload/1677304163270.jpg',100.00,2,1,50,50,0,0,1,'');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  `isdel` int(2) DEFAULT '1' COMMENT '是否删除，0是，1否',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `roleId` (`roleId`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`roleId`,`photo`,`sex`,`age`,`address`,`isdel`) values 
(1,'admin','admin',1,'/resources/upload/1677079412413.jpg',1,1,'上海市浦东新区',1),
(14,' test','123',1,'/jiandian_ssm_war_exploded/resources/upload/1602903973625.jpg',1,11,'11',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
