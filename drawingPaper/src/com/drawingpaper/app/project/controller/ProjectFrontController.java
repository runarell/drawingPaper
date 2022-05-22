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

		// 프로젝트 리스트
		if(command.equals("/project/ProjectListOk.pj")) {
			 try {
				af = new ProjectListOk().execute(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
			}
			 // 프로젝트 디테일
		 }else if(command.equals("/project/ProjectViewOk.pj")) {
			 try {
				 af = new ProjectVIewOk().execute(req, resp);
			 } catch (Exception e) {
				 e.printStackTrace();
			 }
			//프로젝트 디폴트 저장
		 } else if(command.equals("/project/ProjectDefaultCreateOk.pj")) {
				try {
					af = new ProjectDefaultCreateOk().execute(req, resp);
				} catch (Exception e) {
					System.out.println("ProjectFrontController_ProjectDefaultCreateOk오류, " + e);
				}
			}
				//펀딩 계획 저장
			else if(command.equals("/project/ProjectFundingCreateOk.pj")){
				try {
					af = new ProjectFundingCreateOk().execute(req, resp);
				} catch (Exception e) {
					System.out.println("ProjectFrontController_ProjectFundingCreateOk오류, " + e);
				}
				
			}
				//프로젝트 계획 저장
			else if(command.equals("/project/ProjectPlanCreateOk.pj")){
				try {
					af = new ProjectPlanCreateOk().execute(req, resp);
				} catch (Exception e) {
					System.out.println("ProjectFrontController_ProjectPlanCreateOk오류, " + e);
				}
				
			}
				//프로젝트 완성
			else if(command.equals("/project/CreatePjtCompleteOk.pj")){
				try {
					af = new CreatePjtCompleteOk().execute(req, resp);
				} catch (Exception e) {
					System.out.println("ProjectFrontController_CreatePjtCompleteOk오류, " + e);
				}
				
			}
				//크리에이터 정보 저장
			else if(command.equals("/project/ProjectCreatorInfoOk.pj")){
				try {
					
					af = new ProjectCreatorInfoOk().execute(req, resp);
				} catch (Exception e) {
					System.out.println("ProjectFrontController_ProjectCreatorInfoOk오류, " + e);
				
				}	
			}
				//디폴트로 이동
			else if(command.equals("/project/defaultInfo.pj")){
				try {
					af = new ActionForward();
					af.setRedirect(false);
					af.setPath("/app/createproject/defaultInfo.jsp");
				} catch (Exception e) {
					System.out.println("ProjectFrontController_defaultInfo오류, " + e);
				}
				
			}
				//펀딩계획으로 이동
			else if(command.equals("/project/fundingPlan.pj")) {
				 try {
					af = new FundingPlanViewOk().execute(req, resp);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
				//프로젝트 계획으로 이동
			else if(command.equals("/project/projectPlan.pj")){
				try {
					af = new ActionForward();
					af.setRedirect(false);
					af.setPath("/app/createproject/projectPlan.jsp");
				} catch (Exception e) {
					System.out.println("ProjectFrontController_projectPlan오류, " + e);
				}
				
			}
				//창작자 정보 이동
			else if(command.equals("/project/createrInfo.pj")){
				try {
					af = new ActionForward();
					af.setRedirect(false);
					af.setPath("/app/createproject/createrInfo.jsp");
				} catch (Exception e) {
					System.out.println("ProjectFrontController_createrInfo오류, " + e);
				}
				
			}
			//새로운 프로젝트 만들기
			else if(command.equals("/project/NewProjectCreateOk.pj")){
				try {
					af = new NewProjectCreateOk().execute(req, resp);
				} catch (Exception e) {
					System.out.println("ProjectFrontController_createrInfo오류, " + e);
				}
				
			}
		
		if(af != null) {// af�� null�� �ƴ϶��
			if(af.isRedirect()) {//redirect ����̶��
				resp.sendRedirect(af.getPath());//redirect�� ����
				
			}else {//forward ����̶��
				RequestDispatcher dispatcher = req.getRequestDispatcher(af.getPath());
				dispatcher.forward(req, resp);//forward�� ����
			}
		}
	}
}
