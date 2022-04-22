<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	window.onload = function(){	
		var dialog = document.getElementById("myMsgDialog"); 
		dialog.showModal();
	}
	
	function close_ok(){ 
		var dialog = document.getElementById("myMsgDialog"); 
		dialog.close(); 
		location.href="../main/index.jsp";
	} 
</script>
</head>
<body>
	<dialog id="myMsgDialog">		
		<c:if test="${result > 0 }">
			<p>비밀번호 변경이 완료되었습니다.</p>
		</c:if>
		<c:if test="${result == 0}">
			<p>비밀번호 변경에 실패하였습니다. 재확인바랍니다.</p>
		</c:if>
		<input type="button" id="btn_ok" value="확인" onclick="close_ok()">
	</dialog>
</body>
</html>