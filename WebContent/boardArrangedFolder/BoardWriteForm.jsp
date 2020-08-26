<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@  page import = "BoardControl.BoardDAO" %>
<%@  page import = "BoardControl.BoardBean" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기 페이지</title>
</head>
<link type="text/css" rel="stylesheet" href="./css/BoardList.css"/>
<body>



	
<form action="./boardArrangedFolder/BoardWritePro.jsp" method="post">

	<section class="sec">
	<h2 align="center">게시판 글 쓰기</h2>
	<table border="1">
	
		<tr height="40">
			<td align="center" width="150">제목</td>
			<td width="450">
			<input type="text" name="subject" size="55"></td>
		</tr>
		
		<tr height="40">
			<td align="center" width="150">작성자</td>
			<td width="450">
			<input type="text" name="writer" size="55"></td>
		</tr>
		
		<tr height="40">
			<td align="center" width="150">이메일</td>
			<td width="450">
			<input type="email" name="email" size="55"></td>
		</tr>
		<tr height="40">
			<td align="center" width="150">비밀번호</td>
			<td width="450">
			<input type="password" name="password" size="55"></td>
		</tr>
		<tr height="40">
			<td align="center" width="150">글내용</td>
			<td width="450">
			<textarea rows="10" cols="60" name="content"></textarea></td>
		</tr>
		<tr height="40">
			<td align="center" colspan="2">
			<input type="submit" value="글쓰기">&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="재작성">&nbsp;&nbsp;&nbsp;&nbsp;
			
			<button onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp'">글 목록 보기</button>
			</td>
		</tr>
	
	</table>
	</section>
	</form>
	

	
</body>
</html>