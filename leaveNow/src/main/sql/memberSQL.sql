/* 2017.08.24 
 * member sql 
 * */

create table m_level(
	m_code CHAR(2) PRIMARY KEY,
	m_detail VARCHAR(255)
	)
	
create table member(
	email VARCHAR(40) PRIMARY KEY,
	password VARCHAR(40),
	m_name VARCHAR(50),
	telephone VARCHAR(30) UNIQUE,
	m_image VARCHAR(255),
	m_code CHAR(2),
	rdate DATE,
	rdate_update DATE
);

CREATE TABLE member_mail_check(
	email VARCHAR(40) PRIMARY KEY,
	m_check VARCHAR(255),
	mm_date DATE
);

select * from member;

alter table member add constraint fk_m_level foreign key(m_code)
references m_level(m_code) ON UPDATE CASCADE;

alter table member_mail_check add constraint fk_m_mail foreign key(email)
references member(email) ON UPDATE CASCADE;

insert into member(email,password,m_name,telephone,m_image,m_code,rdate,rdate_update) 
values(email,password,m_name,telephone,m_image,m_code,rdate,rdate_update);

insert into member(email,password,m_name,telephone,m_image,m_code,rdate,rdate_update) 
			values('dms1tjq@naver.com','1234',' 임은섭','0101','png','FF',now(),now())

delete from member where email='dms1tjq@naver.com';		

insert into m_level(m_code,m_detail) values('AA','관리자 코드');
insert into m_level(m_code,m_detail) values('M2','우수회원 코드');
insert into m_level(m_code,m_detail) values('M1','일반회원 코드');
insert into m_level(m_code,m_detail) values('FF','미승인회원 코드');
insert into m_level(m_code,m_detail) values('XX','탈퇴회원 코드');

select * from m_level;

select * from member_mail_check where m_check='y7874Qu!7(-4KeAk';

update member set m_code='M1' where email='email';

