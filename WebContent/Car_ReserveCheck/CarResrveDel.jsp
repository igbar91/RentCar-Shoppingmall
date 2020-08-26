<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DBControl.RentcarDAO" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 예약 삭제 페이지</title>
</head>
<body>
<%
	String id = request.getParameter("id");
	String rday = request.getParameter("rday");
	
	RentcarDAO rdao = new RentcarDAO();
	
	rdao.carRemoveReserve(id, rday);
	%>
	
	<script>
		alert('삭제되었습니다.');
		location.href='RentCarMain.jsp';	
	</script>
</body>
</html>