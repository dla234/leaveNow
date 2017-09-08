package com.app.trip.image;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.io.File;
import java.util.Iterator;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;


@Controller
public class ImageCont {

	private static final Logger logger = LoggerFactory.getLogger(ImageCont.class);
	
	@RequestMapping(value="summernote", method=RequestMethod.GET)
	public void uploadAjax(){
		// uploadAjax.jsp로 포워딩
		/*logger.info("######################  summernote.jsp로 포워딩  ######################");*/
	}
	
	@ResponseBody
	@RequestMapping(value="/upload/summernote", method=RequestMethod.POST, produces="text/plain;charset=utf-8")
	public String uploadImg(HttpServletRequest req,MultipartFile file) throws Exception{
		
		ServletContext scontext = req.getSession().getServletContext();
		MultipartHttpServletRequest request=(MultipartHttpServletRequest)req;
	
		Iterator fileNameIterator = request.getFileNames();
		
//		logger.info(""+fileNameIterator.hasNext());
//		logger.info(""+request.getParameter("file"));
//		logger.info(""+file.getOriginalFilename());
		
		while(fileNameIterator.hasNext()){
			MultipartFile myfile=request.getFile((String)fileNameIterator.next());
			logger.info(myfile.getName());
		}
		
		String realPath = "";
		String fileName = "";
		String uploadPath = "resources/uploadimg/";
		realPath = scontext.getRealPath(uploadPath);
		fileName = file.getOriginalFilename();
		
		File target = new File(realPath, fileName);
		FileCopyUtils.copy(file.getBytes(), target);
		
		int num = (int) (Math.random() * 1000) + 1;
		
		File oldFile = new File(realPath + fileName);
		logger.info("oldFile : "+oldFile);
		File newFile = new File(realPath + num + "_" + fileName);
		logger.info("newFile : "+newFile);
		if(oldFile.exists()){
			oldFile.renameTo(newFile);
		}
		String fullpath = "resources/uploadimg/" + num + "_" + fileName;
		logger.info("fullpath : "+fullpath);
		
		return fullpath;
	}


}
