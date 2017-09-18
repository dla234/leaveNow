/*
 * 2018.08.23 임은섭
 * 1. 스케쥴 테이블 용 DTO
 */


package com.app.trip.schedule;

import java.util.Date;

public class ScheduleDTO {

	int s_id;
	String email;
	String s_subject;
	String s_content;
	Date s_rdate;
	Date s_rdate_update;
	String s_image;
	float s_image_size;
	double s_score;
	char after;
	char s_active;
	
	Date s_sdate;
	int s_day;
	
	public int getS_day() {
		return s_day;
	}
	public void setS_day(int s_day) {
		this.s_day = s_day;
	}
	
	
	public Date getS_sdate() {
		return s_sdate;
	}
	
	public void setS_sdate(Date s_sdate) {
		this.s_sdate = s_sdate;
	}
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public String getS_subject() {
		return s_subject;
	}
	public void setS_subject(String s_subject) {
		this.s_subject = s_subject;
	}
	public String getS_content() {
		return s_content;
	}
	public void setS_content(String s_content) {
		this.s_content = s_content;
	}
	public Date getS_rdate() {
		return s_rdate;
	}
	public void setS_rdate(Date s_rdate) {
		this.s_rdate = s_rdate;
	}
	public Date getS_rdate_update() {
		return s_rdate_update;
	}
	public void setS_rdate_update(Date s_rdate_update) {
		this.s_rdate_update = s_rdate_update;
	}
	public String getS_image() {
		return s_image;
	}
	public void setS_image(String s_image) {
		this.s_image = s_image;
	}
	public float getS_image_size() {
		return s_image_size;
	}
	public void setS_image_size(float s_image_size) {
		this.s_image_size = s_image_size;
	}
	public double getS_score() {
		return s_score;
	}
	public void setS_score(double s_score) {
		this.s_score = s_score;
	}
	public char getAfter() {
		return after;
	}
	public void setAfter(char after) {
		this.after = after;
	}
	public char getS_active() {
		return s_active;
	}
	public void setS_active(char s_active) {
		this.s_active = s_active;
	}
	@Override
	public String toString() {
		return "ScheduleDTO [s_id=" + s_id + ", email=" + email + ", s_subject=" + s_subject + ", s_content="
				+ s_content + ", s_rdate=" + s_rdate + ", s_rdate_update=" + s_rdate_update + ", s_image=" + s_image
				+ ", s_image_size=" + s_image_size + ", s_score=" + s_score + ", after=" + after + ", s_active="
				+ s_active + ", s_sdate=" + s_sdate + ", s_day=" + s_day + "]";
	}
	
    
}
