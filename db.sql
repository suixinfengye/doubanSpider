SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for doulist
-- ----------------------------
DROP TABLE IF EXISTS `doulist`;
CREATE TABLE `doulist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieid` varchar(16) NOT NULL,
  `movie_url` varchar(128) NOT NULL,
  `movie_name` varchar(64) NOT NULL,
  `doulist_url` varchar(128) DEFAULT NULL COMMENT '豆列地址',
  `doulist_name` varchar(64) DEFAULT NULL COMMENT '豆列名称',
  `doulist_intr` varchar(512) DEFAULT NULL COMMENT '简介',
  `user_name` varchar(32) DEFAULT NULL COMMENT '豆列用户名',
  `user_url` varchar(128) DEFAULT NULL COMMENT '豆列用户url',
  `collect_num` int(11) DEFAULT NULL COMMENT '收藏数',
  `recommend_num` int(11) DEFAULT NULL COMMENT '推荐数',
  `viewed_num` int(11) DEFAULT NULL COMMENT '已看数',
  `not_viewed_num` int(11) DEFAULT NULL COMMENT '未看数',
  `doulist_cratedDate` date DEFAULT NULL COMMENT '豆列创建日期',
  `doulist_updatedDate` date DEFAULT NULL COMMENT '豆列更新日期',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `doulist_url` (`doulist_url`),
  KEY `doulis_movieid_index` (`movieid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for doulist_movie_detail
-- ----------------------------
DROP TABLE IF EXISTS `doulist_movie_detail`;
CREATE TABLE `doulist_movie_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieid` varchar(16) NOT NULL,
  `movie_url` varchar(128) NOT NULL,
  `movie_name` varchar(64) NOT NULL,
  `doulist_url` varchar(128) DEFAULT NULL COMMENT '豆列地址',
  `comment` varchar(512) DEFAULT NULL COMMENT '评论',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `doulist_movie_detail_movieid_index` (`movieid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for film_critics
-- ----------------------------
DROP TABLE IF EXISTS `film_critics`;
CREATE TABLE `film_critics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieid` varchar(16) NOT NULL,
  `movie_url` varchar(128) NOT NULL,
  `movie_name` varchar(64) NOT NULL,
  `film_critics_url` varchar(128) DEFAULT NULL COMMENT '影评地址',
  `title` varchar(64) DEFAULT NULL COMMENT '影评标题',
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名',
  `user_url` varchar(128) DEFAULT NULL COMMENT '用户url',
  `comment_rate` decimal(2,1) DEFAULT NULL COMMENT '评分',
  `comment_time` date DEFAULT NULL COMMENT '发表时间',
  `useless_num` int(11) DEFAULT NULL COMMENT '有用数',
  `useful_num` int(11) DEFAULT NULL COMMENT '无用数',
  `like_num` int(11) DEFAULT NULL COMMENT '喜欢数',
  `reply_num` int(11) DEFAULT NULL COMMENT '回复数',
  `recommend_num` int(11) DEFAULT NULL COMMENT '推荐数',
  `review` varchar(128) DEFAULT NULL COMMENT '影评内容地址',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `film_critics_url` (`film_critics_url`),
  KEY `film_critics_movieid_index` (`movieid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for movie_detail
-- ----------------------------
DROP TABLE IF EXISTS `movie_detail`;
CREATE TABLE `movie_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieid` varchar(16) NOT NULL,
  `movie_url` varchar(128) NOT NULL,
  `movie_name` varchar(64) NOT NULL,
  `director` varchar(128) DEFAULT NULL COMMENT '导演',
  `writers` varchar(128) DEFAULT NULL COMMENT '编剧',
  `stars` varchar(512) DEFAULT NULL COMMENT '主演',
  `genres` varchar(32) DEFAULT NULL COMMENT '类型',
  `country` varchar(64) DEFAULT NULL COMMENT '制片国家/地区',
  `official_site` varchar(64) DEFAULT NULL COMMENT '官方网站',
  `language` varchar(32) DEFAULT NULL COMMENT '语言',
  `release_date` varchar(128) DEFAULT NULL COMMENT '上映日期',
  `also_known_as` varchar(128) DEFAULT NULL COMMENT '又名',
  `runtime` varchar(32) DEFAULT NULL COMMENT '片长',
  `IMDb_url` varchar(64) DEFAULT NULL COMMENT 'IMDb链接',
  `douban_rate` decimal(2,1) DEFAULT NULL COMMENT '豆瓣评分',
  `rate_num` int(11) DEFAULT NULL COMMENT '评价人数',
  `star_5` varchar(8) DEFAULT NULL COMMENT '5星',
  `star_4` varchar(8) DEFAULT NULL COMMENT '4星',
  `star_3` varchar(8) DEFAULT NULL COMMENT '3星',
  `star_2` varchar(8) DEFAULT NULL COMMENT '2星',
  `star_1` varchar(8) DEFAULT NULL COMMENT '1星',
  `comparison_1` varchar(64) DEFAULT NULL COMMENT '同类型片对比1',
  `comparison_2` varchar(64) DEFAULT NULL COMMENT '同类型片对比2',
  `view_date` varchar(16) DEFAULT NULL COMMENT '观看日期',
  `my_rate` varchar(8) DEFAULT NULL COMMENT '我的评价:很差/较差/还行/推荐/力荐',
  `my_tags` varchar(64) DEFAULT NULL COMMENT '我的标签',
  `tags` varchar(128) DEFAULT NULL COMMENT '电影标签',
  `storyline` varchar(1024) DEFAULT NULL COMMENT '剧情简介',
  `also_like_1_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_1_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_2_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_2_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_3_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_3_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_4_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_4_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_5_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_5_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_6_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_6_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_7_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_7_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_8_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_8_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_9_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_9_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_10_name` varchar(64) DEFAULT NULL COMMENT '同类电影推荐',
  `also_like_10_url` varchar(128) DEFAULT NULL COMMENT '同类电影推荐',
  `prize` text COMMENT '获奖情况',
  `essay_collect_url` varchar(128) DEFAULT NULL COMMENT '短评',
  `film_critics_url` varchar(128) DEFAULT NULL COMMENT '影评',
  `doulists_url` varchar(128) DEFAULT NULL COMMENT '影评',
  `viewed_num` int(11) DEFAULT NULL COMMENT '看过人数',
  `want_to_view_num` int(11) DEFAULT NULL COMMENT '想看人数',
  `image_url` varchar(128) DEFAULT NULL COMMENT '封面图片',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `movieid` (`movieid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for movie_essay
-- ----------------------------
DROP TABLE IF EXISTS `movie_essay`;
CREATE TABLE `movie_essay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieid` varchar(16) NOT NULL,
  `movie_url` varchar(128) NOT NULL,
  `movie_name` varchar(64) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名',
  `user_url` varchar(128) DEFAULT NULL COMMENT '用户url',
  `comment` varchar(512) DEFAULT NULL COMMENT '短评内容',
  `comment_rate` decimal(2,1) DEFAULT NULL COMMENT '评分',
  `comment_time` date DEFAULT NULL COMMENT '发表时间',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `movie_essay_movieid_index` (`movieid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;









