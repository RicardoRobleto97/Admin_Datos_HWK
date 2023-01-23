/*
 Navicat Premium Data Transfer

 Source Server         : Home
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : universidad

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 22/01/2023 21:07:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for detalle
-- ----------------------------
DROP TABLE IF EXISTS `detalle`;
CREATE TABLE `detalle`  (
  `idDetalle` bigint(255) NOT NULL AUTO_INCREMENT,
  `idHorario` bigint(255) NULL DEFAULT NULL,
  `dia` int(255) NULL DEFAULT NULL COMMENT '1= Laborable 2= Sabado 3 = Domingo/Feriado',
  `idPeriodo` bigint(255) NULL DEFAULT NULL,
  `fecha` date NULL DEFAULT NULL,
  PRIMARY KEY (`idDetalle`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of detalle
-- ----------------------------
INSERT INTO `detalle` VALUES (1, 1, 1, 1, '2023-01-22');
INSERT INTO `detalle` VALUES (2, 2, 1, 1, '2023-01-21');
INSERT INTO `detalle` VALUES (3, 3, 2, 1, '2023-01-22');
INSERT INTO `detalle` VALUES (4, 4, 2, 1, '2023-01-21');
INSERT INTO `detalle` VALUES (5, NULL, 3, 1, '2023-01-24');
INSERT INTO `detalle` VALUES (6, 5, 1, 2, '2023-01-22');
INSERT INTO `detalle` VALUES (7, 6, 1, 2, '2023-01-21');
INSERT INTO `detalle` VALUES (8, 7, 1, 2, '2023-01-24');
INSERT INTO `detalle` VALUES (9, 8, 2, 2, '2023-01-22');
INSERT INTO `detalle` VALUES (10, 10, 2, 2, '2023-01-21');
INSERT INTO `detalle` VALUES (11, 9, 2, 2, '2023-01-22');
INSERT INTO `detalle` VALUES (12, 11, 3, 2, '2023-01-21');
INSERT INTO `detalle` VALUES (13, 12, 3, 2, '2023-01-22');
INSERT INTO `detalle` VALUES (14, 13, 1, 3, '2023-01-21');
INSERT INTO `detalle` VALUES (15, 14, 2, 3, '2023-01-22');
INSERT INTO `detalle` VALUES (16, 14, 3, 3, '2023-01-24');
INSERT INTO `detalle` VALUES (17, 16, 3, 3, '2023-01-22');
INSERT INTO `detalle` VALUES (18, 17, 3, 3, '2023-01-22');

-- ----------------------------
-- Table structure for horarios
-- ----------------------------
DROP TABLE IF EXISTS `horarios`;
CREATE TABLE `horarios`  (
  `idHorario` bigint(255) NOT NULL AUTO_INCREMENT,
  `horaInicio` int(6) NULL DEFAULT NULL,
  `horaFinal` int(6) NULL DEFAULT NULL,
  PRIMARY KEY (`idHorario`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of horarios
-- ----------------------------
INSERT INTO `horarios` VALUES (1, 10, 16);
INSERT INTO `horarios` VALUES (2, 18, 22);
INSERT INTO `horarios` VALUES (3, 12, 13);
INSERT INTO `horarios` VALUES (4, 19, 20);
INSERT INTO `horarios` VALUES (5, 5, 10);
INSERT INTO `horarios` VALUES (6, 16, 18);
INSERT INTO `horarios` VALUES (7, 22, 24);
INSERT INTO `horarios` VALUES (8, 6, 12);
INSERT INTO `horarios` VALUES (9, 20, 24);
INSERT INTO `horarios` VALUES (10, 13, 19);
INSERT INTO `horarios` VALUES (11, 11, 13);
INSERT INTO `horarios` VALUES (12, 17, 23);
INSERT INTO `horarios` VALUES (13, 0, 5);
INSERT INTO `horarios` VALUES (14, 0, 6);
INSERT INTO `horarios` VALUES (15, 0, 11);
INSERT INTO `horarios` VALUES (16, 13, 17);
INSERT INTO `horarios` VALUES (17, 23, 24);

-- ----------------------------
-- Table structure for periodos
-- ----------------------------
DROP TABLE IF EXISTS `periodos`;
CREATE TABLE `periodos`  (
  `idPeriodo` bigint(255) NOT NULL AUTO_INCREMENT,
  `nombrePeriodo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idPeriodo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of periodos
-- ----------------------------
INSERT INTO `periodos` VALUES (1, 'Periodo de Punta');
INSERT INTO `periodos` VALUES (2, 'Periodo Intermedio');
INSERT INTO `periodos` VALUES (3, 'Periodo de Valle');

SET FOREIGN_KEY_CHECKS = 1;
