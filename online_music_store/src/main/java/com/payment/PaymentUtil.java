package com.payment;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	//Function to insert user details for premium account creation
	public static boolean insertpayment (String userID, String cardHolderName, String cardnum, String securityCode, String expdate, String premiumPlan){

		boolean isSuccess = false;

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			String sql = "insert into payment values (0,'"+userID+"','"+cardHolderName+"','"+cardnum+"','"+securityCode+"','"+expdate+"','"+premiumPlan+"')";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		}
		catch (Exception e) {
			e.printStackTrace();		
		}

		return isSuccess;
	}

	//Function to validate user details before viewing account details
	public static  boolean validate(String userID, String prePlan){

		try {
			
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from payment where UserID='"+ userID+"' and PremiumPlan='"+prePlan+"'";
			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			
			}
		}
		catch (Exception e) {
			e.printStackTrace();		
		}

		return isSuccess;
	}

	//Function to update premium account details
	public static boolean updatepayment (String UserID, String cardHolderName, String cardnum, String securityCode, String expdate, String premiumPlan){

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			String sql = "update payment set CardHolderName='"+cardHolderName+"', CardNumber='"+cardnum+"',SecurityCode='"+securityCode+"',Date_of_Expiry='"+expdate+"',PremiumPlan='"+premiumPlan+"'"+ "where UserID='"+UserID+"'";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		}catch (Exception e) {
			e.printStackTrace();		
		}
		return isSuccess;
	}

	//Function to display premium account details
	public static List <UserPayment> getPayment (String UserID){

		int usID = Integer.parseInt(UserID);
		ArrayList <UserPayment> up = new ArrayList<>();

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where UserID='"+usID+"'";
			rs = stmt.executeQuery(sql);

			while(rs.next()) {                    //Fetching premium account details
				int payID = rs.getInt(1);
				String uID = rs.getString(2);
				String CardHolderName = rs.getString(3);
				String CardNumber = rs.getString(4);
				String SecurityCode = rs.getString(5);
				String ExpDate = rs.getString(6);
				String PremiumPlan = rs.getString(7);

				UserPayment u2 = new UserPayment (payID, uID, CardHolderName,CardNumber, SecurityCode, ExpDate,PremiumPlan );
				up.add(u2);
			}

		}catch (Exception e) {
			e.printStackTrace();		
		}
		return up;
	}

	//Function to delete premium account details
	public static boolean deletePayment(String UserID) {

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			String sql = "delete from payment where UserID='"+UserID+"'";

			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
				
			} else {
				isSuccess = false;
				
			}

		}catch (Exception e) {
			e.printStackTrace();		
		}

		return isSuccess;

	}

}

