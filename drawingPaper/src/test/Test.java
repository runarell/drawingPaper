package test;

import com.drawingpaper.app.user.dao.UserDAO;
import com.drawingpaper.app.user.vo.UserVO;

public class Test {
	public static void main(String[] args) {
		UserDAO dao = new UserDAO();
		UserVO vo = new UserVO();
		vo.setUser_email("ccc@naver.com");
		vo.setUser_name("cc");
		vo.setUser_pw("0000");
		
//		dao.joinEmail(vo);
		dao.joinEmail("홍길동", "hgd123@naver.com", "1234");
		
		if(dao.checkEmail("ccc@naver.com")) {
			System.out.println("존재하는 email입니다.");
		} else {
			System.out.println("존재하지 않는 email입니다.");
		}
		
		
	}
}
