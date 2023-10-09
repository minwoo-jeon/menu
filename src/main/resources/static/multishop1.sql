/*메뉴테이블*/
CREATE TABLE MENUS(
    menu_name varchar(10) not null,
    menu_price number(10) not null,
    PRIMARY KEY(menu_name)
 );

INSERT INTO menus (menu_name,menu_price) VALUES('사이다','3000');
INSERT INTO menus (menu_name,menu_price) VALUES('하이볼','5000');

select * from menus ;


/* 카테고리 테이블*/

drop table category
create table category(
 cart_code number NOT NULL,
 cart_name VARCHAR2(20) NOT NULL,
 cart_desc VARCHAR2(40) NOT NULL,
 PRIMARY KEY(cart_CODE)
 )

INSERT INTO category (cart_code,CART_NAME,CART_DESC) VALUES('1','음료','하이볼')
INSERT INTO category (cart_code,CART_NAME,CART_DESC) VALUES('3','음료','사이다')
INSERT INTO category (cart_code,CART_NAME,CART_DESC) VALUES('1','음료','하이볼')
INSERT INTO category (cart_code,CART_NAME,CART_DESC) VALUES('2','주류','하이볼')

SELECT * FROM category 


/* 수정 */

create table menu(
    id bigint auto_increment primary key,
    name varchar(20) not null,
    price int not null
);

create table category(
    id bigint auto_increment primary key ,
    name varchar(20) not null,
    priority int not null
);

create table menu_category(
    id bigint auto_increment primary key,
    menu_id bigint not null,
    category_id bigint not null,
    unique (menu_id, category_id)
);

select menu.* from menu join menu_category mc on menu.id = mc.menu_id
where category_id = 2;




