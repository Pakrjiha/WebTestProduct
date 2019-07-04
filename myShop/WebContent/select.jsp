<%@page import="product.ProductDTO"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
<link rel="stylesheet" type="text/css" href="AllStyle.css">
</head>
<body>

<jsp:useBean id="dto" class = "product.ProductDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%
	ProductDAO dao = new ProductDAO();
	ProductDTO dto2 = new ProductDTO();

	dto2 = dao.select(dto);
%>
<center>
<h1>상품 정보</h1>
<div>
	<table border = "1">
		<tr>
			<td>상품명</td>
			<td><%= dto2.getTitle() %></td>
		</tr>
		<tr>
			<td>상품내용</td>
			<td><%= dto2.getContent() %></td>
		</tr>
		<tr>
			<td>가격</td>
			<td><%= dto2.getPrice() %></td>
		</tr>
	</table>
	<br>
	<a href = "selectAll.jsp"><button>목록으로</button></a><br>
	<a href = "delete.jsp?id=<%=dto2.getId()%>"><button>삭제하기</button></a>
	<form action="update.jsp">
	<input type = "hidden" value="<%=dto2.getId()%>" name = "hid" id = "hid"> 
	<input type="submit" value ="수정하기">
	</form>
</div>
			</center>
</body>
</html>