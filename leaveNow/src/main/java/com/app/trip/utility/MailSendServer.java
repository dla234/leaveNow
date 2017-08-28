/*
 * 2017.08.24 임은섭
 * 1. 메일 보내기
 */

package com.app.trip.utility;

import javax.mail.*;
import javax.mail.internet.*;

import org.springframework.stereotype.Service;

import com.app.trip.member.MemberDTO;

import java.util.*;

@Service
public class MailSendServer {

	/*
	 * 1. 처음 가입용 인증코드 메일을 보내는 메서드
	 */
	public int sendMail(MemberDTO dto,String code) {
		
		String mailServer="mw-002.cafe24.com";
		Properties props=new Properties();
		props.put("mail.smtp.host", mailServer);
		props.put("mail.smtp.auth", "true");
		
		Authenticator myAuth= new MyAuthenticator();
		Session sess= Session.getInstance(props, myAuth);
		
		try{
			String to =dto.getEmail();
			String from ="dms1tjq@gmail.com";
			String subject ="Leave Now에 가입해주셔서 갑사합니다.";
			String msgText ="인증하기"+"http://localhost:9090/trip/views/member/certification?code="+code+"인증하기";
			
			//msgText+="인증 코드:"+code;
			
			msgText =Utility.convertChar(msgText);
			
			InternetAddress[] address={new InternetAddress(to)};
			
			Message msg= new MimeMessage(sess);
			msg.setRecipients(Message.RecipientType.TO, address);
			msg.setFrom(new InternetAddress(from));
			msg.setSubject(subject);
			msg.setContent(msgText, "text/html; charset=UTF-8");
			msg.setSentDate(new Date());

			Transport.send(msg);

			/*
			
				InternetAddress[] address={new InternetAddress(to),
						....};
			
			*/
			
		}catch(Exception e){
			System.out.println("MailSendServer:"+e);
		}
		return 0;
	}
	
	public int sendMail(String email,String code) {
		
		String mailServer="mw-002.cafe24.com";
		Properties props=new Properties();
		props.put("mail.smtp.host", mailServer);
		props.put("mail.smtp.auth", "true");
		
		Authenticator myAuth= new MyAuthenticator();
		Session sess= Session.getInstance(props, myAuth);

		try{
			String to = email;
			String from ="dms1tjq@gmail.com";
			String subject ="원하시는 정보를 보내드립니다.";
			String msgText ="";
			
			msgText+="id:";
			msgText+=" passwd:";
			
			msgText =Utility.convertChar(msgText);
			
			InternetAddress[] address={new InternetAddress(to)};
			
			Message msg= new MimeMessage(sess);
			msg.setRecipients(Message.RecipientType.TO, address);
			msg.setFrom(new InternetAddress(from));
			msg.setSubject(subject);
			msg.setContent(msgText, "text/html; charset=UTF-8");
			msg.setSentDate(new Date());

			Transport.send(msg);
			
			
			
			/*
			
				InternetAddress[] address={new InternetAddress(to),
						....};
			
			*/
			
		}catch(Exception e){
			System.out.println("MailSendServer:"+e);
		}
		return 0;
	}
	
}
