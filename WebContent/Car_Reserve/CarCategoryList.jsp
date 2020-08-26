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
<style>
.lookCar{
padding-top:30px;
font-size:30px;
font-weight:bold;
}
.makeSpace{
padding-top:20px;
}

.fontSize{
font-size:15px;
}
</style>
<body>
<table width="1000">
<%
	//카테고리 분류
	int category = Integer.parseInt(request.getParameter("category"));	
	String str = null;
	
	if(category == 1) str = "Tesla";
	else if(category == 2) str = "Benz";
	else if(category == 3) str = "Ferrari";
%>

	<tr height="200">
		<td align="center" colspan="3" class="lookCar"><%=str %> 자동차 보기</td>
	</tr>

	<% //카테고리에 소형, 중형, 대형의 분류에 따라 선택된 자동차 유형이 넘어옵니다.
	
		RentcarDAO rdao = new RentcarDAO();
		Vector<CarListBean> v = rdao.getCategoryCar(category);
	
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
			<img alt="" src="images/<%=bean.getImg() %>" width="300" height="150">
			</a><p class="makeSpace">
			<!-- 차량명 --><strong class="fontSize"><%=bean.getName() %></strong>
			</td>
	<%
		j=j+1;//하나의 행에 3개의 차량정보를 보여주려는 증가값.
		}
	%>			
</table>
</body>
</html>


