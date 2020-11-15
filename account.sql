/*
 Navicat Premium Data Transfer

 Source Server         : centos7_mysql
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : 192.168.234.128:3306
 Source Schema         : ssm

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 12/11/2020 10:55:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `money` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, '张三', 100);
INSERT INTO `account` VALUES (2, '哈哈', 200);
INSERT INTO `account` VALUES (3, '中国', 100);
INSERT INTO `account` VALUES (4, 'a', 100);
INSERT INTO `account` VALUES (5, 'b', 100);
INSERT INTO `account` VALUES (26, '张三', 100);
INSERT INTO `account` VALUES (32, '李四', 100);
INSERT INTO `account` VALUES (33, '张三三', 99.99);
INSERT INTO `account` VALUES (35, '张44', 99.99);

SET FOREIGN_KEY_CHECKS = 1;
