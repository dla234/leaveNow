/*
 * 2017.09.13 임은섭
 * 스케쥴 서비스 클래스 
 */


package com.app.trip.schedule;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Autowired
	private ScheduleDAO dao;
	
	@Override
	public HashMap<String, Integer> createSchedule(ScheduleDTO dto) {
		
		return dao.create(dto);
	}
	@Override
	public boolean deleteSchedule() {
		// TODO Auto-generated method stub
		return false;
	}
	@Override
	public ArrayList<String> getSchedule() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean modifiedSchedule(ScheduleDTO dto) {
		// TODO Auto-generated method stub
		return dao.modified(dto);
	}
	@Override
	public boolean saveSchedule(ScheduleDTO dto) {
		// TODO Auto-generated method stub
		return false;
	}
	
	@Override
	public List<ScheduleDTO> getList() {
		
		return dao.list();
	}
	@Override
	public List<ScheduleDTO> getList(HttpServletRequest req) {
		// TODO Auto-generated method stub
		HashMap<String, String> map=new HashMap<>();
		map.put("email", (String)req.getSession().getAttribute("email"));
		return dao.list(map);
	}
	
	@Override
	public boolean saveContent(List<Object> list) {
		// TODO Auto-generated method stub
		return dao.save(list);
	}
}
