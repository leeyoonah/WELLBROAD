function loginCheck(){ //Login.jsp
	//document.폼객체명.입력양식객체명.속성명
	if(document.login.id.value==""){
		alert("아이디를 입력해 하십시오.");
		document.login.id.focus();
		return; //return false;
	}
	if(document.login.password.value==""){
		alert("비밀번호를 입력해 하십시오.");
		document.login.password.focus();
		return;	
	}
	//document.폼객체명.submit()->전송하라
	document.login.submit();
}
/* Login.jsp
 * <INPUT TYPE="button" value="회원가입" onclick="memberReg()">
 * <INPUT TYPE="button" value="회원가입" 
 *    onclick="document.location='Register.jsp' ">
 */
function memberReg(){  //버튼클릭->특정페이지로 이동
	//response.sendRedirect(~)->자바
	//document.location.href="경로포함해서 이동할 페이지명" (자바스크립트)
	//document.location="Register.jsp"
//	document.location="agreement.jsp" //Register.jsp로 이동(동의하면)
	document.location="Register.do" //Register.jsp로 이동(동의하면)
}
//회원가입 버튼을 클릭시 호출되는 함수
function inputCheck(){
	if(document.regForm.id.value==""){
		alert("아이디를 입력해 하십시오.");
		document.regForm.id.focus();
		return;//return false;
	}
	
	if(document.regForm.password.value==""){
		alert("비밀번호를 입력해 하십시오.");
		document.regForm.password.focus();
		return;
	}
	if(document.regForm.repassword.value==""){
		alert("비밀번호를 확인해 하십시오");
		document.regForm.repassword.focus();
		return;
	}
	if(document.regForm.name.value==""){
		alert("이름을 입력해 하십시오.");
		document.regForm.name.focus();
		return;
	}
	if(document.regForm.name.value==""){
		alert("이름을 입력해 하십시오.");
		document.regForm.name.focus();
		return;
	}
	if(document.regForm.birth.value==""){
		alert("생년월일을 입력해 하십시오.");
		document.regForm.birth.focus();
		return;
	}
	if(document.regForm.gender.value==""){
		alert("성별을 선택해 하십시오.");
		document.regForm.gender.focus();
		return;
	}
	if(document.regForm.mail.value==""){
		alert("메일을 입력하십시오.");
		document.regForm.mail.focus();
		return;
	}
	
//	if(document.regForm.mailagree.checked){
//		alert("선택 하십시오.");
//		document.regForm.mailagree.focus();
//		return;
//	}
	document.regForm.mailagree.value = document.regForm.mailagree ? 'Y' : 'N';
	
	if(document.regForm.phone.value==""){
		alert("연락처를 입력하십시오.");
		document.regForm.phone.focus();
		return;
	}

	if(document.regForm.password.value != document.regForm.repassword.value){
		alert("비밀번호가 일치하지 않습니다.");
		document.regForm.repassword.focus();
		return;
	}
	if(!document.regForm.agreeCheck.checked){
		alert("약관에 동의하지 않으셨습니다.");
		document.regForm.agreeCheck.focus();
		return;
	}
	
	document.regForm.submit(); //action="RegisterProc.jsp"
}

//중복ID체크 해주는 자바스크립트함수 선언
function idCheck(id){ //id.value
   if(id==""){
	   alert("아이디를  입력하십시오.")
	   document.regForm.id.focus()//document.폼객체명.입력양식.함수명(~)
   }else{ //IdCheck.jsp?매개변수명=전달할값->IdCheck.jsp->checkId(id)
	   //IdCheck.jsp를 요청->매개변수를 전달하는 이유->DB에 접근=>id확인
	   url="IdCheck.do?id="+id
	   window.open(url,"post","left=450,top=150,width=300,height=150")
   }
}

//우편번호를 검색해주는 함수선언->ZipCheck.jsp?check=y
//check=y=> 검색전의 창의 모습을 구분하는 인자(매개변수로 지정하기위해서)
//scrollbars=yes|no(스크롤바), status=yes|no(상태바)
