<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>main page!!!</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$("#insert").click(function() {
					location.href = 'insert.html';
				});
				$("#select").click(function() {
					location.href = 'select.html';
				});
			});
		
		</script>
	</head>
	<body>
		<h1>환영합니다</h1>
		<button type="submit" id="insert">상품 등록</button>
		<button type="submit" id="select">상품 검색</button>
	</body>
</html>