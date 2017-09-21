/*
 * 2018.08.23 임은섭
 * 1.스케쥴 관련 서비스 인터페이스
 * 2.
 */

package com.app.trip.schedule;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

@Service
public interface ScheduleService {

	
	public HashMap<String, Integer> createSchedule(ScheduleDTO dto);
	public boolean saveSchedule(ScheduleDTO dto);
	public boolean modifiedSchedule(ScheduleDTO dto);	
	public ArrayList<String> getSchedule();
	public boolean deleteSchedule();
	public List<ScheduleDTO> getList();
	public List<ScheduleDTO> getList(HttpServletRequest req);
	public boolean saveContent(List<Object> list);
	
	public ScheduleDTO getSch(int s_id);
	public List<ContentDTO> getCon(int s_id);
}
