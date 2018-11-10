/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : yqbd

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 01/11/2018 22:56:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `user_id` int(20) NOT NULL,
  `mission_id` int(20) NOT NULL,
  `applytime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`user_id`, `mission_id`) USING BTREE,
  INDEX `FKqwvq2t2dbqo0gnerrm4nq4tdb`(`mission_id`) USING BTREE,
  CONSTRAINT `FKfp0eaj9wr8aj6v5qlfd9luxw1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKqwvq2t2dbqo0gnerrm4nq4tdb` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`mission_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `user_id` int(20) NOT NULL,
  `mission_id` int(20) NOT NULL,
  `collecttime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`user_id`, `mission_id`) USING BTREE,
  INDEX `FKspdq0tt03733l4s07x2itffsc`(`mission_id`) USING BTREE,
  CONSTRAINT `FK5n700968hfgd6clfd5xg36hjy` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKspdq0tt03733l4s07x2itffsc` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`mission_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (3);
INSERT INTO `hibernate_sequence` VALUES (3);

-- ----------------------------
-- Table structure for judge
-- ----------------------------
DROP TABLE IF EXISTS `judge`;
CREATE TABLE `judge`  (
  `user_id` int(20) NOT NULL,
  `mission_id` int(20) NOT NULL,
  `judgetime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`user_id`, `mission_id`) USING BTREE,
  INDEX `FKtghqqifj57ibc687811hppjqa`(`mission_id`) USING BTREE,
  CONSTRAINT `FKna7n0dt1pt693iv9twjvjwmj0` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKtghqqifj57ibc687811hppjqa` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`mission_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for missions
-- ----------------------------
DROP TABLE IF EXISTS `missions`;
CREATE TABLE `missions`  (
  `mission_id` int(20) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `max_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `missionaddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `missiondeadline` datetime(0) DEFAULT NULL,
  `missionname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `missionpay` int(11) NOT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`mission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for publish
-- ----------------------------
DROP TABLE IF EXISTS `publish`;
CREATE TABLE `publish`  (
  `user_id` int(20) NOT NULL,
  `mission_id` int(20) NOT NULL,
  `publishtime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`user_id`, `mission_id`) USING BTREE,
  INDEX `FKbv3vouaicx5hs43ok85u398cq`(`mission_id`) USING BTREE,
  CONSTRAINT `FKbv3vouaicx5hs43ok85u398cq` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`mission_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKmipd1v544f0l6gcoh64lrgi9o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for take
-- ----------------------------
DROP TABLE IF EXISTS `take`;
CREATE TABLE `take`  (
  `user_id` int(20) NOT NULL,
  `mission_id` int(20) NOT NULL,
  `taketime` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`user_id`, `mission_id`) USING BTREE,
  INDEX `FKa35l6rxheubufemi26146mrck`(`mission_id`) USING BTREE,
  CONSTRAINT `FKa35l6rxheubufemi26146mrck` FOREIGN KEY (`mission_id`) REFERENCES `missions` (`mission_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FKmx91qhqdnwj4prmhire4cusu8` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(20) NOT NULL,
  `corporation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `headimage` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `realname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '1', '1', '1', '1', '1', 1, '1', '1');
INSERT INTO `user` VALUES (2, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
