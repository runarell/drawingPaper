package com.drawingpaper.app.payment.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.payment.dao.PaymentDAO;
import com.drawingpaper.app.payment.vo.PaymentVO;

public class PaymentComplete implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		// 데이터 베이스 업로드
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		PaymentVO vo = new PaymentVO();
		PaymentDAO dao = new PaymentDAO();
		ActionForward forward = new ActionForward();
				
		vo.setUser_no( Integer.parseInt(req.getParameter("user_no")));
		vo.setPro_no( Integer.parseInt(req.getParameter("pro_no")));
		vo.setPay_price( req.getParameter("pay_price") );
		vo.setPay_merchantuid( req.getParameter("pay_merchantuid") );	
		dao.payComplete(vo);
		
		forward.setRedirect(true);
		forward.setPath("/payment/Payment.pm");
		
		return forward;
	}

}
