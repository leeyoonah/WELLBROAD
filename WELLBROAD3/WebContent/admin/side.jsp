<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.io.*,com.wellbroad.db.beans.myroute.*,java.util.*" %>
    	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<meta name="viewport" content="width=device-width, initial-scale = 1.0, maximum-scale=1.0, user-scalable=no"/>



<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- bootstrap-css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/adminpage_template/css/bootstrap.css">
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/adminpage_template/css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/adminpage_template/css/font.css" type="text/css"/>
<link href="${pageContext.request.contextPath}/adminpage_template/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <style>

   .header-upper{
    	   margin-top: 10px;
      float:right;
      	   margin-right:-30px;
   }
   .header-upper-menu {
      color:gray;
      margin-right:20px;
   }
    ul.nav.navbar-nav.navbar-right {
   	 
   	   margin-right:-100px;
   }
   
     ul.nav.navbar-nav.navbar-right li{
   	   margin-top: 65px;
   	 
   }
   
   ul.nav.navbar-nav.navbar-right li a{
    
    
	font-size: 20px;
	font-weight: normal;
	color:#18d5d1;
}
  nav.navbar.navbar-default{
     background-color:white !important;
  }

.header{
	margin-left:80px;
}
   </style>

	<title>WELLBROAD</title>
</head>
<body>
  	<nav class="main-menu">
		<ul>
			<!-- MAIN -->
			<li>
				<a href="../main/mainpage.do?id='admin'">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					ADMIN
					</span>
				</a>
			</li>
			<!-- 여행정보 -->
			<li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-list-ul" aria-hidden="true"></i>
					<span class="nav-text">TOUR</span>
					<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li><a class="subnav-text" href="../tour/tourMain.do">국가</a></li>
					<li><a class="subnav-text" href="../admin/adminTourCity.do">도시</a></li>
					<li><a class="subnav-text" href="">관광</a></li>
					<li><a class="subnav-text" href="">숙소</a></li>
					<li><a class="subnav-text" href="">음식</a></li>
				</ul>
			</li>
			
			<li class="memberList">
				<a href="javascript:;">
					<i class="fa fa-list-ul" aria-hidden="true"></i>
					<span class="nav-text">회원목록</span>
					<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li><a class="subnav-text" href="adminMemberList.do">회원목록 보기</a></li>
				</ul>
			</li>
			
			<!-- <li>
				<a href="../main/mainpage.do">
					<i class="fa fa-home nav_icon"></i>
					<span class="nav-text">
					ADMIN
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-cogs" aria-hidden="true"></i>
				<span class="nav-text">
					UI Components
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
					<a class="subnav-text" href="buttons.html">
					Buttons
					</a>
					</li>
					<li>
					<a class="subnav-text" href="grids.html">
					Grids
					</a>
					</li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
				<i class="fa fa-check-square-o nav_icon"></i>
				<span class="nav-text">
				Forms
				</span>
				<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="inputs.html">Inputs</a>
					</li>
					<li>
						<a class="subnav-text" href="validation.html">Form Validation</a>
					</li>
				</ul>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-file-text-o nav_icon"></i>
						<span class="nav-text">Pages</span>
					<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="gallery.html">
							Image Gallery
						</a>
					</li>
					<li>
						<a class="subnav-text" href="calendar.html">
							Calendar
						</a>
					</li>
					<li>
						<a class="subnav-text" href="signup.html">
							Sign Up Page
						</a>
					</li>
					<li>
						<a class="subnav-text" href="login.html">
							Login Page
						</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="charts.html">
					<i class="fa fa-bar-chart nav_icon"></i>
					<span class="nav-text">
						Charts
					</span>
				</a>
			</li>
			<li>
				<a href="typography.html">
					<i class="icon-font nav-icon"></i>
					<span class="nav-text">
					Typography
					</span>
				</a>
			</li>
			<li>
				<a href="tables.html">
					<i class="icon-table nav-icon"></i>
					<span class="nav-text">
					Tables
					</span>
				</a>
			</li>
			<li>
				<a href="maps.html">
					<i class="fa fa-map-marker" aria-hidden="true"></i>
					<span class="nav-text">
					Maps
					</span>
				</a>
			</li>
			<li>
				<a href="error.html">
					<i class="fa fa-exclamation-triangle" aria-hidden="true"></i>
					<span class="nav-text">
					Error Page
					</span>
				</a>
			</li>
			<li class="has-subnav">
				<a href="javascript:;">
					<i class="fa fa-list-ul" aria-hidden="true"></i>
					<span class="nav-text">Extras</span>
					<i class="icon-angle-right"></i><i class="icon-angle-down"></i>
				</a>
				<ul>
					<li>
						<a class="subnav-text" href="faq.html">FAQ</a>
					</li>
					<li>
						<a class="subnav-text" href="blank.html">Blank Page</a>
					</li>
				</ul>
			</li> -->
		</ul>
	</nav>
	
<script type="text/javascript" src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/adminpage_template/js/jquery2.0.3.min.js"></script>
<script src="${pageContext.request.contextPath}/adminpage_template/js/modernizr.js"></script>
<script src="${pageContext.request.contextPath}/adminpage_template/js/jquery.cookie.js"></script>
<script src="${pageContext.request.contextPath}/adminpage_template/js/screenfull.js"></script>
	

	
</body>
</html>