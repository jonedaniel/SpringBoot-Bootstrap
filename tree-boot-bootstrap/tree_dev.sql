/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50721
Source Host           : localhost:3306
Source Database       : tree_dev

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-06-10 14:05:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for file_upload
-- ----------------------------
DROP TABLE IF EXISTS `file_upload`;
CREATE TABLE `file_upload` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `code` bigint(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_upload
-- ----------------------------
INSERT INTO `file_upload` VALUES ('1', null, null, '1111', 'jpg', 'group1/M00/00/00/fwAAAVqiU_WAPceTABipdTRbaAE892.jpg', '2018-03-09 17:29:25', null);
INSERT INTO `file_upload` VALUES ('2', null, null, 'pic2', 'jpg', 'group1/M00/00/00/fwAAAVqiZLWATTtdAAF5JAFDizs189.jpg', '2018-03-09 18:40:53', null);
INSERT INTO `file_upload` VALUES ('3', null, null, '4', 'jpg', 'group1/M00/00/00/fwAAAVqw8MaAenhoAADkhDbphiU141.jpg', '2018-03-20 19:30:14', null);
INSERT INTO `file_upload` VALUES ('4', null, null, '88BDEEFE-9A2A-4DCD-85D0-03A7B11E66B0', 'png', 'group1/M00/00/00/fwAAAVqiamCAObFCAAFyr-bMOkg070.png', '2018-03-09 19:05:05', null);
INSERT INTO `file_upload` VALUES ('5', null, null, 'gen6', 'jpg', 'group1/M00/00/00/fwAAAVqicg-ADWE9AAHdqZpL7U4377.jpg', '2018-03-09 19:37:52', null);
INSERT INTO `file_upload` VALUES ('6', null, null, 'ab', 'jpg', null, '2018-03-12 15:54:18', null);
INSERT INTO `file_upload` VALUES ('7', null, null, '2221', 'jpg', 'group1/M00/00/00/fwAAAVqmM4uAVsNIAAz1CS8eMrE905.jpg', '2018-03-12 16:00:11', null);
INSERT INTO `file_upload` VALUES ('8', null, null, '2', 'jpg', 'group1/M00/00/00/fwAAAVqnjHyAOPNkAATEf6gYIgA924.jpg', '2018-03-13 16:31:57', null);
INSERT INTO `file_upload` VALUES ('9', null, null, 'BCBB772F-1336-4E91-B6C9-5AF626545ADA', 'png', 'group1/M00/00/00/fwAAAVqw8kaAE-6fAAgerkBh3vc636.png', '2018-03-20 19:36:38', null);

-- ----------------------------
-- Table structure for file_upload_sub
-- ----------------------------
DROP TABLE IF EXISTS `file_upload_sub`;
CREATE TABLE `file_upload_sub` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `super_id` bigint(20) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `upload_date` datetime DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file_upload_sub
-- ----------------------------
INSERT INTO `file_upload_sub` VALUES ('1', '3', 'group1/M00/00/00/fwAAAVqiZMyAFgAeAADkhDbphiU185.jpg', '2018-03-09 18:41:17', null);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `request_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `request_method` varchar(255) DEFAULT NULL,
  `request_url` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `cost_time` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for tree
-- ----------------------------
DROP TABLE IF EXISTS `tree`;
CREATE TABLE `tree` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `update_time` date DEFAULT NULL,
  `spec` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `store` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `delete_flg` char(4) CHARACTER SET utf8 DEFAULT 'N' COMMENT '删除标记',
  `sign` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tree
-- ----------------------------
INSERT INTO `tree` VALUES ('1', '龙柏', '龙柏（拉丁学名：Sabina chinensis (L.) Ant. cv. Kaizuca），又名刺柏、红心柏、珍珠柏等，是圆柏（桧树）的栽培变种，龙柏长到一定高度，枝条螺旋盘曲向上生长，好像盘龙姿态，故名“龙柏”。', '2018-04-07', '2-3', '5000', 'N', null);
INSERT INTO `tree` VALUES ('2', '垂丝海棠', '垂丝海棠，中药材名。本品为蔷薇科植物垂丝海棠的花。2月采收。功能主治为：调经和血，治红崩。', '2018-04-07', '3-5', '5000', 'N', null);
INSERT INTO `tree` VALUES ('3', '樱花', '樱花（学名：Cerasus sp.）：是蔷薇科樱属几种植物的统称，在《中国植物志》新修订的名称中专指“东京樱花”，亦称“日本樱花”。樱花品种相当繁多，数目超过三百种以上，全世界共有野生樱花约150种，中国有50多种。全世界约40种樱花类植物野生种祖先中，原产于中国的有33种。其他的则是通过园艺杂交所衍生得到的品种。', '2018-04-07', '4-7', '6000', 'N', null);
INSERT INTO `tree` VALUES ('4', '紫叶李', '紫叶李，别名：红叶李，蔷薇科李属落叶小乔木，高可达8米，原产亚洲西南部，中国华北及其以南地区广为种植。叶常年紫红色，著名观叶树种，孤植群植皆宜，能衬托背景。尤其是紫色发亮的叶子，在绿叶丛中，像一株株永不败的花朵，在青山绿水中形成一道靓丽的风景线。', '2018-04-07', '5-8', '3000', 'N', null);
INSERT INTO `tree` VALUES ('5', '西府海棠', '西府海棠（学名：Malus micromalus）为蔷薇科苹果属的植物，小乔木，高达2.5-5米，树枝直立性强，为中国的特有植物。西府海棠在北方干燥地带生长良好，是绿化工程中较受欢迎的产品。', '2018-04-07', '3-5', '5000', 'N', null);
INSERT INTO `tree` VALUES ('6', '大叶女贞', '大叶女贞，又名高杆女贞，冬青，桢树,长叶女贞，蜡树，水蜡，木犀科， [1]  女贞属植物。灌木 [2]  或小乔木，半常绿。幼枝及叶柄无毛或有微小短柔毛，有皮孔。叶纸质，椭圆状披针形。', '2018-04-07', '4-7', '3000', 'N', null);
INSERT INTO `tree` VALUES ('7', '紫薇', '紫薇，别名：痒痒花、痒痒树、紫金花、紫兰花、蚊子花、西洋水杨梅、百日红、无皮树，拉丁文名：Lagerstroemia indica L. 千屈菜科、紫薇属落叶灌木或小乔木，高可达7米', '2018-04-07', '5-8', '2000', 'N', null);
INSERT INTO `tree` VALUES ('8', '南栾树', '栾树（Koelreuteria paniculata），别名：木栾、栾华等，是无患子科、栾树属植物。为落叶乔木或灌木；树皮厚，灰褐色至灰黑色，老时纵裂；皮孔小，灰至暗揭色；小枝具疣点，与叶轴、叶柄均被皱曲的短柔毛或无毛。', '2018-04-07', '4-8', '3000', 'N', null);
