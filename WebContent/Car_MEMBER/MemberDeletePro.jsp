<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="MemberControl.MemberBean" %>
    <%@page import="MemberControl.MemberDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 액션</title>
</head>
<body>
<%

String id = request.getParameter("id");
String pass1 = request.getParameter("pass");

MemberDAO mdao = new MemberDAO();
String pass = mdao.getPass(id);
	
	//삭제시에 패스워드와 기존패스워드값을 비교하여 같은지를 확인 

	if(pass1.equals(pass)){

		mdao.deleteBoard(id);
		session.setAttribute("id", null);		
		
		response.sendRedirect("../RentCarMain.jsp");   
	}else{
%>
	<script>
		alert("패스워드가 잘못되었습니다. 확인 바랍니다.");
		history.go(-1);
	</script>
<%
	}
%>	

</body>

</html>