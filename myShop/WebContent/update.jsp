<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
   </head>
   <body>
      <jsp:useBean id="dto" class ="product.ProductDTO"></jsp:useBean>
      <jsp:setProperty property="*" name="dto"/>
      <jsp:useBean id="dao" class ="product.ProductDAO"></jsp:useBean>
         <%
            String id = request.getParameter("id");
            String title = request.getParameter("title");
            String content = request.getParameter("content");
            String p = request.getParameter("price");
            int price = Integer.parseInt(p);
    
            
            dto = dao.update(dto);
            
            dto.setId(id);
            dto.setTitle(title);
            dto.setContent(content);
            dto.setPrice(price);
           
         %>
          <h2>상품 수정 성공!</h2>
        
         <button type="button" onclick= " location.href = 'main.jsp'" id = "button">메인으로</button>
   </body>
</html>