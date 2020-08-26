<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>제이쿼리 - 메인 네비게이션</title>
        <link type="text/css" rel="stylesheet" href="./css/top/top.css" />
        <script src="./js/jquery-1.12.4.min.js"></script>
        <script src="./js/top.js"></script>
    </head>
 <!-- ****************************************************************************** -->
 <!-- ****************************************************************************** -->    
    <body>
    
    <%
	String id = (String)session.getAttribute("id");
	
	if(id == null){  //로그인 되어 있지 않으면
		id = "GUEST";
	}
%>
    
  <!-- ****************************************************************************** -->
    
    	<header>
       		<div class="hTop">
       			<h1>
       				<a href="RentCarMain.jsp"><img src="./TopImages/logo.png" alt="로고" /></a>
       			</h1>
       			<nav class="t_nav">
					<ul>
											
			<li><span style="color:white;"><%=id %> 님</span></li>
			<br>
	
			<%
				if(id.equals("GUEST")){
			%>           <!--  상단 고치고 button으로 바꾸기  -->
				<li class="first"><button onclick= "location.href='RentCarMain.jsp?center=./Car_MEMBER/MemberLogin.jsp'">로그인</button></li>
			
				<li><button onclick = "location.href='./Car_MEMBER/MakeMemberForm.jsp'">회원가입</button></li>
			<%
				}else{
			%>		                    
			    <li> <button onclick = "location.href='./Car_MEMBER/MemberModify.jsp'">개인정보</button></li>
				<li><button onclick = "location.href='RentCarMain.jsp?center=./Car_MEMBER/MemberLogout.jsp?logout=1'">로그아웃</button></li>		
			<%
				}
			%>
			
					</ul>    
				</nav>
       		</div>
       		
     <%-- ************************************************************************************************** --%>		
            <nav class="m_nav">
            	<ul>
                    <li class="mnav01"><a href="#" class="top_nav"><b>차량정보</b></a>
                    	<ul class="sub_nav"><!--웹접근성=>탭순서-->
                            <li><a href="RentCarMain.jsp?center=./Car_Reserve/CarReserveMain.jsp"><strong>예약하기</strong></a>
                            	<ul class="s_nav">
                            <li><a href="RentCarMain.jsp?center=./Car_Reserve/CarCategoryList.jsp?category=1"><strong>Tesla</strong></a></li>
                            <li><a href="RentCarMain.jsp?center=./Car_Reserve/CarCategoryList.jsp?category=2"><strong>Benz</strong></a></li>
                            <li><a href="RentCarMain.jsp?center=./Car_Reserve/CarCategoryList.jsp?category=3"><strong>Ferrari</strong></a></li>
                            </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="mnav02"><a href="#" class="top_nav"><b>구매정보</b></a>
                    	<ul class="sub_nav">
                            <li><a href="RentCarMain.jsp?center=./Car_ReserveCheck/CarReserveView.jsp"><strong>예약확인|관리</strong></a>
                            	<ul class="s_nav">
                            		<li><a href="#">예약 현황</a></li>
                            		<li><a href="#">구매상담신청</a></li>
                            		<li><a href="#">간편 할부계산기</a></li>
                            		<li><a href="#">이달의 구매혜택</a></li>
                            		<li><a href="#">시승신청</a></li>
                            	</ul>
                            </li>
                        </ul>
                    </li>
                    <li class="mnav03"><a href="#" class="top_nav"><b>전시장</b></a>
                    	<ul class="sub_nav">
                            <li><a href="#">스튜디오 서울</a></li>
                            <li><a href="#">스튜디오 고양</a></li>
                            <li><a href="#">스튜디오 하남</a></li>
                            <li><a href="#">스튜디오 모스크바</a></li>
                            <li><a href="#">스튜디오 대전</a></li>
                       
                        </ul>
                    </li>
                    <li class="mnav04"><a href="#" class="top_nav"><b>이벤트</b></a>
                    	<ul class="sub_nav">
                            <li><a href="RentCarMain.jsp?center=./Car_Event/EventMain.jsp"><strong>진행중인 이벤트</strong></a></li>
                            <li><a href="#">지난 이벤트 </a></li>

                        </ul>
                    </li>
                    <li class="mnav05"><a href="RentCarMain.jsp?center=./Car_Service/ServiceMain.jsp" class="top_nav"> <b>고객센터</b></a>
                    	<ul class="sub_nav">
                            <li><a href="#">자주하는 질문(FAQ)</a></li>
                            <li><a href="#">1:1문의</a></li>
                            <li><a href="RentCarMain.jsp?center=./boardArrangedFolder/BoardMain.jsp" ><strong>자유게시판</strong></a></li>
                            <li><a href="#">제도 및 규정</a></li>
                              <li><a href="RentCarMain.jsp?center=./Car_Service/ServiceMain.jsp"><strong>고객센터</strong></a></li>
                        </ul>
                    </li>
            	</ul>        
            </nav>
        </header>
        

    </body>
</html>