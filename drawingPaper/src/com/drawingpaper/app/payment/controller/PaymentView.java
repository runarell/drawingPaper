package com.drawingpaper.app.payment.controller;

import java.util.HashMap;
import java.util.Map;

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
		HashMap<String, Integer> subData = new HashMap<>();
		ActionForward forward = new ActionForward();
		
		int proNum = Integer.parseInt(req.getParameter("pro_no"));
//		vo = dao.PaymentView(proNum);
//				
//		int goalprice = vo.getPro_goalprice();
//		int achieveprice = vo.getPro_achieveprice();
//		int percent =  (int) ((Integer)achieveprice / (goalprice * 1.0)*100);
		
		
		req.setAttribute("payment", dao.PaymentView(proNum));
		req.setAttribute("paydata1", subData);
		
		forward.setRedirect(false);
		forward.setPath("/app/payment/payment.jsp");
		
		return forward;
	}
}
