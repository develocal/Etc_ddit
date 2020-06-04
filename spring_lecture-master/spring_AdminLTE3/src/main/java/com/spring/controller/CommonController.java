package com.spring.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.dto.MemberVO;
import com.spring.exception.IdNotFoundException;
import com.spring.exception.InvalidPasswordException;
import com.spring.service.MemberService;

@Controller
@RequestMapping("/")
public class CommonController {

	@Autowired
	private MemberService service;
	public void setService(MemberService service){
		this.service=service;
	}

	@RequestMapping("/main")
	public String main() {
		String url = "main.page";
		return url;
	}

	@RequestMapping(value = "/login")
	public String loginForm() {
		String url = "commons/loginForm";
		return url;
	}

	/*@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPost(String id, String pwd, HttpSession session) {
		String url = "redirect:/main";

		// 로그인 실패시 추가한 attribute 를 삭제.
		session.removeAttribute("msg");
		session.removeAttribute("id");
		
		String message=null;
		
		try {
			service.login(id, pwd);
			
			MemberVO loginUser=service.getMember(id);			

			if(loginUser.getEnabled()==0) { //사용정지
				message="사용중지된 아이디로 이용이 제한됩니다.";
				url="redirect:login";
			}else{ // 사용가능
				session.setAttribute("loginUser", loginUser);
				session.setMaxInactiveInterval(60*6);
			}
			
		} catch (IdNotFoundException e) {
			message="아이디가 존재하지 않습니다.";			
			url="redirect:login";			
		} catch (InvalidPasswordException e) {
			message="패스워드가 일치하지 않습니다.";
			url="redirect:login";
		} catch (SQLException e) {
			e.printStackTrace();
			message="시스템장애로 로그인이 불가합니다.";	
			url="redirect:login";
		}
		
		session.setAttribute("msg",message);
		session.setAttribute("id",id);
		
		return url;
	}
	*/
	/*@RequestMapping("/logout")
	public String logout(HttpSession session,HttpServletRequest request){
		String url="commons/logout";
		session.invalidate();
		request.setAttribute("msg","로그아웃 되었습니다.");
		return url;
	}*/
}









