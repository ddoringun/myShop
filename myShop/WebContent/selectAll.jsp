<%@page import="product.ProductDTO"%>
<%@page import="java.util.ArrayList"%>
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
            ArrayList list = new ArrayList();
            list = dao.selectAll();
         %>
               <h2>전체 상품 검색 성공!</h2>
               <table id = "table">
                  <tr>
                     <td class = "td">상품 아이디</td>
                     <td class = "td">상품 이름</td>
                     <td class = "td">상품 설명</td>
                     <td class = "td">상품 가격</td>
                  </tr>
            <%
               for(int i = 0; i < list.size(); i++){
                  ProductDTO dto2 = (ProductDTO)list.get(i);
                  
            %>
                  <tr>
                     <td class = "td"><%= dto2.getId() %></td>
                     <td class = "td"><%= dto2.getTitle() %></td>
                     <td class = "td"><%= dto2.getContent() %></td>
                     <td class = "td"><%= dto2.getPrice() %></td>
                  </tr>
            <%
               }
            %>
            </table>
         <button type="button" onclick = "location.href = 'main.jsp'" id = "button">메인으로</button>
         <button type="button" onclick = "location.href = 'delete.html'" id = "button">삭제</button>
   </body>
	</body>
</html>