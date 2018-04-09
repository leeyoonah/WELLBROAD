package com.wellbroad.db.beans.login;

import com.wellbroad.db.connection.DBConnectionManager;
import java.sql.*;

public class LoginDAO {
//1.연결하고자하는 클래스 객체 선언
   private DBConnectionManager pool = null;
   
//2.생성자 (연결하고자하는 클래스객체 생성)
   public LoginDAO() {
      try {
         pool=DBConnectionManager.getInstance();
         System.out.println("pool = "+pool);
      } catch(Exception e) {
         System.out.println("DBConnectable error = "+e);
      }
   }
   
//3.login 관련 메소드
   //3-1. member/admin 로그인 (메소드명 마음에 안듦;;;;) d
   public boolean loginWhoever(String id, String password) {
      Connection conn=null;
      PreparedStatement pstmt=null;
      ResultSet rs=null;
      String sql="";
      boolean logincheck=false; //로그인 성공
      
      System.out.println(id+","+password);
      try {
         conn=pool.getConnection();
         sql="select id, password from member where id=? and password=?";
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1, id);
         pstmt.setString(2, password);
         rs=pstmt.executeQuery();
         logincheck=rs.next();
         System.out.println(logincheck);
      }catch (Exception e) {
         System.out.println("loginWhoever() error");
         e.printStackTrace();
      }finally {
         pool.freeConnection(conn,pstmt,rs);
      }      
      return logincheck;
   }
   
   public boolean loginAdmin(String id, String password) {
        Connection conn=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
        String sql="";
        boolean logincheck=false; //로그인 성공
        
        System.out.println(id+","+password);
        try {
            conn=pool.getConnection();
            sql="select id, password from admin where id=? and password=?";
            pstmt=conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs=pstmt.executeQuery();
            logincheck=rs.next();
            System.out.println(logincheck);
        }catch (Exception e) {
            System.out.println("loginAdmin() error");
            e.printStackTrace();
        }finally {
            pool.freeConnection(conn,pstmt,rs);
        }       
        return logincheck;
    }
   //3-2. ID찾기 findMyId
   //3-3. 비밀번호찾기 findMyPassword
}