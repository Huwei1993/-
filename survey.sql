/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : survey

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2016-07-07 14:04:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `module`
-- ----------------------------
DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `mid` int(10) NOT NULL auto_increment,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY  (`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of module
-- ----------------------------

-- ----------------------------
-- Table structure for `permission`
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `peid` int(10) NOT NULL auto_increment,
  `level` int(2) NOT NULL,
  PRIMARY KEY  (`peid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '1');
INSERT INTO `permission` VALUES ('2', '2');
INSERT INTO `permission` VALUES ('3', '3');

-- ----------------------------
-- Table structure for `problem`
-- ----------------------------
DROP TABLE IF EXISTS `problem`;
CREATE TABLE `problem` (
  `pid` int(20) NOT NULL auto_increment,
  `question` varchar(255) NOT NULL,
  `aanswer` varchar(255) NOT NULL,
  `banswer` varchar(255) NOT NULL,
  `canswer` varchar(255) NOT NULL,
  `danswer` varchar(255) NOT NULL,
  `agrade` int(2) NOT NULL,
  `bgrade` int(2) NOT NULL,
  `cgrade` int(2) NOT NULL,
  `dgrade` int(2) NOT NULL,
  `ptid` int(10) NOT NULL,
  `other` varchar(255) default NULL,
  PRIMARY KEY  (`pid`),
  KEY `fk_ptid` (`ptid`),
  CONSTRAINT `fk_ptid` FOREIGN KEY (`ptid`) REFERENCES `problemtype` (`ptid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problem
-- ----------------------------

-- ----------------------------
-- Table structure for `problemtype`
-- ----------------------------
DROP TABLE IF EXISTS `problemtype`;
CREATE TABLE `problemtype` (
  `ptid` int(10) NOT NULL auto_increment,
  `ptype` varchar(10) NOT NULL,
  PRIMARY KEY  (`ptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of problemtype
-- ----------------------------
INSERT INTO `problemtype` VALUES ('1', '选择题');
INSERT INTO `problemtype` VALUES ('2', '判断题');
INSERT INTO `problemtype` VALUES ('3', '简答题');

-- ----------------------------
-- Table structure for `questionnaire`
-- ----------------------------
DROP TABLE IF EXISTS `questionnaire`;
CREATE TABLE `questionnaire` (
  `qid` int(20) NOT NULL auto_increment,
  `name` varchar(20) NOT NULL,
  `uid` int(10) NOT NULL,
  `etime` date default NULL,
  `stime` date default NULL,
  `ftime` date default NULL,
  `explain` varchar(255) default NULL,
  `mid` int(10) NOT NULL,
  PRIMARY KEY  (`qid`),
  KEY `fk_uid` (`uid`),
  KEY `fk_mid` (`mid`),
  CONSTRAINT `fk_mid` FOREIGN KEY (`mid`) REFERENCES `module` (`mid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_uid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaire
-- ----------------------------

-- ----------------------------
-- Table structure for `questionnaireandanswer`
-- ----------------------------
DROP TABLE IF EXISTS `questionnaireandanswer`;
CREATE TABLE `questionnaireandanswer` (
  `qaid` int(10) NOT NULL auto_increment,
  `pid` int(20) NOT NULL,
  `qid` int(10) NOT NULL,
  PRIMARY KEY  (`qaid`),
  KEY `fk_qid` (`qid`),
  KEY `fk_pid` (`pid`),
  CONSTRAINT `fk_pid` FOREIGN KEY (`pid`) REFERENCES `problem` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_qid` FOREIGN KEY (`qid`) REFERENCES `questionnaire` (`qid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of questionnaireandanswer
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int(10) NOT NULL auto_increment,
  `number` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `peid` int(10) NOT NULL,
  PRIMARY KEY  (`uid`),
  KEY `fk_peid` (`peid`),
  CONSTRAINT `fk_peid` FOREIGN KEY (`peid`) REFERENCES `permission` (`peid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '789', '123', '飞哥', '456@qq.com', '1');

-- ----------------------------
-- Table structure for `useranswer`
-- ----------------------------
DROP TABLE IF EXISTS `useranswer`;
CREATE TABLE `useranswer` (
  `uid` int(10) NOT NULL,
  `qaid` int(10) NOT NULL,
  `answer` varchar(255) NOT NULL,
  PRIMARY KEY  (`uid`,`qaid`),
  KEY `fk_questionnaireandanswer` (`qaid`),
  CONSTRAINT `fk_questionnaireandanswer` FOREIGN KEY (`qaid`) REFERENCES `questionnaireandanswer` (`qaid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_userid` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of useranswer
-- ----------------------------
