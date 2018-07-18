package com.stx.spring.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {
	public static Connection getCon() throws ClassNotFoundException, SQLException {
		//1.装载驱动程序
		Class.forName("oracle.jdbc.driver.OracleDriver");
		//2.建立连接
		return DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl", "oasystem", "oasystem");
	}
	
	public static void closeCon(Statement st, Connection con) {
			try {
				if (st != null)
					st.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
}
