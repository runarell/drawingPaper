package com.drawingpaper.app.user.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.drawingpaper.app.mybatis.config.MyBatisConfig;

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
		return (Integer)(sqlSession.selectOne("user.login", userMap)) == 1;
	}
}
