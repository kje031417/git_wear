<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NAW(관리자) - 공지등록</title>
<style type="text/css">
#notice_write_form {
	width: 100%;
	height: 600px;
	display: inline-flex;
	justify-content: center;
	margin-bottom: 20px;
}
#notice_write_form_inner {
	width: 50%;
	height: 599px;
	border-collapse: collapse;
}
#notice_write_label_div {
	width: 100%;
	height: 40px;
	font-size: 50px;
	display: inline-table;
	margin-top: 25px;
	margin-bottom: 25px;
}
.notice_write_field > input[type="text"] {
	width: 100%;
	height: 40px;
    border: 1px solid #767677;
    margin-bottom: 30px;
}
.notice_write_field > textarea {
	width: 100%;
	height: 100px;
    border: 1px solid #767677;
    margin-bottom: 30px;
}
#notice_write_form_buttons_div {
	width: 100%;
	display: inline-flex;
	justify-content: center;
}

#notice_content {
	height: 300px;
}

#notice_write_form_buttons_div > button {
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
<div id="notice_write_form">
	<div id="notice_write_form_inner">
		<div id="notice_write_label_div">
			New Notice
		</div>
	
		<div class="notice_write_field" id="notice_title_div">
			<input type="text" id="notice_title" name="notice_title" placeholder="제목">
		</div>
		<div class="notice_write_field" id="content_div">
			<textarea id="notice_content" name="notice_content" placeholder="설명"></textarea>
		</div>
		<div id="notice_write_form_buttons_div">
			<button type="submit" id="submit_button">공지 등록</button>
			<button type="reset" id="reset_button">등록 취소</button>
		</div>
	</div>
</div>
</body>
</html>