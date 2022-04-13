<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="itemList.css">
</head>
<body>
	<header>
		</nav>
		<div id="option">
			<label><input type="checkbox" name="filter" id="filter">필터</input></label>
			<label><input type="radio" name="last" id="last">신상품순</input></label>
		</div>
	</header>
	<aside id="right_nav">
		<div>
			<button id="size">사이즈</button>
			<label><input type="checkbox" name="size" value="250">250</label>
			<label><input type="checkbox" name="size" value="255">255</label>
			<label><input type="checkbox" name="size" value="260">260</label>
			<label><input type="checkbox" name="size" value="265">265</label><br>
			<button id="color">색상</button>
			<label><input type="checkbox" name="color" value="black">black</label>
			<label><input type="checkbox" name="color" value="blue">blue</label>
			<label><input type="checkbox" name="color" value="white">white</label>
		</div>
	</aside>
	<main>
		<!-- jsp영역 -->
	<include>
	</main>
</body>
</html>