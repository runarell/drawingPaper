package com.drawingpaper.app.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.drawingpaper.app.mybatis.config.MyBatisConfig;
import com.drawingpaper.app.user.vo.UserVO;

public class UserDAO {

	SqlSessionFactory sessionFactory = MyBatisConfig.getSqlsession_f();
	SqlSession sqlSession;
	
	public UserDAO() { // 기본생성자를 통해 세션을 심어줘야 sql문이 작동된다.
		sqlSession = sessionFactory.openSession(true);
	}
	
	// 카카오 로그인
	
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
	public void joinEmail(String name, String email, String pw) {
		HashMap<String, String> emailJoinInfo = new HashMap<>();
		emailJoinInfo.put("user_email", email);
		emailJoinInfo.put("user_name", name);
		emailJoinInfo.put("user_pw", pw);
		
		sqlSession.insert("User.joinEmail", emailJoinInfo);
	}
}
