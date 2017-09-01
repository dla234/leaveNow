select * from summernote
select * from note_image

drop table summernote
drop table note_image

SELECT ifnull(max(i_no),0) FROM note_image

SELECT c_m_no, c_id, c_m_content, c_m_active, c_m_rdate, c_m_rdate_update
		FROM summernote
		WHERE c_m_no=1

-- summernote
CREATE TABLE summernote (
	c_m_no           INTEGER      NOT NULL, -- 메모번호
	c_id             INTEGER      NULL,     -- 장소컨텐트번호
	c_m_content      TEXT         character set utf8	NULL,     -- 글내용
	c_m_active       CHARACTER(1) character set utf8	NULL,     -- 활성
	c_m_rdate        DATETIME     NOT NULL, -- 등록일
	c_m_rdate_update DATETIME     NOT NULL  -- 수정일
);

INSERT INTO summernote (c_m_no, c_id, c_m_content, c_m_active, c_m_rdate, c_m_rdate_update)
		VALUES (
			1, 1, '안녕', 'T',now(),now()
		)

-- summernote 기본키
CREATE UNIQUE INDEX PK_summernote
	ON summernote ( -- summernote
		c_m_no ASC -- 메모번호
	);

-- summernote
ALTER TABLE summernote
	ADD
		CONSTRAINT PK_summernote -- summernote 기본키
		PRIMARY KEY (
			c_m_no -- 메모번호
		);

-- note_image
CREATE TABLE note_image (
	i_no           INTEGER      NOT NULL, -- i_no
	c_m_no         INTEGER      NULL,     -- 메모번호
	i_file         VARCHAR(255) character set utf8	NULL,     -- i_file
	i_file_size    VARCHAR(255) character set utf8	NULL,     -- i_file_size
	i_active       CHARACTER(1) character set utf8	NULL,     -- 활성
	i_rdate        DATETIME     NOT NULL, -- 등록일
	i_rdate_update DATETIME     NOT NULL  -- 수정일
);

-- note_image 기본키
CREATE UNIQUE INDEX PK_note_image
	ON note_image ( -- note_image
		i_no ASC -- i_no
	);

-- note_image
ALTER TABLE note_image
	ADD
		CONSTRAINT PK_note_image -- note_image 기본키
		PRIMARY KEY (
			i_no -- i_no
		);


-- note_image
ALTER TABLE note_image
	ADD
		CONSTRAINT FK_summernote_TO_note_image -- summernote -> note_image
		FOREIGN KEY (
			c_m_no -- 메모번호
		)
		REFERENCES summernote ( -- summernote
			c_m_no -- 메모번호
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- summernote -> note_image
COMMENT ON CONSTRAINT note_image.FK_summernote_TO_note_image IS 'summernote -> note_image';