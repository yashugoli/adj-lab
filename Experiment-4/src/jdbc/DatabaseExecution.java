package jdbc;

import java.sql.*;

public class DatabaseExecution {

	public static void main(String[] args) {
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			 System.out.println("Connecting to database...");
			 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/exp(4)", "root", "");
			 System.out.println("Connected database successfully...");
			 Statement stmt = conn.createStatement();
			 String query = "CREATE TABLE Student " +
			 "(id INTEGER(10), " +
			 " name VARCHAR(25))";
			stmt.executeUpdate(query);
			System.out.println("Created table in given database...");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}

}
