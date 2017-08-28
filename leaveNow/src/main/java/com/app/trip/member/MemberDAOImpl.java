
/*
 * 2017.08.24 임은섭
 * 1. member dao 
 */
package com.app.trip.member;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.app.trip.utility.Utility;

@Component
public class MemberDAOImpl implements MemberDAO {

	private static final Logger logger = LoggerFactory.getLogger(MemberDAOImpl.class);
	  
	 @Autowired
	 private SqlSessionTemplate sqlSession;
	
	 
	 private String namespace="member.mapper.";
	 
	@Override
	public MemberDTO login(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		
		return sqlSession.selectOne(namespace+"login",map);
	}

	@Override
	public boolean join(MemberDTO dto) {
		logger.info("join():");
		
		dto.setM_code("FF");
		int i=sqlSession.insert(namespace+"memberJoin",dto);
		
		if(i==1){
			return true;
		}

		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean secession() {
		// TODO Auto-generated method stub
		return false;
	}

	/*
	 * 2017.08.24 임은섭
	 * .회원가입시 인증코드 부여 메서드
	 * 
	 */
	@Override
	public String codeCreate(String email) {
		
		// TODO Auto-generated method stub
		
		String code=Utility.randomValue(16);
		HashMap<String, Object> map=new HashMap<>();
		map.put("email", email);
		map.put("code", code);
		
		sqlSession.insert(namespace+"codeCreate",map);
		
		return code;
	}
	
	/*
	 * 2017.08.25 임은섭
	 * 인증코드 검증 
	 */
	
	@Override
	public boolean certification(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		
		String email= (String)sqlSession.selectOne(namespace+"codeCheck", map);
		
		if(email.equals(map.get("email"))){
			map.put("m_code", "M1");
			//String code=sqlSession.selectOne(namespace+"codeCheck",map);
			
			if(sqlSession.update(namespace+"updateCode",map)==1){
				return true;
			}
			return false;
		}
		else{
			return false;
		}
		
	}
	
	/*
	 * 2017.08.28 임은섭
	 * 회원 정보 수정 
	 */
	@Override
	public boolean modify(MemberDTO dto) {
		int res=sqlSession.update(namespace+"modify",dto);
		
		if(res == 1){
			return true;
		}
		else{
			return false;
		}

	}
	
	/*
	 * 2017.08.28 임은섭
	 * 인증코드 업데이트
	 */
	@Override
	public boolean updateM_check(HashMap<String, Object> map) {
		String code=Utility.randomValue(16);
		
		map.put("code", code);
		
		int res=sqlSession.update(namespace+"updateM_check", map);
		
		if(res==1){
			return true;
		}
		return false;
	}
	
	/*
	 * 2017.08.28 임은섭
	 * 인증코드 가져오기
	 */
	@Override
	public String getM_check(String email) {
		
		return sqlSession.selectOne(namespace+"selectM_check", email);
	}
}
