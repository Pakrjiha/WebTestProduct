<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert</title>
<script type="text/javascript" src = "check.js"></script>
<link rel="stylesheet" type="text/css" href="AllStyle.css">
</head>
<body>

<h1 align = "center">상품 정보를 입력하세요</h1>

<div align = "center">
	<form action="insert2.jsp" id = "insertForm" name = "insertForm" method = "post">
		상품명 : <input type = "text" placeholder="상품명" name = "title" id = "title">
		<button type= "button" onclick="return check();">조회</button><br>
		상품설명 : <input type = "text" placeholder="상품설명" name = "content" id = "content"> <br>
		가격 : <input type = "text" placeholder="가격" name = "price" id = "price"><br>
		<input type = "submit" value = "상품 입력">
	</form>
	
</div>

</body>
</html>