package com.app.trip.summernote;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

@Component
public class Summernote_DAO {
	@Autowired
	SqlSessionTemplate sqlSession;

	public Summernote_DAO() {
		System.out.println("Summernote_DAO() 객체 생성됨..");
	}//Constructor end
	
	public int max_c_m_no() {
		Summernote_Mapper mapper = sqlSession.getMapper(Summernote_Mapper.class);
		return mapper.max_c_m_no().getC_m_no();
	}//max_c_m_no()
	
	public Summernote_DTO insert_memo(Summernote_DTO dto) {
		Summernote_Mapper mapper = sqlSession.getMapper(Summernote_Mapper.class);
		
		if(dto.getC_id()!=0) {
			if (mapper.insert_memo(dto) == 1) {
				//dto = dao.read_memo(dto);
			} else {
				dto = null;
			}
		} else {
			dto = null;
		}
		return dto;
	}// insert_memo() end
	
	public Summernote_DTO read_memo(Summernote_DTO dto) {
		Summernote_Mapper mapper = sqlSession.getMapper(Summernote_Mapper.class);
		System.out.println("read_memo()");
		return mapper.read_memo(dto);
	}// read_memo() end
	
	public int insert_image(Summernote_Image_DTO dto) {
		int result = 0;
		
		Summernote_Mapper mapper = sqlSession.getMapper(Summernote_Mapper.class);
		result = mapper.insert_image(dto);
		
		return result;
	}//insert_image() end
	
	public int update_memo(Summernote_DTO dto) {
		int result = 0;
		
		Summernote_Mapper mapper = sqlSession.getMapper(Summernote_Mapper.class);
		result = mapper.update_memo(dto);
		
		Document doc = Jsoup.parse(dto.getC_m_content());
		Elements img_tags = doc.getElementsByTag("img");
		//System.out.println("test==="+img.toString());
		//System.out.println("test2==="+img.eachAttr("src"));
		List<String> img_list = img_tags.eachAttr("src");
		List<Summernote_Image_DTO> img_data_list = mapper.list_image(dto);
		//System.out.println(img_data_list.toString());
		int size = img_list.size();
		int data_size =  img_data_list.size();
		for(int idx = 0 ; idx < size; idx++) {
			String src = img_list.get(idx);
			//System.out.println("src["+idx+"]=="+src.substring(src.lastIndexOf('/')+1));
			src=src.substring(src.lastIndexOf('/')+1);
			for(int idx2 = 0; idx2 <data_size; idx2++) {
				if(src.equals(img_data_list.get(idx2).getI_file())) {
					img_data_list.get(idx2).setI_active('O');
					//System.out.println(src+"=="+img_data_list.get(idx2).getI_file());
				}//if end
				else {
					//System.out.println(src+"!="+img_data_list.get(idx2).getI_file());
				}
			}//for2 end
		}// for end
		
		/*try {
			String json_data = Jsoup.connect("http://place.map.daum.net/main/v/10849847").ignoreContentType(true).execute().body();
			JSONObject json = (JSONObject) new JSONParser().parse(json_data);
			Map basicinfo = (Map) json.get("basicInfo");
			System.out.println(basicinfo.get("introduction").toString());
			
			JSONObject json_photo = (JSONObject) json.get("photo");
			JSONArray photoList = (JSONArray) json_photo.get("photoList");
			System.out.println(((JSONObject)((JSONArray)((JSONObject)photoList.get(0)).get("list")).get(0)).get("orgurl").toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
		
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
		    JSONObject document = (JSONObject) documents.get(0);
		    System.out.println("id"+"="+document.get("id"));
		    System.out.println("introduction"+"="+document.get("introduction"));
		    System.out.println("mainphotourl"+"="+document.get("mainphotourl"));
		    System.out.println("--------------------------");
		    document.put("introduction", "introduction");
		    document.put("mainphotourl", "mainphotourl");
		    document = (JSONObject) documents.get(0);
		    System.out.println("id"+"="+document.get("id"));
		    System.out.println("introduction"+"="+document.get("introduction"));
		    System.out.println("mainphotourl"+"="+document.get("mainphotourl"));
		    
		    
		    //System.out.println(json.toJSONString());
		} catch (final RestClientException e) {
		    e.printStackTrace();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return result;
	}// update_memo() end

}//class Summernote_DAO end
