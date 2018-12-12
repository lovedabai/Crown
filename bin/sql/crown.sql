/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50718
 Source Host           : localhost
 Source Database       : crown

 Target Server Type    : MySQL
 Target Server Version : 50718
 File Encoding         : utf-8

 Date: 12/11/2018 14:36:50 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `menu_name` varchar(32) NOT NULL COMMENT '菜单名称',
  `path` varchar(64) DEFAULT NULL COMMENT '路径',
  `menu_type` smallint(2) NOT NULL COMMENT '类型:0:目录,1:菜单,2:按钮',
  `icon` varchar(32) DEFAULT NULL COMMENT '菜单图标',
  `create_uid` int(11) NOT NULL COMMENT '创建者ID',
  `update_uid` int(11) NOT NULL COMMENT '修改者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `status` smallint(2) NOT NULL COMMENT '状态 0：禁用 1：正常',
  `router` varchar(64) DEFAULT NULL COMMENT '路由',
  `alias` varchar(64) DEFAULT NULL COMMENT '别名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COMMENT='菜单表';

-- ----------------------------
--  Records of `sys_menu`
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES ('1', '0', '系统管理', '', '1', 'layui-icon-set', '1', '1', '2018-11-27 14:52:10', '2018-11-27 15:11:15', '0', null, ''), ('23', '1', '用户管理', 'views/user/index.html', '2', 'layui-icon-username', '1', '1', '2018-11-27 15:10:32', '2018-12-11 11:04:22', '0', 'user', 'sys:user:list'), ('24', '1', '角色管理', 'views/role/index.html', '2', 'layui-icon-face-surprised', '1', '1', '2018-11-27 15:16:59', '2018-12-11 11:05:17', '0', 'role', 'sys:role:list'), ('25', '1', '菜单管理', 'views/menu/index.html', '2', 'layui-icon-template', '1', '1', '2018-11-27 15:17:59', '2018-12-11 11:06:05', '0', 'menu', 'sys:menu:list'), ('26', '1', '资源管理', 'views/resource/index.html', '2', 'layui-icon-read', '1', '1', '2018-11-27 15:18:31', '2018-12-11 11:06:50', '0', 'resource', 'sys:resource:list'), ('27', '26', '刷新资源', '', '3', 'layui-icon-refresh-3', '1', '1', '2018-11-27 15:19:15', '2018-12-11 11:07:40', '0', null, 'sys:resource:refresh'), ('28', '25', '添加', '', '3', 'layui-icon-add-circle-fine', '1', '1', '2018-11-27 15:20:06', '2018-12-11 11:06:13', '0', null, 'sys:menu:add'), ('29', '25', '修改', '', '3', 'layui-icon-senior', '1', '1', '2018-11-27 15:20:27', '2018-12-11 11:06:20', '0', null, 'sys:menu:edit'), ('30', '25', '删除', '', '3', 'layui-icon-close', '1', '1', '2018-11-27 15:21:14', '2018-12-11 11:06:28', '0', null, 'sys:menu:delete'), ('31', '24', '添加', '', '3', 'layui-icon-add-circle-fine', '1', '1', '2018-11-27 15:20:06', '2018-12-11 11:05:24', '0', null, 'sys:role:add'), ('32', '24', '修改', '', '3', 'layui-icon-senior', '1', '1', '2018-11-27 15:20:27', '2018-12-11 11:05:32', '0', null, 'sys:role:edit'), ('33', '24', '删除', '', '3', 'layui-icon-close', '1', '1', '2018-11-27 15:21:14', '2018-12-11 11:05:39', '0', null, 'sys:role:delete'), ('34', '23', '添加', '', '3', 'layui-icon-add-circle-fine', '1', '1', '2018-11-27 15:20:06', '2018-12-11 11:04:32', '0', null, 'sys:user:add'), ('35', '23', '修改', '', '3', 'layui-icon-senior', '1', '1', '2018-11-27 15:20:27', '2018-12-11 11:04:39', '0', null, 'sys:user:edit'), ('36', '23', '重置密码', '', '3', 'layui-icon-fire', '1', '1', '2018-11-27 15:21:14', '2018-12-11 11:05:00', '0', null, 'sys:user:resetpwd'), ('42', '24', '菜单授权', null, '3', 'layui-icon-auz', '1', '1', '2018-12-08 23:58:42', '2018-12-11 11:05:53', '0', null, 'sys:role:perm');
COMMIT;

