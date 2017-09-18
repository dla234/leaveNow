/*
 * 2017.09.15 임은섭 
 * */

 CREATE TABLE trip_content(
	c_id int auto_increment PRIMARY KEY,
	s_id int,
	gcode VARCHAR(50),
	start_time DATE,
	end_time DATE,
	c_content TEXT,
	c_score DOUBLE,
	c_image VARCHAR(50),
	c_image_size BIGINT,
	cost int,
	c_rdate DATETIME,
	c_rdate_update DATETIME,
	c_active character(1),
	end_purpose character(2)
);

/*
 * 2017.09.18 임은섭 
 * */

 CREATE TABLE trip_content(
	c_id int auto_increment PRIMARY KEY,
	s_id int,
	gcode VARCHAR(50),
	start_time VARCHAR(50),
	end_time int,
	c_content TEXT,
	c_score DOUBLE,
	c_image VARCHAR(50),
	c_image_size BIGINT,
	cost int,
	c_rdate DATETIME,
	c_rdate_update DATETIME,
	c_active character(1),
	end_purpose character(2)
);