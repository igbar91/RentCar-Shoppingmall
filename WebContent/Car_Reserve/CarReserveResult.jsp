<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>   
<%@ page import = "java.text.SimpleDateFormat " %>
<%@ page import = "DBControl.RentcarDAO" %>
<%@ page import = "DBControl.CarListBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자동차 예약하기</title>
</head>
<style>

.CarLocation{
float:left;
margin-left:200px;
}


.finishScreen{
margin-right:200px;
padding-bottom:20px;
align:center;
padding-top:50px;

}

.finishScreen span{
font-size:30px;
font-weight:bold;
}


.menuLocation{
margin-top: 60px;
margin-right:400px;

display:inline-block;
}

.menuLocation span{
font-size:20px;
align:left;
}
.menuLocation span strong{
font-size:20px;
}

.goToCheck{
margin-top:20px;
font-size:20px;
margin-right:400px;
}
</style>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>
	<jsp:useBean id="rbean" class="DBControl.CarReserveBean">
		<jsp:setProperty name="rbean" property="*"/>
	</jsp:useBean>

	<!-- 날짜: <%=rbean.getRday() %>에 예약이 완료 되었습니다.<br> -->

<%
	String id = (String)session.getAttribute("id");

	if(id == null){
%>
	<script>
		alert("로그인후 예약이 가능합니다.");	
		location.href='RentCarMain.jsp?center=MemberLogin.jsp';
	</script>
<%
	}
	
	Date day1 = new Date();
	Date day2 = new Date();
	
	//날짜를 년-월-일에 맞도록 클래스 선언합니다.
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
	day1 = sdf.parse(rbean.getRday());
	day2 = sdf.parse(sdf.format(day2));
	
	//날짜를 비교
	int compare = day1.compareTo(day2);
	//예약하려는 날짜보다 현재 날짜가 크면 -1
	//예약하려는 날짜와 현재 날짜가 같으면 0
	//예약하려는 날짜가 현재 날짜보다 더 크면 1을 반환합니다. 

	if(compare < 0) { //오늘 날짜보가 더 이전 날짜가 선택되었다면....
	%>
	
	<script>
		alert("현재 날짜보다 이전 날짜는 선택할 수 없습니다.");
		history.go(-1);	
	</script>
	<%
	}
	
	//아무런 문제가 발생하지 않았으면, 데이터를 저장하고 결과 페이지를 보여주도록 합니다.
	String id1 = (String)session.getAttribute("id");
	rbean.setId(id1);
	
	RentcarDAO rdao = new RentcarDAO();
	rdao.setReserveCar(rbean);
	
	//차량정보 불러오기
	CarListBean cbean = rdao.getOneCar(rbean.getNo());
	
	//차량 총 금액
	int totalcar = cbean.getPrice() * rbean.getQty() * rbean.getDday();
	
	//옵션 선택한 금액
	int usein = 0;
		if(rbean.getUsein() == 1)usein = 10000;
	int usewifi = 0;
		if(rbean.getUsewifi() == 1)usewifi = 10000;
	int useseat = 0;
		if(rbean.getUseseat() == 1)useseat = 10000;
	int usenavi = 0;
		if(rbean.getUsenavi() == 1)usenavi = 10000;

		//총 옵션 합계 금액
int totaloption = (rbean.getQty() * rbean.getDday()) * (usein + usewifi + useseat + usenavi);
	%>

	<div class="outside">
	
			<div class="finishScreen"><span >차량 예약 완료 화면</span></div>
			
		<div class="CarLocation">
		<img src="images/<%=cbean.getImg() %>" width="570"></div>
		
		<div class="menuLocation">
		<span class="finishScreen2">차량 총예약 금액              <br> <strong>▶<%=totalcar %> 원</strong><br></span>
		<span class="finishScreen3">차량 총 옵션 합계 금액    <br><strong>▶<%=totaloption %> 원</strong><br></span>
		<span class="finishScreen4">차량 총 금액                   <br><strong> ▶  <%=totalcar + totaloption %> 원</strong><br></span>
		</div>		
	</div>
	<div>
	<button onclick="location.href='RentCarMain.jsp?center=./Car_ReserveCheck/CarReserveView.jsp'"
	class="goToCheck">예약확인하러가기 </button>	
</div>
</body>
</html>