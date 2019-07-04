<%@page import="product.ProductDTO"%>
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
		<body>
      <jsp:useBean id="dto" class ="product.ProductDTO"></jsp:useBean>
      <jsp:setProperty property="*" name="dto"/>
      <jsp:useBean id="dao" class ="product.ProductDAO"></jsp:useBean>
        <%
			String id = request.getParameter("id");
        	dto = dao.select(id);
		%>
			ID :<%= dto.getId() %>
			TITLE : <%= dto.getTitle() %>
			CONTENT : <%= dto.getContent() %>
			PRICE :<%= dto.getPrice() %>
		<form action="update.html">
			<button type="submit">수정하기</button>
		</form>	
	</body>
</html>