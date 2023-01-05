create database fashion;
use fashion;

CREATE TABLE product_details(
   product_id    VARCHAR(6) NOT NULL PRIMARY KEY
  ,price         INTEGER  NOT NULL
  ,product_name  VARCHAR(32) NOT NULL
  ,category_id   INTEGER  NOT NULL
  ,segment_id    INTEGER  NOT NULL
  ,style_id      INTEGER  NOT NULL
  ,category_name VARCHAR(6) NOT NULL
  ,segment_name  VARCHAR(6) NOT NULL
  ,style_name    VARCHAR(19) NOT NULL
);
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('c4a632',13,'Navy Oversized Jeans - Womens',1,3,7,'Womens','Jeans','Navy Oversized');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('e83aa3',32,'Black Straight Jeans - Womens',1,3,8,'Womens','Jeans','Black Straight');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('e31d39',10,'Cream Relaxed Jeans - Womens',1,3,9,'Womens','Jeans','Cream Relaxed');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('d5e9a6',23,'Khaki Suit Jacket - Womens',1,4,10,'Womens','Jacket','Khaki Suit');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('72f5d4',19,'Indigo Rain Jacket - Womens',1,4,11,'Womens','Jacket','Indigo Rain');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('9ec847',54,'Grey Fashion Jacket - Womens',1,4,12,'Womens','Jacket','Grey Fashion');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('5d267b',40,'White Tee Shirt - Mens',2,5,13,'Mens','Shirt','White Tee');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('c8d436',10,'Teal Button Up Shirt - Mens',2,5,14,'Mens','Shirt','Teal Button Up');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('2a2353',57,'Blue Polo Shirt - Mens',2,5,15,'Mens','Shirt','Blue Polo');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('f084eb',36,'Navy Solid Socks - Mens',2,6,16,'Mens','Socks','Navy Solid');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('b9a74d',17,'White Striped Socks - Mens',2,6,17,'Mens','Socks','White Striped');
INSERT INTO product_details(product_id,price,product_name,category_id,segment_id,style_id,category_name,segment_name,style_name) VALUES ('2feb6b',29,'Pink Fluro Polkadot Socks - Mens',2,6,18,'Mens','Socks','Pink Fluro Polkadot');

