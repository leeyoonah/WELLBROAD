package com.wellbroad.db.beans.tour;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.wellbroad.db.connection.DBConnectionManager;


public class TourDAO {
//1.연결하고자하는 클래스 객체 선언
	private DBConnectionManager pool = null;
	
//2.생성자 (연결하고자하는 클래스객체 생성)
	public TourDAO() {
		try {
			pool=DBConnectionManager.getInstance();
			System.out.println("pool = "+pool);
		} catch(Exception e) {
			System.out.println("DBConnectable error = "+e);
		}
	}	 
	
//3.TourNation 관련 메소드
	//3-0. TourNation 총 국가 수 getTourNationCount
	public int getTourNationCount() {
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="";
		int nationCount=0; //반환 레코드 수
						
		try {
			conn=pool.getConnection();
			sql="select count(*) from tour_nation";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()) {
				nationCount=rs.getInt(1);
			}
		}catch (Exception e) {
			System.out.println("getTourNationCount() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,stmt,rs);
		}		
		return nationCount;
	}
	
	//3-1. TourNation 국가목록 가져오기 getTourNationList
	public List<TourNationDTO> getTourNationList() {
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="";
		List<TourNationDTO> nationList = new ArrayList();		
		
		try {
			conn=pool.getConnection();
			sql="select * from tour_nation";
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				TourNationDTO nation = new TourNationDTO();
				nation.setCode_nation(rs.getString("code_nation"));
				nation.setName(rs.getString("name"));
				nationList.add(nation);
			}
		}catch (Exception e) {
			System.out.println("getTourNationList() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,stmt,rs);
		}		
		return nationList;
	}
	
	//3-2. TourNation 테이블에 국가 추가(admin) insertTourNation
	public int insertTourNation(TourNationDTO nationToInsert) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="";
		int insertNationCheck=0; //삽입에 성공하면 1, 실패하면 0 반환
		
