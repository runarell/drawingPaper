package com.drawingpaper.app.project.dao;

import java.util.HashMap;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.drawingpaper.app.mybatis.config.MyBatisConfig;
import com.drawingpaper.app.project.vo.ProjectVO;
import com.drawingpaper.app.user.vo.UserVO;


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
	//크리에이터 정보 업데이트 (프로젝트 부분)
	public void createCreatorPjt(ProjectVO project) {
		sqlSession.update("Project.createCreatorPjt", project);  
	}
	//크리에이터 정보 업데이트 (유저 부분)
	public void createCreatorUser(UserVO user) {
		sqlSession.update("Project.createCreatorUser", user);  
	}
	//프로젝트 계획 업데이트
	public void createProjectPlan(ProjectVO project) {
		sqlSession.update("Project.createProjectPlan", project);  
	}
	// 생성 완료할떄 널 체크 1or0
	public int projectNullCheck(int sessionUser_no, int sessionPro_no) {
		HashMap<String,Integer> sessionMap = new HashMap<>();
		sessionMap.put("sessionUser_no", sessionUser_no);
		sessionMap.put("sessionPro_no", sessionPro_no);
		return (Integer)sqlSession.selectOne("Project.projectNullCheck", sessionMap);
	}
	//프로젝트 생성 완료
	public void createPjtComplete(int sessionUser_no, int sessionPro_no) {
		HashMap<String,Integer> sessionMap = new HashMap<>();
		sessionMap.put("sessionUser_no", sessionUser_no);
		sessionMap.put("sessionPro_no", sessionPro_no);
		sqlSession.update("Project.newProjectComplete", sessionMap);
	}
	//fundingPlan 보기
		public ProjectVO getDetail(int sessionPro_no) {
			return sqlSession.selectOne("Project.getDetail", sessionPro_no);
		}

	// 프로젝트 총 개수
	public int getTotal() {
		return sqlSession.selectOne("Project.getTotal");
	}
	
	// 프로젝트 리스트로 가져오기
	public List<ProjectVO> getList() {
		return sqlSession.selectList("Project.getList");
	}
	
	// 프로젝트 디테일
	public ProjectVO getView(int proNum) {
		return sqlSession.selectOne("Project.getView", proNum);
	}
	
	// 프로젝트 마감처리
	public void setOngogin(int prono) {
		sqlSession.update("setOngogin", prono);
	}
	
	
}
