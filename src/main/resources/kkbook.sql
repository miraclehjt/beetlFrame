/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : kkbook

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-11-05 16:06:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kk_role
-- ----------------------------
DROP TABLE IF EXISTS `kk_role`;
CREATE TABLE `kk_role` (
  `id` varchar(32) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kk_role
-- ----------------------------
INSERT INTO `kk_role` VALUES ('2001', '超级管理员');
INSERT INTO `kk_role` VALUES ('2002', '一级管理员');
INSERT INTO `kk_role` VALUES ('2003', '二级管理员');
INSERT INTO `kk_role` VALUES ('2004', '三级管理员');
INSERT INTO `kk_role` VALUES ('2005', '普通用户');
INSERT INTO `kk_role` VALUES ('2006', '临时用户');
INSERT INTO `kk_role` VALUES ('2007', '一级测试用户');
INSERT INTO `kk_role` VALUES ('2008', '二级测试用户');
INSERT INTO `kk_role` VALUES ('2009', 'vip用户');

-- ----------------------------
-- Table structure for kk_user
-- ----------------------------
DROP TABLE IF EXISTS `kk_user`;
CREATE TABLE `kk_user` (
  `id` bigint(64) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kk_user
-- ----------------------------
INSERT INTO `kk_user` VALUES ('912143687088078848', 'admin', 'b1ba853525d0f30afe59d2d005aad96c', '2017-09-25 10:36:16');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
