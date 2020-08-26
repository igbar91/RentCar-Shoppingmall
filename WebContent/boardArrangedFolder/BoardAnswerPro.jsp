<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "BoardControl.BoardDAO" %>
    <%@ page import = "BoardControl.BoardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 답변하기 액션</title>
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
	bdao.reWriteBoard(boardbean);

	response.sendRedirect("../RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp");
%>
</body>
</html>