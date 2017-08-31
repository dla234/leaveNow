package com.app.trip.local;

import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Local_Cont {
	
	@Autowired
	LocalService servie;
	
	@RequestMapping(value="/local/keyword.do")
	@ResponseBody
	public void keword_search(HttpServletRequest req, HttpServletResponse resp) {
		try {
			resp.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한
														// 세팅
			String callBack = req.getParameter("callback");
			PrintWriter out = resp.getWriter();
			out.write(callBack + "(" + servie.name() + ")");
			System.out.println(callBack + "(" + servie.name() + ")");
			out.flush();
			out.close();
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/*@RequestMapping(value="/local/keyword.do", method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> name(HttpServletRequest req){
		Map<String,Object> gcodes = (Map<String,Object>) servie.name();
		String callBack = req.getParameter("callback");
		System.out.println("callBack=="+callBack);
		
		return gcodes;
	}*/
	
}// class Local_Cont end
