create database df;
use df;
show tables;
create table admin (aid varchar(20), name varchar(45), phone numeric(10), password varchar(40));
create table user (uid varchar(20), name varchar(45), phone numeric(10), password varchar(40));
drop table user;
select * from user;
create table user (uid varchar(20), name varchar(45), phone numeric(10), password varchar(40), bida varchar(20), bidu varchar(20), bidau varchar(20));
create table book (bid varchar(20), name varchar(45), edition numeric(5),aname varchar(20),pname varchar(20),irate float(4));
select * from admin;
select * from user;
select * from book;
insert into admin values('AD166579','Anand Singh Jalal','8574797945','123456');
alter table admin
modify phone varchar(10);
desc admin;
delete from user where uid is NULL;
update user set uid='UD166579'
where password='166579';
insert into user (uid, name, phone, password) values('UD166579','Avinash Goel',9958235821,'6579');
insert into book values('BD166581','Complete Refrence with java','9','Mc Hill','ABC Publication',50);
select * from book,user
where bid='BD166580' and user.bida='BD166580' and user.uid='UD166579';
select * from user,book where user.bida='BD166580' and book.bid='BD166580' and user.uid='UD166579';
select * from user,book where user.bida=book.bid or user.bidu=book.bid or user.bidau=book.bid and user.uid='UD166579';
ALTER TABLE user
ADD COLUMN bill numeric(5) AFTER bidau;
update user set bill=bill+(select irate from book where book.bid='BD166579') where uid='UD166580';
update user set bill=0;
select * from user,book where user.uid='UD166580' and (user.bida=book.bid or user.bidu=book.bid or user.bidau=book.bid);
update admin set aid='AD166581' where password='789654';
select name,password from user where uid='UD166579' and password='166579';
select * from user,book where user.uid='UD166580' and (user.bida=book.bid or user.bidu=book.bid or user.bidau=book.bid);