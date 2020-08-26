<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DBControl.RentcarDAO" %>
<%@ page import = "DBControl.CarReserveBean" %>
<%@ page import = "DBControl.CarViewBean" %>
<%@ page import = "java.util.Vector" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약확인하기</title>
</head>
<style>
a { text-decoration:none;}

.reserveScreen{
font-size:20px;
font-weight:bold;

}
.categoryCar{

}
.categoryCar td{
font-size:15px;
align:center;
border-bottom:1px solid lightgray;
}

.align tr td{
text-align:center;
}
</style>
<body>
<%
	String id = (String)session.getAttribute("id");

	if(id == null){
%>
	<script>
		alert("로그인을 먼저 해주세요.");
		location.href='RentCarMain.jsp?center=./Car_MEMBER/MemberLogin.jsp';	
	</script>
<%
	}
	
	RentcarDAO rdao = new RentcarDAO();
	Vector<CarViewBean> v = rdao.getAllReserve(id);
%>
	<table width="1000" class="align">
		<tr height="100">
			<td align="center" colspan="11" class="reserveScreen">차량 예약 화면</td>
		</tr>
		<tr class="categoryCar" height="40">
			<td >이미지</td>
			<td >이름</td>
			<td >대여일</td>
			<td >대여기간</td>
			<td >금액</td>
			<td >수량</td>
			<td >보험</td>
			<td >wifi</td>
			<td >베이비시트</td>
			<td >네비게이션</td>
			<td >삭제</td>
		</tr>
	<%
		for(int i=0; i < v.size(); i++){
			CarViewBean bean = v.get(i);
	%>		
		<tr height="70" class="categoryCar">
			<td ><img alt="" src="images/<%=bean.getImg() %>" width="120" height="70"></td> 
			<td ><%=bean.getName() %></td>
			<td ><%=bean.getRday() %></td>
			<td ><%=bean.getDday() %></td>
			<td ><%=bean.getPrice() %></td>
			<td ><%=bean.getQty() %></td>
			<td ><%=bean.getUsein() %></td>
			<td ><%=bean.getUsewifi() %></td>
			<td ><%=bean.getUseseat() %></td>
			<td ><%=bean.getUsenavi() %></td>
			<td >
				<button onclick="location.href='RentCarMain.jsp?center=./Car_ReserveCheck/CarResrveDel.jsp?id=<%=id %>&rday=<%=bean.getRday()%>'">삭제</button>
			</td>
		</tr>
	<%		
		}	
	%>	
	





	</table>


</body>
</html>