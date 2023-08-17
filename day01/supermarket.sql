-- 题目：有一个商店的数据，记录客户及购物情况，由一下三个表组成：
   -- 1. 商品goods（商品编号goods_id,商品名goods_name,单价unit_price,商品类别category，供应商provider）
   -- 2. 顾客customer（客户号customer_id,姓名name，住址address，邮箱email，性别sex，身份证Card_id）
   -- 3. 购买purchase（购买订单order_id,客户号customer_id,商品号goods_id,购买数量nums）

   -- 创建数据库，设置数据库编码
   create database if not exists supermarket
   default character set utf8 ;
   -- 选择数据库
   use supermarket;
   -- 创建数据库表
   -- 商品
   create table if not exists goods
   (
   goods_id int comment '商品编号',
   goods_name varchar(20) comment '商品名称',
   unit_price int comment '单价，单位分',
   category varchar(20) comment '商品类别',
   provider varchar(20) comment '供应商名称'
   );
-- unit_price 这个是表示单价，是跟钱挂钩的数据，那么我们应该使用很精确的数据类型才可以,使用float和double都不够，要使用decimal

   -- 顾客
   create table if not exists customer
   (
   customer_id int comment '客户编号',
   name varchar(20) comment '客户姓名',
   address varchar(100) comment '客户住址',
   email varchar(50) comment '客户邮箱',
   gender varchar(1) comment '客户性别',
   card_id varchar(100) comment '客户id'
   );
   -- 购买
   create table if not exists purchase
   (
   order_id int comment ' 购买订单',
   customer_id int comment '客户号',
   goods_id int comment '商品号',
   nums int comment '购买数量'
   );
   -- 查看当前数据库中所有的的表
  show tables;