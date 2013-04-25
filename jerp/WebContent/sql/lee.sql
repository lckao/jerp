/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50168
Source Host           : localhost:3306
Source Database       : lee

Target Server Type    : MYSQL
Target Server Version : 50168
File Encoding         : 65001

Date: 2013-04-25 14:39:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cookie`
-- ----------------------------
DROP TABLE IF EXISTS `cookie`;
CREATE TABLE `cookie` (
  `id` char(10) NOT NULL DEFAULT '',
  `username` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cookie
-- ----------------------------

-- ----------------------------
-- Table structure for `info`
-- ----------------------------
DROP TABLE IF EXISTS `info`;
CREATE TABLE `info` (
  `t0` varchar(128) NOT NULL,
  `id` char(10) CHARACTER SET ascii NOT NULL,
  `tid` char(10) CHARACTER SET ascii NOT NULL,
  `frame` varchar(255) CHARACTER SET ascii NOT NULL,
  `isc` bit(1) NOT NULL DEFAULT b'0',
  `sort` int(11) unsigned NOT NULL DEFAULT '100',
  `dt1` datetime NOT NULL DEFAULT '1900-01-01 00:00:27',
  `dt2` datetime NOT NULL DEFAULT '1900-01-01 00:00:27',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `owner` char(10) CHARACTER SET ascii NOT NULL DEFAULT '0',
  `upf` text,
  `t1` varchar(128) DEFAULT NULL,
  `t2` varchar(128) DEFAULT NULL,
  `t3` varchar(128) DEFAULT NULL,
  `t4` varchar(128) DEFAULT NULL,
  `t5` varchar(128) DEFAULT NULL,
  `t6` varchar(128) DEFAULT NULL,
  `t7` varchar(128) DEFAULT NULL,
  `t8` varchar(128) DEFAULT NULL,
  `t9` varchar(128) DEFAULT NULL,
  `t10` varchar(128) DEFAULT NULL,
  `t11` varchar(128) DEFAULT NULL,
  `t12` varchar(128) DEFAULT NULL,
  `t13` varchar(128) DEFAULT NULL,
  `t14` varchar(128) DEFAULT NULL,
  `t15` mediumtext,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of info
-- ----------------------------
INSERT INTO `info` VALUES ('产品管理', 'y0h4mbdtro', '0000000000', '.', '', '10', '2012-07-14 14:28:15', '2013-04-15 14:32:15', '0', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `info` VALUES ('汽车类', 'y0hfj9ggho', 'y0h4mbdtro', '.y0h4mbdtro.', '', '20', '2013-04-15 14:27:46', '2013-04-19 13:36:50', '0', '', '', '#7ed7e1', null, null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('数码类', 'y0h4mcrb1w', 'y0h4mbdtro', '.y0h4mbdtro.', '', '10', '2012-07-14 15:06:44', '2013-04-22 07:51:17', '0', '', '', '#fab053', null, null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('钟表类', 'y0hfj9hvzn', 'y0h4mbdtro', '.y0h4mbdtro.', '', '60', '2013-04-15 14:28:53', '2013-04-19 13:42:28', '0', '', '', '#7cc8ff', null, null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('运动类', 'y0hfj9hji8', 'y0h4mbdtro', '.y0h4mbdtro.', '', '50', '2013-04-15 14:28:36', '2013-04-19 13:42:11', '0', '', '', '#da63e2', null, null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('箱包类', 'y0hfj9h4ut', 'y0h4mbdtro', '.y0h4mbdtro.', '', '40', '2013-04-15 14:28:18', '2013-04-22 07:52:15', '0', '', '', '#c8f186', null, null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('家电类', 'y0hfj9gq8q', 'y0h4mbdtro', '.y0h4mbdtro.', '', '30', '2013-04-15 14:27:59', '2013-04-19 13:38:32', '0', '', '', '#5191f3', null, null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('测试', 'y0hfuejshz', 'y0hftd4qb0', '.y0hftd4qb0.', '', '100', '2013-04-23 09:35:47', '2013-04-23 09:35:47', '0', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('Apple iPhone5 16G (黑色)', 'y0hfj9uha0', 'y0h4mcrb1w', '.y0h4mbdtro.y0h4mcrb1w.', '', '10', '2013-04-15 14:38:40', '2013-04-15 14:38:40', '0', '', '', '4899', '65000', null, null, null, null, null, null, null, null, null, null, null, null, '<div>苹果</div>');
INSERT INTO `info` VALUES ('测试类', 'y0hfomzwuu', 'y0h4mbdtro', '.y0h4mbdtro.', '', '70', '2013-04-19 08:45:39', '2013-04-22 07:51:42', '0', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('Apple iPhone5 16G (白色)', 'y0hfp30o8a', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '10', '2013-04-19 16:14:09', '2013-04-19 16:14:09', '0', '', '', '4000', '50000', '<div>iphone 16G 超强性价比</div><div>iphone 16G 超强性价比</div>', null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('测试', 'y0hfqallmc', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '20', '2013-04-20 12:34:09', '2013-04-20 12:34:09', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('1', 'y0hfqg8kum', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-20 15:11:59', '2013-04-20 15:11:59', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('4', 'y0hfqg8pi1', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-20 15:12:05', '2013-04-20 15:12:05', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('5', 'y0hfqg8vpi', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-20 15:12:13', '2013-04-20 15:12:13', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('6', 'y0hfqg90s7', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-20 15:12:20', '2013-04-20 15:12:20', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('7', 'y0hfqg943z', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-20 15:12:24', '2013-04-20 15:12:24', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('8', 'y0hfrtfmql', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:09:09', '2013-04-21 14:09:09', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('9', 'y0hfrtfryw', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:09:16', '2013-04-21 14:09:16', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('10', 'y0hfrtfvmn', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:09:21', '2013-04-21 14:09:21', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('11', 'y0hfrtfzot', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:09:26', '2013-04-21 14:09:26', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('12', 'y0hfrtg3c9', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:09:31', '2013-04-21 14:09:31', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('13', 'y0hfrtgf6v', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:09:46', '2013-04-21 14:09:46', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('14', 'y0hfrtgnoe', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:09:57', '2013-04-21 14:09:57', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('15', 'y0hfrth0ad', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:10:13', '2013-04-21 14:10:13', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('16', 'y0hfrth3w5', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:10:18', '2013-04-21 14:10:18', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('17', 'y0hfrth76d', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:10:22', '2013-04-21 14:10:22', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('18', 'y0hfrthb4n', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:10:27', '2013-04-21 14:10:27', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('19', 'y0hfrthjmg', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:10:38', '2013-04-21 14:10:38', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('20', 'y0hfrthns8', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:10:44', '2013-04-21 14:10:44', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('21', 'y0hfrthrq3', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:10:49', '2013-04-21 14:10:49', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('22', 'y0hfrthvkh', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:10:54', '2013-04-21 14:10:54', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('23', 'y0hfrthza5', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:10:59', '2013-04-21 14:10:59', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('24', 'y0hfrti35k', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:11:04', '2013-04-21 14:11:04', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('25', 'y0hfrti7lx', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:11:09', '2013-04-21 14:11:09', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('26', 'y0hfrtipp5', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:11:33', '2013-04-21 14:11:33', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('27', 'y0hfrtiu7c', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:11:39', '2013-04-21 14:11:39', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('28', 'y0hfrtiyum', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:11:45', '2013-04-21 14:11:45', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('29', 'y0hfrtj2tl', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:11:50', '2013-04-21 14:11:50', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('30', 'y0hfrtj71e', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:11:55', '2013-04-21 14:11:55', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('31', 'y0hfrtjcf9', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:12:02', '2013-04-21 14:12:02', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('32', 'y0hfrtjg1n', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:12:07', '2013-04-21 14:12:07', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('33', 'y0hfrtjj9k', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:12:11', '2013-04-21 14:12:11', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('34', 'y0hfrtjmrq', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:12:16', '2013-04-21 14:12:16', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('35', 'y0hfrtjpyz', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:12:20', '2013-04-21 14:12:20', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('36', 'y0hfrtju5u', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:12:25', '2013-04-21 14:12:25', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('37', 'y0hfrtk6hm', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:12:41', '2013-04-21 14:12:41', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('88888', 'y0hfrtkjfr', 'y0hfj9ggho', '.y0h4mbdtro.y0hfj9ggho.', '', '100', '2013-04-21 14:12:58', '2013-04-21 14:12:58', '0', '', '', '', '', null, null, null, null, null, null, null, null, null, null, null, null, '');
INSERT INTO `info` VALUES ('人员管理', 'y0hftd4qb0', '0000000000', '.', '', '20', '2013-04-22 16:08:19', '2013-04-22 16:08:19', '0', '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `info` VALUES ('李传考', 'y0hftdak6t', 'y0hftd4qb0', '.y0hftd4qb0.', '', '10', '2013-04-22 16:12:51', '2013-04-22 16:12:51', '0', '', '', '最差员工', null, null, null, null, null, null, null, null, null, null, null, null, null, '<div>发大水法撒旦</div>');
INSERT INTO `info` VALUES ('叶定松', 'y0hftdbd5k', 'y0hftd4qb0', '.y0hftd4qb0.', '', '20', '2013-04-22 16:13:29', '2013-04-22 16:13:29', '0', '', '', '优秀员工', null, null, null, null, null, null, null, null, null, null, null, null, null, '<div>是发放大幅度</div><div>地方大哥哥大使馆</div><div>地方萨芬大撒旦法萨芬大撒旦法师萨芬撒范德萨发的答复撒范德萨</div><div>&nbsp;</div>');

-- ----------------------------
-- Table structure for `jdiy_mm`
-- ----------------------------
DROP TABLE IF EXISTS `jdiy_mm`;
CREATE TABLE `jdiy_mm` (
  `id` char(10) NOT NULL,
  `tid` char(10) CHARACTER SET ascii NOT NULL DEFAULT '0',
  `cid` varchar(10) CHARACTER SET ascii NOT NULL DEFAULT '0',
  `tb` varchar(48) DEFAULT NULL,
  `rid` varchar(10) DEFAULT NULL,
  `ctrl` varchar(10) DEFAULT NULL,
  `tit` varchar(64) NOT NULL,
  `sName` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` int(8) unsigned NOT NULL DEFAULT '50',
  `prm` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jdiy_mm
