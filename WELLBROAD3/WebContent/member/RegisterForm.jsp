<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.wellbroad.db.beans.member.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="RegisterProc2.do" method="post">
		아이디 <input type = "text" name="id" placeholder="아이디를 입력하세요." ><br>
		비밀번호 <input type = "password" name="password" placeholder="비밀번호를 입력하세요."><br>
		비밀번호 확인 <input type = "password" name="repassword" placeholder="비밀번호를 입력하세요."><br>
		이름 <input type = "text" name="name" placeholder="이름을 입력하세요."><br>
		성별 <select name="gender">
            	<option>선택</option>
            	<option value="m">남자</option>
            	<option value="f">여자</option>
            </select> <br>
		메일 <input type = "text" name="mail" placeholder="메일을 입력하세요."><br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="mailagree">메일수신동의<br>
		휴대전화 <input type = "text" name="phone" placeholder="전화번호를 입력하세요."><br>
		<input type="submit" value="회원가입"> 
		<input type="button" value="확인"   onclick="inputCheck()"> 
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             <input type="reset" value="다시쓰기"> 
	</form>
</body>
</html>