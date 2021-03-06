package com.wellbroad.action.controller;

import javax.servlet.http.*; //HttpServletRequest, HttpServletResponse

/* 웹상에서 요청이 들어올 때마다 공통으로 처리해주는 추상메서드 선언 */
public interface BaseAction {
	//이동할 페이지의 경로와 페이지명이 필요(반환) -> ModelAndView(스프링)
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable;
}