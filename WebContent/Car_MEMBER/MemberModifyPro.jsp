<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "MemberControl.MemberDAO" %>
<%@ page import = "MemberControl.MemberBean" %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정 액션페이지</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="MemberBean" class="MemberControl.MemberBean">
			<jsp:setProperty name="MemberBean" property="*"/>
		</jsp:useBean>

<% 
		MemberDAO mdao = new MemberDAO();
		String pass = mdao.getPass(MemberBean.getId());
%>
	

<%		
		if(pass.equals(MemberBean.getPass())){
			mdao.MemberModify(MemberBean);
			
		response.sendRedirect("../RentCarMain.jsp");
		
		}else{
%>			

			<script>
		alert("비밀번호가 맞지않습니다.");
		history.go(-1);
		</script>
				
		
<%		
		}
	
%>




</body>
</html>