package com.payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updatePaymentServlet")
public class updatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String UserID = request.getParameter("uid");
		String CardHolderName = request.getParameter("name");
		String CardNumber = request.getParameter("cnum");
		String SecurityCode = request.getParameter("cvvn");
		String ExpDate = request.getParameter("exdate");
		String PremiumPlan = request.getParameter("prePlan");
		
		boolean isTrue = PaymentUtil.updatepayment(UserID, CardHolderName, CardNumber, SecurityCode, ExpDate, PremiumPlan);
	
		if (isTrue == true) {
			List <UserPayment> paymentinfo = PaymentUtil.getPayment(UserID);
			request.setAttribute("paymentinfo", paymentinfo);
			
			//After successfully updating account details, user is able to view updated details
			RequestDispatcher dis = request.getRequestDispatcher("newpayment.jsp");
			dis.forward(request, response);
			
			
		} else {
			List <UserPayment> paymentinfo = PaymentUtil.getPayment(UserID);
			request.setAttribute("paymentinfo", paymentinfo);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp"); 
			dis2.forward(request, response);
		}
	}

}
