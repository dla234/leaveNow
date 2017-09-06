package com.app.trip.local;

import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.jsoup.Jsoup;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Repository;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.app.trip.gcode.GcodeDTO;

import net.utility.Utility;

@Repository
public class LocalDAOImpl implements LocalDAO {

	@Override
	public JSONArray name() {
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.getMessageConverters().add(new StringHttpMessageConverter());

		HttpHeaders requestHeaders = //Local_util.get_requestHeaders(); 
				new HttpHeaders();
		requestHeaders.add("Authorization", "KakaoAK " + "57e5241a10a46db9a55a94bc5c2cf676");
		MultiValueMap<String, String> postParams = new LinkedMultiValueMap<>();
		postParams.add("category_group_code", "AT4");


		HttpEntity<MultiValueMap<String, String>> httpEntity = new HttpEntity<>(postParams, requestHeaders);
		
		URI uri = //Local_util.get_uri("https://dapi.kakao.com/v2/local/search/category.json");
				null;
		try {
			uri = new URL("https://dapi.kakao.com/v2/local/search/category.json").toURI();
		} catch (MalformedURLException e1) {
			e1.printStackTrace();
		} catch (URISyntaxException e1) {
			e1.printStackTrace();
		}
		try {
		    final ResponseEntity<String> response = restTemplate.exchange(uri, HttpMethod.POST, httpEntity, String.class);
		    String json_data = response.toString();
		    //System.out.println(json_data.substring(8, json_data.lastIndexOf(",{Server")));
		    json_data = json_data.substring(8, json_data.lastIndexOf(",{Server"));
		    JSONObject json = (JSONObject) new JSONParser().parse(json_data);
		    JSONArray documents = (JSONArray) json.get("documents");
		    return documents;
		} catch (final RestClientException e) {
		    e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public JSONObject search_daum(JSONObject document) {
		
		try {
			String json_data = Jsoup.connect("http://place.map.daum.net/main/v/"+document.get("id").toString()).ignoreContentType(true).execute().body();
			JSONObject json = (JSONObject) new JSONParser().parse(json_data);
			Map basicinfo = (Map) json.get("basicInfo");
			//System.out.println(basicinfo.get("introduction").toString());
			//System.out.println(basicinfo.get("mainphotourl").toString());
			
			System.out.println("====daum search==="+document.get("place_name"));
			
			//introduction 설명
			try {
				document.put("introduction", basicinfo.get("introduction").toString());
				System.out.println("설명 : "+document.get("introduction"));
			} catch (Exception e) {
				document.put("introduction", "");
				System.out.println(document.get("place_name").toString()+" 설명 없음");
			}
			
			// 메인포토 mainphotourl
			try {
				document.put("mainphotourl", basicinfo.get("mainphotourl").toString());
				System.out.println("메인포토 : "+document.get("mainphoto"));
			} catch (Exception e) {
				document.put("mainphotourl", "");
				System.out.println(document.get("place_name").toString()+" 사진 없음");
			}
			
			//홈페이지 homepage
			try {
				document.put("homepage", basicinfo.get("homepage").toString());
				System.out.println("홈페이지 : "+document.get("homepage"));
			} catch (Exception e) {
				document.put("homepage", "");
				System.out.println(document.get("place_name").toString()+" 홈페이지 없음");
			}
			
			// 포토리스트 photo.photoList.(0).list.(idx).orgurl
			JSONArray outphotoList = new JSONArray();
			try {
				JSONArray photoList = (JSONArray)((JSONObject)((JSONArray)((JSONObject) json.get("photo")).get("photoList")).get(0)).get("list");
				int photoList_size = photoList.size();
				int idx=0;
				for(idx=0; idx<photoList_size; idx++){
					outphotoList.add(((JSONObject)photoList.get(idx)).get("orgurl").toString());
				}
				System.out.println("사진 리스트 : "+outphotoList.toJSONString());
				
				//메인사진 없을때
				if(document.get("mainphotourl").equals("")) {
					System.out.println("mainphotourl==\"\""+"  idx="+idx);
					if(idx>0){
						System.out.println("outphoto-add=="+((JSONObject)photoList.get(0)).get("orgurl").toString());
						document.put("mainphotourl", ((JSONObject)photoList.get(0)).get("orgurl").toString());
					}
				}	
					
				
			} catch (Exception e) {
				System.out.println(document.get("place_name").toString()+"사진 리스트 없음");
			}
			document.put("photoList", outphotoList.toJSONString());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return document;
	}

	
	
	@Override
	public JSONArray keyword_search(Local_search_DTO local_search_DTO) {
		JSONArray documents = null;
		String json_data = Local_util.getLocalJsonData(local_search_DTO);
		if(!json_data.isEmpty()){
			try {
				JSONObject json = (JSONObject) new JSONParser().parse(json_data);
			    documents = (JSONArray) json.get("documents");
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return documents;
	}// keyword_search() end

	@Override
	public GcodeDTO localDTO_to_GcodeDTO(LocalDTO localDTO) {
		GcodeDTO gcodeDTO = new GcodeDTO();
		
		gcodeDTO.setGcode(localDTO.getId());
		gcodeDTO.setGname(localDTO.getPlace_name());
		gcodeDTO.setDescription(Utility.checkNull(localDTO.getIntroduction()));
		gcodeDTO.setMainphoto(Utility.checkNull(localDTO.getMainphotourl()));
		gcodeDTO.setPhotoList(Utility.checkNull(localDTO.getPhotoList()));
		gcodeDTO.setCategory(Utility.checkNull(localDTO.getCategory_group_code()));
		gcodeDTO.setCategory_detail(Utility.checkNull(localDTO.getCategory_name()));
		gcodeDTO.setDetail_link(Utility.checkNull(localDTO.getPlace_url()));
		gcodeDTO.setHomepage(Utility.checkNull(localDTO.getHomepage()));
		gcodeDTO.setPhone(Utility.checkNull(localDTO.getPhone()));
		gcodeDTO.setAddress(localDTO.getAddress_name());
		gcodeDTO.setRoadaddress(localDTO.getRoad_address_name());
		gcodeDTO.setMapx(localDTO.getX());
		gcodeDTO.setMapy(localDTO.getY());
		gcodeDTO.setDistance(localDTO.getDistance());
		
		return gcodeDTO;
	}
	
	
}
