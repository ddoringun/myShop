$(function() {
	$("#submit").click(function() {
		var d = jQuery("#form").serialize();
		if ($("#title").val() == "") {
			alert("상품제목을 입력하세요!");
			$("#title").focus();
			return false;
		} else if ($("#id").val() == "") {
			alert("상품ID를 입력하세요.");
			$("#id").focus();
			return false;
		} else if ($("#price").val() == "") {
			alert("상품 가격을 입력하세요.");
			$("#price").focus();
			return false;
		} else if ($("#content").val() == "") {
			alert("상품 설명을 적어주세요.");
			$("#content").focus();
			return false;
		}
	});

});

	

	