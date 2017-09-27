-- 数据库
CREATE SCHEMA `dwsurvey` ;

-- 用户表
drop table diao_user;

CREATE TABLE `dwsurvey`.`diao_user` (
  `user_id` CHAR(55) NOT NULL,		-- 用户id
  `user_realName` VARCHAR(55) NULL,	-- 昵称
  `user_loginName` VARCHAR(55) NOT NULL, -- 登录名
  `user_email` VARCHAR(55) NOT NULL,	-- 邮箱
  `user_password` VARCHAR(55) NOT NULL,	-- 密码
  `user_create` DATETIME NOT NULL,	-- 创建时间
  `last_time` DATETIME NOT NULL,	-- 最后登录时间
  `user_status` INT NOT NULL,	-- 0：不可用 1：可用
  PRIMARY KEY (`user_id`));	-- 主键

select * from diao_user;

-- 用户日志表

drop table diao_user_log;

CREATE TABLE `dwsurvey`.`diao_user_log` (
  `user_log_id` INT NOT NULL AUTO_INCREMENT,	-- 日志iD
  `user_id` CHAR(55) NOT NULL,	-- 用户id
  `operation` VARCHAR(55) NULL,	-- 操作
  `user_log_createdate` DATETIME NOT NULL,	-- 创建时间
  `user_log_logindate` DATETIME NOT NULL,	-- 登录时间
  PRIMARY KEY (`user_log_id`));

select * from diao_user_log;

-- 角色表
drop table diao_role;

CREATE TABLE `dwsurvey`.`diao_role` (
  `role_id` CHAR(55) NOT NULL,	-- 角色id
  `role_name` VARCHAR(55) NOT NULL,	-- 角色名称
  `role_desc` VARCHAR(55) NULL,	-- 备注
  PRIMARY KEY (`role_id`));

select * from diao_role;

-- 授权（资源表）
drop table diao_resource;

CREATE TABLE `dwsurvey`.`diao_resource` (
  `resource_id` CHAR(55) NOT NULL,	-- 资源ID
  `resource_path` VARCHAR(55) NOT NULL,	-- 资源路径
  `resource_name` VARCHAR(55) NULL,	-- 简短名称
  `resource_desc` VARCHAR(55) NULL,	-- 描述
  PRIMARY KEY (`resource_id`));

select * from diao_resource;

-- 操作表(对访问的路径进行，操作增、删、改、查）
drop table diao_operator;

CREATE TABLE `dwsurvey`.`diao_operator` (
  `operator_id` CHAR(55) NOT NULL,	-- 资源id
  `operator_modifire` VARCHAR(55) NOT NULL,	-- 操作（add/delete..）
  PRIMARY KEY (`operator_id`));

select * from diao_operator;

-- 权限表
drop table diao_privilege;

CREATE TABLE `dwsurvey`.`diao_privilege` (
  `privilege_id` CHAR(55) NOT NULL,	-- 权限id
  `privilege_name` VARCHAR(55) NULL,	-- 权限名称
  PRIMARY KEY (`privilege_id`));

select * from diao_privilege;

-- 资源 和 操作 关联
drop table diao_resource_operator;

CREATE TABLE `dwsurvey`.`diao_resource_operator` (
  `resource_id` CHAR(55) NOT NULL,	-- 资源id
  `operator_id` CHAR(55) NOT NULL);	-- 操作id

select * from diao_resource_operator;


-- 角色和用户 关联表
drop table diao_role_user;

CREATE TABLE `dwsurvey`.`diao_role_user` (
  `role_id` CHAR(55) NOT NULL,	-- 角色id
  `user_id` CHAR(55) NOT NULL);	-- 用户id

select * from diao_role_user;

-- 权限 和 关联的资源
drop table diao_privilege_resource;

CREATE TABLE `dwsurvey`.`diao_privilege_resource` (
  `privilege_id` CHAR(55) NOT NULL,	-- 权限id
  `user_id` CHAR(55) NOT NULL);	-- 操作者id

select * from diao_privilege_resource;

-- 角色 和 权限 关联表
drop table diao_role_privilege;

CREATE TABLE `dwsurvey`.`diao_role_privilege` (
  `role_id` CHAR(55) NOT NULL,	-- 角色id
  `privilege_id` CHAR(55) NOT NULL);	-- 权限id

select * from diao_role_privilege;

drop table diao_wenjuan;

CREATE TABLE `dwsurvey`.`diao_wenjuan` (
  `we_id` CHAR(55) NOT NULL,	-- 问卷id
  `we_title` VARCHAR(55) NOT NULL,	-- 问卷标题
  `lreate_user` CHAR(55) NOT NULL,	-- 创建用户id
  `create_time` DATETIME NOT NULL,	-- 创建时间
  `last_time` DATETIME NOT NULL,	-- 问卷有效时间
  `cell_count` INT NOT NULL,	-- 参与问卷人数
  `we_status` INT NOT NULL);	-- 问卷状态 0：设计 1：发布 2：结束

select * from diao_wenjuan;

--  =================
-- 回答具体内容表

drop table diao_an_content;

create table diao_an_content
(
	content_id char(55) not null,	-- 回答内容ID
	belong_id  char(55) not null,	-- 属于哪个回答ID
	op_id char(55),					-- 回答的选项ID
	content varchar(55),			-- 回答内容
	an_count int 					-- 回答的积累
);

SELECT * FROM diao_an_content;

-- 回答表

drop table diao_answer;

create table diao_answer
(
	an_id char(55) not null			-- 回答表ID
);

SELECT * FROM diao_answer;

-- 选项表

drop table diao_option;

create table diao_option
(
	op_id char(55) not null,		-- 选项表ID
	op_name varchar(55) not null,	-- 选项名称
	order_by int not null,			-- 选项列表中排序序号
	belong_id char(55) not null		-- 属于哪个问题ID
);

select * from diao_option;

-- 类型表

drop table diao_question_type;

create table diao_question_type
(
	type_id char(55) not null,		-- 类型ID
	type_name varchar(55) not null,	-- 类型名称
	question_type_desc varchar(55) 				-- 备注
);

SELECT * FROM diao_question_type;

-- 问题表

drop table diao_question;

create table diao_question
(
	qu_id char(55) not null,		-- 问题卷ID
	belong_id char(55) not null,	-- 属于哪个问卷ID
	qu_title varchar(55) not null,	-- 问题标题
	qu_type_id varchar(55) not null,-- 问题类型ID
	order_by int not null  			-- 在问卷中该问题的排序序号
);

SELECT * FROM diao_question;







