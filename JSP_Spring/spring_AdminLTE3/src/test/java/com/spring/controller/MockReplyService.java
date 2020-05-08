package com.spring.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.spring.dto.ReplyVO;
import com.spring.service.ReplyService;

public class MockReplyService implements ReplyService{

	@Override
	public Map<String, Object> getReplyList(int bno, SearchCriteria cri)
			throws SQLException {
		List<ReplyVO> replyList=new ArrayList<ReplyVO>();
		PageMaker pageMaker=new PageMaker();
		Map<String,Object> dataMap=new HashMap<String,Object>();
		
		ReplyVO reply=new ReplyVO(1,1,"abc","mimi",new Date(),new Date());
		replyList.add(reply);
		
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(replyList.size());
		
		dataMap.put("replyList",replyList);
		dataMap.put("pageMaker", pageMaker);
		
		return dataMap;
	}

	@Override
	public void registReply(ReplyVO reply) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void modifyReply(ReplyVO reply) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeReply(int rno) throws SQLException {
		// TODO Auto-generated method stub
		
	}
	
}
