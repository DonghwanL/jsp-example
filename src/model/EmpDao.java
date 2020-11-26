package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmpDao extends SuperDao {
	public EmpDao() {}
	
	public Emp getMemberById(String id, String name) {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " select * from emp ";		
		sql += " where id = ? and name = ? ";
		
		Emp bean = null;
		
		try {
			super.conn = super.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			
			rs = pstmt.executeQuery();	
			
			if(rs.next()) {
				bean = new Emp(); // 객체 생성
				
				bean.setGender(rs.getString("gender"));
				bean.setHiredate(String.valueOf(rs.getDate("hiredate")));
				bean.setHobby(rs.getString("hobby"));
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setSalary(rs.getInt("salary"));
				
				System.out.println("yes");
			} else {
				// 발견되지 않음
				System.out.println("no");
			}
				
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				super.closeConnection();
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return bean;
	}
	
	public List<Emp> SelectAll() {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from emp";
		
		List<Emp> alldata = new ArrayList<Emp>();
		
		try {
			super.conn = super.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Emp bean = new Emp();
				
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setGender(rs.getString("gender"));
				bean.setHobby(rs.getString("hobby"));
				bean.setSalary(rs.getInt("salary"));
				bean.setHiredate(String.valueOf(rs.getDate("hiredate")));
				
				alldata.add(bean);
			}
			
			System.out.println("작업 완료");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				super.closeConnection();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return alldata;
	}
	
	public int Insert2(Emp bean) {

		int cnt = -1; // 부정(failure)의 개념 
		
		// ?는 place holder라고 하며, 치환되어야 할 어떤 대상
		String sql = " insert into emp(id, name, gender, hobby, salary, hiredate)";
		sql += " values(?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		// (1)드라이버 로딩 -> (2) 커넥션 객체 생성 -> (3) PreparedStatement 객체 생성 -> (4) DML
		
		try {
			super.conn = super.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getName());
			pstmt.setString(3, bean.getGender());
			pstmt.setString(4, bean.getHobby());
			pstmt.setInt(5, bean.getSalary());
			
			// 날짜는 문자열로 처리
			pstmt.setString(6, bean.getHiredate());
			
			cnt = pstmt.executeUpdate();
			
			conn.commit();
			System.out.println("작업 성공");
			
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		} catch(Exception e) {
			e.printStackTrace();
			
		} finally {
			try {
				if(pstmt != null) {pstmt.close();}
				super.closeConnection();

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return cnt;
	}
	
	public int Insert(Emp bean) {
		System.out.println("ID : " + bean.getId());
		System.out.println("이름 : " + bean.getName());
		System.out.println("성별 : " + bean.getGender());
		System.out.println("취미 : " + bean.getHobby());
		System.out.println("급여 : " + bean.getSalary());
		System.out.println("입사 일자 : " + bean.getHiredate());
		return 1;
	}
}
