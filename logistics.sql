/*
 Navicat Premium Data Transfer

 Source Server         : temperature
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 39.96.56.48:3306
 Source Schema         : logistics

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 04/06/2019 10:09:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kind_info
-- ----------------------------
DROP TABLE IF EXISTS `kind_info`;
CREATE TABLE `kind_info`  (
  `kind_id` int(3) NOT NULL AUTO_INCREMENT,
  `kind_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `kind_price` float(7, 2) NOT NULL,
  PRIMARY KEY (`kind_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `receive_id` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `receive_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_start` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_end` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_time` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `user_id` int(10) NULL DEFAULT NULL,
  `kind_id` int(10) NOT NULL,
  `user_tel` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `receive_tel` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `order_status` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10029 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (10001, '宋进钊', '3', '李明阳', '北京', '上海', '毕业资料', '2019-04-05', 10025, 0, '12345678', '1321', 1);
INSERT INTO `order_info` VALUES (10002, '胡亚婷', '6', '郭卓卓', '西安', ' 北京', ' 复习资料', ' 2019-4-5', 10025, 0, '12345678', '321', 1);
INSERT INTO `order_info` VALUES (10003, '郭卓卓', '10025', ' 李明阳', ' 北京', ' 上海', ' 复习资料', ' 2019-2-3', 5, 0, '12345678', '3212', 1);
INSERT INTO `order_info` VALUES (10004, '李明阳', '10025', '张宝', '河南尹', ' 汴京', '起义计划', ' 2019-8-9', 2, 0, '12345678', '321', 1);
INSERT INTO `order_info` VALUES (10005, '公孙瓒', '10025', ' 刘备', ' 山东', ' 河南', ' 赞助计划', ' 2019-9-9', 3, 3, '12345678', '321', 0);
INSERT INTO `order_info` VALUES (10018, '关云长', '2', '胡亚婷', '西安', '西安', '撒打发士大夫撒', '2019-06-01 09:12:03', 1357257, 3, '13572572850', '1234', 0);
INSERT INTO `order_info` VALUES (10019, '公孙瓒', '100', '曹操', '附近的开始啦', '飞洒', '发士大夫撒', '2019-06-01 15:53:47', 100, 2, '12345678', '789456', 0);
INSERT INTO `order_info` VALUES (10021, '公孙瓒', '100', '曹操', '附近的开始啦', '飞洒', '发士大夫撒', '2019-06-01 15:54:33', 100, 2, '123456', '789456', 0);
INSERT INTO `order_info` VALUES (10023, '蔡文姬', '13', '胡亚婷', '西安', '四川', '独家秘笈', '2019-06-02 07:29:10', 12, 2, '456487', '43423432', 0);
INSERT INTO `order_info` VALUES (10024, '宋进钊', '10024', '胡亚婷', '西安', '西安', '独家秘笈', '2019-06-02 09:01:07', 12, 2, '13572572850', '123456789', 0);
INSERT INTO `order_info` VALUES (10025, '郭卓卓', '10024', '胡亚婷', '重庆', '成都', '火锅料', '2019-06-02 09:24:34', 10025, 1, '12345678', '12345678', 0);
INSERT INTO `order_info` VALUES (10026, '郭卓卓', '10024', '胡亚婷', '陕西科技大学图书馆', '陕西科技大学宿舍6A', '英语资料', '2019-06-02 11:00:03', 10025, 1, '12345678', '123456789', 1);
INSERT INTO `order_info` VALUES (10027, '宋进钊', '10024', '郭卓卓', '陕西', '山西', '独家秘笈', '2019-06-02 11:28:54', 10025, 1, '12345678', '12345678', 1);
INSERT INTO `order_info` VALUES (10028, '蔡文姬', '14', '蔡邕', '放大沙发', '范德萨发达', '范德萨范德萨', '2019-06-02 11:45:09', 10025, 2, '12345678', '1234546', 0);

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_age` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `user_tel`(`user_tel`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10026 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (12, '宋进钊', '13572572850', 'root', '男', 23);
INSERT INTO `user_info` VALUES (10023, '李明阳', '15022918576', 'root', '男', 22);
INSERT INTO `user_info` VALUES (10025, '郭卓卓', '12345678', 'root', '男', 23);

SET FOREIGN_KEY_CHECKS = 1;
