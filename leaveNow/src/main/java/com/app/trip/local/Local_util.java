package com.app.trip.local;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.app.trip.gcode.GcodeDAO;
import com.app.trip.gcode.GcodeDTO;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.utility.Utility;

public class Local_util {
	public static synchronized JSONArray sync_gcode(LocalDAO localDAO, GcodeDAO gcodeDAO, JSONArray documents) {
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
	}// sync_gcode() end
	
	public static synchronized LocalDTO jsonObject_to_localDTO(JSONObject jsonObject) {
		Map map = jsonObject;
		ObjectMapper oMapper = new ObjectMapper();
		oMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		return oMapper.convertValue(map, LocalDTO.class);
	}//jsonObject_to_localDTO() end
	
	public static synchronized MultiValueMap<String, String> covert_search_postParams (Local_search_DTO local_search_DTO){
		MultiValueMap<String, String> postParams = new LinkedMultiValueMap<>();
		if(!local_search_DTO.getQuery().isEmpty())//query
			postParams.add("query", local_search_DTO.getQuery());
		if(!local_search_DTO.getCategory_group_code().isEmpty())
			postParams.add("category_group_code", local_search_DTO.getCategory_group_code());
		if(!local_search_DTO.getPage().isEmpty())
			postParams.add("page", local_search_DTO.getPage());
		else
			postParams.add("page", "1");
		String x = local_search_DTO.getX();
		String y = local_search_DTO.getY();
		String radius = local_search_DTO.getRadius();
		if(!x.isEmpty()&&!y.isEmpty()) {
			postParams.add("x",x);
			postParams.add("y",y);
			if(!radius.isEmpty())
				postParams.add("radius",radius);
			else
				postParams.add("radius","20000");
		}
		
		return postParams;
	}

	public static synchronized HttpHeaders get_requestHeaders () {
		HttpHeaders requestHeaders = new HttpHeaders();
		requestHeaders.add("Authorization", "KakaoAK " + "57e5241a10a46db9a55a94bc5c2cf676");
		return requestHeaders;
	}
	
	public static synchronized URI get_uri (String url) {
		URI uri = null;
		try {
			uri = new URL(url).toURI();
		} catch (MalformedURLException e1) {
			e1.printStackTrace();
		} catch (URISyntaxException e1) {
			e1.printStackTrace();
		}
		return uri;
	}//get_uri() end
	
	public static synchronized String getLocalJsonData(Local_search_DTO local_search_DTO) {
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
		String url = "https://dapi.kakao.com/v2/local/search/keyword.json";
		HttpHeaders requestHeaders = Local_util.get_requestHeaders(); 
		MultiValueMap<String, String> postParams = Local_util.covert_search_postParams(local_search_DTO);
		if(local_search_DTO.getQuery().isEmpty()){
			url = "https://dapi.kakao.com/v2/local/search/category.json";
			if(local_search_DTO.getCategory_group_code().isEmpty())
				postParams.add("category_group_code", "AT4");
		}
		HttpEntity<MultiValueMap<String, String>> httpEntity = new HttpEntity<>(postParams, requestHeaders);
		URI uri = Local_util.get_uri(url);
		try {
		    final ResponseEntity<String> response = restTemplate.exchange(uri, HttpMethod.POST, httpEntity, String.class);
		    String json_data = response.toString();
		    json_data = json_data.substring(8, json_data.lastIndexOf(",{Server"));
		    return json_data;
		} catch (final RestClientException e) {
		    e.printStackTrace();
		}
		return "";
	}
}
