create table dept(
	deptno varchar2(15) primary key,
	deptname varchar2(30),
	deptStartDay date,
	deptEndDay date,
	deptlevel varchar2(5),
	deptstep varchar2(5),
	deptuppercode varchar2(15),
	job_category varchar2(15),
	mgr_id varchar2(15),
	deptaddr varchar2(50),
	depttel varchar2(15)
);
insert all
			into board_file
			values(board_seq.currval,'f')
			into board_file
			values(board_seq.currval,'a')
		select * from dual
create table member(
	id varchar2(20) primary key,
	pass varchar2(20),
	name varchar2(15),
	ssn varchar2(30),
	birthday date,
	marry char(1),
	gender char(1),
	position varchar2(15),
	duty varchar2(15),
	classes varchar2(15),
	startday date,
	endday date,
	deptno varchar2(15),
	curstate varchar2(10),
	zipcode varchar2(10),
	addr varchar2(80),
	detailaddr varchar2(50),
	phonehome varchar2(15),
	phoneco varchar2(15),
	phonecell varchar2(15),
	email varchar2(50),
	profile_photo varchar2(50));
	
create table job(
	job_id varchar2(10) primary key,
	job_name varchar2(15),
	job_category varchar2(15),
	menupath varchar2(50));
	
insert into job values('j001','영업','영업관리','/menu/sales_menu.jsp');
insert into job values('j002','인사','인사관리','/menu/insa_menu.jsp');
insert into job values('j003','전산','전산관리','/menu/it_menu.jsp');
insert into job values('j004','경영지원','경영관리','/menu/manage_menu.jsp');
insert into job values('j005','재무','재무관리','/menu/jaemu_menu.jsp');

insert into dept values('d001','인사팀','1999/9/27',null,'2','1','dg001','j002','9401023jang','서울시 서초구 kitri빌딩7층','02-225-1111');
insert into dept values('d002','재무팀','1999/9/27',null,'2','1','dg001','j005','9401023jang','서울시 서초구 kitri빌딩7층','02-225-1122');
insert into dept values('d003','개발팀','1999/9/27',null,'2','1','dg003','j003','9401023jang','서울시 서초구 kitri빌딩6층','02-225-1133');
insert into dept values('d0031','디자인팀','1999/9/27',null,'3','1','d003','j003','9401023jang','서울시 서초구 kitri빌딩6층','02-225-1121');
insert into dept values('d0032','Ajax팀','1999/9/27',null,'3','2','d003','j003','9401023jang','서울시 서초구 kitri빌딩1층','02-225-1131');
insert into dept values('d004','개발지원','1999/9/27',null,'2','1','dg001','j003','9401023jang','서울시 서초구 kitri빌딩1층','02-225-1144');
insert into dept values('d005','시스템지원팀','1999/9/27',null,'2','1','dg001','j003','9401023jang','서울시 서초구 kitri빌딩2층','02-225-1155');
insert into dept values('d006','총무과','1999/9/27',null,'2','1','dg001','j004','9401023jang','서울시 서초구 kitri빌딩3층','02-225-1166');
insert into dept values('dg001','경영지원본부','1999/9/27',null,'1','1',null,'j004','9401023jang','서울시 서초구 kitri빌딩4층','02-225-1177');
insert into dept values('dg002','영업본부','1999/9/27',null,'1','1',null,'j001','9401023jang','서울시 서초구 kitri빌딩5층','02-225-1188');
insert into dept values('dg003','IT지원센터','1999/9/27',null,'1','1',null,'j003','9401023jang','서울시 서초구 kitri빌딩6층','02-225-1199');
insert into dept values('d007','교육부','1999/9/27',null,'2','1','dg001','j004','9401023jang','서울시 서초구 kitri빌딩6층','02-225-1100');
insert into dept values('d008','기획실','1999/9/27',null,'2','1','dg001','j004','9401023jang','서울시 서초구 kitri빌딩5층','02-225-1102');
insert into dept values('d009','영업1팀','1999/9/27',null,'2','1','dg001','j001','9401023jang','서울시 서초구 kitri빌딩8층','02-225-1222');
insert into dept values('d010','기업영업본부','1999/9/27',null,'2','1','dg001','j001','9401023jang','서울시 서초구 kitri빌딩9층','02-225-13331');
insert into dept values('d011','영업2팀','1999/9/27',null,'2','1','dg001','j001','9401023jang','서울시 서초구 kitri빌딩10층','02-225-1444');
insert into dept values('d012','마케팅실','1999/9/27',null,'2','1','dg001','j004','9401023jang','서울시 서초구 kitri빌딩10층','02-225-1555');


