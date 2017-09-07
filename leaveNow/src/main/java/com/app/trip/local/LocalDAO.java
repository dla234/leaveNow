package com.app.trip.local;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Repository;

@Repository
public interface LocalDAO {
	public JSONArray name();
	public JSONObject search_daum(JSONObject document);
	public JSONArray keyword_search(Local_search_DTO local_search_DTO);
}// interface LocalDAO end
