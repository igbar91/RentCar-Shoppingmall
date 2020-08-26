<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import = "BoardControl.BoardDAO" %>
    <%@ page import = "BoardControl.BoardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 답변하기 페이지</title>
</head>
<link type="text/css" rel="stylesheet" href="./css/BoardList.css"/>
<body>

	<%
		//게시글 읽기에서 답변글쓰기를 누르면 넘겨주는 데이터를 받아옵니다.
		int num = Integer.parseInt(request.getParameter("num"));
		int ref = Integer.parseInt(request.getParameter("ref"));
		int re_step = Integer.parseInt(request.getParameter("re_step"));
		int re_level = Integer.parseInt(request.getParameter("re_level"));
	%>
	
	<form action="./boardArrangedFolder/BoardAnswerPro.jsp" method="post">
		
	<section class="sec">
	<h2 align="center">답변 글 쓰기 페이지</h2>
	<table align="center" width="600" border="1"  bordercolor="gray">
		<tr height="50">
		<td align="center" width="150">작성자</td>
		<td align="center" width="450">
		<input type="text" name="writer" size="60"></td>
		</tr>
		<tr height="50">
		<td align="center" width="150">제목</td>
		<td align="center" width="450">
		<input type="text" name="subject" value="[답변]" size="60"></td>
		</tr>
		<tr height="50">
		<td align="center" width="150">이메일</td>
		<td align="center" width="450">
		<input type="email" name="email" size="60"></td>
		</tr>
		<tr height="50">
		<td align="center" width="150">비밀번호</td>
		<td align="center" width="450">
		<input type="password" name="password" size="60"></td>
		</tr>
		<tr height="50">
		<td align="center" width="150">내용</td>
		<td align="center" width="450">
		<textarea rows="10" cols="60" name="content"></textarea>
		</tr>
		
		<!-- form에서 사용자로부터 입력받지 않고 데이터를 넘겨줍니다. -->
		<tr height="50">
		<td align="center" colspan="2">
		<input type="hidden" name="ref" value="<%=ref %>">
		<input type="hidden" name="re_step" value="<%=re_step %>">
		<input type="hidden" name="re_level" value="<%=re_level %>">
		<input type="submit" value="답변글쓰기">&nbsp;&nbsp;
		<input type="reset" value="답변취소">&nbsp;&nbsp;
		<input type="button" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp'" value="글목록보기">
		</td>
		</tr>
		
				
	</table>
	</section>
	</form>	
</body>
</html>