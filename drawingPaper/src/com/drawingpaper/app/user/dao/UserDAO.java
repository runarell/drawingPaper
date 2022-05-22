package com.drawingpaper.app.user.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.drawingpaper.app.mybatis.config.MyBatisConfig;

public class UserDAO {

	SqlSessionFactory sessionFactory = MyBatisConfig.getSqlsession_f();
	SqlSession sqlSession;
	
	public UserDAO() { // �⺻�����ڸ� ���� ������ �ɾ���� sql���� �۵��ȴ�.
		sqlSession = sessionFactory.openSession(true);
	}
	

	 // �Ϲ� �α��� �α׾ƿ� ��ȿ���� ��� true�� �α��� ����
	   // �α��� ��ȿ�� üũ
	   public boolean emailCheck(String user_email) {
	      return (Integer)(sqlSession.selectOne("User.emailCheck", user_email)) == 1;
	   }
	   
	   // ��й�ȣ ��ȿ�� üũ
	   public boolean pwCheck(String user_pw) {
	      return (Integer)(sqlSession.selectOne("User.pwCheck", user_pw)) == 1;
	   }
	   
	   // �α׾ƿ�
	   public boolean logout() {
	      return true;
	   }
	   
	   // īī�� api ȸ������
	   public int kakaoJoin(HashMap<String, String> kakaoJoinMap){
	      int userNumber = 0;
	      try {
	         userNumber = sqlSession.insert("User.kakaoInsert", kakaoJoinMap);
	         System.out.println("userNumber  : " + userNumber);
	      } catch (Exception e) {;}
	      return userNumber;
	   }
	   
	   // īī�� api �α���
	   public Map<String, String> kakaoLogin(String user_email) {
	      System.out.println("dao");
	      return sqlSession.selectOne("User.kakaoSelect", user_email);
	   }

	   // ���� ȭ�� ����(���� �̸�)����ֱ�
	   
	   
	// �Ϲ� �α���
		public boolean login(String user_email, String user_pw) {
			HashMap<String, String> userMap = new HashMap<>();
			userMap.put("user_email", user_email);
			userMap.put("user_pw", user_pw);
			return (Integer)(sqlSession.selectOne("User.login", userMap)) == 1;
		}
		
		
		//�̸���(id) �˻� 	-> true(�ߺ�)
		public boolean checkEmail(String user_email) {
			return (Integer)(sqlSession.selectOne("User.checkEmail", user_email)) == 1;
		}
		
		//�̸��Ϸ� ȸ������
		public void joinEmail(HashMap<String, String> emailJoinInfo) {
			sqlSession.insert("User.joinEmail", emailJoinInfo);
		}

		//�̸��Ϸ� ������ȣ ã��
		public int getUserNoByEmail(String user_email) {
			return (Integer)sqlSession.selectOne("User.getUserNoByEmail", user_email);
		}
		
		//īī�� ȸ������
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
}