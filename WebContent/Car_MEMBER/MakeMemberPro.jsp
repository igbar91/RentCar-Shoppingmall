<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ page import="java.sql.*" %>
    <%@ page import = "MemberControl.MemberDAO" %>
   <%@ page import = "MemberControl.MemberBean" %>
   <%@ page import = "java.util.Date" %>   
<%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h2 align="center">회원정보 보기 </h2>
<%
	request.setCharacterEncoding("UTF-8");

%>
 
  <!-- 저장 property =* < 다 출력 -->
 	<jsp:useBean id="mbean" class="MemberControl.MemberBean">
 		<jsp:setProperty name="mbean" property="*"/>
 
 	</jsp:useBean>
<%


//데이터베이스에 클래스 객체를 생성. MemberDAO > java class 이름. 
 MemberDAO mdao = new MemberDAO();
 mdao.insertMember(mbean);
 
		
		//회원을 마쳤으면 회원정보 보기 화면으로 이동
		response.sendRedirect("../RentCarMain.jsp");
 
 
 %>
</body>
</html>