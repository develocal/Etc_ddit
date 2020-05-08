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

public class IdCheckMemberAction implements Action {
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService=memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url=null;
		
		String id=request.getParameter("id");
		
		MemberVO member=null;		
		try {
			member = memberService.getMember(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(member!=null) {
			PrintWriter out=response.getWriter();
			out.print("duplicated");
		}
		return url;
	}	
	
}










