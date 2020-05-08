package com.jsp.action.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jsp.action.Action;
import com.jsp.dto.MemberVO;
import com.jsp.service.MemberService;
import com.jsp.service.MemberServiceImpl;

public class MemberRegistAction implements Action{
	
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService=memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url =null;
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String picture = request.getParameter("picture");
		String authority= request.getParameter("authority");

		String phone = "";
		for (String data : request.getParameterValues("phone")) {
			phone += data;
		}		

		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPwd(pwd);
		member.setPhone(phone);
		member.setEmail(email);
		member.setPicture(picture);
		member.setAuthority(authority);

		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		try {
			memberService.regist(member);
			
			out.println("<script>");
			out.println("window.opener.location.href='list.do';");
			out.println("window.close();");
			out.println("</script>");
		} catch (SQLException e) {
			e.printStackTrace();
			out.println("<script>");
			out.println("alert('회원등록이 실패했습니다.');");
			out.println("window.close();");
			out.println("</script>");
		}
		
		return url;
	}

}
