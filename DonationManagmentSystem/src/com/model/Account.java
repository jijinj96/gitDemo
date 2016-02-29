package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Account {
	private final String dbName = "donationdb";
	private final String driver = "com.mysql.jdbc.Driver";
	private final String url = "jdbc:mysql://localhost:3306/";
	private final String user="root";
	private final String password = "";
	Connection con;
	
	
	private void dbConnect() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		
		con = DriverManager.getConnection(url+dbName, user, password);
	}
	
	public boolean doLogin(String email , String password) throws ClassNotFoundException, SQLException{
		dbConnect();
		String query = "Select count(*) as count from donor where email = ? and password = ?";
		PreparedStatement pstmt = con.prepareStatement(query);
		
		pstmt.setString(1, email);
		pstmt.setString(2, password);
		
		ResultSet rs = pstmt.executeQuery();
		
		int count = 0;
		while(rs.next()){
			count = rs.getInt("count");
		}
		rs.close();
		dbClose();
		if(count > 0){
			return true;
		}
		return false;
	}
	
	
	public String[] donateInfo(String email , String password) throws ClassNotFoundException, SQLException{
		
		dbConnect();
		
		String sql = "select * from donor where email = ? and password = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, email);
		pstmt.setString(2, password);
		
		ResultSet rs = pstmt.executeQuery();
		String result[] = new String[8];
		
		while(rs.next()){
			result[0] = rs.getString("fname");
			result[1] = rs.getString("lname");
			result[2] = rs.getString("country");
			result[3] = rs.getString("phone");
			result[4] = rs.getString("dob");
			result[5] = rs.getString("identification");
			result[6] = rs.getString("gender");
			result[7] = rs.getString("address");
		}
		
		rs.close();
		dbClose();
		return result;
	}
	
	private void dbClose() throws SQLException{
		con.close();
	}
}
