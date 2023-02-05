/*
 Navicat Premium Data Transfer

 Source Server         : MySQL-LOCAL
 Source Server Type    : MariaDB
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : capstone

 Target Server Type    : MariaDB
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 05/02/2023 21:54:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address_table
-- ----------------------------
DROP TABLE IF EXISTS `address_table`;
CREATE TABLE `address_table`  (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `strees_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `barangay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `city/municipality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `postal_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for artist_table
-- ----------------------------
DROP TABLE IF EXISTS `artist_table`;
CREATE TABLE `artist_table`  (
  `artist_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_id` int(11) NULL DEFAULT NULL,
  `open_for_commission` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`artist_id`) USING BTREE,
  INDEX `address_id`(`address_id`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  CONSTRAINT `artist_table_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address_table` (`address_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `artist_table_ibfk_2` FOREIGN KEY (`email`) REFERENCES `sign_in_credentials` (`email`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for base_table
-- ----------------------------
DROP TABLE IF EXISTS `base_table`;
CREATE TABLE `base_table`  (
  `base_id` int(11) NOT NULL AUTO_INCREMENT,
  `base_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`base_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for buyer_table
-- ----------------------------
DROP TABLE IF EXISTS `buyer_table`;
CREATE TABLE `buyer_table`  (
  `buyer_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `contact_number` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`buyer_id`) USING BTREE,
  INDEX `email`(`email`) USING BTREE,
  INDEX `address_id`(`address_id`) USING BTREE,
  CONSTRAINT `buyer_table_ibfk_1` FOREIGN KEY (`email`) REFERENCES `sign_in_credentials` (`email`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `buyer_table_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `address_table` (`address_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for medium_table
-- ----------------------------
DROP TABLE IF EXISTS `medium_table`;
CREATE TABLE `medium_table`  (
  `medium_id` int(11) NOT NULL AUTO_INCREMENT,
  `medium_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`medium_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for ordered_item_table
-- ----------------------------
DROP TABLE IF EXISTS `ordered_item_table`;
CREATE TABLE `ordered_item_table`  (
  `ordered_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`ordered_item_id`) USING BTREE,
  INDEX `product_id`(`product_id`) USING BTREE,
  CONSTRAINT `ordered_item_table_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_table` (`product_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for payment_method_table
-- ----------------------------
DROP TABLE IF EXISTS `payment_method_table`;
CREATE TABLE `payment_method_table`  (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`payment_method_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for product_table
-- ----------------------------
DROP TABLE IF EXISTS `product_table`;
CREATE TABLE `product_table`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `artist_id` int(11) NULL DEFAULT NULL,
  `length` double NULL DEFAULT NULL,
  `width` double NULL DEFAULT NULL,
  `height` double NULL DEFAULT NULL,
  `base_id` int(11) NULL DEFAULT NULL,
  `medium_id` int(11) NULL DEFAULT NULL,
  `date_created` datetime NULL DEFAULT NULL,
  `art_style` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `coa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `frame` tinyint(1) NULL DEFAULT NULL,
  `product_preview` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `price` double NULL DEFAULT NULL,
  `is_sculpture` tinyint(1) NULL DEFAULT NULL,
  `sold` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `artist_id`(`artist_id`) USING BTREE,
  INDEX `base_id`(`base_id`) USING BTREE,
  INDEX `medium_id`(`medium_id`) USING BTREE,
  CONSTRAINT `product_table_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artist_table` (`artist_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_table_ibfk_2` FOREIGN KEY (`base_id`) REFERENCES `base_table` (`base_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `product_table_ibfk_3` FOREIGN KEY (`medium_id`) REFERENCES `medium_table` (`medium_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sign_in_credentials
-- ----------------------------
DROP TABLE IF EXISTS `sign_in_credentials`;
CREATE TABLE `sign_in_credentials`  (
  `email` varchar(320) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for transaction_table
-- ----------------------------
DROP TABLE IF EXISTS `transaction_table`;
CREATE TABLE `transaction_table`  (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `buyer_id` int(11) NULL DEFAULT NULL,
  `date_of_transaction` datetime NULL DEFAULT NULL,
  `order_item_id` int(11) NULL DEFAULT NULL,
  `payment_method_id` int(11) NULL DEFAULT NULL,
  `total_price` double NULL DEFAULT NULL,
  PRIMARY KEY (`transaction_id`) USING BTREE,
  INDEX `buyer_id`(`buyer_id`) USING BTREE,
  INDEX `order_item_id`(`order_item_id`) USING BTREE,
  INDEX `payment_method_id`(`payment_method_id`) USING BTREE,
  CONSTRAINT `transaction_table_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `buyer_table` (`buyer_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `transaction_table_ibfk_2` FOREIGN KEY (`order_item_id`) REFERENCES `ordered_item_table` (`ordered_item_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `transaction_table_ibfk_3` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method_table` (`payment_method_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
