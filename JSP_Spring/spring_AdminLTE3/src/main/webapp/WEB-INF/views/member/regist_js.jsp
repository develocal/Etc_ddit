<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<script>


var checkedID="";

function idCheck_go(){		
	var id=$('input[name="id"]').val();
	
	if(id==""){
		alert("아이디를 입력하세요");
		return;
	}else{
		//아이디는 4~12자의 영문자와 숫자로만 입력
		var reqID=/^[a-zA-Z]{1}[a-zA-Z0-9]{3,12}$/;
		if(!reqID.test($('input[name="id"]').val())){
			alert("아이디는 첫글자는 영문자이며, \n4~13자의 영문자와 숫자로만 입력해야 합니다.");
			$('input[name="id"]').focus();
			return;
		}
	}
	
	var data={id:id};
	$.ajax({
		url:"<%=request.getContextPath()%>/member/idCheck.do",
		data:data,
		type:'post',
		success:function(result){
			console.log(result);
			if(result=="duplicated"){
				alert("중복된 아이디 입니다.");
				$('input[name="id"]').focus();
			}else{
				alert("사용가능한 아이디입니다.");
				checkedID=id;
			}
		},
		error:function(error){
			alert("시스템 장애로 가입이 불가합니다.");
		}
			
	});
}

$('#registBtn').on('click', function(e) {
	var uploadCheck = $('input[name="checkUpload"]').val();
	if(!(uploadCheck>0)){
		alert("사진 업로드는 필수입니다.");	
		//$('input[name="pictureFile"]').click();
		return;
	}
	
	if($('input[name="id"]').val()==""){
		alert("아이디는 필수입니다.");
		return;
	} 
		
	if($('input[name="pwd"]').val()==""){
		alert("패스워드는 필수입니다.");
		return;
	}	
	
	
	if($('input[name="id"]').val()!=checkedID){
		alert("아이디 중복확인이 필요합니다.");
		return;
	}
	var form = $('form[role="form"]');
	form.submit();
});



</script>













