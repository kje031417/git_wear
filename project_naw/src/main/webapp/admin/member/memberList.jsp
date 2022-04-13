<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW(관리자) - 회원관리</title>
<style type="text/css">
#member_list_wrap {
	width: 100%;
	height: 400px;
	display: inline-flex;
	justify-content: center;
	margin-bottom: 20px;
}
#member_list_wrap_inner {
	width: 80%;
	height: 399px;
	border-collapse: collapse;
}
#member_list_label_div {
	width: 100%;
	height: 40px;
	font-size: 50px;
	display: inline-table;
	margin-top: 25px;
	margin-bottom: 25px;
}

#member_search_div {
	height: 35px;
	margin-bottom: 15px;
}
#member_search_by_word_div {
	display: inline;
	float: right;
	margin-bottom: 15px;
}
#member_search_by_word_input_div {
	display: inline;
	height: 100%;;
	
}
#member_search_by_word_button {
	display: inline;
}

#member_search_div > select {
	height: 100%;
}
#member_search_by_word_input_div > input[type="text"] {
	height: 32px;
}
#member_search_by_word_button {
	background-color: black;
	color: white;
	height: 35px;
	border: 1px solid black;
	font-weight: bold;
	margin-left: 5px;
	margin-right: 5px;
}
#member_search_by_word_button:hover {
	color: #767677;
	border: 1px solid #767677;
	cursor: pointer;
}

#member_list {
	width: 100%;
	display: inline-flex;
	justify-content: center;
}
#member_list_table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 10px;
}
#member_list_table > tr, th, td {
	height: 25px;
	text-align: center;
	border-top: 1px solid #767677;
	border-bottom: 1px solid #767677;
	padding: 10px;
}

.pagination {
	width: 100%;
	display: inline-flex;
	justify-content: center;
}
.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
}
.pagination a.active {
	background-color: #4CAF50;
	color: white;
}
.pagination a:hover:not(.active) {background-color: #ddd;}

</style>
</head>
<body>
<div id="member_list_wrap">
	<div id="member_list_wrap_inner">
		<div id="member_list_label_div">
			Member List
		</div>
		
		<div id="member_search_div">
			<select id="member_search_1">
				<option>검색할 카테고리 선택</option>
				<option>이름</option>
				<option>성별</option>
				<option>나이</option>
				<option>연락처</option>
				<option>이메일</option>
				<option>지역</option>
				<option>가입일</option>
			</select>
			<select id="member_search_2">
				<option>category2-1</option>
				<option>category2-2</option>
			</select>
			
			<div id="member_search_by_word_div">
				<div id="member_search_by_word_input_div">
					<input type="text">
				</div>
				<button id="member_search_by_word_button" type="submit">검색</button>
			</div>
		</div>
		
		
		<div id="member_list">
			<table id="member_list_table" align="center">
				<tr>
					<th></th>
					<th>ID</th>
					<th>이름</th>
					<th>성별</th>
					<th>생년월일</th>
					<th>연락처</th>
					<th>이메일</th>
					<th>우편번호</th>
					<th>주소</th>
					<th>상세주소</th>
					<th>가입일</th>
				</tr>
				
				<tr>
					<td><input type="checkbox" name=""></td>
					<td>id</td>
					<td><a id="subjectA" href="#">이름</a></td>
					<td>여자</td>
					<td>1111.22.33</td>
					<td>010-1111-2222</td>
					<td>id@email.com</td>
					<td>11111</td>
					<td>강남구</td>
					<td>언주로</td>
					<td>2022.04.12</td>
				</tr>
				<!-- 
				<c:forEach var="dto" items="${list }">
					<tr>
						<td><input type="checkbox" name=""></td>
						<td>${dto.id}</td>
						<td><a id="subjectA" href="#">${dto.name}</a></td>
						<td>${dto.gender}</td>
						<td>${dto.age}</td>
						<td>${dto.phone}</td>
						<td>${dto.email}</td>
						<td>${dto.post}</td>
						<td>${dto.addr1}</td>
						<td>${dto.addr2}</td>
						<td>${dto.join_date}</td>
					</tr>
				</c:forEach>
				 -->
			</table>
		</div>
		
		<!-- paging -->
		<div class="pagination" style="text-align: center;">
			<c:if test="${startPage > 3 }">
				<a class="paging" href="memberList.do?pg=${startPage - 1 }">&laquo;</a>
			</c:if>
		
			<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
				<c:if test="${pg == i }">
					<a class="currentPaging" href="memberList.do?pg=${i }">${i }</a>
				</c:if>
				<c:if test="${pg != i }">
					<a class="paging" href="memberList.do?pg=${i }">${i }</a>
				</c:if>		
			</c:forEach>
		
			<c:if test="${endPage < totalP }">
				<a class="paging" href="memberList.do?pg=${endPage + 1 }">&raquo;</a>
			</c:if>		
		</div>
	</div>
</div>
</body>
</html>