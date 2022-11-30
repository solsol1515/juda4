package middleProject.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import middleProject.domain.AdminLoginVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;

	public boolean loginCheck(AdminLoginVO vo) {
		return mybatis.selectOne("Admin.loginCheck", vo);
	}

}