-- ----------------------------
--  Table structure for `sys_menu_resource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_resource`;
CREATE TABLE `sys_menu_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_id` int(11) DEFAULT NULL COMMENT '菜单ID',
  `resource_id` varchar(32) DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COMMENT='菜单资源关系表';

-- ----------------------------
--  Records of `sys_menu_resource`
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu_resource` VALUES ('44', '23', '228887b7276edbacaed5954c97f5090a'), ('45', '23', '49764a50d0e0f74790ced2586b03bff8'), ('46', '34', '9be8e0df48c8ba879e5b079c73662ee4'), ('47', '35', '54522abbe7d3a2a40e7edbc9339acc50'), ('48', '35', '6c3514540b1e2e1589a9c9566273c7c7'), ('49', '36', '306628750eb9d14b64193fdfc42a2d61'), ('50', '24', '470c01a7ac3fbe02548f2abd372fff60'), ('51', '31', '46a5d7a79e6ba91e6709f3361a2edd81'), ('52', '32', 'b7b1c22076c0d28c8d0fe4c0b09b6a6e'), ('53', '32', '5e5b895e3d4dcef7510ea77fa6b4fb32'), ('54', '33', 'ddf4e3fd39264da50eec54cfd02731f4'), ('55', '42', 'a981e0acddb91de6f2a6f3f2e8ef350e'), ('56', '42', '6464c54afd4a12fca4b32d318dffee0c'), ('57', '25', 'de8b6406105c3ea1c71de78e0870595e'), ('58', '25', '6464c54afd4a12fca4b32d318dffee0c'), ('59', '28', '3a62355efcfa84646b390d508efea9b6'), ('60', '28', '59e61b4b812fba167ba2d0b55ac61ea1'), ('61', '28', 'd83a249e0e0ed84806ecba2fd8c7148d'), ('62', '29', '37687195b63b44e0d22436080de117bc'), ('63', '29', '59e61b4b812fba167ba2d0b55ac61ea1'), ('64', '29', 'd83a249e0e0ed84806ecba2fd8c7148d'), ('65', '29', '375edb54e85dc981c8df62c76f3782ed'), ('66', '30', '15da52a5f4f4a6eac3b0d6f046f040c9'), ('68', '26', 'a8bb9f9e46fe013125532c6b7747e07f'), ('69', '27', 'd88bbe26ec9af41d418924c15bfb3a21');
COMMIT;

-- ----------------------------
--  Table structure for `sys_resource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` varchar(32) NOT NULL,
  `resource_name` varchar(32) NOT NULL COMMENT '资源名称',
  `mapping` varchar(64) NOT NULL COMMENT '路径映射',
  `method` varchar(6) NOT NULL COMMENT '请求方式',
  `auth_type` smallint(2) NOT NULL COMMENT '权限认证类型',
  `update_time` datetime DEFAULT NULL,
  `perm` varchar(68) NOT NULL COMMENT '权限标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='资源表';

-- ----------------------------
--  Records of `sys_resource`
-- ----------------------------
BEGIN;
INSERT INTO `sys_resource` VALUES ('15da52a5f4f4a6eac3b0d6f046f040c9', '删除菜单', '/menu/{id}', 'DELETE', '3', '2018-12-11 14:11:38', 'DELETE:/menu/{id}'), ('228887b7276edbacaed5954c97f5090a', '查询所有用户', '/user', 'GET', '3', '2018-12-11 14:11:38', 'GET:/user'), ('2fd8f53f78a2ec49f551caa88f2d676f', '查询所有角色', '/role/roles', 'GET', '3', '2018-12-11 14:11:38', 'GET:/role/roles'), ('306628750eb9d14b64193fdfc42a2d61', '重置用户密码', '/user/{id}/password/reset', 'PUT', '3', '2018-12-11 14:11:38', 'PUT:/user/{id}/password/reset'), ('375edb54e85dc981c8df62c76f3782ed', '查询单个菜单', '/menu/{id}', 'GET', '3', '2018-12-11 14:11:38', 'GET:/menu/{id}'), ('37687195b63b44e0d22436080de117bc', '修改菜单', '/menu/{id}', 'PUT', '3', '2018-12-11 14:11:38', 'PUT:/menu/{id}'), ('3a62355efcfa84646b390d508efea9b6', '添加菜单', '/menu', 'POST', '3', '2018-12-11 14:11:38', 'POST:/menu'), ('46a5d7a79e6ba91e6709f3361a2edd81', '添加角色', '/role', 'POST', '3', '2018-12-11 14:11:38', 'POST:/role'), ('470c01a7ac3fbe02548f2abd372fff60', '查询所有角色(分页)', '/role', 'GET', '3', '2018-12-11 14:11:38', 'GET:/role'), ('49764a50d0e0f74790ced2586b03bff8', '设置用户状态', '/user/{id}/status', 'PUT', '3', '2018-12-11 14:11:38', 'PUT:/user/{id}/status'), ('5446595d232bb7a83c02b2710c5b537c', '获取用户详情', '/user/details', 'GET', '1', '2018-12-11 14:11:38', 'GET:/user/details'), ('54522abbe7d3a2a40e7edbc9339acc50', '修改用户', '/user/{id}', 'PUT', '3', '2018-12-11 14:11:38', 'PUT:/user/{id}'), ('59e61b4b812fba167ba2d0b55ac61ea1', '查询所有资源', '/resource/resources', 'GET', '3', '2018-12-11 14:11:38', 'GET:/resource/resources'), ('5e5b895e3d4dcef7510ea77fa6b4fb32', '查询单个角色', '/role/{id}', 'GET', '3', '2018-12-11 14:11:38', 'GET:/role/{id}'), ('6464c54afd4a12fca4b32d318dffee0c', '查询所有菜单', '/menu', 'GET', '3', '2018-12-11 14:11:38', 'GET:/menu'), ('6ab0f8a49671e489f11a1bef2fcaf102', '清除Token', '/account/token', 'DELETE', '1', '2018-12-11 14:11:38', 'DELETE:/account/token'), ('6c3514540b1e2e1589a9c9566273c7c7', '查询单个用户', '/user/{id}', 'GET', '3', '2018-12-11 14:11:38', 'GET:/user/{id}'), ('7eb82846df62890a8a7a2cebc1cd76f7', '修改用户信息', '/user/info', 'PUT', '1', '2018-12-11 14:11:38', 'PUT:/user/info'), ('842e33410b5a97b6c797e4782c97a90e', '获取Token', '/account/token', 'POST', '2', '2018-12-11 14:11:38', 'POST:/account/token'), ('9a775d6cd9034e13d636d353d5b7944f', '获取用户权限按钮', '/user/perm/botton/aliases', 'GET', '1', '2018-12-11 14:11:38', 'GET:/user/perm/botton/aliases'), ('9be8e0df48c8ba879e5b079c73662ee4', '创建用户', '/user', 'POST', '3', '2018-12-11 14:11:38', 'POST:/user'), ('a8bb9f9e46fe013125532c6b7747e07f', '查询所有资源(分页)', '/resource', 'GET', '3', '2018-12-11 14:11:38', 'GET:/resource'), ('a981e0acddb91de6f2a6f3f2e8ef350e', '关联菜单', '/role/{id}/menus', 'POST', '3', '2018-12-11 14:11:38', 'POST:/role/{id}/menus'), ('ae60708a9b8f749fc5b621b7ee3de1ce', '获取用户权限菜单', '/user/perm/menus', 'GET', '1', '2018-12-11 14:11:38', 'GET:/user/perm/menus'), ('b7b1c22076c0d28c8d0fe4c0b09b6a6e', '修改角色', '/role/{id}', 'PUT', '3', '2018-12-11 14:11:38', 'PUT:/role/{id}'), ('c2db9729dcd4a7d703e45411bb445dfd', '修改密码', '/account/password', 'PUT', '1', '2018-12-11 14:11:38', 'PUT:/account/password'), ('d14123b643cc14cf150e3c08b938c216', '获取用户权限按钮', '/user/perm/bottons', 'GET', '3', '2018-12-10 16:42:51', 'GET:/user/perm/bottons'), ('d83a249e0e0ed84806ecba2fd8c7148d', '查询父级菜单(下拉框)', '/menu/combos', 'GET', '2', '2018-12-11 14:11:38', 'GET:/menu/combos'), ('d88bbe26ec9af41d418924c15bfb3a21', '刷新资源', '/resource/refresh', 'PUT', '3', '2018-12-11 14:11:38', 'PUT:/resource/refresh'), ('ddf4e3fd39264da50eec54cfd02731f4', '删除角色', '/role/{id}', 'DELETE', '3', '2018-12-11 14:11:38', 'DELETE:/role/{id}'), ('de8b6406105c3ea1c71de78e0870595e', '设置菜单状态', '/menu/{id}/status', 'PUT', '3', '2018-12-11 14:11:38', 'PUT:/menu/{id}/status');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '角色名称',
  `create_uid` int(11) NOT NULL COMMENT '创建者ID',
  `update_uid` int(11) NOT NULL COMMENT '修改者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `remark` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='角色表';

-- ----------------------------
--  Records of `sys_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('1', '超级管理员', '1', '1', '2018-11-12 15:59:43', '2018-11-12 15:59:47', '超级管理员'), ('2', '普通管理员', '1', '1', '2018-11-12 16:00:17', '2018-11-12 16:00:19', '普通管理员');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `menu_id` int(11) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COMMENT='角色菜单关系表';

