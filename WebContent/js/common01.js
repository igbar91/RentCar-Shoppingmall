$(document).ready(function(){
	//문서객체 정적생성 : html문서에 태그로 작성, 문서객체 동적생성 : js에서 문서객체로 생성
	var bg = $('<div></div>');
	
	bg.addClass('subNavBg'); //addClass() - 문서객체에 클래스를 추가하는 메서드
	
	$('header').append(bg); //append() : B를 A의 자손으로 맨뒤에 삽입
	
	//초기설정 - 하위메뉴와 bg를 안보이게 처리
	$('.subNav').slideUp(0);
	bg.slideUp(0);
	
	//메인네비게이션 마우스를 오버하거나 아웃했을때 
	//hover() - mouseenter와 mouseleave를 번갈아실행
	$('.mNav').hover(function(){
		$('.subNav').stop().slideDown('fast');
		bg.stop().slideDown('fast');
		//stop() - 기능을 멈추라는 메서드
		//객체선택을 멈춤 => 네비게이션의 버블링을 막기 위해 사용
	},function(){
		$('.subNav').stop().slideUp('fast');
		bg.stop().slideUp('fast');
	});
	
	//하위네비 오버시 메인 메뉴 색 변경
	$('.subNav').hover(function(){
		$(this).prev().addClass('on');
		//prev() - 문서객체의 바로 위에 있는 동위선택자 선택
	},function(){
		$('.topNav').removeClass('on');
	});
		
	//웹접근성(키보드사용), click - enter키로 처리
	//mouseenter => focus이벤트로 처리, mouseleave => blur이벤트로 처리
	//초점을 받을수 있는 문서객체 : a, form의 자손
	
	$('.topNav').focus(function(){
		$('.subNav').stop().slideDown('fast');
		bg.stop().slideDown('fast');		
		//색상적용
		$(this).addClass('on');
	});
	
	//하위메뉴의 마지막 a태그에서 초점을 벗어났을 때
	$('.subNav li:last a').blur(function(){
		$('.subNav').stop().slideUp('fast');
		bg.stop().slideUp('fast');
	});
	
	//각각 하위메뉴의 마지막 li a태그에서 초점 벗어났을 때
	$('.subNav li:last-child a').blur(function(){
		$('.topNav').removeClass('on');
	});
});











