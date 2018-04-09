<%@page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
<HEAD>
	<TITLE> 로그인 </TITLE>  
	<link rel="stylesheet" href="../Euro-Travels-master/assets/css/bootstrap.min.css">
<style>
#content{
	padding-top:100px;
	width:100%;
	text-align:center;
}
.logo{
	margin-bottom:50px;
	width:150px;
}
#loginInput{
	margin-bottom:10px;
	width:300px;
}
.btn-info{
	background-color:#33CC99;
	margin-top:15px;
	width:300px;
}
.inputStyle{
	height:60px;
}
</style>
</HEAD>
<BODY onload="document.login.id.focus()">
	<div id="content">
		<a title="HOME" href="mainpage.do"><img src="../custom/image/logo(color).png" class="logo"></a>
		<form name="login" method="post" action="LoginPro.do" class="form-inline">	
			<div class="inputStyle"><INPUT TYPE="text" NAME="id" class="input-lg form-control" id="loginInput" placeholder="아이디"></div>
			<div class="inputStyle"><INPUT TYPE="password" NAME="password" class="input-lg form-control" id="loginInput" placeholder="비밀번호"></div>
		</form>
		
		<form class="form-inline">
			<div class="inputStyle"><INPUT TYPE="button" class="btn btn-lg btn-info" value="LOGIN" onclick="loginCheck()"></div>
		</form>
		<div>
			<INPUT TYPE="button"  class="btn btn-link" value="아이디 찾기 " onclick="memberReg()">
			<INPUT TYPE="button" class="btn btn-link" value="비밀번호 찾기 " onclick="memberReg()">
			<INPUT TYPE="submit" class="btn btn-link" value="회원가입" onclick="memberReg()">
		</div>
	</div>
	<script src="../custom/js/memberCustom.js"></script>  
 </BODY>
</HTML>