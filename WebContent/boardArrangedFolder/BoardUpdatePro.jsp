<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import = "BoardControl.BoardDAO" %>
	<%@page import = "BoardControl.BoardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 수정하기 액션</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

		<jsp:useBean id="boardbean" class="BoardControl.BoardBean">
			<jsp:setProperty name="boardbean" property="*"/>
		</jsp:useBean>

<%
		BoardDAO bdao = new BoardDAO();
		String pass = bdao.getPass(boardbean.getNum());
		
		if(pass.equals(boardbean.getPassword())){
			bdao.updateBoard(boardbean);

		response.sendRedirect("../RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp");
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