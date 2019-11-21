<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jsp1 - 2019. 11. 21. 오후 2:08:12</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<style>
</style>
</head>
<body>
<!-- ex03_02.jsp -->

<%
  // 리다이렉트
  /* 
  String location = "ex03_03.jsp";
  location += "?msg=" + request.getParameter("msg");    // 이렇게 중간에 추가해줘야.. 
  response.sendRedirect(location);
   */
   
  // 포워딩
  String path = "ex03_03.jsp";
   RequestDispatcher dispatcher =
  request.getRequestDispatcher(path);
   dispatcher.forward(request, response);
  
%>



<script>
$(function (){});
</script>
</body>
</html>
