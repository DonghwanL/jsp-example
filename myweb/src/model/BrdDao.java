package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BrdDao extends SuperDao {

	public List<Brd> SelectAll() {

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from Brds ";
		
		List<Brd> lists = new ArrayList<Brd>();
		
		try {
			super.conn = super.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Brd bean = new Brd();
				
				bean.setNo(rs.getInt("no"));
				bean.setWriter(rs.getString("writer"));
				bean.setSubject(rs.getString("subject"));
				bean.setContent(rs.getString("content"));
				
				lists.add(bean);
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
		
		return lists;
	}
}
