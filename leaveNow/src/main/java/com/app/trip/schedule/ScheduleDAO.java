/*
 * 2017.08.23 임은섭
 * 1. 스케쥴 DAO 인터페이스
 */

package com.app.trip.schedule;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Component;

@Component
public interface ScheduleDAO {

	public HashMap<String, Integer> create(ScheduleDTO dto) ;
	public boolean modified(ScheduleDTO dto) ;
	public boolean delete() ;
	public List<ScheduleDTO> list();
	public List<ScheduleDTO> list(HashMap<String, String> map);
	
}
