package middleProject.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;

public interface JudaService {
	// 구경하기
	List<GoodsVO> getGoodsList(GoodsTypeVO vo);
	
	// 가입하기
	Integer insertMember(MemberVO vo);

	// 로그인
	public Integer selectAllLogin (LoginVO vo);
	// 로그아웃?
	public void logout (HttpSession session);
	
	Integer selectAllLogin(LoginVO vo, HttpSession session);

	boolean loginCheck(LoginVO vo, HttpSession session); 
}
