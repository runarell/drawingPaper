package testpackage;

import com.drawingpaper.app.project.dao.ProjectDAO;
import com.drawingpaper.app.project.vo.ProjectVO;

public class test {
	public static void main(String[] args) {
		ProjectDAO dao = new ProjectDAO();
		ProjectVO vo = new ProjectVO();
		
//		project.setUser_no(Integer.parseInt(req.getParameter("user_no")));
//		project.setPro_title(req.getParameter("pro_title"));
//		project.setPro_category(req.getParameter("pro_category"));
//		project.setPro_images(req.getParameter("pro_images"));
//		
		
//		project.setUser_no(Integer.parseInt(req.getParameter("user_no")));
//		project.setPro_title(req.getParameter("pro_title"));
//		project.setPro_category(req.getParameter("pro_category"));
//		project.setPro_images(req.getParameter("pro_images"));
//		
//		
//		project.setPro_goalprice(req.getParameter("pro_goalprice"));
//		project.setPro_ticketprice(req.getParameter("pro_ticketprice"));
//		project.setPro_start(req.getParameter("pro_start"));
//		project.setPro_end(req.getParameter("pro_end"));
//		
//		project.setPro_content(req.getParameter("pro_content"));
//		
//		project.setPro_addr(req.getParameter("pro_addr"));
//		project.setPro_addrdetail(req.getParameter("pro_addrdetail"));
//		project.setPro_repimage(req.getParameter("pro_repimage"));
		
		vo.setUser_no(1);
		vo.setPro_title("testTitle");
		vo.setPro_category("연극");
		vo.setPro_images("img1,img2");
		
		dao.createDefaultPjt(vo);
	}
}
