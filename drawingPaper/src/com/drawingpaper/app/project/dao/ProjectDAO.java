package com.drawingpaper.app.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.drawingpaper.app.mybatis.config.MyBatisConfig;
import com.drawingpaper.app.project.vo.ProjectVO;

public class ProjectDAO {
	SqlSessionFactory sessionFactory = MyBatisConfig.getSqlsession_f();
	SqlSession sqlSession;
	
	public ProjectDAO(){
		sqlSession = sessionFactory.openSession(true); //오토 커밋
	}
	
	//디폴트프젝 업데이트
	public void createDefaultPjt(ProjectVO project) {
		sqlSession.insert("Project.createDefaultPjt", project);  
		// 지금은 INSERT지만 프로젝트 생성하기 버튼 생기면 UPDATE로 바꿀것!! WHERE =Pro_no로 구분
	}
	
	public void createFundingPlan(ProjectVO project) {
		sqlSession.update("Project.createFundingPlan", project);  
	}
	
	public void createProjectPlan(ProjectVO project) {
		sqlSession.update("Project.createProjectPlan", project);  
	}
	
	
}
