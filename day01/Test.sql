-- 题目：有一个商店的数据，记录客户及购物情况，由一下三个表组成：
   -- 1. 商品goods（商品编号goods_id,商品名goods_name,单价unit_price,商品类别category，供应商provider）
   -- 2. 顾客customer（客户号customer_id,姓名name，住址address，邮箱email，性别sex，身份证Card_id）
   -- 3. 购买purchase（购买订单order_id,客户号customer_id,商品号goods_id,购买数量nums）
   /* 先登录MySQL数据库管理系统，然后再创建我们需要的数据库之后，记得创建数据库的时候一点要把该数据库的编码改成utf8，
   然后我们再选中我们需要的数据库之后，我们就可以开始给数据库创建表，表创建好之后就可以了 */

-- 创建数据库
create database if not exists market
default character set utf8;
-- 创建表
create table if not exists Goods(
    GoodsId int ,
    GoodsName varchar(20) comment '商品名',
    UnitPrice int,
    Category varchar(20),
    Provider  varchar(20)
);
create table if not exists Customer (
    CustomerId  int ,
    Name varchar(20),
    Address varchar(50),
    email varchar(20),
    gender varchar(1),
    CardId  int
);
create table if not exists Purchase(
    OrderId int,
    CustomerId int,
    GoodsId  int,
    Nums int
);
show tables;