package com.drawingpaper.app.user.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.drawingpaper.app.mybatis.config.MyBatisConfig;
import com.drawingpaper.app.user.vo.UserVO;


public class UserDAO {

	SqlSessionFactory sessionFactory = MyBatisConfig.getSqlsession_f();
	SqlSession sqlSession;
	
	public UserDAO() { // 占썩본占쏙옙占쏙옙占쌘몌옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占심억옙占쏙옙占� sql占쏙옙占쏙옙 占쌜듸옙占싫댐옙.
		sqlSession = sessionFactory.openSession(true);
	}
	
	// 일반 로그인 로그아웃 유효성이 모두 true면 로그인 성공
	   // 로그인 유효성 체크
	   public boolean emailCheck(String user_email) {
	      return (Integer)(sqlSession.selectOne("User.emailCheck", user_email)) == 1;
	   }
	   
	   // 비밀번호 유효성 체크
	   public boolean pwCheck(String user_pw) {
	      return (Integer)(sqlSession.selectOne("User.pwCheck", user_pw)) == 1;
	   }
	   
	   // 로그아웃
	   public boolean logout() {
	      return true;
	   }
	   
	   // 카카오 api 회원가입
	   public int kakaoJoin(HashMap<String, String> kakaoJoinMap){
	      int userNumber = 0;
	      try {
	         userNumber = sqlSession.insert("User.kakaoInsert", kakaoJoinMap);
	         System.out.println("userNumber  : " + userNumber);
	      } catch (Exception e) {;}
	      return userNumber;
	   }
	   
	   // 카카오 api 로그인
	   public Map<String, String> kakaoLogin(String user_email) {
	      System.out.println("dao");
	      return sqlSession.selectOne("User.kakaoSelect", user_email);
	   }

	   // 메인 화면 세션(유저 이름)띄워주기
	   
	   
	// 일반 로그인
		public boolean login(String user_email, String user_pw) {
			HashMap<String, String> userMap = new HashMap<>();
			userMap.put("user_email", user_email);
			userMap.put("user_pw", user_pw);
			return (Integer)(sqlSession.selectOne("User.login", userMap)) == 1;
		}
		
		
		//이메일(id) 검사 	-> true(중복)
		public boolean checkEmail(String user_email) {
			return (Integer)(sqlSession.selectOne("User.checkEmail", user_email)) == 1;
		}
		
		//이메일로 회원가입
		public void joinEmail(HashMap<String, String> emailJoinInfo) {
			sqlSession.insert("User.joinEmail", emailJoinInfo);
		}

		//이메일로 유저번호 찾기
		public int getUserNoByEmail(String user_email) {
			return (Integer)sqlSession.selectOne("User.getUserNoByEmail", user_email);
		}
		
		//카카오 회원가입
		public void joinKakao(HashMap<String, String> kakaoJoinInfo) {
			sqlSession.insert("User.joinKakao", kakaoJoinInfo);
		}
	
	// 프로젝트에서 유저번호를 받아 프로젝트로 전달
	public String getUserName(int userNo) {
		return sqlSession.selectOne("User.getName", userNo);
	}
	
	// 프로젝트에서 유저 번호를 받아 프로젝트디테일로 전달
	public Map<String, String> getPuser(int userNo){
		return sqlSession.selectOne("User.getPuser", userNo);
	}


	
	// 占쏙옙占쏙옙 화占쏙옙 占쏙옙占쏙옙(占쏙옙占쏙옙 占싱몌옙)占쏙옙占쏙옙殮占�
}
