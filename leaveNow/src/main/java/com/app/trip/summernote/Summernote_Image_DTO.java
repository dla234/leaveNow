package com.app.trip.summernote;

import java.sql.Timestamp;

import org.springframework.web.multipart.MultipartFile;

public class Summernote_Image_DTO {
	private MultipartFile uploadFile;
	//i_no, c_m_no, i_file, i_file_size, i_active, i_rdate, i_rdate_update
	private int i_no;
	private int c_m_no;
	private String i_file;
	private long i_file_size;
	private char i_active;
	private Timestamp i_rdate;
	private Timestamp i_rdate_update;
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public int getI_no() {
		return i_no;
	}

	public void setI_no(int i_no) {
		this.i_no = i_no;
	}

	public int getC_m_no() {
		return c_m_no;
	}

	public void setC_m_no(int c_m_no) {
		this.c_m_no = c_m_no;
	}

	public String getI_file() {
		return i_file;
	}

	public void setI_file(String i_file) {
		this.i_file = i_file;
	}

	public long getI_file_size() {
		return i_file_size;
	}

	public void setI_file_size(long i_file_size) {
		this.i_file_size = i_file_size;
	}

	public char getI_active() {
		return i_active;
	}

	public void setI_active(char i_active) {
		this.i_active = i_active;
	}

	public Timestamp getI_rdate() {
		return i_rdate;
	}

	public void setI_rdate(Timestamp i_rdate) {
		this.i_rdate = i_rdate;
	}

	public Timestamp getI_rdate_update() {
		return i_rdate_update;
	}

	public void setI_rdate_update(Timestamp i_rdate_update) {
		this.i_rdate_update = i_rdate_update;
	}

	@Override
	public String toString() {
		return "Summernote_Image_DTO [uploadFile=" + uploadFile + ", i_no=" + i_no + ", c_m_no=" + c_m_no + ", i_file="
				+ i_file + ", i_file_size=" + i_file_size + ", i_active=" + i_active + ", i_rdate=" + i_rdate
				+ ", i_rdate_update=" + i_rdate_update + "]";
	}
	
	
}
