package com.wellbroad.action.main;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wellbroad.action.controller.BaseAction;

// /mainPage.do ��û�� ������ �� ó�����ִ� �׼�Ŭ����
public class MainpageAction implements BaseAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse resonpse) throws Throwable {

		//3.������ view�� �̵�
		return "/main/mainpage.jsp";
	}
}
