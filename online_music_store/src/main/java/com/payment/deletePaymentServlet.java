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


@WebServlet("/deletePaymentServlet")
public class deletePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userID = request.getParameter("uid");
		
		boolean isTrue = PaymentUtil.deletePayment(userID);
		
		PrintWriter msg = response.getWriter();
		response.setContentType("text/html");
		
		if (isTrue == true) {
			
			//Payment page will be displayed after successful deletion
//			RequestDispatcher dis = request.getRequestDispatcher("payInsert.jsp");
//			dis.forward(request, response);
			
			msg.println("<script type='text/javascript'>");
			msg.println("alert('Successfully deleted');");
			msg.println("location='payInsert.jsp'");
			msg.println("</script>");
		} 
		else {
			List <UserPayment> paymentinfo = PaymentUtil.getPayment(userID);
			request.setAttribute("paymentinfo", paymentinfo);
			
			RequestDispatcher dis = request.getRequestDispatcher("newpayment.jsp");
			dis.forward(request, response);
		}
	}

}
