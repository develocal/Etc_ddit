package com.spring.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import com.spring.dto.MemberVO;
import com.spring.exception.IdNotFoundException;
import com.spring.exception.InvalidPasswordException;
import com.spring.service.MemberService;

public class MockMemberService implements MemberService {

	@Override
	public void login(String id, String pwd) throws SQLException,
			IdNotFoundException, InvalidPasswordException {
		if (!id.equals("mimi")) {			
			throw new IdNotFoundException();
		}else{			
			if(!pwd.trim().equals("1234")){
				throw new InvalidPasswordException();
			}
		}

	}

	@Override
	public void regist(MemberVO member) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public MemberVO getMember(String id) throws SQLException {
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPwd("1234");
		member.setEnabled(1);
		
		return member;
	}

	@Override
	public List<MemberVO> getMemberList() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Object> getMemberList(SearchCriteria cri)
			throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modify(MemberVO member) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void remove(String id) throws SQLException {
		// TODO Auto-generated method stub

	}

	@Override
	public void disable(String id) throws SQLException {
		// TODO Auto-generated method stub

	}

}
