<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>WELLBROAD</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Colored Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
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
/* ------------------------ main ------------------------ */
.main{ 
	display : inline-block;
	width :100%;
	height:100%;  
	overflow: scroll;
}
#header{
	position : relative;
	width:100%;  
	height:139px;	
}
#sub{
	display : inline-block;
	position : relative;
	width:100%;
	height:100%;
	background-color:#eee;
	text-align:center;
}
.sub-menu{
	display : inline-block;	
	width:500px;	
}
.footer{
	position:relative;
}
/* ----------button------------ */
.form-inline{
	color:black !important;
}
#btnrow div button {
	font-size:8pt;
}

/* ----------table------------ */

#tableAlign{
	text-align : center !important;
	margin-top:10px;
}

#table{
	margin:0 auto;
	width:500px
}
.table-heading{
	color:black !important;
}

#table thead tr th {
	background: #5fd7ba;
}

#haveToAlign{
	width:500px;
	display : inline-block;
}

#list {
	float: left;
}

#btnlist {
	float:right;
}
/* ------------------------admin으로 로그인해서 side.jsp 추가되었을 때 ------------------------ */
.admin-main {
	padding-left:90px;
	padding-right:60px;
}

</style>
<script src="${pageContext.request.contextPath}/adminpage_template/js/jquery2.0.3.min.js"></script>
<script src="${pageContext.request.contextPath}/adminpage_template/js/modernizr.js"></script>
<script src="${pageContext.request.contextPath}/adminpage_template/js/jquery.cookie.js"></script>
<script src="${pageContext.request.contextPath}/adminpage_template/js/screenfull.js"></script>
<!-- <script>
	$(function () {
		$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

		if (!screenfull.enabled) {
			return false;
		}

		$('#toggle').click(function () {
			screenfull.toggle($('#container')[0]);
		});	
	});
</script> -->
<!-- tables -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/adminpage_template/css/table-style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/adminpage_template/css/basictable.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/adminpage_template/js/jquery.basictable.min.js"></script>

</head>
<body class="dashboard-page">
	<div class="main">
		<!-- ADMIN -->
		<div id="side"><jsp:include page="../admin/side.jsp"></jsp:include></div><!-- /#side -->
		
		<!-- Home -->
		<div id="header">
			<div class="top"><jsp:include page="../main/top.jsp"></jsp:include></div>
		</div><!-- /#header -->
		
		<!-- 본격적으로 custom한 페이지구현 -->
		<div class="sub" id="sub">
			<div class="main-grid">
				<div class="agile-grids">					
					<div class="table-heading"><h2>[ 도시 정보 ]</h2></div>
					<div class="sub-menu">
						<form class="form-inline" id="sub-menu-nation"><!-- label과 select를 묶기 위한 form태그 -->
							<label for="nation">국가 </label>
							<!-- Action에서 얻어온 nationList를  select의 option으로 추가시키고,
								 이미 nation을 선택한 상황이라면 Action에서 얻어온 code_nation과 일치하는지 확인 후 selected 표시
								 그리고 onchange를 이용하여 페이지 이동 및 Action으로 값(현재 클릭,select한 code_nation)을 넘겨줌 -->
							<select class="form-control" id="nation" onchange="location.href='adminTourCity.do?code_nation='+this.value">
								<option value="choose">선택</option>
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
						<div class="row" id="btnlist"><!-- : 추가,삭제,수정버튼 정렬을 위한 row -->
					  		<div class="col-sm-4"><button type="button" class="btn col-5 btn-block" onclick="location.href='adminTourCityInsert.do'">추가</button></div>
					  		<div class="col-sm-4"><button type="button" class="btn col-11 btn-block" onclick="deleteCheck()" id="delete">삭제</button></div>
			  			</div><!-- /.row --> 
					</div>
					<%-- <div class="row"><!-- 도시리스트 선택과 버튼들을 정렬하기 위한 row -->
						<div class="col-sm-3 col-md-3">
							<form class="form-inline"><!-- label과 select를 묶기 위한 form태그 -->
								<label for="nation">국가 </label>
								<!-- Action에서 얻어온 nationList를  select의 option으로 추가시키고,
									 이미 nation을 선택한 상황이라면 Action에서 얻어온 code_nation과 일치하는지 확인 후 selected 표시
									 그리고 onchange를 이용하여 페이지 이동 및 Action으로 값(현재 클릭,select한 code_nation)을 넘겨줌 -->
								<select class="form-control" id="nation" onchange="location.href='adminTourCity.do?code_nation='+this.value">
									<option value="choose">선택</option>
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
						</div><!-- /.col-sm-3 -->
						<div class="col-sm-4 col-sm-offset-5 col-md-3 col-md-offset-6"> 
				  			<div class="row" id="btnrow"><!-- : 추가,삭제,수정버튼 정렬을 위한 row -->
						  		<div class="col-sm-4"><button type="button" class="btn col-5 btn-block" onclick="location.href='adminTourCityInsert.do'">추가</button></div>
						  		<div class="col-sm-4"><button type="button" class="btn col-11 btn-block" onclick="location.href='adminTourCityInsert.do'">수정</button></div>
						  		<div class="col-sm-4"><button type="button" class="btn col-23 btn-block">삭제</button></div>
				  			</div><!-- /.row -->
				  		</div><!-- /.col-sm-3 col-sm-offset-6 -->
				  	</div><!-- /.row --> --%>
					  	
					<!-- 도시정보 -->
					<div class="agile-tables" id="tableAlign">
