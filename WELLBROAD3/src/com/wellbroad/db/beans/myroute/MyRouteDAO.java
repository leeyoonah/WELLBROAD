package com.wellbroad.db.beans.myroute;

import com.wellbroad.db.connection.DBConnectionManager;

public class MyRouteDAO {
//1.연결하고자하는 클래스 객체 선언
	private DBConnectionManager pool = null;
	
//2.생성자 (연결하고자하는 클래스객체 생성)
	public MyRouteDAO() {
		try {
			pool=DBConnectionManager.getInstance();
			System.out.println("pool = "+pool);
		} catch(Exception e) {
			System.out.println("DBConnectable error = "+e);
		}
	}
	
//3.MyRoute 관련 메소드
	//3-1. MyRoute 목록 가져오기 getMyRouteCourseList
	//3-2. MyRoute 코스1(또는2또는3) 가져오기 getMyRouteCourse
	//3-3. MyRoute 테이블에 코스 추가 addMyRouteCourse
	//3-4. MyRoute 테이블에 코스 수정 editMyRouteCourse
	//3-5. MyRoute 테이블에 코스 삭제 removeMyRouteCourse
	
//4.MyRoutePast 관련 메소드 (MyRoutePast와 형태가 같기 때문에 따로 MyRoutePastDTO 생성 안 했음)
	//=>게시판처럼 뿌릴거임=>할꺼야에 존재 =>따라서 개발 안 해도 됨
}
