<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>회원가입</title>
<link rel="stylesheet"
	href="../Euro-Travels-master/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../Euro-Travels-master/assets/css/ionicons.min.css">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<link href="style.css" rel="stylesheet" type="text/css">
<!-- <script language="JavaScript" src="script.js?ver=2"/> -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	var agreementCheck = false;
	var agreeCheck = false;
	
	$(function(){
		$('.agree textarea').hide()
		$('#agreement').click(function(){
			agreementCheck = !agreementCheck
			if(agreementCheck==false) {
				$('.agree textarea').hide()
			}
			else {
				$('.agree textarea').show()
			}
		})
	});
</script>



<style>
.form-control {
	width: 270px;
}

.subject {
	font-size: 25pt;
	margin-right:10px;
}
.row{
	width:550px;
	margin-top:10px;
}
#check{
	margin-top:10px;
}
#reset{
	margin-top:10px;
}
#select{
	width:100px;
}
.checkButton{
	align:center;
}
.title{
	margin-bottom:30px;
}
</style>
</head>
<body onLoad="regForm.id.focus()">
	<br>
	<br>
	<form name="regForm" method="post" action="RegisterPro.do">
		<div class="container">
		 <div><a href="mainpage.do" title="HOME">	    
     		<i><img src="../Euro-Travels-master/assets/image/logo(color).png" width="100" class="logo"></i>
    		 </a></div>
			<div class="title">
				<b class="subject">SIGN UP</b>  회원 가입페이지
			</div>
			<div class="row">
				<div class="col-md-3">
					<b>아이디</b>
				</div>
				<div class="col-md-6">
					<input type="text" name="id" class="form-control input-md">
				</div>
				<div class="col-md-3">
					<input type="button" value="ID중복확인" name="idcheck" onClick="idCheck(this.form.id.value)" 
					class="btn btn-info">
				</div>	
			</div>
			<div class="row">
				<div class="col-md-3">
					<b>비밀번호</b>
				</div>
				<div class="col-md-9"> 
					<input type="password" name="password" class="form-control input-md">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<b>비밀번호 확인</b>
				</div>
				<div class="col-md-9">	
					 <input type="password" name="repassword" class="form-control input-md"> 
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<b>이름</b> 
				</div>
				<div class="col-md-9">
					<input type="text" name="name" class="form-control input-md">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<b>생년월일</b> 
				</div>
				<div class="col-md-9">
					<input type="text" name="birth" class="form-control input-md">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<b>성별</b> 
				</div>
				<div class="col-md-9">
					<select name="gender" class="form-control" id="select">
						<option>선택</option>
						<option value="m">남자</option>
						<option value="f">여자</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<b>메일</b> 
				</div>
				<div class="col-md-9">
					<input type="text" name="mail" size="27" class="form-control input-md">
				</div>
			</div>
			<div class="row">
				<div class="col-md-3"></div>
				<div class="col-md-9">
					<input type="checkbox" name="mailagree" id="mailagree">메일수신동의
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">
					<b>휴대전화</b> 
				</div>
				<div class="col-md-9">
					<input type="text" name="phone" class="form-control input-md">
				</div>
			</div>
		</div>
		<div class="container">
			<div>
				<input type="checkbox" name="agreeCheck" id="agreeCheck">WELLBROAD 이용약관(필수) <a id="agreement"> 보기 </a>
			</div>
			<jsp:include page="./agreement.jsp" />
			
			<div class="checkButton">
				<input type="button" value="확인" onclick="inputCheck()"
					class="btn btn-info" id="check" > &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
				<input type="reset" value="다시쓰기" class="btn btn-info" id="reset">
			</div>
		</div>
	</form>
	<script src="../Euro-Travels-master/assets/js/jquery-1.11.2.min.js"></script>
	<script src="../Euro-Travels-master/assets/js/bootstrap.min.js"></script>
	<script src="../Euro-Travels-master/assets/js/owl.carousel.min.js"></script>
	<script src="../Euro-Travels-master/assets/js/contact.js"></script>
	<script src="../Euro-Travels-master/assets/js/jquery.flexslider.js"></script>
	<script src="../Euro-Travels-master/assets/js/script.js"></script>
	<script src="../custom/js/memberCustom.js"></script>
</body>
</html>
