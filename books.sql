/*
Navicat MySQL Data Transfer

Source Server         : LocalMysql
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : books

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-12-26 17:00:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET gbk COLLATE gbk_bin NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` int(2) DEFAULT '1',
  `lend_num` int(11) DEFAULT NULL,
  `max_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '1560704201', '李同学', '123', '123@qq.com', '18888888888', '1', '31', '5');
INSERT INTO `admin` VALUES ('2', '100', 'admin', '123', '1560704202', '18888888886', '2', '13', '13');
INSERT INTO `admin` VALUES ('4', '1560704202', '小杜', '123', '123456@qq.com', '18888100888', '1', '30', '5');
INSERT INTO `admin` VALUES ('5', '1560704204', '小吴同学', '123', '123456@qq.co', '18888100666', '1', '30', '5');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(205) NOT NULL,
  `card` varchar(205) CHARACTER SET utf8 NOT NULL,
  `autho` varchar(205) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `press` varchar(205) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `ISBN` (`card`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('4', 'java从入门到精通', '12', '国家863中部软件孵化器', '10', '人民邮电出版社', '教学参考资料');
INSERT INTO `book` VALUES ('2', 'C语言程序设计实验指导', '5', '彭晏飞', '5', '中国矿业大学出版社', '教材');
INSERT INTO `book` VALUES ('3', '小时代2.0虚铜时代', '6', '郭敬明', '4', '长江文艺出版社', '中国-当代');
INSERT INTO `book` VALUES ('5', '高等数学引论', '9', '华罗庚', '9', '高等教育出版社', '教材');
INSERT INTO `book` VALUES ('6', '盗墓笔记', '6176', '南派三叔', '100', '上海文化出版社', '中国-当代');

-- ----------------------------
-- Table structure for booktype
-- ----------------------------
DROP TABLE IF EXISTS `booktype`;
CREATE TABLE `booktype` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of booktype
-- ----------------------------
INSERT INTO `booktype` VALUES ('1', '教学参考资料');
INSERT INTO `booktype` VALUES ('2', '中国-当代');
INSERT INTO `booktype` VALUES ('4', '教材');

-- ----------------------------
-- Table structure for history
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `hid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `card` char(255) DEFAULT NULL,
  `bookname` char(255) DEFAULT NULL,
  `adminname` char(255) DEFAULT NULL,
  `username` char(255) DEFAULT NULL,
  `begintime` char(255) DEFAULT NULL,
  `endtime` char(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`hid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('10', '1', '3', '6', '小时代2.0虚铜时代', '1560704201', '李同学', '2018-11-26', '2018-12-26', '1');
INSERT INTO `history` VALUES ('11', '1', '6', '6176', '盗墓笔记', '1560704201', '李同学', '2018-11-26', '2018-12-26', '1');
