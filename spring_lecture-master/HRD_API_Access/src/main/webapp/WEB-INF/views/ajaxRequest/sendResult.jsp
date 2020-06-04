<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<jsp:useBean id="hrdReq" class="com.spring.test.HRDSearchRequest">
	<jsp:setProperty property="*" name="hrdReq"/>
</jsp:useBean>

<%
	String getUrl=request.getParameter("getUrl");
	
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
%><%=buffer%>
