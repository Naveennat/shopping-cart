package com.s.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	private static Connection con = null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(con==null) {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_commerce","root","ben10");
			System.out.print("connected");
		}
		return con;
	}

}
