/*
Navicat MySQL Data Transfer

Source Server         : diudiu
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-05-03 16:29:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `consignee` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '四川省成都市', '18030637603', '温龙清');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `adminName` varchar(255) DEFAULT NULL,
  `adminPassword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', 'root');

-- ----------------------------
-- Table structure for `classify`
-- ----------------------------
DROP TABLE IF EXISTS `classify`;
CREATE TABLE `classify` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `cparent` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classify
-- ----------------------------
INSERT INTO `classify` VALUES ('1', '1', '0');
INSERT INTO `classify` VALUES ('2', '2', '0');
INSERT INTO `classify` VALUES ('3', '3', '0');
INSERT INTO `classify` VALUES ('4', '4', '0');
INSERT INTO `classify` VALUES ('5', '5', '0');
INSERT INTO `classify` VALUES ('6', '数码', '1');
INSERT INTO `classify` VALUES ('7', '手机', '1');
INSERT INTO `classify` VALUES ('8', '合约机', '1');
INSERT INTO `classify` VALUES ('9', '电脑', '2');
INSERT INTO `classify` VALUES ('10', '硬件外设', '2');
INSERT INTO `classify` VALUES ('11', '装机宝', '2');
INSERT INTO `classify` VALUES ('12', '大家电', '3');
INSERT INTO `classify` VALUES ('13', '厨房电器', '4');
INSERT INTO `classify` VALUES ('14', '生活电器', '4');
INSERT INTO `classify` VALUES ('15', '食品', '5');
INSERT INTO `classify` VALUES ('16', '饮料', '5');
INSERT INTO `classify` VALUES ('17', '生鲜', '5');
INSERT INTO `classify` VALUES ('18', '粮油', '5');
INSERT INTO `classify` VALUES ('19', '苹果', '7');

-- ----------------------------
-- Table structure for `cousult`
-- ----------------------------
DROP TABLE IF EXISTS `cousult`;
CREATE TABLE `cousult` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `retext` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cousult
-- ----------------------------
INSERT INTO `cousult` VALUES ('1', '0', '0', 'dfgdgdfg', 'dgdfgdg', '2016-04-13 23:37:09');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(255) DEFAULT NULL,
  `gprice` int(11) DEFAULT NULL,
  `gpic` varchar(255) DEFAULT NULL,
  `gsid` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'mx4', '23', 'good2.jpg', '7');
INSERT INTO `goods` VALUES ('2', 'mx5', '34', 'good2.jpg', '7');
INSERT INTO `goods` VALUES ('3', 'iphone6', '23', 'good2.jpg', '7');
INSERT INTO `goods` VALUES ('4', 'mi4', '23', 'good2.jpg', '7');
INSERT INTO `goods` VALUES ('5', 'mi5', '23', 'good2.jpg', '7');
INSERT INTO `goods` VALUES ('6', 'iphone7', '23', 'good2.jpg', '7');
INSERT INTO `goods` VALUES ('7', 'htc1', '23', 'good2.jpg', '7');
INSERT INTO `goods` VALUES ('8', 'htc2', '34', 'good2.jpg', '7');
INSERT INTO `goods` VALUES ('9', 'htc3', '23', 'good2.jpg', '7');
INSERT INTO `goods` VALUES ('10', '	全网底价 Apple 苹果 iPad mini 16G wifi版 平板电脑 前白后银 MD531CH/A 银白两色生\r\n					产批次不同混合发货', '1988', 'good2.jpg', '7');

-- ----------------------------
-- Table structure for `invoice`
-- ----------------------------
DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `itype` varchar(255) DEFAULT NULL,
  `iheader` varchar(255) DEFAULT NULL,
  `iname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of invoice
-- ----------------------------
INSERT INTO `invoice` VALUES ('1', '1', '增值税', '鹏远', '温龙清');

-- ----------------------------
-- Table structure for `recommendation`
-- ----------------------------
DROP TABLE IF EXISTS `recommendation`;
CREATE TABLE `recommendation` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `rname` varchar(255) DEFAULT NULL,
  `fid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recommendation
-- ----------------------------
INSERT INTO `recommendation` VALUES ('1', 'mx4', '200');
INSERT INTO `recommendation` VALUES ('2', 'mx5', '200');
INSERT INTO `recommendation` VALUES ('3', 'iphone6', '200');
INSERT INTO `recommendation` VALUES ('4', 'mi4', '200');
INSERT INTO `recommendation` VALUES ('6', 'iphone7', '300');
INSERT INTO `recommendation` VALUES ('7', 'htc1', '300');
INSERT INTO `recommendation` VALUES ('8', 'htc2', '300');
INSERT INTO `recommendation` VALUES ('9', 'htc3', '300');
INSERT INTO `recommendation` VALUES ('10', null, null);

-- ----------------------------
-- Table structure for `shopcar`
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `gnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
INSERT INTO `shopcar` VALUES ('14', '1', '8', '4');
INSERT INTO `shopcar` VALUES ('15', '1', '7', '8');
INSERT INTO `shopcar` VALUES ('16', '1', '6', '10');

-- ----------------------------
-- Table structure for `trade`
-- ----------------------------
DROP TABLE IF EXISTS `trade`;
CREATE TABLE `trade` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `payway` int(11) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trade
-- ----------------------------
INSERT INTO `trade` VALUES ('37', '1', '2', '1', '1');

-- ----------------------------
-- Table structure for `tradegoods`
-- ----------------------------
DROP TABLE IF EXISTS `tradegoods`;
CREATE TABLE `tradegoods` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tradeid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `gnumber` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tradegoods
-- ----------------------------
INSERT INTO `tradegoods` VALUES ('1', '1', '1', '1');
INSERT INTO `tradegoods` VALUES ('2', '7', '2', '7');
INSERT INTO `tradegoods` VALUES ('3', '7', '6', '11');
INSERT INTO `tradegoods` VALUES ('4', '7', '7', '1');
INSERT INTO `tradegoods` VALUES ('5', '8', '2', '7');
INSERT INTO `tradegoods` VALUES ('6', '8', '6', '11');
INSERT INTO `tradegoods` VALUES ('7', '8', '7', '1');
INSERT INTO `tradegoods` VALUES ('8', '9', '2', '7');
INSERT INTO `tradegoods` VALUES ('9', '9', '6', '11');
INSERT INTO `tradegoods` VALUES ('10', '9', '7', '1');
INSERT INTO `tradegoods` VALUES ('11', '10', '2', '7');
INSERT INTO `tradegoods` VALUES ('12', '10', '6', '11');
INSERT INTO `tradegoods` VALUES ('13', '10', '7', '1');
INSERT INTO `tradegoods` VALUES ('14', '11', '2', '7');
INSERT INTO `tradegoods` VALUES ('15', '11', '6', '11');
INSERT INTO `tradegoods` VALUES ('16', '11', '7', '1');
INSERT INTO `tradegoods` VALUES ('17', '12', '2', '7');
INSERT INTO `tradegoods` VALUES ('18', '12', '6', '11');
INSERT INTO `tradegoods` VALUES ('19', '12', '7', '1');
INSERT INTO `tradegoods` VALUES ('20', '13', '2', '7');
INSERT INTO `tradegoods` VALUES ('21', '13', '6', '11');
INSERT INTO `tradegoods` VALUES ('22', '13', '7', '1');
INSERT INTO `tradegoods` VALUES ('23', '14', '2', '7');
INSERT INTO `tradegoods` VALUES ('24', '14', '6', '11');
INSERT INTO `tradegoods` VALUES ('25', '14', '7', '1');
INSERT INTO `tradegoods` VALUES ('26', '15', '2', '7');
INSERT INTO `tradegoods` VALUES ('27', '15', '6', '11');
INSERT INTO `tradegoods` VALUES ('28', '15', '7', '1');
INSERT INTO `tradegoods` VALUES ('29', '16', '2', '7');
INSERT INTO `tradegoods` VALUES ('30', '16', '6', '11');
INSERT INTO `tradegoods` VALUES ('31', '16', '7', '1');
INSERT INTO `tradegoods` VALUES ('32', '17', '2', '7');
INSERT INTO `tradegoods` VALUES ('33', '17', '6', '11');
INSERT INTO `tradegoods` VALUES ('34', '17', '7', '1');
INSERT INTO `tradegoods` VALUES ('35', '18', '2', '7');
INSERT INTO `tradegoods` VALUES ('36', '18', '6', '11');
INSERT INTO `tradegoods` VALUES ('37', '18', '7', '1');
INSERT INTO `tradegoods` VALUES ('38', '19', '2', '7');
INSERT INTO `tradegoods` VALUES ('39', '19', '6', '11');
INSERT INTO `tradegoods` VALUES ('40', '19', '7', '1');
INSERT INTO `tradegoods` VALUES ('41', '20', '2', '7');
INSERT INTO `tradegoods` VALUES ('42', '20', '6', '11');
INSERT INTO `tradegoods` VALUES ('43', '20', '7', '1');
INSERT INTO `tradegoods` VALUES ('44', '21', '2', '7');
INSERT INTO `tradegoods` VALUES ('45', '21', '6', '11');
INSERT INTO `tradegoods` VALUES ('46', '21', '7', '1');
INSERT INTO `tradegoods` VALUES ('47', '22', '2', '7');
INSERT INTO `tradegoods` VALUES ('48', '22', '6', '11');
INSERT INTO `tradegoods` VALUES ('49', '22', '7', '1');
INSERT INTO `tradegoods` VALUES ('50', '23', '2', '7');
INSERT INTO `tradegoods` VALUES ('51', '23', '6', '11');
INSERT INTO `tradegoods` VALUES ('52', '23', '7', '1');
INSERT INTO `tradegoods` VALUES ('53', '24', '2', '7');
INSERT INTO `tradegoods` VALUES ('54', '24', '6', '11');
INSERT INTO `tradegoods` VALUES ('55', '24', '7', '1');
INSERT INTO `tradegoods` VALUES ('56', '25', '2', '7');
INSERT INTO `tradegoods` VALUES ('57', '25', '6', '11');
INSERT INTO `tradegoods` VALUES ('58', '25', '7', '1');
INSERT INTO `tradegoods` VALUES ('59', '26', '2', '7');
INSERT INTO `tradegoods` VALUES ('60', '26', '6', '11');
INSERT INTO `tradegoods` VALUES ('61', '26', '7', '1');
INSERT INTO `tradegoods` VALUES ('62', '27', '2', '7');
INSERT INTO `tradegoods` VALUES ('63', '27', '6', '11');
INSERT INTO `tradegoods` VALUES ('64', '27', '7', '1');
INSERT INTO `tradegoods` VALUES ('65', '28', '2', '7');
INSERT INTO `tradegoods` VALUES ('66', '28', '6', '11');
INSERT INTO `tradegoods` VALUES ('67', '28', '7', '1');
INSERT INTO `tradegoods` VALUES ('68', '29', '2', '7');
INSERT INTO `tradegoods` VALUES ('69', '29', '6', '11');
INSERT INTO `tradegoods` VALUES ('70', '29', '7', '1');
INSERT INTO `tradegoods` VALUES ('71', '30', '2', '7');
INSERT INTO `tradegoods` VALUES ('72', '30', '6', '11');
INSERT INTO `tradegoods` VALUES ('73', '30', '7', '1');
INSERT INTO `tradegoods` VALUES ('74', '31', '2', '7');
INSERT INTO `tradegoods` VALUES ('75', '31', '6', '11');
INSERT INTO `tradegoods` VALUES ('76', '31', '7', '1');
INSERT INTO `tradegoods` VALUES ('77', '32', '2', '7');
INSERT INTO `tradegoods` VALUES ('78', '32', '6', '11');
INSERT INTO `tradegoods` VALUES ('79', '32', '7', '1');
INSERT INTO `tradegoods` VALUES ('80', '33', '2', '7');
INSERT INTO `tradegoods` VALUES ('81', '33', '6', '11');
INSERT INTO `tradegoods` VALUES ('82', '33', '7', '1');
INSERT INTO `tradegoods` VALUES ('83', '34', '2', '7');
INSERT INTO `tradegoods` VALUES ('84', '34', '6', '11');
INSERT INTO `tradegoods` VALUES ('85', '34', '7', '1');
INSERT INTO `tradegoods` VALUES ('86', '35', '2', '7');
INSERT INTO `tradegoods` VALUES ('87', '35', '6', '11');
INSERT INTO `tradegoods` VALUES ('88', '35', '7', '1');
INSERT INTO `tradegoods` VALUES ('89', '36', '2', '7');
INSERT INTO `tradegoods` VALUES ('90', '36', '6', '11');
INSERT INTO `tradegoods` VALUES ('91', '36', '7', '1');
INSERT INTO `tradegoods` VALUES ('92', '37', '2', '7');
INSERT INTO `tradegoods` VALUES ('93', '37', '6', '11');
INSERT INTO `tradegoods` VALUES ('94', '37', '7', '1');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'san', '123456', '2340297@qq.com', '四川成都');
INSERT INTO `users` VALUES ('2', 'sen', '12414142', '232523059@qq.com', '北京');

-- ----------------------------
-- Table structure for `valuation`
-- ----------------------------
DROP TABLE IF EXISTS `valuation`;
CREATE TABLE `valuation` (
  `vid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `ynumber` int(11) DEFAULT NULL,
  `nnumber` int(11) DEFAULT NULL,
  `star` int(11) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of valuation
-- ----------------------------
INSERT INTO `valuation` VALUES ('1', '2', '3', '不好用啊的', '12', '12', '2', '2016-04-13 14:01:30');
INSERT INTO `valuation` VALUES ('2', '5', '3', 'SDFSFDSFSDFSDF', '23', '45', '4', '2016-04-11 17:04:41');
INSERT INTO `valuation` VALUES ('3', '1', '7', 'sdf ', '25', '26', '4', '2016-04-20 10:20:38');
INSERT INTO `valuation` VALUES ('4', '1', '7', 'sdf ', '14', '51', '4', '2016-04-11 11:04:38');
