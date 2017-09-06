package com.app.trip.local;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Service;

@Service
public interface LocalService {
	public JSONArray keword_search();
	public JSONArray keword_search(Local_search_DTO local_search_DTO);
}
