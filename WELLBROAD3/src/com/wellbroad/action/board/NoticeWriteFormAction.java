package com.wellbroad.action.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.wellbroad.action.controller.BaseAction;
//  /writeForm.do
public class NoticeWriteFormAction implements BaseAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		// TODO Auto-generated method stub
		
	      //list.do(글쓰기)->신규글, content.jsp(글상세보기)->답변글쓰기->답변글
	    int num=0;
	     //content.do에서 num이하가 넘어오는 경우라면
	    if(request.getParameter("num")!=null){ //1이상
	    	num=Integer.parseInt(request.getParameter("num"));
	    	System.out.println("content.jsp에서 넘어온 매개변수값을 확인");
	    	System.out.println("num="+num);
	    }
	    
	    //2.액션클래스가 처리한 결과->request저장->페이지 이동
	    request.setAttribute("num", num); //${num}
	    
	    //3.return 경로포함해서 이동할 페이지명
		return "/board/noticeWriteForm.jsp";
	}

}
