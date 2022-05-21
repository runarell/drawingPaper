package com.drawingpaper.app.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.project.dao.ProjectDAO;
import com.drawingpaper.app.project.vo.ProjectVO;

public class CreatePjtCompleteOk implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		ProjectDAO projectDao = new ProjectDAO();
		ActionForward forward = new ActionForward();
//		HttpSession session = req.getSession(); // 세션으로 유저 아이디 와 프로젝트 넘버 저장
		
//		int sessionUser_no =(Integer)session.getAttribute("sessionUser_no");	//세션 받아오기
//		int sessionPro_no = (Integer)session.getAttribute("sessionPro_no"); 
		
		int sessionUser_no = 1;	//세션 받아오기
		int sessionPro_no = 1;   //테스트 테스트
		
		
		if(projectDao.projectNullCheck(sessionUser_no, sessionPro_no) == 1) {
			forward.setRedirect(true); //어떻게 보낼까
			forward.setPath(req.getContextPath() + "/project/defaultInfo.pj?result=1"); 
			// 디폴트 인포로 넘어가면서 경고창 띄우기
		}else {
				projectDao.createPjtComplete(sessionUser_no,sessionPro_no);
				forward.setRedirect(true); //어떻게 보낼까
				forward.setPath(req.getContextPath() + "/project/defaultInfo.pj"); 
		}
		
		//경로 지정 해야함 프로젝트 디테일 예상 
		
		return forward;
	}

}
