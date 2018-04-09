<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.wellbroad.db.beans.member.MemberDAO"
	import="com.wellbroad.db.beans.login.LoginDAO"%>%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${check}">
	<%
	   		String id = request.getParameter("id");
	 		session.setAttribute("sUserId", id);
	        System.out.println(session.getAttribute("sUserId"));
	        response.sendRedirect("../main/mainpage.do");
	%>
</c:if>
<c:if test="${!check}">
	<%
	    response.sendRedirect("LogError.do");
	%>
</c:if>

