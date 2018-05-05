package com.wellbroad.db.beans.member;

import com.wellbroad.db.connection.DBConnectionManager;

public class MemberBookmarkDAO {
//1.연결하고자하는 클래스 객체 선언
	private DBConnectionManager pool = null;
	
//2.생성자 (연결하고자하는 클래스객체 생성)
	public MemberBookmarkDAO() {
		try {
			pool=DBConnectionManager.getInstance();
			System.out.println("pool = "+pool);
		} catch(Exception e) {
			System.out.println("DBConnectable error = "+e);
		}
	}
		
//3~4.Bookmark 관련 메소드 =>더 괜찮은 메서드명이 생각난다면 변경해줬으면 좋겠음 (페이징처리할것없이 최대 10개 다 보여줌)
	//3-1. 전체 레코드 수 반환 : getBookmarkCount
	//3-2. 글목록 보기에 대한 메서드 구현(범위) : getBookmarkRange
	//4-1. 북마크추가(여행후기게시판에서클릭시) : addBookmark
	//4-2. 북마크클릭시 : enterBookmark
	//4-3. 북마크삭제 : removeBookmark
}
