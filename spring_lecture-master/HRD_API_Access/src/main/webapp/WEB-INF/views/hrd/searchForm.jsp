<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page trimDirectiveWhitespaces="true" %>


<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="euc-kr"> -->
<meta charset="utf-8" />

<!-- <meta http-equiv="Content-Type" content="text/html; charset=euc-kr"> -->
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script> -->
<script type="text/javascript" src="<%=request.getContextPath() %>/resources/js/jquery.ajax-cross-origin.min.js"></script>

</head>
<body>
	<h1>HRD 과정 검색</h1>	
	<form name="srchHRD" >
		서비스키 : <input type="text" name="authKey" value="OlkDJhEFgFYsNqG3aY2BimgnjFbBvZDF" /><br/>
		API형식 지정 : <input type="text" name="returnType" value="XML"/><br/>
		페이지 번호 : <input type="text" name="pageNum" value="1"/><br/>
		페이지당 결과수 : <input type="text" name="pageSize" value="10" /><br/>
		outType : <input type="text" name="outType" value="1" /><br/>
		훈련시작  : <input type="date" name="srchTraStDt" value="2020-02-08" /> ~ <input type="date" name="srchTraEndDt" value="2020-05-08"/><br/>
		정렬기준 : <input type="text" name="sortCol" value="TR_STT_DT" /><br/>
		정렬방식: <input type="text" name="sort" value="ASC" /><br/>
		훈련지역: 시도 <input type="text" name="srchTraArea1" value="30"/> 시군구 <input type="text" name="srchTraArea2" value="30170" /><br/>
	</form>
	<button type="button" id="btn4">훈련정보 cross</button>
	
	 

<script>

$("#btn4").on("click", function(){
	
	var form = $('form[name="srchHRD"]');
	
	var url = "<%=request.getContextPath()%>/hrd/ajaxRequest?getUrl=";
	var subURL = "http://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp";	
	url += subURL;
	
	console.log(url);
	
	$.ajax({
		url : url,
		type : "GET",
		async : "false",
		data:form.serialize(),
		dataType : "xml",
		success : function(result) {
		      if(result == null || result == ""){
				alert("해당 데이터가 없습니다.");
		      }else{
				alert("성공");
				console.log(result);
		      }
		},
		error: function(x,o,e){
			alert(x.status + ":" +o+":"+e);	
		}
	});	

	
});

</script>


</body>
</html>