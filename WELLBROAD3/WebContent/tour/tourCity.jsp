<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no" />
<title>WELLBROAD</title>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
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
					<h2 class="page-header">Tour City Information</h2><!-- 여행정보-도시 클릭시 보이는 타이틀 -->
					<ol class="breadcrumb"><!-- 여행정보 내의 메뉴바 같은 느낌  -->
						<li><a href="../main/mainpage.do">Home</a></li>
						<li><a href="tourMain.do">&nbsp;tour</a></li>
						<li class="active">&nbsp;City</li>
					</ol>
				</div><!-- /.container -->
			</section><!-- /.section-background -->
		</div><!-- /#header -->
		
		<!-- 본격적으로 custom한 페이지구현 -->
		<div class="sub" id="sub">
			<div class="sub-menu"><!-- 왼쪽 메뉴 -->
				<ul class="nav navbar-nav">
					<li class="active"><a href="tourCity.do">city</a></li>
					<li><a href="tourSpot.do">spot</a></li>
					<li><a href="tourStay.do">stay</a></li>
					<li><a href="tourFood.do">food</a></li>
				</ul><!-- /.nav -->
			</div><!-- /.sub-menu -->
		
			<div class="sub-main"><!-- 오른쪽 내용(왼쪽에서 클릭한 메뉴에 따라 보여지는 내용이 다름) -->
				<div class="sub-container"><!-- 국가/도시를 select할 영역 -->
					<div class="row"><!-- grid를 사용하기 위함 -->
						<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
							<form class="form-inline"><!-- label과 select를 묶기 위한 form태그 -->
								<label for="nation">국가 </label>
								<!-- Action에서 얻어온 nationList를  select의 option으로 추가시키고,
									 이미 nation을 선택한 상황이라면 Action에서 얻어온 code_nation과 일치하는지 확인 후 selected 표시
									 그리고 onchange를 이용하여 페이지 이동 및 Action으로 값(현재 클릭,select한 code_nation)을 넘겨줌 -->
								<select class="form-control" id="nation" onchange="location.href='tourCity.do?code_nation='+this.value">
									<option value="null">선택</option>
									<c:forEach var="nation" items="${nationList}">
										<c:if test="${code_nation== nation.code_nation}">
											<option value="${nation.code_nation}" selected> ${nation.name}</option>
										</c:if>
										<c:if test="${code_nation!= nation.code_nation}">
											<option value="${nation.code_nation}"> ${nation.name}</option>
										</c:if>
									</c:forEach>
								</select><!-- /#nation -->
							</form><!-- /.form-inline -->
						</div><!-- /col-lg-3 col-md-4 col-sm-4 col-xs-12-->
						
						<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
							<form class="form-inline"><!-- label과 select를 묶기 위한 form태그 -->
								<label for="city">도시 </label>
								<!-- Action에서 얻어온 cityList를  select의 option으로 추가시키고,
									 이미 City를 선택한 상황이라면 Action에서 얻어온 code_city와 일치하는지 확인 후 selected 표시
									 그리고 onchange를 이용하여 페이지 이동 및 Action으로 값(현재 클릭,select한 code_nation,code_city)을 넘겨줌 -->
								<select class="form-control" id="city" onchange="location.href='tourCity.do?code_nation=${code_nation }&code_city='+this.value">
									<option value="null">선택</option>
									<c:forEach var="city" items="${cityList}">
										<c:if test="${code_city== city.code_city}">
											<option value="${city.code_city }" selected> ${city.name}</option>
										</c:if>
										<c:if test="${code_city!= city.code_city}">
											<option value="${city.code_city }"> ${city.name}</option>
										</c:if>
									</c:forEach>
								</select><!-- /#city -->
							</form><!-- /.form-inline -->
						</div><!-- /col-lg-3 col-md-4 col-sm-4 col-xs-12-->
					</div><!-- /.row -->
				</div><!-- /.sub-container -->
				
				<div class="sub-container"><!-- 도시를 선택하면 추가되는 것 정보(이름,이미지,설명) -->
					<c:if test="${city.name!=null}">
						<h2 class="tour_title"><img src="bar.png" width="7"/>&nbsp; ${city.name }</h2><!-- 도시명 -->
						<div class="tour_image" align="center">
							<img src="../custom/image/city/${city.code_city }.png" width="1000"><!-- 도시이미지 -->
						</div>
						<div class="tour_description">${city.description }</div><!-- 도시설명 -->
					</c:if>
				</div><!-- /.sub-container -->
			</div><!-- /.sub-main -->
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