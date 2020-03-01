/*
Navicat MySQL Data Transfer

Source Server         : zhupengdou
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : db_jdkf

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2019-12-23 22:55:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_admin`
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin` (
  `userId` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `userPw` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES ('1', 'a', 'a');

-- ----------------------------
-- Table structure for `t_catelog`
-- ----------------------------
DROP TABLE IF EXISTS `t_catelog`;
CREATE TABLE `t_catelog` (
  `catelog_id` int(11) NOT NULL,
  `catelog_name` varchar(50) DEFAULT NULL,
  `catelog_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`catelog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_catelog
-- ----------------------------
INSERT INTO `t_catelog` VALUES ('2', '双人房', 'no');
INSERT INTO `t_catelog` VALUES ('3', '单人房', 'no');
INSERT INTO `t_catelog` VALUES ('4', '标准房', 'no');
INSERT INTO `t_catelog` VALUES ('5', '商务房', 'no');
INSERT INTO `t_catelog` VALUES ('6', '大床房1', 'yes');
INSERT INTO `t_catelog` VALUES ('7', '你好', 'yes');

-- ----------------------------
-- Table structure for `t_gonggao`
-- ----------------------------
DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `gonggao_id` int(11) NOT NULL,
  `gonggao_title` varchar(50) DEFAULT NULL,
  `gonggao_content` varchar(5000) DEFAULT NULL,
  `gonggao_data` varchar(50) DEFAULT NULL,
  `gonggao_fabuzhe` varchar(255) DEFAULT NULL,
  `gonggao_del` varchar(50) DEFAULT NULL,
  `gonggao_one1` varchar(50) DEFAULT NULL,
  `gonggao_one2` varchar(50) DEFAULT NULL,
  `gonggao_one3` varchar(50) DEFAULT NULL,
  `gonggao_one4` varchar(50) DEFAULT NULL,
  `gonggao_one5` datetime DEFAULT NULL,
  `gonggao_one6` datetime DEFAULT NULL,
  `gonggao_one7` int(11) DEFAULT NULL,
  `gonggao_one8` int(11) DEFAULT NULL,
  PRIMARY KEY (`gonggao_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_gonggao
-- ----------------------------
INSERT INTO `t_gonggao` VALUES ('1', '本酒店部分豪华房8.8折。欢迎预订', '<strong>本酒店部分豪华房8.8折。欢迎预订</strong>', '2012-05-12 10 14:11:23', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `t_gonggao` VALUES ('2', '欢迎预订本酒店客房。预订送大礼', '<strong>欢迎预订本酒店客房。预订送大礼</strong>', '2012-05-12 10 14:11:23', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `t_kefang`
-- ----------------------------
DROP TABLE IF EXISTS `t_kefang`;
CREATE TABLE `t_kefang` (
  `id` int(11) NOT NULL,
  `fangjianhao` varchar(50) DEFAULT NULL,
  `area` varchar(500) DEFAULT NULL,
  `jieshao` varchar(50) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `qianshu` int(11) DEFAULT NULL,
  `catelog_id` int(11) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kefang
-- ----------------------------
INSERT INTO `t_kefang` VALUES ('3', '2001', '66', '环境优雅，美国原装进口音响系统，一流点歌系统', '/upload/1318250906171.jpg', '200', '3', 'no');
INSERT INTO `t_kefang` VALUES ('4', '2002', '100', '环境优雅，美国原装进口音响系统，一流点歌系统', '/upload/1318250996640.jpg', '150', '3', 'no');
INSERT INTO `t_kefang` VALUES ('5', '3001', '100', '环境优雅，美国原装进口音响系统，一流点歌系统', '/upload/1318251030750.jpg', '300', '4', 'no');
INSERT INTO `t_kefang` VALUES ('6', '3002', '100', '环境优雅，美国原装进口音响系统，一流点歌系统', '/upload/1318251051078.jpg', '150', '4', 'no');
INSERT INTO `t_kefang` VALUES ('7', '4001', '100', '环境优雅，美国原装进口音响系统，一流点歌系统', '/upload/1318251154531.jpg', '480', '5', 'no');
INSERT INTO `t_kefang` VALUES ('8', '4002', '100', '环境优雅，美国原装进口音响系统，一流点歌系统', '/upload/1318251176875.jpg', '150', '5', 'no');
INSERT INTO `t_kefang` VALUES ('9', '5001', '100', '环境优雅，美国原装进口音响系统，一流点歌系统', '/upload/1318251203312.jpg', '160', '5', 'no');
INSERT INTO `t_kefang` VALUES ('10', '5002', '100', '环境优雅，美国原装进口音响系统，一流点歌系统', '/upload/1318251228437.jpg', '150', '5', 'no');
INSERT INTO `t_kefang` VALUES ('11', '1111', '11', '<p>111</p>', '/upload/1577111659467.png', '100', '3', 'yes');

-- ----------------------------
-- Table structure for `t_liuyan`
-- ----------------------------
DROP TABLE IF EXISTS `t_liuyan`;
CREATE TABLE `t_liuyan` (
  `liuyan_id` int(11) NOT NULL,
  `liuyan_title` varchar(50) DEFAULT NULL,
  `liuyan_content` varchar(5000) DEFAULT NULL,
  `liuyan_date` varchar(50) DEFAULT NULL,
  `liuyan_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`liuyan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_liuyan
-- ----------------------------

-- ----------------------------
-- Table structure for `t_pinglun`
-- ----------------------------
DROP TABLE IF EXISTS `t_pinglun`;
CREATE TABLE `t_pinglun` (
  `id` int(11) NOT NULL,
  `kefang_id` int(11) DEFAULT NULL,
  `content` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pinglun
-- ----------------------------
INSERT INTO `t_pinglun` VALUES ('1', '6', '请输入内容111', '2019-12-23 18:32');
INSERT INTO `t_pinglun` VALUES ('2', '4', '<p>酒店很干净</p>', '2019-12-23 21:55');
INSERT INTO `t_pinglun` VALUES ('3', '8', '<p>很不错</p>', '2019-12-23 22:33');

-- ----------------------------
-- Table structure for `t_ruzhu`
-- ----------------------------
DROP TABLE IF EXISTS `t_ruzhu`;
CREATE TABLE `t_ruzhu` (
  `id` int(11) NOT NULL DEFAULT '0',
  `kefang_id` int(11) DEFAULT NULL,
  `kehuming` varchar(255) DEFAULT NULL,
  `kehuzheng` varchar(255) DEFAULT NULL,
  `rushijian` varchar(255) DEFAULT NULL,
  `lishijian` varchar(255) DEFAULT NULL,
  `feiyong` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_ruzhu
-- ----------------------------
INSERT INTO `t_ruzhu` VALUES ('1', '3', '刘三', '3713231980', '2012-08-29 16:25', '2012-08-30 16:25', '100');
INSERT INTO `t_ruzhu` VALUES ('2', '3', '11', '111', '2019-12-23 18:33', '2019-12-25 18:33', '100');
INSERT INTO `t_ruzhu` VALUES ('3', '4', '222', '222', '2019-12-23 20:22', '2019-12-23 20:22', '100');
INSERT INTO `t_ruzhu` VALUES ('4', '3', '111', '11111', '2019-12-23 22:34', '2019-12-23 22:34', '100');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pw` varchar(50) DEFAULT NULL,
  `user_realname` varchar(50) DEFAULT NULL,
  `user_address` varchar(50) DEFAULT NULL,
  `user_sex` varchar(50) DEFAULT NULL,
  `user_tel` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_qq` varchar(50) DEFAULT NULL,
  `fujian` varchar(50) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `user_del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'liusan', '000000', '刘三', '北京路', '男', '1355555555', 'liusan@yahoo.cn', '2222', '/upload/1336708799437.jpg', '普通会员', 'no');
INSERT INTO `t_user` VALUES ('2', '11', '123456', '11', '11', '男', '11', '11', '11', '/img/none.gif', '普通会员', 'no');

-- ----------------------------
-- Table structure for `t_yuding`
-- ----------------------------
DROP TABLE IF EXISTS `t_yuding`;
CREATE TABLE `t_yuding` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `kefangId` int(11) DEFAULT NULL,
  `tianshu` int(11) DEFAULT NULL,
  `yudingzheTel` varchar(50) DEFAULT NULL,
  `shijian` varchar(50) DEFAULT NULL,
  `del` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_yuding
-- ----------------------------
INSERT INTO `t_yuding` VALUES ('4', '1', '5', '1', '2323', '2019-12-23 21:50', 'no');
