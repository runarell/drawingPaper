package com.drawingpaper.app.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.user.dao.UserDAO;
import com.mysql.cj.Session;

public class UserJoinKakaoOk implements Action {
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		UserDAO dao = new UserDAO();
		ActionForward af = new ActionForward();

		String userEmail = req.getParameter("email");
		String userName = req.getParameter("nickname");
		String userKakao = req.getParameter("id");

		HashMap<String, String> joinKakaoMap = new HashMap<>();
		joinKakaoMap.put("userEmail", userEmail);
		joinKakaoMap.put("userName", userName);
		joinKakaoMap.put("userKakao", userKakao);
		
		System.out.println(dao.checkEmail(userEmail));
//		System.out.println(joinKakaoMap.get("userName"));
		if(dao.checkEmail(userEmail)) {
			af.setRedirect(true); // redirect
			af.setPath(req.getContextPath() + "/user/UserLoginOk.us?result=fail"); // 메인페이지로 경로 수정 예정
		}else {
			dao.joinKakao(joinKakaoMap);
			af.setRedirect(true); // redirect
			af.setPath(req.getContextPath() + "/user/userLoginOk.us?result=success"); // 메인페이지로 경로 수정 예정

			HttpSession session = req.getSession();
			session.setAttribute("userNo", dao.getUserNoByEmail(userEmail));
		}

		return af;
	}
}
