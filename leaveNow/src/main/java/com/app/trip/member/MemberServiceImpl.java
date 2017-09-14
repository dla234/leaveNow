/*
 * 2017.08.24 임은섭
 * 1. member 서비스 
 */

package com.app.trip.member;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO dao;
	
	@Override
	public MemberDTO login(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return dao.login(map);
	}

	@Override
	public String join(MemberDTO dto) {
		// TODO Auto-generated method stub
		if(dao.join(dto) == true){
			String code=dao.codeCreate(dto.getEmail());
			return code;
		}else{
			return "f";
		}
		
		
	}

	@Override
	public boolean secession(MemberDTO dto) {
		// TODO Auto-generated method stub
		return dao.secession(dto);
	}

	
	/*
	 * 2017.08.25 임은섭
	 * 이메일 인증 서비스
	 */
	@Override
	public boolean certification(HashMap<String, Object> map) {
		// TODO Auto-generated method stub

		return dao.certification(map);
	}
	
	/*
	 * 2017.08.28 임은섭	
	 * 회원정보 수정 서비스
	 */
	
	@Override
	public boolean modify(MemberDTO dto) {

		return dao.modify(dto);
	}
	
	/*
	 * 2017.08.28 임은섭	
	 * 인증코드 재요청 서비스
	 */
	
	@Override
	public boolean reM_check(HashMap<String, Object> map) {
		
		return dao.updateM_check(map);
	}
	
	/*
	 * 2017.08.28 임은섭
	 * 인증코드 가져오기
	 */
	
	@Override
	public String getM_check(String email) {

		return dao.getM_check(email);
	}
	
	/*
	 * 2017.08.28 임은섭
	 * 하나의 회원 정보 가져오기
	 */
	
	@Override
	public MemberDTO getMember(String email) {
		
		return dao.getMember(email);
	}
	
	/*
	 * 2017.09.04 임은섭
	 * 이메일 존재여부 확인
	 */
	@Override
	public boolean getEmail(String email) {
		// TODO Auto-generated method stub
		String check=dao.getEmail(email);
		if(check.isEmpty()){
			return true;
		}
		return false;
	}
	
}
