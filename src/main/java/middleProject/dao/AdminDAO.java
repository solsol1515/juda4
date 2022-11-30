package middleProject.dao;

import middleProject.domain.AdminLoginVO;

public interface AdminDAO {

	 boolean loginCheck(AdminLoginVO vo);    //로그인을 체크하는 메소드
	 
}
