

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

@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter msg = response.getWriter();
		response.setContentType("text/html");
		
		String userID = request.getParameter("userid");
		String premiumPlan = request.getParameter("preplan");
		
		boolean isTrue = PaymentUtil.validate(userID,premiumPlan );
		
		if (isTrue == true) {
			List<UserPayment> paymentinfo = PaymentUtil.getPayment(userID);
			request.setAttribute("paymentinfo", paymentinfo);
			
			//After entering valid userID and selected premium plan, user will be able to view their account details
			RequestDispatcher dis = request.getRequestDispatcher("newpayment.jsp");
			dis.forward(request, response);
			
		} else {
			msg.println("<script type='text/javascript'>");
			msg.println("alert('Wrong UserID or Premium Plan');");
			msg.println("location='newpayment.jsp'");
			msg.println("</script>");

		}
	}
}
