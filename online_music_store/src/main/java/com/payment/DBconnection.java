package com.payment;

import java.sql.Connection;
import java.sql.DriverManager;

//Establishing connection to the database
public class DBconnection {

	private static String url = "jdbc:mysql://localhost:3306/onlinemusicstore";   //database name - onlinemusicstore
	private static String user = "root";										  //username
	private static String password = "Mysql618#";							  	  //password
	private static Connection con;
	
	public static Connection getConnection (){
		
		try {
			Class.forName ("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, password);
			
			
		} catch (Exception e) {
			
			System.out.println("Connection failed.");
		}
		return con;
	}
}
