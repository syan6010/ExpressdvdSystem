/*
 Navicat MySQL Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50636
 Source Host           : localhost:3306
 Source Schema         : store

 Target Server Type    : MySQL
 Target Server Version : 50636
 File Encoding         : 65001

 Date: 31/05/2018 16:36:10
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for borrow1
-- ----------------------------
DROP TABLE IF EXISTS `borrow1`;
CREATE TABLE `borrow1`  (
  `borrowDate` date NULL DEFAULT NULL,
  `cusNo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cusName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `vidNo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `vidName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `backdate` date NULL DEFAULT NULL,
  `totAmount` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `cusNo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cusName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `gender` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `birthday` date NULL DEFAULT NULL,
  `age` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `tel` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `mail` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `startDate` date NULL DEFAULT NULL,
  `yearlimit` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('M001', '方奕薰', 'M', '1989-05-08', '29', '0956924455', '台北市大安區大安路256號9樓', 'gmail15@gmail.com', '2014-04-25', '5');
INSERT INTO `customer` VALUES ('M002', '劉巽顏', 'M', '1992-07-09', '25', '0948561156', '新北市三重區三重路111號2樓', 'pig255@gmail.com', '2014-04-25', '5');
INSERT INTO `customer` VALUES ('M003', '高玉則', 'M', '1999-01-01', '19', '0915666566', '新北市新店區新店街145號2樓', 'jkpl255@gmail.com', '2016-07-01', '5');
INSERT INTO `customer` VALUES ('M004', '杜庭餘', 'F', '1971-08-19', '46', '0968955741', '台北市中山區中和路26號3樓', '48fff@gmail.com', '2016-07-01', '5');
INSERT INTO `customer` VALUES ('M005', '胡仲宣', 'F', '1999-08-24', '18', '0935852258', '台北市中山區華和路69號9樓', 'glove999@gmail.com', '2018-02-15', '1');
INSERT INTO `customer` VALUES ('M006', '賴宜蓁', 'F', '1988-12-12', '29', '0992258111', '新北市三重區身康街48號6樓', 'ddd697@gmail.com', '2014-04-25', '6');
INSERT INTO `customer` VALUES ('M007', '廖奕晴', 'F', '1987-06-04', '30', '0926654145', '台北市松山區三山街248號7樓', 'jackit612@gmail.com', '2018-02-19', '6');
INSERT INTO `customer` VALUES ('M008', '無雨璇', 'M', '1987-02-14', '31', '0933446789', '新北市新店區新店街14巷1號1樓', 'hhhh111@gmail.com', '2018-02-19', '6');
INSERT INTO `customer` VALUES ('M009', '黃一山', 'F', '1996-05-30', '22', '0915825846', '台北市大安區大安路289號4樓', 'kkkk36@gmail.com', '2014-04-25', '3');
INSERT INTO `customer` VALUES ('M010', '業玉同', 'M', '1996-05-28', '22', '0948561157', '台北市松山區松山路34號5樓', 'kid258@gmail.com', '2017-05-16', '3');
INSERT INTO `customer` VALUES ('M011', '和顏庭', 'M', '1995-12-26', '22', '0956924465', '新北市新店區新店街5號5樓', 'kidddd2999@gmail.com', '2014-04-25', '3');
INSERT INTO `customer` VALUES ('M012', '流域均', 'F', '1997-11-30', '20', '0935852259', '新北市士林區士林路78號15樓', 'dillll6@gmail.com', '2016-06-06', '3');
INSERT INTO `customer` VALUES ('M013', '郭家餘', 'F', '1986-08-31', '31', '0915666567', '台北市大安區信義路249號11樓', 'bill99@gmail.com', '2016-11-15', '3');
INSERT INTO `customer` VALUES ('M014', '張傑庭', 'F', '1979-03-30', '39', '0948561158', '台北市信義區中山路44號1樓', 'lemaon1@gmail.com', '2017-12-25', '2');
INSERT INTO `customer` VALUES ('M015', '正新詞', 'M', '1980-07-28', '37', '0968955742', '新北市樹林區審議街8巷9號1樓', 'tomato2@gmail.com', '2018-03-11', '2');
INSERT INTO `customer` VALUES ('M016', '陳冠影', 'F', '1983-08-03', '34', '0956924470', '台北市信義區華府街999號8樓', 'skill12@gmail.com', '2017-01-30', '2');
INSERT INTO `customer` VALUES ('', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `empNo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `empName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `gender` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `birthday` date NULL DEFAULT NULL,
  `age` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `arriveDate` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('E001', '沈冠庭', 'M', '1979-05-02', '39', 'N126311456', '0987507077', '台北市中正區文化路214號5樓', 'aaa123@gmail.com', '經理', '2014-04-20 00:00:00');
INSERT INTO `employee` VALUES ('E002', '劉炳洪', 'F', '1988-10-20', '29', 'S126311457', '0970307044', '新北市中和區中和路15號1樓', 'sandy54s@gmail.com', '早班正職', '2017-06-09 00:00:00');
INSERT INTO `employee` VALUES ('E003', '林萬毫', 'M', '1988-04-03', '30', 'T126311458', '0953254154', '新北市中和區中山路300號2樓', 'happy888@gmail.com', '早班正職', '2014-04-20 00:00:00');
INSERT INTO `employee` VALUES ('E004', '劉氨', 'F', '1999-09-09', '18', 'A126311459', '0933165356', '台北市信義區信義路2段65號9樓', 'love666@gmail.com', '晚班正職', '2018-01-14 00:00:00');
INSERT INTO `employee` VALUES ('E005', '楊堺龍', 'M', '1991-07-28', '26', 'A126311460', '0970304015', '台北市信義區仁愛路6段6號6樓', 'bbb543@gmail.com', '晚班正職', '2014-04-20 00:00:00');
INSERT INTO `employee` VALUES ('E006', '陳頤勇', 'M', '1995-07-01', '22', 'N126311461', '0988508058', '新北市永和區永興街3段3巷9號1樓', 'ccc987@gmail.com', '工讀生', '2017-06-09 00:00:00');
INSERT INTO `employee` VALUES ('E007', '宋承孕', 'F', '1996-11-15', '21', 'Q126311462', '0990654666', '新北市板橋區板南路44號3樓', 'ghost1112@gmail.com', '工讀生', '2018-01-14 00:00:00');
INSERT INTO `employee` VALUES ('E008', '程子瑄', 'F', '1999-12-18', '18', 'N126311463', '0987078087', '台北市松山區松新街6段3樓', 'date55@gmail.com', '工讀生', '2018-04-25 00:00:00');

-- ----------------------------
-- Table structure for giveback
-- ----------------------------
DROP TABLE IF EXISTS `giveback`;
CREATE TABLE `giveback`  (
  `backdate` date NULL DEFAULT NULL,
  `cusNo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cusName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `vidNo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `vidName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `iflate` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `latemoney` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for report
-- ----------------------------
DROP TABLE IF EXISTS `report`;
CREATE TABLE `report`  (
  `date` date NOT NULL,
  `income` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `outgoing` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `surplus` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `vidNo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `vidName` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `vidType` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `vidArea` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `stockDate` date NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('V0001', '復仇者聯盟1', '動作片', '美', '2010-01-01');
INSERT INTO `video` VALUES ('V0002', '復仇者聯盟2', '動作片', '美', '2011-01-01');
INSERT INTO `video` VALUES ('V0003', '復仇者聯盟3', '動作片', '美', '2018-05-01');
INSERT INTO `video` VALUES ('V0004', '復仇者聯盟3', '動作片', '美', '2018-05-01');
INSERT INTO `video` VALUES ('V0005', '美國隊長1', '動作片', '美', '2011-05-01');
INSERT INTO `video` VALUES ('V0006', '美國隊長1', '動作片', '美', '2011-05-01');
INSERT INTO `video` VALUES ('V0007', '美國隊長2', '動作片', '美', '2012-05-01');
INSERT INTO `video` VALUES ('V0008', '美國隊長3', '動作片', '美', '2014-07-01');
INSERT INTO `video` VALUES ('V0009', '美國隊長3', '動作片', '美', '2014-07-01');
INSERT INTO `video` VALUES ('V0010', '美國隊長3', '動作片', '美', '2014-07-01');
INSERT INTO `video` VALUES ('V0011', '歌喉讚1', '劇情片', '歐', '2013-09-01');
INSERT INTO `video` VALUES ('V0012', '歌喉讚2', '劇情片', '歐', '2014-09-01');
INSERT INTO `video` VALUES ('V0013', '歌喉讚3', '劇情片', '歐', '2016-09-01');
INSERT INTO `video` VALUES ('V0014', '歌喉讚3', '劇情片', '歐', '2016-09-01');
INSERT INTO `video` VALUES ('V0015', '歌喉讚3', '劇情片', '歐', '2016-09-01');
INSERT INTO `video` VALUES ('V0016', '彼得兔', '卡通片', '亞', '2017-11-01');
INSERT INTO `video` VALUES ('V0017', '彼得兔', '卡通片', '亞', '2017-11-01');
INSERT INTO `video` VALUES ('V0018', '小小兵', '卡通片', '亞', '2013-04-01');
INSERT INTO `video` VALUES ('V0019', '小小兵', '卡通片', '亞', '2013-04-01');
INSERT INTO `video` VALUES ('V0020', '小小兵', '卡通片', '亞', '2013-04-01');

SET FOREIGN_KEY_CHECKS = 1;
