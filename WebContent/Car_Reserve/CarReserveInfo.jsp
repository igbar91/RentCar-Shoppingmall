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
.selectCar{
font-weight:strong;
font-size:25px;
}

.carValue{
font-size:18px;
}
.carValueV{
font-size:18px;
}
.optionSelectFirst{
margin-top:10px;
font-size:15px;
}

.info {
margin-top:30px;
margin-bottom:10px;
}
.info span{
font-size:15px;
}

</style>
<body>
<%
	int no = Integer.parseInt(request.getParameter("no"));	
	RentcarDAO rdao = new RentcarDAO();	
	CarListBean bean = rdao.getOneCar(no);

	int category = bean.getCategory();
	String str = "";
	
	if(category == 1) str = "Tesla";
	else if(category == 2) str = "Benz";
	else if(category == 3) str = "Ferrari";	
%>
	<form action = "RentCarMain.jsp?center=./Car_Reserve/CarOptionSelect.jsp" method="post">
	<table width="1000">
		<tr height="100">
			<td align="center" colspan="3" class="selectCar"><%=bean.getName() %>차량 선택
			</td>
		</tr>
		<tr>
			<td rowspan="6" width="500" align="center">
				<img alt="" src="images/<%=bean.getImg() %>" width="450">
			</td>
			<td class="carValue" width="250" align="center"> 차량이름</td>
			<td class="carValueV" width="250" align="left"> <%=bean.getName() %></td>
		</tr>
		<tr>
			<td class="carValue" width="250" align="center"> 차량수량</td>
			<td class="carValueV" width="250" align="left">
				<select name="qty">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>				
				</select>
			</td>
		</tr>
		<tr>
			<td  class="carValue" width="250" align="center"> 차량분류</td>
			<td class="carValueV" width="250" align="left"> <%=str %></td>
		</tr>
		<tr>
			<td class="carValue" width="250" align="center"> 대여가격</td>
			<td class="carValueV" width="250" align="left"> <%=bean.getPrice() %></td>
		</tr>
		<tr>
			<td class="carValue" width="250" align="center"> 제조회사</td>
			<td class="carValueV" width="250" align="left"> <%=bean.getCompany() %></td>
		</tr>
		<tr>
			<td align="center" colspan="2">			
			<input type="hidden" name="no" value="<%=bean.getNo() %>">
			<input type="hidden" name="img" value="<%=bean.getImg() %>">
			<input class="optionSelectFirst" type="submit" value="옵션선택후에 구매하기">
			</td>
		</tr>
			
	</table>

	<div class="info"><span >차량 회사 등록지 ▶</span><span ><%=bean.getInfo() %></span></div>
	</form>
</body>
</html>