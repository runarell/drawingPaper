package com.drawingpaper.app.payment.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.drawingpaper.app.mybatis.config.MyBatisConfig;
import com.drawingpaper.app.payment.vo.PaymentVO;

public class PaymentDAO {

	SqlSessionFactory sessionFactory = MyBatisConfig.getSqlsession_f();
	SqlSession sqlSession;
	
	public PaymentDAO() {
		sqlSession = sessionFactory.openSession(true);
	}
	
	// 결제 완료시 결제 정보 업로드
	public void payComplete( PaymentVO payment ) {
		sqlSession.insert("Payment.payComplete", payment);
		sqlSession.insert("Payment.payComplete2", payment);
	}
	
	public PaymentVO PaymentView( int pro_no ) {
		return sqlSession.selectOne("Payment.PaymentView", pro_no);
	}
}
