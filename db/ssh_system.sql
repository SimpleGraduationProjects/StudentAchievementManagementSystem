/*
Navicat MySQL Data Transfer

Source Server         : 47.107.227.121
Source Server Version : 50562
Source Host           : 47.107.227.121:3306
Source Database       : ssh_system

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2020-07-11 01:46:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseId` varchar(4) NOT NULL,
  `courseName` varchar(16) DEFAULT NULL,
  `courseDate` smallint(6) DEFAULT NULL,
  `student` smallint(6) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('12', '语文', '6', '56', '4');
INSERT INTO `course` VALUES ('13', '物理', '3', '2', '63');
INSERT INTO `course` VALUES ('14', '数学', '3', '45', '2');
INSERT INTO `course` VALUES ('15', '英语', '8', '60', '8');
INSERT INTO `course` VALUES ('17', '化学', '3', '2', '63');
INSERT INTO `course` VALUES ('35', '生物', '3', '2', '63');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(6) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `majorName` varchar(20) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `teacher` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '计算机科学与技术', '2', '张老师');
INSERT INTO `major` VALUES ('2', '电气专业', '3', '李老师');
INSERT INTO `major` VALUES ('3', '智能专业', '4', '王老师');
INSERT INTO `major` VALUES ('4', '通信专业', '6', '冉老师');

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `studentId` varchar(6) NOT NULL,
  `courseId` varchar(4) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`studentId`,`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO `score` VALUES ('123451', '15', '89', '8');
INSERT INTO `score` VALUES ('123455', '15', '12', '0');
INSERT INTO `score` VALUES ('123456', '1222', '87', '4');
INSERT INTO `score` VALUES ('123456', '123', '87', '23');
INSERT INTO `score` VALUES ('123456', '14', '100', '2');
INSERT INTO `score` VALUES ('123458', '12', '67', '4');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentId` varchar(6) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sex` tinyint(4) DEFAULT NULL,
  `birthDate` datetime DEFAULT NULL,
  `totalCredits` int(11) DEFAULT NULL,
  `other` text,
  `majorId` int(11) DEFAULT NULL,
  `photo` tinyblob,
  PRIMARY KEY (`studentId`),
  KEY `FK8FFE823B983098DD` (`majorId`),
  CONSTRAINT `FK8FFE823B983098DD` FOREIGN KEY (`majorId`) REFERENCES `major` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('123451', '王一', '0', '2020-07-08 23:17:57', '100', '无', '2', null);
INSERT INTO `student` VALUES ('123452', '王二', '1', '2020-07-08 23:17:57', '120', '无', '2', null);
INSERT INTO `student` VALUES ('123453', '王三', '0', '2020-07-08 23:17:57', '99', '无', '2', null);
INSERT INTO `student` VALUES ('123454', '王四', '1', '2020-07-08 23:17:57', '130', '无', '3', null);
INSERT INTO `student` VALUES ('123455', '王五', '0', '2020-07-08 23:17:57', '128', '无', '3', null);
INSERT INTO `student` VALUES ('123456', '张三', '1', '2020-07-08 23:17:57', '123', '无', '1', null);
INSERT INTO `student` VALUES ('123457', '李四', '0', '2020-07-08 23:17:57', '111', '无', '1', null);
INSERT INTO `student` VALUES ('123458', '王六', '1', '2020-07-08 23:17:57', '111', '无', '3', null);
