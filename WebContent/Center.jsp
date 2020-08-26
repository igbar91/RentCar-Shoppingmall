<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Center   || Moving slider + 부가</title>
</head>
<link rel="stylesheet" type="text/css" href="./css/center/center.css">

<body>

		<section>
	 
		<!-- 무빙슬라이더 메인 -->
		<jsp:include page="CenterSlider.jsp"/>
		
		
		 <!--  1번다시 -->
		 
		 <jsp:include page="CenterAnimation.jsp"/>
		
			
		 <!--  2 -->	
		
		
		 <video preload="auto" autoplay="true" loop="loop"muted="muted"  >
				<source src="./images2/teslaMainVideo.mp4" alt="car">
			</video>
		
		
			<div class="flushtextBox">
			<a href="#"><span class="flushtext">  ◆== 지금 바로 구매하기 ==◆</span> </a> </div>
			
		 <!--  3 -->
		 
			<img alt="mainPage" src= "./images2/Tesla2.jpg" width="1600px"  height="720px"/>

</section>
</body>
</html>