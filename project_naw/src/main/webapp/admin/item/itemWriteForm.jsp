<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
	height: 100%;
}

table {
	width: 100%;
}

#item_write_wrap {
	width: 100%;
	display: inline-flex;
	justify-content: center;
}

#item_write_wrap_inner {
	width: 35%;
}

#item_write_label_div {
	width: 100%;
	height: 40px;
	font-size: 50px;
	display: inline-table;
	margin-top: 25px;
	margin-bottom: 25px;
}

.item_write_field {
	height: 70px;
}

.item_write_field_details {
	height: 240px;
}

.item_write_field > input[type='text'] {
	width: 100%;
	height: 40px;
    border: 1px solid #767677;
}
.item_write_field_details > textarea {
	width: 100%;
	height: 200px;
    border: 1px solid #767677;
}

/*
label {
	font-size: 16px;
	letter-spacing: 1px;
	color: #767677;
	position: absolute;
	pointer-events: none;
	left: 21px;
	top: 14px;
	transition: .2s ease all;
}
*/

.item_write_field>input>placeholder::after {
    content: "*";
    color: #e32b2b;
    margin-left: 4px;
}

.item_write_field_msg {
	margin-bottom: 10px;
	color: red;
}


#item_write_form_buttons_div {
	width: 100%;
	display: inline-flex;
	justify-content: center;
	margin-top: 30px;
	margin-bottom: 50px;
}
#item_write_form_buttons_div > button {
	width: 120px;
	height: 40px;
	border: 1px solid black;
	font-weight: bold;
	margin-left: 5px;
	margin-right: 5px;
}
#submit_button {
	background-color: black;
	color: white;
}
#reset_button {
	background-color: white;
	color: black;
}
#submit_button:hover, 
#reset_button:hover {
	color: #767677;
	border: 1px solid #767677;
	cursor: pointer;
}

</style>
</head>
<body>
<div id="item_write_wrap">
	<div id="item_write_wrap_inner">
		<div id="item_write_label_div">
			New Item
		</div>
		
		<form action="">
			<div class="item_write_field">
				<input type="text" name="item_code" placeholder="상품번호">
				<div class="item_write_field_msg" id="item_code_msg">code message</div>
			</div>
		
			<div class="item_write_field">
				<input type="text" name="item_category" placeholder="카테고리">
				<div class="item_write_field_msg" id="item_category_msg">category message</div>
			</div>
		
			<div class="item_write_field">
				<input type="text" name="item_name" placeholder="이름">
				<div class="item_write_field_msg" id="item_name_msg">name message</div>
			</div>
		
			<div class="item_write_field">
				<input type="text" name="item_color" placeholder="색상">
				<div class="item_write_field_msg" id="item_color_msg">color message</div>
			</div>
		
			<div class="item_write_field">
				<input type="text" name="item_size" placeholder="사이즈">
				<div class="item_write_field_msg" id="item_size_msg">size message</div>
			</div>
		
			<div class="item_write_field">
				<input type="text" name="item_price" placeholder="가격">
				<div class="item_write_field_msg" id="item_price_msg">price message</div>
			</div>
		
			<div class="item_write_field_details">
				<textarea name="item_details" placeholder="설명"></textarea>
				<div class="item_write_field_msg" id="item_details_msg">details message</div>
			</div>
			<div id="item_write_form_buttons_div">
				<button type="submit" id="submit_button">상품 등록</button>
				<button type="reset" id="reset_button">등록 취소</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>