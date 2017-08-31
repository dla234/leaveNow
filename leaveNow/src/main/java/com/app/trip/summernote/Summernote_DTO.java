package com.app.trip.summernote;

import java.sql.Timestamp;

public class Summernote_DTO {
	private int c_m_no;
	private int c_id;
	private String c_m_content;
	private char c_m_active;
	private Timestamp c_m_rdate;
	private Timestamp c_m_rdate_update;
	
	public int getC_m_no() {
		return c_m_no;
	}
	public void setC_m_no(int c_m_no) {
		this.c_m_no = c_m_no;
	}
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_m_content() {
		return c_m_content;
	}
	public void setC_m_content(String c_m_content) {
		this.c_m_content = c_m_content;
	}
	public char getC_m_active() {
		return c_m_active;
	}
	public void setC_m_active(char c_m_active) {
		this.c_m_active = c_m_active;
	}
	public Timestamp getC_m_rdate() {
		return c_m_rdate;
	}
	public void setC_m_rdate(Timestamp c_m_rdate) {
		this.c_m_rdate = c_m_rdate;
	}
	public Timestamp getC_m_rdate_update() {
		return c_m_rdate_update;
	}
	public void setC_m_rdate_update(Timestamp c_m_rdate_update) {
		this.c_m_rdate_update = c_m_rdate_update;
	}
	
	@Override
	public String toString() {
		return "Summernote_DTO [c_m_no=" + c_m_no + ", c_id=" + c_id + ", c_m_content=" + c_m_content + ", c_m_active="
				+ c_m_active + ", c_m_rdate=" + c_m_rdate + ", c_m_rdate_update=" + c_m_rdate_update + "]";
	}
	
	
}
