package com.drawingpaper.app.user.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.drawingpaper.app.action.ActionForward;

public class UserFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionForward af = null;
		
		
		if(command.equals("/user/userLoginOk.us")) {	// 로그인
			System.out.println("front-c");
			try {
				System.out.println("front-czzzz");
				new userLoginOk().execute(req, resp);
			} catch (Exception e) {
				System.out.println("front-caxticj");
				System.out.println("로그인 오류" + e);
			}
		} else if(command.equals("/user/userLogoutOk.us")) {	// 로그아웃
			try {
				new userLogoutOk().execute(req, resp);
			} catch (Exception e) {
				System.out.println("로그아웃 오류" + e);
			}
		}
		
		
		
		
		
		
		
		
		
		if(af != null) {// af가 null이 아니라면
			if(af.isRedirect()) {//redirect 방식이라면
				resp.sendRedirect(af.getPath());//redirect로 전송
				
			}else {//forward 방식이라면
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);//forward로 전송
			}
		}
	}
}
