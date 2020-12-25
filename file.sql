/*
 Navicat Premium Data Transfer

 Source Server         : 59.110.63.222
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : 59.110.63.222:3308
 Source Schema         : activiti7

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 11/12/2020 10:14:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `statue` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES (1, 'hql', '1', 0);
INSERT INTO `file` VALUES (2, 'qhl', '2', 0);
INSERT INTO `file` VALUES (3, 'lqh', '3', 0);
INSERT INTO `file` VALUES (4, 'lhq', '4', 0);
INSERT INTO `file` VALUES (5, 'qlh', '5', 0);
INSERT INTO `file` VALUES (6, 'hlq', '6', 0);

SET FOREIGN_KEY_CHECKS = 1;
