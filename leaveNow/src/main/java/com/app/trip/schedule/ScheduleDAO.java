/*
 * 2017.08.23 임은섭
 * 1. 스케쥴 DAO 인터페이스
 */

package com.app.trip.schedule;

import java.util.List;

import org.springframework.stereotype.Component;

@Component
public interface ScheduleDAO {

	public boolean create(ScheduleDTO dto) ;
	public boolean modified(ScheduleDTO dto) ;
	public boolean delete() ;
	public List<ScheduleDTO> list();
	
}
