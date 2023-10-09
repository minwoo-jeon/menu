/* 2023-10-09 게시판 테이블 db설계 연습하기*/
/*user talbe * 회원테이블/
create table user(
user_id bigint auto_increment primary key,
name varchar(10) not null,
email varchar(20) not null,
password varchar(20) not null,
created_at current timestamp,
);
select * from user;


/*board table* 게시판 테이블/
create table board(
board_id bigint auto_increment primary key,
title varchar(20) not null,
contents varchar(200) not null,
created_at datetime not null,
modified_at datetime not null,
user_id  integer references user(id),
category_id integer references  category(id)
);
select * from board;

/* comment table 댓글 테이블*/
create table comment(
comment_id bigint auto_increment primary key,
comment varchar(100) not null,
created_at	current timestamp,
modified_at current timestamp,
user_id integer references user(id),
board_id integer references board(id)   
);

select * from comment;

/*category*/
create table category(
	category_id bigint auto_increment primary key ,
    cate_name varchar(20) not null
);