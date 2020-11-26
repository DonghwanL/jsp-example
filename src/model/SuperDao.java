package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class SuperDao {
	String driver = "oracle.jdbc.driver.OracleDriver";
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String id = "oraman";
	String password = "oracle";
	
	Connection conn = null;
	
	public SuperDao() {
		try {
			Class.forName(driver);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void closeConnection() {
		try {
			if(this.conn != null) {this.conn.close();}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		try {
			return DriverManager.getConnection(url, id, password);
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
