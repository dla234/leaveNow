package com.app.trip.image;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;


@Controller
public class ImageCont {

	private static final Logger logger = LoggerFactory.getLogger(ImageCont.class);
	
	@RequestMapping(value="/image",method=RequestMethod.POST)
    @ResponseBody
    public void handleFileUpload(@RequestParam("file") MultipartFile file,HttpServletRequest req) {
        try {
        	String realPath = "";
    		String fileName = "";
    		String uploadPath = "resources/uploadimg/";
        	
    		ServletContext scontext = req.getSession().getServletContext();
           logger.info(file.toString());
           realPath = scontext.getRealPath(uploadPath);
   		fileName = file.getOriginalFilename();
   		logger.info(fileName);
        } catch (Exception e) {
            e.printStackTrace();
            
        }
    }


}
