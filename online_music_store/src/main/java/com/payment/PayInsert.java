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


@WebServlet("/PayInsert")
public class PayInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userID = request.getParameter("uid");
		String cardHolderName = request.getParameter("cname");
		String cardnum = request.getParameter("cardnum");
		String securityCode = request.getParameter("cvv");
		String expdate = request.getParameter("expdate");
		String premiumPlan = request.getParameter("premiumPlan");
		
		boolean isTrue = PaymentUtil.insertpayment (userID,cardHolderName, cardnum, securityCode, expdate, premiumPlan);
		
		PrintWriter msg = response.getWriter();
		response.setContentType("text/html");
		
		if (isTrue == true) {
			List <UserPayment> paymentinfo = PaymentUtil.getPayment(userID);
			request.setAttribute("paymentinfo", paymentinfo);
			
			//After successful creation of premium account, user will be redirected to enter his userID and selected premium plan
			//as validation 
			
			msg.println("<script type='text/javascript'>");
			msg.println("alert('Successfully activated premium account');");
			msg.println("location='displayPremium.jsp'");
			msg.println("</script>");
//			RequestDispatcher dis = request.getRequestDispatcher("displayPremium.jsp"); 
//			dis.forward(request, response);
			
		} else {
			
//			List <UserPayment> paymentinfo = PaymentUtil.getPayment(userID);
//			request.setAttribute("paymentinfo", paymentinfo);
//			
//			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp"); 
//			dis2.forward(request, response);
			
			msg.println("<script type='text/javascript'>");
			msg.println("alert('Unsuccessful');");
			msg.println("location='payInsert.jsp'");
			msg.println("</script>");
		}
		
	}

}
