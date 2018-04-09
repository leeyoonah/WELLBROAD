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
.header{ 
   display : inline-block;
   width :100%;
   height:100%;  
}
.top{
   position : relative;
   width:100%;
   height:148px;   
}
section.section-background{
   position : relative;
   width:100%;
   height:100%; 
}
#sub{
   position : relative;
   width:100%;
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
             <link rel="stylesheet" href="../custom/css/memberCustom.css">
         <!-- Section Background -->
         <section class="section-background">
            <div class="container">
               <h2 class="page-header">My page<div class="sub-menu"></div></h2><!-- Mypage클릭시 보이는 타이틀 -->
               <ol class="breadcrumb"><!-- 마이페이지 내의 메뉴바 같은 느낌  -->
                  <li><a href="../main/mainpage.do">Home</a></li>
                  <li><a href="Mypage.do">mypage</a></li>
                  <li class="active">&nbsp;my info</li>
               </ol>
            </div> <!-- /.container -->
         </section> <!-- /.section-background -->
      </div><!-- /#header -->
      
      <!-- 본격적으로 custom한 페이지구현 -->
      <div class="sub" id="sub">
         <div class="sub-menu"><!-- 왼쪽 메뉴 -->
            <ul class="nav navbar-nav">
               <li class="active"><a href="MemberUpdate.do">내정보수정</a></li>
               <li><a href="Bookmark.do">북마크</a></li>
            </ul><!-- /.nav -->
         </div><!-- /.sub-menu -->
         
         <div class="sub-main">
         <br><br>
         <form name="regForm" method="post" action="MemberUpdatePro.do">
               <table border="1" cellspacing="0" cellpadding="2" align="center" class="table table-striped table-bordered table-hover">
                  <tr align="center">
                     <td colspan="3"><b>회원 수정</b></td>
                  </tr>
                  <tr>
                     <td width="40%">아이디</td>
                     <td width="60%">
                        <!-- input box에 들어가 있는 데이터가 아니기때문에 id값을 전달X -->
                        ${member.id}
                     </td>
                  </tr>
                  <tr>
                     <td>패스워드</td>
                     <td><input type="password" name="password" size="15" value="${member.password}" placeholder="비밀번호 입력하세요.">
                     </td>
                  </tr>

                  <tr>
                     <td>이름</td>
                     <td>${member.name}</td>
                  </tr>
                  <tr>
                     <td>생년월일</td>
                     <td>${member.birth}</td>
                  </tr>
                  <tr>
                     <td>성별</td>
                     <c:if test="${member.gender == 'm'}">
                     <td>남자</td>
                     </c:if>
                     <c:if test="${member.gender == 'f'}">
                     <td>여자</td>
                     </c:if>
                  </tr>
                  <tr>
                     <td>메일</td>
                     <td><input type="text" name="mail" size="27" value="${member.mail}" placeholder="메일을 입력하세요."></td>
                  </tr>
                  <tr>
                     <td>메일수신동의</td>
                     <td><input type="checkbox" name="mailagree" size="20" value="${member.mailagree}">메일수신동의</td>
                  </tr>
                  <tr>
                     <td>전화번호</td>
                     <td><input type="text" name="phone" size="20"
                        value="${member.phone}"></td>
                  </tr>
                  <tr>
                     <td colspan="3" align="center">
                     <input type="submit" class="btn btn-info" value="수정완료"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                     <input type="reset" class="btn btn-info" value="다시쓰기"> &nbsp;
                     <input type="button" class="btn btn-info" value="수정취소" onclick="history.back()"></td>
                  </tr>
                  <!-- form태그 내부에 위치에 상관없이 hidden객체를 이용해서 전달  -->
               </table>
                  <input type="hidden" name="id" value="${member.id}">
                  <input type="hidden" name="name" value="${member.name}">
                  <input type="hidden" name="birth" value="${member.birth}">
                  <input type="hidden" name="gender" value="${member.gender}">
            </form>
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
   if (<%=session.getAttribute("login")%>!= null) {
      $.ajax({url:"../admin/side.jsp",
         success:function(result) {
            $('.main #side').html(result).scrollTop(0);
         }
      });
      $('.topJSP nav.navbar.navbar-default').css({'left':'60px','z-index':'5'});
      $('.main #side').css('z-index','10');
      $('.main #sub').addClass('admin-main');
   } else {
      $('nav.navbar.navbar-default').css('left','0px');
      $('.topJSP nav.navbar.navbar-default').css({'left':'0px'});
      $('.main #sub').removeClass('admin-main');
   }// if
});

var check = $('input:checkbox[name="mailagree"]').val();
$(function(){
	if(check == 'Y' || check == '1'){
	$('input:checkbox[name="mailagree"]').attr("checked",true)
	}
})

</script>
</body>
</html>