-- ----------------------------
INSERT INTO `jdiy_mm` VALUES ('z0000000m0', 'z0000000ma', 'z0000000c1', 'jdiy_sys', 'z0000000s0', 'SYSROLESLS', '角色管理', '角色修改', '', '10', '');
INSERT INTO `jdiy_mm` VALUES ('z0000000m8', 'z0000000ma', 'z0000000c1', 'jdiy_sys', 'z0000000s0', 'SYSROLESIN', '角色添加', '', '', '20', '');
INSERT INTO `jdiy_mm` VALUES ('z0000000m9', 'z0000000ma', 'z0000000c1', 'jdiy_sys', 'z0000000s0', 'z000000ct2', '用户管理', '修改用户', '', '30', '');
INSERT INTO `jdiy_mm` VALUES ('z0000000ma', '0000000000', 'z0000000c1', '', null, '', '系统安全管理', '', '', '10', '');
INSERT INTO `jdiy_mm` VALUES ('z0000000mb', 'z0000000ma', 'z0000000c1', 'jdiy_sys', 'z0000000s0', 'z000000ct1', '用户添加', '', '', '40', '');
INSERT INTO `jdiy_mm` VALUES ('y0h4mbliom', '0000000000', '0000000000', null, null, null, '数据管理', null, '', '10', null);
INSERT INTO `jdiy_mm` VALUES ('z0000000c1', '0000000000', '0000000000', null, null, null, '安全管理', null, '', '500', 'isSys');
INSERT INTO `jdiy_mm` VALUES ('y0h4mbn5tf', '0000000000', 'y0h4mbliom', '', '', '', '产品管理', '', '', '100', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hfxk8wqq', 'y0hfxk8lm3', 'y0h4mbliom', 'cookie', '', 'y0hfxk7ng2', 'cookie管理', '内容管理', '', '10', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hftd8gwm', 'y0hftd1309', 'y0h4mbliom', 'info', 'y0hftd4qb0', 'y0hftcx50h', '人员添加', '', '', '20', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0h4ropq71', 'y0h4mbn5tf', 'y0h4mbliom', 'info', 'y0h4mbdtro', 'y0h4kvcnc2', '栏目管理', '栏目管理', '', '30', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hfvs4naa', '0000000000', 'y0h4mbliom', '', '', '', '会员管理', '', '', '300', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hfvs4ydg', 'y0hfvs4naa', 'y0h4mbliom', 'viptype', '', 'y0hfvs34jb', '会员类别管理', '内容修改', '', '10', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hfvs616l', 'y0hfvs4naa', 'y0h4mbliom', 'vip', '', 'y0hfvrz7kn', '会员管理', '内容修改', '', '30', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hfvs6m51', 'y0hfvs4naa', 'y0h4mbliom', 'viptype', '', 'y0hfvs0ink', '会员类别添加', '', '', '20', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hfvs70k7', 'y0hfvs4naa', 'y0h4mbliom', 'vip', '', 'y0hfvrsi2o', '会员添加', '', '', '40', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hfxk8lm3', '0000000000', 'y0h4mbliom', '', '', '', 'cookie管理', '', '', '400', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hftd63o5', 'y0hftd1309', 'y0h4mbliom', 'info', 'y0hftd4qb0', 'y0hftczbb1', '人员管理', '内容修改', '', '10', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0hftd1309', '0000000000', 'y0h4mbliom', '', '', '', '人员管理', '', '', '200', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0h4ronof8', 'y0h4mbn5tf', 'y0h4mbliom', 'info', 'y0h4mbdtro', 'y0h4kp3job', '内容管理', '内容修改', '', '10', 'mmOpen');
INSERT INTO `jdiy_mm` VALUES ('y0h4roowzw', 'y0h4mbn5tf', 'y0h4mbliom', 'info', 'y0h4mbdtro', 'y0h4kofpv1', '内容添加', '', '', '20', 'mmOpen');

