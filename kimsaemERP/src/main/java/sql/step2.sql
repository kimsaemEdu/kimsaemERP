#job테이블을 group테이블로 정의
drop table job CASCADE CONSTRAINTS;
create table job(
	job_id varchar2(10) primary key,
	job_name varchar2(15),
	job_category varchar2(15),
	menupath varchar2(50));

	#권한테이블
create table authority(
     authorityid varchar2(20) primary key,
     authorityname varchar2(20));
     
insert into authority values('auth01','systemadmin');
insert into authority values('auth02','admin');
insert into authority values('auth03','insaadmin');
insert into authority values('auth04','insauser');
insert into authority values('auth05','user');

drop table groupauthority;
create table groupauthority(
     groupid varchar2(20),
     authorityid varchar2(20));

     
insert into groupauthority values('j001','auth05');
insert into groupauthority values('j002','auth04');
insert into groupauthority values('j002','auth05'); 
insert into groupauthority values('j003','auth05'); 
insert into groupauthority values('j003','auth01'); 
insert into groupauthority values('j003','auth02'); 
insert into groupauthority values('j004','auth03'); 
insert into groupauthority values('j004','auth05'); 
insert into groupauthority values('j005','auth03'); 
insert into groupauthority values('j005','auth05'); 


select * from member;