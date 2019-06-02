package db.Oracle;

import java.sql.*;

public final class DBConnect {
	private DBConnect() {
		
	}
	
	public static Connection getConnection() throws SQLException {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String Id = "scott", Pw = "tiger";
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			System.out.println("Not Found Driver");
		}
		
		return DriverManager.getConnection(url, Id, Pw);
	}
	
	public static Connection getConnection(String user, String password) throws SQLException {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			System.out.println("Not Found Driver");
		}
		
		return DriverManager.getConnection(url, user, password);
	}
	
	public static Connection getConnection(String ipAddress, String user, String password) throws SQLException {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@" + ipAddress +":1521:XE";
		
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			System.out.println("Not Found Driver");
		}
		
		return DriverManager.getConnection(url, user, password);
	}
}
