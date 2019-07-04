<%@page import="product.ProductDTO"%>
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

<jsp:useBean id="dto" class = "product.ProductDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%
	ProductDAO dao = new ProductDAO();
	String id = request.getParameter("hid");
	
%>
<center>
<form action="update2.jsp">
<input type = "hidden" name = "id" id = "id" value = "<%=id%>"> <br>
상품설명 : <input type = "text" placeholder="상품설명" name = "content" id = "content"> <br>
가격 : <input type = "text" placeholder="가격" name = "price" id = "price"> <br>
<input type= "submit" value="수정하기">
</form>
</center>
</body>
</html>