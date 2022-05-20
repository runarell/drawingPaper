package com.drawingpaper.app.user.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.user.dao.UserDAO;

public class UserCheckEmailOk implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String userEmail = req.getParameter("userEmail");
		UserDAO dao = new UserDAO();
		JSONObject obj = new JSONObject();
		PrintWriter out = resp.getWriter();
		
		if(dao.checkEmail(userEmail)) {
			obj.put("status", "not-ok");
		} else {
			obj.put("status", "ok");
		}
		
		out.print(obj.toJSONString());
		out.close();
		
		//페이지 이동이 필요없으므로 null 반환 (비동기 통신 사용)
		return null;
	}
}
