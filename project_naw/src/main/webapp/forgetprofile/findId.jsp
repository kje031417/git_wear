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
	location.href="findMain.do"";
}
function close_fail(){ 
	var dialog = document.getElementById("myMsgDialog"); 
	dialog.close(); 
	location.href="javascript:histroy.go(-1);";
} 
</script>
<body>
	<c:when test="${user_id != null}">
		<dialog id="myMsgDialog">
		<h3>[NAW] 고객님의 아이디는 $(user_id)입니다.</h3>
		<input type="button" id="btn_ok" onclick="close_ok()" value=" 확 인 ">
		</dialog>
	</c:when>
	<c:otherwise>
		<dialog id="myMsgDialog">
		<h3>[NAW] 입력하신 정보가 일치하지 않습니다. 재확인바랍니다.</h3>
		<input type="button" id="btn_ok" onclick="close_fail()" value=" 확 인 ">
		</dialog>
	</c:otherwise>
</body>
</html>