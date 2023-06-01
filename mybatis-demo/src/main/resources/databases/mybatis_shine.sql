/*
Navicat MySQL Data Transfer

Source Server         : mysql8.0
Source Server Version : 80023
Source Host           : localhost:3306
Source Database       : mybatis_shine

Target Server Type    : MYSQL
Target Server Version : 80023
File Encoding         : 65001

Date: 2023-06-01 11:02:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bank`
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `id` int NOT NULL AUTO_INCREMENT,
  `salary` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('1', '10000', '李哥');
INSERT INTO `bank` VALUES ('2', '2500', '令狐冲');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', 'aa', 'henan');
INSERT INTO `department` VALUES ('2', 'ee', 'guojia');
INSERT INTO `department` VALUES ('3', 'ff', 'dianwang');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(50) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `dept_id` (`dept_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', 'bkj', '100', '1');
INSERT INTO `employee` VALUES ('2', 'cdvf', '51', '2');
INSERT INTO `employee` VALUES ('3', 'vfvf', '515', '1');
INSERT INTO `employee` VALUES ('4', 'dcdv', 'vfv', '3');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'aa', '男');
INSERT INTO `student` VALUES ('2', 'bb', '女');

-- ----------------------------
-- Table structure for `student_subject`
-- ----------------------------
DROP TABLE IF EXISTS `student_subject`;
CREATE TABLE `student_subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `student_subject_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  CONSTRAINT `student_subject_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_subject
-- ----------------------------
INSERT INTO `student_subject` VALUES ('1', '1', '1');
INSERT INTO `student_subject` VALUES ('2', '2', '2');
INSERT INTO `student_subject` VALUES ('3', '1', '2');

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `grade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', 'math', '1');
INSERT INTO `subject` VALUES ('2', 'sub', '2');

-- ----------------------------
-- Table structure for `t_books`
-- ----------------------------
DROP TABLE IF EXISTS `t_books`;
CREATE TABLE `t_books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `publish` datetime DEFAULT NULL,
  `sort` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_books
-- ----------------------------

-- ----------------------------
-- Table structure for `t_managers`
-- ----------------------------
DROP TABLE IF EXISTS `t_managers`;
CREATE TABLE `t_managers` (
  `mgr_id` int NOT NULL AUTO_INCREMENT,
  `mgr_name` varchar(50) DEFAULT NULL,
  `mgr_pwd` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mgr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_managers
-- ----------------------------
INSERT INTO `t_managers` VALUES ('1', 'aaa', '111');
INSERT INTO `t_managers` VALUES ('2', 'fdvf', 'gbdd');

-- ----------------------------
-- Table structure for `t_order`
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for `t_passengers`
-- ----------------------------
DROP TABLE IF EXISTS `t_passengers`;
CREATE TABLE `t_passengers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_passengers
-- ----------------------------
INSERT INTO `t_passengers` VALUES ('1', 'lige', '111', '2020-10-12 20:58:29');
INSERT INTO `t_passengers` VALUES ('2', 'wanger', '222', '2020-10-28 20:58:45');

-- ----------------------------
-- Table structure for `t_passports`
-- ----------------------------
DROP TABLE IF EXISTS `t_passports`;
CREATE TABLE `t_passports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nationality` varchar(50) DEFAULT NULL,
  `expire` datetime DEFAULT NULL,
  `passenger_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `passenger_id` (`passenger_id`),
  CONSTRAINT `FK_Name` FOREIGN KEY (`passenger_id`) REFERENCES `t_passengers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_passports
-- ----------------------------
INSERT INTO `t_passports` VALUES ('1', 'zhongguo', '2020-10-12 20:59:03', '1');
INSERT INTO `t_passports` VALUES ('2', 'en', '2020-10-13 20:59:25', '2');

-- ----------------------------
-- Table structure for `t_product`
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES ('5', 'laoli');
INSERT INTO `t_product` VALUES ('6', 'laoli');
INSERT INTO `t_product` VALUES ('7', 'laoli');

-- ----------------------------
-- Table structure for `t_users`
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `registTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('2', '小李哥', '123', '1', '2021-04-14 16:23:41', '2021-04-13 16:23:46');
INSERT INTO `t_users` VALUES ('3', '可以哥', '123', '0', '2021-04-02 16:24:03', '2021-04-03 16:24:07');
INSERT INTO `t_users` VALUES ('4', '张三', '666666', '男', '2021-06-30 15:47:33', null);
INSERT INTO `t_users` VALUES ('6', '李哥', '123456', '1', '2021-06-30 15:17:54', '2021-06-30 15:17:57');
INSERT INTO `t_users` VALUES ('7', '李四', '666666', '女', '2021-06-30 15:52:09', '2021-06-30 15:52:09');
