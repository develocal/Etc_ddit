<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>
	alert("로그인은 필수입니다.");	
	if(window.opener){
		window.opener.location.reload(true);
		window.close();
	}else{
		location.href="<%=request.getContextPath()%>/login";
	}
</script>