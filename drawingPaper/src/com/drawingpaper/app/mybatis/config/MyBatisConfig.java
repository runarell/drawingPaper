package com.drawingpaper.app.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class MyBatisConfig {
	private static SqlSessionFactory sqlSession_f;
	
	static {
		try {
			String resource = "./com/drawingpaper/app/mybatis/config/config.xml";	
			Reader reader = Resources.getResourceAsReader(resource); 
			sqlSession_f = new SqlSessionFactoryBuilder().build(reader); 
			reader.close(); 
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("초기화 문제 발생, MybatisConfig.java");
		}
	}

	public static SqlSessionFactory getSqlsession_f() {
		return sqlSession_f;
	}
	
	
}
