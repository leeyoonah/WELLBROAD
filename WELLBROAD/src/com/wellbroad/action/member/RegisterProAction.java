package com.wellbroad.action.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wellbroad.action.controller.BaseAction;
import com.wellbroad.db.beans.member.MemberDAO;
import com.wellbroad.db.beans.member.MemberDTO;

public class RegisterProAction implements BaseAction{
    
    @Override
    public String requestPro(HttpServletRequest request, HttpServletResponse resonpse) throws Throwable {
        request.setCharacterEncoding("UTF-8");
        
        MemberDTO member = new MemberDTO();
        
        member.setId(request.getParameter("id"));
        member.setPassword(request.getParameter("password"));
        member.setName(request.getParameter("name"));
        member.setBirth(request.getParameter("birth"));
        member.setGender(request.getParameter("gender"));
        member.setMail(request.getParameter("mail"));
        member.setMailagree(request.getParameter("mailagree"));
        System.out.println("RegisterProAction의 mailagree 값 : "+member.getMailagree());
        member.setPhone(request.getParameter("phone"));
        System.out.println("member.getId() : "+member.getId());
        
        request.setAttribute("member", member);

        return "RegisterPro.jsp";
    }
    
}
