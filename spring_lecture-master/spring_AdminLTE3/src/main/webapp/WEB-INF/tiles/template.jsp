<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<%@ include file="template_header.jsp" %>

<body class="hold-transition sidebar-mini">
	<div id="wrapper">
		 
	    <tiles:insertAttribute name="header" />
	    <tiles:insertAttribute name="aside" />
	    <tiles:insertAttribute name="body" />    
	    <tiles:insertAttribute name="footer" />
	    
	</div> 
</body>



<%@ include file="template_footer.jsp" %>


