/*
SQLyog - Free MySQL GUI v5.19
Host - 5.0.15-nt : Database - securedynamic
*********************************************************************
Server version : 5.0.15-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `securedynamic`;

USE `securedynamic`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `m_admin` */

DROP TABLE IF EXISTS `m_admin`;

CREATE TABLE `m_admin` (
  `admin_code` int(5) NOT NULL auto_increment,
  `admin_id` char(30) NOT NULL,
  `admin_password` char(15) NOT NULL,
  `admin_name` char(50) NOT NULL,
  PRIMARY KEY  (`admin_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_admin` */

insert into `m_admin` (`admin_code`,`admin_id`,`admin_password`,`admin_name`) values (1,'admin','admin','adminn');

/*Table structure for table `m_cloud` */

DROP TABLE IF EXISTS `m_cloud`;

CREATE TABLE `m_cloud` (
  `c_code` int(20) NOT NULL auto_increment,
  `c_url` varchar(50) default NULL,
  `c_uname` varchar(50) default NULL,
  `c_pwd` varchar(50) default NULL,
  PRIMARY KEY  (`c_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_cloud` */

insert into `m_cloud` (`c_code`,`c_url`,`c_uname`,`c_pwd`) values (1,'ftp.drivehq.com','menakaamu','iimca2012');

/*Table structure for table `m_file` */

DROP TABLE IF EXISTS `m_file`;

CREATE TABLE `m_file` (
  `f_no` int(10) NOT NULL auto_increment,
  `f_name` varchar(20) default NULL,
  `key_word` varchar(40000) default NULL,
  `total` int(20) default NULL,
  PRIMARY KEY  (`f_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_file` */

insert into `m_file` (`f_no`,`f_name`,`key_word`,`total`) values (1,'java.txt','robust-secure-level-programming-java-language-high-',13);
insert into `m_file` (`f_no`,`f_name`,`key_word`,`total`) values (2,'test.txt','file-dhs-testing-',3);

/*Table structure for table `m_grade` */

DROP TABLE IF EXISTS `m_grade`;

CREATE TABLE `m_grade` (
  `s_no` int(11) NOT NULL auto_increment,
  `grade_level` varchar(30) default NULL,
  PRIMARY KEY  (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_grade` */

insert into `m_grade` (`s_no`,`grade_level`) values (1,'CSE');
insert into `m_grade` (`s_no`,`grade_level`) values (2,'ISE');
insert into `m_grade` (`s_no`,`grade_level`) values (3,'ECE');

/*Table structure for table `m_hashtable` */

DROP TABLE IF EXISTS `m_hashtable`;

CREATE TABLE `m_hashtable` (
  `s_no` int(11) NOT NULL auto_increment,
  `key_word` varchar(50) default NULL,
  `fileno` varchar(4) default NULL,
  `key_no` varchar(3) default NULL,
  `rank_val` varchar(10) default NULL,
  PRIMARY KEY  (`s_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_hashtable` */

insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (1,'b1ac470512da9cfc721490d90baf4d93','1','5','46.15');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (2,'2761b90f06bf58a99cd23919f61587f4','1','4','7.69');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (3,'17388bce24855430372615ac43481284','1','7','7.69');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (4,'3d1e515468e4af7647c4e87a4f0dc150','1','3','7.69');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (5,'5f804fc38fbd008235f7d1c43490f626','1','6','15.38');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (6,'67d6d3a02c7db4a21006d2dd3e9e5ad3','1','1','7.69');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (7,'dfbaa6c70225a93db5ccd750cc5cb9b2','1','2','7.69');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (8,'683144a9d7f6fe222fd3e77b55e5cebb','2','10','33.33');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (9,'b343416638781cd42825fb4930eb513b','2','8','33.33');
insert into `m_hashtable` (`s_no`,`key_word`,`fileno`,`key_no`,`rank_val`) values (10,'c7892477f7c832f20b291dc349bdef1f','2','9','33.33');

/*Table structure for table `m_transaction` */

DROP TABLE IF EXISTS `m_transaction`;

CREATE TABLE `m_transaction` (
  `sno` int(80) NOT NULL auto_increment,
  `t_date` varchar(90) default NULL,
  `t_time` varchar(90) default NULL,
  `m_loginid` varchar(90) default NULL,
  `f_name` varchar(90) default NULL,
  `f_status` varchar(90) default NULL,
  PRIMARY KEY  (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_transaction` */

/*Table structure for table `m_user` */

DROP TABLE IF EXISTS `m_user`;

CREATE TABLE `m_user` (
  `u_no` int(10) NOT NULL auto_increment,
  `u_id` varchar(100) default NULL,
  `u_pass` varchar(200) default NULL,
  `u_name` varchar(200) NOT NULL,
  `u_email` varchar(200) default NULL,
  `u_phone` varchar(200) default NULL,
  `grade` varchar(200) default NULL,
  PRIMARY KEY  (`u_no`,`u_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `m_user` */

insert into `m_user` (`u_no`,`u_id`,`u_pass`,`u_name`,`u_email`,`u_phone`,`grade`) values (1,'mca112','Priya@123','priya','priya@dhsinformatics.com','8765434567','1');
insert into `m_user` (`u_no`,`u_id`,`u_pass`,`u_name`,`u_email`,`u_phone`,`grade`) values (2,'mca112','Priya@123','priya','priya@dhsinformatics.com','9876545654','1');

/*Table structure for table `t_count` */

DROP TABLE IF EXISTS `t_count`;

CREATE TABLE `t_count` (
  `t_no` int(20) NOT NULL auto_increment,
  `f_no` int(10) default NULL,
  `key_word` varchar(50) default NULL,
  `weightage` int(10) default NULL,
  `key_rank` varchar(50) default NULL,
  PRIMARY KEY  (`t_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_count` */

insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (1,1,'robust',1,'7.69');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (2,1,'secure',1,'7.69');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (3,1,'level',1,'7.69');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (4,1,'programming',1,'7.69');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (5,1,'java',6,'46.15');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (6,1,'language',2,'15.38');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (7,1,'high',1,'7.69');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (8,2,'file',1,'33.33');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (9,2,'dhs',1,'33.33');
insert into `t_count` (`t_no`,`f_no`,`key_word`,`weightage`,`key_rank`) values (10,2,'testing',1,'33.33');

/*Table structure for table `t_word` */

DROP TABLE IF EXISTS `t_word`;

CREATE TABLE `t_word` (
  `f_code` int(10) NOT NULL auto_increment,
  `f_word` varchar(30) default NULL,
  PRIMARY KEY  (`f_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `t_word` */

insert into `t_word` (`f_code`,`f_word`) values (1,'is');
insert into `t_word` (`f_code`,`f_word`) values (2,'was');
insert into `t_word` (`f_code`,`f_word`) values (3,'that');
insert into `t_word` (`f_code`,`f_word`) values (4,'this');
insert into `t_word` (`f_code`,`f_word`) values (5,'where');
insert into `t_word` (`f_code`,`f_word`) values (6,'the');
insert into `t_word` (`f_code`,`f_word`) values (7,'am');
insert into `t_word` (`f_code`,`f_word`) values (8,'he');
insert into `t_word` (`f_code`,`f_word`) values (9,'she');
insert into `t_word` (`f_code`,`f_word`) values (10,'it');
insert into `t_word` (`f_code`,`f_word`) values (11,'they');
insert into `t_word` (`f_code`,`f_word`) values (12,'hello');
insert into `t_word` (`f_code`,`f_word`) values (13,'are');
insert into `t_word` (`f_code`,`f_word`) values (14,'how');
insert into `t_word` (`f_code`,`f_word`) values (15,'you');
insert into `t_word` (`f_code`,`f_word`) values (17,'where');
insert into `t_word` (`f_code`,`f_word`) values (18,'short');
insert into `t_word` (`f_code`,`f_word`) values (19,'tall');
insert into `t_word` (`f_code`,`f_word`) values (20,'big');
insert into `t_word` (`f_code`,`f_word`) values (21,'with');
insert into `t_word` (`f_code`,`f_word`) values (22,'all');
insert into `t_word` (`f_code`,`f_word`) values (23,'etc');
insert into `t_word` (`f_code`,`f_word`) values (24,'see');
insert into `t_word` (`f_code`,`f_word`) values (25,'saw');
insert into `t_word` (`f_code`,`f_word`) values (26,'my');
insert into `t_word` (`f_code`,`f_word`) values (27,'am');
insert into `t_word` (`f_code`,`f_word`) values (28,'i');
insert into `t_word` (`f_code`,`f_word`) values (29,'do');
insert into `t_word` (`f_code`,`f_word`) values (30,'was');
insert into `t_word` (`f_code`,`f_word`) values (31,'is');
insert into `t_word` (`f_code`,`f_word`) values (32,'not');
insert into `t_word` (`f_code`,`f_word`) values (33,'nor');
insert into `t_word` (`f_code`,`f_word`) values (34,'either');
insert into `t_word` (`f_code`,`f_word`) values (35,'neither');
insert into `t_word` (`f_code`,`f_word`) values (36,'that');
insert into `t_word` (`f_code`,`f_word`) values (37,'over');
insert into `t_word` (`f_code`,`f_word`) values (38,'out');
insert into `t_word` (`f_code`,`f_word`) values (39,'keep');
insert into `t_word` (`f_code`,`f_word`) values (40,'and');
insert into `t_word` (`f_code`,`f_word`) values (41,'from');
insert into `t_word` (`f_code`,`f_word`) values (42,'form');
insert into `t_word` (`f_code`,`f_word`) values (43,'full');
insert into `t_word` (`f_code`,`f_word`) values (44,'the');
insert into `t_word` (`f_code`,`f_word`) values (45,'off');
insert into `t_word` (`f_code`,`f_word`) values (46,'an');
insert into `t_word` (`f_code`,`f_word`) values (47,'or');
insert into `t_word` (`f_code`,`f_word`) values (48,'had');
insert into `t_word` (`f_code`,`f_word`) values (49,'as');
insert into `t_word` (`f_code`,`f_word`) values (50,'to');
insert into `t_word` (`f_code`,`f_word`) values (51,'him');
insert into `t_word` (`f_code`,`f_word`) values (52,'self');
insert into `t_word` (`f_code`,`f_word`) values (53,'data');
insert into `t_word` (`f_code`,`f_word`) values (54,'bad');
insert into `t_word` (`f_code`,`f_word`) values (55,'free');
insert into `t_word` (`f_code`,`f_word`) values (56,'could');
insert into `t_word` (`f_code`,`f_word`) values (57,'can');
insert into `t_word` (`f_code`,`f_word`) values (58,'shall');
insert into `t_word` (`f_code`,`f_word`) values (59,'should');
insert into `t_word` (`f_code`,`f_word`) values (60,'kept');
insert into `t_word` (`f_code`,`f_word`) values (61,'also');
insert into `t_word` (`f_code`,`f_word`) values (62,'on');
insert into `t_word` (`f_code`,`f_word`) values (63,'down');
insert into `t_word` (`f_code`,`f_word`) values (64,'have');
insert into `t_word` (`f_code`,`f_word`) values (65,'has');
insert into `t_word` (`f_code`,`f_word`) values (66,'one');
insert into `t_word` (`f_code`,`f_word`) values (67,'only');
insert into `t_word` (`f_code`,`f_word`) values (68,'in');
insert into `t_word` (`f_code`,`f_word`) values (69,'therefore');
insert into `t_word` (`f_code`,`f_word`) values (70,'then');
insert into `t_word` (`f_code`,`f_word`) values (71,'take');
insert into `t_word` (`f_code`,`f_word`) values (72,'took');
insert into `t_word` (`f_code`,`f_word`) values (73,'need');
insert into `t_word` (`f_code`,`f_word`) values (74,'we');
insert into `t_word` (`f_code`,`f_word`) values (75,'you');
insert into `t_word` (`f_code`,`f_word`) values (76,'yours');
insert into `t_word` (`f_code`,`f_word`) values (77,'one');
insert into `t_word` (`f_code`,`f_word`) values (78,'your');
insert into `t_word` (`f_code`,`f_word`) values (79,'a');
insert into `t_word` (`f_code`,`f_word`) values (80,'be');
insert into `t_word` (`f_code`,`f_word`) values (81,'being');
insert into `t_word` (`f_code`,`f_word`) values (82,'because');
insert into `t_word` (`f_code`,`f_word`) values (83,'cannot');
insert into `t_word` (`f_code`,`f_word`) values (84,'would');
insert into `t_word` (`f_code`,`f_word`) values (85,'not');
insert into `t_word` (`f_code`,`f_word`) values (86,'for');
insert into `t_word` (`f_code`,`f_word`) values (87,'off');
insert into `t_word` (`f_code`,`f_word`) values (88,'of');
insert into `t_word` (`f_code`,`f_word`) values (89,'soon');
insert into `t_word` (`f_code`,`f_word`) values (90,'nothing');
insert into `t_word` (`f_code`,`f_word`) values (91,'top');
insert into `t_word` (`f_code`,`f_word`) values (92,'bottom');
insert into `t_word` (`f_code`,`f_word`) values (93,'down');
insert into `t_word` (`f_code`,`f_word`) values (94,'up');
insert into `t_word` (`f_code`,`f_word`) values (95,'list');
insert into `t_word` (`f_code`,`f_word`) values (96,'start');
insert into `t_word` (`f_code`,`f_word`) values (97,'stop');
insert into `t_word` (`f_code`,`f_word`) values (98,'how');
insert into `t_word` (`f_code`,`f_word`) values (99,'see');
insert into `t_word` (`f_code`,`f_word`) values (100,'sea');
insert into `t_word` (`f_code`,`f_word`) values (101,'these');
insert into `t_word` (`f_code`,`f_word`) values (102,'this');
insert into `t_word` (`f_code`,`f_word`) values (103,'if');
insert into `t_word` (`f_code`,`f_word`) values (104,'else');
insert into `t_word` (`f_code`,`f_word`) values (105,'much');
insert into `t_word` (`f_code`,`f_word`) values (106,'more');
insert into `t_word` (`f_code`,`f_word`) values (107,'most');
insert into `t_word` (`f_code`,`f_word`) values (108,'give');
insert into `t_word` (`f_code`,`f_word`) values (109,'gave');
insert into `t_word` (`f_code`,`f_word`) values (110,'given');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
