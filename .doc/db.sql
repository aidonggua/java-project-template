create database if not exists java_project_template default character set utf8mb4 collate utf8mb4_unicode_ci;

use java_project_template;

create table if not exists user
(
    id           int unsigned                               not null auto_increment,
    user_name    varchar(32)                                not null default '' comment '用户名',
    password     varchar(64)                                not null comment '密码',
    nick_name    varchar(20)                                not null default '' comment '昵称',
    status       tinyint unsigned default 0                 not null comment '用户状态',
    gmt_create   datetime         default CURRENT_TIMESTAMP not null,
    gmt_modified datetime         default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    deleted      tinyint unsigned default 0                 not null,
    primary key (id)
);

create table if not exists lookup
(
    id           bigint unsigned                            not null auto_increment primary key,
    lookup_type  varchar(32)                                not null comment '分类',
    lookup_key   varchar(32)                                not null comment '名称',
    lookup_value varchar(64)                                not null comment '值',
    gmt_create   datetime         default CURRENT_TIMESTAMP not null,
    gmt_modified datetime         default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP,
    deleted      tinyint unsigned default 0                 not null
) comment '数据字典';
