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

@Repository
public class LocalDAOImpl implements LocalDAO {

	@Override
	public JSONArray name() {
		RestTemplate restTemplate = new RestTemplate();
		restTemplate.getMessageConverters().add(new StringHttpMessageConverter());

		HttpHeaders requestHeaders = new HttpHeaders();
		requestHeaders.add("Authorization", "KakaoAK " + "57e5241a10a46db9a55a94bc5c2cf676");
		MultiValueMap<String, String> postParams = new LinkedMultiValueMap<>();
		postParams.add("category_group_code", "AT4");


		HttpEntity<MultiValueMap<String, String>> httpEntity = new HttpEntity<>(postParams, requestHeaders);
		
		URI uri = null;
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
		    //System.out.println(documents.get(0).toString());
		    /*JSONObject document = (JSONObject) documents.get(0);
		    System.out.println("id"+"="+document.get("id"));
		    System.out.println("introduction"+"="+document.get("introduction"));
		    System.out.println("mainphotourl"+"="+document.get("mainphotourl"));
		    System.out.println("--------------------------");
		    document.put("introduction", "introduction");
		    document.put("mainphotourl", "mainphotourl");
		    document = (JSONObject) documents.get(0);
		    System.out.println("id"+"="+document.get("id"));
		    System.out.println("introduction"+"="+document.get("introduction"));
		    System.out.println("mainphotourl"+"="+document.get("mainphotourl"));*/
		    
		    return documents;
		    //System.out.println(json.toJSONString());
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
			boolean description = true;
			boolean mainphoto = true;
			try {
				document.put("description", basicinfo.get("introduction").toString());
			} catch (Exception e) {
				description = false;
				document.put("description", "");
				//System.out.println(document.get("place_name").toString()+" 설명 없음");
			}
			if(description) System.out.println("설명 : "+document.get("description"));
			
			try {
				document.put("mainphotourl", basicinfo.get("mainphotourl").toString());
			} catch (Exception e) {
				mainphoto = false;
				document.put("description", "");
				//System.out.println(document.get("place_name").toString()+" 사진 없음");
			}
			if(mainphoto) System.out.println("사진 : "+document.get("mainphoto"));
			
			
			
			
			// 포토리스트
			/*JSONObject json_photo = (JSONObject) json.get("photo");
			JSONArray photoList = (JSONArray) json_photo.get("photoList");
			System.out.println(((JSONObject)((JSONArray)((JSONObject)photoList.get(0)).get("list")).get(0)).get("orgurl").toString());*/
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return document;
	}
}
