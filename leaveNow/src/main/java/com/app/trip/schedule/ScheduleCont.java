/*
 * 2017.08.22 임은섭
 * 1. 여행 스케쥴 관련 컨트롤러 클래스
 * 2. 네 가지 메서드 작성(생성,저장,수정,삭제)
 */

package com.app.trip.schedule;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class ScheduleCont {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleCont.class);
	
	@Autowired
	private ScheduleService service;
	
	@RequestMapping(value="create",method=RequestMethod.GET)
	public ModelAndView create(HttpServletRequest req) {
		logger.info("create()");
		
		
		String email=(String)req.getSession().getAttribute("email");
		ModelAndView model=new ModelAndView();
		
		
		
		if(email==(null)){
			
			model.setViewName("/sch_login");
			
			return model;
		}
		else{
			model.setViewName("/sch_intro");
			return model;
		}
		
		
	}
	@RequestMapping(value="/sch/create.do",method=RequestMethod.POST)
	public String moveForm(HttpServletRequest req,Model model,RedirectAttributes redirectAttributes) throws Exception{
		logger.info("moveForm");
		String email=(String)req.getSession().getAttribute("email");
		String s_sdate=req.getParameter("trip_start_date");
		String s_subject=req.getParameter("main_subject");
		String sday=req.getParameter("trip_date_num");
		
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
		ScheduleDTO dto=new ScheduleDTO();
		dto.setEmail(email);
		dto.setS_subject(s_subject);
		dto.setS_sdate(format.parse(s_sdate));
		dto.setS_day(Integer.parseInt(sday));
		logger.info(""+dto.getS_sdate());
		
		
		if(service.createSchedule(dto)){
			redirectAttributes.addAttribute("s_sdate", s_sdate);
			redirectAttributes.addAttribute("sday", sday);
			redirectAttributes.addAttribute("s_subject",s_subject);
			return "redirect: ../sch_2.jsp";
		}
		else{
			model.addAttribute("msg","에러");
			return "common/error";
		}
		
		
		//return "success";
	}
	
	
	@RequestMapping(value="/sch/save",method=RequestMethod.POST)
	public String save(HttpServletRequest req) {
		logger.info("save()");
		
		return "";
	}
	
	@RequestMapping(value="/sch/get",method=RequestMethod.POST)
	public String get() {
		logger.info("get()");
		
		return "";
	}
	
	@RequestMapping(value="/sch/getList")
	public @ResponseBody Object getList(HttpServletResponse response) throws Exception{
		logger.info("getList()");
		 //response.setContentType("text/plain");
		 response.setCharacterEncoding("UTF-8");
		 
		 return service.getList().get(0).getS_subject();
		
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
