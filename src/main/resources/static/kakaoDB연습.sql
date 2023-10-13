create table user(
 user_id bigint auto_increment primary key,
 name varchar(10) not null,
 email varchar(20) not null,
 pno_num varchar(20),
 unique (email,pno_num)
);

insert into user(name,email,pno_num)
value('홍길동','test1@naver.com','010-2777-2777'); 

insert into user(name,email,pno_num)
value('유관순','test2@naver.com','010-2777-2777'); 

insert into user(name,email,pno_num)
value('이순신','test3@naver.com','010-3217-3217'); 
select * from user;



create table friend(
friend_id bigint auto_increment primary key,
user_id integer references user(id)
);
select * from friend;

create table chat_list(
chat_list_id bigint auto_increment primary key,
comment varchar(100) not null,
modified_at DATETIME DEFAULT CURRENT_TIMESTAMP,
user_id integer references user(id)
);

insert into chat_list(comment,modified_at,user_id)
value('오늘 날씨','2023-10-13','1');

insert into chat_list(comment,modified_at,user_id)
value('오늘 주식','2023-10-13','2');

insert into chat_list(comment,modified_at,user_id)
value('오늘 주식','2023-10-13','3');




create table chat_room(
chat_rood_id bigint auto_increment primary key,
title varchar(30),
comment longtext,
create_at DATETIME DEFAULT CURRENT_TIMESTAMP,
chat_list_id integer references chat_list(id),
user_id integer references user(id)
);

insert into chat_room(title,comment,create_at,user_id,chat_list_id)
value('점심','메뉴선택','2023-10-13','1','1');
select * from chat_room;



select chat_list_id,count(id) from chat_list group by chat_list_id;

