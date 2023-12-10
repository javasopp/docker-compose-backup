/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3307
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 10/12/2023 19:18:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='主键';

-- ----------------------------
-- Records of test
-- ----------------------------
BEGIN;
INSERT INTO `test` (`id`) VALUES (1);
INSERT INTO `test` (`id`) VALUES (3);
INSERT INTO `test` (`id`) VALUES (4);
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_infos
-- ----------------------------
DROP TABLE IF EXISTS `user_infos`;
CREATE TABLE `user_infos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `username` longtext COLLATE utf8mb4_bin,
  `password` longtext COLLATE utf8mb4_bin,
  `remarks` longtext COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `idx_user_infos_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2506811790837690406 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of user_infos
-- ----------------------------
BEGIN;
INSERT INTO `user_infos` (`id`, `created_at`, `updated_at`, `deleted_at`, `username`, `password`, `remarks`) VALUES (1579776670171058060, '2023-12-09 11:20:18.670', '2023-12-09 11:20:18.670', NULL, 'zhangsan', 'lisi', '测试zhangsan');
INSERT INTO `user_infos` (`id`, `created_at`, `updated_at`, `deleted_at`, `username`, `password`, `remarks`) VALUES (2506811790837690405, '2023-12-09 11:17:39.627', '2023-12-09 11:17:39.627', NULL, 'zhangsan', 'lisi', '测试zhangsan');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
