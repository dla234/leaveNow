/*
 * 생성일: 2017.07.26
 * 최초 생성자: 임은섭
 * 비고: 오류 관련 컨트롤러 제작(404,400,500)
 */


package com.app.trip.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/error")
public class CommonErrorController {

	@RequestMapping("/404")
	public String pageError404(HttpServletRequest request,HttpServletResponse reponse,Model model) {
		
		String msg="404 error";
		model.addAttribute("msg",msg);
		return "common/error";
	}
	
	@RequestMapping("/400")
	public String pageError400(HttpServletRequest request,HttpServletResponse reponse,Model model) {
		
		String msg="400 error";
		model.addAttribute("msg",msg);
		return "common/error";
	}
	@RequestMapping("/500")
	public String pageError500(HttpServletRequest request,HttpServletResponse reponse,Model model) {
		
		String msg="500 error";
		model.addAttribute("msg",msg);
		return "common/error";
	}
}
