select * from gcode
delete from gcode
drop table gcode

CREATE TABLE gcode (
	gcode           VARCHAR(50)  character set utf8	NOT NULL, -- 장소코드
	gname           VARCHAR(255) character set utf8	NULL,     -- 장소이름
	description     TEXT         character set utf8	NULL,     -- 장소설명
	mainphoto       VARCHAR(255) character set utf8	NULL,     -- 장소사진
	photoList       TEXT         character set utf8	NULL,     -- 사진들
	category        VARCHAR(255) character set utf8	NULL,     -- 카테고리
	category_detail VARCHAR(255) character set utf8	NULL,     -- 상세카테고리
	g_score         DOUBLE       NOT NULL DEFAULT 1, -- 인기도점수
	detail_link     VARCHAR(255) character set utf8	NULL,     -- 상세정보링크
	homepage        VARCHAR(255) character set utf8	NULL,     -- 홈페이지
	phone           VARCHAR(20)  character set utf8	NULL,     -- 전화번호
	address         VARCHAR(255) character set utf8	NULL,     -- 주소
	roadaddress     VARCHAR(255) character set utf8	NULL,     -- 주소(도로명)
	mapx            VARCHAR(20)  character set utf8	NOT NULL, -- 경도(x)
	mapy            VARCHAR(20)  character set utf8	NOT NULL, -- 위도(y)
	g_rdate         DATETIME     NOT NULL, -- 등록일
	g_rdate_update  DATETIME     NOT NULL  -- 수정일
);

-- 장소코드 기본키
CREATE UNIQUE INDEX PK_gcode
	ON gcode ( -- 장소코드
		gcode ASC -- 장소코드
	);

-- 장소코드
ALTER TABLE gcode
	ADD
		CONSTRAINT PK_gcode -- 장소코드 기본키
		PRIMARY KEY (
			gcode -- 장소코드
		);