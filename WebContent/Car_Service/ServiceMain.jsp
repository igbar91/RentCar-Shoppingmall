<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
</head>
<style>
a { text-decoration:none;}

.high{
margin-top:100px;
margin-bottom:50px;
}
.high strong{
font-size:20px;
}

.q{

font-size:14px;
}

.mainBox{
padding-top:50px;
}

#divService{
 color:black;
 display : inline-block;
 padding:10px;
 border:4px solid black;
 margin:10px;
}

#divService .num{
font-weight:strong;
font-size:14px;
color:skyblue;

}

#divService span{
color:black;
font-weight:strong;
font-size:18px;
}

.often h3{
padding-top:24px;
padding-bottom:25px;
font-size:25px;
}

#divQ{
width:500px;
height:70px;
background:lightgray;
display : inline-block;
padding:10px;
margin:10px;

}

#divInQ{
right:0px;
width:140px;
height:25px;
 background:#000080;
 margin-top:25px;
 margin-right:10px;
 display:inline-block;
}

#divInQ span a{
color:white;
font-weight:strong;
font-size:14px;
}


/* 새로 */






#ars{
padding-right:100px;
color:black;
font-weight:900;
font-size:25px;
align:top;
}

#horizon{
margin-top:100px;
margin-bottom:100px;
}
#tableService{

margin-bottom:100px;
}
#serviceImg{

padding-left:50px;
}
table td{
color:black;
}
#bigSize{
font-size:20px;
font-weight:bold;
}
#numbercolor{
font-size:20px;
color:skyblue;
}


</style>
<body>

	<h1 align="center" class="high">
		<strong>자주하는 질문</strong><br>
	</h1>
	
	<span class="q"><a href="#">궁금한 점을 검색해 보세요</a></span>
	
	<hr width="50%">
	
	<div class="mainBox">
	<div id="divService">
		<span class="num">Q01<br></span>
		<span> 차량계약 후 해지 시계약금은 환불 받을 수 있습니까?</span>
	</div>
	
	<div id="divService">
		<span class="num">Q02<br></span>
		<span>장애인차량 구입조건에 대해 알고 싶습니다.</span>
	</div>
	
	<div id="divService">
		<span class="num">Q03<br></span>
		<span> 차량구입시 신용카드는 얼마까지 이용할 수 있나요?</span>
	</div>
	
	<div id="divService">
		<span class="num">Q04 <br></span>
		<span>차량계약 후 예상납기일에 대해 알 수 있나요?</span>
	</div>
	
		<div id="divService">
		<span class="num">Q05<br> </span>
		<span>세이브오토 이용에 관해 알고 싶습니다.</span>
	</div>
	</div>
	
	

	<span class="often"><h3>자주하는 질문 더보기</h3></span>
	
	
	<div id="divQ">
	<div id="divInQ">
	<span><a href=#>1:1 문의하기</a></span>
	</div>

	<div id="divInQ">
	<span><a href=#>나의 1:1 문의내역</a></span>
	</div>
	</div><!-- 첫번째박스 -->
	
	
	<div id="divQ">
	<div id="divInQ">
	<span><a href=#>구매절차</a></span>
	</div>
	<div id="divInQ">
	<span><a href=#>제도 및 규정</a></span>
	</div>
	</div><!-- 두번째박스 -->
	
	<!--  *************************************************************** -->
	<!--  *****************************줄바뀜**************************** -->
	<!--  *************************************************************** -->
	
	<hr color="lightgray" id="horizon"> 

	<table id="tableService">
	<tr >
	<td id="ars">ARS 상담 -</td>
	<td id="bigSize">고객센터(승용) <span id="numbercolor">010-123-1234</span></td>
	<td rowspan="9" id="serviceImg"><a href="#"><img src="imagesLOGO/ARSimage.png"/></a></td>
	</tr>
	
	<tr>
	<td rowspan="8">
	<td id="bigSize">고객센터(트럭/버스) <span id="numbercolor">010-123-1234</span></td>
	</tr>
	
	<tr>
	<td>차량 구입/정비 서비스, 멤버십 등 문의</td>
	</tr>
	<tr>
	<td>
	<ul>
	<li>평일 8:30~19:00</li>
	<li>토요일, 공휴일 9:00~17:00</li>
	<li>일요일 9:30~12:00</li>
	</ul></td></tr>
	
	<tr>
	<td id="bigSize">
	블루링크 <span id="numbercolor">1234-5678</span></td></tr>
	
	<tr>
	<td>
	서비스 개통/해지/변경 등(안전 보안 서비스 24시간 제공)
	</tr>
	
	<tr>
	<td>
	<ul>
	<li>
	평일 9:00 -18:00(주말/공휴일 휴무)
	</li>
	</ul>
	</tr>
		
	</table>
	
</body>
</html>