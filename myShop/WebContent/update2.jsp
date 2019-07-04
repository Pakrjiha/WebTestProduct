<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<%
	int id = Integer.parseInt(request.getParameter("id"));
	String content = request.getParameter("content");
	int price = Integer.parseInt(request.getParameter("price"));
	
	ProductDAO dao = new ProductDAO();
	dao.update(id, content, price);
	
	response.sendRedirect("selectAll.jsp");
%>

</body>
</html>