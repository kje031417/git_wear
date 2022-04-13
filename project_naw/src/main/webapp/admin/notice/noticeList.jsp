<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW - 공지</title>
<style type="text/css">
#notice_list {
	width: 100%;
	display: inline-flex;
	justify-content: center;
}
#notice_list_table {
	width: 50%;
	border-collapse: collapse;
	margin-bottom: 10px;
}
#notice_list_table > tr, th, td {
	height: 20px;
	border-top: 1px solid #767677;
	border-bottom: 1px solid #767677;
	padding: 10px;
}
.notice_date {
	width: 30%;
	text-align: center;
}
.notice_title {
	text-align: center;
}

#notice_write_button_div {
	width: 100%;
	display: inline-flex;
	justify-content: center;
	margin-top: 30px;
	margin-bottom: 50px;
}

#notice_write_button_div > button {
	width: 120px;
	height: 40px;
	border: 1px solid black;
	font-weight: bold;
	margin-left: 5px;
	margin-right: 5px;
}

#notice_write_button {
	background-color: white;
	color: black;
}

#submit_button {
	background-color: black;
	color: white;
}
#reset_button {
	background-color: white;
	color: black;
}

#notice_write_button:hover, 
#submit_button:hover, 
#reset_button:hover {
	color: #767677;
	border: 1px solid #767677;
	cursor: pointer;
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
	<!------------ notice write form ------------>
	<jsp:include page="../notice/noticeWriteFrom.jsp" />
	<!-- 
	<c:if test="${admin_id == admin }">
		<jsp:include page="${req_notice }" />
	</c:if>
	-->
	
	<!------------ notice view ------------>
	<jsp:include page="../notice/noticeView.jsp" />
	
	
	
	<!------------ notice list ------------>
	
	<div id="notice_list">
		<table id="notice_list_table" align="center">
			<tr>
				<th class="notice_date">날짜</th>
				<th class="notice_title">제목</th>
			</tr>
			
			<tr>
				<td class="notice_date">2022/04/11</td>
				<td>2022년 4월 공지 업데이트입니다.</td>
			</tr>
			
			<!-- 
			<c:forEach var="dto" items="${list }">
				<tr>
					<td>${dto.notice_date }</td>
					<td><a id="subjectA" href="#">${dto.notice_title }</a></td>
				</tr>
			</c:forEach>
			 -->
		</table>
	</div>
	
	<!-- paging -->
	<div class="pagination" style="text-align: center;">
		<c:if test="${startPage > 3 }">
			<a class="paging" href="noticeList.do?pg=${startPage - 1 }">&laquo;</a>
		</c:if>
	
		<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
			<c:if test="${pg == i }">
				<a class="currentPaging" href="noticeList.do?pg=${i }">${i }</a>
			</c:if>
			<c:if test="${pg != i }">
				<a class="paging" href="noticeList.do?pg=${i }">${i }</a>
			</c:if>		
		</c:forEach>
	
		<c:if test="${endPage < totalP }">
			<a class="paging" href="noticeList.do?pg=${endPage + 1 }">&raquo;</a>
		</c:if>		
	</div>
	
	<div id="notice_write_button_div">
		<c:if test="${admin_id == admin }">
			<button type="submit" id="notice_write_button" onclick="location.href='../noticeWriteForm.do'">새 공지</button>
		</c:if>
	</div>
</body>
</html>