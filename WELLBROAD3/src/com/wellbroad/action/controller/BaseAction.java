package com.wellbroad.action.controller;

import javax.servlet.http.*; //HttpServletRequest, HttpServletResponse

/* ���󿡼� ��û�� ���� ������ �������� ó�����ִ� �߻�޼��� ���� */
public interface BaseAction {
	//�̵��� �������� ��ο� ���������� �ʿ�(��ȯ) -> ModelAndView(������)
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable;
}