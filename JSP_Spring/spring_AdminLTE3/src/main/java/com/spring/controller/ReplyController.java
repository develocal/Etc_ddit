package com.spring.controller;

import java.sql.SQLException;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.dto.ReplyVO;
import com.spring.service.ReplyService;

//url : /replies
///replies/all/{bno}		list : GET방식, bno번 게시글의 댓글 목록
///replies/{rno}			modify : PUT,PATCH방식, rno 댓글의 수정 
///replies/{rno}			remove : DELETE 방식, rno 댓글의 삭제
///replies 					regist : POST 방식 : 댓글 입력
///replies/{bno}/{page} 	page list: GET방식 
//bno번 게시글의 페이징 처리된 댓글 목록

@Controller
@RequestMapping("/replies")
public class ReplyController {

	@Autowired
	private ReplyService service;

	public void setService(ReplyService service) {
		this.service = service;
	}

	@RequestMapping(value = "/{bno}/{page}", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Map<String, Object>> listPage(
			@PathVariable("bno") int bno, @PathVariable("page") int page)
			throws Exception {
		ResponseEntity<Map<String, Object>> entity = null;

		SearchCriteria cri = new SearchCriteria();
		cri.setPage(page);

		try {
			Map<String, Object> dataMap = service.getReplyList(bno, cri);
			entity = new ResponseEntity<Map<String, Object>>(dataMap,
					HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<Map<String, Object>>(
					HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;
	}

	@RequestMapping(value = "", method = RequestMethod.POST)
	@ResponseBody
	public ResponseEntity<String> register(@RequestBody ReplyVO reply)
			throws Exception {

		ResponseEntity<String> entity = null;

		try {
			service.registReply(reply);

			SearchCriteria cri = new SearchCriteria();
			cri.setPerPageNum(5);

			Map<String, Object> dataMap = service.getReplyList(reply.getBno(),
					cri);
			PageMaker pageMaker = (PageMaker) dataMap.get("pageMaker");
			int realEndPage = pageMaker.getRealEndPage();

			entity = new ResponseEntity<String>("SUCCESS," + realEndPage,
					HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(),
					HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;

	}

	@RequestMapping(value = "/{rno}", 
					method = { RequestMethod.PUT,RequestMethod.PATCH })
	@ResponseBody
	public ResponseEntity<String> modify(@PathVariable("rno") int rno,
										 @RequestBody ReplyVO reply) throws Exception {
		ResponseEntity<String> entity = null;

		reply.setRno(rno);
		try {
			service.modifyReply(reply);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (SQLException e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(
					HttpStatus.INTERNAL_SERVER_ERROR);
		}

		return entity;
	}
	
	@RequestMapping(value="/{rno}",method=RequestMethod.DELETE)
	@ResponseBody
	public ResponseEntity<String> remove(@PathVariable("rno") int rno,
										 @RequestBody RemoveReplyCommand removeReq )
														throws Exception{
		
		ResponseEntity<String> entity=null;
		try{
			service.removeReply(rno);
			
			SearchCriteria cri= new SearchCriteria();
			cri.setPerPageNum(5);
			
			Map<String,Object> dataMap
				=service.getReplyList(removeReq.getBno(), cri);
			PageMaker pageMaker = (PageMaker)dataMap.get("pageMaker");
			int page = removeReq.getPage();			
			int realEndPage=pageMaker.getRealEndPage();
			if(page>realEndPage){page=realEndPage;}
			
			
			entity=new ResponseEntity<String>("SUCCESS,"+page,HttpStatus.OK);
		}catch(SQLException e){
			e.printStackTrace();
			entity=new ResponseEntity<String>
						(HttpStatus.INTERNAL_SERVER_ERROR);
		}
		
		return entity;
	}

}
