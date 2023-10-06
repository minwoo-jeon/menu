--/*메뉴 테이블*/
CREATE TABLE MENUS(
    menu_name varchar(10) not null,
    menu_price number(10) not null,
    PRIMARY KEY(menu_name)
 );

INSERT INTO menus (menu_name,menu_price) VALUES('���̴�','3000');
INSERT INTO menus (menu_name,menu_price) VALUES('���̺�','5000');

select * from menus ;


/* 카테고리 테이블*/

/*카테고리는 어떻게 만들어야할지 모르겠네*/
drop table category
create table category(
 cart_code number NOT NULL,
 cart_name VARCHAR2(20) NOT NULL,
 cart_desc VARCHAR2(40) NOT NULL,
 PRIMARY KEY(cart_CODE)
 )

INSERT INTO category (cart_code,CART_NAME,CART_DESC) VALUES('1','����','���̺�')
INSERT INTO category (cart_code,CART_NAME,CART_DESC) VALUES('3','����','���̴�')
INSERT INTO category (cart_code,CART_NAME,CART_DESC) VALUES('1','����','���̺�')
INSERT INTO category (cart_code,CART_NAME,CART_DESC) VALUES('2','�ַ�','���̺�')

SELECT * FROM category 





