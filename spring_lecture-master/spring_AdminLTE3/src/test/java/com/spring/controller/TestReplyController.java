package com.spring.controller;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.*;
import static org.hamcrest.Matchers.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:com/spring/context/*-context.xml")
@WebAppConfiguration
public class TestReplyController {
	
	@Autowired
	private WebApplicationContext ctx;
	
	private MockMvc mockMvc;
	
	@Before
	public void setUp(){
		ReplyController controller = ctx.getBean(ReplyController.class);
		controller.setService(new MockReplyService());
		
		mockMvc=MockMvcBuilders.webAppContextSetup(ctx).build();
	}
	
	@Test
	public void reply_list_test()throws Exception{
		mockMvc.perform(get("/replies/1/1"))
		       .andDo(print())
		       .andExpect(status().isOk())
		       .andExpect(jsonPath("$.replyList",hasSize(1)))
		       .andExpect(jsonPath("$.replyList[0].rno",is(1)))
		       .andExpect(jsonPath("$.pageMaker.cri.page",is(1)));
		 
	}
}


