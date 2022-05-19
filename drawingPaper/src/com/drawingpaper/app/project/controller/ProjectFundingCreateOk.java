package com.drawingpaper.app.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.project.dao.ProjectDAO;
import com.drawingpaper.app.project.vo.ProjectVO;

public class ProjectFundingCreateOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
//		String saveFolder = "C:\\aigb_0900_lyw\\git\\drawingPaper\\drawingPaper\\WebContent\\images\\upload";
//		int fileSize = 1024 * 1024 * 5; 
		
		ProjectDAO projectDao = new ProjectDAO();
		ProjectVO project = new ProjectVO();
		
		ActionForward forward = new ActionForward();
		
//		MultipartRequest multi = null;
//		multi = new MultipartRequest(req, saveFolder, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		project.setPro_no(Integer.parseInt(req.getParameter("pro_no")));
		
		
		project.setPro_goalprice(req.getParameter("pro_goalprice"));
		project.setPro_ticketprice(req.getParameter("pro_ticketprice"));
		project.setPro_start(req.getParameter("pro_start"));
		project.setPro_end(req.getParameter("pro_end"));


		projectDao.createFundingPlan(project);	

		
//		fDao.insertFile(multi, bDao.getSeq());
		
		forward.setRedirect(true); //어떻게 보낼까
		forward.setPath(req.getContextPath() + "/project/fundingPlan.pj"); 
		//어디로 보낼까, 다시 디폴트로 보내고 SELECT로 보여주면 되지 않을까?
		
		return forward;
		
	}
	
	
}
