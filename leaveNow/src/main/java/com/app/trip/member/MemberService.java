/*
 * 2017.08.23 임은섭
 * 1. 맴버 서비스 인터페이스
 */
package com.app.trip.member;

import java.util.HashMap;

import org.springframework.stereotype.Service;

@Service
public interface MemberService {

	public MemberDTO login(HashMap<String, Object> map);
	public String join(MemberDTO dto);
	public boolean secession();
	public boolean certification(HashMap<String, Object> map);
	public boolean modify(MemberDTO dto);
	public boolean reM_check(HashMap<String, Object> map);
	public String getM_check(String email);
	
}
