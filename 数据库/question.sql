/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : question

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-05-14 11:31:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '失败次数',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '登录IP',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(59) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Session标识',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'Admin', '1e2440edbc1984f674d36eb0713fe3b1', '10721c', '/assets/img/avatar.png', 'admin@admin.com', '0', '1589422125', '123.181.132.18', '1492186163', '1589422125', 'cd7a2708-a421-4d06-9b2a-74674d9404ff', 'normal');

-- ----------------------------
-- Table structure for admin_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_log`;
CREATE TABLE `admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `username` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '管理员名字',
  `url` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '操作页面',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '日志标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'IP',
  `useragent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'User-Agent',
  `createtime` int(10) DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`),
  KEY `name` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='管理员日志表';

-- ----------------------------
-- Records of admin_log
-- ----------------------------
INSERT INTO `admin_log` VALUES ('1', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Findex%2F45', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/index\\/45\",\"__token__\":\"dc7e006f3da616556f86e380ce3da788\",\"username\":\"admin\",\"captcha\":\"Ryrt\"}', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1589197290');
INSERT INTO `admin_log` VALUES ('2', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fdashboard%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/dashboard?ref=addtabs\",\"__token__\":\"c4ccbc111d1b080f5a4a8be5c1054ec1\",\"username\":\"admin\",\"captcha\":\"F5R3\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589197365');
INSERT INTO `admin_log` VALUES ('3', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\",\"__token__\":\"45c13d7d68aacdd1017a7420792d4479\",\"username\":\"admin\",\"captcha\":\"dnWe\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589198425');
INSERT INTO `admin_log` VALUES ('4', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/rule/del/ids/66', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"66\",\"params\":\"\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589198715');
INSERT INTO `admin_log` VALUES ('5', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/index', '', '{\"action\":\"refreshmenu\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589198716');
INSERT INTO `admin_log` VALUES ('6', '1', 'admin', '/dashboard/public/AtIldRaFen.php/ajax/upload', '', '{\"name\":\"d27f5b513eb13525662da35313feb040.mp4\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589199801');
INSERT INTO `admin_log` VALUES ('7', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/1126342a7a9799bcff9404ab9a1342d2.mp4\",\"questionA\":\"test A\",\"questionB\":\"test B\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589200611');
INSERT INTO `admin_log` VALUES ('8', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/del/ids/6961', '题目中心 删除', '{\"action\":\"del\",\"ids\":\"6961\",\"params\":\"\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589200724');
INSERT INTO `admin_log` VALUES ('9', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/1126342a7a9799bcff9404ab9a1342d2.mp4\",\"questionA\":\"test A\",\"questionB\":\"test B\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589200734');
INSERT INTO `admin_log` VALUES ('10', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/del/ids/6962', '题目中心 删除', '{\"action\":\"del\",\"ids\":\"6962\",\"params\":\"\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589200801');
INSERT INTO `admin_log` VALUES ('11', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/1126342a7a9799bcff9404ab9a1342d2.mp4\",\"questionA\":\"test A\",\"questionB\":\"test B\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589200879');
INSERT INTO `admin_log` VALUES ('12', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/del/ids/6963', '题目中心 删除', '{\"action\":\"del\",\"ids\":\"6963\",\"params\":\"\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589200909');
INSERT INTO `admin_log` VALUES ('13', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fquestioncenter%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/questioncenter?ref=addtabs\",\"__token__\":\"de5c9f56cf4032fac43a401487208f48\",\"username\":\"admin\",\"captcha\":\"MZV3\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589201038');
INSERT INTO `admin_log` VALUES ('14', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/1126342a7a9799bcff9404ab9a1342d2.mp4\",\"questionA\":\"test A\",\"questionB\":\"test B\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589201114');
INSERT INTO `admin_log` VALUES ('15', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/del/ids/6964', '题目中心 删除', '{\"action\":\"del\",\"ids\":\"6964\",\"params\":\"\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589201208');
INSERT INTO `admin_log` VALUES ('16', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/1126342a7a9799bcff9404ab9a1342d2.mp4\",\"questionA\":\"test A\",\"questionB\":\"test B\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589201248');
INSERT INTO `admin_log` VALUES ('17', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/del/ids/6965', '题目中心 删除', '{\"action\":\"del\",\"ids\":\"6965\",\"params\":\"\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202547');
INSERT INTO `admin_log` VALUES ('18', '1', 'admin', '/dashboard/public/AtIldRaFen.php/ajax/upload', '', '{\"name\":\"1.mp4\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202592');
INSERT INTO `admin_log` VALUES ('19', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/35fb9425801c96eaab4010357f5ccc50.mp4\",\"questionA\":\"test A1\",\"questionB\":\"test B1\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202608');
INSERT INTO `admin_log` VALUES ('20', '1', 'admin', '/dashboard/public/AtIldRaFen.php/ajax/upload', '', '{\"name\":\"2.mp4\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202621');
INSERT INTO `admin_log` VALUES ('21', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/4f04be9275acdb1862a70386681856c3.mp4\",\"questionA\":\"test A2\",\"questionB\":\"test B2\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202629');
INSERT INTO `admin_log` VALUES ('22', '1', 'admin', '/dashboard/public/AtIldRaFen.php/ajax/upload', '', '{\"name\":\"3.mp4\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202684');
INSERT INTO `admin_log` VALUES ('23', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/75ad3ecc78613f5e8af4a3995d72b790.mp4\",\"questionA\":\"test A3\",\"questionB\":\"test B3\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202695');
INSERT INTO `admin_log` VALUES ('24', '1', 'admin', '/dashboard/public/AtIldRaFen.php/ajax/upload', '', '{\"name\":\"4.mp4\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202707');
INSERT INTO `admin_log` VALUES ('25', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/7a67ed329f5a663116ae95169aa84d37.mp4\",\"questionA\":\"test A4\",\"questionB\":\"test B4\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202717');
INSERT INTO `admin_log` VALUES ('26', '1', 'admin', '/dashboard/public/AtIldRaFen.php/ajax/upload', '', '{\"name\":\"5.mp4\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202727');
INSERT INTO `admin_log` VALUES ('27', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/add?dialog=1', '题目中心 添加', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/1126342a7a9799bcff9404ab9a1342d2.mp4\",\"questionA\":\"test A5\",\"questionB\":\"test B5\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"voKids\"}}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589202736');
INSERT INTO `admin_log` VALUES ('28', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fquestioncenter%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/questioncenter?ref=addtabs\",\"__token__\":\"d5ca63bcacd7271abe2b2ca36adbb140\",\"username\":\"admin\",\"captcha\":\"Cnp7\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589253640');
INSERT INTO `admin_log` VALUES ('29', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fquestioncenter%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/questioncenter?ref=addtabs\",\"__token__\":\"fee3392259c02230b00a81f087238a3e\",\"username\":\"admin\",\"captcha\":\"BbLK\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589269555');
INSERT INTO `admin_log` VALUES ('30', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fquestioncenter%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/questioncenter?ref=addtabs\",\"__token__\":\"919b324c223b09f3b4cadd2d729f4866\",\"username\":\"admin\",\"captcha\":\"nm2A\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589340516');
INSERT INTO `admin_log` VALUES ('31', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fquestioncenter%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/questioncenter?ref=addtabs\",\"__token__\":\"181029024d7b3c9ed2f3a57af6202039\",\"username\":\"admin\",\"captcha\":\"JCFM\"}', '1.196.189.70', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589375106');
INSERT INTO `admin_log` VALUES ('32', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fquestioncenter%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/questioncenter?ref=addtabs\",\"__token__\":\"6177eec9c9e5750b39061fb06acd1ec1\",\"username\":\"admin\",\"captcha\":\"QUBV\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589417969');
INSERT INTO `admin_log` VALUES ('33', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/edit/ids/6970?dialog=1', '题目中心 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/1126342a7a9799bcff9404ab9a1342d2.mp4\",\"questionA\":\"test A5\",\"questionB\":\"test B5\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"\\u751f\\u6d3b\"},\"ids\":\"6970\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589418247');
INSERT INTO `admin_log` VALUES ('34', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/edit/ids/6969?dialog=1', '题目中心 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/7a67ed329f5a663116ae95169aa84d37.mp4\",\"questionA\":\"test A4\",\"questionB\":\"test B4\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"\\u751f\\u6d3b\"},\"ids\":\"6969\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589418254');
INSERT INTO `admin_log` VALUES ('35', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/rule/del/ids/103', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"103\",\"params\":\"\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419063');
INSERT INTO `admin_log` VALUES ('36', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/index', '', '{\"action\":\"refreshmenu\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419063');
INSERT INTO `admin_log` VALUES ('37', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/rule/del/ids/4', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"4\",\"params\":\"\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419131');
INSERT INTO `admin_log` VALUES ('38', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/index', '', '{\"action\":\"refreshmenu\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419132');
INSERT INTO `admin_log` VALUES ('39', '1', 'admin', '/dashboard/public/AtIldRaFen.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"af25fcfcd1145fc34d866efad5acb0c6\",\"row\":{\"name\":\"\\u82f1\\u8bed\\u7b54\\u9898\\u5c0f\\u7a0b\\u5e8f\\u540e\\u53f0\\u7ba1\\u7406\\u5e73\\u53f0\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419182');
INSERT INTO `admin_log` VALUES ('40', '1', 'admin', '/dashboard/public/AtIldRaFen.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"82c929ade2bf5621bceb23937404df1b\",\"row\":{\"name\":\"\\u82f1\\u8bed\\u7b54\\u9898\\u5c0f\\u7a0b\\u5e8f\\u540e\\u53f0\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419208');
INSERT INTO `admin_log` VALUES ('41', '1', 'admin', '/dashboard/public/AtIldRaFen.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"6bc4e86fd9ce9b7a0cf702285bc4cb72\",\"row\":{\"name\":\"\\u82f1\\u8bed\\u7b54\\u9898\\u5c0f\\u7a0b\\u5e8f\\u540e\\u53f0\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"dashboard\"}}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419217');
INSERT INTO `admin_log` VALUES ('42', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/rule/edit/ids/85?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"519c9357d91d4bb41875ff09bffea224\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"questioncenter\",\"title\":\"\\u9898\\u76ee\\u4e2d\\u5fc3\",\"icon\":\"fa fa-drivers-license\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"85\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419288');
INSERT INTO `admin_log` VALUES ('43', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/index', '', '{\"action\":\"refreshmenu\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419289');
INSERT INTO `admin_log` VALUES ('44', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/rule/edit/ids/91?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"de7677fbbe8199c37e6541ba15a782af\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"solve\",\"title\":\"\\u7b54\\u9898\\u7ba1\\u7406\",\"icon\":\"fa fa-blind\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"91\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419311');
INSERT INTO `admin_log` VALUES ('45', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/index', '', '{\"action\":\"refreshmenu\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419311');
INSERT INTO `admin_log` VALUES ('46', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/rule/del/ids/1', '权限管理 菜单规则 删除', '{\"action\":\"del\",\"ids\":\"1\",\"params\":\"\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419341');
INSERT INTO `admin_log` VALUES ('47', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/index', '', '{\"action\":\"refreshmenu\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419341');
INSERT INTO `admin_log` VALUES ('48', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/rule/edit/ids/97?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"f953a369c7b6cd8acf84b16a2167c412\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"userinfo\",\"title\":\"\\u7528\\u6237\\u57fa\\u672c\\u4fe1\\u606f\\u7ba1\\u7406\",\"icon\":\"fa fa-home\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"97\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419384');
INSERT INTO `admin_log` VALUES ('49', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/index', '', '{\"action\":\"refreshmenu\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419384');
INSERT INTO `admin_log` VALUES ('50', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/rule/edit/ids/97?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"015450f094146fd6538f318baaf89780\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"userinfo\",\"title\":\"\\u7528\\u6237\\u57fa\\u672c\\u4fe1\\u606f\\u7ba1\\u7406\",\"icon\":\"fa fa-user-plus\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"97\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419414');
INSERT INTO `admin_log` VALUES ('51', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/index', '', '{\"action\":\"refreshmenu\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419414');
INSERT INTO `admin_log` VALUES ('52', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/rule/edit/ids/109?dialog=1', '权限管理 菜单规则 编辑', '{\"dialog\":\"1\",\"__token__\":\"51db9290bdc3177089d770a5490177d1\",\"row\":{\"ismenu\":\"1\",\"pid\":\"0\",\"name\":\"qiandao\",\"title\":\"\\u7b7e\\u5230\\u7ba1\\u7406\",\"icon\":\"fa fa-hand-o-up\",\"weigh\":\"0\",\"condition\":\"\",\"remark\":\"\",\"status\":\"normal\"},\"ids\":\"109\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419432');
INSERT INTO `admin_log` VALUES ('53', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/index', '', '{\"action\":\"refreshmenu\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589419432');
INSERT INTO `admin_log` VALUES ('54', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fuserinfo%3Fref%3Daddtabs%26nsukey%3DSjFWdhuUjvKoswzFYyrCKYdHZywxTbaOv5vNhdEVF07oaZ5ja9%252BLvKQp6glhfEyjeWU8vF1ZWiBOCLNYfeSYIf3JY2X5zK1MW8ozp5CLogekywetsSrh4nucOfCffbk90YoqjEhClhYeQjiG4LNeypmxWuy4lIZxGNF5PXTBhwnNn7TNCj4uPIO84NoQYjDsDU8FPv4d55qgjRr8hMvW%252FQ%253D%253D&nsukey=mtXT6Bir45aAWjhSdfduZmzHFrU%2BFkJj6SApjnzfjNp5anzDVQUJUk3JUuOe%2BUVTwy%2Flf3T%2FV4P1I7ksu4KDLyNc3RK4GftuFuqbDAufogmFenoZ%2FiuvLMmxTMiRh6qcI%2B02KI1mv9H5kWboEDplNwdlZtbr3soqnbvCsLRy0EqUXIgu%2BYx0TnKlJPEJsHSk%2Bhn73rLQPE3lnGrTk79NOQ%3D%3D', '登录', '{\"__token__\":\"d2fc49205f41862c32f0575b689d82a3\",\"username\":\"admin\",\"captcha\":\"2yx8\"}', '123.181.132.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36 QBCore/4.0.1301.400 QQBrowser/9.0.2524.400 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2875.116 Safar', '1589419881');
INSERT INTO `admin_log` VALUES ('55', '1', 'admin', '/dashboard/public/AtIldRaFen.php/auth/group/roletree', '权限管理 角色组', '{\"id\":\"2\",\"pid\":\"1\"}', '123.181.132.18', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.116 Safari/537.36 QBCore/4.0.1301.400 QQBrowser/9.0.2524.400 Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2875.116 Safar', '1589420293');
INSERT INTO `admin_log` VALUES ('56', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/edit/ids/6970?dialog=1', '题目中心 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/1126342a7a9799bcff9404ab9a1342d2.mp4\",\"questionA\":\"test A5\",\"questionB\":\"test B5\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"\\u751f\\u6d3b\",\"questionmessage\":\"555\"},\"ids\":\"6970\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589421550');
INSERT INTO `admin_log` VALUES ('57', '1', 'admin', '/dashboard/public/AtIldRaFen.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"6192f8a8506a3d322ef01e6bd9fa133e\",\"row\":{\"name\":\"\\u82f1\\u8bed\\u7b54\\u9898\\u5c0f\\u7a0b\\u5e8f\\u540e\\u53f0\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"questioncenter\"}}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589421683');
INSERT INTO `admin_log` VALUES ('58', '1', 'admin', '/dashboard/public/AtIldRaFen.php/general.config/edit', '常规管理 系统配置 编辑', '{\"__token__\":\"c5523ee7b7f6c06c8f38586d028aebf6\",\"row\":{\"name\":\"\\u82f1\\u8bed\\u7b54\\u9898\\u5c0f\\u7a0b\\u5e8f\\u540e\\u53f0\",\"beian\":\"\",\"cdnurl\":\"\",\"version\":\"1.0.1\",\"timezone\":\"Asia\\/Shanghai\",\"forbiddenip\":\"\",\"languages\":\"{&quot;backend&quot;:&quot;zh-cn&quot;,&quot;frontend&quot;:&quot;zh-cn&quot;}\",\"fixedpage\":\"questioncenter\"}}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589421691');
INSERT INTO `admin_log` VALUES ('59', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/edit/ids/6970?dialog=1', '题目中心 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/1126342a7a9799bcff9404ab9a1342d2.mp4\",\"questionA\":\"test A5\",\"questionB\":\"test B5\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"\\u751f\\u6d3b\",\"questionmessage\":\"555\"},\"ids\":\"6970\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589421725');
INSERT INTO `admin_log` VALUES ('60', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fquestioncenter%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/questioncenter?ref=addtabs\",\"__token__\":\"ac4bd8369514fa513bc113c1568eb8ae\",\"username\":\"admin\",\"captcha\":\"3prR\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36 Edge/18.18363', '1589421829');
INSERT INTO `admin_log` VALUES ('61', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fquestioncenter%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/questioncenter?ref=addtabs\",\"__token__\":\"2d9abcd00c3e6be1434839e732816275\",\"username\":\"admin\",\"captcha\":\"DSZZ\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589421870');
INSERT INTO `admin_log` VALUES ('62', '1', 'admin', '/dashboard/public/AtIldRaFen.php/questioncenter/edit/ids/6969?dialog=1', '题目中心 编辑', '{\"dialog\":\"1\",\"row\":{\"title\":\"\\u60a8\\u542c\\u5230\\u7684\\u53e5\\u5b50\\u662f\\u4ec0\\u4e48\\uff1f\",\"videofile\":\"\\/uploads\\/20200511\\/7a67ed329f5a663116ae95169aa84d37.mp4\",\"questionA\":\"test A4\",\"questionB\":\"test B4\",\"questionT\":\"A\",\"questionSort\":\"Level 1\",\"questionType\":\"\\u751f\\u6d3b\",\"questionmessage\":\"666\"},\"ids\":\"6969\"}', '1.196.191.116', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '1589421878');
INSERT INTO `admin_log` VALUES ('63', '1', 'admin', '/dashboard/public/AtIldRaFen.php/index/login?url=%2Fdashboard%2Fpublic%2FAtIldRaFen.php%2Fuserinfo%3Fref%3Daddtabs', '登录', '{\"url\":\"\\/dashboard\\/public\\/AtIldRaFen.php\\/userinfo?ref=addtabs\",\"__token__\":\"1772c268955df9b154a6e32d28b94932\",\"username\":\"admin\",\"captcha\":\"cwuk\"}', '123.181.132.18', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.138 Safari/537.36', '1589422125');

-- ----------------------------
-- Table structure for attachment
-- ----------------------------
DROP TABLE IF EXISTS `attachment`;
CREATE TABLE `attachment` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '会员ID',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '物理路径',
  `imagewidth` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '宽度',
  `imageheight` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '高度',
  `imagetype` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片类型',
  `imageframes` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '图片帧数',
  `filesize` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '文件大小',
  `mimetype` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'mime类型',
  `extparam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '透传数据',
  `createtime` int(10) DEFAULT NULL COMMENT '创建日期',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `uploadtime` int(10) DEFAULT NULL COMMENT '上传时间',
  `storage` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'local' COMMENT '存储位置',
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件 sha1编码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';

-- ----------------------------
-- Records of attachment
-- ----------------------------
INSERT INTO `attachment` VALUES ('1', '1', '0', '/assets/img/qrcode.png', '150', '150', 'png', '0', '21859', 'image/png', '', '1499681848', '1499681848', '1499681848', 'local', '17163603d0263e4838b9387ff2cd4877e8b018f6');
INSERT INTO `attachment` VALUES ('2', '1', '0', '/uploads/20200511/1126342a7a9799bcff9404ab9a1342d2.mp4', '', '', 'mp4', '0', '305091', 'video/mp4', '{\"name\":\"d27f5b513eb13525662da35313feb040.mp4\"}', '1589199801', '1589199801', '1589199801', 'local', '315cac15e12548b9d7f46c39d3d6350e60800ae0');
INSERT INTO `attachment` VALUES ('3', '1', '0', '/uploads/20200511/35fb9425801c96eaab4010357f5ccc50.mp4', '', '', 'mp4', '0', '138954', 'video/mp4', '{\"name\":\"1.mp4\"}', '1589202592', '1589202592', '1589202592', 'local', '1b641b0d0815fff13c456278880c76ce00f1e9ed');
INSERT INTO `attachment` VALUES ('4', '1', '0', '/uploads/20200511/4f04be9275acdb1862a70386681856c3.mp4', '', '', 'mp4', '0', '1133323', 'video/mp4', '{\"name\":\"2.mp4\"}', '1589202621', '1589202621', '1589202621', 'local', 'fd9d8c1ca086bd78723b89b3886845954ffc4516');
INSERT INTO `attachment` VALUES ('5', '1', '0', '/uploads/20200511/75ad3ecc78613f5e8af4a3995d72b790.mp4', '', '', 'mp4', '0', '330566', 'video/mp4', '{\"name\":\"3.mp4\"}', '1589202684', '1589202684', '1589202684', 'local', 'c363ae93168f57aa59b131da2c4f0c977067c681');
INSERT INTO `attachment` VALUES ('6', '1', '0', '/uploads/20200511/7a67ed329f5a663116ae95169aa84d37.mp4', '', '', 'mp4', '0', '1005666', 'video/mp4', '{\"name\":\"4.mp4\"}', '1589202707', '1589202707', '1589202707', 'local', '7ae73038c81fee47487f93df44a5659d2d126583');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '父组别',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '规则ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分组表';

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES ('1', '0', 'Admin group', '*', '1490883540', '149088354', 'normal');
INSERT INTO `auth_group` VALUES ('2', '1', 'Second group', '13,14,16,15,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,1,9,10,11,7,6,8,2,4,5', '1490883540', '1505465692', 'normal');
INSERT INTO `auth_group` VALUES ('3', '2', 'Third group', '1,4,9,10,11,13,14,15,16,17,40,41,42,43,44,45,46,47,48,49,50,55,56,57,58,59,60,61,62,63,64,65,5', '1490883540', '1502205322', 'normal');
INSERT INTO `auth_group` VALUES ('4', '1', 'Second group 2', '1,4,13,14,15,16,17,55,56,57,58,59,60,61,62,63,64,65', '1490883540', '1502205350', 'normal');
INSERT INTO `auth_group` VALUES ('5', '2', 'Third group 2', '1,2,6,7,8,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34', '1490883540', '1502205344', 'normal');

-- ----------------------------
-- Table structure for auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_access`;
CREATE TABLE `auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '会员ID',
  `group_id` int(10) unsigned NOT NULL COMMENT '级别ID',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='权限分组表';

-- ----------------------------
-- Records of auth_group_access
-- ----------------------------
INSERT INTO `auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('menu','file') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'file' COMMENT 'menu为菜单,file为权限节点',
  `pid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '父ID',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则名称',
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图标',
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '条件',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '是否为菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE,
  KEY `pid` (`pid`),
  KEY `weigh` (`weigh`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='节点表';

-- ----------------------------
-- Records of auth_rule
-- ----------------------------
INSERT INTO `auth_rule` VALUES ('2', 'file', '0', 'general', 'General', 'fa fa-cogs', '', '', '1', '1497429920', '1497430169', '137', 'normal');
INSERT INTO `auth_rule` VALUES ('3', 'file', '0', 'category', 'Category', 'fa fa-leaf', '', 'Category tips', '1', '1497429920', '1497429920', '119', 'normal');
INSERT INTO `auth_rule` VALUES ('5', 'file', '0', 'auth', 'Auth', 'fa fa-group', '', '', '1', '1497429920', '1497430092', '99', 'normal');
INSERT INTO `auth_rule` VALUES ('6', 'file', '2', 'general/config', 'Config', 'fa fa-cog', '', 'Config tips', '1', '1497429920', '1497430683', '60', 'normal');
INSERT INTO `auth_rule` VALUES ('7', 'file', '2', 'general/attachment', 'Attachment', 'fa fa-file-image-o', '', 'Attachment tips', '1', '1497429920', '1497430699', '53', 'normal');
INSERT INTO `auth_rule` VALUES ('8', 'file', '2', 'general/profile', 'Profile', 'fa fa-user', '', '', '1', '1497429920', '1497429920', '34', 'normal');
INSERT INTO `auth_rule` VALUES ('9', 'file', '5', 'auth/admin', 'Admin', 'fa fa-user', '', 'Admin tips', '1', '1497429920', '1497430320', '118', 'normal');
INSERT INTO `auth_rule` VALUES ('10', 'file', '5', 'auth/adminlog', 'Admin log', 'fa fa-list-alt', '', 'Admin log tips', '1', '1497429920', '1497430307', '113', 'normal');
INSERT INTO `auth_rule` VALUES ('11', 'file', '5', 'auth/group', 'Group', 'fa fa-group', '', 'Group tips', '1', '1497429920', '1497429920', '109', 'normal');
INSERT INTO `auth_rule` VALUES ('12', 'file', '5', 'auth/rule', 'Rule', 'fa fa-bars', '', 'Rule tips', '1', '1497429920', '1497430581', '104', 'normal');
INSERT INTO `auth_rule` VALUES ('18', 'file', '6', 'general/config/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '52', 'normal');
INSERT INTO `auth_rule` VALUES ('19', 'file', '6', 'general/config/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '51', 'normal');
INSERT INTO `auth_rule` VALUES ('20', 'file', '6', 'general/config/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '50', 'normal');
INSERT INTO `auth_rule` VALUES ('21', 'file', '6', 'general/config/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '49', 'normal');
INSERT INTO `auth_rule` VALUES ('22', 'file', '6', 'general/config/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '48', 'normal');
INSERT INTO `auth_rule` VALUES ('23', 'file', '7', 'general/attachment/index', 'View', 'fa fa-circle-o', '', 'Attachment tips', '0', '1497429920', '1497429920', '59', 'normal');
INSERT INTO `auth_rule` VALUES ('24', 'file', '7', 'general/attachment/select', 'Select attachment', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '58', 'normal');
INSERT INTO `auth_rule` VALUES ('25', 'file', '7', 'general/attachment/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '57', 'normal');
INSERT INTO `auth_rule` VALUES ('26', 'file', '7', 'general/attachment/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '56', 'normal');
INSERT INTO `auth_rule` VALUES ('27', 'file', '7', 'general/attachment/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '55', 'normal');
INSERT INTO `auth_rule` VALUES ('28', 'file', '7', 'general/attachment/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '54', 'normal');
INSERT INTO `auth_rule` VALUES ('29', 'file', '8', 'general/profile/index', 'View', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '33', 'normal');
INSERT INTO `auth_rule` VALUES ('30', 'file', '8', 'general/profile/update', 'Update profile', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '32', 'normal');
INSERT INTO `auth_rule` VALUES ('31', 'file', '8', 'general/profile/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '31', 'normal');
INSERT INTO `auth_rule` VALUES ('32', 'file', '8', 'general/profile/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '30', 'normal');
INSERT INTO `auth_rule` VALUES ('33', 'file', '8', 'general/profile/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '29', 'normal');
INSERT INTO `auth_rule` VALUES ('34', 'file', '8', 'general/profile/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '28', 'normal');
INSERT INTO `auth_rule` VALUES ('35', 'file', '3', 'category/index', 'View', 'fa fa-circle-o', '', 'Category tips', '0', '1497429920', '1497429920', '142', 'normal');
INSERT INTO `auth_rule` VALUES ('36', 'file', '3', 'category/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '141', 'normal');
INSERT INTO `auth_rule` VALUES ('37', 'file', '3', 'category/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '140', 'normal');
INSERT INTO `auth_rule` VALUES ('38', 'file', '3', 'category/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '139', 'normal');
INSERT INTO `auth_rule` VALUES ('39', 'file', '3', 'category/multi', 'Multi', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '138', 'normal');
INSERT INTO `auth_rule` VALUES ('40', 'file', '9', 'auth/admin/index', 'View', 'fa fa-circle-o', '', 'Admin tips', '0', '1497429920', '1497429920', '117', 'normal');
INSERT INTO `auth_rule` VALUES ('41', 'file', '9', 'auth/admin/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '116', 'normal');
INSERT INTO `auth_rule` VALUES ('42', 'file', '9', 'auth/admin/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '115', 'normal');
INSERT INTO `auth_rule` VALUES ('43', 'file', '9', 'auth/admin/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '114', 'normal');
INSERT INTO `auth_rule` VALUES ('44', 'file', '10', 'auth/adminlog/index', 'View', 'fa fa-circle-o', '', 'Admin log tips', '0', '1497429920', '1497429920', '112', 'normal');
INSERT INTO `auth_rule` VALUES ('45', 'file', '10', 'auth/adminlog/detail', 'Detail', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '111', 'normal');
INSERT INTO `auth_rule` VALUES ('46', 'file', '10', 'auth/adminlog/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '110', 'normal');
INSERT INTO `auth_rule` VALUES ('47', 'file', '11', 'auth/group/index', 'View', 'fa fa-circle-o', '', 'Group tips', '0', '1497429920', '1497429920', '108', 'normal');
INSERT INTO `auth_rule` VALUES ('48', 'file', '11', 'auth/group/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '107', 'normal');
INSERT INTO `auth_rule` VALUES ('49', 'file', '11', 'auth/group/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '106', 'normal');
INSERT INTO `auth_rule` VALUES ('50', 'file', '11', 'auth/group/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '105', 'normal');
INSERT INTO `auth_rule` VALUES ('51', 'file', '12', 'auth/rule/index', 'View', 'fa fa-circle-o', '', 'Rule tips', '0', '1497429920', '1497429920', '103', 'normal');
INSERT INTO `auth_rule` VALUES ('52', 'file', '12', 'auth/rule/add', 'Add', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '102', 'normal');
INSERT INTO `auth_rule` VALUES ('53', 'file', '12', 'auth/rule/edit', 'Edit', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '101', 'normal');
INSERT INTO `auth_rule` VALUES ('54', 'file', '12', 'auth/rule/del', 'Delete', 'fa fa-circle-o', '', '', '0', '1497429920', '1497429920', '100', 'normal');
INSERT INTO `auth_rule` VALUES ('85', 'file', '0', 'questioncenter', '题目中心', 'fa fa-drivers-license', '', '', '1', '1589199265', '1589419288', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('86', 'file', '85', 'questioncenter/index', '查看', 'fa fa-circle-o', '', '', '0', '1589199265', '1589421788', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('87', 'file', '85', 'questioncenter/add', '添加', 'fa fa-circle-o', '', '', '0', '1589199265', '1589421788', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('88', 'file', '85', 'questioncenter/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1589199265', '1589421788', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('89', 'file', '85', 'questioncenter/del', '删除', 'fa fa-circle-o', '', '', '0', '1589199265', '1589421788', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('90', 'file', '85', 'questioncenter/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1589199265', '1589421788', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('91', 'file', '0', 'solve', '答题管理', 'fa fa-blind', '', '', '1', '1589418911', '1589419311', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('92', 'file', '91', 'solve/index', '查看', 'fa fa-circle-o', '', '', '0', '1589418911', '1589418911', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('93', 'file', '91', 'solve/add', '添加', 'fa fa-circle-o', '', '', '0', '1589418911', '1589418911', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('94', 'file', '91', 'solve/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1589418911', '1589418911', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('95', 'file', '91', 'solve/del', '删除', 'fa fa-circle-o', '', '', '0', '1589418911', '1589418911', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('96', 'file', '91', 'solve/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1589418911', '1589418911', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('97', 'file', '0', 'userinfo', '用户基本信息管理', 'fa fa-user-plus', '', '', '1', '1589418940', '1589419414', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('98', 'file', '97', 'userinfo/index', '查看', 'fa fa-circle-o', '', '', '0', '1589418940', '1589418940', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('99', 'file', '97', 'userinfo/add', '添加', 'fa fa-circle-o', '', '', '0', '1589418940', '1589418940', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('100', 'file', '97', 'userinfo/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1589418940', '1589418940', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('101', 'file', '97', 'userinfo/del', '删除', 'fa fa-circle-o', '', '', '0', '1589418940', '1589418940', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('102', 'file', '97', 'userinfo/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1589418940', '1589418940', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('109', 'file', '0', 'qiandao', '签到管理', 'fa fa-hand-o-up', '', '', '1', '1589419075', '1589419432', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('110', 'file', '109', 'qiandao/index', '查看', 'fa fa-circle-o', '', '', '0', '1589419075', '1589421504', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('111', 'file', '109', 'qiandao/add', '添加', 'fa fa-circle-o', '', '', '0', '1589419075', '1589421504', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('112', 'file', '109', 'qiandao/edit', '编辑', 'fa fa-circle-o', '', '', '0', '1589419075', '1589421504', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('113', 'file', '109', 'qiandao/del', '删除', 'fa fa-circle-o', '', '', '0', '1589419075', '1589421504', '0', 'normal');
INSERT INTO `auth_rule` VALUES ('114', 'file', '109', 'qiandao/multi', '批量更新', 'fa fa-circle-o', '', '', '0', '1589419075', '1589421504', '0', 'normal');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '父ID',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '栏目类型',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `diyname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '自定义名称',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `weigh` (`weigh`,`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='分类表';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '0', 'page', '官方新闻', 'news', 'recommend', '/assets/img/qrcode.png', '', '', 'news', '1495262190', '1495262190', '1', 'normal');
INSERT INTO `category` VALUES ('2', '0', 'page', '移动应用', 'mobileapp', 'hot', '/assets/img/qrcode.png', '', '', 'mobileapp', '1495262244', '1495262244', '2', 'normal');
INSERT INTO `category` VALUES ('3', '2', 'page', '微信公众号', 'wechatpublic', 'index', '/assets/img/qrcode.png', '', '', 'wechatpublic', '1495262288', '1495262288', '3', 'normal');
INSERT INTO `category` VALUES ('4', '2', 'page', 'Android开发', 'android', 'recommend', '/assets/img/qrcode.png', '', '', 'android', '1495262317', '1495262317', '4', 'normal');
INSERT INTO `category` VALUES ('5', '0', 'page', '软件产品', 'software', 'recommend', '/assets/img/qrcode.png', '', '', 'software', '1495262336', '1499681850', '5', 'normal');
INSERT INTO `category` VALUES ('6', '5', 'page', '网站建站', 'website', 'recommend', '/assets/img/qrcode.png', '', '', 'website', '1495262357', '1495262357', '6', 'normal');
INSERT INTO `category` VALUES ('7', '5', 'page', '企业管理软件', 'company', 'index', '/assets/img/qrcode.png', '', '', 'company', '1495262391', '1495262391', '7', 'normal');
INSERT INTO `category` VALUES ('8', '6', 'page', 'PC端', 'website-pc', 'recommend', '/assets/img/qrcode.png', '', '', 'website-pc', '1495262424', '1495262424', '8', 'normal');
INSERT INTO `category` VALUES ('9', '6', 'page', '移动端', 'website-mobile', 'recommend', '/assets/img/qrcode.png', '', '', 'website-mobile', '1495262456', '1495262456', '9', 'normal');
INSERT INTO `category` VALUES ('10', '7', 'page', 'CRM系统 ', 'company-crm', 'recommend', '/assets/img/qrcode.png', '', '', 'company-crm', '1495262487', '1495262487', '10', 'normal');
INSERT INTO `category` VALUES ('11', '7', 'page', 'SASS平台软件', 'company-sass', 'recommend', '/assets/img/qrcode.png', '', '', 'company-sass', '1495262515', '1495262515', '11', 'normal');
INSERT INTO `category` VALUES ('12', '0', 'test', '测试1', 'test1', 'recommend', '/assets/img/qrcode.png', '', '', 'test1', '1497015727', '1497015727', '12', 'normal');
INSERT INTO `category` VALUES ('13', '0', 'test', '测试2', 'test2', 'recommend', '/assets/img/qrcode.png', '', '', 'test2', '1497015738', '1497015738', '13', 'normal');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '变量名',
  `group` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '分组',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '变量标题',
  `tip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '变量描述',
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型:string,text,int,bool,array,datetime,date,file',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '变量值',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '变量字典数据',
  `rule` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '验证规则',
  `extend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '扩展属性',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统配置';

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'name', 'basic', 'Site name', '请填写站点名称', 'string', '英语答题小程序后台', '', 'required', '');
INSERT INTO `config` VALUES ('2', 'beian', 'basic', 'Beian', '粤ICP备15000000号-1', 'string', '', '', '', '');
INSERT INTO `config` VALUES ('3', 'cdnurl', 'basic', 'Cdn url', '如果静态资源使用第三方云储存请配置该值', 'string', '', '', '', '');
INSERT INTO `config` VALUES ('4', 'version', 'basic', 'Version', '如果静态资源有变动请重新配置该值', 'string', '1.0.1', '', 'required', '');
INSERT INTO `config` VALUES ('5', 'timezone', 'basic', 'Timezone', '', 'string', 'Asia/Shanghai', '', 'required', '');
INSERT INTO `config` VALUES ('6', 'forbiddenip', 'basic', 'Forbidden ip', '一行一条记录', 'text', '', '', '', '');
INSERT INTO `config` VALUES ('7', 'languages', 'basic', 'Languages', '', 'array', '{\"backend\":\"zh-cn\",\"frontend\":\"zh-cn\"}', '', 'required', '');
INSERT INTO `config` VALUES ('8', 'fixedpage', 'basic', 'Fixed page', '请尽量输入左侧菜单栏存在的链接', 'string', 'questioncenter', '', 'required', '');
INSERT INTO `config` VALUES ('9', 'categorytype', 'dictionary', 'Category type', '', 'array', '{\"default\":\"Default\",\"page\":\"Page\",\"article\":\"Article\",\"test\":\"Test\"}', '', '', '');
INSERT INTO `config` VALUES ('10', 'configgroup', 'dictionary', 'Config group', '', 'array', '{\"basic\":\"Basic\",\"email\":\"Email\",\"dictionary\":\"Dictionary\",\"user\":\"User\",\"example\":\"Example\"}', '', '', '');
INSERT INTO `config` VALUES ('11', 'mail_type', 'email', 'Mail type', '选择邮件发送方式', 'select', '1', '[\"Please select\",\"SMTP\",\"Mail\"]', '', '');
INSERT INTO `config` VALUES ('12', 'mail_smtp_host', 'email', 'Mail smtp host', '错误的配置发送邮件会导致服务器超时', 'string', 'smtp.qq.com', '', '', '');
INSERT INTO `config` VALUES ('13', 'mail_smtp_port', 'email', 'Mail smtp port', '(不加密默认25,SSL默认465,TLS默认587)', 'string', '465', '', '', '');
INSERT INTO `config` VALUES ('14', 'mail_smtp_user', 'email', 'Mail smtp user', '（填写完整用户名）', 'string', '10000', '', '', '');
INSERT INTO `config` VALUES ('15', 'mail_smtp_pass', 'email', 'Mail smtp password', '（填写您的密码）', 'string', 'password', '', '', '');
INSERT INTO `config` VALUES ('16', 'mail_verify_type', 'email', 'Mail vertify type', '（SMTP验证方式[推荐SSL]）', 'select', '2', '[\"None\",\"TLS\",\"SSL\"]', '', '');
INSERT INTO `config` VALUES ('17', 'mail_from', 'email', 'Mail from', '', 'string', '10000@qq.com', '', '', '');

-- ----------------------------
-- Table structure for qiandao
-- ----------------------------
DROP TABLE IF EXISTS `qiandao`;
CREATE TABLE `qiandao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `openid` varchar(555) DEFAULT '',
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='签到管理';

-- ----------------------------
-- Records of qiandao
-- ----------------------------
INSERT INTO `qiandao` VALUES ('9', 'o8nzY5ZTZXF8dpx9o7ZQKcJUYtJ4', '2020-05-13');
INSERT INTO `qiandao` VALUES ('10', 'o8nzY5ZTZXF8dpx9o7ZQKcJUYtJ4', '2020-05-05');
INSERT INTO `qiandao` VALUES ('11', 'dasdsa', '2020-05-06');
INSERT INTO `qiandao` VALUES ('12', 'o8nzY5b8Q2v69PbPv9hGdkdr2VbI', '2020-05-13');
INSERT INTO `qiandao` VALUES ('13', 'o8nzY5b8Q2v69PbPv9hGdkdr2VbI', '2020-05-13');
INSERT INTO `qiandao` VALUES ('14', 'o8nzY5b8Q2v69PbPv9hGdkdr2VbI', '2020-05-13');
INSERT INTO `qiandao` VALUES ('15', 'o8nzY5ZTZXF8dpx9o7ZQKcJUYtJ4', '2020-05-14');

-- ----------------------------
-- Table structure for questioncenter
-- ----------------------------
DROP TABLE IF EXISTS `questioncenter`;
CREATE TABLE `questioncenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `title` varchar(255) NOT NULL COMMENT '题目',
  `videofile` varchar(255) NOT NULL COMMENT '试题视频',
  `questionA` varchar(255) NOT NULL COMMENT 'A选项',
  `questionB` varchar(255) NOT NULL COMMENT 'B选项',
  `questionT` enum('A','B') NOT NULL DEFAULT 'A' COMMENT '正确选项',
  `questionSort` enum('Level 1','Level 2','Level 3') NOT NULL DEFAULT 'Level 1' COMMENT '难度级别',
  `questionType` enum('生活','儿童','娱乐','趣味') NOT NULL DEFAULT '生活' COMMENT '题目类型',
  `questionmessage` varchar(255) DEFAULT NULL COMMENT '字幕信息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6971 DEFAULT CHARSET=utf8 COMMENT='题目中心';

-- ----------------------------
-- Records of questioncenter
-- ----------------------------
INSERT INTO `questioncenter` VALUES ('6966', '您听到的句子是什么？', '/uploads/20200511/35fb9425801c96eaab4010357f5ccc50.mp4', 'test A1', 'test B1', 'A', 'Level 1', '', null);
INSERT INTO `questioncenter` VALUES ('6967', '您听到的句子是什么？', '/uploads/20200511/4f04be9275acdb1862a70386681856c3.mp4', 'test A2', 'test B2', 'A', 'Level 1', '', null);
INSERT INTO `questioncenter` VALUES ('6968', '您听到的句子是什么？', '/uploads/20200511/75ad3ecc78613f5e8af4a3995d72b790.mp4', 'test A3', 'test B3', 'A', 'Level 1', '', null);
INSERT INTO `questioncenter` VALUES ('6969', '您听到的句子是什么？', '/uploads/20200511/7a67ed329f5a663116ae95169aa84d37.mp4', 'test A4', 'test B4', 'A', 'Level 1', '生活', '666');
INSERT INTO `questioncenter` VALUES ('6970', '您听到的句子是什么？', '/uploads/20200511/1126342a7a9799bcff9404ab9a1342d2.mp4', 'test A5', 'test B5', 'A', 'Level 1', '生活', '555');

-- ----------------------------
-- Table structure for solve
-- ----------------------------
DROP TABLE IF EXISTS `solve`;
CREATE TABLE `solve` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `questionid` int(11) DEFAULT NULL COMMENT '正确id',
  `openid` varchar(255) DEFAULT NULL COMMENT '唯一标识符',
  `result` enum('1','2') DEFAULT '1' COMMENT '答题结果：‘1''=正确,’2‘=错误',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='答题表';

-- ----------------------------
-- Records of solve
-- ----------------------------
INSERT INTO `solve` VALUES ('5', '6966', 'o8nzY5ZTZXF8dpx9o7ZQKcJUYtJ4', '1');
INSERT INTO `solve` VALUES ('6', '6967', 'o8nzY5ZTZXF8dpx9o7ZQKcJUYtJ4', '2');
INSERT INTO `solve` VALUES ('7', '6968', 'o8nzY5ZTZXF8dpx9o7ZQKcJUYtJ4', '2');
INSERT INTO `solve` VALUES ('8', '6969', 'o8nzY5ZTZXF8dpx9o7ZQKcJUYtJ4', '2');
INSERT INTO `solve` VALUES ('9', '6970', 'o8nzY5ZTZXF8dpx9o7ZQKcJUYtJ4', '2');
INSERT INTO `solve` VALUES ('10', '6966', 'o8nzY5b8Q2v69PbPv9hGdkdr2VbI', '1');
INSERT INTO `solve` VALUES ('11', '6967', 'o8nzY5b8Q2v69PbPv9hGdkdr2VbI', '1');
INSERT INTO `solve` VALUES ('12', '6968', 'o8nzY5b8Q2v69PbPv9hGdkdr2VbI', '2');
INSERT INTO `solve` VALUES ('13', '6969', 'o8nzY5b8Q2v69PbPv9hGdkdr2VbI', '1');
INSERT INTO `solve` VALUES ('14', '6970', 'o8nzY5b8Q2v69PbPv9hGdkdr2VbI', '1');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `admin_id` int(10) NOT NULL DEFAULT 0 COMMENT '管理员ID',
  `category_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '分类ID(单选)',
  `category_ids` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类ID(多选)',
  `week` enum('monday','tuesday','wednesday') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '星期(单选):monday=星期一,tuesday=星期二,wednesday=星期三',
  `flag` set('hot','index','recommend') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标志(多选):hot=热门,index=首页,recommend=推荐',
  `genderdata` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'male' COMMENT '性别(单选):male=男,female=女',
  `hobbydata` set('music','reading','swimming') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '爱好(多选):music=音乐,reading=读书,swimming=游泳',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '内容',
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片',
  `images` varchar(1500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '图片组',
  `attachfile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '附件',
  `keywords` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '描述',
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '省市',
  `json` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '配置:key=名称,value=值',
  `price` float(10,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '价格',
  `views` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '点击',
  `startdate` date DEFAULT NULL COMMENT '开始日期',
  `activitytime` datetime DEFAULT NULL COMMENT '活动时间(datetime)',
  `year` year(4) DEFAULT NULL COMMENT '年',
  `times` time DEFAULT NULL COMMENT '时间',
  `refreshtime` int(10) DEFAULT NULL COMMENT '刷新时间(int)',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `deletetime` int(10) DEFAULT NULL COMMENT '删除时间',
  `weigh` int(10) NOT NULL DEFAULT 0 COMMENT '权重',
  `switch` tinyint(1) NOT NULL DEFAULT 0 COMMENT '开关',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal' COMMENT '状态',
  `state` enum('0','1','2') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '状态值:0=禁用,1=正常,2=推荐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='测试表';

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES ('1', '0', '12', '12,13', 'monday', 'hot,index', 'male', 'music,reading', '我是一篇测试文章', '<p>我是测试内容</p>', '/assets/img/avatar.png', '/assets/img/avatar.png,/assets/img/qrcode.png', '/assets/img/avatar.png', '关键字', '描述', '广西壮族自治区/百色市/平果县', '{\"a\":\"1\",\"b\":\"2\"}', '0.00', '0', '2017-07-10', '2017-07-10 18:24:45', '2017', '18:24:45', '1499682285', '1499682526', '1499682526', null, '0', '1', 'normal', '1');

-- ----------------------------
-- Table structure for testcenter
-- ----------------------------
DROP TABLE IF EXISTS `testcenter`;
CREATE TABLE `testcenter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `questionA` varchar(255) NOT NULL,
  `questionB` varchar(255) NOT NULL,
  `questionT` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7173 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of testcenter
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `group_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '组别ID',
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '密码盐',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `mobile` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '手机号',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像',
  `level` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '等级',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `bio` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '格言',
  `money` decimal(10,2) unsigned NOT NULL DEFAULT 0.00 COMMENT '余额',
  `score` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '积分',
  `successions` int(10) unsigned NOT NULL DEFAULT 1 COMMENT '连续登录天数',
  `maxsuccessions` int(10) unsigned NOT NULL DEFAULT 1 COMMENT '最大连续登录天数',
  `prevtime` int(10) DEFAULT NULL COMMENT '上次登录时间',
  `logintime` int(10) DEFAULT NULL COMMENT '登录时间',
  `loginip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '登录IP',
  `loginfailure` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT '失败次数',
  `joinip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '加入IP',
  `jointime` int(10) DEFAULT NULL COMMENT '加入时间',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Token',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '状态',
  `verification` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '验证',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `mobile` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 'admin', 'admin', 'c13f62012fd6a8fdf06b3452a94430e5', 'rpR6Bv', 'admin@163.com', '13888888888', '', '0', '0', '2017-04-15', '', '0.00', '0', '1', '1', '1516170492', '1516171614', '127.0.0.1', '0', '127.0.0.1', '1491461418', '0', '1516171614', '', 'normal', '');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `openid` varchar(255) NOT NULL COMMENT '唯一标识符',
  `nickname` varchar(20) DEFAULT NULL COMMENT '昵称',
  `avatarurl` varchar(255) DEFAULT '' COMMENT '图片地址',
  `gender` varchar(200) DEFAULT '' COMMENT '性别',
  `province` varchar(255) DEFAULT '' COMMENT '省份',
  `city` varchar(255) DEFAULT NULL COMMENT '城市',
  `country` varchar(255) DEFAULT NULL COMMENT '乡村',
  `wrong` int(11) DEFAULT 0 COMMENT '错误题目数量',
  `right` int(11) DEFAULT 0 COMMENT '正确题目数量',
  PRIMARY KEY (`openid`)
) ENGINE=MyISAM AUTO_INCREMENT=1515 DEFAULT CHARSET=utf8 COMMENT='用户基本信息表';

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('o8nzY5ZTZXF8dpx9o7ZQKcJUYtJ4', 'Coder', 'https://wx.qlogo.cn/mmopen/vi_32/fqJhtDQoPRUzkkqsDS6RDdmTXiaErcMbYARBvO4JwaS5IibSdd1iayUcJTYDv7e5u8C0g27ib57SiaA5xz0GLfic3micg/132', '1', 'Hebei', 'Shijiazhuang', 'China', '4', '1');
INSERT INTO `userinfo` VALUES ('o8nzY5b8Q2v69PbPv9hGdkdr2VbI', '寒山一竹', 'https://wx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTL2FKAN01j3U0eaKZU63SROibUZjw7Tl1xA5FibxyuD9GrgU1qeuBCTeUbnyzaPR3Csz3ZLSV3OMCVw/132', '2', 'Hebei', 'Tangshan', 'China', '1', '4');

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '组名',
  `rules` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限节点',
  `createtime` int(10) DEFAULT NULL COMMENT '添加时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员组表';

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('1', '默认组', '1,2,3,4,5,6,7,8,9,10,11,12', '1515386468', '1516168298', 'normal');

-- ----------------------------
-- Table structure for user_money_log
-- ----------------------------
DROP TABLE IF EXISTS `user_money_log`;
CREATE TABLE `user_money_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '会员ID',
  `money` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '变更余额',
  `before` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '变更前余额',
  `after` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '变更后余额',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员余额变动表';

-- ----------------------------
-- Records of user_money_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_rule
-- ----------------------------
DROP TABLE IF EXISTS `user_rule`;
CREATE TABLE `user_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT NULL COMMENT '父ID',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '标题',
  `remark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '备注',
  `ismenu` tinyint(1) DEFAULT NULL COMMENT '是否菜单',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  `weigh` int(10) DEFAULT 0 COMMENT '权重',
  `status` enum('normal','hidden') COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员规则表';

-- ----------------------------
-- Records of user_rule
-- ----------------------------
INSERT INTO `user_rule` VALUES ('1', '0', 'index', '前台', '', '1', '1516168079', '1516168079', '1', 'normal');
INSERT INTO `user_rule` VALUES ('2', '0', 'api', 'API接口', '', '1', '1516168062', '1516168062', '2', 'normal');
INSERT INTO `user_rule` VALUES ('3', '1', 'user', '会员模块', '', '1', '1515386221', '1516168103', '12', 'normal');
INSERT INTO `user_rule` VALUES ('4', '2', 'user', '会员模块', '', '1', '1515386221', '1516168092', '11', 'normal');
INSERT INTO `user_rule` VALUES ('5', '3', 'index/user/login', '登录', '', '0', '1515386247', '1515386247', '5', 'normal');
INSERT INTO `user_rule` VALUES ('6', '3', 'index/user/register', '注册', '', '0', '1515386262', '1516015236', '7', 'normal');
INSERT INTO `user_rule` VALUES ('7', '3', 'index/user/index', '会员中心', '', '0', '1516015012', '1516015012', '9', 'normal');
INSERT INTO `user_rule` VALUES ('8', '3', 'index/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '4', 'normal');
INSERT INTO `user_rule` VALUES ('9', '4', 'api/user/login', '登录', '', '0', '1515386247', '1515386247', '6', 'normal');
INSERT INTO `user_rule` VALUES ('10', '4', 'api/user/register', '注册', '', '0', '1515386262', '1516015236', '8', 'normal');
INSERT INTO `user_rule` VALUES ('11', '4', 'api/user/index', '会员中心', '', '0', '1516015012', '1516015012', '10', 'normal');
INSERT INTO `user_rule` VALUES ('12', '4', 'api/user/profile', '个人资料', '', '0', '1516015012', '1516015012', '3', 'normal');

-- ----------------------------
-- Table structure for user_score_log
-- ----------------------------
DROP TABLE IF EXISTS `user_score_log`;
CREATE TABLE `user_score_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '会员ID',
  `score` int(10) NOT NULL DEFAULT 0 COMMENT '变更积分',
  `before` int(10) NOT NULL DEFAULT 0 COMMENT '变更前积分',
  `after` int(10) NOT NULL DEFAULT 0 COMMENT '变更后积分',
  `memo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员积分变动表';

-- ----------------------------
-- Records of user_score_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_token
-- ----------------------------
DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `token` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Token',
  `user_id` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '会员ID',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `expiretime` int(10) DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='会员Token表';

-- ----------------------------
-- Records of user_token
-- ----------------------------
