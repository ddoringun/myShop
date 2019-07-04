<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<jsp:useBean id="dto" class="product.ProductDTO"></jsp:useBean>
		<jsp:setProperty property="*" name="dto"/>
		<jsp:useBean id="dao" class="product.ProductDAO"></jsp:useBean>
			<%
				String id = request.getParameter("id");
				dto = dao.delete(id);
				response.sendRedirect("selectAll.jsp");
			%>
			
	</body>
</html>