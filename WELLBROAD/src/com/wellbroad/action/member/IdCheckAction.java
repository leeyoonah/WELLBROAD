package com.wellbroad.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wellbroad.action.controller.BaseAction;
import com.wellbroad.db.beans.member.MemberDAO;

public class IdCheckAction implements BaseAction{

    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse resonpse) throws Throwable {
        //script.js->idCheck(id)->IdCheck.jsp?mem_id='nup'
        String id=request.getParameter("id");
        System.out.println("IdCheckAction 에 전달된 id=>"+id);//null
        //DB접속 
        MemberDAO memMgr=new MemberDAO();
        boolean check=memMgr.checkDuplicationId(id);
        System.out.println("IdCheck.jsp의 check=>"+check);
        request.setAttribute("id",id);
        request.setAttribute("check", check);
        return "IdCheck.jsp";
    }

}
