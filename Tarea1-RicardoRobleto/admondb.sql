/*
 Navicat Premium Data Transfer

 Source Server         : Home
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : admondb

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 16/01/2023 20:18:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for matches
-- ----------------------------
DROP TABLE IF EXISTS `matches`;
CREATE TABLE `matches`  (
  `match_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `host_team` bigint(255) NULL DEFAULT NULL,
  `guest_team` bigint(255) NULL DEFAULT NULL,
  `host_goals` int(255) NULL DEFAULT NULL,
  `guest_goals` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`match_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of matches
-- ----------------------------
INSERT INTO `matches` VALUES (1, 3, 2, 1, 0);
INSERT INTO `matches` VALUES (2, 1, 2, 1, 2);
INSERT INTO `matches` VALUES (3, 2, 5, 2, 2);
INSERT INTO `matches` VALUES (4, 1, 3, 1, 0);
INSERT INTO `matches` VALUES (5, 3, 5, 0, 1);

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams`  (
  `team_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `team_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`team_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES (1, 'Yankees');
INSERT INTO `teams` VALUES (2, 'Red Sox');
INSERT INTO `teams` VALUES (3, 'Astros');
INSERT INTO `teams` VALUES (4, 'Mets');
INSERT INTO `teams` VALUES (5, 'Cubs');

SET FOREIGN_KEY_CHECKS = 1;
