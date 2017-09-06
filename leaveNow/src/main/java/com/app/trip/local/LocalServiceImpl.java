package com.app.trip.local;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.trip.gcode.GcodeDAO;
import com.app.trip.gcode.GcodeDTO;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.mysql.fabric.xmlrpc.base.Data;

import net.utility.Utility;

@Service
public class LocalServiceImpl implements LocalService {
	@Autowired
	private LocalDAO localDAO;
	@Autowired
	private GcodeDAO gcodeDAO;
	
	public JSONArray keword_search() {
		JSONArray documents = localDAO.name();
		JSONArray gcodes = new JSONArray();
		int size = documents.size();
		for(int idx=0;idx<size;idx++){
			JSONObject jsonObject = (JSONObject) documents.get(idx);
			System.out.println("id="+jsonObject.get("id").toString());
			GcodeDTO gcodeDTO = gcodeDAO.read_gcode(jsonObject.get("id").toString());
			if(gcodeDTO!=null){
				if((gcodeDTO.getGcode().equals(""))){
					System.out.println("DB notfound");
					localDAO.search_daum(jsonObject);
					Map map = jsonObject;
					ObjectMapper oMapper = new ObjectMapper();
					gcodeDAO.insert_gcode(localDAO.localDTO_to_GcodeDTO(oMapper.convertValue(map, LocalDTO.class)));
					gcodeDTO = gcodeDAO.read_gcode(jsonObject.get("id").toString());
				} else {
					System.out.println("DB founded");
				}
			} else {
				System.out.println("DB null");
				localDAO.search_daum(jsonObject);
				Map map = jsonObject;
				ObjectMapper oMapper = new ObjectMapper();
				oMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
				System.out.println(map.toString());
				gcodeDAO.insert_gcode(localDAO.localDTO_to_GcodeDTO(oMapper.convertValue(map, LocalDTO.class)));
				gcodeDTO = gcodeDAO.read_gcode(jsonObject.get("id").toString());
			}
			String distance = Utility.checkNull(jsonObject.get("distance")).toString();
			if(distance.equals(""))
				gcodeDTO.setDistance(0);
			else
				gcodeDTO.setDistance(Integer.parseInt(distance));
			
			gcodes.add(gcodeDAO.gcode_to_map(gcodeDTO, distance));
			
		}
		
		
		return gcodes;
		//return Local_util.sync_gcode(localDAO, gcodeDAO, documents);
	}

	@Override
	public JSONArray keword_search(Local_search_DTO local_search_DTO) {
		JSONArray documents = localDAO.keyword_search(local_search_DTO);
		return Local_util.sync_gcode(localDAO, gcodeDAO, documents);
	}
	
	
}
