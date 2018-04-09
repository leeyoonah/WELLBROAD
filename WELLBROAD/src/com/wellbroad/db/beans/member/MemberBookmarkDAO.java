package com.wellbroad.db.beans.member;

import com.wellbroad.db.connection.DBConnectionManager;

public class MemberBookmarkDAO {
//1.�����ϰ����ϴ� Ŭ���� ��ü ����
	private DBConnectionManager pool = null;
	
//2.������ (�����ϰ����ϴ� Ŭ������ü ����)
	public MemberBookmarkDAO() {
		try {
			pool=DBConnectionManager.getInstance();
			System.out.println("pool = "+pool);
		} catch(Exception e) {
			System.out.println("DBConnectable error = "+e);
		}
	}
		
//3~4.Bookmark ���� �޼ҵ� =>�� ������ �޼������ �������ٸ� ������������ ������ (����¡ó���Ұ;��� �ִ� 10�� �� ������)
	//3-1. ��ü ���ڵ� �� ��ȯ : getBookmarkCount
	//3-2. �۸�� ���⿡ ���� �޼��� ����(����) : getBookmarkRange
	//4-1. �ϸ�ũ�߰�(�����ı�Խ��ǿ���Ŭ����) : addBookmark
	//4-2. �ϸ�ũŬ���� : enterBookmark
	//4-3. �ϸ�ũ���� : removeBookmark
}
