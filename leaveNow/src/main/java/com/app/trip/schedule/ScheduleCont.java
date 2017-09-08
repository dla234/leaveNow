/*
 * 2017.08.22 임은섭
 * 1. 여행 스케쥴 관련 컨트롤러 클래스
 * 2. 네 가지 메서드 작성(생성,저장,수정,삭제)
 */

package com.app.trip.schedule;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class ScheduleCont {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleCont.class);
	
	
	@RequestMapping(value="/sch/create",method=RequestMethod.POST)
	public String create() {
		logger.info("create()");
		
		return "";
	}
	@RequestMapping(value="/sch/create.do",method=RequestMethod.POST)
	public String moveForm(HttpServletRequest req) {
		logger.info("moveForm()");
		String email=(String)req.getSession().getAttribute("email");
		String savePath="resoures/"+email+"/temp";
		return "";
	}
	
	
	@RequestMapping(value="/sch/save",method=RequestMethod.POST)
	public String save() {
		logger.info("save()");
		
		return "";
	}
	
	@RequestMapping(value="/sch/get",method=RequestMethod.POST)
	public String get() {
		logger.info("get()");
		
		return "";
	}
	
	@RequestMapping(value="/sch/modified",method=RequestMethod.POST)
	public String modified(){
		logger.info("modified()");
		
		return "";
	}
	@RequestMapping(value="/sch/delete",method=RequestMethod.POST)
	public String delete(){
		logger.info("delete()");
		
		return "";
	}
	
}
