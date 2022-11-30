package middleProject.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import middleProject.dao.AdminDAO;
import middleProject.domain.AdminLoginVO;

@Service
public class AdminServiceImpl implements AdminService {

	 @Autowired    //dao를 호출하기때문에 의존성을 주입한다.
	 AdminDAO adminDAO;

	public boolean loginCheck(AdminLoginVO vo) {
		return adminDAO.loginCheck(vo);
	}
	 
	 
	
}
