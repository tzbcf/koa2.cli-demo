/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50637
Source Host           : localhost:3306
Source Database       : job

Target Server Type    : MYSQL
Target Server Version : 50637
File Encoding         : 65001

Date: 2018-03-07 20:57:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `line_base_info`
-- ----------------------------
DROP TABLE IF EXISTS `line_base_info`;
CREATE TABLE `line_base_info` (
  `LINE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '线体ID',
  `LINE_NAME` varchar(32) NOT NULL COMMENT '线体名称',
  `SEQ_NO` int(11) DEFAULT '0' COMMENT '排序(默认为0)',
  `IS_VISIBLE` varchar(1) DEFAULT 'Y' COMMENT '用户是否可见(Y.可见 N.不可见，值只能为Y和N)',
  `CREATE_BY` varchar(32) NOT NULL COMMENT '创建人',
  `CREATE_DT` datetime NOT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(32) NOT NULL COMMENT '修改人',
  `UPDATE_DT` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`LINE_ID`),
  KEY `AK_Key_1` (`LINE_ID`) USING BTREE,
  KEY `LINE_NAME` (`LINE_NAME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='线体基础信息表';

-- ----------------------------
-- Records of line_base_info
-- ----------------------------
INSERT INTO `line_base_info` VALUES ('1', 'SMT-1', '0', 'Y', '康世杰', '2017-07-27 17:28:24', '康世杰', '2017-07-27 17:36:43');
INSERT INTO `line_base_info` VALUES ('2', 'SMT-2', '0', 'Y', '康世杰', '2017-07-27 17:49:19', '康世杰', '2017-07-27 17:49:19');
INSERT INTO `line_base_info` VALUES ('3', 'DIP-1', '0', 'Y', '康世杰', '2017-07-28 08:39:07', '康世杰', '2017-07-28 08:39:07');
INSERT INTO `line_base_info` VALUES ('4', 'SMT-3', '0', 'Y', '康世杰', '2017-09-27 09:56:00', '康世杰', '2017-09-27 09:56:00');
INSERT INTO `line_base_info` VALUES ('5', 'SMT-4', '0', 'Y', '康世杰', '2017-09-27 10:31:51', '康世杰', '2017-09-27 10:31:51');
INSERT INTO `line_base_info` VALUES ('6', 'SMT-5', '0', 'Y', '康世杰', '2017-10-10 11:24:40', '康世杰', '2017-10-10 11:24:45');
INSERT INTO `line_base_info` VALUES ('7', 'SMT-6', '0', 'Y', '康世杰', '2017-10-10 11:35:06', '康世杰', '2017-10-10 11:35:10');
INSERT INTO `line_base_info` VALUES ('8', 'SMT-7', '0', 'Y', '康世杰', '2017-10-10 11:36:24', '康世杰', '2017-10-10 11:36:27');
INSERT INTO `line_base_info` VALUES ('9', 'SMT-8', '0', 'Y', '康世杰', '2017-10-10 11:36:55', '康世杰', '2017-10-10 11:37:01');
INSERT INTO `line_base_info` VALUES ('10', 'SMT-9', '0', 'Y', '康世杰', '2017-10-10 11:37:32', '康世杰', '2017-10-10 11:37:37');
INSERT INTO `line_base_info` VALUES ('11', 'SMT-10', '0', 'Y', '康世杰', '2017-10-10 11:38:20', '康世杰', '2017-10-10 11:38:22');
INSERT INTO `line_base_info` VALUES ('12', 'DIP-2', '0', 'Y', '康世杰', '2017-10-10 11:38:49', '康世杰', '2017-10-10 11:38:54');

-- ----------------------------
-- Table structure for `machine_base_info`
-- ----------------------------
DROP TABLE IF EXISTS `machine_base_info`;
CREATE TABLE `machine_base_info` (
  `MACH_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '设备ID',
  `MACH_CODE` varchar(200) NOT NULL COMMENT '设备编码',
  `MACH_SN` varchar(200) NOT NULL COMMENT '设备序列号',
  `MACH_DESC` varchar(1000) NOT NULL COMMENT '设备描述',
  `MACH_CATEGORY` varchar(32) NOT NULL COMMENT '设备类别',
  `MACH_TYPE` varchar(64) NOT NULL COMMENT '型号名称',
  `MACH_BRAND` varchar(64) NOT NULL COMMENT '设备型号',
  `INCOMING_DATE` date NOT NULL COMMENT '进厂时间',
  `PO_NO` varchar(200) DEFAULT NULL COMMENT '采购单号',
  `SUPPLIER` varchar(200) DEFAULT NULL COMMENT '供应商',
  `COST_CENTER` varchar(200) DEFAULT NULL COMMENT '费用中心',
  `MACH_STATUS` varchar(32) NOT NULL COMMENT '设备状态',
  `INITIALIZE_DATE` datetime DEFAULT NULL COMMENT '初始化时间',
  `OPERATOR` varchar(32) DEFAULT NULL COMMENT '操作员',
  `MAINTAIN_CYCLE` int(11) NOT NULL COMMENT '保养周期',
  `WARN_CYCLE` int(11) NOT NULL COMMENT '预警周期',
  `MAINTAIN_DOT` int(11) NOT NULL COMMENT '保养频度',
  `WARN_DOT` int(11) NOT NULL COMMENT '预警频度',
  `TOTAL_DOT` int(11) DEFAULT NULL COMMENT '总频度',
  `CYCLE_DOT` int(11) DEFAULT NULL COMMENT '周期频度',
  `LINE_ID` int(11) DEFAULT NULL COMMENT '所属线体',
  `SEQ_NO` int(11) DEFAULT NULL COMMENT '顺序',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '最后更新人',
  `UPDATE_DT` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`MACH_ID`),
  KEY `MACH_CODE` (`MACH_CODE`) USING BTREE,
  KEY `CATEGORY_NAME` (`MACH_CATEGORY`) USING BTREE,
  KEY `MACH_TYPE` (`MACH_TYPE`) USING BTREE,
  KEY `INCOMING_DATE` (`INCOMING_DATE`) USING BTREE,
  KEY `INITIALIZE_DATE` (`INITIALIZE_DATE`) USING BTREE,
  KEY `LINE_ID` (`LINE_ID`) USING BTREE,
  KEY `MACH_SN` (`MACH_SN`) USING BTREE,
  KEY `MACH_STATUS` (`MACH_STATUS`) USING BTREE,
  KEY `MAINTAIN_CYCLE` (`MAINTAIN_CYCLE`) USING BTREE,
  KEY `MAINTAIN_DOT` (`MAINTAIN_DOT`) USING BTREE,
  KEY `UPDATE_DT` (`UPDATE_DT`) USING BTREE,
  KEY `BRAND_NAME` (`MACH_BRAND`) USING BTREE,
  KEY `MACH_SN_2` (`MACH_SN`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='设备基础信息表';

-- ----------------------------
-- Records of machine_base_info
-- ----------------------------
INSERT INTO `machine_base_info` VALUES ('16', 'SMT-1-3', '贴片机D4-2', '贴片机D4-2', '贴片机', 'D系列', '西门子', '2017-08-23', 'erewrewrew', 'ASM精密电子', '234113', '调入', '2017-08-10 17:01:45', 'SN14071', '180', '10', '200', '90', '0', '0', '1', '3', 'SN14071', '2017-08-23 13:43:33', 'SN14071', '2017-09-07 16:48:48');
INSERT INTO `machine_base_info` VALUES ('17', 'SMT-1-2', '贴片机D4-1', '贴片机D4-1', '贴片机', 'D系列', '西门子', '2017-08-23', 'PO293845', 'ASM精密电子', '234113', '保养', '2017-03-22 17:01:53', 'SN14071', '180', '10', '200', '89', '0', '0', '1', '2', 'SN14071', '2017-08-23 15:50:27', 'SN14071', '2017-09-13 17:41:06');
INSERT INTO `machine_base_info` VALUES ('18', 'SMT-2-3', 'SIMIE003', '贴片机D4-2', '贴片机', 'D系列', '西门子', '2017-08-23', 'PO293845', 'ASM精密电子', '234113', '调入', '2017-08-23 00:00:00', 'SN14071', '180', '10', '200', '90', '400', '139', '2', '3', 'SN14071', '2017-08-23 15:51:24', 'SN14071', '2017-08-23 15:55:25');
INSERT INTO `machine_base_info` VALUES ('19', 'SMT-2-2', 'SIMIE004', '贴片机D4-1', '贴片机', 'D系列', '西门子', '2017-08-23', 'wqqqqqq', 'ASM精密电子', '234113', '调入', '2017-06-24 17:33:03', 'SN14071', '180', '10', '200', '90', '0', '0', '2', '2', 'SN14071', '2017-08-23 15:59:26', 'SN14071', '2017-09-01 16:36:55');
INSERT INTO `machine_base_info` VALUES ('20', 'SMT-1-1', '丝印机', '丝印机', '丝印机', 'DEK', 'DEK', '2017-09-07', 'PO98471', 'ASM精密电子', '234115', '调入', '2017-09-14 17:02:02', 'SN14071', '180', '10', '30000', '100', '0', '0', '1', '1', 'SN14071', '2017-09-07 11:40:25', 'SN14071', '2017-09-07 11:40:25');
INSERT INTO `machine_base_info` VALUES ('25', 'SMT-2-1', 'SIL002', '丝印机', '丝印机', 'DEK', 'DEK', '2017-09-13', 'PO984001', 'ASM精密电子', '234113', '调入', '2017-10-10 11:48:32', 'SN14071', '180', '10', '200', '90', '0', '0', '2', '1', 'SN14071', '2017-09-13 17:57:03', 'SN14071', '2017-09-26 13:43:56');
INSERT INTO `machine_base_info` VALUES ('27', 'SMT-3-2', 'SMT00204', '贴片机D4-1', '贴片机', 'D系列', '西门子', '2017-09-15', '1221212', 'ASM精密电子', '234113', '调入', '2017-10-10 11:48:34', 'SN14071', '180', '10', '234', '3', '0', '0', '4', '2', 'SN14071', '2017-09-15 15:00:37', 'SN14071', '2017-09-15 15:00:37');
INSERT INTO `machine_base_info` VALUES ('28', 'SMT-3-1', 'SMT00301', '丝印机', '丝印机', 'DEK', 'DEK', '2017-09-15', '13231', 'ASM精密电子', '234113', '调入', '2017-10-10 11:48:36', 'SN14071', '180', '10', '2423', '2', '0', '0', '4', '1', 'SN14071', '2017-09-15 15:14:35', 'SN14071', '2017-09-15 15:14:35');
INSERT INTO `machine_base_info` VALUES ('29', 'SMT-4-1', 'SMT00312', '丝印机', '丝印机', 'DEK', 'DEK', '2017-09-15', 'nodejs', 'ASM精密电子', '234113', '调入', '2017-10-10 11:48:39', 'SN14071', '180', '10', '12', '1', '0', '0', '5', '1', 'SN14071', '2017-09-15 15:18:07', 'SN14071', '2017-09-15 15:18:07');
INSERT INTO `machine_base_info` VALUES ('30', 'SMT-3-3', 'SMT00303', '贴片机D4-2', '贴片机', 'D系列', '西门子', '2017-09-15', 'rotsdfsdaf', 'ASM精密电子', '234114', '调入', '2017-10-10 11:48:41', 'SN14071', '180', '10', '11', '1', '0', '0', '4', '3', 'SN14071', '2017-09-15 15:29:12', 'SN14071', '2017-09-25 16:08:55');
INSERT INTO `machine_base_info` VALUES ('33', 'SMT-4-2', 'SIMIE005', '贴片机D4-1', '贴片机', 'D系列', '西门子', '2017-10-10', 'PO938472', 'ASM精密电子', '234115', '调入', '2017-10-10 14:12:32', 'youyunning', '180', '10', '100000', '200', '0', '0', '5', '2', 'youyunning', '2017-10-10 14:12:32', '', '2017-10-10 14:12:33');
INSERT INTO `machine_base_info` VALUES ('34', 'SMT-1-4', '回流炉', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO0932', 'ASM精密电子', '234115', '调入', '2017-10-18 16:02:53', 'youyunning', '180', '10', '1000', '10', '0', '0', '1', '4', 'youyunning', '2017-10-18 16:02:53', '', '2017-10-18 16:02:54');
INSERT INTO `machine_base_info` VALUES ('35', 'SMT-1-5', 'AOI009', 'AOI', 'AOI', 'JT-H02', '劲拓', '2017-10-18', 'PO0947362', 'ASM精密电子', '234113', '调入', '2017-10-18 16:04:55', 'youyunning', '180', '10', '1000', '10', '0', '0', '1', '5', 'youyunning', '2017-10-18 16:04:55', '', '2017-10-18 16:04:56');
INSERT INTO `machine_base_info` VALUES ('36', 'SMT-2-4', 'RFO0938', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO98574', 'ASM精密电子', '234115', '调入', '2017-10-18 16:08:07', 'youyunning', '180', '10', '1000', '10', '0', '0', '2', '4', 'youyunning', '2017-10-18 16:08:07', '', '2017-10-18 16:08:07');
INSERT INTO `machine_base_info` VALUES ('37', 'SMT-2-5', 'JT-AOI002', 'AOI', 'AOI', 'JT-H02', '劲拓', '2017-10-18', 'PO837262', 'ASM精密电子', '234114', '调入', '2017-10-18 16:09:40', 'youyunning', '180', '10', '1000', '10', '0', '0', '2', '5', 'youyunning', '2017-10-18 16:09:40', '', '2017-10-18 16:09:40');
INSERT INTO `machine_base_info` VALUES ('38', 'SMT-3-4', 'JT-RFO0732', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO76352', 'ASM精密电子', '234115', '调入', '2017-10-18 16:13:20', 'youyunning', '180', '10', '1000', '10', '0', '0', '4', '4', 'youyunning', '2017-10-18 16:13:20', '', '2017-10-18 16:13:20');
INSERT INTO `machine_base_info` VALUES ('39', 'SMT-3-5', 'JT-AOI0362', 'AOI', 'AOI', 'JT-H02', '劲拓', '2017-10-18', 'PO98765', 'ASM精密电子', '234113', '调入', '2017-10-18 16:14:48', 'youyunning', '180', '10', '1000', '10', '0', '0', '4', '5', 'youyunning', '2017-10-18 16:14:48', '', '2017-10-18 16:14:49');
INSERT INTO `machine_base_info` VALUES ('40', 'SMT-4-3', 'SIMIE006', '贴片机D4-2', '贴片机', 'D系列', '西门子', '2017-10-18', 'PO908765', 'ASM精密电子', '234113', '调入', '2017-10-18 16:37:23', 'youyunning', '180', '10', '1000', '10', '0', '0', '5', '3', 'youyunning', '2017-10-18 16:37:23', '', '2017-10-18 16:37:23');
INSERT INTO `machine_base_info` VALUES ('41', 'SMT-4-4', 'JT-RFO009', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO36251', 'ASM精密电子', '234113', '调入', '2017-10-18 16:39:00', 'youyunning', '180', '10', '1000', '10', '0', '0', '5', '4', 'youyunning', '2017-10-18 16:39:00', '', '2017-10-18 16:39:00');
INSERT INTO `machine_base_info` VALUES ('42', 'SMT-4-5', 'JT-AOI76', 'AOI', 'AOI', 'JT-H02', '劲拓', '2017-10-18', 'PO852', 'ASM精密电子', '234115', '调入', '2017-10-18 16:39:47', 'youyunning', '180', '10', '1000', '10', '0', '0', '5', '5', 'youyunning', '2017-10-18 16:39:47', '', '2017-10-18 16:39:47');
INSERT INTO `machine_base_info` VALUES ('43', 'SMT-5-1', 'SMT00313', '丝印机', '丝印机', 'DEK', 'DEK', '2017-10-18', 'PO28173', 'ASM精密电子', '234113', '调入', '2017-10-18 17:09:39', 'youyunning', '180', '10', '1000', '10', '0', '0', '6', '1', 'youyunning', '2017-10-18 17:09:39', '', '2017-10-18 17:09:39');
INSERT INTO `machine_base_info` VALUES ('44', 'SMT-5-2', 'SIMIE008', '贴片机D4-1', '贴片机', 'D系列', '西门子', '2017-10-18', 'PO8721', 'ASM精密电子', '234113', '调入', '2017-10-18 17:10:42', 'youyunning', '180', '10', '1000', '10', '0', '0', '6', '2', 'youyunning', '2017-10-18 17:10:42', '', '2017-10-18 17:10:42');
INSERT INTO `machine_base_info` VALUES ('45', 'SMT-5-3', 'SIMIE0016', '贴片机D4-2', '贴片机', 'D系列', '西门子', '2017-10-18', 'PO3761', 'ASM精密电子', '234113', '调入', '2017-10-18 17:12:19', 'youyunning', '180', '10', '1000', '10', '0', '0', '6', '3', 'youyunning', '2017-10-18 17:12:19', '', '2017-10-18 17:12:19');
INSERT INTO `machine_base_info` VALUES ('46', 'SMT-5-4', 'JT-RFO0019', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO7652', 'ASM精密电子', '234115', '调入', '2017-10-18 17:19:10', 'youyunning', '180', '10', '1000', '10', '0', '0', '6', '4', 'youyunning', '2017-10-18 17:19:10', '', '2017-10-18 17:19:10');
INSERT INTO `machine_base_info` VALUES ('47', 'SMT-5-5', 'JT-AOI716', 'AOI', 'AOI', 'JT-RFO01', 'JT', '2017-10-18', 'PO8745', 'ASM精密电子', '234113', '调入', '2017-10-18 17:20:20', 'youyunning', '180', '10', '1000', '10', '0', '0', '6', '5', 'youyunning', '2017-10-18 17:20:20', '', '2017-10-18 17:20:21');
INSERT INTO `machine_base_info` VALUES ('48', 'SMT-6-1', 'SMT00322', '丝印机', '丝印机', 'DEK', 'DEK', '2017-10-18', 'PO6543', 'ASM精密电子', '234115', '调入', '2017-10-18 17:22:55', 'youyunning', '180', '10', '1000', '10', '0', '0', '7', '1', 'youyunning', '2017-10-18 17:22:55', '', '2017-10-18 17:22:56');
INSERT INTO `machine_base_info` VALUES ('49', 'SMT-6-2', 'SIMIE0065', '贴片机D4-1', '贴片机', 'D系列', '西门子', '2017-10-18', 'PO6182', 'ASM精密电子', '234114', '调入', '2017-10-18 17:23:44', 'youyunning', '180', '10', '1000', '10', '0', '0', '7', '2', 'youyunning', '2017-10-18 17:23:44', '', '2017-10-18 17:23:44');
INSERT INTO `machine_base_info` VALUES ('50', 'SMT-6-3', 'SIMIE0066', '贴片机D4-2', '贴片机', 'D系列', '西门子', '2017-10-18', 'PO8762', 'ASM精密电子', '234113', '调入', '2017-10-18 17:24:30', 'youyunning', '180', '10', '1000', '10', '0', '0', '7', '3', 'youyunning', '2017-10-18 17:24:30', '', '2017-10-18 17:24:30');
INSERT INTO `machine_base_info` VALUES ('51', 'SMT-6-4', 'JT-RFO069', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO9821', 'ASM精密电子', '234113', '调入', '2017-10-18 17:25:15', 'youyunning', '180', '10', '1000', '10', '0', '0', '7', '4', 'youyunning', '2017-10-18 17:25:15', '', '2017-10-18 17:25:16');
INSERT INTO `machine_base_info` VALUES ('52', 'SMT-6-5', 'JT-AOI66', 'AOI', 'AOI', 'JT-RFO01', 'JT', '2017-10-18', 'PO8721', 'ASM精密电子', '234113', '调入', '2017-10-18 17:26:01', 'youyunning', '180', '10', '1000', '10', '0', '0', '7', '5', 'youyunning', '2017-10-18 17:26:01', '', '2017-10-18 17:26:01');
INSERT INTO `machine_base_info` VALUES ('53', 'SMT-7-1', 'SMT00372', '丝印机', '丝印机', 'DEK', 'DEK', '2017-10-18', 'PO9871', 'ASM精密电子', '234113', '调入', '2017-10-18 17:50:27', 'youyunning', '180', '10', '1000', '10', '0', '0', '8', '1', 'youyunning', '2017-10-18 17:50:27', '', '2017-10-18 17:50:27');
INSERT INTO `machine_base_info` VALUES ('54', 'SMT-7-2', 'SIMIE075', '贴片机D4-1', '贴片机', 'HS系列', '西门子', '2017-10-18', 'PO2734', 'ASM精密电子', '234113', '调入', '2017-10-18 18:27:30', 'youyunning', '180', '10', '1000', '10', '0', '0', '8', '2', 'youyunning', '2017-10-18 18:27:30', '', '2017-10-18 18:27:31');
INSERT INTO `machine_base_info` VALUES ('55', 'SMT-7-3', 'SIMIE076', '贴片机D4-2', '贴片机', 'HS系列', '西门子', '2017-10-18', 'PO8763', 'ASM精密电子', '234113', '调入', '2017-10-18 18:28:16', 'youyunning', '180', '10', '1000', '10', '0', '0', '8', '3', 'youyunning', '2017-10-18 18:28:16', '', '2017-10-18 18:28:17');
INSERT INTO `machine_base_info` VALUES ('56', 'SMT-7-4', 'JT-RFO079', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO8643', 'ASM精密电子', '234113', '调入', '2017-10-18 18:29:06', 'youyunning', '180', '10', '1000', '10', '0', '0', '8', '4', 'youyunning', '2017-10-18 18:29:06', '', '2017-10-18 18:29:06');
INSERT INTO `machine_base_info` VALUES ('57', 'SMT-7-5', 'JT-AOI77', 'AOI', 'AOI', 'JT-RFO01', 'JT', '2017-10-18', 'PO9321', 'ASM精密电子', '234113', '调入', '2017-10-18 18:29:52', 'youyunning', '180', '10', '1000', '10', '0', '0', '8', '5', 'youyunning', '2017-10-18 18:29:52', '', '2017-10-18 18:29:52');
INSERT INTO `machine_base_info` VALUES ('58', 'SMT-8-1', 'SMT00382', '丝印机', '丝印机', 'DEK', 'DEK', '2017-10-18', 'PO9832', 'ASM精密电子', '234113', '调入', '2017-10-18 18:31:47', 'youyunning', '180', '10', '1000', '10', '0', '0', '9', '1', 'youyunning', '2017-10-18 18:31:48', '', '2017-10-18 18:31:48');
INSERT INTO `machine_base_info` VALUES ('59', 'SMT-8-2', 'SIMIE085', '贴片机D4-1', '贴片机', 'HS系列', '西门子', '2017-10-18', 'PO9873', 'ASM精密电子', '234113', '调入', '2017-10-18 18:32:30', 'youyunning', '180', '10', '1000', '10', '0', '0', '9', '2', 'youyunning', '2017-10-18 18:32:30', '', '2017-10-18 18:32:31');
INSERT INTO `machine_base_info` VALUES ('60', 'SMT-8-3', 'SIMIE086', '贴片机D4-2', '贴片机', 'HS系列', '西门子', '2017-10-18', 'PO8743', 'ASM精密电子', '234113', '调入', '2017-10-18 18:33:13', 'youyunning', '180', '10', '1000', '10', '0', '0', '9', '3', 'youyunning', '2017-10-18 18:33:13', '', '2017-10-18 18:33:13');
INSERT INTO `machine_base_info` VALUES ('61', 'SMT-8-4', 'JT-RFO089', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO8432', 'ASM精密电子', '234113', '调入', '2017-10-18 18:34:00', 'youyunning', '180', '10', '1000', '10', '0', '0', '9', '4', 'youyunning', '2017-10-18 18:34:00', '', '2017-10-18 18:34:01');
INSERT INTO `machine_base_info` VALUES ('62', 'SMT-8-5', 'JT-AOI86', 'AOI', 'AOI', 'JT-RFO01', 'JT', '2017-10-18', 'PO8742', 'ASM精密电子', '234113', '调入', '2017-10-18 18:34:47', 'youyunning', '180', '10', '1000', '10', '0', '0', '9', '5', 'youyunning', '2017-10-18 18:34:47', '', '2017-10-18 18:34:47');
INSERT INTO `machine_base_info` VALUES ('63', 'SMT-9-1', 'SMT00392', '丝印机', '丝印机', 'DEK', 'DEK', '2017-10-18', 'PO6754', 'ASM精密电子', '234113', '调入', '2017-10-18 18:38:47', 'youyunning', '180', '10', '1000', '10', '0', '0', '10', '1', 'youyunning', '2017-10-18 18:38:47', '', '2017-10-18 18:38:47');
INSERT INTO `machine_base_info` VALUES ('64', 'SMT-9-2', 'SIMIE095', '贴片机D4-1', '贴片机', 'D系列', '西门子', '2017-10-18', 'PO7654', 'ASM精密电子', '234113', '调入', '2017-10-18 18:40:18', 'youyunning', '180', '10', '1000', '10', '0', '0', '10', '2', 'youyunning', '2017-10-18 18:40:18', '', '2017-10-18 18:40:18');
INSERT INTO `machine_base_info` VALUES ('65', 'SMT-9-3', 'SIMIE095', '贴片机D4-2', '贴片机', 'D系列', '西门子', '2017-10-18', 'PO7654', 'ASM精密电子', '234113', '调入', '2017-10-18 18:40:18', 'youyunning', '180', '10', '1000', '10', '0', '0', '10', '3', 'youyunning', '2017-10-18 18:40:18', '', '2017-10-18 18:40:18');
INSERT INTO `machine_base_info` VALUES ('67', 'SMT-9-4', 'JT-RFO099', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO98742', 'ASM精密电子', '234113', '调入', '2017-10-18 18:41:43', 'youyunning', '180', '10', '1000', '10', '0', '0', '10', '4', 'youyunning', '2017-10-18 18:41:43', '', '2017-10-18 18:41:44');
INSERT INTO `machine_base_info` VALUES ('68', 'SMT-9-5', 'JT-AOI96', 'AOI', 'AOI', 'JT-RFO01', 'JT', '2017-10-18', 'PO9872', 'ASM精密电子', '234113', '调入', '2017-10-18 18:42:23', 'youyunning', '180', '10', '1000', '10', '0', '0', '10', '5', 'youyunning', '2017-10-18 18:42:23', '', '2017-10-18 18:42:24');
INSERT INTO `machine_base_info` VALUES ('69', 'SMT-10-1', 'SMT00310', '丝印机', '丝印机', 'DEK', 'DEK', '2017-10-18', 'PO7865', 'ASM精密电子', '234113', '调入', '2017-10-18 18:48:15', 'youyunning', '180', '10', '1000', '10', '0', '0', '11', '1', 'youyunning', '2017-10-18 18:48:15', '', '2017-10-18 18:48:15');
INSERT INTO `machine_base_info` VALUES ('70', 'SMT-10-2', 'SIMIE105', '贴片机D4-1', '贴片机', 'D系列', '西门子', '2017-10-18', 'PO9854', 'ASM精密电子', '234115', '调入', '2017-10-18 18:49:02', 'youyunning', '180', '10', '1000', '10', '0', '0', '11', '2', 'youyunning', '2017-10-18 18:49:02', '', '2017-10-18 18:49:02');
INSERT INTO `machine_base_info` VALUES ('71', 'SMT-10-3', 'SIMIE106', '贴片机D4-2', '贴片机', 'D系列', '西门子', '2017-10-18', 'PO7654', 'ASM精密电子', '234113', '调入', '2017-10-18 18:49:53', 'youyunning', '180', '10', '1000', '10', '0', '0', '11', '3', 'youyunning', '2017-10-18 18:49:53', '', '2017-10-18 18:49:53');
INSERT INTO `machine_base_info` VALUES ('72', 'SMT-10-4', 'JT-RFO109', '回流炉', '回流炉', 'JT-RFO01', 'JT', '2017-10-18', 'PO8754', 'ASM精密电子', '234113', '调入', '2017-10-18 18:50:32', 'youyunning', '180', '10', '1000', '10', '0', '0', '11', '4', 'youyunning', '2017-10-18 18:50:32', '', '2017-10-18 18:50:33');
INSERT INTO `machine_base_info` VALUES ('73', 'SMT-10-5', 'JT-AOI16', 'AOI', 'AOI', 'JT-RFO01', 'JT', '2017-10-18', 'PO85432', 'ASM精密电子', '234113', '调入', '2017-10-18 18:51:15', 'youyunning', '180', '10', '1000', '10', '0', '0', '11', '5', 'youyunning', '2017-10-18 18:51:15', '', '2017-10-18 18:51:15');
INSERT INTO `machine_base_info` VALUES ('74', 'DIP-1-1', 'BFH001', '波峰焊', '波峰炉', '日东', '日东', '2017-10-18', 'PO9865', 'ASM精密电子', '234113', '调入', '2017-10-18 18:55:57', 'youyunning', '180', '10', '1000', '10', '0', '0', '3', '1', 'youyunning', '2017-10-18 18:55:57', '', '2017-10-18 18:55:57');
INSERT INTO `machine_base_info` VALUES ('75', 'DIP-2-1', 'DIP-BFH002', '波峰焊', '波峰炉', '日东', '日东', '2017-10-18', 'PO8543', 'ASM精密电子', '234113', '调入', '2017-10-18 18:57:25', 'youyunning', '180', '10', '1000', '10', '0', '0', '12', '1', 'youyunning', '2017-10-18 18:57:25', '', '2017-10-18 18:57:25');

-- ----------------------------
-- Table structure for `machine_category`
-- ----------------------------
DROP TABLE IF EXISTS `machine_category`;
CREATE TABLE `machine_category` (
  `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '类型ID',
  `CATEGORY_NAME` varchar(32) NOT NULL COMMENT '类型名字',
  `SEQ_NO` int(11) DEFAULT '0' COMMENT '排序(默认为0)',
  `IS_VISIBLE` varchar(1) DEFAULT 'Y' COMMENT '用户是否可见(Y.可见 N.不可见，值只能为Y和N)',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '更新人',
  `UPDATE_DT` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`CATEGORY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='设备类型表';

-- ----------------------------
-- Records of machine_category
-- ----------------------------
INSERT INTO `machine_category` VALUES ('46', '丝印机', '0', 'Y', 'longman', '2017-08-09 14:51:13', null, '2017-08-23 10:20:46');
INSERT INTO `machine_category` VALUES ('47', '贴片机', '0', 'Y', 'longman', '2017-08-10 17:46:43', null, '2017-09-07 10:41:44');
INSERT INTO `machine_category` VALUES ('48', '回流炉', '0', 'Y', 'longman', '2017-08-10 17:48:35', null, '2017-09-07 10:41:39');
INSERT INTO `machine_category` VALUES ('49', 'AOI', '0', 'Y', 'longman', '2017-08-10 17:48:43', null, '2017-09-07 10:41:32');
INSERT INTO `machine_category` VALUES ('58', '波峰炉', '0', 'Y', 'longman', '2017-08-23 10:54:51', 'longman', '2017-08-23 10:54:51');
INSERT INTO `machine_category` VALUES ('59', 'ICT', '0', 'Y', 'longman', '2017-08-31 17:43:14', null, '2017-09-07 10:41:55');
INSERT INTO `machine_category` VALUES ('60', '点发哦不', '0', 'Y', 'longman', '2017-09-05 11:39:55', 'longman', '2017-09-05 11:39:55');

-- ----------------------------
-- Table structure for `machine_type`
-- ----------------------------
DROP TABLE IF EXISTS `machine_type`;
CREATE TABLE `machine_type` (
  `TYPE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '型号ID',
  `TYPE_NAME` varchar(64) NOT NULL COMMENT '型号名称',
  `BRAND_NAME` varchar(64) NOT NULL COMMENT '品牌',
  `SEQ_NO` int(11) DEFAULT '0' COMMENT '排序',
  `IS_VISIBLE` varchar(1) DEFAULT 'Y' COMMENT '用户是否可见(Y.可见 N.不可见，值只能为Y和N)',
  `CREATE_BY` varchar(32) DEFAULT NULL COMMENT '创建人',
  `CREATE_DT` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(32) DEFAULT NULL COMMENT '修改人',
  `UPDATE_DT` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`TYPE_ID`),
  UNIQUE KEY `TYPE_NAME` (`TYPE_NAME`) USING BTREE,
  KEY `AK_TYPE_NAME` (`TYPE_ID`) USING BTREE,
  KEY `BRAND_NAME` (`BRAND_NAME`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='设备型号';

-- ----------------------------
-- Records of machine_type
-- ----------------------------
INSERT INTO `machine_type` VALUES ('17', 'XPF', 'FUJI', '0', 'Y', 'longman', '2017-08-10 17:43:08', 'longman', '2017-08-23 11:20:43');
INSERT INTO `machine_type` VALUES ('21', 'NXP', 'FUJI', '0', 'Y', 'longman', '2017-08-11 09:45:45', 'longman', '2017-08-23 11:20:20');
INSERT INTO `machine_type` VALUES ('22', 'Y系列', '西门子', '0', 'Y', 'longman', '2017-08-11 09:46:58', 'longman', '2017-08-31 17:32:44');
INSERT INTO `machine_type` VALUES ('23', 'D系列', '西门子', '0', 'Y', 'longman', '2017-08-11 09:47:38', 'longman', '2017-08-23 11:19:25');
INSERT INTO `machine_type` VALUES ('24', 'HS系列', '西门子', '0', 'Y', 'longman', '2017-08-11 09:48:07', 'longman', '2017-08-23 11:19:02');
INSERT INTO `machine_type` VALUES ('25', 'JT-H02', '劲拓', '0', 'Y', 'longman', '2017-08-23 11:29:13', 'longman', '2017-08-23 11:29:13');
INSERT INTO `machine_type` VALUES ('29', 'DEK', 'DEK', '0', 'Y', 'longman', '2017-09-07 11:29:22', 'longman', '2017-09-07 11:29:22');
INSERT INTO `machine_type` VALUES ('30', 'JT-RFO01', 'JT', '0', 'Y', 'youyunning', '2017-10-18 16:02:09', 'youyunning', '2017-10-18 16:02:09');
INSERT INTO `machine_type` VALUES ('31', '日东', '日东', '0', 'Y', 'youyunning', '2017-10-18 18:55:29', 'youyunning', '2017-10-18 18:55:29');
