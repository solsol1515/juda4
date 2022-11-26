package middleProject.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import middleProject.domain.BoardVO;
import middleProject.domain.CartRowVO;
import middleProject.domain.CartVO;
import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;
import middleProject.domain.PayVO;

public interface JudaService {
	
	/* [로그인 및 회원가입] */
	
	// 로그인
	Integer selectLogin(LoginVO vo);
	
	// 회원가입
	Integer insertMember(MemberVO vo);
	
	// 아이디 중복 확인
	Integer checkId(LoginVO vo);

	
// =======================================================	
	/* [ 상품 목록 페이지 ] */
	
	// 상품목록 띄우기
	List<GoodsVO> getGoodsList(GoodsTypeVO vo);
	
	// 상품상세 띄우기
	GoodsVO getGoods(String goods_id);
	
// =======================================================	
	/* [ 상품 상세 페이지 ] */
	
	// 같은 상품을 또 넣을지 확인
	String checkCart(CartRowVO vo);
		
	// 장바구니에 넣기
	void insertCart(CartRowVO vo);
		
	// 장바구니를 띄우기
	List<CartVO> getCart(String member_id);
		
	// 장바구니의 상품의 수량을 바꾸기
	void updateCart(CartRowVO vo);
		
// =======================================================	

	
// =======================================================	
	/* [ 장바구니 ] */
	
	// 장바구니의 행을 삭제하기
	void deleteCart(CartRowVO vo);
	
	// 구매하기
	void insertOrder(PayVO payVo);
	
}