CREATE TABLE product_hierarchy(
   id         INTEGER  NOT NULL PRIMARY KEY 
  ,parent_id  INTEGER 
  ,level_text VARCHAR(19) NOT NULL
  ,level_name VARCHAR(8) NOT NULL
);
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (1,NULL,'Womens','Category');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (2,NULL,'Mens','Category');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (3,1,'Jeans','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (4,1,'Jacket','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (5,2,'Shirt','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (6,2,'Socks','Segment');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (7,3,'Navy Oversized','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (8,3,'Black Straight','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (9,3,'Cream Relaxed','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (10,4,'Khaki Suit','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (11,4,'Indigo Rain','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (12,4,'Grey Fashion','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (13,5,'White Tee','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (14,5,'Teal Button Up','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (15,5,'Blue Polo','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (16,6,'Navy Solid','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (17,6,'White Striped','Style');
INSERT INTO product_hierarchy(id,parent_id,level_text,level_name) VALUES (18,6,'Pink Fluro Polkadot','Style');

CREATE TABLE product_prices(
   id         INTEGER  NOT NULL PRIMARY KEY 
  ,product_id VARCHAR(6) NOT NULL
  ,price      INTEGER  NOT NULL
);
INSERT INTO product_prices(id,product_id,price) VALUES (7,'c4a632',13);
INSERT INTO product_prices(id,product_id,price) VALUES (8,'e83aa3',32);
INSERT INTO product_prices(id,product_id,price) VALUES (9,'e31d39',10);
INSERT INTO product_prices(id,product_id,price) VALUES (10,'d5e9a6',23);
INSERT INTO product_prices(id,product_id,price) VALUES (11,'72f5d4',19);
INSERT INTO product_prices(id,product_id,price) VALUES (12,'9ec847',54);
INSERT INTO product_prices(id,product_id,price) VALUES (13,'5d267b',40);
INSERT INTO product_prices(id,product_id,price) VALUES (14,'c8d436',10);
INSERT INTO product_prices(id,product_id,price) VALUES (15,'2a2353',57);
INSERT INTO product_prices(id,product_id,price) VALUES (16,'f084eb',36);
INSERT INTO product_prices(id,product_id,price) VALUES (17,'b9a74d',17);
INSERT INTO product_prices(id,product_id,price) VALUES (18,'2feb6b',29);

CREATE TABLE sales(
   prod_id        VARCHAR(6) NOT NULL 
  ,qty            INTEGER  NOT NULL
  ,price          INTEGER  NOT NULL
  ,discount       INTEGER  NOT NULL
  ,member         VARCHAR(5) NOT NULL
  ,txn_id         VARCHAR(6) NOT NULL
  ,start_txn_time VARCHAR(24) NOT NULL
);

select *  from sales;

-- 1.  what was the total  quantity sold for all the products
select pd.product_name,sum(s.qty) as sales_count from product_details as pd
join sales as s on
pd.product_id = s.prod_id
group by pd.product_name
order by sales_count desc;

-- 2. what is the total  generated revenue for  all the products before discounts
select  sum(qty * price) as   discounts_revenue from sales;

-- 3.what was the total discount amount for all the products
select sum(price*qty*discount)/100 as total_dis from sales;

-- 4.how many unique trancsaction where there
select count(distinct txn_id) as uni_tasc from sales;

-- 5.what are the avegrage unique products purchased in each trancsation
with cte as
(select count(distinct prod_id) as uni_prod ,txn_id from sales
group by txn_id)
select round(avg(uni_prod)) as avg_uni from cte;

-- 6.what is the avg discount value per transaction;
with cte as 
(select txn_id, sum(price*qty*discount)/100 as total_dis from sales
group by txn_id)
select round(avg(total_dis)) as total_avg_dis from cte;

-- 7.what is the avg revenue for the member trancsaction and for non member transaction
with cte as 
(select member,txn_id,sum(price*qty) as avg_rev from sales
group by member,txn_id)
select member,round(avg(avg_rev),2) as avg_re from cte
group by member;

-- 8.what are the top three products by total rev before discounts 
select pd.product_name, sum(s.price*s.qty) as bef_disc from product_details as pd
join sales as s
on pd.product_id = s.prod_id
group by pd.product_name
order by bef_disc desc limit 3;

-- 9.what are the total quantity ,revenue and discount for each segment
select pd.segment_id,pd.segment_name ,
sum(s.qty) as total_qty,
sum(s.qty*s.price) as total_revenue,
sum(s.qty*s.price*s.discount)/100 as total_discount
from product_details as pd
join sales as s 
on pd.product_id = s.prod_id
group by pd.segment_name
order by total_revenue desc ;

-- 10. what is the top selling product for each segment
select pd.segment_id,pd.segment_name,pd.product_id,pd.product_name,sum(s.qty) as product_qty
from product_details as pd
join sales as s 
on pd.product_id = s.prod_id
group by pd.segment_name,pd.product_name
order by product_qty desc limit 5 ;

-- 11. what are the total quantity ,revenue and discount for each category
select pd.category_id , pd.category_name,
sum(s.qty) as total_qty,
sum(s.qty*s.price) as total_revenue,
sum(s.qty*s.price*s.discount)/100 as total_discount
from product_details as pd
join sales as s 
on pd.product_id = s.prod_id
group by pd.category_name;

-- 12. what is the top selling product for each category 
select pd.product_id,pd.product_name,pd.category_id , pd.category_name,sum(s.qty) as product_qty
from product_details as pd
join sales as s 
on pd.product_id = s.prod_id
group by pd.category_name,product_name
order by product_qty desc limit 5