-- ----------------------------
--  Records of `sys_role_menu`
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES ('175', '1', '1'), ('176', '1', '23'), ('177', '1', '34'), ('178', '1', '35'), ('179', '1', '36'), ('180', '1', '24'), ('181', '1', '31'), ('182', '1', '32'), ('183', '1', '33'), ('184', '1', '42'), ('185', '1', '25'), ('186', '1', '28'), ('187', '1', '29'), ('188', '1', '30'), ('189', '1', '26'), ('190', '1', '27'), ('191', '2', '1'), ('192', '2', '23'), ('193', '2', '36'), ('194', '2', '24'), ('195', '2', '32'), ('196', '2', '25'), ('197', '2', '29'), ('198', '2', '26'), ('199', '2', '27');
COMMIT;

-- ----------------------------
--  Table structure for `sys_role_resource`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL COMMENT '角色ID',
  `resource_id` varchar(32) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='角色资源关系表';

-- ----------------------------
--  Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(50) NOT NULL COMMENT '用户名',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机',
  `status` smallint(2) NOT NULL COMMENT '状态 0：禁用 1：正常',
  `create_uid` int(11) NOT NULL COMMENT '创建者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `login_name` varchar(16) NOT NULL COMMENT '登陆名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `ip` varchar(32) DEFAULT NULL COMMENT 'IP地址',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='系统用户表';

-- ----------------------------
--  Records of `sys_user`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', 'Crown', 'caratacus@qq.com', '13712345678', '0', '1', '2018-11-05 17:19:05', '2018-12-11 14:35:31', 'crown', '$apr1$crown$WQ2TEXVPUJ8l6N6gm0CGv.', '0:0:0:0:0:0:0:1'), ('18', 'crown1', '11@qq.com', '13718867899', '0', '1', '2018-11-19 18:56:19', '2018-12-11 14:35:45', 'crown1', '$apr1$crown1$NsepppGmlSjqtwPTlaLb1/', '0:0:0:0:0:0:0:1'), ('19', 'crown2', '13878929833@163.com', '13878929833', '1', '18', '2018-12-10 15:25:57', '2018-12-10 15:25:57', 'crown2', '$apr1$crown2$R/8LgZ.REDrXB3jlpyglI0', null);
COMMIT;

-- ----------------------------
--  Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '用户ID',
  `role_id` int(11) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COMMENT='系统用户角色关系表';

-- ----------------------------
--  Records of `sys_user_role`
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES ('24', '18', '2'), ('49', '1', '1'), ('50', '19', '2');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
