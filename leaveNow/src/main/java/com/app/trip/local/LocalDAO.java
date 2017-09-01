package com.app.trip.local;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Repository;

@Repository
public interface LocalDAO {
	public JSONArray name();
	public JSONObject search_daum(JSONObject document);
	
}// interface LocalDAO end
