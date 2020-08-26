<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link type="text/css" rel="stylesheet" href="./css/BoardMain.css"/>
<body>
<%
String id = (String)session.getAttribute("id");
%>
	<aside>
	<div class="sideBar">
	<ul class="sideBarText">
	<li><a href="#"> 공지사항</a></li>
	<li><a href="#"> 문의글</a></li>
	<li><a href="#"> 자료실</a></li>
	<li><a href="#"> 칭찬게시판</a></li>
	<li><a href="#" ><strong class="sideBarTextStrong">자유게시판</strong></a></li>
	<li><a href="#"> 업무개선</a></li>
	<li><a href="#"> 소식</a></li>
	
	</ul>
	</div>
	</aside>
	
	<section id="centerBar">

	<%
	String list = request.getParameter("list");
	if(list == null){
		list = "BoardList.jsp";
	}
	%>
	
	<%
	if(id.equals("origin")){

	%>
		<jsp:include page="Administrator.jsp"/>
		<%	
	}else{
		%>
		<jsp:include page="<%=list %>"/>
		<%
	}
		%>
	</section>

</body>
</html>