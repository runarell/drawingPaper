package com.drawingpaper.app.user.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.user.dao.UserDAO;
import com.drawingpaper.app.user.vo.UserVO;

public class userKakaoLoginOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");

		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		ActionForward af = new ActionForward();
		Map<String, String> userKakao = null;
		System.out.println("bb");

		String user_email = req.getParameter("user_email");

		System.out.println("userKakaoLoginOk.java");

		if ((userKakao = dao.kakaoLogin(user_email)) != null) {
			HttpSession session = req.getSession(); // 결과값이 트루면 세션 발생
			System.out.println("aa");
			System.out.println(String.valueOf(userKakao.get("user_no"))); // 성공

			session.setAttribute("user_no", String.valueOf(userKakao.get("user_no")));
			session.setAttribute("user_name", String.valueOf(userKakao.get("user_name")));

			String vv = (String.valueOf(session.getAttribute("user_no")));
			String vv2 = (String.valueOf(session.getAttribute("user_name")));
			System.out.println(vv);
			System.out.println(vv2);

			af.setRedirect(false); // redirect
			af.setPath(req.getContextPath() + "/app/login/mainTest.jsp"); // 메인페이지로 경로 수정 예정
			// af.setPath(req.getContextPath() + "/user/mainTest."); // 메인페이지로 경로 수정 예정
		}

		return af;
	}

}