package com.drawingpaper.app.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

// SqlSession Factory Builder (세션에 담아주는 역할)
public class MyBatisConfig {
	private static SqlSessionFactory sqlSession_f;
	
	static {
		try {
			String resource = "./config/config.xml";	// 경로 설정 (config파일을 통해 공장을 짓는다.)
			Reader reader = Resources.getResourceAsReader(resource); // 해당 경로 파일을 읽어온다.
			sqlSession_f = new SqlSessionFactoryBuilder().build(reader); // 팩토리를 만든후, 경로를 읽어오고 공장을 만든다.
			reader.close(); // 읽기를 닫는다.
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("초기화 문제 발생, MyBatisConfig.java");
		}
	}

	public static SqlSessionFactory getSqlsession_f() {	// getter 생성 -> 가져오기만 하면 됌
		return sqlSession_f;
	}
	
	
}
