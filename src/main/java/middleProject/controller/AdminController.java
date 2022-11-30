package middleProject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import middleProject.domain.AdminLoginVO;
import middleProject.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
// =======================================================	
	/* [ 들어가기(로그인) ] */	

	// 관리자 로그인
    @RequestMapping("adminLogin_check.do")
    public String selectAdminLogin(AdminLoginVO vo, HttpSession session) {
    	
    	boolean result = adminService.loginCheck(vo);
    	
    	if(result) {		// 로그인 성공 시
    		session.setAttribute("admin_id", vo.getAdmin_id());
    		return "redirect:/admin.do";
    	}else { // 로그인 실패 시
    		return "redirect:/adminLogin.do";
    	} // end of else
	} // end of selectAdminLogin()
    
    // 로그아웃
    @RequestMapping("adminLogOut.do")
    public String logOut(HttpSession session) {
    	session.invalidate();
    	return "redirect:/adminLogin.do";
    }
	
}
