<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<center>
					<b>글내용 보기</b><br>
					<form>
						<table width="500" border="1" cellspacing="0" cellpadding="0" align="center">  
						  <tr height="30">
						    <td align="center" width="125">글번호</td>
						    <td align="center" width="125" align="center">
							     ${article.num}</td>
						    <td align="center" width="125">조회수</td>
						    <td align="center" width="125" align="center">
							      ${article.readcount}</td>
						  </tr>
						  <tr height="30">
						    <td align="center" width="125">작성자</td>
						    <td align="center" width="125" align="center">
							      ${article.admin_id}</td>
						    <td align="center" width="125">작성일</td>
						    <td align="center" width="125" align="center">
							      ${article.day}</td>
						  </tr>
						  <tr height="30">
						    <td align="center" width="125">글제목</td>
						    <td align="center" width="375" align="center" colspan="3">
							      ${article.title}</td>
						  </tr>
						  <tr>
						  
						    <td align="center" width="125">글내용</td>
						    <td align="center" width="375" colspan="3">
						    <!-- 여러줄의 데이터를 화면에 출력<pre>~</pre>  -->
						    <pre> ${article.content}</pre>
						    </td>
						  </tr>
						  <tr height="30">      
						    <td colspan="4" align="right" > 
							  <input type="button" value="글수정" onclick="document.location.href='noticeUpdateForm.do?num=${article.num}&pageNum=${pageNum}'">
							   &nbsp;&nbsp;&nbsp;&nbsp;
							  <input type="button" value="글삭제" 
						       onclick="document.location.href='noticeDeleteForm.do?num=${article.num}&pageNum=${pageNum}'">
							   &nbsp;&nbsp;&nbsp;&nbsp;
						       <input type="button" value="글목록" onclick="document.location.href='noticeList.do'">
						    </td>
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