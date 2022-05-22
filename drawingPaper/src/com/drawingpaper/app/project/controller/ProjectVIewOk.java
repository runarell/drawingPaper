package com.drawingpaper.app.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.project.dao.ProjectDAO;
import com.drawingpaper.app.project.vo.ProjectVO;
import com.drawingpaper.app.user.dao.UserDAO;
import com.drawingpaper.app.user.vo.UserVO;

public class ProjectVIewOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		ProjectDAO dao = new ProjectDAO();
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		int proNum = Integer.parseInt(req.getParameter("proNum"));
		String diffDay = req.getParameter("diffDay");
		int percent = Integer.parseInt(req.getParameter("percent"));
		int userNum = Integer.parseInt(req.getParameter("userNum"));
		ProjectVO pv = dao.getView(proNum);
		
		
		String strimage = "/images/project/img1/" + pv.getPro_images();
        pv.setPro_images(strimage);
        
        Map<String, String> pu = udao.getPuser(userNum);
        String userName = pu.get("user_name");
        String userCon = pu.get("user_content");
        
		req.setAttribute("project", dao.getView(proNum));
		req.setAttribute("diffDay", diffDay);
		req.setAttribute("percent", percent);
		req.setAttribute("userName", userName);
		req.setAttribute("userCon", userCon);
		
		forward.setRedirect(false);
		forward.setPath("/app/project/projectInfo.jsp");

		return forward;
	}
}
