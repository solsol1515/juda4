package middleProject.dao;

import java.util.List;

import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;

public interface JudaDAO {
	
	// 구경하기
	List<GoodsVO> getGoodsList(GoodsTypeVO vo);
	
	// 가입하기
	Integer insertMember(MemberVO vo);
	
	// 로그인
		public int selectAllLogin(LoginVO vo) ;
			LoginVO idCheck(LoginVO vo);
		
	
}