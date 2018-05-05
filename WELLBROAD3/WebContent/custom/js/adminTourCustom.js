/**
 * 
 */
function insertCheck(){
	if(document.tourCityInsertForm.code_nation.value=='choose'){
		alert("국가를 선택하세요.");
		return;//return false;
	}
	if(document.tourCityInsertForm.code_city.value==""){
		alert("도시코드를 입력하세요.");
		document.tourCityInsertForm.code_city.focus();
		return;
	}
	if(document.tourCityInsertForm.name.value==""){
		alert("도시명을 입력하세요.");
		document.tourCityInsertForm.name.focus();
		return;
	}
	if(document.tourCityInsertForm.name.value==""){
		alert("도시명을 입력하세요.");
		document.tourCityInsertForm.name.focus();
		return;
	}
	document.tourCityInsertForm.submit();
}

//중복코드체크 해주는 자바스크립트함수 선언
function checkCode_City(){
	if(document.tourCityInsertForm.code_city.value==""){
		alert("도시코드를 입력하세요.");
		document.tourCityInsertForm.code_city.focus();
		return;
	}
	else{
		url="adminTourCityCheck.do?code_city="+document.tourCityInsertForm.code_city.value
		window.open(url,"post","left=450,top=150,width=300,height=150")
	}
}