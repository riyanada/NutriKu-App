/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100519 (10.5.19-MariaDB-log)
 Source Host           : localhost:3306
 Source Schema         : caps-learn-jwt

 Target Server Type    : MariaDB
 Target Server Version : 100519 (10.5.19-MariaDB-log)
 File Encoding         : 65001

 Date: 03/02/2024 00:55:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for foods
-- ----------------------------
DROP TABLE IF EXISTS `foods`;
CREATE TABLE `foods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_makanan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kalori_kcal` float NULL DEFAULT NULL,
  `kolestrol_mg` int(11) NULL DEFAULT NULL,
  `lemak_g` float NULL DEFAULT NULL,
  `karbohidrat_g` float NULL DEFAULT NULL,
  `protein_g` float NULL DEFAULT NULL,
  `kalium_mg` int(11) NULL DEFAULT NULL,
  `nutrisi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ingredient` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdAt` datetime NULL DEFAULT NULL,
  `updatedAt` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foods
-- ----------------------------
INSERT INTO `foods` VALUES (1, 'Air', 'air', 0, 0, 0, 0, 0, 0, '-', '-', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (2, 'Anggurs', 'anggurs', 30, 0, 0.2, 6.8, 0, 0, 'Vitamin C, Vitamin B1', '-', '2024-02-02 19:23:49', '2023-12-22 10:39:51');
INSERT INTO `foods` VALUES (3, 'Apel', 'apel', 52, 0, 0.17, 13.81, 0.26, 107, 'Vitamin C, Vitamin A', '-', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (4, 'Ayam', 'ayam', 245.9, 87, 14.55, 10.76, 21.93, 323, '-', 'Daging Ayam, Garam', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (5, 'Ayam Betutu', 'ayam_betutu', 425, 72, 34.8, 6.32, 22.6, 344, '-', 'Ayam, Telur, Cabai, Garam, Tepung Maizena, Bawang', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (6, 'Bakso', 'bakso', 283, 233, 11.59, 6.74, 1.99, 79, '-', 'Daging Sapi, Garam, Tepung Sagu, Bawang, Kaldu Sapi, Baking Powder', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (7, 'Bakwan', 'bakwan', 137, 29, 14.92, 29.14, 1.99, 74, '-', 'Wortel, Tauge, Kol, Daun Bawang, Bawang, Merica, Garam, Tepung Terigu, Tepung Beras, Telur', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (8, 'Batagor', 'batagor', 290, 43, 14.92, 32.1, 10.28, 258, '-', 'Ikan, Udang, Ayam, Telur, Kacang, Tahu, Tepung Terigu, Bawang, Garam, Gula Merah, Kecap Manis,', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (9, 'Bubur', 'bubur', 72, 0, 0.54, 15.26, 1.5, 54, '-', '-', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (10, 'Burger', 'burger', 258, 47, 7.8, 32.1, 12.8, 189, '-', 'Daging, Roti, Selada, Tomat, Acar, Keju', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (11, 'Cakwe', 'cakwe', 209, 28, 9.92, 26.68, 3.3, 0, '-', 'Tepung, Gula, Garam, Soda Kue, Ragi', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (12, 'Capcay', 'capcay', 67, 0, 2.59, 9.67, 1.58, 212, 'Vitamin A, Vitamin C, Vitamin B1, Vitamin B2', 'Udang, Wortel, Kol, Sawi Putih, Jagung Muda, Brokoli, Buncis, Udang, Bawang, Tepung Jagung', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (13, 'Crepes', 'crepes', 112, 78, 5.54, 10.83, 4.38, 79, '-', 'Telur, Gula, Tepung Terigu, Tepung Beras, Tepung Maizena', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (14, 'Cumi', 'cumi', 174.9, 260, 7, 8, 18, 246, '-', 'Cumi, Garam, Bawang, Minyak', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (15, 'Donat', 'donat', 250, 34, 11.94, 34.44, 2.7, 64, '-', 'Tepung, Gula, Telur, Garam, Margarin', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (16, 'Durian', 'durian', 147, 0, 5.33, 27.09, 1.47, 436, ' Vitamin B1, Vitamin B2', '-', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (17, 'Es Krim', 'es_krim', 100, 0, 3.5, 13, 1, 0, '-', 'Gelatin, Susu, Krim, Gula, Perasa Sintetis', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (18, 'Fu Yung Hai', 'fuyunghai', 131, 215, 9.71, 3.61, 7.55, 144, '-', 'Telur, Garam, Bawang, Udang, Wortel', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (19, 'Gudeg', 'gudeg', 456, 34, 12, 53, 34, 0, '-', 'Telur, Santan, Garam, Nangka Muda, Gula Merah, Cabai, Ayam, Nasi', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (20, 'Ikan', 'ikan', 84, 58, 0.92, 10.76, 17.76, 351, '-', 'Ikan, Garam, Bawang', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (21, 'Jeruk', 'jeruk', 62, 0, 0.2, 15.39, 0, 0, 'Vitamin A, Vitamin C', '-', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (22, 'Kacang', 'kacang', 567, 0, 49.24, 41, 3.4, 705, '-', '-', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (23, 'Kebab', 'kebab', 159, 13, 4.27, 19.77, 9.71, 0, '-', 'Tortila, Daging Sapi, Selada, Tomat, Garam, Bawang, Mayonaise, Timun, Yogurt, Margarin', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (24, 'Kentang', 'kentang', 311, 0, 15, 41, 3.4, 300, '-', '-', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (25, 'Kerupuk', 'kerupuk', 65, 0, 2.11, 10.4, 0.83, 9, '-', 'Tepung Terigu, Tepung Tapioka, Bawang Putih, Garam', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (26, 'Kopi', 'kopi', 2, 0, 0, 0, 0, 0, 'Kafein, Magnesium, Kalsium ', 'Biji Kopi, Gula', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (27, 'Mie', 'mie', 219, 46, 3.3, 40.02, 7.22, 61, '-', 'Telur Ayam, Minyak Goreng, Tepung Terigu', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (28, 'Nasi Kuning', 'nasi_kuning', 150, 0, 0.27, 32.96, 2.99, 70, '-', 'Kunyit', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (29, 'Pempek', 'pempek', 335, 185, 4.97, 22.51, 25.83, 48, '-', 'Telur, Ikan, Cuka, Mie, Tepung Sagu, Garam, Cabai, Merica', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (30, 'Rawon', 'rawon', 288, 69, 17.84, 8.38, 23.13, 0, '-', 'Daging Sapi, Garam, Asam Jawa, Bawang, Keluak, Telur Asin, Tauge, Cabai', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (31, 'Nasi', 'nasi', 129, 0, 0.28, 27.9, 47.23, 35, '-', '-', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (32, 'Sate', 'sate', 225, 49, 14.82, 4.87, 19.54, 0, '-', 'Ayam, Garam, Gula Merah, Kacang Tanah, Kecap Manis, Bawang', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (33, 'Serabi', 'serabi', 108, 0, 1.8, 21.05, 1.59, 35, '-', 'Tepung Beras, Santan, Susu Kental Manis, Kelapa', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (34, 'Soto', 'soto', 312, 129, 14.92, 19.55, 24.01, 0, '-', 'Daging Ayam, Garam, Nasi, Telur, Kunyit, Bawang, Mie Bihun, Koya, Serai', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (35, 'Tahu', 'tahu', 35, 0, 2.62, 1.36, 2.23, 19, '-', 'Kedelai', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (36, 'Roti', 'roti', 264, 0, 1.3, 55.81, 9.61, 239, '-', 'Tepung, Gula, Garam, Soda Kue, Ragi', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (37, 'Tempe', 'tempe', 193, 0, 10.8, 9.39, 18.54, 412, '-', 'Kedelai', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (39, 'Gado Gado', 'gado', 193, 0, 10.8, 9.39, 18.54, 412, '-', 'Kedelai', '2024-02-02 19:23:49', NULL);
INSERT INTO `foods` VALUES (41, 'Rendang', 'rendang', 456, 34, 12, 53, 34, 0, '-', 'Telur, Santan, Garam, Nangka Muda, Gula Merah, Cabai, Ayam, Nasi', '2024-02-02 19:23:49', NULL);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'user', '2023-12-22 10:11:03', '2023-12-22 10:11:03');
INSERT INTO `roles` VALUES (2, 'moderator', '2023-12-22 10:11:03', '2023-12-22 10:11:03');
INSERT INTO `roles` VALUES (3, 'admin', '2023-12-22 10:11:03', '2023-12-22 10:11:03');

-- ----------------------------
-- Table structure for tutorials
-- ----------------------------
DROP TABLE IF EXISTS `tutorials`;
CREATE TABLE `tutorials`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `published` tinyint(1) NULL DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tutorials
-- ----------------------------

-- ----------------------------
-- Table structure for user_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles`  (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_roles
-- ----------------------------
INSERT INTO `user_roles` VALUES ('2023-12-26 15:31:13', '2023-12-26 15:31:13', 1, 1);
INSERT INTO `user_roles` VALUES ('2023-12-26 15:31:13', '2023-12-26 15:31:13', 1, 3);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'riyanada', 'riyanmaulana402@yahoo.co.id', '$2a$08$gOy1WembuGQHUXSxEXbXdOmrFnHYFmW.AWUg5N2qA1anWinLNF4Xm', '2023-12-26 15:31:12', '2023-12-26 15:31:12');

SET FOREIGN_KEY_CHECKS = 1;
