<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" import="com.wellbroad.db.beans.board.BoardDAO"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
     request.setCharacterEncoding("utf-8");//한글
     //BoardDTO->Setter Method호출(5개)+hidden(2개)->7개
%>
<%
	System.out.println("NotiecUpdatePro.jsp 실행!!");
%>
<c:if test="${check==1}">
	<meta http-equiv="Refresh" content="0;url=noticeList.do?pageNum=${pageNum}">
		<%
	System.out.println("NotiecUpdatePro.jsp 실행~~~~~!!");
%>
</c:if>
<c:if test="${check==0}">
<script>
	alert("비밀번호가 맞지않습니다.\n다시 확인요망!!")
	history.go(-1);//history.back()
</script>
</c:if>
