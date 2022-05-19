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
	
	//새로운 프로젝트 만들기
	public void createNewPjt(int user_no ){
		sqlSession.insert("Project.createNewPjt",user_no);
	}
	//유저 넘버 가져오기
	public int getProNum(int user_no) {
		return (Integer)sqlSession.selectOne("Project.getProNum",user_no);
	}
	//디폴트 업데이트
	public void createDefaultPjt(ProjectVO project) {
		sqlSession.update("Project.createDefaultPjt", project);  	
	}
	//펀딩계획 업데이트
	public void createFundingPlan(ProjectVO project) {
		sqlSession.update("Project.createFundingPlan", project);  
	}
	//프로젝트 계획 업데이트
	public void createProjectPlan(ProjectVO project) {
		sqlSession.update("Project.createProjectPlan", project);  
	}
	
	
}
