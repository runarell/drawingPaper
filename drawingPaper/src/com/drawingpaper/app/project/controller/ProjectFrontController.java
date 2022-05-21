package com.drawingpaper.app.project.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.drawingpaper.app.action.ActionForward;

public class ProjectFrontController extends HttpServlet {
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
		
		if(command.equals("/project/ProjectDefaultCreateOk.pj")) {
			try {
				af = new ProjectDefaultCreateOk().execute(req, resp);
			} catch (Exception e) {
				System.out.println("ProjectFrontController_ProjectDefaultCreateOk오류, " + e);
			}
		}else if(command.equals("/project/ProjectFundingCreateOk.pj")){
			try {
				af = new ProjectFundingCreateOk().execute(req, resp);
			} catch (Exception e) {
				System.out.println("ProjectFrontController_ProjectFundingCreateOk오류, " + e);
			}
			
		}else if(command.equals("/project/ProjectPlanCreateOk.pj")){
			try {
				af = new ProjectPlanCreateOk().execute(req, resp);
			} catch (Exception e) {
				System.out.println("ProjectFrontController_ProjectPlanCreateOk오류, " + e);
			}
			
		}else if(command.equals("/project/CreatePjtCompleteOK.pj")){
			try {
				af = new CreatePjtCompleteOK().execute(req, resp);
			} catch (Exception e) {
				System.out.println("ProjectFrontController_CreatePjtCompleteOK오류, " + e);
			}
			
		}
			////////////미완성/////////////////
		else if(command.equals("/project/ProjectCreatorInfoOk.pj")){
			try {
				
				af = new ProjectCreatorInfoOk().execute(req, resp);
			} catch (Exception e) {
				System.out.println("ProjectFrontController_ProjectCreatorInfoOk오류, " + e);
			
			}
			////////////////////////미완성/////////////////
			
		}else if(command.equals("/project/defaultInfo.pj")){
			try {
				af = new ActionForward();
				af.setRedirect(false);
				af.setPath("/app/createproject/defaultInfo.jsp");
			} catch (Exception e) {
				System.out.println("ProjectFrontController_defaultInfo오류, " + e);
			}
			
		}else if(command.equals("/project/fundingPlan.pj")) {
			 try {
				af = new FundingPlanViewOk().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("/project/projectPlan.pj")){
			try {
				af = new ActionForward();
				af.setRedirect(false);
				af.setPath("/app/createproject/projectPlan.jsp");
			} catch (Exception e) {
				System.out.println("ProjectFrontController_projectPlan오류, " + e);
			}
			
		}else if(command.equals("/project/createrInfo.pj")){
			try {
				af = new ActionForward();
				af.setRedirect(false);
				af.setPath("/app/createproject/createrInfo.jsp");
			} catch (Exception e) {
				System.out.println("ProjectFrontController_createrInfo오류, " + e);
			}
			
		}else if(command.equals("/project/NewProjectCreateOK.pj")){
			try {
				af = new NewProjectCreateOK().execute(req, resp);
			} catch (Exception e) {
				System.out.println("ProjectFrontController_createrInfo오류, " + e);
			}
			
		}
		
	
		
		if(af != null) {
			if(af.isRedirect()) {
				resp.sendRedirect(af.getPath());
				
			}else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);
			}
		}
	}
}