-- ----------------------------
-- Table structure for `jdiy_sys`
-- ----------------------------
DROP TABLE IF EXISTS `jdiy_sys`;
CREATE TABLE `jdiy_sys` (
  `t0` varchar(128) NOT NULL,
  `id` char(10) CHARACTER SET ascii NOT NULL,
  `tid` char(10) CHARACTER SET ascii NOT NULL,
  `frame` varchar(255) CHARACTER SET ascii NOT NULL,
  `isc` bit(1) NOT NULL DEFAULT b'0',
  `sort` int(11) unsigned NOT NULL DEFAULT '100',
  `dt1` datetime NOT NULL DEFAULT '1900-01-01 00:00:27',
  `dt2` datetime NOT NULL DEFAULT '1900-01-01 00:00:27',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `status` varchar(16) NOT NULL DEFAULT '0',
  `owner` char(10) CHARACTER SET ascii NOT NULL DEFAULT '0',
  `upf` text,
  `t1` varchar(128) DEFAULT NULL,
  `t2` varchar(128) DEFAULT NULL,
  `t3` varchar(128) DEFAULT NULL,
  `t4` varchar(128) DEFAULT NULL,
  `t5` varchar(128) DEFAULT NULL,
  `t6` varchar(128) DEFAULT NULL,
  `t7` varchar(128) DEFAULT NULL,
  `t8` varchar(128) DEFAULT NULL,
  `t9` varchar(128) DEFAULT NULL,
  `t10` varchar(128) DEFAULT NULL,
  `t11` varchar(128) DEFAULT NULL,
  `t12` varchar(128) DEFAULT NULL,
  `t13` varchar(128) DEFAULT NULL,
  `t14` varchar(128) DEFAULT NULL,
  `t15` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jdiy_sys
-- ----------------------------
INSERT INTO `jdiy_sys` VALUES ('系统角色', 'z0000000s0', '0000000000', '.', '', '10', '2007-09-28 00:00:00', '2007-09-28 00:00:00', '0', 'JC_PROTECTED', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `jdiy_sys` VALUES ('系统会员', 'z0000000s1', '0000000000', '.', '', '20', '2007-09-28 00:00:00', '2007-09-28 00:00:00', '0', 'JC_PROTECTED', '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `jdiy_sys` VALUES ('超级管理员', 'z0000000s5', 'z0000000s0', '.z0000000s0.', '', '20', '2010-09-09 21:50:50', '2012-07-27 13:34:25', '0', '0', '0', '', '拥有全部的管理权限.', '', '', '', '', '', '', '', '', '', '', '', '6D3AE14DB14237652A5EE2AA0E3DDA38Z20T3PUS', 'CAF7B75037FF41034898675D5548E0D7Z20T3PUS', '\'z0000000mb\', \'z0000000m9\', \'z0000000m8\', \'z0000000m0\', \'z0000000ma\', \'z0000000c1\', \'y0gw10rbeu\', \'y0gw10qiio\', \'y0gw0qxmm6\', \'y0gw0qykz2\', \'y0gw0rhmjo\', \'y0gw0skw12\', \'y0gw0qwu7n\', \'y0h50i5ilx\', \'y0h50i3knc\', \'y0h4rym2au\', \'y0h4rylbvp\', \'y0h4rykjgl\', \'y0h4mbuf9b\', \'y0h4s0ei5p\', \'y0h4s0d3rg\', \'y0h4s0broy\', \'y0h4mboclr\', \'y0h4s1k944\', \'y0h4s1js8g\', \'y0h4s1ja00\', \'y0h4mbo5cc\', \'y0h4kvjmwc\', \'y0h4kotbhj\', \'y0h4kpgev6\', \'y0h4mbnvfg\', \'y0h4s205ma\', \'y0h4s1zp4r\', \'y0h4s1z5r7\', \'y0h4mbng1w\', \'y0h4ropq71\', \'y0h4roowzw\', \'y0h4ronof8\', \'y0h4mbn5tf\', \'y0h4s576s4\', \'y0h4mbj7by\', \'y0h4mbliom\'');
INSERT INTO `jdiy_sys` VALUES ('系统基本配置', 'z0000000s8', 'z0000000sa', '.z0000000sa.', '', '40', '2007-09-28 00:00:00', '2007-09-28 00:00:00', '0', 'JC_PROTECTED', '0', '', '', '0', '', '', '', '', '', '', '', '', '', '', '', '', '/jspceo/JC_Home.jsp');
INSERT INTO `jdiy_sys` VALUES ('系统配置', 'z0000000sa', '0000000000', '.', '', '30', '2007-09-28 00:00:00', '2007-09-28 00:00:00', '0', 'JC_PROTECTED', '0', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `jdiy_sys` VALUES ('lee', 'z0fz2ftpp9', 'z0000000s5', '.z0000000s0.z0000000s5.', '', '100', '2009-09-01 00:00:00', '2013-04-15 14:40:46', '0', '0', '0', '', '00B7691D86D96AEBD21DD9E138F90840', '李传考', '男', '99', 'lckao@163.com', '示例用户,可以删除', '示例用户,可以删除', '示例用户,可以删除', '325000', '', '', '', '', '', '测试用,可删除.');
INSERT INTO `jdiy_sys` VALUES ('角色示例', 'y0gv65ljev', 'z0000000s0', '.z0000000s0.', '', '100', '2011-11-19 13:04:38', '2012-07-18 09:50:44', '0', '0', '0', '', 'xx', null, null, null, null, null, null, null, null, null, null, null, null, null, '\'y0h4qeb574\', \'y0h4qeahim\', \'y0h4mbwyvu\', \'y0h4mbw18w\', \'y0h4mbuw75\', \'y0h4mbuf9b\', \'y0h4qf0xtm\', \'y0h4qf04d3\', \'y0h4qeyrnk\', \'y0h4p5zzkk\', \'y0h4qey3mn\', \'y0h4mboclr\', \'y0h4qe1ozf\', \'y0h4p5x7y3\', \'y0h4qe0s2d\', \'y0h4p5tvb3\', \'y0h4mbo5cc\', \'y0h4kvjmwc\', \'y0h4kotbhj\', \'y0h4kpgev6\', \'y0h4mbnvfg\', \'y0h4p5h9i5\', \'y0h4qkmezu\', \'y0h4qkl5t0\', \'y0h4ox9b05\', \'y0h4qk85yi\', \'y0h4mbng1w\', \'y0h4ropq71\', \'y0h4roowzw\', \'y0h4ronof8\', \'y0h4mbn5tf\', \'y0h4owt5o0\', \'y0h4owriby\', \'y0h4owqs7d\', \'y0h4owpyyo\', \'y0h4owp0sy\', \'y0h4owmuod\', \'y0h4mbj7by\', \'y0h4mbliom\'');

-- ----------------------------
-- Table structure for `jdiy_tb`
-- ----------------------------
DROP TABLE IF EXISTS `jdiy_tb`;
CREATE TABLE `jdiy_tb` (
  `id` char(10) CHARACTER SET ascii NOT NULL DEFAULT '0',
  `tit` varchar(64) NOT NULL DEFAULT '.',
  `tb` varchar(48) CHARACTER SET ascii NOT NULL,
  `sort` int(11) unsigned DEFAULT '50',
  `flag` bit(1) DEFAULT b'1' COMMENT '0: systb  1: custom tb',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jdiy_tb
-- ----------------------------
INSERT INTO `jdiy_tb` VALUES ('y0hfxk61x7', 'cookie', 'cookie', '50', '');
INSERT INTO `jdiy_tb` VALUES ('y0gw0qld73', '会员', 'vip', '50', '');
INSERT INTO `jdiy_tb` VALUES ('y0gw0qlvms', '会员类别', 'viptype', '50', '');
INSERT INTO `jdiy_tb` VALUES ('y0h4jmxf96', '信息主表', 'info', '50', '');

-- ----------------------------
-- Table structure for `jdiy_vi`
-- ----------------------------
DROP TABLE IF EXISTS `jdiy_vi`;
CREATE TABLE `jdiy_vi` (
  `id` char(10) CHARACTER SET ascii NOT NULL DEFAULT '0',
  `tb` varchar(48) DEFAULT '0',
  `tbpk` varchar(64) DEFAULT NULL,
  `dmpk` tinyint(1) NOT NULL,
  `tit` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'untitled',
  `type` varchar(32) CHARACTER SET ascii NOT NULL DEFAULT 'input0',
  `prm` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jdiy_vi
-- ----------------------------
INSERT INTO `jdiy_vi` VALUES ('z000000ct1', '0', 'id', '0', '系统用户_输入表单', 'input0', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>t0</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>0</JD_sort>\r\n<JD_name>登录账号</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n<JD_script>if(fm.isNull(\"t0\",\"用户名不能为空\")) return false;</JD_script>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t1</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>10</JD_sort>\r\n<JD_name>登录密码</JD_name>\r\n<JD_type>password</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t2</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>20</JD_sort>\r\n<JD_name>真实姓名</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t3</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>30</JD_sort>\r\n<JD_name>性别</JD_name>\r\n<JD_type>radio</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n<JD_valuelist>男{男}\r\n女{女}\r\n保密{保密}</JD_valuelist>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t4</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>40</JD_sort>\r\n<JD_name>年龄</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value>99</JD_value>\r\n<JD_cols>2</JD_cols>\r\n<JD_script>if(!fm.isInt(\"t4\",\'请输入正确的年龄\',10,100)) return false;</JD_script>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t5</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>50</JD_sort>\r\n<JD_name>电子邮件</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t6</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>60</JD_sort>\r\n<JD_name>手机号码</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t7</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>70</JD_sort>\r\n<JD_name>电话号码</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t8</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>80</JD_sort>\r\n<JD_name>联系地址</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n<JD_style>style=\"width:400px\"</JD_style>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t9</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_sort>90</JD_sort>\r\n<JD_name>邮编</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>tid</JD_field>\r\n<JD_name>用户角色</JD_name>\r\n<JD_depth>0</JD_depth>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_prm>noFirst,noRepeatTid</JD_prm>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('z000000ct2', '0', 'id', '0', '系统用户_列表管理', 'list', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_pageSize>20</JD_pageSize>\r\n<JD_outType>input0</JD_outType>\r\n<JD_addFilter></JD_addFilter>\r\n<JD_inObj>z000000ct1</JD_inObj>\r\n<JD_imgWH>0,0</JD_imgWH>\r\n<JD_outFields>tid,t0,t2,t3,t5,t6</JD_outFields>\r\n<JD_keyFields></JD_keyFields>\r\n<JD_bat>-Delete-</JD_bat>\r\n<JD_cut>48</JD_cut>\r\n<JD_dbl>edt</JD_dbl>\r\n<JD_url></JD_url>\r\n<JD_urlW></JD_urlW>\r\n<JD_urlH></JD_urlH>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('SYSROLESLS', '0', '', '0', 'JDiy_系统角色管理', 'list', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_pageSize>20</JD_pageSize>\r\n<JD_outType>input1</JD_outType>\r\n<JD_addFilter></JD_addFilter>\r\n<JD_inObj>SYSROLESIN</JD_inObj>\r\n<JD_imgWH>0,0</JD_imgWH>\r\n<JD_outFields>sort,t0,t1</JD_outFields>\r\n<JD_keyFields>sort,t0,t1</JD_keyFields>\r\n<JD_bat>-Sort-,-Delete-</JD_bat>\r\n<JD_cut>48</JD_cut>\r\n<JD_dbl>edt</JD_dbl>\r\n<JD_url></JD_url>\r\n<JD_urlW></JD_urlW>\r\n<JD_urlH></JD_urlH>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0hfvrz7kn', 'vip', 'id', '1', '会员管理', 'list', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_trim>function() {\r\n        var t = this.replace(/^\\s+/,\"\");\r\n        for(var i=t.length;i--;)\r\n            if(/\\S/.test(t.charAt(i))){\r\n                t=t.substring(0,i+1);\r\n                break;\r\n            }\r\n        return t;\r\n    }</JD_trim>\r\n<JD_eq>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o == null || this.toUpperCase() != (o + \'\').toUpperCase()) return false;\r\n        }\r\n        return true;\r\n    }</JD_eq>\r\n<JD_or>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o != null && this.toUpperCase() == (o + \'\').toUpperCase()) return true;\r\n        }\r\n        return false;\r\n    }</JD_or>\r\n<JD_dbl>edt</JD_dbl>\r\n<JD_cut>48</JD_cut>\r\n<JD_inObj>y0hfvrsi2o</JD_inObj>\r\n<JD_outType>input0</JD_outType>\r\n<JD_pageSize>20</JD_pageSize>\r\n<JD_imgWH>0,0</JD_imgWH>\r\n<JD_outFields>viptype,username,realname,sex,qq,registerdate</JD_outFields>\r\n<JD_keyFields>viptype,username,realname,qq,sex,registerdate</JD_keyFields>\r\n<JD_bat>-Delete-</JD_bat>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('SYSROLESIN', '0', null, '0', 'JDiy_系统角色输入', 'input1', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>t0</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>角色名称</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>sort</JD_field>\r\n<JD_name>排序索引</JD_name>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_prm>noRepeatTid</JD_prm>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t1</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>简要备注</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n<JD_style>style=\"width:99%;\"</JD_style>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t15</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>操作权限</JD_name>\r\n<JD_type>hidden</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0hfxk6b29', 'cookie', 'id', '1', 'cookie添加', 'input0', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>username</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>用户名</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0hfxk7ng2', 'cookie', 'id', '1', 'cookie管理', 'list', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_trim>function() {\r\n        var t = this.replace(/^\\s+/,\"\");\r\n        for(var i=t.length;i--;)\r\n            if(/\\S/.test(t.charAt(i))){\r\n                t=t.substring(0,i+1);\r\n                break;\r\n            }\r\n        return t;\r\n    }</JD_trim>\r\n<JD_eq>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o == null || this.toUpperCase() != (o + \'\').toUpperCase()) return false;\r\n        }\r\n        return true;\r\n    }</JD_eq>\r\n<JD_or>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o != null && this.toUpperCase() == (o + \'\').toUpperCase()) return true;\r\n        }\r\n        return false;\r\n    }</JD_or>\r\n<JD_dbl>none</JD_dbl>\r\n<JD_cut>48</JD_cut>\r\n<JD_inObj>y0hfxk6b29</JD_inObj>\r\n<JD_outType>input0</JD_outType>\r\n<JD_pageSize>20</JD_pageSize>\r\n<JD_imgWH>0,0</JD_imgWH>\r\n<JD_outFields>username,id</JD_outFields>\r\n<JD_keyFields>username,id</JD_keyFields>\r\n<JD_bat>-Delete-</JD_bat>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0hfvs0ink', 'viptype', 'id', '1', '会员类别', 'input0', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>name</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>会员类别名称</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n<JD_script>if(JSer(\"#name\").val()==\"\"){\r\n        alert(\"会员类别名称必填.\");\r\n        JSer(\"#name\").focus();\r\n        return false;\r\n}</JD_script>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>sort</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>排序索引</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value>100</JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>remark</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>备注说明</JD_name>\r\n<JD_type>textarea</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n<JD_style>style=\"width:480px;height:120px;\"</JD_style>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0hfvs34jb', 'viptype', 'id', '1', '会员类别管理', 'list', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_trim>function() {\r\n        var t = this.replace(/^\\s+/,\"\");\r\n        for(var i=t.length;i--;)\r\n            if(/\\S/.test(t.charAt(i))){\r\n                t=t.substring(0,i+1);\r\n                break;\r\n            }\r\n        return t;\r\n    }</JD_trim>\r\n<JD_eq>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o == null || this.toUpperCase() != (o + \'\').toUpperCase()) return false;\r\n        }\r\n        return true;\r\n    }</JD_eq>\r\n<JD_or>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o != null && this.toUpperCase() == (o + \'\').toUpperCase()) return true;\r\n        }\r\n        return false;\r\n    }</JD_or>\r\n<JD_dbl>edt</JD_dbl>\r\n<JD_cut>100</JD_cut>\r\n<JD_inObj>y0hfvs0ink</JD_inObj>\r\n<JD_outType>input0</JD_outType>\r\n<JD_pageSize>20</JD_pageSize>\r\n<JD_imgWH>0,0</JD_imgWH>\r\n<JD_outFields>name,sort,remark</JD_outFields>\r\n<JD_keyFields></JD_keyFields>\r\n<JD_bat>-Delete-</JD_bat>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0h4kofpv1', '0', 'id', '0', '内容添加', 'input0', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>t0</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>产品名称</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>sort</JD_field>\r\n<JD_name>文章排序</JD_name>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>dt1</JD_field>\r\n<JD_name>添加时间</JD_name>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>dt2</JD_field>\r\n<JD_name>更新时间</JD_name>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>tid</JD_field>\r\n<JD_name>上级栏目</JD_name>\r\n<JD_depth>0</JD_depth>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_prm>noFirst,linkage</JD_prm>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t1</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>市场价</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t2</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>兑换积分</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t15</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>产品描述</JD_name>\r\n<JD_type>webeditor</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>jj</JD_field>\r\n<JD_txf>x</JD_txf>\r\n<JD_name>简介</JD_name>\r\n<JD_type>webeditor</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>sysm</JD_field>\r\n<JD_txf>x</JD_txf>\r\n<JD_name>使用说明</JD_name>\r\n<JD_type>webeditor</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>pic</JD_field>\r\n<JD_txf>f</JD_txf>\r\n<JD_expand>1</JD_expand>\r\n<JD_expandNum>0</JD_expandNum>\r\n<JD_name>产品图片</JD_name>\r\n<JD_type>file</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n<JD_ext>jpg,gif,png</JD_ext>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0h4kp3job', '0', 'id', '0', '内容管理', 'list', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_trim>function() {\r\n        var t = this.replace(/^\\s+/,\"\");\r\n        for(var i=t.length;i--;)\r\n            if(/\\S/.test(t.charAt(i))){\r\n                t=t.substring(0,i+1);\r\n                break;\r\n            }\r\n        return t;\r\n    }</JD_trim>\r\n<JD_eq>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o == null || this.toUpperCase() != (o + \'\').toUpperCase()) return false;\r\n        }\r\n        return true;\r\n    }</JD_eq>\r\n<JD_or>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o != null && this.toUpperCase() == (o + \'\').toUpperCase()) return true;\r\n        }\r\n        return false;\r\n    }</JD_or>\r\n<JD_dbl>edt</JD_dbl>\r\n<JD_cut>48</JD_cut>\r\n<JD_inObj>y0h4kofpv1</JD_inObj>\r\n<JD_outType>input0</JD_outType>\r\n<JD_pageSize>20</JD_pageSize>\r\n<JD_imgWH>0,0</JD_imgWH>\r\n<JD_outFields>tid,t0,t1,t2,sort,dt1,hits</JD_outFields>\r\n<JD_keyFields>t0</JD_keyFields>\r\n<JD_bat>-Sort-,-Delete-</JD_bat>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0hftcx50h', '0', 'id', '0', '人员添加', 'input0', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>t0</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>姓名</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>dt1</JD_field>\r\n<JD_name>添加时间</JD_name>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>dt2</JD_field>\r\n<JD_name>更新时间</JD_name>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_prm>noFirst,linkage</JD_prm>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>sort</JD_field>\r\n<JD_name>文章排序</JD_name>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t15</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>描述</JD_name>\r\n<JD_type>webeditor</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>pic</JD_field>\r\n<JD_txf>f</JD_txf>\r\n<JD_name>产品图片</JD_name>\r\n<JD_type>file</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n<JD_ext>jpg,gif,png</JD_ext>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0hftczbb1', '0', 'id', '0', '人员管理', 'list', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_trim>function() {\r\n        var t = this.replace(/^\\s+/,\"\");\r\n        for(var i=t.length;i--;)\r\n            if(/\\S/.test(t.charAt(i))){\r\n                t=t.substring(0,i+1);\r\n                break;\r\n            }\r\n        return t;\r\n    }</JD_trim>\r\n<JD_eq>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o == null || this.toUpperCase() != (o + \'\').toUpperCase()) return false;\r\n        }\r\n        return true;\r\n    }</JD_eq>\r\n<JD_or>function() {\r\n        for (var i = 0; i < arguments.length; i++) {\r\n            var o = arguments[i];\r\n            if (o != null && this.toUpperCase() == (o + \'\').toUpperCase()) return true;\r\n        }\r\n        return false;\r\n    }</JD_or>\r\n<JD_dbl>edt</JD_dbl>\r\n<JD_cut>48</JD_cut>\r\n<JD_inObj>y0hftcx50h</JD_inObj>\r\n<JD_outType>input0</JD_outType>\r\n<JD_pageSize>20</JD_pageSize>\r\n<JD_imgWH>0,0</JD_imgWH>\r\n<JD_outFields>tid,t0,t1,sort</JD_outFields>\r\n<JD_keyFields>t0</JD_keyFields>\r\n<JD_bat>-Sort-,-Delete-</JD_bat>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0hfvrsi2o', 'vip', 'id', '1', '会员', 'input0', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>username</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>用户名</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n<JD_script>if(JSer(\"#username\").val()==\"\"){\r\n        alert(\"会员用户名必填.\");\r\n        JSer(\"#username\").focus();\r\n        return false;\r\n}</JD_script>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>password</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>登录密码</JD_name>\r\n<JD_type>password</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>viptype</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>会员类型</JD_name>\r\n<JD_type>select</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n<JD_listTable>viptype</JD_listTable>\r\n<JD_listTxt>name</JD_listTxt>\r\n<JD_listVal>id</JD_listVal>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>realname</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>真实姓名</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>sex</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>姓别</JD_name>\r\n<JD_type>radio</JD_type>\r\n<JD_value>保密</JD_value>\r\n<JD_cols>2</JD_cols>\r\n<JD_valuelist>保密{保密};\r\n男{男};\r\n女{女};</JD_valuelist>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>qq</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>QQ号码</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>email</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>电子邮件</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>mt</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>手机号码</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>tel</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>联系电话</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>registerdate</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>添加时间</JD_name>\r\n<JD_type>datetime</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>remark</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>个人说明</JD_name>\r\n<JD_type>textarea</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n<JD_style>style=\"width:400px;height:80px;\"</JD_style>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0h4kv7mhe', '0', 'id', '0', '栏目', 'input1', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>t0</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>名称</JD_name>\r\n<JD_type>text</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>2</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>sort</JD_field>\r\n<JD_name>排序索引</JD_name>\r\n<JD_txf>t</JD_txf>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>t15</JD_field>\r\n<JD_txf>t</JD_txf>\r\n<JD_name>内容</JD_name>\r\n<JD_type>webeditor</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>pic</JD_field>\r\n<JD_txf>f</JD_txf>\r\n<JD_name>左边背景图片</JD_name>\r\n<JD_type>file</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n<JD_ext>jpg,gif,png</JD_ext>\r\n</JD_ITEM>\r\n\r\n<JD_ITEM>\r\n<JD_field>pico</JD_field>\r\n<JD_txf>f</JD_txf>\r\n<JD_name>右边背景图片</JD_name>\r\n<JD_type>file</JD_type>\r\n<JD_value></JD_value>\r\n<JD_cols>1</JD_cols>\r\n<JD_ext>jpg,gif,png</JD_ext>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');
INSERT INTO `jdiy_vi` VALUES ('y0h4kvcnc2', '0', 'id', '0', '栏目管理', 'tree', '\r\n\r\n<JD_DATASET>\r\n<JD_ITEM>\r\n<JD_field>prm</JD_field>\r\n<JD_inObj>y0h4kv7mhe</JD_inObj>\r\n<JD_depth>0</JD_depth>\r\n<JD_fd0>t0=名称</JD_fd0>\r\n<JD_fd1></JD_fd1>\r\n<JD_depthAdd>1</JD_depthAdd>\r\n<JD_depthEdt>0</JD_depthEdt>\r\n<JD_depthDel>1</JD_depthDel>\r\n<JD_usrTit>栏目</JD_usrTit>\r\n<JD_bat></JD_bat>\r\n</JD_ITEM>\r\n\r\n</JD_DATASET>\r\n\r\n');

-- ----------------------------
-- Table structure for `vip`
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viptype` int(11) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `realname` varchar(128) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `qq` varchar(64) DEFAULT NULL,
  `mt` varchar(64) DEFAULT NULL,
  `tel` varchar(64) DEFAULT NULL,
  `remark` text,
  `registerdate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip
-- ----------------------------
INSERT INTO `vip` VALUES ('1', '1', 'lckao', '00B7691D86D96AEBD21DD9E138F90840', '李传考', '男', 'lckao@163.com', '276204962', '15888297973', '0577-64207771', '个人说明', '2013-04-24 08:46:25');

-- ----------------------------
-- Table structure for `viptype`
-- ----------------------------
DROP TABLE IF EXISTS `viptype`;
CREATE TABLE `viptype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `remark` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of viptype
-- ----------------------------
INSERT INTO `viptype` VALUES ('1', '普通会员', '100', '普通会员');
