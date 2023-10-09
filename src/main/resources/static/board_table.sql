/* user talbe */
create table user(
user_id bigint auto_increment primary key,
name varchar(10) not null,
email varchar(20) not null,
password varchar(20) not null,
indate date default null
);

select * from user;

/*board table*/


create table board(
board_id bigint auto_increment primary key,
title varchar(20) not null,
contents varchar(200) not null,
created datetime not null,
modified datetime not null,
user_id  integer references user(id),
category_id integer references  category(id)
);

select * from board;

/* comment table*/
create table comment(
comment_id bigint auto_increment primary key,
comment varchar(100) not null,
created	datetime not null,
modified datetime not null,
user_id integer references user(id),
board_id integer references board(id)   
);

select * from comment;

/*category*/
create table category(
	category_id bigint auto_increment primary key ,
    cate_name varchar(20) not null
);