package com.wellbroad.db.beans.myroute;

import com.wellbroad.db.connection.DBConnectionManager;

public class MyRouteDAO {
//1.�����ϰ����ϴ� Ŭ���� ��ü ����
	private DBConnectionManager pool = null;
	
//2.������ (�����ϰ����ϴ� Ŭ������ü ����)
	public MyRouteDAO() {
		try {
			pool=DBConnectionManager.getInstance();
			System.out.println("pool = "+pool);
		} catch(Exception e) {
			System.out.println("DBConnectable error = "+e);
		}
	}
	
//3.MyRoute ���� �޼ҵ�
	//3-1. MyRoute ��� �������� getMyRouteCourseList
	//3-2. MyRoute �ڽ�1(�Ǵ�2�Ǵ�3) �������� getMyRouteCourse
	//3-3. MyRoute ���̺� �ڽ� �߰� addMyRouteCourse
	//3-4. MyRoute ���̺� �ڽ� ���� editMyRouteCourse
	//3-5. MyRoute ���̺� �ڽ� ���� removeMyRouteCourse
	
//4.MyRoutePast ���� �޼ҵ� (MyRoutePast�� ���°� ���� ������ ���� MyRoutePastDTO ���� �� ����)
	//=>�Խ���ó�� �Ѹ�����=>�Ҳ��߿� ���� =>���� ���� �� �ص� ��
}
