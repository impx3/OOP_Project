package com.payment;

public class UserPayment {

	private int PaymentID;
	
	private String UserID;

	private String CardHolderName;

	private String CardNumber;

	private String SecurityCode;

	private String ExpDate;

	private String PremiumPlan;

	public UserPayment(int paymentID, String userID, String cardHolderName, String cardNumber, String securityCode,
			String expDate, String premiumPlan) {
		
		PaymentID = paymentID;
		UserID = userID;
		CardHolderName = cardHolderName;
		CardNumber = cardNumber;
		SecurityCode = securityCode;
		ExpDate = expDate;
		PremiumPlan = premiumPlan;
	}

	public UserPayment(String userID, String cardHolderName, String cardNumber, String securityCode, String expDate,
			String premiumPlan) {

		UserID = userID;
		CardHolderName = cardHolderName;
		CardNumber = cardNumber;
		SecurityCode = securityCode;
		ExpDate = expDate;
		PremiumPlan = premiumPlan;
	}

	public UserPayment(String cardHolderName, String cardNumber, String securityCode, String expDate,
			String premiumPlan) {
		
		CardHolderName = cardHolderName;
		CardNumber = cardNumber;
		SecurityCode = securityCode;
		ExpDate = expDate;
		PremiumPlan = premiumPlan;
	}

	public int getPaymentID() {
		return PaymentID;
	}

	public String getUserID() {
		return UserID;
	}

	public String getCardHolderName() {
		return CardHolderName;
	}

	public String getCardNumber() {
		return CardNumber;
	}

	public String getSecurityCode() {
		return SecurityCode;
	}

	public String getExpDate() {
		return ExpDate;
	}

	public String getPremiumPlan() {
		return PremiumPlan;
	}
}
