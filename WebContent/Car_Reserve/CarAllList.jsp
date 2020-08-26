<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Vector"%>
<%@ page import = "DBControl.RentcarDAO"%>
<%@ page import = "DBControl.CarListBean"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table width="1000">
	<% 	
		RentcarDAO rdao = new RentcarDAO();
		Vector<CarListBean> v = rdao.getAllCar();
	
		//tr 3개를 보여주고 다시 tr을 실행할 수 있도록 선하는 변수 선언
		int j=0;
		for(int i=0; i<v.size(); i++){
			
			//벡터에 저장할 수 있는 빈 클래스를 추출합니다.
			CarListBean bean = v.get(i);
			
			if(j%3==0){
	%>
		<tr height="230">
				
	<%  } 	%>
			<td width="330" align="center">
			<a href="RentCarMain.jsp?center=./Car_Reserve/CarReserveInfo.jsp?no=<%=bean.getNo()%>">
			<img alt="" src="images/<%=bean.getImg() %>" width="250" height="100">
			</a><p>
			<font size="2" color="gray"><b>차량명 : <%=bean.getName() %></b></font>
			</td>
	<%
		j=j+1;//하나의 행에 3개의 차량정보를 보여주려는 증가값.
		}
	%>			
</table>
</body>
</html>