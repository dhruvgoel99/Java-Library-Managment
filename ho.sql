create database dbg;
use dbg;
show databases;
create table book (id varchar(20), name varchar(20), author varchar(45), publisher varchar(45), quantity numeric(5));
create table librarian (id varchar(20), name varchar(20), password varchar(45), email varchar(45), phone numeric(5));
create table issue_book (bid varchar(20), studentid varchar(20), stuphone numeric(45), issuedate date);
drop database dbg;
create database dbg;
use dbg;
create table book (id varchar(20), name varchar(20), author varchar(45), publisher varchar(45), quantity numeric(5), primary key(id));
desc book;
create table librarian (id varchar(20), name varchar(20), password varchar(45), email varchar(45), phone numeric(5), primary key(id));
create table issue_book (id varchar(20), studentid varchar(20), stuphone numeric(45), issuedate date, primary key(id));
desc librarian;
