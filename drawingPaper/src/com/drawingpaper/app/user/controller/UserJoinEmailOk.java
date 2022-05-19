package com.drawingpaper.app.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.user.dao.UserDAO;

public class UserJoinEmailOk implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		ActionForward af = new ActionForward();
		
		String userEmail = req.getParameter("user_email");
		String userName = req.getParameter("user_name");
		String userPw = req.getParameter("user_pw");
		
		UserDAO dao = new UserDAO();
		dao.joinEmail(userName, userEmail, userPw);
		
		
		//페이지 이동 홈으로? 로그인?
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/app/test.jsp");
		
		HttpSession session = req.getSession();
		session.setAttribute("userNo", dao.getUserNoByEmail(userEmail));
		session.setAttribute("userName", userName);
		session.setAttribute("userEmail", userEmail);
		
		return af;
	}

}
