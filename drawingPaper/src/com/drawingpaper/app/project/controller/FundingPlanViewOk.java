package com.drawingpaper.app.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.project.dao.ProjectDAO;

public class FundingPlanViewOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		ProjectDAO projectDao = new ProjectDAO();
		ActionForward forward = new ActionForward();
//		HttpSession session = req.getSession(); // 세션으로 유저 아이디 와 프로젝트 넘버 저장
		
//		int sessionUser_no =(Integer)session.getAttribute("sessionUser_no");	//세션 받아오기
//		int sessionPro_no = (Integer)session.getAttribute("sessionPro_no");    //세션 받아오기
		
		int sessionPro_no =1;
		
//		session.setAttribute("sessionUser_no",sessionUser_no); // 세션 한번 더 심기
//		session.setAttribute("sessionPro_no",sessionPro_no);   // 세션 한번 더 심기
		
		req.setAttribute("funding", projectDao.getDetail(sessionPro_no));
		
		forward.setRedirect(false);
		forward.setPath("/app/createproject/fundingPlan.jsp");
		
		return forward;
	}
	
}
