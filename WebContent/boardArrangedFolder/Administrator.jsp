<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
          <%@ page import = "BoardControl.BoardDAO" %>
    <%@ page import = "BoardControl.BoardBean" %>
       <%@ page import = "java.util.*" %>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지 </title>
</head>
<link type="text/css" rel="stylesheet" href="./css/BoardList.css"/>
<style>

 #admin {
 font-size:30px; padding-top:60px;
}
</style>
<body>

                     <h1 id="admin">관리자 페이지</h1>
	<!-- 게시글 보기위하여 카운터링을 설정하기 위한 변수 선언 -->
<%
	int pageSize=10; //화면에 보여질 게시글의 숫자 지정
	//현재 카운터를 클릭한 번호값으로 일어옵니다.
	String pageNum = request.getParameter("pageNum");
	
	if(pageNum == null){
		pageNum = "1";
	}

	int count = 0; //전체 글의 갯수를 저장하는 변수
	int number = 0;//페이지 넘버링 변수

	//현재 보고자하는 페이지 숫자를 저장합니다.
	int currentPage = Integer.parseInt(pageNum);
	
	BoardDAO bdao = new BoardDAO();
	//전체 게시글의 내용을 jsp쪽으로 가져옵니다. 전체 게시글의 갯수를 읽어드립니다. 
	count = bdao.getAllcount();
	
	//현재 페이지에 보열줄 시작 번호를 설정  = 데이터 베이스에서 불러올 시작번호
	int startRow = (currentPage -1)*pageSize + 1; 
	int endRow = currentPage * pageSize;
	
	//최신글 5개를 기준으로 게시글을 반환 받아주는 메소드 호출
	Vector<BoardBean> vec = bdao.getAllBoard(startRow, endRow);
	
	//테이블에 표시할 번호를 지정
	number = count - (currentPage - 1) * pageSize;
%>

	<section class="sec">
	<table width="800">
		<tr height="30" class="tableCategoryColor" align="center">
		<td width="120">번호</td>
		<td width="150">제목</td>
		<td  width="100">작성자</td>
		<td width="100">작성일자</td>
		<td  width="100">조회수</td>

		</tr>
<%
	for(int i=0; i<vec.size(); i++){
		BoardBean bean = vec.get(i);//벡터에 저장된 빈클래스를 하나씩 추출
%>
	<tr height="30" align="center" class="tableInfo" >
		<td  width="50"><%=number-- %></td>
		
		
		<td  width="300">                                    
		<a href="RentCarMain.jsp?center=./boardArrangedFolder/BoardInfo.jsp?num=<%=bean.getNum()%>">
		<% 				//들여쓰기
			if(bean.getRe_step() > 1){
				for(int j=0; j < (bean.getRe_step()-1)*6; j++){
		%>
		<%		}	
			}
		%>	
				<%=bean.getSubject() %></a></td>
			
			
	
		<td width="100"><%=bean.getWriter() %></td>
		<td width="100"><%=bean.getReg_date() %></td>
		<td width="100"><%=bean.getReadCount() %></td>
	</tr>
<%
	}
%>			


<tr height="30">
	<td colspan="5" class="sending" align="right">	
	    <input type="button" value="처음화면" onclick="location.href='RentCarMain.jsp'"> 
		<input type="button" value="글쓰기" onclick="location.href='RentCarMain.jsp?center=./boardArrangedFolder/BoardWriteForm.jsp'">
		</td>
	</tr>
</table>


	<!-- 페이지 카운터링 소스 작성 부분 -->

<%
	if(count > 0){
		//카운터링 숫자를 얼마까지 보여줄건지를 결정하는 부분.
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		
		//시작 페이지 숫자 설정
		int startPage = 1;
		
		if(currentPage %10 != 0){
			startPage  = (int)(currentPage / 10)*10 + 1;
		}else{
			startPage  = ((int)(currentPage / 10) - 1);
		}
		
	int pageBlock = 10;
	//화면에 보여질 페이지의 마지막 숫자
	int endPage = startPage + pageBlock - 1;
		
	if(endPage > pageCount)
		endPage = pageCount;
	
	if(startPage > 5){
%>														<!-- 폴더 경로 꼭 넣어줘야됨 -->
	<a class="colorChange"  href="RentCarMain.jsp?center=./boardArrangedFolder/BoardList.jsp?pageNum=<%=startPage - 10 %>"> [이전]</a>
<%
	}
	//페이징 처리
	for(int i = startPage; i <= endPage; i++){
%>
<!--  세션메인 페이지의 중간 센터값만 바꿔주기 위해서 하이퍼링크로 sesionmain.jsp?center를 달아준다. -->
	<a class="colorChange" href="RentCarMain.jsp?center=./boardArrangedFolder/BoardList.jsp?pageNum=<%=i %>"> [<%=i %>]</a>
<% 
	}
	if(endPage < pageCount){
%>
<!--  세션메인 페이지의 중간 센터값만 바꿔주기 위해서 하이퍼링크로 sesionmain.jsp?center를 달아준다. -->
	<a class="colorChange" href="RentCarMain.jsp?center=./boardArrangedFolder/BoardList.jsp?pageNum=<%=startPage + 10 %>"> [다음]</a>
<% 
	}
}
%>
</section>
</body>
</html>