/*
 * 2017.08.23 임은섭
 * 1. 맴버 컨트롤러
 */

package com.app.trip.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.trip.utility.MailSendServer;


@Controller
@RequestMapping("/member")
public class MemberCont {

	@Autowired
	private MemberService service;
	@Autowired
	private MailSendServer mailSend;
	
	private static final Logger logger = LoggerFactory.getLogger(MemberCont.class);
	
	/*
	 * 2017.08.24 임은섭
	 * 로그인
	 */
	@RequestMapping("/login")
	public String login(HttpServletRequest request,HttpServletResponse reponse, ModelAndView mv,Model model) {
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String certification = request.getParameter("certification");
		//String url=request.getRequestURL().toString();
//		String url=request.getRequestURL().toString();
//		String url=request.getAttribute("javax.servlet.forward.request_uri").toString();
		String webURI=request.getRequestURI();
//		String[] url=request.getParameter("url").split(".jsp");
		String url=request.getParameter("url");
		
		
//		logger.info(certification+":"+request.getParameter("code"));
		logger.info(url+":"+mv.getViewName());
		// 회원 인증 여부
		if(certification != null){
			if(certification.equals("on")){
				HashMap<String, Object> map=new HashMap<>();
				map.put("email", email);
				map.put("code", request.getParameter("code"));
				service.certification(map);
			}
		}
		
		
		HashMap<String, Object> map=new HashMap<>();
		map.put("email", email);
		map.put("password", password);
		MemberDTO dto =service.login(map);
		
		if(dto ==null){
			model.addAttribute("error", "로그인 실패");
			return "error";
		}
	
		else{
			HttpSession session=request.getSession();
			session.setAttribute("email", dto.getEmail());
			session.setAttribute("m_code", dto.getM_code());
			session.setAttribute("m_name",dto.getM_name());
			return "redirect:"+url;
//			return "recommend_place";
		}
		
		
	
	}
	
	/*
	 * 2017.09.13 임은섭
	 * 일정 관련 로그인
	 */
	@RequestMapping("/loginsch")
	public String login(HttpServletRequest request) {
		logger.info("loginsch");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		HashMap<String, Object> map=new HashMap<>();
		map.put("email", email);
		map.put("password", password);
		MemberDTO dto =service.login(map);
		
		HttpSession session=request.getSession();
		session.setAttribute("email", dto.getEmail());
		session.setAttribute("m_name",dto.getM_name());
		session.setAttribute("m_code", dto.getM_code());
		
		return "redirect:"+"../create";
	}
	
	
	/*
	 * 2017.08.28 임은섭
	 * 로그 아웃
	 */
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request,HttpServletResponse reponse,Model model) {
		
		String url=request.getParameter("url");
		
		HttpSession session=request.getSession();
		session.removeAttribute("email");
		session.removeAttribute("m_code");
		
		String webURI=request.getRequestURI();
		logger.info(webURI);
		logger.info(url);
		
		if(url.equals("/sch_intro.jsp")){
			return "redirect:"+"../create";
		}
		else if(url.equals("/mypage.jsp")){
			return "redirect:"+"../Newindex.jsp";
		}
		else if(url.equals("/sch_2.jsp")){
			return "redirect:"+"../Newindex.jsp";
		}
		return "redirect:"+url;
	}
	/*
	 * 2017.08.24 임은섭
	 * 회원 가입
	 */
	@RequestMapping("/join")
	public String join(HttpServletRequest request,HttpServletResponse reponse,Model model,MemberDTO dto){
		
		logger.info("join:"+dto.toString());
		
		//boolean check= service.join(dto);
		/*
		if(check== false){
			model.addAttribute("msg","회원가입 실패");
			
		}
		*/
		String code=service.join(dto);
		if(code!="f"){
			logger.info("join success");
			mailSend.sendMail(dto,code);
			return "success";
		}
		else{
			model.addAttribute("msg","회원가입 완료, 인증 부여 실패");
			return "common/error";
		}
		
	}
	
	/*
	 * 2017.08.28 임은섭
	 * 회원 탈퇴
	 */
	
	@RequestMapping("/secession")
	public String secession(HttpServletRequest request,HttpServletResponse reponse,Model model,MemberDTO dto){
		//탈퇴 요청
		boolean res=false;
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		
		dto.setEmail(email);
		res = service.secession(dto);
		
		if(res== true){
			return "redirect:"+"../Newindex.jsp";
		}
		else{
			return "error";
		}
		
	}
	
	/*
	 * 2017.08.28 임은섭
	 * 회원정보 수정
	 */
	
	
	@RequestMapping("/modify")
	public String modify(HttpServletRequest request,HttpServletResponse reponse,Model model,MemberDTO dto){
		boolean res=false;
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		dto.setEmail(email);
		logger.info(dto.toString());
		
		if(dto.getPassword() != null && dto.getTeil() != null && dto.getM_name() != null){
			
			res= service.modify(dto);
		}
		else if(dto.getM_image() != null){
			
		}
		else{
			model.addAttribute("error", "빈값 입력");
			return "error";
		}
		
		if(res== true){
			return "success";
		}
		else{
			return "error";
		}
		
		
		
	}
	
	/*
	 * 2017.08.28 임은섭
	 * 회원 인증 요청
	 */
	@RequestMapping("/certification")
	public String certification(HttpServletRequest request,HttpServletResponse reponse,Model model){
		
		String code=request.getParameter("code");
		//String id=request.getParameter("email");
		
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		
		HashMap<String, Object> map=new HashMap<>();
		map.put("email", email);
		map.put("code", code);
		logger.info("certification:"+email);
		
		
		if(email==null){
			model.addAttribute("certification", "on");
			model.addAttribute("code", code);
			
			return "member/loginForm";//로그인 창으로 이동
		}
		else if(service.certification(map)){
			MemberDTO dto=service.getMember(email);
			session.setAttribute("m_code", dto.getM_code());
			return "success";
		}
		return "/error";
	}
	
	/*
	 * 2017.08.28 임은섭
	 * 인증 코드 재요청 ajax 형
	 */
	@RequestMapping("re_certification")
	public void reCertification(HttpServletRequest request,HttpServletResponse reponse,Model model){
		
		boolean result=false;
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("email");
		
		HashMap<String, Object> map=new HashMap<>();
		map.put("email", email);
		
		service.reM_check(map);
		
		String code=service.getM_check(email);
		int res=mailSend.sendMail(email,code);
		logger.info("email확인:"+email);
		if(res==1){
			result=true;
		}
		try {
			PrintWriter out=reponse.getWriter();
			out.print(res);
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	
	
	/*
	 * 2017.09.04 임은섭
	 * 이메일 중복 확인
	 */
	@RequestMapping("/emailCheck")
	public void emailCheck(HttpServletRequest request,HttpServletResponse reponse){
		String email=request.getParameter("email");
		
		PrintWriter out;
		
		try {
			out = reponse.getWriter();
			
			if(email==null){
				out.print("not");
			}
			else{
				if(service.getEmail(email)){
					
					out.print("allow");
				}
				else{
					out.print("not");
				}
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
}
