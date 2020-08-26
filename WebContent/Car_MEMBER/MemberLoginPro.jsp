<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "MemberControl.MemberDAO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	String id =	request.getParameter("id");
	String pass =  request.getParameter("pass");

	MemberDAO rdao = new MemberDAO();
	
	int result = rdao.getMember(id, pass);
	
	if(result == 0){
	%>
		<script>
			alert("회원 아이디 또는 패스워드가 틀립니다.");
			location.href='../RentCarMain.jsp?center=./Car_MEMBER/MemberLogin.jsp';
		</script>
	<% 
	}else{
		//로그인이 성공했다면...
		
		session.setAttribute("id", id);
		response.sendRedirect("../RentCarMain.jsp"); //상대경로 //지금 있는 위치에서부터
													// member folder 안에서 나가야 rentcarMain이 있으니까
													//     ../ 으로 나가줘야됨 필수
		
	}
	
%>


</body>
</html>