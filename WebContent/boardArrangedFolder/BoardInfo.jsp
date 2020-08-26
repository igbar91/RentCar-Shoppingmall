
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@page import = "BoardControl.BoardDAO" %>
	<%@page import = "BoardControl.BoardBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 보기 페이지</title>
</head>
<link type="text/css" rel="stylesheet" href="./css/BoardList.css"/>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	BoardDAO bdao = new BoardDAO();
	BoardBean bean = bdao.getOneBoard(num);

%>
<%
	String id = (String)session.getAttribute("id");

	if(id == null){
%>
	<script>
		alert("로그인 후 게시판 사용이 가능합니다. ");	
		location.href='RentCarMain.jsp';
	</script>
<%
	}
%>	
	
	

	<section class="sec">
	<h2 align="center">게시판 보기 페이지</h2>
	<table border="1" width="600" align="center">
		
		<tr height="50">
			<td align="center" width="120">글번호</td>
			<td align="center" width="180"><%=bean.getNum() %>
			<td align="center" width="120">조회수</td>
			<td align="center" width="180"><%=bean.getReadCount() %>
		</td>
		</tr>
		
		<tr height="50">
			<td align="center" width="120">작성자</td>
			<td align="center" width="180"><%=bean.getWriter() %>
			<td align="center" width="120">작성일자</td>
			<td align="center" width="180"><%=bean.getReg_date() %>
		</td>
		</tr>
		
		<tr height="50">
			<td align="center" width="120">이메일</td>
			<td align="center" width="180"><%=bean.getEmail() %>
			<td align="center" width="120">제목</td>
			<td align="center" width="180"><%=bean.getSubject() %>
		</td>
		</tr>
		
		<tr>
			<td align="center" width="120" colspan="4">내용</td></tr>
		<tr>	
			<td width="180" height="150" colspan="4"><%=bean.getContent() %>
		</td>
		</tr>
		
		<tr height="50" >
		<td align="center"  colspan="4">
		
		<input type="button" value="답글쓰기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp?list=BoardAnswerForm.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level=<%=bean.getRe_level()%>'">
		<input type="button" value="수정하기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp?list=BoardUpdateForm.jsp?num=<%=bean.getNum() %>'">
		
		<%--2020-08-24수정  <input type="button" value="답글쓰기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardAnswerForm.jsp?num=<%=bean.getNum()%>&ref=<%=bean.getRef()%>&re_step=<%=bean.getRe_step()%>&re_level=<%=bean.getRe_level()%>'">
		<input type="button" value="수정하기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardUpdateForm.jsp?num=<%=bean.getNum() %>'">--%>
		<% 
		if(id.equals("origin")){
		%>	<input type="button" value=" 관리자 권한으로 삭제하기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/AdminDelete.jsp?num=<%=bean.getNum() %>'">	
		<%--2020-08-24수정<input type="button" value=" 관리자 권한으로 삭제하기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/AdminDelete.jsp?num=<%=bean.getNum() %>'">	--%>
	<% 
	}else {
		%>
		<input type="button" value="삭제하기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp?list=BoardDeleteForm.jsp?num=<%=bean.getNum() %>'">
		<%-- 
		2020-08-24수정<input type="button" value="삭제하기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardDeleteForm.jsp?num=<%=bean.getNum() %>'">--%>
		<%
	}
		%>
		<input type="button" value="목록보기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp?list=BoardList.jsp'">
		<!--
		2020-08-24수정
		<input type="button" value="목록보기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardList.jsp'">  -->
			</td>
			</tr>
			
	
	</table>
</section>


</body>
</html>