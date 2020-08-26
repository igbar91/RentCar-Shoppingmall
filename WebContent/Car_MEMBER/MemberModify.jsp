<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="MemberControl.MemberBean" %>
    <%@page import="MemberControl.MemberDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정 홈페이지</title>
</head>
<style>
.logo{
margin-top:150px;
}

.tb{
margin-top:50px;
margin-left:300px;

width:800px;
font-size:20px;
}



table tr td{
padding-top:10px;
padding-right:10px;
padding-bottom:10px;
border-bottom:1px solid darkgray;

}

.borderRemove{
border:none;
}

.tb tr td span{
color:red;
padding-left:10px;
padding-right:10px;
}

.leftTd{
width:200px;
background:#d3cfd1;

}

.rightTd{
padding-left:30px;
width:400px;

}



.submitClass{
margin-top:30px;
}


.inputBox{
width:200px;
}

.inputBirth{
font-size:20px;
}


</style>

<body style='background-color: white'>
<% 

String id = (String)session.getAttribute("id");//새로 불러오는 거 말고 있는거 불러오는 경우에는 session으로

MemberDAO ddao = new MemberDAO();
MemberBean bean = ddao.getOneUpdateBoard(id);
		
%>
	<div style="text-align: center" class="logo">
	<img src="../images/logo.png" alt="LOGO" width="200" height="200" /> </div>
	

	
	
	<form action="MemberModifyPro.jsp" method="post">
	
	<table class="tb">
	
		
		<tr> 
		<td colspan="2" >▶  정보입력 및 본인확인<br><br></td>
		</tr>
		

	
		<tr>
		<td class="leftTd"><span>*</span>아이디</td>
		<td class="rightTd"> <%=bean.getId()%></td>
		</tr>
			
		<tr>
		<td class="leftTd"><span>*</span>비밀번호</td>
		<td class="rightTd">
		<input class="inputBox" type="password" name="pass"></td>
		</tr>

	<%--	<tr>
		<td class="leftTd"><span>*</span>비밀번호확인</td>
		<td class="rightTd">
		<input class="inputBox" type="password" name="password2"></td>
		</tr>		
--%> 
	<tr>
		<td class="leftTd"><span>*</span>이메일</td>
		<td class="rightTd">
		<input class="inputBox" type="email"  name="email" value="<%=bean.getEmail() %>">
		<input type="button" onclick="#" value="인증">
		</td>
		</tr>

		<tr>
		<td class="leftTd"><span>*</span>휴대폰</td>
		<td class="rightTd">
		<input class="inputBox" type="text" name="tel" value="<%=bean.getTel() %>"></td>
		</tr>	

		
	<%-- 	<tr><!--  checkbox 로 해야됨 -->
		<td class="leftTd"><span>*</span>성별</td>
		<td class="rightTd">
		<input  type="checkbox" name="checkGender" value="1" checked="checked">남자
		<input  type="checkbox" name="checkGender" value="0">여자</td>
		</tr>
	

		<tr><!--  date  으로 해야됨 -->
		<td class="leftTd"><span>*</span>생년월일</td>
		<td class="rightTd">
		<input class="inputBirth" type="date" name="birthday" id="birthday"></td>
		</tr>		
	--%> 	
		
		<tr>
		<td class="leftTd"><span>*</span>나이</td>
		<td class="rightTd">
		<input class="inputBox" type="text" name="age" value="<%=bean.getAge() %>"></td>
		</tr>
		
	
	

		<tr>
		<td colspan="2" align="center" class="borderRemove">
		<input type="hidden" name="id" value="<%=id%>"><!--  전달 -->
		<input class="submitClass" type="submit" value="정보수정" >&nbsp;&nbsp;&nbsp;&nbsp;
		<input class="submitClass" type="button"  onclick="location.href='../RentCarMain.jsp'" value="취소하기" >&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
		</tr>	
		
		
		<tr>
		<td colspan="2" align="center" class="borderRemove">
		<input class="submitClass" type="button" onclick="location.href='../RentCarMain.jsp?center=./Car_MEMBER/MemberDelete.jsp'" value="탈퇴하기">
		</td></tr>

		
	</table>	
	</form>
</body>
</html>

