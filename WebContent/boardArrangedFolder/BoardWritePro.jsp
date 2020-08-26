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
	request.setCharacterEncoding("UTF-8");
%>
<!-- 게시글로 작성한 데이터를 한꺼번에 읽어드리는 내용
자바빈을 쓰는이유는 가독성+ 효율성 
보통 작업을 할 때 디자이너와 개발자가 협업해서 하는데 jsp를 작성할 때 개발자가 페이지 안에 여러곳에 작업을 하므로
디자이너는 이해도 하지 못하고 헷갈릴 가능성이 농후하기때문.  -->
<%--<%스트립트릿안에있는 문장은 java문법임.  --%>
	<jsp:useBean id="boardbean" class="BoardControl.BoardBean">
		<jsp:setProperty name="boardbean" property="*"/>
	</jsp:useBean>

<%
//데이터베이스 쪽으로 빈 클래스를 넘겨줍니다.
	BoardDAO bdao = new  BoardDAO();
//데이터 저장 메소드를 호출합니다.
	bdao.insertBoard(boardbean);
	//게시글을 저장한후에 전체게시글로 이동
	response.sendRedirect("../RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp");
%>
</body>
</html>