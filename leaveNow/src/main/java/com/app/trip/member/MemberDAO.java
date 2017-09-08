/*
 * 2017.08.23 임은섭
 * 1. 멤버 DAO 인터페이스
 */

package com.app.trip.member;

import java.util.HashMap;

import org.springframework.stereotype.Component;

@Component
public interface MemberDAO {

	public MemberDTO login(HashMap<String, Object> map) ;
	public MemberDTO getMember(String email) ;
	public boolean join(MemberDTO dto) ;
	public boolean secession();
	public String codeCreate(String email);
	public boolean certification(HashMap<String, Object> map);
	public boolean modify(MemberDTO dto); 
	public boolean updateM_check(HashMap<String, Object> map);
	public String getM_check(String email);
	public String getEmail(String email);
}
