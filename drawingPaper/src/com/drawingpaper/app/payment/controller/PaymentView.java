package com.drawingpaper.app.payment.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.payment.dao.PaymentDAO;
import com.drawingpaper.app.payment.vo.PaymentVO;

public class PaymentView implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// 결제 상세보기 데이터
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PaymentVO vo = new PaymentVO();
		PaymentDAO dao = new PaymentDAO();
		ActionForward forward = new ActionForward();
<<<<<<< HEAD
	
=======
		
		int proNum = Integer.parseInt(req.getParameter("pro_no"));
>>>>>>> parent of 9f7e98d (20220522_1)
		req.setAttribute("payment", dao.PaymentView(proNum));
		
		forward.setRedirect(false);
		forward.setPath("/app/payment/Payment.jsp");
		
		return forward;
	}
}
