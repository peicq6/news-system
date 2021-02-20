/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : news-boot

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 20/02/2021 10:24:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `DICT_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `DICT_CODE` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典编码',
  `DESCRIPTION` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `CREATE_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `IDX_DICT_CODE`(`DICT_CODE`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('0b5d11e1aca4b2e6647e1b4a17760c15', '证件类型', 'ZJLX', '吕洋帆临时添加', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES ('0b5d11e1aca4b2e6647e1b4a17760c16', '监护人与儿童关系', 'JHRGX', '吕洋帆临时添加', NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict` VALUES ('0b5d19e1fce4b2e6647e6b4a17760c14', '通告类型', 'MESSAGE_CATEGORY', '', 'admin', '2019-04-22 18:01:35', 'admin', '2020-09-28 17:14:04');
INSERT INTO `sys_dict` VALUES ('1250687930947620866', '定时任务状态', 'QUARTZ_STATUS', '', 'admin', '2020-04-16 15:30:14', 'admin', '2020-09-28 17:24:52');
INSERT INTO `sys_dict` VALUES ('1280401766745718786', '租户状态', 'TENANT_STATUS', '', 'admin', '2020-07-07 15:22:25', 'admin', '2020-09-28 17:27:49');
INSERT INTO `sys_dict` VALUES ('2be77fca859c913a552039894c673584', '服务开通分类', 'SERVICE_OPEN_CATEGORY', 'service_baseinfo表的SERVICE_OPEN_CATEGORY', 'admin', '2021-01-05 16:16:16', NULL, NULL);
INSERT INTO `sys_dict` VALUES ('2f0320997ade5dd147c90130f7218c3e', '消息推送类别', 'MESSAGE_PUSH_TYPE', '', 'admin', '2019-03-17 21:21:32', 'admin', '2020-09-28 17:15:19');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814411', '服务类别', 'SERVICE_CATEGORY', 'SERVICE_BASEINFO表SERVICE_CATEGORY', 'admin', '2020-12-18 23:24:00', 'admin', '2020-12-18 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814412', '服务类型', 'SERVICE_TYPE', 'SERVICE_BASEINFO表SERVICE_TYPE', 'admin', '2020-12-19 23:24:00', 'admin', '2020-12-19 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814413', '服务状态', 'SERVICE_BAS_STATUS', 'SERVICE_BASEINFO表SERVICE_STATUS', 'admin', '2020-12-20 23:24:00', 'admin', '2021-01-05 16:03:49');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814414', '服务终端', 'SERVICE_TERMINAL', 'SERVICE_BASEINFO表SERVICE_TERMINAL', 'admin', '2020-12-21 23:24:00', 'admin', '2020-12-21 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814415', '学段', 'PERIOD', '', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814416', '功能级别', 'MENU_SCOPE', 'SERVICE_MENU表MENU_SCOPE', 'admin', '2020-12-23 23:24:00', 'admin', '2020-12-23 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814417', '功能属性', 'MENU_PROPS', 'SERVICE_MENU表MENU_PROPS', 'admin', '2020-12-24 23:24:00', 'admin', '2020-12-24 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814418', '角色属性', 'ROLE_PROPS', 'SERVICE_ROLE表ROLE_PROPS', 'admin', '2020-12-25 23:24:00', 'admin', '2020-12-25 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814419', '字典级别', 'SERVICE_DICT', 'SERVICE_DICT表SERVICE_DICT', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814420', '服务开通状态', 'SERVICE_STATUS', 'TENANT_SERVICE_CONFIG表SERVICE_STATUS', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814421', '服务运行状态', 'SERVICE_RUN_STATUS', 'TENANT_SERVICE_CONFIG表SERVICE_RUN_STATUS', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814422', '是否开通', 'SERVICE_IS_OPEN', '', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814423', '功能类别', 'MENU_CATEGORY', 'SERVICE_MENU表MENU_CATEGORY', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814424', '角色级别', 'ROLE_SCOPE', 'SERVICE_ROLE表MENU_SCOPE', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814425', '网关类型', 'SMS_GW_TYPE', 'SERVICE_SMS_GW表SMS_GW_TYPE', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict` VALUES ('318ad2cd3b5311ebbcb9b02628814426', '数据库类型', 'SMS_APPTYPE', 'SERVICE_SMS_GW表SMS_APPTYPE', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict` VALUES ('3486f32803bb953e7155dab3513dc68b', '删除状态', 'DEL_FLAG', NULL, 'admin', '2019-01-18 21:46:26', 'admin', '2020-09-28 09:15:57');
INSERT INTO `sys_dict` VALUES ('3d9a351be3436fbefb1307d4cfb49bf2', '性别', 'SEX', NULL, NULL, '2019-01-04 14:56:32', 'admin', '2020-09-28 17:25:42');
INSERT INTO `sys_dict` VALUES ('4274efc2292239b6f000b153f50823ff', '权限策略', 'PERMS_TYPE', '', 'admin', '2019-05-10 17:54:05', 'admin', '2020-09-28 17:17:07');
INSERT INTO `sys_dict` VALUES ('44d0987eb7c09c3883bffc0267a2b16d', '机构审核状态', 'ORG_AUDIT_STATUS', NULL, 'admin', '2020-10-28 16:07:45', NULL, NULL);
INSERT INTO `sys_dict` VALUES ('4c753b5293304e7a445fd2741b46529d', '字典状态', 'DICT_ITEM_STATUS', NULL, 'admin', '2020-06-18 23:18:42', 'admin', '2020-09-28 17:12:09');
INSERT INTO `sys_dict` VALUES ('4d7fec1a7799a436d26d02325eff295e', '优先级', 'PRIORITY', '', 'admin', '2019-03-16 17:03:34', 'admin', '2020-09-28 17:24:44');
INSERT INTO `sys_dict` VALUES ('4f69be5f507accea8d5df5f11346181a', '消息发送类型', 'MESSAGE_SEND_TYPE', NULL, 'admin', '2019-04-11 14:27:09', 'admin', '2020-09-28 17:15:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804411', '栏目类型', 'CMS_COLUMN_TYPE', 'CMS_COLUMN表TYPE', 'admin', '2020-12-18 23:24:00', 'admin', '2020-12-18 23:24:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804412', '栏目模型', 'CMS_COLUMN_MODEL', 'CMS_COLUMN表MODEL', 'admin', '2020-12-19 23:24:00', 'admin', '2020-12-19 23:24:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804413', '目标窗口', 'CMS_TARGET_WINDOW', 'CMS_COLUMN表TARGET_WINDOW、CMS_CONTENT表TARGET_WINDOW', 'admin', '2020-12-20 23:24:00', 'admin', '2020-12-20 23:24:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804414', '是否', 'CMS_SF', '', 'admin', '2020-12-21 23:24:00', 'admin', '2020-12-21 23:24:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804415', '图片类型', 'CMS_IMAGE_TYPE', 'CMS_SITE_CONFIG表IMAGE_TYPE', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804416', '媒体类型', 'CMS_MEDIA_TYPE', 'CMS_SITE_CONFIG表MEDIA_TYPE', 'admin', '2020-12-23 23:24:00', 'admin', '2020-12-23 23:24:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804417', '文件类型', 'CMS_FILE_TYPE', 'CMS_SITE_CONFIG表FILE_TYPE', 'admin', '2020-12-24 23:24:00', 'admin', '2020-12-24 23:24:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804418', '模式（执行方式）', 'CMS_WAY', 'CMS_CONTENT表WAY', 'admin', '2020-12-25 23:24:00', 'admin', '2020-12-25 23:24:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804419', '内容状态', 'CMS_CONTENT_STATUS', 'CMS_CONTENT表STATUS', 'admin', '2020-12-25 23:24:00', 'admin', '2020-12-25 23:24:00');
INSERT INTO `sys_dict` VALUES ('8c992c37304f11ebbcb9b02628804420', '发布状态', 'CMS_PUBLISH_STATUS', 'CMS_CONTENT表IS_PUBLISH', 'admin', '2020-12-25 23:24:00', 'admin', '2020-12-25 23:24:00');
INSERT INTO `sys_dict` VALUES ('8dfe32e2d29ea9430a988b3b558bf233', '发布状态', 'PUBLISH_STATUS', '', 'admin', '2019-04-16 17:40:42', 'admin', '2020-09-28 17:25:36');
INSERT INTO `sys_dict` VALUES ('a7adbcd86c37f7dbc9b66945c82ef9e6', '是否', 'YN', '', 'admin', '2019-05-22 19:29:29', 'admin', '2020-09-28 17:26:59');
INSERT INTO `sys_dict` VALUES ('a9d9942bd0eccb6e89de92d130ec4c4a', '消息发送状态', 'MESSAGE_SEND_STATUS', NULL, 'admin', '2019-04-12 18:18:17', 'admin', '2020-09-28 17:13:41');
INSERT INTO `sys_dict` VALUES ('ac2f7c0c5c5775fcea7e2387bcb22f01', '菜单类型', 'MENU_TYPE', NULL, 'admin', '2020-12-18 23:24:32', 'admin', '2020-09-28 17:12:58');
INSERT INTO `sys_dict` VALUES ('fc6cd58fde2e8481db10d3a1e68ce70c', '用户状态', 'USER_STATUS', NULL, 'admin', '2019-03-18 21:57:25', 'admin', '2020-09-28 17:26:29');

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `DICT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典ID',
  `ITEM_TEXT` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典项文本',
  `ITEM_VALUE` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典项值',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `SORT_ORDER` int(0) NULL DEFAULT NULL COMMENT '排序',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态 1启用 0不启用',
  `CREATE_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `IDX_DICT_ID`(`DICT_ID`) USING BTREE,
  INDEX `IDX_SORT_ORDER`(`SORT_ORDER`) USING BTREE,
  INDEX `IDX_STATUS`(`STATUS`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典项目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c815176c9b022e2179128', '0b5d11e1aca4b2e6647e1b4a17760c15', '身份证', '1', '身份证', 1, '1', 'admin', '2019-04-16 17:04:00', 'admin', '2019-04-16 17:04:00');
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c815176c9b022e2179129', '0b5d11e1aca4b2e6647e1b4a17760c15', '台胞证', '2', '台胞证', 2, '1', 'admin', '2019-04-16 17:04:00', 'admin', '2019-04-16 17:04:00');
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c815176c9b022e2179130', '0b5d11e1aca4b2e6647e1b4a17760c15', '护照', '3', '护照', 3, '1', 'admin', '2019-04-16 17:04:00', 'admin', '2019-04-16 17:04:00');
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c815176c9b022e2179131', '0b5d11e1aca4b2e6647e1b4a17760c15', '港澳居民居住证', '4', '港澳居民居住证', 4, '1', 'admin', '2019-04-16 17:04:00', 'admin', '2019-04-16 17:04:00');
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c815176c9b022e2179132', '0b5d11e1aca4b2e6647e1b4a17760c16', '父亲', '1', '父亲', 1, '1', 'admin', '2019-04-16 17:04:00', 'admin', '2019-04-16 17:04:00');
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c815176c9b022e2179133', '0b5d11e1aca4b2e6647e1b4a17760c16', '母亲', '2', '母亲', 2, '1', 'admin', '2019-04-16 17:04:00', 'admin', '2019-04-16 17:04:00');
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c815176c9b022e2179134', '0b5d11e1aca4b2e6647e1b4a17760c16', '其他监护人', '3', '其他监护人', 3, '1', 'admin', '2019-04-16 17:04:00', 'admin', '2019-04-16 17:04:00');
INSERT INTO `sys_dict_item` VALUES ('0072d115e07c875d76c9b022e2179128', '4d7fec1a7799a436d26d02325eff295e', '低', 'L', '低', 3, '1', 'admin', '2019-04-16 17:04:59', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('00e9056f16a48b7a7820e8327c6bd3ca', '2be77fca859c913a552039894c673584', '民办入学服务', '1', NULL, 1, '1', 'admin', '2021-01-05 16:16:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('05a2e732ce7b00aa52141ecc3e330b4e', '3486f32803bb953e7155dab3513dc68b', '已删除', '1', NULL, NULL, '1', 'admin', '2025-10-18 21:46:56', 'admin', '2019-03-28 22:23:20');
INSERT INTO `sys_dict_item` VALUES ('0c9532916f5cd722017b46bc4d953e41', '2f0320997ade5dd147c90130f7218c3e', '指定用户', 'USER', NULL, NULL, '1', 'admin', '2019-03-17 21:22:19', 'admin', '2019-03-17 21:22:28');
INSERT INTO `sys_dict_item` VALUES ('1199607547704647681', '4f69be5f507accea8d5df5f11346181a', '系统', '4', '', 1, '1', 'admin', '2019-11-27 16:35:02', 'admin', '2019-11-27 19:37:46');
INSERT INTO `sys_dict_item` VALUES ('1250688147579228161', '1250687930947620866', '正常', '0', '', 1, '1', 'admin', '2020-04-16 15:31:05', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1250688201064992770', '1250687930947620866', '停止', '-1', '', 1, '1', 'admin', '2020-04-16 15:31:18', '', NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401815068295170', '1280401766745718786', '正常', '1', '', 1, '1', 'admin', '2020-07-07 15:22:36', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('1280401847607705602', '1280401766745718786', '冻结', '0', '', 1, '1', 'admin', '2020-07-07 15:22:44', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('197ee2239e33b9e086cbc24d86c2639c', '318ad2cd3b5311ebbcb9b02628814416', '校级+区级', '3', NULL, 3, '1', 'admin', '2020-12-19 16:59:35', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('222705e11ef0264d4214affff1fb4ff9', '4f69be5f507accea8d5df5f11346181a', '短信', '1', '', 1, '1', 'admin', '2023-02-28 10:50:36', 'admin', '2019-04-28 10:58:11');
INSERT INTO `sys_dict_item` VALUES ('308c8aadf0c37ecdde188b97ca9833f5', '8dfe32e2d29ea9430a988b3b558bf233', '已发布', '1', '已发布', 2, '1', 'admin', '2019-04-16 17:41:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814411', '318ad2cd3b5311ebbcb9b02628814411', '义务教育入学', '1001', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-21 18:00:17');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814412', '318ad2cd3b5311ebbcb9b02628814411', '幼儿入园', '1002', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-21 18:00:31');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814413', '318ad2cd3b5311ebbcb9b02628814412', '页面访问服务', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814414', '318ad2cd3b5311ebbcb9b02628814412', '下载服务', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814415', '318ad2cd3b5311ebbcb9b02628814413', '发布状态', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814416', '318ad2cd3b5311ebbcb9b02628814413', '测试状态', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814417', '318ad2cd3b5311ebbcb9b02628814413', '取消发布状态', '3', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814418', '318ad2cd3b5311ebbcb9b02628814414', '家长端', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814419', '318ad2cd3b5311ebbcb9b02628814414', '管理端', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814420', '318ad2cd3b5311ebbcb9b02628814415', '小学', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814421', '318ad2cd3b5311ebbcb9b02628814415', '初中', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814422', '318ad2cd3b5311ebbcb9b02628814416', '校级', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814423', '318ad2cd3b5311ebbcb9b02628814416', '区级', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814424', '318ad2cd3b5311ebbcb9b02628814417', '标准功能', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814425', '318ad2cd3b5311ebbcb9b02628814417', '个性化功能', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814426', '318ad2cd3b5311ebbcb9b02628814418', '标准功能', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814427', '318ad2cd3b5311ebbcb9b02628814418', '个性化功能', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814428', '318ad2cd3b5311ebbcb9b02628814419', '校级', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814429', '318ad2cd3b5311ebbcb9b02628814419', '区级', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814430', '318ad2cd3b5311ebbcb9b02628814419', '家长', '3', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814431', '318ad2cd3b5311ebbcb9b02628814414', '门户端', '3', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814432', '318ad2cd3b5311ebbcb9b02628814420', '试用', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814433', '318ad2cd3b5311ebbcb9b02628814420', '正式开通', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814434', '318ad2cd3b5311ebbcb9b02628814420', '注销', '3', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814435', '318ad2cd3b5311ebbcb9b02628814420', '待续约', '4', '', 4, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814436', '318ad2cd3b5311ebbcb9b02628814421', '启用', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814437', '318ad2cd3b5311ebbcb9b02628814421', '停用', '0', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814438', '318ad2cd3b5311ebbcb9b02628814422', '未开通', '0', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814439', '318ad2cd3b5311ebbcb9b02628814422', '已开通', '1', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814440', '318ad2cd3b5311ebbcb9b02628814423', '小学', '1', '', 1, '1', 'admin', '2020-12-23 23:24:00', 'admin', '2020-12-23 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814441', '318ad2cd3b5311ebbcb9b02628814423', '初中', '2', '', 2, '1', 'admin', '2020-12-24 23:24:00', 'admin', '2020-12-24 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814442', '318ad2cd3b5311ebbcb9b02628814423', '门户', '3', '', 3, '1', 'admin', '2020-12-25 23:24:00', 'admin', '2020-12-25 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814443', '318ad2cd3b5311ebbcb9b02628814423', '其他', '4', '', 4, '1', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814444', '318ad2cd3b5311ebbcb9b02628814424', '校级', '1', '', 1, '1', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814445', '318ad2cd3b5311ebbcb9b02628814424', '区级', '2', '', 2, '1', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814446', '318ad2cd3b5311ebbcb9b02628814425', '平台内置', '1', '', 1, '1', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814447', '318ad2cd3b5311ebbcb9b02628814425', '腾讯云', '2', '', 2, '1', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814448', '318ad2cd3b5311ebbcb9b02628814425', '数据库', '3', '', 3, '1', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814449', '318ad2cd3b5311ebbcb9b02628814426', 'mysql', '1', '', 1, '1', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('318ad2cd3b5311eb11b9b02628814450', '318ad2cd3b5311ebbcb9b02628814426', 'oracle', '2', '', 2, '1', 'admin', '2020-12-26 23:24:00', 'admin', '2020-12-26 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('333e6b2196e01ef9a5f76d74e86a6e33', '8dfe32e2d29ea9430a988b3b558bf233', '未发布', '0', '未发布', 1, '1', 'admin', '2019-04-16 17:41:12', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('33bc9d9f753cf7dc40e70461e50fdc54', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送失败', '2', NULL, 3, '1', 'admin', '2019-04-12 18:20:02', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804411', '8c992c37304f11ebbcb9b02628804411', '内容页面', 'page', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804412', '8c992c37304f11ebbcb9b02628804411', '门户组件', 'portlet', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804413', '8c992c37304f11ebbcb9b02628804411', '站点目录', 'nav', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804414', '8c992c37304f11ebbcb9b02628804411', '内部链接', 'intlink', '', 4, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804415', '8c992c37304f11ebbcb9b02628804411', '外部链接', 'extlink', '', 5, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804416', '8c992c37304f11ebbcb9b02628804412', '单页模型', 'single', '', 6, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-18 16:02:11');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804417', '8c992c37304f11ebbcb9b02628804412', '文章模型', 'article', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804418', '8c992c37304f11ebbcb9b02628804412', '文件模型', 'file', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804419', '8c992c37304f11ebbcb9b02628804412', '链接模型', 'link', '', 4, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804420', '8c992c37304f11ebbcb9b02628804412', '文字模型', 'text', '', 5, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804421', '8c992c37304f11ebbcb9b02628804413', '本窗口', 'self', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804422', '8c992c37304f11ebbcb9b02628804413', '新窗口', 'blank', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804423', '8c992c37304f11ebbcb9b02628804414', '否', '0', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804424', '8c992c37304f11ebbcb9b02628804414', '是', '1', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804425', '8c992c37304f11ebbcb9b02628804415', 'jpg', 'jpg', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804426', '8c992c37304f11ebbcb9b02628804415', 'jpeg', 'jpeg', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804427', '8c992c37304f11ebbcb9b02628804415', 'png', 'png', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804428', '8c992c37304f11ebbcb9b02628804415', 'gif', 'gif', '', 4, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804429', '8c992c37304f11ebbcb9b02628804416', 'mp4', 'mp4', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804430', '8c992c37304f11ebbcb9b02628804416', 'mp3', 'mp3', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804431', '8c992c37304f11ebbcb9b02628804417', 'xls', 'xls', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804432', '8c992c37304f11ebbcb9b02628804417', 'xlsx', 'xlsx', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804433', '8c992c37304f11ebbcb9b02628804417', 'doc', 'doc', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804434', '8c992c37304f11ebbcb9b02628804417', 'docx', 'docx', '', 4, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804435', '8c992c37304f11ebbcb9b02628804417', 'txt', 'txt', '', 5, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804436', '8c992c37304f11ebbcb9b02628804418', '跳转', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804437', '8c992c37304f11ebbcb9b02628804418', '提示', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804438', '8c992c37304f11ebbcb9b02628804419', '保存', '1', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804439', '8c992c37304f11ebbcb9b02628804419', '提交', '2', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804440', '8c992c37304f11ebbcb9b02628804419', '审核通过', '3', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804441', '8c992c37304f11ebbcb9b02628804419', '已退回', '4', '', 4, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804442', '8c992c37304f11ebbcb9b02628804419', '已发布', '5', '', 5, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804443', '8c992c37304f11ebbcb9b02628804420', '未发布', '0', '', 1, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804444', '8c992c37304f11ebbcb9b02628804420', '已发布', '1', '', 2, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('36597e3c305911ebbcb9b02628804445', '8c992c37304f11ebbcb9b02628804420', '修改内容未撤销发布', '2', '', 3, '1', 'admin', '2020-12-22 23:24:00', 'admin', '2020-12-22 23:24:00');
INSERT INTO `sys_dict_item` VALUES ('41d7aaa40c9b61756ffb1f28da5ead8e', '0b5d19e1fce4b2e6647e6b4a17760c14', '通知公告', '1', NULL, 1, '1', 'admin', '2019-04-22 18:01:57', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('4e1fc14698a7dd269dfa432454a45bf9', '2be77fca859c913a552039894c673584', '门户服务', '3', NULL, 3, '1', 'admin', '2021-01-05 16:17:02', 'admin', '2021-01-05 16:17:19');
INSERT INTO `sys_dict_item` VALUES ('51222413e5906cdaf160bb5c86fb827c', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '是', '1', '', 1, '1', 'admin', '2019-05-22 19:29:45', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('5b65a88f076b32e8e69d19bbaadb52d5', '2f0320997ade5dd147c90130f7218c3e', '全体用户', 'ALL', NULL, NULL, '1', 'admin', '2020-10-17 21:22:43', 'admin', '2019-03-28 22:17:09');
INSERT INTO `sys_dict_item` VALUES ('5d84a8634c8fdfe96275385075b105c9', '3d9a351be3436fbefb1307d4cfb49bf2', '女', '2', NULL, 2, '1', NULL, '2019-01-04 14:56:56', NULL, '2019-01-04 17:38:12');
INSERT INTO `sys_dict_item` VALUES ('69cacf64e244100289ddd4aa9fa3b915', 'a9d9942bd0eccb6e89de92d130ec4c4a', '未发送', '0', NULL, 1, '1', 'admin', '2019-04-12 18:19:23', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('6a7a9e1403a7943aba69e54ebeff9762', '4f69be5f507accea8d5df5f11346181a', '邮件', '2', '', 2, '1', 'admin', '2031-02-28 10:50:44', 'admin', '2019-04-28 10:59:03');
INSERT INTO `sys_dict_item` VALUES ('6d4e26e78e1a09699182e08516c49fc4', '4d7fec1a7799a436d26d02325eff295e', '高', 'H', '高', 1, '1', 'admin', '2019-04-16 17:04:24', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('788685db9220e6b272a700d7fc94bd62', '44d0987eb7c09c3883bffc0267a2b16d', '保存', '1', NULL, 1, '1', 'admin', '2020-10-28 16:10:29', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('78ea6cadac457967a4b1c4eb7aaa418c', 'fc6cd58fde2e8481db10d3a1e68ce70c', '正常', '1', NULL, NULL, '1', 'admin', '2019-03-18 23:30:28', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('7ccf7b80c70ee002eceb3116854b75cb', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '按钮权限', '2', NULL, NULL, '1', 'admin', '2019-03-18 23:25:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('81fb2bb0e838dc68b43f96cc309f8257', 'fc6cd58fde2e8481db10d3a1e68ce70c', '冻结', '2', NULL, NULL, '1', 'admin', '2019-03-18 23:30:37', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('83250269359855501ec4e9c0b7e21596', '4274efc2292239b6f000b153f50823ff', '可见/可访问(授权后可见/可访问)', '1', '', 1, '1', 'admin', '2019-05-10 17:54:51', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('86f19c7e0a73a0bae451021ac05b99dd', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '子菜单', '1', NULL, NULL, '1', 'admin', '2019-03-18 23:25:27', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('87aebdef0e0dc023ab32874784f3ec78', '44d0987eb7c09c3883bffc0267a2b16d', '审核通过', '3', NULL, 3, '1', 'admin', '2020-10-28 16:10:45', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8bccb963e1cd9e8d42482c54cc609ca2', '4f69be5f507accea8d5df5f11346181a', '微信', '3', NULL, 3, '1', 'admin', '2021-05-11 14:29:12', 'admin', '2019-04-11 14:29:31');
INSERT INTO `sys_dict_item` VALUES ('8c618902365ca681ebbbe1e28f11a548', '4c753b5293304e7a445fd2741b46529d', '启用', '1', '', 1, '1', 'admin', '2020-07-18 23:19:27', 'admin', '2020-10-10 17:40:13');
INSERT INTO `sys_dict_item` VALUES ('8cdf08045056671efd10677b8456c999', '4274efc2292239b6f000b153f50823ff', '可编辑(未授权时禁用)', '2', '', 2, '1', 'admin', '2019-05-10 17:55:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('8ff48e657a7c5090d4f2a59b37d1b878', '4d7fec1a7799a436d26d02325eff295e', '中', 'M', '中', 2, '1', 'admin', '2019-04-16 17:04:40', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('9a96c4a4e4c5c9b4e4d0cbf6eb3243cc', '4c753b5293304e7a445fd2741b46529d', '禁用', '0', NULL, 2, '1', 'admin', '2019-03-18 23:19:53', 'admin', '2020-10-10 17:39:39');
INSERT INTO `sys_dict_item` VALUES ('a23a61257f5279df858b962c1f388ee4', '8c992c37304f11ebbcb9b02628804412', '招生简章', 'rect', NULL, 1, '1', 'admin', '2020-12-18 16:03:17', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('a2be752dd4ec980afaec1efd1fb589af', '8dfe32e2d29ea9430a988b3b558bf233', '已撤销', '2', '已撤销', 3, '1', 'admin', '2019-04-16 17:41:39', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('aa0d8a8042a18715a17f0a888d360aa4', 'ac2f7c0c5c5775fcea7e2387bcb22f01', '一级菜单', '0', NULL, NULL, '1', 'admin', '2019-03-18 23:24:52', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('b029a41a851465332ee4ee69dcf0a4c2', '0b5d19e1fce4b2e6647e6b4a17760c14', '系统消息', '2', NULL, 1, '1', 'admin', '2019-02-22 18:02:08', 'admin', '2019-04-22 18:02:13');
INSERT INTO `sys_dict_item` VALUES ('b2a8b4bb2c8e66c2c4b1bb086337f393', '3486f32803bb953e7155dab3513dc68b', '正常', '0', NULL, NULL, '1', 'admin', '2022-10-18 21:46:48', 'admin', '2019-03-28 22:22:20');
INSERT INTO `sys_dict_item` VALUES ('be73c14a90f048cf0d5494bbab5354e2', '2be77fca859c913a552039894c673584', '义务教育入学服务', '2', NULL, 2, '1', 'admin', '2021-01-05 16:16:48', 'admin', '2021-01-05 16:17:37');
INSERT INTO `sys_dict_item` VALUES ('c5700a71ad08994d18ad1dacc37a71a9', 'a7adbcd86c37f7dbc9b66945c82ef9e6', '否', '0', '', 1, '1', 'admin', '2019-05-22 19:29:55', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('df168368dcef46cade2aadd80100d8aa', '3d9a351be3436fbefb1307d4cfb49bf2', '男', '1', NULL, 1, '1', NULL, '2027-08-04 14:56:49', 'admin', '2019-03-23 22:44:44');
INSERT INTO `sys_dict_item` VALUES ('e62d96d946110db5d4b3aa9179c382b3', '44d0987eb7c09c3883bffc0267a2b16d', '提交', '2', NULL, 2, '1', 'admin', '2020-10-28 16:10:38', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('e9b63bf5eb210b5087ef2714f8d83fd0', '44d0987eb7c09c3883bffc0267a2b16d', '驳回', '4', NULL, 4, '1', 'admin', '2020-10-28 16:10:50', NULL, NULL);
INSERT INTO `sys_dict_item` VALUES ('f16c5706f3ae05c57a53850c64ce7c45', 'a9d9942bd0eccb6e89de92d130ec4c4a', '发送成功', '1', NULL, 2, '1', 'admin', '2019-04-12 18:19:43', NULL, NULL);

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `ID` bigint(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `USER_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录用户ID',
  `USERNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `LOGIN_TIME` datetime(0) NOT NULL COMMENT '登录时间',
  `LOGIN_RESULT` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录结果',
  `LOCATION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `IDX_USER_ID`(`USER_ID`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 552 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (1, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-17 15:54:26', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (2, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-17 18:13:33', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (3, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-17 18:21:31', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (4, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-18 10:27:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (5, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-18 10:50:20', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (6, 'fb1fca01f98c11ea8d7ab0262880441f', 'guest', '2020-11-18 11:04:59', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (7, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-18 11:11:14', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (8, 'fb1fca01f98c11ea8d7ab0262880441f', 'guest', '2020-11-18 11:19:07', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (9, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-18 11:27:54', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (10, 'fb1fca01f98c11ea8d7ab0262880441f', 'guest', '2020-11-18 11:34:52', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (11, 'fb1fca01f98c11ea8d7ab0262880441f', 'guest', '2020-11-18 14:32:19', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (12, 'fb1fca01f98c11ea8d7ab0262880441f', 'guest', '2020-11-19 11:37:10', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (13, 'fb1fca01f98c11ea8d7ab0262880441f', 'guest', '2020-11-19 11:37:56', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (14, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-19 11:38:41', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (15, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-19 11:40:41', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (16, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-19 14:21:21', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (17, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-19 19:16:26', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (18, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-20 14:20:29', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (19, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-20 14:29:25', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (20, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-20 14:32:30', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (21, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-23 09:10:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (22, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-23 09:10:17', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (23, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-23 10:49:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (24, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-23 11:52:31', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (25, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-23 17:50:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (26, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-23 18:01:21', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (27, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-23 19:33:20', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (28, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-24 15:59:43', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (29, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-24 16:23:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (30, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-24 17:47:14', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (31, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-25 14:29:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (32, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-25 14:30:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (33, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-26 08:59:22', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (34, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-26 12:11:55', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (35, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-27 11:48:55', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (36, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-30 10:03:26', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (37, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-30 16:08:23', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (38, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-30 16:12:53', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (39, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-11-30 16:30:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (40, 'e9ca23d68d884d4ebb19d07889727dae', 'admin', '2020-12-01 14:48:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (41, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-03 18:52:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (42, 'fb1fca01f98c11ea8d7ab0262880441f', 'guest', '2020-12-03 18:53:20', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (43, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-03 18:55:23', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (44, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-03 18:55:38', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (45, 'fb1fca01f98c11ea8d7ab0262880441f', 'guest', '2020-12-03 18:55:54', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (46, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-03 19:00:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (47, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-04 09:47:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (48, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-04 09:47:52', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (49, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-04 16:48:17', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (50, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-07 08:53:29', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (51, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-07 11:33:15', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (52, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 09:44:12', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (53, 'fb1fca01f98c11ea8d7ab0262880441f', 'guest', '2020-12-08 09:56:23', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (54, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 09:56:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (55, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 09:57:25', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (56, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 09:58:07', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (57, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 10:00:38', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (58, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 10:02:14', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (59, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 10:05:14', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (60, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 10:16:03', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (61, '4ad35aca21c211eb8dfdb0262880441f', '1001', '2020-12-08 10:33:56', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (62, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 10:34:15', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (63, '4ad35aca21c211eb8dfdb0262880441f', '1001', '2020-12-08 10:35:12', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (64, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 11:02:18', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (65, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 11:06:15', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (66, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 11:57:17', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (67, '78f4d62eeb51e36a8c2e4e61d3c52060', 'admin2', '2020-12-08 12:01:20', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (68, '78f4d62eeb51e36a8c2e4e61d3c52060', 'admin2', '2020-12-08 12:02:29', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (69, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-08 12:03:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (70, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 12:08:19', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (71, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 16:07:29', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (72, '78f4d62eeb51e36a8c2e4e61d3c52060', 'admin2', '2020-12-08 16:45:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (73, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-08 16:46:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (74, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-09 09:20:30', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (75, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-09 18:26:53', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (76, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-10 09:20:47', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (77, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-10 09:21:36', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (78, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-10 09:23:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (79, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-10 09:27:59', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (80, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-10 10:31:25', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (81, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-10 15:36:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (82, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-10 15:58:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (83, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-10 16:00:13', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (84, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-10 16:01:08', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (85, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-10 16:28:54', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (86, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-10 16:29:55', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (87, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-10 16:42:26', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (88, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-10 16:58:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (89, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-10 17:32:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (90, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 09:25:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (91, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 12:24:21', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (92, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 16:51:09', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (93, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 17:03:35', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (94, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 17:03:44', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (95, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 17:06:57', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (96, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-11 17:23:54', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (97, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 17:24:04', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (98, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-11 17:36:57', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (99, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-11 17:39:18', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (100, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-11 17:39:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (101, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 17:39:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (102, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-11 17:42:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (103, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 17:46:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (104, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 17:54:46', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (105, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-11 17:59:56', '用户登录失败，用户名已冻结！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (106, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 18:00:04', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (107, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 18:28:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (108, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 18:29:53', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (109, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 18:33:36', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (110, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 18:38:06', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (111, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-11 18:38:31', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (112, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 09:29:43', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (113, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-14 09:30:19', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (114, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 09:30:30', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (115, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-14 09:30:52', '用户登录失败，用户名已冻结！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (116, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 09:31:01', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (117, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-14 09:32:35', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (118, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 09:33:46', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (119, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-14 09:36:49', '用户登录失败，用户名已冻结！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (120, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 09:36:58', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (121, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-14 09:37:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (122, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 09:37:41', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (123, '78f4d62eeb51e36a8c2e4e61d3c52060', 'admin2', '2020-12-14 10:02:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (124, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 10:02:49', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (125, '78f4d62eeb51e36a8c2e4e61d3c52060', 'admin2', '2020-12-14 10:03:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (126, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 10:03:45', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (127, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 15:40:06', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (128, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 16:35:43', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (129, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 17:22:27', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (130, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-14 17:25:21', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (131, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 11:11:22', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (132, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 11:57:31', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (133, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 15:08:58', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (134, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 15:09:20', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (135, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 15:09:27', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (136, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 15:09:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (137, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 15:09:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (138, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 15:10:10', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (139, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 15:10:12', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (140, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 17:09:12', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (141, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 17:14:43', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (142, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 17:41:21', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (143, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 17:42:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (144, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 17:43:01', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (145, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-15 19:54:26', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (146, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-16 09:57:57', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (147, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-16 09:59:22', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (148, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-16 10:11:35', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (149, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-16 12:20:08', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.28');
INSERT INTO `sys_login_log` VALUES (150, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-16 17:10:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.28');
INSERT INTO `sys_login_log` VALUES (151, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-16 19:15:38', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (152, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-16 19:51:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (153, '4ad35aca21c211eb8dfdb0262880441f', '10011', '2020-12-16 20:07:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (154, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-17 10:36:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (155, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-17 10:49:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (156, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 16:20:45', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (157, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-17 16:20:59', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (158, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 16:21:35', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (159, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-17 16:21:48', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (160, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 16:25:07', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (161, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-17 16:25:55', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (162, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 16:27:23', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (163, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 16:30:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (164, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 16:44:11', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (165, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-17 16:51:30', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (166, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-17 17:01:07', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (167, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 17:02:22', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (168, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 17:28:03', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (169, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 17:29:13', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (170, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 17:35:31', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (171, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 17:35:46', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (172, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-17 18:02:51', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (173, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-17 18:35:40', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (174, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 09:06:07', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (175, 'a9d62124cb40bbd0901032a7f8cf624e', '10012', '2020-12-18 09:43:42', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (176, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 10:54:06', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (177, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 11:05:10', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (178, 'a3a033fdc3fffeb7a561039694baef58', '100009200000', '2020-12-18 11:24:47', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (179, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 12:05:43', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (180, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 13:21:52', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (181, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-18 15:40:07', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (182, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-18 15:52:07', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (183, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 16:01:33', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (184, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 16:03:28', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (185, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-18 16:13:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (186, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 16:24:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (187, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 16:34:09', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (188, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-18 16:34:21', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (189, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 16:38:59', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (190, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 16:39:11', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (191, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-18 16:41:11', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (192, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 16:54:27', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (193, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-18 16:57:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (194, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 17:07:54', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (195, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 17:17:30', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (196, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 17:54:01', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.205');
INSERT INTO `sys_login_log` VALUES (197, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-18 18:46:14', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.52');
INSERT INTO `sys_login_log` VALUES (198, '53598523adab1ea9874b5188a719e830', '100011200000', '2020-12-18 19:26:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (199, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 20:27:29', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (200, '53598523adab1ea9874b5188a719e830', '100011200000', '2020-12-18 21:05:56', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (201, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-18 21:08:45', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (202, 'adc52d6230eb6ff0905b1e1c466b7957', '100012200000', '2020-12-18 21:49:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (203, '83e7fb28b0c4b4007359431e3d7969cc', '100016200000', '2020-12-18 23:04:52', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (204, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-18 23:21:30', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (205, '22ae738e40987fd3d257527271ecce34', '100017200000', '2020-12-18 23:41:45', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (206, '444b4efbd736b0456d530d80745a2621', '100020200000', '2020-12-19 00:00:33', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (207, '56b2df06e5ca6665999a27c7c3484e28', '100021200000', '2020-12-19 00:04:36', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (208, '36c74a6f38291f5da6801ef30f66af6a', '100022200000', '2020-12-19 00:09:45', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (209, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 00:18:22', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (210, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-19 09:59:29', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (211, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 09:59:57', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (212, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-19 10:08:26', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (213, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 10:17:59', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (214, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 10:31:49', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (215, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-19 10:34:56', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (216, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 11:02:11', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (217, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-19 11:03:10', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (218, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 11:45:45', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (219, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 11:51:51', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (220, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 12:34:33', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (221, 'fd939ed88f94ddd9372379912253d640', '100023200000', '2020-12-19 14:17:42', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (222, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 14:20:04', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (223, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-19 14:20:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (224, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 14:30:09', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (225, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 14:34:40', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (226, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 14:38:57', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (227, 'fd939ed88f94ddd9372379912253d640', '100023200000', '2020-12-19 14:39:32', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (228, 'fd939ed88f94ddd9372379912253d640', '100023200000', '2020-12-19 14:46:45', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.53');
INSERT INTO `sys_login_log` VALUES (229, '78882367ac913a406b5a78c0fa0208ad', '100024200000', '2020-12-19 14:54:27', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (230, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 14:59:39', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (231, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 15:07:01', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (232, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 15:35:48', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (233, '78882367ac913a406b5a78c0fa0208ad', '100024200000', '2020-12-19 15:42:48', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (234, '6141757fb989c375c99b7692b7f96273', '100010200000', '2020-12-19 15:55:19', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (235, '5a4308ece5cd8a10674b8820c2973648', '100025200000', '2020-12-19 16:01:40', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (236, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 16:13:26', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (237, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 16:14:46', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (238, '78882367ac913a406b5a78c0fa0208ad', '100024200000', '2020-12-19 16:20:09', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (239, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 17:00:42', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (240, 'f5f7407b1495ec03f08a23b282b55886', '100026200000', '2020-12-19 17:48:59', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (241, '78882367ac913a406b5a78c0fa0208ad', '100024200000', '2020-12-19 17:51:41', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (242, '22ae738e40987fd3d257527271ecce34', '100017200000', '2020-12-19 17:55:02', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (243, 'f5f7407b1495ec03f08a23b282b55886', '100026200000', '2020-12-19 17:55:53', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (244, '1dc8a67916eb4b460690b18a42c0fdec', '100027200000', '2020-12-19 18:12:15', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (245, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 18:15:42', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (246, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-19 18:19:22', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (247, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 18:45:08', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (248, '1dc8a67916eb4b460690b18a42c0fdec', '100027200000', '2020-12-19 18:50:58', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (249, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-19 18:53:13', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (250, '1dc8a67916eb4b460690b18a42c0fdec', '100027200000', '2020-12-19 19:32:30', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (251, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 19:38:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (252, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 19:48:44', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (253, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-19 20:09:26', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (254, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-19 20:11:06', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (255, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-19 20:41:13', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (256, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 09:16:36', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (257, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-21 09:17:13', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (258, '1626167790f01766767acf883d419192', '100031200000', '2020-12-21 09:18:51', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (259, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 09:19:13', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (260, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 09:19:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (261, '1626167790f01766767acf883d419192', '100031200000', '2020-12-21 09:20:06', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (262, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 09:20:43', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (263, '1626167790f01766767acf883d419192', '100031200000', '2020-12-21 09:21:09', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (264, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-21 09:24:47', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (265, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 09:30:15', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (266, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-21 09:41:22', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (267, '1626167790f01766767acf883d419192', '100031200000', '2020-12-21 09:42:17', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (268, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 10:01:29', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (269, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 10:04:55', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (270, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-21 10:13:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (271, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 10:22:57', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (272, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-21 10:27:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (273, 'bf71ad598362ff75fb77f5b81523a0a5', '100033200000', '2020-12-21 10:54:09', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (274, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 10:58:14', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (275, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 11:33:48', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (276, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 11:35:36', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (277, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-21 12:03:54', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (278, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-21 12:09:44', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (279, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 12:14:40', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (280, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 12:19:41', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (281, 'bf71ad598362ff75fb77f5b81523a0a5', '100033200000', '2020-12-21 12:19:40', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (282, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-21 13:08:36', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (283, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-21 13:29:30', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (284, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-21 13:38:45', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (285, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 14:32:11', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (286, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 15:00:27', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (287, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 15:09:44', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (288, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 16:30:27', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (289, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-21 16:33:10', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (290, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 16:58:20', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (291, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-21 17:38:41', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (292, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-21 17:43:16', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (293, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-21 18:01:26', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (294, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-21 18:29:11', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (295, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 09:12:31', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (296, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 10:10:47', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (297, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-22 10:24:57', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (298, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 11:03:30', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (299, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 11:16:22', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (300, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-22 11:19:46', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (301, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-22 11:24:02', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (302, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 11:27:40', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (303, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-22 11:42:58', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (304, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-22 11:43:43', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (305, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-22 11:52:10', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (306, '4f39791f47d46d4223dd5dd562bf7930', '100036200000', '2020-12-22 11:55:15', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (307, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 12:05:33', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (308, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 12:06:13', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (309, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-22 12:08:21', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (310, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-22 12:08:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (311, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-22 12:15:03', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (312, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-22 12:20:48', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (313, '1626167790f01766767acf883d419192', '100031200000', '2020-12-22 12:22:21', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (314, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-22 12:28:08', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (315, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 14:28:42', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (316, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-22 15:00:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (317, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 15:02:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (318, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-22 15:03:19', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (319, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 15:48:32', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (320, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 15:48:45', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (321, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-22 16:22:38', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (322, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-22 16:23:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (323, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-22 16:23:23', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (324, '5655636d9139a7e0852e3b16786c0868', '100037200000', '2020-12-22 16:42:29', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (325, 'fdfe180c89ee01a28aef3e67470bc3f8', '100038200000', '2020-12-22 17:02:52', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (326, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 17:15:14', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (327, '190f9b1ace8d370c6f20d37d6a3fb241', '100039200000', '2020-12-22 17:18:44', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (328, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 17:23:01', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (329, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-22 17:25:40', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (330, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 17:26:32', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (331, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-22 17:27:50', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (332, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 17:33:20', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (333, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-22 17:33:42', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (334, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-22 18:04:25', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (335, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-22 19:09:41', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (336, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-22 19:23:48', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (337, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-22 19:24:02', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (338, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-22 19:25:17', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (339, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-22 19:39:40', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (340, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-22 19:45:39', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (341, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-22 20:35:33', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (342, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-22 20:36:14', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (343, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-23 08:56:00', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (344, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 09:00:35', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (345, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 09:11:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (346, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-23 09:28:33', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (347, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 09:45:36', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (348, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 10:15:42', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (349, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 11:01:28', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (350, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 11:04:26', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (351, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-23 11:10:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (352, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 11:52:38', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (353, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 12:19:03', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (354, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-23 12:27:53', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (355, '5afbb98269116693e3630fe990eedc00', '100035200000', '2020-12-23 13:22:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (356, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 13:24:43', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (357, '12086fd1aeccd7f533fb2d0065de3ba6', '100040200000', '2020-12-23 14:30:43', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (358, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-23 14:40:18', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (359, '12086fd1aeccd7f533fb2d0065de3ba6', '100040200000', '2020-12-23 15:09:48', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (360, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 15:42:49', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (361, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-23 15:44:41', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (362, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-23 16:38:19', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (363, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:41:25', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (364, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:41:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (365, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:44:20', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (366, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:47:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (367, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:47:52', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (368, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:49:27', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (369, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:50:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (370, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-23 16:54:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (371, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:54:31', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (372, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:54:57', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (373, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-23 16:55:42', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (374, '1626167790f01766767acf883d419192', '100031200000', '2020-12-23 16:56:08', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (375, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:56:23', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (376, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:57:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (377, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-23 16:58:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (378, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 16:59:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.53');
INSERT INTO `sys_login_log` VALUES (379, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 17:00:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.53');
INSERT INTO `sys_login_log` VALUES (380, '1626167790f01766767acf883d419192', '100031200000', '2020-12-23 17:02:02', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (381, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 17:04:55', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (382, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 17:05:18', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.53');
INSERT INTO `sys_login_log` VALUES (383, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 17:06:46', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (384, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 17:07:19', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.53');
INSERT INTO `sys_login_log` VALUES (385, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 17:11:07', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (386, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 17:12:26', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (387, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 17:32:56', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (388, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:34:34', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (389, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:35:22', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (390, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:38:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (391, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:40:13', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (392, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:40:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (393, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:41:36', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (394, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:42:58', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (395, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:43:22', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (396, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:45:30', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (397, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:46:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (398, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:46:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (399, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:47:57', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (400, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:53:06', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (401, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-23 17:54:25', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (402, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:54:48', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (403, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 17:55:03', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (404, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 17:56:42', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (405, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:56:54', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (406, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:59:30', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (407, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 17:59:57', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (408, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 18:00:01', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (409, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 18:00:07', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (410, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 18:00:17', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (411, '5ce06144e2a0badbc8d5c7ca94b3783c', 'admin4', '2020-12-23 18:02:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (412, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-23 18:12:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (413, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:14:14', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (414, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:14:42', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (415, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-23 18:15:14', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (416, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:16:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (417, '1626167790f01766767acf883d419192', '100031200000', '2020-12-23 18:17:03', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (418, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:18:25', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (419, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-23 18:19:04', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (420, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:21:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (421, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:26:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (422, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:27:02', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (423, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:29:20', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (424, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:29:38', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (425, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-23 18:53:58', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (426, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:54:22', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (427, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-23 18:55:31', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (428, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 18:57:58', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (429, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-23 19:10:39', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (430, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-23 19:14:35', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (431, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-23 19:17:57', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (432, '1626167790f01766767acf883d419192', '100031200000', '2020-12-23 19:20:56', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (433, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-24 08:50:14', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (434, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 09:10:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (435, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 10:10:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (436, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 10:59:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (437, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:11:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (438, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:16:08', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (439, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:16:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (440, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 11:17:03', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (441, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:17:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (442, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 11:17:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (443, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:17:53', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (444, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:19:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (445, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:20:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (446, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 11:20:19', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (447, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:21:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (448, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 11:29:18', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (449, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:30:03', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (450, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 11:31:18', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (451, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:31:38', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (452, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 11:33:06', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (453, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 11:33:47', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (454, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 11:36:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (455, '5ae56c80a40e42ea50797cdf00755c47', '100041200000', '2020-12-24 14:38:36', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (456, '6548890a1eba679dcefc66aa9c145bf2', '100042200000', '2020-12-24 14:39:01', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (457, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 15:08:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (458, '12086fd1aeccd7f533fb2d0065de3ba6', '100040200000', '2020-12-24 15:09:33', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (459, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-24 15:56:09', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (460, 'afcc69f410057e5879b82c4e590e7c26', '100043200000', '2020-12-24 16:11:22', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (461, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 16:34:53', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (462, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-24 16:36:18', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (463, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 17:25:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (464, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 18:06:03', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (465, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 18:08:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (466, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 18:09:45', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (467, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 18:18:00', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (468, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 18:20:25', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (469, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 18:29:35', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (470, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-24 18:35:53', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (471, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-24 18:37:45', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (472, '2f46ef2679b97c1ebcfac7d2f1036dbe', '100044200000', '2020-12-24 19:11:46', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (473, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-25 10:24:25', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (474, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-25 10:26:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (475, '0bf5db3ad2850e30abc68c9daa05b382', '100032200000', '2020-12-25 10:46:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (476, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-25 11:57:24', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (477, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-25 11:59:52', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (478, '12086fd1aeccd7f533fb2d0065de3ba6', '100040200000', '2020-12-25 12:15:06', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (479, '12086fd1aeccd7f533fb2d0065de3ba6', '100040200000', '2020-12-25 12:15:20', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (480, '12086fd1aeccd7f533fb2d0065de3ba6', '100040200000', '2020-12-25 12:15:48', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (481, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-25 12:16:18', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (482, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-25 14:43:53', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (483, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-25 15:26:49', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (484, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-25 15:49:05', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (485, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-25 16:01:27', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (486, '12086fd1aeccd7f533fb2d0065de3ba6', '100040200000', '2020-12-25 16:02:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (487, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-25 16:05:14', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (488, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-28 10:01:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (489, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-28 10:29:06', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (490, 'ab2af0f99ae2a2a09ea7f5cf0e30ffaa', '100029200000', '2020-12-28 10:38:16', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (491, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-28 10:39:04', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (492, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-28 10:41:19', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (493, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-28 10:46:37', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (494, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-28 11:32:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.111');
INSERT INTO `sys_login_log` VALUES (495, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-28 16:34:07', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (496, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-28 16:45:05', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (497, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-28 16:57:23', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (498, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-28 17:03:16', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (499, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-28 17:16:05', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (500, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-28 17:53:32', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (501, '68864fc6b9df03d06580af91f51833f8', '100030200000', '2020-12-29 10:38:37', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (502, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-29 15:38:42', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (503, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2020-12-29 16:48:12', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (504, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-29 17:43:47', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (505, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-29 19:31:37', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (506, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-30 11:26:49', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (507, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2020-12-31 12:23:20', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (508, '9860d49ad1d2ad8c5c97ac71b8fd932e', '100045200000', '2020-12-31 15:02:49', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (509, 'e769dc3d2d36689c38efc865d9bf558c', '100046200000', '2020-12-31 15:06:46', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (510, 'f8853d16b21fc2e42f8ffdab160fd417', '100047200000', '2020-12-31 15:08:19', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (511, 'e769dc3d2d36689c38efc865d9bf558c', '100046200000', '2020-12-31 15:15:19', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (512, '9860d49ad1d2ad8c5c97ac71b8fd932e', '100045200000', '2020-12-31 15:16:03', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (513, '520b027dc062b7b15740c940b16f8b0b', '100049200000', '2021-01-04 09:16:33', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (514, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-04 09:19:43', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (515, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-04 10:22:36', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (516, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-04 10:47:42', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (517, 'af1affa87aadbfeab074cad0de7ab074', '100028200000', '2021-01-04 16:37:04', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (518, '5afbb98269116693e3630fe990eedc00', '100035200000', '2021-01-04 16:47:53', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (519, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-04 19:49:32', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (520, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 09:34:46', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (521, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 09:35:03', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (522, '9860d49ad1d2ad8c5c97ac71b8fd932e', '100045200000', '2021-01-05 10:08:53', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (523, '9860d49ad1d2ad8c5c97ac71b8fd932e', '100045200000', '2021-01-05 10:39:11', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (524, '9860d49ad1d2ad8c5c97ac71b8fd932e', '100045200000', '2021-01-05 10:50:28', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (525, '9860d49ad1d2ad8c5c97ac71b8fd932e', '100045200000', '2021-01-05 11:26:53', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (526, '9860d49ad1d2ad8c5c97ac71b8fd932e', '100045200000', '2021-01-05 12:00:00', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (527, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 12:26:19', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (528, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 12:27:28', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.29');
INSERT INTO `sys_login_log` VALUES (529, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 12:33:02', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (530, '5afbb98269116693e3630fe990eedc00', '100035200000', '2021-01-05 14:40:50', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (531, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 15:45:27', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (532, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 15:58:32', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (533, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 16:05:08', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (534, '577b05fde7475b704c3bab9444515c1f', '100002200000', '2021-01-05 16:35:16', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (535, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 16:36:40', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (536, '577b05fde7475b704c3bab9444515c1f', '100002200000', '2021-01-05 16:39:11', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (537, '802206dd3c03e9e521b35b9caac9d6a6', '100003200000', '2021-01-05 16:39:39', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (538, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 16:47:08', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (539, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-05 17:08:28', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.206');
INSERT INTO `sys_login_log` VALUES (540, '802206dd3c03e9e521b35b9caac9d6a6', '100003200000', '2021-01-05 17:23:35', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (541, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-06 10:22:47', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (542, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-06 10:33:58', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (543, '577b05fde7475b704c3bab9444515c1f', '100002200000', '2021-01-06 11:05:52', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (544, '668ff1a994197b130af04b53107d61ba', '100004200000', '2021-01-06 18:16:20', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (545, '3f2237394422e83a68779251f7b1d201', '100005200000', '2021-01-06 18:20:14', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (546, '41353d22edfc23110ac823cb0838e8f2', '100006200000', '2021-01-06 18:22:50', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (547, '668ff1a994197b130af04b53107d61ba', '100004200000', '2021-01-07 10:01:58', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (548, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-07 10:38:50', '登录成功！', '', '192.168.10.214');
INSERT INTO `sys_login_log` VALUES (549, '802206dd3c03e9e521b35b9caac9d6a6', '100003200000', '2021-01-07 11:11:15', '登录成功！', '内网IP|0|0|内网IP|内网IP', '192.168.31.133');
INSERT INTO `sys_login_log` VALUES (550, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-07 14:45:23', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');
INSERT INTO `sys_login_log` VALUES (551, 'efd292c521bd11eb8dfdb0262880441f', 'admin', '2021-01-07 14:52:04', '登录成功！', '内网IP|0|0|内网IP|内网IP', '127.0.0.1');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `PARENT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父ID',
  `NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `URL` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `COMPONENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `COMPONENT_NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件名字',
  `REDIRECT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '一级菜单跳转地址',
  `MENU_TYPE` int(0) NULL DEFAULT NULL COMMENT '菜单类型(0:一级菜单; 1:子菜单:2:按钮权限)',
  `PERMS` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单权限编码',
  `PERMS_TYPE` int(0) NULL DEFAULT 0 COMMENT '权限策略1显示2禁用',
  `SORT_NO` double NULL DEFAULT NULL COMMENT '菜单排序',
  `ALWAYS_SHOW` tinyint(0) NULL DEFAULT NULL COMMENT '聚合子路由: 1是0否',
  `ICON` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `IS_ROUTE` tinyint(0) NULL DEFAULT 1 COMMENT '是否路由菜单: 0:不是  1:是',
  `IS_LEAF` tinyint(0) NULL DEFAULT NULL COMMENT '是否叶子节点:    1:是   0:不是',
  `KEEP_ALIVE` tinyint(0) NULL DEFAULT NULL COMMENT '是否缓存该页面:    1:是   0:不是',
  `HIDDEN` tinyint(0) NULL DEFAULT 0 COMMENT '是否隐藏路由: 0否,1是',
  `INTERNAL_OR_EXTERNAL` tinyint(0) NULL DEFAULT NULL COMMENT '外链菜单打开方式 0/内部打开 1/外部打开',
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `STATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮权限状态(0无效1有效)',
  `DEL_FLAG` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除状态 0正常 1删除',
  `CREATE_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `MENU_SCOPE` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '功能级别 1校级 2区级',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `IDX_PARENT_ID`(`PARENT_ID`) USING BTREE,
  INDEX `IDX_MENU_TYPE`(`MENU_TYPE`) USING BTREE,
  INDEX `IDX_IS_ROUTE`(`IS_ROUTE`) USING BTREE,
  INDEX `IDX_IS_LEAF`(`IS_LEAF`) USING BTREE,
  INDEX `IDX_HIDDEN`(`HIDDEN`) USING BTREE,
  INDEX `IDX_STATUS`(`STATUS`) USING BTREE,
  INDEX `IDX_DEL_FLAG`(`DEL_FLAG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('047ec22bda697575ecd15de08ec90cac', '0', '招生信息', '/enroll', 'layouts/PageView', NULL, NULL, 0, NULL, 1, 10, 0, 'profile', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-19 11:48:18', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('08e6b9dc3c04489c8e1ff2ce6f105aa4', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '系统监控', '/system/actuator', 'layouts/RouteView', NULL, NULL, 1, NULL, NULL, 5, 0, 'eye', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-12-21 09:19:22', NULL);
INSERT INTO `sys_menu` VALUES ('12cc257b220bffba5043d419f69039e5', '0', '运营中心', '/opc', 'layouts/RouteView', NULL, '/opc/service/define', 0, '', 1, 4, 0, 'robot', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 15:45:22', 'admin', '2021-01-07 14:58:05', NULL);
INSERT INTO `sys_menu` VALUES ('1367a93f2c410b169faa7abcbad2f77c', '6e73eb3c26099c191bf03852ee1310a1', '基本设置', '/account/settings/BaseSetting', 'account/settings/BaseSetting', 'account-settings-base', NULL, 1, '', NULL, NULL, 0, NULL, 1, 1, NULL, 1, NULL, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('158f2bb8e8823cdc6a7161b4225de860', 'b8e19dd9ba4768104932960a040bd0d8', '操作', NULL, NULL, NULL, NULL, 2, 'portal:enrollInfo:portalInfo:operate', 1, 0, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-21 16:29:13', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('15a87a7d4f2e2fd388023da1a57f2616', '5abaae6bdaf334086c8ea3471cb201a4', '操作', NULL, NULL, NULL, NULL, 2, 'tntc:service:mine:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-16 09:35:39', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('17fcfec945749dca1d390030f9736f1f', '4839289f19980c47186727814af09c26', '操作', NULL, NULL, NULL, NULL, 2, 'opc:tntc:tntcManage:operate', 1, 0, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2021-01-26 15:00:20', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('190c2b43bec6a5f7a4194a85db67d96a', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '角色管理', '/system/role', 'system/RoleList', NULL, NULL, 1, 'system:role:view', NULL, 2, 0, 'smile', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-12-21 09:18:04', NULL);
INSERT INTO `sys_menu` VALUES ('195ded9d8604ee18833e472fee7b0232', '9502685863ab87f0ad1134142788a385', '分析页', '/dashboard/analysis', 'dashboard/Analysis', NULL, NULL, 1, NULL, 1, 2, 0, NULL, 1, 1, 0, 0, 0, NULL, '1', 0, 'admin', '2020-08-27 19:32:20', 'admin', '2021-01-07 14:57:05', NULL);
INSERT INTO `sys_menu` VALUES ('1b5ba05f94075ab3d511c70edfb53f3e', '54dd5457a3190740005c1bfec55b1c34', '操作', NULL, NULL, NULL, NULL, 2, 'system:menu:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-09-17 11:44:19', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('1f4c8550642c2591e1b8a02dc343b39d', 'afdd11f9ffac3866eeb6c64df4fcf8e4', '操作', NULL, NULL, NULL, NULL, 2, 'tntc:info:user:operate', 1, 0, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-24 11:05:42', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('269957dd36e68c6092458f88906db86c', 'b140914e2e9589df5266bf5333ce54b3', '网站定义', '/cms/web', 'layouts/PageView', NULL, NULL, 1, NULL, 1, 1, 0, 'highlight', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-18 10:52:40', 'admin', '2020-12-16 09:18:08', NULL);
INSERT INTO `sys_menu` VALUES ('2f0c08c2235b0da425a1e27013814735', '71e04e2eb1963d926356e5cbf2f3f899', '操作', NULL, NULL, NULL, NULL, 2, 'cms:portal:publish:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:45:29', 'admin', '2020-12-08 10:13:55', NULL);
INSERT INTO `sys_menu` VALUES ('35b85ce9565d89fe78c90733deb8cc3b', '87e04229652cf95c3c546ced2bd0c634', '站点栏目', '/cms/site/column', 'cms/site/Column', NULL, NULL, 1, 'cms:site:column:view', 1, 2, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-23 10:47:15', 'admin', '2020-12-08 10:09:57', NULL);
INSERT INTO `sys_menu` VALUES ('35d8443d87f44e2a4a40c5c2fa006782', '9ac0ece63b21b59529db23c91a8622d1', '开通服务', '/tntc/service/open', 'tntc/service/Open', NULL, NULL, 1, 'tntc:service:open:view', 1, 2, 0, 'notification', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-16 09:34:58', 'admin', '2020-12-16 17:46:51', NULL);
INSERT INTO `sys_menu` VALUES ('3805051e69f7bbbf97e837c563e2f906', '269957dd36e68c6092458f88906db86c', '栏目定义', '/cms/web/column', 'cms/web/Column', NULL, NULL, 1, 'cms:web:column:view', 1, 3, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-18 10:56:08', 'admin', '2020-12-08 10:08:39', NULL);
INSERT INTO `sys_menu` VALUES ('3b94007dc1f2ee2473b173dbd799cb18', 'b3559d0bf78b5206fb2fa59b6d2c5975', '服务角色', '/opc/service/role', 'opc/service/ServiceRole', NULL, NULL, 1, 'opc:service:role:view', 1, 3, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 16:01:07', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('3e3f2a55cf47a8e31d84b8063832fd86', '9ac0ece63b21b59529db23c91a8622d1', '个人信息', '/tntc/info', 'layouts/RouteView', NULL, NULL, 1, '', 1, 1, 0, 'solution', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-16 09:31:56', 'admin', '2020-12-24 11:31:08', NULL);
INSERT INTO `sys_menu` VALUES ('3e5ab3585d670f3656aabd860f9e9938', 'b7aa4d697ee5c6ea67f5bc4c24f56f12', '操作', NULL, NULL, NULL, NULL, 2, 'cms:portal:column:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:28:21', 'admin', '2020-12-08 10:12:54', NULL);
INSERT INTO `sys_menu` VALUES ('3f915b2769fc80648e92d04e84ca059d', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '用户管理', '/system/user', 'system/UserList', NULL, NULL, 1, 'system:user:view', NULL, 1, 0, 'user', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-12-16 09:16:33', NULL);
INSERT INTO `sys_menu` VALUES ('40ddcccf5e6148f490ed7dc1a6ea705f', '9bd02c0a96c138fafe386184f21da3b4', '操作', NULL, NULL, NULL, NULL, 2, 'opc:service:sms:operate', 1, 0, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-25 11:59:11', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('45a84f1e79c11ff4ee2d18f414aa9adf', '3e3f2a55cf47a8e31d84b8063832fd86', '基本信息', '/tntc/info/tenant', 'tntc/info/Tenant', NULL, NULL, 1, 'tntc:info:tenant:view', 1, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-24 11:03:01', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('468e3089b16fafb58262877ca38a1d8d', '8d1ec1e587ad5827b906d33ad80e66d5', '操作', NULL, NULL, NULL, NULL, 2, 'opc:service:group:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-15 17:40:53', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('4839289f19980c47186727814af09c26', '12cc257b220bffba5043d419f69039e5', '租户管理', '/opc/tntc', 'opc/tntc/TntcManage', NULL, NULL, 1, 'opc:tntc:tntcManage:view', 1, 2, 0, 'solution', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2021-01-26 11:10:36', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('49882df36f839dd7d43c5fdfe4a85c66', '3805051e69f7bbbf97e837c563e2f906', '操作', NULL, NULL, NULL, NULL, 2, 'cms:web:column:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-18 11:03:58', 'admin', '2020-12-08 10:08:51', NULL);
INSERT INTO `sys_menu` VALUES ('4c2a7823d258b69ee0a9fb8c2981a5c7', '9ac0ece63b21b59529db23c91a8622d1', '服务支持', '/tntc/ops', 'layouts/RouteView', NULL, NULL, 1, NULL, 1, 5, 0, 'laptop', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2021-01-19 10:34:44', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('4dd87c1528a358cb4997126b4094066e', '9ac0ece63b21b59529db23c91a8622d1', '应用管理员', '/tntc/info/tenantuser', 'tntc/info/TenantUser', NULL, NULL, 1, 'tntc:info:tenantUser:view', 1, 4, 0, 'smile', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2021-01-19 10:29:29', 'admin', '2021-01-19 10:29:54', NULL);
INSERT INTO `sys_menu` VALUES ('4f66409ef3bbd69c1d80469d6e2a885e', '6e73eb3c26099c191bf03852ee1310a1', '账户绑定', '/account/settings/binding', 'account/settings/Binding', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('54dd5457a3190740005c1bfec55b1c34', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '菜单管理', '/system/menu', 'system/MenuList', NULL, NULL, 1, 'system:menu:view', NULL, 3, 0, 'calendar', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-12-21 09:18:21', NULL);
INSERT INTO `sys_menu` VALUES ('58857ff846e61794c69208e9d3a85466', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '登录日志', '/system/actuator/loginlog', 'system/LoginLogList', NULL, NULL, 1, 'system:loginlog:view', NULL, 1, 0, '', 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-12-08 10:05:03', NULL);
INSERT INTO `sys_menu` VALUES ('590f42fc7aedae6a0acba4870556381e', '4c2a7823d258b69ee0a9fb8c2981a5c7', '提交工单', '/tntc/ops/order', 'tntc/ops/WorkOrder', NULL, NULL, 1, 'tntc:ops:workOrder:view', 1, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2021-01-19 10:36:29', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('5abaae6bdaf334086c8ea3471cb201a4', '9ac0ece63b21b59529db23c91a8622d1', '我的服务', '/tntc/service/mine', 'tntc/service/Mine', NULL, NULL, 1, 'tntc:service:mine:view', 1, 3, 0, 'calendar', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-16 09:33:34', 'admin', '2020-12-16 17:46:45', NULL);
INSERT INTO `sys_menu` VALUES ('5b3a7f1a428e818d01c597c67dc551a0', '87e04229652cf95c3c546ced2bd0c634', '站点维护', '/cms/site/config', 'cms/site/Config', NULL, NULL, 1, 'cms:site:config:view', 1, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-23 10:45:13', 'admin', '2020-12-08 10:09:28', NULL);
INSERT INTO `sys_menu` VALUES ('5cb1cbb8d38785c10d923eddf0ad5c59', '0', '门户管理', '/portal', 'layouts/PageView', NULL, '/portal/column', 0, '', 1, 3, 0, 'cluster', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:21:13', 'admin', '2021-01-07 14:52:49', NULL);
INSERT INTO `sys_menu` VALUES ('622674a0fb1cf225bb2817aaceaa7623', '269957dd36e68c6092458f88906db86c', '模板定义', '/cms/web/template', 'cms/web/Template', NULL, NULL, 1, 'cms:web:template:view', 1, 2, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-18 11:01:09', 'admin', '2020-12-08 10:08:14', NULL);
INSERT INTO `sys_menu` VALUES ('62a974f9f4dbd8a0763b1724240059fd', '9502685863ab87f0ad1134142788a385', '工作台', '/dashboard/workplace', 'dashboard/Workplace', NULL, NULL, 1, NULL, 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, '1', 0, 'admin', '2020-08-27 19:32:52', 'admin', '2021-01-07 14:57:10', NULL);
INSERT INTO `sys_menu` VALUES ('62b0710e4b9ea5121edb5223adf7f7f6', '87e04229652cf95c3c546ced2bd0c634', '站点监控', '/cms/site/monitor', 'cms/site/Monitor', NULL, NULL, 1, 'cms:site:monitor:view', 1, 4, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-26 12:09:40', 'admin', '2020-12-08 10:10:49', NULL);
INSERT INTO `sys_menu` VALUES ('6396feee2e2d4b64131e381d57e7cfbd', 'a7351ac2ca50058d555c7db688b022f5', '操作', NULL, NULL, NULL, NULL, 2, 'opc:service:menu:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 15:59:31', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('69626c09f6a24692da1953b7df73679d', 'd1f3fac00819b91db0bc2f3eb8aa0039', '操作', NULL, NULL, NULL, NULL, 2, 'opc:service:dict:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 16:02:58', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('697a8d81f761779dcab9b8b78994f226', '5cb1cbb8d38785c10d923eddf0ad5c59', '内容审核', '/portal/audit', 'portal/Audit', NULL, NULL, 1, 'cms:portal:audit:view', 1, 3, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:31:49', 'admin', '2020-12-18 10:58:47', NULL);
INSERT INTO `sys_menu` VALUES ('6abfc9664aca47e8bb83de8da7dbd62c', '3f915b2769fc80648e92d04e84ca059d', '操作', NULL, NULL, NULL, NULL, 2, 'system:user:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, '1', 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-09-17 11:42:52', NULL);
INSERT INTO `sys_menu` VALUES ('6e73eb3c26099c191bf03852ee1310a1', '717f6bee46f44a3897eca9abd6e2ec44', '个人设置', '/account/settings/Index', 'account/settings/Index', NULL, NULL, 1, NULL, NULL, 2, 1, NULL, 1, 0, NULL, 0, NULL, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('6e87cb895e36f6e6e5fa3d26ca8dc0eb', '783e0e4ea03e50454f6f53acb8e1eed2', '操作', NULL, NULL, NULL, NULL, 2, 'opc:service:define:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 15:57:33', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('71796527dd034e65009d4406bce07175', '87e04229652cf95c3c546ced2bd0c634', '站点内容', '/cms/site/content', 'cms/site/Content', NULL, NULL, 1, 'cms:site:content:view', 1, 3, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-23 17:49:44', 'admin', '2020-12-08 10:10:26', NULL);
INSERT INTO `sys_menu` VALUES ('717f6bee46f44a3897eca9abd6e2ec44', '0', '个人页', '/account', 'layouts/RouteView', NULL, NULL, 0, NULL, NULL, 0, 0, 'user', 1, 0, 0, 1, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-12-21 14:39:00', NULL);
INSERT INTO `sys_menu` VALUES ('71e04e2eb1963d926356e5cbf2f3f899', '5cb1cbb8d38785c10d923eddf0ad5c59', '内容发布', '/portal/publish', 'portal/Publish', NULL, NULL, 1, 'cms:portal:publish:view', 1, 4, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:34:12', 'admin', '2020-12-18 10:58:56', NULL);
INSERT INTO `sys_menu` VALUES ('71fc2f4865d8c6ada5bb95a064dc76f3', '35d8443d87f44e2a4a40c5c2fa006782', '操作', NULL, NULL, NULL, NULL, 2, 'tntc:service:open:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-16 09:35:57', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('7367dba19696670169bfe1c981436cf9', '62b0710e4b9ea5121edb5223adf7f7f6', '操作', NULL, NULL, NULL, NULL, 2, 'cms:site:monitor:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-26 12:10:04', 'admin', '2020-12-08 10:10:57', NULL);
INSERT INTO `sys_menu` VALUES ('783e0e4ea03e50454f6f53acb8e1eed2', 'b3559d0bf78b5206fb2fa59b6d2c5975', '服务定义', '/opc/service/define', 'opc/service/ServiceDefine', NULL, NULL, 1, 'opc:service:define:view', 1, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 15:54:13', 'admin', '2020-12-08 15:56:58', NULL);
INSERT INTO `sys_menu` VALUES ('7fd3deee0de759eed471e04b4418e056', '71796527dd034e65009d4406bce07175', '操作', NULL, NULL, NULL, NULL, 2, 'cms:site:content:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-23 17:50:09', 'admin', '2020-12-08 10:10:38', NULL);
INSERT INTO `sys_menu` VALUES ('841057b8a1bef8f6b4b20f9a618a7fa6', '08e6b9dc3c04489c8e1ff2ce6f105aa4', '数据日志', '/system/actuator/datalog', 'system/DataLogList', NULL, NULL, 1, 'system:datalog:view', NULL, 2, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-12-08 10:05:40', NULL);
INSERT INTO `sys_menu` VALUES ('87e04229652cf95c3c546ced2bd0c634', 'b140914e2e9589df5266bf5333ce54b3', '站点管理', '/cms/site', 'layouts/PageView', NULL, NULL, 1, NULL, 1, 2, 0, 'profile', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-23 10:43:06', 'admin', '2020-12-16 09:22:30', NULL);
INSERT INTO `sys_menu` VALUES ('882a73768cfd7f78f3a37584f7299656', '6e73eb3c26099c191bf03852ee1310a1', '个性化设置', '/account/settings/custom', 'account/settings/Custom', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('8909c88a17d10866cc2026a8f674e6a2', '87e04229652cf95c3c546ced2bd0c634', '站点授权', '/cms/site/authorize', 'cms/site/Authorize', NULL, NULL, 1, 'cms:site:authorize:view', 1, 5, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-26 12:11:07', 'admin', '2020-12-08 10:11:11', NULL);
INSERT INTO `sys_menu` VALUES ('8a0fd022fb0c90252ddf3a6da6a72e98', '8909c88a17d10866cc2026a8f674e6a2', '操作', NULL, NULL, NULL, NULL, 2, 'cms:site:authorize:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-26 12:11:27', 'admin', '2020-12-08 10:11:23', NULL);
INSERT INTO `sys_menu` VALUES ('8d1ec1e587ad5827b906d33ad80e66d5', 'b3559d0bf78b5206fb2fa59b6d2c5975', '服务组合', '/opc/service/group', 'opc/service/ServiceGroup', NULL, NULL, 1, 'opc:service:group:view', 1, 5, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-15 17:40:09', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('94efc911237c43b9a1da775f4bf394cf', '4c2a7823d258b69ee0a9fb8c2981a5c7', '工单列表', '/tntc/ops/reply', 'tntc/ops/WorkOrderReply', NULL, NULL, 1, 'tntc:ops:workOrderReply:view', 1, 2, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2021-01-19 10:37:56', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('9502685863ab87f0ad1134142788a385', '0', '仪表盘', '/dashboard', 'layouts/RouteView', NULL, '/dashboard/workplace', 0, NULL, NULL, 0, 0, 'home', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-08-27 19:29:35', NULL);
INSERT INTO `sys_menu` VALUES ('96fd04fe9529b10781f6eaf724e3cf2e', '5cb1cbb8d38785c10d923eddf0ad5c59', '栏目权限', '/portal/authorize', 'portal/Authorize', NULL, NULL, 1, 'cms:portal:authorize:view', 1, 6, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:42:35', 'admin', '2020-12-18 10:59:12', NULL);
INSERT INTO `sys_menu` VALUES ('994458b146a2bf75673991e1ebc3b641', '5b3a7f1a428e818d01c597c67dc551a0', '操作', NULL, NULL, NULL, NULL, 2, 'cms:site:config:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-23 10:45:59', 'admin', '2020-12-08 10:09:42', NULL);
INSERT INTO `sys_menu` VALUES ('9ac0ece63b21b59529db23c91a8622d1', '0', '租户中心', '/tntc', 'layouts/PageView', NULL, '/tntc/info', 0, NULL, 1, 5, 0, 'team', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-16 09:26:21', 'admin', '2021-01-07 14:58:17', NULL);
INSERT INTO `sys_menu` VALUES ('9bd02c0a96c138fafe386184f21da3b4', 'b3559d0bf78b5206fb2fa59b6d2c5975', '服务短信', '/opc/service/sms', 'opc/service/ServiceSms', NULL, NULL, 1, 'opc:service:sms:view', 1, 6, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-25 11:58:50', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('9cb91b8851db0cf7b19d7ecc2a8193dd', '1939e035e803a99ceecb6f5563570fb2', '我的任务表单', '/modules/bpm/task/form/FormModule', 'modules/bpm/task/form/FormModule', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('9e49558e8e83addf98ff310936cccda9', '45a84f1e79c11ff4ee2d18f414aa9adf', '操作', NULL, NULL, NULL, NULL, 2, 'tntc:info:tenant:operate', 1, 0, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-24 11:05:21', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('a7351ac2ca50058d555c7db688b022f5', 'b3559d0bf78b5206fb2fa59b6d2c5975', '服务项目', '/opc/service/menu', 'opc/service/ServiceMenu', NULL, NULL, 1, 'opc:service:menu:view', 1, 2, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 15:59:01', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('a7d179106a4cd6131337e3b60eef4180', '622674a0fb1cf225bb2817aaceaa7623', '操作', NULL, NULL, NULL, NULL, 2, 'cms:web:template:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-18 11:04:22', 'admin', '2020-12-08 10:08:23', NULL);
INSERT INTO `sys_menu` VALUES ('a9eda5187e90eaff3e8f6dff93848a03', '2e4c9e2029f29a5b5305fa5e8329e705', 'basd', 'asddsa', 'asdsa', NULL, NULL, 1, '', 1, 0, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-09-16 16:25:49', 'admin', '2020-09-16 18:50:59', NULL);
INSERT INTO `sys_menu` VALUES ('aeb6803f96adcf8c6858ba1be2ec71ce', '94efc911237c43b9a1da775f4bf394cf', '操作', NULL, NULL, NULL, NULL, 2, 'tntc:ops:workOrderReply:operate', 1, 0, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2021-01-19 10:38:33', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('afdd11f9ffac3866eeb6c64df4fcf8e4', '3e3f2a55cf47a8e31d84b8063832fd86', '帐号信息', '/tntc/info/user', 'tntc/info/User', NULL, NULL, 1, 'tntc:info:user:view', 1, 2, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-24 11:04:29', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('b0fcc0a60402f1a05e4d0713362940de', '5cb1cbb8d38785c10d923eddf0ad5c59', '内容管理', '/portal/content', 'portal/Content', NULL, NULL, 1, 'cms:portal:content:view', 1, 2, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:30:53', 'admin', '2020-12-18 10:58:23', NULL);
INSERT INTO `sys_menu` VALUES ('b140914e2e9589df5266bf5333ce54b3', '0', '站群管理', '/cms', 'layouts/RouteView', NULL, '/cms/web/flow', 0, NULL, 1, 2, 0, 'global', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 09:47:28', 'admin', '2021-01-07 14:57:45', NULL);
INSERT INTO `sys_menu` VALUES ('b3559d0bf78b5206fb2fa59b6d2c5975', '12cc257b220bffba5043d419f69039e5', '服务管理', '/opc/service', 'layouts/PageView', NULL, NULL, 1, '', 1, 1, 0, 'coffee', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 15:53:36', 'admin', '2020-12-16 09:23:35', NULL);
INSERT INTO `sys_menu` VALUES ('b45a114265c63c08c5066f77e924a522', '35b85ce9565d89fe78c90733deb8cc3b', '操作', NULL, NULL, NULL, NULL, 2, 'cms:site:column:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-23 10:48:06', 'admin', '2020-12-08 10:10:14', NULL);
INSERT INTO `sys_menu` VALUES ('b6bcee2ccc854052d3cc3e9c96d90197', '71102b3b87fb07e5527bbd2c530dd90a', '加班申请', '/modules/extbpm/joa/JoaOvertimeList', 'modules/extbpm/joa/JoaOvertimeList', NULL, NULL, 1, NULL, NULL, 1, 0, NULL, 1, 1, NULL, 0, NULL, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('b6c17346453cd7ef5ba14c3e65c9d4b3', '190c2b43bec6a5f7a4194a85db67d96a', '操作', NULL, NULL, NULL, NULL, 2, 'system:role:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, '1', 0, 'admin', '2020-08-27 19:41:56', 'admin', '2020-09-17 11:43:55', NULL);
INSERT INTO `sys_menu` VALUES ('b7aa4d697ee5c6ea67f5bc4c24f56f12', '5cb1cbb8d38785c10d923eddf0ad5c59', '栏目管理', '/portal/column', 'portal/Column', NULL, NULL, 1, 'cms:portal:column:view', 1, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:26:11', 'admin', '2020-12-18 10:58:31', NULL);
INSERT INTO `sys_menu` VALUES ('b8e19dd9ba4768104932960a040bd0d8', '047ec22bda697575ecd15de08ec90cac', '招生简章维护', '/portal/enroll', 'portal/enrollInfo/PortalInfo', NULL, NULL, 1, 'portal:enrollInfo:portalInfo:view', 1, 0, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-19 11:51:06', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('c0ba4e1f373cd23cd6fd3cf733e3b3b9', '5cb1cbb8d38785c10d923eddf0ad5c59', '门户配置', '/portal/config', 'portal/Config', NULL, NULL, 1, 'cms:portal:config:view', 1, 5, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:36:44', 'admin', '2020-12-18 10:59:04', NULL);
INSERT INTO `sys_menu` VALUES ('c1ffa1daa2c21de4585160d978343972', '590f42fc7aedae6a0acba4870556381e', '操作', NULL, NULL, NULL, NULL, 2, 'tntc:ops:workOrder:operate', 1, 0, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2021-01-19 10:38:19', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('c8bffdeaa00d2f82558ba5d202bcb19c', '697a8d81f761779dcab9b8b78994f226', '操作', NULL, NULL, NULL, NULL, 2, 'cms:portal:audit:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:45:09', 'admin', '2020-12-08 10:13:30', NULL);
INSERT INTO `sys_menu` VALUES ('d1f3fac00819b91db0bc2f3eb8aa0039', 'b3559d0bf78b5206fb2fa59b6d2c5975', '服务字典', '/opc/service/dict', 'opc/service/ServiceDict', NULL, NULL, 1, 'opc:service:dict:view', 1, 4, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 16:02:37', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('d7d6e2e4e2934f2c9385a623fd98c6f3', '0', '系统管理', '/system', 'layouts/PageView', NULL, '/system/user', 0, NULL, NULL, 1, 0, 'setting', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2021-01-07 14:52:25', NULL);
INSERT INTO `sys_menu` VALUES ('d86f58e7ab516d3bc6bfb1fe10585f97', '717f6bee46f44a3897eca9abd6e2ec44', '个人中心', '/account/center', 'account/center/Index', NULL, NULL, 1, NULL, NULL, 1, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('db8074febda0110011d894fc5d649e34', '4dd87c1528a358cb4997126b4094066e', '操作', NULL, NULL, NULL, NULL, 2, 'tntc:info:tenantUser:operate', 1, 0, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2021-01-19 10:30:32', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('ddbe3c3e56ef3a50b26267e948a9b9f0', 'f1b14a119a49e8d1e568993db4d67742', '操作', NULL, NULL, NULL, NULL, 2, 'cms:web:flow:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-18 11:04:12', 'admin', '2020-12-08 09:54:00', NULL);
INSERT INTO `sys_menu` VALUES ('dea1392a386ccd19bb2d2ad0ad32d9ea', 'c0ba4e1f373cd23cd6fd3cf733e3b3b9', '操作', NULL, NULL, NULL, NULL, 2, 'cms:portal:config:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:45:47', 'admin', '2020-12-08 10:14:27', NULL);
INSERT INTO `sys_menu` VALUES ('eb1c2046f335145cc6d72dffe2f2dbf9', 'f1cb187abf927c88b89470d08615f5ac', '操作', NULL, NULL, NULL, NULL, 2, 'system:dict:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-09-28 09:15:23', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('ec8d607d0156e198b11853760319c646', '6e73eb3c26099c191bf03852ee1310a1', '安全设置', '/account/settings/security', 'account/settings/Security', NULL, NULL, 1, '', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('ef87523fe8855e1b47c954b61863e7f3', '3f915b2769fc80648e92d04e84ca059d', '密码重置', NULL, NULL, NULL, NULL, 2, 'system:user:reset', 1, 2, 0, NULL, 1, 1, 0, 0, 0, NULL, '1', 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-09-17 11:43:23', NULL);
INSERT INTO `sys_menu` VALUES ('f1b14a119a49e8d1e568993db4d67742', '269957dd36e68c6092458f88906db86c', '流程定义', '/cms/web/flow', 'cms/web/Flow', NULL, NULL, 1, 'cms:web:flow:view', 1, 1, 0, NULL, 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-18 11:00:22', 'admin', '2020-12-08 09:51:58', NULL);
INSERT INTO `sys_menu` VALUES ('f1cb187abf927c88b89470d08615f5ac', 'd7d6e2e4e2934f2c9385a623fd98c6f3', '字典管理', '/system/dict', 'system/DictList', NULL, NULL, 1, 'system:dict:view', NULL, 4, 0, 'copy', 1, 0, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', 'admin', '2020-12-21 09:18:56', NULL);
INSERT INTO `sys_menu` VALUES ('f257374c3e6622267498a408f0abea8d', '96fd04fe9529b10781f6eaf724e3cf2e', '操作', NULL, NULL, NULL, NULL, 2, 'cms:portal:authorize:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:46:06', 'admin', '2020-12-08 10:14:52', NULL);
INSERT INTO `sys_menu` VALUES ('fc4e5f8b20e392c50a1188720ca16ee2', '3b94007dc1f2ee2473b173dbd799cb18', '操作', NULL, NULL, NULL, NULL, 2, 'opc:service:role:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-12-08 16:03:15', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('fedfbf4420536cacc0218557d263dfea', '6e73eb3c26099c191bf03852ee1310a1', '新消息通知', '/account/settings/notification', 'account/settings/Notification', NULL, NULL, 1, '', NULL, NULL, NULL, '', 1, 1, NULL, NULL, NULL, NULL, NULL, 0, 'admin', '2020-08-04 16:55:38', NULL, NULL, NULL);
INSERT INTO `sys_menu` VALUES ('ffb09d1df578e15fdb1a459dd4b064b5', 'b0fcc0a60402f1a05e4d0713362940de', '操作', NULL, NULL, NULL, NULL, 2, 'cms:portal:content:operate', 1, 1, 0, NULL, 1, 1, 0, 0, 0, NULL, NULL, 0, 'admin', '2020-11-27 11:44:47', 'admin', '2020-12-08 10:13:07', NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `role_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniq_sys_role_role_code`(`role_code`) USING BTREE,
  INDEX `idx_sr_role_code`(`role_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('f6817f48af4fb3af11b9e8bf182f6181', '测试', 'test', NULL, 'test', '2021-01-28 10:14:31', NULL, NULL);
INSERT INTO `sys_role` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '管理员', 'admin', NULL, 'admin', '2020-08-04 16:50:03', 'admin', '2021-01-26 15:04:25');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `ROLE_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  `MENU_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限ID',
  `CREATE_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  INDEX `IDX_ROLEIDANDMENUID`(`ROLE_ID`, `MENU_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', '1367a93f2c410b169faa7abcbad2f77c', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', '195ded9d8604ee18833e472fee7b0232', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', '4f66409ef3bbd69c1d80469d6e2a885e', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', '62a974f9f4dbd8a0763b1724240059fd', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', '6e73eb3c26099c191bf03852ee1310a1', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', '717f6bee46f44a3897eca9abd6e2ec44', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', '882a73768cfd7f78f3a37584f7299656', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', '9502685863ab87f0ad1134142788a385', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', 'd86f58e7ab516d3bc6bfb1fe10585f97', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', 'ec8d607d0156e198b11853760319c646', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('a34bd2e2d45bceb2e28ade804c2dd658', 'fedfbf4420536cacc0218557d263dfea', 'admin', '2020-11-08 22:39:19');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', '1367a93f2c410b169faa7abcbad2f77c', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', '195ded9d8604ee18833e472fee7b0232', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', '4f66409ef3bbd69c1d80469d6e2a885e', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', '62a974f9f4dbd8a0763b1724240059fd', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', '6e73eb3c26099c191bf03852ee1310a1', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', '717f6bee46f44a3897eca9abd6e2ec44', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', '882a73768cfd7f78f3a37584f7299656', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', '9502685863ab87f0ad1134142788a385', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', 'd86f58e7ab516d3bc6bfb1fe10585f97', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', 'ec8d607d0156e198b11853760319c646', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('8e363c291e194fe3950242149b9cf75a', 'fedfbf4420536cacc0218557d263dfea', 'admin', '2020-11-13 17:39:22');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '047ec22bda697575ecd15de08ec90cac', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '1367a93f2c410b169faa7abcbad2f77c', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '158f2bb8e8823cdc6a7161b4225de860', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '15a87a7d4f2e2fd388023da1a57f2616', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '195ded9d8604ee18833e472fee7b0232', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '1f4c8550642c2591e1b8a02dc343b39d', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '2f0c08c2235b0da425a1e27013814735', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '35d8443d87f44e2a4a40c5c2fa006782', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '3e3f2a55cf47a8e31d84b8063832fd86', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '3e5ab3585d670f3656aabd860f9e9938', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '45a84f1e79c11ff4ee2d18f414aa9adf', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '4f66409ef3bbd69c1d80469d6e2a885e', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '5abaae6bdaf334086c8ea3471cb201a4', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '5cb1cbb8d38785c10d923eddf0ad5c59', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '62a974f9f4dbd8a0763b1724240059fd', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '697a8d81f761779dcab9b8b78994f226', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '6e73eb3c26099c191bf03852ee1310a1', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '717f6bee46f44a3897eca9abd6e2ec44', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '71e04e2eb1963d926356e5cbf2f3f899', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '71fc2f4865d8c6ada5bb95a064dc76f3', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '882a73768cfd7f78f3a37584f7299656', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '9502685863ab87f0ad1134142788a385', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '96fd04fe9529b10781f6eaf724e3cf2e', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '9ac0ece63b21b59529db23c91a8622d1', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '9e49558e8e83addf98ff310936cccda9', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'afdd11f9ffac3866eeb6c64df4fcf8e4', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'b0fcc0a60402f1a05e4d0713362940de', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'b7aa4d697ee5c6ea67f5bc4c24f56f12', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'b8e19dd9ba4768104932960a040bd0d8', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'c0ba4e1f373cd23cd6fd3cf733e3b3b9', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'c8bffdeaa00d2f82558ba5d202bcb19c', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'd86f58e7ab516d3bc6bfb1fe10585f97', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'dea1392a386ccd19bb2d2ad0ad32d9ea', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'ec8d607d0156e198b11853760319c646', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'f257374c3e6622267498a408f0abea8d', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'fedfbf4420536cacc0218557d263dfea', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'ffb09d1df578e15fdb1a459dd4b064b5', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '4dd87c1528a358cb4997126b4094066e', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'db8074febda0110011d894fc5d649e34', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '4c2a7823d258b69ee0a9fb8c2981a5c7', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '590f42fc7aedae6a0acba4870556381e', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'c1ffa1daa2c21de4585160d978343972', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', '94efc911237c43b9a1da775f4bf394cf', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('0166adea55999c0544357a43b9e2b808', 'aeb6803f96adcf8c6858ba1be2ec71ce', 'admin', '2021-01-19 10:39:31');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '08e6b9dc3c04489c8e1ff2ce6f105aa4', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '12cc257b220bffba5043d419f69039e5', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '1367a93f2c410b169faa7abcbad2f77c', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '190c2b43bec6a5f7a4194a85db67d96a', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '195ded9d8604ee18833e472fee7b0232', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '1b5ba05f94075ab3d511c70edfb53f3e', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '269957dd36e68c6092458f88906db86c', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '35b85ce9565d89fe78c90733deb8cc3b', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '3805051e69f7bbbf97e837c563e2f906', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '3b94007dc1f2ee2473b173dbd799cb18', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '3f915b2769fc80648e92d04e84ca059d', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '40ddcccf5e6148f490ed7dc1a6ea705f', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '468e3089b16fafb58262877ca38a1d8d', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '4839289f19980c47186727814af09c26', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '49882df36f839dd7d43c5fdfe4a85c66', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '4f66409ef3bbd69c1d80469d6e2a885e', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '54dd5457a3190740005c1bfec55b1c34', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '58857ff846e61794c69208e9d3a85466', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '5b3a7f1a428e818d01c597c67dc551a0', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '622674a0fb1cf225bb2817aaceaa7623', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '62a974f9f4dbd8a0763b1724240059fd', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '62b0710e4b9ea5121edb5223adf7f7f6', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '6396feee2e2d4b64131e381d57e7cfbd', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '69626c09f6a24692da1953b7df73679d', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '6abfc9664aca47e8bb83de8da7dbd62c', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '6e73eb3c26099c191bf03852ee1310a1', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '6e87cb895e36f6e6e5fa3d26ca8dc0eb', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '71796527dd034e65009d4406bce07175', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '717f6bee46f44a3897eca9abd6e2ec44', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '7367dba19696670169bfe1c981436cf9', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '783e0e4ea03e50454f6f53acb8e1eed2', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '7fd3deee0de759eed471e04b4418e056', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '841057b8a1bef8f6b4b20f9a618a7fa6', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '87e04229652cf95c3c546ced2bd0c634', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '882a73768cfd7f78f3a37584f7299656', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '8909c88a17d10866cc2026a8f674e6a2', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '8a0fd022fb0c90252ddf3a6da6a72e98', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '8d1ec1e587ad5827b906d33ad80e66d5', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '9502685863ab87f0ad1134142788a385', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '994458b146a2bf75673991e1ebc3b641', 'admin', '2021-01-26 15:04:25');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '9bd02c0a96c138fafe386184f21da3b4', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'a7351ac2ca50058d555c7db688b022f5', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'a7d179106a4cd6131337e3b60eef4180', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'b140914e2e9589df5266bf5333ce54b3', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'b3559d0bf78b5206fb2fa59b6d2c5975', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'b45a114265c63c08c5066f77e924a522', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'b6c17346453cd7ef5ba14c3e65c9d4b3', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'd1f3fac00819b91db0bc2f3eb8aa0039', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'd7d6e2e4e2934f2c9385a623fd98c6f3', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'd86f58e7ab516d3bc6bfb1fe10585f97', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'ddbe3c3e56ef3a50b26267e948a9b9f0', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'eb1c2046f335145cc6d72dffe2f2dbf9', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'ec8d607d0156e198b11853760319c646', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'ef87523fe8855e1b47c954b61863e7f3', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'f1b14a119a49e8d1e568993db4d67742', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'f1cb187abf927c88b89470d08615f5ac', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'fc4e5f8b20e392c50a1188720ca16ee2', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', 'fedfbf4420536cacc0218557d263dfea', 'admin', '2021-01-26 15:04:26');
INSERT INTO `sys_role_menu` VALUES ('f6817f48af4fb3af11b9e8bf182f618b', '17fcfec945749dca1d390030f9736f1f', 'admin', '2021-01-26 15:04:26');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  `USERNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `SALT` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'md5密码盐',
  `REALNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '真实姓名',
  `INIT_PASSWORD` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '初始化密码',
  `AVATAR` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `SEX` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `EMAIL` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `PHONE` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `IDENTITY` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份 1SAAS管理员 2业务用户',
  `STATUS` int(0) NULL DEFAULT NULL COMMENT '状态 1正常 2冻结',
  `DEL_FLAG` tinyint(0) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除状态 0正常 1删除',
  `CREATE_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `UPDATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `ORG_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织机构ID',
  `TENANT_ID` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '租户ID',
  PRIMARY KEY (`ID`) USING BTREE,
  UNIQUE INDEX `UK_USERNAME`(`USERNAME`) USING BTREE,
  INDEX `IDX_STATUS`(`STATUS`) USING BTREE,
  INDEX `IDX_DEL_FLAG`(`DEL_FLAG`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('78fcad6f68f13096770c78cc7b9427f7', '123', '49a095e4aa4dd2e8035ee2b5e5277832', 'ad788d8111d001b9ba761f8e734df2fe', '123', NULL, '', '1', '123@1.com', '13222222222', NULL, 1, 0, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_user` VALUES ('dd05fef62018083785c392ac3860a9ec', '232', '3dad84f8de023715ad4a70ee60f22b2b', '592a436ec91d9b26d384ab70334ac1ff', '222', NULL, '', '1', '', '', NULL, 1, 1, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_user` VALUES ('ef557d5b42c886a74475ae6991fcfa0d', '122', 'd6b1c4ec59c9fcb030ba2c4af8ab1eb6', '1a76355f6691876587cac3f2ed65d6dc', '22', NULL, '', '1', '1212@1.com', '13121221222', NULL, 1, 1, NULL, NULL, NULL, NULL, '', '');
INSERT INTO `sys_user` VALUES ('efd292c521bd11eb8dfdb0262880441f', 'admin', 'b0ccb838ebc8b770d7e2ab7c5a1c49e4', '8c4092661946040c6c374d9b17642978', '管理员', NULL, NULL, '1', NULL, NULL, '2', 1, 0, 'admin', '2020-08-04 16:48:22', 'admin', '2020-12-24 11:19:06', '10010001', '');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  INDEX `index2_groupuu_user_id`(`user_id`) USING BTREE,
  INDEX `index2_groupuu_ole_id`(`role_id`) USING BTREE,
  INDEX `index2_groupuu_useridandroleid`(`user_id`, `role_id`) USING BTREE,
  INDEX `idx_sur_user_id`(`user_id`) USING BTREE,
  INDEX `idx_sur_role_id`(`role_id`) USING BTREE,
  INDEX `idx_sur_user_role_id`(`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('efd292c521bd11eb8dfdb0262880441f', 'f6817f48af4fb3af11b9e8bf182f618b');

SET FOREIGN_KEY_CHECKS = 1;
