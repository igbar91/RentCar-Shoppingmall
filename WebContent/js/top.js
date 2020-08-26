$(document).ready(function(){
	//sub_nav 보이지 않게 처리
	$('.sub_nav').slideUp(0); //시간차없애기 위해 0초처리

	//하위메뉴 배경을 동적생성
	var bg = $('<div></div>'); //div태그 생성
	bg.addClass('subBg'); //css의 클래스를 문서객체에 적용

	//bg의 header의 자손으로 삽입
	bg.appendTo('header'); //A를 B의 자손으로 삽입

	//bg의 초기상태 - 보이지 않게 처리
	bg.slideUp(0);


	//m_nav - 하위메뉴 컨트롤
	//hover() - mouseenter와 mouseleave를 번갈아 실행 이벤트
	$('.m_nav').hover(function(){
		//마우스올렸을 때
		bg.stop().slideDown('fast'); //stop() - 다 내려올때까지 객체선택 그만하라는 메서드
		$('.sub_nav').stop().slideDown('fast');
	},function(){
		//마우스내렸을 때
		bg.stop().slideUp('fast');
		$('.sub_nav').stop().slideUp('fast');
	});

	//색상처리 - 하위메뉴에 오버시에도 메인메뉴의 컬러가 바뀌게 처리
	$('.sub_nav').hover(function(){
		$(this).parent().find('>a').addClass('on');
	},function(){
		$(this).parent().find('>a').removeClass('on');
	});

	//웹접근성 - 탭처리로 코드 실행 - focus & blur
	//초점이 갈수 있는 태그 - a태그, 폼관련 태그
	$('.top_nav').focus(function(){
		bg.stop().slideDown('fast');
		$('.sub_nav').stop().slideDown('fast');
		$('.top_nav').removeClass('on');
		$(this).addClass('on');
	});

	$('.sub_nav a:last').blur(function(){
		bg.stop().slideUp('fast');
		$('.sub_nav').stop().slideUp('fast');
		$('.top_nav').removeClass('on');
	});
});