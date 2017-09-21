/*
 * 2018.08.23
 * 1. 스케쥴 일정 DTO
 */

package com.app.trip.schedule;

import java.util.Date;

public class ContentDTO {
	
	int c_id;
	String gcode;
	String start_time;
	int end_time;
	String c_content;
	double c_score;
	String c_image;
	float c_image_size;
	int cost;
	Date c_rdate;
	Date c_rdate_update;
	char c_active;
	
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getGcode() {
		return gcode;
	}
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public int getEnd_time() {
		return end_time;
	}
	public void setEnd_time(int end_time) {
		this.end_time = end_time;
	}
	public String getC_content() {
		return c_content;
	}
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	public double getC_score() {
		return c_score;
	}
	public void setC_score(double c_score) {
		this.c_score = c_score;
	}
	public String getC_image() {
		return c_image;
	}
	public void setC_image(String c_image) {
		this.c_image = c_image;
	}
	public float getC_image_size() {
		return c_image_size;
	}
	public void setC_image_size(float c_image_size) {
		this.c_image_size = c_image_size;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public Date getC_rdate() {
		return c_rdate;
	}
	public void setC_rdate(Date c_rdate) {
		this.c_rdate = c_rdate;
	}
	public Date getC_rdate_update() {
		return c_rdate_update;
	}
	public void setC_rdate_update(Date c_rdate_update) {
		this.c_rdate_update = c_rdate_update;
	}
	public char getC_active() {
		return c_active;
	}
	public void setC_active(char c_active) {
		this.c_active = c_active;
	}
	
	
}
