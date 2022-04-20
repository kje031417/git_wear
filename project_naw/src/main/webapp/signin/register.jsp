<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	window.onload = function(){	
		var dialog = document.getElementById("myMsgDialog"); 
		dialog.showModal();
	}
	
	function close_ok(){ 
		var dialog = document.getElementById("myMsgDialog"); 
		dialog.close(); 
		location.href="profileMain.do"";
	}
	function close_fail(){ 
		var dialog = document.getElementById("myMsgDialog"); 
		dialog.close(); 
		location.href="javascript:histroy.go(-1);";
	} 
</script>
</head>
<body>
	<c:if test="${result > 0}">
		<dialog id="myMsgDialog"> 
			<h3>Welcome ! Naw 멤버가 되신 것을 환영합니다 ! </h3> 
			<input type="button" id="btn_ok" onclick="close_ok()" 
			value=" 확 인 " > 
		</dialog>
	</c:if>
	<c:if test="${result == 0}">
		<dialog id="myMsgDialog"> 
			<h3>회원가입에 실패하였습니다. 재확인바랍니다.</h3> 
			<input type="button" id="btn_ok" onclick="close_fail()" 
			value=" 확 인 " > 
		</dialog>
	</c:if>
</body>
</html>