/*初始化逻辑所用字段*/
ALTER TABLE DATA_MEDIA_PAIR ADD INIT_USE boolean NOT NULL DEFAULT false COMMENT '是否初始化';
ALTER TABLE DATA_MEDIA_PAIR ADD INIT_END boolean NOT NULL DEFAULT false COMMENT '初始化结束';
ALTER TABLE DATA_MEDIA_PAIR ADD INIT_POS varchar(32) NULL COMMENT '初始化位置';

/***此处功能用来同步所有删除数据到指定的表， 用来给maxcomputer同步*/
CREATE TABLE `mc_filter_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `keys` varchar(256) DEFAULT NULL COMMENT '主键',
  `db_name` varchar(64) DEFAULT NULL COMMENT '源库名称',
  `tb_name` varchar(64) DEFAULT NULL COMMENT '源表名称',
  `mc_tb_name` varchar(64) DEFAULT NULL COMMENT 'maxComputer表名称',
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;