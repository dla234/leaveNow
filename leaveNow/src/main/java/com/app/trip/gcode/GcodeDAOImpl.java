package com.app.trip.gcode;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;

import net.utility.Utility;

@Repository
public class GcodeDAOImpl implements GcodeDAO {
	private static final Logger logger = LoggerFactory.getLogger(GcodeDAOImpl.class);
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace="gcode.mapper.";
	
	@Override
	public int insert_gcode(GcodeDTO dto) {
		int result=0;
		result = sqlSession.insert(namespace+"insert_gcode",dto);
		return result;
	}// insert_gcode() end

	@Override
	public GcodeDTO read_gcode(String gcode) {
		return sqlSession.selectOne(namespace+"read_gcode",gcode);
	}// read_gcode() end

	@Override
	public Map gcode_to_map(GcodeDTO gcodeDTO, String distance) {
		distance = Utility.checkNull(distance);
		if(distance.equals(""))
			gcodeDTO.setDistance(0);
		else
			gcodeDTO.setDistance(Integer.parseInt(distance));
		ObjectMapper oMapper = new ObjectMapper();
		oMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
		Map gcode_map = oMapper.convertValue(gcodeDTO, Map.class);
		if(!gcodeDTO.getPhotoList().isEmpty()) {
			try {
				JSONArray json = (JSONArray) new JSONParser().parse(gcodeDTO.getPhotoList());
				gcode_map.put("photoList", json);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		} else {
			gcode_map.put("photoList", "");
		}
		gcode_map.put("g_rdate", Utility.timestamp_to_string(gcodeDTO.getG_rdate()));
		gcode_map.put("g_rdate_update", Utility.timestamp_to_string(gcodeDTO.getG_rdate_update()));
		
		return gcode_map;
	}
	
	
	
}// class GcodeDAOImpl end
