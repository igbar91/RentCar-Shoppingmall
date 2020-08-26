<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>차렌트 로그아웃</title>
</head>
<body>
<%
	String logout = request.getParameter("logout");

	if(logout !=null){
	
		session.invalidate();
		
		%>
	<script>
	alert('로그아웃 되었습니다.');
	location.href="RentCarMain.jsp";
	
	
	</script>
<!--response.sendRedirect("../RentCarMain.jsp");-->
			
	<% 
	}
	%>	
	
</body>
</html>