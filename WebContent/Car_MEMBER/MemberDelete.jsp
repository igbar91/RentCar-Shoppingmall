<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="MemberControl.MemberBean" %>
    <%@page import="MemberControl.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.delete{
margin-top:100px;
font-size:20px;
}

.delete span{
color:red;
}
.id{
padding-top:50px;
font-size:20px;
}

.p{
padding-top:10px;
font-size:20px;
}

.box input{
font-size:15px;
}
</style>
<body>
<% 

String id = (String)session.getAttribute("id");//새로 불러오는 거 말고 있는거 불러오는 경우에는 session으로

MemberDAO mdao = new MemberDAO();
MemberBean bean = mdao.getOneUpdateBoard(id);
		
%>

   <h4 class="delete"><span>&nbsp;*&nbsp;</span>회원탈퇴를 원하시면 비밀번호를 입력하신 후 회원탈퇴 버튼을 클릭해 주세요.<span>&nbsp;*&nbsp;</span></h4>
	<form action="./Car_MEMBER/MemberDeletePro.jsp"  method="post">
		<table>
			<tr>
				<td  class="id" align="center" >아이디</td>
				<td  class="id"><%=bean.getId()%></td>
			</tr>
			
			
			<tr><td class="p" align="center">비밀번호</td>
				<td class="p"><input type="password" name="pass" ></td></tr>
			
			<tr height="50">
				<td class="box" align="center" colspan="2">
				<input type="hidden" name="id" value="<%=id%>"><!--  전달 -->
				<input type="submit"value="회원탈퇴"> 
				<input type="reset" value="취소" ></td>
			</tr>
			<tr height="230">
			<!--  회원탈퇴창 위로 올리기용 -->
			</tr>
		</table>
		</form>
</body>
</html>