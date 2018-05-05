<%@ page contentType="text/html;charset=UTF-8"%>
<%
  //Register.jsp->RegisterProc.jsp
   request.setCharacterEncoding("utf-8");//한글처리
   //방법1) 단순히 앞에서 입력받은값을 출력목적
   //String id=request.getParameter("id");
   //String password=request.getParameter("password");
   //,,,,
   //방법2) 앞에서 입력한 값을 DTO클래스의 멤버변수에 각각 저장이 가능
   /*
     memberberDTO member=new memberberDTO();
       member.setid(request.getParameter("id"));->id->getid
       ,,,
   */
%>
<jsp:useBean id="member"  class="com.wellbroad.db.beans.member.MemberDTO" scope="page" />
<jsp:setProperty name="member" property="*" />

<html>
<head>
<title>회원가입 확인</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js?ver=2"></script>
</head>
<body >
<br><br>
<table align="center" border="0" cellspacing="0" cellpadding="5" >
  <tr> 
    <td align="center" valign="middle"> 
        <form name="regForm" method="post" action="MemberInsert.do">
      <table  cellspacing="0" cellpadding="2"  align="center">
          <tr align="center"> 
            <td colspan="3"><font color="#FFFFFF">
            <b><!-- member.getname() -->
              <jsp:getProperty name="member" property="name" />
               회원님이 작성하신 내용입니다. 확인해주세요
            </b></font></td>
          </tr>
          <tr> 
            <td width="16%">아이디</td>
            <td width="57%"> 
            <input type="text" name="id"  
            value="<jsp:getProperty name="member" property="id" />">
		    </td>
          </tr>
          <tr> 
            <td>패스워드</td>
            <td> <input type="password" name="password"  
            value="<jsp:getProperty name="member" property="password" />">
         </td>
          </tr>
          <tr> 
            <td>이름</td>
            <td> <input type="text" name="name" 
            value="<jsp:getProperty name="member" property="name" />"> </td>
          </tr>
          <tr> 
            <td>생년월일</td>
            <td> <input type="text" name="birth" 
            value="<jsp:getProperty name="member" property="birth" />"> </td>
          </tr>
          <tr> 
            <td>성별</td>
            <td> <input type="text" name="gender" 
            value="<jsp:getProperty name="member" property="gender" />"> </td>
          </tr>
          <tr> 
            <td>이메일</td>
            <td> <input type="text" name="mail" 
            value="<jsp:getProperty name="member" property="mail" />"> </td>
          </tr>
          <tr> 
            <td>이메일 수신동의</td>
            <td> <input type="text" name="mailagree" 
            value="<jsp:getProperty name="member" property="mailagree" />"> </td>
          </tr>
          <tr>  
            <td>전화번호</td>
            <td> <input type="text" name="phone" 
            value="<jsp:getProperty name="member" property="phone" />"> </td>
            
          </tr>
		  
          <tr> 
            <td colspan="3" align="center"> 
             <input type="submit" value="확인완료" > 
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             <input type="button" value="다시쓰기" onclick="history.back()"> 
            </td>
          </tr>
      </table>
        </form>
    </td>
  </tr>
</table>
</body>
</html>
