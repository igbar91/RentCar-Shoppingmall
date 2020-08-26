<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
height:32px;
}
.carValueV select{ 
font-size:18px;
}

.carValueV input{ 
font-size:18px;
}


.optionSelectFirst{
margin-top:20px;
font-size:18px;
}


</style>
<body align="center">
<%
	int no = Integer.parseInt(request.getParameter("no"));
	int qty = Integer.parseInt(request.getParameter("qty"));
	String img = request.getParameter("img");
%>

	<form action = "RentCarMain.jsp?center=./Car_Reserve/CarReserveResult.jsp" method="post">
		<table width="1000">
				<tr height="100">
					<td align="center" colspan="3" class="selectCar">옵션 선택</td>
				</tr>
				<tr>
					<td align="center" rowspan="7" width="500">
					<img alt="" src="./images/<%=img%>" width="450"></td>
					<td class="carValue" width="250" align="center"> 대여 기간</td>
					<td class="carValueV" width="250" align="left"> 
							<select name="dday">
								<option value="1">1일</option>
								<option value="2">2일</option>
								<option value="3">3일</option>
								<option value="4">4일</option>
								<option value="5">5일</option>
								<option value="6">6일</option>
								<option value="7">7일</option>
							</select>
					</td>
				</tr>
				<tr>
					<td class="carValue" width="250" align="center"> 대여일</td>
					<td class="carValueV" width="250" align="left"> 
							<input type="date" name="rday" size="15">
					</td>
				</tr>
				<tr>
					<td class="carValue" width="250" align="center"> 보험적용</td>
					<td class="carValueV" width="250" align="left"> 
							<select name="usein">
								<option value="1">적용(1일 1만원)</option>
								<option value="2">비적용</option>
							</select>
					</td>
				</tr>
				<tr>
					<td class="carValue" width="250" align="center"> wifi 적용</td>
					<td class="carValueV" width="250" align="left"> 
							<select name="usewifi">
								<option value="1">적용(1일 1만원)</option>
								<option value="2">비적용</option>
							</select>
					</td>
				</tr>
				<tr>
					<td class="carValue" width="250" align="center"> 베이비시트 적용</td>
					<td class="carValueV" width="250" align="left"> 
							<select name="useseat">
								<option value="1">적용(1일 1만원)</option>
								<option value="2">비적용</option>
							</select>
					</td>
				</tr>
				<tr>
					<td class="carValue" width="250" align="center"> 네비게이션 적용</td>
					<td class="carValueV" width="250" align="left"> 
							<select name="usenavi">
								<option value="1">적용(1일 1만원)</option>
								<option value="2">비적용</option>
							</select>
					</td>
				</tr>
				<tr>
					<td align="center" colspan="2">
					<input type="hidden" name="no" value="<%=no %>">
					<input type="hidden" name="qty" value="<%=qty %>">
					<input class="optionSelectFirst" type="submit" value="차량예약하기"></td>
				</tr>		
		</table>	
	</form>
</body>
</html>