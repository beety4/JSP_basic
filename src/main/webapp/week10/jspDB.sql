CREATE DATABASE jspDB character set utf8;
use jspDB;

CREATE TABLE emp (
	empno varchar(20) not null primary key,
	empname varchar(20) not null,
	empdept varchar(20) not null,
	empjob varchar(20) not null,
	empsal int not null
);

INSERT INTO emp values('2019001', '홍길동', '100', '기획', '2000000');
INSERT INTO emp values('2019002', 'Smith', '200', '판매', '1500000');
INSERT INTO emp values('2019003', 'Tom', '300', '관리', '2500000');
INSERT INTO emp values('2019004', 'Sera', '400', '홍보', '1800000');
INSERT INTO emp values('2019005', '김철수', '500', '인사', '2200000');



CREATE TABLE dept (
	deptNo int primary Key,
	deptName varchar(20),
	deptLoc varchar(20)
);

INSERT INTO dept VALUES(100, '기획팀', '서울');
INSERT INTO dept VALUES(200, '영업팀', '경기');
INSERT INTO dept VALUES(300, '관리팀', '인천');
INSERT INTO dept VALUES(400, '홍보팀', '일산');
INSERT INTO dept VALUES(500, '인사팀', '수원');
