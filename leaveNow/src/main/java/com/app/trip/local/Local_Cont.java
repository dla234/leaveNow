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

import net.utility.Utility;

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
			String outjson = Utility.remove_backslash(servie.keword_search().toString());
			System.out.println(callBack + "(" + outjson + ")");
			//out.write(callBack + "(" + outjson + ")");
			out.write(outjson);
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
	
	/*@RequestMapping(value="/local/keyword.do")
	@ResponseBody
	public void keword_search(HttpServletRequest req, HttpServletResponse resp, Local_search_DTO local_search_DTO) {
		try {
			resp.setContentType("application/json"); // 데이터 타입을 json으로 설정하기 위한
														// 세팅
			//String callBack = req.getParameter("callback");
			PrintWriter out = resp.getWriter();
			String outjson = Utility.remove_backslash(servie.keword_search(local_search_DTO).toJSONString());
			//System.out.println(callBack + "(" + outjson + ")");
			//out.write(callBack + "(" + outjson + ")");
			out.write(outjson);
			out.flush();
			out.close();
			return;
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	*/
	/*@RequestMapping(value="/local/keyword.do", method=RequestMethod.GET)
	@ResponseBody
	public String keword_search(HttpServletRequest req, Local_search_DTO local_search_DTO){
		String callBack = req.getParameter("callback");
		String outjson = Utility.remove_backslash(servie.keword_search(local_search_DTO).toString());
		System.out.println(callBack + "(" + outjson + ")");
		return callBack + "(" + outjson + ")";
	}*/
	
}// class Local_Cont end