insert into member values('9401023jang','1234','장동건','731111-1111111','1973/11/11','1','0','부장','팀장','3급20호봉','1999/10/01',null,'d001','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-2222','jang@naver.com','jang.jpg');
insert into member values('0111022kim','1234','김범룡','800521-1111111','1980/09/01','1','0','과장','팀장','4급20호봉','2007/02/27',null,'d002','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-3333','kbr@naver.com','kbr.jpg');
insert into member values('92115kim','1234','김서연','901012-1111111','1990/11/11','1','1','과장','팀장','4급20호봉','2010/10/01',null,'d003','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-4444','jang@naver.com','kim.jpg');




insert into member values('881011kim','1234','김동현','721012-1111111','1990/11/11','1','1','과장','팀장','4급20호봉','2010/10/01',null,'d006','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-4444','jang@naver.com','kimdong.jpg');
insert into member values('787871lee','1234','이민호','721012-1111111','1990/11/11','1','1','대리','사원','4급20호봉','2010/10/01',null,'dg001','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-4444','jang@naver.com','leemin.jpg');
insert into member values('17171park','1234','박문수','721012-1111111','1990/11/11','1','1','대리','사원','4급20호봉','2010/10/01',null,'d0032','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-4444','jang@naver.com','park.jpg');
insert into member values('9871kim','1234','김어준','721012-1111111','1990/11/11','1','1','과장','팀장','4급20호봉','2010/10/01',null,'d009','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-4444','jang@naver.com','jjangkim.jpg');
insert into member values('lee0idjj','1234','안정환','721012-1111111','1990/11/11','1','1','차장','팀장','4급20호봉','2010/10/01',null,'dg002','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-4444','jang@naver.com','ansoccer.jpg');
insert into member values('djdiwjs','1234','차범근','721012-1111111','1990/11/11','1','1','사원','사원','4급20호봉','2010/10/01',null,'dg003','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-4444','jang@naver.com','chasoccer.jpg');
insert into member values('282djdid','1234','박지성','721012-1111111','1990/11/11','1','1','대리','파트장','4급20호봉','2010/10/01',null,'d001','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-4444','jang@naver.com','parksoccer.jpg');
insert into member values('Yeona1231','1234','김연아','721012-1111111','1990/11/11','1','1','대리','파트장','4급20호봉','2010/10/01',null,'d003','재직','222-222','서울시 봉천구','좋은동네','02-858-1111','02-858-1111','010-111-4444','jang@naver.com','parksoccer.jpg');

commit;


create sequence purchase_seq;
create sequence purchase_detail_seq;

drop sequence purchase_seq;
drop sequence purchase_detail_seq;
drop table purchase;
drop table purchase_detail;

create table purchase(
	purchase_id varchar2(20) primary key,
	purchase_day date,
	request_id varchar2(15),
	request_dept varchar2(20),
	request_deptno varchar2(20),
	state char(1),
	type varchar2(15)
);
create table purchase_detail(
    purchase_id varchar2(20),
	detail_num number,
	prd_code varchar2(15),
	prd_name varchar2(15),
	standard varchar2(15),
	count number,
	price number,
	supplyvalue number,
	vat number,
	totalprice number,
	clientcode varchar2(20)
);
insert into purchase values(to_char(sysdate,'yyyymmdd')|| purchase_seq.nextval, sysdate,'787871lee', '경영지원본부','dg001','0','사내행사용');
insert into purchase_detail values(to_char(sysdate,'yyyymmdd')||purchase_seq.currval,purchase_detail_seq.nextval,'prd_002','현수막','4*10',2,100000,200000,20000,220000,'code001');
insert into purchase_detail values(to_char(sysdate,'yyyymmdd')||purchase_seq.currval,purchase_detail_seq.nextval,'prd_003','의자','',20,5000,100000,10000,110000,'code010');
insert into purchase_detail values(to_char(sysdate,'yyyymmdd')||purchase_seq.currval,purchase_detail_seq.nextval,'prd_010','탁자','5*10',1,100000,100000,10000,110000,'code0002');


insert into purchase values(to_char(sysdate,'yyyymmdd')|| purchase_seq.nextval, sysdate,'Yeona1231', '개발팀','d003','0','개발용');
insert into purchase_detail values(to_char(sysdate,'yyyymmdd')||purchase_seq.currval,purchase_detail_seq.nextval,'prd_00i2','노트북','18인치',5,865000,4325000,432500,4757500,'com001');
insert into purchase_detail values(to_char(sysdate,'yyyymmdd')||purchase_seq.currval,purchase_detail_seq.nextval,'prd_00i3','오피스','ver2016',10,30000,300000,30000,330000,'soft010');
insert into purchase_detail values(to_char(sysdate,'yyyymmdd')||purchase_seq.currval,purchase_detail_seq.nextval,'prd_0i10','펜마우스','11t',1,100000,100000,10000,110000,'pen0002');

