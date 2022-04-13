<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="post" name="frm" autocomplete="off">
		<main>
			<!-- jsp 영역 -->
			<input type="button" value="리뷰" id="review">
			<input type="button" value="문의" id="inquiry">
		</main>
		
		<aside id="right_nav">
			<div>
				<button>사이즈</button>
				<label><input type="checkbox" name="size" value="250">250</label>
				<label><input type="checkbox" name="size" value="255">255</label>
				<label><input type="checkbox" name="size" value="260">260</label>
				<label><input type="checkbox" name="size" value="265">265</label><br><br>
				<button>색상</button>
				<label><input type="checkbox" name="color" value="black">black</label>
				<label><input type="checkbox" name="color" value="blue">blue</label>
				<label><input type="checkbox" name="color" value="white">white</label><br>
				<label>수량
				<input type="number" min="0" max="20" value="1" step="1" id="product"> <br>
				<input type="submit" value="바로 구매" id="buy"><br>
				<input type="submit" value="장바구니" id="basket"><br>
				<input type="submit" value="위시리스트" id="wishlist"><br>
				</label>
			</div>
		</aside>
	</form>
</body>
</html>