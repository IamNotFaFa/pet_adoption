/*
 Navicat Premium Data Transfer

 Source Server         : graduation design
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44-log)
 Source Host           : localhost:3306
 Source Schema         : adopt

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44-log)
 File Encoding         : 65001

 Date: 19/04/2024 11:39:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员的名字',
  `adminPwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `realName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实的名字',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话',
  `Email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'a.png',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, '阿扎尔', 'sql1234', '孙七', '13195890081', '2992909823@qq.com', '1995-10-12', '男', 'a7.png', '外号 杨坤。这位不仅是团队中的颜值代表，而且是技术代表，他对小动物的保护知识是专家。他总能在保护小动物的方面给出正确的建议。');
INSERT INTO `admins` VALUES (2, '本泽马', '342', '342', '342', '342', '1980-07-19', '女', 'a9.png', '外号 背锅侠。这位是我们团队中的冲锋者，勇敢。但由于一些事，就造就了背锅侠的名号。');
INSERT INTO `admins` VALUES (3, '莫德里奇', '111', '卢卡', '15797959509', '2425549281@qq.com', '2019-08-05', '男', 'a10.png', '外号 魔笛。这位和我们团队中的杨坤都是技术与颜值的代表，而且他总是保持一颗冷静的心，在面对困难的时候，总是临危不惧。');
INSERT INTO `admins` VALUES (4, '贝尔', '1111', '孙悟空', '15797959509', '2425549281@qq.com', '1990-01-30', '女', 'a11.png', '号称孙悟空，无敌的存在！！');

-- ----------------------------
-- Table structure for adoptanimal
-- ----------------------------
DROP TABLE IF EXISTS `adoptanimal`;
CREATE TABLE `adoptanimal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL COMMENT '用户表id的外键',
  `petId` int(11) NOT NULL COMMENT '宠物表id的外键',
  `adoptTime` date NOT NULL,
  `state` int(11) NULL DEFAULT 1 COMMENT '是否同意被领养 0 是不同意 1 还在审核 2 是同意',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk3`(`userId`) USING BTREE,
  INDEX `fk4`(`petId`) USING BTREE,
  CONSTRAINT `fk3` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk4` FOREIGN KEY (`petId`) REFERENCES `pet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of adoptanimal
-- ----------------------------
INSERT INTO `adoptanimal` VALUES (3, 3, 3, '2024-04-19', 2);
INSERT INTO `adoptanimal` VALUES (19, 33, 2, '2024-04-19', 2);
INSERT INTO `adoptanimal` VALUES (24, 33, 5, '2024-04-19', 0);

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL,
  `replayId` int(11) NULL DEFAULT NULL,
  `commentId` int(11) NOT NULL,
  `answerTime` date NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk8`(`userId`) USING BTREE,
  INDEX `fk11`(`commentId`) USING BTREE,
  INDEX `fk10`(`replayId`) USING BTREE,
  CONSTRAINT `fk10` FOREIGN KEY (`replayId`) REFERENCES `answer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk11` FOREIGN KEY (`commentId`) REFERENCES `comment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk8` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (1, 2, NULL, 8, '2024-04-19', '这条狗很好动。 ');
INSERT INTO `answer` VALUES (2, 5, 1, 8, '2024-04-19', '这只宠物很乖。');
INSERT INTO `answer` VALUES (3, 3, 2, 8, '2024-04-19', '我也喜欢这样的宠物。');
INSERT INTO `answer` VALUES (5, 1, NULL, 8, '2024-04-19', '我也喜欢这样的宠物。');
INSERT INTO `answer` VALUES (12, 1, NULL, 13, '2024-04-19', '真的很可爱');

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NOT NULL,
  `telephone` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applyTime` date NOT NULL,
  `state` int(11) NULL DEFAULT 2,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (5, '朱思浩', 'aafa@afa.com', 12, '56304050', '想当一个好人', '2024-04-19', 2);

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actionTime` date NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `peoples` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (1, '2024-04-19', '湖南长沙市', '张三，李四，王五.', '自愿去春风小区对小区的动物进行检查和医疗', '救助');
INSERT INTO `blog` VALUES (3, '2024-04-19', '湖南长沙市', '王二麻子,李四', '去收养路边的猫狗1', '收养');
INSERT INTO `blog` VALUES (4, '2024-04-19', '湖南长沙市', '王二麻子,张三,李四', '去收养路边的猫', '收养');
INSERT INTO `blog` VALUES (6, '2024-04-19', '湖南长沙市', '张三,李四，王五', '去治疗路边的猫狗', '治疗');
INSERT INTO `blog` VALUES (10, '2024-04-19', '湖南长沙市', '杨一,王二麻子', '去喂养流浪的猫狗', '投喂');
INSERT INTO `blog` VALUES (11, '2024-04-19', '湖南长沙市', '团队全体成员', '为水爷和学霸庆生。', '团队生日');
INSERT INTO `blog` VALUES (14, '2024-04-19', '湖南长沙市', '里斯', '救助小猫米', '小猫咪');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL,
  `adminsId` int(11) NULL DEFAULT NULL,
  `petId` int(11) NULL DEFAULT NULL,
  `commentTime` date NOT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论的内容',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk1`(`userId`) USING BTREE,
  INDEX `fk2`(`petId`) USING BTREE,
  INDEX `fk5`(`adminsId`) USING BTREE,
  CONSTRAINT `fk1` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk2` FOREIGN KEY (`petId`) REFERENCES `pet` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk5` FOREIGN KEY (`adminsId`) REFERENCES `admins` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (8, 8, NULL, 5, '2024-04-19', '这条狗不错');
INSERT INTO `comment` VALUES (13, 1, NULL, 3, '2024-04-19', '好可爱的小猫');
INSERT INTO `comment` VALUES (14, 33, NULL, 2, '2024-04-19', '可爱');

-- ----------------------------
-- Table structure for pet
-- ----------------------------
DROP TABLE IF EXISTS `pet`;
CREATE TABLE `pet`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `petName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `petType` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '宠物类型',
  `sex` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `birthday` date NOT NULL,
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像',
  `state` int(11) NOT NULL DEFAULT 1 COMMENT '现在的状态 0 没有申请领养 1 被申请领养 2 已经被领养',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pet
-- ----------------------------
INSERT INTO `pet` VALUES (2, '骆驼', '波斯猫', '雄性', '2024-04-19', 'cat2_1.jpg,cat2_2.jpg,cat2_3.jpg', 0, 'Vito是一只精力充沛的猫，比起其他猫更加热爱玩耍。');
INSERT INTO `pet` VALUES (3, '小白', '短尾猫', '雌性', '2024-04-19', 'cat3_1.jpg,cat3_2.jpg,cat3_3.jpg,cat3_4.jpg', 1, 'Kena是一只可爱活泼的小公主，对食物有份执着，她向往自由，喜欢无拘无束的生活。');
INSERT INTO `pet` VALUES (5, '布鲁', '牧羊犬', '雄性', '2024-04-19', 'dog1_1.jpg,dog1_2.jpg,dog1_3.jpg,dog1_4.jpg', 0, '辛巴活泼又好奇，特别喜欢和别的狗狗玩耍，更十分喜欢户外活动。一个没有儿童的家庭更适合他，你愿意成为辛巴的好朋友，让他继续快乐的成长吗？');
INSERT INTO `pet` VALUES (8, '坨坨', '橘猫', '雌性', '2024-04-19', 'cat5_1.jpg,cat5_2.jpg,cat5_3.jpg,cat5_4.jpg', 1, 'MInnie是一名害羞，胆小，巨能吃的橘猫。');
INSERT INTO `pet` VALUES (9, '白猫', '狸猫', '雌性', '2024-04-19', 'cat6_1.jpg,cat6_2.jpg,cat6_3.jpg,cat6_4.jpg', 2, 'Kena是一名害羞，温暖，柔和，友善的狸猫。');
INSERT INTO `pet` VALUES (10, '洋洋', '牧羊犬', '雌性', '2024-04-19', 'dog4_1.jpg,dog4_2.jpg,dog4_3.jpg', 1, 'Pigge是一只喜欢玩耍的牧羊犬，但他在主人需要的时候，总是尽职尽责。');
INSERT INTO `pet` VALUES (11, '潇潇', '秋田犬', '雄性', '2024-04-19', 'dog5_1.jpg,dog5_2.jpg,dog5_3.jpg', 0, 'Tommy是一只喜欢玩耍的牧羊犬，但他在主人需要的时候，总是尽职尽责。');
INSERT INTO `pet` VALUES (13, '哈哈', '雪橇犬', '雄性', '2024-04-19', 'dog6_1.jpg,dog6_2.jpg,dog6_3.jpg', 0, 'Snow外表是一个很安静的犬，但是动起来比什么狗都爱玩耍。');
INSERT INTO `pet` VALUES (16, '水母', '秋田犬', '雄性', '2024-04-19', 'dog8_1.jpg,dog8_2.jpg,dog8_3.jpg', 0, 'ewew');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(11) NULL DEFAULT NULL COMMENT '年龄',
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `Email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Email',
  `address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 't0.jpg',
  `state` int(11) NULL DEFAULT 0 COMMENT '有无领养宠物的经历 0 是没有 1 是由',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '张三三', 'zsf123', '男', 15, '13809182091', '3657844545@qq.com', '湖南省长沙市', 't1.jpg', 1);
INSERT INTO `user` VALUES (2, '里斯', 'syq123', '男', 50, '13908457344', '2425549281@qq.com', '湖南省长沙市', 't2.jpg', 0);
INSERT INTO `user` VALUES (3, '网码字', 'ylz123', '男', 45, '13903827601', '2425549281@qq.com', '湖南省长沙市', 't3.jpg', 1);
INSERT INTO `user` VALUES (5, '利阿斯', 'zm123', '女', 23, '13903810621', '2425549281@qq.com', '湖南省长沙市', 't5.jpg', 1);
INSERT INTO `user` VALUES (8, '乌斯', 'yss123', '女', 35, '13123819301', '2425549281@qq.com', '湖南省长沙市', 't8.jpg', 0);
INSERT INTO `user` VALUES (17, '奥利奥', '4444', '女', 32, '15797959509', '2425549281@qq.com', '湖南省长沙市', 't17.jpg', 0);
INSERT INTO `user` VALUES (33, '张三', '123456', '男', 23, '15896458756', '3657844545@qq.com', '湖南省长沙市', 't0.jpg', 1);

SET FOREIGN_KEY_CHECKS = 1;
