package com.jsp.action.member;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jsp.action.Action;
import com.jsp.dto.MemberVO;
import com.jsp.service.MemberService;
import com.jsp.service.MemberServiceImpl;
import com.jsp.utils.GetUploadPath;

public class MemberModifyAction implements Action {
	
	private MemberService memberService;
	public void setMemberService(MemberService memberService) {
		this.memberService=memberService;
	}
	
	@Override
	public String execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String url = "redirect:member/detail.do?id="+ request.getParameter("id");

		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String picture = request.getParameter("picture");
		String oldPicture = request.getParameter("oldPicture");
		String authority = request.getParameter("authority");
		String phone = request.getParameter("phone").replace("-", "");

		if (picture.isEmpty()) {
			picture = oldPicture;
		} else if (!picture.equals(oldPicture)) {
			String savePath = GetUploadPath
					.getUploadPath("member.picture.upload");
			File target = new File(savePath + File.separator + oldPicture);
			if (target.exists())
				target.delete();
		}

		MemberVO member = new MemberVO();
		member.setEmail(email);
		member.setId(id);
		member.setPhone(phone);
		member.setPwd(pwd);
		member.setPicture(picture);
		member.setAuthority(authority);


		try {
			memberService.modify(member);
			HttpSession session = request.getSession();
			MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
			if (member.getId().equals(loginUser.getId())) {
				member = memberService.getMember(id);
				session.setAttribute("loginUser", member);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return url;
	}

}
