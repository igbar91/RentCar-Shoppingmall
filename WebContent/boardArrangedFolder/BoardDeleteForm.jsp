<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "BoardControl.BoardDAO" %>
	<%@page import = "BoardControl.BoardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 삭제하기 페이지</title>
</head>
<link type="text/css" rel="stylesheet" href="./css/BoardList.css"/>
<body>
<% 
	int num=Integer.parseInt(request.getParameter("num"));

		BoardDAO bdao = new BoardDAO();
		BoardBean bean = bdao.getOneUpdateBoard(num);
%>

	<h2 align="center">게시글 삭제 페이지</h2>
	<form action="./boardArrangedFolder/BoardDeletePro.jsp" method="post" method="post">
	<section class="sec">
	<table border="1" width="600" bordercolor="black"  align="center">
		
			<tr height="50">
			<td align="center" width="120">작성자</td>
			<td align="center" width="180"><%=bean.getWriter() %>
			<td align="center" width="120">작성일자</td>
			<td align="center" width="180"><%=bean.getReg_date() %>
		</td>
		</tr>
		
		<tr height="50">
			<td align="center" width="120" >제목</td>
			<td colspan="3" align="center">
			<input type="text" name="subject" size="60"  value="<%=bean.getSubject()%>">
			</td>
			</tr>
			
	
		
		<tr height="50">
			<td align="center" width="120">비밀번호</td>
			<td align="center" colspan="3"><input type="password" name="password" size="60" > 
		</td>
		</tr>
			

			<tr height="50">
			<td align="center" width="120" colspan="4">
			<input type="hidden" name="num" value="<%=num%>">
			<input type="submit" value="글삭제하기">&nbsp;&nbsp;
			<input type="button" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp'" value="글 목록 보기">
			</td>
			</tr>
		</table>
		</section>
		</form>
</body>
</html>