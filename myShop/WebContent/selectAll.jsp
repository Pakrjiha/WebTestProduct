<%@page import="product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main Page</title>
<link rel="stylesheet" type="text/css" href="AllStyle.css">
</head>
<body>

<jsp:useBean id="dto" class = "product.ProductDTO"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>


<%
	ProductDAO dao = new ProductDAO();
	ArrayList<ProductDTO> list = dao.selectAll();
	
	ProductDTO dto2 = new ProductDTO(); %>
	
	<h1 align = "center">상품 목록</h1>
	<a href = "insert.jsp"><button>상품 입력</button></a>
	<br><br>
	<%
	for(int i = 0; i < list.size(); i++){
		dto2 = list.get(i);
	%>	

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
		<tr>
			<td colspan="2"><a href = "select.jsp?id=<%=dto2.getId()%>"><button>상품 보기</button></a></td>
		</tr>
	</table>
	<br>
</div>

	<%
		}
	%>
	
	<%if(list.size() == 0){ %>
		
		<h1>보여줄 상품이 없습니다.</h1>
		<a href = "insert.jsp"><button>상품 입력</button></a>
		
		<%
			}	
		%>
	

</body>
</html>