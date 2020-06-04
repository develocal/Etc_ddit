package com.spring.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.spring.dto.MemberVO;
import com.spring.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@RequestMapping(value="/regist",method=RequestMethod.GET)
	public void registGET() {}
	
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	public String registPOST(MemberVO member,Model model)throws Exception{
		String url="redirect:/main";
		
		service.regist(member);
		
		model.addAttribute("registMember",member);
		
		return url;
		
	}
	
	@RequestMapping(value="/jaejik/{type}",method=RequestMethod.GET)
	public String jaejik(@PathVariable String type,
						 String id, String pwd,
						 HttpServletRequest request,
						 HttpServletResponse response,
						 Model model) throws Exception{
		
		model.addAttribute("type",type);
		model.addAttribute("id",id);
		model.addAttribute("pwd",pwd);
		
		String imagePath=request.getSession().getServletContext().
				getRealPath("/resources/images/jaejik.jpg");
		
		System.out.println(imagePath);
		model.addAttribute("imagePath",imagePath);
		
		
		return "jaejikReportView";
	}
	
}









