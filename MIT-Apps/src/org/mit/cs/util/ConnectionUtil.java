package org.mit.cs.util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * 
 * @author Ekta Sharma
 *
 */
public class ConnectionUtil {
	
	/**
	 * 
	 * @return
	 */
	public static Connection getConnection() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			System.out.println("Driver Found..");
			Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost\\SQLEXPRESS;user=sa;password=Test@123;database=MIT");
			System.out.println("Database connected...");
			return con;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
