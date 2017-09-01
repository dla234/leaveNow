package com.app.trip.summernote;

import java.util.List;

public interface Summernote_Mapper {
	public Summernote_DTO max_c_m_no();
	public int insert_memo(Summernote_DTO dto);
	public int update_memo(Summernote_DTO dto);
	public Summernote_DTO read_memo(Summernote_DTO dto);
	public int insert_image(Summernote_Image_DTO dto);
	public List<Summernote_Image_DTO> list_image(Summernote_DTO dto);
}
