<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW withdrawal</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="../script/UserwithdrawalScript.js"></script>
</head>
<body>
	<dialog id="MsgDialog">
	<h3>NAW 회원 탈퇴</h3>
	<div>
		NAW 회원 탈퇴를 진행하시겠습니까?<br>
		<br> NAW 회원 탈퇴를 진행하실 경우, <br>
		<br> 1. NAW 패션, 슈즈, 악세사리 등의 오프라인 구매 이력 <br>
		<br> 2. NAW 패션, 슈즈, 악세사리 등의 오프라인 및 온라인 회원 정보 및 구매 정보 등 모든 정보가 삭제되며 또한 한번 삭제된 정보는
		절대 복구하실 수 없습니다. *진행 중인 NAW.com의 패션, 슈즈, 악세사리의 애프터서비스, 제품 예약 그리고 미사용 디파짓 등의 현황이 있으실 경우 회원 탈퇴 시 정상적인 서비스를 받을
		수 없게 되오니, 고객 케어 센터를 통해 확인 및 삭제를 진행해 주십시오. <br>
		<br> NAW 회원 탈퇴를 진행하시겠습니까? 
	</div>
		<input
			type="button" id="btn_ok" onclick="close_ok()" value=" 확 인 ">
		<input type="button" id="btn_cancel" onclick="close_cancel()"
			value=" 취 소 ">
	</dialog>
</body>
</html>