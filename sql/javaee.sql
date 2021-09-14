/*
 Navicat Premium Data Transfer

 Source Server         : mysql8
 Source Server Type    : MySQL
 Source Server Version : 80017
 Source Host           : localhost:3306
 Source Schema         : javaee

 Target Server Type    : MySQL
 Target Server Version : 80017
 File Encoding         : 65001

 Date: 05/08/2021 19:01:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `isbn` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float NULL DEFAULT NULL,
  PRIMARY KEY (`isbn`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (' 9787111295440', '设计模式之禅', 69);
INSERT INTO `book` VALUES (' 9787121046186', '代码大全', 15);
INSERT INTO `book` VALUES ('9787111213826', 'Java编程思想', 108);
INSERT INTO `book` VALUES ('9787111255833', 'Effective java', 52);
INSERT INTO `book` VALUES ('9787111370048', 'Java并发编程实战', 69);
INSERT INTO `book` VALUES ('9787115244901', '代码整洁之道', 59);
INSERT INTO `book` VALUES ('9787302387381', 'Java 8编程入门官方教程', 69);
INSERT INTO `book` VALUES ('9787505397194', '程序员修炼之道', 48);
INSERT INTO `book` VALUES ('9787508344980', 'Head First Java', 79);
INSERT INTO `book` VALUES ('9787564114213', '深入浅出面向对象分析与设计', 98);
INSERT INTO `book` VALUES ('9789867794529', '深入浅出设计模式', 42.5);
INSERT INTO `book` VALUES ('9887115417305', 'Spring 实战', 89);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `sno` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(10) NULL DEFAULT NULL,
  `score` float NULL DEFAULT NULL,
  PRIMARY KEY (`sno`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201908024421', '小欢', '女', 18, 99.5);
INSERT INTO `student` VALUES ('201908024422', '小明', '男', 19, 85.5);
INSERT INTO `student` VALUES ('201908024423', '小李', '男', 20, 80.5);
INSERT INTO `student` VALUES ('201908024424', '李勇', '男', 18, 75.5);
INSERT INTO `student` VALUES ('201908024425', '刘晨', '女', 17, 70);
INSERT INTO `student` VALUES ('201908024426', '王敏', '女', 21, 69);
INSERT INTO `student` VALUES ('201908024427', '张立', '男', 18, 55.5);

SET FOREIGN_KEY_CHECKS = 1;