		try {
			conn=pool.getConnection();
			sql="insert into tour_nation values(?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, nationToInsert.code_nation);
			pstmt.setString(2, nationToInsert.name);
			insertNationCheck=pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("insertTourNation() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}		
		return insertNationCheck;
	}
	
	//3-3. TourNation 테이블에 국가 수정(admin) updateTourNation
	public int updateTourNation(TourNationDTO nationToUpdate) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="";
		int updateNationCheck=0; //수정에 성공하면 1, 실패하면 0 반환
		
		try {
			conn=pool.getConnection();
			sql="update tour_nation set name=?, code_nation=? where code_nation=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, nationToUpdate.name);
			pstmt.setString(2, nationToUpdate.code_nation);
			pstmt.setString(3, nationToUpdate.code_nation);
			updateNationCheck=pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("updateTourNation() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}		
		return updateNationCheck;
	}
	
	//3-4. TourNation 테이블에 국가 삭제(admin) deleteTourNation
	public int deleteTourNation(String code_nation) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="";
		int deleteNationCheck=0; //삭제에 성공하면 1, 실패하면 0 반환
		
		try {
			conn=pool.getConnection();
			sql="delete from tour_nation where code_nation=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, code_nation);
			deleteNationCheck=pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("deleteTourNation() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}		
		return deleteNationCheck;
	}
	
	
//4.TourCity 관련 메소드
	//4-0. TourCity 총 도시 수 getTourCityCount
	public int getTourCityCount(String code_nation) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		int cityCount=0; //반환 레코드 수
						
		try {
			conn=pool.getConnection();
			sql="select count(*) from tour_city where code_nation like '%"+code_nation+"%'";
			pstmt=conn.prepareStatement(sql);
			/*pstmt.setString(1, code_nation);*/
			rs=pstmt.executeQuery();
			if(rs.next()) {
				cityCount=rs.getInt(1);
			}
		}catch (Exception e) {
			System.out.println("getTourCityCount() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}		
		return cityCount;
	}
	
	//4-1. TourCity 도시목록 가져오기 getTourCityList
	public List<TourCityDTO> getTourCityList(String code_nation) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		List<TourCityDTO> cityList = new ArrayList();		
		
		try {
			conn=pool.getConnection();
			sql="select * from tour_city where code_nation like '%"+code_nation+"%'";
			pstmt=conn.prepareStatement(sql);
			/*pstmt.setString(1, code_nation);*/
			rs=pstmt.executeQuery();
			while(rs.next()) {
				TourCityDTO city = new TourCityDTO();
				city.setCode_city(rs.getString("code_city"));
				city.setName(rs.getString("name"));
				city.setCode_nation(code_nation);
				cityList.add(city);
			}
		}catch (Exception e) {
			System.out.println("getTourCityList() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}		
		return cityList;
	}
	
	//4-2. TourCity 도시 가져오기 getTourCity
	public TourCityDTO getTourCity(String code_city) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		TourCityDTO city = new TourCityDTO();		
		
		try {
			conn=pool.getConnection();
			sql="select * from tour_city where code_city like '%"+code_city+"%'";
			pstmt=conn.prepareStatement(sql);
			/*pstmt.setString(1, code_city);*/
			rs=pstmt.executeQuery();
			while(rs.next()) {
				city.setCode_city(rs.getString("code_city"));
				city.setName(rs.getString("name"));
				city.setDescription(rs.getString("description"));
				city.setCode_nation(code_city);
			}
		}catch (Exception e) {
			System.out.println("getTourCity() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}		
		return city;
	}
		
	//4-2. TourCity 테이블에 도시 추가(admin) insertTourCity
	public int insertTourCity(TourCityDTO cityToInsert) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="";
		int insertCityCheck=0; //삽입에 성공하면 1, 실패하면 0 반환
		
		try {
			conn=pool.getConnection();
			sql="insert into tour_city values(?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, cityToInsert.code_city);
			pstmt.setString(2, cityToInsert.name);
			pstmt.setString(3, cityToInsert.code_nation);
			pstmt.setString(4, cityToInsert.description);
			insertCityCheck=pstmt.executeUpdate();
		}catch (Exception e) {
			System.out.println("insertTourCity() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}		
		return insertCityCheck;
	}
	
	
	//4-3. code_city 중복체크
	public boolean checkCode_City(String code_city) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		boolean checkCode_City=true; //중복이면 false, 중복이 아니면 true
		
		try {
			conn=pool.getConnection();
			sql="select code_city from tour_city where code_city=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, code_city);
			rs=pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString("code_city").equals(code_city)) checkCode_City=false;
			}
		}catch (Exception e) {
			System.out.println("checkCode_City() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}		
		return checkCode_City;
	}
	
	
	//4-4. TourCity 테이블에 도시 수정(admin) updateTourCity
	
	//4-5. TourCity 테이블에 도시 삭제(admin) deleteTourCity
	public boolean deleteTourCity(String code_city) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="";
		boolean deleteCityCheck=false; //삭제에 성공하면 1, 실패하면 0 반환
		
		try {
			conn=pool.getConnection();
			sql="delete from tour_city where code_city=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, code_city);
			if(pstmt.executeUpdate()==1) deleteCityCheck=true; 
		}catch (Exception e) {
			System.out.println("deleteTourCity() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt);
		}		
		return deleteCityCheck;
	}
	
	
//5.TourFood/Spot/Stay 관련 메소드
	//5-0. TourFood/Spot/Stay 총 수 getTourCount
	public int getTourCount(String tourType,String code_city) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		int tourCount=0; //반환 레코드 수
						
		try {
			conn=pool.getConnection();
			sql="select count(*) from "+tourType +" where code_city like '%"+code_city+"%'";
			pstmt=conn.prepareStatement(sql);
			/*pstmt.setString(1, code_city);*/
			rs=pstmt.executeQuery();
			if(rs.next()) {
				tourCount=rs.getInt(1);
			}
		}catch (Exception e) {
			System.out.println("getTourCount() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}		
		return tourCount;
	}
	
	//5-1. TourFood/Spot/Stay 목록 가져오기 getTourList
	public List<TourDTO> getTourList(String tourType,String code_city) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		List<TourDTO> tourList = new ArrayList();
		TourDTO tour = null;
		
		try {
			conn=pool.getConnection();
			sql="select * from "+tourType +" where code_city like'%"+code_city+"%'";
			pstmt=conn.prepareStatement(sql);
			/*pstmt.setString(1, code_city);*/
			rs=pstmt.executeQuery();
			while(rs.next()) {
				tour = new TourDTO();
				tour.setCode(rs.getString("code"));
				tour.setName(rs.getString("name"));
				tourList.add(tour);
			}
		}catch (Exception e) {
			System.out.println("getTourList() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}		
		return tourList;
	}
	
	
	//5-1. option check한 TourFood/Spot/Stay 가져오기 getTour
	public TourDTO getTour(String tourType,String code) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		TourDTO tour = null;
		
		try {
			conn=pool.getConnection();
			sql="select * from "+tourType +" where code like '%"+code+"%'";
			pstmt=conn.prepareStatement(sql);
			/*pstmt.setString(1, code);*/
			rs=pstmt.executeQuery();
			rs.next();
			tour = new TourDTO();
			tour.setCode(rs.getString("code"));
			tour.setName(rs.getString("name"));
			tour.setAddress(rs.getString("address"));
			tour.setDescription(rs.getString("description"));
		}catch (Exception e) {
			System.out.println("getTourList() error");
			e.printStackTrace();
		}finally {
			pool.freeConnection(conn,pstmt,rs);
		}		
		return tour;
	}	
		
	//5-2. TourFood/Spot/Stay 테이블에 추가(admin) insertTour
	//5-3. TourFood/Spot/Stay 테이블에 수정(admin) updateTour
	//5-4. TourFood/Spot/Stay 테이블에 삭제(admin) deleteTour
}

