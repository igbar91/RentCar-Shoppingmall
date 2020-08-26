<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "BoardControl.BoardDAO" %>
	<%@page import = "BoardControl.BoardBean" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	int num=Integer.parseInt(request.getParameter("num"));
%>

<script>
if (confirm("정말로 삭제하시겠습니까?") == true) {
    //가입
} else {
    //거절
    history.go(-1);
}
</script>

<%
BoardDAO bdao = new BoardDAO();
bdao.deleteBoard(num);   
response.sendRedirect("../RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp");

%>

</body>
</html>