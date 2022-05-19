package com.drawingpaper.app.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.project.dao.ProjectDAO;
import com.drawingpaper.app.project.vo.ProjectVO;

public class NewProjectCreateOK implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ProjectDAO projectDao = new ProjectDAO();
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession(); // 세션으로 유저 아이디 와 프로젝트 넘버 저장
		
//		int sessionUser_no =(Integer)session.getAttribute("sessionUser_no");
//		session.setAttribute("sessionUser_no",sessionUser_no);
		
		int sessionUser_no =1;  //이거 테스트 번호임 테스트번호임
		
		//이거 세션으로 유저, 프로젝트 번호 받아오는거 알아내야함
		
		
		projectDao.createNewPjt(sessionUser_no);
		
		int pro_no = projectDao.getProNum(sessionUser_no);  //이거 만들어진 프로젝트 넘버 세션 값으로 넘겨줘야함
		session.setAttribute("sessionPro_no",pro_no);
		
		forward.setRedirect(true); //어떻게 보낼까
		forward.setPath(req.getContextPath() + "/project/defaultInfo.pj"); 
		
		return forward;
	}

}
