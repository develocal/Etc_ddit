package com.spring.service;

import java.sql.SQLException;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.transaction.TransactionConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.spring.dao.MemberDAO;
import com.spring.dto.MemberVO;
import com.spring.exception.IdNotFoundException;
import com.spring.exception.InvalidPasswordException;


@TransactionConfiguration(transactionManager="transactionManager",
						  defaultRollback=false)
@Transactional
public class TestMemberServiceImpl {
	
	private MemberDAO memberDAO;
	
	private MemberServiceImpl service;
	
	@Before
	public void init(){
		service = new MemberServiceImpl();
		service.setMemberDAO(new MockMemberDAO());		
	}
	
	
	@Test
	public void testGetList()throws SQLException{
		
		List<MemberVO> memberList = service.getMemberList();
		
		Assert.assertEquals(2,memberList.size());
	}
	
	@Test
	public void testLogin()throws SQLException{
		String testID = "kkk";
		String testPWD ="kkk";
		
		try{
			service.login(testID, testPWD);
		}catch(IdNotFoundException e){
			Assert.assertEquals(1,1);
		}catch(InvalidPasswordException e){
			Assert.assertEquals(1,0);
		}
		
		testID="mimi";
		try{
			service.login(testID,testPWD);
		}catch(InvalidPasswordException e){
			Assert.assertEquals(1,1);
		}catch(IdNotFoundException e){
			Assert.assertEquals(1,2);
		}
		
		testPWD="1234";
		try{
			service.login(testID,testPWD);
		}catch(InvalidPasswordException e){
			Assert.assertEquals(1,3);
		}catch(IdNotFoundException e){
			Assert.assertEquals(1,4);
		}
		
	}
}











