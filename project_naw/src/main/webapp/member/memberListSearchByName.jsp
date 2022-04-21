<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW(관리자) - 회원관리</title>
<link rel="stylesheet" href="../css/adminBody.css">
<link rel="stylesheet" href="../css/memberListSearchByName.css">
<style type="text/css">
#admin_member_button {
	background-color: black;
	color: white;
}
#admin_notice_button, 
#admin_item_button, 
#admin_sales_button {
	background-color: white;
	color: black;
}
</style>
<script type="text/javascript" src="../script/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({
		url: "memberListSearchByNameJson.do",
		type: "post",
		data: {"pg": "${pg}"},
		dataType: "json",
		success: function(json){
			//alert(json);
			$.each(json.items, function(index, item){
				// 태그 생성
				var tr1 = $("<tr>", {align: "center"});
				var td1 = $("<td>").html(item.user_id);
				var td2 = $("<td>").html(item.user_name);
				var td3 = $("<td>").html(item.user_gender);
				var td4 = $("<td>").html(item.user_birth);
				var td5 = $("<td>").html(item.user_phone);
				var td6 = $("<td>").html(item.user_email);
				var td7 = $("<td>").html(item.user_addr1);
				var td8 = $("<td>").html(item.user_addr2);
				var td9 = $("<td>").html(item.user_joindate);
				
				// 조립
				tr1.append(td1).append(td2).append(td3).append(td4).append(td5).append(td6).append(td7).append(td8).append(td9);
				
				// 출력
				$("#member_list_tbody").append(tr1);
			});
		},
		error: function(xhr, textStatus, errorThrown) {
			alert("[Error] " + xhr.status);
		}
	});
	
	// pagination
	$.ajax({
		url: "memberListSearchByName.do?pg=${startPage - 1 }",
		type: "get",
		data: {"startPage": "${startPage}"},
		dataType: "html",
		success: function(json){
			$('#member_list').html(data);
		},
		error: function(xhr, textStatus, errorThrown) {
			alert("[Error] " + xhr.status);
		}
	});
	
	
	// category로 검색
	$("#category1").load("../ajax/member-category-data.html #member_search_category1-1", function(){
		$(this).show();
	});
	
	$(document).on("change", "#category1 > select", function(){
		$("#category2").empty().hide();
		$("#category3").empty().hide();
		
		var target = $(this).find("option:selected").attr("data-target");
		var selector = "../ajax/member-category-data.html " + target;
		
		$("#category2").load(selector, function() {
			$(this).show();
		});
	});
	
	$(document).on("change", "#category2 > select", function(){
		$("#category3").empty().hide();
		
		var target = $(this).find("option:selected").attr("data-target");
		var selector = "../ajax/member-category-data.html " + target;
		
		$("#category3").load(selector, function() {
			$(this).show();
		});
	});
	
	$(document).on("change", "#category3 > select", function(){
		if($(this).find("option:selected").index() > 0) {
			var data1 = $("#category1 > select > option:selected").val();
			var data2 = $("#category2 > select > option:selected").val();
			var data3 = $("#category3 > select > option:selected").val();
			
			$("#item_category1_hidden").attr('value', data1);
			$("#item_category2_hidden").attr('value', data2);
			$("#item_category3_hidden").attr('value', data3);
			
		}
	});
	
});

</script>

</head>
<body>
	<!------------ admin menu ------------>
	<!--<c:if test="${sessionId == admin }">-->
		<jsp:include page="../admin/adminMenu.jsp"/>
	<!--</c:if>-->
	
	<div id="member_list_wrap">
		<div id="member_list_wrap_inner">
			<div id="member_list_label_div">
				Member List
			</div>
			
			<form action="memberListSearchByName.do" method="post">
				
				<div id="member_search_div">
					<span id="category1"></span>
					<span id="category2"></span>
					
					<div id="member_search_by_word_div">
						<div id="member_search_by_word_input_div">
							<input type="text" name="user_name">
						</div>
						<button id="member_search_by_word_button" type="submit">검색</button>
					</div>
				</div>
				
			</form>
			
			
			<div id="member_list">
				<table id="member_list_table" align="center">
					<tr>
						<!-- <th></th> -->
						<th>ID</th>
						<th>이름</th>
						<th>성별</th>
						<th>생년월일</th>
						<th>연락처</th>
						<th>이메일</th>
						<th>주소</th>
						<th>상세주소</th>
						<th>가입일</th>
					</tr>
					
					<tbody id="member_list_tbody">
						<!-- 회원 목록 출력 -->
					</tbody>
					
					<!-- 
					<c:forEach var="dto" items="${list }">
						<tr>
							<td><input type="checkbox" name=""></td>
							<td>${dto.user_id}</td>
							<td><a id="subjectA" href="#">${dto.user_name}</a></td>
							<td>${dto.user_gender}</td>
							<td>${dto.user_birth}</td>
							<td>${dto.user_phone}</td>
							<td>${dto.user_email}</td>
							<td>${dto.user_addr1}</td>
							<td>${dto.user_addr2}</td>
							<td>${dto.user_joindate}</td>
						</tr>
					</c:forEach>
					 -->
				</table>
			</div>
			
			<!-- paging -->
			<div class="pagination" style="text-align: center;">
				<c:if test="${startPage > 3 }">
					<a class="paging" href="memberListSearchByName.do?pg=${startPage - 1 }">&laquo;</a>
				</c:if>
			
				<c:forEach var="i" begin="${startPage }" end="${endPage }" step="1">
					<c:if test="${pg == i }">
						<a class="currentPaging" href="memberListSearchByName.do?pg=${i }">${i }</a>
					</c:if>
					<c:if test="${pg != i }">
						<a class="paging" href="memberListSearchByName.do?pg=${i }">${i }</a>
					</c:if>		
				</c:forEach>
			
				<c:if test="${endPage < totalP }">
					<a class="paging" href="memberListSearchByName.do?pg=${endPage + 1 }">&raquo;</a>
				</c:if>		
			</div>
		</div>
	</div>
</body>
</html>