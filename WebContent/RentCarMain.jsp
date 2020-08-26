<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차</title>
</head><%--html에는 defaul값으로 margin이 설정돼 있기때문에 설정화면의 끝부분이 떨어져서 나온다. 
	
					그래서 배경화면을 채우고싶다면 margin값을 0으로 세팅해줘야한다. --%>
<style>
body{
	margin:0;
	} 



@font-face{


font-family:"bold";
src:url("./font/H2GPRM.TTF") format("truetype");
font-style:normal;
font-weight:normal;
}

body{
	font-family:bold;
	font-size:30px;
}
</style>
<body>
<%
	String center = request.getParameter("center");
	//처음 실행시에 cneter가 넘어오지 않으면 
	if(center == null){  //null 처리해 주고
		center = "Center.jsp"; //디폴트로 center값을 부여해 줍니다.
	}
%>
	<table>
	

	
		<!-- Top.jsp -->
		<tr align="center" height="150"><!--  height 150 -->
			<td align="center" >
			 <jsp:include page="Top.jsp"/>
			</td>
		</tr>
		<!-- Center.jsp -->
		<tr align="center"  height="470"> <!--  height 470 -->
			<td align="center">
			<jsp:include page="<%=center %>"/>
			</td>
		</tr>
		<!-- Bottom.jsp -->
		<tr align="center" height="100"> <!--  height 100 -->
			<td align="center">
			<jsp:include page="Bottom.jsp"/>
			</td>
		</tr>		
		
		
	</table>	
</body>
</html>