package com.drawingpaper.app.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.project.dao.ProjectDAO;
import com.drawingpaper.app.project.vo.ProjectVO;

public class ProjectCreatorInfoOk implements Action{
///////////////////////////////////////////USER DAO 필요 나중에 작업할것///////////////////////////////////////////////////// 
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
//		String saveFolder = "C:\\aigb_0900_lyw\\git\\drawingPaper\\drawingPaper\\WebContent\\images\\upload";
//		int fileSize = 1024 * 1024 * 5; 
		
		ProjectDAO projectDao = new ProjectDAO();
		ProjectVO project = new ProjectVO();
		ActionForward forward = new ActionForward();
		HttpSession session = req.getSession(); // 세션으로 유저 아이디 와 프로젝트 넘버 저장
		
		int sessionUser_no =(Integer)session.getAttribute("sessionUser_no");	//세션 받아오기
		int sessionPro_no = (Integer)session.getAttribute("sessionPro_no");    //세션 받아오기
		
//		MultipartRequest multi = null;
//		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		project.setPro_no(sessionPro_no);
		project.setUser_no(Integer.parseInt(req.getParameter("user_no")));
		project.setPro_addr(req.getParameter("pro_addr"));
		project.setPro_addrdetail(req.getParameter("pro_addrdetail"));
		project.setPro_repimage(req.getParameter("pro_repimage"));
		

//		projectDao.createProjectPlan(project);	

		
//		fDao.insertFile(multi, bDao.getSeq());
		
		forward.setRedirect(true); //어떻게 보낼까
		forward.setPath(req.getContextPath() + "/project/createrInfo.pj"); 
		//어디로 보낼까, 다시 디폴트로 보내고 SELECT로 보여주면 되지 않을까?
		
		return forward;
	}
	
///////////////////////////////////////////USER DAO 필요 나중에 작업할것///////////////////////////////////////////////////// 
}
