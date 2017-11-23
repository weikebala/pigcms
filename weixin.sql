-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 07 月 24 日 21:41
-- 服务器版本: 5.1.63
-- PHP 版本: 5.2.17p1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `weixin`
--

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_access`
--

CREATE TABLE IF NOT EXISTS `pigcms_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_access`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_adma`
--

CREATE TABLE IF NOT EXISTS `pigcms_adma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='diy 宣传页' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_adma`
--

INSERT INTO `pigcms_adma` (`id`, `uid`, `token`, `url`, `copyright`, `info`, `title`) VALUES
(1, 1, 'pigcms', 'http://demo.pigcms.cn/tpl/Home/new/common/images/ewm2.jpg', '? 2001-2013 某某微信版权所有', '微信营销管理平台为个人和企业提供基于微信公众平台的一系列功能，包括智能回复、微信3G网站、互动营销活动，会员管理，在线订单，数据统计等系统功能,带给你全新的微信互动营销体验。', 'PigCms多用户微信营销系统'),
(2, 2, 'ffgwbc1405611966', '/tpl/Home/new/common/images/ewm2.jpg', '© 2001-2013 某某微信版权所有', '微信营销管理平台为个人和企业提供基于微信公众平台的一系列功能，包括智能回复、微信3G网站、互动营销活动，会员管理，在线订单，数据统计等系统功能,带给你全新的微信互动营销体验。', '微信多用户微信营销系统'),
(3, 1, 'hvhyny1406205407', '/tpl/Home/new/common/images/ewm2.jpg', '© 2001-2013 某某微信版权所有', '微信营销管理平台为个人和企业提供基于微信公众平台的一系列功能，包括智能回复、微信3G网站、互动营销活动，会员管理，在线订单，数据统计等系统功能,带给你全新的微信互动营销体验。', '微信多用户微信营销系统');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_agent_price`
--

CREATE TABLE IF NOT EXISTS `pigcms_agent_price` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `minaccount` int(10) NOT NULL DEFAULT '0',
  `maxaccount` int(10) NOT NULL DEFAULT '0',
  `price` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_agent_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_alipay_config`
--

CREATE TABLE IF NOT EXISTS `pigcms_alipay_config` (
  `token` varchar(60) NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(200) NOT NULL DEFAULT '',
  `partnerkey` varchar(100) NOT NULL DEFAULT '',
  `appsecret` varchar(200) NOT NULL DEFAULT '',
  `appid` varchar(60) NOT NULL DEFAULT '',
  `paysignkey` varchar(200) NOT NULL DEFAULT '',
  `partnerid` varchar(200) NOT NULL DEFAULT '',
  `open` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_alipay_config`
--

INSERT INTO `pigcms_alipay_config` (`token`, `paytype`, `name`, `pid`, `key`, `partnerkey`, `appsecret`, `appid`, `paysignkey`, `partnerid`, `open`) VALUES
('ingdnn1397725894', 'weixin', '', '', '', '', '', '', '', '', 1),
('hwtbjw1397727501', 'alipay', '', '', '', '', '', '', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_api`
--

CREATE TABLE IF NOT EXISTS `pigcms_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `apitoken` varchar(100) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` varchar(100) NOT NULL,
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `noanswer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='第三方api接口表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_api`
--

INSERT INTO `pigcms_api` (`id`, `uid`, `keyword`, `token`, `url`, `apitoken`, `type`, `is_colation`, `colation_keyword`, `number`, `order`, `time`, `status`, `noanswer`) VALUES
(1, 5, '测试商品', 'klntps1397732204', 'http://www.0794wei.com/weixin/index.php', '', 1, 0, '', 0, 0, 1398217314, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_areply`
--

CREATE TABLE IF NOT EXISTS `pigcms_areply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_areply`
--

INSERT INTO `pigcms_areply` (`id`, `keyword`, `content`, `uid`, `uname`, `createtime`, `updatetime`, `token`, `home`) VALUES
(1, '预约', '', 4, '', '1397788408', '1398226615', 'hwtbjw1397727501', '1');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_attribute`
--

CREATE TABLE IF NOT EXISTS `pigcms_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`catid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品的属性' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_attribute`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_behavior`
--

CREATE TABLE IF NOT EXISTS `pigcms_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=522 ;

--
-- 转存表中的数据 `pigcms_behavior`
--

INSERT INTO `pigcms_behavior` (`id`, `fid`, `token`, `openid`, `date`, `enddate`, `model`, `num`, `keyword`, `type`) VALUES
(1, 1, 'ingdnn1397725894', 'oEeq8jmj0apIsM6WP40PWB2Zy7w0', '2014-04-23', 1398231209, 'Wall', 1, '上墙', 0),
(2, 1, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', '2014-04-23', 1398231846, 'Wall', 2, '上墙', 0),
(3, 1, 'ingdnn1397725894', 'oEeq8jom3uEmOkiGL1F6ph28yDs0', '2014-04-23', 1398231856, 'Wall', 1, '上墙', 0),
(4, 1, 'ingdnn1397725894', 'oEeq8juStTZmakZ5Jia01h2JR3YI', '2014-04-23', 1398234639, 'Product', 1, '用户关注', 0),
(5, 1, 'tfffyz1397728996', 'oNbjjjj-DB-hyiyPEcy9S24UG0F8', '2014-04-23', 1398238908, 'follow', 1, '用户关注', 0),
(6, 0, 'tfffyz1397728996', 'oNbjjjj-DB-hyiyPEcy9S24UG0F8', '2014-04-23', 1398238993, 'chat', 1, '11', 0),
(7, 0, 'tfffyz1397728996', 'oNbjjjkUnToROdEdvd9rYDEWrLkY', '2014-04-23', 1398246584, 'chat', 1, '用户关注', 0),
(8, 1, 'tfffyz1397728996', 'oNbjjjhJVKndnjst4DxRsyIVXEY8', '2014-04-23', 1398247833, 'follow', 1, '用户关注', 0),
(9, 1, 'ingdnn1397725894', 'oEeq8ju6mb7ixEOxZNtriJqaAZkA', '2014-04-23', 1398253957, 'follow', 1, '用户关注', 0),
(10, 1, 'ingdnn1397725894', 'oEeq8ju6mb7ixEOxZNtriJqaAZkA', '2014-04-23', 1398254020, 'Product', 1, '用户关注', 0),
(11, 0, 'tfffyz1397728996', 'oNbjjju_JMHYhpf3UtjbgcJ82qd8', '2014-04-23', 1398259201, 'chat', 1, '11', 0),
(12, 0, 'tfffyz1397728996', 'oNbjjju_JMHYhpf3UtjbgcJ82qd8', '2014-04-23', 1398259213, 'chat', 1, '12', 0),
(13, 1, 'ingdnn1397725894', 'oEeq8jscFxUPbbRkavKcFb49Mwb0', '2014-04-23', 1398263335, 'follow', 1, '用户关注', 0),
(14, 1, 'ingdnn1397725894', 'oEeq8jscFxUPbbRkavKcFb49Mwb0', '2014-04-23', 1398263388, 'Product', 1, '用户关注', 0),
(15, 1, 'tfffyz1397728996', 'oNbjjjktCfAPQrPh6rvWjzm2FxLc', '2014-04-23', 1398265090, 'follow', 1, '用户关注', 0),
(16, 1, 'ingdnn1397725894', 'oEeq8jqZogZHY9dgUJzEKPL2taro', '2014-04-23', 1398265202, 'follow', 1, '用户关注', 0),
(17, 1, 'ingdnn1397725894', 'oEeq8jqOL1WdQdka-5RIcCRjUY-s', '2014-04-23', 1398266024, 'Product', 1, '用户关注', 0),
(18, 1, 'ingdnn1397725894', 'oEeq8jpLLa1oBK-S6NZxwTJbC0p0', '2014-04-24', 1398272837, 'follow', 1, '用户关注', 0),
(19, 1, 'ingdnn1397725894', 'oEeq8js-P_fP-msnwjNtnTuugoac', '2014-04-24', 1398299640, 'follow', 1, '用户关注', 0),
(20, 1, 'ingdnn1397725894', 'oEeq8jgpnwvO097UJhFlqwRM_yMw', '2014-04-24', 1398302725, 'Product', 1, '用户关注', 0),
(21, 1, 'tfffyz1397728996', 'oNbjjjkhCTeBR6XAztVPEys48x9Q', '2014-04-24', 1398305267, 'follow', 1, '用户关注', 0),
(22, 1, 'tfffyz1397728996', 'oNbjjjmyW8TqMGRB4I5nSUPlDsKQ', '2014-04-24', 1398306733, 'follow', 1, '用户关注', 0),
(23, 0, 'tfffyz1397728996', 'oNbjjjkhCTeBR6XAztVPEys48x9Q', '2014-04-24', 1398308447, 'chat', 1, '用户关注', 0),
(24, 1, 'tfffyz1397728996', 'oNbjjjsUjMxqbk2LUa9TV1ccPcfg', '2014-04-24', 1398310907, 'follow', 1, '用户关注', 0),
(25, 1, 'tfffyz1397728996', 'oNbjjjuJ1BQe2UQx5i4zJq4qEgfs', '2014-04-24', 1398314095, 'follow', 1, '用户关注', 0),
(26, 0, 'tfffyz1397728996', 'oNbjjjuJ1BQe2UQx5i4zJq4qEgfs', '2014-04-24', 1398315435, 'chat', 1, '用户关注', 0),
(27, 1, 'tfffyz1397728996', 'oNbjjjg5VEEI-anZjJE_WmGkw5t4', '2014-04-24', 1398315512, 'follow', 1, '用户关注', 0),
(28, 0, 'tfffyz1397728996', 'oNbjjjg5VEEI-anZjJE_WmGkw5t4', '2014-04-24', 1398315727, 'chat', 2, '用户关注', 0),
(29, 0, 'tfffyz1397728996', 'oNbjjjg5VEEI-anZjJE_WmGkw5t4', '2014-04-24', 1398315745, 'chat', 1, '11', 0),
(30, 1, 'ingdnn1397725894', 'oEeq8jmm44Chq2dm_ca9JfQzW90E', '2014-04-24', 1398320223, 'follow', 1, '用户关注', 0),
(31, 1, 'ingdnn1397725894', 'oEeq8jjf2YNNJOduA0c63bHbcKVM', '2014-04-24', 1398324530, 'follow', 1, '用户关注', 0),
(32, 0, 'tfffyz1397728996', 'oNbjjjsUjMxqbk2LUa9TV1ccPcfg', '2014-04-24', 1398325451, 'chat', 1, '用户关注', 0),
(33, 1, 'ingdnn1397725894', 'oEeq8js-P_fP-msnwjNtnTuugoac', '2014-04-24', 1398325548, 'Product', 1, '用户关注', 0),
(34, 0, 'tfffyz1397728996', 'oNbjjjilZ8jggQ_P8YNe6-PcF2FU', '2014-04-24', 1398327203, 'chat', 1, '用户关注', 0),
(35, 1, 'tfffyz1397728996', 'oNbjjjtsajqonbEyATI59EyHGKKA', '2014-04-24', 1398339813, 'follow', 1, '用户关注', 0),
(36, 0, 'tfffyz1397728996', 'oNbjjjtsajqonbEyATI59EyHGKKA', '2014-04-24', 1398341505, 'chat', 1, '用户关注', 0),
(37, 1, 'tfffyz1397728996', 'oNbjjjjPxAjghE_rHFI469UazhyM', '2014-04-24', 1398350827, 'follow', 1, '用户关注', 0),
(38, 0, 'tfffyz1397728996', 'oNbjjjlXIh3x_ZejIoFPpEzRtidc', '2014-04-24', 1398351559, 'chat', 1, '用户关注', 0),
(39, 1, 'tfffyz1397728996', 'oNbjjjr7AWxKPOoHBfptfPi0kPn0', '2014-04-24', 1398352644, 'follow', 1, '用户关注', 0),
(40, 1, 'tfffyz1397728996', 'oNbjjjvdrGwZegks_pBEGLuIV3yU', '2014-04-25', 1398360287, 'follow', 1, '用户关注', 0),
(41, 0, 'tfffyz1397728996', 'oNbjjjvdrGwZegks_pBEGLuIV3yU', '2014-04-25', 1398360294, 'chat', 1, '11', 0),
(42, 0, 'tfffyz1397728996', 'oNbjjjvdrGwZegks_pBEGLuIV3yU', '2014-04-25', 1398360303, 'chat', 2, '用户关注', 0),
(43, 1, 'tfffyz1397728996', 'oNbjjjovTivm7iugO_2-UmCn4AoQ', '2014-04-25', 1398395024, 'follow', 1, '用户关注', 0),
(44, 0, 'tfffyz1397728996', 'oNbjjjqbKXdstwNyT2UGShYfniuA', '2014-04-25', 1398395745, 'chat', 1, '用户关注', 0),
(45, 1, 'tfffyz1397728996', 'oNbjjjgkdTPq1Gw5SKnXQ9vHaDXo', '2014-04-25', 1398399971, 'follow', 1, '用户关注', 0),
(46, 1, 'tfffyz1397728996', 'oNbjjjhM5de-8jX74aUlfte-2eac', '2014-04-25', 1398400424, 'follow', 1, '用户关注', 0),
(47, 1, 'tfffyz1397728996', 'oNbjjjt3gNU2ShmZ0wuUeLAqsxEE', '2014-04-25', 1398410627, 'follow', 1, '用户关注', 0),
(48, 1, 'tfffyz1397728996', 'oNbjjjp44VraJ8WIyfZfyXCzOs-Q', '2014-04-25', 1398410776, 'follow', 1, '用户关注', 0),
(49, 1, 'tfffyz1397728996', 'oNbjjjusS_3kJu24FRwAso_itKO0', '2014-04-25', 1398419067, 'follow', 1, '用户关注', 0),
(50, 1, 'tfffyz1397728996', 'oNbjjjjrBwG4birO6AU0iEzQNvj4', '2014-04-25', 1398422416, 'follow', 1, '用户关注', 0),
(51, 1, 'ingdnn1397725894', 'oEeq8jsjKn5hmosV0xjEeFoHWALs', '2014-04-25', 1398432027, 'follow', 1, '用户关注', 0),
(52, 1, 'tfffyz1397728996', 'oNbjjjpUPkaSRygf6Zo1TgnL4b6g', '2014-04-25', 1398432250, 'follow', 1, '用户关注', 0),
(53, 0, 'tfffyz1397728996', 'oNbjjjt8my9FU15-vL5CRsYY4uFI', '2014-04-25', 1398437289, 'chat', 3, '1', 0),
(54, 0, 'tfffyz1397728996', 'oNbjjjt8my9FU15-vL5CRsYY4uFI', '2014-04-25', 1398437293, 'chat', 3, '11', 0),
(55, 0, 'tfffyz1397728996', 'oNbjjjt8my9FU15-vL5CRsYY4uFI', '2014-04-25', 1398437322, 'chat', 1, '是衣服吗', 0),
(56, 0, 'tfffyz1397728996', 'oNbjjjt8my9FU15-vL5CRsYY4uFI', '2014-04-25', 1398437334, 'chat', 1, '卖衣服的吗', 0),
(57, 1, 'tfffyz1397728996', 'oNbjjjoQr2lJ7lwUBS2O2XqEDUHA', '2014-04-25', 1398441283, 'follow', 1, '用户关注', 0),
(58, 1, 'ingdnn1397725894', 'oEeq8jiv_Y07EWA08EQpL_1Z8Qsg', '2014-04-26', 1398441988, 'follow', 1, '用户关注', 0),
(59, 1, 'ingdnn1397725894', 'oEeq8jh1L7T9eVkE7DwAdkWFKu_s', '2014-04-26', 1398463126, 'Product', 1, '用户关注', 0),
(60, 0, 'tfffyz1397728996', 'oNbjjjkrEyvU-oYBlL5sdXPzS5Wc', '2014-04-26', 1398477013, 'chat', 1, '用户关注', 0),
(61, 1, 'ingdnn1397725894', 'oEeq8ji19nS3nStovTPhjuRO-QIw', '2014-04-26', 1398488898, 'follow', 1, '用户关注', 0),
(62, 1, 'tfffyz1397728996', 'oNbjjjkTl2aLdiQiIqBWOdHh9JUc', '2014-04-26', 1398490888, 'follow', 1, '用户关注', 0),
(63, 1, 'tfffyz1397728996', 'oNbjjjioRE_g6cKDa-zyp5kzUx6M', '2014-04-26', 1398491615, 'follow', 1, '用户关注', 0),
(64, 0, 'tfffyz1397728996', 'oNbjjjioRE_g6cKDa-zyp5kzUx6M', '2014-04-26', 1398491788, 'chat', 1, '用户关注', 0),
(65, 1, 'tfffyz1397728996', 'oNbjjjpLKJN0LnphtigLK9UJBaeI', '2014-04-26', 1398502484, 'follow', 1, '用户关注', 0),
(66, 1, 'ingdnn1397725894', 'oEeq8jnmjmORHF4uPkmlYUN550fw', '2014-04-26', 1398513292, 'follow', 1, '用户关注', 0),
(67, 1, 'ingdnn1397725894', 'oEeq8jl6Lg2_dcYSjHByO0A9TPj4', '2014-04-26', 1398513880, 'follow', 1, '用户关注', 0),
(68, 1, 'ingdnn1397725894', 'oEeq8jqj8tdKf9ID4LSPIAAPuP-c', '2014-04-26', 1398524666, 'follow', 1, '用户关注', 0),
(69, 1, 'ingdnn1397725894', 'oEeq8jqj8tdKf9ID4LSPIAAPuP-c', '2014-04-26', 1398524840, 'Product', 1, '用户关注', 0),
(70, 1, 'ingdnn1397725894', 'oEeq8jjp9Io9sfYffi0EIfqxvY0o', '2014-04-26', 1398525063, 'follow', 1, '用户关注', 0),
(71, 1, 'tfffyz1397728996', 'oNbjjjs1iVrsOhXtOt4PJDQ_lamQ', '2014-04-27', 1398559142, 'follow', 1, '用户关注', 0),
(72, 1, 'tfffyz1397728996', 'oNbjjju5O8GH7H4XrvWM8hc7K1cs', '2014-04-27', 1398567998, 'follow', 1, '用户关注', 0),
(73, 1, 'ingdnn1397725894', 'oEeq8jozdKd69pJlv73aIGesNqbQ', '2014-04-27', 1398573985, 'follow', 1, '用户关注', 0),
(74, 1, 'ingdnn1397725894', 'oEeq8jorgtCoJtfmbskLQDyH2_sA', '2014-04-27', 1398578317, 'follow', 1, '用户关注', 0),
(75, 1, 'tfffyz1397728996', 'oNbjjjsQz03eXnCaZ-aYot3xbthQ', '2014-04-27', 1398579542, 'follow', 1, '用户关注', 0),
(76, 1, 'ingdnn1397725894', 'oEeq8jggyN15LuK2LiJdCcCVlMb0', '2014-04-27', 1398584231, 'follow', 1, '用户关注', 0),
(77, 1, 'tfffyz1397728996', 'oNbjjjgJpUITsxSNdSrFpzUBcn5E', '2014-04-27', 1398584442, 'follow', 1, '用户关注', 0),
(78, 1, 'tfffyz1397728996', 'oNbjjjhPFoh67eGGNoMWYodKsLZs', '2014-04-27', 1398584530, 'follow', 1, '用户关注', 0),
(79, 0, 'tfffyz1397728996', 'oNbjjjhPFoh67eGGNoMWYodKsLZs', '2014-04-27', 1398584541, 'chat', 2, '用户关注', 0),
(80, 0, 'tfffyz1397728996', 'oNbjjjhPFoh67eGGNoMWYodKsLZs', '2014-04-27', 1398584563, 'chat', 1, '你好', 0),
(81, 0, 'tfffyz1397728996', 'oNbjjjhPFoh67eGGNoMWYodKsLZs', '2014-04-27', 1398584620, 'chat', 1, '你是客服吗', 0),
(82, 1, 'tfffyz1397728996', 'oNbjjjr63mb-ZnRiUYBaVXc7pOyU', '2014-04-27', 1398598661, 'follow', 1, '用户关注', 0),
(83, 1, 'tfffyz1397728996', 'oNbjjjrtEimRY1y3AX7_l0jpVQ2M', '2014-04-27', 1398602946, 'follow', 1, '用户关注', 0),
(84, 1, 'tfffyz1397728996', 'oNbjjjrkQiGqTGbr0xXI9Ev26orU', '2014-04-27', 1398603756, 'follow', 1, '用户关注', 0),
(85, 1, 'ingdnn1397725894', 'oEeq8jiBPsWwO-Fye2Bv3qKAESGQ', '2014-04-27', 1398610738, 'follow', 1, '用户关注', 0),
(86, 1, 'tfffyz1397728996', 'oNbjjjgYRrjwWN1uxC9e-mT0Htvk', '2014-04-28', 1398616797, 'follow', 1, '用户关注', 0),
(87, 1, 'ingdnn1397725894', 'oEeq8jlsFhkfbRn_UAlKnDlem_vQ', '2014-04-28', 1398624264, 'Product', 1, '用户关注', 0),
(88, 1, 'ingdnn1397725894', 'oEeq8jhSy97KEluaeJCBhaGP2cxE', '2014-04-28', 1398649600, 'follow', 1, '用户关注', 0),
(89, 1, 'ingdnn1397725894', 'oEeq8jqIz8d9s5Kz_AgZgxlSUMNE', '2014-04-28', 1398652825, 'follow', 1, '用户关注', 0),
(90, 1, 'tfffyz1397728996', 'oNbjjjsYESZX3R3fA6T19hd5pT9w', '2014-04-28', 1398654878, 'follow', 1, '用户关注', 0),
(91, 1, 'ingdnn1397725894', 'oEeq8jkUqniqUzOuSJD-ebx6J-3M', '2014-04-28', 1398658110, 'follow', 1, '用户关注', 0),
(92, 1, 'tfffyz1397728996', 'oNbjjjqRWCc4N0Fp1GBn1bxF8uHc', '2014-04-28', 1398660635, 'follow', 1, '用户关注', 0),
(93, 1, 'ingdnn1397725894', 'oEeq8jq-4pE8I0MUtINhH1NlXr_s', '2014-04-28', 1398666668, 'follow', 1, '用户关注', 0),
(94, 1, 'tfffyz1397728996', 'oNbjjjubjmEKGUMA6r3dsEZlsjbA', '2014-04-28', 1398696910, 'follow', 1, '用户关注', 0),
(95, 1, 'tfffyz1397728996', 'oNbjjjhNeK9y0xF3PzP5U8-Q5onE', '2014-04-29', 1398703904, 'follow', 1, '用户关注', 0),
(96, 0, 'tfffyz1397728996', 'oNbjjju5Yb7JXJAbJ02YX-i6PZMk', '2014-04-29', 1398718222, 'chat', 1, '用户关注', 0),
(97, 1, 'ingdnn1397725894', 'oEeq8jr5v1kh3xlFJIxqrVf981d0', '2014-04-29', 1398727013, 'follow', 1, '用户关注', 0),
(98, 1, 'tfffyz1397728996', 'oNbjjjonstN3SoQqpb5yZVNKKcDY', '2014-04-29', 1398733342, 'follow', 1, '用户关注', 0),
(99, 1, 'tfffyz1397728996', 'oNbjjjkaxOrS1QbMPeJACDeTb55A', '2014-04-29', 1398739719, 'follow', 1, '用户关注', 0),
(100, 1, 'tfffyz1397728996', 'oNbjjjjnnhDAq0OGAuWcTNBVKZu8', '2014-04-29', 1398740312, 'follow', 1, '用户关注', 0),
(101, 1, 'ingdnn1397725894', 'oEeq8jvR3t2VQc4eJ8bzyK57ETuw', '2014-04-29', 1398749458, 'follow', 1, '用户关注', 0),
(102, 1, 'tfffyz1397728996', 'oNbjjjop_GB1xzKDPWPhUko-kuuc', '2014-04-29', 1398751042, 'follow', 1, '用户关注', 0),
(103, 1, 'tfffyz1397728996', 'oNbjjjl5tjS8W9iwV0E7A_S_RHIw', '2014-04-29', 1398752487, 'follow', 1, '用户关注', 0),
(104, 1, 'tfffyz1397728996', 'oNbjjjnJ_biIwC2_UHvZSA6UUMac', '2014-04-29', 1398752671, 'follow', 1, '用户关注', 0),
(105, 0, 'tfffyz1397728996', 'oNbjjjjw1knc4UBtgzLnF0HTjJ2o', '2014-04-29', 1398754575, 'chat', 1, '11', 0),
(106, 0, 'tfffyz1397728996', 'oNbjjjjw1knc4UBtgzLnF0HTjJ2o', '2014-04-29', 1398754585, 'chat', 1, '12', 0),
(107, 0, 'tfffyz1397728996', 'oNbjjjp4MjqLQhOfJ-0dFUQJxEMI', '2014-04-29', 1398755345, 'chat', 4, '用户关注', 0),
(108, 0, 'tfffyz1397728996', 'oNbjjjp4MjqLQhOfJ-0dFUQJxEMI', '2014-04-29', 1398755351, 'chat', 1, '11', 0),
(109, 0, 'tfffyz1397728996', 'oNbjjjp4MjqLQhOfJ-0dFUQJxEMI', '2014-04-29', 1398755381, 'chat', 1, '13', 0),
(110, 1, 'tfffyz1397728996', 'oNbjjjnlZzmOplGRHQgfEQsBLcIc', '2014-04-29', 1398756586, 'follow', 1, '用户关注', 0),
(111, 0, 'tfffyz1397728996', 'oNbjjjnlZzmOplGRHQgfEQsBLcIc', '2014-04-29', 1398756623, 'chat', 1, '用户关注', 0),
(112, 1, 'tfffyz1397728996', 'oNbjjjhAhda1-zEnBWuVOpIAZNEo', '2014-04-29', 1398758812, 'follow', 1, '用户关注', 0),
(113, 1, 'tfffyz1397728996', 'oNbjjjj5BirJL4FFg4lIEh8W34eo', '2014-04-29', 1398758960, 'follow', 1, '用户关注', 0),
(114, 0, 'tfffyz1397728996', 'oNbjjjpoQnk7wVkqSFGkOldCeduA', '2014-04-29', 1398767826, 'chat', 1, '用户关注', 0),
(115, 1, 'tfffyz1397728996', 'oNbjjjijRY_cWiy646PW8OdgaPys', '2014-04-29', 1398769418, 'follow', 1, '用户关注', 0),
(116, 0, 'tfffyz1397728996', 'oNbjjjijRY_cWiy646PW8OdgaPys', '2014-04-29', 1398769785, 'chat', 1, '12', 0),
(117, 0, 'tfffyz1397728996', 'oNbjjju_JMHYhpf3UtjbgcJ82qd8', '2014-04-29', 1398772724, 'chat', 1, '用户关注', 0),
(118, 1, 'ingdnn1397725894', 'oEeq8ji4SLPG2O8AhC0blFTqdIlQ', '2014-04-29', 1398778393, 'follow', 1, '用户关注', 0),
(119, 0, 'tfffyz1397728996', 'oNbjjjim9omxoCHocptPfxxusNCs', '2014-04-29', 1398780465, 'chat', 1, '用户关注', 0),
(120, 1, 'hwtbjw1397727501', 'oJSB_t-bemjeSBe_NvITJRJVZbHI', '2014-04-29', 1398782646, 'follow', 1, '用户关注', 0),
(121, 1, 'hwtbjw1397727501', 'oJSB_t-bemjeSBe_NvITJRJVZbHI', '2014-04-29', 1398782646, 'Selfform', 1, '用户关注', 0),
(122, 0, 'tfffyz1397728996', 'oNbjjjhNeK9y0xF3PzP5U8-Q5onE', '2014-04-30', 1398790494, 'chat', 1, '11', 0),
(123, 1, 'ingdnn1397725894', 'oEeq8jmN0wW3zwRupDfKTDvXDVfg', '2014-04-30', 1398811541, 'Product', 1, '用户关注', 0),
(124, 0, 'tfffyz1397728996', 'oNbjjjpSXgnZl-LNbC8m73Twazeo', '2014-04-30', 1398828170, 'chat', 1, '用户关注', 0),
(125, 1, 'tfffyz1397728996', 'oNbjjjqna3liY-PGaICS4v7UEO7o', '2014-04-30', 1398831129, 'follow', 1, '用户关注', 0),
(126, 1, 'ingdnn1397725894', 'oEeq8jiBPsWwO-Fye2Bv3qKAESGQ', '2014-04-30', 1398840148, 'Product', 1, '用户关注', 0),
(127, 1, 'ingdnn1397725894', 'oEeq8jgGO0kwwAIgcvSSOMoltD_I', '2014-04-30', 1398848264, 'follow', 1, '用户关注', 0),
(128, 1, 'hwtbjw1397727501', 'oJSB_t2sPlPE86XEyGzvK4Eqm_90', '2014-04-30', 1398849867, 'follow', 1, '用户关注', 0),
(129, 1, 'hwtbjw1397727501', 'oJSB_t2sPlPE86XEyGzvK4Eqm_90', '2014-04-30', 1398849867, 'Selfform', 1, '用户关注', 0),
(130, 1, 'hwtbjw1397727501', 'oJSB_tyMygSN8JWOGDyapcihx1M4', '2014-04-30', 1398852167, 'follow', 1, '用户关注', 0),
(131, 1, 'hwtbjw1397727501', 'oJSB_tyMygSN8JWOGDyapcihx1M4', '2014-04-30', 1398852167, 'Selfform', 1, '用户关注', 0),
(132, 1, 'hwtbjw1397727501', 'oJSB_t9lxe5_BMfFNsc7hGRmzJR4', '2014-04-30', 1398852221, 'follow', 1, '用户关注', 0),
(133, 1, 'hwtbjw1397727501', 'oJSB_t9lxe5_BMfFNsc7hGRmzJR4', '2014-04-30', 1398852221, 'Selfform', 1, '用户关注', 0),
(134, 1, 'hwtbjw1397727501', 'oJSB_t0ONX7iBTXP1OrXGVcV_r2I', '2014-04-30', 1398852232, 'follow', 1, '用户关注', 0),
(135, 1, 'hwtbjw1397727501', 'oJSB_t0ONX7iBTXP1OrXGVcV_r2I', '2014-04-30', 1398852232, 'Selfform', 1, '用户关注', 0),
(136, 0, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-04-30', 1398852464, 'chat', 1, '关注', 0),
(137, 1, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-04-30', 1398852575, 'Selfform', 1, '预约', 0),
(138, 1, 'tfffyz1397728996', 'oNbjjjrU3GAfjrcbGDa7IA0NxySk', '2014-04-30', 1398854063, 'follow', 1, '用户关注', 0),
(139, 0, 'tfffyz1397728996', 'oNbjjjrU3GAfjrcbGDa7IA0NxySk', '2014-04-30', 1398854063, 'chat', 1, '11', 0),
(140, 0, 'tfffyz1397728996', 'oNbjjjrU3GAfjrcbGDa7IA0NxySk', '2014-04-30', 1398854064, 'chat', 1, '12', 0),
(141, 0, 'tfffyz1397728996', 'oNbjjjrU3GAfjrcbGDa7IA0NxySk', '2014-04-30', 1398854064, 'chat', 1, '13', 0),
(142, 0, 'tfffyz1397728996', 'oNbjjjjzEBoIJnPgKx8HM0Ir8J3o', '2014-04-30', 1398854667, 'chat', 1, '用户关注', 0),
(143, 1, 'tfffyz1397728996', 'oNbjjjjdan1QOwKYi2hT7bpHrqIU', '2014-04-30', 1398864592, 'follow', 1, '用户关注', 0),
(144, 0, 'tfffyz1397728996', 'oNbjjjsrmCfJ2BRuSgcMZnAO6Vlk', '2014-04-30', 1398866267, 'chat', 1, '用户关注', 0),
(145, 1, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-04-30', 1398867909, 'Selfform', 2, '预约', 0),
(146, 2, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-04-30', 1398868038, 'Img', 1, '课程', 0),
(147, 3, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-04-30', 1398868321, 'Img', 1, '课程', 0),
(148, 1, 'ingdnn1397725894', 'oEeq8jsjt5PTyM2HOFa54vDoEJHU', '2014-04-30', 1398868722, 'Product', 1, '用户关注', 0),
(149, 4, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-04-30', 1398869883, 'Img', 1, '课程', 0),
(150, 1, 'tfffyz1397728996', 'oNbjjjvh3ET7WrJtZO-b8ZSu43oE', '2014-04-30', 1398870466, 'follow', 1, '用户关注', 0),
(151, 1, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-04-30', 1398870864, 'Text', 1, '报名', 0),
(152, 1, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-04-30', 1398872881, 'Text', 1, '报名', 0),
(153, 4, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-04-30', 1398872987, 'Img', 1, '课程', 0),
(154, 1, 'tfffyz1397728996', 'oNbjjjhFqYaOnlMLTti5PfypWK04', '2014-05-01', 1398875466, 'follow', 1, '用户关注', 0),
(155, 1, 'tfffyz1397728996', 'oNbjjjrqDP9Qe7kGXBPqNK9tMsEo', '2014-05-01', 1398899977, 'follow', 2, '用户关注', 0),
(156, 1, 'tfffyz1397728996', 'oNbjjjrqDP9Qe7kGXBPqNK9tMsEo', '2014-05-01', 1398899977, 'follow', 2, '用户关注', 0),
(157, 0, 'tfffyz1397728996', 'oNbjjjijRY_cWiy646PW8OdgaPys', '2014-05-01', 1398909424, 'chat', 1, '12', 0),
(158, 0, 'tfffyz1397728996', 'oNbjjjijRY_cWiy646PW8OdgaPys', '2014-05-01', 1398909509, 'chat', 1, '用户关注', 0),
(159, 1, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-01', 1398937877, 'Text', 1, '报名', 0),
(160, 1, 'tfffyz1397728996', 'oNbjjjqTrhFVnarBfkRXFJ4c7puY', '2014-05-01', 1398958542, 'follow', 1, '用户关注', 0),
(161, 1, 'tfffyz1397728996', 'oNbjjjqHC4zHz5Y5R0brDuQrUrUk', '2014-05-02', 1398968694, 'follow', 1, '用户关注', 0),
(162, 1, 'ingdnn1397725894', 'oEeq8jjQ3SNK8x-IR1bymyFA79Ao', '2014-05-02', 1398993045, 'follow', 1, '用户关注', 0),
(163, 0, 'tfffyz1397728996', 'oNbjjjhPFoh67eGGNoMWYodKsLZs', '2014-05-02', 1399004452, 'chat', 2, '用户关注', 0),
(164, 0, 'tfffyz1397728996', 'oNbjjjhPFoh67eGGNoMWYodKsLZs', '2014-05-02', 1399004457, 'chat', 1, '帮公司代销库衣服', 0),
(165, 0, 'tfffyz1397728996', 'oNbjjjhPFoh67eGGNoMWYodKsLZs', '2014-05-02', 1399005099, 'chat', 1, '专业搞各大特卖场  帮公司代销清理库存衣服   贵公司有意向请跟我联系  林先生  13751064253', 0),
(166, 1, 'ingdnn1397725894', 'oEeq8jtA_zRge8K2qVS1I_nSGrcg', '2014-05-02', 1399022240, 'follow', 1, '用户关注', 0),
(167, 0, 'tfffyz1397728996', 'oNbjjjjdan1QOwKYi2hT7bpHrqIU', '2014-05-02', 1399025485, 'chat', 1, '11', 0),
(168, 0, 'tfffyz1397728996', 'oNbjjjjdan1QOwKYi2hT7bpHrqIU', '2014-05-02', 1399025529, 'chat', 1, '13', 0),
(169, 1, 'tfffyz1397728996', 'oNbjjjnGGId8ZuOP-2UG-SJ6SHqQ', '2014-05-02', 1399032568, 'follow', 1, '用户关注', 0),
(170, 0, 'tfffyz1397728996', 'oNbjjjnGGId8ZuOP-2UG-SJ6SHqQ', '2014-05-02', 1399032991, 'chat', 4, '用户关注', 0),
(171, 0, 'tfffyz1397728996', 'oNbjjjnGGId8ZuOP-2UG-SJ6SHqQ', '2014-05-02', 1399032998, 'chat', 1, '12', 0),
(172, 0, 'tfffyz1397728996', 'oNbjjjnGGId8ZuOP-2UG-SJ6SHqQ', '2014-05-02', 1399033006, 'chat', 1, '13', 0),
(173, 1, 'tfffyz1397728996', 'oNbjjjp0Tp_PGEa5Yt8e3Ga3rd6s', '2014-05-02', 1399034256, 'follow', 1, '用户关注', 0),
(174, 1, 'ingdnn1397725894', 'oEeq8jiuBtJ8jdPl-avREfxVL-n8', '2014-05-02', 1399038482, 'follow', 1, '用户关注', 0),
(175, 0, 'tfffyz1397728996', 'oNbjjjqHC4zHz5Y5R0brDuQrUrUk', '2014-05-02', 1399042775, 'chat', 1, '11', 0),
(176, 0, 'tfffyz1397728996', 'oNbjjjqHC4zHz5Y5R0brDuQrUrUk', '2014-05-02', 1399042789, 'chat', 1, '用户关注', 0),
(177, 1, 'tfffyz1397728996', 'oNbjjjpEU0tnVVRMkV-oCUHQQ-JE', '2014-05-03', 1399053672, 'follow', 1, '用户关注', 0),
(178, 0, 'tfffyz1397728996', 'oNbjjjpEU0tnVVRMkV-oCUHQQ-JE', '2014-05-03', 1399053847, 'chat', 3, '用户关注', 0),
(179, 1, 'tfffyz1397728996', 'oNbjjjhc8XXVR8EpXmNBsIcHkXhE', '2014-05-03', 1399072679, 'follow', 1, '用户关注', 0),
(180, 0, 'tfffyz1397728996', 'oNbjjjhc8XXVR8EpXmNBsIcHkXhE', '2014-05-03', 1399075142, 'chat', 1, '11', 0),
(181, 1, 'tfffyz1397728996', 'oNbjjjiRttY2PN4dIEC7mx6r7Wx8', '2014-05-03', 1399092203, 'follow', 1, '用户关注', 0),
(182, 1, 'ingdnn1397725894', 'oEeq8joHCp-VOK1ztva2hVKO2b80', '2014-05-03', 1399108588, 'Product', 2, '用户关注', 0),
(183, 1, 'ingdnn1397725894', 'oEeq8joHCp-VOK1ztva2hVKO2b80', '2014-05-03', 1399108588, 'Product', 2, '用户关注', 0),
(184, 0, 'tfffyz1397728996', 'oNbjjjgYRrjwWN1uxC9e-mT0Htvk', '2014-05-03', 1399110089, 'chat', 1, '用户关注', 0),
(185, 1, 'tfffyz1397728996', 'oNbjjjsj1zgUdDL9FxeijRAb0kFU', '2014-05-03', 1399116719, 'follow', 1, '用户关注', 0),
(186, 0, 'tfffyz1397728996', 'oNbjjjonstN3SoQqpb5yZVNKKcDY', '2014-05-03', 1399118293, 'chat', 1, '用户关注', 0),
(187, 1, 'ingdnn1397725894', 'oEeq8jntTgsrDZl7w66wEiWeXGP4', '2014-05-03', 1399126682, 'Product', 1, '用户关注', 0),
(188, 1, 'tfffyz1397728996', 'oNbjjjskSApWYi0t4-bVjwJsM158', '2014-05-03', 1399132361, 'follow', 1, '用户关注', 0),
(189, 1, 'ingdnn1397725894', 'oEeq8jn3SD_G7bZ9S3RXp8eVUrE8', '2014-05-04', 1399137958, 'follow', 1, '用户关注', 0),
(190, 1, 'ingdnn1397725894', 'oEeq8jvJDAhwONyaSZrYFBNBqtzY', '2014-05-04', 1399161260, 'Product', 1, '用户关注', 0),
(191, 1, 'tfffyz1397728996', 'oNbjjjiyS2XTIKeb8tcQWnhAr9To', '2014-05-04', 1399177633, 'follow', 1, '用户关注', 0),
(192, 1, 'tfffyz1397728996', 'oNbjjjsM5Mip54V2VW6MhNEo9s6s', '2014-05-04', 1399184812, 'follow', 1, '用户关注', 0),
(193, 0, 'tfffyz1397728996', 'oNbjjjsM5Mip54V2VW6MhNEo9s6s', '2014-05-04', 1399184842, 'chat', 1, '用户关注', 0),
(194, 1, 'tfffyz1397728996', 'oNbjjjrxoRy5itIMUnn5zgi_Ws30', '2014-05-04', 1399194688, 'follow', 1, '用户关注', 0),
(195, 1, 'tfffyz1397728996', 'oNbjjjks0cDkj86ROZhG8fwwZMkA', '2014-05-04', 1399200672, 'follow', 1, '用户关注', 0),
(196, 1, 'tfffyz1397728996', 'oNbjjjh6orQTfHfdb_qT0-6qr3Cg', '2014-05-04', 1399206891, 'follow', 1, '用户关注', 0),
(197, 1, 'ingdnn1397725894', 'oEeq8jmOGrP4vGOO_55cCRFJnzOQ', '2014-05-04', 1399217032, 'follow', 1, '用户关注', 0),
(198, 1, 'ingdnn1397725894', 'oEeq8jmtnW0CWY0ORmNL6onNck7A', '2014-05-05', 1399243076, 'follow', 1, '用户关注', 0),
(199, 1, 'tfffyz1397728996', 'oNbjjjsLIQlE7rWfjp_ACEr60a18', '2014-05-05', 1399243727, 'follow', 1, '用户关注', 0),
(200, 0, 'tfffyz1397728996', 'oNbjjjsLIQlE7rWfjp_ACEr60a18', '2014-05-05', 1399243971, 'chat', 1, '用户关注', 0),
(201, 1, 'ingdnn1397725894', 'oEeq8jryRz1K67diFLSWUOffMFiY', '2014-05-05', 1399258177, 'Product', 1, '用户关注', 0),
(202, 1, 'tfffyz1397728996', 'oNbjjjq28C5NmUWcHpJI3zgR4KCE', '2014-05-05', 1399258757, 'follow', 1, '用户关注', 0),
(203, 0, 'tfffyz1397728996', 'oNbjjjq28C5NmUWcHpJI3zgR4KCE', '2014-05-05', 1399258931, 'chat', 1, '用户关注', 0),
(204, 1, 'tfffyz1397728996', 'oNbjjjhlxQ7dJvktExhCF5U5Q3pY', '2014-05-05', 1399259298, 'follow', 1, '用户关注', 0),
(205, 0, 'tfffyz1397728996', 'oNbjjjhlxQ7dJvktExhCF5U5Q3pY', '2014-05-05', 1399259937, 'chat', 2, '用户关注', 0),
(206, 1, 'tfffyz1397728996', 'oNbjjjmiueZzTgqFfUbTQeVZw9_Y', '2014-05-05', 1399271017, 'follow', 1, '用户关注', 0),
(207, 1, 'tfffyz1397728996', 'oNbjjjpHK4ev_DqxepfHg81wVQxY', '2014-05-05', 1399273948, 'follow', 1, '用户关注', 0),
(208, 1, 'tfffyz1397728996', 'oNbjjjngQZCNjeMuPh9e_WUpM-9U', '2014-05-05', 1399274045, 'follow', 1, '用户关注', 0),
(209, 1, 'tfffyz1397728996', 'oNbjjjiZPmee-YNkpI_V5frbSAOM', '2014-05-05', 1399274671, 'follow', 1, '用户关注', 0),
(210, 1, 'tfffyz1397728996', 'oNbjjjiLWSJZjZDG4AIPshFpgLgY', '2014-05-05', 1399284442, 'follow', 1, '用户关注', 0),
(211, 1, 'tfffyz1397728996', 'oNbjjjgXh3SIWiA7EoIt6duqqP38', '2014-05-05', 1399293357, 'follow', 1, '用户关注', 0),
(212, 1, 'ingdnn1397725894', 'oEeq8jkiKPixJpX60RXFBTzcKe_M', '2014-05-05', 1399295249, 'follow', 1, '用户关注', 0),
(213, 1, 'ingdnn1397725894', 'oEeq8jqq3jogYIDzw1dmvhCSgQBo', '2014-05-05', 1399295450, 'follow', 1, '用户关注', 0),
(214, 1, 'ingdnn1397725894', 'oEeq8jpT_XSLWK45T4Ps3ONvCqe4', '2014-05-05', 1399296011, 'follow', 1, '用户关注', 0),
(215, 0, 'tfffyz1397728996', 'oNbjjjskSApWYi0t4-bVjwJsM158', '2014-05-05', 1399296916, 'chat', 1, '11', 0),
(216, 0, 'tfffyz1397728996', 'oNbjjjskSApWYi0t4-bVjwJsM158', '2014-05-05', 1399296944, 'chat', 1, '用户关注', 0),
(217, 1, 'ingdnn1397725894', 'oEeq8jis2Yv5vWC9Wg6W8rf0XwHw', '2014-05-05', 1399300995, 'Product', 1, '用户关注', 0),
(218, 0, 'tfffyz1397728996', 'oNbjjjpLKJN0LnphtigLK9UJBaeI', '2014-05-05', 1399301848, 'chat', 2, '用户关注', 0),
(219, 1, 'tfffyz1397728996', 'oNbjjjh3wS6NKaiJJW9Du6uNNJkg', '2014-05-05', 1399302036, 'follow', 1, '用户关注', 0),
(220, 1, 'tfffyz1397728996', 'oNbjjjr0WG3J9A0c4FRpgvo13RLY', '2014-05-05', 1399302309, 'follow', 1, '用户关注', 0),
(221, 0, 'tfffyz1397728996', 'oNbjjjrb-rjy3b3bGey9e_7lxdYM', '2014-05-05', 1399303927, 'chat', 1, '用户关注', 0),
(222, 1, 'tfffyz1397728996', 'oNbjjjiKs7DJDVIOQ2aznpCtkt3g', '2014-05-06', 1399311321, 'follow', 1, '用户关注', 0),
(223, 0, 'tfffyz1397728996', 'oNbjjjpT5VsYw5fI9sV-JKPSwmL8', '2014-05-06', 1399315632, 'chat', 2, '11', 0),
(224, 0, 'tfffyz1397728996', 'oNbjjjpT5VsYw5fI9sV-JKPSwmL8', '2014-05-06', 1399315632, 'chat', 1, '12', 0),
(225, 1, 'ingdnn1397725894', 'oEeq8jouQgyvfR-rTKvXtdLQoFQU', '2014-05-06', 1399331738, 'follow', 1, '用户关注', 0),
(226, 1, 'tfffyz1397728996', 'oNbjjjgZlNqmhde7bgiMaRFQsGeU', '2014-05-06', 1399333975, 'follow', 1, '用户关注', 0),
(227, 1, 'tfffyz1397728996', 'oNbjjjl0zJLzbajo8-UKhvrKVWhs', '2014-05-06', 1399334095, 'follow', 1, '用户关注', 0),
(228, 1, 'tfffyz1397728996', 'oNbjjjorSa0j-8XfWVxr1iYUUlQE', '2014-05-06', 1399342950, 'follow', 1, '用户关注', 0),
(229, 1, 'ingdnn1397725894', 'oEeq8jozin5pJbuZGavP5NlT_oys', '2014-05-06', 1399343547, 'follow', 1, '用户关注', 0),
(230, 1, 'tfffyz1397728996', 'oNbjjjon0USIP_OBZmXlQ2EJ88k0', '2014-05-06', 1399344038, 'follow', 1, '用户关注', 0),
(231, 1, 'tfffyz1397728996', 'oNbjjjlcrZpZnK6LVU47uCFdIOrc', '2014-05-06', 1399348648, 'follow', 1, '用户关注', 0),
(232, 0, 'tfffyz1397728996', 'oNbjjjlcrZpZnK6LVU47uCFdIOrc', '2014-05-06', 1399348662, 'chat', 1, '11', 0),
(233, 0, 'tfffyz1397728996', 'oNbjjjlcrZpZnK6LVU47uCFdIOrc', '2014-05-06', 1399348668, 'chat', 1, '12', 0),
(234, 0, 'tfffyz1397728996', 'oNbjjjlcrZpZnK6LVU47uCFdIOrc', '2014-05-06', 1399348676, 'chat', 1, '用户关注', 0),
(235, 1, 'tfffyz1397728996', 'oNbjjjgGdSRhcag5fCONn_yJS87I', '2014-05-06', 1399350301, 'follow', 1, '用户关注', 0),
(236, 0, 'tfffyz1397728996', 'oNbjjjh3wS6NKaiJJW9Du6uNNJkg', '2014-05-06', 1399351983, 'chat', 1, '用户关注', 0),
(237, 1, 'tfffyz1397728996', 'oNbjjjv5OEROed6R6dx3PsEg68oo', '2014-05-06', 1399352403, 'follow', 1, '用户关注', 0),
(238, 1, 'tfffyz1397728996', 'oNbjjjkvsDCI89nN8ruP7xDMyxZ8', '2014-05-06', 1399356093, 'follow', 1, '用户关注', 0),
(239, 0, 'tfffyz1397728996', 'oNbjjjkvsDCI89nN8ruP7xDMyxZ8', '2014-05-06', 1399356105, 'chat', 1, '用户关注', 0),
(240, 0, 'tfffyz1397728996', 'oNbjjjjst3i62n9X07FkjcdJYVms', '2014-05-06', 1399360580, 'chat', 1, '12', 0),
(241, 1, 'ingdnn1397725894', 'oEeq8ju72l_ecwlErM92LpdRH-IE', '2014-05-06', 1399363839, 'follow', 1, '用户关注', 0),
(242, 1, 'tfffyz1397728996', 'oNbjjjp7Lo0ei1j7wkh2ufamqB0s', '2014-05-06', 1399367208, 'follow', 1, '用户关注', 0),
(243, 0, 'tfffyz1397728996', 'oNbjjjp7Lo0ei1j7wkh2ufamqB0s', '2014-05-06', 1399368850, 'chat', 1, '用户关注', 0),
(244, 1, 'ingdnn1397725894', 'oEeq8jsplca2NiK9RyVpzny3fh8U', '2014-05-06', 1399369165, 'follow', 1, '用户关注', 0),
(245, 1, 'tfffyz1397728996', 'oNbjjjtA5a29g6hB4HDbPmQtxtSE', '2014-05-06', 1399369490, 'follow', 1, '用户关注', 0),
(246, 0, 'tfffyz1397728996', 'oNbjjjtA5a29g6hB4HDbPmQtxtSE', '2014-05-06', 1399369499, 'chat', 1, '13', 0),
(247, 0, 'tfffyz1397728996', 'oNbjjjtA5a29g6hB4HDbPmQtxtSE', '2014-05-06', 1399369521, 'chat', 1, '用户关注', 0),
(248, 1, 'tfffyz1397728996', 'oNbjjjn3-bJ1mjmX5KKIknyyB6C4', '2014-05-06', 1399373705, 'follow', 1, '用户关注', 0),
(249, 0, 'tfffyz1397728996', 'oNbjjjn3-bJ1mjmX5KKIknyyB6C4', '2014-05-06', 1399374352, 'chat', 1, '12', 0),
(250, 0, 'tfffyz1397728996', 'oNbjjjn3-bJ1mjmX5KKIknyyB6C4', '2014-05-06', 1399374364, 'chat', 1, '13', 0),
(251, 0, 'tfffyz1397728996', 'oNbjjjn3-bJ1mjmX5KKIknyyB6C4', '2014-05-06', 1399374371, 'chat', 1, '11', 0),
(252, 1, 'ingdnn1397725894', 'oEeq8jjuu-a2hY6aViVXLLt_FntA', '2014-05-06', 1399384273, 'follow', 1, '用户关注', 0),
(253, 1, 'tfffyz1397728996', 'oNbjjjplyuSRQwntw792SGkhWpUU', '2014-05-06', 1399386713, 'follow', 1, '用户关注', 0),
(254, 1, 'ingdnn1397725894', 'oEeq8jjbP3te9YOf8hsW8MlVLUVY', '2014-05-07', 1399396497, 'follow', 1, '用户关注', 0),
(255, 4, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-05-07', 1399433092, 'Img', 1, '课程', 0),
(256, 1, 'ingdnn1397725894', 'oEeq8jt5wr_LlYIxEGFPZTcXuP68', '2014-05-07', 1399433687, 'follow', 1, '用户关注', 0),
(257, 1, 'tfffyz1397728996', 'oNbjjjv7h7DiYWsbcOv4l-PZ7mdQ', '2014-05-07', 1399434336, 'follow', 1, '用户关注', 0),
(258, 0, 'tfffyz1397728996', 'oNbjjjv7h7DiYWsbcOv4l-PZ7mdQ', '2014-05-07', 1399434572, 'chat', 2, '11', 0),
(259, 0, 'tfffyz1397728996', 'oNbjjjv7h7DiYWsbcOv4l-PZ7mdQ', '2014-05-07', 1399434579, 'chat', 1, '13', 0),
(260, 0, 'tfffyz1397728996', 'oNbjjjv7h7DiYWsbcOv4l-PZ7mdQ', '2014-05-07', 1399434889, 'chat', 1, '用户关注', 0),
(261, 1, 'tfffyz1397728996', 'oNbjjjpv4U9Ds4wTDKHcE1c_ssDg', '2014-05-07', 1399436463, 'follow', 1, '用户关注', 0),
(262, 0, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-07', 1399436824, 'home', 2, '首页', 1),
(263, 0, 'tfffyz1397728996', 'oNbjjjp7Lo0ei1j7wkh2ufamqB0s', '2014-05-07', 1399439075, 'chat', 1, '用户关注', 0),
(264, 1, 'ingdnn1397725894', 'oEeq8jsVMxk1bK-Tth0AjCJylrUU', '2014-05-07', 1399444324, 'follow', 1, '用户关注', 0),
(265, 1, 'tfffyz1397728996', 'oNbjjjo9zspQE_QNL8jY9EnRDJFc', '2014-05-07', 1399445274, 'follow', 1, '用户关注', 0),
(266, 1, 'tfffyz1397728996', 'oNbjjjtg4GGhoDg5eb0px3DYG-sE', '2014-05-07', 1399454070, 'follow', 1, '用户关注', 0),
(267, 1, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-05-07', 1399463612, 'Selfform', 1, '预约', 0),
(268, 1, 'tfffyz1397728996', 'oNbjjjglAD8JTlbPyCOceU3s7z5c', '2014-05-07', 1399466845, 'follow', 1, '用户关注', 0),
(269, 1, 'tfffyz1397728996', 'oNbjjjprxjV-NG8gMQAcRHoc3eEw', '2014-05-07', 1399471172, 'follow', 1, '用户关注', 0),
(270, 1, 'tfffyz1397728996', 'oNbjjjj2XcMEr5oP3cC6MJbEGEFs', '2014-05-07', 1399472071, 'follow', 1, '用户关注', 0),
(271, 1, 'ingdnn1397725894', 'oEeq8jm2KVZC_-Q-4a02ctMO6_yg', '2014-05-07', 1399472403, 'Product', 1, '用户关注', 0),
(272, 1, 'tfffyz1397728996', 'oNbjjjm4dDuXRuXsUZHUimaEdpu8', '2014-05-07', 1399477798, 'follow', 1, '用户关注', 0),
(273, 0, 'tfffyz1397728996', 'oNbjjjm4dDuXRuXsUZHUimaEdpu8', '2014-05-08', 1399479168, 'chat', 1, '12', 0),
(274, 0, 'tfffyz1397728996', 'oNbjjjm4dDuXRuXsUZHUimaEdpu8', '2014-05-08', 1399479180, 'chat', 1, '用户关注', 0),
(275, 1, 'ingdnn1397725894', 'oEeq8jld19A-JH0gsHUyxtpTIz1w', '2014-05-08', 1399479263, 'follow', 1, '用户关注', 0),
(276, 1, 'tfffyz1397728996', 'oNbjjjjipw8AmoZcywJTXa45VWWk', '2014-05-08', 1399506581, 'follow', 1, '用户关注', 0),
(277, 1, 'tfffyz1397728996', 'oNbjjjsPCP1wtiwrotClEdHpj7MA', '2014-05-08', 1399514781, 'follow', 1, '用户关注', 0),
(278, 0, 'tfffyz1397728996', 'oNbjjjsPCP1wtiwrotClEdHpj7MA', '2014-05-08', 1399514798, 'chat', 2, '11', 0),
(279, 0, 'tfffyz1397728996', 'oNbjjjsPCP1wtiwrotClEdHpj7MA', '2014-05-08', 1399514860, 'chat', 1, '用户关注', 0),
(280, 1, 'tfffyz1397728996', 'oNbjjjvXjgD1NiiGJ2jxQCMsEG6s', '2014-05-08', 1399520507, 'follow', 1, '用户关注', 0),
(281, 4, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-08', 1399523660, 'Img', 2, '课程', 0),
(282, 0, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-08', 1399523823, 'home', 1, '首页', 1),
(283, 1, 'tfffyz1397728996', 'oNbjjjrR_pSWwvF_kBrGecfHKVT8', '2014-05-08', 1399524558, 'follow', 1, '用户关注', 0),
(284, 1, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-08', 1399530120, 'Selfform', 1, '预约', 0),
(285, 1, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-05-08', 1399531274, 'Text', 1, '报名', 0),
(286, 1, 'ingdnn1397725894', 'oEeq8jmD32ldc6VGsYD-r6yC2VB8', '2014-05-08', 1399533154, 'Product', 1, '用户关注', 0),
(287, 0, 'tfffyz1397728996', 'oNbjjjglAD8JTlbPyCOceU3s7z5c', '2014-05-08', 1399533277, 'chat', 1, '用户关注', 0),
(288, 0, 'tfffyz1397728996', 'oNbjjjpv4U9Ds4wTDKHcE1c_ssDg', '2014-05-08', 1399533350, 'chat', 1, '用户关注', 0),
(289, 1, 'tfffyz1397728996', 'oNbjjjloICAxLbH4P0THuqLJKb24', '2014-05-08', 1399533873, 'follow', 1, '用户关注', 0),
(290, 1, 'tfffyz1397728996', 'oNbjjjtNSdH-G-2VyXGR477-P_CU', '2014-05-08', 1399535039, 'follow', 1, '用户关注', 0),
(291, 0, 'tfffyz1397728996', 'oNbjjjjw1knc4UBtgzLnF0HTjJ2o', '2014-05-08', 1399537912, 'chat', 1, '用户关注', 0),
(292, 1, 'tfffyz1397728996', 'oNbjjjguQnAqr6W5dPBj-A-D1Wj8', '2014-05-08', 1399539331, 'follow', 1, '用户关注', 0),
(293, 1, 'ingdnn1397725894', 'oEeq8jjn7U1wNrzFnbPGqPQUEdUQ', '2014-05-08', 1399539900, 'follow', 1, '用户关注', 0),
(294, 1, 'ingdnn1397725894', 'oEeq8jvR3t2VQc4eJ8bzyK57ETuw', '2014-05-08', 1399548777, 'Product', 1, '用户关注', 0),
(295, 1, 'tfffyz1397728996', 'oNbjjjrwhe5yDQ-CD0bGNgHBEWfQ', '2014-05-08', 1399555389, 'follow', 1, '用户关注', 0),
(296, 0, 'tfffyz1397728996', 'oNbjjjrwhe5yDQ-CD0bGNgHBEWfQ', '2014-05-08', 1399555561, 'chat', 1, 'q', 0),
(297, 0, 'tfffyz1397728996', 'oNbjjjrwhe5yDQ-CD0bGNgHBEWfQ', '2014-05-08', 1399555575, 'chat', 1, '11', 0),
(298, 0, 'tfffyz1397728996', 'oNbjjjrwhe5yDQ-CD0bGNgHBEWfQ', '2014-05-08', 1399555591, 'chat', 1, '12', 0),
(299, 0, 'tfffyz1397728996', 'oNbjjjrwhe5yDQ-CD0bGNgHBEWfQ', '2014-05-08', 1399556928, 'chat', 1, '用户关注', 0),
(300, 1, 'ingdnn1397725894', 'oEeq8jlOb0UFDbLa9sFK37T8fE38', '2014-05-09', 1399565858, 'follow', 1, '用户关注', 0),
(301, 9, 'hwtbjw1397727501', 'oJSB_t2HVpEPCtG87R032ChBYg6s', '2014-05-09', 1399604521, 'Img', 2, '用户关注', 0),
(302, 1, 'tfffyz1397728996', 'oNbjjjnDhQRRElWpRwlNzc2gILGk', '2014-05-09', 1399604540, 'follow', 1, '用户关注', 0),
(303, 1, 'hwtbjw1397727501', 'oJSB_t1OegCAWzrHVUUlVX8T2hcg', '2014-05-09', 1399612339, 'follow', 1, '用户关注', 0),
(304, 1, 'hwtbjw1397727501', 'oJSB_t1OegCAWzrHVUUlVX8T2hcg', '2014-05-09', 1399612340, 'Selfform', 1, '用户关注', 0),
(305, 1, 'tfffyz1397728996', 'oNbjjjjWQj9fsKaG411M8FDNGsls', '2014-05-09', 1399634058, 'follow', 1, '用户关注', 0),
(306, 1, 'ingdnn1397725894', 'oEeq8jtzgONbfjKAjJ4WSgKSZFOw', '2014-05-09', 1399634219, 'Product', 1, '用户关注', 0),
(307, 1, 'ingdnn1397725894', 'oEeq8jrwQ5avmybq2XDPxnrGa9-M', '2014-05-09', 1399635494, 'Product', 1, '用户关注', 0),
(308, 0, 'tfffyz1397728996', 'oNbjjjjWQj9fsKaG411M8FDNGsls', '2014-05-09', 1399636546, 'chat', 1, '用户关注', 0),
(309, 1, 'tfffyz1397728996', 'oNbjjjjXcLHuYuxek7b8E1hfEBnY', '2014-05-09', 1399638441, 'follow', 1, '用户关注', 0),
(310, 1, 'tfffyz1397728996', 'oNbjjjhgnx5I_jlLvAvNAQezpJm8', '2014-05-09', 1399642998, 'follow', 1, '用户关注', 0),
(311, 1, 'tfffyz1397728996', 'oNbjjjid__h-BKfXA47koFY9oGZk', '2014-05-09', 1399646564, 'follow', 1, '用户关注', 0),
(312, 1, 'tfffyz1397728996', 'oNbjjjsQqM6ZMQoNqDT_GQo1WjR0', '2014-05-09', 1399647471, 'follow', 1, '用户关注', 0),
(313, 1, 'tfffyz1397728996', 'oNbjjjvlbTGDChJXY-_VthimqXYg', '2014-05-09', 1399649658, 'follow', 1, '用户关注', 0),
(314, 1, 'ingdnn1397725894', 'oEeq8jiyoq8aixxJTrftAJBlwKvA', '2014-05-09', 1399651172, 'Product', 1, '用户关注', 0),
(315, 1, 'tfffyz1397728996', 'oNbjjjnsF-e9ubCVP_0ispjqaLM0', '2014-05-10', 1399651438, 'follow', 1, '用户关注', 0),
(316, 1, 'tfffyz1397728996', 'oNbjjjvSjPVjsxJEeMyK0Vsve7m0', '2014-05-10', 1399654103, 'follow', 1, '用户关注', 0),
(317, 0, 'tfffyz1397728996', 'oNbjjjvSjPVjsxJEeMyK0Vsve7m0', '2014-05-10', 1399654490, 'chat', 1, '13', 0),
(318, 0, 'tfffyz1397728996', 'oNbjjjvSjPVjsxJEeMyK0Vsve7m0', '2014-05-10', 1399654503, 'chat', 1, '用户关注', 0),
(319, 0, 'tfffyz1397728996', 'oNbjjjmNGffHFH-DY9Kx8sSfg1iI', '2014-05-10', 1399687770, 'chat', 1, '用户关注', 0),
(320, 1, 'ingdnn1397725894', 'oEeq8jmfWGaBfUWeBSrhwcnerOEY', '2014-05-10', 1399702328, 'follow', 1, '用户关注', 0),
(321, 0, 'tfffyz1397728996', 'oNbjjjk4IE9VzGJUqrZhSVPU3_S4', '2014-05-10', 1399704447, 'chat', 2, '11', 0),
(322, 0, 'tfffyz1397728996', 'oNbjjjk4IE9VzGJUqrZhSVPU3_S4', '2014-05-10', 1399704450, 'chat', 1, '12', 0),
(323, 0, 'tfffyz1397728996', 'oNbjjjk4IE9VzGJUqrZhSVPU3_S4', '2014-05-10', 1399704454, 'chat', 1, '13', 0),
(324, 0, 'tfffyz1397728996', 'oNbjjjg6IRQEVwfZ7O1O9jJkwog8', '2014-05-10', 1399705650, 'chat', 1, '用户关注', 0),
(325, 1, 'hwtbjw1397727501', 'oJSB_t2h1OsXdgrJeR0fVJgE29OM', '2014-05-10', 1399709111, 'follow', 1, '用户关注', 0),
(326, 1, 'hwtbjw1397727501', 'oJSB_t2h1OsXdgrJeR0fVJgE29OM', '2014-05-10', 1399709111, 'Selfform', 1, '用户关注', 0),
(327, 9, 'hwtbjw1397727501', 'oJSB_t2HVpEPCtG87R032ChBYg6s', '2014-05-10', 1399710258, 'Img', 1, '用户关注', 0),
(328, 1, 'hwtbjw1397727501', 'oJSB_tzDD2idFWQU3C3ACwxQ03Io', '2014-05-10', 1399711088, 'follow', 1, '用户关注', 0),
(329, 1, 'hwtbjw1397727501', 'oJSB_tzDD2idFWQU3C3ACwxQ03Io', '2014-05-10', 1399711088, 'Selfform', 1, '用户关注', 0),
(330, 1, 'ingdnn1397725894', 'oEeq8juCAdu454AxQmkcK2LteRKo', '2014-05-10', 1399714274, 'follow', 1, '用户关注', 0),
(331, 1, 'tfffyz1397728996', 'oNbjjjmrcDd6Yk5dGqpLfLTtInDs', '2014-05-10', 1399717107, 'follow', 1, '用户关注', 0),
(332, 1, 'tfffyz1397728996', 'oNbjjjsZCI5W2CLNsC5X1dCr1cSU', '2014-05-10', 1399725914, 'follow', 1, '用户关注', 0),
(333, 0, 'tfffyz1397728996', 'oNbjjjsZCI5W2CLNsC5X1dCr1cSU', '2014-05-10', 1399725925, 'chat', 1, '11', 0),
(334, 0, 'tfffyz1397728996', 'oNbjjjsZCI5W2CLNsC5X1dCr1cSU', '2014-05-10', 1399725944, 'chat', 1, '用户关注', 0),
(335, 0, 'tfffyz1397728996', 'oNbjjjiaUPbSAu9JmjkfHiFjMjUs', '2014-05-10', 1399733987, 'chat', 1, '用户关注', 0),
(336, 1, 'ingdnn1397725894', 'oEeq8jmj0apIsM6WP40PWB2Zy7w0', '2014-05-11', 1399768686, 'Product', 1, '用户关注', 0),
(337, 1, 'ingdnn1397725894', 'oEeq8joslfoMWJ0xnEVNEl0ERZhM', '2014-05-11', 1399778783, 'follow', 2, '用户关注', 0),
(338, 1, 'ingdnn1397725894', 'oEeq8jpXi1jVjacL7bVgj3Y6kOs8', '2014-05-11', 1399784825, 'follow', 1, '用户关注', 0),
(339, 1, 'tfffyz1397728996', 'oNbjjjqPsy-xdvk3XO4zN1_9IZKs', '2014-05-11', 1399791868, 'follow', 1, '用户关注', 0),
(340, 9, 'hwtbjw1397727501', 'oJSB_t2HVpEPCtG87R032ChBYg6s', '2014-05-11', 1399792790, 'Img', 1, '用户关注', 0),
(341, 1, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-05-11', 1399794647, 'Selfform', 1, '预约', 0),
(342, 1, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-05-11', 1399794676, 'Text', 1, '报名', 0),
(343, 10, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-11', 1399794980, 'Img', 2, '历史消息', 0),
(344, 10, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-05-11', 1399795218, 'Img', 1, '历史消息', 0),
(345, 1, 'hwtbjw1397727501', 'oJSB_t1WbBkcwFvOpHISWxYqZVaE', '2014-05-11', 1399810570, 'follow', 1, '用户关注', 0),
(346, 1, 'hwtbjw1397727501', 'oJSB_t1WbBkcwFvOpHISWxYqZVaE', '2014-05-11', 1399810570, 'Selfform', 1, '用户关注', 0),
(347, 1, 'tfffyz1397728996', 'oNbjjjqacC3vv1NxUopSXssM4hpM', '2014-05-11', 1399816462, 'follow', 1, '用户关注', 0),
(348, 1, 'ingdnn1397725894', 'oEeq8jpFg9-AvqFuSIfMYarpcHqE', '2014-05-11', 1399816900, 'Product', 1, '用户关注', 0),
(349, 1, 'ingdnn1397725894', 'oEeq8jvicMwZI_mHdE9sOEikovBo', '2014-05-11', 1399817476, 'follow', 1, '用户关注', 0),
(350, 1, 'ingdnn1397725894', 'oEeq8jpatn8ZIlCLX9V_YDmEGymU', '2014-05-11', 1399818782, 'follow', 1, '用户关注', 0),
(351, 1, 'ingdnn1397725894', 'oEeq8jpatn8ZIlCLX9V_YDmEGymU', '2014-05-11', 1399818923, 'Product', 1, '用户关注', 0),
(352, 1, 'tfffyz1397728996', 'oNbjjjiFvb4JOQnWJl29qaQ73ZXQ', '2014-05-12', 1399854303, 'follow', 1, '用户关注', 0),
(353, 11, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-12', 1399863303, 'Img', 2, '历史消息', 0),
(354, 1, 'tfffyz1397728996', 'oNbjjjvCiFojGFwkDxGklt5OrhwQ', '2014-05-12', 1399870631, 'follow', 1, '用户关注', 0),
(355, 0, 'tfffyz1397728996', 'oNbjjjvCiFojGFwkDxGklt5OrhwQ', '2014-05-12', 1399870908, 'chat', 1, '11', 0),
(356, 0, 'tfffyz1397728996', 'oNbjjjvCiFojGFwkDxGklt5OrhwQ', '2014-05-12', 1399870938, 'chat', 1, '用户关注', 0),
(357, 1, 'tfffyz1397728996', 'oNbjjjulY069nExipoCujiiTD_Vw', '2014-05-12', 1399879801, 'follow', 1, '用户关注', 0),
(358, 1, 'ingdnn1397725894', 'oEeq8jmwb484DZI0sMDgVKFau7-g', '2014-05-12', 1399881368, 'follow', 1, '用户关注', 0),
(359, 1, 'ingdnn1397725894', 'oEeq8jtZIOMne_Jl_s3g5xQyPFU0', '2014-05-12', 1399882018, 'follow', 1, '用户关注', 0),
(360, 1, 'tfffyz1397728996', 'oNbjjjlP_16q0rWAGx-Gn4SCBEms', '2014-05-12', 1399882605, 'follow', 1, '用户关注', 0),
(361, 1, 'tfffyz1397728996', 'oNbjjjsAYa2y7LuP7J3MBw0ZMNDs', '2014-05-12', 1399883438, 'follow', 1, '用户关注', 0),
(362, 11, 'hwtbjw1397727501', 'oJSB_t2HVpEPCtG87R032ChBYg6s', '2014-05-12', 1399885658, 'Img', 1, '用户关注', 0),
(363, 1, 'ingdnn1397725894', 'oEeq8jvY6I5EhdInHwXMgXobpdpE', '2014-05-12', 1399890923, 'follow', 1, '用户关注', 0),
(364, 1, 'tfffyz1397728996', 'oNbjjjnKSVfrSI8nntLz5QMl7T4s', '2014-05-12', 1399900476, 'follow', 1, '用户关注', 0),
(365, 1, 'tfffyz1397728996', 'oNbjjjtfopqp33vAeFQeB0dhWbvE', '2014-05-12', 1399904131, 'follow', 1, '用户关注', 0),
(366, 1, 'tfffyz1397728996', 'oNbjjjmL83S-s9Uyqp_Asj_02xRw', '2014-05-12', 1399904383, 'follow', 1, '用户关注', 0),
(367, 0, 'tfffyz1397728996', 'oNbjjjmL83S-s9Uyqp_Asj_02xRw', '2014-05-12', 1399904418, 'chat', 1, '用户关注', 0),
(368, 1, 'tfffyz1397728996', 'oNbjjjnYH_za0Li4qiVztMtZDGR8', '2014-05-13', 1399919473, 'follow', 1, '用户关注', 0),
(369, 1, 'tfffyz1397728996', 'oNbjjjrCi81DCNQdfrtYrODRgMbc', '2014-05-13', 1399943670, 'follow', 1, '用户关注', 0),
(370, 1, 'tfffyz1397728996', 'oNbjjjth_ifjbTyiZ5CBL3eWsthU', '2014-05-13', 1399945663, 'follow', 1, '用户关注', 0),
(371, 1, 'tfffyz1397728996', 'oNbjjjjjBU_ffA-dqbvMCtF8nKJU', '2014-05-13', 1399950254, 'follow', 1, '用户关注', 0),
(372, 0, 'tfffyz1397728996', 'oNbjjjjjBU_ffA-dqbvMCtF8nKJU', '2014-05-13', 1399950272, 'chat', 3, '11', 0),
(373, 0, 'tfffyz1397728996', 'oNbjjjjjBU_ffA-dqbvMCtF8nKJU', '2014-05-13', 1399950274, 'chat', 1, '13', 0),
(374, 0, 'tfffyz1397728996', 'oNbjjjjjBU_ffA-dqbvMCtF8nKJU', '2014-05-13', 1399950284, 'chat', 2, '12', 0),
(375, 0, 'tfffyz1397728996', 'oNbjjjjjBU_ffA-dqbvMCtF8nKJU', '2014-05-13', 1399950574, 'chat', 1, '你好，我怎么加你微信呀？看看你家的服装', 0),
(376, 0, 'tfffyz1397728996', 'oNbjjjjjBU_ffA-dqbvMCtF8nKJU', '2014-05-13', 1399950574, 'chat', 1, '你好，我怎么加你微信呀？看看你家的服装', 0),
(377, 1, 'tfffyz1397728996', 'oNbjjjjzX8AXB-LJ4cqF-vXc8WBA', '2014-05-13', 1399963698, 'follow', 1, '用户关注', 0),
(378, 1, 'tfffyz1397728996', 'oNbjjjqle-s6aqBehXrOp1pnsRi4', '2014-05-13', 1399967514, 'follow', 1, '用户关注', 0),
(379, 0, 'tfffyz1397728996', 'oNbjjjqle-s6aqBehXrOp1pnsRi4', '2014-05-13', 1399967527, 'chat', 1, '12', 0),
(380, 1, 'ingdnn1397725894', 'oEeq8jhDf4QyNxsk1d6AF95lUAq4', '2014-05-13', 1399968126, 'Product', 1, '用户关注', 0),
(381, 1, 'tfffyz1397728996', 'oNbjjjkvI04zmKBBssXCSL7BkVjI', '2014-05-13', 1399968647, 'follow', 1, '用户关注', 0),
(382, 1, 'ingdnn1397725894', 'oEeq8jlHffIDi7kTJTqZqyC230vU', '2014-05-13', 1399974302, 'Product', 1, '用户关注', 0),
(383, 0, 'tfffyz1397728996', 'oNbjjjidDQZYzAqKBghlnJAt8oEg', '2014-05-13', 1399974686, 'chat', 1, '用户关注', 0),
(384, 0, 'tfffyz1397728996', 'oNbjjjhsZcdrdTSoGYQpYYktNNBI', '2014-05-13', 1399975392, 'chat', 1, '用户关注', 0),
(385, 11, 'hwtbjw1397727501', 'oJSB_t2HVpEPCtG87R032ChBYg6s', '2014-05-13', 1399980347, 'Img', 1, '用户关注', 0),
(386, 1, 'hwtbjw1397727501', 'oJSB_t6fymBsSaA36rLisuERG0b8', '2014-05-13', 1399980945, 'follow', 1, '用户关注', 0),
(387, 1, 'hwtbjw1397727501', 'oJSB_t6fymBsSaA36rLisuERG0b8', '2014-05-13', 1399980945, 'Selfform', 1, '用户关注', 0),
(388, 1, 'hwtbjw1397727501', 'oJSB_t-3t2a1kfIzYeQajv-BPPxc', '2014-05-13', 1399983618, 'follow', 1, '用户关注', 0),
(389, 1, 'hwtbjw1397727501', 'oJSB_t-3t2a1kfIzYeQajv-BPPxc', '2014-05-13', 1399983618, 'Selfform', 1, '用户关注', 0),
(390, 1, 'hwtbjw1397727501', 'oJSB_t4Ft7BnkO2E1fUgjuC7Wc9g', '2014-05-13', 1399991055, 'follow', 1, '用户关注', 0),
(391, 1, 'hwtbjw1397727501', 'oJSB_t4Ft7BnkO2E1fUgjuC7Wc9g', '2014-05-13', 1399991056, 'Selfform', 1, '用户关注', 0),
(392, 1, 'ingdnn1397725894', 'oEeq8jl8-Xy4lCw8_EZAc1KL_pS4', '2014-05-13', 1399993984, 'follow', 1, '用户关注', 0),
(393, 0, 'tfffyz1397728996', 'oNbjjjkvI04zmKBBssXCSL7BkVjI', '2014-05-13', 1399994187, 'chat', 1, '用户关注', 0),
(394, 1, 'hwtbjw1397727501', 'oJSB_t_wqhNgmeLD6DZuGoq3gmLU', '2014-05-13', 1399995004, 'follow', 1, '用户关注', 0),
(395, 1, 'hwtbjw1397727501', 'oJSB_t_wqhNgmeLD6DZuGoq3gmLU', '2014-05-13', 1399995004, 'Selfform', 1, '用户关注', 0),
(396, 1, 'tfffyz1397728996', 'oNbjjjukiUx1IcuAzwbS6xcp6zb4', '2014-05-14', 1399999368, 'follow', 1, '用户关注', 0),
(397, 1, 'hwtbjw1397727501', 'oJSB_twFGtk7YW_IrCJk0bRz_oYY', '2014-05-14', 1400033787, 'follow', 1, '用户关注', 0),
(398, 1, 'hwtbjw1397727501', 'oJSB_twFGtk7YW_IrCJk0bRz_oYY', '2014-05-14', 1400033787, 'Selfform', 1, '用户关注', 0),
(399, 0, 'tfffyz1397728996', 'oNbjjjjnnhDAq0OGAuWcTNBVKZu8', '2014-05-14', 1400035316, 'chat', 1, '用户关注', 0),
(400, 1, 'ingdnn1397725894', 'oEeq8jlXtMyjjuPiAOGsh5oVp97Q', '2014-05-14', 1400035744, 'Product', 1, '用户关注', 0),
(401, 1, 'hwtbjw1397727501', 'oJSB_t-lljh3FcMGu5BSw0bICOQk', '2014-05-14', 1400036466, 'follow', 1, '用户关注', 0),
(402, 1, 'hwtbjw1397727501', 'oJSB_t-lljh3FcMGu5BSw0bICOQk', '2014-05-14', 1400036466, 'Selfform', 1, '用户关注', 0),
(403, 1, 'hwtbjw1397727501', 'oJSB_t_ggjEY35O92aEfhPaxHx8o', '2014-05-14', 1400042815, 'follow', 1, '用户关注', 0),
(404, 1, 'hwtbjw1397727501', 'oJSB_t_ggjEY35O92aEfhPaxHx8o', '2014-05-14', 1400042815, 'Selfform', 1, '用户关注', 0),
(405, 1, 'hwtbjw1397727501', 'oJSB_t8KhVOT_xK304WNViFNTIMs', '2014-05-14', 1400042835, 'follow', 1, '用户关注', 0),
(406, 1, 'hwtbjw1397727501', 'oJSB_t8KhVOT_xK304WNViFNTIMs', '2014-05-14', 1400042835, 'Selfform', 1, '用户关注', 0),
(407, 1, 'ingdnn1397725894', 'oEeq8jmsTTi_Txedil7xdBJYy14s', '2014-05-14', 1400049064, 'Product', 1, '用户关注', 0),
(408, 1, 'tfffyz1397728996', 'oNbjjjrlHdHAh-yxgfI4zS_I4hGI', '2014-05-14', 1400051171, 'follow', 1, '用户关注', 0),
(409, 1, 'hwtbjw1397727501', 'oJSB_tz_0qMm3AjhLaYkYIEDgKxo', '2014-05-14', 1400055321, 'follow', 1, '用户关注', 0),
(410, 1, 'hwtbjw1397727501', 'oJSB_tz_0qMm3AjhLaYkYIEDgKxo', '2014-05-14', 1400055321, 'Selfform', 1, '用户关注', 0),
(411, 11, 'hwtbjw1397727501', 'oJSB_t2HVpEPCtG87R032ChBYg6s', '2014-05-14', 1400056133, 'Img', 1, '用户关注', 0),
(412, 1, 'tfffyz1397728996', 'oNbjjjpwsWFI1UEzy1iVlxCyz8fM', '2014-05-14', 1400057910, 'follow', 1, '用户关注', 0),
(413, 11, 'hwtbjw1397727501', 'oJSB_twFGtk7YW_IrCJk0bRz_oYY', '2014-05-14', 1400058537, 'Img', 1, '用户关注', 0),
(414, 1, 'tfffyz1397728996', 'oNbjjjpaaayzrxeusmDSsXII4GvE', '2014-05-14', 1400061865, 'follow', 1, '用户关注', 0),
(415, 1, 'tfffyz1397728996', 'oNbjjjr6IHCGlsXN7wwcY3Y_N1o8', '2014-05-14', 1400064806, 'follow', 1, '用户关注', 0),
(416, 1, 'hwtbjw1397727501', 'oJSB_ty0elMgh4jcYoHSDhX3WHts', '2014-05-14', 1400069231, 'follow', 1, '用户关注', 0),
(417, 1, 'hwtbjw1397727501', 'oJSB_ty0elMgh4jcYoHSDhX3WHts', '2014-05-14', 1400069231, 'Selfform', 1, '用户关注', 0),
(418, 1, 'tfffyz1397728996', 'oNbjjjvph03sC37UT4YX4hY4GIZk', '2014-05-14', 1400075847, 'follow', 1, '用户关注', 0),
(419, 1, 'hwtbjw1397727501', 'oJSB_t6SoxmD-ZebLwUqiySup7tk', '2014-05-15', 1400087375, 'follow', 1, '用户关注', 0),
(420, 1, 'hwtbjw1397727501', 'oJSB_t6SoxmD-ZebLwUqiySup7tk', '2014-05-15', 1400087375, 'Selfform', 1, '用户关注', 0),
(421, 11, 'hwtbjw1397727501', 'oJSB_t6SoxmD-ZebLwUqiySup7tk', '2014-05-15', 1400087708, 'Img', 1, '历史消息', 0),
(422, 1, 'tfffyz1397728996', 'oNbjjjmnZWcxlas6J0Wjz4kIJqGE', '2014-05-15', 1400114700, 'follow', 1, '用户关注', 0),
(423, 0, 'tfffyz1397728996', 'oNbjjjmnZWcxlas6J0Wjz4kIJqGE', '2014-05-15', 1400114829, 'chat', 3, '11', 0),
(424, 0, 'tfffyz1397728996', 'oNbjjjmnZWcxlas6J0Wjz4kIJqGE', '2014-05-15', 1400114836, 'chat', 2, '12', 0),
(425, 1, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-15', 1400118366, 'Selfform', 1, '预约', 0),
(426, 1, 'hwtbjw1397727501', 'oJSB_t1l3_wrui5IWFtvUsje65Lc', '2014-05-15', 1400118990, 'follow', 1, '用户关注', 0),
(427, 1, 'hwtbjw1397727501', 'oJSB_t1l3_wrui5IWFtvUsje65Lc', '2014-05-15', 1400118990, 'Selfform', 1, '用户关注', 0),
(428, 1, 'hwtbjw1397727501', 'oJSB_t1l3_wrui5IWFtvUsje65Lc', '2014-05-15', 1400119063, 'Selfform', 1, '预约', 0),
(429, 0, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-15', 1400119339, 'home', 1, '首页', 1);
INSERT INTO `pigcms_behavior` (`id`, `fid`, `token`, `openid`, `date`, `enddate`, `model`, `num`, `keyword`, `type`) VALUES
(430, 0, 'hwtbjw1397727501', 'oJSB_t1l3_wrui5IWFtvUsje65Lc', '2014-05-15', 1400119743, 'home', 1, '首页', 1),
(431, 11, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-15', 1400120949, 'Img', 1, '历史消息', 0),
(432, 1, 'tfffyz1397728996', 'oNbjjjo7nuct1aLJVlndEEtYkLoI', '2014-05-15', 1400129291, 'follow', 1, '用户关注', 0),
(433, 0, 'tfffyz1397728996', 'oNbjjjo7nuct1aLJVlndEEtYkLoI', '2014-05-15', 1400129302, 'chat', 1, '11', 0),
(434, 0, 'tfffyz1397728996', 'oNbjjjo7nuct1aLJVlndEEtYkLoI', '2014-05-15', 1400129306, 'chat', 1, '12', 0),
(435, 0, 'tfffyz1397728996', 'oNbjjjo7nuct1aLJVlndEEtYkLoI', '2014-05-15', 1400129314, 'chat', 1, '用户关注', 0),
(436, 1, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-05-15', 1400134497, 'Text', 1, '报名', 0),
(437, 1, 'hwtbjw1397727501', 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', '2014-05-15', 1400134510, 'Selfform', 1, '预约', 0),
(438, 1, 'hwtbjw1397727501', 'oJSB_t6cjkWkx_ahBfuVBRN7nhgE', '2014-05-15', 1400138731, 'follow', 1, '用户关注', 0),
(439, 1, 'hwtbjw1397727501', 'oJSB_t6cjkWkx_ahBfuVBRN7nhgE', '2014-05-15', 1400138731, 'Selfform', 1, '用户关注', 0),
(440, 1, 'tfffyz1397728996', 'oNbjjjv85kybs7iegdWw56EWDrFw', '2014-05-15', 1400139454, 'follow', 1, '用户关注', 0),
(441, 1, 'tfffyz1397728996', 'oNbjjji7wROZAPBQlKzZnlNJGcRM', '2014-05-15', 1400140637, 'follow', 1, '用户关注', 0),
(442, 1, 'tfffyz1397728996', 'oNbjjjiPFecJkygaoRNhoNtvmI-8', '2014-05-15', 1400143514, 'follow', 1, '用户关注', 0),
(443, 1, 'ingdnn1397725894', 'oEeq8jr4yOV42AE38bCB8oDjdKuM', '2014-05-15', 1400159648, 'follow', 1, '用户关注', 0),
(444, 1, 'tfffyz1397728996', 'oNbjjjnMcpSPSzQne05nH_o6J_a4', '2014-05-15', 1400161071, 'follow', 1, '用户关注', 0),
(445, 0, 'tfffyz1397728996', 'oNbjjjnMcpSPSzQne05nH_o6J_a4', '2014-05-15', 1400161076, 'chat', 1, '用户关注', 0),
(446, 1, 'tfffyz1397728996', 'oNbjjjryaMN_9e6YKmBaJu3WmnCg', '2014-05-15', 1400165133, 'follow', 1, '用户关注', 0),
(447, 0, 'tfffyz1397728996', 'oNbjjjryaMN_9e6YKmBaJu3WmnCg', '2014-05-15', 1400165145, 'chat', 1, '用户关注', 0),
(448, 1, 'tfffyz1397728996', 'oNbjjjr6Cf8mVJSopVBfcFEEjO3k', '2014-05-15', 1400166166, 'follow', 1, '用户关注', 0),
(449, 1, 'tfffyz1397728996', 'oNbjjjlj_SscvsCokY6JVX3ZZp9c', '2014-05-15', 1400167480, 'follow', 1, '用户关注', 0),
(450, 1, 'tfffyz1397728996', 'oNbjjjp7dCNFGsDJf3akT0nlbbz4', '2014-05-16', 1400199299, 'follow', 1, '用户关注', 0),
(451, 0, 'tfffyz1397728996', 'oNbjjjiPFecJkygaoRNhoNtvmI-8', '2014-05-16', 1400200090, 'chat', 1, '11', 0),
(452, 1, 'ingdnn1397725894', 'oEeq8jrV5h90zvZaa1QJFnTrZlk0', '2014-05-16', 1400206404, 'follow', 1, '用户关注', 0),
(453, 0, 'tfffyz1397728996', 'oNbjjjg628Br6vgalNPR41Rs_BlE', '2014-05-16', 1400209236, 'chat', 1, '用户关注', 0),
(454, 0, 'tfffyz1397728996', 'oNbjjjiPFecJkygaoRNhoNtvmI-8', '2014-05-16', 1400209974, 'chat', 1, '用户关注', 0),
(455, 1, 'tfffyz1397728996', 'oNbjjjtlrswUasdYDlV23vX2vdrg', '2014-05-16', 1400214487, 'follow', 1, '用户关注', 0),
(456, 1, 'tfffyz1397728996', 'oNbjjjqQPiDinxkYoribH8eQVSKk', '2014-05-16', 1400225673, 'follow', 1, '用户关注', 0),
(457, 1, 'ingdnn1397725894', 'oEeq8jsT1ypCIsCe9RJQvxUCCCt0', '2014-05-16', 1400227713, 'follow', 1, '用户关注', 0),
(458, 1, 'tfffyz1397728996', 'oNbjjjvOo0bYo3nT04UANm6eoOTc', '2014-05-16', 1400243196, 'follow', 1, '用户关注', 0),
(459, 0, 'tfffyz1397728996', 'oNbjjjvOo0bYo3nT04UANm6eoOTc', '2014-05-16', 1400243522, 'chat', 1, '用户关注', 0),
(460, 1, 'tfffyz1397728996', 'oNbjjjmAasz6PAil_JReUEuXHPKs', '2014-05-16', 1400246509, 'follow', 1, '用户关注', 0),
(461, 1, 'tfffyz1397728996', 'oNbjjjk8c15-G7uQXM6PLPrII-OE', '2014-05-16', 1400246999, 'follow', 1, '用户关注', 0),
(462, 0, 'tfffyz1397728996', 'oNbjjjk8c15-G7uQXM6PLPrII-OE', '2014-05-16', 1400248253, 'chat', 1, '用户关注', 0),
(463, 1, 'ingdnn1397725894', 'oEeq8jvIf_mwXcOtHyYuJh4NaRVI', '2014-05-16', 1400250397, 'follow', 1, '用户关注', 0),
(464, 1, 'ingdnn1397725894', 'oEeq8ju5_i0O3cLO5Bu1lbJViEd0', '2014-05-17', 1400289689, 'follow', 1, '用户关注', 0),
(465, 1, 'ingdnn1397725894', 'oEeq8jnFUgSg7YMnxSYokar0VWt0', '2014-05-17', 1400307094, 'Product', 1, '用户关注', 0),
(466, 1, 'tfffyz1397728996', 'oNbjjjrg6fB7ls7SPWJLzu1QEX_Q', '2014-05-17', 1400318359, 'follow', 1, '用户关注', 0),
(467, 1, 'tfffyz1397728996', 'oNbjjjtS8OGIGptjXC77aTPuD3og', '2014-05-17', 1400333730, 'follow', 1, '用户关注', 0),
(468, 1, 'ingdnn1397725894', 'oEeq8jnGC9dEVWR3v-3s9o0k6lVw', '2014-05-18', 1400348503, 'follow', 1, '用户关注', 0),
(469, 1, 'ingdnn1397725894', 'oEeq8jnlDEm5p-TLraJ9esxQlt58', '2014-05-18', 1400351359, 'Product', 1, '用户关注', 0),
(470, 1, 'ingdnn1397725894', 'oEeq8jjSKEghlkehjWIC80R--HSM', '2014-05-18', 1400365345, 'follow', 1, '用户关注', 0),
(471, 1, 'hwtbjw1397727501', 'oJSB_t4xq25nselBLkQ28zQzU-K4', '2014-05-18', 1400387212, 'follow', 2, '用户关注', 0),
(472, 1, 'hwtbjw1397727501', 'oJSB_t4xq25nselBLkQ28zQzU-K4', '2014-05-18', 1400387213, 'Selfform', 2, '用户关注', 0),
(473, 1, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '2014-05-18', 1400405306, 'Selfform', 1, '预约', 0),
(474, 1, 'hwtbjw1397727501', 'oJSB_t64KDN81NaP3O5IzaWZEnjU', '2014-05-18', 1400405737, 'Selfform', 1, '预约', 0),
(475, 1, 'hwtbjw1397727501', 'oJSB_t1hDTvth_t5qt-36LHYkO5k', '2014-05-18', 1400417472, 'follow', 1, '用户关注', 0),
(476, 1, 'hwtbjw1397727501', 'oJSB_t1hDTvth_t5qt-36LHYkO5k', '2014-05-18', 1400417473, 'Selfform', 1, '用户关注', 0),
(477, 1, 'tfffyz1397728996', 'oNbjjjlDkL2AxpUstzrXuu3oIqkc', '2014-05-18', 1400419860, 'follow', 1, '用户关注', 0),
(478, 0, 'tfffyz1397728996', 'oNbjjjukiUx1IcuAzwbS6xcp6zb4', '2014-05-18', 1400424598, 'chat', 1, '11', 0),
(479, 1, 'tfffyz1397728996', 'oNbjjjnhWPbpz8DAVCbuw1RN9Ai8', '2014-05-19', 1400432959, 'follow', 1, '用户关注', 0),
(480, 0, 'tfffyz1397728996', 'oNbjjjnhWPbpz8DAVCbuw1RN9Ai8', '2014-05-19', 1400433130, 'chat', 1, '用户关注', 0),
(481, 1, 'ingdnn1397725894', 'oEeq8jtA-R3FjUI2h8RFrcdKA2tA', '2014-05-19', 1400445012, 'follow', 1, '用户关注', 0),
(482, 1, 'ingdnn1397725894', 'oEeq8jjbP3te9YOf8hsW8MlVLUVY', '2014-05-19', 1400457583, 'Product', 1, '用户关注', 0),
(483, 1, 'ingdnn1397725894', 'oEeq8jjbP3te9YOf8hsW8MlVLUVY', '2014-05-19', 1400457583, 'Product', 1, '用户关注', 0),
(484, 1, 'ingdnn1397725894', 'oEeq8jh6Thr9tuVCDOtNraSM25xM', '2014-05-19', 1400462444, 'Product', 1, '用户关注', 0),
(485, 1, 'tfffyz1397728996', 'oNbjjjlxLIFHO0lObGavA0qkbMFU', '2014-05-19', 1400466790, 'follow', 1, '用户关注', 0),
(486, 1, 'tfffyz1397728996', 'oNbjjjiVO535gULYD9d7u7qDaup8', '2014-05-19', 1400470327, 'follow', 1, '用户关注', 0),
(487, 1, 'klntps1397732204', 'oA4j3t8V0lh0SZ--LUDMf9utEKfA', '2014-05-19', 1400471059, 'Router_config', 1, '免费wifi', 0),
(488, 1, 'klntps1397732204', 'oA4j3t8V0lh0SZ--LUDMf9utEKfA', '2014-05-19', 1400471072, 'Router_config', 2, '用户关注', 0),
(489, 1, 'klntps1397732204', 'oA4j3t8V0lh0SZ--LUDMf9utEKfA', '2014-05-19', 1400471090, 'follow', 1, '用户关注', 0),
(490, 0, 'tfffyz1397728996', 'oNbjjjgy8dRQoS3vCE9v7QBl29bM', '2014-05-19', 1400471193, 'chat', 1, '11', 0),
(491, 11, 'hwtbjw1397727501', 'oJSB_t64KDN81NaP3O5IzaWZEnjU', '2014-05-19', 1400472047, 'Img', 1, '用户关注', 0),
(492, 1, 'hwtbjw1397727501', 'oJSB_t64KDN81NaP3O5IzaWZEnjU', '2014-05-19', 1400472096, 'follow', 1, '用户关注', 0),
(493, 1, 'hwtbjw1397727501', 'oJSB_t64KDN81NaP3O5IzaWZEnjU', '2014-05-19', 1400472096, 'Selfform', 1, '用户关注', 0),
(494, 1, 'tfffyz1397728996', 'oNbjjjiNla_FJ_pFq7L2mMGWadfY', '2014-05-19', 1400472384, 'follow', 1, '用户关注', 0),
(495, 11, 'hwtbjw1397727501', 'oJSB_t64KDN81NaP3O5IzaWZEnjU', '2014-05-19', 1400472486, 'Img', 1, '历史消息', 0),
(496, 1, 'tfffyz1397728996', 'oNbjjjrEGPU-zq_P8FXgsV5s1YVk', '2014-05-19', 1400476001, 'follow', 1, '用户关注', 0),
(497, 1, 'tfffyz1397728996', 'oNbjjjuM8lDprYm3wCjCdxODrrko', '2014-05-19', 1400477654, 'follow', 1, '用户关注', 0),
(498, 1, 'ingdnn1397725894', 'oEeq8jmygZgAXMrRcgKHc1WibMzM', '2014-05-19', 1400477763, 'follow', 1, '用户关注', 0),
(499, 0, 'tfffyz1397728996', 'oNbjjjuM8lDprYm3wCjCdxODrrko', '2014-05-19', 1400478060, 'chat', 1, '用户关注', 0),
(500, 1, 'tfffyz1397728996', 'oNbjjjicGOq2EQYYjprz9fN9z9vI', '2014-05-19', 1400478115, 'follow', 1, '用户关注', 0),
(501, 2, 'mpwwxa1405924744', 'olPOLuKSstYiPCXyg4SnO-0vWxGk', '2014-07-21', 1405924979, 'Market', 1, '商圈', 0),
(502, 1, 'mpwwxa1405924744', 'olPOLuC8OASDGPSCKm5rJRSsONOo', '2014-07-21', 1405931662, 'follow', 3, '用户关注', 0),
(503, 2, 'mpwwxa1405924744', 'olPOLuC8OASDGPSCKm5rJRSsONOo', '2014-07-21', 1405931997, 'Market', 1, '用户关注', 0),
(504, 2, 'mpwwxa1405924744', 'olPOLuJ8Bs1QDpTt2GsgIexPzv1c', '2014-07-21', 1405955901, 'Market', 1, '用户关注', 0),
(505, 1, 'mpwwxa1405924744', 'olPOLuF8JYChd2ytXs3QN7_EknA4', '2014-07-22', 1405962506, 'follow', 1, '用户关注', 0),
(506, 0, 'mpwwxa1405924744', 'olPOLuKSstYiPCXyg4SnO-0vWxGk', '2014-07-22', 1405988178, 'chat', 1, '聊天', 0),
(507, 0, 'mpwwxa1405924744', 'olPOLuKSstYiPCXyg4SnO-0vWxGk', '2014-07-22', 1405988193, 'chat', 1, '啊', 0),
(508, 0, 'mpwwxa1405924744', 'olPOLuKSstYiPCXyg4SnO-0vWxGk', '2014-07-22', 1405988198, 'chat', 1, '不是吧', 0),
(509, 0, 'mpwwxa1405924744', 'olPOLuKSstYiPCXyg4SnO-0vWxGk', '2014-07-22', 1405988205, 'home', 1, '首页', 1),
(510, 0, 'mpwwxa1405924744', 'olPOLuKSstYiPCXyg4SnO-0vWxGk', '2014-07-22', 1405988230, 'chat', 1, 'http://demo.zxbxb.com/index.php?g=Wap&m=Store&a=index&token=', 0),
(511, 1, 'zhtaad1406117161', 'obLuhtwirQvHXWbmQoavchVg-_uA', '2014-07-23', 1406118132, 'Reservation', 1, '楼盘', 0),
(512, 6, 'zhtaad1406117161', 'obLuhtwirQvHXWbmQoavchVg-_uA', '2014-07-23', 1406118337, 'Member_card_set', 1, '会员卡', 0),
(513, 3, 'fbvqqy1406181027', 'oLwG1jjvDx3i_PEIy2zbHdHs-j0s', '2014-07-24', 1406181520, 'Wall', 1, 'wxq', 0),
(514, 2, 'fbvqqy1406181027', 'oLwG1jjvDx3i_PEIy2zbHdHs-j0s', '2014-07-24', 1406181624, 'Shake', 1, 'yyy', 0),
(515, 2, 'fbvqqy1406181027', 'oLwG1jmHdxSpAR871l2WdcdgeZsA', '2014-07-24', 1406181688, 'Shake', 1, 'yyy', 0),
(516, 1, 'fbvqqy1406181027', 'oLwG1jnNKtmYEHBMC8DYubDSSwXc', '2014-07-24', 1406181737, 'follow', 3, '用户关注', 0),
(517, 2, 'fbvqqy1406181027', 'oLwG1jnNKtmYEHBMC8DYubDSSwXc', '2014-07-24', 1406181744, 'Shake', 1, 'yyy', 0),
(518, 0, 'jbfkls1406185903', 'oI1kAj-8QToaNH2FpvQ358fH2438', '2014-07-24', 1406185976, 'chat', 2, '你好', 0),
(519, 0, 'jbfkls1406185903', 'oI1kAj-8QToaNH2FpvQ358fH2438', '2014-07-24', 1406185985, 'home', 1, '首页', 1),
(520, 2, 'jbfkls1406185903', 'oI1kAj-8QToaNH2FpvQ358fH2438', '2014-07-24', 1406186022, 'Sign', 1, '签到', 0),
(521, 7, 'jbfkls1406185903', 'oI1kAj-8QToaNH2FpvQ358fH2438', '2014-07-24', 1406186135, 'Member_card_set', 1, '会员', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `mtitle` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) NOT NULL,
  `toppicurl` varchar(200) NOT NULL DEFAULT '',
  `roompicurl` varchar(200) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `business_desc` text NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `blogo` varchar(200) NOT NULL,
  `businesphone` char(13) NOT NULL DEFAULT '',
  `orderInfo` varchar(800) NOT NULL DEFAULT '',
  `compyphone` char(12) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '36',
  `conttpid` tinyint(4) DEFAULT '36',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_busines`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines_comment`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(50) NOT NULL DEFAULT '',
  `face_picurl` varchar(200) NOT NULL,
  `face_desc` varchar(1000) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_busines_comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines_main`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines_main` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `main_desc` text NOT NULL,
  `type` char(15) NOT NULL,
  `telphone` char(12) NOT NULL DEFAULT '',
  `maddress` varchar(50) NOT NULL DEFAULT '',
  `desc_pic` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_busines_main`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines_pic`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bid_id` int(11) NOT NULL,
  `picurl_1` varchar(200) NOT NULL DEFAULT '',
  `picurl_2` varchar(200) NOT NULL DEFAULT '',
  `picurl_3` varchar(200) NOT NULL DEFAULT '',
  `picurl_4` varchar(200) NOT NULL DEFAULT '',
  `picurl_5` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `ablum_id` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_busines_pic`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_busines_second`
--

CREATE TABLE IF NOT EXISTS `pigcms_busines_second` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid_id` int(11) NOT NULL,
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `learntime` varchar(100) NOT NULL,
  `datatype` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `second_desc` text NOT NULL,
  `oneprice` decimal(10,2) DEFAULT '0.00',
  `googsnumber` bigint(20) NOT NULL DEFAULT '0',
  `havenumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_busines_second`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_car`
--

CREATE TABLE IF NOT EXISTS `pigcms_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `www` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  `info` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_car`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carmodel`
--

CREATE TABLE IF NOT EXISTS `pigcms_carmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `model_year` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `panorama_id` int(11) DEFAULT '0',
  `guide_price` varchar(50) NOT NULL DEFAULT '',
  `dealer_price` varchar(50) NOT NULL DEFAULT '',
  `emission` double NOT NULL,
  `stalls` tinyint(4) DEFAULT NULL,
  `box` tinyint(4) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `s_id` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_carmodel`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carnews`
--

CREATE TABLE IF NOT EXISTS `pigcms_carnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `news_id` int(11) NOT NULL,
  `pre_id` int(11) NOT NULL,
  `usedcar_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_carnews`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carowner`
--

CREATE TABLE IF NOT EXISTS `pigcms_carowner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '''''',
  `head_url` varchar(200) NOT NULL DEFAULT '''''',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_carowner`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carsaler`
--

CREATE TABLE IF NOT EXISTS `pigcms_carsaler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `mobile` char(13) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `salestype` tinyint(4) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_carsaler`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carseries`
--

CREATE TABLE IF NOT EXISTS `pigcms_carseries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_carseries`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_carset`
--

CREATE TABLE IF NOT EXISTS `pigcms_carset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL,
  `title1` varchar(50) NOT NULL DEFAULT '',
  `title2` varchar(50) NOT NULL DEFAULT '',
  `title3` varchar(50) NOT NULL DEFAULT '',
  `title4` varchar(50) NOT NULL DEFAULT '',
  `title5` varchar(50) NOT NULL DEFAULT '',
  `title6` varchar(50) NOT NULL DEFAULT '',
  `head_url_1` varchar(200) NOT NULL DEFAULT '',
  `head_url_2` varchar(200) NOT NULL DEFAULT '',
  `head_url_3` varchar(200) NOT NULL DEFAULT '',
  `head_url_4` varchar(200) NOT NULL DEFAULT '',
  `head_url_5` varchar(200) NOT NULL DEFAULT '',
  `head_url_6` varchar(200) NOT NULL DEFAULT '',
  `url1` varchar(200) NOT NULL DEFAULT '',
  `url2` varchar(200) NOT NULL DEFAULT '',
  `url3` varchar(200) NOT NULL DEFAULT '',
  `url4` varchar(200) NOT NULL DEFAULT '',
  `url5` varchar(200) NOT NULL DEFAULT '',
  `url6` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '23',
  `conttpid` tinyint(4) DEFAULT '23',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_carset`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_caruser`
--

CREATE TABLE IF NOT EXISTS `pigcms_caruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `car_userName` varchar(50) NOT NULL,
  `car_startTime` varchar(50) NOT NULL,
  `car_insurance_lastDate` varchar(50) NOT NULL,
  `car_insurance_lastCost` decimal(10,2) NOT NULL,
  `car_care_mileage` int(11) NOT NULL,
  `user_tel` char(11) NOT NULL,
  `car_care_lastDate` varchar(50) NOT NULL,
  `car_care_lastCost` decimal(10,2) NOT NULL,
  `kfinfo` varchar(200) NOT NULL DEFAULT '',
  `insurance_Date` varchar(50) DEFAULT NULL,
  `insurance_Cost` decimal(10,2) DEFAULT NULL,
  `care_mileage` int(11) DEFAULT NULL,
  `car_care_Date` varchar(50) DEFAULT NULL,
  `car_care_Cost` decimal(10,2) DEFAULT NULL,
  `car_buyTime` varchar(50) NOT NULL DEFAULT '',
  `car_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `care_next_mileage` int(11) NOT NULL DEFAULT '0',
  `next_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `next_insurance_Date` varchar(50) NOT NULL DEFAULT '',
  `carmodel` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='3G car' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_caruser`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_car_utility`
--

CREATE TABLE IF NOT EXISTS `pigcms_car_utility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pigcms_car_utility`
--

INSERT INTO `pigcms_car_utility` (`id`, `name`, `url`, `status`, `token`) VALUES
(1, '车贷计算器', 'http://car.m.yiche.com/qichedaikuanjisuanqi/', 1, ''),
(2, '保险计算', 'http://car.m.yiche.com/qichebaoxianjisuan/', 1, ''),
(3, '全款计算', 'http://car.m.yiche.com/gouchejisuanqi/', 1, ''),
(4, '车型比较', 'http://car.m.yiche.com/chexingduibi/?carIDs=102501', 1, ''),
(5, '违章查询', 'http://wap.bjjtgl.gov.cn/wimframework/portal/wwwroot/bjjgj/xxcx.psml?contentType=%E8%BF%9D%E6%B3%95%', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_case`
--

CREATE TABLE IF NOT EXISTS `pigcms_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_case`
--

INSERT INTO `pigcms_case` (`id`, `name`, `url`, `img`, `status`) VALUES
(2, '演示', 'http://www.wei0794.com', 'http://demo.zxbxb.com/uploads/t/tnovgk1406093051/0/d/5/3/thumb_53d06765025dd.php', '1');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_catemenu`
--

CREATE TABLE IF NOT EXISTS `pigcms_catemenu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `name` varchar(120) NOT NULL,
  `orderss` varchar(10) NOT NULL DEFAULT '0',
  `picurl` varchar(120) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL,
  `RadioGroup1` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pigcms_catemenu`
--

INSERT INTO `pigcms_catemenu` (`id`, `fid`, `token`, `name`, `orderss`, `picurl`, `url`, `status`, `RadioGroup1`) VALUES
(1, 0, 'ingdnn1397725894', '菜谱', '0', 'http://www.wei0794.com/tpl/static/attachment/icon/white/11.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=lists&amp;token=ingdnn1397725894&amp;wecha_id={wechat_id}&amp;classid=1', '1', '0'),
(2, 0, 'ingdnn1397725894', '养生', '0', 'http://www.wei0794.com/tpl/static/attachment/icon/white/7.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=lists&amp;token=ingdnn1397725894&amp;wecha_id={wechat_id}&amp;classid=2', '1', '0'),
(3, 0, 'ingdnn1397725894', '活动', '0', 'http://www.wei0794.com/tpl/static/attachment/icon/white/16.png', '{siteUrl}/index.php?g=Wap&amp;m=Product&amp;a=dining&amp;dining=1&amp;token=ingdnn1397725894&amp;wecha_id={wechat_id}', '1', '0'),
(4, 0, 'ingdnn1397725894', '购买', '0', 'http://www.wei0794.com/tpl/User/default/common/images/photo/plugmenu9.png', '{siteUrl}/index.php?g=Wap&amp;m=Product&amp;a=index&amp;token=ingdnn1397725894&amp;wecha_id={wechat_id}', '1', '0'),
(5, 0, 'hwtbjw1397727501', '深圳今智塔', '0', 'http://www.wei0794.com/tpl/User/default/common/images/photo/plugmenu6.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=lists&amp;token=hwtbjw1397727501&amp;wecha_id={wechat_id}&amp;classid=7', '1', '0'),
(7, 0, 'hwtbjw1397727501', '突围企业', '0', 'http://www.wei0794.com/tpl/User/default/common/images/photo/plugmenu5.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=lists&amp;token=hwtbjw1397727501&amp;wecha_id={wechat_id}&amp;classid=9', '1', '0'),
(8, 0, 'hwtbjw1397727501', '密码课程', '0', 'http://www.wei0794.com/tpl/User/default/common/images/photo/plugmenu10.png', '{siteUrl}/index.php?g=Wap&amp;m=Index&amp;a=lists&amp;token=hwtbjw1397727501&amp;wecha_id={wechat_id}&amp;classid=6', '1', '0'),
(9, 0, 'hwtbjw1397727501', '预约报名', '0', 'http://www.wei0794.com/tpl/User/default/common/images/photo/plugmenu1.png', '{siteUrl}/index.php?g=Wap&amp;m=Selfform&amp;a=index&amp;token=hwtbjw1397727501&amp;wecha_id={wechat_id}&amp;id=1', '1', '0');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_classify`
--

CREATE TABLE IF NOT EXISTS `pigcms_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` int(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` int(10) DEFAULT '1',
  `conttpid` int(10) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `pigcms_classify`
--

INSERT INTO `pigcms_classify` (`id`, `fid`, `name`, `info`, `sorts`, `img`, `url`, `status`, `token`, `path`, `tpid`, `conttpid`) VALUES
(1, 0, '菜谱', '', 1, 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/hamburger.png', '', '1', 'ingdnn1397725894', '0', 38, 1),
(2, 0, '养生', '', 1, 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/medicine.png', '', '1', 'ingdnn1397725894', '0', 38, 1),
(3, 1, '养生菜', '养生菜', 1, 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/1.png', '', '1', 'ingdnn1397725894', '0', 38, 1),
(4, 1, '养生菜', '养生菜', 1, 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/1.png', '', '1', 'ingdnn1397725894', '0', 38, 1),
(5, 1, '养生菜', '养生菜', 1, 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/1.png', '', '1', 'ingdnn1397725894', '0', 38, 1),
(6, 0, '密码课程', '密码课程', 4, 'http://www.wei0794.com/tpl/static/attachment/icon/white/4.png', '', '1', 'hwtbjw1397727501', '0', 38, 1),
(7, 0, '深圳今智塔', '深圳今智塔', 1, 'http://www.wei0794.com/tpl/static/attachment/icon/white/1.png', '', '1', 'hwtbjw1397727501', '0', 38, 1),
(8, 0, '讲师团队', '讲师团队', 2, 'http://www.wei0794.com/tpl/static/attachment/icon/white/11.png', '', '1', 'hwtbjw1397727501', '0', 38, 1),
(9, 0, '突围企业', '突围企业', 3, 'http://www.wei0794.com/tpl/static/attachment/icon/white/10.png', '', '1', 'hwtbjw1397727501', '0', 38, 1),
(10, 0, '联系我们', '联系我们', 10, 'http://www.wei0794.com/tpl/static/attachment/icon/white/14.png', '', '1', 'hwtbjw1397727501', '0', 38, 1),
(11, 0, '新闻中心', '新闻中心', 9, 'http://www.wei0794.com/tpl/static/attachment/icon/white/3.png', '', '1', 'hwtbjw1397727501', '0', 38, 1),
(12, 0, '历史消息', '历史消息', 1, 'http://www.wei0794.com/tpl/static/attachment/icon/white/14.png', '', '0', 'hwtbjw1397727501', '0', 38, 1),
(13, 0, 'VIP', '微时代会员卡，方便携带收藏，永不挂失', 1, 'http://demo.zxbxb.com/tpl/static/attachment/icon/canyin/canyin_red/5.png', '{siteUrl}/index.php?g=Wap&amp;m=Store&amp;a=index&amp;token=hvhyny1406205407&amp;wecha_id={wechat_id}', '1', 'hvhyny1406205407', '0', 136, 8);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_company`
--

CREATE TABLE IF NOT EXISTS `pigcms_company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `isbranch` tinyint(1) NOT NULL DEFAULT '0',
  `logourl` varchar(180) NOT NULL DEFAULT '',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) NOT NULL DEFAULT '0',
  `market_id` int(11) NOT NULL DEFAULT '0',
  `mark_url` varchar(200) NOT NULL DEFAULT '',
  `add_time` char(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `pigcms_company`
--

INSERT INTO `pigcms_company` (`id`, `display`, `token`, `name`, `username`, `password`, `shortname`, `mp`, `tel`, `address`, `latitude`, `longitude`, `intro`, `catid`, `taxis`, `isbranch`, `logourl`, `area_id`, `cate_id`, `market_id`, `mark_url`, `add_time`) VALUES
(1, 1, 'hwtbjw1397727501', '今智塔集团深圳分部', '', '', '今智塔', '18922860181', '4008586996', '广东省深圳市南山区桂庙路22号', 22.529702, 113.932447, '&lt;img src=&quot;/uploads/h/hwtbjw1397727501/0/0/0/5/53509aae2920a.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/uploads/h/hwtbjw1397727501/6/7/c/b/53509ac0a633c.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/uploads/h/hwtbjw1397727501/9/c/8/0/53509ad19229b.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/uploads/h/hwtbjw1397727501/9/6/f/8/53509ae0f09a1.jpg&quot; alt=&quot;&quot; /&gt;', 0, 0, 0, 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/7/3/2/e/thumb_534fa9de55c3a.jpg', 0, 0, 0, '', '0'),
(2, 1, 'klntps1397732204', '深圳市慕希莱服饰有限公司', '', '', '慕希莱服饰', '15920030234', '4008709798', '广东省深圳市南山区桂庙路22号', 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', '0'),
(3, 1, 'mpwwxa1405924744', '测试', '', '', '123', '18015578890', '18015578821', '', 0, 0, '', 0, 0, 1, 'http://suetest.yzsep.com/uploads/3/398a753c4a8605f/5/2/9/2/thumb_535a16a07aed0.jpg', 0, 0, 2, '', '1405925037'),
(4, 1, 'mpwwxa1405924744', '11', '', '', '11', '13407311199', '11111111', '111', 11, 11, '1111111111111', 0, 1, 0, '1111', 0, 0, 0, '', '0'),
(5, 1, 'tnovgk1406093051', 'dsf', '', '', 'fsda', '13522222222', 'fasd', 'fsda', 33, 33, '33333', 0, 3, 0, 'dsf', 0, 0, 0, '', '0'),
(6, 1, 'hvhyny1406205407', '222', '', '', '222', '15159932191', '2222312415', '安徽省合肥市包河区', 3215, 331, '', 0, 0, 0, 'http://demo.zxbxb.com/tpl/User/default/common/images/portrait.jpg', 0, 0, 0, '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_company_staff`
--

CREATE TABLE IF NOT EXISTS `pigcms_company_staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyid` (`companyid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_company_staff`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_field`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` char(15) NOT NULL,
  `filed_option` char(60) NOT NULL,
  `field_type` char(10) NOT NULL,
  `item_name` char(15) NOT NULL,
  `field_match` char(80) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_empty` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `err_info` char(35) NOT NULL,
  `set_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_custom_field`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(30) NOT NULL,
  `set_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `user_name` char(35) NOT NULL,
  `phone` char(11) NOT NULL,
  `sub_info` text NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_custom_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_limit`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_limit` (
  `limit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enddate` char(10) NOT NULL,
  `sub_total` smallint(6) NOT NULL,
  `today_total` smallint(6) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`limit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_custom_limit`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_custom_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_custom_set` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL,
  `keyword` char(25) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `addtime` char(10) NOT NULL,
  `top_pic` char(100) NOT NULL,
  `succ_info` char(35) NOT NULL,
  `err_info` char(35) NOT NULL,
  `detail` text NOT NULL,
  `limit_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `address` char(80) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_custom_set`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dining_table`
--

CREATE TABLE IF NOT EXISTS `pigcms_dining_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  `isbox` tinyint(1) unsigned NOT NULL,
  `isorder` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `isbox` (`isbox`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_dining_table`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(3) NOT NULL,
  `price` float NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL,
  `image` varchar(200) NOT NULL COMMENT '片',
  `des` varchar(500) NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `isopen` (`isopen`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_dish`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_company`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `istakeaway` tinyint(1) unsigned NOT NULL,
  `price` float NOT NULL,
  `payonline` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_dish_company`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_like`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_dish_like`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `info` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tableid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `reservetime` int(11) NOT NULL,
  `isuse` tinyint(1) NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `des` varchar(500) NOT NULL,
  `takeaway` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_dish_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_sort`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num` smallint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_dish_sort`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_dish_table`
--

CREATE TABLE IF NOT EXISTS `pigcms_dish_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `tableid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `reservetime` int(10) unsigned NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `isuse` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`,`reservetime`),
  KEY `tableid` (`tableid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_dish_table`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_diyform`
--

CREATE TABLE IF NOT EXISTS `pigcms_diyform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `qq` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_diyform`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_diyform_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_diyform_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `jion_num` int(5) NOT NULL,
  `select_name` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_diyform_set`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_diymen_class`
--

CREATE TABLE IF NOT EXISTS `pigcms_diymen_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `url` varchar(300) NOT NULL DEFAULT '',
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `pigcms_diymen_class`
--

INSERT INTO `pigcms_diymen_class` (`id`, `token`, `pid`, `title`, `keyword`, `url`, `is_show`, `sort`) VALUES
(1, 'tfffyz1397728996', 0, '关于我们', '关于', '', 1, 0),
(2, 'tfffyz1397728996', 0, '首页', '首页', '', 1, 1),
(3, 'tfffyz1397728996', 0, '123', '1', '', 1, 0),
(4, 'tfffyz1397728996', 2, '11', '11', '', 1, 0),
(5, 'tfffyz1397728996', 1, '12', '12', '', 1, 0),
(6, 'tfffyz1397728996', 3, '13', '13', '', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_diymen_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_diymen_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `pigcms_diymen_set`
--

INSERT INTO `pigcms_diymen_set` (`id`, `token`, `appid`, `appsecret`) VALUES
(1, 'ingdnn1397725894', '', ''),
(2, 'hwtbjw1397727501', '', ''),
(3, 'tfffyz1397728996', 'wx744be68aa24d80a6', '1696bd327e4060d988cf2be28a1783bd'),
(4, 'klntps1397732204', 'wx516a499ac4e46c93', '7b26bdad4aedf0f36fc6651a00b07637'),
(5, 'ffgwbc1405611966', '', ''),
(6, 'vpofgi1405911853', '123', '123'),
(7, 'mpwwxa1405924744', '2', '2'),
(8, 'tnovgk1406093051', '123', '123123'),
(9, 'zhtaad1406117161', '', ''),
(10, 'fbvqqy1406181027', '', ''),
(11, 'jbfkls1406185903', '', ''),
(12, 'hvhyny1406205407', '214', '124214');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL COMMENT '关键词匹配模式：',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `video` varchar(200) DEFAULT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(80) NOT NULL DEFAULT '',
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '36',
  `conttpid` tinyint(4) DEFAULT '36',
  `menu1` varchar(50) NOT NULL,
  `menu2` varchar(50) NOT NULL,
  `menu3` varchar(50) NOT NULL,
  `menu4` varchar(50) NOT NULL,
  `menu5` varchar(50) NOT NULL,
  `menu6` varchar(50) NOT NULL,
  `menu7` varchar(50) NOT NULL,
  `menu8` varchar(50) NOT NULL,
  `picurl1` varchar(500) NOT NULL,
  `picurl2` varchar(500) NOT NULL,
  `picurl3` varchar(500) NOT NULL,
  `picurl4` varchar(500) NOT NULL,
  `picurl5` varchar(500) NOT NULL,
  `picurl6` varchar(500) NOT NULL,
  `picurl7` varchar(500) NOT NULL,
  `picurl8` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `token_2` (`token`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='楼盘简介' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_estate`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_album`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_estate_album`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_expert`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_expert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_estate_expert`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_housetype`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panorama_id` int(10) NOT NULL DEFAULT '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `panorama_id` (`panorama_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_estate_housetype`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_impress`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_impress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_estate_impress`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_impress_add`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_impress_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imp_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_estate_impress_add`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_estate_son`
--

CREATE TABLE IF NOT EXISTS `pigcms_estate_son` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='子楼盘' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_estate_son`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_files`
--

CREATE TABLE IF NOT EXISTS `pigcms_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- 转存表中的数据 `pigcms_files`
--

INSERT INTO `pigcms_files` (`id`, `token`, `url`, `size`, `type`, `time`) VALUES
(1, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/7/3/2/e/thumb_534fa9de55c3a.jpg', 6483, 'jpg', 1397729758),
(2, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/7/c/8/2/534fa9f1b0181.jpg', 100749, 'jpg', 1397729777),
(3, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/9/5/f/0/534faa016250e.jpg', 227263, 'jpg', 1397729793),
(4, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/6/3/5/c/534faa123cba1.jpg', 229056, 'jpg', 1397729810),
(5, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/8/d/1/a/534faa215e64a.jpg', 253110, 'jpg', 1397729825),
(6, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/9/6/e/c/thumb_534fed9a25b53.jpg', 1613, 'jpg', 1397747098),
(7, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/d/6/c/4/thumb_534fedd5c1f13.png', 2517, 'png', 1397747157),
(8, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/c/6/b/9/thumb_534fee5095a3e.png', 5819, 'png', 1397747280),
(9, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/3/5/3/5/thumb_534fee8781a68.png', 5819, 'png', 1397747335),
(10, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/0/8/2/thumb_534feedbc2d71.png', 5744, 'png', 1397747419),
(11, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/a/7/2/thumb_534fef3bec9b3.png', 2716, 'png', 1397747515),
(12, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/1/6/8/thumb_535087d10fecf.jpg', 46698, 'jpg', 1397786577),
(13, 'ingdnn1397725894', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/2/9/f/f/thumb_53508840567e3.jpg', 23996, 'jpg', 1397786688),
(14, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/0/0/0/5/53509aae2920a.jpg', 100749, 'jpg', 1397791406),
(15, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/6/7/c/b/53509ac0a633c.jpg', 227263, 'jpg', 1397791424),
(16, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/9/c/8/0/53509ad19229b.jpg', 229056, 'jpg', 1397791441),
(17, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/9/6/f/8/53509ae0f09a1.jpg', 253110, 'jpg', 1397791456),
(18, 'ingdnn1397725894', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/b/b/d/6/thumb_53562259784aa.jpg', 31034, 'jpg', 1398153817),
(19, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/4/0/1/thumb_53573cb282fe0.jpg', 106886, 'jpg', 1398226098),
(20, 'ingdnn1397725894', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/e/5/d/c/thumb_535748de3c772.jpg', 257563, 'jpg', 1398229214),
(21, 'ingdnn1397725894', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/e/5/c/c/thumb_53574a7929548.jpg', 177682, 'jpg', 1398229626),
(22, 'ingdnn1397725894', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/f/6/f/f/thumb_53574afbd8f9b.jpg', 264073, 'jpg', 1398229757),
(23, 'ingdnn1397725894', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/3/2/a/5/thumb_53574bd2298c6.png', 6198, 'png', 1398229970),
(24, 'ingdnn1397725894', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/7/1/a/9/thumb_53574e97c98a4.png', 51403, 'png', 1398230680),
(25, 'ingdnn1397725894', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/4/0/9/f/thumb_53574efc38d57.png', 59985, 'png', 1398230780),
(26, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/3/b/1/0/thumb_536109381b6fc.jpg', 6781, 'jpg', 1398868280),
(27, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/b/f/a/a/thumb_53610c585c71d.jpg', 54967, 'jpg', 1398869080),
(28, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/e/0/7/5/thumb_53610f1c6c256.jpg', 26583, 'jpg', 1398869788),
(29, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/d/a/8/thumb_5369b576a3ee1.jpg', 123299, 'jpg', 1399436663),
(30, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/e/4/6/thumb_5369b93bb8cb5.jpg', 457794, 'jpg', 1399437628),
(31, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/8/b/a/1/thumb_5369bdae1bbe7.jpg', 264333, 'jpg', 1399438766),
(32, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/b/7/2/5369bdce7becf.jpg', 633769, 'jpg', 1399438798),
(33, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/4/1/7/e/5369bde29b2f0.jpg', 369028, 'jpg', 1399438818),
(34, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/5/c/e/5369bdfbe4a1d.jpg', 606809, 'jpg', 1399438843),
(35, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/2/f/b/e/5369be1745b2b.jpg', 879203, 'jpg', 1399438871),
(36, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/4/8/e/8/thumb_5369ff21c8fda.jpg', 120436, 'jpg', 1399455522),
(37, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/4/8/e/f/thumb_536a0029b2a53.jpg', 17798, 'jpg', 1399455785),
(38, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/b/9/3/thumb_536b0bb1eeb48.jpg', 25347, 'jpg', 1399524274),
(39, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/7/5/d/2/thumb_536b0cc86daa0.jpg', 36086, 'jpg', 1399524552),
(40, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/2/6/6/c/thumb_536b225bd90e7.jpg', 236984, 'jpg', 1399530076),
(41, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/7/6/6/b/thumb_536b22fcd8887.jpg', 236998, 'jpg', 1399530237),
(42, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/3/0/6/0/thumb_536ddc02c9606.jpg', 268124, 'jpg', 1399708676),
(43, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/3/4/e/5/thumb_536f2ce08fa64.jpg', 95787, 'jpg', 1399794913),
(44, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/d/5/0/0/thumb_5370385d7bcac.jpg', 268124, 'jpg', 1399863390),
(45, 'tnovgk1406093051', 'http://demo.zxbxb.com/uploads/t/tnovgk1406093051/5/6/7/1/thumb_53d06738ae63c.php', 1175, 'php', 1406166840),
(46, 'tnovgk1406093051', 'http://demo.zxbxb.com/uploads/t/tnovgk1406093051/0/d/5/3/thumb_53d06765025dd.php', 52318, 'php', 1406166885),
(47, 'tnovgk1406093051', 'http://demo.zxbxb.com/uploads/t/tnovgk1406093051/4/8/8/d/53d067e1254c5.php', 52318, 'php', 1406167009),
(48, 'fbvqqy1406181027', 'http://demo.zxbxb.com/uploads/f/fbvqqy1406181027/0/8/a/2/thumb_53d0a04e1f462.jpg', 30042, 'jpg', 1406181454),
(49, 'tnovgk1406093051', 'http://demo.zxbxb.com/uploads/t/tnovgk1406093051/5/6/3/f/thumb_53d0eef1cc6ab.php', 87075, 'php', 1406201585),
(50, 'tnovgk1406093051', 'http://demo.zxbxb.com/uploads/t/tnovgk1406093051/7/2/0/c/thumb_53d0ef5a753c1.php', 138089, 'php', 1406201690);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_flash`
--

CREATE TABLE IF NOT EXISTS `pigcms_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='3g网站头部flash' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `pigcms_flash`
--

INSERT INTO `pigcms_flash` (`id`, `token`, `img`, `url`, `info`, `tip`) VALUES
(1, 'ingdnn1397725894', 'http://www.wei0794.com/tpl/static/attachment/focus/default/1.gif', '', '', 1),
(2, 'ingdnn1397725894', 'http://www.wei0794.com/tpl/static/attachment/focus/default/2.jpg', '', '', 1),
(3, 'ingdnn1397725894', 'http://www.wei0794.com/tpl/static/attachment/background/view/8.jpg', '', '', 2),
(4, 'ingdnn1397725894', 'http://www.wei0794.com/tpl/static/attachment/background/view/4.jpg', '', '', 2),
(5, 'hwtbjw1397727501', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/e/4/6/thumb_5369b93bb8cb5.jpg', '', '金字塔背景', 2),
(6, 'hvhyny1406205407', 'http://demo.zxbxb.com/tpl/static/attachment/icon/canyin/canyin_red/5.png', '{siteUrl}/index.php?g=Wap&amp;amp;m=Groupon&amp;amp;a=grouponIndex&amp;amp;token=hvhyny1406205407&amp;amp;wecha_id={wechat_id}', '会员卡，方便携带收藏，永不挂失', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_forum_comment`
--

CREATE TABLE IF NOT EXISTS `pigcms_forum_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `replyid` varchar(3000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_forum_comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_forum_config`
--

CREATE TABLE IF NOT EXISTS `pigcms_forum_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bgurl` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `comcheck` varchar(4) NOT NULL DEFAULT '',
  `intro` varchar(600) NOT NULL DEFAULT '',
  `ischeck` tinyint(4) NOT NULL DEFAULT '0',
  `pv` float NOT NULL DEFAULT '0',
  `forumname` char(60) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `isopen` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_forum_config`
--

INSERT INTO `pigcms_forum_config` (`id`, `bgurl`, `picurl`, `comcheck`, `intro`, `ischeck`, `pv`, `forumname`, `logo`, `token`, `isopen`) VALUES
(1, '', '', '0', '', 0, 0, '慕希莱生活官方粉丝社区', '/tpl/Wap/default/common/images/forum/face.png', 'klntps1397732204', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_forum_message`
--

CREATE TABLE IF NOT EXISTS `pigcms_forum_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `fromuid` varchar(50) NOT NULL,
  `touid` varchar(40) NOT NULL,
  `fromuname` varchar(60) DEFAULT NULL,
  `touname` varchar(60) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isread` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_forum_message`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_forum_topics`
--

CREATE TABLE IF NOT EXISTS `pigcms_forum_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `likeid` varchar(3000) DEFAULT NULL,
  `commentid` varchar(3000) DEFAULT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `photos` varchar(10000) DEFAULT '',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_forum_topics`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_function`
--

CREATE TABLE IF NOT EXISTS `pigcms_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- 转存表中的数据 `pigcms_function`
--

INSERT INTO `pigcms_function` (`id`, `gid`, `usenum`, `name`, `funname`, `info`, `isserve`, `status`) VALUES
(1, 1, 0, '天气查询', 'tianqi', '天气查询服务:例  城市名+天气', 1, 1),
(2, 1, 0, '糗事', 'qiushi', '糗事　直接发送糗事', 1, 1),
(3, 1, 0, '计算器', 'jishuan', '计算器使用方法　例：计算50-50　，计算100*100', 1, 1),
(4, 1, 0, '朗读', 'langdu', '朗读＋关键词　例：朗读weixine营销平台', 1, 1),
(5, 1, 0, '健康指数查询', 'jiankang', '健康指数查询　健康＋高，＋重　例：健康170,65', 1, 1),
(6, 1, 0, '快递查询', 'kuaidi', '快递＋快递名＋快递号　例：快递顺丰117215889174', 1, 1),
(7, 1, 0, '笑话', 'xiaohua', '笑话　直接发送笑话', 1, 1),
(8, 1, 0, '藏头诗', 'changtoushi', ' 藏头诗+关键词　例：藏头诗我爱你', 1, 1),
(9, 1, 0, '陪聊', 'peiliao', '聊天　直接输入聊天关键词即可', 1, 1),
(10, 1, 0, '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', 1, 1),
(11, 1, 0, '周公解梦', 'mengjian', '周公解梦　梦见+关键词　例如:梦见父母', 1, 1),
(12, 1, 0, '语音翻译', 'yuyinfanyi', '翻译＋关键词 例：翻译你好', 1, 1),
(13, 1, 0, '火车查询', 'huoche', '火车查询　火车＋城市＋目的地　例火车上海南京', 1, 1),
(14, 1, 0, '公交查询', 'gongjiao', '公交＋城市＋公交编号　例：上海公交774', 1, 1),
(15, 1, 0, '身份证查询', 'shenfenzheng', '身份证＋号码　　例：身份证342423198803015568', 1, 1),
(16, 1, 0, '手机归属地查询', 'shouji', '手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13917778912', 1, 1),
(17, 1, 0, '音乐查询', 'yinle', '音乐＋音乐名  例：音乐爱你一万年', 1, 1),
(18, 1, 0, '附近周边信息查询', 'fujin', '附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店', 1, 1),
(43, 2, 0, '抽奖', 'lottery', '抽奖,输入抽奖即可参加幸运大转盘', 1, 1),
(20, 3, 0, '淘宝店铺', 'taobao', '输入淘宝＋关键词　即可访问淘宝3g手机店铺', 2, 1),
(21, 3, 0, '会员资料管理', 'userinfo', '会员资料管理　输入会员　即可参与', 2, 1),
(22, 1, 0, '翻译', 'fanyi', '翻译＋关键词 例：翻译你好', 1, 1),
(23, 3, 0, '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', 1, 1),
(24, 1, 0, '姓名算命', 'suanming', '姓名算命 算命＋关键词　例：算命李白', 1, 1),
(25, 1, 0, '百度百科', 'baike', '百度百科　使用方法：百科＋关键词　例：百科北京', 2, 1),
(26, 2, 0, '彩票查询', 'caipiao', '回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球', 1, 1),
(42, 2, 0, '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', 2, 1),
(29, 2, 0, '3G首页', 'shouye', '输入首页,访问微3g 网站', 1, 1),
(30, 2, 0, 'DIY宣传页', 'adma', 'DIY宣传页,用于创建二维码宣传页权限开启', 1, 1),
(31, 3, 0, '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', 1, 1),
(36, 2, 0, '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', 2, 1),
(34, 1, 0, '歌词查询', 'geci', '歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风', 1, 1),
(35, 2, 0, '域名whois查询', '', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名weixine.net', 1, 0),
(37, 2, 0, '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', 1, 1),
(38, 4, 0, '无线网络订餐', 'dx', '无线网络订餐', 1, 1),
(39, 3, 0, '在线商城', 'shop', '在线商城,购买系统', 1, 1),
(40, 3, 0, '在线团购系统', 'etuan', '在线团购系统', 1, 1),
(41, 2, 0, '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', 1, 1),
(44, 2, 0, '刮刮卡', 'gua2', '刮刮卡抽奖活动', 1, 1),
(45, 2, 0, '全景', 'panorama', '', 1, 1),
(46, 4, 0, '婚庆喜帖', 'wedding', '', 2, 1),
(47, 3, 0, '投票', 'vote', '', 2, 1),
(48, 4, 0, '房产', 'estate', '', 2, 1),
(49, 2, 0, '3G相册', 'album', '', 1, 1),
(50, 3, 0, '砸金蛋', 'GoldenEgg', '', 2, 1),
(51, 3, 0, '水果机', 'LuckyFruit', '', 2, 1),
(52, 2, 0, '留言板', 'message', '', 2, 1),
(53, 4, 0, '微汽车', 'car', '', 2, 1),
(54, 3, 0, '微信墙', 'wall', '', 1, 1),
(55, 3, 0, '摇一摇', 'shake', '', 1, 1),
(56, 3, 0, '微论坛', 'forum', '', 1, 1),
(57, 4, 0, '微医疗', 'medical', '', 1, 1),
(58, 3, 0, '群发消息', 'message', '', 1, 1),
(59, 3, 0, '分享统计', 'share', '', 1, 1),
(60, 4, 0, '酒店宾馆', 'hotel', '', 1, 1),
(61, 4, 0, '微教育', 'school', '', 1, 1),
(62, 4, 0, '高级模版', 'AdvanceTpl', '', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_funintro`
--

CREATE TABLE IF NOT EXISTS `pigcms_funintro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `isnew` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_funintro`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_greeting_card`
--

CREATE TABLE IF NOT EXISTS `pigcms_greeting_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `bakcground_url` varchar(200) NOT NULL,
  `mp3` varchar(200) NOT NULL,
  `style` tinyint(2) NOT NULL,
  `name` varchar(60) NOT NULL,
  `zfname` varchar(60) NOT NULL,
  `copy` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_greeting_card`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_home`
--

CREATE TABLE IF NOT EXISTS `pigcms_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `apiurl` varchar(150) NOT NULL,
  `homeurl` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL,
  `musicurl` varchar(180) NOT NULL DEFAULT '',
  `plugmenucolor` varchar(10) NOT NULL DEFAULT '',
  `copyright` varchar(200) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `radiogroup` mediumint(4) NOT NULL DEFAULT '0',
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pigcms_home`
--

INSERT INTO `pigcms_home` (`id`, `token`, `title`, `picurl`, `apiurl`, `homeurl`, `info`, `musicurl`, `plugmenucolor`, `copyright`, `logo`, `radiogroup`, `advancetpl`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', 15, 1),
(2, 'ingdnn1397725894', '曾氏药膳堂3G官方首页', 'http://www.wei0794.com/tpl/static/attachment/focus/default/4.jpg', '', '', '曾氏药膳堂3G官方首页', '', '#0F0F0F', '© 2001-2013 风帆科技', '', 15, 0),
(3, 'hwtbjw1397727501', '深圳今智塔欢迎您！', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/d/a/8/thumb_5369b576a3ee1.jpg', '', '', '深圳今智塔，更多精彩呈现，点击进入......', '', '#FF0000', '© 2013-2014 深圳今智塔版权所有', '', 12, 0),
(4, '', '', '', '', '', '', '', '', '', '', 8, 0),
(5, 'hvhyny1406205407', '微商城', 'http://demo.zxbxb.com/tpl/User/default/common/images/portrait.jpg', '', '', 'http://demo.zxbxb.com/tpl/User/default/common/images/portrait.jpg', 'http://demo.zxbxb.com/tpl/static/attachment/icon/canyin/canyin_red/5.png', '', '', '/resource/attachment/images/2/2014/07/H68K6MZAHUlMA6UH3685kLOH58MUXc.png', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_home_background`
--

CREATE TABLE IF NOT EXISTS `pigcms_home_background` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_home_background`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_host`
--

CREATE TABLE IF NOT EXISTS `pigcms_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL COMMENT '关键词',
  `title` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(50) NOT NULL COMMENT '商家地',
  `tel` varchar(13) NOT NULL COMMENT '商家电话',
  `tel2` varchar(13) NOT NULL COMMENT '手机号',
  `ppicurl` varchar(250) NOT NULL COMMENT '订房封面图片',
  `headpic` varchar(250) NOT NULL COMMENT '订单页头部图片',
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `picurl` varchar(100) NOT NULL COMMENT '图片地址',
  `url` varchar(50) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '商家介绍：',
  `info2` text NOT NULL COMMENT '订房说明u',
  `creattime` int(11) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='酒店商家设置' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_host`
--

INSERT INTO `pigcms_host` (`id`, `token`, `keyword`, `title`, `address`, `tel`, `tel2`, `ppicurl`, `headpic`, `name`, `sort`, `picurl`, `url`, `info`, `info2`, `creattime`) VALUES
(1, 'ingdnn1397725894', '订房', '订房', '', '4602069', '18924646816', 'http://www.wei0794.com/tpl/static/attachment/background/view/1.jpg', './tpl/User/default/common/images/cart_info/online.jpg', '', 0, 'http://www.wei0794.com/tpl/static/attachment/background/view/7.jpg', '', '订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房', '订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房订房', 1397729999),
(2, 'hwtbjw1397727501', '在线下单', '深圳今智塔', '', '4008586996', '13926520559', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/1/6/8/thumb_535087d10fecf.jpg', './tpl/User/default/common/images/cart_info/online.jpg', '《企业利润暴增密码》', 0, 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/4/0/1/thumb_53573cb282fe0.jpg', '', '中国企业利润提升第一品牌，打造企业核心竞争力，帮助中国企业提升利润', '在线下单', 1398227408);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_host_list_add`
--

CREATE TABLE IF NOT EXISTS `pigcms_host_list_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL COMMENT '商家id',
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '房间类型',
  `typeinfo` varchar(100) NOT NULL COMMENT '简要说明',
  `price` decimal(10,2) NOT NULL COMMENT '原价：',
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `picurl` varchar(110) NOT NULL COMMENT '图片地址',
  `url` varchar(100) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '配套设施',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='房间类型信息表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_host_list_add`
--

INSERT INTO `pigcms_host_list_add` (`id`, `hid`, `token`, `type`, `typeinfo`, `price`, `yhprice`, `name`, `picurl`, `url`, `info`) VALUES
(1, 1, 'ingdnn1397725894', '标准房', '双床，适合2人', 480.00, 180.00, '', 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/backpack-2.png', '', '双床，适合2人双床，适合2人双床，适合2人双床，适合2人双床，适合2人双床，适合2人'),
(2, 1, 'ingdnn1397725894', '商务套房', '大床，双床，适合2人', 580.00, 200.00, '', 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/briefcase.png', '', '大床，双床，适合2人大床，双床，适合2人大床，双床，适合2人大床，双床，适合2人大床，双床，适合2人大床，双床，适合2人'),
(3, 2, 'hwtbjw1397727501', '《企业利润暴增密码》课程', '6月7日到8日在深圳麒麟山庄举办《企业利润暴增密码》课程', 10000.00, 3000.00, '《企业利润暴增密码》', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/4/0/1/thumb_53573cb282fe0.jpg', '', '《企业利润暴增密码》');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_host_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_host_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL COMMENT '预订人',
  `tel` varchar(13) NOT NULL COMMENT '电话',
  `check_in` int(11) NOT NULL COMMENT '入住时间',
  `check_out` int(11) NOT NULL COMMENT '离开时间',
  `room_type` varchar(50) NOT NULL COMMENT '房间类型',
  `book_time` int(11) NOT NULL COMMENT '预订时间',
  `book_num` int(11) NOT NULL COMMENT '预订数量',
  `price` decimal(10,2) NOT NULL COMMENT ' 价格',
  `order_status` int(11) NOT NULL COMMENT '订单状态 1 成功,2 失败,3 未处理',
  `hid` int(11) NOT NULL COMMENT '订房商家id',
  `remarks` varchar(250) NOT NULL COMMENT '留言备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='订单管理' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_host_order`
--

INSERT INTO `pigcms_host_order` (`id`, `token`, `wecha_id`, `book_people`, `tel`, `check_in`, `check_out`, `room_type`, `book_time`, `book_num`, `price`, `order_status`, `hid`, `remarks`) VALUES
(1, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', '曾经常常', '18603049687', 1397923200, 0, '商务套房', 1397750400, 1, 200.00, 1, 1, ''),
(2, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', '曾经常常', '18603049687', 0, 0, '商务套房', 1397750400, 1, 200.00, 3, 1, ''),
(3, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', '吴亮才', '15920030234', 0, 0, '《企业利润暴增密码》课程', 1398441600, 1, 3000.00, 3, 2, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hotels_house`
--

CREATE TABLE IF NOT EXISTS `pigcms_hotels_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_hotels_house`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hotels_house_sort`
--

CREATE TABLE IF NOT EXISTS `pigcms_hotels_house_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `note` varchar(500) NOT NULL,
  `num` tinyint(1) unsigned NOT NULL,
  `houses` smallint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_hotels_house_sort`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_hotels_order`
--

CREATE TABLE IF NOT EXISTS `pigcms_hotels_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `time` int(11) NOT NULL,
  `startdate` int(8) unsigned NOT NULL,
  `enddate` int(8) unsigned NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`),
  KEY `enddate` (`enddate`),
  KEY `sid` (`sid`),
  KEY `stardate` (`startdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_hotels_order`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_img`
--

CREATE TABLE IF NOT EXISTS `pigcms_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL COMMENT '关键词匹配类型',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` longtext NOT NULL,
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `usort` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微信图文' AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `pigcms_img`
--

INSERT INTO `pigcms_img` (`id`, `uid`, `uname`, `keyword`, `type`, `text`, `classid`, `classname`, `pic`, `showpic`, `info`, `url`, `createtime`, `uptatetime`, `click`, `token`, `title`, `usort`) VALUES
(3, 4, 'vvint', '《利润纵横》课程', '2', '为什么你辛辛苦苦经营数十年却利润微薄，\r\n　　而有人却轻轻松松赚取着巨额的利润？\r\n\r\n　　为什么你的企业稍有风吹草动便风雨飘摇，\r\n　　而有些企业即便出问题也能安稳如山？', 6, '密码课程', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/b/f/a/a/thumb_53610c585c71d.jpg', '1', '&amp;nbsp;为什么你辛辛苦苦经营数十年却利润微薄，&lt;br /&gt;\r\n　　而有人却轻轻松松赚取着巨额的利润？&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　为什么你的企业稍有风吹草动便风雨飘摇，&lt;br /&gt;\r\n　　而有些企业即便出问题也能安稳如山？&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　企业的核心利润究竟来自于哪里？&lt;br /&gt;\r\n　　企业究竟该如何进行顶层设计？&lt;br /&gt;\r\n　　什么才是商业模式设计的核心？&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　老板最首要的任务究竟是什么？&lt;br /&gt;\r\n　　经营团队？创新产品？经营格局？设计模式？&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　老板如何纵横捭阖，让一切资源为我所用？&lt;br /&gt;\r\n　　老板如何设计护城河、烟雾弹，防范风险？&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　小老板还在专注于一城一池的得失，无谓忙碌；&lt;br /&gt;\r\n　　大老板着眼大局，精心设计，环环相扣，不动声色之间，胜败已定！&lt;br /&gt;\r\n&lt;br /&gt;\r\n　　玄机尽在《利润纵横》！&lt;br /&gt;\r\n&lt;div&gt;\r\n	&lt;br /&gt;\r\n&lt;/div&gt;', '', '1398868292', '1398869088', 16, 'hwtbjw1397727501', '《利润纵横》', 1),
(4, 4, 'vvint', '《突围密码》课程', '2', '一堂让您醍醐灌顶豁然开朗，颠覆传统思维方式的突围之课！\r\n普通人研究如何做事，高手研究如何经营人，领袖之才必先研究形势！\r\n形势无非围与被围。情感之围、事业之围、健康之围等等等等。', 6, '密码课程', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/e/0/7/5/thumb_53610f1c6c256.jpg', '1', '&lt;span style=&quot;background-color:#E53333;font-size:18px;&quot;&gt;&lt;strong&gt;一堂让您醍醐灌顶豁然开朗，颠覆传统思维方式的突围之课！ &amp;nbsp;&amp;nbsp;&lt;/strong&gt;&lt;/span&gt;&lt;br /&gt;\r\n&lt;br /&gt;\r\n普通人研究如何做事，高手研究如何经营人，领袖之才必先研究形势！&lt;br /&gt;\r\n形势无非围与被围。情感之围、事业之围、健康之围等等等等。&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;凡成大业者，都是能在关键节点突围的人。&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;刘邦是如何从荥阳成功突围的？&lt;br /&gt;\r\n项羽为何无法从垓下突围成功？&lt;br /&gt;\r\n毛泽东是如何从湘江成功突围的？&lt;br /&gt;\r\n苹果又是如何从诺基亚和摩托罗拉中突围的？&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;不突围，是等死。要么突围而死，要么突围而生！&amp;nbsp;&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;nbsp;普通人在规律世界外面，劳心劳力，艰难前行。&lt;br /&gt;\r\n高手进入规律世界，掌握事物核心本质，轻松破除迷障，全面突围！&lt;br /&gt;', '', '1398869795', '1399863690', 15, 'hwtbjw1397727501', '《突围密码》', 1),
(5, 4, 'vvint', '新闻中心', '2', '深圳今智塔最新动态', 11, '新闻中心', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/8/b/a/1/thumb_5369bdae1bbe7.jpg', '1', '&lt;img src=&quot;/uploads/h/hwtbjw1397727501/5/b/7/2/5369bdce7becf.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/uploads/h/hwtbjw1397727501/4/1/7/e/5369bde29b2f0.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/uploads/h/hwtbjw1397727501/5/5/c/e/5369bdfbe4a1d.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/uploads/h/hwtbjw1397727501/2/f/b/e/5369be1745b2b.jpg&quot; alt=&quot;&quot; /&gt;', '', '1399438876', '1399438876', 9, 'hwtbjw1397727501', '深圳今智塔最新动态', 1),
(6, 4, 'vvint', '联系我们', '2', '深圳今智塔联系方式', 10, '联系我们', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/4/8/e/8/thumb_5369ff21c8fda.jpg', '1', '&lt;p&gt;\r\n	微信：深圳今智塔（kingstasz）\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	手机：13926520559\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	电话：0755-26050191\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	全国：4008586996\r\n&lt;/p&gt;', '', '1399455261', '1399455604', 9, 'hwtbjw1397727501', '深圳今智塔联系方式', 1),
(7, 4, 'vvint', '讲师', '2', '他是培训界新生代领军人物，中国《密码系列课程》原创者！\r\n   如果你还没有上过他的课，你就还不能说自己参加过真正的培训！\r\n   他生于惟楚有才的楚地，古风浩荡的蕲春，与林彪、李时珍同乡。\r\n   他一个外行闯入地板行业，9个月就做到市场第一，被誉为“业内黑马”！\r\n   他独创加减乘除营销模式，3年内成为湖北省市场份额第一名！同行称他“浑水摸鱼”高手！\r\n   他进入培训行业，3年帮公司从600万做到2个亿！\r\n   他公司员工两千多人，自己常年在外碰撞修行，一年在公司时间不超过一个月，业绩却在不断倍增，人称“快乐老板”！\r\n   他单场行销演讲两个小时，成交超过千万，人称“印钞机”！\r\n   他是讲台上的幽默大师周立波，商场上的不败战神“林彪”！上过课的学员称他:“活菩萨”“人生贵人”　', 8, '讲师团队', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/4/8/e/f/thumb_536a0029b2a53.jpg', '1', '&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	他是培训界新生代领军人物，中国《密码系列课程》原创者！&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;如果你还没有上过他的课，你就还不能说自己参加过真正的培训！&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;他生于惟楚有才的楚地，古风浩荡的蕲春，与林彪、李时珍同乡。&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;他一个外行闯入地板行业，9个月就做到市场第一，被誉为“业内黑马”！&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;他独创加减乘除营销模式，3年内成为湖北省市场份额第一名！同行称他“浑水摸鱼”高手！&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;他进入培训行业，3年帮公司从600万做到2个亿！&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;他公司员工两千多人，自己常年在外碰撞修行，一年在公司时间不超过一个月，业绩却在不断倍增，人称“快乐老板”！&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;他单场行销演讲两个小时，成交超过千万，人称“印钞机”！&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;他是讲台上的幽默大师周立波，商场上的不败战神“林彪”！上过课的学员称他:“活菩萨”“人生贵人”　\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;亲自主讲课程：&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp;《突出重围》、《利润密码》、《人心密码》、《突围密码》、《机制落地》、《天籁之音》。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;strong&gt;客户评价：&lt;/strong&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp;“经商十年的经验，不如听王老师三天的课程收获大”&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;“王老师一个撬动杠杆工具让我一次就签了8000万的单”&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;“上完老师的策略班，一个月让我公司业绩倍增了16倍”&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;“最具正义感的导师”&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;“最能站在国家立场，最具民族情怀的导师”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;div style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	上完王冲老师的课程，让我感受到了什么才是真正的教育培训，什么才是真正的企业导师，我不相信长篇大论，都是纸上谈兵，让我震撼的是培训完后公司的业绩增长了320%，这才是硬道理！\r\n&lt;/div&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	江苏仕德伟集团董事长 ——夏伟量\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;div style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	王冲老师您太伟大了，您是我的恩师，听完了您的课公司发生了巨大的改变，营业额一年间增长了80%左右”\r\n&lt;/div&gt;\r\n&lt;div style=&quot;text-align:right;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	中国地产100强旭辉地产集团董事长 ——林中\r\n&lt;/div&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	王冲老师是我一辈子的良师益友，上课完后久久不能平静，在企业重要的转型期遇到了杰宝集团的贵人，他给了我方向和力量，2010年企业业绩增长了50%，利润增长了56%；2011年业绩增长了92%，利润同期增长了100%，真心感谢王老师！\r\n&lt;/p&gt;\r\n&lt;div style=&quot;text-align:right;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	上海杰宝大王企业集团有限公司 &amp;nbsp; ——顾杰\r\n&lt;/div&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;div style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	从2006年到2009年企业一直没有什么发展，也一直很苦恼，其间也出去学习过，包括北大、清华、浙大、还有国内的一些大师，但都没有解决实际问题，偶然的机会认识了王冲老师，上课第一天很震撼，第二天我把老婆、女儿都请到了课堂，收益非常之大， 2011年底最后3个月创造了经营企业有史以来营业额的奇迹，感谢王老师，呼吁政府机构和更多的优秀企业家一同来聆听王冲老师的《经管密码》。\r\n&lt;/div&gt;\r\n&lt;div style=&quot;text-align:right;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	浙江庆盛控股集团公司董事长 &amp;nbsp;——陈火庆\r\n&lt;/div&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;div style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	“这三年来，王老师一直是我的“无冕”私人顾问，他给了我企业发展的核心力量以及未来的准确方向，这三年来企业每年以40%的增长速度发展，2011年底在公司战略会议上，受王老师的启发与影响，我们定下了10年内在中国超过奥的斯的宏伟战略目标，我相信有王冲老师的指引，爱登堡一定可以实现目标与梦想！”\r\n&lt;/div&gt;\r\n&lt;div style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;text-align:right;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	上海爱登堡电梯股份有限公司董事长 ——李绥\r\n&lt;/div&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;div style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	“经过慎重考虑后和尊敬的王冲老师合作，2010年导入了军事化销售骨干团队训练营之后，整个公司发生了翻天覆地的变化，2011年公司营业额在去年的基础上逆势增长了69%，非常感谢王冲老师，以后每年都准备请王冲老师来授课！”\r\n&lt;/div&gt;\r\n&lt;div style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n&lt;/div&gt;\r\n&lt;div style=&quot;text-align:right;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	浙江杭申集团有限公司董事长 ——马传兴\r\n&lt;/div&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	“听完经管密码课程后成本降低25%左右，业绩比培训前翻了一倍，销售从4千万到8千多万，感谢天，感谢地，最终还是感谢王冲老师，是您让我真正地看到了企业的未来。”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;上海天功坊门业有限公司董事长 ——王永祥\r\n&lt;/p&gt;', '', '1399455834', '1399455834', 9, 'hwtbjw1397727501', '王冲老师', 1),
(8, 4, 'vvint', '简介', '2', ' 为什么大多数企业经过短暂的快速发展后，很快就变得缓慢起来？\r\n　　为什么曾经激情无限的创业团队很快就动力不足，无法上下同欲？\r\n　　为什么产品总是缺乏竞争力，市场恶性竞争，成本高昂，利润低下？\r\n　　为什么共同创业的恩爱夫妻创富后，却总是无法同频共振无法和谐幸福？\r\n　　为什么老板可以创立家族企业打下商业江山，却总是无法培养出放心的下一代？', 7, '深圳今智塔', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/b/9/3/thumb_536b0bb1eeb48.jpg', '1', '&lt;p&gt;\r\n	为什么大多数企业经过短暂的快速发展后，很快就变得缓慢起来？&lt;br /&gt;\r\n　　为什么曾经激情无限的创业团队很快就动力不足，无法上下同欲？&lt;br /&gt;\r\n　　为什么产品总是缺乏竞争力，市场恶性竞争，成本高昂，利润低下？\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n　　为什么共同创业的恩爱夫妻创富后，却总是无法同频共振无法和谐幸福？&lt;br /&gt;\r\n　　为什么老板可以创立家族企业打下商业江山，却总是无法培养出放心的下一代？\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n　　无数的问题正困扰着中国新一代的创富者们，他们拥有勇气和决心，却因为以上种种问题无法解决，在黑暗中苦苦摸索，艰难前行。&lt;br /&gt;\r\n　　宇宙万物皆有规律，掌握规律即一日千里，势如破竹！\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n　　无法掌握规律，犹如真相被设置密码，只有破译密码才能看到事物的真相，直击事物本质！&lt;br /&gt;\r\n　　家和谐则天下和谐！没有任何学问大过生活的学问。&lt;br /&gt;\r\n　　谁能提炼生活的真谛，谁就成为社会真正的大师。谁破译规律，谁就成为时代的引领者！\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n　　培训界新生代领军人物王冲老师，将中华五千年文化的核心精髓进行总结提炼，与当下价值观结合起来，开创密码系列课程，破译红尘一切法相，直接进入人生真谛。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n　　这套密码课程就老板经营企业、家族传承、夫妻和谐之道等等，以前所未有的角度入手，与时代融合起来，全方位提供了当下中国最新的解决方案，颠覆以往所有似是而非的理论。帮助老板顿悟，轻松经营自己的企业，经营自己的人生和家族，享受到夫妻幸福、家族持续传承，享受到事业帮助自己实现梦想和理想，真正把做企业当成自己的乐趣！&lt;br /&gt;\r\n　　今智塔由此应运而生！\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp;今智塔，寓意当下智慧最高塔。\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;nbsp; &amp;nbsp;公司以“成为全球最影响人的文化传媒集团”为远景，采取全新的商业模式，以培训为平台、以咨询为落地、以影视和传媒作为传播手段，将培训、咨询、影视融合在一起，专注于打造企业核心竞争能力，帮助中国企业提升利润，重建当代企业家的精神信仰世界，帮助更多的中国企业走向世界舞台，将璀璨的中华文化向全世界传播。公司于2012年创造了一年内产值倍增39倍的行业奇迹，已成为中国企业利润提升第一品牌！\r\n&lt;/p&gt;', '', '1399524296', '1399524296', 9, 'hwtbjw1397727501', '深圳今智塔简介', 1),
(9, 4, 'vvint', '案例', '2', '上海杰宝大王企业发展有限公司是一家以各类防盗防火保险柜（箱）、银行金库门、保管箱为主导产品的实体防护安防产品的开发和生产企业。公司位于上海市嘉定工业园区内，占地面积近100亩，厂房建筑面积30000平方米，拥有国内一流的标准化保险柜（箱）生产线5条，产品技术研发中心1个，产品质量检测中心1个，公司在国内设有几百家销售网点，形成了覆盖全国的营销及售后服务网络，产品还远销美国、欧洲及东南亚国家和地区。', 9, '突围企业', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/7/5/d/2/thumb_536b0cc86daa0.jpg', '1', '&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	上海杰宝大王企业发展有限公司是一家以各类防盗防火保险柜（箱）、银行金库门、保管箱为主导产品的实体防护安防产品的开发和生产企业。公司位于上海市嘉定工业园区内，占地面积近100亩，厂房建筑面积30000平方米，拥有国内一流的标准化保险柜（箱）生产线5条，产品技术研发中心1个，产品质量检测中心1个，公司在国内设有几百家销售网点，形成了覆盖全国的营销及售后服务网络，产品还远销美国、欧洲及东南亚国家和地区。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	　　企业始终坚持“质量为立业之本，诚信乃成功之道”的宗旨，早在1999年，公司在行业内就率先通过了ISO9001国际质量体系认证，杰宝大王产品在先后获得“上海市名牌产品”和“上海市著名商标”的基础上，通过公司同仁的一致努力，企业又通过了ISO14001环境体系认证，并最终在2007年9月获得了中国产品质量的最高荣誉——“中国名牌”。\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	　　回顾过去，“杰宝”人艰苦创业；展望未来，“杰宝”人满怀信心。公司全体员工将秉承“夯实质量，勇于创新”的企业精神，进一步强化和推广“铸造安全”的品牌形象，保持国内领先，参与国际竞争。力争早日将公司建设成现代化的专业性集团化企业，努力将“杰宝大王”打造成走向世界的中国民族安防品牌！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	&lt;img title=&quot;jbdw1.png&quot; src=&quot;http://www.wechatpen.com/UploadFiles/2014/3/fd74c295-1669-4d05-b58f-de542666c15c.png&quot; border=&quot;0&quot; /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;color:#434343;font-family:微软雅黑;background-color:#FFFFFF;&quot;&gt;\r\n	上海杰宝大王企业集团有限公司董事长顾杰说：“王冲老师是我一辈子的良师益友，上课完后久久不能平静，在企业重要的转型期遇到了杰宝集团的贵人，他给了我方向和力量，2010年企业业绩增长了50%，利润增长了56%；2011年业绩增长了92%，利润同期增长了100%，真心感谢王老师！”\r\n&lt;/p&gt;', '', '1399524564', '1399524564', 9, 'hwtbjw1397727501', '【突围企业】上海杰宝大王企业发展有限公司', 1),
(10, 4, 'vvint', '历史消息', '2', '温馨提示：请您记得带身份证件，安排酒店住房所需；\r\n请您准备好足够的名片，便于和数百位各行业的企业家相互交流。', 12, '历史消息', 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/3/4/e/5/thumb_536f2ce08fa64.jpg', '1', '&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	他是培训界新生代领军人物，中国《密码系列课程》原创者！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	如果你还没有上过他的课，你就还不能说自己参加过真正的企业家培训！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	他一个外行闯入地板行业，9个月就做到市场第一，被誉为“业内黑马”！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	他独创加减乘除营销模式，3年内成为省级市场第一名！同行称他“浑水摸鱼”高手！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	他公司员工两千多人，自己常年在外碰撞修行，一年在公司时间不超过一个月，业绩却在不断倍增，人称“快乐老板”！\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	他的课程具备高度的理论系统，具备切实可行的落地机制。上过课的学员称他:“活菩萨”“人生贵人”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	他是数家集团公司的终身战略顾问......\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;亲自主讲课程&lt;/span&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;：&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	&amp;nbsp; 《企业利润暴增密码》、《利润设计》、《利润纵横》、《突围密码》、《人心密码》、《天籁之音》\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;客户评价：&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	&amp;nbsp; “经商十年的经验，不如听王老师三天的课程收获大”&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;“王老师一个撬动杠杆工具让我一次就签了8000万的单”&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;“上完老师的策略班，一个月让我公司业绩倍增了16倍”&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;“最具正义感的导师”&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp;“最能站在国家立场，最具民族情怀的导师”\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	&lt;strong&gt;&lt;span style=&quot;color:#FF0000;&quot;&gt;【企业家见证】&lt;/span&gt;&lt;/strong&gt; \r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	&lt;img src=&quot;https://mmbiz.qlogo.cn/mmbiz/Mzjj9at2uNb6ibWxHqVfZyiaibmYzEDsVEwU1CLzYib3ibFIv8tXshEUpgmic1tFZCsO5PwYhqiaCOSrvrogiaMAIEiaHXQ/0&quot; /&gt; \r\n&lt;/p&gt;\r\n&lt;table cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; width=&quot;494&quot; style=&quot;color:#000000;font-family:sans-serif;font-size:16px;width:330px;&quot;&gt;\r\n	&lt;tbody&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;494&quot; valign=&quot;top&quot; style=&quot;border:1px solid #DDDDDD;&quot;&gt;\r\n				&lt;p&gt;\r\n					上完王冲老师的课程，让我感受到了什么才是真正的教育培训，什么才是真正的企业导师，我不相信长篇大论，都是纸上谈兵，让我震撼的是培训完后公司的业绩增长了320%，这才是硬道理！\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;江苏仕德伟集团董事长 ——夏伟量\r\n				&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;494&quot; valign=&quot;top&quot;&gt;\r\n				&lt;p&gt;\r\n					王冲老师您太伟大了，您是我的恩师，听完了您的课公司发生了巨大的改变，营业额一年间增长了80%左右” &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&lt;br /&gt;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					中国地产100强旭辉地产集团董事长 ——林中\r\n				&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;494&quot; valign=&quot;top&quot;&gt;\r\n				&lt;p&gt;\r\n					王冲老师是我一辈子的良师益友，上课完后久久不能平静，在企业重要的转型期遇到了杰宝集团的贵人，他给了我方向和力量，2010年企业业绩增长了50%，利润增长了56%；2011年业绩增长了92%，利润同期增长了100%，真心感谢王老师！\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp; &amp;nbsp;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp;上海杰宝大王企业集团有限公司 &amp;nbsp; ——顾杰\r\n				&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;494&quot; valign=&quot;top&quot;&gt;\r\n				&lt;p&gt;\r\n					从2006年到2009年企业一直没有什么发展，也一直很苦恼，其间也出去学习过，包括北大、清华、浙大、还有国内的一些大师，但都没有解决实际问题，偶然的机会认识了王冲老师，上课第一天很震撼，第二天我把老婆、女儿都请到了课堂，收益非常之大， 2011年底最后3个月创造了经营企业有史以来营业额的奇迹，感谢王老师，呼吁政府机构和更多的优秀企业家一同来聆听王冲老师的《经管密码》 &amp;nbsp; &amp;nbsp;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&lt;br /&gt;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp; &amp;nbsp; &amp;nbsp;浙江庆盛控股集团公司董事长 &amp;nbsp;——陈火庆\r\n				&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;494&quot; valign=&quot;top&quot;&gt;\r\n				&lt;p&gt;\r\n					“这三年来，王老师一直是我的“无冕”私人顾问，他给了我企业发展的核心力量以及未来的准确方向，这三年来企业每年以40%的增长速度发展，2011年底在公司战略会议上，受王老师的启发与影响，我们定下了10年内在中国超过奥的斯的宏伟战略目标，我相信有王冲老师的指引，爱登堡一定可以实现目标与梦想！” &amp;nbsp;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&lt;br /&gt;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					上海爱登堡电梯股份有限公司董事长 ——李绥\r\n				&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;494&quot; valign=&quot;top&quot;&gt;\r\n				&lt;p&gt;\r\n					“经过慎重考虑后和尊敬的王冲老师合作，2010年导入了军事化销售骨干团队训练营之后，整个公司发生了翻天覆地的变化，2011年公司营业额在去年的基础上逆势增长了69%，非常感谢王冲老师，以后每年都准备请王冲老师来授课！” &amp;nbsp;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp; 浙江杭申集团有限公司董事长 ——马传兴\r\n				&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n		&lt;tr&gt;\r\n			&lt;td width=&quot;494&quot; valign=&quot;top&quot;&gt;\r\n				&lt;p&gt;\r\n					“听完经管密码课程后成本降低25%左右，业绩比培训前翻了一倍，销售从4千万到8千多万，感谢天，感谢地，最终还是感谢王冲老师，是您让我真正地看到了企业的未来。”\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\r\n				&lt;/p&gt;\r\n				&lt;p&gt;\r\n					上海天功坊门业有限公司董事长 ——王永祥\r\n				&lt;/p&gt;\r\n			&lt;/td&gt;\r\n		&lt;/tr&gt;\r\n	&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	关注我们的官方微信深圳今智塔（kingstasz），可以随时获取我们的最新课程信息\r\n&lt;/p&gt;\r\n&lt;p style=&quot;font-family:sans-serif;font-size:16px;&quot;&gt;\r\n	直接回复“预约”，可以直接预约报名\r\n&lt;/p&gt;\r\n&lt;div&gt;\r\n	&lt;br /&gt;\r\n&lt;/div&gt;', '', '1399794949', '1400121042', 16, 'hwtbjw1397727501', '今智塔创始人、华人顶级总裁导师 —— 王冲', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_img_multi`
--

CREATE TABLE IF NOT EXISTS `pigcms_img_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT '',
  `imgs` varchar(100) DEFAULT '',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_img_multi`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_indent`
--

CREATE TABLE IF NOT EXISTS `pigcms_indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `month` mediumint(5) NOT NULL DEFAULT '0',
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `pigcms_indent`
--

INSERT INTO `pigcms_indent` (`id`, `uid`, `gid`, `month`, `uname`, `title`, `info`, `indent_id`, `widtrade_no`, `price`, `create_time`, `status`) VALUES
(1, 3, 0, 0, 'zjzh', '充值', 0, '3_1397726332', '', 1000, 1397726332, 0),
(2, 4, 0, 0, 'vvint', '充值', 0, '4_1397727474', '', 1000, 1397727474, 0),
(3, 1, 0, 0, 'test', '充值', 0, '1_1405924450', '', 1000, 1405924450, 0),
(4, 1, 0, 0, 'test', '充值', 0, '1_1406113070', '', 1000, 1406113070, 0),
(5, 1, 0, 0, 'test', '充值', 0, '1_1406124115', '', 1000, 1406124115, 0),
(6, 1, 0, 0, 'test', '充值', 0, '1_1406202793', '', 1000, 1406202793, 2);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_keyword`
--

CREATE TABLE IF NOT EXISTS `pigcms_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `pigcms_keyword`
--

INSERT INTO `pigcms_keyword` (`id`, `keyword`, `pid`, `token`, `module`) VALUES
(1, '预约', 1, 'hwtbjw1397727501', 'Selfform'),
(2, '订房', 1, 'ingdnn1397725894', 'Host'),
(3, '报名', 2, 'ingdnn1397725894', 'Selfform'),
(4, '123', 1, 'ingdnn1397725894', 'Shake'),
(5, '上墙', 1, 'ingdnn1397725894', 'Wall'),
(6, '商务套房', 1, 'ingdnn1397725894', 'Product'),
(8, '《利润设计》课程', 2, 'hwtbjw1397727501', 'Img'),
(9, '在线下单', 2, 'hwtbjw1397727501', 'Host'),
(10, '在线支付', 2, 'hwtbjw1397727501', 'Product'),
(11, '《利润纵横》课程', 3, 'hwtbjw1397727501', 'Img'),
(12, '《突围密码》课程', 4, 'hwtbjw1397727501', 'Img'),
(13, '报名', 1, 'hwtbjw1397727501', 'Text'),
(14, '新闻中心', 5, 'hwtbjw1397727501', 'Img'),
(15, '联系我们', 6, 'hwtbjw1397727501', 'Img'),
(16, '讲师', 7, 'hwtbjw1397727501', 'Img'),
(17, '简介', 8, 'hwtbjw1397727501', 'Img'),
(18, '案例', 9, 'hwtbjw1397727501', 'Img'),
(19, '历史消息', 10, 'hwtbjw1397727501', 'Img'),
(20, '历史消息', 11, 'hwtbjw1397727501', 'Img'),
(21, '免费wifi', 1, 'klntps1397732204', 'Router_config'),
(22, '测试', 1, 'vpofgi1405911853', 'Market');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_leave`
--

CREATE TABLE IF NOT EXISTS `pigcms_leave` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=268 ;

--
-- 转存表中的数据 `pigcms_leave`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_links`
--

CREATE TABLE IF NOT EXISTS `pigcms_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_links`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_lottery`
--

CREATE TABLE IF NOT EXISTS `pigcms_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_lottery`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_lottery_cheat`
--

CREATE TABLE IF NOT EXISTS `pigcms_lottery_cheat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `prizetype` mediumint(4) NOT NULL DEFAULT '0',
  `intro` varchar(60) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_lottery_cheat`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_lottery_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_lottery_record`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market`
--

CREATE TABLE IF NOT EXISTS `pigcms_market` (
  `market_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `title` char(30) NOT NULL,
  `keyword` char(20) NOT NULL,
  `tel` char(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `line` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `logo_pic` char(100) NOT NULL,
  `token` char(20) NOT NULL,
  `market_index_tpl` mediumint(9) NOT NULL,
  `tenant_index_tpl` mediumint(9) NOT NULL,
  `tenant_list_tpl` mediumint(9) NOT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_market`
--

INSERT INTO `pigcms_market` (`market_id`, `name`, `title`, `keyword`, `tel`, `address`, `longitude`, `latitude`, `line`, `intro`, `logo_pic`, `token`, `market_index_tpl`, `tenant_index_tpl`, `tenant_list_tpl`) VALUES
(1, '测试', '幸运大转盘活动开始了', '测试', '18015578821', '123213房顶上', '120.648898', '31.305237', '陈士大夫士大夫', '测试', './tpl/static/market/default.jpg', 'vpofgi1405911853', 101, 116, 100),
(2, '测试商圈', '幸运大转盘活动开始了', '商圈', '18015578892', '苏州市吴中区旺山工业园前珠路16-6号', '120.648898', '31.293388', '陈士大夫士大夫', '测试', './tpl/static/market/default.jpg', 'mpwwxa1405924744', 87, 116, 90),
(3, 'uio', '窝窝学堂', '123', '0750-3457545', '广东省江门市江华路', '0', '0', '', '', './tpl/static/market/default.jpg', 'tnovgk1406093051', 135, 116, 136);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_area`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_area` (
  `area_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_name` char(35) NOT NULL,
  `manage` char(50) NOT NULL,
  `area_pic` char(100) NOT NULL,
  `area_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_market_area`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_cate`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` char(35) NOT NULL,
  `cate_pic` char(100) NOT NULL,
  `cate_intro` varchar(200) NOT NULL,
  `cate_pid` int(11) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_market_cate`
--

INSERT INTO `pigcms_market_cate` (`cate_id`, `cate_name`, `cate_pic`, `cate_intro`, `cate_pid`, `path_info`, `is_show`, `sort`, `market_id`, `token`) VALUES
(1, '额', 'http://demo.zxbxb.com/tpl/static/attachment/focus/default/../car/3.jpg', '', 0, '', '1', 50, 2, 'mpwwxa1405924744');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_nav`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_nav` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nav_name` char(35) NOT NULL,
  `nav_pic` char(100) NOT NULL,
  `nav_link` char(50) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `pigcms_market_nav`
--

INSERT INTO `pigcms_market_nav` (`nav_id`, `nav_name`, `nav_pic`, `nav_link`, `is_show`, `sort`, `market_id`, `token`, `is_system`) VALUES
(1, '商家', './tpl/static/attachment/icon/white/1.png', '{siteUrl}/index.php?g=Wap&m=Market&a=tenant&token=', '1', 100, 1, 'vpofgi1405911853', '1'),
(2, '停车场', './tpl/static/attachment/icon/white/4.png', '{siteUrl}/index.php?g=Wap&m=Market&a=park&token=vp', '1', 99, 1, 'vpofgi1405911853', '1'),
(3, '简介', './tpl/static/attachment/icon/white/9.png', '{siteUrl}/index.php?g=Wap&m=Market&a=intro&token=v', '1', 98, 1, 'vpofgi1405911853', '1'),
(4, '团购', './tpl/static/attachment/icon/white/7.png', '{siteUrl}/index.php?g=Wap&m=Groupon&a=grouponIndex', '1', 97, 1, 'vpofgi1405911853', '1'),
(5, '商家', './tpl/static/attachment/icon/white/1.png', '{siteUrl}/index.php?g=Wap&m=Market&a=tenant&token=', '1', 100, 2, 'mpwwxa1405924744', '1'),
(6, '停车场', './tpl/static/attachment/icon/white/4.png', '{siteUrl}/index.php?g=Wap&m=Market&a=park&token=mp', '1', 99, 2, 'mpwwxa1405924744', '1'),
(7, '简介', './tpl/static/attachment/icon/white/9.png', '{siteUrl}/index.php?g=Wap&m=Market&a=intro&token=m', '1', 98, 2, 'mpwwxa1405924744', '1'),
(8, '团购', './tpl/static/attachment/icon/white/7.png', '{siteUrl}/index.php?g=Wap&m=Groupon&a=grouponIndex', '1', 97, 2, 'mpwwxa1405924744', '1'),
(9, '商家', './tpl/static/attachment/icon/white/1.png', '{siteUrl}/index.php?g=Wap&m=Market&a=tenant&token=', '1', 100, 3, 'tnovgk1406093051', '1'),
(10, '停车场', './tpl/static/attachment/icon/white/4.png', '{siteUrl}/index.php?g=Wap&m=Market&a=park&token=tn', '1', 99, 3, 'tnovgk1406093051', '1'),
(11, '简介', './tpl/static/attachment/icon/white/9.png', '{siteUrl}/index.php?g=Wap&m=Market&a=intro&token=t', '1', 98, 3, 'tnovgk1406093051', '1'),
(12, '团购', './tpl/static/attachment/icon/white/7.png', '{siteUrl}/index.php?g=Wap&m=Groupon&a=grouponIndex', '1', 97, 3, 'tnovgk1406093051', '1');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_park`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_park` (
  `park_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `park_name` char(35) NOT NULL,
  `park_num` tinyint(4) NOT NULL,
  `park_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`park_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_market_park`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_market_slide`
--

CREATE TABLE IF NOT EXISTS `pigcms_market_slide` (
  `slide_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_title` char(35) NOT NULL,
  `slide_url` char(100) NOT NULL,
  `slide_link` char(80) NOT NULL,
  `market_id` int(11) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `pigcms_market_slide`
--

INSERT INTO `pigcms_market_slide` (`slide_id`, `slide_title`, `slide_url`, `slide_link`, `market_id`) VALUES
(1, '', './tpl/static/attachment/focus/default/2.jpg', '{siteUrl}/index.php/show/vpofgi1405911853', 1),
(2, '', './tpl/static/attachment/focus/default/3.jpg', '{siteUrl}/index.php?g=Wap&m=Photo&a=index&token=vpofgi1405911853&wecha_id={wecha', 1),
(3, '', './tpl/static/attachment/focus/default/4.jpg', '{siteUrl}/index.php?g=Wap&m=Groupon&a=grouponIndex&token=vpofgi1405911853&wecha_', 1),
(4, '', '', '{siteUrl}/index.php?g=Wap&m=Groupon&a=grouponIndex&token=vpofgi1405911853&wecha_', 1),
(5, '', '', '{siteUrl}/index.php?g=Wap&m=Card&a=index&token=vpofgi1405911853&wecha_id={wechat', 1),
(6, '', './tpl/static/attachment/focus/default/2.jpg', '{siteUrl}/index.php?g=Wap&m=Groupon&a=grouponIndex&token=mpwwxa1405924744&wecha_', 2),
(7, '', './tpl/static/attachment/focus/default/3.jpg', '{siteUrl}/index.php?g=Wap&m=Photo&a=index&token=mpwwxa1405924744&wecha_id={wecha', 2),
(8, '', './tpl/static/attachment/focus/default/4.jpg', '{siteUrl}/index.php?g=Wap&m=Card&a=index&token=mpwwxa1405924744&wecha_id={wechat', 2),
(9, '', '', '', 2),
(10, '', '', '', 2),
(11, '', './tpl/static/attachment/focus/default/2.jpg', '', 3),
(12, '', './tpl/static/attachment/focus/default/3.jpg', '', 3),
(13, '', './tpl/static/attachment/focus/default/4.jpg', '', 3),
(14, '', '', '', 3),
(15, '', '', '', 3);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_medical_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_medical_set` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) DEFAULT NULL,
  `menu1` varchar(20) NOT NULL DEFAULT '',
  `menu2` varchar(20) NOT NULL DEFAULT '',
  `menu3` varchar(20) NOT NULL DEFAULT '',
  `menu4` varchar(20) NOT NULL DEFAULT '',
  `menu5` varchar(20) NOT NULL DEFAULT '',
  `menu6` varchar(20) NOT NULL DEFAULT '',
  `menu7` varchar(20) NOT NULL DEFAULT '',
  `menu8` varchar(20) NOT NULL DEFAULT '',
  `menu9` varchar(50) DEFAULT '',
  `menu10` varchar(50) DEFAULT '',
  `picurl1` varchar(200) DEFAULT '',
  `picurl2` varchar(200) DEFAULT '',
  `picurl3` varchar(200) DEFAULT '',
  `picurl4` varchar(200) DEFAULT '',
  `picurl5` varchar(200) DEFAULT '',
  `picurl6` varchar(200) DEFAULT '',
  `picurl7` varchar(200) DEFAULT '',
  `picurl8` varchar(200) DEFAULT '',
  `picurl9` varchar(200) DEFAULT '',
  `picurl10` varchar(200) DEFAULT '',
  `hotfocus_id` int(11) NOT NULL,
  `experts_id` int(11) NOT NULL,
  `ceem_id` int(11) NOT NULL,
  `Rcase_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `evants_id` int(11) NOT NULL,
  `video` text NOT NULL,
  `symptoms_id` int(11) NOT NULL,
  `info` char(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT NULL,
  `conttpid` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_medical_set`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_medical_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_medical_user` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(50) NOT NULL DEFAULT '',
  `utel` char(13) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `sex` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `txt33` varchar(50) NOT NULL DEFAULT '',
  `txt44` varchar(50) NOT NULL DEFAULT '',
  `txt55` varchar(50) NOT NULL DEFAULT '',
  `yyks` varchar(50) NOT NULL DEFAULT '',
  `yyzj` varchar(50) NOT NULL DEFAULT '',
  `yybz` varchar(50) NOT NULL DEFAULT '',
  `yy4` varchar(50) NOT NULL DEFAULT '',
  `yy5` varchar(50) NOT NULL DEFAULT '',
  `uinfo` varchar(50) NOT NULL DEFAULT '',
  `kfinfo` varchar(100) NOT NULL DEFAULT '',
  `remate` int(10) NOT NULL DEFAULT '0',
  `booktime` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT '0',
  `orderid` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `orderName` varchar(200) NOT NULL DEFAULT '',
  `txt3name` varchar(50) NOT NULL DEFAULT '',
  `txt4name` varchar(50) NOT NULL DEFAULT '',
  `txt5name` varchar(50) NOT NULL DEFAULT '',
  `select4name` varchar(50) NOT NULL DEFAULT '',
  `select5name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_medical_user`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member`
--

CREATE TABLE IF NOT EXISTS `pigcms_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_member`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_contact`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_member_card_contact`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_coupon`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_member_card_coupon`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_create`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_create` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1216 ;

--
-- 转存表中的数据 `pigcms_member_card_create`
--

INSERT INTO `pigcms_member_card_create` (`id`, `cardid`, `token`, `number`, `wecha_id`) VALUES
(1097, 3, 'hwtbjw1397727501', 'SZJZT500', 'oJSB_t37QRrk80lEluCi1uVJ59CU'),
(1096, 3, 'hwtbjw1397727501', 'SZJZT499', 'oJSB_t64KDN81NaP3O5IzaWZEnjU'),
(1095, 3, 'hwtbjw1397727501', 'SZJZT498', ''),
(1094, 3, 'hwtbjw1397727501', 'SZJZT497', ''),
(1093, 3, 'hwtbjw1397727501', 'SZJZT496', ''),
(1092, 3, 'hwtbjw1397727501', 'SZJZT495', ''),
(1091, 3, 'hwtbjw1397727501', 'SZJZT494', ''),
(1090, 3, 'hwtbjw1397727501', 'SZJZT493', ''),
(1089, 3, 'hwtbjw1397727501', 'SZJZT492', ''),
(1088, 3, 'hwtbjw1397727501', 'SZJZT491', ''),
(1087, 3, 'hwtbjw1397727501', 'SZJZT490', ''),
(1086, 3, 'hwtbjw1397727501', 'SZJZT489', ''),
(1085, 3, 'hwtbjw1397727501', 'SZJZT488', ''),
(1084, 3, 'hwtbjw1397727501', 'SZJZT487', ''),
(1083, 3, 'hwtbjw1397727501', 'SZJZT486', ''),
(1082, 3, 'hwtbjw1397727501', 'SZJZT485', ''),
(1081, 3, 'hwtbjw1397727501', 'SZJZT484', ''),
(1080, 3, 'hwtbjw1397727501', 'SZJZT483', ''),
(1079, 3, 'hwtbjw1397727501', 'SZJZT482', ''),
(1078, 3, 'hwtbjw1397727501', 'SZJZT481', ''),
(1077, 3, 'hwtbjw1397727501', 'SZJZT480', ''),
(1076, 3, 'hwtbjw1397727501', 'SZJZT479', ''),
(1075, 3, 'hwtbjw1397727501', 'SZJZT478', ''),
(1074, 3, 'hwtbjw1397727501', 'SZJZT477', ''),
(1073, 3, 'hwtbjw1397727501', 'SZJZT476', ''),
(1072, 3, 'hwtbjw1397727501', 'SZJZT475', ''),
(1071, 3, 'hwtbjw1397727501', 'SZJZT474', ''),
(1070, 3, 'hwtbjw1397727501', 'SZJZT473', ''),
(1069, 3, 'hwtbjw1397727501', 'SZJZT472', ''),
(1068, 3, 'hwtbjw1397727501', 'SZJZT471', ''),
(1067, 3, 'hwtbjw1397727501', 'SZJZT470', ''),
(1066, 3, 'hwtbjw1397727501', 'SZJZT469', ''),
(1065, 3, 'hwtbjw1397727501', 'SZJZT468', ''),
(1064, 3, 'hwtbjw1397727501', 'SZJZT467', ''),
(1063, 3, 'hwtbjw1397727501', 'SZJZT466', ''),
(1062, 3, 'hwtbjw1397727501', 'SZJZT465', ''),
(1061, 3, 'hwtbjw1397727501', 'SZJZT464', ''),
(1060, 3, 'hwtbjw1397727501', 'SZJZT463', ''),
(1059, 3, 'hwtbjw1397727501', 'SZJZT462', ''),
(1058, 3, 'hwtbjw1397727501', 'SZJZT461', ''),
(1057, 3, 'hwtbjw1397727501', 'SZJZT460', ''),
(1056, 3, 'hwtbjw1397727501', 'SZJZT459', ''),
(1055, 3, 'hwtbjw1397727501', 'SZJZT458', ''),
(1054, 3, 'hwtbjw1397727501', 'SZJZT457', ''),
(1053, 3, 'hwtbjw1397727501', 'SZJZT456', ''),
(1052, 3, 'hwtbjw1397727501', 'SZJZT455', ''),
(1051, 3, 'hwtbjw1397727501', 'SZJZT454', ''),
(1050, 3, 'hwtbjw1397727501', 'SZJZT453', ''),
(1049, 3, 'hwtbjw1397727501', 'SZJZT452', ''),
(1048, 3, 'hwtbjw1397727501', 'SZJZT451', ''),
(1047, 3, 'hwtbjw1397727501', 'SZJZT450', ''),
(1046, 3, 'hwtbjw1397727501', 'SZJZT449', ''),
(1045, 3, 'hwtbjw1397727501', 'SZJZT448', ''),
(1044, 3, 'hwtbjw1397727501', 'SZJZT447', ''),
(1043, 3, 'hwtbjw1397727501', 'SZJZT446', ''),
(1042, 3, 'hwtbjw1397727501', 'SZJZT445', ''),
(1041, 3, 'hwtbjw1397727501', 'SZJZT444', ''),
(1040, 3, 'hwtbjw1397727501', 'SZJZT443', ''),
(1039, 3, 'hwtbjw1397727501', 'SZJZT442', ''),
(1038, 3, 'hwtbjw1397727501', 'SZJZT441', ''),
(1037, 3, 'hwtbjw1397727501', 'SZJZT440', ''),
(1036, 3, 'hwtbjw1397727501', 'SZJZT439', ''),
(1035, 3, 'hwtbjw1397727501', 'SZJZT438', ''),
(1034, 3, 'hwtbjw1397727501', 'SZJZT437', ''),
(1033, 3, 'hwtbjw1397727501', 'SZJZT436', ''),
(1032, 3, 'hwtbjw1397727501', 'SZJZT435', ''),
(1031, 3, 'hwtbjw1397727501', 'SZJZT434', ''),
(1030, 3, 'hwtbjw1397727501', 'SZJZT433', ''),
(1029, 3, 'hwtbjw1397727501', 'SZJZT432', ''),
(1028, 3, 'hwtbjw1397727501', 'SZJZT431', ''),
(1027, 3, 'hwtbjw1397727501', 'SZJZT430', ''),
(1026, 3, 'hwtbjw1397727501', 'SZJZT429', ''),
(1025, 3, 'hwtbjw1397727501', 'SZJZT428', ''),
(1024, 3, 'hwtbjw1397727501', 'SZJZT427', ''),
(1023, 3, 'hwtbjw1397727501', 'SZJZT426', ''),
(1022, 3, 'hwtbjw1397727501', 'SZJZT425', ''),
(1021, 3, 'hwtbjw1397727501', 'SZJZT424', ''),
(1020, 3, 'hwtbjw1397727501', 'SZJZT423', ''),
(1019, 3, 'hwtbjw1397727501', 'SZJZT422', ''),
(1018, 3, 'hwtbjw1397727501', 'SZJZT421', ''),
(1017, 3, 'hwtbjw1397727501', 'SZJZT420', ''),
(1016, 3, 'hwtbjw1397727501', 'SZJZT419', ''),
(1015, 3, 'hwtbjw1397727501', 'SZJZT418', ''),
(1014, 3, 'hwtbjw1397727501', 'SZJZT417', ''),
(1013, 3, 'hwtbjw1397727501', 'SZJZT416', ''),
(1012, 3, 'hwtbjw1397727501', 'SZJZT415', ''),
(1011, 3, 'hwtbjw1397727501', 'SZJZT414', ''),
(1010, 3, 'hwtbjw1397727501', 'SZJZT413', ''),
(1009, 3, 'hwtbjw1397727501', 'SZJZT412', ''),
(1008, 3, 'hwtbjw1397727501', 'SZJZT411', ''),
(1007, 3, 'hwtbjw1397727501', 'SZJZT410', ''),
(1006, 3, 'hwtbjw1397727501', 'SZJZT409', ''),
(1005, 3, 'hwtbjw1397727501', 'SZJZT408', ''),
(1004, 3, 'hwtbjw1397727501', 'SZJZT407', ''),
(1003, 3, 'hwtbjw1397727501', 'SZJZT406', ''),
(1002, 3, 'hwtbjw1397727501', 'SZJZT405', ''),
(1001, 3, 'hwtbjw1397727501', 'SZJZT404', ''),
(1000, 3, 'hwtbjw1397727501', 'SZJZT403', ''),
(999, 3, 'hwtbjw1397727501', 'SZJZT402', ''),
(998, 3, 'hwtbjw1397727501', 'SZJZT401', ''),
(997, 3, 'hwtbjw1397727501', 'SZJZT400', ''),
(996, 3, 'hwtbjw1397727501', 'SZJZT399', ''),
(995, 3, 'hwtbjw1397727501', 'SZJZT398', ''),
(994, 3, 'hwtbjw1397727501', 'SZJZT397', ''),
(993, 3, 'hwtbjw1397727501', 'SZJZT396', ''),
(992, 3, 'hwtbjw1397727501', 'SZJZT395', ''),
(991, 3, 'hwtbjw1397727501', 'SZJZT394', ''),
(990, 3, 'hwtbjw1397727501', 'SZJZT393', ''),
(989, 3, 'hwtbjw1397727501', 'SZJZT392', ''),
(988, 3, 'hwtbjw1397727501', 'SZJZT391', ''),
(987, 3, 'hwtbjw1397727501', 'SZJZT390', ''),
(986, 3, 'hwtbjw1397727501', 'SZJZT389', ''),
(985, 3, 'hwtbjw1397727501', 'SZJZT388', ''),
(984, 3, 'hwtbjw1397727501', 'SZJZT387', ''),
(983, 3, 'hwtbjw1397727501', 'SZJZT386', ''),
(982, 3, 'hwtbjw1397727501', 'SZJZT385', ''),
(981, 3, 'hwtbjw1397727501', 'SZJZT384', ''),
(980, 3, 'hwtbjw1397727501', 'SZJZT383', ''),
(979, 3, 'hwtbjw1397727501', 'SZJZT382', ''),
(978, 3, 'hwtbjw1397727501', 'SZJZT381', ''),
(977, 3, 'hwtbjw1397727501', 'SZJZT380', ''),
(976, 3, 'hwtbjw1397727501', 'SZJZT379', ''),
(975, 3, 'hwtbjw1397727501', 'SZJZT378', ''),
(974, 3, 'hwtbjw1397727501', 'SZJZT377', ''),
(973, 3, 'hwtbjw1397727501', 'SZJZT376', ''),
(972, 3, 'hwtbjw1397727501', 'SZJZT375', ''),
(971, 3, 'hwtbjw1397727501', 'SZJZT374', ''),
(970, 3, 'hwtbjw1397727501', 'SZJZT373', ''),
(969, 3, 'hwtbjw1397727501', 'SZJZT372', ''),
(968, 3, 'hwtbjw1397727501', 'SZJZT371', ''),
(967, 3, 'hwtbjw1397727501', 'SZJZT370', ''),
(966, 3, 'hwtbjw1397727501', 'SZJZT369', ''),
(965, 3, 'hwtbjw1397727501', 'SZJZT368', ''),
(964, 3, 'hwtbjw1397727501', 'SZJZT367', ''),
(963, 3, 'hwtbjw1397727501', 'SZJZT366', ''),
(962, 3, 'hwtbjw1397727501', 'SZJZT365', ''),
(961, 3, 'hwtbjw1397727501', 'SZJZT364', ''),
(960, 3, 'hwtbjw1397727501', 'SZJZT363', ''),
(959, 3, 'hwtbjw1397727501', 'SZJZT362', ''),
(958, 3, 'hwtbjw1397727501', 'SZJZT361', ''),
(957, 3, 'hwtbjw1397727501', 'SZJZT360', ''),
(956, 3, 'hwtbjw1397727501', 'SZJZT359', ''),
(955, 3, 'hwtbjw1397727501', 'SZJZT358', ''),
(954, 3, 'hwtbjw1397727501', 'SZJZT357', ''),
(953, 3, 'hwtbjw1397727501', 'SZJZT356', ''),
(952, 3, 'hwtbjw1397727501', 'SZJZT355', ''),
(951, 3, 'hwtbjw1397727501', 'SZJZT354', ''),
(950, 3, 'hwtbjw1397727501', 'SZJZT353', ''),
(949, 3, 'hwtbjw1397727501', 'SZJZT352', ''),
(948, 3, 'hwtbjw1397727501', 'SZJZT351', ''),
(947, 3, 'hwtbjw1397727501', 'SZJZT350', ''),
(946, 3, 'hwtbjw1397727501', 'SZJZT349', ''),
(945, 3, 'hwtbjw1397727501', 'SZJZT348', ''),
(944, 3, 'hwtbjw1397727501', 'SZJZT347', ''),
(943, 3, 'hwtbjw1397727501', 'SZJZT346', ''),
(942, 3, 'hwtbjw1397727501', 'SZJZT345', ''),
(941, 3, 'hwtbjw1397727501', 'SZJZT344', ''),
(940, 3, 'hwtbjw1397727501', 'SZJZT343', ''),
(939, 3, 'hwtbjw1397727501', 'SZJZT342', ''),
(938, 3, 'hwtbjw1397727501', 'SZJZT341', ''),
(937, 3, 'hwtbjw1397727501', 'SZJZT340', ''),
(936, 3, 'hwtbjw1397727501', 'SZJZT339', ''),
(935, 3, 'hwtbjw1397727501', 'SZJZT338', ''),
(934, 3, 'hwtbjw1397727501', 'SZJZT337', ''),
(933, 3, 'hwtbjw1397727501', 'SZJZT336', ''),
(932, 3, 'hwtbjw1397727501', 'SZJZT335', ''),
(931, 3, 'hwtbjw1397727501', 'SZJZT334', ''),
(930, 3, 'hwtbjw1397727501', 'SZJZT333', ''),
(929, 3, 'hwtbjw1397727501', 'SZJZT332', ''),
(928, 3, 'hwtbjw1397727501', 'SZJZT331', ''),
(927, 3, 'hwtbjw1397727501', 'SZJZT330', ''),
(926, 3, 'hwtbjw1397727501', 'SZJZT329', ''),
(925, 3, 'hwtbjw1397727501', 'SZJZT328', ''),
(924, 3, 'hwtbjw1397727501', 'SZJZT327', ''),
(923, 3, 'hwtbjw1397727501', 'SZJZT326', ''),
(922, 3, 'hwtbjw1397727501', 'SZJZT325', ''),
(921, 3, 'hwtbjw1397727501', 'SZJZT324', ''),
(920, 3, 'hwtbjw1397727501', 'SZJZT323', ''),
(919, 3, 'hwtbjw1397727501', 'SZJZT322', ''),
(918, 3, 'hwtbjw1397727501', 'SZJZT321', ''),
(917, 3, 'hwtbjw1397727501', 'SZJZT320', ''),
(916, 3, 'hwtbjw1397727501', 'SZJZT319', ''),
(915, 3, 'hwtbjw1397727501', 'SZJZT318', ''),
(914, 3, 'hwtbjw1397727501', 'SZJZT317', ''),
(913, 3, 'hwtbjw1397727501', 'SZJZT316', ''),
(912, 3, 'hwtbjw1397727501', 'SZJZT315', ''),
(911, 3, 'hwtbjw1397727501', 'SZJZT314', ''),
(910, 3, 'hwtbjw1397727501', 'SZJZT313', ''),
(909, 3, 'hwtbjw1397727501', 'SZJZT312', ''),
(908, 3, 'hwtbjw1397727501', 'SZJZT311', ''),
(907, 3, 'hwtbjw1397727501', 'SZJZT310', ''),
(906, 3, 'hwtbjw1397727501', 'SZJZT309', ''),
(905, 3, 'hwtbjw1397727501', 'SZJZT308', ''),
(904, 3, 'hwtbjw1397727501', 'SZJZT307', ''),
(903, 3, 'hwtbjw1397727501', 'SZJZT306', ''),
(902, 3, 'hwtbjw1397727501', 'SZJZT305', ''),
(901, 3, 'hwtbjw1397727501', 'SZJZT304', ''),
(900, 3, 'hwtbjw1397727501', 'SZJZT303', ''),
(899, 3, 'hwtbjw1397727501', 'SZJZT302', ''),
(898, 3, 'hwtbjw1397727501', 'SZJZT301', ''),
(897, 3, 'hwtbjw1397727501', 'SZJZT300', ''),
(896, 3, 'hwtbjw1397727501', 'SZJZT299', ''),
(895, 3, 'hwtbjw1397727501', 'SZJZT298', ''),
(894, 3, 'hwtbjw1397727501', 'SZJZT297', ''),
(893, 3, 'hwtbjw1397727501', 'SZJZT296', ''),
(892, 3, 'hwtbjw1397727501', 'SZJZT295', ''),
(891, 3, 'hwtbjw1397727501', 'SZJZT294', ''),
(890, 3, 'hwtbjw1397727501', 'SZJZT293', ''),
(889, 3, 'hwtbjw1397727501', 'SZJZT292', ''),
(888, 3, 'hwtbjw1397727501', 'SZJZT291', ''),
(887, 3, 'hwtbjw1397727501', 'SZJZT290', ''),
(886, 3, 'hwtbjw1397727501', 'SZJZT289', ''),
(885, 3, 'hwtbjw1397727501', 'SZJZT288', ''),
(884, 3, 'hwtbjw1397727501', 'SZJZT287', ''),
(883, 3, 'hwtbjw1397727501', 'SZJZT286', ''),
(882, 3, 'hwtbjw1397727501', 'SZJZT285', ''),
(881, 3, 'hwtbjw1397727501', 'SZJZT284', ''),
(880, 3, 'hwtbjw1397727501', 'SZJZT283', ''),
(879, 3, 'hwtbjw1397727501', 'SZJZT282', ''),
(878, 3, 'hwtbjw1397727501', 'SZJZT281', ''),
(877, 3, 'hwtbjw1397727501', 'SZJZT280', ''),
(876, 3, 'hwtbjw1397727501', 'SZJZT279', ''),
(875, 3, 'hwtbjw1397727501', 'SZJZT278', ''),
(874, 3, 'hwtbjw1397727501', 'SZJZT277', ''),
(873, 3, 'hwtbjw1397727501', 'SZJZT276', ''),
(872, 3, 'hwtbjw1397727501', 'SZJZT275', ''),
(871, 3, 'hwtbjw1397727501', 'SZJZT274', ''),
(870, 3, 'hwtbjw1397727501', 'SZJZT273', ''),
(869, 3, 'hwtbjw1397727501', 'SZJZT272', ''),
(868, 3, 'hwtbjw1397727501', 'SZJZT271', ''),
(867, 3, 'hwtbjw1397727501', 'SZJZT270', ''),
(866, 3, 'hwtbjw1397727501', 'SZJZT269', ''),
(865, 3, 'hwtbjw1397727501', 'SZJZT268', ''),
(864, 3, 'hwtbjw1397727501', 'SZJZT267', ''),
(863, 3, 'hwtbjw1397727501', 'SZJZT266', ''),
(862, 3, 'hwtbjw1397727501', 'SZJZT265', ''),
(861, 3, 'hwtbjw1397727501', 'SZJZT264', ''),
(860, 3, 'hwtbjw1397727501', 'SZJZT263', ''),
(859, 3, 'hwtbjw1397727501', 'SZJZT262', ''),
(858, 3, 'hwtbjw1397727501', 'SZJZT261', ''),
(857, 3, 'hwtbjw1397727501', 'SZJZT260', ''),
(856, 3, 'hwtbjw1397727501', 'SZJZT259', ''),
(855, 3, 'hwtbjw1397727501', 'SZJZT258', ''),
(854, 3, 'hwtbjw1397727501', 'SZJZT257', ''),
(853, 3, 'hwtbjw1397727501', 'SZJZT256', ''),
(852, 3, 'hwtbjw1397727501', 'SZJZT255', ''),
(851, 3, 'hwtbjw1397727501', 'SZJZT254', ''),
(850, 3, 'hwtbjw1397727501', 'SZJZT253', ''),
(849, 3, 'hwtbjw1397727501', 'SZJZT252', ''),
(848, 3, 'hwtbjw1397727501', 'SZJZT251', ''),
(847, 3, 'hwtbjw1397727501', 'SZJZT250', ''),
(846, 3, 'hwtbjw1397727501', 'SZJZT249', ''),
(845, 3, 'hwtbjw1397727501', 'SZJZT248', ''),
(844, 3, 'hwtbjw1397727501', 'SZJZT247', ''),
(843, 3, 'hwtbjw1397727501', 'SZJZT246', ''),
(842, 3, 'hwtbjw1397727501', 'SZJZT245', ''),
(841, 3, 'hwtbjw1397727501', 'SZJZT244', ''),
(840, 3, 'hwtbjw1397727501', 'SZJZT243', ''),
(839, 3, 'hwtbjw1397727501', 'SZJZT242', ''),
(838, 3, 'hwtbjw1397727501', 'SZJZT241', ''),
(837, 3, 'hwtbjw1397727501', 'SZJZT240', ''),
(836, 3, 'hwtbjw1397727501', 'SZJZT239', ''),
(835, 3, 'hwtbjw1397727501', 'SZJZT238', ''),
(834, 3, 'hwtbjw1397727501', 'SZJZT237', ''),
(833, 3, 'hwtbjw1397727501', 'SZJZT236', ''),
(832, 3, 'hwtbjw1397727501', 'SZJZT235', ''),
(831, 3, 'hwtbjw1397727501', 'SZJZT234', ''),
(830, 3, 'hwtbjw1397727501', 'SZJZT233', ''),
(829, 3, 'hwtbjw1397727501', 'SZJZT232', ''),
(828, 3, 'hwtbjw1397727501', 'SZJZT231', ''),
(827, 3, 'hwtbjw1397727501', 'SZJZT230', ''),
(826, 3, 'hwtbjw1397727501', 'SZJZT229', ''),
(825, 3, 'hwtbjw1397727501', 'SZJZT228', ''),
(824, 3, 'hwtbjw1397727501', 'SZJZT227', ''),
(823, 3, 'hwtbjw1397727501', 'SZJZT226', ''),
(822, 3, 'hwtbjw1397727501', 'SZJZT225', ''),
(821, 3, 'hwtbjw1397727501', 'SZJZT224', ''),
(820, 3, 'hwtbjw1397727501', 'SZJZT223', ''),
(819, 3, 'hwtbjw1397727501', 'SZJZT222', ''),
(818, 3, 'hwtbjw1397727501', 'SZJZT221', ''),
(817, 3, 'hwtbjw1397727501', 'SZJZT220', ''),
(816, 3, 'hwtbjw1397727501', 'SZJZT219', ''),
(815, 3, 'hwtbjw1397727501', 'SZJZT218', ''),
(814, 3, 'hwtbjw1397727501', 'SZJZT217', ''),
(813, 3, 'hwtbjw1397727501', 'SZJZT216', ''),
(812, 3, 'hwtbjw1397727501', 'SZJZT215', ''),
(811, 3, 'hwtbjw1397727501', 'SZJZT214', ''),
(810, 3, 'hwtbjw1397727501', 'SZJZT213', ''),
(809, 3, 'hwtbjw1397727501', 'SZJZT212', ''),
(808, 3, 'hwtbjw1397727501', 'SZJZT211', ''),
(807, 3, 'hwtbjw1397727501', 'SZJZT210', ''),
(806, 3, 'hwtbjw1397727501', 'SZJZT209', ''),
(805, 3, 'hwtbjw1397727501', 'SZJZT208', ''),
(804, 3, 'hwtbjw1397727501', 'SZJZT207', ''),
(803, 3, 'hwtbjw1397727501', 'SZJZT206', ''),
(802, 3, 'hwtbjw1397727501', 'SZJZT205', ''),
(801, 3, 'hwtbjw1397727501', 'SZJZT204', ''),
(800, 3, 'hwtbjw1397727501', 'SZJZT203', ''),
(799, 3, 'hwtbjw1397727501', 'SZJZT202', ''),
(798, 3, 'hwtbjw1397727501', 'SZJZT201', ''),
(797, 3, 'hwtbjw1397727501', 'SZJZT200', ''),
(796, 3, 'hwtbjw1397727501', 'SZJZT199', ''),
(795, 3, 'hwtbjw1397727501', 'SZJZT198', ''),
(794, 3, 'hwtbjw1397727501', 'SZJZT197', ''),
(793, 3, 'hwtbjw1397727501', 'SZJZT196', ''),
(792, 3, 'hwtbjw1397727501', 'SZJZT195', ''),
(791, 3, 'hwtbjw1397727501', 'SZJZT194', ''),
(790, 3, 'hwtbjw1397727501', 'SZJZT193', ''),
(789, 3, 'hwtbjw1397727501', 'SZJZT192', ''),
(788, 3, 'hwtbjw1397727501', 'SZJZT191', ''),
(787, 3, 'hwtbjw1397727501', 'SZJZT190', ''),
(786, 3, 'hwtbjw1397727501', 'SZJZT189', ''),
(785, 3, 'hwtbjw1397727501', 'SZJZT188', ''),
(784, 3, 'hwtbjw1397727501', 'SZJZT187', ''),
(783, 3, 'hwtbjw1397727501', 'SZJZT186', ''),
(782, 3, 'hwtbjw1397727501', 'SZJZT185', ''),
(781, 3, 'hwtbjw1397727501', 'SZJZT184', ''),
(780, 3, 'hwtbjw1397727501', 'SZJZT183', ''),
(779, 3, 'hwtbjw1397727501', 'SZJZT182', ''),
(778, 3, 'hwtbjw1397727501', 'SZJZT181', ''),
(777, 3, 'hwtbjw1397727501', 'SZJZT180', ''),
(776, 3, 'hwtbjw1397727501', 'SZJZT179', ''),
(775, 3, 'hwtbjw1397727501', 'SZJZT178', ''),
(774, 3, 'hwtbjw1397727501', 'SZJZT177', ''),
(773, 3, 'hwtbjw1397727501', 'SZJZT176', ''),
(772, 3, 'hwtbjw1397727501', 'SZJZT175', ''),
(771, 3, 'hwtbjw1397727501', 'SZJZT174', ''),
(770, 3, 'hwtbjw1397727501', 'SZJZT173', ''),
(769, 3, 'hwtbjw1397727501', 'SZJZT172', ''),
(768, 3, 'hwtbjw1397727501', 'SZJZT171', ''),
(767, 3, 'hwtbjw1397727501', 'SZJZT170', ''),
(766, 3, 'hwtbjw1397727501', 'SZJZT169', ''),
(765, 3, 'hwtbjw1397727501', 'SZJZT168', ''),
(764, 3, 'hwtbjw1397727501', 'SZJZT167', ''),
(763, 3, 'hwtbjw1397727501', 'SZJZT166', ''),
(762, 3, 'hwtbjw1397727501', 'SZJZT165', ''),
(761, 3, 'hwtbjw1397727501', 'SZJZT164', ''),
(760, 3, 'hwtbjw1397727501', 'SZJZT163', ''),
(759, 3, 'hwtbjw1397727501', 'SZJZT162', ''),
(758, 3, 'hwtbjw1397727501', 'SZJZT161', ''),
(757, 3, 'hwtbjw1397727501', 'SZJZT160', ''),
(756, 3, 'hwtbjw1397727501', 'SZJZT159', ''),
(755, 3, 'hwtbjw1397727501', 'SZJZT158', ''),
(754, 3, 'hwtbjw1397727501', 'SZJZT157', ''),
(753, 3, 'hwtbjw1397727501', 'SZJZT156', ''),
(752, 3, 'hwtbjw1397727501', 'SZJZT155', ''),
(751, 3, 'hwtbjw1397727501', 'SZJZT154', ''),
(750, 3, 'hwtbjw1397727501', 'SZJZT153', ''),
(749, 3, 'hwtbjw1397727501', 'SZJZT152', ''),
(748, 3, 'hwtbjw1397727501', 'SZJZT151', ''),
(747, 3, 'hwtbjw1397727501', 'SZJZT150', ''),
(746, 3, 'hwtbjw1397727501', 'SZJZT149', ''),
(745, 3, 'hwtbjw1397727501', 'SZJZT148', ''),
(744, 3, 'hwtbjw1397727501', 'SZJZT147', ''),
(743, 3, 'hwtbjw1397727501', 'SZJZT146', ''),
(742, 3, 'hwtbjw1397727501', 'SZJZT145', ''),
(741, 3, 'hwtbjw1397727501', 'SZJZT144', ''),
(740, 3, 'hwtbjw1397727501', 'SZJZT143', ''),
(739, 3, 'hwtbjw1397727501', 'SZJZT142', ''),
(738, 3, 'hwtbjw1397727501', 'SZJZT141', ''),
(737, 3, 'hwtbjw1397727501', 'SZJZT140', ''),
(736, 3, 'hwtbjw1397727501', 'SZJZT139', ''),
(735, 3, 'hwtbjw1397727501', 'SZJZT138', ''),
(734, 3, 'hwtbjw1397727501', 'SZJZT137', ''),
(733, 3, 'hwtbjw1397727501', 'SZJZT136', ''),
(732, 3, 'hwtbjw1397727501', 'SZJZT135', ''),
(731, 3, 'hwtbjw1397727501', 'SZJZT134', ''),
(730, 3, 'hwtbjw1397727501', 'SZJZT133', ''),
(729, 3, 'hwtbjw1397727501', 'SZJZT132', ''),
(728, 3, 'hwtbjw1397727501', 'SZJZT131', ''),
(727, 3, 'hwtbjw1397727501', 'SZJZT130', ''),
(726, 3, 'hwtbjw1397727501', 'SZJZT129', ''),
(725, 3, 'hwtbjw1397727501', 'SZJZT128', ''),
(724, 3, 'hwtbjw1397727501', 'SZJZT127', ''),
(723, 3, 'hwtbjw1397727501', 'SZJZT126', ''),
(722, 3, 'hwtbjw1397727501', 'SZJZT125', ''),
(721, 3, 'hwtbjw1397727501', 'SZJZT124', ''),
(720, 3, 'hwtbjw1397727501', 'SZJZT123', ''),
(719, 3, 'hwtbjw1397727501', 'SZJZT122', ''),
(718, 3, 'hwtbjw1397727501', 'SZJZT121', ''),
(717, 3, 'hwtbjw1397727501', 'SZJZT120', ''),
(716, 3, 'hwtbjw1397727501', 'SZJZT119', ''),
(715, 3, 'hwtbjw1397727501', 'SZJZT118', ''),
(714, 3, 'hwtbjw1397727501', 'SZJZT117', ''),
(713, 3, 'hwtbjw1397727501', 'SZJZT116', ''),
(712, 3, 'hwtbjw1397727501', 'SZJZT115', ''),
(711, 3, 'hwtbjw1397727501', 'SZJZT114', ''),
(710, 3, 'hwtbjw1397727501', 'SZJZT113', ''),
(709, 3, 'hwtbjw1397727501', 'SZJZT112', ''),
(708, 3, 'hwtbjw1397727501', 'SZJZT111', ''),
(707, 3, 'hwtbjw1397727501', 'SZJZT110', ''),
(706, 3, 'hwtbjw1397727501', 'SZJZT109', ''),
(705, 3, 'hwtbjw1397727501', 'SZJZT108', ''),
(704, 3, 'hwtbjw1397727501', 'SZJZT107', ''),
(703, 3, 'hwtbjw1397727501', 'SZJZT106', ''),
(702, 3, 'hwtbjw1397727501', 'SZJZT105', ''),
(701, 3, 'hwtbjw1397727501', 'SZJZT104', ''),
(700, 3, 'hwtbjw1397727501', 'SZJZT103', ''),
(699, 3, 'hwtbjw1397727501', 'SZJZT102', ''),
(698, 3, 'hwtbjw1397727501', 'SZJZT101', ''),
(697, 3, 'hwtbjw1397727501', 'SZJZT100', ''),
(696, 3, 'hwtbjw1397727501', 'SZJZT99', ''),
(695, 3, 'hwtbjw1397727501', 'SZJZT98', ''),
(694, 3, 'hwtbjw1397727501', 'SZJZT97', ''),
(693, 3, 'hwtbjw1397727501', 'SZJZT96', ''),
(692, 3, 'hwtbjw1397727501', 'SZJZT95', ''),
(691, 3, 'hwtbjw1397727501', 'SZJZT94', ''),
(690, 3, 'hwtbjw1397727501', 'SZJZT93', ''),
(689, 3, 'hwtbjw1397727501', 'SZJZT92', ''),
(688, 3, 'hwtbjw1397727501', 'SZJZT91', ''),
(687, 3, 'hwtbjw1397727501', 'SZJZT90', ''),
(686, 3, 'hwtbjw1397727501', 'SZJZT89', ''),
(685, 3, 'hwtbjw1397727501', 'SZJZT88', ''),
(684, 3, 'hwtbjw1397727501', 'SZJZT87', ''),
(683, 3, 'hwtbjw1397727501', 'SZJZT86', ''),
(682, 3, 'hwtbjw1397727501', 'SZJZT85', ''),
(681, 3, 'hwtbjw1397727501', 'SZJZT84', ''),
(680, 3, 'hwtbjw1397727501', 'SZJZT83', ''),
(679, 3, 'hwtbjw1397727501', 'SZJZT82', ''),
(678, 3, 'hwtbjw1397727501', 'SZJZT81', ''),
(677, 3, 'hwtbjw1397727501', 'SZJZT80', ''),
(676, 3, 'hwtbjw1397727501', 'SZJZT79', ''),
(675, 3, 'hwtbjw1397727501', 'SZJZT78', ''),
(674, 3, 'hwtbjw1397727501', 'SZJZT77', ''),
(673, 3, 'hwtbjw1397727501', 'SZJZT76', ''),
(672, 3, 'hwtbjw1397727501', 'SZJZT75', ''),
(671, 3, 'hwtbjw1397727501', 'SZJZT74', ''),
(670, 3, 'hwtbjw1397727501', 'SZJZT73', ''),
(669, 3, 'hwtbjw1397727501', 'SZJZT72', ''),
(668, 3, 'hwtbjw1397727501', 'SZJZT71', ''),
(667, 3, 'hwtbjw1397727501', 'SZJZT70', ''),
(666, 3, 'hwtbjw1397727501', 'SZJZT69', ''),
(665, 3, 'hwtbjw1397727501', 'SZJZT68', ''),
(664, 3, 'hwtbjw1397727501', 'SZJZT67', ''),
(663, 3, 'hwtbjw1397727501', 'SZJZT66', ''),
(662, 3, 'hwtbjw1397727501', 'SZJZT65', ''),
(661, 3, 'hwtbjw1397727501', 'SZJZT64', ''),
(660, 3, 'hwtbjw1397727501', 'SZJZT63', ''),
(659, 3, 'hwtbjw1397727501', 'SZJZT62', ''),
(658, 3, 'hwtbjw1397727501', 'SZJZT61', ''),
(657, 3, 'hwtbjw1397727501', 'SZJZT60', ''),
(656, 3, 'hwtbjw1397727501', 'SZJZT59', ''),
(655, 3, 'hwtbjw1397727501', 'SZJZT58', ''),
(654, 3, 'hwtbjw1397727501', 'SZJZT57', ''),
(653, 3, 'hwtbjw1397727501', 'SZJZT56', ''),
(652, 3, 'hwtbjw1397727501', 'SZJZT55', ''),
(651, 3, 'hwtbjw1397727501', 'SZJZT54', ''),
(650, 3, 'hwtbjw1397727501', 'SZJZT53', ''),
(649, 3, 'hwtbjw1397727501', 'SZJZT52', ''),
(648, 3, 'hwtbjw1397727501', 'SZJZT51', ''),
(647, 3, 'hwtbjw1397727501', 'SZJZT50', ''),
(646, 3, 'hwtbjw1397727501', 'SZJZT49', ''),
(645, 3, 'hwtbjw1397727501', 'SZJZT48', ''),
(644, 3, 'hwtbjw1397727501', 'SZJZT47', ''),
(643, 3, 'hwtbjw1397727501', 'SZJZT46', ''),
(642, 3, 'hwtbjw1397727501', 'SZJZT45', ''),
(641, 3, 'hwtbjw1397727501', 'SZJZT44', ''),
(640, 3, 'hwtbjw1397727501', 'SZJZT43', ''),
(639, 3, 'hwtbjw1397727501', 'SZJZT42', ''),
(638, 3, 'hwtbjw1397727501', 'SZJZT41', ''),
(637, 3, 'hwtbjw1397727501', 'SZJZT40', ''),
(636, 3, 'hwtbjw1397727501', 'SZJZT39', ''),
(635, 3, 'hwtbjw1397727501', 'SZJZT38', ''),
(634, 3, 'hwtbjw1397727501', 'SZJZT37', ''),
(633, 3, 'hwtbjw1397727501', 'SZJZT36', ''),
(632, 3, 'hwtbjw1397727501', 'SZJZT35', ''),
(631, 3, 'hwtbjw1397727501', 'SZJZT34', ''),
(630, 3, 'hwtbjw1397727501', 'SZJZT33', ''),
(629, 3, 'hwtbjw1397727501', 'SZJZT32', ''),
(628, 3, 'hwtbjw1397727501', 'SZJZT31', ''),
(627, 3, 'hwtbjw1397727501', 'SZJZT30', ''),
(626, 3, 'hwtbjw1397727501', 'SZJZT29', ''),
(625, 3, 'hwtbjw1397727501', 'SZJZT28', ''),
(624, 3, 'hwtbjw1397727501', 'SZJZT27', ''),
(623, 3, 'hwtbjw1397727501', 'SZJZT26', ''),
(622, 3, 'hwtbjw1397727501', 'SZJZT25', ''),
(621, 3, 'hwtbjw1397727501', 'SZJZT24', ''),
(620, 3, 'hwtbjw1397727501', 'SZJZT23', ''),
(619, 3, 'hwtbjw1397727501', 'SZJZT22', ''),
(618, 3, 'hwtbjw1397727501', 'SZJZT21', ''),
(617, 3, 'hwtbjw1397727501', 'SZJZT20', ''),
(616, 3, 'hwtbjw1397727501', 'SZJZT19', ''),
(615, 3, 'hwtbjw1397727501', 'SZJZT18', ''),
(614, 3, 'hwtbjw1397727501', 'SZJZT17', ''),
(613, 3, 'hwtbjw1397727501', 'SZJZT16', ''),
(612, 3, 'hwtbjw1397727501', 'SZJZT15', ''),
(611, 3, 'hwtbjw1397727501', 'SZJZT14', ''),
(610, 3, 'hwtbjw1397727501', 'SZJZT13', ''),
(609, 3, 'hwtbjw1397727501', 'SZJZT12', ''),
(608, 3, 'hwtbjw1397727501', 'SZJZT11', ''),
(607, 3, 'hwtbjw1397727501', 'SZJZT10', ''),
(606, 3, 'hwtbjw1397727501', 'SZJZT9', ''),
(605, 3, 'hwtbjw1397727501', 'SZJZT8', ''),
(604, 3, 'hwtbjw1397727501', 'SZJZT7', ''),
(603, 3, 'hwtbjw1397727501', 'SZJZT6', ''),
(602, 3, 'hwtbjw1397727501', 'SZJZT5', ''),
(601, 3, 'hwtbjw1397727501', 'SZJZT4', ''),
(599, 3, 'hwtbjw1397727501', 'SZJZT2', ''),
(600, 3, 'hwtbjw1397727501', 'SZJZT3', ''),
(1098, 5, 'tnovgk1406093051', 'BSD2', ''),
(1099, 5, 'tnovgk1406093051', 'BSD3', ''),
(1100, 5, 'tnovgk1406093051', 'BSD4', ''),
(1101, 5, 'tnovgk1406093051', 'BSD5', ''),
(1102, 5, 'tnovgk1406093051', 'BSD6', ''),
(1103, 5, 'tnovgk1406093051', 'BSD7', ''),
(1104, 5, 'tnovgk1406093051', 'BSD8', ''),
(1105, 5, 'tnovgk1406093051', 'BSD9', ''),
(1106, 5, 'tnovgk1406093051', 'BSD10', ''),
(1107, 5, 'tnovgk1406093051', 'BSD11', ''),
(1108, 6, 'zhtaad1406117161', 'BG2', 'obLuhtwirQvHXWbmQoavchVg-_uA'),
(1109, 6, 'zhtaad1406117161', 'BG3', ''),
(1110, 6, 'zhtaad1406117161', 'BG4', ''),
(1111, 6, 'zhtaad1406117161', 'BG5', ''),
(1112, 6, 'zhtaad1406117161', 'BG6', ''),
(1113, 6, 'zhtaad1406117161', 'BG7', ''),
(1114, 6, 'zhtaad1406117161', 'BG8', ''),
(1115, 6, 'zhtaad1406117161', 'BG9', ''),
(1116, 6, 'zhtaad1406117161', 'BG10', ''),
(1117, 7, 'jbfkls1406185903', 'JDZ2', ''),
(1118, 7, 'jbfkls1406185903', 'JDZ3', ''),
(1119, 7, 'jbfkls1406185903', 'JDZ4', ''),
(1120, 7, 'jbfkls1406185903', 'JDZ5', ''),
(1121, 7, 'jbfkls1406185903', 'JDZ6', ''),
(1122, 7, 'jbfkls1406185903', 'JDZ7', ''),
(1123, 7, 'jbfkls1406185903', 'JDZ8', ''),
(1124, 7, 'jbfkls1406185903', 'JDZ9', ''),
(1125, 7, 'jbfkls1406185903', 'JDZ10', ''),
(1126, 7, 'jbfkls1406185903', 'JDZ11', ''),
(1127, 7, 'jbfkls1406185903', 'JDZ12', ''),
(1128, 7, 'jbfkls1406185903', 'JDZ13', ''),
(1129, 7, 'jbfkls1406185903', 'JDZ14', ''),
(1130, 7, 'jbfkls1406185903', 'JDZ15', ''),
(1131, 7, 'jbfkls1406185903', 'JDZ16', ''),
(1132, 7, 'jbfkls1406185903', 'JDZ17', ''),
(1133, 7, 'jbfkls1406185903', 'JDZ18', ''),
(1134, 7, 'jbfkls1406185903', 'JDZ19', ''),
(1135, 7, 'jbfkls1406185903', 'JDZ20', ''),
(1136, 7, 'jbfkls1406185903', 'JDZ21', ''),
(1137, 7, 'jbfkls1406185903', 'JDZ22', ''),
(1138, 7, 'jbfkls1406185903', 'JDZ23', ''),
(1139, 7, 'jbfkls1406185903', 'JDZ24', ''),
(1140, 7, 'jbfkls1406185903', 'JDZ25', ''),
(1141, 7, 'jbfkls1406185903', 'JDZ26', ''),
(1142, 7, 'jbfkls1406185903', 'JDZ27', ''),
(1143, 7, 'jbfkls1406185903', 'JDZ28', ''),
(1144, 7, 'jbfkls1406185903', 'JDZ29', ''),
(1145, 7, 'jbfkls1406185903', 'JDZ30', ''),
(1146, 7, 'jbfkls1406185903', 'JDZ31', ''),
(1147, 7, 'jbfkls1406185903', 'JDZ32', ''),
(1148, 7, 'jbfkls1406185903', 'JDZ33', ''),
(1149, 7, 'jbfkls1406185903', 'JDZ34', ''),
(1150, 7, 'jbfkls1406185903', 'JDZ35', ''),
(1151, 7, 'jbfkls1406185903', 'JDZ36', ''),
(1152, 7, 'jbfkls1406185903', 'JDZ37', ''),
(1153, 7, 'jbfkls1406185903', 'JDZ38', ''),
(1154, 7, 'jbfkls1406185903', 'JDZ39', ''),
(1155, 7, 'jbfkls1406185903', 'JDZ40', ''),
(1156, 7, 'jbfkls1406185903', 'JDZ41', ''),
(1157, 7, 'jbfkls1406185903', 'JDZ42', ''),
(1158, 7, 'jbfkls1406185903', 'JDZ43', ''),
(1159, 7, 'jbfkls1406185903', 'JDZ44', ''),
(1160, 7, 'jbfkls1406185903', 'JDZ45', ''),
(1161, 7, 'jbfkls1406185903', 'JDZ46', ''),
(1162, 7, 'jbfkls1406185903', 'JDZ47', ''),
(1163, 7, 'jbfkls1406185903', 'JDZ48', ''),
(1164, 7, 'jbfkls1406185903', 'JDZ49', ''),
(1165, 7, 'jbfkls1406185903', 'JDZ50', ''),
(1166, 7, 'jbfkls1406185903', 'JDZ51', ''),
(1167, 7, 'jbfkls1406185903', 'JDZ52', ''),
(1168, 7, 'jbfkls1406185903', 'JDZ53', ''),
(1169, 7, 'jbfkls1406185903', 'JDZ54', ''),
(1170, 7, 'jbfkls1406185903', 'JDZ55', ''),
(1171, 7, 'jbfkls1406185903', 'JDZ56', ''),
(1172, 7, 'jbfkls1406185903', 'JDZ57', ''),
(1173, 7, 'jbfkls1406185903', 'JDZ58', ''),
(1174, 7, 'jbfkls1406185903', 'JDZ59', ''),
(1175, 7, 'jbfkls1406185903', 'JDZ60', ''),
(1176, 7, 'jbfkls1406185903', 'JDZ61', ''),
(1177, 7, 'jbfkls1406185903', 'JDZ62', ''),
(1178, 7, 'jbfkls1406185903', 'JDZ63', ''),
(1179, 7, 'jbfkls1406185903', 'JDZ64', ''),
(1180, 7, 'jbfkls1406185903', 'JDZ65', ''),
(1181, 7, 'jbfkls1406185903', 'JDZ66', ''),
(1182, 7, 'jbfkls1406185903', 'JDZ67', ''),
(1183, 7, 'jbfkls1406185903', 'JDZ68', ''),
(1184, 7, 'jbfkls1406185903', 'JDZ69', ''),
(1185, 7, 'jbfkls1406185903', 'JDZ70', ''),
(1186, 7, 'jbfkls1406185903', 'JDZ71', ''),
(1187, 7, 'jbfkls1406185903', 'JDZ72', ''),
(1188, 7, 'jbfkls1406185903', 'JDZ73', ''),
(1189, 7, 'jbfkls1406185903', 'JDZ74', ''),
(1190, 7, 'jbfkls1406185903', 'JDZ75', ''),
(1191, 7, 'jbfkls1406185903', 'JDZ76', ''),
(1192, 7, 'jbfkls1406185903', 'JDZ77', ''),
(1193, 7, 'jbfkls1406185903', 'JDZ78', ''),
(1194, 7, 'jbfkls1406185903', 'JDZ79', ''),
(1195, 7, 'jbfkls1406185903', 'JDZ80', ''),
(1196, 7, 'jbfkls1406185903', 'JDZ81', ''),
(1197, 7, 'jbfkls1406185903', 'JDZ82', ''),
(1198, 7, 'jbfkls1406185903', 'JDZ83', ''),
(1199, 7, 'jbfkls1406185903', 'JDZ84', ''),
(1200, 7, 'jbfkls1406185903', 'JDZ85', ''),
(1201, 7, 'jbfkls1406185903', 'JDZ86', ''),
(1202, 7, 'jbfkls1406185903', 'JDZ87', ''),
(1203, 7, 'jbfkls1406185903', 'JDZ88', ''),
(1204, 7, 'jbfkls1406185903', 'JDZ89', ''),
(1205, 7, 'jbfkls1406185903', 'JDZ90', ''),
(1206, 7, 'jbfkls1406185903', 'JDZ91', ''),
(1207, 7, 'jbfkls1406185903', 'JDZ92', ''),
(1208, 7, 'jbfkls1406185903', 'JDZ93', ''),
(1209, 7, 'jbfkls1406185903', 'JDZ94', ''),
(1210, 7, 'jbfkls1406185903', 'JDZ95', ''),
(1211, 7, 'jbfkls1406185903', 'JDZ96', ''),
(1212, 7, 'jbfkls1406185903', 'JDZ97', ''),
(1213, 7, 'jbfkls1406185903', 'JDZ98', ''),
(1214, 7, 'jbfkls1406185903', 'JDZ99', ''),
(1215, 7, 'jbfkls1406185903', 'JDZ100', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_custom`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_custom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wechaname` tinyint(4) NOT NULL DEFAULT '1',
  `tel` tinyint(4) NOT NULL DEFAULT '1',
  `truename` tinyint(4) NOT NULL DEFAULT '0',
  `qq` tinyint(4) NOT NULL DEFAULT '0',
  `paypass` tinyint(4) NOT NULL DEFAULT '1',
  `portrait` tinyint(4) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `bornyear` tinyint(4) NOT NULL DEFAULT '0',
  `bornmonth` tinyint(4) NOT NULL DEFAULT '0',
  `bornday` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_member_card_custom`
--

INSERT INTO `pigcms_member_card_custom` (`id`, `token`, `wechaname`, `tel`, `truename`, `qq`, `paypass`, `portrait`, `sex`, `bornyear`, `bornmonth`, `bornday`) VALUES
(1, 'zhtaad1406117161', 1, 1, 1, 0, 1, 1, 1, 0, 0, 0),
(2, 'fbvqqy1406181027', 1, 1, 1, 1, 1, 1, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_exchange`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` mediumint(8) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` text NOT NULL,
  `cardinfo2` text NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_member_card_exchange`
--

INSERT INTO `pigcms_member_card_exchange` (`id`, `cardid`, `token`, `everyday`, `continuation`, `reward`, `cardinfo`, `cardinfo2`, `create_time`) VALUES
(1, 3, 'hwtbjw1397727501', 1, 0, 1, '签到送积分，消费同样送积分，积分可以兑换礼品', '每天签到送一个积分，每消费1元送一个积分', 1397790729);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_focus`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(300) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `token` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_member_card_focus`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_member_card_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_integral`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_member_card_integral`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_notice`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_member_card_notice`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_pay_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_pay_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` char(30) NOT NULL,
  `ordername` varchar(1000) NOT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `paytype` char(30) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `paytime` int(11) DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `token` char(50) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT 'Card',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_member_card_pay_record`
--

INSERT INTO `pigcms_member_card_pay_record` (`id`, `orderid`, `ordername`, `transactionid`, `paytype`, `createtime`, `paytime`, `paid`, `price`, `token`, `wecha_id`, `module`, `type`) VALUES
(1, '201407232026364673', 'BG2 充值', NULL, NULL, 1406118396, NULL, 0, 123.00, 'zhtaad1406117161', 'obLuhtwirQvHXWbmQoavchVg-_uA', 'Card', 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `miniscore` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL,
  `bg` varchar(100) NOT NULL,
  `diybg` varchar(200) NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(100) NOT NULL,
  `vip` varchar(100) NOT NULL,
  `qiandao` varchar(100) NOT NULL,
  `shopping` varchar(100) NOT NULL,
  `memberinfo` varchar(100) NOT NULL,
  `membermsg` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `recharge` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/recharge.jpg',
  `payrecord` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/payrecord.jpg',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `miniscore` (`miniscore`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pigcms_member_card_set`
--

INSERT INTO `pigcms_member_card_set` (`id`, `token`, `cardname`, `miniscore`, `logo`, `bg`, `diybg`, `msg`, `numbercolor`, `vipnamecolor`, `Lastmsg`, `vip`, `qiandao`, `shopping`, `memberinfo`, `membermsg`, `contact`, `create_time`, `recharge`, `payrecord`) VALUES
(1, 'ingdnn1397725894', 'PigCms多用户微信营销系统会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg03.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1397726213, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(3, 'hwtbjw1397727501', '深圳今智塔', 0, '/uploads/weixin/tb1.png', './tpl/User/default/common/images/card/card_bg15.png', '/uploads/weixin/vipbj.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1397789690, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg'),
(4, 'mpwwxa1405924744', '微信多用户微信营销系统会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1406092608, '', ''),
(5, 'tnovgk1406093051', '微信多用户微信营销系统会员卡', 1, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1406097673, '', ''),
(6, 'zhtaad1406117161', '微信多用户微信营销系统会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1406117297, '', ''),
(7, 'jbfkls1406185903', '微信多用户微信营销系统会员卡', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '/tpl/User/default/common/images/card/card_bg17.png', '微时代会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1406186123, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_sign`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_sign` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `sell_expense` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_member_card_sign`
--

INSERT INTO `pigcms_member_card_sign` (`id`, `token`, `wecha_id`, `sign_time`, `is_sign`, `score_type`, `expense`, `sell_expense`) VALUES
(0, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', 0, 0, 1, 0, 0),
(0, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', 1397748306, 1, 1, 0, 0),
(0, 'hwtbjw1397727501', 'oJSB_t37QRrk80lEluCi1uVJ59CU', 1397792437, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_use_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_use_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `staffid` int(10) NOT NULL DEFAULT '0',
  `cat` smallint(4) NOT NULL DEFAULT '0',
  `expense` mediumint(4) NOT NULL DEFAULT '0',
  `score` mediumint(4) NOT NULL DEFAULT '0',
  `usecount` mediumint(4) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`,`cat`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_member_card_use_record`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_member_card_vip`
--

CREATE TABLE IF NOT EXISTS `pigcms_member_card_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_member_card_vip`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_article`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `site` int(4) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL,
  `titles` varchar(400) NOT NULL DEFAULT '',
  `subtitle` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` varchar(100) DEFAULT NULL,
  `content` longtext,
  `intro` varchar(2000) NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `uid` varchar(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `last_update` int(10) NOT NULL,
  `viewcount` int(10) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  `pagecount` tinyint(2) NOT NULL DEFAULT '1',
  `disagree` int(10) NOT NULL DEFAULT '0',
  `cancomment` tinyint(1) NOT NULL DEFAULT '1',
  `commentcount` int(10) NOT NULL DEFAULT '0',
  `agree` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `sourcetype` smallint(2) NOT NULL DEFAULT '0',
  `ex` tinyint(1) DEFAULT '0',
  `pubed` tinyint(1) NOT NULL DEFAULT '1',
  `geoid` mediumint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `channel_id_2` (`channel_id`,`thumb`),
  KEY `time` (`time`),
  KEY `taxis` (`taxis`),
  KEY `ex` (`ex`),
  KEY `geoid` (`geoid`),
  KEY `uid` (`uid`),
  KEY `keywords` (`keywords`),
  KEY `sourcetype` (`sourcetype`),
  KEY `pubed` (`pubed`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pigcms_moopha_article`
--

INSERT INTO `pigcms_moopha_article` (`id`, `channel_id`, `token`, `site`, `title`, `titles`, `subtitle`, `link`, `externallink`, `thumb`, `content`, `intro`, `author`, `source`, `keywords`, `uid`, `time`, `last_update`, `viewcount`, `template`, `pagecount`, `disagree`, `cancomment`, `commentcount`, `agree`, `taxis`, `lastcreate`, `sourcetype`, `ex`, `pubed`, `geoid`) VALUES
(1, 7, 'ingdnn1397725894', 1, '', '', NULL, '', 0, 'http://www.wei0794.com/tpl/static/attachment/focus/default/1.gif', '', '', NULL, NULL, NULL, '0', 1397793586, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 1400000000, 0, 0, 1, 0),
(2, 7, 'ingdnn1397725894', 1, '', '', NULL, '', 0, 'http://www.wei0794.com/tpl/static/attachment/focus/default/2.jpg', '', '', NULL, NULL, NULL, '0', 1397793586, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 1400000000, 0, 0, 1, 0),
(3, 7, 'ingdnn1397725894', 1, '', '', NULL, '', 0, 'http://www.wei0794.com/tpl/static/attachment/background/view/8.jpg', '', '', NULL, NULL, NULL, '0', 1397793586, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 1400000000, 0, 0, 1, 0),
(4, 7, 'ingdnn1397725894', 1, '', '', NULL, '', 0, 'http://www.wei0794.com/tpl/static/attachment/background/view/4.jpg', '', '', NULL, NULL, NULL, '0', 1397793586, 0, 0, NULL, 1, 0, 1, 0, 0, 0, 1400000000, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_attachement`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_attachement` (
  `url` varchar(150) NOT NULL DEFAULT '',
  `pubid` smallint(3) NOT NULL DEFAULT '1',
  `filetype` varchar(10) NOT NULL DEFAULT 'picture',
  `cat` varchar(20) NOT NULL DEFAULT '',
  `catid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  KEY `cat` (`cat`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_moopha_attachement`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_channel`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `isnav` tinyint(1) NOT NULL DEFAULT '1',
  `channeltype` tinyint(1) NOT NULL DEFAULT '1',
  `cindex` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `des` mediumtext NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `metatitle` varchar(100) DEFAULT NULL,
  `metakeyword` varchar(100) DEFAULT NULL,
  `metades` varchar(200) DEFAULT NULL,
  `thumbwidth` int(4) NOT NULL,
  `thumbheight` int(4) NOT NULL,
  `thumb2width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb2height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4height` mediumint(4) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `channeltemplate` int(10) DEFAULT '1',
  `contenttemplate` int(10) DEFAULT '1',
  `autotype` varchar(10) NOT NULL DEFAULT '',
  `ex` tinyint(1) NOT NULL DEFAULT '0',
  `iscity` tinyint(1) NOT NULL DEFAULT '0',
  `site` int(4) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `pagesize` smallint(3) NOT NULL DEFAULT '30',
  `specialid` mediumint(4) NOT NULL DEFAULT '0',
  `homepicturechannel` tinyint(1) NOT NULL DEFAULT '0',
  `hometextchannel` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`),
  KEY `specialid` (`specialid`),
  KEY `token` (`token`),
  KEY `isnav` (`isnav`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `pigcms_moopha_channel`
--

INSERT INTO `pigcms_moopha_channel` (`id`, `name`, `shortname`, `isnav`, `channeltype`, `cindex`, `token`, `link`, `externallink`, `des`, `thumb`, `metatitle`, `metakeyword`, `metades`, `thumbwidth`, `thumbheight`, `thumb2width`, `thumb2height`, `thumb3width`, `thumb3height`, `thumb4width`, `thumb4height`, `parentid`, `channeltemplate`, `contenttemplate`, `autotype`, `ex`, `iscity`, `site`, `taxis`, `lastcreate`, `pagesize`, `specialid`, `homepicturechannel`, `hometextchannel`, `time`) VALUES
(1, '首页', '首页', 0, 1, 'homepage', 'ingdnn1397725894', '?m=site&c=home&a=channel&channelid=1', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 11, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1397793586),
(2, '关于我们', '简介', 1, 1, 'aboutus', 'ingdnn1397725894', '?m=site&c=home&a=channel&channelid=2', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9, 11, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1397793586),
(3, '最新动态', '动态', 1, 1, 'news', 'ingdnn1397725894', '?m=site&c=home&a=channel&channelid=3', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9, 11, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1397793586),
(4, '产品展示', '产品', 1, 1, 'products', 'ingdnn1397725894', '?m=site&c=home&a=channel&channelid=4', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10, 11, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1397793586),
(5, '精彩案例', '案例', 1, 1, 'case', 'ingdnn1397725894', '?m=site&c=home&a=channel&channelid=5', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9, 11, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1397793586),
(6, '联系我们', '联系', 1, 1, 'contact', 'ingdnn1397725894', '?m=site&c=home&a=channel&channelid=6', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9, 11, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1397793586),
(7, '幻灯片', '幻灯片', 0, 1, 'focus', 'ingdnn1397725894', '?m=site&c=home&a=channel&channelid=7', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 1, 9, 11, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1397793586),
(8, '首页', '首页', 0, 1, 'homepage', 'hwtbjw1397727501', '?m=site&c=home&a=channel&channelid=8', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 4, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1397793614),
(9, '关于我们', '简介', 1, 1, 'aboutus', 'hwtbjw1397727501', '?m=site&c=home&a=channel&channelid=9', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 4, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1397793614),
(10, '最新动态', '动态', 1, 1, 'news', 'hwtbjw1397727501', '?m=site&c=home&a=channel&channelid=10', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 4, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1397793614),
(11, '产品展示', '产品', 1, 1, 'products', 'hwtbjw1397727501', '?m=site&c=home&a=channel&channelid=11', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 3, 4, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1397793614),
(12, '精彩案例', '案例', 1, 1, 'case', 'hwtbjw1397727501', '?m=site&c=home&a=channel&channelid=12', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 4, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1397793614),
(13, '联系我们', '联系', 1, 1, 'contact', 'hwtbjw1397727501', '?m=site&c=home&a=channel&channelid=13', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 4, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1397793614),
(14, '幻灯片', '幻灯片', 0, 1, 'focus', 'hwtbjw1397727501', '?m=site&c=home&a=channel&channelid=14', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 8, 2, 4, '', 0, 0, 2, 0, 1400000000, 30, 0, 0, 0, 1397793614),
(15, '首页', '首页', 0, 1, 'homepage', 'tnovgk1406093051', '', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1406124554),
(16, '关于我们', '简介', 1, 1, 'aboutus', 'tnovgk1406093051', '?m=site&c=home&a=channel&channelid=16', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1406124554),
(17, '最新动态', '动态', 1, 1, 'news', 'tnovgk1406093051', '?m=site&c=home&a=channel&channelid=17', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1406124554),
(18, '产品展示', '产品', 1, 1, 'products', 'tnovgk1406093051', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1406124554),
(19, '精彩案例', '案例', 1, 1, 'case', 'tnovgk1406093051', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1406124554),
(20, '联系我们', '联系', 1, 1, 'contact', 'tnovgk1406093051', '?m=site&c=home&a=channel&channelid=20', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1406124554),
(21, '幻灯片', '幻灯片', 0, 1, 'focus', 'tnovgk1406093051', '/', 0, '', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 15, 1, 1, '', 0, 0, 3, 0, 1400000000, 30, 0, 0, 0, 1406124554);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_channel_contentattribute`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_channel_contentattribute` (
  `channelid` int(4) NOT NULL,
  `attributeid` int(4) NOT NULL,
  `taxis` int(4) NOT NULL DEFAULT '0',
  KEY `channelid` (`channelid`),
  KEY `taxis` (`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_moopha_channel_contentattribute`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_keywords`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_keywords` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `target` varchar(15) NOT NULL DEFAULT '_blank',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_moopha_keywords`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_picture`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contentid` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_moopha_picture`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_site`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_site` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `intro` varchar(600) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `logourl` varchar(120) NOT NULL DEFAULT '',
  `siteindex` varchar(50) NOT NULL,
  `taxis` int(4) NOT NULL,
  `main` int(1) NOT NULL,
  `abspath` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `statisticcode` varchar(600) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteindex` (`siteindex`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_moopha_site`
--

INSERT INTO `pigcms_moopha_site` (`id`, `name`, `intro`, `picurl`, `token`, `template`, `logourl`, `siteindex`, `taxis`, `main`, `abspath`, `url`, `statisticcode`, `time`) VALUES
(1, '曾氏药膳堂3G官方首页', '曾氏药膳堂3G官方首页', 'http://www.wei0794.com/tpl/static/attachment/focus/default/4.jpg', 'ingdnn1397725894', 'v15', 'www.baidu.com', '', 0, 0, 0, 'www.baidu.com', 'd3d3LmJhaWR1LmNvbQ==', 0),
(2, '', '', '', 'hwtbjw1397727501', 'v20', '', '', 0, 0, 0, '1', '', 0),
(3, '', '', '', 'tnovgk1406093051', '', 'http://demo.zxbxb.com/cms/upload/images/2014/07/23/1406124552vaAW.png', '', 0, 0, 0, NULL, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_template`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `generate_path` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-index,2-channel,3-template,4-singlepage',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `createhtml` tinyint(1) NOT NULL DEFAULT '1',
  `site` int(4) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isdefault` (`isdefault`),
  KEY `site` (`site`),
  KEY `time` (`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `pigcms_moopha_template`
--

INSERT INTO `pigcms_moopha_template` (`id`, `name`, `path`, `generate_path`, `type`, `isdefault`, `createhtml`, `site`, `time`) VALUES
(1, '首页', '@/smarty/templates/2/hwtbjw1397727501/index.html', '', 1, 1, 0, 2, 1397793679),
(2, '文字列表', '@/smarty/templates/2/hwtbjw1397727501/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 2, 1397793679),
(3, '图片列表', '@/smarty/templates/2/hwtbjw1397727501/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 2, 1397793679),
(4, '内容', '@/smarty/templates/2/hwtbjw1397727501/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 2, 1397793679),
(5, '样式css', '@/smarty/templates/2/hwtbjw1397727501/style.css', '', 4, 0, 0, 2, 1397793679),
(6, '顶部', '@/smarty/templates/2/hwtbjw1397727501/header.html', '', 4, 0, 0, 2, 1397793679),
(7, '底部', '@/smarty/templates/2/hwtbjw1397727501/footer.html', '', 4, 0, 0, 2, 1397793679),
(8, '首页', '@/smarty/templates/1/ingdnn1397725894/index.html', '', 1, 1, 0, 1, 1397793721),
(9, '文字列表', '@/smarty/templates/1/ingdnn1397725894/channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 1, 1397793721),
(10, '图片列表', '@/smarty/templates/1/ingdnn1397725894/channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 1, 1397793721),
(11, '内容', '@/smarty/templates/1/ingdnn1397725894/content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 1, 1397793721),
(12, '样式css', '@/smarty/templates/1/ingdnn1397725894/style.css', '', 4, 0, 0, 1, 1397793721),
(13, '顶部', '@/smarty/templates/1/ingdnn1397725894/header.html', '', 4, 0, 0, 1, 1397793721),
(14, '底部', '@/smarty/templates/1/ingdnn1397725894/footer.html', '', 4, 0, 0, 1, 1397793721),
(26, '样式css', '@/smarty/templates/0//style.css', '', 4, 0, 0, 0, 1397797752),
(25, '内容', '@/smarty/templates/0//content.html', '?m=site&c=home&a=content&contentid={contentID}', 3, 1, 0, 0, 1397797752),
(24, '图片列表', '@/smarty/templates/0//channel_picture.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 0, 0, 0, 1397797752),
(23, '文字列表', '@/smarty/templates/0//channel_text.html', '?m=site&c=home&a=channel&channelid={channelID}', 2, 1, 0, 0, 1397797752),
(22, '首页', '@/smarty/templates/0//index.html', '', 1, 1, 0, 0, 1397797752),
(27, '顶部', '@/smarty/templates/0//header.html', '', 4, 0, 0, 0, 1397797752),
(28, '底部', '@/smarty/templates/0//footer.html', '', 4, 0, 0, 0, 1397797752);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_moopha_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_moopha_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `mp` char(11) DEFAULT NULL,
  `qq` varchar(15) DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `regip` varchar(30) DEFAULT NULL,
  `regtime` int(10) DEFAULT NULL,
  `lastloginip` varchar(30) DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_moopha_user`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_msg`
--

CREATE TABLE IF NOT EXISTS `pigcms_msg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `qq` int(11) NOT NULL,
  `domain` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(5) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_msg`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_nearby_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_nearby_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=307 ;

--
-- 转存表中的数据 `pigcms_nearby_user`
--

INSERT INTO `pigcms_nearby_user` (`id`, `token`, `uid`, `keyword`, `time`) VALUES
(1, 'yicms', 'o8MTUjj_oIiraejMjUqapd8stDJA', '酒店', 1373771366),
(2, 'yicms', 'o8MTUjoDS4MeiFKlXgFPxgZIHeYk', '超市', 1374732097),
(3, 'yicms', 'o8MTUjiNgEFHMNz3-HSWU24EIZfQ', '美食', 1372401409),
(4, 'yicms', 'o8MTUjkqJTk7iBV1uLUq5rsqkPXM', '麻辣烫', 1371571540),
(5, 'weixin', 'oBT5_jvHBtmvut_YofWmEAYFDkLM', '医院', 1372255174),
(6, 'yicms', 'o8MTUjpJIOxMrHQ29ZKCjO-CbUPA', '网吧', 1372243125),
(7, 'zhijiantong', 'o_5bTjq5t-dUAR1vLUroJhbOxAzk', '美食', 1372243159),
(8, 'weixin', 'ot1B7joiYF7-hhGykOOWQpAHcg_o', '酒店', 1372303497),
(9, 'weixin', 'ot1B7jmPIWFYD-qxhpwQC8Cs214U', '咖啡厅', 1372303936),
(10, '123456789', 'oAIoEjwM8JQiF98ITetRf7Rcnhgg', '小姐', 1373873812),
(11, 'yicms', 'oLA6VjhV6nlF0aq3c0BpAvIRX3Uk', '中国银行', 1382417093),
(12, 'feng', 'oQN2Fji46R_vR6yLm39l1Y5aN8kE', '银行', 1374068732),
(13, 'yicms', 'oLA6VjsWFEqLyYSpd5IFL6oH6lC0', '工商银行', 1375237293),
(14, 'cch1988922', 'oe5zejvBHcmHyVrOyyNJk5I-lUBA', '酒店', 1374143324),
(15, 'yicms', 'oLA6VjkCryQTj_MOZ--97ll3BdzE', '德克', 1375616564),
(16, 'ssfwe4432424234324sfdsf', 'ohLn9jiVNHI8_kpnqEIm2fE67IhE', '周边查询信息', 1374414259),
(17, 'wlmqol', 'oWCOWjrfPnkm-NIQOW6HVRMAIY_o', '超市', 1374470955),
(18, 'weixin01', 'o2Bu0jhiPFutEH1D_x0mhpghtE8s', 'ktv', 1374477729),
(19, 'weixin01', 'o2Bu0jiFb5eNve0dmf_eA2WS7MlA', '美食', 1374483671),
(20, 'yicms', 'oLA6VjvAf-fZqo8sKQbpXab4vKtA', '商店', 1381210185),
(21, 'ailanyin', 'oXHOhjq0J9M9kavEg2Xnre9fx9RA', '酒店', 1374568534),
(22, 'ailanyin', 'oXHOhjq8yRiYXPRtL0k7kgliLEbs', '饭店', 1374566096),
(23, 'ailanyin', 'oXHOhjvW4kP7MpT6miklE6VzjBKU', 'Ktv', 1374569595),
(24, 'a6677000', 'oYICKjvpvz8WAAVZdxWbMSSI7r8Q', '酒店', 1374569588),
(25, 'yicms', 'oLA6Vjj52CkAvvK7Vp1yezzZdXt0', '美食', 1374580462),
(26, 'yushanlaoxian', 'ouoR3jj2nATtukW2Mh-bdsZv00X0', '饭店', 1374591364),
(27, 'haihui', 'oiOrNjrE0TyBbCcz9GBP-ciVN7ZM', '厕所', 1374654977),
(28, 'yicms', 'oLA6Vjs88qfeB508tz6fmx8ZHF2U', '温州', 1374654833),
(29, 'yicms', 'oLA6VjmVibFFiVvRXW5kReidlKjg', '宾馆', 1374656927),
(30, 'yicms', 'oLA6VjqfMIl44Tw7T2tgmHQGeN_M', '便利店', 1374729167),
(31, 'weixin1', 'oDMG0jvytqi8_1EBeaiwGFLg7bkY', '便利店', 1374738280),
(32, 'xiaoweike', 'o6BKjjr4q-DSNPlykhQUdw1hE1Hw', '按摩', 1375087554),
(33, 'yicms', 'oLA6Vjrop0FnLVWOtya0jcQpGGh8', '火锅', 1376621010),
(34, 'yicms', 'oLA6VjgKA3PbI95FI_jtnObM3fPk', '酒店', 1382150502),
(35, 'yichangweixin', 'ozSfKjk8DbFxldOcDmaR42S994jo', '酒店', 1375024755),
(36, 'yicms', 'oLA6Vjr-cPf3MCZfHGKXDnSmdv7g', '酒店', 1374820610),
(37, 'suiyinzi1234', 'oeZrJjsD2y_ysEsjg-GJEKZhjtgA', '便利店', 1374904370),
(38, 'yicms', 'oLA6VjgQIl3tYEpR-JUjDlMBVask', '饭店', 1375501280),
(39, 'yicms', 'oLA6Vjpydf7p0hWwN6brzu4G8mbU', '厕所', 1374939842),
(40, 'Distribution', 'o3GOLjgI25czTCv0wRwoIB60e7i4', '酒店', 1375267363),
(41, 'yicms', 'oLA6VjkZaABL3sv5w7QvLwtPQw3A', '岳麓加油站大道', 1374993958),
(42, 'lizhixiaogs', 'oPLF9jhwVC27ijL4o83p6DA9qXyc', '医院', 1375001780),
(43, 'yicms', 'oLA6Vjm26Pcf8TYRt2SdDbgAMy1M', '饭店', 1375001737),
(44, 'yicms', 'oLA6VjjRxmHB0xoeVFQh8oQ_Br-s', '美食', 1375061378),
(45, 'yicms', 'oLA6Vjv30ocznYR7GXQfSwFc0fkY', '美食', 1375068659),
(46, 'xiaoweike', 'o6BKjjnOY2QJlX9A3SmwTrI1dokE', '桑拿', 1375107788),
(47, 'yicms', 'oLA6Vji8vEjlsLu8yePaocM5VxZU', '加油站', 1375111696),
(48, 'weixin11222', 'okqPEjldF_8oivt-FQHacQ92139k', 'ktv', 1375115143),
(49, 'lizhixiaogs', 'oPLF9jkZ9pgAHtqfUhtWLi-jas-E', '酒吧', 1375141562),
(50, 'weixin11222', 'okqPEjowZYPhMntxZZ5kN6Pz_cHY', '医院', 1375845786),
(51, 'yicms', 'oLA6Vjl1wibCdSkzv9CzANlJQpZc', '酒店', 1375158029),
(52, 'yicms', 'oLA6Vjm2_NZZcY-W3IZLaHFN-dEY', '商铺', 1375278486),
(53, 'weixin1989', 'oLIEBjxPuMBG8vBBH9Zi0AEe7r3A', '餐厅', 1376471048),
(54, 'yicms', 'oLA6VjnxrBgbSIFrFXljLZDF2YVc', '美食', 1375285095),
(55, 'weixin1989', 'oLIEBj0sPCgbpp6PdCO_S9hn6B5I', '餐馆', 1377758180),
(56, 'yicms', 'oLA6Vjs2ECF-5nQjLm0DPLnArxec', '好吃饭店什么', 1375262512),
(57, 'ynceyi', 'olkx-jpGy8VSAnvSIv6mDQ6NDk4I', '麦当劳周边查询信息', 1375263955),
(58, 'yicms', 'oLA6VjpZ_1wmQPPwF5HjkBpy8df8', '餐饮', 1375341690),
(59, 'Distribution', 'o3GOLjvbcyu5wLhfIkebHz5OpDWU', '吃饭', 1375360811),
(60, 'yicms', 'oLA6VjgMG0OSLTiCXCKnMEBKx8Js', '便利店', 1375414806),
(61, 'yicms', 'oLA6Vjp79RKgyRWBTysa-k1oK070', '酒店', 1375419217),
(62, 'yicms', 'oLA6Vji-nuGsEhPWqoA7Q54aRyyg', '便利店', 1375436146),
(63, 'yicms', 'oLA6Vjiljo_NbEGpJ6OMY7PmskMc', '超市', 1383282624),
(64, 'yicms', 'oLA6Vjr3q55EfTuM2RH5lcirRRP0', '酒店', 1375591695),
(65, '1730892509', 'oQMvfjsK2kbb2_PvyL7xulPbXeS8', '餐饮', 1376008435),
(66, 'yicms', 'oLA6VjjFU-3iuAOXkiFbx-sGqyUk', '厕所', 1376199805),
(67, 'lizhixiaogs', 'oPLF9jm4y9HQFwQ-CMk2paxGlR_s', '饭店', 1375771129),
(68, 'yicms', 'oLA6Vjg-yNnO1c3B9vGhi5BmB9MQ', '酒店', 1375845244),
(69, 'yicms', 'oLA6VjlOyOpvFJwG32xjpISwKP5s', '餐馆', 1375871576),
(70, 'meinvshishanghui', 'o9QD0jlvfNn5RkhI-xJaJ_juqTXo', '团购', 1376192194),
(71, 'yicms', 'oLA6Vjl2T8FMv0kAzXDKDu5Py99E', '酒店', 1375938584),
(72, 'yicms', 'oLA6VjrRT5pH5Sxcftf0JINF9Ikc', '酒店', 1375953590),
(73, '1730892509', 'oQMvfjtxHqs0PzSimbywySqZCwPw', '网吧', 1376110482),
(74, 'yicms', 'oLA6VjpLrkrrBq5wNhyJ_pmpQc0w', '便利店', 1376112564),
(75, '1730892509', 'oQMvfjmp_MnDz3Laig7p_zpdWLFs', '餐饮', 1376008957),
(76, '1730892509', 'oQMvfjgdmhbPRWrzRZd4NCS_X7uY', '公交', 1376126941),
(77, '1730892509', 'oQMvfjv-Yu5P5KE8cq4158Q-SHrg', '酒店', 1376131273),
(78, '1730892509', 'oQMvfjk-mxHmpR8drPDGLURVjMew', '餐饮', 1376132632),
(79, 'yicms', 'oLA6VjoV3NQVu9jjU01_QQIIlssQ', '电影院', 1376139739),
(80, '1730892509', 'oQMvfjvw0E_Cvh15wP7CH-RrdUfc', '餐饮', 1376150098),
(81, 'testtokennn', 'o0vHRjjRkaVNtHLAZTCHHRPdn8Ww', '餐厅', 1376150812),
(82, '1730892509', 'oQMvfjtQIlvI7ZH85ItZBhgnI_uI', '餐厅', 1376179324),
(83, 'yicms', 'oLA6VjkMMcaOvQ90Y5_itDVMVv1o', '酒店', 1376191574),
(84, 'yicms', 'oLA6Vjstwif4BlXAK5MQ2Y1QoVQw', '清真', 1381843729),
(85, 'cmzhl', 'o0EOjjgpz7Ji6N0LWDKM6NLAAKsc', '饭店', 1376230870),
(86, 'mthxjy', 'opw21jvluv8jygkPzPQnAZME1Xzs', '美食', 1377765937),
(87, 'vcolorcn', 'o7KOIjogybB_ESUkf_tMo0OsYnWc', '董酒', 1376538082),
(102, 'tuijinli', 'oWKL6jop4_-zF4Vm2Fb6mvzu0SB0', '加油站', 1376588524),
(88, 'mthxjy', 'opw21jodail8a0N-_5oXREeM8_7E', '仁怀', 1376211020),
(89, 'yicms', 'oLA6VjvhDiVVc6WBzqKJdWhEQoYM', '酒店', 1377239812),
(90, 'yicms', 'oLA6VjgMHuGPGFE7UdhcJHyYKtMA', '周边查询信息', 1376239399),
(91, 'lizhixiaogs', 'oPLF9jv_z-MWkJFkotpnGo4Eo5Dk', '芜湖县饭店', 1376258265),
(92, 'vcolorcn', 'o7KOIjgL5k5v5zSbRtaVg1uTD0rk', '茅台酒', 1376453850),
(93, 'meinvshishanghui', 'o9QD0jsqtDuuUxb-WiQlme4Ok_GM', '餐厅', 1376288701),
(94, 'vcolorcn', 'o7KOIji4-hCKQsRajpL-PAB4XIuU', '董酒', 1376293683),
(101, 'yicms', 'oLA6VjmuLdByPK56A3jrYO42A_V4', '便利店', 1376488024),
(95, 'yicms', 'oLA6VjjXqmwiNeJtEH7l1r-kwo54', '餐饮', 1376358302),
(96, 'mengweixin', 'oItOOjh5-HW0-RpLl86-krciBzP8', '便利店', 1376359677),
(97, 'qiang', 'oqmaojt-Jd1UFl-HaB0Qx1ilC9cU', '美食', 1376365300),
(98, 'zj2101', 'orFXSjoU_S7aVxA0w3dd32jk8wMQ', '周边查询信息LBS', 1376371899),
(99, 'yicms', 'oLA6VjhuctuJYYtfBxnyzIUZQQh8', '便利店', 1376387455),
(100, 'vcolorcn', 'o7KOIjp5ilgddPwTHgH6Q-fedb1s', '董酒', 1376448995),
(103, 'vcolorcn', 'o7KOIjoqU8TpTPUQMCMd4tgDCgpo', '周边查询信息lbs', 1376789316),
(104, 'flycomos666', 'o_LwGj84Eko_bLZeoLP2GoTL3W48', '加油站', 1376874242),
(105, 'yicms', 'oLA6VjomDlGrSZfIMdHOWxKNvktA', '酒店', 1379740555),
(106, 'xinqiyuannet', 'opIOyjuzaVoGVHUBEnURNeMstYcE', '加油站', 1376915859),
(107, 'kpxiaopin', 'oifXKjk5b1jsErxG5dJzL-MCiapE', '酒店', 1378015015),
(108, 'yicms', 'oLA6VjiRJtbznNYy_MECK4L279OQ', '厕所', 1377070959),
(109, 'xysheyx', 'oMKCpjowEL1R9oHh5ylnBgazWSsg', '酒店', 1377184858),
(110, 'yicms', 'oLA6VjjmIZAb4KOOaVFw1abcjs2k', '饭店', 1380335963),
(111, 'yicms', 'oLA6Vjk_YlKdZ-bzfNifqZ3eS7sE', '酒店', 1383405244),
(112, 'yicms', 'oLA6VjkCvQs-JZqW691DHnt1pggY', '酒店', 1377731611),
(114, 'yicms', 'oLA6Vjn26avwgi_seq8zE_r1YLmo', '酒店', 1377911410),
(113, 'weixin1989', 'oLIEBjziqeJCUrKmv331SIfhQcTE', '便利店', 1377747413),
(115, 'yicms', 'oLA6VjpVUT00VJ2D_Zv_ErZgYY7Q', '饭店', 1377931069),
(116, 'yicms', 'oLA6Vjj_YEzV750wa-63CrZcGRsU', '旅店', 1378061448),
(117, 'yicms', 'oLA6VjgKMG5I4snBoDry00BJgznw', '餐厅', 1378976897),
(118, 'yicms', 'oLA6VjrKAXO7ILalakLqBDnlVP3A', '停车场', 1378059331),
(119, 'RoyIsTheBest', 'oERN1jlbhlexA9EwIzN6SSwmB2Wc', '周边查询信息', 1378087126),
(120, 'aksxycm', 'opwWXjiLgti3GKE7uBIz4THMZFXc', '酒店', 1378454663),
(121, 'aksxycm', 'opwWXjnoyVC67m_CxnH5IeukZGuY', '修车', 1378233955),
(122, 'aksxycm', 'opwWXjtrKUo8Fe19MB8IAf907EUM', '酒店', 1378198453),
(123, 'yicms', 'oLA6VjqgtPn5HIL-itOHKEbPsuDw', '酒店', 1378276853),
(124, 'lvyoukx2', 'orIzmjuP0jJgtJ_cHd61mFOESogo', '周边查询信息', 1378302506),
(125, 'yicms', 'oLA6VjuTEDCsBZFUZgMgfFcpmFC4', '酒店', 1385827183),
(126, '13611081', 'oitS2jvVmzbzulV7sWNgMVu_m8iE', '长沙美食', 1378368044),
(127, 'galaxyinfo', 'omI7bjoliy-FwzWNSCaCIOeLncAY', '网络公司', 1378793236),
(128, 'yicms', 'oLA6VjhhrBWdB2yiCjt8H0XfZ8E8', '医院', 1378474289),
(129, 'yicms', 'oLA6VjpNaUsjza97yEqwPHqiqux0', '美食', 1378489434),
(130, 'yicms', 'oLA6VjpFalRHJ48TEdk6b_cLiFPI', '商店', 1378732414),
(131, 'yicms', 'oLA6VjgKkr6LpY6GigBIpXt-s_gs', '酒店', 1378806378),
(132, 'galaxyinfo', 'omI7bjgBTz8YyMat4aJgT1Qm6Ohw', '网络公司', 1378878943),
(133, 'weixiaoshuowx', 'ofAq9jpcly_Gi3JUl3LfirXTJt98', '周边查询信息lbs', 1378882902),
(134, 'yicms', 'oLA6VjgQ_h3s9eZQx3zZpFkjcPcc', '超市', 1378882781),
(135, 'kaipad', 'oiFEJj7FvfSjXpgEWb-_LF-o1BmM', '酒店', 1379323089),
(136, 'yicms', 'oLA6Vjkk_ldfJ4aqP-3a1sz2sRco', '商家', 1379004672),
(137, 'i30ymt', 'olT2ejipmqk7A3-3B8bkcIBXA1wA', '网吧', 1379006043),
(138, 'muzieee', 'oMLayjogefmPP2LgKAkpRfHrmPgY', '餐厅', 1379051339),
(139, 'yicms', 'oLA6Vjgup2kFkbFpgVq9Zi4RGQVg', '美食', 1379056823),
(140, '05318899', 'oAeiDjs-MdNZdLM5YBtuhA6o-hRU', '银行', 1379300513),
(141, 'lvyoukx2', 'orIzmjj_9l5ejfrJ_SO1oCBBVsYU', '周边查询信息', 1379125625),
(142, 'weiwangidc', 'o-hAKj0RfAoPOI3XxkwmrrTaM56w', '好吃什么', 1379229850),
(143, 'iwendeng', 'ocKJ8juoEr5ZLlDOl-d0-xJiA_SU', '文登师范饭店什么', 1379237906),
(144, 'qiandu', 'oR5nPjpWWbczCLcGCh_R38XivLr0', '周边查询信息lbs', 1379393726),
(145, 'lixiangnan', 'oYmGxjs4gHD4GYJ3Cqj76k4dEZfE', '餐厅', 1379557739),
(146, 'yicms', 'oLA6VjlHpnWSNuak_YchHaCUCMwg', '浴场', 1386565144),
(147, 'yicms', 'oLA6Vjna55CQNN0Xsxb8REgkLU4U', '饭店', 1379586122),
(193, 'aqrxot1381991877', 'oNIy1jnxTO0BkMsMy2AXqJOI_upY', '酒店', 1382003469),
(148, 'yicms', 'oLA6VjpY4bMq07J1mzSpmE0GBFCc', '美食', 1379691204),
(149, 'wayboo2013', 'oRF6Mjs4Xh1jpqJjDclub-9GjtcE', '美食', 1379989434),
(150, 'nscn', 'ocPLdjgEmYLdc3MPd7FvEQQhrJng', '饭店', 1379841933),
(151, 'weidonglizazhi', 'o4vbNjjch0YmK-q41Pm3Krre2JLo', '美食', 1379906854),
(152, '1512268465', 'oHPinjjJweXSJP1U5wXtM2KwmvJM', '披萨', 1380463362),
(153, 'dc_xzs', 'o7EvSt9GblJ_8prHZCF11rrSUwJQ', '美食', 1379925530),
(154, 'yicms', 'oLA6Vjp4sLSAuQLjhlvOQh_Js220', '厕所', 1380681047),
(155, 'weixin1', 'oDMG0juvBOBqbecEQs0qaLq8N6ho', '学校', 1380010342),
(156, 'yicms', 'oLA6VjtrSG0x6vJUyLpqaRutA5EY', '厕所', 1380010892),
(157, 'iwendeng', 'ocKJ8jg6zltbHSbYK7MZAJvDvOQU', '吃饭', 1380011172),
(158, 'sqhuifu', 'oUwp4jhyqFSR6IlttlVezox3fim8', '公厕', 1380084077),
(159, 'yzhwowo', 'o4Liljnce_tFuq18VIY0W-dcBzLw', '酒店', 1380063519),
(160, 'hqdogo123', 'ouCjijk3RjiFTjroC62SbtUCRQgY', '美食', 1380099587),
(161, 'Line_168', 'oqxV-jj4Bdb3fWP0XuJAw70uMHR0', '地图', 1386389093),
(162, 'yicms', 'oLA6VjqQ32a3yDHQt49fTa20Q6no', '饭店', 1380109228),
(163, 'shukewang21', 'oXJahjtkj2dghsAIeS2GE3xQTCno', '宾馆', 1380115541),
(164, 'shukewang21', 'oXJahjv2qKBugadP7zbVMzZ1yU38', '宾馆', 1380117204),
(165, 'yicms', 'oLA6VjmSlQXq34nSpxcvKSmPLD14', '座上客', 1380284197),
(166, 'yucivip', 'o39Z5jjqGO26GH-B768l98tDr1lg', '酒店', 1380254168),
(167, 'weixintoke', 'o0UbZjqC6RwCZwVuV1JFk8uE2Cu0', '饭店', 1380336962),
(168, 'yicms', 'oLA6Vjtm70E_LztmIkuIZR9tPyJU', '便利店', 1380339971),
(169, 'wzhaopin', 'osSCHjjEbXKSO_uYSZlQpCuydcnc', '厕所', 1380358216),
(170, 'house5', 'oP7KPjhk_zv4d_Ds0hzNaq7jpcK4', '楼盘', 1380421706),
(171, 'lixiangnan', 'oYmGxjuE8Ib-9qXxXnspSsyRSYwU', '酒店', 1380973242),
(172, 'yicms', 'oLA6VjhGC0a2mYEspL3T9LsDjehA', '300', 1382003563),
(173, 'yicms', 'oLA6VjvnjD3PoebdKNQ3IcRdkZr8', '酒店', 1381655796),
(174, 'yicms', 'oLA6VjonG3KbfUJfBk1bEzkgkJ2w', '便利店', 1380532788),
(175, 'yicms', 'oLA6VjmuLf9xzxeAbxYx9rZ2b10Y', '美食', 1380533257),
(176, 'yicms', 'oLA6VjusIyzNe_rNJhzFzH6hMl0w', '酒店', 1383124792),
(177, 'yicms', 'oLA6VjgjJMjP_ho0gq3GcdBkygfk', '大厦', 1381045216),
(178, 'weixinxchsh0575', 'oNbK0jrluhKkLHWbpF8qzz0faEWw', '牛排', 1381218215),
(179, 'yicms', 'oLA6Vjq5nrZnz6g32G8L0iGF5qB4', '小吃', 1383117043),
(180, 'yepu521', 'owL-HjsfSX6Q6e1aordVY-gSfJrM', '问问名字1069', 1381309555),
(181, 'yepu521', 'owL-HjkdK0sftAcE2jmkDVcEdNNs', '工大酒吧', 1381466497),
(182, 'yicms', 'oLA6Vjlc5A_lc5FiY9WS_rV25LmY', '便利店', 1381487234),
(183, 'vzmrov1381475376', 'oLOjMjoa1MiN4lLKta3rSacSh_w8', '酒店', 1381495956),
(184, 'vzmrov1381475376', 'oLOjMjkXjkqfe8Q6YFi3JS_nqVDc', '餐厅', 1381543493),
(185, 'fgmweixin', 'o8Z2xjuS8Gcg9C20ROXJ4AAHqWgc', '酒店', 1381567068),
(186, 'ywbici1381569054', 'oVIfgjlYbo8n8fPsTwf0n6ivOQSg', '酒店', 1381636244),
(187, 'yvieyy1381566226', 'obzpJt5R4TN5x5dI4-Mh8OPkudDw', '周边查询信息', 1381767093),
(188, 'klvwlk1381716983', 'o7mdruG3YXIjyLJ96BMdwysTCxDE', '酒店', 1381794895),
(189, 'edirui1381827084', 'oNqUHjxRjILJVhYNJLqlZLAkZxoE', '美食', 1381835220),
(190, 'zjtspk1381829376', 'obk8uuKU09cM3so8FnfRUVdt59Gk', '饭店', 1381829653),
(191, 'yicms', 'oLA6VjvyFa2xUqLWS4DB7J4pXctU', '银行', 1381830604),
(192, 'yicms', 'oLA6VjlbyFhVAeMyxDOkdYFhPhto', '宾馆', 1381855716),
(194, 'pdyonq1382086429', 'oOLCvjmKbv0nwtxOiutWE28feQo8', '酒店纪路838', 1382091098),
(195, 'begxlh1382078530', 'odWafji9S8d-_BFSMJsi7t3EM9XI', '加油站', 1382172181),
(196, 'yicms', 'oLA6Vjpp9e2ko8Kq-pIBEWq7YhEk', '酒店', 1382171455),
(197, 'begxlh1382078530', 'odWafjlGke-tGogJdKnOMAbLJRTY', '药店', 1382172220),
(198, 'begxlh1382078530', 'odWafjvlKZjLx38tj7kkIgEYS4OI', '加油站', 1382238922),
(199, 'yicms', 'oLA6VjtJNNJjHnq3i-FgHhj3HF2M', '美食', 1382254369),
(200, 'isijoi1382324503', 'o69zwt5kk1D8jQR5jKhsA50sFO-Y', '酒店', 1382325181),
(201, 'psdojr1382321726', 'oXNfVjoM7t5hTCZ3JJRYUPdrNM9c', '酒店', 1382339014),
(202, 'yicms', 'oLA6VjmDWlR4Xy_AXvSHe2EVFeuM', '酒店', 1382350023),
(203, 'yicms', 'oLA6VjuphdtCeZkjZvFnPvgxVIew', '小吃', 1382369755),
(204, 'Jd2QOQd6cTqo0qtjJq0OIHz1hwtb6T', 'ogZR5jjSXa52w4mdNZfKNEtSF5w0', '美食', 1382379910),
(205, 'dmqodt1382418952', 'oQyuujtnOxJZ7Gi03z0eH68rBoHE', '酒店', 1382497202),
(206, 'oorlls1382401668', 'oRcQIjxi-3J9HKAPrks3ggGUjcBc', '玫瑰园', 1383210857),
(207, 'rrzmjf1382595831', 'omDN3jvnQowA89YLcLXekFFYChTY', '常熟好吃什么', 1382603286),
(208, 'neftab1382579817', 'oNEeVtz5ImvmIecLJv8kclQE2SlI', '酒店', 1382608395),
(209, 'lubrxy1382614273', 'oeRult4UxL73mzd7AGjy-2AAU7SU', '公司', 1382614657),
(210, 'yicms', 'oLA6VjgX3koK0ekPtG8N4Mcc7EsU', '酒店', 1382717938),
(211, 'jmgmoi1382781517', 'oLd49uKUXWFZGccxoKlywtPrBRRU', '美食', 1382783633),
(212, 'yicms', 'oCsUfuCs0mwS1jBjUz1OpkvdSt30', '交通银行', 1383620612),
(213, 'dmnkxw1382332427', 'oIdCktwaLV6KMCPm0O4BGUSNQlNU', '网吧', 1383012904),
(214, 'hrkqkb1383015325', 'o_1_DtwnWMeqLA0Th14XLZCSwXCw', '酒店', 1383029649),
(215, 'yicms', 'oLA6VjkSka1U39TYJ5OLinf5Aee0', '你们实现功能美食怎么', 1383117542),
(216, 'yicms', 'oLA6Vjtjl6QCF4LnUnsRjZSf1fbI', '美食', 1383029045),
(217, 'yicms', 'oLA6VjlxSQUGdwIL1FzSjS86VIxU', '小吃', 1383069669),
(218, 'jwtgxv1383099851', 'oDemGt-sViOdIX6fGWec4SQB_rqQ', '电影院', 1383121723),
(219, 'xbiis', 'oQM6jjvMCTrrLPuKeKoE5z8eMx3A', '美食', 1383178748),
(220, 'yicms', 'oCsUfuK2cF2DAG5zW3Ttq2E-5Rd0', '餐厅', 1383190471),
(221, 'zcwlni1383133344', 'oec62jnj_OtSUqKrRDGZNfm5e0Bk', '酒店', 1383207222),
(222, 'medyoi1383200196', 'oGyZ4tzmt8v4UIDDf6p0Sjsohk20', '餐馆', 1383208500),
(223, 'yicms', 'oLA6VjtHM49JiaZ5dyAtOUdSduqs', 'KTV', 1383209670),
(224, 'oorlls1382401668', 'oRcQIj4KTaoJFvKfn1-jF6OFFmAs', '玫瑰园', 1383284853),
(225, 'yicms', 'oLA6Vjo4jEHdjIc3huQrtkywyylc', '餐饮', 1383218607),
(226, 'yxchjj1383278231', 'o-S-WtwNpEyUcTGCrs-Y9yt0kwOE', '高跟鞋', 1383280863),
(227, 'yicms', 'oLA6Vjthzlbb5FQEKyPoTcB7eaSI', '美食', 1383969778),
(228, 'yicms', 'oCsUfuA3TFw3fOoBbPE-DFDdR_YI', '美食', 1383405181),
(229, 'yicms', 'oLA6VjuW7N9NORcJ6b3v0leQi35w', '酒店2000', 1383654042),
(230, 'zstont1383273728', 'oIJk6t6JJVVn1Pjwh9rxpD63Thpc', '加油站', 1383558432),
(231, 'yicms', 'oLA6VjssvowymTbEbkK5kXrF01X0', '餐厅', 1384017239),
(232, 'yicms', 'oLA6VjsgcNzv6mL09O5lQmq3eHek', '酒店', 1383618400),
(233, 'uduhzr1383613588', 'oY4mbjuUasoZ_2ReU1imXdIOAemI', '酒店', 1383659499),
(234, 'xfjsph1383723426', 'oKSnZjnkMBC_akuzCEf-oc3oiPkg', '酒店', 1383724704),
(235, 'xinptv1383704205', 'oQY_ijjcnXs6MprvS8NNiyR_YYv4', '酒店', 1383745610),
(236, 'oorlls1382401668', 'oRcQIj_TYzPOup5IxLKDkzElz7mc', '公交车', 1383786478),
(237, 'pwafzv1383795413', 'oIBCWjsbjxcUA9m61UoFD6azqDQ0', '酒店', 1383799090),
(238, 'yicms', 'oLA6VjrQ5md661KgMOkBcWsiPfy8', '酒店', 1384016653),
(239, 'yicms', 'oCsUfuIsHIWmolbH1iytg6gJnNFo', '商店', 1385365078),
(240, 'yicms', 'oLA6VjkMksOlDx8A6v03Mc8uk74Q', '超市', 1384173092),
(241, 'kasdqn1383895237', 'ozQhOuOonFrOVn2IsM9UMfzUcr58', '酒店', 1384220030),
(242, 'nhjglv1384218944', 'oCMqHtzEA5St_42wfBxN_vis5m40', '餐馆', 1384246163),
(243, 'yicms', 'oCsUfuPiOWaFNdRs0RkBihRQbUbQ', '美食', 1384516922),
(244, 'zmikye1384319527', 'okCDAjlZ2PMJItsu2Jr3Svp5XpNQ', '餐厅', 1384435799),
(245, 'oafmoi1384421139', 'oOaC0t_26QZ9MFFCq01ziLZkNjPI', '学校', 1384689422),
(246, 'yicms', 'oLA6VjigEKmt-gPECNM59Ey7MNmU', '医院', 1384481902),
(247, 'zekdpc1384481569', 'oYAXBjheKJfZ-hZJriYlv7UbSFpE', '餐馆', 1384483848),
(248, 'hoyzcl1384529758', 'oU--xjhPv8oO6wUrSKePL2qlhgms', '酒店', 1384530347),
(249, 'wlabxc1384416090', 'oguzqjl47_jtoPimo6-2JoXV6oMY', '汽车改装', 1384574778),
(250, 'zekdpc1384481569', 'oYAXBjtXd007N0dMeI2nrRIUixyA', '大学', 1384575403),
(251, 'yicms', 'oLA6VjrdSq13bQwX_SqrQ70i3pNU', '旅馆', 1384686835),
(252, 'ofvdee1384753375', 'oIs4Bj9aGwf-lCo0nNEFAZIvAvZg', '美容院', 1384757651),
(253, 'yicms', 'oLA6VjpAtIuKDsQY2QZN2y8ppbFc', '酒店', 1386566544),
(254, 'khlxsi1384829822', 'om0PTtz5-1kUAeMZ6pquZES1k7Dw', '酒店', 1384849441),
(255, 'xwbdzz1384247488', 'osYVKtwDezvFIdjq9zlXWgyPoYS8', '北京酒店', 1384857522),
(256, 'yicms', 'oCsUfuJH6gnc3k7jnLdD734YdMEE', '便利店', 1384882764),
(257, 'yicms', 'oLA6Vjv41tOYAwsQ1QqAB8Dq-ifk', '美食', 1384912527),
(258, 'xwbdzz1384247488', 'osYVKt7SZJ66_Zc0Cp10KCbJvKw0', '医院', 1384914409),
(259, 'yicms', 'oCsUfuC0mqT4VM6JjbggaLvzGEXI', '酒店', 1385650427),
(260, 'xwbdzz1384247488', 'osYVKtwTLKdNMprsct0q4SAqJsoY', '酒店', 1384915381),
(261, 'sumkoh1384765764', 'oAjT-jsz8R0VIjSQ01VU7ezMmS9Q', '酒店', 1385027337),
(262, 'yicms', 'oLA6Vjg0OD2UEozyFb7k4ANh3O7A', '美食', 1384959223),
(263, 'sumkoh1384765764', 'oAjT-jlWdfRft2Crzm0gI2JNiE6U', '酒店', 1385003536),
(264, 'pygvqn1384998752', 'o9huLjgq6kLfpjZTkR7NB4IvtEiU', '酒店', 1385003761),
(265, 'yicms', 'oCsUfuM5ZDJox3u6e3BO8-V1Hg2Y', '便利店', 1385023299),
(266, 'yicms', 'oCsUfuILpn-kFY066UvSZTeEWzLA', '便利店', 1385025327),
(267, 'zekdpc1384481569', 'oYAXBjqDTctoUHewngitnDwrExHo', '加油站', 1385049264),
(268, 'kasigz1383709700', 'o8MTUjk1KZ1w1In2kPpFnSmYIxFc', '写字楼', 1385090651),
(269, 'yicms', 'oLA6Vjod-qR_XeLnygUcQTV8MYpM', '酒吧', 1385120775),
(270, 'yicms', 'oLA6VjlNLCRGVennKYFzfIa-_Qtc', '超市', 1385224478),
(271, 'ezdmqo1385347093', 'osZpntzCoSxSGpTs56Zc-w5CqVE4', '订餐', 1385347697),
(272, 'yicms', 'oCsUfuCNm-jx-pzKZH1x0SenyMUs', '按摩院', 1385365248),
(273, 'yicms', 'oCsUfuJEHm2CnIyuLhP82NBTUN9M', '周边查询信息', 1386422686),
(274, 'yicms', 'oLA6Vju5vV23DT9pUHaz2oFes1C8', '餐厅', 1385663900),
(275, 'cqaeqf1385791988', 'oaHICuOE5i4jPGZPX9Gwd9jq4O34', '公厕', 1385793284),
(276, 'yicms', 'oLA6Vjl-L_EBqffZM9_wgZJKs0HQ', '门店', 1385794351),
(277, 'yicms', 'oCsUfuHEHZrlBq5OWk9mn0p5ZVIg', 'ktv', 1385821929),
(278, 'yicms', 'oLA6Vjpbwx2gwB2P0b9YWnROXb2k', '便利店', 1385889172),
(279, 'jwtgxv1383099851', 'oDemGt3h7kVYJoCHR5Lmfk-00eIY', '酒店', 1385956372),
(280, 'yicms', 'oLA6VjtxCZH3ecvEzYsPfoYNDbSM', '超市', 1385969406),
(281, 'mtdvcw1385979783', 'oeicFj76Iwb3p-1YQDxSczjcEvLE', '酒店', 1385986423),
(282, 'yicms', 'oLA6Vjvwt0hyrYF0lwt3zPD9ZFvY', '电影院', 1386119501),
(283, 'bbpdvf1386040227', 'oONAguL2jTykSDG7tID1ihfzEE10', '银行', 1386578659),
(284, 'yicms', 'oCsUfuA2YpF0sCjU4Ciizt0fZtfI', '公司', 1386062990),
(285, 'cqicxo1386059661', 'ok7upjjOo3saVFga3-87fJOcXOGQ', '超市', 1386133979),
(286, 'yicms', 'oLA6VjmaVVseA5dWkspeduxcZoRo', '超市', 1386090559),
(287, 'cqicxo1386059661', 'ok7upjhZznaEJiDHtxgJuO99qpJY', '超市', 1386119864),
(288, 'yicms', 'oLA6VjqNGniezHWc9YvRnRr-Vo4o', '酒吧', 1386121073),
(289, 'yicms', 'oCsUfuKkSKk8WMyBNkP_I0hnAw0c', '美食', 1386144595),
(290, 'yicms', 'oLA6VjjF2yV1dFMMR9QCPdd68lBI', '医院', 1386150448),
(291, 'vfscnr1386223388', 'ogCnxjuD0mWQRb_zfOIaOJklju30', '美食', 1386226641),
(292, 'sjbwpj1384332813', 'o1UubjqP-RNk46NAKL3C74whIWDI', '企业', 1386232105),
(293, 'kasigz1383709700', 'o8MTUjvb0xEJKg0dzyuvJf7WibKk', '美食', 1386253652),
(294, 'yicms', 'oLA6VjvjJ4H3EZxikvUeymTtRCCU', '周边信息', 1386257742),
(295, 'yicms', 'oCsUfuAZRMFtAPKYNDMde3hVZ4HA', '便利店', 1386312781),
(296, 'yicms', 'oLA6VjhSfmSbh1ZZWJa_3OgG8g6w', '便利店', 1386381289),
(297, 'yicms', 'oLA6Vjm_xRCUlJo1mBsEnhJ9O0Gc', '酒店', 1386383095),
(298, 'yicms', 'oLA6VjtRfh2ciW76OJWLdFM9ydpE', '地图', 1386391803),
(299, 'yicms', 'oCsUfuJmyBmnWVmInnTSpVKFmejs', '医院', 1386430860),
(300, 'kasigz1383709700', 'o8MTUjtbXao4XudiR9IQyd2n61TY', '餐厅', 1386520895),
(301, 'yicms', 'oLA6VjikF2AO8lbM9AflQuYOzm0U', '招聘', 1386526616),
(302, 'odzryk1386557784', 'oD7wNt9B4HuVOKbUgmWH9Z8Xj5ig', '公交', 1386566779),
(303, 'kasigz1383709700', 'o8MTUjnMpz9SLmqiz5ShnLhrm4jg', '酒店', 1386566592),
(304, 'dwkcdf1386559560', 'ouAf2jh7tDanjyvlFBAY7U8lkbZw', '酒店', 1386580109),
(305, 'odzryk1386557784', 'oD7wNt_iWm0zHqI835DZKgYVrXoo', '饭店', 1386582524),
(306, 'mpwwxa1405924744', 'olPOLuKSstYiPCXyg4SnO-0vWxGk', '美食', 1405988886);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_node`
--

CREATE TABLE IF NOT EXISTS `pigcms_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=87 ;

--
-- 转存表中的数据 `pigcms_node`
--

INSERT INTO `pigcms_node` (`id`, `name`, `title`, `status`, `remark`, `pid`, `level`, `data`, `sort`, `display`) VALUES
(1, 'cms', '根节点', 1, '', 0, 1, NULL, 0, 0),
(2, 'Site', '站点管理', 1, '', 1, 0, NULL, 0, 1),
(3, 'User', '用户管理', 1, '', 1, 0, NULL, 0, 1),
(4, 'extent', '扩展管理', 1, '', 1, 0, NULL, 10, 1),
(5, 'article', '内容管理', 1, '', 1, 0, NULL, 0, 1),
(6, 'Site', '站点设置', 1, '', 2, 2, NULL, 0, 2),
(7, 'index', '基本信息设置', 1, '', 6, 3, NULL, 0, 2),
(8, 'safe', '安全设置', 1, '', 6, 3, NULL, 0, 2),
(9, 'email', '邮箱设置', 1, '', 6, 3, NULL, 0, 2),
(10, 'upfile', '附件设置', 1, '', 6, 3, NULL, 0, 2),
(11, 'Node', '节点管理', 1, NULL, 2, 2, NULL, 0, 2),
(12, 'add', '添加节点', 1, '', 11, 3, NULL, 0, 2),
(13, 'index', '节点列表', 1, '', 11, 3, NULL, 0, 2),
(14, 'insert', '写入', 1, '0', 11, 3, NULL, 0, 0),
(15, 'edit', '编辑节点', 1, '0', 11, 3, NULL, 0, 0),
(16, 'update', '更新节点', 1, '0', 11, 3, NULL, 0, 0),
(17, 'del', '删除节点', 1, '0', 11, 3, NULL, 0, 0),
(18, 'User', '用户中心', 1, '0', 3, 2, NULL, 0, 2),
(19, 'add', '添加用户', 1, '0', 18, 3, NULL, 0, 2),
(20, 'index', '用户列表', 1, '0', 18, 3, NULL, 0, 2),
(21, 'edit', '编辑用户', 1, '0', 18, 3, NULL, 0, 0),
(22, 'insert', '写入数据库', 1, '0', 18, 3, NULL, 0, 0),
(23, 'update', '更新用户', 1, '0', 18, 3, NULL, 0, 0),
(24, 'del', '删除用户', 1, '0', 18, 3, NULL, 0, 0),
(25, 'Group', '管理组', 1, '0', 3, 2, NULL, 0, 2),
(26, 'add', '创建用户组', 1, '0', 25, 3, NULL, 0, 2),
(27, 'index', '用户组列表', 1, '0', 25, 3, NULL, 0, 2),
(28, 'edit', '编辑用户组', 1, '0', 25, 3, NULL, 0, 0),
(29, 'del', '删除用户组', 1, '0', 25, 3, NULL, 0, 0),
(30, 'insert', '写入数据库', 1, '0', 25, 3, NULL, 0, 0),
(31, 'update', '更新用户组', 1, '0', 25, 3, NULL, 0, 0),
(32, 'insert', '保存测试', 1, '0', 6, 3, NULL, 0, 0),
(36, 'menu', '左侧栏', 1, '0', 35, 3, NULL, 0, 0),
(35, 'System', '首页', 1, '0', 2, 2, NULL, 0, 0),
(37, 'main', '右侧栏目', 1, '0', 35, 3, NULL, 0, 0),
(38, 'Article', '微信图文', 1, '0', 5, 2, NULL, 0, 2),
(39, 'index', '图文列表', 1, '0', 38, 3, NULL, 0, 2),
(40, 'add', '图文添加', 1, '0', 38, 3, NULL, 0, 2),
(41, 'edit', '微信图文编辑', 1, '0', 38, 3, NULL, 0, 0),
(42, 'del', '微信图文删除', 1, '0', 38, 3, NULL, 0, 0),
(80, 'token', '公众号管理', 1, '0', 1, 2, NULL, 0, 1),
(45, 'Function', '功能模块', 1, '0', 1, 0, NULL, 0, 1),
(46, 'Function', '功能模块', 1, '0', 45, 2, NULL, 0, 2),
(47, 'add', '添加模块', 1, '0', 46, 3, NULL, 0, 2),
(48, 'User_group', '会员组', 1, '0', 3, 2, NULL, 0, 2),
(49, 'add', '添加会员组', 1, '0', 48, 3, NULL, 0, 2),
(50, 'Users', '前台用户', 1, '0', 3, 2, NULL, 0, 2),
(51, 'index', '用户列表', 1, '0', 50, 3, NULL, 0, 0),
(52, 'add', '添加用户', 1, '0', 50, 3, NULL, 0, 2),
(53, 'edit', '编辑用户', 1, '0', 50, 3, NULL, 0, 0),
(54, 'del', '删除用户', 1, '0', 50, 3, NULL, 0, 0),
(55, 'insert', '写入数据库', 1, '0', 50, 3, NULL, 0, 0),
(56, 'upsave', '更新用户', 1, '0', 50, 3, NULL, 0, 0),
(57, 'Text', '微信文本', 1, '0', 5, 2, NULL, 0, 2),
(58, 'index', '文本列表', 1, '0', 57, 3, NULL, 0, 2),
(59, 'del', '删除', 1, '0', 57, 3, NULL, 0, 0),
(60, 'Custom', '自定义页面', 1, '0', 5, 2, NULL, 0, 2),
(61, 'index', '列表', 1, '0', 60, 3, NULL, 0, 2),
(62, 'edit', '编辑', 1, '0', 60, 3, NULL, 0, 0),
(63, 'del', '删除', 1, '0', 60, 3, NULL, 0, 0),
(64, 'Records', '充值记录', 1, '0', 4, 2, NULL, 0, 2),
(65, 'index', '充值列表', 1, '0', 64, 3, NULL, 0, 2),
(66, 'Case', '用户案例', 1, '0', 4, 2, NULL, 0, 2),
(67, 'index', '案例列表', 1, '0', 66, 3, NULL, 0, 2),
(68, 'add', '添加案例', 1, '0', 66, 3, NULL, 0, 2),
(69, 'edit', '编辑案例', 1, '0', 66, 3, NULL, 0, 0),
(70, 'del', '删除案例', 1, '0', 66, 3, NULL, 0, 0),
(71, 'insert', '写入数据库', 1, '0', 66, 3, NULL, 0, 0),
(72, 'upsave', '更新数据库', 1, '0', 66, 3, NULL, 0, 0),
(73, 'Links', '友情链接', 1, '0', 4, 2, NULL, 0, 2),
(74, 'index', '友情链接', 1, '0', 73, 3, NULL, 0, 2),
(75, 'add', '添加链接', 1, '0', 73, 3, NULL, 0, 2),
(76, 'edit', '编辑链接', 1, '0', 73, 3, NULL, 0, 0),
(77, 'insert', '插入数据库', 1, '0', 73, 3, NULL, 0, 0),
(78, 'upsave', '更新数据库', 1, '0', 73, 3, NULL, 0, 0),
(79, 'del', '删除友情链接', 1, '0', 73, 3, NULL, 0, 0),
(81, 'Token', '公众号管理', 1, '0', 80, 2, NULL, 0, 2),
(83, 'alipay', '在线支付接口', 1, '0', 6, 3, NULL, 0, 2),
(84, 'sms', '短信接口', 1, '', 6, 3, NULL, 0, 2),
(85, 'Funintro', '功能介绍', 1, '0', 45, 2, NULL, 0, 2),
(86, 'add', '添加', 1, '0', 85, 3, NULL, 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_norms`
--

CREATE TABLE IF NOT EXISTS `pigcms_norms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '产品参数分类',
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `value` varchar(150) NOT NULL COMMENT '规格值',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='分类规格相信值' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_norms`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_ordering_class`
--

CREATE TABLE IF NOT EXISTS `pigcms_ordering_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_ordering_class`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_ordering_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_ordering_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_ordering_set`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_other`
--

CREATE TABLE IF NOT EXISTS `pigcms_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_other`
--

INSERT INTO `pigcms_other` (`id`, `token`, `keyword`, `info`) VALUES
(1, 'hwtbjw1397727501', '', '欢迎关注“深圳今智塔”，最新课程《企业利润暴增密码》6月7日~8日，在深圳麒麟山庄举行，预约热线：13926520559，微信预约报名请回复“预约”，回复“报名”可以查看报名条件，查看课程请回复“课程”，回复“历史消息”了解详细情况。\r\n请您记得带身份证件，安排酒店住房所需；请您准备好足够的名片，便于和数百位各行业的企业家相互交流。有任何疑问可以致电4008586996，我们有专业的团队为您解答');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_panorama`
--

CREATE TABLE IF NOT EXISTS `pigcms_panorama` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(300) NOT NULL DEFAULT '',
  `music` varchar(100) NOT NULL DEFAULT '',
  `frontpic` varchar(100) NOT NULL DEFAULT '',
  `rightpic` varchar(100) NOT NULL DEFAULT '',
  `backpic` varchar(100) NOT NULL DEFAULT '',
  `leftpic` varchar(100) NOT NULL DEFAULT '',
  `toppic` varchar(100) NOT NULL DEFAULT '',
  `bottompic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_panorama`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_photo`
--

CREATE TABLE IF NOT EXISTS `pigcms_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_photo`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_photo_list`
--

CREATE TABLE IF NOT EXISTS `pigcms_photo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_photo_list`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_photo_log`
--

CREATE TABLE IF NOT EXISTS `pigcms_photo_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `openid` varchar(100) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_photo_log`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product`
--

CREATE TABLE IF NOT EXISTS `pigcms_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sort` int(10) NOT NULL DEFAULT '0',
  `catid` mediumint(4) NOT NULL DEFAULT '0',
  `storeid` mediumint(4) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `vprice` float NOT NULL,
  `oprice` float NOT NULL DEFAULT '0',
  `mailprice` float NOT NULL COMMENT '邮费',
  `discount` float NOT NULL DEFAULT '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `salecount` mediumint(4) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `fakemembercount` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`storeid`),
  KEY `catid_2` (`catid`),
  KEY `storeid` (`storeid`),
  KEY `token` (`token`),
  KEY `price` (`price`),
  KEY `oprice` (`oprice`),
  KEY `discount` (`discount`),
  KEY `dining` (`dining`),
  KEY `groupon` (`groupon`,`endtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_product`
--

INSERT INTO `pigcms_product` (`id`, `sort`, `catid`, `storeid`, `name`, `price`, `vprice`, `oprice`, `mailprice`, `discount`, `intro`, `token`, `keyword`, `salecount`, `logourl`, `dining`, `groupon`, `endtime`, `fakemembercount`, `time`, `num`) VALUES
(1, 0, 1, 1, '商务套房', 180, 0, 480, 0, 3.7, '商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房商务套房', 'ingdnn1397725894', '商务套房', 0, 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/backpack-2.png', 0, 0, 0, 0, 1397792250, 0),
(2, 0, 2, 1, '6月7日到8日《企业利润暴增密码》课程', 3000, 0, 10000, 0, 3, '&amp;nbsp; 破译失传已久的企业利润增长商业密码！&lt;br /&gt;\r\n&amp;nbsp; &amp;nbsp; &amp;nbsp;	您想窥探企业盈利的根本奥义所在么？&lt;br /&gt;\r\n您渴望公司业绩立刻10倍爆炸式增长吗？&lt;br /&gt;\r\n您渴望打造自己的自动运营赚钱系统吗？&lt;br /&gt;\r\n宇宙万物皆有规律，企业盈利同样有规律，找到规律即势如破竹，不可阻挡！&lt;br /&gt;\r\n一灯能解千年暗！《领袖利润密码》中，王冲老师将为你解密当前市场环境下，提升营业额，企业利润十倍暴增的57个密码！绝对超级震撼！全球首家萃取国内外众多业界顶尖大师的智慧和精华，融入王冲老师十年盈利实战经验，采用现代商业模式解码运用，创新、简单、实战、前瞻、自然、幽默！&lt;br /&gt;\r\n&lt;br /&gt;\r\n一套让企业自动运转盈利的系统工程！一套彻底揭开赚钱规律的核心密码！一套帮你实现时间自由、财务自由的超级课程！！！&lt;br /&gt;\r\n中国第一堂真正提升企业利润的课程！&lt;br /&gt;\r\n1、最具真实性——为您解密成功企业盈利背后的真相；&lt;br /&gt;\r\n2、最具杀伤力——每个观点都让您对企业盈利重新定义 ；&lt;br /&gt;\r\n3、最具系统性——从点到面逐个击破，盈利点环环相扣；&lt;br /&gt;\r\n4、最具高端性——汇集当代商界精英，搭建资源互通平台！&lt;br /&gt;\r\n参加《领袖利润密码》的九大收获！&lt;br /&gt;\r\n1、掌握老板看问题的4大角度，任何事情角度不同视野不同，老板要站在客户、社会、员工的角度看问题；&lt;br /&gt;\r\n2、比之前寻找到2-10倍以上的客户！&lt;br /&gt;\r\n3、掌握产品六大核心创新（企业真正命门所在！）；&lt;br /&gt;\r\n4、提升代理商成交率2-10倍以上！&lt;br /&gt;\r\n5、颠覆性四大定价策略，向定价要利润；&lt;br /&gt;\r\n6、三大杠杆工具，企业倍增利润的关键所在！&lt;br /&gt;\r\n7、四大支点，助跑企业腾飞的秘密所在！&lt;br /&gt;\r\n8、价值整体创新，让客户见到即想要！&lt;br /&gt;\r\n9、如何打败敌人的八大战术！&lt;br /&gt;\r\n&lt;div&gt;\r\n	&lt;br /&gt;\r\n&lt;/div&gt;', 'hwtbjw1397727501', '在线支付', 0, 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/5/1/6/8/thumb_535087d10fecf.jpg', 0, 0, 0, 0, 1398228061, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_attribute`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL COMMENT '属性ID',
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品属性表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_product_attribute`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_cart`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `transactionid` varchar(100) NOT NULL DEFAULT '',
  `paytype` varchar(30) NOT NULL DEFAULT '',
  `productid` int(10) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `diningtype` mediumint(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(14) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `ordertype` mediumint(2) NOT NULL DEFAULT '0',
  `tableid` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `buytime` varchar(100) NOT NULL DEFAULT '',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `year` mediumint(4) NOT NULL DEFAULT '0',
  `month` mediumint(4) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `hour` smallint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` varchar(40) NOT NULL DEFAULT '',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `logistics` varchar(70) NOT NULL DEFAULT '',
  `logisticsid` varchar(50) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `handled` tinyint(1) NOT NULL DEFAULT '0',
  `handledtime` int(10) NOT NULL DEFAULT '0',
  `handleduid` int(10) NOT NULL DEFAULT '0',
  `score` int(10) unsigned NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `groupon` (`groupon`),
  KEY `dining` (`dining`),
  KEY `printed` (`printed`),
  KEY `year` (`year`,`month`,`day`,`hour`),
  KEY `diningtype` (`diningtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_product_cart`
--

INSERT INTO `pigcms_product_cart` (`id`, `transactionid`, `paytype`, `productid`, `code`, `token`, `wecha_id`, `diningtype`, `info`, `total`, `price`, `truename`, `tel`, `address`, `ordertype`, `tableid`, `time`, `buytime`, `groupon`, `dining`, `year`, `month`, `day`, `hour`, `paid`, `orderid`, `sent`, `logistics`, `logisticsid`, `printed`, `handled`, `handledtime`, `handleduid`, `score`, `paymode`) VALUES
(1, '', '', 0, '', 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', 3, 'a:0:{}', 0, 0, '132', '13943561346', '', 0, 4, 1397794440, '04月19日12点', 0, 1, 2014, 4, 19, 12, 0, 'xqdf1397794440', 0, '', '', 0, 0, 0, 0, 0, 0),
(2, '', '', 0, '', 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', 3, 'a:0:{}', 0, 0, '132', '13943561346', '', 0, 1, 1397794576, '04月18日5点', 0, 1, 2014, 4, 18, 5, 0, 'nvgc1397794576', 0, '', '', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_cart_list`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_cart_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cartid` int(10) NOT NULL DEFAULT '0',
  `productid` int(10) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cartid` (`cartid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_product_cart_list`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_cat`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_cat` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL DEFAULT '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `norms` varchar(100) NOT NULL COMMENT '分类产品的规格',
  `color` varchar(100) NOT NULL COMMENT '分类产品的外观',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `token` (`token`),
  KEY `dining` (`dining`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_product_cat`
--

INSERT INTO `pigcms_product_cat` (`id`, `token`, `name`, `des`, `parentid`, `logourl`, `dining`, `time`, `norms`, `color`) VALUES
(1, 'ingdnn1397725894', '订房', '订房订房订房订房订房订房订房', 0, 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/hamburger.png', 0, 1397792202, '', ''),
(2, 'hwtbjw1397727501', '教育项目', '今智塔教育', 0, '', 0, 1398227964, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_comment`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `cartid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `detailid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `truename` varchar(20) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `content` varchar(500) NOT NULL,
  `productinfo` varchar(80) NOT NULL,
  `score` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `isdelete` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`),
  KEY `token` (`token`),
  KEY `cartid` (`cartid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_product_comment`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_detail`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '商品ID',
  `format` varchar(100) NOT NULL COMMENT '商品的规格（大小）',
  `color` varchar(100) NOT NULL COMMENT '颜色',
  `num` int(10) unsigned NOT NULL COMMENT '数量',
  `price` float NOT NULL COMMENT '价格',
  `vprice` float NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT '图标',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品的数量(详细)表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_product_detail`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_diningtable`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_diningtable` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pigcms_product_diningtable`
--

INSERT INTO `pigcms_product_diningtable` (`id`, `token`, `name`, `intro`, `taxis`) VALUES
(1, 'ingdnn1397725894', '1号桌', '1号桌', 1),
(2, 'ingdnn1397725894', '2号桌', '2号桌', 2),
(3, 'ingdnn1397725894', '3号桌', '3号桌', 3),
(4, 'ingdnn1397725894', '大包房', '大包房', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_image`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `image` varchar(200) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品配图' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_product_image`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_mail_price`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_mail_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL COMMENT '满多少元免邮费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='设置商城免邮' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_product_mail_price`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_product_setting`
--

CREATE TABLE IF NOT EXISTS `pigcms_product_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `score` float NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_product_setting`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_qcloud_sendout`
--

CREATE TABLE IF NOT EXISTS `pigcms_qcloud_sendout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suborderid` varchar(1000) DEFAULT NULL,
  `orderid` varchar(1000) DEFAULT NULL,
  `packageid` varchar(1000) DEFAULT NULL,
  `payprice` varchar(100) DEFAULT NULL,
  `openid` varchar(1000) DEFAULT NULL,
  `paynum` varchar(100) DEFAULT NULL,
  `freedays` varchar(100) DEFAULT NULL,
  `servicedays` varchar(100) DEFAULT NULL,
  `payunit` char(100) DEFAULT NULL,
  `service` char(50) DEFAULT 'site',
  `serviceId` varchar(1000) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `providerId` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_qcloud_sendout`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_qcloud_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_qcloud_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` char(100) NOT NULL,
  `token` char(255) NOT NULL,
  `mpname` char(60) NOT NULL,
  `mporiginalid` char(60) NOT NULL,
  `mpid` char(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_qcloud_user`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_recipe`
--

CREATE TABLE IF NOT EXISTS `pigcms_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `begintime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `monday` text NOT NULL,
  `tuesday` text NOT NULL,
  `wednesday` text NOT NULL,
  `thursday` text NOT NULL,
  `friday` text NOT NULL,
  `saturday` text NOT NULL,
  `sunday` text NOT NULL,
  `ishow` int(1) NOT NULL DEFAULT '1' COMMENT '1:显示,2隐藏,默认1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `type` char(15) NOT NULL DEFAULT '',
  `headpic` varchar(200) NOT NULL,
  `infos` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_recipe`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_recognition`
--

CREATE TABLE IF NOT EXISTS `pigcms_recognition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `attention_num` int(5) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `code_url` varchar(200) NOT NULL,
  `scene_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_recognition`
--

INSERT INTO `pigcms_recognition` (`id`, `token`, `title`, `attention_num`, `keyword`, `code_url`, `scene_id`, `status`) VALUES
(2, 'tfffyz1397728996', '1', 4, '1', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_reply`
--

CREATE TABLE IF NOT EXISTS `pigcms_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `differ` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `message_id` int(11) NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=243 ;

--
-- 转存表中的数据 `pigcms_reply`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_reply_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_reply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `infotype` varchar(20) NOT NULL DEFAULT '',
  `diningyuding` tinyint(1) NOT NULL DEFAULT '1',
  `diningwaimai` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `apiurl` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_reply_info`
--

INSERT INTO `pigcms_reply_info` (`id`, `token`, `title`, `picurl`, `info`, `infotype`, `diningyuding`, `diningwaimai`, `config`, `keyword`, `apiurl`) VALUES
(1, 'hwtbjw1397727501', '会员卡,省钱，打折,促销，优先知道,有奖励哦', 'http://www.wei0794.com/tpl/static/images/member.jpg', '尊贵vip，是您消费身份的体现,会员卡,省钱，打折,促销，优先知道,有奖励哦', 'membercard', 1, 1, '', '', ''),
(2, 'hwtbjw1397727501', '申请深圳今智塔会员', 'http://www.wei0794.com/tpl/static/images/vip.jpg', '您尚未申请会员特权，快来点击申领吧！！', 'membercard_nouse', 1, 1, '', '', ''),
(3, 'ingdnn1397725894', '在线订餐', 'http://www.wei0794.com/tpl/static/attachment/focus/default/6.jpg', '在线订餐在线订餐在线订餐', 'Dining', 1, 1, 'a:3:{s:11:"waimaiclose";i:1;s:11:"yudingclose";i:1;s:10:"yudingdays";i:2;}', '订餐', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_requestdata`
--

CREATE TABLE IF NOT EXISTS `pigcms_requestdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- 转存表中的数据 `pigcms_requestdata`
--

INSERT INTO `pigcms_requestdata` (`id`, `token`, `year`, `month`, `day`, `time`, `textnum`, `imgnum`, `videonum`, `other`, `follownum`, `unfollownum`, `3g`) VALUES
(1, 'hwtbjw1397727501', 2014, 4, 17, 1397729966, 2, 0, 0, 3, 1, 1, 0),
(2, 'ingdnn1397725894', 2014, 4, 17, 1397730158, 0, 0, 0, 3, 0, 1, 0),
(3, 'tfffyz1397728996', 2014, 4, 17, 1397735438, 0, 0, 0, 0, 3, 0, 0),
(4, 'tfffyz1397728996', 2014, 4, 18, 1397753119, 48, 0, 0, 0, 17, 8, 0),
(5, 'ingdnn1397725894', 2014, 4, 18, 1397761579, 2, 0, 8, 1, 3, 1, 0),
(6, 'hwtbjw1397727501', 2014, 4, 18, 1397774985, 4, 0, 0, 11, 8, 7, 0),
(7, 'tfffyz1397728996', 2014, 4, 19, 1397862235, 4, 0, 0, 0, 5, 0, 0),
(8, 'ingdnn1397725894', 2014, 4, 19, 1397865787, 0, 0, 0, 1, 0, 1, 0),
(9, 'ingdnn1397725894', 2014, 4, 20, 1397966064, 0, 0, 0, 3, 1, 3, 0),
(10, 'tfffyz1397728996', 2014, 4, 20, 1397969707, 6, 0, 0, 0, 4, 0, 0),
(11, 'ingdnn1397725894', 2014, 4, 21, 1398037211, 0, 0, 0, 1, 2, 1, 0),
(12, 'tfffyz1397728996', 2014, 4, 21, 1398043506, 3, 0, 0, 0, 8, 2, 0),
(13, 'ingdnn1397725894', 2014, 4, 22, 1398097943, 0, 0, 2, 1, 2, 1, 0),
(14, 'tfffyz1397728996', 2014, 4, 22, 1398103532, 4, 0, 0, 0, 7, 1, 0),
(15, 'hwtbjw1397727501', 2014, 4, 22, 1398132429, 1, 0, 0, 9, 5, 4, 0),
(16, 'klntps1397732204', 2014, 4, 23, 1398217368, 1, 0, 0, 0, 0, 0, 0),
(17, 'ingdnn1397725894', 2014, 4, 23, 1398218151, 0, 0, 2, 4, 5, 4, 0),
(18, 'tfffyz1397728996', 2014, 4, 23, 1398219626, 4, 0, 0, 0, 7, 1, 0),
(19, 'hwtbjw1397727501', 2014, 4, 23, 1398223242, 1, 6, 0, 8, 4, 3, 0),
(20, 'ingdnn1397725894', 2014, 4, 24, 1398272837, 0, 0, 0, 2, 4, 2, 0),
(21, 'tfffyz1397728996', 2014, 4, 24, 1398305267, 9, 0, 0, 0, 8, 7, 0),
(22, 'tfffyz1397728996', 2014, 4, 25, 1398360287, 12, 0, 0, 0, 10, 2, 0),
(23, 'ingdnn1397725894', 2014, 4, 25, 1398432027, 0, 0, 0, 0, 1, 0, 0),
(24, 'ingdnn1397725894', 2014, 4, 26, 1398441988, 0, 0, 0, 2, 6, 2, 0),
(25, 'tfffyz1397728996', 2014, 4, 26, 1398477013, 2, 0, 0, 0, 3, 2, 0),
(26, 'tfffyz1397728996', 2014, 4, 27, 1398559143, 4, 0, 0, 0, 8, 0, 0),
(27, 'ingdnn1397725894', 2014, 4, 27, 1398573985, 0, 0, 0, 0, 4, 0, 0),
(28, 'tfffyz1397728996', 2014, 4, 28, 1398616797, 0, 0, 0, 0, 4, 0, 0),
(29, 'ingdnn1397725894', 2014, 4, 28, 1398624264, 0, 0, 0, 1, 4, 1, 0),
(30, 'tfffyz1397728996', 2014, 4, 29, 1398703904, 14, 0, 0, 0, 11, 6, 0),
(31, 'ingdnn1397725894', 2014, 4, 29, 1398727013, 0, 0, 0, 0, 3, 0, 0),
(32, 'hwtbjw1397727501', 2014, 4, 29, 1398782646, 0, 0, 0, 1, 1, 0, 0),
(33, 'tfffyz1397728996', 2014, 4, 30, 1398790494, 7, 0, 0, 0, 4, 3, 0),
(34, 'ingdnn1397725894', 2014, 4, 30, 1398811540, 0, 0, 0, 3, 1, 3, 0),
(35, 'hwtbjw1397727501', 2014, 4, 30, 1398849867, 3, 4, 0, 7, 4, 0, 0),
(36, 'tfffyz1397728996', 2014, 5, 1, 1398875466, 2, 0, 0, 0, 5, 1, 0),
(37, 'hwtbjw1397727501', 2014, 5, 1, 1398937877, 1, 0, 0, 0, 0, 0, 0),
(38, 'tfffyz1397728996', 2014, 5, 2, 1398968694, 14, 0, 0, 0, 3, 2, 0),
(39, 'ingdnn1397725894', 2014, 5, 2, 1398993045, 0, 0, 0, 0, 3, 0, 0),
(40, 'tfffyz1397728996', 2014, 5, 3, 1399053672, 6, 0, 0, 0, 5, 3, 0),
(41, 'ingdnn1397725894', 2014, 5, 3, 1399108588, 0, 0, 0, 4, 0, 4, 0),
(42, 'ingdnn1397725894', 2014, 5, 4, 1399137958, 0, 0, 0, 1, 2, 1, 0),
(43, 'tfffyz1397728996', 2014, 5, 4, 1399177633, 1, 0, 0, 0, 5, 1, 0),
(44, 'ingdnn1397725894', 2014, 5, 5, 1399243076, 0, 0, 0, 2, 4, 2, 0),
(45, 'tfffyz1397728996', 2014, 5, 5, 1399243727, 10, 0, 0, 0, 11, 7, 0),
(46, 'tfffyz1397728996', 2014, 5, 6, 1399311321, 15, 0, 0, 0, 13, 4, 0),
(47, 'ingdnn1397725894', 2014, 5, 6, 1399331738, 0, 0, 0, 0, 5, 0, 0),
(48, 'ingdnn1397725894', 2014, 5, 7, 1399396497, 0, 0, 0, 1, 3, 1, 0),
(49, 'hwtbjw1397727501', 2014, 5, 7, 1399433092, 0, 1, 0, 1, 0, 0, 0),
(50, 'tfffyz1397728996', 2014, 5, 7, 1399434336, 5, 0, 0, 0, 8, 1, 0),
(51, 'tfffyz1397728996', 2014, 5, 8, 1399479168, 12, 0, 0, 0, 8, 6, 0),
(52, 'ingdnn1397725894', 2014, 5, 8, 1399479263, 0, 0, 0, 2, 2, 2, 0),
(53, 'hwtbjw1397727501', 2014, 5, 8, 1399523660, 1, 2, 0, 1, 0, 0, 0),
(54, 'ingdnn1397725894', 2014, 5, 9, 1399565858, 0, 0, 0, 3, 1, 3, 0),
(55, 'hwtbjw1397727501', 2014, 5, 9, 1399604522, 0, 2, 0, 1, 1, 0, 0),
(56, 'tfffyz1397728996', 2014, 5, 9, 1399604540, 1, 0, 0, 0, 7, 1, 0),
(57, 'tfffyz1397728996', 2014, 5, 10, 1399651438, 11, 0, 0, 0, 4, 5, 0),
(58, 'ingdnn1397725894', 2014, 5, 10, 1399702328, 0, 0, 0, 0, 2, 0, 0),
(59, 'hwtbjw1397727501', 2014, 5, 10, 1399709111, 0, 1, 0, 2, 2, 0, 0),
(60, 'ingdnn1397725894', 2014, 5, 11, 1399768683, 0, 0, 0, 3, 5, 3, 0),
(61, 'tfffyz1397728996', 2014, 5, 11, 1399791868, 0, 0, 0, 0, 2, 0, 0),
(62, 'hwtbjw1397727501', 2014, 5, 11, 1399792790, 1, 4, 0, 2, 1, 0, 0),
(63, 'tfffyz1397728996', 2014, 5, 12, 1399854303, 3, 0, 0, 0, 8, 2, 0),
(64, 'hwtbjw1397727501', 2014, 5, 12, 1399863303, 0, 3, 0, 0, 0, 0, 0),
(65, 'ingdnn1397725894', 2014, 5, 12, 1399881368, 0, 0, 0, 0, 3, 0, 0),
(66, 'tfffyz1397728996', 2014, 5, 13, 1399919474, 12, 0, 0, 0, 7, 3, 0),
(67, 'ingdnn1397725894', 2014, 5, 13, 1399968126, 0, 0, 0, 2, 1, 2, 0),
(68, 'hwtbjw1397727501', 2014, 5, 13, 1399980347, 0, 1, 0, 4, 4, 0, 0),
(69, 'tfffyz1397728996', 2014, 5, 14, 1399999368, 1, 0, 0, 0, 6, 1, 0),
(70, 'hwtbjw1397727501', 2014, 5, 14, 1400033787, 0, 2, 0, 6, 6, 1, 0),
(71, 'ingdnn1397725894', 2014, 5, 14, 1400035744, 0, 0, 0, 2, 0, 2, 0),
(72, 'hwtbjw1397727501', 2014, 5, 15, 1400087375, 1, 2, 0, 6, 3, 0, 0),
(73, 'tfffyz1397728996', 2014, 5, 15, 1400114700, 10, 0, 0, 0, 9, 3, 0),
(74, 'ingdnn1397725894', 2014, 5, 15, 1400159648, 0, 0, 0, 0, 1, 0, 0),
(75, 'tfffyz1397728996', 2014, 5, 16, 1400199299, 5, 0, 0, 0, 6, 4, 0),
(76, 'ingdnn1397725894', 2014, 5, 16, 1400206404, 0, 0, 0, 0, 3, 0, 0),
(77, 'ingdnn1397725894', 2014, 5, 17, 1400289689, 0, 0, 0, 1, 1, 1, 0),
(78, 'tfffyz1397728996', 2014, 5, 17, 1400318359, 0, 0, 0, 0, 2, 0, 0),
(79, 'ingdnn1397725894', 2014, 5, 18, 1400348503, 0, 0, 0, 1, 2, 1, 0),
(80, 'hwtbjw1397727501', 2014, 5, 18, 1400387213, 0, 0, 0, 5, 3, 0, 0),
(81, 'tfffyz1397728996', 2014, 5, 18, 1400419860, 1, 0, 0, 0, 1, 0, 0),
(82, 'tfffyz1397728996', 2014, 5, 19, 1400432959, 3, 0, 0, 0, 7, 2, 0),
(83, 'ingdnn1397725894', 2014, 5, 19, 1400445012, 0, 0, 0, 3, 2, 3, 0),
(84, 'klntps1397732204', 2014, 5, 19, 1400471072, 0, 0, 0, 0, 1, 1, 0),
(85, 'hwtbjw1397727501', 2014, 5, 19, 1400472047, 0, 2, 0, 1, 1, 1, 0),
(86, 'mpwwxa1405924744', 2014, 7, 21, 1405931662, 0, 0, 0, 0, 3, 2, 0),
(87, 'mpwwxa1405924744', 2014, 7, 22, 1405962506, 7, 0, 0, 0, 1, 0, 0),
(88, 'zhtaad1406117161', 2014, 7, 23, 1406118132, 1, 0, 0, 1, 0, 0, 0),
(89, 'fbvqqy1406181027', 2014, 7, 24, 1406181737, 0, 0, 0, 0, 3, 0, 0),
(90, 'jbfkls1406185903', 2014, 7, 24, 1406185976, 2, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_research`
--

CREATE TABLE IF NOT EXISTS `pigcms_research` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lid` int(10) unsigned NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `logourl` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_research`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_research_answer`
--

CREATE TABLE IF NOT EXISTS `pigcms_research_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_research_answer`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_research_question`
--

CREATE TABLE IF NOT EXISTS `pigcms_research_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_research_question`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_research_result`
--

CREATE TABLE IF NOT EXISTS `pigcms_research_result` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(80) NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `aids` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `wecha_id` (`wecha_id`,`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_research_result`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_reservation`
--

CREATE TABLE IF NOT EXISTS `pigcms_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `addtype` varchar(20) NOT NULL DEFAULT 'house_book',
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` text,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL DEFAULT '1',
  `time_show` tinyint(4) NOT NULL DEFAULT '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL DEFAULT '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='预约' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_reservation`
--

INSERT INTO `pigcms_reservation` (`id`, `token`, `keyword`, `title`, `picurl`, `addtype`, `address`, `place`, `lng`, `lat`, `tel`, `headpic`, `info`, `typename`, `typename2`, `typename3`, `type`, `date`, `allnums`, `name_show`, `time_show`, `txt1`, `value1`, `txt2`, `value2`, `txt3`, `value3`, `txt4`, `value4`, `txt5`, `value5`, `select1`, `svalue1`, `select2`, `svalue2`, `select3`, `svalue3`, `select4`, `svalue4`, `select5`, `svalue5`, `datename`, `take`, `email`, `open_email`, `sms`, `open_sms`, `price`) VALUES
(1, 'zhtaad1406117161', '楼盘', '楼盘 ', 'http://demo.zxbxb.com/tpl/static/attachment/focus/fangdichan/9.jpg', 'house_book', '广东省江门市江华路', '', '113.082478', '22.600789', '0750336556545', 'http://demo.zxbxb.com/tpl/static/attachment/focus/fangdichan/4.jpg', 'ddddddddddddddddd', '1', '2014-07-22', '2014-07-30', 1, '', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 2, '', 0, '', 0, 0.00);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_reservebook`
--

CREATE TABLE IF NOT EXISTS `pigcms_reservebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL DEFAULT '0' COMMENT '客服标志',
  `kfinfo` varchar(100) NOT NULL,
  `sex` int(11) DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `choose` varchar(50) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `paid` int(1) DEFAULT '0',
  `orderid` char(32) NOT NULL DEFAULT '',
  `payprice` decimal(10,2) DEFAULT NULL,
  `shiporder` char(32) NOT NULL DEFAULT '',
  `productName` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_reservebook`
--

INSERT INTO `pigcms_reservebook` (`id`, `rid`, `token`, `wecha_id`, `truename`, `tel`, `housetype`, `dateline`, `timepart`, `info`, `type`, `booktime`, `remate`, `kfinfo`, `sex`, `age`, `address`, `choose`, `number`, `paid`, `orderid`, `payprice`, `shiporder`, `productName`) VALUES
(1, 1, 'zhtaad1406117161', 'obLuhtwirQvHXWbmQoavchVg-_uA', 'bobby', '13525252525', '', '2014-07-29', '8:00-9:00', 'fghhjjhghj', 'house_book', 1406118177, 1, '7777777777777777777', 0, 0, '', '', 0, 0, '', NULL, '', ''),
(2, 1, 'zhtaad1406117161', 'obLuhtwirQvHXWbmQoavchVg-_uA', 'bobby', '13525252525', '', '2014-07-29', '8:00-9:00', 'fghhjjhghj', 'house_book', 1406118310, 0, '', 0, 0, '', '', 0, 0, '', NULL, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_role`
--

CREATE TABLE IF NOT EXISTS `pigcms_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `pigcms_role`
--

INSERT INTO `pigcms_role` (`id`, `name`, `pid`, `status`, `sort`, `remark`) VALUES
(5, '超级管理员', 0, 1, 0, ''),
(6, '演示组', 0, 1, 0, ''),
(9, '普通会员', 0, 1, 0, ''),
(10, '自己', 0, 1, 0, '自己');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_role_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_role_user`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_router`
--

CREATE TABLE IF NOT EXISTS `pigcms_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bywechat` tinyint(1) NOT NULL DEFAULT '1',
  `wechat` varchar(50) NOT NULL DEFAULT '',
  `qrcode` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  `gw_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_router`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_router_config`
--

CREATE TABLE IF NOT EXISTS `pigcms_router_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `info` varchar(300) NOT NULL DEFAULT '',
  `contact_qq` varchar(12) NOT NULL DEFAULT '',
  `welcome_img` varchar(200) NOT NULL DEFAULT '',
  `other_img` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_router_config`
--

INSERT INTO `pigcms_router_config` (`id`, `keyword`, `title`, `password`, `picurl`, `info`, `contact_qq`, `welcome_img`, `other_img`, `token`) VALUES
(1, '免费wifi', '111', '', '', '111111111', '111111', '', '', 'klntps1397732204');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_classify`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_classify` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `ssort` int(5) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `type` (`type`),
  FULLTEXT KEY `type_2` (`type`),
  FULLTEXT KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_school_classify`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_score`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_score` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `qh_id` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `my_score` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_school_score`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_set_index`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_set_index` (
  `setid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `head_url` varchar(200) NOT NULL,
  `info` varchar(100) NOT NULL,
  `album_id` int(11) NOT NULL,
  `musicurl` varchar(200) NOT NULL DEFAULT '',
  `menu1` varchar(50) NOT NULL,
  `menu1_id` int(11) NOT NULL,
  `menu2` char(15) NOT NULL,
  `menu3` char(15) NOT NULL,
  `menu4` char(15) NOT NULL,
  `menu5` char(15) NOT NULL,
  `menu6` char(15) NOT NULL,
  `menu7` char(15) NOT NULL,
  `menu8` char(15) NOT NULL,
  `menu9` varchar(50) NOT NULL DEFAULT '',
  `menu10` varchar(50) NOT NULL DEFAULT '',
  `menu2_id` int(11) NOT NULL,
  `menu3_id` int(11) NOT NULL,
  `menu4_id` int(11) NOT NULL,
  `menu5_id` int(11) NOT NULL,
  `menu6_id` int(11) NOT NULL,
  `path` varchar(3000) NOT NULL DEFAULT '0',
  `tpid` int(11) DEFAULT NULL,
  `conttpid` int(11) DEFAULT NULL,
  `picurl1` varchar(200) NOT NULL DEFAULT '',
  `picurl2` varchar(200) NOT NULL DEFAULT '',
  `picurl3` varchar(200) NOT NULL DEFAULT '',
  `picurl4` varchar(200) NOT NULL DEFAULT '',
  `picurl5` varchar(200) NOT NULL DEFAULT '',
  `picurl6` varchar(200) NOT NULL DEFAULT '',
  `picurl7` varchar(200) NOT NULL DEFAULT '',
  `picurl8` varchar(200) NOT NULL DEFAULT '',
  `picurl9` varchar(200) NOT NULL DEFAULT '',
  `picurl10` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_school_set_index`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_students`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_students` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `xq_id` int(11) NOT NULL,
  `area_addr` varchar(60) NOT NULL DEFAULT '',
  `bj_id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` int(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `seffectivetime` date DEFAULT NULL,
  `stheendtime` date DEFAULT NULL,
  `jf_statu` int(11) DEFAULT NULL,
  `mobile` char(11) NOT NULL,
  `homephone` char(16) NOT NULL,
  `s_name` char(50) NOT NULL,
  `localdate_id` char(20) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_school_students`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_tcourse`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_tcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `bj_id` int(11) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `sd_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_school_tcourse`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_school_teachers`
--

CREATE TABLE IF NOT EXISTS `pigcms_school_teachers` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` char(50) NOT NULL,
  `birthdate` date NOT NULL,
  `createtime` int(11) NOT NULL,
  `homephone` char(12) NOT NULL,
  `mobile` char(11) NOT NULL,
  `email` char(50) NOT NULL,
  `sex` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jiontime` date DEFAULT NULL,
  `info` text NOT NULL,
  `faceimg` varchar(200) NOT NULL DEFAULT '',
  `headinfo` varchar(600) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_school_teachers`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_selfform`
--

CREATE TABLE IF NOT EXISTS `pigcms_selfform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_selfform`
--

INSERT INTO `pigcms_selfform` (`id`, `token`, `name`, `keyword`, `intro`, `content`, `time`, `successtip`, `failtip`, `endtime`, `logourl`) VALUES
(1, 'hwtbjw1397727501', '深圳今智塔预约报名', '预约', '招商银行高端客户杂志《财智生活》隆重推荐！6月7、8日，深圳麒麟山庄，王冲老师为您解开《企业利润暴增密码》！！！课程原价1万元，招商银行VIP客户专享价：3000元/人，麒麟山庄2天2夜免费吃住！各界企业家齐聚一堂，度假、学习、交流、提高！咨询抢座：4008586996,13926520559，0755-26050191', '&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	您想窥探企业盈利的根本奥义所在吗？&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	您渴望公司业绩立刻10倍爆炸式增长吗？&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	您渴望打造自己的自动运营赚钱系统吗？&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	6月7日--8日，在深圳麒麟山庄，著名华人企业导师王冲老师将为您解开答案......&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	预约热线：13926520559,0755-26050191&amp;nbsp;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p style=&quot;text-align:left;&quot;&gt;\r\n	&lt;img src=&quot;/uploads/h/hwtbjw1397727501/7/c/8/2/534fa9f1b0181.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/uploads/h/hwtbjw1397727501/9/5/f/0/534faa016250e.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/uploads/h/hwtbjw1397727501/6/3/5/c/534faa123cba1.jpg&quot; alt=&quot;&quot; /&gt;&lt;img src=&quot;/uploads/h/hwtbjw1397727501/8/d/1/a/534faa215e64a.jpg&quot; alt=&quot;&quot; /&gt; \r\n&lt;/p&gt;', 1397729831, '恭喜您，您已经预约成功', '对不起，请您重新预约', 1401983999, 'http://www.wei0794.com/uploads/h/hwtbjw1397727501/3/0/6/0/thumb_536ddc02c9606.jpg'),
(2, 'ingdnn1397725894', '报名', '报名', '报名报名报名报名', '提交失败提交失败提交失败', 1397730564, '提交成功', '提交失败', 1399737599, 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/candy.png');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_selfform_input`
--

CREATE TABLE IF NOT EXISTS `pigcms_selfform_input` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `pigcms_selfform_input`
--

INSERT INTO `pigcms_selfform_input` (`id`, `formid`, `displayname`, `fieldname`, `inputtype`, `options`, `require`, `regex`, `taxis`, `errortip`) VALUES
(1, 1, '您的姓名', 'name', 'text', '', 1, '', 1, '请输入您的姓名'),
(2, 1, '手机号码', 'mobile', 'text', '', 1, '', 3, '请输入您的手机号码'),
(8, 1, '  推荐人', 'tuijian', 'text', '', 0, '', 11, ''),
(4, 1, '预定课程', 'date', 'select', '6月7日-8日企业利润暴增密码', 1, '', 9, ''),
(5, 1, '备注', 'note', 'textarea', '', 0, '', 50, ''),
(6, 1, '身份证号', 'ID', 'text', '', 0, '/^[1-9]\\d*|0$/', 3, '请输入您的身份证号码以便我们为您安排桌位和住宿'),
(7, 1, '单位名称', 'Company', 'text', '', 1, '', 5, '请输入您的公司名称'),
(9, 1, '您的性别', 'sex', 'select', '先生|女士', 1, '', 2, ''),
(10, 1, '您的职务', 'zhiwu', 'select', '董事长|总经理|股东', 1, '', 6, '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_selfform_value`
--

CREATE TABLE IF NOT EXISTS `pigcms_selfform_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `pigcms_selfform_value`
--

INSERT INTO `pigcms_selfform_value` (`id`, `formid`, `wecha_id`, `values`, `time`) VALUES
(3, 1, 'oJSB_t17lraKxW3Ke4BzDdWG_l3s', 'a:7:{s:4:"name";s:9:"黑鸿升";s:6:"mobile";s:11:"13926520559";s:2:"ID";s:18:"140102197007296213";s:7:"Company";s:45:"深圳市鸿儒卓克投资管理有限公司";s:4:"date";s:37:"6月7日-8日企业利润暴增密码";s:7:"tuijian";s:6:"王冲";s:4:"note";s:0:"";}', 1399951019),
(4, 1, 'oJSB_t6fymBsSaA36rLisuERG0b8', 'a:9:{s:4:"name";s:6:"李霞";s:3:"sex";s:6:"女士";s:6:"mobile";s:11:"18566225119";s:2:"ID";s:18:"370702197512271821";s:7:"Company";s:21:"法薇雅服装公司";s:5:"zhiwu";s:9:"董事长";s:4:"date";s:37:"6月7日-8日企业利润暴增密码";s:7:"tuijian";s:9:"钟吉琴";s:4:"note";s:0:"";}', 1400113159);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_send_message`
--

CREATE TABLE IF NOT EXISTS `pigcms_send_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `msgtype` varchar(30) NOT NULL DEFAULT '',
  `text` varchar(800) NOT NULL DEFAULT '',
  `imgids` varchar(200) NOT NULL DEFAULT '',
  `mediasrc` varchar(200) NOT NULL DEFAULT '',
  `mediaid` varchar(100) NOT NULL DEFAULT '',
  `reachcount` int(10) NOT NULL DEFAULT '0',
  `groupid` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `msg_id` (`msg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_send_message`
--

INSERT INTO `pigcms_send_message` (`id`, `msg_id`, `title`, `token`, `msgtype`, `text`, `imgids`, `mediasrc`, `mediaid`, `reachcount`, `groupid`, `time`) VALUES
(1, '', '', 'klntps1397732204', 'text', '15245345345345', '', '', '', 0, 0, 1400471441);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_service_logs`
--

CREATE TABLE IF NOT EXISTS `pigcms_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_service_logs`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_service_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_service_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `userName` varchar(60) NOT NULL,
  `userPwd` varchar(32) NOT NULL,
  `endJoinDate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_service_user`
--

INSERT INTO `pigcms_service_user` (`id`, `name`, `token`, `userName`, `userPwd`, `endJoinDate`, `status`) VALUES
(1, '慕希莱', 'tfffyz1397728996', 'liangcaiwu', '7c260f24c54232e1dbd55121dffbfcf6', 1397742716, 0),
(2, '深圳今智塔', 'hwtbjw1397727501', 'kingsta', '354276f16b837576fb79a1b92a72fb4f', 1397709494, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shake`
--

CREATE TABLE IF NOT EXISTS `pigcms_shake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `isact` int(1) NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `shownum` int(11) NOT NULL DEFAULT '10',
  `joinnum` int(11) DEFAULT NULL,
  `shaketype` int(11) NOT NULL DEFAULT '1',
  `token` varchar(40) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `isopen` int(1) NOT NULL DEFAULT '0',
  `clienttime` int(11) NOT NULL DEFAULT '3',
  `showtime` int(10) NOT NULL DEFAULT '3',
  `endtime` varchar(13) DEFAULT NULL,
  `background` varchar(150) DEFAULT NULL,
  `backgroundmusic` varchar(150) DEFAULT NULL,
  `music` varchar(150) DEFAULT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `rule` varchar(600) NOT NULL DEFAULT '',
  `info` varchar(600) NOT NULL DEFAULT '',
  `starttime` int(11) NOT NULL,
  `endshake` int(11) NOT NULL,
  `qrcode` varchar(150) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_shake`
--

INSERT INTO `pigcms_shake` (`id`, `isact`, `title`, `keyword`, `intro`, `thumb`, `shownum`, `joinnum`, `shaketype`, `token`, `createtime`, `isopen`, `clienttime`, `showtime`, `endtime`, `background`, `backgroundmusic`, `music`, `usetime`, `rule`, `info`, `starttime`, `endshake`, `qrcode`, `time`) VALUES
(1, 1, '微信摇一摇瀛大奖', '123', '广告的本质就是劝诱? 劝诱,顾名思义就是劝说和引诱！劝诱是一种历史悠久的直接或者间接劝说性广告表达方法。是劝说诱导受众接受广告意向，它是指用商品的功能和优点满足或引发受众的相应需求动机，促进认知和购买。劝诱，又应其具体表现方式的不同分成劝说和诱导两类。为什么，劝说了还要引诱呢？看看华西咨询品牌导师叶茂中是怎么看待的？', 'http://www.wei0794.com/tpl/static/attachment/focus/default/5.gif', 10, NULL, 1, 'ingdnn1397725894', '', 1, 1, 1, NULL, 'http://www.wei0794.com/tpl/static/attachment/background/view/8.jpg', 'http://www.wei0794.com/tpl/static/attachment/music/default/1.mp3', 'http://www.wei0794.com/tpl/static/attachment/music/default/1.mp3', 20, '华西咨询品牌导师叶茂中表示：劝诱就是把消费者本我里面的罪恶因子，通过各种方式慢慢的使其浮现出来，进而促使消费者，或者诱使消费者进行自然购买的行为。那劝诱和广告有什么关系呢？广告是一种关于人的学问，更是大众文化的表现，必须包容各种意见，表现一大群人现存的价值观、集体的心理、文化、道德观。', '华西咨询品牌导师叶茂中表示：劝诱就是把消费者本我里面的罪恶因子，通过各种方式慢慢的使其浮现出来，进而促使消费者，或者诱使消费者进行自然购买的行为。那劝诱和广告有什么关系呢？广告是一种关于人的学问，更是大众文化的表现，必须包容各种意见，表现一大群人现存的价值观、集体的心理、文化、道德观。', 3, 10, NULL, 1397786703),
(2, 1, '摇一摇', 'yyy', '', '', 10, NULL, 1, 'fbvqqy1406181027', '', 1, 3, 3, NULL, '', '', '', 500, '', '', 3, 600, '', 1406181612);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shakelog`
--

CREATE TABLE IF NOT EXISTS `pigcms_shakelog` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `mark` longtext,
  `endtime` int(15) NOT NULL,
  `joinnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_shakelog`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_shake_rt`
--

CREATE TABLE IF NOT EXISTS `pigcms_shake_rt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(12) NOT NULL DEFAULT '',
  `count` int(10) NOT NULL DEFAULT '0',
  `shakeid` int(10) NOT NULL DEFAULT '0',
  `is_scene` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shakeid` (`shakeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pigcms_shake_rt`
--

INSERT INTO `pigcms_shake_rt` (`id`, `wecha_id`, `token`, `phone`, `count`, `shakeid`, `is_scene`) VALUES
(1, 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', 'ingdnn1397725894', '18924646816', 26, 1, '0'),
(2, 'oEeq8jrPhm98H7HXzGorFsGSUCdo', 'ingdnn1397725894', '18603049687', 12, 1, '0'),
(3, 'oLwG1jjvDx3i_PEIy2zbHdHs-j0s', 'fbvqqy1406181027', '13886500456', 0, 2, '0'),
(4, 'oLwG1jmHdxSpAR871l2WdcdgeZsA', 'fbvqqy1406181027', '1388654449', 0, 2, '0'),
(5, 'oLwG1jnNKtmYEHBMC8DYubDSSwXc', 'fbvqqy1406181027', '13886585689', 0, 2, '0');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_share`
--

CREATE TABLE IF NOT EXISTS `pigcms_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `moduleid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(80) NOT NULL DEFAULT '',
  `to` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`moduleid`,`token`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_share`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_share_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_share_set` (
  `token` varchar(40) NOT NULL DEFAULT '',
  `score` int(5) NOT NULL DEFAULT '0',
  `daylimit` int(5) NOT NULL DEFAULT '1',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_share_set`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sign_conf`
--

CREATE TABLE IF NOT EXISTS `pigcms_sign_conf` (
  `conf_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `use` enum('0','1') NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `stair` tinyint(4) NOT NULL,
  `token` char(25) NOT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_sign_conf`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sign_in`
--

CREATE TABLE IF NOT EXISTS `pigcms_sign_in` (
  `sign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(60) NOT NULL,
  `user_name` char(50) NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `time` char(11) NOT NULL,
  `continue` tinyint(2) NOT NULL,
  `phone` char(11) NOT NULL,
  `set_id` int(11) NOT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_sign_in`
--

INSERT INTO `pigcms_sign_in` (`sign_id`, `token`, `wecha_id`, `user_name`, `integral`, `time`, `continue`, `phone`, `set_id`) VALUES
(1, 'jbfkls1406185903', 'oI1kAj-8QToaNH2FpvQ358fH2438', '', 5, '1406186036', 0, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sign_set`
--

CREATE TABLE IF NOT EXISTS `pigcms_sign_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` char(25) NOT NULL,
  `title` char(60) NOT NULL,
  `content` varchar(250) NOT NULL,
  `token` char(35) NOT NULL,
  `reply_img` char(150) NOT NULL,
  `top_pic` char(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_sign_set`
--

INSERT INTO `pigcms_sign_set` (`id`, `keywords`, `title`, `content`, `token`, `reply_img`, `top_pic`) VALUES
(1, '111', '111', '', 'mpwwxa1405924744', 'http://demo.zxbxb.com/tpl/static/sign/r.jpg', 'http://demo.zxbxb.com/tpl/static/sign/top.jpg'),
(2, '签到', '签到回复标题', '签到介绍', 'jbfkls1406185903', 'http://demo.zxbxb.com/tpl/static/sign/r.jpg', 'http://demo.zxbxb.com/tpl/static/sign/top.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_site_plugmenu`
--

CREATE TABLE IF NOT EXISTS `pigcms_site_plugmenu` (
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`,`taxis`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_site_plugmenu`
--

INSERT INTO `pigcms_site_plugmenu` (`token`, `name`, `url`, `taxis`, `display`) VALUES
('ingdnn1397725894', 'video', '', 0, 0),
('ingdnn1397725894', 'music', '', 0, 0),
('ingdnn1397725894', 'wechat', '', 0, 0),
('ingdnn1397725894', 'qqzone', '', 0, 0),
('ingdnn1397725894', 'tencentweibo', '', 0, 0),
('ingdnn1397725894', 'weibo', '', 0, 0),
('ingdnn1397725894', 'activity', '', 0, 0),
('ingdnn1397725894', 'membercard', '', 0, 0),
('ingdnn1397725894', 'shopping', '', 0, 0),
('ingdnn1397725894', 'email', '', 0, 0),
('ingdnn1397725894', 'album', '', 0, 0),
('ingdnn1397725894', 'home', '', 0, 0),
('ingdnn1397725894', 'share', '', 0, 0),
('ingdnn1397725894', 'message', NULL, 0, 0),
('ingdnn1397725894', 'nav', '', 0, 0),
('ingdnn1397725894', 'memberinfo', '', 0, 0),
('ingdnn1397725894', 'tel', '', 0, 0),
('ingdnn1397725894', 'recommend', '', 0, 0),
('ingdnn1397725894', 'other', '', 0, 0),
('hwtbjw1397727501', 'tel', '', 0, 0),
('hwtbjw1397727501', 'memberinfo', '', 0, 0),
('hwtbjw1397727501', 'nav', '', 0, 0),
('hwtbjw1397727501', 'message', NULL, 0, 0),
('hwtbjw1397727501', 'share', '', 0, 0),
('hwtbjw1397727501', 'home', '', 0, 0),
('hwtbjw1397727501', 'album', '', 0, 0),
('hwtbjw1397727501', 'email', '', 0, 0),
('hwtbjw1397727501', 'shopping', '', 0, 0),
('hwtbjw1397727501', 'membercard', '', 0, 0),
('hwtbjw1397727501', 'activity', '', 0, 0),
('hwtbjw1397727501', 'weibo', '', 0, 0),
('hwtbjw1397727501', 'tencentweibo', '', 0, 0),
('hwtbjw1397727501', 'qqzone', '', 0, 0),
('hwtbjw1397727501', 'wechat', '', 0, 0),
('hwtbjw1397727501', 'music', '', 0, 0),
('hwtbjw1397727501', 'video', '', 0, 0),
('hwtbjw1397727501', 'recommend', '', 0, 0),
('hwtbjw1397727501', 'other', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sms_expendrecord`
--

CREATE TABLE IF NOT EXISTS `pigcms_sms_expendrecord` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `price` int(6) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_sms_expendrecord`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_sms_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `text` varchar(400) NOT NULL DEFAULT '',
  `status` mediumint(4) NOT NULL DEFAULT '0',
  `price` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_sms_record`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_snccode`
--

CREATE TABLE IF NOT EXISTS `pigcms_snccode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_snccode`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_styleset`
--

CREATE TABLE IF NOT EXISTS `pigcms_styleset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `RadioGroup` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_styleset`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_system_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pigcms_system_info`
--

INSERT INTO `pigcms_system_info` (`lastsqlupdate`, `version`) VALUES
(1405521120, '1405478100');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_taobao`
--

CREATE TABLE IF NOT EXISTS `pigcms_taobao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `homeurl` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_taobao`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_text`
--

CREATE TABLE IF NOT EXISTS `pigcms_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `type` varchar(1) NOT NULL,
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='文本回复表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_text`
--

INSERT INTO `pigcms_text` (`id`, `uid`, `uname`, `keyword`, `type`, `text`, `createtime`, `updatetime`, `click`, `token`) VALUES
(1, 4, 'vvint', '报名', '2', '温馨提示：因安排座位、确定酒店房间所需，请您务必填写完整预约报名所需的资料，您放心，我们承若对您的资料保密，不做任何其他用途。\n如果您是朋友推荐的，请您在推荐人那里填上您朋友的姓名，如果您要推荐朋友参加我们的课程，请您在备注里面填上您要推荐的朋友的姓名、手机号码。预约报名请回复“预约”', '1398870838', '1400120841', 0, 'hwtbjw1397727501');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_token_open`
--

CREATE TABLE IF NOT EXISTS `pigcms_token_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `pigcms_token_open`
--

INSERT INTO `pigcms_token_open` (`id`, `uid`, `token`, `queryname`) VALUES
(1, 1, 'pmyfvo1388141592', 'tianqi,qiushi,jishuan,kuaidi,xiaohua,peiliao,liaotian,shouji,fujin,fanyi,suanming,shouye,adma,geci'),
(2, 3, 'ingdnn1397725894', 'langdu,jiankang,changtoushi,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,lottery,taobao,userinfo,fanyi,api,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,advanceTpl'),
(3, 4, 'hwtbjw1397727501', 'userinfo,fanyi,api,choujiang,shouye,adma,huiyuanka,host_kev,diyform,dx,shop,etuan,diymen_set,gua2,panorama,vote,estate,album,GoldenEgg,LuckyFruit,message,car,advanceTpl,lottery,wedding,langdu,wall,school,medical,hotel,forum,shake,share'),
(4, 5, 'tfffyz1397728996', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,advanceTpl'),
(5, 5, 'klntps1397732204', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,forum,shake,share,hotel,school,medical,wall,advanceTpl'),
(6, 2, 'ffgwbc1405611966', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,AdvanceTpl'),
(7, 1, 'vpofgi1405911853', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,AdvanceTpl'),
(8, 1, 'mpwwxa1405924744', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,car,wall,shake,forum,medical,share,hotel,school,AdvanceTpl'),
(9, 1, 'tnovgk1406093051', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,AdvanceTpl'),
(10, 4, 'zhtaad1406117161', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,AdvanceTpl'),
(11, 1, 'fbvqqy1406181027', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,AdvanceTpl'),
(12, 1, 'jbfkls1406185903', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,AdvanceTpl'),
(13, 1, 'hvhyny1406205407', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,lottery,taobao,userinfo,fanyi,api,suanming,baike,caipiao,choujiang,shouye,adma,huiyuanka,host_kev,geci,,diyform,dx,shop,etuan,diymen_set,gua2,panorama,wedding,vote,estate,album,GoldenEgg,LuckyFruit,message,car,wall,shake,forum,medical,message,share,hotel,school,AdvanceTpl');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_update_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_update_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(600) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pigcms_update_record`
--

INSERT INTO `pigcms_update_record` (`id`, `msg`, `type`, `time`) VALUES
(1, '', '1', 1405317840),
(2, '', '1', 1405384440),
(3, '', '1', 1405384560),
(4, '', '1', 1405384620),
(5, '', '1', 1405384680),
(6, '', '1', 1405390440),
(7, '1、行业应用后台版面错乱；2、照片打印机照片不显示', '0', 1405399740),
(8, '1、会员卡幻灯片问题 2、新添加公众号无响应 3、多图文顺序问题 4、相册上传按钮不显示问题', '0', 1405474020),
(9, '相册没有上传按钮', '0', 1405478100);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_upyun_attachement`
--

CREATE TABLE IF NOT EXISTS `pigcms_upyun_attachement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_upyun_attachement`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户表' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `pigcms_user`
--

INSERT INTO `pigcms_user` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`) VALUES
(8, 'admin', '21232f297a57a5a743894a0e4a801fc3', 5, 1, '', 1406204897, '223.243.108.200', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_userinfo`
--

CREATE TABLE IF NOT EXISTS `pigcms_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portrait` varchar(200) NOT NULL DEFAULT '',
  `wallopen` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` int(10) NOT NULL DEFAULT '0',
  `expensetotal` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `bornyear` varchar(4) NOT NULL DEFAULT '',
  `bornmonth` varchar(4) NOT NULL DEFAULT '',
  `bornday` varchar(4) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL,
  `age` varchar(3) NOT NULL DEFAULT '',
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `info` varchar(200) NOT NULL,
  `sign_score` int(11) NOT NULL,
  `expend_score` int(11) NOT NULL,
  `continuous` int(11) NOT NULL,
  `add_expend` int(11) NOT NULL,
  `add_expend_time` int(11) NOT NULL,
  `live_time` int(11) NOT NULL,
  `getcardtime` int(10) NOT NULL,
  `balance` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `paypass` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_userinfo`
--

INSERT INTO `pigcms_userinfo` (`id`, `portrait`, `wallopen`, `total_score`, `expensetotal`, `token`, `wecha_id`, `wechaname`, `truename`, `tel`, `bornyear`, `bornmonth`, `bornday`, `qq`, `sex`, `age`, `birthday`, `address`, `info`, `sign_score`, `expend_score`, `continuous`, `add_expend`, `add_expend_time`, `live_time`, `getcardtime`, `balance`, `paypass`) VALUES
(1, '', 0, 0, 0, 'zhtaad1406117161', 'obLuhtwirQvHXWbmQoavchVg-_uA', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 1406118365, 0.00, NULL),
(2, '', 0, 0, 0, 'fbvqqy1406181027', 'oLwG1jjvDx3i_PEIy2zbHdHs-j0s', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL),
(3, '', 0, 0, 0, 'jbfkls1406185903', 'oI1kAj-8QToaNH2FpvQ358fH2438', '', '', '', '', '', '', '', 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0.00, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_users`
--

CREATE TABLE IF NOT EXISTS `pigcms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(80) NOT NULL DEFAULT '',
  `inviter` int(10) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `smscount` int(10) NOT NULL DEFAULT '0',
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `money` int(11) NOT NULL,
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `spend` int(5) NOT NULL DEFAULT '0',
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL DEFAULT '0',
  `lastloginmonth` smallint(2) NOT NULL DEFAULT '0',
  `attachmentsize` int(10) NOT NULL DEFAULT '0',
  `wechat_card_num` int(3) NOT NULL,
  `serviceUserNum` tinyint(3) NOT NULL,
  `invitecode` varchar(6) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='前台用户表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `pigcms_users`
--

INSERT INTO `pigcms_users` (`id`, `openid`, `inviter`, `gid`, `username`, `mp`, `smscount`, `password`, `email`, `createtime`, `lasttime`, `status`, `createip`, `lastip`, `diynum`, `activitynum`, `card_num`, `card_create_status`, `money`, `moneybalance`, `spend`, `viptime`, `connectnum`, `lastloginmonth`, `attachmentsize`, `wechat_card_num`, `serviceUserNum`, `invitecode`, `remark`) VALUES
(1, '', 0, 5, 'test', '15131235049', 0, '098f6bcd4621d373cade4e832627b4f6', '123@123.com', '1405611729', '1406207722', '1', '127.0.0.1', '123.234.177.180', 0, 0, 109, 0, 1000, 1000, 0, '1577808000', 26, 7, 361017, 6, 0, '', ''),
(3, '', 1, 0, 'wuguangping', '', 0, '46f94c8de14fb36680850768ff1b7f2a', 'wuguangping@qq.com', '1406113055', '1406113055', '0', '118.212.96.23', '118.212.96.23', 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'whscmz', ''),
(4, '', 1, 5, '123456987', '', 0, '635092b43f6daab6e117b2429f5e6236', 'asfasf@asf.com', '1406116707', '1406117158', '1', '113.93.129.67', '113.93.129.67', 0, 0, 9, 0, 0, 0, 0, '1406304000', 2, 7, 0, 1, 0, 'snzbtw', '');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_user_group`
--

CREATE TABLE IF NOT EXISTS `pigcms_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxisid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `pigcms_user_group`
--

INSERT INTO `pigcms_user_group` (`id`, `taxisid`, `name`, `diynum`, `connectnum`, `iscopyright`, `activitynum`, `price`, `statistics_user`, `create_card_num`, `wechat_card_num`, `status`) VALUES
(1, 1, 'vip0', 2000, 2000, 0, 0, 0, 0, 10, 1, 1),
(2, 2, 'VIP1', 3000, 3000, 1, 2, 10, 0, 50, 1, 1),
(3, 3, 'vip2', 40000, 40000, 1, 4, 150, 0, 80, 2, 1),
(4, 4, 'vip3', 50000, 50000, 1, 5, 200, 0, 100, 3, 1),
(5, 5, 'vip4', 100000, 100000, 1, 100000, 1000, 0, 100000, 1000, 1);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_user_request`
--

CREATE TABLE IF NOT EXISTS `pigcms_user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL DEFAULT 'text',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msgtype` (`msgtype`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `pigcms_user_request`
--

INSERT INTO `pigcms_user_request` (`id`, `token`, `uid`, `keyword`, `msgtype`, `time`) VALUES
(1, 'mpwwxa1405924744', 'olPOLuKSstYiPCXyg4SnO-0vWxGk', '附近美食', 'text', 1405988886);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_voiceresponse`
--

CREATE TABLE IF NOT EXISTS `pigcms_voiceresponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='语音回复表' AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_voiceresponse`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_vote`
--

CREATE TABLE IF NOT EXISTS `pigcms_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL COMMENT 'text/img 文本/图片',
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL COMMENT '是否显示图片',
  `info` varchar(500) NOT NULL COMMENT '投票说明',
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL COMMENT '1投票前0投票后2投票结束',
  `cknums` tinyint(3) NOT NULL DEFAULT '1' COMMENT '最多可选择，默认1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_vote`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_vote_item`
--

CREATE TABLE IF NOT EXISTS `pigcms_vote_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL DEFAULT '',
  `tourl` varchar(200) NOT NULL DEFAULT '',
  `rank` tinyint(4) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_vote_item`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_vote_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL COMMENT '投票项 1,2,3,',
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL COMMENT '投票日期',
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_vote_record`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `startbackground` varchar(100) NOT NULL DEFAULT '',
  `background` varchar(100) NOT NULL DEFAULT '',
  `endbackground` varchar(100) NOT NULL DEFAULT '',
  `isopen` tinyint(1) NOT NULL DEFAULT '1',
  `firstprizename` varchar(50) NOT NULL DEFAULT '',
  `firstprizepic` varchar(100) NOT NULL DEFAULT '',
  `firstprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `secondprizename` varchar(50) NOT NULL DEFAULT '',
  `secondprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `secondprizepic` varchar(150) NOT NULL DEFAULT '',
  `thirdprizename` varchar(50) NOT NULL DEFAULT '',
  `thirdprizepic` varchar(100) NOT NULL DEFAULT '',
  `thirdprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizename` varchar(50) NOT NULL DEFAULT '',
  `fourthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizepic` varchar(100) NOT NULL DEFAULT '',
  `fifthprizename` varchar(50) NOT NULL DEFAULT '',
  `fifthprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `fifthprizepic` varchar(100) NOT NULL DEFAULT '',
  `sixthprizename` varchar(50) NOT NULL DEFAULT '',
  `sixthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `sixthprizepic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_wall`
--

INSERT INTO `pigcms_wall` (`id`, `token`, `time`, `logo`, `title`, `startbackground`, `background`, `endbackground`, `isopen`, `firstprizename`, `firstprizepic`, `firstprizecount`, `secondprizename`, `secondprizecount`, `secondprizepic`, `thirdprizename`, `thirdprizepic`, `thirdprizecount`, `fourthprizename`, `fourthprizecount`, `fourthprizepic`, `fifthprizename`, `fifthprizecount`, `fifthprizepic`, `sixthprizename`, `sixthprizecount`, `sixthprizepic`, `keyword`, `qrcode`) VALUES
(1, 'ingdnn1397725894', 1397788321, 'http://www.wei0794.com/uploads/i/ingdnn1397725894/3/2/a/5/thumb_53574bd2298c6.png', '我要上墙活动测试', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/4/0/9/f/thumb_53574efc38d57.png', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/f/6/f/f/thumb_53574afbd8f9b.jpg', 'http://www.wei0794.com/tpl/static/attachment/background/view/1.jpg', 1, '免费吃', 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/hamburger.png', 1, '半价吃', 3, 'http://www.wei0794.com/tpl/static/attachment/icon/', '50元优惠', 'http://www.wei0794.com/tpl/static/attachment/icon/lovely/toaster.png', 20, '', 0, '', '', 0, '', '', 0, '', '上墙', 'http://www.wei0794.com/uploads/i/ingdnn1397725894/b/b/d/6/thumb_53562259784aa.jpg'),
(2, 'mpwwxa1405924744', 1405995246, 'http://demo.zxbxb.com/tpl/static/attachment/icon/canyin/canyin_red/2.png', '111111111', 'http://demo.zxbxb.com/tpl/static/attachment/background/view/1.jpg', 'http://demo.zxbxb.com/tpl/static/attachment/background/view/3.jpg', '', 1, '11', '', 0, '', 0, '', '', '', 0, '', 0, '', '', 0, '', '', 0, '', '1', ''),
(3, 'fbvqqy1406181027', 1406181474, 'http://demo.zxbxb.com/tpl/static/attachment/background/view/1.jpg', '微信上墙', 'http://demo.zxbxb.com/tpl/static/attachment/background/view/3.jpg', 'http://demo.zxbxb.com/tpl/static/attachment/background/view/6.jpg', '', 1, '大众汽车一台', '', 1, '', 0, '', '', '', 0, '', 0, '', '', 0, '', '', 0, '', 'wxq', 'http://demo.zxbxb.com/uploads/f/fbvqqy1406181027/0/8/a/2/thumb_53d0a04e1f462.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_member`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `portrait` varchar(150) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `act_id` int(11) NOT NULL,
  `act_type` enum('1','2','3') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`wallid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `pigcms_wall_member`
--

INSERT INTO `pigcms_wall_member` (`id`, `token`, `wecha_id`, `portrait`, `nickname`, `mp`, `time`, `wallid`, `status`, `sex`, `act_id`, `act_type`) VALUES
(1, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', 'http://www.wei0794.com/tpl/static/portrait/10.jpg', '我艹', '18603049687', 1398231900, 1, 1, 0, 0, '1'),
(2, 'ingdnn1397725894', 'oEeq8jom3uEmOkiGL1F6ph28yDs0', 'http://www.wei0794.com/tpl/static/portrait/10.jpg', '操操操', '13480653193', 1398231960, 1, 1, 0, 0, '1'),
(3, 'fbvqqy1406181027', 'oLwG1jjvDx3i_PEIy2zbHdHs-j0s', '', '', '', 1406181579, 3, 1, 0, 0, '1');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_message`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `picture` varchar(150) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `is_scene` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `pigcms_wall_message`
--

INSERT INTO `pigcms_wall_message` (`id`, `uid`, `wallid`, `token`, `wecha_id`, `content`, `picture`, `time`, `is_scene`) VALUES
(1, 1, 1, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', '我来了', '', 1398231973, '0'),
(2, 2, 1, 'ingdnn1397725894', 'oEeq8jom3uEmOkiGL1F6ph28yDs0', '艹', '', 1398231978, '0'),
(3, 2, 1, 'ingdnn1397725894', 'oEeq8jom3uEmOkiGL1F6ph28yDs0', '艹', '', 1398232034, '0'),
(4, 1, 1, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', '艹艹艹', '', 1398232046, '0'),
(5, 2, 1, 'ingdnn1397725894', 'oEeq8jom3uEmOkiGL1F6ph28yDs0', '艹瑶瑶', '', 1398232052, '0'),
(6, 2, 1, 'ingdnn1397725894', 'oEeq8jom3uEmOkiGL1F6ph28yDs0', '', 'http://mmbiz.qpic.cn/mmbiz/4LhnTWO9ckSx2HFF2gwc3JuCPHRqL1zSiay9Fpt593WgdzBh8jSIoyAuw5Ueg0zBXRRJic6dR7DxdHz6AdcZHvhw/0', 1398232080, '0'),
(7, 1, 1, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', '', 'http://mmbiz.qpic.cn/mmbiz/JtTST0VHjRGnXf02rTomnGroXicHY8NzNDu8DjbKym8zkJoBBeuLyuDA3ZiazFZDia64vfyI1pLvFYUoqWD3hQOXw/0', 1398232082, '0'),
(8, 1, 1, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', '/::@', '', 1398232115, '0'),
(9, 1, 1, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', '', 'http://mmbiz.qpic.cn/mmbiz/JtTST0VHjRGnXf02rTomnGroXicHY8NzNKDDQRf0h59l0iaBPHAb1lxwJ2jtQsSXY8wq4LRmRYrPG5CFEpCYDpUQ/0', 1398232148, '0'),
(10, 1, 1, 'ingdnn1397725894', 'oEeq8jkbWtyuHdbOUrX4hz_sKC7E', '你大爷的', '', 1398232216, '0');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_prize`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `pname` char(40) NOT NULL,
  `pic` char(100) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `token` char(20) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_wall_prize`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_prize_record`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_prize_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(11) NOT NULL DEFAULT '0',
  `prize` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`prize`,`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `pigcms_wall_prize_record`
--

INSERT INTO `pigcms_wall_prize_record` (`id`, `uid`, `wallid`, `prize`, `time`, `sceneid`) VALUES
(1, 2, 1, 1, 1398232304, 0),
(2, 1, 1, 1, 1398232307, 0);

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wall_supperzzle`
--

CREATE TABLE IF NOT EXISTS `pigcms_wall_supperzzle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sceneid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `addtime` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_wall_supperzzle`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_weather`
--

CREATE TABLE IF NOT EXISTS `pigcms_weather` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2502 ;

--
-- 转存表中的数据 `pigcms_weather`
--

INSERT INTO `pigcms_weather` (`id`, `code`, `name`) VALUES
(1, '101010100', '北京'),
(2, '101010200', '海淀'),
(3, '101010400', '顺义'),
(4, '101010500', '怀柔'),
(5, '101010600', '通州'),
(6, '101010700', '昌平'),
(7, '101010800', '延庆'),
(8, '101010900', '丰台'),
(9, '101011000', '石景山'),
(10, '101011100', '大兴'),
(11, '101011200', '房山'),
(12, '101011300', '密云'),
(13, '101011400', '门头沟'),
(14, '101011500', '平谷'),
(15, '101020100', '上海'),
(16, '101020200', '闵行'),
(17, '101020300', '宝山'),
(18, '101020500', '嘉定'),
(19, '101020600', '浦东南汇'),
(20, '101020700', '金山'),
(21, '101020800', '青浦'),
(22, '101020900', '松江'),
(23, '101021000', '奉贤'),
(24, '101021100', '崇明'),
(25, '101021300', '浦东'),
(26, '101030200', '武清'),
(27, '101030300', '宝坻'),
(28, '101030400', '东丽'),
(29, '101030500', '西青'),
(30, '101030600', '北辰'),
(31, '101030700', '宁河'),
(32, '101030800', '汉沽'),
(33, '101030900', '静海'),
(34, '101031000', '津南'),
(35, '101031100', '塘沽'),
(36, '101031200', '大港'),
(37, '101031400', '蓟县'),
(38, '101040100', '重庆'),
(39, '101040200', '永川'),
(40, '101040300', '合川'),
(41, '101040400', '南川'),
(42, '101040500', '江津'),
(43, '101040600', '万盛'),
(44, '101040700', '渝北'),
(45, '101040800', '北碚'),
(46, '101041000', '长寿'),
(47, '101041100', '黔江'),
(48, '101041300', '万州'),
(49, '101041400', '涪陵'),
(50, '101041500', '开县'),
(51, '101041600', '城口'),
(52, '101041700', '云阳'),
(53, '101041800', '巫溪'),
(54, '101041900', '奉节'),
(55, '101042000', '巫山'),
(56, '101042100', '潼南'),
(57, '101042200', '垫江'),
(58, '101042300', '梁平'),
(59, '101042400', '忠县'),
(60, '101042500', '石柱'),
(61, '101042600', '大足'),
(62, '101042700', '荣昌'),
(63, '101042800', '铜梁'),
(64, '101042900', '璧山'),
(65, '101043000', '丰都'),
(66, '101043100', '武隆'),
(67, '101043200', '彭水'),
(68, '101043300', '綦江'),
(69, '101043400', '酉阳'),
(70, '101043600', '秀山'),
(71, '101050101', '哈尔滨'),
(72, '101050102', '双城'),
(73, '101050103', '呼兰'),
(74, '101050104', '阿城'),
(75, '101050105', '宾县'),
(76, '101050106', '依兰'),
(77, '101050107', '巴彦'),
(78, '101050108', '通河'),
(79, '101050109', '方正'),
(80, '101050110', '延寿'),
(81, '101050111', '尚志'),
(82, '101050112', '五常'),
(83, '101050113', '木兰'),
(84, '101050201', '齐齐哈尔'),
(85, '101050202', '讷河'),
(86, '101050203', '龙江'),
(87, '101050204', '甘南'),
(88, '101050205', '富裕'),
(89, '101050206', '依安'),
(90, '101050207', '拜泉'),
(91, '101050208', '克山'),
(92, '101050209', '克东'),
(93, '101050210', '泰来'),
(94, '101050301', '牡丹江'),
(95, '101050302', '海林'),
(96, '101050303', '穆棱'),
(97, '101050304', '林口'),
(98, '101050305', '绥芬河'),
(99, '101050306', '宁安'),
(100, '101050307', '东宁'),
(101, '101050401', '佳木斯'),
(102, '101050402', '汤原'),
(103, '101050403', '抚远'),
(104, '101050404', '桦川'),
(105, '101050405', '桦南'),
(106, '101050406', '同江'),
(107, '101050407', '富锦'),
(108, '101050501', '绥化'),
(109, '101050502', '肇东'),
(110, '101050503', '安达'),
(111, '101050504', '海伦'),
(112, '101050505', '明水'),
(113, '101050506', '望奎'),
(114, '101050507', '兰西'),
(115, '101050508', '青冈'),
(116, '101050509', '庆安'),
(117, '101050510', '绥棱'),
(118, '101050601', '黑河'),
(119, '101050602', '嫩江'),
(120, '101050603', '孙吴'),
(121, '101050604', '逊克'),
(122, '101050605', '五大连池'),
(123, '101050606', '北安'),
(124, '101050701', '大兴安岭'),
(125, '101050702', '塔河'),
(126, '101050703', '漠河'),
(127, '101050704', '呼玛'),
(128, '101050801', '伊春'),
(129, '101050804', '铁力'),
(130, '101050805', '嘉荫'),
(131, '101050901', '大庆'),
(132, '101050902', '林甸'),
(133, '101050903', '肇州'),
(134, '101050904', '肇源'),
(135, '101050905', '杜蒙'),
(136, '101051002', '七台河'),
(137, '101051003', '勃利'),
(138, '101051101', '鸡西'),
(139, '101051102', '虎林'),
(140, '101051103', '密山'),
(141, '101051104', '鸡东'),
(142, '101051201', '鹤岗'),
(143, '101051202', '绥滨'),
(144, '101051203', '萝北'),
(145, '101051301', '双鸭山'),
(146, '101051302', '集贤'),
(147, '101051303', '宝清'),
(148, '101051304', '饶河'),
(149, '101051305', '友谊'),
(150, '101060101', '长春'),
(151, '101060102', '农安'),
(152, '101060103', '德惠'),
(153, '101060104', '九台'),
(154, '101060105', '榆树'),
(155, '101060201', '吉林'),
(156, '101060202', '舒兰'),
(157, '101060203', '永吉'),
(158, '101060204', '蛟河'),
(159, '101060205', '磐石'),
(160, '101060206', '桦甸'),
(161, '101060302', '敦化'),
(162, '101060303', '安图'),
(163, '101060304', '汪清'),
(164, '101060305', '和龙'),
(165, '101060307', '龙井'),
(166, '101060308', '珲春'),
(167, '101060309', '图们'),
(168, '101060312', '延吉'),
(169, '101060401', '四平'),
(170, '101060402', '双辽'),
(171, '101060403', '梨树'),
(172, '101060404', '公主岭'),
(173, '101060405', '伊通'),
(174, '101060501', '通化'),
(175, '101060502', '梅河口'),
(176, '101060503', '柳河'),
(177, '101060504', '辉南'),
(178, '101060505', '集安'),
(179, '101060601', '白城'),
(180, '101060602', '洮南'),
(181, '101060603', '大安'),
(182, '101060604', '镇赉'),
(183, '101060605', '通榆'),
(184, '101060701', '辽源'),
(185, '101060702', '东丰'),
(186, '101060703', '东辽'),
(187, '101060801', '松原'),
(188, '101060802', '乾安'),
(189, '101060803', '前郭'),
(190, '101060804', '长岭'),
(191, '101060805', '扶余'),
(192, '101060901', '白山'),
(193, '101060902', '靖宇'),
(194, '101060903', '临江'),
(195, '101060905', '长白'),
(196, '101060906', '抚松'),
(197, '101060907', '江源'),
(198, '101070101', '沈阳'),
(199, '101070103', '辽中'),
(200, '101070104', '康平'),
(201, '101070105', '法库'),
(202, '101070106', '新民'),
(203, '101070201', '大连'),
(204, '101070202', '瓦房店'),
(205, '101070204', '普兰店'),
(206, '101070206', '长海'),
(207, '101070207', '庄河'),
(208, '101070301', '鞍山'),
(209, '101070302', '台安'),
(210, '101070303', '岫岩'),
(211, '101070304', '海城'),
(212, '101070401', '抚顺'),
(213, '101070402', '新宾'),
(214, '101070403', '清原'),
(215, '101070501', '本溪'),
(216, '101070504', '桓仁'),
(217, '101070601', '丹东'),
(218, '101070602', '凤城'),
(219, '101070603', '宽甸'),
(220, '101070604', '东港'),
(221, '101070701', '锦州'),
(222, '101070702', '凌海'),
(223, '101070704', '义县'),
(224, '101070705', '黑山'),
(225, '101070706', '北镇'),
(226, '101070801', '营口'),
(227, '101070802', '大石桥'),
(228, '101070803', '盖州'),
(229, '101070901', '阜新'),
(230, '101070902', '彰武'),
(231, '101071001', '辽阳'),
(232, '101071003', '灯塔'),
(233, '101071004', '弓长岭'),
(234, '101071101', '铁岭'),
(235, '101071102', '开原'),
(236, '101071103', '昌图'),
(237, '101071104', '西丰'),
(238, '101071105', '调兵山'),
(239, '101071201', '朝阳'),
(240, '101071203', '凌源'),
(241, '101071204', '喀左'),
(242, '101071205', '北票'),
(243, '101071207', '建平'),
(244, '101071301', '盘锦'),
(245, '101071302', '大洼'),
(246, '101071303', '盘山'),
(247, '101071401', '葫芦岛'),
(248, '101071402', '建昌'),
(249, '101071403', '绥中'),
(250, '101071404', '兴城'),
(251, '101080101', '呼和浩特'),
(252, '101080102', '土左'),
(253, '101080103', '托克托'),
(254, '101080104', '和林格尔'),
(255, '101080105', '清水河'),
(256, '101080107', '武川'),
(257, '101080201', '包头'),
(258, '101080202', '白云鄂博'),
(259, '101080204', '土右'),
(260, '101080205', '固阳'),
(261, '101080206', '达茂'),
(262, '101080301', '乌海'),
(263, '101080401', '乌兰察布'),
(264, '101080402', '卓资'),
(265, '101080403', '化德'),
(266, '101080404', '商都'),
(267, '101080406', '兴和'),
(268, '101080407', '凉城'),
(269, '101080408', '察右前'),
(270, '101080409', '察右中'),
(271, '101080410', '察右后'),
(272, '101080411', '四子王'),
(273, '101080412', '丰镇'),
(274, '101080501', '通辽'),
(275, '101080503', '科左中'),
(276, '101080504', '科左后'),
(277, '101080506', '开鲁'),
(278, '101080507', '库伦'),
(279, '101080508', '奈曼'),
(280, '101080509', '扎鲁特'),
(281, '101080601', '赤峰'),
(282, '101080603', '阿鲁'),
(283, '101080605', '巴林左'),
(284, '101080606', '巴林右'),
(285, '101080607', '林西'),
(286, '101080608', '克什'),
(287, '101080609', '翁牛特'),
(288, '101080611', '喀喇沁'),
(289, '101080613', '宁城'),
(290, '101080614', '敖汉'),
(291, '101080701', '鄂尔多斯'),
(292, '101080703', '达拉特'),
(293, '101080704', '准格尔'),
(294, '101080706', '河南'),
(295, '101080708', '鄂托克'),
(296, '101080709', '杭锦'),
(297, '101080710', '乌审'),
(298, '101080711', '伊金霍洛'),
(299, '101080801', '巴彦淖尔'),
(300, '101080802', '五原'),
(301, '101080803', '磴口'),
(302, '101080804', '乌前'),
(303, '101080806', '乌中'),
(304, '101080807', '乌后'),
(305, '101080810', '杭锦后'),
(306, '101080901', '锡林浩特'),
(307, '101080903', '二连浩特'),
(308, '101080904', '阿巴嘎'),
(309, '101080906', '苏左'),
(310, '101080907', '苏右'),
(311, '101080909', '东乌'),
(312, '101080910', '西乌'),
(313, '101080911', '太仆寺'),
(314, '101080912', '镶黄'),
(315, '101080913', '正镶白'),
(316, '101080914', '正蓝'),
(317, '101080915', '多伦'),
(318, '101081000', '呼伦贝尔'),
(319, '101081001', '海拉尔'),
(320, '101081003', '阿荣'),
(321, '101081004', '莫力达瓦'),
(322, '101081005', '鄂伦春'),
(323, '101081006', '鄂温克'),
(324, '101081007', '陈巴尔虎'),
(325, '101081008', '新左'),
(326, '101081009', '新右'),
(327, '101081010', '满洲里'),
(328, '101081011', '牙克石'),
(329, '101081012', '扎兰屯'),
(330, '101081014', '额尔古纳'),
(331, '101081015', '根河'),
(332, '101081101', '乌兰浩特'),
(333, '101081102', '阿尔山'),
(334, '101081103', '科右中'),
(335, '101081105', '扎赉特'),
(336, '101081107', '突泉'),
(337, '101081108', '霍林郭勒'),
(338, '101081109', '科右前'),
(339, '101081201', '阿拉善'),
(340, '101081202', '阿右'),
(341, '101081203', '额济纳'),
(342, '101090101', '石家庄'),
(343, '101090102', '井陉'),
(344, '101090103', '正定'),
(345, '101090104', '栾城'),
(346, '101090105', '行唐'),
(347, '101090106', '灵寿'),
(348, '101090107', '高邑'),
(349, '101090108', '深泽'),
(350, '101090109', '赞皇'),
(351, '101090110', '无极'),
(352, '101090111', '平山'),
(353, '101090112', '元氏'),
(354, '101090113', '赵县'),
(355, '101090114', '辛集'),
(356, '101090115', '藁城'),
(357, '101090116', '晋州'),
(358, '101090117', '新乐'),
(359, '101090118', '鹿泉'),
(360, '101090201', '保定'),
(361, '101090202', '满城'),
(362, '101090203', '阜平'),
(363, '101090204', '徐水'),
(364, '101090205', '唐县'),
(365, '101090206', '高阳'),
(366, '101090207', '容城'),
(367, '101090209', '涞源'),
(368, '101090210', '望都'),
(369, '101090211', '安新'),
(370, '101090212', '易县'),
(371, '101090214', '曲阳'),
(372, '101090215', '蠡县'),
(373, '101090216', '顺平'),
(374, '101090217', '雄县'),
(375, '101090218', '涿州'),
(376, '101090219', '定州'),
(377, '101090220', '安国'),
(378, '101090221', '高碑店'),
(379, '101090222', '涞水'),
(380, '101090223', '定兴'),
(381, '101090224', '清苑'),
(382, '101090225', '博野'),
(383, '101090301', '张家口'),
(384, '101090302', '宣化'),
(385, '101090303', '张北'),
(386, '101090304', '康保'),
(387, '101090305', '沽源'),
(388, '101090306', '尚义'),
(389, '101090307', '蔚县'),
(390, '101090308', '阳原'),
(391, '101090309', '怀安'),
(392, '101090310', '万全'),
(393, '101090311', '怀来'),
(394, '101090312', '涿鹿'),
(395, '101090313', '赤城'),
(396, '101090314', '崇礼'),
(397, '101090402', '承德'),
(398, '101090404', '兴隆'),
(399, '101090405', '平泉'),
(400, '101090406', '滦平'),
(401, '101090407', '隆化'),
(402, '101090408', '丰宁'),
(403, '101090409', '宽城'),
(404, '101090410', '围场'),
(405, '101090501', '唐山'),
(406, '101090502', '丰南'),
(407, '101090503', '丰润'),
(408, '101090504', '滦县'),
(409, '101090505', '滦南'),
(410, '101090506', '乐亭'),
(411, '101090507', '迁西'),
(412, '101090508', '玉田'),
(413, '101090509', '唐海'),
(414, '101090510', '遵化'),
(415, '101090511', '迁安'),
(416, '101090512', '曹妃甸'),
(417, '101090601', '廊坊'),
(418, '101090602', '固安'),
(419, '101090603', '永清'),
(420, '101090604', '香河'),
(421, '101090605', '大城'),
(422, '101090606', '文安'),
(423, '101090607', '大厂'),
(424, '101090608', '霸州'),
(425, '101090609', '三河'),
(426, '101090701', '沧州'),
(427, '101090702', '青县'),
(428, '101090703', '东光'),
(429, '101090704', '海兴'),
(430, '101090705', '盐山'),
(431, '101090706', '肃宁'),
(432, '101090707', '南皮'),
(433, '101090708', '吴桥'),
(434, '101090709', '献县'),
(435, '101090710', '孟村'),
(436, '101090711', '泊头'),
(437, '101090712', '任丘'),
(438, '101090713', '黄骅'),
(439, '101090714', '河间'),
(440, '101090716', '沧县'),
(441, '101090801', '衡水'),
(442, '101090802', '枣强'),
(443, '101090803', '武邑'),
(444, '101090804', '武强'),
(445, '101090805', '饶阳'),
(446, '101090806', '安平'),
(447, '101090807', '故城'),
(448, '101090808', '景县'),
(449, '101090809', '阜城'),
(450, '101090810', '冀州'),
(451, '101090811', '深州'),
(452, '101090901', '邢台'),
(453, '101090902', '临城'),
(454, '101090905', '柏乡'),
(455, '101090906', '隆尧'),
(456, '101090907', '南和'),
(457, '101090908', '宁晋'),
(458, '101090909', '巨鹿'),
(459, '101090910', '新河'),
(460, '101090911', '广宗'),
(461, '101090912', '平乡'),
(462, '101090913', '威县'),
(463, '101090914', '清河'),
(464, '101090915', '临西'),
(465, '101090916', '南宫'),
(466, '101090917', '沙河'),
(467, '101090918', '任县'),
(468, '101090919', '内丘'),
(469, '101091001', '邯郸'),
(470, '101091002', '峰峰矿'),
(471, '101091003', '临漳'),
(472, '101091004', '成安'),
(473, '101091005', '大名'),
(474, '101091006', '涉县'),
(475, '101091007', '磁县'),
(476, '101091008', '肥乡'),
(477, '101091009', '永年'),
(478, '101091010', '邱县'),
(479, '101091011', '鸡泽'),
(480, '101091012', '广平'),
(481, '101091013', '馆陶'),
(482, '101091014', '魏县'),
(483, '101091015', '曲周'),
(484, '101091016', '武安'),
(485, '101091101', '秦皇岛'),
(486, '101091102', '青龙'),
(487, '101091103', '昌黎'),
(488, '101091104', '抚宁'),
(489, '101091105', '卢龙'),
(490, '101100101', '太原'),
(491, '101100102', '清徐'),
(492, '101100103', '阳曲'),
(493, '101100104', '娄烦'),
(494, '101100105', '古交'),
(495, '101100201', '大同'),
(496, '101100202', '阳高'),
(497, '101100204', '天镇'),
(498, '101100205', '广灵'),
(499, '101100206', '灵丘'),
(500, '101100207', '浑源'),
(501, '101100208', '左云'),
(502, '101100301', '阳泉'),
(503, '101100302', '盂县'),
(504, '101100303', '平定'),
(505, '101100401', '晋中'),
(506, '101100403', '榆社'),
(507, '101100404', '左权'),
(508, '101100405', '和顺'),
(509, '101100406', '昔阳'),
(510, '101100407', '寿阳'),
(511, '101100408', '太谷'),
(512, '101100409', '祁县'),
(513, '101100410', '平遥'),
(514, '101100411', '灵石'),
(515, '101100412', '介休'),
(516, '101100501', '长治'),
(517, '101100502', '黎城'),
(518, '101100503', '屯留'),
(519, '101100504', '潞城'),
(520, '101100505', '襄垣'),
(521, '101100506', '平顺'),
(522, '101100507', '武乡'),
(523, '101100508', '沁县'),
(524, '101100509', '长子'),
(525, '101100510', '沁源'),
(526, '101100511', '壶关'),
(527, '101100601', '晋城'),
(528, '101100602', '沁水'),
(529, '101100603', '阳城'),
(530, '101100604', '陵川'),
(531, '101100605', '高平'),
(532, '101100606', '泽州'),
(533, '101100701', '临汾'),
(534, '101100702', '曲沃'),
(535, '101100703', '永和'),
(536, '101100704', '隰县'),
(537, '101100705', '大宁'),
(538, '101100706', '吉县'),
(539, '101100707', '襄汾'),
(540, '101100708', '蒲县'),
(541, '101100709', '汾西'),
(542, '101100710', '洪洞'),
(543, '101100711', '霍州'),
(544, '101100712', '乡宁'),
(545, '101100713', '翼城'),
(546, '101100714', '侯马'),
(547, '101100715', '浮山'),
(548, '101100716', '安泽'),
(549, '101100717', '古县'),
(550, '101100801', '运城'),
(551, '101100802', '临猗'),
(552, '101100803', '稷山'),
(553, '101100804', '万荣'),
(554, '101100805', '河津'),
(555, '101100806', '新绛'),
(556, '101100807', '绛县'),
(557, '101100808', '闻喜'),
(558, '101100809', '垣曲'),
(559, '101100810', '永济'),
(560, '101100811', '芮城'),
(561, '101100812', '夏县'),
(562, '101100813', '平陆'),
(563, '101100901', '朔州'),
(564, '101100903', '山阴'),
(565, '101100904', '右玉'),
(566, '101100905', '应县'),
(567, '101100906', '怀仁'),
(568, '101101001', '忻州'),
(569, '101101002', '定襄'),
(570, '101101003', '五台'),
(571, '101101004', '河曲'),
(572, '101101005', '偏关'),
(573, '101101006', '神池'),
(574, '101101007', '宁武'),
(575, '101101008', '代县'),
(576, '101101009', '繁峙'),
(577, '101101011', '保德'),
(578, '101101012', '静乐'),
(579, '101101013', '岢岚'),
(580, '101101014', '五寨'),
(581, '101101015', '原平'),
(582, '101101100', '吕梁'),
(583, '101101101', '离石'),
(584, '101101102', '临县'),
(585, '101101103', '兴县'),
(586, '101101104', '岚县'),
(587, '101101105', '柳林'),
(588, '101101106', '石楼'),
(589, '101101107', '方山'),
(590, '101101108', '交口'),
(591, '101101109', '中阳'),
(592, '101101110', '孝义'),
(593, '101101111', '汾阳'),
(594, '101101112', '文水'),
(595, '101101113', '交城'),
(596, '101110101', '西安'),
(597, '101110102', '长安'),
(598, '101110104', '蓝田'),
(599, '101110105', '周至'),
(600, '101110106', '户县'),
(601, '101110107', '高陵'),
(602, '101110200', '咸阳'),
(603, '101110201', '三原'),
(604, '101110202', '礼泉'),
(605, '101110203', '永寿'),
(606, '101110204', '淳化'),
(607, '101110205', '泾阳'),
(608, '101110206', '武功'),
(609, '101110207', '乾县'),
(610, '101110208', '彬县'),
(611, '101110209', '长武'),
(612, '101110210', '旬邑'),
(613, '101110211', '兴平'),
(614, '101110300', '延安'),
(615, '101110401', '榆林'),
(616, '101110402', '府谷'),
(617, '101110403', '神木'),
(618, '101110404', '佳县'),
(619, '101110405', '定边'),
(620, '101110406', '靖边'),
(621, '101110407', '横山'),
(622, '101110408', '米脂'),
(623, '101110409', '子洲'),
(624, '101110410', '绥德'),
(625, '101110411', '吴堡'),
(626, '101110412', '清涧'),
(627, '101110501', '渭南'),
(628, '101110502', '华县'),
(629, '101110503', '潼关'),
(630, '101110504', '大荔'),
(631, '101110505', '白水'),
(632, '101110506', '富平'),
(633, '101110507', '蒲城'),
(634, '101110508', '澄城'),
(635, '101110509', '合阳'),
(636, '101110510', '韩城'),
(637, '101110511', '华阴'),
(638, '101110601', '商洛'),
(639, '101110602', '洛南'),
(640, '101110603', '柞水'),
(641, '101110604', '商州'),
(642, '101110605', '镇安'),
(643, '101110606', '丹凤'),
(644, '101110607', '商南'),
(645, '101110608', '山阳'),
(646, '101110701', '安康'),
(647, '101110702', '紫阳'),
(648, '101110703', '石泉'),
(649, '101110704', '汉阴'),
(650, '101110705', '旬阳'),
(651, '101110706', '岚皋'),
(652, '101110707', '平利'),
(653, '101110708', '白河'),
(654, '101110709', '镇坪'),
(655, '101110710', '宁陕'),
(656, '101110801', '汉中'),
(657, '101110802', '略阳'),
(658, '101110803', '勉县'),
(659, '101110804', '留坝'),
(660, '101110805', '洋县'),
(661, '101110806', '城固'),
(662, '101110807', '西乡'),
(663, '101110808', '佛坪'),
(664, '101110809', '宁强'),
(665, '101110810', '南郑'),
(666, '101110811', '镇巴'),
(667, '101110901', '宝鸡'),
(668, '101110903', '千阳'),
(669, '101110904', '麟游'),
(670, '101110905', '岐山'),
(671, '101110906', '凤翔'),
(672, '101110907', '扶风'),
(673, '101110908', '眉县'),
(674, '101110909', '太白'),
(675, '101110910', '凤县'),
(676, '101110911', '陇县'),
(677, '101111001', '铜川'),
(678, '101111003', '宜君'),
(679, '101111101', '杨凌'),
(680, '101120101', '济南'),
(681, '101120103', '商河'),
(682, '101120104', '章丘'),
(683, '101120105', '平阴'),
(684, '101120106', '济阳'),
(685, '101120201', '青岛'),
(686, '101120204', '即墨'),
(687, '101120205', '胶州'),
(688, '101120206', '胶南'),
(689, '101120207', '莱西'),
(690, '101120208', '平度'),
(691, '101120301', '淄博'),
(692, '101120304', '高青'),
(693, '101120306', '沂源'),
(694, '101120307', '桓台'),
(695, '101120401', '德州'),
(696, '101120402', '武城'),
(697, '101120403', '临邑'),
(698, '101120404', '陵县'),
(699, '101120405', '齐河'),
(700, '101120406', '乐陵'),
(701, '101120407', '庆云'),
(702, '101120408', '平原'),
(703, '101120409', '宁津'),
(704, '101120410', '夏津'),
(705, '101120411', '禹城'),
(706, '101120501', '烟台'),
(707, '101120502', '莱州'),
(708, '101120503', '长岛'),
(709, '101120504', '蓬莱'),
(710, '101120505', '龙口'),
(711, '101120506', '招远'),
(712, '101120507', '栖霞'),
(713, '101120510', '莱阳'),
(714, '101120511', '海阳'),
(715, '101120601', '潍坊'),
(716, '101120602', '青州'),
(717, '101120603', '寿光'),
(718, '101120604', '临朐'),
(719, '101120605', '昌乐'),
(720, '101120606', '昌邑'),
(721, '101120607', '安丘'),
(722, '101120608', '高密'),
(723, '101120609', '诸城'),
(724, '101120701', '济宁'),
(725, '101120702', '嘉祥'),
(726, '101120703', '微山'),
(727, '101120704', '鱼台'),
(728, '101120705', '兖州'),
(729, '101120706', '金乡'),
(730, '101120707', '汶上'),
(731, '101120708', '泗水'),
(732, '101120709', '梁山'),
(733, '101120710', '曲阜'),
(734, '101120711', '邹城'),
(735, '101120801', '泰安'),
(736, '101120802', '新泰'),
(737, '101120804', '肥城'),
(738, '101120805', '东平'),
(739, '101120806', '宁阳'),
(740, '101120901', '临沂'),
(741, '101120902', '莒南'),
(742, '101120903', '沂南'),
(743, '101120904', '苍山'),
(744, '101120905', '临沭'),
(745, '101120906', '郯城'),
(746, '101120907', '蒙阴'),
(747, '101120908', '平邑'),
(748, '101120909', '费县'),
(749, '101120910', '沂水'),
(750, '101121001', '菏泽'),
(751, '101121002', '鄄城'),
(752, '101121003', '郓城'),
(753, '101121004', '东明'),
(754, '101121005', '定陶'),
(755, '101121006', '巨野'),
(756, '101121007', '曹县'),
(757, '101121008', '成武'),
(758, '101121009', '单县'),
(759, '101121101', '滨州'),
(760, '101121102', '博兴'),
(761, '101121103', '无棣'),
(762, '101121104', '阳信'),
(763, '101121105', '惠民'),
(764, '101121106', '沾化'),
(765, '101121107', '邹平'),
(766, '101121201', '东营'),
(767, '101121203', '垦利'),
(768, '101121204', '利津'),
(769, '101121205', '广饶'),
(770, '101121301', '威海'),
(771, '101121302', '文登'),
(772, '101121303', '荣成'),
(773, '101121304', '乳山'),
(774, '101121401', '枣庄'),
(775, '101121405', '滕州'),
(776, '101121501', '日照'),
(777, '101121502', '五莲'),
(778, '101121503', '莒县'),
(779, '101121601', '莱芜'),
(780, '101121701', '聊城'),
(781, '101121702', '冠县'),
(782, '101121703', '阳谷'),
(783, '101121704', '高唐'),
(784, '101121705', '茌平'),
(785, '101121706', '东阿'),
(786, '101121707', '临清'),
(787, '101121709', '莘县'),
(788, '101130101', '乌鲁木齐'),
(789, '101130105', '达坂城'),
(790, '101130201', '克拉玛依'),
(791, '101130202', '乌尔禾'),
(792, '101130203', '白碱滩'),
(793, '101130301', '石河子'),
(794, '101130401', '昌吉'),
(795, '101130402', '呼图壁'),
(796, '101130403', '米泉'),
(797, '101130404', '阜康'),
(798, '101130405', '吉木萨尔'),
(799, '101130406', '奇台'),
(800, '101130407', '玛纳斯'),
(801, '101130408', '木垒'),
(802, '101130501', '吐鲁番'),
(803, '101130503', '克州'),
(804, '101130504', '鄯善'),
(805, '101130601', '库尔勒'),
(806, '101130602', '轮台'),
(807, '101130603', '尉犁'),
(808, '101130604', '若羌'),
(809, '101130605', '且末'),
(810, '101130606', '和静'),
(811, '101130607', '焉耆'),
(812, '101130608', '和硕'),
(813, '101130612', '博湖'),
(814, '101130701', '阿拉尔'),
(815, '101130801', '阿克苏'),
(816, '101130802', '乌什'),
(817, '101130803', '温宿'),
(818, '101130804', '拜城'),
(819, '101130805', '新和'),
(820, '101130806', '沙雅'),
(821, '101130807', '库车'),
(822, '101130808', '柯坪'),
(823, '101130809', '阿瓦提'),
(824, '101130901', '喀什'),
(825, '101130902', '英吉沙'),
(826, '101130903', '塔什库尔干'),
(827, '101130904', '麦盖提'),
(828, '101130905', '莎车'),
(829, '101130906', '叶城'),
(830, '101130907', '泽普'),
(831, '101130908', '巴楚'),
(832, '101130909', '岳普湖'),
(833, '101130910', '伽师'),
(834, '101130911', '疏附'),
(835, '101130912', '疏勒'),
(836, '101131001', '伊宁'),
(837, '101131002', '察布查尔'),
(838, '101131003', '尼勒克'),
(839, '101131005', '巩留'),
(840, '101131006', '新源'),
(841, '101131007', '昭苏'),
(842, '101131008', '特克斯'),
(843, '101131009', '霍城'),
(844, '101131011', '奎屯'),
(845, '101131101', '塔城'),
(846, '101131102', '裕民'),
(847, '101131103', '额敏'),
(848, '101131104', '和布克赛尔'),
(849, '101131105', '托里'),
(850, '101131106', '乌苏'),
(851, '101131107', '沙湾'),
(852, '101131201', '哈密'),
(853, '101131203', '巴里坤'),
(854, '101131204', '伊吾'),
(855, '101131301', '和田'),
(856, '101131302', '皮山'),
(857, '101131303', '策勒'),
(858, '101131304', '墨玉'),
(859, '101131305', '洛浦'),
(860, '101131306', '民丰'),
(861, '101131307', '于田'),
(862, '101131401', '阿勒泰'),
(863, '101131402', '哈巴河'),
(864, '101131405', '吉木乃'),
(865, '101131406', '布尔津'),
(866, '101131407', '福海'),
(867, '101131408', '富蕴'),
(868, '101131409', '青河'),
(869, '101131501', '阿图什'),
(870, '101131502', '乌恰'),
(871, '101131503', '阿克陶'),
(872, '101131504', '阿合奇'),
(873, '101131601', '博乐'),
(874, '101131602', '温泉'),
(875, '101131603', '精河'),
(876, '101140101', '拉萨'),
(877, '101140102', '当雄'),
(878, '101140103', '尼木'),
(879, '101140104', '林周'),
(880, '101140105', '堆龙德庆'),
(881, '101140106', '曲水'),
(882, '101140107', '达孜'),
(883, '101140108', '墨竹工卡'),
(884, '101140201', '日喀则'),
(885, '101140202', '拉孜'),
(886, '101140204', '聂拉木'),
(887, '101140205', '定日'),
(888, '101140206', '江孜'),
(889, '101140208', '仲巴'),
(890, '101140209', '萨嘎'),
(891, '101140210', '吉隆'),
(892, '101140211', '昂仁'),
(893, '101140212', '定结'),
(894, '101140213', '萨迦'),
(895, '101140214', '谢通门'),
(896, '101140215', '楠木林'),
(897, '101140216', '岗巴'),
(898, '101140217', '白朗'),
(899, '101140218', '亚东'),
(900, '101140219', '康马'),
(901, '101140220', '仁布'),
(902, '101140301', '山南'),
(903, '101140302', '贡嘎'),
(904, '101140303', '札囊'),
(905, '101140304', '加查'),
(906, '101140305', '浪卡子'),
(907, '101140306', '错那'),
(908, '101140307', '隆子'),
(909, '101140309', '乃东'),
(910, '101140310', '桑日'),
(911, '101140311', '洛扎'),
(912, '101140312', '措美'),
(913, '101140313', '琼结'),
(914, '101140314', '曲松'),
(915, '101140401', '林芝'),
(916, '101140402', '波密'),
(917, '101140403', '米林'),
(918, '101140404', '察隅'),
(919, '101140405', '工布江达'),
(920, '101140406', '朗县'),
(921, '101140407', '墨脱'),
(922, '101140501', '昌都'),
(923, '101140502', '丁青'),
(924, '101140503', '边坝'),
(925, '101140504', '洛隆'),
(926, '101140505', '左贡'),
(927, '101140506', '芒康'),
(928, '101140507', '类乌齐'),
(929, '101140508', '八宿'),
(930, '101140509', '江达'),
(931, '101140510', '察雅'),
(932, '101140511', '贡觉'),
(933, '101140601', '那曲'),
(934, '101140602', '尼玛'),
(935, '101140603', '嘉黎'),
(936, '101140604', '班戈'),
(937, '101140605', '安多'),
(938, '101140606', '索县'),
(939, '101140607', '聂荣'),
(940, '101140608', '巴青'),
(941, '101140609', '比如'),
(942, '101140610', '双湖'),
(943, '101140701', '阿里'),
(944, '101140702', '改则'),
(945, '101140703', '申扎'),
(946, '101140705', '普兰'),
(947, '101140706', '札达'),
(948, '101140707', '噶尔'),
(949, '101140708', '日土'),
(950, '101140709', '革吉'),
(951, '101140710', '措勤'),
(952, '101150101', '西宁'),
(953, '101150102', '大通'),
(954, '101150103', '湟源'),
(955, '101150104', '湟中'),
(956, '101150201', '海东'),
(957, '101150202', '乐都'),
(958, '101150203', '民和'),
(959, '101150204', '互助'),
(960, '101150205', '化隆'),
(961, '101150206', '循化'),
(962, '101150208', '平安'),
(963, '101150301', '黄南'),
(964, '101150302', '尖扎'),
(965, '101150303', '泽库'),
(966, '101150305', '同仁'),
(967, '101150401', '海南'),
(968, '101150404', '贵德'),
(969, '101150406', '兴海'),
(970, '101150407', '贵南'),
(971, '101150408', '同德'),
(972, '101150409', '共和'),
(973, '101150501', '果洛'),
(974, '101150502', '班玛'),
(975, '101150503', '甘德'),
(976, '101150504', '达日'),
(977, '101150505', '久治'),
(978, '101150506', '玛多'),
(979, '101150508', '玛沁'),
(980, '101150601', '玉树'),
(981, '101150602', '称多'),
(982, '101150603', '治多'),
(983, '101150604', '杂多'),
(984, '101150605', '囊谦'),
(985, '101150606', '曲麻莱'),
(986, '101150701', '海西'),
(987, '101150708', '天峻'),
(988, '101150709', '乌兰'),
(989, '101150716', '德令哈'),
(990, '101150801', '海北'),
(991, '101150802', '门源'),
(992, '101150803', '祁连'),
(993, '101150804', '海晏'),
(994, '101150806', '刚察'),
(995, '101150901', '格尔木'),
(996, '101150902', '都兰'),
(997, '101160101', '兰州'),
(998, '101160102', '皋兰'),
(999, '101160103', '永登'),
(1000, '101160104', '榆中'),
(1001, '101160201', '定西'),
(1002, '101160202', '通渭'),
(1003, '101160203', '陇西'),
(1004, '101160204', '渭源'),
(1005, '101160205', '临洮'),
(1006, '101160206', '漳县'),
(1007, '101160207', '岷县'),
(1008, '101160301', '平凉'),
(1009, '101160302', '泾川'),
(1010, '101160303', '灵台'),
(1011, '101160304', '崇信'),
(1012, '101160305', '华亭'),
(1013, '101160306', '庄浪'),
(1014, '101160307', '静宁'),
(1015, '101160401', '庆阳'),
(1016, '101160402', '西峰'),
(1017, '101160403', '环县'),
(1018, '101160404', '华池'),
(1019, '101160405', '合水'),
(1020, '101160406', '正宁'),
(1021, '101160407', '宁县'),
(1022, '101160408', '镇原'),
(1023, '101160409', '庆城'),
(1024, '101160501', '武威'),
(1025, '101160502', '民勤'),
(1026, '101160503', '古浪'),
(1027, '101160505', '天祝'),
(1028, '101160601', '金昌'),
(1029, '101160602', '永昌'),
(1030, '101160701', '张掖'),
(1031, '101160702', '肃南'),
(1032, '101160703', '民乐'),
(1033, '101160704', '临泽'),
(1034, '101160705', '高台'),
(1035, '101160706', '山丹'),
(1036, '101160801', '酒泉'),
(1037, '101160803', '金塔'),
(1038, '101160804', '阿克塞'),
(1039, '101160805', '瓜州'),
(1040, '101160806', '肃北'),
(1041, '101160807', '玉门'),
(1042, '101160808', '敦煌'),
(1043, '101160901', '天水'),
(1044, '101160903', '清水'),
(1045, '101160904', '秦安'),
(1046, '101160905', '甘谷'),
(1047, '101160906', '武山'),
(1048, '101160907', '张家川'),
(1049, '101161001', '陇南'),
(1050, '101161002', '成县'),
(1051, '101161003', '文县'),
(1052, '101161004', '宕昌'),
(1053, '101161005', '康县'),
(1054, '101161006', '西和'),
(1055, '101161007', '礼县'),
(1056, '101161008', '徽县'),
(1057, '101161009', '两当'),
(1058, '101161101', '临夏'),
(1059, '101161102', '康乐'),
(1060, '101161103', '永靖'),
(1061, '101161104', '广河'),
(1062, '101161105', '和政'),
(1063, '101161107', '积石山'),
(1064, '101161201', '合作'),
(1065, '101161202', '临潭'),
(1066, '101161203', '卓尼'),
(1067, '101161204', '舟曲'),
(1068, '101161205', '迭部'),
(1069, '101161206', '玛曲'),
(1070, '101161207', '碌曲'),
(1071, '101161208', '夏河'),
(1072, '101161301', '白银'),
(1073, '101161302', '靖远'),
(1074, '101161303', '会宁'),
(1075, '101161304', '平川'),
(1076, '101161305', '景泰'),
(1077, '101161401', '嘉峪关'),
(1078, '101170101', '银川'),
(1079, '101170102', '永宁'),
(1080, '101170103', '灵武'),
(1081, '101170104', '贺兰'),
(1082, '101170201', '石嘴山'),
(1083, '101170203', '平罗'),
(1084, '101170301', '吴忠'),
(1085, '101170302', '同心'),
(1086, '101170303', '盐池'),
(1087, '101170306', '青铜峡'),
(1088, '101170401', '固原'),
(1089, '101170402', '西吉'),
(1090, '101170403', '隆德'),
(1091, '101170404', '泾源'),
(1092, '101170406', '彭阳'),
(1093, '101170501', '中卫'),
(1094, '101170502', '中宁'),
(1095, '101170504', '海原'),
(1096, '101180101', '郑州'),
(1097, '101180102', '巩义'),
(1098, '101180103', '荥阳'),
(1099, '101180104', '登封'),
(1100, '101180105', '新密'),
(1101, '101180106', '新郑'),
(1102, '101180107', '中牟'),
(1103, '101180108', '上街'),
(1104, '101180201', '安阳'),
(1105, '101180202', '汤阴'),
(1106, '101180203', '滑县'),
(1107, '101180204', '内黄'),
(1108, '101180205', '林州'),
(1109, '101180301', '新乡'),
(1110, '101180302', '获嘉'),
(1111, '101180303', '原阳'),
(1112, '101180304', '辉县'),
(1113, '101180305', '卫辉'),
(1114, '101180306', '延津'),
(1115, '101180307', '封丘'),
(1116, '101180308', '长垣'),
(1117, '101180401', '许昌'),
(1118, '101180402', '鄢陵'),
(1119, '101180403', '襄城'),
(1120, '101180404', '长葛'),
(1121, '101180405', '禹州'),
(1122, '101180501', '平顶山'),
(1123, '101180502', '郏县'),
(1124, '101180503', '宝丰'),
(1125, '101180504', '汝州'),
(1126, '101180505', '叶县'),
(1127, '101180506', '舞钢'),
(1128, '101180507', '鲁山'),
(1129, '101180508', '石龙'),
(1130, '101180601', '信阳'),
(1131, '101180602', '息县'),
(1132, '101180603', '罗山'),
(1133, '101180604', '光山'),
(1134, '101180605', '新县'),
(1135, '101180606', '淮滨'),
(1136, '101180607', '潢川'),
(1137, '101180608', '固始'),
(1138, '101180609', '商城'),
(1139, '101180701', '南阳'),
(1140, '101180702', '南召'),
(1141, '101180703', '方城'),
(1142, '101180704', '社旗'),
(1143, '101180705', '西峡'),
(1144, '101180706', '内乡'),
(1145, '101180707', '镇平'),
(1146, '101180708', '淅川'),
(1147, '101180709', '新野'),
(1148, '101180710', '唐河'),
(1149, '101180711', '邓州'),
(1150, '101180712', '桐柏'),
(1151, '101180801', '开封'),
(1152, '101180802', '杞县'),
(1153, '101180803', '尉氏'),
(1154, '101180804', '通许'),
(1155, '101180805', '兰考'),
(1156, '101180901', '洛阳'),
(1157, '101180902', '新安'),
(1158, '101180903', '孟津'),
(1159, '101180904', '宜阳'),
(1160, '101180905', '洛宁'),
(1161, '101180906', '伊川'),
(1162, '101180907', '嵩县'),
(1163, '101180908', '偃师'),
(1164, '101180909', '栾川'),
(1165, '101180910', '汝阳'),
(1166, '101180911', '吉利'),
(1167, '101181001', '商丘'),
(1168, '101181003', '睢县'),
(1169, '101181004', '民权'),
(1170, '101181005', '虞城'),
(1171, '101181006', '柘城'),
(1172, '101181007', '宁陵'),
(1173, '101181008', '夏邑'),
(1174, '101181009', '永城'),
(1175, '101181101', '焦作'),
(1176, '101181102', '修武'),
(1177, '101181103', '武陟'),
(1178, '101181104', '沁阳'),
(1179, '101181106', '博爱'),
(1180, '101181107', '温县'),
(1181, '101181108', '孟州'),
(1182, '101181201', '鹤壁'),
(1183, '101181202', '浚县'),
(1184, '101181203', '淇县'),
(1185, '101181301', '濮阳'),
(1186, '101181302', '台前'),
(1187, '101181303', '南乐'),
(1188, '101181304', '清丰'),
(1189, '101181305', '范县'),
(1190, '101181401', '周口'),
(1191, '101181402', '扶沟'),
(1192, '101181403', '太康'),
(1193, '101181404', '淮阳'),
(1194, '101181405', '西华'),
(1195, '101181406', '商水'),
(1196, '101181407', '项城'),
(1197, '101181408', '郸城'),
(1198, '101181409', '鹿邑'),
(1199, '101181410', '沈丘'),
(1200, '101181501', '漯河'),
(1201, '101181502', '临颍'),
(1202, '101181503', '舞阳'),
(1203, '101181504', '临颖'),
(1204, '101181601', '驻马店'),
(1205, '101181602', '西平'),
(1206, '101181603', '遂平'),
(1207, '101181604', '上蔡'),
(1208, '101181605', '汝南'),
(1209, '101181606', '泌阳'),
(1210, '101181607', '平舆'),
(1211, '101181608', '新蔡'),
(1212, '101181609', '确山'),
(1213, '101181610', '正阳'),
(1214, '101181701', '三门峡'),
(1215, '101181702', '灵宝'),
(1216, '101181703', '渑池'),
(1217, '101181704', '卢氏'),
(1218, '101181705', '义马'),
(1219, '101181706', '陕县'),
(1220, '101181801', '济源'),
(1221, '101190101', '南京'),
(1222, '101190102', '溧水'),
(1223, '101190103', '高淳'),
(1224, '101190104', '江宁'),
(1225, '101190105', '六合'),
(1226, '101190107', '浦口'),
(1227, '101190201', '无锡'),
(1228, '101190202', '江阴'),
(1229, '101190203', '宜兴'),
(1230, '101190204', '锡山'),
(1231, '101190301', '镇江'),
(1232, '101190302', '丹阳'),
(1233, '101190303', '扬中'),
(1234, '101190304', '句容'),
(1235, '101190305', '丹徒'),
(1236, '101190401', '苏州'),
(1237, '101190402', '常熟'),
(1238, '101190403', '张家港'),
(1239, '101190404', '昆山'),
(1240, '101190405', '吴中'),
(1241, '101190407', '吴江'),
(1242, '101190408', '太仓'),
(1243, '101190501', '南通'),
(1244, '101190502', '海安'),
(1245, '101190503', '如皋'),
(1246, '101190504', '如东'),
(1247, '101190507', '启东'),
(1248, '101190508', '海门'),
(1249, '101190601', '扬州'),
(1250, '101190602', '宝应'),
(1251, '101190603', '仪征'),
(1252, '101190604', '高邮'),
(1253, '101190605', '江都'),
(1254, '101190606', '邗江'),
(1255, '101190701', '盐城'),
(1256, '101190702', '响水'),
(1257, '101190703', '滨海'),
(1258, '101190704', '阜宁'),
(1259, '101190705', '射阳'),
(1260, '101190706', '建湖'),
(1261, '101190707', '东台'),
(1262, '101190708', '大丰'),
(1263, '101190709', '盐都'),
(1264, '101190801', '徐州'),
(1265, '101190802', '铜山'),
(1266, '101190803', '丰县'),
(1267, '101190804', '沛县'),
(1268, '101190805', '邳州'),
(1269, '101190806', '睢宁'),
(1270, '101190807', '新沂'),
(1271, '101190901', '淮安'),
(1272, '101190902', '金湖'),
(1273, '101190903', '盱眙'),
(1274, '101190904', '洪泽'),
(1275, '101190905', '涟水'),
(1276, '101191001', '连云港'),
(1277, '101191002', '东海'),
(1278, '101191003', '赣榆'),
(1279, '101191004', '灌云'),
(1280, '101191005', '灌南'),
(1281, '101191101', '常州'),
(1282, '101191102', '溧阳'),
(1283, '101191103', '金坛'),
(1284, '101191104', '武进'),
(1285, '101191201', '泰州'),
(1286, '101191202', '兴化'),
(1287, '101191203', '泰兴'),
(1288, '101191204', '姜堰'),
(1289, '101191205', '靖江'),
(1290, '101191301', '宿迁'),
(1291, '101191302', '沭阳'),
(1292, '101191303', '泗阳'),
(1293, '101191304', '泗洪'),
(1294, '101191305', '宿豫'),
(1295, '101200101', '武汉'),
(1296, '101200102', '蔡甸'),
(1297, '101200103', '黄陂'),
(1298, '101200104', '新洲'),
(1299, '101200105', '江夏'),
(1300, '101200106', '东西湖'),
(1301, '101200201', '襄阳'),
(1302, '101200202', '襄州'),
(1303, '101200203', '保康'),
(1304, '101200204', '南漳'),
(1305, '101200205', '宜城'),
(1306, '101200206', '老河口'),
(1307, '101200207', '谷城'),
(1308, '101200208', '枣阳'),
(1309, '101200301', '鄂州'),
(1310, '101200302', '梁子湖'),
(1311, '101200401', '孝感'),
(1312, '101200402', '安陆'),
(1313, '101200403', '云梦'),
(1314, '101200404', '大悟'),
(1315, '101200405', '应城'),
(1316, '101200406', '汉川'),
(1317, '101200407', '孝昌'),
(1318, '101200501', '黄冈'),
(1319, '101200502', '红安'),
(1320, '101200503', '麻城'),
(1321, '101200504', '罗田'),
(1322, '101200505', '英山'),
(1323, '101200506', '浠水'),
(1324, '101200507', '蕲春'),
(1325, '101200508', '黄梅'),
(1326, '101200509', '武穴'),
(1327, '101200510', '团风'),
(1328, '101200601', '黄石'),
(1329, '101200602', '大冶'),
(1330, '101200603', '阳新'),
(1331, '101200604', '铁山'),
(1332, '101200605', '下陆'),
(1333, '101200606', '西塞山'),
(1334, '101200701', '咸宁'),
(1335, '101200702', '赤壁'),
(1336, '101200703', '嘉鱼'),
(1337, '101200704', '崇阳'),
(1338, '101200705', '通城'),
(1339, '101200706', '通山'),
(1340, '101200801', '荆州'),
(1341, '101200802', '江陵'),
(1342, '101200803', '公安'),
(1343, '101200804', '石首'),
(1344, '101200805', '监利'),
(1345, '101200806', '洪湖'),
(1346, '101200807', '松滋'),
(1347, '101200901', '宜昌'),
(1348, '101200902', '远安'),
(1349, '101200903', '秭归'),
(1350, '101200904', '兴山'),
(1351, '101200906', '五峰'),
(1352, '101200907', '当阳'),
(1353, '101200908', '长阳'),
(1354, '101200909', '宜都'),
(1355, '101200910', '枝江'),
(1356, '101201001', '恩施'),
(1357, '101201002', '利川'),
(1358, '101201003', '建始'),
(1359, '101201004', '咸丰'),
(1360, '101201005', '宣恩'),
(1361, '101201006', '鹤峰'),
(1362, '101201007', '来凤'),
(1363, '101201008', '巴东'),
(1364, '101201101', '十堰'),
(1365, '101201102', '竹溪'),
(1366, '101201103', '郧西'),
(1367, '101201104', '郧县'),
(1368, '101201105', '竹山'),
(1369, '101201106', '房县'),
(1370, '101201107', '丹江口'),
(1371, '101201108', '茅箭'),
(1372, '101201109', '张湾'),
(1373, '101201201', '神农架'),
(1374, '101201301', '随州'),
(1375, '101201302', '广水'),
(1376, '101201401', '荆门'),
(1377, '101201402', '钟祥'),
(1378, '101201403', '京山'),
(1379, '101201404', '掇刀'),
(1380, '101201405', '沙洋'),
(1381, '101201406', '沙市'),
(1382, '101201501', '天门'),
(1383, '101201601', '仙桃'),
(1384, '101201701', '潜江'),
(1385, '101210101', '杭州'),
(1386, '101210102', '萧山'),
(1387, '101210103', '桐庐'),
(1388, '101210104', '淳安'),
(1389, '101210105', '建德'),
(1390, '101210106', '余杭'),
(1391, '101210107', '临安'),
(1392, '101210108', '富阳'),
(1393, '101210201', '湖州'),
(1394, '101210202', '长兴'),
(1395, '101210203', '安吉'),
(1396, '101210204', '德清'),
(1397, '101210301', '嘉兴'),
(1398, '101210302', '嘉善'),
(1399, '101210303', '海宁'),
(1400, '101210304', '桐乡'),
(1401, '101210305', '平湖'),
(1402, '101210306', '海盐'),
(1403, '101210401', '宁波'),
(1404, '101210403', '慈溪'),
(1405, '101210404', '余姚'),
(1406, '101210405', '奉化'),
(1407, '101210406', '象山'),
(1408, '101210408', '宁海'),
(1409, '101210410', '北仑'),
(1410, '101210411', '鄞州'),
(1411, '101210501', '绍兴'),
(1412, '101210502', '诸暨'),
(1413, '101210503', '上虞'),
(1414, '101210504', '新昌'),
(1415, '101210505', '嵊州'),
(1416, '101210601', '台州'),
(1417, '101210603', '玉环'),
(1418, '101210604', '三门'),
(1419, '101210605', '天台'),
(1420, '101210606', '仙居'),
(1421, '101210607', '温岭'),
(1422, '101210610', '临海'),
(1423, '101210701', '温州'),
(1424, '101210702', '泰顺'),
(1425, '101210703', '文成'),
(1426, '101210704', '平阳'),
(1427, '101210705', '瑞安'),
(1428, '101210706', '洞头'),
(1429, '101210707', '乐清'),
(1430, '101210708', '永嘉'),
(1431, '101210709', '苍南'),
(1432, '101210801', '丽水'),
(1433, '101210802', '遂昌'),
(1434, '101210803', '龙泉'),
(1435, '101210804', '缙云'),
(1436, '101210805', '青田'),
(1437, '101210806', '云和'),
(1438, '101210807', '庆元'),
(1439, '101210808', '松阳'),
(1440, '101210809', '景宁'),
(1441, '101210901', '金华'),
(1442, '101210902', '浦江'),
(1443, '101210903', '兰溪'),
(1444, '101210904', '义乌'),
(1445, '101210905', '东阳'),
(1446, '101210906', '武义'),
(1447, '101210907', '永康'),
(1448, '101210908', '磐安'),
(1449, '101211001', '衢州'),
(1450, '101211002', '常山'),
(1451, '101211003', '开化'),
(1452, '101211004', '龙游'),
(1453, '101211005', '江山'),
(1454, '101211101', '舟山'),
(1455, '101211102', '嵊泗'),
(1456, '101211104', '岱山'),
(1457, '101220101', '合肥'),
(1458, '101220102', '长丰'),
(1459, '101220103', '肥东'),
(1460, '101220104', '肥西'),
(1461, '101220201', '蚌埠'),
(1462, '101220202', '怀远'),
(1463, '101220203', '固镇'),
(1464, '101220204', '五河'),
(1465, '101220301', '芜湖'),
(1466, '101220302', '繁昌'),
(1467, '101220304', '南陵'),
(1468, '101220401', '淮南'),
(1469, '101220402', '凤台'),
(1470, '101220403', '潘集'),
(1471, '101220501', '马鞍山'),
(1472, '101220502', '当涂'),
(1473, '101220601', '安庆'),
(1474, '101220602', '枞阳'),
(1475, '101220603', '太湖'),
(1476, '101220604', '潜山'),
(1477, '101220605', '怀宁'),
(1478, '101220606', '宿松'),
(1479, '101220607', '望江'),
(1480, '101220608', '岳西'),
(1481, '101220609', '桐城'),
(1482, '101220701', '宿州'),
(1483, '101220702', '砀山'),
(1484, '101220703', '灵璧'),
(1485, '101220704', '泗县'),
(1486, '101220705', '萧县'),
(1487, '101220801', '阜阳'),
(1488, '101220802', '阜南'),
(1489, '101220803', '颍上'),
(1490, '101220804', '临泉'),
(1491, '101220805', '界首'),
(1492, '101220806', '太和'),
(1493, '101220901', '亳州'),
(1494, '101220902', '涡阳'),
(1495, '101220903', '利辛'),
(1496, '101220904', '蒙城'),
(1497, '101221001', '黄山'),
(1498, '101221004', '祁门'),
(1499, '101221005', '黟县'),
(1500, '101221006', '歙县'),
(1501, '101221007', '休宁'),
(1502, '101221101', '滁州'),
(1503, '101221102', '凤阳'),
(1504, '101221103', '明光'),
(1505, '101221104', '定远'),
(1506, '101221105', '全椒'),
(1507, '101221106', '来安'),
(1508, '101221107', '天长'),
(1509, '101221201', '淮北'),
(1510, '101221202', '濉溪'),
(1511, '101221301', '铜陵'),
(1512, '101221401', '宣城'),
(1513, '101221402', '泾县'),
(1514, '101221403', '旌德'),
(1515, '101221404', '宁国'),
(1516, '101221405', '绩溪'),
(1517, '101221406', '广德'),
(1518, '101221407', '郎溪'),
(1519, '101221501', '六安'),
(1520, '101221502', '霍邱'),
(1521, '101221503', '寿县'),
(1522, '101221505', '金寨'),
(1523, '101221506', '霍山'),
(1524, '101221507', '舒城'),
(1525, '101221601', '巢湖'),
(1526, '101221602', '庐江'),
(1527, '101221603', '无为'),
(1528, '101221604', '含山'),
(1529, '101221605', '和县'),
(1530, '101221701', '池州'),
(1531, '101221702', '东至'),
(1532, '101221703', '青阳'),
(1533, '101221705', '石台'),
(1534, '101230101', '福州'),
(1535, '101230102', '闽清'),
(1536, '101230103', '闽侯'),
(1537, '101230104', '罗源'),
(1538, '101230105', '连江'),
(1539, '101230107', '永泰'),
(1540, '101230108', '平潭'),
(1541, '101230110', '长乐'),
(1542, '101230111', '福清'),
(1543, '101230201', '厦门'),
(1544, '101230301', '宁德'),
(1545, '101230302', '古田'),
(1546, '101230303', '霞浦'),
(1547, '101230304', '寿宁'),
(1548, '101230305', '周宁'),
(1549, '101230306', '福安'),
(1550, '101230307', '柘荣'),
(1551, '101230308', '福鼎'),
(1552, '101230309', '屏南'),
(1553, '101230401', '莆田'),
(1554, '101230402', '仙游'),
(1555, '101230404', '涵江'),
(1556, '101230405', '秀屿'),
(1557, '101230406', '荔城'),
(1558, '101230407', '城厢'),
(1559, '101230501', '泉州'),
(1560, '101230502', '安溪'),
(1561, '101230504', '永春'),
(1562, '101230505', '德化'),
(1563, '101230506', '南安'),
(1564, '101230508', '惠安'),
(1565, '101230509', '晋江'),
(1566, '101230510', '石狮'),
(1567, '101230601', '漳州'),
(1568, '101230602', '长泰'),
(1569, '101230603', '南靖'),
(1570, '101230604', '平和'),
(1571, '101230605', '龙海'),
(1572, '101230606', '漳浦'),
(1573, '101230607', '诏安'),
(1574, '101230609', '云霄'),
(1575, '101230610', '华安'),
(1576, '101230701', '龙岩'),
(1577, '101230702', '长汀'),
(1578, '101230703', '连城'),
(1579, '101230704', '武平'),
(1580, '101230705', '上杭'),
(1581, '101230706', '永定'),
(1582, '101230707', '漳平'),
(1583, '101230801', '三明'),
(1584, '101230802', '宁化'),
(1585, '101230803', '清流'),
(1586, '101230804', '泰宁'),
(1587, '101230805', '将乐'),
(1588, '101230806', '建宁'),
(1589, '101230807', '明溪'),
(1590, '101230808', '沙县'),
(1591, '101230809', '尤溪'),
(1592, '101230810', '永安'),
(1593, '101230811', '大田'),
(1594, '101230901', '南平'),
(1595, '101230902', '顺昌'),
(1596, '101230903', '光泽'),
(1597, '101230904', '邵武'),
(1598, '101230905', '武夷山'),
(1599, '101230906', '浦城'),
(1600, '101230907', '建阳'),
(1601, '101230908', '松溪'),
(1602, '101230909', '政和'),
(1603, '101230910', '建瓯'),
(1604, '101231001', '钓鱼岛'),
(1605, '101240101', '南昌'),
(1606, '101240102', '新建'),
(1607, '101240104', '安义'),
(1608, '101240105', '进贤'),
(1609, '101240201', '九江'),
(1610, '101240202', '瑞昌'),
(1611, '101240204', '武宁'),
(1612, '101240205', '德安'),
(1613, '101240206', '永修'),
(1614, '101240207', '湖口'),
(1615, '101240208', '彭泽'),
(1616, '101240209', '星子'),
(1617, '101240210', '都昌'),
(1618, '101240212', '修水'),
(1619, '101240301', '上饶'),
(1620, '101240302', '鄱阳'),
(1621, '101240303', '婺源'),
(1622, '101240305', '余干'),
(1623, '101240306', '万年'),
(1624, '101240307', '德兴'),
(1625, '101240309', '弋阳'),
(1626, '101240310', '横峰'),
(1627, '101240311', '铅山'),
(1628, '101240312', '玉山'),
(1629, '101240313', '广丰'),
(1630, '101240401', '抚州'),
(1631, '101240402', '广昌'),
(1632, '101240403', '乐安'),
(1633, '101240404', '崇仁'),
(1634, '101240405', '金溪'),
(1635, '101240406', '资溪'),
(1636, '101240407', '宜黄'),
(1637, '101240408', '南城'),
(1638, '101240409', '南丰'),
(1639, '101240410', '黎川'),
(1640, '101240411', '东乡'),
(1641, '101240501', '宜春'),
(1642, '101240502', '铜鼓'),
(1643, '101240503', '宜丰'),
(1644, '101240504', '万载'),
(1645, '101240505', '上高'),
(1646, '101240506', '靖安'),
(1647, '101240507', '奉新'),
(1648, '101240508', '高安'),
(1649, '101240509', '樟树'),
(1650, '101240510', '丰城'),
(1651, '101240601', '吉安'),
(1652, '101240603', '吉水'),
(1653, '101240604', '新干'),
(1654, '101240605', '峡江'),
(1655, '101240606', '永丰'),
(1656, '101240607', '永新'),
(1657, '101240608', '井冈山'),
(1658, '101240609', '万安'),
(1659, '101240610', '遂川'),
(1660, '101240611', '泰和'),
(1661, '101240612', '安福'),
(1662, '101240701', '赣州'),
(1663, '101240702', '崇义'),
(1664, '101240703', '上犹'),
(1665, '101240704', '南康'),
(1666, '101240705', '大余'),
(1667, '101240706', '信丰'),
(1668, '101240707', '宁都'),
(1669, '101240708', '石城'),
(1670, '101240709', '瑞金'),
(1671, '101240710', '于都'),
(1672, '101240711', '会昌'),
(1673, '101240712', '安远'),
(1674, '101240713', '全南'),
(1675, '101240714', '龙南'),
(1676, '101240715', '定南'),
(1677, '101240716', '寻乌'),
(1678, '101240717', '兴国'),
(1679, '101240718', '赣县'),
(1680, '101240801', '景德镇'),
(1681, '101240802', '乐平'),
(1682, '101240803', '浮梁'),
(1683, '101240901', '萍乡'),
(1684, '101240902', '莲花'),
(1685, '101240903', '上栗'),
(1686, '101240905', '芦溪'),
(1687, '101240906', '湘东'),
(1688, '101241001', '新余'),
(1689, '101241002', '分宜'),
(1690, '101241101', '鹰潭'),
(1691, '101241102', '余江'),
(1692, '101241103', '贵溪'),
(1693, '101250101', '长沙'),
(1694, '101250102', '宁乡'),
(1695, '101250103', '浏阳'),
(1696, '101250105', '望城'),
(1697, '101250201', '湘潭'),
(1698, '101250202', '韶山'),
(1699, '101250203', '湘乡'),
(1700, '101250301', '株洲'),
(1701, '101250302', '攸县'),
(1702, '101250303', '醴陵'),
(1703, '101250305', '茶陵'),
(1704, '101250306', '炎陵'),
(1705, '101250401', '衡阳'),
(1706, '101250402', '衡山'),
(1707, '101250403', '衡东'),
(1708, '101250404', '祁东'),
(1709, '101250406', '常宁'),
(1710, '101250407', '衡南'),
(1711, '101250408', '耒阳'),
(1712, '101250501', '郴州'),
(1713, '101250502', '桂阳'),
(1714, '101250503', '嘉禾'),
(1715, '101250504', '宜章'),
(1716, '101250505', '临武'),
(1717, '101250507', '资兴'),
(1718, '101250508', '汝城'),
(1719, '101250509', '安仁'),
(1720, '101250510', '永兴'),
(1721, '101250511', '桂东'),
(1722, '101250512', '苏仙'),
(1723, '101250601', '常德'),
(1724, '101250602', '安乡'),
(1725, '101250603', '桃源'),
(1726, '101250604', '汉寿'),
(1727, '101250605', '澧县'),
(1728, '101250606', '临澧'),
(1729, '101250607', '石门'),
(1730, '101250608', '津市'),
(1731, '101250700', '益阳'),
(1732, '101250702', '南县'),
(1733, '101250703', '桃江'),
(1734, '101250704', '安化'),
(1735, '101250705', '沅江'),
(1736, '101250801', '娄底'),
(1737, '101250802', '双峰'),
(1738, '101250803', '冷水江'),
(1739, '101250805', '新化'),
(1740, '101250806', '涟源'),
(1741, '101250901', '邵阳'),
(1742, '101250902', '隆回');
INSERT INTO `pigcms_weather` (`id`, `code`, `name`) VALUES
(1743, '101250903', '洞口'),
(1744, '101250904', '新邵'),
(1745, '101250905', '邵东'),
(1746, '101250906', '绥宁'),
(1747, '101250907', '新宁'),
(1748, '101250908', '武冈'),
(1749, '101250909', '城步'),
(1750, '101251001', '岳阳'),
(1751, '101251002', '华容'),
(1752, '101251003', '湘阴'),
(1753, '101251004', '汨罗'),
(1754, '101251005', '平江'),
(1755, '101251006', '临湘'),
(1756, '101251101', '张家界'),
(1757, '101251102', '桑植'),
(1758, '101251103', '慈利'),
(1759, '101251104', '武陵源'),
(1760, '101251201', '怀化'),
(1761, '101251203', '沅陵'),
(1762, '101251204', '辰溪'),
(1763, '101251205', '靖州'),
(1764, '101251206', '会同'),
(1765, '101251207', '通道'),
(1766, '101251208', '麻阳'),
(1767, '101251209', '新晃'),
(1768, '101251210', '芷江'),
(1769, '101251211', '溆浦'),
(1770, '101251212', '中方'),
(1771, '101251213', '洪江'),
(1772, '101251401', '永州'),
(1773, '101251402', '祁阳'),
(1774, '101251403', '东安'),
(1775, '101251404', '双牌'),
(1776, '101251405', '道县'),
(1777, '101251406', '宁远'),
(1778, '101251407', '江永'),
(1779, '101251408', '蓝山'),
(1780, '101251409', '新田'),
(1781, '101251410', '江华'),
(1782, '101251501', '吉首'),
(1783, '101251502', '保靖'),
(1784, '101251503', '永顺'),
(1785, '101251504', '古丈'),
(1786, '101251505', '凤凰'),
(1787, '101251506', '泸溪'),
(1788, '101251507', '龙山'),
(1789, '101251508', '花垣'),
(1790, '101260101', '贵阳'),
(1791, '101260102', '白云'),
(1792, '101260103', '花溪'),
(1793, '101260104', '乌当'),
(1794, '101260105', '息烽'),
(1795, '101260106', '开阳'),
(1796, '101260107', '修文'),
(1797, '101260108', '清镇'),
(1798, '101260109', '小河'),
(1799, '101260110', '云岩'),
(1800, '101260111', '南明'),
(1801, '101260201', '遵义'),
(1802, '101260203', '仁怀'),
(1803, '101260204', '绥阳'),
(1804, '101260205', '湄潭'),
(1805, '101260206', '凤冈'),
(1806, '101260207', '桐梓'),
(1807, '101260208', '赤水'),
(1808, '101260209', '习水'),
(1809, '101260210', '道真'),
(1810, '101260211', '正安'),
(1811, '101260212', '务川'),
(1812, '101260213', '余庆'),
(1813, '101260214', '汇川'),
(1814, '101260215', '红花岗'),
(1815, '101260301', '安顺'),
(1816, '101260302', '普定'),
(1817, '101260303', '镇宁'),
(1818, '101260304', '平坝'),
(1819, '101260305', '紫云'),
(1820, '101260306', '关岭'),
(1821, '101260401', '都匀'),
(1822, '101260402', '贵定'),
(1823, '101260403', '瓮安'),
(1824, '101260404', '长顺'),
(1825, '101260405', '福泉'),
(1826, '101260406', '惠水'),
(1827, '101260407', '龙里'),
(1828, '101260408', '罗甸'),
(1829, '101260409', '平塘'),
(1830, '101260410', '独山'),
(1831, '101260411', '三都'),
(1832, '101260412', '荔波'),
(1833, '101260501', '凯里'),
(1834, '101260502', '岑巩'),
(1835, '101260503', '施秉'),
(1836, '101260504', '镇远'),
(1837, '101260505', '黄平'),
(1838, '101260507', '麻江'),
(1839, '101260508', '丹寨'),
(1840, '101260509', '三穗'),
(1841, '101260510', '台江'),
(1842, '101260511', '剑河'),
(1843, '101260512', '雷山'),
(1844, '101260513', '黎平'),
(1845, '101260514', '天柱'),
(1846, '101260515', '锦屏'),
(1847, '101260516', '榕江'),
(1848, '101260517', '从江'),
(1849, '101260601', '铜仁'),
(1850, '101260602', '江口'),
(1851, '101260603', '玉屏'),
(1852, '101260604', '万山特'),
(1853, '101260605', '思南'),
(1854, '101260607', '印江'),
(1855, '101260608', '石阡'),
(1856, '101260609', '沿河'),
(1857, '101260610', '德江'),
(1858, '101260611', '松桃'),
(1859, '101260701', '毕节'),
(1860, '101260702', '赫章'),
(1861, '101260703', '金沙'),
(1862, '101260704', '威宁'),
(1863, '101260705', '大方'),
(1864, '101260706', '纳雍'),
(1865, '101260707', '织金'),
(1866, '101260708', '黔西'),
(1867, '101260801', '水城'),
(1868, '101260802', '六枝特'),
(1869, '101260804', '盘县'),
(1870, '101260901', '兴义'),
(1871, '101260902', '晴隆'),
(1872, '101260903', '兴仁'),
(1873, '101260904', '贞丰'),
(1874, '101260905', '望谟'),
(1875, '101260907', '安龙'),
(1876, '101260908', '册亨'),
(1877, '101260909', '普安'),
(1878, '101270101', '成都'),
(1879, '101270103', '新都'),
(1880, '101270104', '温江'),
(1881, '101270105', '金堂'),
(1882, '101270106', '双流'),
(1883, '101270107', '郫县'),
(1884, '101270108', '大邑'),
(1885, '101270109', '蒲江'),
(1886, '101270110', '新津'),
(1887, '101270111', '都江堰'),
(1888, '101270112', '彭州'),
(1889, '101270113', '邛崃'),
(1890, '101270114', '崇州'),
(1891, '101270201', '攀枝花'),
(1892, '101270203', '米易'),
(1893, '101270204', '盐边'),
(1894, '101270301', '自贡'),
(1895, '101270302', '富顺'),
(1896, '101270303', '荣县'),
(1897, '101270401', '绵阳'),
(1898, '101270402', '三台'),
(1899, '101270403', '盐亭'),
(1900, '101270404', '安县'),
(1901, '101270405', '梓潼'),
(1902, '101270406', '北川'),
(1903, '101270407', '平武'),
(1904, '101270408', '江油'),
(1905, '101270501', '南充'),
(1906, '101270502', '南部'),
(1907, '101270503', '营山'),
(1908, '101270504', '蓬安'),
(1909, '101270505', '仪陇'),
(1910, '101270506', '西充'),
(1911, '101270507', '阆中'),
(1912, '101270601', '达州'),
(1913, '101270602', '宣汉'),
(1914, '101270603', '开江'),
(1915, '101270604', '大竹'),
(1916, '101270605', '渠县'),
(1917, '101270606', '万源'),
(1918, '101270608', '达县'),
(1919, '101270701', '遂宁'),
(1920, '101270702', '蓬溪'),
(1921, '101270703', '射洪'),
(1922, '101270801', '广安'),
(1923, '101270802', '岳池'),
(1924, '101270803', '武胜'),
(1925, '101270804', '邻水'),
(1926, '101270805', '华蓥'),
(1927, '101270901', '巴中'),
(1928, '101270902', '通江'),
(1929, '101270903', '南江'),
(1930, '101270904', '平昌'),
(1931, '101271001', '泸州'),
(1932, '101271003', '泸县'),
(1933, '101271004', '合江'),
(1934, '101271005', '叙永'),
(1935, '101271006', '古蔺'),
(1936, '101271101', '宜宾'),
(1937, '101271104', '南溪'),
(1938, '101271105', '江安'),
(1939, '101271106', '长宁'),
(1940, '101271107', '高县'),
(1941, '101271108', '珙县'),
(1942, '101271109', '筠连'),
(1943, '101271110', '兴文'),
(1944, '101271111', '屏山'),
(1945, '101271201', '内江'),
(1946, '101271203', '威远'),
(1947, '101271204', '资中'),
(1948, '101271205', '隆昌'),
(1949, '101271301', '资阳'),
(1950, '101271302', '安岳'),
(1951, '101271303', '乐至'),
(1952, '101271304', '简阳'),
(1953, '101271401', '乐山'),
(1954, '101271402', '犍为'),
(1955, '101271403', '井研'),
(1956, '101271404', '夹江'),
(1957, '101271405', '沐川'),
(1958, '101271406', '峨边'),
(1959, '101271407', '马边'),
(1960, '101271409', '峨眉山'),
(1961, '101271501', '眉山'),
(1962, '101271502', '仁寿'),
(1963, '101271503', '彭山'),
(1964, '101271504', '洪雅'),
(1965, '101271505', '丹棱'),
(1966, '101271506', '青神'),
(1967, '101271601', '凉山'),
(1968, '101271603', '木里'),
(1969, '101271604', '盐源'),
(1970, '101271605', '德昌'),
(1971, '101271606', '会理'),
(1972, '101271607', '会东'),
(1973, '101271608', '宁南'),
(1974, '101271609', '普格'),
(1975, '101271610', '西昌'),
(1976, '101271611', '金阳'),
(1977, '101271612', '昭觉'),
(1978, '101271613', '喜德'),
(1979, '101271614', '冕宁'),
(1980, '101271615', '越西'),
(1981, '101271616', '甘洛'),
(1982, '101271617', '雷波'),
(1983, '101271618', '美姑'),
(1984, '101271619', '布拖'),
(1985, '101271701', '雅安'),
(1986, '101271702', '名山'),
(1987, '101271703', '荥经'),
(1988, '101271704', '汉源'),
(1989, '101271705', '石棉'),
(1990, '101271706', '天全'),
(1991, '101271707', '芦山'),
(1992, '101271708', '宝兴'),
(1993, '101271801', '甘孜'),
(1994, '101271802', '康定'),
(1995, '101271803', '泸定'),
(1996, '101271804', '丹巴'),
(1997, '101271805', '九龙'),
(1998, '101271806', '雅江'),
(1999, '101271807', '道孚'),
(2000, '101271808', '炉霍'),
(2001, '101271809', '新龙'),
(2002, '101271810', '德格'),
(2003, '101271811', '白玉'),
(2004, '101271812', '石渠'),
(2005, '101271813', '色达'),
(2006, '101271814', '理塘'),
(2007, '101271815', '巴塘'),
(2008, '101271816', '乡城'),
(2009, '101271817', '稻城'),
(2010, '101271818', '得荣'),
(2011, '101271901', '阿坝'),
(2012, '101271902', '汶川'),
(2013, '101271903', '理县'),
(2014, '101271904', '茂县'),
(2015, '101271905', '松潘'),
(2016, '101271906', '九寨沟'),
(2017, '101271907', '金川'),
(2018, '101271908', '小金'),
(2019, '101271909', '黑水'),
(2020, '101271910', '马尔康'),
(2021, '101271911', '壤塘'),
(2022, '101271912', '若尔盖'),
(2023, '101271913', '红原'),
(2024, '101272001', '德阳'),
(2025, '101272002', '中江'),
(2026, '101272003', '广汉'),
(2027, '101272004', '什邡'),
(2028, '101272005', '绵竹'),
(2029, '101272006', '罗江'),
(2030, '101272101', '广元'),
(2031, '101272102', '旺苍'),
(2032, '101272103', '青川'),
(2033, '101272104', '剑阁'),
(2034, '101272105', '苍溪'),
(2035, '101280101', '广州'),
(2036, '101280102', '番禺'),
(2037, '101280103', '从化'),
(2038, '101280104', '增城'),
(2039, '101280105', '花都'),
(2040, '101280201', '韶关'),
(2041, '101280202', '乳源'),
(2042, '101280203', '始兴'),
(2043, '101280204', '翁源'),
(2044, '101280205', '乐昌'),
(2045, '101280206', '仁化'),
(2046, '101280207', '南雄'),
(2047, '101280208', '新丰'),
(2048, '101280209', '曲江'),
(2049, '101280210', '浈江'),
(2050, '101280211', '武江'),
(2051, '101280301', '惠州'),
(2052, '101280302', '博罗'),
(2053, '101280303', '惠阳'),
(2054, '101280304', '惠东'),
(2055, '101280305', '龙门'),
(2056, '101280401', '梅州'),
(2057, '101280402', '兴宁'),
(2058, '101280403', '蕉岭'),
(2059, '101280404', '大埔'),
(2060, '101280406', '丰顺'),
(2061, '101280407', '平远'),
(2062, '101280408', '五华'),
(2063, '101280409', '梅县'),
(2064, '101280501', '汕头'),
(2065, '101280502', '潮阳'),
(2066, '101280503', '澄海'),
(2067, '101280504', '南澳'),
(2068, '101280601', '深圳'),
(2069, '101280701', '珠海'),
(2070, '101280702', '斗门'),
(2071, '101280703', '金湾'),
(2072, '101280800', '佛山'),
(2073, '101280801', '顺德'),
(2074, '101280802', '三水'),
(2075, '101280803', '南海'),
(2076, '101280804', '高明'),
(2077, '101280901', '肇庆'),
(2078, '101280902', '广宁'),
(2079, '101280903', '四会'),
(2080, '101280905', '德庆'),
(2081, '101280906', '怀集'),
(2082, '101280907', '封开'),
(2083, '101280908', '高要'),
(2084, '101281001', '湛江'),
(2085, '101281002', '吴川'),
(2086, '101281003', '雷州'),
(2087, '101281004', '徐闻'),
(2088, '101281005', '廉江'),
(2089, '101281006', '赤坎'),
(2090, '101281007', '遂溪'),
(2091, '101281008', '坡头'),
(2092, '101281009', '霞山'),
(2093, '101281010', '麻章'),
(2094, '101281101', '江门'),
(2095, '101281103', '开平'),
(2096, '101281104', '新会'),
(2097, '101281105', '恩平'),
(2098, '101281106', '台山'),
(2099, '101281108', '鹤山'),
(2100, '101281109', '江海'),
(2101, '101281201', '河源'),
(2102, '101281202', '紫金'),
(2103, '101281203', '连平'),
(2104, '101281204', '和平'),
(2105, '101281205', '龙川'),
(2106, '101281206', '东源'),
(2107, '101281301', '清远'),
(2108, '101281302', '连南'),
(2109, '101281303', '连州'),
(2110, '101281304', '连山'),
(2111, '101281305', '阳山'),
(2112, '101281306', '佛冈'),
(2113, '101281307', '英德'),
(2114, '101281308', '清新'),
(2115, '101281401', '云浮'),
(2116, '101281402', '罗定'),
(2117, '101281403', '新兴'),
(2118, '101281404', '郁南'),
(2119, '101281406', '云安'),
(2120, '101281501', '潮州'),
(2121, '101281502', '饶平'),
(2122, '101281503', '潮安'),
(2123, '101281601', '东莞'),
(2124, '101281701', '中山'),
(2125, '101281801', '阳江'),
(2126, '101281802', '阳春'),
(2127, '101281803', '阳东'),
(2128, '101281804', '阳西'),
(2129, '101281901', '揭阳'),
(2130, '101281902', '揭西'),
(2131, '101281903', '普宁'),
(2132, '101281904', '惠来'),
(2133, '101281905', '揭东'),
(2134, '101282001', '茂名'),
(2135, '101282002', '高州'),
(2136, '101282003', '化州'),
(2137, '101282004', '电白'),
(2138, '101282005', '信宜'),
(2139, '101282006', '茂港'),
(2140, '101282101', '汕尾'),
(2141, '101282102', '海丰'),
(2142, '101282103', '陆丰'),
(2143, '101282104', '陆河'),
(2144, '101290101', '昆明'),
(2145, '101290103', '东川'),
(2146, '101290104', '寻甸'),
(2147, '101290105', '晋宁'),
(2148, '101290106', '宜良'),
(2149, '101290107', '石林'),
(2150, '101290108', '呈贡'),
(2151, '101290109', '富民'),
(2152, '101290110', '嵩明'),
(2153, '101290111', '禄劝'),
(2154, '101290112', '安宁'),
(2155, '101290201', '大理'),
(2156, '101290202', '云龙'),
(2157, '101290203', '漾濞'),
(2158, '101290204', '永平'),
(2159, '101290205', '宾川'),
(2160, '101290206', '弥渡'),
(2161, '101290207', '祥云'),
(2162, '101290208', '巍山'),
(2163, '101290209', '剑川'),
(2164, '101290210', '洱源'),
(2165, '101290211', '鹤庆'),
(2166, '101290212', '南涧'),
(2167, '101290301', '红河'),
(2168, '101290302', '石屏'),
(2169, '101290303', '建水'),
(2170, '101290304', '弥勒'),
(2171, '101290305', '元阳'),
(2172, '101290306', '绿春'),
(2173, '101290307', '开远'),
(2174, '101290308', '个旧'),
(2175, '101290309', '蒙自'),
(2176, '101290310', '屏边'),
(2177, '101290311', '泸西'),
(2178, '101290312', '金平'),
(2179, '101290313', '河口'),
(2180, '101290401', '曲靖'),
(2181, '101290402', '沾益'),
(2182, '101290403', '陆良'),
(2183, '101290404', '富源'),
(2184, '101290405', '马龙'),
(2185, '101290406', '师宗'),
(2186, '101290407', '罗平'),
(2187, '101290408', '会泽'),
(2188, '101290409', '宣威'),
(2189, '101290501', '保山'),
(2190, '101290503', '龙陵'),
(2191, '101290504', '施甸'),
(2192, '101290505', '昌宁'),
(2193, '101290506', '腾冲'),
(2194, '101290601', '文山'),
(2195, '101290602', '西畴'),
(2196, '101290603', '马关'),
(2197, '101290604', '麻栗坡'),
(2198, '101290605', '砚山'),
(2199, '101290606', '丘北'),
(2200, '101290607', '广南'),
(2201, '101290608', '富宁'),
(2202, '101290701', '玉溪'),
(2203, '101290702', '澄江'),
(2204, '101290703', '江川'),
(2205, '101290704', '通海'),
(2206, '101290705', '华宁'),
(2207, '101290706', '新平'),
(2208, '101290707', '易门'),
(2209, '101290708', '峨山'),
(2210, '101290709', '元江'),
(2211, '101290801', '楚雄'),
(2212, '101290802', '大姚'),
(2213, '101290803', '元谋'),
(2214, '101290804', '姚安'),
(2215, '101290805', '牟定'),
(2216, '101290806', '南华'),
(2217, '101290807', '武定'),
(2218, '101290808', '禄丰'),
(2219, '101290809', '双柏'),
(2220, '101290810', '永仁'),
(2221, '101290901', '普洱'),
(2222, '101290902', '景谷'),
(2223, '101290903', '景东'),
(2224, '101290904', '澜沧'),
(2225, '101290906', '墨江'),
(2226, '101290907', '江城'),
(2227, '101290908', '孟连'),
(2228, '101290909', '西盟'),
(2229, '101290911', '镇沅'),
(2230, '101290912', '宁洱'),
(2231, '101291001', '昭通'),
(2232, '101291002', '鲁甸'),
(2233, '101291003', '彝良'),
(2234, '101291004', '镇雄'),
(2235, '101291005', '威信'),
(2236, '101291006', '巧家'),
(2237, '101291007', '绥江'),
(2238, '101291008', '永善'),
(2239, '101291009', '盐津'),
(2240, '101291010', '大关'),
(2241, '101291011', '水富'),
(2242, '101291101', '临沧'),
(2243, '101291102', '沧源'),
(2244, '101291103', '耿马'),
(2245, '101291104', '双江'),
(2246, '101291105', '凤庆'),
(2247, '101291106', '永德'),
(2248, '101291107', '云县'),
(2249, '101291108', '镇康'),
(2250, '101291201', '怒江'),
(2251, '101291203', '福贡'),
(2252, '101291204', '兰坪'),
(2253, '101291205', '泸水'),
(2254, '101291207', '贡山'),
(2255, '101291301', '迪庆'),
(2256, '101291302', '德钦'),
(2257, '101291303', '维西'),
(2258, '101291401', '丽江'),
(2259, '101291402', '永胜'),
(2260, '101291403', '华坪'),
(2261, '101291404', '宁蒗'),
(2262, '101291501', '德宏'),
(2263, '101291503', '陇川'),
(2264, '101291504', '盈江'),
(2265, '101291506', '瑞丽'),
(2266, '101291507', '梁河'),
(2267, '101291508', '潞西'),
(2268, '101291601', '西双版纳'),
(2269, '101291603', '勐海'),
(2270, '101291605', '勐腊'),
(2271, '101300101', '南宁'),
(2272, '101300103', '邕宁'),
(2273, '101300104', '横县'),
(2274, '101300105', '隆安'),
(2275, '101300106', '马山'),
(2276, '101300107', '上林'),
(2277, '101300108', '武鸣'),
(2278, '101300109', '宾阳'),
(2279, '101300201', '崇左'),
(2280, '101300202', '天等'),
(2281, '101300203', '龙州'),
(2282, '101300204', '凭祥'),
(2283, '101300205', '大新'),
(2284, '101300206', '扶绥'),
(2285, '101300207', '宁明'),
(2286, '101300301', '柳州'),
(2287, '101300302', '柳城'),
(2288, '101300304', '鹿寨'),
(2289, '101300305', '柳江'),
(2290, '101300306', '融安'),
(2291, '101300307', '融水'),
(2292, '101300308', '三江'),
(2293, '101300401', '来宾'),
(2294, '101300402', '忻城'),
(2295, '101300403', '金秀'),
(2296, '101300404', '象州'),
(2297, '101300405', '武宣'),
(2298, '101300406', '合山'),
(2299, '101300501', '桂林'),
(2300, '101300503', '龙胜'),
(2301, '101300504', '永福'),
(2302, '101300505', '临桂'),
(2303, '101300506', '兴安'),
(2304, '101300507', '灵川'),
(2305, '101300508', '全州'),
(2306, '101300509', '灌阳'),
(2307, '101300510', '阳朔'),
(2308, '101300511', '恭城'),
(2309, '101300512', '平乐'),
(2310, '101300513', '荔浦'),
(2311, '101300514', '资源'),
(2312, '101300601', '梧州'),
(2313, '101300602', '藤县'),
(2314, '101300604', '苍梧'),
(2315, '101300605', '蒙山'),
(2316, '101300606', '岑溪'),
(2317, '101300701', '贺州'),
(2318, '101300702', '昭平'),
(2319, '101300703', '富川'),
(2320, '101300704', '钟山'),
(2321, '101300801', '贵港'),
(2322, '101300802', '桂平'),
(2323, '101300803', '平南'),
(2324, '101300901', '玉林'),
(2325, '101300902', '博白'),
(2326, '101300903', '北流'),
(2327, '101300904', '容县'),
(2328, '101300905', '陆川'),
(2329, '101300906', '兴业'),
(2330, '101301001', '百色'),
(2331, '101301002', '那坡'),
(2332, '101301003', '田阳'),
(2333, '101301004', '德保'),
(2334, '101301005', '靖西'),
(2335, '101301006', '田东'),
(2336, '101301007', '平果'),
(2337, '101301008', '隆林'),
(2338, '101301009', '西林'),
(2339, '101301010', '乐业'),
(2340, '101301011', '凌云'),
(2341, '101301012', '田林'),
(2342, '101301101', '钦州'),
(2343, '101301102', '浦北'),
(2344, '101301103', '灵山'),
(2345, '101301201', '河池'),
(2346, '101301202', '天峨'),
(2347, '101301203', '东兰'),
(2348, '101301204', '巴马'),
(2349, '101301205', '环江'),
(2350, '101301206', '罗城'),
(2351, '101301207', '宜州'),
(2352, '101301208', '凤山'),
(2353, '101301209', '南丹'),
(2354, '101301210', '都安'),
(2355, '101301211', '大化'),
(2356, '101301301', '北海'),
(2357, '101301302', '合浦'),
(2358, '101301303', '涠洲岛'),
(2359, '101301401', '防城港'),
(2360, '101301402', '上思'),
(2361, '101301403', '东兴'),
(2362, '101301405', '防城'),
(2363, '101310101', '海口'),
(2364, '101310201', '三亚'),
(2365, '101310202', '东方'),
(2366, '101310203', '临高'),
(2367, '101310204', '澄迈'),
(2368, '101310205', '儋州'),
(2369, '101310206', '昌江'),
(2370, '101310207', '白沙'),
(2371, '101310208', '琼中'),
(2372, '101310209', '定安'),
(2373, '101310210', '屯昌'),
(2374, '101310211', '琼海'),
(2375, '101310212', '文昌'),
(2376, '101310214', '保亭'),
(2377, '101310215', '万宁'),
(2378, '101310216', '陵水'),
(2379, '101310221', '乐东'),
(2380, '101310222', '五指山'),
(2381, '101320101', '香港'),
(2382, '101330101', '澳门'),
(2383, '101340101', '台北'),
(2384, '101340102', '桃园'),
(2385, '101340103', '新竹'),
(2386, '101340104', '宜兰'),
(2387, '101340201', '高雄'),
(2388, '101340202', '嘉义'),
(2389, '101340203', '台南'),
(2390, '101340204', '台东'),
(2391, '101340205', '屏东'),
(2392, '101340401', '台中'),
(2393, '101340402', '苗栗'),
(2394, '101340403', '彰化'),
(2395, '101340404', '南投'),
(2396, '101340405', '花莲'),
(2397, '101340406', '云林'),
(2398, '102010100', '首尔'),
(2399, '103010100', '东京'),
(2400, '103020100', '大阪'),
(2401, '103040100', '札幌'),
(2402, '103050100', '福冈'),
(2403, '103090100', '京都'),
(2404, '104010100', '新加坡'),
(2405, '105010100', '吉隆坡'),
(2406, '106010100', '曼谷'),
(2407, '107010100', '河内'),
(2408, '107020100', '胡志明市'),
(2409, '108010100', '仰光'),
(2410, '109010100', '万象'),
(2411, '111010100', '雅加达'),
(2412, '111080100', '登巴萨'),
(2413, '112010100', '德黑兰'),
(2414, '113010100', '新德里'),
(2415, '113030100', '孟买'),
(2416, '113090100', '斯利那加'),
(2417, '114010100', '伊斯兰堡'),
(2418, '114030100', '卡拉奇'),
(2419, '114040100', '白沙瓦'),
(2420, '115010100', '塔什干'),
(2421, '117010100', '科伦坡'),
(2422, '118010100', '喀布尔'),
(2423, '118030100', '坎大哈'),
(2424, '120010100', '斯里巴加湾'),
(2425, '121010100', '巴林'),
(2426, '124010100', '阿布扎比'),
(2427, '124020100', '迪拜'),
(2428, '127010100', '平壤'),
(2429, '130010100', '阿斯塔纳'),
(2430, '132010100', '乌兰巴托'),
(2431, '136010100', '马尼拉'),
(2432, '138010100', '利雅得'),
(2433, '139010100', '大马士革'),
(2434, '201010100', '伦敦'),
(2435, '201050100', '曼彻斯特'),
(2436, '202010100', '巴黎'),
(2437, '202100100', '马赛'),
(2438, '203010100', '柏林'),
(2439, '203020100', '法兰克福'),
(2440, '203050100', '汉堡'),
(2441, '204010100', '罗马'),
(2442, '204040100', '米兰'),
(2443, '205010100', '阿姆斯特丹'),
(2444, '206010100', '马德里'),
(2445, '206020100', '巴塞罗那'),
(2446, '207010100', '哥本哈根'),
(2447, '208010100', '莫斯科'),
(2448, '210020100', '日内瓦'),
(2449, '210030100', '苏黎世'),
(2450, '211010100', '斯德哥尔摩'),
(2451, '214010100', '里斯本'),
(2452, '215020100', '伊斯坦布尔'),
(2453, '216010100', '布鲁塞尔'),
(2454, '217010100', '维也纳'),
(2455, '218010100', '雅典'),
(2456, '222010100', '赫尔辛基'),
(2457, '301010100', '开罗'),
(2458, '302010100', '开普敦'),
(2459, '302020100', '约翰内斯堡'),
(2460, '303010100', '突尼斯'),
(2461, '304020100', '拉各斯'),
(2462, '305010100', '阿尔及尔'),
(2463, '311010100', '亚的斯亚贝巴'),
(2464, '317010100', '内罗毕'),
(2465, '321020100', '卡萨布兰卡'),
(2466, '327010100', '达喀尔'),
(2467, '332010100', '达累斯萨拉姆'),
(2468, '334010100', '卢萨卡'),
(2469, '401010100', '华盛顿'),
(2470, '401020101', '迈阿密'),
(2471, '401020104', '奥兰多'),
(2472, '401030101', '亚特兰大'),
(2473, '401040101', '洛杉矶'),
(2474, '401040102', '圣弗朗西斯科'),
(2475, '401060100', '波士顿'),
(2476, '401070101', '芝加哥'),
(2477, '401100101', '西雅图'),
(2478, '401110101', '纽约'),
(2479, '401120108', '休斯敦'),
(2480, '401370100', '拉斯维加斯'),
(2481, '401480100', '火奴鲁鲁'),
(2482, '404010100', '渥太华'),
(2483, '404030100', '温哥华'),
(2484, '404040100', '多伦多'),
(2485, '404130100', '埃德蒙顿'),
(2486, '404140100', '卡尔加里'),
(2487, '404220100', '温尼伯'),
(2488, '404230100', '魁北克'),
(2489, '404240100', '蒙特利尔'),
(2490, '406010100', '哈瓦那'),
(2491, '411010100', '墨西哥城'),
(2492, '416010100', '加拉加斯'),
(2493, '601020101', '悉尼'),
(2494, '601030101', '布里斯班'),
(2495, '601040101', '阿德来德'),
(2496, '601060101', '墨尔本'),
(2497, '601070101', '珀斯'),
(2498, '606010100', '惠灵顿'),
(2499, '606020100', '奥克兰'),
(2500, '606030100', '克莱斯特彻奇'),
(2501, '101030100', '天津');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wechat_group`
--

CREATE TABLE IF NOT EXISTS `pigcms_wechat_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechatgroupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wechatgroupid` (`wechatgroupid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_wechat_group`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wechat_group_list`
--

CREATE TABLE IF NOT EXISTS `pigcms_wechat_group_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `province` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_wechat_group_list`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wechat_scene`
--

CREATE TABLE IF NOT EXISTS `pigcms_wechat_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL,
  `title` char(50) NOT NULL,
  `pic` char(100) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `shake_id` int(10) unsigned NOT NULL,
  `wall_id` int(10) unsigned NOT NULL,
  `vote_id` char(25) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `open_vote` enum('0','1') NOT NULL,
  `open_zzle` enum('0','1') NOT NULL,
  `open_lottery` enum('0','1') NOT NULL,
  `token` char(20) NOT NULL,
  `logo` char(100) NOT NULL,
  `background` char(100) NOT NULL,
  `qrcode` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_wechat_scene`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wecha_user`
--

CREATE TABLE IF NOT EXISTS `pigcms_wecha_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`token`,`wecha_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_wecha_user`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wecht_grout`
--

CREATE TABLE IF NOT EXISTS `pigcms_wecht_grout` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `w_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户组表，非本站用户级表';

--
-- 转存表中的数据 `pigcms_wecht_grout`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wedding`
--

CREATE TABLE IF NOT EXISTS `pigcms_wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(150) NOT NULL,
  `picurl` varchar(150) NOT NULL,
  `openpic` varchar(200) NOT NULL,
  `coverurl` varchar(200) NOT NULL,
  `woman` varchar(30) NOT NULL,
  `man` varchar(30) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `time` int(11) NOT NULL,
  `place` varchar(200) NOT NULL,
  `lng` varchar(16) NOT NULL,
  `lat` varchar(16) NOT NULL,
  `video` varchar(200) NOT NULL,
  `mp3url` varchar(200) NOT NULL,
  `passowrd` int(20) NOT NULL,
  `word` varchar(200) NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  `copyrite` varchar(150) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_wedding`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wedding_info`
--

CREATE TABLE IF NOT EXISTS `pigcms_wedding_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `num` tinyint(2) NOT NULL,
  `info` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `pigcms_wedding_info`
--


-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wehcat_member_enddate`
--

CREATE TABLE IF NOT EXISTS `pigcms_wehcat_member_enddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `joinUpDate` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `pigcms_wehcat_member_enddate`
--

INSERT INTO `pigcms_wehcat_member_enddate` (`id`, `openid`, `enddate`, `joinUpDate`, `uid`, `token`) VALUES
(1, 'olPOLuKSstYiPCXyg4SnO-0vWxGk', 1405988230, 0, 0, 'mpwwxa1405924744'),
(2, 'olPOLuC8OASDGPSCKm5rJRSsONOo', 1405931997, 0, 0, 'mpwwxa1405924744'),
(3, 'olPOLuJ8Bs1QDpTt2GsgIexPzv1c', 1405955901, 0, 0, 'mpwwxa1405924744'),
(4, 'olPOLuF8JYChd2ytXs3QN7_EknA4', 1405962506, 0, 0, 'mpwwxa1405924744'),
(5, 'obLuhtwirQvHXWbmQoavchVg-_uA', 1406118337, 0, 0, 'zhtaad1406117161'),
(6, 'oLwG1jjvDx3i_PEIy2zbHdHs-j0s', 1406181624, 0, 0, 'fbvqqy1406181027'),
(7, 'oLwG1jmHdxSpAR871l2WdcdgeZsA', 1406181688, 0, 0, 'fbvqqy1406181027'),
(8, 'oLwG1jnNKtmYEHBMC8DYubDSSwXc', 1406181747, 0, 0, 'fbvqqy1406181027'),
(9, 'oI1kAj-8QToaNH2FpvQ358fH2438', 1406186135, 0, 0, 'jbfkls1406185903');

-- --------------------------------------------------------

--
-- 表的结构 `pigcms_wxuser`
--

CREATE TABLE IF NOT EXISTS `pigcms_wxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routerid` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `winxintype` smallint(2) NOT NULL DEFAULT '1',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(50) NOT NULL DEFAULT '',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `pigsecret` varchar(150) NOT NULL DEFAULT '',
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) NOT NULL DEFAULT '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `allcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(10) NOT NULL DEFAULT '1',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(20) NOT NULL COMMENT '首页模版名',
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `transfer_customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `openphotoprint` tinyint(1) NOT NULL DEFAULT '0',
  `freephotocount` mediumint(4) NOT NULL DEFAULT '3',
  `oauth` tinyint(1) NOT NULL DEFAULT '0',
  `color_id` int(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='微信公共帐号' AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `pigcms_wxuser`
--

INSERT INTO `pigcms_wxuser` (`id`, `routerid`, `uid`, `wxname`, `winxintype`, `appid`, `appsecret`, `wxid`, `weixin`, `headerpic`, `token`, `pigsecret`, `province`, `city`, `qq`, `wxfans`, `typeid`, `typename`, `tongji`, `allcardnum`, `cardisok`, `yetcardnum`, `totalcardnum`, `createtime`, `tpltypeid`, `updatetime`, `tpltypename`, `tpllistid`, `tpllistname`, `tplcontentid`, `tplcontentname`, `transfer_customer_service`, `openphotoprint`, `freephotocount`, `oauth`, `color_id`) VALUES
(8, '', 1, '214', 2, '214', '124214', '124', '2141', './tpl/User/default/common/images/portrait.jpg', 'hvhyny1406205407', 'hdeaxbQfmPewmyMPvCQP', 'p', 'c', '1406205407@yourdomain.com', 0, 8, '服务', '', 0, 0, 0, 0, '1406205413', '133', '1406205413', '1133_index_rgcv', '1', 'yl_list', '1', 'ktv_content', 0, 0, 3, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_service_logs`
--

CREATE TABLE IF NOT EXISTS `tp_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=154 ;

--
-- 转存表中的数据 `tp_service_logs`
--

