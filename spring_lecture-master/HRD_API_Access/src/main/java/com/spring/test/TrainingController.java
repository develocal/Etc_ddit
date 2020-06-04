package com.spring.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/hrd")
public class TrainingController {
	
	
	@RequestMapping("/search")
	public String searchForm() throws Exception {
		return "hrd/searchForm";
	}
	
	@RequestMapping("/ajaxRequest")	
	@ResponseBody
	public ResponseEntity<String> ajaxResult(HRDSearchRequest hrdReq,HttpServletResponse response)throws Exception{
		String getUrl=hrdReq.getGetUrl();
		
		getUrl += "?authKey="+hrdReq.getAuthKey(); 
		getUrl += "&returnType=" + hrdReq.getReturnType();
		getUrl += "&outType=" + hrdReq.getOutType(); 
		getUrl += "&pageNum=" + hrdReq.getPageNum(); 
		getUrl += "&pageSize=" + hrdReq.getPageSize(); 
		getUrl += "&srchTraStDt=" + hrdReq.getSrchTraStDtToString(); 
		getUrl += "&srchTraEndDt=" + hrdReq.getSrchTraEndDtToString(); 
		getUrl += "&sort=" + hrdReq.getSort();
		getUrl += "&sortCol=" + hrdReq.getSortCol(); 
		getUrl += "&srchTraArea1=" + hrdReq.getSrchTraArea1();
		getUrl += "&srchTraArea2=" + hrdReq.getSrchTraArea2(); 
		
		
		URL url = new URL(getUrl);
		System.out.println(url);
		
		URLConnection connection = url.openConnection();
		connection.setRequestProperty("CONTENT-TYPE","text/html"); 
		connection.setRequestProperty("Accept", "application/xml,text/xml,application/xhtml+xml");	
		
		
	    BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream(),"euc-kr"));
	    String inputLine;
	    String buffer = "";
	    while ((inputLine = in.readLine()) != null){
	     	buffer += inputLine.trim();
	    }
	    System.out.println("buffer : " + buffer);
	    in.close();
	    
	    ResponseEntity<String> entity=null;
	    
	    response.setContentType("text/html;charset=utf-8");		
	    
	    if(buffer!=null && !buffer.isEmpty()) {
	    	HttpHeaders responseHeaders = new HttpHeaders(); 
	    	responseHeaders.add("Content-Type", "text/html; charset=UTF-8");
	    	entity = new ResponseEntity<String>(buffer.toString(),responseHeaders,HttpStatus.CREATED);
	    }else {
	    	entity = new ResponseEntity<String>(HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	    
	    return entity;
	}
	
}