<!-- 국가리스트와 버튼을 어디에 위치시킬지 고민 -->
<%-- 						<div id="haveToAlign">
							<form class="form-inline" id="list"><!-- label과 select를 묶기 위한 form태그 -->
								<label for="nation">국가 </label>
									<!-- Action에서 얻어온 nationList를  select의 option으로 추가시키고,
										 이미 nation을 선택한 상황이라면 Action에서 얻어온 code_nation과 일치하는지 확인 후 selected 표시
										 그리고 onchange를 이용하여 페이지 이동 및 Action으로 값(현재 클릭,select한 code_nation)을 넘겨줌 -->
								<select class="form-control" id="nation" onchange="location.href='adminTourCity.do?code_nation='+this.value">
									<option value="choose">선택</option>
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
								<div class="row" id="btnlist"><!-- : 추가,삭제,수정버튼 정렬을 위한 row -->
							  		<div class="col-sm-4"><button type="button" class="btn col-5 btn-block" onclick="location.href='adminTourCityInsert.do'">추가</button></div>
							  		<div class="col-sm-4"><button type="button" class="btn col-11 btn-block" onclick="deleteCheck()" id="delete">삭제</button></div>
					  			</div><!-- /.row -->
						</div><!-- /#haveToAlign --> --%>
						<div class="w3l-table-info">
						    <table id="table">
								<thead>
								  <tr height="42">
								  	<th width="75"></th>
									<th>도시코드</th>
									<th>도시명</th>
								  </tr>
								</thead>
								<tbody>
								  <c:forEach var="city" items="${cityList}">
								 <tr height="42">
								  	<td width="75"><%-- <input type="checkbox" name="checkRow" id="checkRow" value="${city.code_city}"/> --%></td>
									<td> <a href="adminTourCityDetail.do?code_city=${city.code_city}">${city.code_city }</a></td>
									<td>${city.name }</td>
								  </tr>
								  </c:forEach>
								</tbody>
						    </table>
						</div><!-- /.w3l-table-info -->
					</div><!-- /.agile-tables -->
				</div><!-- /.agile-grids -->
			</div><!-- /.main-grid -->
			
		</div><!-- /#sub -->
				<div class="footer">
			<p>© 2016 Colored . All Rights Reserved . Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
	</div><!-- /.main -->

	<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/adminpage_template/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/adminpage_template/js/proton.js"></script>
<script type="text/javascript">
$(function() {
	$('.topJSP nav.navbar.navbar-default').css({'left':'60px','z-index':'5'});
	$('.main #side').css('z-index','10');
	$('.main #sub').css({'padding-left':'110px','padding-right':'60px'});
	//for(i=0;i<'${count}';i++) $('#table tbody tr:eq('+i+') td:eq(0) #checkRow').hide();
});

var isDeleteCheck=false;
/* 체크박스 생성, 삭제 */
function deleteCheck(){
	isDeleteCheck=!isDeleteCheck;	
	if(isDeleteCheck) { 
		//삭제 -> 취소으로 바꾸고, 체크박스 생성 
		$('#delete').html('취소');
		$('#table thead tr th:eq(0)').html('<input type="checkbox" name="checkAll" id="checkAll" onclick="checkAll();"/>');

		// for(i=0;i<'${count}';i++) $('#table tbody tr:eq('+i+') td:eq(0) #checkRow').show();
		for(i=0;i<'${count}';i++) $('#table tbody tr:eq('+i+') td:eq(0)').html('<input type="checkbox" name="checkRow" id="checkRow" value="'+i+'"/>');
		$('<button type="button" class="btn btn-sm btn-block col-1" id="confirm" onclick="deleteAction()">확인</button>').css('margin-top','30').appendTo('#table');
	}
	else {
		//취소-> 삭제로 바꾸고, 체크박스 삭제
		$('#delete').html('삭제');
		$('#table thead tr th:eq(0)').html('');
		//for(i=0;i<'${count}';i++) $('#table tbody tr:eq('+i+') td:eq(0) #checkRow').hide();
		for(i=0;i<'${count}';i++) $('#table tbody tr:eq('+i+') td:eq(0)').html('');
		$('#confirm').remove();
	}
}

/* 체크박스 전체선택, 전체해제 */
function checkAll(){
      if( $("#checkAll").is(':checked') ){
        $("input[name=checkRow]").prop("checked", true);
      }else{
        $("input[name=checkRow]").prop("checked", false);
      }
}

/* 삭제(체크박스된 것 전부) */
function deleteAction(){  
	var checkRow = "";
	$( "input[name='checkRow']:checked" ).each (function (){
		checkRow = checkRow + $('#table tbody tr:eq('+$(this).val()+') td:eq(1)').text()+"," ;
	}); 
	checkRow = checkRow.substring(0,checkRow.lastIndexOf(",")); //맨끝 콤마 지우기
	
	if(checkRow == ''){
	  alert("삭제할 대상을 선택하세요.");
	  return false;
	}
	console.log("### checkRow => {}"+checkRow);
	
	if(confirm("정보를 삭제 하시겠습니까?("+checkRow+")")){
	    location.href="adminTourCityDeletePro.do?code_cityArr="+checkRow;      
	}
}
</script>
</body>
</html>
