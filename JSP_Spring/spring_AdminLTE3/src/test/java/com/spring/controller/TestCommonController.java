package com.spring.controller;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.spring.dto.MemberVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:com/spring/context/*-context.xml")
@WebAppConfiguration
public class TestCommonController {
	
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setUp(){
		CommonController controller=ctx.getBean(CommonController.class);				
		controller.setService(new MockMemberService());
		mockMvc=MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	
	@Test
	public void testLogout()throws Exception{
		mockMvc.perform(get("/logout"))
			   .andExpect(status().isOk())
			   .andExpect(view().name("commons/logout"))
			   .andExpect(request().attribute("msg", "로그아웃 되었습니다."));
	}
	
	@Test
	public void testLogin()throws Exception{
		
		MockHttpServletRequest request = new MockHttpServletRequest();
		request.setRequestURI("/login");
		request.setMethod("post");
		MockHttpSession session=(MockHttpSession) request.getSession();
		
		MemberVO success=new MemberVO();
		success.setId("mimi");
		success.setPwd("1234");
		success.setEnabled(1);
		
		mockMvc.perform(post("/login").param("id", success.getId())
									  .param("pwd",success.getPwd())
									  .session(session))
		   .andExpect(status().is(302))
		   .andExpect(view().name("redirect:/main"))
		   .andExpect(request().sessionAttribute("id",success.getId()));
		
		
	}
}








