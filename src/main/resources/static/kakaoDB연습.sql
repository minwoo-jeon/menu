/*카카오톡 db설계 연습하기
회원
친구목록
대화목록
대화*/


create table user(
 user_id bigint auto_increment primary key,
 name varchar(10) not null,
 email varchar(20) not null,
 pno_num varchar(20),
 unique (email,pno_num)
);

create table friend(
friend_id bigint auto_increment primary key,
user_id integer references user(id)
);

create table chat_list(
chat_list_id bigint auto_increment primary key,
comment varchar(100) not null,
modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
user_id integer references user(id)
);

create table chat_room(
chat_rood_id bigint auto_increment primary key,
title varchar(30),
comment longtext,
create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
chat_list_id integer references user(id),
user_id integer references user(id)
);