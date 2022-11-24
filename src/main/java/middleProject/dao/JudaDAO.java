package middleProject.dao;

import java.util.HashMap;
import java.util.List;

import middleProject.domain.BoardVO;
import middleProject.domain.CartInsertVO;
import middleProject.domain.CartVO;
import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;
import middleProject.domain.PayVO;

public interface JudaDAO {
	
	// 가입하기
	Integer insertMember(MemberVO vo);
	
	// 로그인
	Integer selectLogin(LoginVO vo) ;
	
	// 아이디 중복 확인
	Integer idCheck(LoginVO vo);
	
// =======================================================	
	/* [상품 페이지] */
	
	// 상품목록 띄우기
	List<GoodsVO> getGoodsList(GoodsTypeVO vo);
	
	// 상품상세 띄우기
	// 수량 증감
	GoodsVO getGoods(String goods_id);
	
// =======================================================		
	

	
// =======================================================		
	/* [상품목록]*/
	
	// 같은 상품을 또 넣을지 확인
	Integer checkCart(CartInsertVO vo);
	
	// 장바구니에 넣기
	void insertCart(CartInsertVO vo);
	
	// 장바구니를 띄우기
	List<CartVO> getCart();
	
	// 구매하기
		void insertOrder(PayVO payVo);
		
// =======================================================		
		
	// 게시판 
	public void insertBoard(BoardVO vo);

	public void updateBoard(BoardVO vo) ;

	public void deleteBoard(BoardVO vo);

	public BoardVO getBoard(BoardVO vo) ;

	public List<BoardVO> getBoardList(HashMap map) ;
}
