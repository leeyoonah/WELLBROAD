<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.wellbroad.db.beans.member.MemberDTO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    ArrayList<MemberDTO> memberList = (ArrayList<MemberDTO>) request.getAttribute("memberList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="../Euro-Travels-master/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="../Euro-Travels-master/assets/css/ionicons.min.css">
<link rel="stylesheet"
	href="../Euro-Travels-master/assets/css/owl.carousel.css">
<link rel="stylesheet"
	href="../Euro-Travels-master/assets/css/owl.theme.css">
</head>
<style>
.tr_info {
	font-weight: bold;
}
</style>
<body>
	<table border="1" cellspacing="0" cellpadding="2" align="center"
		class="table table-striped table-bordered table-hover">
		<tr class="tr_info">
			<td>아이디</td>
			<td>비밀번호</td>
			<td>이름</td>
			<td>생일</td>
			<td>성별</td>
			<td>메일</td>
			<td>메일수신동의</td>
			<td>핸드폰</td>
		</tr>
		<tr>
			<td></td>
		</tr>
		<%
		    for (MemberDTO member : memberList) {
		%>
		<tr>
			<td><%=member.getId()%></td>
			<td><%=member.getPassword()%></td>
			<td><%=member.getName()%></td>
			<td><%=member.getBirth()%></td>
			<%
			    if (member.getGender().equals("m")) {
			%>
			<td>남자</td>
			<%
			    } else {
			%>
			<td>여자</td>
			<%
			    }
			%>
			<td><%=member.getMail()%></td>
			<td><%=member.getMailagree()%></td>
			<td><%=member.getPhone()%></td>
		</tr>
		<%
		    }
		%>
	</table>
</body>
</html>