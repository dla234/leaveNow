/*
 * 2017.08.23 임은섭
 * 1. 멤버 DTO 클래스
 */

package com.app.trip.member;

import java.util.Date;

public class MemberDTO {

	String email;
	String password;
	String m_name;
	String teil;
	String m_image;
	String m_code;
	Date rdate;
	Date rdate_update;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String passwd) {
		this.password = passwd;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getTeil() {
		return teil;
	}
	public void setTeil(String teil) {
		this.teil = teil;
	}
	public String getM_image() {
		return m_image;
	}
	public void setM_image(String m_image) {
		this.m_image = m_image;
	}
	public String getM_code() {
		return m_code;
	}
	public void setM_code(String m_code) {
		this.m_code = m_code;
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public Date getRdate_update() {
		return rdate_update;
	}
	public void setRdate_update(Date rdate_update) {
		this.rdate_update = rdate_update;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [email=" + email + ", password=" + password + ", m_name=" + m_name + ", teil=" + teil
				+ ", m_image=" + m_image + ", m_code=" + m_code + ", rdate=" + rdate + ", rdate_update=" + rdate_update
				+ "]";
	}
	
	
	
}
