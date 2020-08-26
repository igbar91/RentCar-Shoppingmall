<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
<style>
.mytext{
	height: 40px;
	width: 300px;
}
.login{
background: white;
border: none;
height: 40px;
width: 300px;
}
.back{
background: gray;
border: none;
height: 40px;
width: 50px;

}

</style>
</head>

<script type="text/javascript"><!-- 뒤로가기방지 -->
 window.history.forward();
 function noBack(){window.history.forward();}
</script>

<body style='background-color: lightgray'
onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload=""><!-- 뒤로가기방지 -->


	<div style="text-align: center" >
	<img src="./images/logo.png" alt="LOGO" width="150" height="150" /> 
</div>
	<form action="./Car_MEMBER/MemberLoginPro.jsp" method="post">
		<table align="center">
			<tr>
				<td align="center">
				<input type="text" class="mytext" name="id" placeholder="Id"></td>
			</tr>
			<tr>
			<td height="20">
			</td>
			</tr>
			<tr>
				<td align="center">
				<input type="password" class="mytext" name="pass" placeholder="Password">
					</td>
			</tr>
			<tr>
			<td height="20">
			</td>
			<tr height="50">
				<td align="center" colspan="2">
				<input type="submit"value="Sign in" class="login"> 
				 <a href="RentCarMain.jsp" ><input class="back" value="  Back"></a>
				</td>
			</tr>
			<tr height="50">
			</tr>
		</table>
		</form>
	
</body>
</html>