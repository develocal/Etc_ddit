package com.spring.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.spring.dto.MemberVO;
import com.spring.service.MemberService;


@Controller
@RequestMapping("/member")
public class MemberConroller {
	
	@Autowired
	private MemberService service;
	public void setService(MemberService service){
		this.service=service;
	}
	
	@Resource(name="picturePath")
	private String picturePath;
	
	
	@RequestMapping("/list")
	public ModelAndView list(SearchCriteria cri,ModelAndView mnv)throws Exception{
		
		String url="member/list.page";
		
		Map<String,Object> dataMap=service.getMemberList(cri);
				
		mnv.addAllObjects(dataMap);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/registForm")
	public String registForm()throws Exception{
		String url="member/regist.open";
		return url;
	}
	
	@RequestMapping(value="/regist",method=RequestMethod.POST)
	public void regist(MemberVO member,String[] phone, HttpServletResponse response)throws Exception{
		
		String tempPhone="";
		for(String data : phone){
			//System.out.println(data);
			tempPhone+=data;
		}
		member.setPhone(tempPhone);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		try{
			service.regist(member);
			
			out.println("<script>");
			out.println("alert('회원등록이 되었습니다.');");
			out.println("window.opener.location.href='list.do';");
			out.println("window.close();");
			out.println("</script>");
		}catch(SQLException e){
			e.printStackTrace();
			out.println("<script>");
			out.println("alert('회원등록이 실패했습니다.');");
			out.println("window.close();");
			out.println("</script>");
		}
	}
	
	
	@RequestMapping("/detail")
	public ModelAndView detail(String id,ModelAndView mnv)throws Exception{
		String url="member/detail.open";
		
		MemberVO member=service.getMember(id);
		
		mnv.addObject("member",member);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/remove")
	public ModelAndView remove(String id, 
							   HttpSession session,
							   ModelAndView mnv)throws Exception{
		String url="member/removeSuccess";
		
		//사진 삭제
		// 이미지 파일을 삭제
		MemberVO member = service.getMember(id);
		String fileName = member.getPicture();
		File file = new File(picturePath,fileName);
		if (file.exists()) {
			file.delete();
		}
		
		//로그인한 유저인 경우 로그아웃.
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		if (loginUser.getId().equals(member.getId())) {
			session.invalidate();
		}
		
		//회원삭제		
		service.remove(id);
		
		mnv.addObject("member",member);		
		mnv.setViewName(url);
		
		return mnv;		
	}
	
	@RequestMapping("/stop")
	public ModelAndView stop(String id, 
							 HttpSession session,
							 ModelAndView mnv)throws Exception{
		String url="member/stopSuccess";
				
		MemberVO loginUser = (MemberVO)session.getAttribute("loginUser");
		if(id.equals(loginUser.getId())) {
			 url="member/stopFail";
		}else{
			try {
				service.disable(id);
			} catch (SQLException e) {
				e.printStackTrace();
				url="error/500";
			}
		}			
		
		mnv.addObject("id",id);
		mnv.setViewName(url);
		return mnv;
	}
	
	@RequestMapping("/modifyForm")
	public ModelAndView modifyForm(String id, ModelAndView mnv)throws Exception{
		String url="member/modify.open";
		
		MemberVO member = service.getMember(id);
		
		mnv.addObject("member",member);
		mnv.setViewName(url);
		
		return mnv;
	}
	
	@RequestMapping("/modify")
	public void modify(MemberVO modifyReq,
					   HttpSession session,
					   HttpServletResponse response)throws Exception{
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		try{
			service.modify(modifyReq);
			
			//로그인한 사용자의 경우 수정된 정보로 session 업로드
			MemberVO member = service.getMember(modifyReq.getId());
			MemberVO loginUser = (MemberVO) session.getAttribute("loginUser");
			if (member.getId().equals(loginUser.getId())) {				
				session.setAttribute("loginUser", member);
			}
			
			out.println("<script>");
			out.println("alert('수정되었습니다.');");
			out.println("location.href='detail?id="+member.getId()+"';");
			out.println("</script>");
			
		}catch(SQLException e){
			e.printStackTrace();
			
			out.println("<script>");
			out.println("alert('수정에 실패했습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");

		}
		
		
	}
	
	
	@RequestMapping(value="/picture",method=RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> picture(@RequestParam("pictureFile") MultipartFile multi, 
										  String oldPicture) throws Exception{
		
		ResponseEntity<String> entity=null;
		String result="";
		HttpStatus status=null;
		
		/* 파일유무확인 */
		if (multi.isEmpty()) {			
			result="파일이 없습니다.!";			
			status=HttpStatus.BAD_REQUEST;
		}else 
		/* 용량제한 5MB */
		if (multi.getSize() > 1024 * 1024 * 5) {			
			result="용량초과 입니다";			
			status=HttpStatus.BAD_REQUEST;
		}else{
			/* 파일저장폴더설정 */
			String uploadPath = picturePath;
			String fileName = UUID.randomUUID().toString().replace("-", "")+".jpg";			
			File storeFile = new File(uploadPath,fileName);
			
			// local HDD 에 저장.
			multi.transferTo(storeFile);
			
			if(!oldPicture.isEmpty()){
				File oldFile = new File(uploadPath,oldPicture);
				if (oldFile.exists()) {
					oldFile.delete();
				}
			}
			
			result=fileName;
			status=HttpStatus.OK;
			
		}
		return new ResponseEntity<String>(result,status);
	}
	
	@RequestMapping("/getPicture")
	@ResponseBody
	public ResponseEntity<byte[]> getPicture(String picture)throws Exception{
		InputStream in=null;
		ResponseEntity<byte[]> entity=null;
		String imgPath = this.picturePath;
		try{
			
			//in=new FileInputStream(imgPath+File.separator+picture);
			in=new FileInputStream(new File(imgPath,picture));
			
			entity=new ResponseEntity<byte[]>(IOUtils.toByteArray(in),HttpStatus.CREATED);
		}catch(IOException e){
			e.printStackTrace();
			entity=new ResponseEntity<byte[]>(HttpStatus.INTERNAL_SERVER_ERROR);
		}finally{
			in.close();
		}
		return entity;
	}
	
	@RequestMapping("/idCheck")
	public ResponseEntity<String> idCheck(String id)throws Exception{
		
		String result="";		
		HttpStatus status=HttpStatus.OK;
		
		try{
			MemberVO member = service.getMember(id);		
			if(member!=null){
				result="duplicated";	
			}
		}catch(SQLException e){
			status=HttpStatus.BAD_REQUEST;
		}
		
		return new ResponseEntity<String>(result,status);
	}
	
}







