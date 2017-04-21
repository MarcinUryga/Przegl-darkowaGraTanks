/*
Navicat MySQL Data Transfer

Source Server         : TankBase
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ultratanksdatabase

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-04-21 21:32:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `history_log`
-- ----------------------------
DROP TABLE IF EXISTS `history_log`;
CREATE TABLE `history_log` (
  `id_log_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(25) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `data_logging` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `browser` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_log_history`)
) ENGINE=InnoDB AUTO_INCREMENT=913 DEFAULT CHARSET=latin1
/*!50100 PARTITION BY KEY (id_log_history)
PARTITIONS 4 */;

-- ----------------------------
-- Records of history_log
-- ----------------------------
INSERT INTO `history_log` VALUES ('25', 'tomak', '78.11.206.38', '2016-11-22 23:22:30', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.125 Safa');
INSERT INTO `history_log` VALUES ('29', 'Julia', '78.11.238.170', '2016-11-23 17:44:59', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safar');
INSERT INTO `history_log` VALUES ('33', 'marcin', '78.11.241.137', '2016-11-23 22:25:46', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.87 Safa');
INSERT INTO `history_log` VALUES ('37', 'marcin', '149.156.136.214', '2016-11-28 13:43:47', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('41', 'marcin', '149.156.136.214', '2016-11-28 13:45:29', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('45', 'asdsad', '149.156.136.214', '2016-11-28 13:53:02', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('49', 'dsa', '149.156.136.214', '2016-11-28 13:53:07', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('53', 'marcin', '78.11.241.137', '2016-12-01 18:52:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99');
INSERT INTO `history_log` VALUES ('57', 'marcin', '78.11.241.137', '2016-12-29 23:08:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('61', 'marcin', '78.11.226.75', '2017-01-08 19:27:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('65', 'marcin', '89.64.235.32', '2017-01-11 15:09:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('69', 'marcin', '217.99.202.189', '2017-01-28 13:39:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('73', 'marcin', '83.26.131.230', '2017-02-05 14:06:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('77', 'marcin', '83.26.131.230', '2017-02-05 15:38:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('81', 'marcin', '217.99.201.205', '2017-02-08 14:04:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('85', 'marcinek', '217.99.201.205', '2017-02-08 14:11:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('89', 'marcinek', '217.99.201.205', '2017-02-08 14:25:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('93', 'marcinek', '217.99.201.205', '2017-02-08 14:34:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('97', 'marcinek', '217.99.201.205', '2017-02-08 14:44:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('101', 'marcinek', '217.99.201.205', '2017-02-08 14:48:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('105', 'marcinek', '217.99.201.205', '2017-02-08 14:50:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('109', 'marcinek', '217.99.201.205', '2017-02-08 14:58:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('113', 'marcinek', '217.99.201.205', '2017-02-08 15:09:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('117', 'marcinek', '217.99.201.205', '2017-02-08 16:39:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('121', 'marcinek', '217.99.201.205', '2017-02-08 16:53:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('125', 'marcinek', '217.99.201.205', '2017-02-08 16:59:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('129', 'marcinek', '217.99.201.205', '2017-02-08 17:47:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('133', 'marcinek', '217.99.201.205', '2017-02-08 18:36:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('137', 'marcinek', '217.99.201.205', '2017-02-08 18:44:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('141', 'marcinek', '217.99.201.205', '2017-02-08 18:51:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('145', 'marcinek', '217.99.201.205', '2017-02-08 19:11:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('149', 'marcinek', '217.99.201.205', '2017-02-08 20:14:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('153', 'marcinek', '83.26.131.104', '2017-02-09 12:36:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('157', 'marcinek', '83.26.131.104', '2017-02-09 21:45:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('161', 'marcinek', '83.26.131.116', '2017-02-10 12:05:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('165', 'marcinek', '83.26.131.116', '2017-02-10 15:15:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('169', 'marcinek', '83.26.131.116', '2017-02-10 15:37:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('173', 'marcinek', '83.26.131.116', '2017-02-10 17:39:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('177', 'marcinek', '83.26.131.116', '2017-02-10 18:03:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('181', 'marcinek', '83.26.131.116', '2017-02-10 18:18:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('185', 'marcinek', '83.26.131.116', '2017-02-10 19:58:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('189', 'marcinek', '83.26.131.116', '2017-02-10 20:47:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('192', 'marcinek', '83.26.131.116', '2017-02-10 23:20:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('193', 'marcinek', '83.26.131.116', '2017-02-10 23:20:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('194', 'marcinek', '83.26.131.116', '2017-02-10 23:21:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('195', 'marcinek', '83.26.131.116', '2017-02-10 23:22:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('200', 'marcinek', '83.27.15.195', '2017-02-11 01:05:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('201', 'marcinek', '83.27.15.195', '2017-02-11 01:36:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('202', 'marcinek', '83.27.15.195', '2017-02-11 01:50:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('203', 'marcinek', '83.27.15.195', '2017-02-11 02:17:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('204', 'marcinek', '176.115.23.61', '2017-02-11 02:20:54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safar');
INSERT INTO `history_log` VALUES ('205', 'marcinek', '83.27.15.195', '2017-02-11 02:57:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('206', 'marcinek', '83.29.121.184', '2017-02-11 12:10:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('207', 'marcinek', '83.29.118.20', '2017-02-11 13:02:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('214', 'marcinek', '83.29.118.20', '2017-02-11 14:37:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('217', 'marcinek1', '83.29.118.20', '2017-02-11 14:40:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('218', 'marcinek', '83.29.118.20', '2017-02-11 15:13:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('219', 'marcinek', '83.29.118.20', '2017-02-11 15:40:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('220', 'marcinek123', '83.29.118.20', '2017-02-11 15:41:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('221', 'marcinek', '83.29.118.20', '2017-02-11 16:17:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('224', 'admin', '83.29.118.20', '2017-02-11 18:50:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('225', 'admin', '83.29.118.20', '2017-02-11 18:52:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('226', 'admin', '83.29.118.20', '2017-02-11 20:35:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('227', 'admin', '83.29.118.20', '2017-02-11 21:08:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('232', 'admin', '83.26.130.1', '2017-02-12 11:25:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('233', 'admin', '83.26.130.1', '2017-02-12 12:31:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('234', 'admin', '83.26.130.1', '2017-02-12 12:54:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('235', 'admin', '83.26.130.1', '2017-02-12 14:04:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('236', 'marcinek', '83.26.130.1', '2017-02-12 16:38:42', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safar');
INSERT INTO `history_log` VALUES ('237', 'admin', '83.26.130.1', '2017-02-12 16:41:10', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safar');
INSERT INTO `history_log` VALUES ('238', 'admin', '78.11.226.75', '2017-02-12 20:29:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('239', 'admin', '83.26.27.178', '2017-02-12 20:36:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('246', 'admin', '78.11.226.75', '2017-02-12 21:10:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('249', 'admin', '78.11.226.75', '2017-02-12 21:12:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('250', 'marcinek', '78.11.226.75', '2017-02-12 21:17:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('251', 'admin', '78.11.226.75', '2017-02-12 21:18:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('252', 'marcinek', '78.11.226.75', '2017-02-12 21:19:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('253', 'marcinek', '78.11.226.75', '2017-02-12 21:24:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('515', 'marcinek', '217.99.198.27', '2017-02-23 17:43:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('519', 'marcinek', '217.99.198.27', '2017-02-23 17:43:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('523', 'marcinek', '217.99.198.27', '2017-02-23 17:53:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('527', 'marcinek', '217.99.198.27', '2017-02-23 18:40:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('531', 'marcinek', '217.99.198.27', '2017-02-23 18:46:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('535', 'marcinek', '83.27.15.50', '2017-02-23 22:09:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('539', 'marcinek', '83.26.130.189', '2017-02-25 19:57:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('543', 'marcinek', '217.99.202.6', '2017-02-26 13:24:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('547', 'admin', '37.47.95.202', '2017-02-28 11:56:01', 'Mozilla/5.0 (Linux; Android 5.1.1; D2303 Build/18.6.A.0.182) AppleWebKit/537.36 (KHTML, like Gecko) ');
INSERT INTO `history_log` VALUES ('551', 'marcin', '::1', '2017-02-28 17:58:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('555', 'marcinek', '::1', '2017-02-28 19:31:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('559', 'mc&#039;coney', '::1', '2017-03-03 00:06:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('563', 'marcinÄ™Å‚', '::1', '2017-03-03 13:45:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('567', 'admin', '::1', '2017-03-03 14:39:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('571', 'marcinek', '::1', '2017-03-03 14:48:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('575', 'admin', '::1', '2017-03-04 13:14:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('579', 'admin', '::1', '2017-03-05 10:46:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('583', 'kuba', '::1', '2017-03-05 19:48:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('587', 'admin', '::1', '2017-03-05 20:07:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('591', 'admin', '::1', '2017-03-06 09:48:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('595', 'admin', '::1', '2017-03-06 13:32:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('599', 'marcinek', '::1', '2017-03-06 14:00:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('603', 'admin', '::1', '2017-03-06 15:04:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('607', 'admin', '::1', '2017-03-06 15:28:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('611', 'admin', '::1', '2017-03-07 00:15:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('615', 'marcinek', '::1', '2017-03-07 16:33:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('619', 'admin', '::1', '2017-03-07 17:03:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('623', 'admin', '::1', '2017-03-07 17:12:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('627', 'admin', '::1', '2017-03-07 22:53:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('631', 'admin', '::1', '2017-03-07 23:14:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('635', 'admin', '::1', '2017-03-07 23:25:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('639', 'admin', '::1', '2017-03-09 00:37:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('643', 'admin', '::1', '2017-03-09 00:41:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('647', 'admin', '::1', '2017-03-09 16:06:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('651', 'admin', '::1', '2017-03-09 23:08:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('655', 'marcinek', '::1', '2017-03-10 00:43:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('659', 'marcinek', '::1', '2017-03-11 14:05:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('663', 'marcinek', '::1', '2017-03-11 14:18:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('667', 'marcinek', '::1', '2017-03-11 14:50:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('671', 'marcinek', '::1', '2017-03-11 15:06:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('675', 'marcinek', '::1', '2017-03-11 15:22:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('679', 'marcinek', '::1', '2017-03-11 15:43:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('683', 'marcinek', '::1', '2017-03-11 17:16:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('687', 'marcinek', '::1', '2017-03-11 17:45:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('691', 'admin', '::1', '2017-03-11 18:42:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('695', 'admin', '::1', '2017-03-11 19:11:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('699', 'marcinek', '::1', '2017-03-11 19:17:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('703', 'marcinek', '::1', '2017-03-11 19:27:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('709', 'admin', '::1', '2017-03-11 20:07:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('711', 'marcinek', '::1', '2017-03-11 20:45:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('722', 'marcinek', '::1', '2017-03-12 10:25:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('723', 'admin', '::1', '2017-03-12 10:25:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('724', 'admin', '::1', '2017-03-12 10:32:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('725', 'marcinos', '::1', '2017-03-12 11:16:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('727', 'marcinos', '::1', '2017-03-12 11:19:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('735', 'admin', '::1', '2017-03-12 13:57:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('741', 'admin', '::1', '2017-03-12 22:43:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('743', 'admin', '::1', '2017-03-12 22:59:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('754', 'marcinek', '::1', '2017-03-13 12:55:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('755', 'admin', '::1', '2017-03-13 12:57:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('756', 'admin', '::1', '2017-03-13 12:59:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('757', 'admin', '::1', '2017-03-13 13:05:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('759', 'admin', '::1', '2017-03-13 16:04:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('767', 'admin', '::1', '2017-03-13 23:33:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('28', 'Julia', '78.11.238.170', '2016-11-23 17:44:33', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safar');
INSERT INTO `history_log` VALUES ('32', '', '78.11.241.137', '2016-11-23 22:25:39', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.87 Safa');
INSERT INTO `history_log` VALUES ('36', 'marcin', '149.156.136.214', '2016-11-28 13:43:18', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('40', 'marcin', '149.156.136.214', '2016-11-28 13:45:22', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('44', 'marcin', '149.156.136.214', '2016-11-28 13:53:00', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('48', '', '149.156.136.214', '2016-11-28 13:53:06', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('52', 'marcin', '149.156.136.214', '2016-11-28 14:09:53', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('56', 'marcin', '83.29.121.44', '2016-12-28 15:36:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('60', 'marcin', '78.11.226.75', '2017-01-08 13:55:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('64', 'marcin', '78.11.226.75', '2017-01-10 20:47:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('68', 'marcin', '78.11.226.75', '2017-01-21 22:53:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('72', 'marcin', '83.26.131.230', '2017-02-05 13:23:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('76', 'marcin', '83.26.131.230', '2017-02-05 14:17:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('80', 'marcin', '217.99.201.205', '2017-02-08 13:31:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('84', 'marcineczek', '217.99.201.205', '2017-02-08 14:11:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('88', 'marcinek', '217.99.201.205', '2017-02-08 14:23:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('92', 'marcinek', '217.99.201.205', '2017-02-08 14:33:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('96', 'marcinek', '217.99.201.205', '2017-02-08 14:41:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('100', 'marcinek', '217.99.201.205', '2017-02-08 14:48:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('104', 'marcinek', '217.99.201.205', '2017-02-08 14:50:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('108', 'marcinek', '217.99.201.205', '2017-02-08 14:58:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('112', 'marcinek', '217.99.201.205', '2017-02-08 15:01:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('116', 'marcinek', '217.99.201.205', '2017-02-08 15:14:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('120', 'marcinek', '217.99.201.205', '2017-02-08 16:52:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('124', 'marcinek', '217.99.201.205', '2017-02-08 16:57:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('128', 'marcinek', '217.99.201.205', '2017-02-08 17:45:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('132', 'marcinek', '217.99.201.205', '2017-02-08 18:35:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('136', 'marcinek', '217.99.201.205', '2017-02-08 18:40:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('140', 'marcinek', '217.99.201.205', '2017-02-08 18:49:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('144', 'marcinek', '217.99.201.205', '2017-02-08 19:09:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('148', 'marcinek', '217.99.201.205', '2017-02-08 20:12:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('152', 'marcinek', '83.26.131.104', '2017-02-09 11:15:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('156', 'marcinek', '83.26.131.104', '2017-02-09 21:25:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('160', 'marcinek', '83.26.131.104', '2017-02-09 23:13:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('164', 'marcinek', '83.26.131.116', '2017-02-10 14:23:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('168', 'marcinek', '83.26.131.116', '2017-02-10 15:27:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('172', 'marcinek', '83.26.131.116', '2017-02-10 17:30:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('176', 'marcinek', '83.26.131.116', '2017-02-10 18:00:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('180', 'marcinek', '83.26.131.116', '2017-02-10 18:18:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('184', 'marcinek', '83.26.131.116', '2017-02-10 19:08:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('188', 'marcinek', '83.26.131.116', '2017-02-10 20:46:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('196', 'marcinek', '83.26.131.116', '2017-02-10 23:28:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('198', 'marcinek', '83.27.15.195', '2017-02-11 00:59:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('208', 'marcinek', '83.29.118.20', '2017-02-11 13:48:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('216', 'marcinek', '83.29.118.20', '2017-02-11 14:40:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('228', 'admin', '83.29.118.20', '2017-02-11 21:19:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('230', 'admin', '83.29.118.20', '2017-02-11 22:30:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('240', 'marcinek', '78.11.226.75', '2017-02-12 20:40:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('248', 'admin', '78.11.226.75', '2017-02-12 21:11:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('256', 'marcinek', '78.11.226.75', '2017-02-12 21:27:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('258', 'marcinek', '78.11.226.75', '2017-02-12 21:39:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('260', 'marcinek', '78.11.226.75', '2017-02-12 21:41:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('262', 'sraka', '83.26.27.178', '2017-02-12 21:45:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('264', 'marcinek', '78.11.226.75', '2017-02-12 21:48:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('266', 'marcinek', '78.11.226.75', '2017-02-12 22:01:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('268', 'marcinek', '78.11.226.75', '2017-02-12 22:06:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('270', 'marcinek', '78.11.226.75', '2017-02-12 22:14:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('272', 'marcinek', '78.11.226.75', '2017-02-12 22:17:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('274', 'marcinek', '78.11.226.75', '2017-02-12 22:31:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('276', 'marcinek', '78.11.226.75', '2017-02-12 22:33:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('278', 'marcinek', '78.11.226.75', '2017-02-12 22:34:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('280', 'marcinek', '78.11.226.75', '2017-02-12 22:36:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('282', 'sraka', '83.26.27.178', '2017-02-12 22:41:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('284', 'marcinek', '78.11.226.75', '2017-02-12 23:11:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('286', 'marcinek', '78.11.226.75', '2017-02-12 23:16:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('288', 'marcinek', '78.11.226.75', '2017-02-12 23:45:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('290', 'marcinek', '78.11.226.75', '2017-02-13 01:18:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('292', 'marcinek', '78.11.226.75', '2017-02-13 01:25:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('294', 'marcinek', '78.11.226.75', '2017-02-13 01:29:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('296', 'qwertyuiop', '78.11.226.75', '2017-02-13 11:03:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('298', 'testyyy', '78.11.226.75', '2017-02-13 11:28:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('300', 'marcinek', '78.11.226.75', '2017-02-13 13:25:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('302', 'marcinek', '78.11.226.75', '2017-02-13 13:54:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('304', 'marcinek', '78.11.226.75', '2017-02-13 13:55:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('306', 'marcinek', '78.11.226.75', '2017-02-13 14:04:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('308', 'marcinek', '78.11.226.75', '2017-02-13 14:10:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('310', 'marcinek', '78.11.226.75', '2017-02-13 14:20:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('312', 'marcinek', '78.11.226.75', '2017-02-13 14:24:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('314', 'marcinek', '78.11.226.75', '2017-02-13 14:25:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('316', 'marcinek', '78.11.226.75', '2017-02-13 14:40:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('318', 'marcinek', '78.11.226.75', '2017-02-13 14:43:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('320', 'marcinek', '78.11.226.75', '2017-02-13 15:11:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('322', 'marcinek', '78.11.226.75', '2017-02-13 15:30:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('324', 'marcinek', '78.11.226.75', '2017-02-13 17:13:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('326', 'marcinek', '78.11.226.75', '2017-02-13 17:49:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('328', 'admin', '78.11.226.75', '2017-02-13 17:50:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('330', 'admin', '78.11.226.75', '2017-02-13 17:59:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('332', 'marcinek', '78.11.226.75', '2017-02-13 19:09:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('334', 'sraka', '83.27.22.43', '2017-02-13 19:47:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('336', 'admin', '149.156.136.226', '2017-02-14 10:20:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('338', 'marcinek', '83.26.131.38', '2017-02-16 11:03:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('340', 'marcinek', '83.26.131.38', '2017-02-16 12:09:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('342', 'marcinek', '83.26.131.38', '2017-02-16 12:17:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('344', 'marcinek', '83.26.131.38', '2017-02-16 12:35:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('346', 'marcinek', '83.26.131.38', '2017-02-16 13:40:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('348', 'marcinek', '83.26.131.38', '2017-02-16 13:47:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('350', 'admin', '83.26.131.38', '2017-02-16 14:48:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('352', 'marcinek', '83.26.131.38', '2017-02-16 15:13:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('354', 'marcinek', '83.26.131.38', '2017-02-16 16:14:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('356', 'marcinek', '83.27.74.227', '2017-02-17 10:44:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('358', 'marcinek', '83.27.74.227', '2017-02-17 11:18:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('360', 'marcinek', '83.27.74.227', '2017-02-17 12:23:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('362', 'marcinek', '83.27.74.227', '2017-02-17 12:53:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('364', 'marcinek', '83.27.74.227', '2017-02-17 13:15:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('366', 'marcinek', '83.27.74.227', '2017-02-17 14:13:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('368', 'marcinek', '83.27.74.227', '2017-02-17 18:27:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('370', 'marcinek', '83.27.74.227', '2017-02-17 21:43:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('372', 'marcinek', '83.27.74.227', '2017-02-17 21:51:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('374', 'marcinek', '217.99.202.216', '2017-02-18 10:53:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('376', 'marcinek', '217.99.202.216', '2017-02-18 11:10:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('378', 'admin', '83.27.54.236', '2017-02-18 21:02:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('380', 'marcinek', '83.27.14.71', '2017-02-18 22:02:29', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safar');
INSERT INTO `history_log` VALUES ('382', 'marcinek', '83.27.14.71', '2017-02-19 00:34:42', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safar');
INSERT INTO `history_log` VALUES ('384', 'marcinek', '83.27.14.71', '2017-02-19 01:08:44', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safar');
INSERT INTO `history_log` VALUES ('386', 'admin', '217.99.204.204', '2017-02-19 11:05:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('388', 'marcinek', '217.99.204.204', '2017-02-19 14:36:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('390', 'admin', '217.99.204.204', '2017-02-19 23:12:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('392', 'marcinek', '217.99.204.204', '2017-02-19 23:42:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('394', 'marcinek', '217.99.204.204', '2017-02-20 00:52:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('396', 'marcinek', '217.99.204.204', '2017-02-20 00:58:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('398', 'marcinek', '217.99.204.204', '2017-02-20 01:20:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('400', 'marcinek', '83.26.131.87', '2017-02-20 09:57:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('402', 'marcinek', '83.26.131.87', '2017-02-20 16:14:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('404', 'marcinek', '176.115.23.61', '2017-02-20 16:41:37', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safar');
INSERT INTO `history_log` VALUES ('406', 'marcinek', '83.26.131.87', '2017-02-20 17:15:13', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safar');
INSERT INTO `history_log` VALUES ('408', 'marcinek', '83.26.131.87', '2017-02-20 17:38:05', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safar');
INSERT INTO `history_log` VALUES ('410', 'marcinek', '83.26.131.87', '2017-02-20 19:41:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('412', 'marcinek', '83.26.131.87', '2017-02-20 19:53:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('414', 'marcinek', '83.26.131.87', '2017-02-20 19:55:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('416', 'marcinek', '83.26.131.87', '2017-02-20 19:57:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('418', 'marcinek', '83.26.131.87', '2017-02-20 20:05:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('420', 'marcinek', '83.26.131.87', '2017-02-20 20:06:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('422', 'marcinek', '83.26.131.87', '2017-02-20 20:26:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('424', 'marcinek', '83.26.131.87', '2017-02-20 20:28:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('426', 'marcinek', '83.26.131.87', '2017-02-20 20:30:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('428', 'marcinek', '83.26.131.87', '2017-02-20 22:04:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('430', 'marcinek', '83.26.131.87', '2017-02-20 22:19:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('432', 'marcinek', '83.26.131.87', '2017-02-20 22:51:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('434', 'marcinek', '83.26.131.87', '2017-02-20 22:56:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('436', 'marcinek', '83.26.131.87', '2017-02-20 23:00:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('438', 'marcinek', '83.26.131.87', '2017-02-20 23:07:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('440', 'marcinek', '83.26.131.87', '2017-02-20 23:21:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('442', 'marcinek', '83.26.131.87', '2017-02-20 23:26:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('444', 'marcinek', '83.26.131.87', '2017-02-20 23:52:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('446', 'marcinek', '83.26.131.87', '2017-02-20 23:54:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('452', 'marcinek', '83.26.131.87', '2017-02-21 00:02:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('454', 'marcinek', '83.26.131.87', '2017-02-21 00:07:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('464', 'marcinek', '83.29.120.169', '2017-02-22 12:47:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('465', 'marcinek', '83.29.120.169', '2017-02-22 12:50:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('472', 'marcin', '217.99.198.27', '2017-02-23 00:20:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('478', 'marcinek', '217.99.198.27', '2017-02-23 17:38:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('484', 'marcinek', '217.99.198.27', '2017-02-23 17:38:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('486', 'marcinek', '217.99.198.27', '2017-02-23 17:38:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('496', 'marcinek', '217.99.198.27', '2017-02-23 17:38:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('497', 'marcinek', '217.99.198.27', '2017-02-23 17:38:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('504', 'marcinek', '217.99.198.27', '2017-02-23 17:43:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('510', 'marcinek', '217.99.198.27', '2017-02-23 17:43:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('512', 'marcinek', '217.99.198.27', '2017-02-23 17:43:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('516', 'marcinek', '217.99.198.27', '2017-02-23 17:43:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('520', 'marcinek', '217.99.198.27', '2017-02-23 17:43:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('524', 'marcinek', '217.99.198.27', '2017-02-23 18:02:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('528', 'marcinek', '217.99.198.27', '2017-02-23 18:41:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('532', 'marcinek', '217.99.198.27', '2017-02-23 18:49:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('536', 'marcinek', '83.27.15.50', '2017-02-23 22:13:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('540', 'marcin', '83.26.130.189', '2017-02-25 20:08:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('544', 'marcinek', '78.11.226.75', '2017-02-26 22:47:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('548', 'admin', '37.47.95.202', '2017-02-28 11:58:29', 'Mozilla/5.0 (Linux; Android 5.1.1; D2303 Build/18.6.A.0.182) AppleWebKit/537.36 (KHTML, like Gecko) ');
INSERT INTO `history_log` VALUES ('552', 'marcinek', '::1', '2017-02-28 19:05:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('556', 'marcinek', '::1', '2017-02-28 19:32:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('560', 'marcinek', '::1', '2017-03-03 08:01:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('564', 'marcinek', '::1', '2017-03-03 14:32:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('568', 'marcinek', '::1', '2017-03-03 14:40:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('572', 'admin', '::1', '2017-03-03 14:48:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('576', 'admin', '::1', '2017-03-04 17:20:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('580', 'admin', '::1', '2017-03-05 13:49:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('584', 'marcinek', '::1', '2017-03-05 19:49:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('588', 'marcinek', '::1', '2017-03-05 20:08:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('592', 'admin', '::1', '2017-03-06 10:51:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('596', 'marcinos', '::1', '2017-03-06 13:40:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('600', 'marcinos', '::1', '2017-03-06 14:00:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('604', 'admin', '::1', '2017-03-06 15:20:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('608', 'admin', '::1', '2017-03-07 00:06:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('612', 'admin', '::1', '2017-03-07 08:35:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('616', 'admin', '::1', '2017-03-07 16:56:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('620', '1234567890-', '::1', '2017-03-07 17:04:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('624', 'admin', '::1', '2017-03-07 17:14:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('628', 'admin', '::1', '2017-03-07 22:54:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('632', 'admin', '::1', '2017-03-07 23:16:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('636', 'admin', '::1', '2017-03-08 15:29:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('640', 'marcinek', '::1', '2017-03-09 00:38:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('644', 'marcinek', '::1', '2017-03-09 00:41:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('648', 'admin', '::1', '2017-03-09 22:50:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('652', 'marcinek', '::1', '2017-03-09 23:18:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('656', 'marcinek', '::1', '2017-03-10 07:53:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('660', 'marcinek', '::1', '2017-03-11 14:07:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('664', 'marcinek', '::1', '2017-03-11 14:24:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('668', 'marcinek', '::1', '2017-03-11 14:53:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('672', 'marcinek', '::1', '2017-03-11 15:12:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('676', 'marcinek', '::1', '2017-03-11 15:24:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('680', 'marcinek', '::1', '2017-03-11 15:45:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('684', 'marcinek', '::1', '2017-03-11 17:22:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('688', 'marcinek', '::1', '2017-03-11 17:52:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('692', 'admin', '::1', '2017-03-11 18:50:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('696', 'marcinek', '::1', '2017-03-11 19:11:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('700', 'marcinek', '::1', '2017-03-11 19:18:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('708', 'admin', '::1', '2017-03-11 20:06:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('710', 'marcinos', '::1', '2017-03-11 20:12:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('720', 'admin', '::1', '2017-03-12 10:20:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('728', 'admin', '::1', '2017-03-12 11:20:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('740', 'admin', '::1', '2017-03-12 21:59:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('742', 'marcinek', '::1', '2017-03-12 22:59:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('752', 'admin', '::1', '2017-03-13 12:27:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('760', 'admin', '::1', '2017-03-13 17:06:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('768', 'marcinek', '::1', '2017-03-13 23:34:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('769', 'admin', '::1', '2017-03-13 23:35:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('770', 'admin', '::1', '2017-03-14 13:36:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('771', 'admin', '::1', '2017-03-14 14:58:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('772', 'admin', '::1', '2017-03-14 15:01:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('773', 'marcinek', '::1', '2017-03-14 15:05:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('774', 'admin', '::1', '2017-03-14 15:07:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('775', 'admin', '::1', '2017-03-14 15:31:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('776', 'admin', '::1', '2017-03-14 15:47:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('777', 'admin', '::1', '2017-03-14 16:40:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('778', 'admin', '::1', '2017-03-14 16:45:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('779', 'admin', '::1', '2017-03-14 22:39:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('780', 'admin', '::1', '2017-03-15 00:14:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('781', 'admin', '::1', '2017-03-15 09:09:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('782', 'admin', '::1', '2017-03-15 09:15:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('783', 'admin', '::1', '2017-03-15 09:42:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('784', 'admin', '::1', '2017-03-15 09:54:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('785', 'admin', '::1', '2017-03-15 10:21:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('786', 'admin', '::1', '2017-03-15 11:46:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('787', 'admin', '::1', '2017-03-15 11:48:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('788', 'admin', '::1', '2017-03-15 12:02:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('789', 'admin', '::1', '2017-03-15 12:24:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('790', 'admin', '::1', '2017-03-15 18:24:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('791', 'admin', '::1', '2017-03-15 18:25:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('792', 'admin', '::1', '2017-03-15 19:21:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('793', 'admin', '::1', '2017-03-15 20:40:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('794', 'admin', '::1', '2017-03-15 21:20:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('795', 'admin', '::1', '2017-03-15 21:49:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('796', 'admin', '::1', '2017-03-15 21:50:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('797', 'admin', '::1', '2017-03-15 21:54:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('798', 'admin', '::1', '2017-03-16 13:16:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('799', 'admin', '::1', '2017-03-16 14:51:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('800', 'admin', '::1', '2017-03-16 15:52:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('801', 'admin', '::1', '2017-03-16 16:55:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('802', 'admin', '::1', '2017-03-16 23:16:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('803', 'admin', '::1', '2017-03-16 23:20:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('804', 'marcinos', '::1', '2017-03-16 23:21:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('805', 'marcinos', '::1', '2017-03-16 23:21:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('806', 'marcinos', '::1', '2017-03-16 23:59:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('807', 'marcinos', '::1', '2017-03-17 00:00:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('808', 'marcinos', '::1', '2017-03-17 00:01:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('809', 'marcinos', '::1', '2017-03-17 00:02:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('810', 'marcinos', '::1', '2017-03-17 09:09:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('811', 'marcinos', '::1', '2017-03-17 09:47:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('812', 'marcinos', '::1', '2017-03-17 10:01:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('813', 'marcinos', '::1', '2017-03-17 10:38:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('814', 'marcinos', '::1', '2017-03-17 11:14:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('815', 'marcinos', '::1', '2017-03-17 13:22:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('816', 'marcinos', '::1', '2017-03-17 13:30:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('817', 'marcinos', '::1', '2017-03-17 15:10:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('818', 'marcinos', '::1', '2017-03-17 23:43:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('819', 'marcinos', '::1', '2017-03-18 10:15:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('820', 'marcinos', '::1', '2017-03-18 11:18:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('821', 'marcinek', '::1', '2017-03-18 11:40:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('822', 'admin', '::1', '2017-03-18 12:45:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('823', 'marcinos', '::1', '2017-03-18 12:49:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('824', 'admin', '::1', '2017-03-19 15:14:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('825', 'marcinek', '::1', '2017-03-19 15:17:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('826', 'marcinek', '::1', '2017-03-19 17:35:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('827', 'marcinek', '::1', '2017-03-19 18:40:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('828', 'admin', '::1', '2017-03-19 19:13:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('829', 'marcinek', '::1', '2017-03-19 19:13:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('830', 'marcinek', '::1', '2017-03-19 19:23:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('831', 'admin', '::1', '2017-03-19 19:28:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('832', 'marcinek', '::1', '2017-03-19 19:31:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('833', 'admin', '::1', '2017-03-19 19:31:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('834', 'admin', '::1', '2017-03-19 19:36:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('835', 'marcinek', '::1', '2017-03-19 19:36:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('836', 'admin', '::1', '2017-03-19 20:09:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('837', 'marcinek', '::1', '2017-03-19 20:12:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('838', 'marcinek', '::1', '2017-03-19 20:13:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('839', 'admin', '::1', '2017-03-19 20:14:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('840', 'marcinek', '::1', '2017-03-19 20:17:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('841', 'marcinek', '::1', '2017-03-20 09:36:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('842', 'admin', '::1', '2017-03-20 09:40:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('843', 'marcinek', '::1', '2017-03-20 09:43:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('844', 'marcinek', '::1', '2017-03-20 10:06:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('845', 'admin', '::1', '2017-03-20 10:10:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('846', 'marcinek', '::1', '2017-03-20 10:13:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('847', 'marcinek', '::1', '2017-03-20 11:05:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('848', 'admin', '::1', '2017-03-20 11:06:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('849', 'marcinek', '::1', '2017-03-20 11:46:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('850', 'marcinek', '::1', '2017-03-20 12:13:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('851', 'marcinek', '::1', '2017-03-20 13:24:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('852', 'marcinek', '::1', '2017-03-20 14:28:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('853', 'marcinek', '::1', '2017-03-20 14:35:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('854', 'admin', '::1', '2017-03-20 14:37:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('855', 'admin', '::1', '2017-03-20 14:39:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('856', 'marcinek', '::1', '2017-03-20 14:41:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('857', 'marcinek', '::1', '2017-03-20 14:43:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('858', 'admin', '::1', '2017-03-20 14:43:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('859', 'marcinek', '::1', '2017-03-20 14:46:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('860', 'admin', '::1', '2017-03-20 14:46:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('861', 'marcinek', '::1', '2017-03-20 14:48:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('862', 'admin', '::1', '2017-03-20 14:48:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('863', 'admin', '::1', '2017-03-20 15:57:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('864', 'admin', '::1', '2017-03-20 16:24:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('865', 'admin', '::1', '2017-03-20 16:25:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('866', 'admin', '::1', '2017-03-20 16:44:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('867', 'admin', '::1', '2017-03-20 16:56:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('868', 'admin', '::1', '2017-03-20 16:57:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('869', 'admin', '::1', '2017-03-20 18:37:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('870', 'admin', '::1', '2017-03-20 18:42:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('871', 'kfsdjhksfh', '::1', '2017-03-20 20:05:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('872', 'marcinek', '::1', '2017-03-20 20:28:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('873', 'admin', '::1', '2017-03-20 20:33:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('874', 'admin', '::1', '2017-03-20 21:05:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('875', 'admin', '::1', '2017-03-20 21:53:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('876', 'admin', '::1', '2017-03-20 21:54:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('877', 'marcinek&#039;', '::1', '2017-03-20 21:56:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('878', 'marcinek', '::1', '2017-03-20 21:58:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('879', 'admin', '::1', '2017-03-20 22:01:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('880', 'marcinek', '::1', '2017-03-20 22:01:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('881', 'marcinek', '::1', '2017-03-20 22:05:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('882', 'admin', '::1', '2017-03-20 22:06:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('883', 'marcinek', '::1', '2017-03-20 22:06:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('884', 'admin', '::1', '2017-03-20 22:36:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('885', 'admin', '::1', '2017-03-20 22:44:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('886', 'admin', '::1', '2017-03-20 23:46:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('887', 'admin', '::1', '2017-03-20 23:54:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('888', 'marcinek', '::1', '2017-03-21 00:06:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('889', 'marcinek', '::1', '2017-03-21 00:10:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('890', 'marcinek', '::1', '2017-03-21 00:12:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('891', 'admin', '::1', '2017-03-21 00:12:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('892', 'admin', '::1', '2017-03-21 00:17:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('893', 'marcinek', '::1', '2017-03-21 00:21:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('894', 'marcinek', '::1', '2017-03-21 01:41:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('895', 'admin', '::1', '2017-03-21 01:41:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('896', 'marcinek', '::1', '2017-03-21 01:53:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('897', 'marcinek', '::1', '2017-03-21 02:01:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('898', 'marcinek', '::1', '2017-03-21 10:49:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('899', 'admin', '::1', '2017-03-21 10:50:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('900', 'marcinek', '::1', '2017-03-21 10:51:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('901', 'marcinek', '::1', '2017-03-21 10:54:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('902', 'marcinek', '::1', '2017-03-21 10:54:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('903', 'marcinek', '::1', '2017-03-21 11:04:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('904', 'marcinek', '::1', '2017-03-21 11:17:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('905', 'admin', '::1', '2017-03-21 11:20:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('906', 'marcinek', '::1', '2017-03-21 11:33:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('907', 'admin', '::1', '2017-03-21 11:33:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('908', 'marcinek', '::1', '2017-03-21 11:33:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('909', 'marcinek', '::1', '2017-03-25 10:16:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('910', 'admin', '::1', '2017-03-25 10:17:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('911', 'marcinek', '::1', '2017-04-21 21:26:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.13');
INSERT INTO `history_log` VALUES ('912', 'admin', '::1', '2017-04-21 21:31:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.13');
INSERT INTO `history_log` VALUES ('27', 'julia', '78.11.238.170', '2016-11-23 17:44:24', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safar');
INSERT INTO `history_log` VALUES ('31', 'marcin', '78.11.241.137', '2016-11-23 22:25:39', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.87 Safa');
INSERT INTO `history_log` VALUES ('35', 'marcin', '149.156.136.214', '2016-11-28 13:05:05', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('39', 'marcin', '149.156.136.214', '2016-11-28 13:44:31', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('43', 'marcin', '149.156.136.214', '2016-11-28 13:52:51', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('47', 'adas', '149.156.136.214', '2016-11-28 13:53:05', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('51', 'marcin', '149.156.136.214', '2016-11-28 14:08:00', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('55', 'marcin', '83.26.59.94', '2016-12-05 21:12:08', 'Mozilla/5.0 (Linux; Android 5.1.1; D2303 Build/18.6.A.0.182) AppleWebKit/537.36 (KHTML, like Gecko) ');
INSERT INTO `history_log` VALUES ('59', 'marcin', '217.99.199.128', '2017-01-07 00:10:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('63', 'marcin', '78.11.226.75', '2017-01-09 17:43:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('67', 'marcin', '78.11.226.75', '2017-01-21 22:53:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('71', 'marcin', '78.11.226.75', '2017-01-31 14:00:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('75', 'marcin', '83.26.131.230', '2017-02-05 14:17:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('79', 'marcin', '83.26.131.230', '2017-02-05 15:42:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('83', 'marcineczek', '217.99.201.205', '2017-02-08 14:10:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('87', 'marcineczek', '217.99.201.205', '2017-02-08 14:14:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('91', 'marcinek', '217.99.201.205', '2017-02-08 14:31:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('95', 'mmaarrcc', '217.99.201.205', '2017-02-08 14:38:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('99', 'marcinek', '217.99.201.205', '2017-02-08 14:47:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('103', 'marcinek', '217.99.201.205', '2017-02-08 14:49:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('107', 'marcinek', '217.99.201.205', '2017-02-08 14:51:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('111', 'marcinek', '217.99.201.205', '2017-02-08 14:59:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('115', 'marcinek', '217.99.201.205', '2017-02-08 15:12:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('119', 'marcinek', '217.99.201.205', '2017-02-08 16:50:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('123', 'marcinek', '217.99.201.205', '2017-02-08 16:56:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('127', 'marcinek', '217.99.201.205', '2017-02-08 17:42:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('131', 'marcinek', '217.99.201.205', '2017-02-08 18:34:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('135', 'marcinek', '217.99.201.205', '2017-02-08 18:38:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('139', 'marcinek', '217.99.201.205', '2017-02-08 18:49:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('143', 'marcinek', '217.99.201.205', '2017-02-08 18:56:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('147', 'marcinek', '217.99.201.205', '2017-02-08 19:54:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('151', 'marcinek', '217.99.201.205', '2017-02-09 01:22:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('155', 'marcinek', '83.26.131.104', '2017-02-09 12:57:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('159', 'marcinek', '83.26.131.104', '2017-02-09 22:12:00', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('163', 'marcinek', '83.26.131.116', '2017-02-10 13:35:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('167', 'marcinek', '83.26.131.116', '2017-02-10 15:18:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('171', 'marcinek', '83.26.131.116', '2017-02-10 15:37:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('175', 'marcinek', '83.26.131.116', '2017-02-10 17:57:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('179', 'marcinek', '83.26.131.116', '2017-02-10 18:15:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('183', 'marcinek', '83.26.131.116', '2017-02-10 19:07:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('187', 'marcinek', '83.26.131.116', '2017-02-10 20:09:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('191', 'marcinek', '83.26.131.116', '2017-02-10 23:19:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('197', 'marcinek', '83.27.15.195', '2017-02-11 00:29:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('199', 'marcinek', '83.27.15.195', '2017-02-11 01:00:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('210', 'marcinek', '83.29.118.20', '2017-02-11 13:57:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('211', 'marcinek', '83.29.118.20', '2017-02-11 14:07:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('212', 'marcinek', '83.29.118.20', '2017-02-11 14:18:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('213', 'marcinek', '83.29.118.20', '2017-02-11 14:30:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('215', 'marcinek1', '83.29.118.20', '2017-02-11 14:39:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('223', 'admin', '83.29.118.20', '2017-02-11 18:48:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('229', 'admin', '83.29.118.20', '2017-02-11 21:23:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('231', 'admin', '83.29.118.20', '2017-02-12 00:06:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('242', 'admin', '78.11.226.75', '2017-02-12 21:08:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('243', 'admin', '78.11.226.75', '2017-02-12 21:08:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('244', 'admin', '78.11.226.75', '2017-02-12 21:09:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('245', 'admin', '78.11.226.75', '2017-02-12 21:10:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('247', 'admin', '78.11.226.75', '2017-02-12 21:11:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('255', 'admin', '78.11.226.75', '2017-02-12 21:26:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('513', 'marcinek', '217.99.198.27', '2017-02-23 17:43:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('517', 'marcinek', '217.99.198.27', '2017-02-23 17:43:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('521', 'marcinek', '217.99.198.27', '2017-02-23 17:43:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('525', 'marcinek', '217.99.198.27', '2017-02-23 18:07:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('529', 'marcinek', '217.99.198.27', '2017-02-23 18:44:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('533', 'marcinek', '217.99.198.27', '2017-02-23 19:02:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('537', 'marcinek', '83.26.130.189', '2017-02-25 18:37:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('541', 'marcinek', '83.26.130.189', '2017-02-25 23:52:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('545', 'marcinek', '37.47.94.149', '2017-02-27 12:18:20', 'Mozilla/5.0 (Linux; Android 5.1.1; D2303 Build/18.6.A.0.182) AppleWebKit/537.36 (KHTML, like Gecko) ');
INSERT INTO `history_log` VALUES ('549', 'marcinek', '78.11.226.75', '2017-02-28 16:39:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('553', 'marcinek', '::1', '2017-02-28 19:24:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('557', 'marcin123', '::1', '2017-03-02 22:57:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('561', 'marcinek', '::1', '2017-03-03 13:35:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('565', 'admin', '::1', '2017-03-03 14:32:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('569', 'admin', '::1', '2017-03-03 14:40:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('573', 'marcinek', '::1', '2017-03-03 14:48:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('577', 'admin', '::1', '2017-03-05 08:57:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('581', 'admin', '::1', '2017-03-05 14:11:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('585', 'ulus', '::1', '2017-03-05 20:01:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('589', 'admin', '::1', '2017-03-05 22:20:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('593', 'admin', '::1', '2017-03-06 11:06:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('597', 'marcinek', '::1', '2017-03-06 13:59:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('601', 'marcinek', '::1', '2017-03-06 14:02:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('605', 'marcinek', '::1', '2017-03-06 15:27:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('609', 'marcinek', '::1', '2017-03-07 00:06:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('613', 'admin', '::1', '2017-03-07 13:00:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('617', 'admin', '::1', '2017-03-07 16:58:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('621', 'admin', '::1', '2017-03-07 17:06:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('625', 'admin', '::1', '2017-03-07 22:49:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('629', 'admin', '::1', '2017-03-07 22:56:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('633', 'admin', '::1', '2017-03-07 23:17:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('637', 'admin', '::1', '2017-03-08 16:32:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('641', 'admin', '::1', '2017-03-09 00:40:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('645', 'admin', '::1', '2017-03-09 00:42:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('649', 'marcinek', '::1', '2017-03-09 22:51:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('653', 'marcinek', '::1', '2017-03-09 23:21:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('657', 'marcinek', '::1', '2017-03-10 08:29:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('661', 'marcinek', '::1', '2017-03-11 14:13:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('665', 'admin', '::1', '2017-03-11 14:39:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('669', 'marcinek', '::1', '2017-03-11 15:03:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('673', 'marcinek', '::1', '2017-03-11 15:19:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('677', 'marcinek', '::1', '2017-03-11 15:39:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('681', 'marcinek', '::1', '2017-03-11 16:57:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('685', 'marcinek', '::1', '2017-03-11 17:40:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('689', 'admin', '::1', '2017-03-11 18:10:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('693', 'admin', '::1', '2017-03-11 18:59:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('697', 'm4rc1n', '::1', '2017-03-11 19:12:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('701', 'marcinek', '::1', '2017-03-11 19:19:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('704', 'marcinek', '::1', '2017-03-11 19:38:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('705', 'marcinek', '::1', '2017-03-11 19:40:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('706', 'admin', '::1', '2017-03-11 19:43:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('707', 'marcinek', '::1', '2017-03-11 19:45:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('712', 'admin', '::1', '2017-03-11 20:46:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('713', 'marcinek', '::1', '2017-03-11 20:49:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('714', 'marcinek', '::1', '2017-03-11 20:52:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('715', 'marcinek', '::1', '2017-03-11 21:02:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('716', 'admin', '::1', '2017-03-11 21:07:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('717', 'admin', '::1', '2017-03-11 22:55:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('718', 'admin', '::1', '2017-03-12 09:26:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('719', 'marcinek', '::1', '2017-03-12 10:17:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('726', 'admin', '::1', '2017-03-12 11:16:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('729', 'admin', '::1', '2017-03-12 11:52:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('730', 'admin', '::1', '2017-03-12 13:51:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('731', 'admin', '::1', '2017-03-12 13:52:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('732', 'marcinos', '::1', '2017-03-12 13:52:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('733', 'admin', '::1', '2017-03-12 13:53:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('736', 'marcinos', '::1', '2017-03-12 14:43:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('737', 'admin', '::1', '2017-03-12 14:44:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('738', 'admin', '::1', '2017-03-12 16:03:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('739', 'admin', '::1', '2017-03-12 17:06:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('744', 'admin', '::1', '2017-03-12 23:02:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('745', 'admin', '::1', '2017-03-12 23:06:02', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('746', 'marcinek', '::1', '2017-03-12 23:06:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('747', 'admin', '::1', '2017-03-12 23:06:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('748', 'admin', '::1', '2017-03-13 09:19:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('749', 'admin', '::1', '2017-03-13 10:54:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('750', 'admin', '::1', '2017-03-13 11:57:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('751', 'admin', '::1', '2017-03-13 12:22:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('758', 'admin', '::1', '2017-03-13 15:54:57', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('761', 'admin', '::1', '2017-03-13 17:30:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('762', 'admin', '::1', '2017-03-13 18:30:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('763', 'admin', '::1', '2017-03-13 18:34:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('764', 'admin', '::1', '2017-03-13 20:55:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('765', 'admin', '::1', '2017-03-13 22:12:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('26', 'marcin', '78.11.241.137', '2016-11-23 00:22:25', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.87 Safa');
INSERT INTO `history_log` VALUES ('30', 'Julia', '78.11.238.170', '2016-11-23 17:46:29', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safar');
INSERT INTO `history_log` VALUES ('34', 'marcin', '78.11.241.137', '2016-11-25 15:22:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99');
INSERT INTO `history_log` VALUES ('38', 'marcin', '149.156.136.214', '2016-11-28 13:43:55', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('42', 'marcin', '149.156.136.214', '2016-11-28 13:45:36', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('46', 'sadsa', '149.156.136.214', '2016-11-28 13:53:04', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('50', 'dsa', '149.156.136.214', '2016-11-28 13:53:07', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:49.0) Gecko/20100101 Firefox/49.0');
INSERT INTO `history_log` VALUES ('54', 'marcin', '83.27.14.225', '2016-12-02 14:57:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.75');
INSERT INTO `history_log` VALUES ('58', 'marcin', '78.11.241.137', '2017-01-01 18:43:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('62', 'marcin', '149.156.136.214', '2017-01-09 12:48:09', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:50.0) Gecko/20100101 Firefox/50.0');
INSERT INTO `history_log` VALUES ('66', 'izzys', '149.156.157.66', '2017-01-21 22:52:52', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87 ');
INSERT INTO `history_log` VALUES ('70', 'marcin', '217.99.202.189', '2017-01-28 22:35:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('74', 'marcin', '83.26.131.230', '2017-02-05 14:13:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('78', 'marcin', '83.26.131.230', '2017-02-05 15:40:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('82', 'marcin', '217.99.201.205', '2017-02-08 14:04:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('86', 'marcineczek', '217.99.201.205', '2017-02-08 14:14:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('90', 'marcinek', '217.99.201.205', '2017-02-08 14:29:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('94', 'marcinek', '217.99.201.205', '2017-02-08 14:36:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('98', 'marcinek', '217.99.201.205', '2017-02-08 14:46:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('102', 'marcine', '217.99.201.205', '2017-02-08 14:49:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('106', 'marcinek', '217.99.201.205', '2017-02-08 14:51:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('110', 'marcinek', '217.99.201.205', '2017-02-08 14:59:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('114', 'marcinek', '217.99.201.205', '2017-02-08 15:09:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('118', 'marcinek', '217.99.201.205', '2017-02-08 16:48:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('122', 'marcinek', '217.99.201.205', '2017-02-08 16:56:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('126', 'marcinek', '217.99.201.205', '2017-02-08 17:20:11', 'Mozilla/5.0 (Linux; Android 5.1.1; D2303 Build/18.6.A.0.182) AppleWebKit/537.36 (KHTML, like Gecko) ');
INSERT INTO `history_log` VALUES ('130', 'marcinek', '217.99.201.205', '2017-02-08 17:58:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('134', 'marcinek', '217.99.201.205', '2017-02-08 18:37:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('138', 'marcinek', '217.99.201.205', '2017-02-08 18:49:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.87');
INSERT INTO `history_log` VALUES ('142', 'marcinek', '217.99.201.205', '2017-02-08 18:55:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('146', 'marcinek', '217.99.201.205', '2017-02-08 19:48:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('150', 'marcinek', '217.99.201.205', '2017-02-09 00:20:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('154', 'marcinek', '83.26.131.104', '2017-02-09 12:48:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('158', 'marcinek', '83.26.131.104', '2017-02-09 22:09:48', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('162', 'marcinek', '83.26.131.116', '2017-02-10 13:34:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('166', 'marcinek', '83.26.131.116', '2017-02-10 15:17:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('170', 'marcinek', '83.26.131.116', '2017-02-10 15:37:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('174', 'marcinek', '83.26.131.116', '2017-02-10 17:48:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('178', 'marcinek', '83.26.131.116', '2017-02-10 18:06:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('182', 'marcinek', '83.26.131.116', '2017-02-10 19:07:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('186', 'marcinek', '83.26.131.116', '2017-02-10 20:02:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('190', 'marcinek', '83.26.131.116', '2017-02-10 22:51:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('209', 'marcinek', '83.29.118.20', '2017-02-11 13:56:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('222', 'marcinek', '83.29.118.20', '2017-02-11 17:47:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('241', 'marcinek', '78.11.226.75', '2017-02-12 20:44:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('254', 'marcinek', '78.11.226.75', '2017-02-12 21:25:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('257', 'marcinek', '78.11.226.75', '2017-02-12 21:31:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('259', 'marcinek', '78.11.226.75', '2017-02-12 21:40:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('261', 'marcinek', '78.11.226.75', '2017-02-12 21:43:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('263', 'marcinek', '78.11.226.75', '2017-02-12 21:47:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('265', 'marcinek', '78.11.226.75', '2017-02-12 21:50:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('267', 'marcinek', '78.11.226.75', '2017-02-12 22:04:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('269', 'sraka', '83.26.27.178', '2017-02-12 22:11:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('271', 'marcinek', '78.11.226.75', '2017-02-12 22:15:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('273', 'marcinek', '78.11.226.75', '2017-02-12 22:30:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('275', 'marcinek', '78.11.226.75', '2017-02-12 22:32:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('277', 'marcinek', '78.11.226.75', '2017-02-12 22:33:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('279', 'marcinek', '78.11.226.75', '2017-02-12 22:34:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('281', 'marcinek', '78.11.226.75', '2017-02-12 22:38:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('283', 'sraka', '83.26.27.178', '2017-02-12 23:06:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('285', 'marcinek', '78.11.226.75', '2017-02-12 23:13:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('287', 'marcinek', '78.11.226.75', '2017-02-12 23:38:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('289', 'admin', '78.11.226.75', '2017-02-13 01:17:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('291', 'marcinek', '78.11.226.75', '2017-02-13 01:24:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('293', 'marcinek', '78.11.226.75', '2017-02-13 01:27:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('295', 'marcinek', '78.11.226.75', '2017-02-13 10:23:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('297', 'qwertyuiop', '78.11.226.75', '2017-02-13 11:23:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('299', 'marcinek', '78.11.226.75', '2017-02-13 11:34:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('301', 'marcinek', '78.11.226.75', '2017-02-13 13:52:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('303', 'marcinek', '78.11.226.75', '2017-02-13 13:55:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('305', 'marcinek', '78.11.226.75', '2017-02-13 13:59:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('307', 'marcinek', '78.11.226.75', '2017-02-13 14:05:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('309', 'marcinek', '78.11.226.75', '2017-02-13 14:13:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('311', 'marcinek', '78.11.226.75', '2017-02-13 14:23:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('313', 'marcinek', '78.11.226.75', '2017-02-13 14:24:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('315', 'marcinek', '78.11.226.75', '2017-02-13 14:33:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('317', 'marcinek', '78.11.226.75', '2017-02-13 14:42:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('319', 'marcinek', '78.11.226.75', '2017-02-13 15:03:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('321', 'marcinek', '78.11.226.75', '2017-02-13 15:16:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('323', 'marcinek', '78.11.226.75', '2017-02-13 17:03:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('325', 'marcinek', '78.11.226.75', '2017-02-13 17:47:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('327', 'marcinek', '78.11.226.75', '2017-02-13 17:49:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('329', 'marcinek', '78.11.226.75', '2017-02-13 17:52:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('331', 'admin', '78.11.226.75', '2017-02-13 18:06:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('333', 'marcinek', '78.11.226.75', '2017-02-13 19:45:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('335', 'marcinek', '149.156.136.226', '2017-02-14 10:18:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('337', 'marcinek', '78.11.226.75', '2017-02-15 10:04:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.79');
INSERT INTO `history_log` VALUES ('339', 'marcinek', '83.26.131.38', '2017-02-16 11:06:54', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('341', 'marcinek', '83.26.131.38', '2017-02-16 12:13:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('343', 'marcinek', '83.26.131.38', '2017-02-16 12:30:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('345', 'marcinek', '83.26.131.38', '2017-02-16 12:39:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('347', 'marcinek', '83.26.131.38', '2017-02-16 13:44:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('349', 'marcinek', '83.26.131.38', '2017-02-16 14:45:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('351', 'admin', '83.26.131.38', '2017-02-16 15:12:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('353', 'admin', '83.26.131.38', '2017-02-16 16:06:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('355', 'marcinek', '83.26.131.38', '2017-02-16 21:30:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('357', 'marcinek', '83.27.74.227', '2017-02-17 10:45:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('359', 'marcinek', '83.27.74.227', '2017-02-17 12:20:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('361', 'marcinek', '83.27.74.227', '2017-02-17 12:25:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('363', 'marcinek', '83.27.74.227', '2017-02-17 13:05:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('365', 'marcinek', '83.27.74.227', '2017-02-17 13:17:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('367', 'marcinek', '83.27.74.227', '2017-02-17 15:13:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('369', 'marcinek', '83.27.74.227', '2017-02-17 20:24:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('371', 'marcinek', '83.27.74.227', '2017-02-17 21:50:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('373', 'marcinek', '83.27.74.227', '2017-02-17 21:52:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('375', 'marcinek', '217.99.202.216', '2017-02-18 10:56:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('377', 'sraka', '83.27.54.236', '2017-02-18 20:59:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('379', 'marcinek', '83.27.14.71', '2017-02-18 21:09:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('381', 'sraka', '83.30.222.53', '2017-02-19 00:34:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('383', 'marcinek', '83.27.14.71', '2017-02-19 00:37:06', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safar');
INSERT INTO `history_log` VALUES ('385', 'marcinek', '217.99.204.204', '2017-02-19 11:03:50', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('387', 'sraka', '83.30.222.53', '2017-02-19 14:33:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('389', 'sraka', '83.30.222.53', '2017-02-19 17:15:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('391', 'marcinek', '217.99.204.204', '2017-02-19 23:41:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('393', 'marcinek', '217.99.204.204', '2017-02-19 23:43:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('395', 'marcinek', '217.99.204.204', '2017-02-20 00:57:38', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('397', 'marcinek', '217.99.204.204', '2017-02-20 01:03:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('399', 'marcinek', '217.99.204.204', '2017-02-20 01:30:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('401', 'marcinek', '83.26.131.87', '2017-02-20 10:29:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('403', 'marcinek', '176.115.23.61', '2017-02-20 16:32:03', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safar');
INSERT INTO `history_log` VALUES ('405', 'marcinek', '176.115.23.61', '2017-02-20 16:41:54', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.76 Safar');
INSERT INTO `history_log` VALUES ('407', 'marcinek', '83.26.131.87', '2017-02-20 17:19:53', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safar');
INSERT INTO `history_log` VALUES ('409', 'marcinek', '83.26.131.87', '2017-02-20 18:51:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('411', 'marcinek', '83.26.131.87', '2017-02-20 19:49:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('413', 'marcinek', '83.26.131.87', '2017-02-20 19:54:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('415', 'marcinek', '83.26.131.87', '2017-02-20 19:55:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('417', 'marcinek', '83.26.131.87', '2017-02-20 20:04:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('419', 'marcinek', '83.26.131.87', '2017-02-20 20:05:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('421', 'marcinek', '83.26.131.87', '2017-02-20 20:09:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('423', 'marcinek', '83.26.131.87', '2017-02-20 20:27:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('425', 'marcinek', '83.26.131.87', '2017-02-20 20:28:52', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('427', 'marcinek', '83.26.131.87', '2017-02-20 20:36:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('429', 'marcinek', '83.26.131.87', '2017-02-20 22:10:55', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('431', 'marcinek', '83.26.131.87', '2017-02-20 22:50:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('433', 'marcinek', '83.26.131.87', '2017-02-20 22:52:06', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('435', 'marcinek', '83.26.131.87', '2017-02-20 22:59:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('437', 'marcinek', '83.26.131.87', '2017-02-20 23:03:32', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('439', 'marcinek', '83.26.131.87', '2017-02-20 23:15:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('441', 'marcinek', '83.26.131.87', '2017-02-20 23:24:03', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('443', 'marcinek', '83.26.131.87', '2017-02-20 23:48:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('445', 'marcinek', '83.26.131.87', '2017-02-20 23:54:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('447', 'marcinek', '83.26.131.87', '2017-02-20 23:56:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('448', 'marcinek', '83.26.131.87', '2017-02-20 23:57:11', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('449', 'marcinek', '83.26.131.87', '2017-02-20 23:58:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('450', 'marcinek', '83.26.131.87', '2017-02-20 23:59:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('451', 'marcinek', '83.26.131.87', '2017-02-21 00:01:20', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('453', 'marcinek', '83.26.131.87', '2017-02-21 00:04:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('455', 'marcinek', '83.26.131.87', '2017-02-21 00:08:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('456', 'marcinek', '83.26.131.87', '2017-02-21 00:10:18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('457', 'marcinek', '83.26.131.87', '2017-02-21 00:12:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('458', 'marcinek', '83.26.131.87', '2017-02-21 00:15:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('459', 'marcinek', '83.26.131.87', '2017-02-21 00:17:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('460', 'marcinek', '217.99.196.108', '2017-02-21 10:32:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('461', 'marcinek', '217.99.196.108', '2017-02-21 12:48:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('462', 'marcinek', '217.99.196.108', '2017-02-22 01:28:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('463', 'marcinek', '83.29.120.169', '2017-02-22 12:43:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('466', 'marcinek', '83.29.120.169', '2017-02-22 12:53:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('467', 'marcinek', '83.29.120.169', '2017-02-22 13:26:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('468', 'marcinek', '83.29.120.169', '2017-02-22 13:34:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('469', 'marcinek', '83.29.120.169', '2017-02-22 13:48:59', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('470', 'marcinek', '83.29.120.169', '2017-02-22 14:10:04', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('471', 'marcinek', '83.29.120.169', '2017-02-22 14:19:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('473', 'marcinek', '217.99.198.27', '2017-02-23 17:06:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('474', 'marcinek', '217.99.198.27', '2017-02-23 17:07:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('475', 'marcinek', '217.99.198.27', '2017-02-23 17:32:51', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('476', 'marcinek', '217.99.198.27', '2017-02-23 17:38:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('477', 'marcinek', '217.99.198.27', '2017-02-23 17:38:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('479', 'marcinek', '217.99.198.27', '2017-02-23 17:38:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('480', 'marcinek', '217.99.198.27', '2017-02-23 17:38:12', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('481', 'marcinek', '217.99.198.27', '2017-02-23 17:38:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('482', 'marcinek', '217.99.198.27', '2017-02-23 17:38:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('483', 'marcinek', '217.99.198.27', '2017-02-23 17:38:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('485', 'marcinek', '217.99.198.27', '2017-02-23 17:38:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('487', 'marcinek', '217.99.198.27', '2017-02-23 17:38:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('488', 'marcinek', '217.99.198.27', '2017-02-23 17:38:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('489', 'marcinek', '217.99.198.27', '2017-02-23 17:38:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('490', 'marcinek', '217.99.198.27', '2017-02-23 17:38:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('491', 'marcinek', '217.99.198.27', '2017-02-23 17:38:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('492', 'marcinek', '217.99.198.27', '2017-02-23 17:38:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('493', 'marcinek', '217.99.198.27', '2017-02-23 17:38:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('494', 'marcinek', '217.99.198.27', '2017-02-23 17:38:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('495', 'marcinek', '217.99.198.27', '2017-02-23 17:38:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('498', 'marcinek', '217.99.198.27', '2017-02-23 17:38:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('499', 'marcinek', '217.99.198.27', '2017-02-23 17:38:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('500', 'marcinek', '217.99.198.27', '2017-02-23 17:38:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('501', 'marcinek', '217.99.198.27', '2017-02-23 17:38:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('502', 'marcinek', '217.99.198.27', '2017-02-23 17:38:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('503', 'marcinek', '217.99.198.27', '2017-02-23 17:43:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('505', 'marcinek', '217.99.198.27', '2017-02-23 17:43:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('506', 'marcinek', '217.99.198.27', '2017-02-23 17:43:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('507', 'marcinek', '217.99.198.27', '2017-02-23 17:43:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('508', 'marcinek', '217.99.198.27', '2017-02-23 17:43:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('509', 'marcinek', '217.99.198.27', '2017-02-23 17:43:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('511', 'marcinek', '217.99.198.27', '2017-02-23 17:43:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('514', 'marcinek', '217.99.198.27', '2017-02-23 17:43:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('518', 'marcinek', '217.99.198.27', '2017-02-23 17:43:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('522', 'marcinek', '217.99.198.27', '2017-02-23 17:43:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('526', 'marcinek', '217.99.198.27', '2017-02-23 18:20:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('530', 'marcinek', '217.99.198.27', '2017-02-23 18:45:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('534', 'marcinek', '83.27.15.50', '2017-02-23 22:08:24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('538', 'marcinek', '83.26.130.189', '2017-02-25 19:41:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('542', 'marcinek', '83.26.130.189', '2017-02-26 00:07:45', 'Mozilla/5.0 (Linux; Android 5.1.1; D2303 Build/18.6.A.0.182) AppleWebKit/537.36 (KHTML, like Gecko) ');
INSERT INTO `history_log` VALUES ('546', 'admin', '78.11.226.75', '2017-02-27 13:33:42', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('550', 'marcinek', '::1', '2017-02-28 17:57:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('554', 'marcinek', '::1', '2017-02-28 19:30:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('558', 'qwertyuiop', '::1', '2017-03-02 23:05:43', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('562', 'marcinek', '::1', '2017-03-03 13:37:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('566', 'marcinek', '::1', '2017-03-03 14:39:14', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('570', 'marcinek', '::1', '2017-03-03 14:45:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('574', 'admin', '::1', '2017-03-03 22:45:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('578', 'admin', '::1', '2017-03-05 10:01:49', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('582', 'admin', '::1', '2017-03-05 15:11:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('586', 'admin', '::1', '2017-03-05 20:06:28', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('590', 'admin', '::1', '2017-03-05 23:21:21', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('594', 'admin', '::1', '2017-03-06 12:39:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('598', 'admin', '::1', '2017-03-06 13:59:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('602', 'admin', '::1', '2017-03-06 14:03:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('606', 'marcinos', '::1', '2017-03-06 15:28:25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('610', 'admin', '::1', '2017-03-07 00:06:31', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('614', 'admin', '::1', '2017-03-07 16:30:15', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('618', 'admin', '::1', '2017-03-07 17:02:23', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('622', 'admin', '::1', '2017-03-07 17:10:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('626', 'admin', '::1', '2017-03-07 22:51:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('630', 'admin', '::1', '2017-03-07 23:09:53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('634', 'admin', '::1', '2017-03-07 23:21:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('638', 'admin', '::1', '2017-03-08 20:11:37', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('642', 'marcinek', '::1', '2017-03-09 00:40:46', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('646', 'admin', '::1', '2017-03-09 15:06:26', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('650', 'marcinek', '::1', '2017-03-09 22:54:47', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('654', 'marcinek', '::1', '2017-03-09 23:26:41', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('658', 'marcinek', '::1', '2017-03-10 08:32:29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('662', 'marcinek', '::1', '2017-03-11 14:15:16', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('666', 'marcinek', '::1', '2017-03-11 14:46:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('670', 'marcinek', '::1', '2017-03-11 15:04:56', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('674', 'marcinek', '::1', '2017-03-11 15:21:36', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('678', 'marcinek', '::1', '2017-03-11 15:40:58', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('682', 'marcinek', '::1', '2017-03-11 17:08:08', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('686', 'marcinek', '::1', '2017-03-11 17:45:13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('690', 'marcinos', '::1', '2017-03-11 18:13:39', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('694', 'marcinek', '::1', '2017-03-11 19:05:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('698', 'marcinek', '::1', '2017-03-11 19:14:30', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('702', 'marcinek', '::1', '2017-03-11 19:22:33', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('721', 'admin', '::1', '2017-03-12 10:25:10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('734', 'marcinos', '::1', '2017-03-12 13:56:22', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('753', 'admin', '::1', '2017-03-13 12:29:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');
INSERT INTO `history_log` VALUES ('766', 'admin', '::1', '2017-03-13 23:20:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87');

-- ----------------------------
-- Table structure for `player`
-- ----------------------------
DROP TABLE IF EXISTS `player`;
CREATE TABLE `player` (
  `scores` int(10) unsigned NOT NULL,
  `id_user` int(10) unsigned NOT NULL,
  `id_tank` int(10) unsigned NOT NULL,
  `id_enemy` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_user`,`id_tank`,`id_enemy`),
  KEY `id_userP` (`id_user`) USING BTREE,
  KEY `id_tankP` (`id_tank`),
  KEY `id_enemyP` (`id_enemy`),
  CONSTRAINT `id_enemyP` FOREIGN KEY (`id_enemy`) REFERENCES `tankenemy` (`id_enemy`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_tankP` FOREIGN KEY (`id_tank`) REFERENCES `tankplayer` (`id_tank`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_userP` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of player
-- ----------------------------
INSERT INTO `player` VALUES ('0', '195', '150', '158');
INSERT INTO `player` VALUES ('0', '196', '150', '158');
INSERT INTO `player` VALUES ('3', '198', '169', '173');
INSERT INTO `player` VALUES ('0', '199', '150', '158');
INSERT INTO `player` VALUES ('0', '200', '150', '158');

-- ----------------------------
-- Table structure for `tankenemy`
-- ----------------------------
DROP TABLE IF EXISTS `tankenemy`;
CREATE TABLE `tankenemy` (
  `id_enemy` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tank_name` int(10) unsigned NOT NULL,
  `field_of_view` int(10) NOT NULL,
  `ShootDelay` int(10) NOT NULL,
  PRIMARY KEY (`id_enemy`),
  KEY `tank_nameE` (`id_tank_name`),
  CONSTRAINT `tank_nameE` FOREIGN KEY (`id_tank_name`) REFERENCES `tank_name` (`id_tank`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tankenemy
-- ----------------------------
INSERT INTO `tankenemy` VALUES ('158', '317', '8', '3');
INSERT INTO `tankenemy` VALUES ('168', '331', '6', '2');
INSERT INTO `tankenemy` VALUES ('173', '336', '6', '1');
INSERT INTO `tankenemy` VALUES ('175', '338', '7', '4');

-- ----------------------------
-- Table structure for `tankplayer`
-- ----------------------------
DROP TABLE IF EXISTS `tankplayer`;
CREATE TABLE `tankplayer` (
  `id_tank` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tank_name` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_tank`),
  KEY `tank_nameP` (`id_tank_name`),
  CONSTRAINT `tank_nameP` FOREIGN KEY (`id_tank_name`) REFERENCES `tank_name` (`id_tank`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tankplayer
-- ----------------------------
INSERT INTO `tankplayer` VALUES ('150', '302');
INSERT INTO `tankplayer` VALUES ('151', '303');
INSERT INTO `tankplayer` VALUES ('152', '304');
INSERT INTO `tankplayer` VALUES ('163', '339');
INSERT INTO `tankplayer` VALUES ('165', '341');
INSERT INTO `tankplayer` VALUES ('169', '345');

-- ----------------------------
-- Table structure for `tank_name`
-- ----------------------------
DROP TABLE IF EXISTS `tank_name`;
CREATE TABLE `tank_name` (
  `id_tank` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tank_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `tank_location` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id_tank`)
) ENGINE=InnoDB AUTO_INCREMENT=346 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tank_name
-- ----------------------------
INSERT INTO `tank_name` VALUES ('302', 'b123.png', '../playerTankSprites/');
INSERT INTO `tank_name` VALUES ('303', 'c123.png', '../playerTankSprites/');
INSERT INTO `tank_name` VALUES ('304', 'd123.png', '../playerTankSprites/');
INSERT INTO `tank_name` VALUES ('317', 'enemyTank.png', '../enemyTankSprites/');
INSERT INTO `tank_name` VALUES ('331', 'moroEne.png', '../enemyTankSprites/');
INSERT INTO `tank_name` VALUES ('336', 'enemy123.png', '../enemyTankSprites/');
INSERT INTO `tank_name` VALUES ('338', 'enemy1.png', '../enemyTankSprites/');
INSERT INTO `tank_name` VALUES ('339', 'playerMoro.png', '../playerTankSprites/');
INSERT INTO `tank_name` VALUES ('341', 'playerNoiseRGB.png', '../playerTankSprites/');
INSERT INTO `tank_name` VALUES ('345', 'player1.png', '../playerTankSprites/');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id_user` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(25) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `salt` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `ifAdmin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('193', 'admin', '85cbc591fd6da1ecfe66851365a9a170313ef877', 'admin@gmail.com', '6a5e08811b359c0da1cec447c878573b75738d86', '1');
INSERT INTO `users` VALUES ('195', 'user123', '6f8cafbfa7131a2108c3ca272b38e27ced0a160f', 'user@gmail.com', 'cea6475abf50000b50fe25c592e079363689f59e', '0');
INSERT INTO `users` VALUES ('196', 'user1234', '0db6c3200b76580479815475eaf80378bef4c4f4', 'user1234@gmail.com', 'd8502b7d774861547d38343645a9f52b163d08cd', '0');
INSERT INTO `users` VALUES ('198', 'marcinek', '0ef3293135470b161d5dc1ef2990c75ee594970b', 'marcine1@gmail.com', 'a02b857f2eff73e8e188f35529dd91f8144b23b9', '0');
INSERT INTO `users` VALUES ('199', 'kontotestowe', 'ead6b05fd5f0080f1f258555eff1b9aa1e378bca', 'testowe@gmail.com', 'ba30fd97b4127db56e9f4d3d9c030d71646fd2e7', '0');
INSERT INTO `users` VALUES ('200', 'qwertyuiop', '00fda3d0cb1db5a3926101e81f35b8bd30dbef98', 'ksjdjdskf@gmail.com', '77de68daecd823babbb58edb1c8e14d7106e83bb', '0');

-- ----------------------------
-- Table structure for `users_history`
-- ----------------------------
DROP TABLE IF EXISTS `users_history`;
CREATE TABLE `users_history` (
  `id_user` int(10) NOT NULL,
  `login` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `id_users_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` char(1) COLLATE utf8_bin NOT NULL,
  `date` date NOT NULL DEFAULT '0000-00-00',
  `ifAdmin` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_users_history`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=368 DEFAULT CHARSET=utf8 COLLATE=utf8_bin
/*!50100 PARTITION BY HASH (year(date))
PARTITIONS 4 */;

-- ----------------------------
-- Records of users_history
-- ----------------------------
INSERT INTO `users_history` VALUES ('1', 'MARCIN', 'marcin1234', 'marcin@gmail.com', '19', 'U', '2016-11-09', null);
INSERT INTO `users_history` VALUES ('3', 'FD', 'fdsfdd', 'ffffed', '20', 'D', '2016-11-09', null);
INSERT INTO `users_history` VALUES ('5', 'OK', null, null, '21', 'D', '2016-11-14', null);
INSERT INTO `users_history` VALUES ('4', 'OK', null, null, '22', 'D', '2016-11-14', null);
INSERT INTO `users_history` VALUES ('16', 'ASDAS', '', '', '23', 'D', '2016-11-14', null);
INSERT INTO `users_history` VALUES ('6', 'OK', null, null, '24', 'D', '2016-11-14', null);
INSERT INTO `users_history` VALUES ('17', 'ASDAS', '', '', '25', 'D', '2016-11-19', null);
INSERT INTO `users_history` VALUES ('20', 'ADAM', '$2y$10$6yHjGlzCxScQArEMoS', 'adam@gmail.com', '26', 'D', '2016-11-20', null);
INSERT INTO `users_history` VALUES ('21', 'ADAM', '$2y$10$93YZGHEraie8zNGYwv', 'adam@gmail.com', '27', 'D', '2016-11-20', null);
INSERT INTO `users_history` VALUES ('23', 'MICHAL', 'michal12345', 'michal@gmail.com', '28', 'D', '2016-11-20', null);
INSERT INTO `users_history` VALUES ('22', 'ADAM', 'adam12345', 'adam@gmail.com', '29', 'D', '2016-11-20', null);
INSERT INTO `users_history` VALUES ('25', 'NOWY', 'nowy12345', 'nowy@gmail.com', '30', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('26', 'NOWY', 'nowy12345', 'nowy@gmail.com', '31', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('52', null, null, null, '32', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('54', null, null, null, '33', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('55', 'NOWYUSER', 'nowy12345', 'nowyuser@gmail.com', '34', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('53', null, null, null, '35', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('51', null, null, null, '36', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('50', null, null, null, '37', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('49', null, null, null, '38', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('48', null, null, null, '39', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('47', null, null, null, '40', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('46', null, null, null, '41', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('45', null, null, null, '42', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('44', null, null, null, '43', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('43', null, null, null, '44', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('42', null, null, null, '45', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('41', null, null, null, '46', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('40', null, null, null, '47', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('39', null, null, null, '48', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('38', null, null, null, '49', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('37', null, null, null, '50', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('36', null, null, null, '51', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('35', null, null, null, '52', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('34', null, null, null, '53', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('33', null, null, null, '54', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('32', null, null, null, '55', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('31', null, null, null, '56', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('30', null, null, null, '57', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('29', null, null, null, '58', 'D', '2016-11-21', null);
INSERT INTO `users_history` VALUES ('57', 'xDxDxDxD', 'haslo1234', 'xD@gmail.com', '59', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('56', null, null, null, '60', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('28', 'NOWYUZYTKOWNIK', 'nowy12345', 'nowyu@gmail.com', '61', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('27', 'NOWY', 'nowy12345', 'nowy@gmail.com', '62', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('24', 'ADAM', 'adam12345', 'adam@gmail.com', '63', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('14', 'OKEJ', 'sdas', 'okej', '64', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('1', 'MARCIN', 'marcin12345', 'marcin@gmail.com', '65', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('2', 'HERMENEGILDA', 'hermenegilda123', 'hermenegilda@onet.eu', '66', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('58', 'NOWY', 'nowy1234', 'nowy@gmail.com', '67', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('59', 'NOWY', 'nowy1234', 'nowyn@gmail.com', '68', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('63', 'UlKa', 'ula12345', 'ula3@gmail.com', '69', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('62', 'Ulka', 'ula12345', 'ula2@gmail.com', '70', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('61', 'ULKA', 'ula12345', 'ula1@gmail.com', '71', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('60', 'Ula', 'ula12345', 'ula@gmail.com', '72', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('64', 'SADASD', '12345678', 'ula1@gmail.com', '73', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('65', 'SADASAS', '12345678', 'nowy@gmail.com', '74', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('66', 'SADASDSA', '12345678', '1@gmail.com', '75', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('67', 'NWSADAD', '12345678', '123@gmail.com', '76', 'D', '2016-11-22', null);
INSERT INTO `users_history` VALUES ('77', 'DUUUPA', '1aa0089f32afc1b0d0d0c2205', 'sdkjhskj@gmail.com', '77', 'D', '2017-02-08', null);
INSERT INTO `users_history` VALUES ('76', 'MARCINECZEK', '507afaded49e8a0ea8d90c7df', 'ssjdfsdkjfks@gmail.com', '78', 'D', '2017-02-08', null);
INSERT INTO `users_history` VALUES ('75', 'MARCINEK', 'haselko1', 'marcin.uryga@onet.eu', '79', 'D', '2017-02-08', null);
INSERT INTO `users_history` VALUES ('78', 'MARCINEK', '15bd141ba7cbc8755e674e47a', 'marcin.uryga@onet.eu', '80', 'D', '2017-02-08', null);
INSERT INTO `users_history` VALUES ('79', 'MARCINEK', '3c78ca05a6c216425249b4f21', 'marcin.uryga@onet.eu', '81', 'D', '2017-02-08', null);
INSERT INTO `users_history` VALUES ('80', 'MARCINEK', '1249693c2ba6aa554fc1e56f0', 'marcin.uryga@onet.eu', '82', 'D', '2017-02-08', null);
INSERT INTO `users_history` VALUES ('82', 'MARCINEK', '64e22ed589bc865ecaeb10859', 'marcin.uryga@onet.eu', '83', 'D', '2017-02-08', null);
INSERT INTO `users_history` VALUES ('81', 'MMAARRCC', 'c6efbb228b3ce349bf7c65f89', 'sdkjfsk@gmail.com', '84', 'D', '2017-02-08', null);
INSERT INTO `users_history` VALUES ('87', 'ASMIN', 'f437cb523555179b98902bcc4', 'admin@gmail.com', '85', 'U', '2017-02-11', null);
INSERT INTO `users_history` VALUES ('87', 'ADMIN', 'f437cb523555179b98902bcc4', 'admin@gmail.com', '86', 'U', '2017-02-12', null);
INSERT INTO `users_history` VALUES ('92', 'SRUTUTUTU', '6f708fc0abbc33a21ccd3e43c', 'haselkooo@gmail.com', '87', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('91', 'QWERTYUIOP', 'ae8f8ce32ba21640f8142039c', 'dfghj@gmail.com', '88', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('105', 'JDJKKDKS', 'haselkoo', 'kdkjdfjdf@gmail.com', '89', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('104', 'JDFJKFDJKFDJ', 'haselko1', 'dkfkf@gmail.com', '90', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('103', 'YGDHUSJJSI', 'haselko1', 'jdfdkdk@gmail.com', '91', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('102', 'HJDSKLA', 'haselko1', 'kfkfdjdk@gmail.com', '92', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('101', 'KFJKFFDLKL', 'haselko1', 'kjfjefjkf@gmail.com', '93', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('100', 'HFDDHFJKFJK', 'haselko1', 'dkkdkfksk@gmail.com', '94', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('99', 'DSDDDF', 'haselko1', 'ddkdkskl@gmail.com', '95', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('98', 'JDHDLALAL', 'haselko1', 'masrcoo@gmail.com', '96', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('97', 'CHHDKSKJD', 'haselko1', 'djd@gmail.com', '97', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('96', 'CHUJEEE', 'haselko1', 'chujeee@gmai.com', '98', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('95', 'HUDFHDHF', 'ecb294af4dff0cd3347b1d265', 'fghj@gmail.com', '99', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('94', 'TESTYYY', '4ce7119c438249b6397ebbb70', 'testyyy@gmail.com', '100', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('93', 'QWERTYUIOP', '7ec20ffc9c9d8e5f3c280b5c2', 'test@gmail.com', '101', 'D', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('86', 'MARCINEK123', 'c1e037698c929812b47cd886b', 'sjfsdjf@gmail.com', '102', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('85', 'MARCINEK1', '80879c3bbcece4b116093dba6', 'msdks@gmail.com', '103', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('84', 'ASHKDASHKJAHSDK', '4663964c2c36b26699d5f5c29', 'sdkjfhskjdfhkjs@gmail.com', '104', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('83', 'MARCINEK', '64e22ed589bc865ecaeb10859', 'marcin.uryga@onet.eu', '105', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('74', 'IZZYS', 'lubiekwiatki123', '1@1.com', '106', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('72', 'TOMAK', 'twarogpierog', 'twarogpierog@chujmajl.com', '107', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('73', 'Julia', 'zaq12wsx', 'robaczek771@onet.pl', '108', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('71', 'QWERTY', '12345678', 'qwerty@gmail.com', '109', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('70', 'MARCIN', 'marcin12345', 'marcin@gmail.com', '110', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('69', 'ASDFG', '12345678', '12@gmail.com', '111', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('68', 'umcaUmca', 'huehuehue', 'czillout@umca.pl', '112', 'U', '2017-02-13', null);
INSERT INTO `users_history` VALUES ('106', 'FDFD', null, null, '113', 'D', '2017-02-20', null);
INSERT INTO `users_history` VALUES ('68', 'umcaUmca', 'huehuehue', 'czillout@umca.pl', '114', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('69', 'ASDFG', '12345678', '12@gmail.com', '115', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('70', 'MARCIN', 'marcin12345', 'marcin@gmail.com', '116', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('71', 'QWERTY', '12345678', 'qwerty@gmail.com', '117', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('72', 'TOMAK', 'twarogpierog', 'twarogpierog@chujmajl.com', '118', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('73', 'Julia', 'zaq12wsx', 'robaczek771@onet.pl', '119', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('74', 'IZZYS', 'lubiekwiatki123', '1@1.com', '120', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('83', 'MARCINEK', '64e22ed589bc865ecaeb10859', 'marcin.uryga@onet.eu', '121', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('84', 'ASHKDASHKJAHSDK', '4663964c2c36b26699d5f5c29', 'sdkjfhskjdfhkjs@gmail.com', '122', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('85', 'MARCINEK1', '80879c3bbcece4b116093dba6', 'msdks@gmail.com', '123', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('86', 'MARCINEK123', 'c1e037698c929812b47cd886b', 'sjfsdjf@gmail.com', '124', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('87', 'ADMIN', 'f437cb523555179b98902bcc4', 'admin@gmail.com', '125', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('88', 'SKDJFHSDKFHJSHS', 'cb953daece8451f3f6fb43ae3', 'sddsa@gmail.com', '126', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('89', 'POIUYTREWQ', '5b5e7d9b4e9950f60344d6a1e', 'skdjfhskj@gmail.com', '127', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('90', 'SRAKA', 'b13008960fee8bd364cbe7a2d', 'sraka@sraka.pl', '128', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('2', '', 'c3e82683d5f3946fce6a52847', '', '129', 'D', '2017-02-21', null);
INSERT INTO `users_history` VALUES ('4', '', '', '', '130', 'D', '2017-02-22', null);
INSERT INTO `users_history` VALUES ('5', '', '', '', '131', 'D', '2017-02-22', null);
INSERT INTO `users_history` VALUES ('6', '', '', '', '132', 'D', '2017-02-22', null);
INSERT INTO `users_history` VALUES ('8', 'MARCINOS', 'e0b83916f3276475a3ea94850', 'kadj@gmail.com', '133', 'D', '2017-02-22', null);
INSERT INTO `users_history` VALUES ('9', 'MARCINOS', 'f0fe5192763c12c332185461c', 'asdja@gamil.com', '134', 'D', '2017-02-22', null);
INSERT INTO `users_history` VALUES ('1', 'MARCINEK', 'f1e9fb26f37b457d130148380', 'marcin.uryga@onet.eu', '135', 'D', '2017-02-22', null);
INSERT INTO `users_history` VALUES ('10', 'MARCINOS', 'e4ab424fea916729e38ef9a48', 'marcinos@gmai.com', '136', 'D', '2017-02-22', null);
INSERT INTO `users_history` VALUES ('1', 'MARCINEK', 'a97ad797f641d96bd24a2abb6', 'marcinek@gmail.com', '137', 'D', '2017-02-22', null);
INSERT INTO `users_history` VALUES ('3', 'MARCIN', '301b78a06b1ec065d6623c155', 'marcin.uryga@onet.eu', '138', 'D', '2017-02-25', null);
INSERT INTO `users_history` VALUES ('4', 'ADMIN', '3dc8750daa16e08e9e366f99e', 'admin@gmail.com', '139', 'U', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('5', 'ADMINEK', '5587332b5cf26e2190ad7505f', 'adminek@gmail.com', '140', 'U', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('5', 'ADMINEK', '5587332b5cf26e2190ad7505f', 'adminek@gmail.com', '141', 'U', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('5', 'ADMINEK', '5587332b5cf26e2190ad7505f', 'adminek@gmail.com', '142', 'U', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('5', 'ADMINEK', '5587332b5cf26e2190ad7505f', 'adminek@gmail.com', '143', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('4', 'ADMIN', '3dc8750daa16e08e9e366f99e', 'admin@gmail.com', '144', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('6', 'ADMIN', '0d5ca5e87966ddde12a17250c', 'admin@gmail.com', '145', 'U', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('7', 'ADMINEK', '350aeb2e232655cb360bd12e4', 'adminek@gmail.com', '146', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('6', 'ADMIN', '0d5ca5e87966ddde12a17250c', 'admin@gmail.com', '147', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('2', 'MARCINEK', '2c6595d6317bce82c6dce187a', 'marcinek@gmail.com', '148', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('9', 'ADMIN', 'ff15f330a94f300e0ee69d6e9', 'admin@gmail.com', '149', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('8', 'MARCINEK', '97d193d640f8e03b5fc3065f0', 'marcin.uryga@onet.eu', '150', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('10', 'MARCINEK', '55c5c3f9380705d532036c011', 'marcin.uryga@onet.eu', '151', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('10', 'MARCINEK', '55c5c3f9380705d532036c011', 'marcin.uryga@onet.eu', '152', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('10', 'MARCINEK', '55c5c3f9380705d532036c011', 'marcin.uryga@onet.eu', '153', 'D', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('10', 'MARCINEK', '55c5c3f9380705d532036c011', 'marcin.uryga@onet.eu', '154', 'U', '2017-02-27', null);
INSERT INTO `users_history` VALUES ('10', 'MARCINEK', '55c5c3f9380705d532036c011', 'marcin.uryga@onet.eu', '155', 'D', '2017-02-28', null);
INSERT INTO `users_history` VALUES ('11', 'ADMIN', '3d703bbdcec827eaf660f9a52', 'admin@gmail.com', '156', 'D', '2017-02-28', null);
INSERT INTO `users_history` VALUES ('18', 'TRUTUTUTUUUU', '745921136d596955db932b1ee', 'sdkjhfksj@gmail.com', '157', 'U', '2017-02-28', null);
INSERT INTO `users_history` VALUES ('17', 'OKOK', '26bc6b32ce65d4168bd28eab1', 'skjaajjsa@gmail.com', '158', 'U', '2017-02-28', null);
INSERT INTO `users_history` VALUES ('16', 'TROLOLOLO', '1c773243d291d6effc1ddf5ca', 'askjdhakj@gmail.com', '159', 'U', '2017-02-28', null);
INSERT INTO `users_history` VALUES ('25', 'marcinÄ™Å‚', '28591918746810bc5c9199bf0', 'marcin@gmail.comm', '160', 'U', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('24', 'MC&#039;CONEY', 'bcf71126ec125dcd091bb26d4', 'mcconey@gmail.com', '161', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('25', 'marcinÄ™Å‚', '28591918746810bc5c9199bf0', 'marcin@gmail.comm', '162', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('23', 'QWERTYUIOP', 'add19604d7f2f6476921ec2d0', 'qwertyuiop@gmail.com', '163', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('22', 'MARCIN123', '5a80573aad03ac4638ad95cab', 'kdd@gmail.com', '164', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('21', 'MARRAM', '712979c7c0bf163dccc0510e9', 'jasd@gmail.com', '165', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('20', 'QWERTY', '033368b93340b0817b5e6992c', 'jfkjsf@gmail.com', '166', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('19', 'MARCINOS', '1187f9e3004d3a0224aa70aed', 'skjhfajk@gmail.com', '167', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('18', 'TRUTUTUTUUUU', '745921136d596955db932b1ee', 'sdkjhfksj@gmail.com', '168', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('17', 'OKOK', '26bc6b32ce65d4168bd28eab1', 'skjaajjsa@gmail.com', '169', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('16', 'TROLOLOLO', '1c773243d291d6effc1ddf5ca', 'askjdhakj@gmail.com', '170', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('15', 'MARCIN', '517c7e5cb2efb4635c0d1e7da', 'fkdo@gmail.com', '171', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('14', 'MARCINEK', 'd35e902c4840d26bfad0d6933', 'marcin.uryga@onet.eu', '172', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('26', 'MARCINEK', '0db0f60788e0a876921fe2684', 'marcinek@gmail.com', '173', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('27', 'ADMIN', '247e8334429eabd9387c6fdfe', 'admin@gmail.com', '174', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('28', 'MARCINEK', '63f63fd134bbf2ae9973bc7ae', 'marcin@gmail.com', '175', 'U', '2017-03-03', '0');
INSERT INTO `users_history` VALUES ('28', 'MARCINEK', '63f63fd134bbf2ae9973bc7ae', 'marcin@gmail.com', '176', 'U', '2017-03-03', '1');
INSERT INTO `users_history` VALUES ('28', 'MARCINEK', '63f63fd134bbf2ae9973bc7ae', 'marcin@gmail.com', '177', 'U', '2017-03-03', '0');
INSERT INTO `users_history` VALUES ('28', 'MARCINEK', '63f63fd134bbf2ae9973bc7ae', 'marcin@gmail.com', '178', 'D', '2017-03-03', null);
INSERT INTO `users_history` VALUES ('30', 'ADMIN', '31bd40d63e46e0bca90661aa1', 'admin@gmail.com', '179', 'U', '2017-03-03', '0');
INSERT INTO `users_history` VALUES ('33', 'OKAY', 'okay123123', 'okay@gmail.com', '180', 'U', '2017-03-05', null);
INSERT INTO `users_history` VALUES ('33', 'OKAY', 'okay123123', 'okay@gmail.com', '181', 'D', '2017-03-05', null);
INSERT INTO `users_history` VALUES ('35', 'KUBA', '537cb3b5a7a6153917be62229', 'kuba@kuba.pl', '182', 'D', '2017-03-05', null);
INSERT INTO `users_history` VALUES ('30', 'ADMIN', '31bd40d63e46e0bca90661aa1', 'admin@gmail.com', '183', 'D', '2017-03-05', null);
INSERT INTO `users_history` VALUES ('36', 'KUBA', 'c21046673048069a1c4fcea44', 'kuba@kuba.pl', '184', 'D', '2017-03-05', null);
INSERT INTO `users_history` VALUES ('29', 'MARCINEK', 'e2c76081da8b6c7cdd8d526bc', 'marcinek@gmail.com', '185', 'D', '2017-03-05', null);
INSERT INTO `users_history` VALUES ('37', 'OKAY', 'c6a54dc97509a9ad80cb922af', 'okay@gmail.com', '186', 'D', '2017-03-05', null);
INSERT INTO `users_history` VALUES ('39', 'ULUS', '18df1172702f6c13d31fa0913', 'robaczekkjsdh@gmail.com', '187', 'U', '2017-03-05', '0');
INSERT INTO `users_history` VALUES ('40', 'ADMIN', '45a7e3b1feed9056842c18bfd', 'admin@gmail.com', '188', 'U', '2017-03-05', '0');
INSERT INTO `users_history` VALUES ('39', 'ULUS', '18df1172702f6c13d31fa0913', 'robaczekkjsdh@gmail.com', '189', 'D', '2017-03-06', null);
INSERT INTO `users_history` VALUES ('38', 'MARCINEK', 'd513fdddf321a855f2a892983', 'marcinek@gmail.com', '190', 'D', '2017-03-06', null);
INSERT INTO `users_history` VALUES ('41', 'MARCINOS', '316037cde56004eb6412a7914', 'marcinos@gmail.com', '191', 'D', '2017-03-06', null);
INSERT INTO `users_history` VALUES ('42', 'MARCINEK', '0092f1e93275d6badecf48040', 'marcinek@gmail.com', '192', 'D', '2017-03-06', null);
INSERT INTO `users_history` VALUES ('43', 'MARCINEK', '8f2d16b6e40fc7602bf082020', 'marcinek@gmail.com', '193', 'D', '2017-03-06', null);
INSERT INTO `users_history` VALUES ('44', 'MARCINOS', 'f01666733c6e8ab439806f19e', 'marcinos@gmail.com', '194', 'D', '2017-03-06', null);
INSERT INTO `users_history` VALUES ('46', 'MARCINOS', 'aa683691b7665c338ca21dd6f', 'marcinos@gmail.com', '195', 'D', '2017-03-06', null);
INSERT INTO `users_history` VALUES ('45', 'MARCINEK', '1bf273efa34a6446ca714f960', 'marcinek@gmail.com', '196', 'D', '2017-03-06', null);
INSERT INTO `users_history` VALUES ('47', 'MARCINEK', '7c6b9caccd3d516ab5554e105', 'marcin.uryga@onet.eu', '197', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('48', 'MARCINOS', '8a7c616ddf8d68c51521cf29e', 'ksjd@gmail.com', '198', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('50', 'IJEIJDIJEI', '297a1fd26277ef4f49148c4a7', 'jmjd@gmail.com', '199', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('54', 'NDEIISEJM', 'a29a67338b9e91b558614d673', 'sij@gmail.com', '200', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('51', 'QWERTYUIOP', 'f7c9b5b3901de29445673aee4', 'qwerty@gmail.com', '201', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('52', 'WERTGWHJNKMQ', 'ef00c1a3de0200b2ba3926e57', 'qw@gmqi.cm', '202', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('55', 'MARCINEK', 'e62510a6e9bf0421b784be9ae', 'sadja@gmail.com', '203', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('56', 'QWERTYUIOP', '414ed3ea9c8c2d0c610226250', 'qwr@gmail.com', '204', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('57', 'QRWEQBQ', 'c1deb572f3e68cf4fd56e7f24', 'qwert@gmail.com', '205', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('58', 'QWERTYUIOP123', '93843a54f084a6f1ff1eb25dc', 'qwertyuiop@gmail.com', '206', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('59', 'RTDFWVGHJ', '4da254e7bfeac1d138562129c', 'qwertyuiop@gmail.comm', '207', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('60', 'marcinÄ™Å‚Ä™', 'fcc31b23af9e26ce50a47beb2', 'qwertyuuiop@gmail.com', '208', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('61', 'QWERTYUIOP', 'ef6e33b40a8d09ed0901aed4f', 'qwerty@gmail.com', '209', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('64', 'QWER1T2738R9TP', 'f1d39703b43daf75e12de732e', 'qwertyuuiop@gmail.com', '210', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('65', 'DSFJ', '76061c8d9ed7baad1be305b6e', 'qwertyu21312@gmail.com', '211', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('66', 'marcinelÄ™', '31c4073281c5c45a884497fdb', 'ush@gmail.com', '212', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('49', 'QWERTYUIOP`', '285912369e340677459e3cc35', 'sjnd@gmail.com', '213', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('53', 'UESNUEJMIJ1`QWERT', 'ef00c1a3de0200b2ba3926e57', 'yg@gmai.com', '214', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('62', 'QWERTYUIOP[', '3077963bc7394418a4dfd0ade', 'qwertyuiop@gmail.com', '215', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('63', '1234567890-', '6359a3c17e099dfa7dc79a2da', 'qwert@gmail.com', '216', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('67', 'QWERTYUI', '4e0bd0395aef34e447b714361', 'qwerty@gmail.com', '217', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('68', 'QWERTYUIO', 'c26a8ebcf1ca1e90f402540ac', 'qwertyuiop@gmail.com', '218', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('69', 'QWERTYU', '2de135a8845f66d8b0d1c91df', 'qwert@gmail.com', '219', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('71', 'QWERT', '7cf112350936c568e9bbe8d94', 'qwertyuiop@gmail.comm', '220', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('72', 'QWER', 'fba6e31a2a69ddc69114ae916', 'qwertyuiop@gmail.commm', '221', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('70', 'QQWERTY', 'd396789538127c5ad06cbabaa', 'qw@gmqi.cm', '222', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('73', 'QWE', '3b73c6049b18288759c5813cc', 'qwertyuiop@gmail.como', '223', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('82', null, null, null, '224', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('82', 'DSDWDWADAW', null, null, '225', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('81', 'ASDERTGEWD', null, null, '226', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('80', 'DWEWEDWXA', null, null, '227', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('79', 'SFSDFSDDSW', null, null, '228', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('78', 'ASDADASD', null, null, '229', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('77', 'ASDASDAS', null, null, '230', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('76', 'SDADA', null, null, '231', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('75', 'ASDASDAD', null, null, '232', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('74', 'JKDFS', null, null, '233', 'U', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('81', 'ASDERTGEWD', null, null, '234', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('82', 'DSDWDWADAW', null, null, '235', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('80', 'DWEWEDWXA', null, null, '236', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('79', 'SFSDFSDDSW', null, null, '237', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('78', 'ASDADASD', null, null, '238', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('77', 'ASDASDAS', null, null, '239', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('76', 'SDADA', null, null, '240', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('75', 'ASDASDAD', null, null, '241', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('74', 'JKDFS', null, null, '242', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('84', 'marcinÄ™Å‚Ä™', '47a771bd8c1d212fcfe2626ef', 'qw@gmail.com', '243', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('83', 'QWERTYUIOP', '4894403381c281b2d806ae520', 'qwertyuiop@gmail.com', '244', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('85', 'MARCINEK', '157ddaca059dac6bed2b2d545', 'marcin.uryga@onet.eu', '245', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('86', 'marcineÅ‚', '1b35865a97e8b611f88834c65', 'grs@gmail.com', '246', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('88', 'QWERTYUIOP', '4f85fc39f42d774a8393ab794', 'qwertyuiop@gmail.com', '247', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('89', 'QWERT', '88e02d4391c2928f6720dba76', 'qwertyuiop@gmail.com', '248', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('87', 'MC&#039;CONEY', '918e4e59cea8abd77a14dee36', 'mcconey@gmail.com', '249', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('91', 'marcinÄ™Å‚eÄ™', '56ca2669cd2e3668b8297531f', 'qwertyuiop@gmail.com', '250', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('90', 'MC&#039;CONEY', '72176dc6043eb92dbc11d47ec', 'mcconey@gmail.com', '251', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('92', 'QWERTY', 'daff280613efa0b0584ef528d', 'qwertyuiop@gmail.comm', '252', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('93', 'QWERTYUIOP', '06432761415711a3edc18621e', 'qwertyuiop@gmail.com', '253', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('95', 'RQTYEUQIO', '87f8a320038b9094ba179c126', 'qwertyuuiop@gmail.com', '254', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('94', 'MARCK', 'e107b796bf1bc5205fa10f7ea', 'qw@gmqi.cm', '255', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('97', 'MARCINEK', '0533a2e5f412ecce4e4df374a', 'qw@gmqi.cm', '256', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('96', 'QERRTRYTR', '384c895a2322aa4c031c91fb7', 'qwertyuiop@gmail.com', '257', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('102', 'USER1234', '7019cd2848debdb010b0dccc3', 'qwerty@gmail.comO', '258', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('103', 'TEST', '4869e572823e1d331160d73e3', 'test@gmmail.com', '259', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('98', 'MARCINEK', 'dce8c9482ed68aaa4ec3c3bd1', 'marcin.uryga@onet.eu', '260', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('100', 'MARCIN', 'f7bc4057aa2bb249d0ea0352b', 'wieofei@gmail.com', '261', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('99', 'MARCINOS', '74e661bad2d14dff7fff57a64', 'marcinos@gmail.com', '262', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('101', 'OKAY', '000cd061def73b783508dc9e0', 'qwertyuiop@gmail.comm', '263', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('107', 'KONTO123', '6686ed3602614ffe105b34340', 'djmsdx@gmail.com', '264', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('108', 'TEST123', 'c203f72ff4857189490f42ce6', 'ksdjsk@gmail.com', '265', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('106', 'QWERTY', 'fed124195bf7748f01554721b', 'qw@gmqi.cm', '266', 'D', '2017-03-07', null);
INSERT INTO `users_history` VALUES ('109', 'USER1234', '887b740f4935999e0aea70b72', 'dkdjj@gmail.com', '267', 'D', '2017-03-08', null);
INSERT INTO `users_history` VALUES ('104', 'MARCINEK', 'd261a4e589c724f1a66183a18', 'marcin.uryga@onet.eu', '268', 'D', '2017-03-08', null);
INSERT INTO `users_history` VALUES ('105', 'MARCINOS', '90c29b304716d0184d1448039', 'mas@gmail.com', '269', 'D', '2017-03-09', null);
INSERT INTO `users_history` VALUES ('110', 'MARCINEK', 'a469bb048584f1418fdd40fbc', 'haselko@gmail.com', '270', 'D', '2017-03-09', null);
INSERT INTO `users_history` VALUES ('40', 'ADMIN', '45a7e3b1feed9056842c18bfd', 'admin@gmail.com', '271', 'D', '2017-03-11', null);
INSERT INTO `users_history` VALUES ('111', 'MARCINEK', '9d0922195331134dc8a351ef4', 'marcin.uryga@onet.eu', '272', 'D', '2017-03-11', null);
INSERT INTO `users_history` VALUES ('112', 'MARCINOS', 'c126de96291c892e10cb5e84b', 'marcinos@gmail.com', '273', 'D', '2017-03-11', null);
INSERT INTO `users_history` VALUES ('113', 'M4RC1N', 'ed9a98360a81651d5f483f7fc', 'm4rc1n@gmail.com', '274', 'D', '2017-03-11', null);
INSERT INTO `users_history` VALUES ('115', 'ADMIN', '7b2fe973e5e5f397fbb1f63af', 'admin@gmail.com', '275', 'U', '2017-03-11', '0');
INSERT INTO `users_history` VALUES ('114', 'MARCINEK', '0581be818a5ae448fb8fca905', 'marcinek@gmail.coom', '276', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('117', 'MARCINEK', 'e1eb1206f1802226d1e49632e', 'marcinek@gmail.com', '277', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('116', 'MARCINOS', '53703834579b52f0ca025f8d9', 'marcinos@gmail.com', '278', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('118', 'MARCINEK', 'a7f3daf665676421c7de0cd88', 'marcinek@gmail.com', '279', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('119', 'MARCINEK', 'f776ca68b9993745f8f837db1', 'marcinek@gmail.com', '280', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('120', 'MARCINOS', '9136e907fce1d3095aa3a04c1', 'marcinos@gmail.com', '281', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('121', 'MARCINEK', '8cb6519c8e8eddeb72d25da6b', 'marcinek@gmail.com', '282', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('122', 'MARCINOS', '2b78e50275b09ab2c11f5f975', 'marcinos@gmail.com', '283', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('123', 'MARCINEK', '7cdb032e96dada09add101401', 'marcinek@gmail.com', '284', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('124', 'MARCINEK', '0123d622944b8395fe366ed17', 'marcinek@gmail.com', '285', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('127', 'TROLOLOLO', '27dc545b2085ef118a5982cf6', 'trolololo@gmail.com', '286', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('126', 'MARCINOS', 'ab1df77f891ca92a38c8008db', 'marcinos@gmail.com', '287', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('125', 'MARCINEK', '18f92474167b2153205022027', 'marcinek@gmail.com', '288', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('130', 'TROLOLOLO', 'bced1b6f63a4a731b5562d60f', 'trolololo@gmail.com', '289', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('129', 'MARCINOS', 'e1e83ff22ff9403b9d6b3b32f', 'marcinos@gmail.com', '290', 'D', '2017-03-12', null);
INSERT INTO `users_history` VALUES ('128', 'MARCINEK', 'a5f9cad7d15b269e15f6cd37d', 'marcinek@gmail.com', '291', 'D', '2017-03-13', null);
INSERT INTO `users_history` VALUES ('131', 'MARCINEK', '66200af61ee4ed62c82b36bd9', 'marcinek@gmail.com', '292', 'D', '2017-03-13', null);
INSERT INTO `users_history` VALUES ('132', 'MARCINEK', 'c2b81b09678b67c5ce4fd706e', 'marcinek@gmail.com', '293', 'D', '2017-03-13', null);
INSERT INTO `users_history` VALUES ('133', 'MARCINEK', '18ec93b450b79b88522196cb3', 'marcinek@gmail.com', '294', 'D', '2017-03-13', null);
INSERT INTO `users_history` VALUES ('134', 'MARCINEK', '8f17ed7ec6be6c040d79eb918', 'marcinek@gmail.com', '295', 'D', '2017-03-13', null);
INSERT INTO `users_history` VALUES ('136', 'MARCINOS', '6ae9dc2b5f9aa567e0b964034', 'marcinos@gmail.com', '296', 'D', '2017-03-13', null);
INSERT INTO `users_history` VALUES ('137', 'MARCINOS', '745007d33fb537b7937ac5bc2', 'marcinos@gmail.com', '297', 'D', '2017-03-13', null);
INSERT INTO `users_history` VALUES ('138', 'MARCINOS', '0e8feedd987a806216d4b9ae2', 'marcinos@gmail.com', '298', 'D', '2017-03-14', null);
INSERT INTO `users_history` VALUES ('135', 'MARCINEK', '27dc545b2085ef118a5982cf6', 'marcinek@gmail.com', '299', 'D', '2017-03-14', null);
INSERT INTO `users_history` VALUES ('140', 'MARCINOS', 'da0f2a404fc3085b3420a02ae', 'marcinos@gmail.com', '300', 'D', '2017-03-14', null);
INSERT INTO `users_history` VALUES ('139', 'MARCINEK', '2a92f4ade84cc2faeae1e8e92', 'marcinek@gmail.com', '301', 'D', '2017-03-14', null);
INSERT INTO `users_history` VALUES ('141', 'MARCINEK', '72f23ac2890c8cadd7aff888a', 'marcinek@gmail.com', '302', 'D', '2017-03-14', null);
INSERT INTO `users_history` VALUES ('143', 'MARCINOS', '283aae9b1d832b6fed69b87c9', 'marcinos@gmail.com', '303', 'D', '2017-03-14', null);
INSERT INTO `users_history` VALUES ('142', 'MARCINEK', 'dce8c9482ed68aaa4ec3c3bd1', 'marcinek@gmail.com', '304', 'D', '2017-03-14', null);
INSERT INTO `users_history` VALUES ('145', 'MARCINOS', 'd79a8b14d643d9fbb62eede75', 'marcinos@gmail.com', '305', 'D', '2017-03-14', null);
INSERT INTO `users_history` VALUES ('146', 'MARCINOS', '2343d3dd26d0d5f43ac00beaf', 'marcinos@gmail.com', '306', 'D', '2017-03-14', null);
INSERT INTO `users_history` VALUES ('144', 'MARCINEK', 'f53193e03e8754aad4899f95f', 'marcinek@gmail.com', '307', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('149', 'TEST', 'dad106519bfafde7bc1d4790d', 'test@gmail.com', '308', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('148', 'MARCINOS', '1db8185a68943077c04de4b36', 'marcinos@gmail.com', '309', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('147', 'MARCINEK', 'f4f70ff9b277fc77937f45d4b', 'marcinek@gmail.com', '310', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('152', 'TEST', 'b4080b30b3096d427ab3a88eb', 'test@gmail.com', '311', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('151', 'MARCINOS', 'b93f5b8086820449f3a235299', 'marcinos@gmail.com', '312', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('150', 'MARCINEK', '4cf1cc96273e5a86b55c10076', 'marcinek@gmail.com', '313', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('155', 'TEST', '4e6b98f56a27814f85935abb3', 'test@gmail.com', '314', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('154', 'MARCINOS', '6a60760553b02545f6caab39b', 'marcinos@gmail.com', '315', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('153', 'MARCINEK', '3cfa4e8991384f61b931721ec', 'marcinek@gmail.com', '316', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('158', 'TEST', '12fee522744668c8dade377e2', 'test@gmail.com', '317', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('157', 'MARCINOS', '3d122d7ffbac105616305949c', 'marcinos@gmail.com', '318', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('162', 'QWERTYUIO', '43471a38301cab6a6fceb39ba', 'qwertyuiop@gmail.comm', '319', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('163', 'QWERTYUIOOOOOOOOOOOO', 'eb4ae9313533e032a813b29d3', 'qw@gmqi.cm', '320', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('161', 'QWERTYUIOP', '007de90d7d34525aa1c9cb3fa', 'qwertyuiop@gmail.com', '321', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('160', 'TEST', '6edd103ab4538f790c660e00f', 'test@gmail.com', '322', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('159', 'MARCINOS', '72176dc6043eb92dbc11d47ec', 'marcinos@gmail.com', '323', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('156', 'MARCINEK', '535928c0975f355043fead9da', 'marcinek@gmail.com', '324', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('165', 'MARCIN', '6acd8470781d5193f3ec4cda2', 'marcin.uryga@onet.eu', '325', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('166', 'MARCINEK', '33d70b2fb1134d7be573111c6', 'marcinek@gmail.com', '326', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('164', 'MARCINOS', 'b9c05ef8d30380ea20d7c0a76', 'marcinos@gmail.com', '327', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('170', 'QWERTYUIOP', '8c443cb026b2224c87f2cf04b', 'qwertyuiop@gmail.com', '328', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('169', 'TEST', 'ee4dc1582fc0a6cb0857c39d1', 'test@gmail.com', '329', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('168', 'MARCINOS', 'fab6d911aa8b6887db8b7e959', 'marcinos@gmail.com', '330', 'U', '2017-03-15', '0');
INSERT INTO `users_history` VALUES ('168', '0', 'fab6d911aa8b6887db8b7e959', 'marcinos@gmail.com', '331', 'U', '2017-03-15', '0');
INSERT INTO `users_history` VALUES ('168', 'MARCINOS', 'fab6d911aa8b6887db8b7e959', 'marcinos@gmail.com', '332', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('172', 'TEST', '9e94b4544ffba384f5d761b8a', 'test@gmail.com', '333', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('171', 'MARCINOS', '157ddaca059dac6bed2b2d545', 'marcinos@gmail.com', '334', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('167', 'MARCINEK', 'c61d75e6d6d7bdfa08e1f6068', 'marcinek@gmail.com', '335', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('176', 'QWERTYU', 'f33583293830ac4016513bb5d', 'qwertyu21312@gmail.com', '336', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('175', 'QWERTYUI', 'b6e28de47bcd50e38dd942c47', 'qwertyuuiop@gmail.com', '337', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('174', 'QWERTYUIO', 'fd2ad5e14b8616b6e2d4bdf7a', 'qwertyuiop@gmail.comm', '338', 'D', '2017-03-15', null);
INSERT INTO `users_history` VALUES ('173', 'QWERTYUIOP', 'ce9db3a5898d5b390a7e569d2', 'qwertyuiop@gmail.com', '339', 'D', '2017-03-16', null);
INSERT INTO `users_history` VALUES ('180', 'IWHDIUWEJOW', '0c87c07071280506b6753f508', 'qw@gmqi.cm', '340', 'D', '2017-03-18', null);
INSERT INTO `users_history` VALUES ('175', 'MARCINEK', 'b0152bc5bb89b75f17a80dfb5', 'marcinek@gmail.com', '341', 'U', '2017-03-19', '0');
INSERT INTO `users_history` VALUES ('179', 'QWERTYUPIYR', 'e146c2003877f6befd422e98c', 'qwertyuiop@gmail.commm', '342', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('174', 'MARCINOS', '3dc8750daa16e08e9e366f99e', 'marcinos@gmail.com', '343', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('175', 'MARCINEK', '7b2fe973e5e5f397fbb1f63af', 'marcinek@gmail.com', '344', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('176', 'QWERTYUIOP', '3eb0d35739c5bba84f38833fb', 'qwertyuiop@gmail.com', '345', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('177', 'QWERTYUIO', '4ad97b7b0db99c9e691624b42', 'qwertyuiop@gmail.comm', '346', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('178', 'QWERTYU', '7091ba3b7e7f3df7495493613', 'qwertyu21312@gmail.com', '347', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('184', 'QWERTYUIOP', '395c3dc52172d85de8dd7e9e3', 'qwertyuiop@gmail.com', '348', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('183', 'MARCINOS', '11de234a3e6d88a2edb42abc5', 'marcinos@gmail.com', '349', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('182', 'MARCINEK', '6e5e7184c95d406aeb7677cad', 'marcinek@gmail.com', '350', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('181', 'MARCINO', 'cb10c570f882ad11b128d61e6', 'marcino@gmail.com', '351', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('188', 'QWERTYUIO', 'c24d4c65e6849d3718b38bdaa', 'qwertyuiio@gmail.com', '352', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('189', 'JKDSHFKSJHKJ', '90132c0d16ad15cb15a86aadd', 'alkdjdlas@gmail.com', '353', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('190', 'KFSDJHKSFH', 'c5ae5f659aeb6a25007fdef07', 'dakhask@gmail.com', '354', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('187', 'QWERTYUIOP', '3e186b2d8663c384c7cf8d509', 'qwertyuiop@gmail.com', '355', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('115', 'ADMIN', '7b2fe973e5e5f397fbb1f63af', 'admin@gmail.com', '356', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('185', 'MARCINEK', 'da0f2a404fc3085b3420a02ae', 'marcinek@gmail.com', '357', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('186', 'MARCINOS', '3200b480c5f45c70eabbf218d', 'marcinos@gmail.com', '358', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('191', 'QWERTYUIOP`', 'ca6dc478e5b82f7c485d8c209', 'odfmodm@gmail.com', '359', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('192', 'ADMIN', '9ae39217c4a18bfb0d6336e1d', 'admin@gmail.com', '360', 'D', '2017-03-20', null);
INSERT INTO `users_history` VALUES ('193', 'ADMIN', '85cbc591fd6da1ecfe6685136', 'admin@gmail.com', '361', 'U', '2017-03-20', '0');
INSERT INTO `users_history` VALUES ('197', 'USER12345', 'ddae88c9bd6a436e20b239b03', 'user12345@gmail.com', '362', 'D', '2017-03-21', null);
INSERT INTO `users_history` VALUES ('194', 'MARCINEK&#039;', 'b50de3fca05f7339f22e0bdda', 'marcinek@gmail.com', '363', 'U', '2017-03-21', '0');
INSERT INTO `users_history` VALUES ('194', 'MARCINEK&#039;N', 'b50de3fca05f7339f22e0bdda', 'marcinek@gmail.com', '364', 'D', '2017-03-21', null);
INSERT INTO `users_history` VALUES ('203', 'TEST', 'de6aec5cc7a4bbded94ee0a9c', 'testasad@gmail.com', '365', 'D', '2017-03-21', null);
INSERT INTO `users_history` VALUES ('201', 'IWUQEHIUQWHDWUQI', '6a60760553b02545f6caab39b', 'jsahd@gmail.com', '366', 'D', '2017-03-21', null);
INSERT INTO `users_history` VALUES ('202', 'IWUQEHIUQWHDWUQISAD', 'f59cc4e74f146611e3b33a954', 'jsawhd@gmail.com', '367', 'D', '2017-04-21', null);

-- ----------------------------
-- View structure for `playersstatview`
-- ----------------------------
DROP VIEW IF EXISTS `playersstatview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `playersstatview` AS select `p`.`scores` AS `scores`,`u`.`id_user` AS `id_user`,`u`.`login` AS `login` from (`player` `p` join `users` `u` on((`u`.`id_user` = `p`.`id_user`))) order by `p`.`scores` desc ;

-- ----------------------------
-- View structure for `tankenemyview`
-- ----------------------------
DROP VIEW IF EXISTS `tankenemyview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tankenemyview` AS select `te`.`id_enemy` AS `id_enemy`,`te`.`field_of_view` AS `field_of_view`,`te`.`ShootDelay` AS `ShootDelay`,`tn`.`id_tank` AS `id_tank`,`tn`.`tank_name` AS `tank_name`,`tn`.`tank_location` AS `tank_location` from (`tankenemy` `te` join `tank_name` `tn` on((`te`.`id_tank_name` = `tn`.`id_tank`))) ;

-- ----------------------------
-- View structure for `tanksview`
-- ----------------------------
DROP VIEW IF EXISTS `tanksview`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tanksview` AS select `users`.`login` AS `login`,`playertankdata`.`id_tank` AS `playerTankID`,`playertankdata`.`tank_name` AS `playerTankName`,`enemytankdata`.`id_tank` AS `enemyTankID`,`playertankdata`.`tank_location` AS `playerTankLocation`,`enemytankdata`.`tank_name` AS `enemyTankName`,`enemytankdata`.`tank_location` AS `enemyTankLocation`,`tankenemy`.`ShootDelay` AS `enemy_ShootDelay`,`tankenemy`.`field_of_view` AS `enemyField_of_view` from (((((`player` join `users` on((`player`.`id_user` = `users`.`id_user`))) join `tankplayer` on((`tankplayer`.`id_tank` = `player`.`id_tank`))) join `tankenemy` on((`player`.`id_enemy` = `tankenemy`.`id_enemy`))) join `tank_name` `playertankdata` on((`playertankdata`.`id_tank` = `tankplayer`.`id_tank_name`))) join `tank_name` `enemytankdata` on((`enemytankdata`.`id_tank` = `tankenemy`.`id_tank_name`))) ;

-- ----------------------------
-- Procedure structure for `allPlayersSettings`
-- ----------------------------
DROP PROCEDURE IF EXISTS `allPlayersSettings`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `allPlayersSettings`(IN `nick` VARCHAR(25), OUT `fullPathToTank` VARCHAR(200), OUT `fullPathToEnemy` VARCHAR(200), OUT `enemyShootDelay` INT(10), OUT `enemyFieldOfView` INT(10))
BEGIN

SELECT concat(playerTankLocation, playerTankName),
concat(enemyTankLocation, enemyTankName),
enemy_ShootDelay,
enemyField_of_view

INTO fullPathToTank, fullPathToEnemy, enemyShootDelay, enemyFieldOfView
FROM tanksView
WHERE login = nick;

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `getPlayerID`
-- ----------------------------
DROP FUNCTION IF EXISTS `getPlayerID`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getPlayerID`(`nick` VARCHAR(25)) RETURNS int(10)
BEGIN
DECLARE id INT;
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000'
	BEGIN
		RETURN 0;
	END;

	SET id = -5;
	SELECT id_user AS ID INTO id FROM users WHERE login = nick && ifAdmin = false;
	RETURN id;
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for `delete_old_log`
-- ----------------------------
DROP EVENT IF EXISTS `delete_old_log`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` EVENT `delete_old_log` ON SCHEDULE EVERY 1 SECOND STARTS '2019-10-24 14:11:13' ON COMPLETION NOT PRESERVE ENABLE DO delete from users_history where datediff(CURRENT_TIMESTAMP, users_history.timestamp)>365
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `toLowerCaseInsert`;
DELIMITER ;;
CREATE TRIGGER `toLowerCaseInsert` BEFORE INSERT ON `users` FOR EACH ROW begin

if upper(NEW.login) = NEW.login
then
set
NEW.login= lower(NEW.login);
end if;

end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `toLowerCaseUpdate`;
DELIMITER ;;
CREATE TRIGGER `toLowerCaseUpdate` BEFORE UPDATE ON `users` FOR EACH ROW begin

if upper(NEW.login) = NEW.login
then
set
NEW.login= lower(NEW.login);
end if;

end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `UsersUpdate`;
DELIMITER ;;
CREATE TRIGGER `UsersUpdate` AFTER UPDATE ON `users` FOR EACH ROW begin

insert into users_history(id_user, login, password, email, ifAdmin, date, action)
values(OLD.id_user, OLD.login, OLD.password, OLD.email, OLD.ifAdmin, CURRENT_TIMESTAMP, "U");

if NEW.ifAdmin = 1
then
DELETE player FROM player WHERE player.id_user = OLD.id_user;
end if;

end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Users_history_delete`;
DELIMITER ;;
CREATE TRIGGER `Users_history_delete` AFTER DELETE ON `users` FOR EACH ROW insert into users_history(id_user, login, password, email, date, action)
values(OLD.id_user, OLD.login, OLD.password, OLD.email,  CURRENT_TIMESTAMP, "D")
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `toUpperCaseInsert_copy`;
DELIMITER ;;
CREATE TRIGGER `toUpperCaseInsert_copy` BEFORE INSERT ON `users_history` FOR EACH ROW begin

if lower(NEW.login) = New.login
then
set NEW.login = Upper(NEW.login);
end if;

end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `toUpperCaseUpdate_copy`;
DELIMITER ;;
CREATE TRIGGER `toUpperCaseUpdate_copy` BEFORE UPDATE ON `users_history` FOR EACH ROW begin

if lower(NEW.login) = New.login
then
set NEW.login = Upper(NEW.login);
end if;

end
;;
DELIMITER ;
