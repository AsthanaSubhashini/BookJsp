create table books (bookname varchar(20),isbn int primary key auto_increment,
author varchar(20),location varchar(20)
);
create table users (name varchar(20), username varchar(20) primary key,
password varchar(20), role varchar(20)
);
create table reviews(isnb int,reveiw varchar(50));