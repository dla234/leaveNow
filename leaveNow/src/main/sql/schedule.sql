/* 2017.09.12 
 * schedule sql 
 * */

create table trip_schedule(
	s_id INT auto_increment PRIMARY KEY,
	email VARCHAR(40),
	s_subject VARCHAR(255),
	s_content TEXT,
	s_idate DATE,
	s_idate_update DATE,
	s_image VARCHAR(50),
	s_image_size BIGINT,
	s_score DOUBLE,
	after character(1),
	s_active character(1),
	s_sdate date,
	s_day int

);

alter table trip_schedule add constraint fk_member foreign key(email)
references member(email) ON UPDATE CASCADE;

alter table trip_schedule add s_sdate DATE ;

alter table trip_schedule add s_day int ;

select * from trip_schedule;

select * from member;

insert into trip_schedule(email,s_subject,s_content,s_idate,s_idate_update,s_image,s_image_size,s_score,after,s_active,s_sdate,s_day)
  		values('dms1tjp@naver.com','실험', null,now(),now(),null ,0,0,null,null,null,null) ;
  	

