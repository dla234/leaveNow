/*
 * 2017.09.13 임은섭
 * 스케쥴 서비스 클래스 
 */


package com.app.trip.schedule;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Autowired
	private ScheduleDAO dao;
	
	@Override
	public boolean createSchedule(ScheduleDTO dto) {
		
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
		return false;
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
}
