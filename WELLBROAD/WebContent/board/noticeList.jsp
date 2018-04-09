<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

/* boardList */
.tablecontent{
	width:80%;
	text-align:center;
}

#titlecolor:hover{
	background-color:#F5FFFA;
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
					<b>공지사항(전체 글:${pgList.count})</b>
					<table class="tablecontent">
						<tr>
							<td>
							<a href="noticeWriteForm.do">글쓰기</a></td>
						</tr>
					</table>
					<c:if test="${pgList.count==0}">
						<table border="1" width="700" cellpadding="0" cellspacing="0"
							align="center">
							<tr>
								<td align="center">게시판에 저장된 글이 없습니다.</td>
							</tr>
						</table>
					</c:if>
					<c:if test="${pgList.count > 0}">
						<table border="1" class="tablecontent">
							<tr height="30" bgcolor="#b0c9eb">
								<td align="center" width="">번 호</td>
								<td align="center" width="60%">제 목</td>
								<td align="center" width="">작성일</td>
								<td align="center" width="">작성자</td>
								<td align="center" width="">조회</td>
							</tr>
						
							<c:set var="number" value="${pgList.number}" />
							<c:forEach var="article" items="${articleList}">
								<tr height="30">
									<td align="center" width="">
									<c:out value="${number}" /> 
									<c:set var="number" value="${number-1}" /></td>
									<td id="titlecolor">
								<center>
								<a href="noticeContent.do?num=${article.num}&pageNum=${pgList.currentPage}">
											${article.title}</a></center>
								<c:if test="${article.readcount >=20}">
										</c:if></td>
								
									<td align="center" width="">
										<fmt:formatDate value="${article.day}" timeStyle="medium" pattern="yy.MM.dd(hh:mm)" />
									</td>
									<td align="center" width="">${article.admin_id}</td>
									<td align="center" width="">${article.readcount}</td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
					<c:if test="${pgList.startPage>pgList.blockSize}">
						<a href="noticeList.do?pageNum=${pgList.startPage-pgList.blockSize}&search=${search}&searchtext=${searchtext}">[이전]</a>
					</c:if>
					<c:forEach var="i" begin="${pgList.startPage}" end="${pgList.endPage}">
						<a href="noticeList.do?pageNum=${i}&search=${search}&searchtext=${searchtext}">
							<c:if test="${pgList.currentPage==i}">
								<font color="red"><b>[${i}]</b></font>
							</c:if> <c:if test="${pgList.currentPage!=i}">
							           ${i}
							     </c:if>
						</a>
					</c:forEach>
					<c:if test="${pgList.endPage<pgList.pageCount}">
						<a href="noticeList.do?pageNum=${pgList.startPage+pgList.blockSize}&search=${search}
							&searchtext=${searchtext}">[다음]</a>
					</c:if>
					<p>
					<form name="test" action="noticeList.do">
						<select name="search">
							<option value="title">제목</option>
							<option value="title_content">제목+본문
							<option value="admin_id">작성자</option>
						</select> 
						<input type="text" size="15" name="searchtext">&nbsp; 
						<input	type="submit" value="검색">
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