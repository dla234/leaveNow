package com.app.trip.summernote;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import net.utility.UploadSaveManager;

@Controller
public class Summernote {
	@Autowired
	Summernote_DAO dao;

	@RequestMapping("/summernote.do")
	public ModelAndView summernote(Summernote_DTO dto) {
		ModelAndView mav = new ModelAndView();
		/*
		 * System.out.println("dao.max_c_m_no()=="+dao.max_c_m_no());
		 * System.out.println("c_id=="+dto.getC_id());
		 * System.out.println("c_m_no=="+dto.getC_m_no());
		 */
		if (dto.getC_m_no() == 0) {
			dto.setC_m_no(dao.max_c_m_no() + 1);
			// System.out.println("//c_m_no=="+dto.getC_m_no());
			// System.out.println("content#"+dto.getC_m_content()+"#");
			dao.insert_memo(dto);
		}
		if (dto != null)
			dto = dao.read_memo(dto);
		else
			System.out.println("입력실패");
		/*
		 * System.out.println("c_id=="+dto.getC_id());
		 * System.out.println("c_m_no=="+dto.getC_m_no());
		 * System.out.println("content#"+dto.getC_m_content()+"#");
		 * System.out.println("c_m_active#"+dto.getC_m_active()+"#");
		 * System.out.println("c_m_rdate#"+dto.getC_m_rdate().toString()+"#");
		 */

		mav.addObject("dto", dto);

		mav.setViewName("summernote");
		return mav;
	}// summernote() end


	@RequestMapping(value = "/summernote_imageUpload.do", method = RequestMethod.POST)
	public void summernote_imageUpload(Summernote_Image_DTO dto, HttpServletRequest req, HttpServletResponse resp) {
		// ResponseEntity<String> entity = null;
		if (dto.getC_m_no() == 0)
			return;
		String upload = "/resources/storage";
		String basePath = req.getRealPath(upload);
		MultipartFile file = dto.getUploadFile();
		String uploadFile = UploadSaveManager.saveFileSpring30(file, basePath);
		dto.setI_file(uploadFile);
		dto.setI_file_size(file.getSize());
		if(dao.insert_image(dto)==0) return;
		// 업로드된 경로와 파일명을 통해 이미지의 경로를 생성
		String uploadPath = "resources/storage/" + uploadFile;

		// 생성된 경로를 JSON 형식으로 보내주기 위한 설정
		JSONObject jobj = new JSONObject();
		jobj.put("url", uploadPath);

		try {
			resp.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한
														// 세팅
			PrintWriter out = resp.getWriter();
			out.print(jobj.toJSONString());
			System.out.println("json==" + jobj.toJSONString());
		} catch (Exception e) {
			e.printStackTrace();
		}

		// return entity;
	}// summernote_imageUpload() end

	@RequestMapping(value = "/summernote_insert.do", method = RequestMethod.POST)
	public ModelAndView summernote_update(Summernote_DTO dto) {
		ModelAndView mav = new ModelAndView();
		System.out.println(dto.getC_m_content());
		if (dto.getC_m_no() != 0) {
			dao.update_memo(dto);
		}
		if (dto != null)
			dto = dao.read_memo(dto);
		else
			System.out.println("입력실패");
		

		mav.addObject("dto", dto);

		mav.setViewName("summernote");
		return mav;
	}
}
