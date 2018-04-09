package com.wellbroad.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.wellbroad.action.controller.BaseAction;
import com.wellbroad.db.beans.board.*;
import java.sql.Timestamp;//시간(추가)

//   /writePro.do?num=?&,,,,,
public class NoticeWriteProAction implements BaseAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
	     request.setCharacterEncoding("utf-8");//한글
	     //BoardDTO->Setter Method호출(5개)+hidden(4개)->9개
	     //BoardDTO article=new BoardDTO();
	     //property="*" =>매개변수로 전달받은 경우에만 적용
         NoticeBoardDTO article=new NoticeBoardDTO();
	     //article.setNum(Integer.parseInt(request.getParameter("num")));
	     article.setAdmin_id(request.getParameter("admin_id"));
	     article.setIp(request.getParameter("ip"));
	     article.setTitle(request.getParameter("title"));
	     article.setContent(request.getParameter("content"));
	     article.setDay(new Timestamp(System.currentTimeMillis()));
	    // System.out.println("writerproaction num값==>>"+request.getParameter("num"));
	     System.out.println("writerproaction Admin_id값==>>"+request.getParameter("admin_id"));
	     System.out.println("writerproaction ip값==>>"+request.getParameter("ip"));
	     System.out.println("writerproaction title값==>>"+request.getParameter("title"));
	     System.out.println("writerproaction content값==>>"+request.getParameter("content"));
	    
	   BoardDAO dbPro=new BoardDAO();
	   dbPro.insertArticleNotice(article);//num=0
	   //String pageNum=request.setAttribute(article);
		//request.setAttribut1e()왜 사용->페이지 이동=>전달할 매개변수가 필요한 경우
	    //에만 코딩
		return "/board/noticeWritePro.jsp";
	}
}
