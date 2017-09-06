package com.app.trip.local;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Repository;

import com.app.trip.gcode.GcodeDTO;

@Repository
public interface LocalDAO {
	public JSONArray name();
	public JSONArray keyword_search(Local_search_DTO local_search_DTO);
	public JSONObject search_daum(JSONObject document);
	public GcodeDTO localDTO_to_GcodeDTO (LocalDTO localDTO);
	
}// interface LocalDAO end
