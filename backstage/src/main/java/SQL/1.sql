/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.53 : Database - db_backstage
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_backstage` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_backstage`;

/*Table structure for table `t_dict` */

DROP TABLE IF EXISTS `t_dict`;

CREATE TABLE `t_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` varchar(50) NOT NULL,
  `status` bit(1) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `t_dict` */

insert  into `t_dict`(`id`,`name`,`key`,`value`,`status`,`type`,`pid`) values (1,'A','A','A','','WORD',NULL);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名',
  `user_phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱地址',
  `user_pwd` varchar(32) DEFAULT NULL COMMENT '加盐后用户密码',
  `pwd_salt` varchar(6) DEFAULT NULL COMMENT 'MD5盐',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '最后修改时间',
  `is_delete` tinyint(4) DEFAULT NULL COMMENT '是否删除，0-未删除；1-已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户登录表';

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`user_name`,`user_phone`,`user_email`,`user_pwd`,`pwd_salt`,`create_time`,`modify_time`,`is_delete`) values (1,'赵大宝','13285250574','1045221654@qq.com','05126a423a9379d529e4ee61a212fa55','KJUYT5','2016-07-15 23:38:56','2016-07-15 23:39:09',0),(2,'张三丰','15985250574','1198224554@qq.com','98bd3a1bebde01ad363d3c5a0d1e56da','656JHU','2016-07-15 23:39:01','2016-07-15 23:39:13',0),(3,'王尼玛','13685250574','1256221654@qq.com','5470db9b63c354f6c8d628b80ae2f3c3','89UIKQ','2016-07-15 23:39:05','2016-07-15 23:39:16',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
