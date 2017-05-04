/*
SQLyog v10.2 
MySQL - 5.0.22-community : Database - websites
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`websites` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `websites`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL auto_increment COMMENT '管理员id',
  `a_name` varchar(20) NOT NULL COMMENT '管理员',
  `a_password` varchar(20) NOT NULL COMMENT '密码',
  PRIMARY KEY  (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

/*Table structure for table `admin_role` */

DROP TABLE IF EXISTS `admin_role`;

CREATE TABLE `admin_role` (
  `ar_id` int(11) NOT NULL auto_increment,
  `a_id` int(11) NOT NULL COMMENT '管理员id, 外键',
  `r_id` int(11) NOT NULL COMMENT '角色id, 外键',
  PRIMARY KEY  (`ar_id`),
  KEY `a_id` (`a_id`),
  KEY `r_id` (`r_id`),
  CONSTRAINT `admin_role_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `admin` (`a_id`),
  CONSTRAINT `admin_role_ibfk_2` FOREIGN KEY (`r_id`) REFERENCES `role` (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin_role` */

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `c_id` int(11) NOT NULL auto_increment COMMENT '主页物品id',
  `total` int(11) NOT NULL COMMENT '总人次',
  `purchase` int(11) NOT NULL COMMENT '已参与人次',
  `countdown` int(11) NOT NULL default '60' COMMENT '倒计时(秒)',
  `category` int(11) NOT NULL default '1' COMMENT '类别:1.一元购,2:十元购,3:限购专区',
  `state` int(11) NOT NULL default '1' COMMENT '状态:1.最新揭晓,2:已揭晓',
  `g_id` int(11) default NULL COMMENT '商品外键',
  PRIMARY KEY  (`c_id`),
  KEY `g_id` (`g_id`),
  CONSTRAINT `commodity_ibfk_1` FOREIGN KEY (`g_id`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodity` */

insert  into `commodity`(`c_id`,`total`,`purchase`,`countdown`,`category`,`state`,`g_id`) values (1,6285,0,60,1,1,1),(2,5288,0,60,1,1,5),(3,3200,0,60,1,1,2),(4,4582,0,60,1,2,3),(5,4685,0,60,1,2,4),(6,6785,0,60,1,2,6);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL auto_increment COMMENT '商品id',
  `goods_name` varchar(200) NOT NULL COMMENT '商品名',
  `cpu` varchar(200) NOT NULL default '' COMMENT 'cpu型号',
  `banben` varchar(200) NOT NULL COMMENT '手机版本',
  `price` float NOT NULL COMMENT '价格',
  `goods_time` varchar(200) NOT NULL COMMENT '上市时间',
  `os` varchar(100) NOT NULL default '' COMMENT '操作系统',
  `ram` int(11) NOT NULL COMMENT '运存',
  `houdu` float NOT NULL COMMENT '厚度',
  `weight` float default NULL COMMENT '重量',
  `rongliang` int(11) NOT NULL COMMENT '电池容量',
  `fenbianyu` varchar(100) NOT NULL COMMENT '分辨率',
  `chicun` float default NULL COMMENT '尺寸',
  `stock` int(11) default NULL COMMENT '库存',
  `sale` int(11) default '0' COMMENT '销量',
  `img` varchar(200) NOT NULL COMMENT '图片路径',
  `color` int(11) default NULL COMMENT '颜色',
  `type_id` int(11) default NULL COMMENT '商品外键',
  PRIMARY KEY  (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `goods_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `goods_type` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`cpu`,`banben`,`price`,`goods_time`,`os`,`ram`,`houdu`,`weight`,`rongliang`,`fenbianyu`,`chicun`,`stock`,`sale`,`img`,`color`,`type_id`) values (1,'Samsung Galaxy s5','MSM8001','G9006V',5720,'2014年2月3日','Android OS 4.4',2,8.1,145,2800,'1920*1080',5.1,8500,2000,'img/index/product-1.jpg',1,NULL),(2,'Nokia Lumia 1320','Snapdragon S4','1320',4599,'2013年10月6日','Windows phone 8',1,9.8,168,3400,'1280*720',6,120,500,'img/index/product-2.jpg',1,NULL),(3,'LG Leon','Snapdragon S6','G2014',4300,'2014年6月10日','Android OS 4.2',2,8.1,140,3200,'1280*720',4.7,452,1000,'img/index/product-3.jpg',1,NULL),(4,'Sony Xperia Z5','MSM8994','A3685',5628,'2013年8月15日','Android OS 5.1',2,7.8,145,2658,'1920*1080',5,10,1500,'img/index/product-4.jpg',1,NULL),(5,'iphone6','A8','A1527',5688,'2015年9月10日','ios8',1,7.1,128,1284,'1334*750',4.7,12,5000,'img/index/product-5.jpg',1,NULL),(6,'Samsung Galaxy note4','MSM8001','G9320',5790,'2014年9月20日','Android OS 5.0',2,7.6,145,3600,'1920*1080',5.5,124,2800,'img/index/product-6.jpg',1,NULL);

/*Table structure for table `goods_type` */

DROP TABLE IF EXISTS `goods_type`;

CREATE TABLE `goods_type` (
  `t_id` int(11) NOT NULL auto_increment,
  `t_name` varchar(100) NOT NULL COMMENT '商品类型',
  `t_desc` varchar(300) default NULL COMMENT '描述',
  `t_son` varchar(100) default NULL COMMENT '商品子类型',
  PRIMARY KEY  (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_type` */

insert  into `goods_type`(`t_id`,`t_name`,`t_desc`,`t_son`) values (1,'手机',NULL,'三星'),(2,'手机',NULL,'诺基亚'),(3,'手机',NULL,'LG'),(4,'手机',NULL,'索尼'),(5,'手机',NULL,'苹果'),(6,'手机',NULL,'三星');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `o_id` int(11) NOT NULL COMMENT '订单id',
  `o_name` varchar(200) NOT NULL COMMENT '订单名',
  `o_price` decimal(6,2) NOT NULL COMMENT '订单总价',
  `o_time` datetime NOT NULL COMMENT '订单时间',
  `o_number` int(11) NOT NULL COMMENT '订单物品数量',
  `u_id` int(11) default NULL COMMENT '会员id',
  PRIMARY KEY  (`o_id`),
  KEY `u_id` (`u_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `order_comm` */

DROP TABLE IF EXISTS `order_comm`;

CREATE TABLE `order_comm` (
  `oc_id` int(11) NOT NULL auto_increment COMMENT '订单物品表',
  `o_id` int(11) default NULL COMMENT '订单id',
  `c_id` int(11) default NULL COMMENT '物品id',
  `c_number` int(11) NOT NULL default '1' COMMENT '购买数量',
  `c_lucky` int(11) NOT NULL COMMENT '幸运号码',
  `c_desc` varchar(200) NOT NULL COMMENT '描述',
  PRIMARY KEY  (`oc_id`),
  KEY `o_id` (`o_id`),
  KEY `c_id` (`c_id`),
  CONSTRAINT `order_comm_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `commodity` (`c_id`),
  CONSTRAINT `order_comm_ibfk_1` FOREIGN KEY (`o_id`) REFERENCES `order` (`o_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order_comm` */

/*Table structure for table `powers` */

DROP TABLE IF EXISTS `powers`;

CREATE TABLE `powers` (
  `p_id` int(11) NOT NULL auto_increment COMMENT '权限id',
  `p_name` varchar(20) NOT NULL COMMENT '权限',
  `p_method` varchar(200) default NULL COMMENT '权限方法',
  `p_path` varchar(200) NOT NULL COMMENT '权限路径',
  `p_desc` varchar(100) default NULL COMMENT '权限描述',
  PRIMARY KEY  (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `powers` */

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `r_id` int(11) NOT NULL auto_increment COMMENT '角色id',
  `r_name` varchar(20) NOT NULL COMMENT '角色',
  `r_desc` varchar(100) NOT NULL COMMENT '角色描述',
  PRIMARY KEY  (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role` */

/*Table structure for table `role_powers` */

DROP TABLE IF EXISTS `role_powers`;

CREATE TABLE `role_powers` (
  `rp_id` int(11) NOT NULL auto_increment,
  `r_id` int(11) default NULL COMMENT '角色id, 外键',
  `p_id` int(11) default NULL COMMENT '权限id, 外键',
  PRIMARY KEY  (`rp_id`),
  KEY `r_id` (`r_id`),
  KEY `p_id` (`p_id`),
  CONSTRAINT `role_powers_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `role` (`r_id`),
  CONSTRAINT `role_powers_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `powers` (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `role_powers` */

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL auto_increment,
  `user_name` varchar(100) default '',
  `user_pass` varchar(100) default '',
  `email` varchar(100) default '',
  `age` int(180) default NULL,
  `sex` int(10) default NULL,
  `birthday` date default NULL,
  `city` varchar(10000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_info` */

insert  into `user_info`(`id`,`user_name`,`user_pass`,`email`,`age`,`sex`,`birthday`,`city`) values (1,'yoke2','123123','1@qq.com',NULL,NULL,NULL,NULL),(4,'yoke3','123123','2@qq.com',NULL,NULL,NULL,NULL),(5,' 12312','123456','1@qq.com',NULL,NULL,NULL,NULL),(6,'yoke4','234234','1@qq.com',NULL,NULL,NULL,NULL),(7,'yoke5','123123','1@qq.com',NULL,NULL,NULL,NULL),(13,'yoke2','123123','1@qq.com',20,1,'1998-02-03','bj'),(14,'yoke2','123123','1@qq.com',20,1,'1998-02-03','bj');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
