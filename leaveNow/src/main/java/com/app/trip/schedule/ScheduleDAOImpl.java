/*
 * 2017.09.13 임은섭
 * 스케쥴 dao 클래스 
 */


package com.app.trip.schedule;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ScheduleDAOImpl implements ScheduleDAO {

	
	 @Autowired
	 private SqlSessionTemplate sqlSession;
	 
	private String namespace="schedule.mapper.";
	@Override
	public HashMap<String, Integer> create(ScheduleDTO dto) {
		HashMap<String, Integer> map=new HashMap<>();
		
		dto.setS_active('Y');
		dto.setS_score(0);
		
		int rs=sqlSession.insert(namespace+"insertSchdule",dto);
		
		if(rs==1){
			int s_id=(int)sqlSession.selectOne(namespace+"selectS_id", dto.getEmail());
			map.put("OX", rs);
			map.put("s_id", s_id);
			return map;
		}
		else if(rs==0){
			map.put("OX", rs);
			return map;
		}
		return map;
	}

	@Override
	public boolean modified(ScheduleDTO dto) {
		// TODO Auto-generated method stub
		int rs=sqlSession.update(namespace+"updateSch", dto);
		if(rs==1){
			return true;
		}
		
		return false;
	}

	@Override
	public boolean delete() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<ScheduleDTO> list() {
		// TODO Auto-generated method stub
		List<ScheduleDTO> list=sqlSession.selectList(namespace+"selectSchduleList");
		return list;
	}
	
	@Override
	public List<ScheduleDTO> list(HashMap<String, String> map) {
		// TODO Auto-generated method stub
		List<ScheduleDTO> list=sqlSession.selectList(namespace+"selectSchduleList",map);
		return list;
	}
	
	@Override
	public boolean save(List<Object> list) {
		// TODO Auto-generated method stub
		int rs=0;
		for (Object demo : list) {
			rs=sqlSession.insert(namespace+"insertContent", demo);
		}
		if(rs==1){
			return true;
		}
		
		return false;
	}

}
