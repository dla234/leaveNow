package com.app.trip.gcode;

import java.util.Map;

import org.springframework.stereotype.Repository;

@Repository
public interface GcodeDAO {
	public int insert_gcode(GcodeDTO dto);
	public GcodeDTO read_gcode(String gcode);
	public Map gcode_to_map (GcodeDTO gcodeDTO, String distance);
}
