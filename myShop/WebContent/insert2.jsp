<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="AllStyle.css">
</head>
<body>

<jsp:useBean id="dto" class="product.ProductDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

	<%
	ProductDAO dao = new ProductDAO();
	dao.insert(dto);
	%>

	<h1 align = "center">상품 정보가 입력되었습니다.</h1>
	<center><a href = "selectAll.jsp"><button>전체상품 보러가기</button></a></center>

</body>
</html>