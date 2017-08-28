/*
 * 2018.08.23 임은섭
 * 1.스케쥴 관련 서비스 인터페이스
 * 2.
 */

package com.app.trip.schedule;

import java.util.ArrayList;

public interface ScheduleService {

	
	public boolean createSchedule();
	public boolean saveSchedule();
	public boolean modifiedSchedule();	
	public ArrayList<String> getSchedule();
	public boolean deleteSchedule();
	
}
