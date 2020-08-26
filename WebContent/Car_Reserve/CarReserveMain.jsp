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
.newCar{
font-size:20px;
font-weight:bold;
}
#colorchange{
color:black;
padding-top:10px;
}
a { text-decoration:none;}
.space{padding-top:15px;}

#colorchange strong{
font-size:15px;
}

.allSearch{
margin-bottom:50px;
}
</style>
<body align="center">
<!-- 데이터베이스에 연결하여 최신순 자동차 3대만 데이터를 가져옵니다. -->
	<%
		RentcarDAO rdao = new RentcarDAO();
		//벡터를 이용하여 자동차를저장합니다.
			Vector<CarListBean> v = rdao.getSelectCar();
	%>

	<table width="1000">
		<tr height="100">
			<td class="newCar" align="center"	colspan="3">신형 자동차</td>
		</tr>	
	
		<tr height="240">
			<%
				for(int i = 0; i < v.size(); i++) {
				CarListBean bean = v.get(i);
			%>
			<!--  href 는 link이기 때문에 상대경로가 아님. -->
			<td width="240" align="center" id="colorchange">
			<a  href="RentCarMain.jsp?center=./Car_Reserve/CarReserveInfo.jsp?no=<%=bean.getNo()%>"> 
			<img alt="" src="./images/<%=bean.getImg()%>" width="230" height="200">
			</a><p class="space">
			
			<!-- 차량명 :  -->
			<strong><%=bean.getName()%></strong>

			<%
				}
			%>
			</td></tr>
	</table>
		
	<br><br>
	<p>
	<font size="5" color="black"><b>차량 검색하기</b></font><br><br>
	<form action="RentCarMain.jsp?center=./Car_Reserve/CarCategoryList.jsp" method="post">
		<font size="3" color="blue" align="center"><b>차량 검색하기</b></font>&nbsp;&nbsp;
		<select name="category">
			<option value="1">TESLA</option>
			<option value="2">BENZ</option>
			<option value="3">FERRARI</option>
		</select>&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="submit" value="검색">&nbsp;&nbsp;		
	</form>
	<br>
	<button onclick="location.href='RentCarMain.jsp?center=./Car_Reserve/CarAllList.jsp'"
	class="allSearch">전체검색</button>	

</body>
</html>