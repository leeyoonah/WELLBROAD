package com.wellbroad.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wellbroad.action.controller.BaseAction;

// /mainPage.do 요청이 들어왔을 때 처리해주는 액션클래스response
public class BoardMainAction implements BaseAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		//3.정해진 view로 이동
		return "/board/boardMain.jsp";
	}
}
