package com.drawingpaper.app.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.user.dao.UserDAO;
import com.drawingpaper.app.user.vo.UserVO;

public class userLogoutOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		ActionForward af = new ActionForward();

		HttpSession session = req.getSession(); // 세션을 가져옴
		System.out.println(session.toString()); // 세션 확인

		if (dao.logout()) {
			session.invalidate(); // 세션 초기화
		}

		System.out.println("로그아웃 성공");
		af.setRedirect(true);
		af.setPath(req.getContextPath() + "/user/emailLogin.us"); // 메인페이지 경로 수정 예정

		return af;
	}

}