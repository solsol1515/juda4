package middleProject.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import middleProject.domain.BoardVO;
import middleProject.domain.CartInsertVO;
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
	// 로그인 체크(아이디 비밀번호 일치 여부 확인)
	boolean loginCheck(LoginVO vo, HttpSession session);
	
	
	

	// 로그아웃?
	public void logout (HttpSession session);

	// =======================================================	
	/* [상품 목록 페이지] */
	
	// 상품목록 띄우기
	List<GoodsVO> getGoodsList(GoodsTypeVO vo);
	
	// 상품상세 띄우기
	GoodsVO getGoods(String goods_id);
	
// =======================================================	
	/* [상품 상세 페이지] */
	
	// 같은 상품을 또 넣을지 확인
		Integer checkCart(CartInsertVO vo);
		
		// 장바구니에 넣기
		void insertCart(CartInsertVO vo);
		
		// 장바구니를 띄우기
		List<CartVO> getCart();
		
		// 구매하기
		void insertOrder(PayVO payVo);
		
	
// =======================================================	
	
	// ========== 게시판 ==========
	// 글 등록
	void insertBoard(BoardVO vo);

	// 글 수정
	void updateBoard(BoardVO vo);

	// 글 삭제
	void deleteBoard(BoardVO vo);

	// 글 상세 조회
	BoardVO getBoard(BoardVO vo);

	// 글 목록 조회
	List<BoardVO> getBoardList(HashMap map);
	
	
}
