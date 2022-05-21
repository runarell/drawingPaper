package com.drawingpaper.app.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.project.dao.ProjectDAO;
import com.drawingpaper.app.project.vo.ProjectVO;

public class ProjectFundingCreateOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		

		
		ProjectDAO projectDao = new ProjectDAO();
		ProjectVO project = new ProjectVO();
		
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession(); // 세션으로 유저 아이디 와 프로젝트 넘버 저장
		
		int sessionUser_no =(Integer)session.getAttribute("sessionUser_no");	//세션 받아오기
		int sessionPro_no = (Integer)session.getAttribute("sessionPro_no");    //세션 받아오기
		
		session.setAttribute("sessionUser_no",sessionUser_no); // 세션 한번 더 심기
		session.setAttribute("sessionPro_no",sessionPro_no);   // 세션 한번 더 심기
	

		project.setPro_no(sessionPro_no);
		
		project.setPro_goalprice(req.getParameter("pro_goalprice"));
		project.setPro_ticketprice(req.getParameter("pro_ticketprice"));
		project.setPro_start(req.getParameter("pro_start"));
		project.setPro_end(req.getParameter("pro_end"));
		
		projectDao.createFundingPlan(project);	

		

		
		forward.setRedirect(true); //어떻게 보낼까
		forward.setPath(req.getContextPath() + "/project/fundingPlan.pj"); 
		
		//어디로 보낼까, 다시 디폴트로 보내고 SELECT로 보여주면 되지 않을까?
		
		return forward;
		
	}
	
	
}
