package middleProject.service;

import javax.servlet.http.HttpSession;

import middleProject.domain.AdminLoginVO;

public interface AdminService {

	 boolean loginCheck(AdminLoginVO vo); //관리자 로그인을 체크하는 메소드
	
}
