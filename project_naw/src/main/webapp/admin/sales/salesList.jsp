<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW(관리자) - 매출관리</title>
<style type="text/css">
#sales_list_wrap {
	width: 100%;
	height: 400px;
	display: inline-flex;
	justify-content: center;
	margin-bottom: 20px;
}
#sales_list_wrap_inner {
	width: 80%;
	height: 399px;
	border-collapse: collapse;
}
#sales_list_label_div {
	width: 100%;
	height: 40px;
	font-size: 50px;
	display: inline-table;
	margin-top: 25px;
	margin-bottom: 25px;
}

#sales_search_div {
	height: 35px;
	margin-bottom: 15px;
}
#sales_search_by_word_div {
	display: inline;
	float: right;
	margin-bottom: 15px;
}
#sales_search_by_word_input_div {
	display: inline;
	height: 100%;;
	
}
#sales_search_by_word_button {
	display: inline;
}

#sales_search_div > select {
	height: 100%;
}
#sales_search_by_word_input_div > input[type="text"] {
	height: 32px;
}
#sales_search_by_word_button {
	background-color: black;
	color: white;
	height: 35px;
	border: 1px solid black;
	font-weight: bold;
	margin-left: 5px;
	margin-right: 5px;
}
#sales_search_by_word_button:hover {
	color: #767677;
	border: 1px solid #767677;
	cursor: pointer;
}

#sales_list {
	width: 100%;
	display: inline-flex;
	justify-content: center;
}
#sales_list_table {
	width: 100%;
	border-collapse: collapse;
	margin-bottom: 10px;
}
#sales_list_table > tr, th, td {
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
<div id="sales_list_wrap">
	<div id="sales_list_wrap_inner">
		<div id="sales_list_label_div">
			Sales List
		</div>
		
		<div id="sales_search_div">
			<select id="sales_search_1">
				<option>검색할 카테고리 선택</option>
				<option>이름</option>
				<option>성별</option>
				<option>나이</option>
				<option>연락처</option>
				<option>이메일</option>
				<option>지역</option>
				<option>가입일</option>
			</select>
			<select id="sales_search_2">
				<option>category2-1</option>
				<option>category2-2</option>
			</select>
			
			<div id="sales_search_by_word_div">
				<div id="sales_search_by_word_input_div">
					<input type="text">
				</div>
				<button id="sales_search_by_word_button" type="submit">검색</button>
			</div>
		</div>
		
		
		<div id="sales_list">
			<table id="sales_list_table" align="center">
				<tr>
					<th>상품번호</th>
					<th>상품명</th>
					<th>카테고리1</th>
					<th>카테고리2</th>
					<th>카테고리3</th>
					<th>색상</th>
					<th>사이즈</th>
					<th>가격</th>
					<th>등록일</th>
				</tr>
				
				<tr>
					<td>M12345678</td>
					<td>스피리테인 2000</td>
					<td>MEN</td>
					<td>신발</td>
					<td>러닝</td>
					<td>Core Black</td>
					<td>280</td>
					<td>109,000</td>
					<td>2022.04.12</td>
				</tr>
				<!-- 
				<c:forEach var="dto" items="${list }">
					<tr>
						<td>${dto.item_code}</td>
						<td>${dto.item_name}</td>
						<td>${dto.item_category1}</td>
						<td>${dto.item_category2}</td>
						<td>${dto.item_category3}</td>
						<td>${dto.item_color}</td>
						<td>${dto.item_size}</td>
						<td>${dto.item_price}</td>
						<td>${dto.item_date}</td>
					</tr>
				</c:forEach>
				 -->
			</table>
		</div>
		
		<!-- paging -->
		<div class="pagination" style="text-align: center;">
			<c:if test="${startPage > 3 }">
				<a class="paging" href="salesList.do?pg=${startPage - 1 }">&laquo;</a>
			</c:if>
		
			<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
				<c:if test="${pg == i }">
					<a class="currentPaging" href="salesList.do?pg=${i }">${i }</a>
				</c:if>
				<c:if test="${pg != i }">
					<a class="paging" href="salesList.do?pg=${i }">${i }</a>
				</c:if>		
			</c:forEach>
		
			<c:if test="${endPage < totalP }">
				<a class="paging" href="salesList.do?pg=${endPage + 1 }">&raquo;</a>
			</c:if>		
		</div>
	</div>
</div>
</body>
</html>