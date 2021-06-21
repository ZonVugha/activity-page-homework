-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_us` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `about_us` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '关于我们',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_us`
--

LOCK TABLES `about_us` WRITE;
/*!40000 ALTER TABLE `about_us` DISABLE KEYS */;
INSERT INTO `about_us` VALUES (1,'<p>阿达的</p>');
/*!40000 ALTER TABLE `about_us` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `active_order`
--

DROP TABLE IF EXISTS `active_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `active_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态（1：待审核 2：待参加 3：已检票 4：已取消）',
  `activity_id` int DEFAULT NULL COMMENT '活动id',
  `common_user_id` int DEFAULT NULL COMMENT '普通用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_order`
--

LOCK TABLES `active_order` WRITE;
/*!40000 ALTER TABLE `active_order` DISABLE KEYS */;
INSERT INTO `active_order` VALUES (1,3,61,1),(2,1,62,1),(3,2,63,1),(4,4,64,1),(5,1,65,1),(6,5,66,1),(7,2,67,1),(8,4,68,1),(9,2,69,1),(10,1,70,1),(11,2,71,1),(12,5,72,1),(13,3,73,1),(14,2,74,1),(15,4,75,1),(16,5,76,1),(17,3,77,1),(18,1,78,1);
/*!40000 ALTER TABLE `active_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `activity_posters` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动海报',
  `activity_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动标题',
  `activity_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动编号',
  `activity_type_id` tinyint DEFAULT NULL COMMENT '活动类型id',
  `keywords` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `release_time` datetime DEFAULT NULL COMMENT '发布时间',
  `check_status` tinyint DEFAULT NULL COMMENT '审核状态（0：草稿 1：待审核 2：报名中 3：审核失败 4：待举办 5：进行中 6：已结束）',
  `check_time` datetime DEFAULT NULL COMMENT '审核时间',
  `check_person_contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人联系方式',
  `check_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核备注',
  `registration_start_time` datetime DEFAULT NULL COMMENT '报名开始时间',
  `activity_start_time` datetime DEFAULT NULL COMMENT '活动开始时间',
  `addr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `person_limit` int DEFAULT NULL COMMENT '人数限制',
  `registration_fee` decimal(10,2) DEFAULT NULL COMMENT '报名费用',
  `wx_customer_code` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '客服微信二维码',
  `payment_method` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收款方式',
  `registration_end_time` datetime DEFAULT NULL COMMENT '报名结束时间',
  `activity_end_time` datetime DEFAULT NULL COMMENT '活动结束时间',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '市',
  `check_need` tinyint DEFAULT NULL COMMENT '是否需要审核（1：需要 0：不需要）',
  `enter_company_id` int DEFAULT NULL COMMENT '入驻单位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (61,'https://tse2-mm.cn.bing.net/th/id/OIP.e_1TROGSIqoUxaZVPSTzgwHaEo?w=269&h=180&c=7&o=5&dpr=1.25&pid=1.7','个人品牌有效打造 ▏实操课 （升级版线上直播课）','CJLM-AC-NO1609667334989',8,'个人品牌有效打造 ▏实操课 （升级版线上直播课）','2021-01-03 17:48:55',3,'2021-01-21 09:17:06','1312','1231','2021-01-04 16:30:08','2021-04-16 00:00:00','北京路88号',666,0.00,'http://127.0.0.1/image/2021/01/03/476b35e4de10d7dbf146ca5c6191d315.png','微信线下收款','2021-04-15 00:00:00','2021-04-30 00:00:00','北京市','市辖区',1,1059),(62,'https://tse1-mm.cn.bing.net/th/id/OIP.4Cs5PlNR9hlnU5TSjtRW4QHaEK?w=299&h=180&c=7&o=5&dpr=1.25&pid=1.7','【魔都21年1月线上交友】一对一数据模型匹配，让你','CJLM-AC-NO1609668330238',9,'【魔都21年1月线上交友】一对一数据模型匹配，让你','2021-01-03 18:05:30',2,'2021-01-04 16:25:35',NULL,NULL,'2021-01-04 16:25:35','2021-04-30 00:00:00','吉林路99号',99,0.00,'http://127.0.0.1/image/2021/01/03/b5efab3654fd641361ba19a96ab63f87.png','微信线下收款','2021-04-15 00:00:00','2021-05-06 00:00:00','吉林省','吉林市',1,1059),(63,'https://tse3-mm.cn.bing.net/th/id/OIP._Pibsgqsqw2048iVQhZ3oAHaEK?w=300&h=180&c=7&o=5&dpr=1.25&pid=1.7','避坑：30节课教你搞定活动现场执行','CJLM-AC-NO1609668858686',11,'避坑：30节课教你搞定活动现场执行','2021-01-03 18:14:19',2,'2021-01-03 18:14:33',NULL,NULL,'2021-01-03 18:14:33','2021-06-10 00:00:00','天津路999号',999,1.00,'http://127.0.0.1/image/2021/01/03/4c359afb901e459fe2aa0764dfd7635c.png','微信线下收款','2021-05-19 00:00:00','2021-06-25 00:00:00','天津市','市辖区',0,1059),(64,'https://tse4-mm.cn.bing.net/th/id/OIP.GA8MJKor-3K4rjhdJXl8-AHaEo?w=253&h=180&c=7&o=5&dpr=1.25&pid=1.7','2020教育培训行业校长实战特训营（34期）','CJLM-AC-NO1609669185737',8,'2020教育培训行业校长实战特训营（34期）','2021-01-03 18:19:46',2,'2021-01-03 18:38:34',NULL,NULL,'2021-01-03 18:38:34','2021-03-12 00:00:00','请黄岛路88号',666,0.00,'http://127.0.0.1/image/2021/01/03/67e58e5778e6ef896791d7b19f8bc9f2.png','微信线下收款','2021-03-11 00:00:00','2021-03-13 00:00:00','河北省','秦皇岛市',0,1063),(65,'https://tse3-mm.cn.bing.net/th/id/OIP.XI3Wp-j1JkEZ1aCJ8Me_3gHaEK?w=309&h=180&c=7&o=5&dpr=1.25&pid=1.7','「画尤新生」艺术分享&手作体验','CJLM-AC-NO1609670198744',9,'「画尤新生」艺术分享&手作体验','2021-01-03 18:36:39',2,'2021-01-03 18:38:36',NULL,NULL,'2021-01-03 18:38:36','2021-01-30 00:00:00','大同路99号',100,0.00,'http://127.0.0.1/image/2021/01/03/e57a9e4de86ba1c58d4c029d395857a1.png','微信线下收款','2021-01-15 00:00:00','2021-01-31 00:00:00','山西省','大同市',0,1063),(66,'https://cn.bing.com/th?id=OHR.AnnularEclipse_EN-CN7326011259_400x240.jpg','克服紧张、自信表达——TALKUP超级演说线下沙龙','CJLM-AC-NO1609670303023',11,'克服紧张、自信表达——TALKUP超级演说线下沙龙','2021-01-03 18:38:23',2,'2021-01-03 18:38:38',NULL,NULL,'2021-01-03 18:38:38','2021-03-26 00:00:00','北京路999号',1000,0.00,'http://127.0.0.1/image/2021/01/03/a8c4a1d92c471bcba5469bf98968ad2c.png','微信线下收款','2021-01-22 00:00:00','2021-03-27 00:00:00','河北省','秦皇岛市',0,1063),(67,'https://tse4-mm.cn.bing.net/th/id/OIP.HzzbKckk8OVNWequ8T0_ewHaEo?w=278&h=180&c=7&o=5&dpr=1.25&pid=1.7','走进美的工业互联网·无锡站','CJLM-AC-NO1609670706770',8,'走进美的工业互联网·无锡站','2021-01-03 18:45:07',2,'2021-01-03 18:52:09',NULL,NULL,'2021-01-03 18:52:09','2021-01-07 00:00:00','北京路99号',66,0.00,'http://127.0.0.1/image/2021/01/03/ac715362fba6504b81885f45565606c8.png','微信线下收款','2021-01-04 00:00:00','2021-01-08 00:00:00','山西省','阳泉市',0,1064),(68,'https://tse1-mm.cn.bing.net/th/id/OIP.gB07LnCThYGE-47JYa8omQHaEo?w=287&h=180&c=7&o=5&dpr=1.25&pid=1.7','【风情美庐，旅拍湖㳇】——与宝马共同领略“摄影之美','CJLM-AC-NO1609670891740',9,'【风情美庐，旅拍湖㳇】——与宝马共同领略“摄影之美','2021-01-03 18:48:12',2,'2021-01-03 18:52:10',NULL,NULL,'2021-01-03 18:52:10','2021-01-08 00:00:00','包头路999号',100,0.00,'http://127.0.0.1/image/2021/01/03/f352bef4924768f32143d6e4162fe06f.png','微信线下收款','2021-01-06 00:00:00','2021-01-09 00:00:00','内蒙古自治区','包头市',0,1064),(69,'https://tse1-mm.cn.bing.net/th/id/OIP.bkPQDrSTHb0DuMZ-PKgjZgHaEo?w=268&h=180&c=7&o=5&dpr=1.25&pid=1.7','亲子课堂——《陪孩子终身成长》&《天才少年维克多》','CJLM-AC-NO1609671117717',11,'亲子课堂——《陪孩子终身成长》&《天才少年维克多》','2021-01-03 18:51:58',2,'2021-01-03 18:52:12',NULL,NULL,'2021-01-03 18:52:12','2021-01-22 00:00:00','北京路66号',0,0.00,'http://127.0.0.1/image/2021/01/03/5539bb39f3b8144f0fe6c43f93c74799.png','微信线下收款','2021-01-07 00:00:00','2021-01-29 00:00:00','江苏省','南京市',0,1064),(70,'https://cn.bing.com/th?id=OHR.BBNPGrande_EN-CN8572800463_400x240.jpg','测试活动1','CJLM-AC-NO1611191660229',12,'测试活动1','2021-01-21 09:14:20',2,'2021-01-21 09:16:50',NULL,NULL,'2021-01-21 09:16:50','2021-01-23 00:00:00','天津路',0,0.00,'http://127.0.0.1/image/2021/01/21/de9fe7f3bb7ddbac46328eb94bc9164d.png','微信线下收款','2021-01-22 00:00:00','2021-01-24 00:00:00','河北省','石家庄市',0,1064),(71,'https://tse3-mm.cn.bing.net/th/id/OIP.ugBRpBRw8dbT6RRuh-4zqQHaEK?w=310&h=180&c=7&o=5&dpr=1.25&pid=1.7','测试活动测试活动','CJLM-AC-NO1611278384893',12,'测试活动测试活动','2021-01-22 09:19:45',1,'2021-01-22 09:20:34','3213123',NULL,NULL,'2021-01-29 00:00:00','无锡市',0,0.00,'http://127.0.0.1/image/2021/01/22/31011362dd53b9a6201054a7b215d387.png','微信线下收款','2021-01-23 00:00:00','2021-01-30 00:00:00','天津市','市辖区',1,1059),(72,'https://tse2-mm.cn.bing.net/th/id/OIP.AXeawVytdRC33L-6IXJwVAHaEo?w=292&h=182&c=7&o=5&dpr=1.25&pid=1.7','活动活动1','CJLM-AC-NO1613957411105',9,'活动活动1','2021-02-22 09:30:11',1,NULL,NULL,NULL,NULL,'2021-02-28 00:00:00','北京路',0,0.00,'http://127.0.0.1/image/2021/02/22/1e7b0f9de77faa04cc404c491d2512d8.png','银行卡收款','2021-02-27 00:00:00','2021-03-04 00:00:00','天津市','市辖区',0,1068),(73,'https://cn.bing.com/th?id=OHR.SpiritMaligne_EN-CN9155680558_400x240.jpg','测试湖泊',NULL,NULL,'测试湖泊',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(74,'https://tse3-mm.cn.bing.net/th/id/OIP.vxvOyMgO4ccm-AtUwdTZ2AHaEK?w=329&h=184&c=7&o=5&pid=1.7','测试海洋',NULL,NULL,'测试海洋',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(75,'https://tse4-mm.cn.bing.net/th/id/OIP.fWGfwR7_y4Bv9WBnjt2EjAHaEK?w=288&h=180&c=7&o=5&pid=1.7','测试城市',NULL,NULL,'测试城市',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(76,'https://tse4-mm.cn.bing.net/th/id/OIP.TCR0JKKsyWlx0E4qAK7zsgHaEn?w=283&h=180&c=7&o=5&pid=1.7','测试天空',NULL,NULL,'测试天空',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(77,'https://tse2-mm.cn.bing.net/th/id/OIP.x2zZ7byPjv93pQxHPPI_4QHaEK?w=325&h=183&c=7&o=5&pid=1.7','测试湖泊2',NULL,NULL,'测试湖泊2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'https://tse3-mm.cn.bing.net/th/id/OIP.UW-4uS7kpK-AfNZ24PrBhwHaEo?w=288&h=180&c=7&o=5&pid=1.7','测试山峰',NULL,NULL,'测试山峰',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_agenda`
--

DROP TABLE IF EXISTS `activity_agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_agenda` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `activity_agenda` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '活动议程',
  `activity_id` int DEFAULT NULL COMMENT '活动id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动议程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_agenda`
--

LOCK TABLES `activity_agenda` WRITE;
/*!40000 ALTER TABLE `activity_agenda` DISABLE KEYS */;
INSERT INTO `activity_agenda` VALUES (42,'<section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 14px; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Noto Sans&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Symbol&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255); position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 5px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"padding-right: 10px; padding-left: 10px; -webkit-font-smoothing: antialiased; max-width: 100%; color: rgb(255, 255, 255); text-align: center; line-height: 1.9; letter-spacing: 2px; overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; background-color: rgb(59, 59, 59); overflow-wrap: break-word !important;\">滴次遇见为你制造的第一次线上相遇</span>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 14px; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Noto Sans&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Symbol&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255); overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><br style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 14px; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Noto Sans&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Symbol&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255); position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 5px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"padding-right: 10px; padding-left: 10px; -webkit-font-smoothing: antialiased; max-width: 100%; color: rgb(0, 0, 0); line-height: 1.9; letter-spacing: 1px; overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">我遇见你，我记得你</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">这座城市虽然忙碌，但是你适合恋爱</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">你天生就适合我的灵魂</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><br style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\"></p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">如果你开始恋爱</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">整个魔都都会飘上粉红色</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">迪士尼的旋木、大悦城的摩天轮</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">24小时影院、星空艺术馆…</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">如果还没有恋人，不如从外滩开始</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">先找到那个能与你探索粉色地图的TA</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">本周，一大波魔都优质单身青年</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">将会滴次（第一次）相遇</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">小编想看到你的身影</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">看到你幸福的样子</p></section></section></section>',62),(43,'<p><br><img src=\"http://cdn.huodongxing.com/file/ue/20190815/11F5008F93548D111131879F24667C6D0E/30793646607598206.jpg\" title=\"大纲海报2.jpeg\" alt=\"大纲海报2.jpeg\" style=\"-webkit-font-smoothing: antialiased; border-style: none; max-width: 100%; height: auto; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; font-size: 14px; text-align: center; background-color: rgb(255, 255, 255); overflow-wrap: break-word !important;\">&nbsp;&nbsp;<br></p>',63),(44,'<section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; text-align: justify; font-size: 14px; overflow-wrap: break-word !important;\"><p style=\"margin-top: 5px; margin-bottom: 5px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-family: PingFangSC-Light; overflow-wrap: break-word !important;\">艺术家麦麦伟作为</span><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-family: PingFangSC-Light; letter-spacing: 0px; overflow-wrap: break-word !important;\">本次运河外滩</span><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-family: PingFangSC-Light; letter-spacing: 0px; overflow-wrap: break-word !important;\">“潮动外滩 艺起新运”</span></span></span><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-family: PingFangSC-Light; letter-spacing: 0px; overflow-wrap: break-word !important;\">周年庆活动特邀艺术家，</span><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; letter-spacing: 0px; font-family: PingFangSC-Light; overflow-wrap: break-word !important;\">举办</span><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; letter-spacing: 0px; font-family: PingFangSC-Light; overflow-wrap: break-word !important;\">「画尤新生」艺术分享体验活动。</span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><br style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\"></p></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 10px; margin-bottom: 10px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; display: inline-block; max-width: 100%; vertical-align: bottom; width: 72.5938px; border-style: solid; border-width: 2px 6px 2px 2px; border-radius: 0px; border-color: rgb(213, 181, 113); overflow-wrap: break-word !important;\"><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; text-align: center; color: rgb(213, 181, 113); overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 18px; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\">01</span></span></p></section></section></section></section><section style=\"padding-left: 10px; -webkit-font-smoothing: antialiased; display: inline-block; max-width: 100%; vertical-align: bottom; width: 653.391px; overflow-wrap: break-word !important;\"><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 8px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; border-width: 0px 0px 1px; border-style: solid; border-bottom-color: rgb(213, 181, 113); color: rgb(213, 181, 113); overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 18px; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\">活动介绍</span></span></p></section></section></section></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; text-align: justify; font-size: 14px; overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-family: PingFangSC-Light; background-color: rgb(255, 255, 255); overflow-wrap: break-word !important;\">除了分享作为独立艺术家从业十年的心路历程，更给大家在新年里带来一份如向日葵般具有向阳新生的趣味艺术分享创造体验。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-family: PingFangSC-Light; background-color: rgb(255, 255, 255); overflow-wrap: break-word !important;\"><br style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\"></span></p></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 10px; margin-bottom: 10px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; display: inline-block; max-width: 100%; vertical-align: bottom; width: 72.5938px; border-style: solid; border-width: 2px 6px 2px 2px; border-radius: 0px; border-color: rgb(213, 181, 113); overflow-wrap: break-word !important;\"><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; text-align: center; color: rgb(213, 181, 113); overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 18px; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\">02</span></span></p></section></section></section></section><section style=\"padding-left: 10px; -webkit-font-smoothing: antialiased; display: inline-block; max-width: 100%; vertical-align: bottom; width: 653.391px; overflow-wrap: break-word !important;\"><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 8px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; border-width: 0px 0px 1px; border-style: solid; border-bottom-color: rgb(213, 181, 113); color: rgb(213, 181, 113); overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 18px; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\">时间地点</span></span></p></section></section></section></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 14px; overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\">活动时间：因疫情原因，活动延期，具体时间另行通知</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\">活动主题：「画尤新生」艺术分享&amp;手作体验</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\">活动人数：30名</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; background-color: rgb(255, 255, 255); overflow-wrap: break-word !important;\">活动福利：参加活动的小伙伴，可以另外获得一份小礼品哦</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><br style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\"></p></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 10px; margin-bottom: 10px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; display: inline-block; max-width: 100%; vertical-align: bottom; width: 72.5938px; border-style: solid; border-width: 2px 6px 2px 2px; border-radius: 0px; border-color: rgb(213, 181, 113); overflow-wrap: break-word !important;\"><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; text-align: center; color: rgb(213, 181, 113); overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 18px; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\">03</span></span></p></section></section></section></section><section style=\"padding-left: 10px; -webkit-font-smoothing: antialiased; display: inline-block; max-width: 100%; vertical-align: bottom; width: 653.391px; overflow-wrap: break-word !important;\"><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 8px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; border-width: 0px 0px 1px; border-style: solid; border-bottom-color: rgb(213, 181, 113); color: rgb(213, 181, 113); overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 18px; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; font-weight: bolder; max-width: 100%; overflow-wrap: break-word !important;\">艺术创作分享-Mulala</span></span></p></section></section></section></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"padding-left: 15px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><p style=\"margin-top: 5px; margin-bottom: 5px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-family: &quot;Helvetica Neue&quot;; letter-spacing: 0px; font-size: 14px; overflow-wrap: break-word !important;\">艺术家麦麦伟为我们带来了多年的艺术分享创作经历趣味分享</span></p><p style=\"margin-top: 5px; margin-bottom: 5px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-family: &quot;Helvetica Neue&quot;; color: rgb(51, 51, 51); font-size: 11px; letter-spacing: 0px; overflow-wrap: break-word !important;\"><img src=\"http://cdn.huodongxing.com/file/ue/20201228/11A16EA6B5E216941F6345F6DB41ACA891/30584014654969507.jpeg\" title=\"图片1.png\" alt=\"图片1.png\" style=\"-webkit-font-smoothing: antialiased; border-style: none; max-width: 100%; height: auto; overflow-wrap: break-word !important;\"></span></p><p style=\"margin-top: 5px; margin-bottom: 5px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><br style=\"-webkit-font-smoothing: antialiased; max-width: 100%; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); overflow-wrap: break-word !important;\"></p></section></section>',65),(45,'file_ip/<p>阿大声道</p>',70);
/*!40000 ALTER TABLE `activity_agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_detail`
--

DROP TABLE IF EXISTS `activity_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_detail` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `activity_detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '活动详情',
  `activity_id` int DEFAULT NULL COMMENT '活动id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动详情';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_detail`
--

LOCK TABLES `activity_detail` WRITE;
/*!40000 ALTER TABLE `activity_detail` DISABLE KEYS */;
INSERT INTO `activity_detail` VALUES (44,'<section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 14px; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Noto Sans&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Symbol&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255); position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 10px; margin-bottom: 10px; -webkit-font-smoothing: antialiased; max-width: 100%; text-align: center; position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 0.9em; padding: 2px; -webkit-font-smoothing: antialiased; display: inline-block; max-width: 100%; border: 1px solid rgba(255, 211, 196, 0.5); vertical-align: middle; overflow-wrap: break-word !important;\"><section style=\"padding-right: 15px; padding-left: 15px; -webkit-font-smoothing: antialiased; max-width: 100%; border: 1px solid rgba(255, 211, 196, 0.5); color: rgb(151, 156, 170); overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">活动简介</p></section></section><section style=\"margin-left: -1.1em; -webkit-font-smoothing: antialiased; display: inline-block; max-width: 100%; width: 2.2em; transform: rotate(0deg); vertical-align: top; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; display: inline-block; max-width: 100%; overflow-wrap: break-word !important; overflow: hidden !important;\"><img src=\"http://cdn.huodongxing.com/file/20150702/1130747FDBCF2763D34E27A28425C2341C/4f9dd569aac37a9aa581dac4efcbcf98-sz_157525.gif\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; height: auto; overflow-wrap: break-word !important;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</section></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-size: 14px; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Noto Sans&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Symbol&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255); overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\"><br style=\"-webkit-font-smoothing: antialiased; max-width: 100%; overflow-wrap: break-word !important;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></section></section></section><section powered-by=\"xiumi.us\" style=\"-webkit-font-smoothing: antialiased; max-width: 100%; color: rgb(51, 51, 51); font-size: 14px; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Noto Sans&quot;, &quot;Noto Sans CJK SC&quot;, &quot;Microsoft YaHei&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Symbol&quot;, Arial, sans-serif; background-color: rgb(255, 255, 255); position: static; overflow-wrap: break-word !important;\"><section style=\"margin-top: 5px; -webkit-font-smoothing: antialiased; max-width: 100%; position: static; overflow-wrap: break-word !important;\"><section style=\"padding-right: 10px; padding-left: 10px; -webkit-font-smoothing: antialiased; max-width: 100%; line-height: 1.9; letter-spacing: 1px; overflow-wrap: break-word !important;\"><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">滴次遇见每周六、日举办线上1v1匹配交友活动</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">为在上海奋斗的优秀的你提供相遇的机会</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">我们大部分来自于<span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; color: rgb(255, 125, 146); overflow-wrap: break-word !important;\"><span style=\"-webkit-font-smoothing: antialiased; max-width: 100%; font-weight: bolder; overflow-wrap: break-word !important;\">外地</span></span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">并没有什么特殊背景</p><p style=\"margin-top: 0px; margin-bottom: 0px; -webkit-font-smoothing: antialiased; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; max-width: 100%; overflow-wrap: break-word !important;\">我们作为单身狗也想要成功脱单&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p></section></section></section>',62),(45,'file_ip/<p>啊实打</p>',70);
/*!40000 ALTER TABLE `activity_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_file`
--

DROP TABLE IF EXISTS `activity_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_file` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `addr` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地址',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `activity_id` int DEFAULT NULL COMMENT '活动id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_file`
--

LOCK TABLES `activity_file` WRITE;
/*!40000 ALTER TABLE `activity_file` DISABLE KEYS */;
INSERT INTO `activity_file` VALUES (2,'http://192.168.0.108/image/2021/01/03/604ef94f3fd701209dfd20a0d5a45cdb.jpg','4.jpg',62),(3,'http://192.168.0.108/image/2021/01/04/85ae2dc323bfbf67a2e2e00458714fdf.png','11.png',63),(4,'http://127.0.0.1/image/2021/01/06/210c6dc8e2d05bf48ab6fccf688006f6.jpg','7.jpg',62),(6,'http://127.0.0.1/image/2021/01/21/5eddccc8f88c0944a352e72b58891003.docx','bug列表.docx',70),(7,'http://127.0.0.1/image/2021/01/21/b1bc07d1a6719f2dc6d2c3c4adc85e3a.png','二维码.png',70);
/*!40000 ALTER TABLE `activity_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_notice`
--

DROP TABLE IF EXISTS `activity_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_notice` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `activity_notice` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '活动通知',
  `activity_id` int DEFAULT NULL COMMENT '活动id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_notice`
--

LOCK TABLES `activity_notice` WRITE;
/*!40000 ALTER TABLE `activity_notice` DISABLE KEYS */;
INSERT INTO `activity_notice` VALUES (1,'test',1);
/*!40000 ALTER TABLE `activity_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_type`
--

DROP TABLE IF EXISTS `activity_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_type` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='活动类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_type`
--

LOCK TABLES `activity_type` WRITE;
/*!40000 ALTER TABLE `activity_type` DISABLE KEYS */;
INSERT INTO `activity_type` VALUES (8,'行业'),(9,'生活'),(10,'亲子'),(11,'学习'),(12,'测试');
/*!40000 ALTER TABLE `activity_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator_user`
--

DROP TABLE IF EXISTS `administrator_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `account` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `account_status` tinyint(1) DEFAULT NULL COMMENT '账号状态（1：正常 0：冻结）',
  `registration_time` datetime DEFAULT NULL COMMENT '注册时间',
  `login_times` int DEFAULT NULL COMMENT '登录次数',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `role_management_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色管理id',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '盐加密',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100003 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator_user`
--

LOCK TABLES `administrator_user` WRITE;
/*!40000 ALTER TABLE `administrator_user` DISABLE KEYS */;
INSERT INTO `administrator_user` VALUES (100001,'hdadmin','活动管理员',1,'2020-04-01 15:03:05',109,'2021-02-22 09:31:21','1b967258e7db8992aed740faf9863811','9999',NULL),(100002,'admin','管理员',1,'2021-01-21 10:17:16',6,'2021-05-14 10:01:34','04dec55a2b517cce43d32f3eeb7e4a49','9999','p9ArrD');
/*!40000 ALTER TABLE `administrator_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertising`
--

DROP TABLE IF EXISTS `advertising`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advertising` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型（1：pc端 0：移动端）',
  `advertising_photo` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '广告图',
  `advertising_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '广告标题',
  `rank` int DEFAULT NULL COMMENT '排序',
  `link` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '链接',
  `activity_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '活动编号',
  `release_person_id` int DEFAULT NULL COMMENT '发布人id',
  `release_person_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布人姓名',
  `release_time` datetime DEFAULT NULL COMMENT '发布时间',
  `del_status` tinyint(1) DEFAULT NULL COMMENT '删除状态（1：正常 0：已删除）',
  `graphic_details` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '图文详情',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertising`
--

LOCK TABLES `advertising` WRITE;
/*!40000 ALTER TABLE `advertising` DISABLE KEYS */;
INSERT INTO `advertising` VALUES (12,0,'https://cdn.microsoftstore.com.cn/media/homepage/210621_homepagebanner_PC_2.jpg','搞定大脑',1,NULL,NULL,1064,'南京技术','2021-01-03 18:56:54',NULL,'<p>啊实打实多</p>'),(13,0,'https://cdn.microsoftstore.com.cn/media/category/commercial/0413_commercialbanner_PC_1.jpg','活动执行攻略',2,NULL,NULL,1064,'南京技术','2021-01-03 18:57:36',NULL,NULL),(14,0,'https://cdn.microsoftstore.com.cn/media/WL-Banner/microsoft-365-category/banner-pc-1.jpg','自信表达',3,NULL,NULL,1064,'南京技术','2021-01-03 18:58:12',NULL,NULL),(15,1,'https://imgcps.jd.com/ling4/4918116/576O5aaG54Ot6ZSA5aW96LSn/6YOo5YiG5Y2V5ZOB5LmwMei1oDE/p-5bd8253082acdd181d02f9e3/50e92dc6/cr/s/q.jpg','测试广告图',1,NULL,NULL,100001,'活动管理员','2021-01-21 10:11:37',NULL,'<p>差的是大多数都</p>');
/*!40000 ALTER TABLE `advertising` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advice_feedback`
--

DROP TABLE IF EXISTS `advice_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advice_feedback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_account` int DEFAULT NULL COMMENT '用户账号',
  `feedback_comtent` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '反馈内容',
  `picture` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '图片',
  `feedback_time` datetime DEFAULT NULL COMMENT '反馈时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='意见反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advice_feedback`
--

LOCK TABLES `advice_feedback` WRITE;
/*!40000 ALTER TABLE `advice_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `advice_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_problem`
--

DROP TABLE IF EXISTS `common_problem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `common_problem` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `problem` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '问题',
  `answer` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '回答',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='常见问题';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_problem`
--

LOCK TABLES `common_problem` WRITE;
/*!40000 ALTER TABLE `common_problem` DISABLE KEYS */;
INSERT INTO `common_problem` VALUES (1,'如何开发票？','请在活动报名订单中，可点击“开发票”，保存或截图二维码，添加主办方客服微信。'),(2,'如何发布活动？','登录主办方平台（“旗下平台”下拉框），在活动管理页面点击“发布活动”，活动提交后平台将进行活动审核，审核成功后，活动自动发布成功。请及时查看审核结果及报名情况。'),(3,'发布的活动审核失败了怎么办？','对于审核失败的活动，可根据审核失败原因重新编辑后再次提交审核。如有疑问请联系审核反馈的联系方式。');
/*!40000 ALTER TABLE `common_problem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_user`
--

DROP TABLE IF EXISTS `common_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `common_user` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `system_account` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '系统账号',
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '昵称',
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '手机号',
  `registration_activities` int DEFAULT NULL COMMENT '报名活动（场）',
  `sign_in_activities` int DEFAULT NULL COMMENT '签到活动（场）',
  `registration_time` datetime DEFAULT NULL COMMENT '注册时间',
  `account_status` tinyint(1) DEFAULT NULL COMMENT '账号状态（1：正常 0：冻结）',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '密码',
  `head_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  `id_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '身份证号',
  `unionid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'unionid',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '盐加密',
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'openid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=433 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC COMMENT='普通用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_user`
--

LOCK TABLES `common_user` WRITE;
/*!40000 ALTER TABLE `common_user` DISABLE KEYS */;
INSERT INTO `common_user` VALUES (1,'test','tet','15751158963',12,12,'2021-01-03 18:13:59',2,'123456',NULL,'23123',NULL,NULL,NULL),(432,'xhd','dich','15751158963',12,11,'2021-01-03 18:13:55',1,'123456',NULL,'320982199310054274',NULL,NULL,NULL);
/*!40000 ALTER TABLE `common_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enter_company`
--

DROP TABLE IF EXISTS `enter_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enter_company` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位名称',
  `contact_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '联系人姓名',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手机号（登录）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '邮箱（登录）',
  `registration_time` datetime DEFAULT NULL COMMENT '注册时间',
  `account_status` tinyint(1) DEFAULT NULL COMMENT '账号状态（1：正常 0：冻结）',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '密码',
  `check_status` tinyint(1) DEFAULT NULL COMMENT '审核状态（0：待审核 1：审核成功  2：审核失败）',
  `check_time` datetime DEFAULT NULL COMMENT '审核时间',
  `check_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核备注',
  `company_logo` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位LOGO',
  `company_addr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位地址',
  `company_legal_person` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位法人',
  `business_license_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '营业执照注册号',
  `business_license` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '营业执照',
  `company_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '单位详情',
  `company_nature` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位性质',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '省',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '市',
  `openid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'openid',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '盐加密',
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '昵称',
  `head_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1069 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='入驻单位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter_company`
--

LOCK TABLES `enter_company` WRITE;
/*!40000 ALTER TABLE `enter_company` DISABLE KEYS */;
INSERT INTO `enter_company` VALUES (1059,'主办方1','联系人1','18911111111','111111112@163.com','2021-01-03 17:17:28',1,'1b967258e7db8992aed740faf9863811',1,'2021-02-22 09:17:02',NULL,'http://127.0.0.1/image/2021/02/22/11a89df748146bba9f0a312a1d950467.png',NULL,NULL,'11111111111','http://127.0.0.1/image/2021/01/03/13b31dd0de9b1ef91c6c83c6d43f4f6a.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1063,'主办方3','联系人3','18933333333','33333334@qq.com','2021-01-03 17:25:21',1,'1b967258e7db8992aed740faf9863811',1,'2021-01-20 14:00:53',NULL,'http://127.0.0.1/image/2021/01/04/a59de6b53d3ad9711ffc3ace4f9620b5.jpg',NULL,NULL,'33333333','http://127.0.0.1/image/2021/01/03/9bfdf1036efc61d41c9cbbbea6664f0c.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1064,'主办方2','联系人2','18922222222','222222222@163.com','2021-01-03 17:26:24',1,'1b967258e7db8992aed740faf9863811',1,'2021-01-04 15:45:12',NULL,'http://127.0.0.1/image/2021/01/04/f9f0aa41858de1c907e85e6362c4374d.jpg',NULL,NULL,'222222222','http://127.0.0.1/image/2021/01/03/7b1d686ddf3f9cad71cd57db448b9ed6.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1065,'主办方5','联系人5','18955555555','55555@qq.com','2021-01-20 13:24:48',1,NULL,1,NULL,NULL,NULL,NULL,NULL,'555555555','http://127.0.0.1/image/2021/01/20/cc9321162285175f548edfdd6b796cd5.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1066,'112312','21312312','18977777777','12131231@qq.com','2021-01-20 13:45:59',1,'1b967258e7db8992aed740faf9863811',1,NULL,NULL,NULL,NULL,NULL,'12312312','http://127.0.0.1/image/2021/01/20/3d3acedfd4d8565ae6c064797ac49b0e.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1067,'主办方6','联系人6','18966666666','6666666@qq.com','2021-01-20 16:49:16',NULL,'a448410bdcbb4d7cfb32830909f6aa08',1,NULL,NULL,NULL,NULL,NULL,'6666666','http://127.0.0.1/image/2021/01/20/88d37f7236ff02408b4d5973644eff35.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1068,'主办方7','联系人7','1897777777','777777@qq.com','2021-02-22 09:22:51',1,'a448410bdcbb4d7cfb32830909f6aa08',1,NULL,NULL,NULL,NULL,NULL,'77777777777777777','http://127.0.0.1/image/2021/02/22/1d77a7e5bc44181a4dadde458d6c10c7.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `enter_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enter_company_gathering_info`
--

DROP TABLE IF EXISTS `enter_company_gathering_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enter_company_gathering_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `wx_collection_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信收款名称',
  `wx_collection_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信收款二维码',
  `zfb_collection_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付宝收款名称',
  `zfb_collection_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '支付宝收款二维码',
  `yh_collection_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行收款户名',
  `yh_collection_acount` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行收款账号',
  `yh_collection_bank` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行收款开户行',
  `enter_company_id` int DEFAULT NULL COMMENT '入驻单位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='入驻单位收款信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enter_company_gathering_info`
--

LOCK TABLES `enter_company_gathering_info` WRITE;
/*!40000 ALTER TABLE `enter_company_gathering_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `enter_company_gathering_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '生成功能作者',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '=' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '字典类型',
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `give_like`
--

DROP TABLE IF EXISTS `give_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `give_like` (
  `id` int NOT NULL AUTO_INCREMENT,
  `activity_id` int DEFAULT NULL,
  `notice_announcement_id` int DEFAULT NULL,
  `common_user_id` int DEFAULT NULL,
  `news_info_id` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `give_like`
--

LOCK TABLES `give_like` WRITE;
/*!40000 ALTER TABLE `give_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `give_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_center`
--

DROP TABLE IF EXISTS `help_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_center` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `problem` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '用户账号',
  `answer` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '反馈内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='帮助中心';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_center`
--

LOCK TABLES `help_center` WRITE;
/*!40000 ALTER TABLE `help_center` DISABLE KEYS */;
INSERT INTO `help_center` VALUES (5,'如何开发票？','请在活动报名订单中，可点击“开发票”，保存或截图二维码，添加主办方客服微信。'),(6,'如何发布活动？','登录主办方平台（“旗下平台”下拉框），在活动管理页面点击“发布活动”，活动提交后平台将进行活动审核，审核成功后，活动自动发布成功。请及时查看审核结果及报名情况。'),(10,'发布的活动审核失败了怎么办？','对于审核失败的活动，可根据审核失败原因重新编辑后再次提交审核。如有疑问请联系审核反馈的联系方式。');
/*!40000 ALTER TABLE `help_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_evaluation`
--

DROP TABLE IF EXISTS `live_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `live_evaluation` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `time` datetime DEFAULT NULL COMMENT '时间',
  `file` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '文件',
  `user_id` int DEFAULT NULL COMMENT '用户id',
  `activity_id` int DEFAULT NULL COMMENT '活动id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=238 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='直播评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_evaluation`
--

LOCK TABLES `live_evaluation` WRITE;
/*!40000 ALTER TABLE `live_evaluation` DISABLE KEYS */;
INSERT INTO `live_evaluation` VALUES (173,'小伙伴快来分享你发现的美好吧','2020-04-01 17:26:32','https://file.sdcjlm.cn//profile//2020/04/01/feffc56817902167258af2baa060e3a8.png',23,50),(185,NULL,'2020-04-02 10:42:30','https://file.sdcjlm.cn//profile//2020/04/02/6eae88212d6ab20293bf8312515bea79.jpg',23,44),(186,'很棒','2020-04-02 10:42:34',NULL,23,44),(187,'很棒','2020-04-02 10:45:25','https://file.sdcjlm.cn//profile//2020/04/02/96cafc91929eed1eb824e0080655dfaa.jpg,https://file.sdcjlm.cn//profile//2020/04/02/ee6fe97edd79d3e7c6f96762b131cb49.png',23,50),(189,'嗨·朋友','2020-04-02 10:52:01','https://file.sdcjlm.cn//profile//2020/04/02/c7dd05bc4949500dbf06507abc50e215.jpg,https://file.sdcjlm.cn//profile//2020/04/02/381ccf568d77ab76619d27ac2f4b5c0c.jpg,https://file.sdcjlm.cn//profile//2020/04/02/c7cb25c2bc9206136411a932176a5b62.jpg,https://file.sdcjlm.cn//profile//2020/04/02/80b589aa625f7738272d0aa4d3fcd4d8.jpg',23,50),(190,NULL,'2020-04-02 10:54:45','https://file.sdcjlm.cn//profile//2020/04/02/aec3aa12886bada54a506b2051f9c0d3.jpg,https://file.sdcjlm.cn//profile//2020/04/02/e82d1f72cd8d7e1d8c5c6f408d5eedea.jpg,https://file.sdcjlm.cn//profile//2020/04/02/f03262b18206ce37bb429faf961484f3.jpg,https://file.sdcjlm.cn//profile//2020/04/02/92b8c481c957d06c2d6d039c8024bbd1.jpg,https://file.sdcjlm.cn//profile//2020/04/02/2a370e0dceb860ea6a5ba406b829a648.png,https://file.sdcjlm.cn//profile//2020/04/02/578e2539d9658d38f2c52364fc6f81ff.jpg,https://file.sdcjlm.cn//profile//2020/04/02/6f1c8d8fecb086b9b8b76ff6471ad42f.jpg',23,50),(192,'真开心！！！','2020-04-02 11:13:29','https://file.sdcjlm.cn//profile//2020/04/02/b5778a0aaba4662a1b1fc126982cfb02.jpg,https://file.sdcjlm.cn//profile//2020/04/02/2db8f7f7c4d6c465828c49a0c1b22fb3.jpg,https://file.sdcjlm.cn//profile//2020/04/02/a891e68dc26c707da52023da8e549965.jpg,https://file.sdcjlm.cn//profile//2020/04/02/bc704ad9c646e491f0cc5e1f875e4015.jpg',1,50),(193,'好开心好棒！！','2020-04-02 11:14:24','https://file.sdcjlm.cn//profile//2020/04/02/39f590d87c640114e3c455b75d0ff406.jpg,https://file.sdcjlm.cn//profile//2020/04/02/9aca0be6bda876e5aa20d90652243c13.jpg',1,50),(195,'6666666','2020-04-02 14:01:44','https://file.sdcjlm.cn//profile//2020/04/02/23dea2cea42256137e3a2708c7d16e40.jpg,https://file.sdcjlm.cn//profile//2020/04/02/97c6ab0438a7ec052393364a8619dedd.jpg,https://file.sdcjlm.cn//profile//2020/04/02/f52bd6b8beb9b01a435354d18d4af82e.jpg,https://file.sdcjlm.cn//profile//2020/04/02/055cccc34d774ce1c1d903ca5e199a35.jpg',1,50),(196,NULL,'2020-04-02 15:15:01','https://file.sdcjlm.cn//profile//2020/04/02/ff49e9318455a1a5e6c9585e5f834542.png,https://file.sdcjlm.cn//profile//2020/04/02/232f838b5a70af11ce31b4cf93df85ba.png,https://file.sdcjlm.cn//profile//2020/04/02/5270e02c7b29c87e745a192a386097d7.png,https://file.sdcjlm.cn//profile//2020/04/02/7eecdd92e3ed723b1383eec71b05766c.jpg,https://file.sdcjlm.cn//profile//2020/04/02/09a47531be905058996aaab0604e7dd8.jpg,https://file.sdcjlm.cn//profile//2020/04/02/b42b7c6cfb80cdb6140b5e45f2d4c4e8.jpg,https://file.sdcjlm.cn//profile//2020/04/02/ec6973438d5d37860bcd1f996e492a82.jpg,https://file.sdcjlm.cn//profile//2020/04/02/147624d5bc55835dafec90670fddf284.png',23,50),(198,'哈哈哈哈哈~~~','2020-04-02 15:21:41','https://file.sdcjlm.cn//profile//2020/04/02/9c529984b6c29060a374c90a8d366d7f.png,https://file.sdcjlm.cn//profile//2020/04/02/93a1fe1b871452eba45c57ee421fcbb4.png,https://file.sdcjlm.cn//profile//2020/04/02/6a94dfb976edeebfca42f0a3fde1920b.png,https://file.sdcjlm.cn//profile//2020/04/02/a5687726554602f4b1b73586fd4443d5.jpg,https://file.sdcjlm.cn//profile//2020/04/02/ca8e05602ce757e28b5eb41a86295875.jpg,https://file.sdcjlm.cn//profile//2020/04/02/4950a8dbba91c76a81b8582918722d0d.png,https://file.sdcjlm.cn//profile//2020/04/02/74b14e61626165eefaf48818c7135a3e.jpg,https://file.sdcjlm.cn//profile//2020/04/02/38d79cbff56a9c126b36ea5c65d339f9.jpg',1,50),(199,NULL,'2020-04-02 15:23:19','https://file.sdcjlm.cn//profile//2020/04/02/9f4aacdfe835ea041d9bd32188a7b3d1.jpg,https://file.sdcjlm.cn//profile//2020/04/02/f8a09532f723c62da77e205d5a3d4eb6.jpg,https://file.sdcjlm.cn//profile//2020/04/02/4c27bedd70a90060713d1cefe989e7dd.jpg,https://file.sdcjlm.cn//profile//2020/04/02/9394b0363a035bd560e3ba9b9ad936f8.png,https://file.sdcjlm.cn//profile//2020/04/02/b9b2e4fd28729320f6867307fd4e2319.jpg,https://file.sdcjlm.cn//profile//2020/04/02/cc0c603f4e2013d8588a56f5317c25ec.png,https://file.sdcjlm.cn//profile//2020/04/02/f29efda2b545badbb40b5f978e1f32b3.png,https://file.sdcjlm.cn//profile//2020/04/02/6f3e6ba343847b899a0917007a939bb1.jpg',23,50),(200,NULL,'2020-04-02 15:26:01','https://file.sdcjlm.cn//profile//2020/04/02/8edfffd52737d879b806ff751286d768.png,https://file.sdcjlm.cn//profile//2020/04/02/9e6508db348e83898dfee45717b972db.png,https://file.sdcjlm.cn//profile//2020/04/02/b794d173c1dab3dceec61625df2e7bd0.png,https://file.sdcjlm.cn//profile//2020/04/02/0ccc7b0ee1686a40a96783dd9bca6cd5.png,https://file.sdcjlm.cn//profile//2020/04/02/6865fd514ba3cec7cd2e380c94ba3dc6.png,https://file.sdcjlm.cn//profile//2020/04/02/49a644fbd6002418c027512e9f8b14d5.png,https://file.sdcjlm.cn//profile//2020/04/02/f2eda9576b9b93135ead72c190ee2f1c.png,https://file.sdcjlm.cn//profile//2020/04/02/ef12422e1aaa664978ccba7d9e24c7ea.png',4,50),(201,'恢复规划','2020-04-02 16:35:47','https://file.sdcjlm.cn//profile//2020/04/02/08d97e9506a28d7bac39cf09570ae14b.png',4,50),(202,NULL,'2020-04-02 16:41:38','https://file.sdcjlm.cn//profile//2020/04/02/d2ee35877682215a71b9f50107e7deb3.png,https://file.sdcjlm.cn//profile//2020/04/02/098b7ce8df9fdf560b21ed6857ac8425.png,https://file.sdcjlm.cn//profile//2020/04/02/5e4455614a1a815a8d19d791e7fd88be.png,https://file.sdcjlm.cn//profile//2020/04/02/731866bd4f69facb259c32183e8386ba.png,https://file.sdcjlm.cn//profile//2020/04/02/dbb616442adfd1d0f43ed3110d4dc0ec.png,https://file.sdcjlm.cn//profile//2020/04/02/a331f55dc081364b2ce160f7536b6b21.png,https://file.sdcjlm.cn//profile//2020/04/02/d3fe013a7a7d20d431bcffdb32a3b036.png,https://file.sdcjlm.cn//profile//2020/04/02/6e341ff47ce6f6e08ee9de070416c76a.png',4,50),(203,NULL,'2020-04-02 16:46:41','https://file.sdcjlm.cn//profile//2020/04/02/6ee9c8cf977115dc44f4a1ba1969ac55.png,https://file.sdcjlm.cn//profile//2020/04/02/f0ce44472f73768bb88868d28a7df7ab.png,https://file.sdcjlm.cn//profile//2020/04/02/695c021c8ef2eee3fd22141d54d69ebf.png,https://file.sdcjlm.cn//profile//2020/04/02/8915d794cd9d7bf653ff815dfac32eaf.png,https://file.sdcjlm.cn//profile//2020/04/02/f770ea0ed3f55f204e2b409436a6149f.png,https://file.sdcjlm.cn//profile//2020/04/02/eff4fa1081fb8902cb74072f65cd96d9.png,https://file.sdcjlm.cn//profile//2020/04/02/3c0c9e98fc8f4f4c7660c186f7e89aec.png',4,50),(204,'~~~~~~~~啧啧','2020-04-02 16:47:29','https://file.sdcjlm.cn//profile//2020/04/02/af187e915b9a74666ab3c1225b45c818.jpg,https://file.sdcjlm.cn//profile//2020/04/02/616963a90289b8a615346fa03c1c2a66.jpg,https://file.sdcjlm.cn//profile//2020/04/02/577fbcd2399eff3f3aebe0b1498076ab.jpg,https://file.sdcjlm.cn//profile//2020/04/02/c8457552e20af05030bc2b1d86ded6d0.jpg,https://file.sdcjlm.cn//profile//2020/04/02/d808491eb06f86a572a28376084d4152.jpg,https://file.sdcjlm.cn//profile//2020/04/02/40f1b1e329825500c8958fc31b99fbbb.jpg,https://file.sdcjlm.cn//profile//2020/04/02/5776b434610e47630f915d1d941cb82d.jpg,https://file.sdcjlm.cn//profile//2020/04/02/f86a1c0786ed9af55b1836ef2417e3a5.jpg',13,50),(205,NULL,'2020-04-02 16:49:25','https://file.sdcjlm.cn//profile//2020/04/02/4ddb96b92f6a8462ef758bdc75111795.png,https://file.sdcjlm.cn//profile//2020/04/02/9697f69c7aef0af0a17d613d674953c5.png,https://file.sdcjlm.cn//profile//2020/04/02/01af89ec3ea71ba26307683451c520d6.png,https://file.sdcjlm.cn//profile//2020/04/02/c5806b369cf08cb9b89f3c65c93744f8.png,https://file.sdcjlm.cn//profile//2020/04/02/ad5b9eec18d00a372c57a0faf9ed6797.png,https://file.sdcjlm.cn//profile//2020/04/02/ed18fc7ee674d1f7bcc3f10a8d6f6aac.png,https://file.sdcjlm.cn//profile//2020/04/02/b00caf96ea7d1be02471db4774b8f999.png,https://file.sdcjlm.cn//profile//2020/04/02/ecbab5d40d4629cbf5a80dd83c04527d.png',4,50),(206,NULL,'2020-04-02 16:53:14','https://file.sdcjlm.cn//profile//2020/04/02/de23a2df6bda69a368449e17a7f65c44.png,https://file.sdcjlm.cn//profile//2020/04/02/7ebfb8a6fd04218c9de5d444305ccc72.png,https://file.sdcjlm.cn//profile//2020/04/02/bdc9d70d56428afef779b05e2a1e9ac5.png,https://file.sdcjlm.cn//profile//2020/04/02/256810dfb4a2255503e44ad9514d755f.png,https://file.sdcjlm.cn//profile//2020/04/02/e4da44b2a7e350fffa55a31823a97c44.png,https://file.sdcjlm.cn//profile//2020/04/02/65bc3c1a357de19612e9101210efac79.png,https://file.sdcjlm.cn//profile//2020/04/02/7bd8e3e194494656473c9467b4040d8a.png,https://file.sdcjlm.cn//profile//2020/04/02/a2f73340c036811a7c512d6a86adfeae.png',4,50),(207,NULL,'2020-04-02 16:58:53','https://file.sdcjlm.cn//profile//2020/04/02/fd1b4d728e35a2345a1c47fd55592e83.png,https://file.sdcjlm.cn//profile//2020/04/02/09251ee642588752577f85db41cb2826.png,https://file.sdcjlm.cn//profile//2020/04/02/b0313d130b3f1be1972fb689835fe8ef.png,https://file.sdcjlm.cn//profile//2020/04/02/d8d9effb1e2821fb1c1d4e0ab4e3ebff.png,https://file.sdcjlm.cn//profile//2020/04/02/1cba2af35e55c3dd8629756d2e92f106.png,https://file.sdcjlm.cn//profile//2020/04/02/30e46e4cd649a7a671781a434b57659a.png,https://file.sdcjlm.cn//profile//2020/04/02/6da42fc72f8bce2a50fe0b960be0e425.png,https://file.sdcjlm.cn//profile//2020/04/02/9370dd76bddebd0ea9600c039355d45c.png',4,50),(208,NULL,'2020-04-02 16:59:21','https://file.sdcjlm.cn//profile//2020/04/02/7847a27bdf3e4224914eae530550e2c7.png,https://file.sdcjlm.cn//profile//2020/04/02/a063de646c7568781dd5ce7f9038bf93.png,https://file.sdcjlm.cn//profile//2020/04/02/18360d184d13bc707a31b700ca0c97c1.png,https://file.sdcjlm.cn//profile//2020/04/02/a8e031b2186e47bb8d8fc399541760e2.png,https://file.sdcjlm.cn//profile//2020/04/02/1edf6934f484f00ac9313840f3ae9744.png,https://file.sdcjlm.cn//profile//2020/04/02/84c9269b8abfeb563cfdc06a22db5518.png,https://file.sdcjlm.cn//profile//2020/04/02/ec53953c44d74b2be1ddd400e06809fa.png,https://file.sdcjlm.cn//profile//2020/04/02/e06191219fef1700eb833cfa509b5d67.png',4,50),(209,NULL,'2020-04-02 17:02:43','https://file.sdcjlm.cn//profile//2020/04/02/12fe7945dd4a4f37d60416f914baebf4.png',4,50),(210,NULL,'2020-04-02 17:03:25','https://file.sdcjlm.cn//profile//2020/04/02/b26d93e6620594c16c65fb57a813c561.png,https://file.sdcjlm.cn//profile//2020/04/02/ca35eac193b59e0783c56ea3dedf1064.png,https://file.sdcjlm.cn//profile//2020/04/02/25a974339a8869687a792f53a7c6abea.png,https://file.sdcjlm.cn//profile//2020/04/02/a1bef2618d9fbae4314c9751ab937ad4.png,https://file.sdcjlm.cn//profile//2020/04/02/7fe0fd9d1dbeb52f8962f0e556326610.png,https://file.sdcjlm.cn//profile//2020/04/02/8388d962912b96620833170ff8cf424d.png,https://file.sdcjlm.cn//profile//2020/04/02/6f6401c7576a991291d2e4a7775b901d.png,https://file.sdcjlm.cn//profile//2020/04/02/b861e470c641087f334d0bad240b619c.png',4,50),(211,'1','2020-04-02 17:15:44',NULL,13,50),(212,'2','2020-04-02 17:17:24',NULL,13,50),(213,NULL,'2020-04-02 17:17:34','https://file.sdcjlm.cn//profile//2020/04/02/4b6290b10134a1d52d7210e01451eab7.jpg',13,50),(214,NULL,'2020-04-02 17:25:27','https://file.sdcjlm.cn//profile//2020/04/02/b45d3eed3eb57c1bfb96620dafd4fe5b.jpg',13,50),(215,'3','2020-04-02 17:25:44',NULL,13,50),(216,'1','2020-04-02 18:39:53',NULL,13,50),(217,'34234234','2020-04-02 18:43:19','https://file.sdcjlm.cn//profile//2020/04/02/1b5e40918859f5817e8d6c69d31881e9.png,https://file.sdcjlm.cn//profile//2020/04/02/9003e23477d89d06c649672db5f44b58.png,https://file.sdcjlm.cn//profile//2020/04/02/46338fee58fc874e24638ebd7bca4836.png,https://file.sdcjlm.cn//profile//2020/04/02/b3f130b27c6a8d8a49729170588b1a1c.png,https://file.sdcjlm.cn//profile//2020/04/02/49271e93c8a268b2fa7130a1660d1979.png,https://file.sdcjlm.cn//profile//2020/04/02/d17d78877b4c811e09778634f9d85454.png,https://file.sdcjlm.cn//profile//2020/04/02/f3954b556102e46d25e0b65b9a762520.png,https://file.sdcjlm.cn//profile//2020/04/02/0e63575fe43d189ba64d5b301ea1e812.png',4,50),(218,NULL,'2020-04-02 18:45:10','https://file.sdcjlm.cn//profile//2020/04/02/0e3282887eb29eca7bc9dd8397029a81.jpg',13,50),(219,'1','2020-04-02 23:26:53',NULL,13,50),(220,'3','2020-04-02 23:27:49',NULL,13,50),(222,'hahaha~~~','2020-04-03 09:43:51','https://file.sdcjlm.cn//profile//2020/04/03/7e002a419ca5c55d6d28d4300dcbfeca.png,https://file.sdcjlm.cn//profile//2020/04/03/45086b75620bb4c59b79f6f6e182a9e0.png,https://file.sdcjlm.cn//profile//2020/04/03/b2e096a9948db5c7c78683f988a581fb.jpg,https://file.sdcjlm.cn//profile//2020/04/03/72efa7e6adac96a8d24836325f94fd83.png,https://file.sdcjlm.cn//profile//2020/04/03/25b407a3e52153aa0e845386e050d3ac.jpg,https://file.sdcjlm.cn//profile//2020/04/03/eb6881ae6d9c08c30ba1cd757f2a95d7.png,https://file.sdcjlm.cn//profile//2020/04/03/7f2c7066a06a7697f70e867dfa998ecb.jpg,https://file.sdcjlm.cn//profile//2020/04/03/111454414b6b3282b287e90f2c8b18bc.jpg',1,50),(225,'感谢主办方，玩的非常开心~~~','2020-04-03 18:32:06','https://file.sdcjlm.cn//profile//2020/04/03/afd731f955077f8f3102683557de0ed6.png',1,50),(226,'azsA','2020-04-07 09:09:42',NULL,1031,51),(227,'好','2020-04-07 10:35:11',NULL,306,50),(228,'20200408','2020-04-08 10:42:44',NULL,13,50),(229,'20200408  10:47','2020-04-08 10:47:08',NULL,13,50),(230,'20200408 10:48','2020-04-08 10:47:53',NULL,13,50),(231,'SOS','2020-04-08 17:10:24',NULL,378,51),(232,NULL,'2020-04-08 17:32:12','https://file.sdcjlm.cn//profile//2020/04/08/d8837a4bbcdf7f144a3de67b15bc4025.jpg',205,50),(233,NULL,'2020-04-08 17:32:46','https://file.sdcjlm.cn//profile//2020/04/08/3bee9f883fc4cd09fcfe2c744f5bee3e.jpg',205,50),(234,'只能发一张图','2020-04-08 17:33:18',NULL,205,50),(235,NULL,'2020-04-08 17:33:52','https://file.sdcjlm.cn//profile//2020/04/08/ca44d7c93e58248f9c472f8bb014ec77.jpg',205,50),(236,NULL,'2020-04-08 17:38:04','https://file.sdcjlm.cn//profile//2020/04/08/1994b77669341d39e2c2d3f7c1860b10.jpg',205,50),(237,NULL,'2020-04-08 17:39:37','https://file.sdcjlm.cn//profile//2020/04/08/0701bd1a78d5eaa713402f511a96fb6d.jpg',23,50);
/*!40000 ALTER TABLE `live_evaluation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_attention`
--

DROP TABLE IF EXISTS `my_attention`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_attention` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `activity_id` int DEFAULT NULL COMMENT '活动id',
  `enter_company_id` int DEFAULT NULL COMMENT '入驻单位id',
  `notice_announcement_id` int DEFAULT NULL COMMENT '通知公告id',
  `news_info_id` int DEFAULT NULL COMMENT '新闻资讯id',
  `common_user_id` int DEFAULT NULL COMMENT '普通用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='我的关注';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_attention`
--

LOCK TABLES `my_attention` WRITE;
/*!40000 ALTER TABLE `my_attention` DISABLE KEYS */;
INSERT INTO `my_attention` VALUES (2,50,NULL,NULL,NULL,23),(4,NULL,1031,NULL,NULL,23),(5,NULL,1031,NULL,NULL,205),(6,50,NULL,NULL,NULL,205),(7,50,1031,NULL,NULL,1),(9,51,1031,NULL,NULL,4),(12,50,1031,NULL,NULL,4),(13,NULL,1055,NULL,NULL,307),(15,NULL,1049,NULL,NULL,317),(16,56,NULL,NULL,NULL,317),(19,NULL,1049,NULL,NULL,23),(20,NULL,1055,NULL,NULL,13),(21,NULL,1049,NULL,NULL,321),(22,NULL,1049,NULL,NULL,13),(23,NULL,1031,NULL,NULL,13),(24,NULL,1049,NULL,NULL,331),(25,NULL,1049,NULL,NULL,334),(26,56,NULL,NULL,NULL,334),(27,NULL,1055,NULL,NULL,333),(28,NULL,1049,NULL,NULL,324),(29,NULL,1049,NULL,NULL,352),(30,NULL,1055,NULL,NULL,337),(31,NULL,1049,NULL,NULL,359),(33,56,NULL,NULL,NULL,362),(34,NULL,1049,NULL,NULL,362),(35,NULL,1049,NULL,NULL,373),(37,NULL,1049,NULL,NULL,379),(38,51,NULL,NULL,NULL,378),(39,NULL,1049,NULL,NULL,205),(40,NULL,1031,NULL,NULL,387),(41,NULL,1055,NULL,NULL,400),(42,NULL,1049,NULL,NULL,406),(44,NULL,1055,NULL,NULL,420),(45,55,NULL,NULL,NULL,420),(46,56,NULL,NULL,NULL,421),(47,NULL,1049,NULL,NULL,428),(48,NULL,1049,NULL,NULL,418),(51,NULL,1056,NULL,NULL,431),(53,NULL,1059,NULL,NULL,181),(55,NULL,1059,NULL,NULL,432),(56,67,NULL,NULL,NULL,432);
/*!40000 ALTER TABLE `my_attention` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_info`
--

DROP TABLE IF EXISTS `news_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_info` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `preview` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预览图',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通知标题',
  `related_activity_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '相关活动编号',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `release_person_role` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布人角色',
  `release_person` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布人',
  `release_time` datetime DEFAULT NULL COMMENT '发布时间',
  `news_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '新闻详情',
  `del_status` tinyint(1) DEFAULT NULL COMMENT '删除状态（1：正常 0：已删除）',
  `check_status` tinyint DEFAULT NULL COMMENT '审核状态（1：成功 0：失败）',
  `check_time` datetime DEFAULT NULL COMMENT '审核时间',
  `check_person_contact` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核人联系方式',
  `check_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='新闻资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_info`
--

LOCK TABLES `news_info` WRITE;
/*!40000 ALTER TABLE `news_info` DISABLE KEYS */;
INSERT INTO `news_info` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `news_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice_announcement`
--

DROP TABLE IF EXISTS `notice_announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice_announcement` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `preview` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预览图',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通知标题',
  `receive_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '接收用户',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `release_person` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布人',
  `release_time` datetime DEFAULT NULL COMMENT '发布时间',
  `notice_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '通知详情',
  `del_status` tinyint(1) DEFAULT NULL COMMENT '删除状态（1：正常 0：已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice_announcement`
--

LOCK TABLES `notice_announcement` WRITE;
/*!40000 ALTER TABLE `notice_announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `notice_announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_client_details` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `client_id` int DEFAULT NULL COMMENT 'client_id',
  `status` tinyint DEFAULT NULL COMMENT 'status',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='oauth_client_details';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_management`
--

DROP TABLE IF EXISTS `role_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_management` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '名称',
  `role_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_management`
--

LOCK TABLES `role_management` WRITE;
/*!40000 ALTER TABLE `role_management` DISABLE KEYS */;
INSERT INTO `role_management` VALUES (1,'首页部门','首页:查看'),(2,'用户管理部门','用户管理：普通用户：查看'),(3,'用户管理部门','用户管理：普通用户：冻结/解冻'),(4,'用户管理部门','用户管理：入驻单位：查看'),(5,'用户管理部门','用户管理：入驻单位：添加'),(6,'新闻通知部门','新闻通知：通知公告：查看'),(7,'新闻通知部门','新闻通知：通知公告：发布'),(8,'新闻通知部门','新闻通知：新闻资讯：查看'),(9,'新闻通知部门','新闻通知：新闻资讯：发布'),(10,'活动管理部门','活动管理：待审核：查看'),(11,'活动管理部门','活动管理：待审核：审核'),(12,'活动管理部门','活动管理：报名中：查看'),(13,'活动管理部门','活动管理：审核失败：查看'),(14,'活动管理部门','活动管理：待举办：查看'),(15,'活动管理部门','活动管理：进行中：查看'),(16,'活动管理部门','活动管理：已结束：查看'),(17,'广告管理部门','广告管理：PC：查看'),(18,'广告管理部门','广告管理：PC：添加'),(19,'广告管理部门','广告管理：移动端：查看'),(20,'广告管理部门','广告管理：移动端：添加'),(21,'管理员管理部门','管理员管理：角色管理：查看'),(22,'管理员管理部门','管理员管理：角色管理：添加'),(23,'管理员管理部门','管理员管理：管理员管理：查看'),(24,'管理员管理部门','管理员管理：管理员管理：添加'),(25,'系统管理部门','系统管理：关于我们：查看'),(26,'系统管理部门','系统管理：关于我们：编辑'),(27,'系统管理部门','系统管理：意见反馈：查看'),(28,'系统管理部门','系统管理：帮助中心：查看'),(9999,'超级管理员','系统超级管理员');
/*!40000 ALTER TABLE `role_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_esoterica`
--

DROP TABLE IF EXISTS `school_esoterica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_esoterica` (
  `id` int NOT NULL AUTO_INCREMENT,
  `video_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `video_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `video_status` int DEFAULT NULL,
  `del_status` int DEFAULT NULL,
  `video_sort` int DEFAULT NULL,
  `preview_num` int DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `occupied_memory` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_esoterica`
--

LOCK TABLES `school_esoterica` WRITE;
/*!40000 ALTER TABLE `school_esoterica` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_esoterica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_extend`
--

DROP TABLE IF EXISTS `school_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_extend` (
  `id` int NOT NULL AUTO_INCREMENT,
  `school_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_characteristic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enrolment_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enrolment_tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_superiority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_type` int DEFAULT NULL,
  `school_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enrolment_website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `enrolment_brochure` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_synopsis` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `school_website_click` bigint DEFAULT NULL,
  `enrolment_website_click` bigint DEFAULT NULL,
  `school_contrast` bigint DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1067 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_extend`
--

LOCK TABLES `school_extend` WRITE;
/*!40000 ALTER TABLE `school_extend` DISABLE KEYS */;
INSERT INTO `school_extend` VALUES (1066,'123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,'2021-01-04 07:29:32');
/*!40000 ALTER TABLE `school_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `self_help_customer_service`
--

DROP TABLE IF EXISTS `self_help_customer_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `self_help_customer_service` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关键词',
  `content` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '内容',
  `enter_company_id` int DEFAULT NULL COMMENT '入驻单位id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自助客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `self_help_customer_service`
--

LOCK TABLES `self_help_customer_service` WRITE;
/*!40000 ALTER TABLE `self_help_customer_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `self_help_customer_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign_up_table`
--

DROP TABLE IF EXISTS `sign_up_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sign_up_table` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sign_up_time` datetime DEFAULT NULL COMMENT '报名时间',
  `order_NO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '订单号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '姓名',
  `id_NO` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份证号',
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '电话',
  `company_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '单位名称',
  `identity` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '身份',
  `order_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `bill_credit` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '付款凭证',
  `pay_way` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '付款方式',
  `status` tinyint DEFAULT NULL COMMENT '状态（1：待审核 3：待检票 4：已检票 6：已退款 7：已取消 8：审核失败）',
  `time` datetime DEFAULT NULL COMMENT '时间',
  `source` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '来源',
  `check_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '审核备注',
  `refund_remark` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '退款备注',
  `check_in_time` datetime DEFAULT NULL COMMENT '检票时间',
  `activity_id` int DEFAULT NULL COMMENT '活动id',
  `common_user_id` int DEFAULT NULL COMMENT '普通用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='报名表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign_up_table`
--

LOCK TABLES `sign_up_table` WRITE;
/*!40000 ALTER TABLE `sign_up_table` DISABLE KEYS */;
INSERT INTO `sign_up_table` VALUES (1,'2020-04-01 14:38:47','1585723117563','王光硕','500236199311092324','13999999999','一道云','职工',0.00,NULL,'微信线下收款',4,'2020-04-01 15:03:51',NULL,NULL,NULL,'2020-04-01 16:01:41',50,13),(2,'2020-04-01 15:03:38','1585724603827','王文君','372323199211053629','18866611042','山东一道云','职工',0.00,NULL,'微信线下收款',4,'2020-04-01 15:03:49',NULL,NULL,NULL,'2020-04-01 15:05:18',50,23),(3,'2020-04-01 15:48:51','1585727253951','罗国林','50023619910321309X','15123519107','江苏一道云','学生',0.00,NULL,'微信线下收款',4,'2020-04-01 16:07:12',NULL,NULL,NULL,'2020-04-01 16:42:15',50,1),(4,'2020-04-01 19:49:14','1585740182611','王光硕','512501197203035172','13999999999','一道云','职工',0.00,NULL,'微信线下收款',7,'2020-04-01 19:23:02',NULL,NULL,NULL,NULL,51,13),(5,'2020-04-02 14:15:09','1585808099071','罗国林','50023619910321309X','15123519107','江苏一道云','学生',0.00,NULL,'微信线下收款',7,'2020-04-02 14:14:59',NULL,NULL,NULL,NULL,51,1),(6,'2020-04-08 13:22:42','1586323326866','王文君','372323199211053629','18866611042','山东一道云试一下','职工',0.00,NULL,'微信线下收款',6,'2020-04-08 14:48:55',NULL,NULL,NULL,NULL,56,23),(7,'2020-04-08 13:23:06','1586323384029','王文君','372323199211053629','18866611042','山东一道云试一下','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:37:18',NULL,NULL,NULL,NULL,55,23),(8,'2020-04-08 14:30:19','1586327374380','吕鹏辉','142303198903201159','18486391901','贵州电子信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 14:29:34',NULL,NULL,NULL,NULL,55,307),(9,'2020-04-08 14:33:57','1586327631093','吕鹏辉','142303198903201159','18486391901','贵州电子信息职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:12:54',NULL,NULL,NULL,NULL,56,307),(10,'2020-04-08 14:36:18','1586327714322','曾俊','360728198511260019','18370766266','江西应用技术职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:12:53',NULL,NULL,NULL,NULL,56,308),(11,'2020-04-08 14:38:21','1586327840584','陈富汉','340827198209016918','18955660069','安庆职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:12:57',NULL,NULL,NULL,NULL,56,310),(12,'2020-04-08 14:39:08','1586327852588','王正霞','513433198509163920','17347894016','重庆电子工程职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:12:51',NULL,NULL,NULL,NULL,56,309),(13,'2020-04-08 14:40:49','1586328001497','陶奉春','342625198902053117','18255586072','芜湖职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:13:00',NULL,NULL,NULL,NULL,56,312),(14,'2020-04-08 14:41:36','1586328067129','陶奉春','342625198902053117','18255586072','芜湖职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:38:12',NULL,NULL,NULL,NULL,55,312),(15,'2020-04-08 14:41:55','1586328084706','谢山','36070219890626191X','13970100827','赣州农业学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:12:26',NULL,NULL,NULL,NULL,56,313),(16,'2020-04-08 14:47:57','1586328474755','王正霞','513433198509163920','17347894016','重庆电子工程职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:38:22',NULL,NULL,NULL,NULL,55,309),(17,'2020-04-08 14:49:13','1586328501728','蔡政策','340621198310184837','15856918480','安徽国际商务职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:12:25',NULL,NULL,NULL,NULL,56,314),(18,'2020-04-08 15:02:30','1586329289642','王勉','360104197811280443','13970066957','江西现代职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:12:24',NULL,NULL,NULL,NULL,56,317),(19,'2020-04-08 15:02:35','1586329325399','黄刚','362523198809123235','13807076263','江西环境工程职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:12:22',NULL,NULL,NULL,NULL,56,311),(20,'2020-04-08 15:11:58','1586329812838','陈爱','321025196903151839','13815057621','常州机电职业技术学院','职工',0.00,NULL,'微信线下收款',6,'2020-04-08 15:12:49',NULL,NULL,NULL,NULL,56,318),(21,'2020-04-08 15:21:44','1586330457035','宗欣慧','410527198709280020','13755930928','江西现代职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:23:59',NULL,NULL,NULL,NULL,56,320),(22,'2020-04-08 15:24:07','1586330603874','顾理军','320623198101244353','13912323225','常州机电职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:29:27',NULL,NULL,NULL,NULL,56,321),(23,'2020-04-08 15:28:47','1586330869794','周洋','341226199102210813','18356970281','安徽商贸职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:30:19',NULL,NULL,NULL,NULL,56,322),(24,'2020-04-08 15:33:22','1586331157180','孙小娟','620522198905282127','18084032634','重庆电子工程职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:40:16',NULL,NULL,NULL,NULL,56,323),(25,'2020-04-08 15:39:41','1586331572791','方杰','342531198210312511','18134513669','安徽职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 15:40:15',NULL,NULL,NULL,NULL,56,324),(26,'2020-04-08 16:06:09','1586333106664','李维勇','342301197610112611','13400073235','南京信息职业技术学院','各级领导',0.00,NULL,'微信线下收款',3,'2020-04-08 16:30:28',NULL,NULL,NULL,NULL,56,327),(27,'2020-04-08 16:12:29','1586333500774','周桥','500383198602138771','13883932727','重庆工商职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:30:31',NULL,NULL,NULL,NULL,56,328),(28,'2020-04-08 16:13:52','1586333709229','江跃龙','350822198411284211','18128803090','广州铁路职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:36:20',NULL,NULL,NULL,NULL,56,329),(29,'2020-04-08 16:16:15','1586333725656','徐婷','411323198905030066','18252062103','南京科技职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:38:41',NULL,NULL,NULL,NULL,56,332),(30,'2020-04-08 16:16:23','1586333722938','高安邦','370406198404125011','18926960926','珠海市第一中等职业学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:10',NULL,NULL,NULL,NULL,56,331),(31,'2020-04-08 16:18:06','1586333824159','周少珂','410411198709245579','13783461993','河南应用技术职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:15',NULL,NULL,NULL,NULL,56,334),(32,'2020-04-08 16:20:15','1586333961328','蔡继坤','321302198701100073','15366122087','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:30:39',NULL,NULL,NULL,NULL,56,338),(33,'2020-04-08 16:21:20','1586334043247','于俊','420983198301196014','13871865940','孝感市工业学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:41:58',NULL,NULL,NULL,NULL,56,336),(34,'2020-04-08 16:21:43','1586334101547','于俊','420983198301196014','13871865940','孝感市工业学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:38:38',NULL,NULL,NULL,NULL,55,336),(35,'2020-04-08 16:23:46','1586334133321','毛振','420983198303061316','13135640694','孝感市工业学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:22:13',NULL,NULL,NULL,NULL,56,337),(36,'2020-04-08 16:24:49','1586334248341','杨阳','341203198501293135','13809042838','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:24:08',NULL,NULL,NULL,NULL,56,343),(37,'2020-04-08 16:25:36','1586334283195','李静','210122197711260023','13464110278','辽宁职业学院','各级领导',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:18',NULL,NULL,NULL,NULL,56,345),(38,'2020-04-08 16:26:31','1586334355760','荆于勤','500382198812070406','15923197997','重庆工商职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:33:24',NULL,NULL,NULL,NULL,56,346),(39,'2020-04-08 16:27:15','1586334347812','杨勋','420984198409207818','13227154348','孝感市工业学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:34:06',NULL,NULL,NULL,NULL,55,333),(40,'2020-04-08 16:27:49','1586334380225','白丽洁','220402199602020022','15243207600','辽源职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:22',NULL,NULL,NULL,NULL,56,348),(41,'2020-04-08 16:27:55','1586334407330','廖帆','420106198308040817','18551828412','南京信息职业技术学院','各级领导',0.00,NULL,'微信线下收款',3,'2020-04-08 16:33:48',NULL,NULL,NULL,NULL,56,344),(42,'2020-04-08 16:28:48','1586334477753','朱明','320112197207091614','13813817742','南京科技职业学院','各级领导',0.00,NULL,'微信线下收款',3,'2020-04-08 16:33:54',NULL,NULL,NULL,NULL,55,349),(43,'2020-04-08 16:29:17','1586334458515','王巧莲','422421196903242547','13802920324','广州铁路职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:38:54',NULL,NULL,NULL,NULL,56,342),(44,'2020-04-08 16:29:31','1586334522098','李剑','362531198010181215','18913360560','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:28:42',NULL,NULL,NULL,NULL,56,335),(45,'2020-04-08 16:31:09','1586334624267','孔枫','32048119920425624X','18795959485','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:30:24',NULL,NULL,NULL,NULL,56,354),(46,'2020-04-08 16:31:33','1586334629352','曹伶丽','440281198510281322','13702498985','广州铁路职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:40:58',NULL,NULL,NULL,NULL,56,350),(47,'2020-04-08 16:31:40','1586334587552','冯才','430421198309294976','18770290305','江西九江科技中等专业学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:29',NULL,NULL,NULL,NULL,56,352),(48,'2020-04-08 16:31:56','1586334667372','李永亮','370522198201011431','13791653653','山东交通职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:24',NULL,NULL,NULL,NULL,56,353),(49,'2020-04-08 16:33:01','1586334777663','李静','210122197711260023','13464110278','辽宁职业学院','各级领导',0.00,NULL,'微信线下收款',3,'2020-04-08 16:34:02',NULL,NULL,NULL,NULL,55,345),(50,'2020-04-08 16:33:45','1586334788314','冯曼','371102198808220604','15288806699','日照职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:06',NULL,NULL,NULL,NULL,56,356),(51,'2020-04-08 16:34:25','1586334803758','赵婷','421281198712160024','13739184376','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:33:23',NULL,NULL,NULL,NULL,56,339),(52,'2020-04-08 16:34:47','1586334772214','刘云','34040319850801264X','18551855868','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:32:52',NULL,NULL,NULL,NULL,56,355),(53,'2020-04-08 16:34:52','1586334849105','朱琼瑶','612401198608280144','18690513093','安康职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:02',NULL,NULL,NULL,NULL,56,351),(54,'2020-04-08 16:36:35','1586334992479','徐婷','411323198905030066','18252062103','南京科技职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:36:32',NULL,NULL,NULL,NULL,55,332),(55,'2020-04-08 16:37:29','1586335044990','毛振','420983198303061316','13135640694','孝感市工业学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:37:25',NULL,NULL,NULL,NULL,55,337),(56,'2020-04-08 16:38:29','1586335022378','余润东','422201196306210014','13986458876','孝感市工业学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:01',NULL,NULL,NULL,NULL,56,357),(57,'2020-04-08 16:38:41','1586335065128','高鹏超','410421199008241011','18538178756','郑州信息科技职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:41:05',NULL,NULL,NULL,NULL,56,359),(58,'2020-04-08 16:38:46','1586335076413','李燕','371421198209276329','13884683881','德州职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:44:51',NULL,NULL,NULL,NULL,56,358),(59,'2020-04-08 16:42:10','1586335267281','陈海彬','150404198209111614','13965455412','安徽国防科技职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:47:05',NULL,NULL,NULL,NULL,56,361),(60,'2020-04-08 16:42:55','1586335307208','温云辉','350104197104020050','13808546945','黎明职业大学','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 16:46:58',NULL,NULL,NULL,NULL,56,360),(61,'2020-04-08 16:42:56','1586335373304','陈海彬','150404198209111614','13965455412','安徽国防科技职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:14:15',NULL,NULL,NULL,NULL,55,361),(62,'2020-04-08 16:49:07','1586335693130','尚领','410922198002040031','15895843776','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:48:13',NULL,NULL,NULL,NULL,56,366),(63,'2020-04-08 16:50:24','1586335732212','刘力凯','321001199002090613','15312048969','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:29:39',NULL,NULL,NULL,NULL,56,363),(64,'2020-04-08 16:50:30','1586335734051','胡魁宗','420901196908281211','13117009897','孝感工业学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 16:48:54',NULL,NULL,NULL,NULL,56,362),(65,'2020-04-08 16:50:47','1586335805461','程露','422201198902130044','18995596419','湖北科技职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:28:27',NULL,NULL,NULL,NULL,56,367),(66,'2020-04-08 16:58:22','1586336250360','梁富伟','620123197702122115','18121022362','上海信息技术学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:03:00',NULL,NULL,NULL,NULL,56,368),(67,'2020-04-08 16:59:48','1586336335722','张勇','321182198707100016','13851628848','南京科技职业学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:04:01',NULL,NULL,NULL,NULL,56,371),(68,'2020-04-08 17:00:35','1586336430328','胡魁宗','420901196908281211','13117009897','孝感工业学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 17:00:30',NULL,NULL,NULL,NULL,55,362),(69,'2020-04-08 17:02:10','1586336510461','张勇','321182198707100016','13851628848','南京科技职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 17:01:50',NULL,NULL,NULL,NULL,55,371),(70,'2020-04-08 17:02:24','1586336487184','刘卓华','441425197904257014','13560482396','广东机电职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:28:31',NULL,NULL,NULL,NULL,56,372),(71,'2020-04-08 17:02:27','1586336499489','李展','230781199201285517','15653173056','聊城职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:04:00',NULL,NULL,NULL,NULL,56,373),(72,'2020-04-08 17:02:48','1586336564860','刘卓华','441425197904257014','13560482396','广东机电职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:14:56',NULL,NULL,NULL,NULL,55,372),(73,'2020-04-08 17:04:31','1586336622099','宋柯萱','610402199107191206','15091540539','咸阳职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:08:55',NULL,NULL,NULL,NULL,56,370),(74,'2020-04-08 17:08:25','1586336816756','范月祺','140226198710027067','18035161426','山西职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:14:11',NULL,NULL,NULL,NULL,55,374),(75,'2020-04-08 17:09:57','1586336917397','陈毅坚','650102198210266532','13999836791','乌鲁木齐市职业中等专业学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:27:26',NULL,NULL,NULL,NULL,56,376),(76,'2020-04-08 17:12:07','1586337084964','苏新','34050319811204021X','18955593753','马鞍山职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:28:34',NULL,NULL,NULL,NULL,56,379),(77,'2020-04-08 17:12:07','1586337047305','何海燕','340822197404274318','13505518406','安徽广播影视职业技术学院','各级领导',0.00,NULL,'微信线下收款',3,'2020-04-08 17:23:20',NULL,NULL,NULL,NULL,56,375),(78,'2020-04-08 17:12:24','1586337063734','罗威','42220019780303081X','13871868685','湖北省孝感市工业学校','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:16:25',NULL,NULL,NULL,NULL,55,378),(79,'2020-04-08 17:18:44','1586337472414','宋彬彬','371421198211010044','13969278806','德州职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:26:11',NULL,NULL,NULL,NULL,56,383),(80,'2020-04-08 17:19:54','1586337587182','范月祺','140226198710027067','18035161426','山西职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:28:40',NULL,NULL,NULL,NULL,56,374),(81,'2020-04-08 17:24:20','1586337815883','李斌','142625198010273619','18720900796','南昌职业大学','各级领导',0.00,NULL,'微信线下收款',3,'2020-04-08 17:28:39',NULL,NULL,NULL,NULL,55,385),(82,'2020-04-08 17:26:28','1586337981666','宋学永','372830197310225512','13861797172','南京第五十五所技术开发有限公司','学生',0.00,NULL,'微信线下收款',1,'2020-04-08 17:26:21',NULL,NULL,NULL,NULL,56,205),(83,'2020-04-08 17:31:17','1586338274097','宋学永','372830197310225512','13861797172','南京第五十五所技术开发有限公司','学生',0.00,NULL,'微信线下收款',1,'2020-04-08 17:31:14',NULL,NULL,NULL,NULL,55,205),(84,'2020-04-08 17:31:38','1586338240966','谭彦','450327198505100063','18962113239','苏州农业职业技术学院','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:32:58',NULL,NULL,NULL,NULL,56,386),(85,'2020-04-08 17:32:27','1586338250412','张洪胜','340403196801080458','18955415877','淮南联合大学','职工',0.00,NULL,'微信线下收款',3,'2020-04-08 17:32:46',NULL,NULL,NULL,NULL,56,377),(86,'2020-04-08 17:37:50','1586338665776','孔枫','32048119920425624X','18795959485','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 17:37:45',NULL,NULL,NULL,NULL,55,354),(87,'2020-04-08 17:38:46','1586338669383','史继峰','37292319790225081X','13807066394','南昌职业大学','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 17:37:49',NULL,NULL,NULL,NULL,55,387),(88,'2020-04-08 17:50:09','1586339398250','刘云','34040319850801264X','18551855868','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 17:49:58',NULL,NULL,NULL,NULL,55,355),(89,'2020-04-08 17:50:23','1586339374702','周老师','320204198312042312','13812515812','无锡科技职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 17:49:34',NULL,NULL,NULL,NULL,56,389),(90,'2020-04-08 17:51:07','1586339464118','周老师','320204198312042312','13812515812','无锡科技职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 17:51:04',NULL,NULL,NULL,NULL,55,389),(91,'2020-04-08 17:58:14','1586339834944','桑子华','430221197101122934','13908496980','长沙职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 17:57:14',NULL,NULL,NULL,NULL,56,390),(92,'2020-04-08 18:00:52','1586339972819','危光辉','51022319730708573X','13896146508','重庆电子工程职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 17:59:32',NULL,NULL,NULL,NULL,56,388),(93,'2020-04-08 18:01:47','1586340059306','王海沛','411329198810034118','18482173918','四川信息职业技术学院','各级领导',0.00,NULL,'微信线下收款',1,'2020-04-08 18:00:59',NULL,NULL,NULL,NULL,56,391),(94,'2020-04-08 18:01:59','1586340054767','张帆','340826199506124016','18018565585','上海智翔信息科技发展有限公司','各级领导',0.00,NULL,'微信线下收款',1,'2020-04-08 18:00:54',NULL,NULL,NULL,NULL,55,392),(95,'2020-04-08 18:04:54','1586340214427','韩友凯','370726196911171533','13869699133','潍坊职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:03:34',NULL,NULL,NULL,NULL,56,394),(96,'2020-04-08 18:08:17','1586340443816','王慧博','220602197903160629','13843789556','辽源职业技术学院','各级领导',0.00,NULL,'微信线下收款',1,'2020-04-08 18:07:23',NULL,NULL,NULL,NULL,56,396),(97,'2020-04-08 18:08:22','1586340426562','叶津凌','430781198203241019','13803523428','江西交通职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:07:06',NULL,NULL,NULL,NULL,56,398),(98,'2020-04-08 18:09:39','1586340525162','李霞婷','360102197906146324','13870853283','江西交通职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:08:45',NULL,NULL,NULL,NULL,56,393),(99,'2020-04-08 18:10:52','1586340564664','潘泽欢','340828197609090115','13866007418','安庆大别山科技学校','各级领导',0.00,NULL,'微信线下收款',1,'2020-04-08 18:09:24',NULL,NULL,NULL,NULL,55,399),(100,'2020-04-08 18:12:27','1586340693561','史海峰','320621198102020017','15651998165','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:11:33',NULL,NULL,NULL,NULL,55,400),(101,'2020-04-08 18:12:56','1586340766157','李剑','362531198010181215','18913360560','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:12:46',NULL,NULL,NULL,NULL,55,335),(102,'2020-04-08 18:13:47','1586340823147','史海峰','320621198102020017','15651998165','南京信息职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:13:43',NULL,NULL,NULL,NULL,56,400),(103,'2020-04-08 18:14:57','1586340856861','李璇','210922199411302722','13331431311','辽源职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:14:16',NULL,NULL,NULL,NULL,56,401),(104,'2020-04-08 18:19:07','1586341099757','王华增','341181198710030618','15398172860','皖北电子信息工程学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:18:19',NULL,NULL,NULL,NULL,56,402),(105,'2020-04-08 18:25:28','1586341424910','武登聚','342123197608291793','15357672838','皖北电子信息工程学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:23:44',NULL,NULL,NULL,NULL,56,405),(106,'2020-04-08 18:25:41','1586341455398','王春苗','340104198002082552','13855127610','安徽工商职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:24:15',NULL,NULL,NULL,NULL,56,404),(107,'2020-04-08 18:28:18','1586341624231','刘金涛','370702197307212216','13563686277','潍坊职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:27:04',NULL,NULL,NULL,NULL,56,406),(108,'2020-04-08 18:30:35','1586341785104','涂小燕','360103197905015927','13979108864','江西现代职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:29:45',NULL,NULL,NULL,NULL,56,407),(109,'2020-04-08 18:32:01','1586341867925','王海霞','430321198501122781','18573359698','湖南汽车工程职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:31:07',NULL,NULL,NULL,NULL,56,408),(110,'2020-04-08 18:33:42','1586341968503','施鸣','320203198112040033','18961759131','无锡科技职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:32:48',NULL,NULL,NULL,NULL,56,409),(111,'2020-04-08 18:34:18','1586342054283','施鸣','320203198112040033','18961759131','无锡科技职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:34:14',NULL,NULL,NULL,NULL,55,409),(112,'2020-04-08 18:36:35','1586342137835','赵遵军','371321198209053437','18053671566','诸城市福田汽车中专','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:35:37',NULL,NULL,NULL,NULL,55,410),(113,'2020-04-08 18:37:26','1586342242166','赵遵军','371321198209053437','18053671566','诸城市福田汽车中专','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:37:22',NULL,NULL,NULL,NULL,56,410),(114,'2020-04-08 18:49:11','1586342882019','廖建飞','362423197906244020','13825627631','广东科学技术职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 18:48:02',NULL,NULL,NULL,NULL,56,411),(115,'2020-04-08 19:02:06','1586343663291','王开平','321084198209025815','13852551821','江苏省高邮中等专业学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 19:01:03',NULL,NULL,NULL,NULL,56,412),(116,'2020-04-08 19:02:56','1586343772195','王开平','321084198209025815','13852551821','江苏省高邮中等专业学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 19:02:52',NULL,NULL,NULL,NULL,55,412),(117,'2020-04-08 19:05:36','1586343856267','张旭红','64210119720815002X','15719580998','宁夏职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 19:04:16',NULL,NULL,NULL,NULL,55,413),(118,'2020-04-08 19:33:33','1586345270147','牟思','371402198307192621','15005341321','德州职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 19:27:50',NULL,NULL,NULL,NULL,56,395),(119,'2020-04-08 19:50:22','1586346536964','王秀萍','320602197609036524','15896004107','江苏农牧科技职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 19:48:57',NULL,NULL,NULL,NULL,56,416),(120,'2020-04-08 19:56:47','1586346934867','范效亮','370829197901196613','13153783059','济宁职业技术学院','各级领导',0.00,NULL,'微信线下收款',1,'2020-04-08 19:55:34',NULL,NULL,NULL,NULL,56,417),(121,'2020-04-08 20:16:31','1586348147873','朱小兰','321284198209067629','13921905621','江苏旅游职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 20:15:47',NULL,NULL,NULL,NULL,56,347),(122,'2020-04-08 20:22:43','1586348487477','苏百兖','372501198002021143','18953782818','济宁职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 20:21:27',NULL,NULL,NULL,NULL,55,418),(123,'2020-04-08 20:43:35','1586349750833','郭欣','410703198207223528','13524204216','上海杉达学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 20:42:30',NULL,NULL,NULL,NULL,55,384),(124,'2020-04-08 20:54:00','1586350386630','张清华','430181198007112081','15874250220','湖南外贸职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 20:53:06',NULL,NULL,NULL,NULL,56,419),(125,'2020-04-08 20:55:40','1586350533442','张清华','430181198007112081','15874250220','湖南外贸职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 20:55:33',NULL,NULL,NULL,NULL,55,419),(126,'2020-04-08 21:02:39','1586350909042','廖先琴','510218198107100425','15902310592','重庆电子工程职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:01:49',NULL,NULL,NULL,NULL,56,424),(127,'2020-04-08 21:04:09','1586350970730','万腾','362502198805150015','18979177061','江西旅游商贸职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:02:50',NULL,NULL,NULL,NULL,56,421),(128,'2020-04-08 21:11:49','1586351470332','黄雅琼','360102198111021645','13870096589','江西旅游商贸职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:11:10',NULL,NULL,NULL,NULL,56,426),(129,'2020-04-08 21:12:14','1586351456279','万方','420902198102193226','13886366712','孝感市工业学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:10:56',NULL,NULL,NULL,NULL,55,420),(130,'2020-04-08 21:16:39','1586351744532','彭奕平','362122198104066420','15070099158','江西旅游商贸职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:15:44',NULL,NULL,NULL,NULL,56,427),(131,'2020-04-08 21:26:05','1586352333561','罗国林','50023919910321309X','15123519107','江苏一道云','学生',0.00,NULL,'微信线下收款',6,'2020-04-08 21:27:07',NULL,'请下次参加',NULL,NULL,56,1),(132,'2020-04-08 21:27:53','1586352438537','万新','430682198912011946','15211120433','湖南大众传媒职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:27:18',NULL,NULL,NULL,NULL,56,428),(133,'2020-04-08 21:30:16','1586352570791','李胜华','430111198007210029','13786118704','湖南外贸职业学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:29:30',NULL,NULL,NULL,NULL,55,429),(134,'2020-04-08 21:34:36','1586352823672','谈凌云','420901198010221123','13971941721','孝感市工业学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:33:43',NULL,NULL,NULL,NULL,56,430),(135,'2020-04-08 21:34:59','1586352895737','谈凌云','420901198010221123','13971941721','孝感市工业学校','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:34:55',NULL,NULL,NULL,NULL,55,430),(136,'2020-04-08 21:43:02','1586353380450','苏百兖','372501198002021143','18953782818','济宁职业技术学院','职工',0.00,NULL,'微信线下收款',1,'2020-04-08 21:43:00',NULL,NULL,NULL,NULL,56,418),(137,'2021-01-03 15:45:59','1609659893658','刘嘉伟','320283199010135516','18261576084','商院','学生',0.00,NULL,'微信线下收款',3,'2021-01-03 15:44:53',NULL,NULL,NULL,NULL,60,431),(138,'2021-01-03 17:03:35','1609664609240','刘嘉伟','320283199010135516','18261576084','商院','学生',0.00,NULL,'微信线下收款',3,'2021-01-03 17:03:29',NULL,NULL,NULL,NULL,58,431),(139,'2021-01-03 20:13:08','1609675940714','刘嘉伟','320383199001045513','18261576084','商院','职工',0.00,NULL,'微信线下收款',3,'2021-01-03 20:12:20',NULL,NULL,NULL,NULL,67,432),(140,'2021-01-04 15:25:15','1609745062790','刘嘉伟','320283199001045516','18261576084','啊实打','职工',0.00,NULL,'微信线下收款',3,'2021-01-04 15:24:22',NULL,NULL,NULL,NULL,62,181),(141,'2021-01-04 16:32:56','1609749100605','张三','320283199001045516','18261576084','商院','各级领导',0.00,NULL,'微信线下收款',3,'2021-01-04 16:33:20',NULL,NULL,NULL,NULL,61,432),(142,'2021-01-06 10:06:45','1609898738455','刘嘉伟','320283199001045516','18261576084','商职','职工',0.00,NULL,'微信线下收款',1,'2021-01-06 10:05:38',NULL,NULL,NULL,NULL,62,432),(143,'2021-01-21 10:09:01','1611194447042','姓名1','320383199001042131','18261576084','阿达','职工',0.00,NULL,'微信线下收款',3,'2021-01-21 10:00:47',NULL,NULL,NULL,NULL,70,432);
/*!40000 ALTER TABLE `sign_up_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_client_service`
--

DROP TABLE IF EXISTS `sys_client_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_client_service` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `serviceId` int DEFAULT NULL COMMENT 'serviceId',
  `clientId` int DEFAULT NULL COMMENT 'clientId',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='sys_client_service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_client_service`
--

LOCK TABLES `sys_client_service` WRITE;
/*!40000 ALTER TABLE `sys_client_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_client_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_service`
--

DROP TABLE IF EXISTS `sys_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_service` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `path` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'path',
  `sort` int DEFAULT NULL COMMENT 'sort',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='sys_service';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_service`
--

LOCK TABLES `sys_service` WRITE;
/*!40000 ALTER TABLE `sys_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_service` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21 22:54:36
