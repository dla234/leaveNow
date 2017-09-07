package com.app.trip.local;

import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.trip.gcode.GcodeDAO;
import com.app.trip.gcode.GcodeDTO;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.utility.Utility;

@Service
public class LocalServiceImpl implements LocalService {
	@Autowired
	private LocalDAO localDAO;
	@Autowired
	private GcodeDAO gcodeDAO;
	
	@Override
	public JSONArray name() {
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
					gcodeDAO.insert_gcode(Local_util.localDTO_to_GcodeDTO(oMapper.convertValue(map, LocalDTO.class)));
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
				gcodeDAO.insert_gcode(Local_util.localDTO_to_GcodeDTO(oMapper.convertValue(map, LocalDTO.class)));
				gcodeDTO = gcodeDAO.read_gcode(jsonObject.get("id").toString());
			}
			/*String distance = Utility.checkNull(jsonObject.get("distance")).toString();
			if(distance.equals(""))
				gcodeDTO.setDistance(0);
			else
				gcodeDTO.setDistance(Integer.parseInt(distance));
			*/
			gcodes.add(gcodeDAO.gcode_to_map(gcodeDTO, jsonObject.get("distance").toString()));
			
		}
		
		
		return gcodes;
	}
	
	@Override
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
					gcodeDAO.insert_gcode(Local_util.localDTO_to_GcodeDTO(oMapper.convertValue(map, LocalDTO.class)));
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
				gcodeDAO.insert_gcode(Local_util.localDTO_to_GcodeDTO(oMapper.convertValue(map, LocalDTO.class)));
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
