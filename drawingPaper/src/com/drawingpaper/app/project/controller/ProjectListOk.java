package com.drawingpaper.app.project.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.drawingpaper.app.action.Action;
import com.drawingpaper.app.action.ActionForward;
import com.drawingpaper.app.project.dao.ProjectDAO;
import com.drawingpaper.app.project.vo.ProjectVO;
import com.drawingpaper.app.user.dao.UserDAO;
import com.drawingpaper.app.user.vo.UserVO;

public class ProjectListOk implements Action {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		
		ProjectDAO dao = new ProjectDAO();
		UserDAO udao = new UserDAO();
		ActionForward forward = new ActionForward();
		int totalCount = dao.getTotal();
		List<ProjectVO> list = dao.getList();
		
		
		for(ProjectVO per:list) {
			
			int goalprice = Integer.parseInt(per.getPro_goalprice());
			int achieveprice = Integer.parseInt(per.getPro_achieveprice());
			int percent =  (int) ((Integer)achieveprice / (goalprice * 1.0)*100);
			per.setPercent(percent); // 퍼센트 계산해서 전달
			
			Date now = new Date();
	        String eday = per.getPro_end();
	        String strFormat = "yyyyMMdd";    //strStartDate 년일월 셋
	        
	        SimpleDateFormat sdf = new SimpleDateFormat(strFormat);
	        //SimpleDateFormat 현재 날짜를 위에 설정한 셋으로 바궈주기
	        String nowd = sdf.format(now);
            Date nowDate  = sdf.parse(nowd);
            Date endDate = sdf.parse(eday);
 
            // 조건에 맞는 남은 날짜 전달
            long diff = (endDate.getTime() - nowDate.getTime()) / (24*60*60*1000);
            int ifdiff = (int)diff;
            String diffDay = Long.toString(diff);
            
            if(ifdiff == 1) {
            	per.setDiffDay("오늘마감");
            } else if(ifdiff < 1) {
            	dao.setOngogin(per.getPro_no());
            } else {
            	per.setDiffDay(diffDay + "일 남음");            	
            }
            
            //이미지를 경로로 저장한후 전달
            String strimage = "/images/project/img1/" + per.getPro_images();
            per.setPro_images(strimage);
            
            //유저 이름 VO에 저장
        	per.setUserName(udao.getUserName(per.getUser_no()));

		
		}

		req.setAttribute("totalCount", totalCount);
		req.setAttribute("projectList", dao.getList());
		
		forward.setRedirect(false);
		forward.setPath("/app/project/projectList.jsp");
		
		return forward;
	}
}
