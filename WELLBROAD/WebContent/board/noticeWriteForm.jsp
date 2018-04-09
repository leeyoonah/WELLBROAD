<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>
<title>WELLBROAD</title>
	
<style>
/* ------------------------ main ------------------------ */
.main{ 
	display : inline-block;
	width :100%;
	height:100%;
	overflow-y:scroll; 
}
#header{ 
	display : inline-block;
	width:100%;
	height:300px;
	margin-top:30px;
}
.top{
	position : relative;
	width:100%;
	height:139px;
}
section.section-background{
	position : relative;
	width:100%;
	height:100%; 
}
#sub{
	position : relative;
	height:100%;
}
/* ------------------------admin으로 로그인해서 side.jsp 추가되었을 때 ------------------------ */
.admin-main {
	margin-left: 60px;
}
</style>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
			<!--[if lt IE 9]>
				<script src="assets/js/html5shiv.js"></script>
				<script src="assets/js/respond.js"></script>
			<![endif]-->

			<!--[if IE 8]>
		    	<script src="assets/js/selectivizr.js"></script>
		    <![endif]-->	
</head>
<body>
	<div class="main">
		<!-- ADMIN -->
		<div id="side"></div><!-- /#side -->
		
		<!-- Home -->
		<div id="header">
			<div class="top"><jsp:include page="../main/top.jsp"></jsp:include></div>
			    <link rel="stylesheet" href="../Euro-Travels-master/assets/css/section.css">
			    <link rel="stylesheet" href="../Euro-Travels-master/assets/css/about.css">
			    <link rel="stylesheet" href="../custom/css/tourCustom.css">
			<!-- Section Background -->
			<section class="section-background">
				<div class="container">
					<h2 class="page-header">Notice Board<div class="sub-menu"></div></h2><!-- Board클릭시 보이는 타이틀 -->
					<ol class="breadcrumb"><!-- 게시판 내의 메뉴바 같은 느낌  -->
						<li><a href="../main/mainpage.do">Home</a></li>
						<li><a href="boardMain.do">board</a></li>
						<li class="active">&nbsp;notice</li>
					</ol>
				</div> <!-- /.container -->
			</section> <!-- /.section-background -->
		</div><!-- /#header -->
		
		<!-- 본격적으로 custom한 페이지구현 -->
		<div class="sub" id="sub">
			<div class="sub-menu"><!-- 왼쪽 메뉴 -->
				<ul class="nav navbar-nav">
					<li class="active"><a href="noticeList.do">공지게시판</a></li>
					<li><a href="#">리뷰게시판</a></li>
				</ul><!-- /.nav -->
			</div><!-- /.sub-menu -->
			
			<div class="sub-main">
<!-- button->onclick이벤트를 처리(함수)
     submit->onsubmit이벤트가 발생->함수를 호출 형식) return 호출할 함수명()
     함수를 호출해서 제대로 입력했는지를 체크->입력->return false를 받는다.
     제대로 입력->return true을 받아서 자동적으로 action="writePro.jsp로 전송
-->	
				<center>
					<b>글쓰기</b><br>														
					<form method="post" name="writeForm" action="noticeWritePro.do">
			
						<table width="400" border="1" cellspacing="0" cellpadding="0" align="center">
							<tr>
								<td align="right" colspan="2" >
								<a href="noticeList.do"> 글목록</a></td>
							</tr>
						
							<tr>
								<td width="70" align="center">제 목</td>
								<td width="330">
								<input type="text" size="40" maxlength="50" name="title"></td>
							</tr>
							<tr>
								<td width="70" align="center">아이디</td>
								<td width="330">
								<input type="text" size="40" maxlength="50" name="admin_id"></td>
							</tr>
							<tr>
								<td width="70" align="center">아이피</td>
								<td width="330">
								<input type="text" size="40" maxlength="50" name="ip"></td>
							</tr>
							<tr>
								<td width="70" align="center">내 용</td>
								<td width="330">
								<textarea name="content" rows="13" cols="40"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan=2 align="center">
								<input	type="submit" value="글쓰기"> 
								<input type="reset" value="다시작성"> 
								<input type="button" value="목록보기"	OnClick="window.location='noticeList.do'"></td>
							</tr>
						</table>
					</form>
				</center>			
			</div>
		</div><!-- /#sub /.sub -->
	</div><!-- /.main -->
	
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="../Euro-Travels-master/assets/js/jquery-1.11.2.min.js"></script>
    <script src="../Euro-Travels-master/assets/js/bootstrap.min.js"></script>
    <script src="../Euro-Travels-master/assets/js/owl.carousel.min.js"></script>
    <script src="../Euro-Travels-master/assets/js/contact.js"></script>
    <script src="../Euro-Travels-master/assets/js/jquery.flexslider.js"></script>
	<script src="../Euro-Travels-master/assets/js/script.js"></script>
<script type="text/javascript">
$(function() {
	if ('<%=session.getAttribute("sUserId")%>'== 'admin') {
		$.ajax({url:"../admin/side.jsp",
			success:function(result) {
				$('.main #side').html(result).scrollTop(0);
			}
		});
		$('.main #header').addClass('admin-main');
		$('nav.navbar.navbar-default').css({'left':'60px','z-index':'5'});
		$('#side').css('z-index','10');
		$('#sub').css('left','60px');
	} else {
		$('.main #header').removeClass('admin-main');
		$('nav.navbar.navbar-default').css('left','0px');
		$('#sub').css('left','0px');
	}// if 
});
</script>
</body>
</html>