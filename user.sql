/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : 127.0.0.1:3306
 Source Schema         : gms

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 17/06/2020 14:55:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(6) NOT NULL COMMENT '学号/教职工号',
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `role` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `idnumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号码',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Email',
  `birthday` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生年月',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通讯地址',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1', '张三', 'supermanager', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (2, '2', '李四', 'student', '111', '1111', '199111@qq.com', '2020-06-11', 'qqqq');
INSERT INTO `user` VALUES (3, '3', '狗剩', 'manager', '111', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (4, '4', '张强', 'manager', '111', NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (5, '5', '二狗', 'manager', '1111', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
