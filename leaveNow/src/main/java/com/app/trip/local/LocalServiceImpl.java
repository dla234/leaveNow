package com.app.trip.local;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LocalServiceImpl implements LocalService {
	@Autowired
	private LocalDAO localDao;
	
	public JSONArray name() {
		JSONArray documents = localDao.name();
		int size = documents.size();
		for(int idx=0;idx<size;idx++){
			localDao.search_daum((JSONObject) documents.get(idx));
		}
		
		return documents;
	}
}
