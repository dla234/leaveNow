/*
 * 2017.09.13 임은섭
 * 스케쥴 dao 클래스 
 */


package com.app.trip.schedule;

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
	public boolean create(ScheduleDTO dto) {
		
		dto.setS_active('Y');
		dto.setS_score(0);
		int rs=sqlSession.insert(namespace+"insertSchdule",dto);
		if(rs==1){
			return true;
		}
		else if(rs==0){
			return false;
		}
		return false;
	}

	@Override
	public boolean modified(ScheduleDTO dto) {
		// TODO Auto-generated method stub
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
	

}
