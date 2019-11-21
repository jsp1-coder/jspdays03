<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jsp1 - 2019. 11. 21. 오후 2:05:32</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
</style>
</head>
<body>
<!-- ex03.jsp -->
<!-- response.sendredirect() / forward (포워드) 차이점 -->

메세지 : <input type="text" id="msg" name="msg" value="한글로 메세지를 쓰세요..." />
<br>
<a href="ex03_02.jsp" id="link">ex03_02.jsp</a>



<script>
$(function (){
	$("#link").on("click", function(event) {
		//alert("test");
		// ex03_02.jsp?msg=한글로 메세지... 다 가져오고 싶다면.
		var msg = $("#msg").val() ;
		// console.log ($(this).attr("href"));
		$(this).attr("href", function(i, val){
			// alert(val);
			return val + "?msg=" +msg;
		});
		
		// event.preventDefault();
	})
});
</script>
</body>
</html>
