/*
Navicat MySQL Data Transfer

Source Server         : cat
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2020-04-09 16:54:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for scenics
-- ----------------------------
DROP TABLE IF EXISTS `scenics`;
CREATE TABLE `scenics` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` char(40) DEFAULT NULL,
  `imgpath` varchar(255) DEFAULT NULL,
  `introduce` text,
  `price` decimal(10,2) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL COMMENT '库存',
  `color` varchar(255) DEFAULT NULL,
  `bgcolor` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `smallimg` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of scenics
-- ----------------------------
INSERT INTO `scenics` VALUES ('1', 'Redmi1.0', './pic/Redmi (1).png', '厉害了word米，买买买！刚买的苹果7p不要了，我要换Redmi！颠覆手机行业。全程看直播。必须买！Shut up and take my money！少废话，快收钱！', '2999.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (1).png====./pic/Redmi (2).png====./pic/Redmi (3).png====./pic/Redmi (4).png');
INSERT INTO `scenics` VALUES ('2', 'Redmi1.1', './pic/Redmi (2).png', '去小米之家砸碎一台是不是就可以被要求买下,对于这种“危险”的想法，我们认真的告诫:“千万别，让我来！”', '3999.00', '8', '番茄橙====天空蓝====黄金沙', '#ff6348====#70a1ff====#eccc68', '8G+64G====16G+64G====16G+128G', './pic/Redmi (2).png====./pic/Redmi (5).png====./pic/Redmi (6).png====./pic/Redmi (7).png');
INSERT INTO `scenics` VALUES ('3', 'Redmi1.2', './pic/Redmi (3).png', '晚上躺床上看发布会，雷总讲完小米MIX的时候给我看哭了，我媳妇骂我有病，我只能骚扰一下小米商城的客服，告诉他们，小米太棒了。', '3999.00', '8', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G', './pic/Redmi (3).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('4', 'Redmi1.3', './pic/Redmi (4).png', '小米MIX 是一款用奢侈品标准打造的黑科技手机，但注意的是他并不是奢侈品。因为奢侈品的特点是：用尽量多的钱去买尽量少功能的产品。而小米的产品类似于无印良品，忽略品牌的溢价，用尽量少的钱买到尽量好的产品。', '2999.00', '10', '霓虹蓝====魅力粉====冰糕橘', '#18dcff====#ff7675====#ffaf40', '8G+128G====8G+256G', './pic/Redmi (4).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('5', 'Redmi2.0', './pic/Redmi (5).png', '这太惊艳，这是第一感觉。连包装都不是以往的小米简约包装，而是精品的抽屉礼盒，每个细节都可以看得出来这款超旗舰的定位。后背是我最喜欢的黑色陶瓷，而前面板则是这款手机最惊艳的部分，一眼看去几乎全是屏幕！整机和我的7plus差不多高，但略宽一点，而屏幕大了太多太多。MIX是一款可以显著提振士气的产品，展示了小米的研发技术实力和他们“为发烧而生”的初心。', '2599.00', '6', '番茄橙====天空蓝====黄金沙', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (5).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('6', 'Redmi2.1', './pic/Redmi (6).png', '小米第一代全面屏手机问世，她就是小米MIX，一部惊艳世界的科技之作，从此，这个名字，改变了人们对手机的认知，真正引领了全面屏该有的价值。', '2599.00', '6', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (6).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('7', 'Redmi2.2', './pic/Redmi (7).png', '2017年9月11日，同样是一个值得骄傲的日子，小米MIX2。再次，引起了人们的重视，屏占比达到18:9，无与伦比，独树一帜，问谁能与之，对峙。', '2999.00', '6', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====16G+64G====16G+128G', './pic/Redmi (7).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('8', 'Redmi2.3', './pic/Redmi (8).png', '骁龙835加持，8+256尊享陶瓷，大小正合适，全高清显示，旗舰级的配置，占尽全部优势，犹如一颗璀璨的宝石，不需要任何修饰，浑然天成的完美样式。', '2999.00', '15', '霓虹蓝====魅力粉====冰糕橘', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G', './pic/Redmi (8).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('9', 'Redmi2.4', './pic/Redmi (9).png', '美得像一首诗，没有瑕疵，风的力量，来自气质，水的力量，在于坚持，小米探索黑科技的构思，从未停止，只有创新才能拒绝相似，才能让别人复制，为发烧而生的宗旨。', '1999.00', '15', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+128G====8G+256G', './pic/Redmi (9).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('10', 'Redmi3.0', './pic/Redmi (10).png', '未来给人的感觉总是，充满幻想和未知，而小米mix就像一把钥匙，打开了新世界大门，让一切如此真实，从遇见的第一眼开始，就明白了真正完美的标尺。', '1999.00', '15', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (10).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('11', 'Redmi3.1', './pic/Redmi (11).png', '厉害了word米，买买买！刚买的苹果7p不要了，我要换Redmi！颠覆手机行业。全程看直播。必须买！Shut up and take my money！少废话，快收钱！', '1999.00', '15', '番茄橙====天空蓝====黄金沙', '#ff6348====#70a1ff====#eccc68', '8G+64G====8G+128G====8G+256G', './pic/Redmi (11).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('12', 'Redmi3.2', './pic/Redmi (12).png', '去小米之家砸碎一台是不是就可以被要求买下,对于这种“危险”的想法，我们认真的告诫:“千万别，让我来！”', '2999.00', '15', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====16G+64G====16G+128G', './pic/Redmi (12).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('13', 'Redmi3.3', './pic/Redmi (13).png', '晚上躺床上看发布会，雷总讲完小米MIX的时候给我看哭了，我媳妇骂我有病，我只能骚扰一下小米商城的客服，告诉他们，小米太棒了。', '2999.00', '15', '霓虹蓝====魅力粉====冰糕橘', '#18dcff====#ff7675====#ffaf40', '8G+64G====8G+128G', './pic/Redmi (13).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('14', 'Redmi3.4', './pic/Redmi (14).png', '小米MIX 是一款用奢侈品标准打造的黑科技手机，但注意的是他并不是奢侈品。因为奢侈品的特点是：用尽量多的钱去买尽量少功能的产品。而小米的产品类似于无印良品，忽略品牌的溢价，用尽量少的钱买到尽量好的产品。', '3599.00', '15', '番茄橙====天空蓝====黄金沙', '#0984e3====#ff7675====#c0392b', '8G+128G====8G+256G', './pic/Redmi (14).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('15', 'Redmi3.5', './pic/Redmi (15).png', '这太惊艳，这是第一感觉。连包装都不是以往的小米简约包装，而是精品的抽屉礼盒，每个细节都可以看得出来这款超旗舰的定位。后背是我最喜欢的黑色陶瓷，而前面板则是这款手机最惊艳的部分，一眼看去几乎全是屏幕！整机和我的7plus差不多高，但略宽一点，而屏幕大了太多太多。MIX是一款可以显著提振士气的产品，展示了小米的研发技术实力和他们“为发烧而生”的初心。', '3599.00', '15', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (15).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('16', 'Redmi4.0', './pic/Redmi (16).png', '小米第一代全面屏手机问世，她就是小米MIX，一部惊艳世界的科技之作，从此，这个名字，改变了人们对手机的认知，真正引领了全面屏该有的价值。', '3599.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (16).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('17', 'Redmi4.5', './pic/Redmi (17).png', '2017年9月11日，同样是一个值得骄傲的日子，小米MIX2。再次，引起了人们的重视，屏占比达到18:9，无与伦比，独树一帜，问谁能与之，对峙。', '3599.00', '10', '霓虹蓝====魅力粉====冰糕橘', '#0984e3====#ff7675====#c0392b', '8G+64G====16G+64G====16G+128G', './pic/Redmi (17).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('18', 'Redmi4.6', './pic/Redmi (18).png', '骁龙835加持，8+256尊享陶瓷，大小正合适，全高清显示，旗舰级的配置，占尽全部优势，犹如一颗璀璨的宝石，不需要任何修饰，浑然天成的完美样式。', '2999.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G', './pic/Redmi (18).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('19', 'Redmi4.7', './pic/Redmi (19).png', '美得像一首诗，没有瑕疵，风的力量，来自气质，水的力量，在于坚持，小米探索黑科技的构思，从未停止，只有创新才能拒绝相似，才能让别人复制，为发烧而生的宗旨。', '5799.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+128G====8G+256G', './pic/Redmi (19).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('20', 'Redmi5.0', './pic/Redmi (20).png', '未来给人的感觉总是，充满幻想和未知，而小米mix就像一把钥匙，打开了新世界大门，让一切如此真实，从遇见的第一眼开始，就明白了真正完美的标尺。', '5799.00', '10', '番茄橙====天空蓝====黄金沙', '#ff6348====#70a1ff====#eccc68', '8G+64G====8G+128G====8G+256G', './pic/Redmi (20).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('21', 'Redmi1.0', './pic/Redmi (1).png', '厉害了word米，买买买！刚买的苹果7p不要了，我要换Redmi！颠覆手机行业。全程看直播。必须买！Shut up and take my money！少废话，快收钱！', '5799.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (1).png====./pic/Redmi (2).png====./pic/Redmi (3).png====./pic/Redmi (4).png');
INSERT INTO `scenics` VALUES ('22', 'Redmi1.1', './pic/Redmi (2).png', '去小米之家砸碎一台是不是就可以被要求买下,对于这种“危险”的想法，我们认真的告诫:“千万别，让我来！”', '5799.00', '10', '霓虹蓝====魅力粉====冰糕橘', '#18dcff====#ff7675====#ffaf40', '8G+64G====16G+64G====16G+128G', './pic/Redmi (2).png====./pic/Redmi (5).png====./pic/Redmi (6).png====./pic/Redmi (7).png');
INSERT INTO `scenics` VALUES ('23', 'Redmi1.2', './pic/Redmi (3).png', '晚上躺床上看发布会，雷总讲完小米MIX的时候给我看哭了，我媳妇骂我有病，我只能骚扰一下小米商城的客服，告诉他们，小米太棒了。', '2999.00', '10', '番茄橙====天空蓝====黄金沙', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G', './pic/Redmi (3).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('24', 'Redmi1.3', './pic/Redmi (4).png', '小米MIX 是一款用奢侈品标准打造的黑科技手机，但注意的是他并不是奢侈品。因为奢侈品的特点是：用尽量多的钱去买尽量少功能的产品。而小米的产品类似于无印良品，忽略品牌的溢价，用尽量少的钱买到尽量好的产品。', '3999.00', '15', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+128G====8G+256G', './pic/Redmi (4).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('25', 'Redmi2.0', './pic/Redmi (5).png', '这太惊艳，这是第一感觉。连包装都不是以往的小米简约包装，而是精品的抽屉礼盒，每个细节都可以看得出来这款超旗舰的定位。后背是我最喜欢的黑色陶瓷，而前面板则是这款手机最惊艳的部分，一眼看去几乎全是屏幕！整机和我的7plus差不多高，但略宽一点，而屏幕大了太多太多。MIX是一款可以显著提振士气的产品，展示了小米的研发技术实力和他们“为发烧而生”的初心。', '3999.00', '15', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (5).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('26', 'Redmi2.1', './pic/Redmi (6).png', '小米第一代全面屏手机问世，她就是小米MIX，一部惊艳世界的科技之作，从此，这个名字，改变了人们对手机的认知，真正引领了全面屏该有的价值。', '3999.00', '15', '霓虹蓝====魅力粉====冰糕橘', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (6).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('27', 'Redmi2.2', './pic/Redmi (7).png', '2017年9月11日，同样是一个值得骄傲的日子，小米MIX2。再次，引起了人们的重视，屏占比达到18:9，无与伦比，独树一帜，问谁能与之，对峙。', '3999.00', '15', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====16G+64G====16G+128G', './pic/Redmi (7).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('28', 'Redmi2.3', './pic/Redmi (8).png', '骁龙835加持，8+256尊享陶瓷，大小正合适，全高清显示，旗舰级的配置，占尽全部优势，犹如一颗璀璨的宝石，不需要任何修饰，浑然天成的完美样式。', '2999.00', '15', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G', './pic/Redmi (8).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('29', 'Redmi2.4', './pic/Redmi (9).png', '美得像一首诗，没有瑕疵，风的力量，来自气质，水的力量，在于坚持，小米探索黑科技的构思，从未停止，只有创新才能拒绝相似，才能让别人复制，为发烧而生的宗旨。', '2999.00', '15', '番茄橙====天空蓝====黄金沙', '#ff6348====#70a1ff====#eccc68', '8G+128G====8G+256G', './pic/Redmi (9).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('30', 'Redmi3.0', './pic/Redmi (10).png', '未来给人的感觉总是，充满幻想和未知，而小米mix就像一把钥匙，打开了新世界大门，让一切如此真实，从遇见的第一眼开始，就明白了真正完美的标尺。', '2999.00', '15', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (10).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('31', 'Redmi3.1', './pic/Redmi (11).png', '厉害了word米，买买买！刚买的苹果7p不要了，我要换Redmi！颠覆手机行业。全程看直播。必须买！Shut up and take my money！少废话，快收钱！', '2999.00', '10', '霓虹蓝====魅力粉====冰糕橘', '#18dcff====#ff7675====#ffaf40', '8G+64G====8G+128G====8G+256G', './pic/Redmi (11).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('32', 'Redmi3.2', './pic/Redmi (12).png', '去小米之家砸碎一台是不是就可以被要求买下,对于这种“危险”的想法，我们认真的告诫:“千万别，让我来！”', '2999.00', '10', '番茄橙====天空蓝====黄金沙', '#0984e3====#ff7675====#c0392b', '8G+64G====16G+64G====16G+128G', './pic/Redmi (12).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('33', 'Redmi3.3', './pic/Redmi (13).png', '晚上躺床上看发布会，雷总讲完小米MIX的时候给我看哭了，我媳妇骂我有病，我只能骚扰一下小米商城的客服，告诉他们，小米太棒了。', '2599.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G', './pic/Redmi (13).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('34', 'Redmi3.4', './pic/Redmi (14).png', '小米MIX 是一款用奢侈品标准打造的黑科技手机，但注意的是他并不是奢侈品。因为奢侈品的特点是：用尽量多的钱去买尽量少功能的产品。而小米的产品类似于无印良品，忽略品牌的溢价，用尽量少的钱买到尽量好的产品。', '2599.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+128G====8G+256G', './pic/Redmi (14).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('35', 'Redmi3.5', './pic/Redmi (15).png', '这太惊艳，这是第一感觉。连包装都不是以往的小米简约包装，而是精品的抽屉礼盒，每个细节都可以看得出来这款超旗舰的定位。后背是我最喜欢的黑色陶瓷，而前面板则是这款手机最惊艳的部分，一眼看去几乎全是屏幕！整机和我的7plus差不多高，但略宽一点，而屏幕大了太多太多。MIX是一款可以显著提振士气的产品，展示了小米的研发技术实力和他们“为发烧而生”的初心。', '2599.00', '10', '霓虹蓝====魅力粉====冰糕橘', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (15).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('36', 'Redmi4.0', './pic/Redmi (16).png', '小米第一代全面屏手机问世，她就是小米MIX，一部惊艳世界的科技之作，从此，这个名字，改变了人们对手机的认知，真正引领了全面屏该有的价值。', '2599.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====8G+128G====8G+256G', './pic/Redmi (16).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('37', 'Redmi4.5', './pic/Redmi (17).png', '2017年9月11日，同样是一个值得骄傲的日子，小米MIX2。再次，引起了人们的重视，屏占比达到18:9，无与伦比，独树一帜，问谁能与之，对峙。', '2999.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+64G====16G+64G====16G+128G', './pic/Redmi (17).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('38', 'Redmi4.6', './pic/Redmi (18).png', '骁龙835加持，8+256尊享陶瓷，大小正合适，全高清显示，旗舰级的配置，占尽全部优势，犹如一颗璀璨的宝石，不需要任何修饰，浑然天成的完美样式。', '2999.00', '10', '番茄橙====天空蓝====黄金沙', '#ff6348====#70a1ff====#eccc68', '8G+64G====8G+128G', './pic/Redmi (18).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
INSERT INTO `scenics` VALUES ('39', 'Redmi4.7', './pic/Redmi (19).png', '美得像一首诗，没有瑕疵，风的力量，来自气质，水的力量，在于坚持，小米探索黑科技的构思，从未停止，只有创新才能拒绝相似，才能让别人复制，为发烧而生的宗旨。', '2999.00', '10', '电子蓝====魅力粉====石榴红', '#0984e3====#ff7675====#c0392b', '8G+128G====8G+256G', './pic/Redmi (19).png====./pic/Redmi (8).png====./pic/Redmi (9).png====./pic/Redmi (10).png');
