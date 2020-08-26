<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니메이션</title>
</head>
<link rel="stylesheet" type="text/css" href="./css/center/animation.css">    
    <script src="./js/jquery-1.12.4.min.js"></script>
    
    
 <script>
 $(function(){
	  $('.reverse').click(function(){ 
	      $(this).css('animation-name','direction');
	  });
	});
 
 $(function(){
	  $('.reverse2').click(function(){ 
	      $(this).css('animation-name','direction2');
	  });
	});
 
 </script>   
    
    
    <body>
<div class="together">
<div class="reverse">
<span class="reverseSpan1">퍼포먼스</span><br><br>
<span class="reverseSpan2">가장 빠른 가속</span><p><br><br><br>
<span class="reverseSpan3">Model S는 퍼포먼스와 안전성 측면에서 업계의 표준이 되고 있습니다.

Tesla의 순수 전기 파워트레인은 어떤 기상조건에서도 비교가 불가능한 퍼포먼스를 자랑하며
듀얼 모터 상시 사륜 구동(AWD), 루디크러스 가속을 제공합니다.</span></div>

<img src="./images2/mainCar.jpg" class="reverse2"/>
</div>
    </body>
</html>