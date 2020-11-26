package tour;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TourDao extends SuperDao {
	public TourDao() {}
	
	public Tour getMemberById(String id, String name) {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = " select * from tourlistf ";
		sql += " where id = ? and name = ? ";
		
		Tour bean = null;
		
		try {
			super.conn = super.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				bean = new Tour();
				
				bean.setAge(rs.getInt("age"));
				bean.setAmount(rs.getInt("amount"));
				bean.setbDate(rs.getString("bDate"));
				bean.setbState(rs.getString("bState"));
				bean.setGender(rs.getString("gender"));
				bean.setGrade(rs.getString("grade"));
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.settPlace(rs.getString("tPlace"));
				
				System.out.println("로그인이 완료 되었습니다.");
			} else {
				System.out.println("로그인에 실패 하였습니다.");
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
	
	public List<Tour> SelectAll() {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from tourlistf";
		
		List<Tour> allData = new ArrayList<Tour>();
		
		try {
			super.conn = super.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Tour bean = new Tour();
				
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setGender(rs.getString("gender"));
				bean.setGrade(rs.getString("grade"));
				bean.settPlace(rs.getString("tplace"));
				bean.setAmount(rs.getInt("amount"));
				bean.setAge(rs.getInt("age"));
				bean.setbState(rs.getString("bstate"));
				bean.setbDate(rs.getString("bDate"));
				
				allData.add(bean);
			}
			
			System.out.println("작업 완료");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) {rs.close();}
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}

			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return allData;
	}
	
	public int Insert(Tour bean) {
		int cnt = -1;
		
		String sql = " insert into tourlistf(id, name, gender, age, tplace, amount, grade, bstate, bdate)";
		sql += " values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			super.conn = super.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bean.getName());
			pstmt.setString(2, bean.getGender());
			pstmt.setInt(3, bean.getAge());
			pstmt.setString(4, bean.gettPlace());
			pstmt.setString(5, bean.getId());
			pstmt.setInt(6, bean.getAmount());
			pstmt.setString(7, bean.getGrade());
			pstmt.setString(8, bean.getbState());
			pstmt.setString(9, bean.getbDate());
			
			cnt = pstmt.executeUpdate();
			
			conn.commit();
			System.out.println("예약에 성공 하였습니다.");
		
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			
		} finally {
			try {
				if(pstmt != null) {pstmt.close();}
				if(conn != null) {conn.close();}
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		return cnt;
	}
}
