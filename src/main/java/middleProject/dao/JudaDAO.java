package middleProject.dao;

import java.util.HashMap;
import java.util.List;

import middleProject.domain.CartRowVO;
import middleProject.domain.CartSelectedRowsVO;
import middleProject.domain.CartVO;
import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;
import middleProject.domain.PayListVO;
import middleProject.domain.RankVO;
import middleProject.domain.StockVO;

public interface JudaDAO {
	
	// 가입하기
	Integer insertMember(MemberVO vo);
	
	// 로그인
	Integer selectLogin(LoginVO vo) ;
	
	// 아이디 중복 확인
	Integer checkId(LoginVO vo);
	
// =======================================================	
	/* [상품 목록 페이지] */
	
	// 상품목록 띄우기
	List<GoodsVO> getGoodsList(GoodsTypeVO vo);
	
	// 상품상세 띄우기
	// 수량 증감
	GoodsVO getGoods(Integer goods_id);
	
// =======================================================		

	   /* [ 메인 ] 주간 순위 */

	   List<RankVO> selectRank();
	
	
// =======================================================		
	/* [ 상품 목록 ]*/
	
	// 같은 상품을 또 넣을지 확인
	String checkCart(CartRowVO vo);
	
	// 장바구니에 넣기
	void insertCart(CartRowVO vo);
	
	// 장바구니를 띄우기
	List<CartVO> getCart(String member_id);
	
	// 장바구니의 상품의 수량을 바꾸기
	void updateCart(CartRowVO vo);
	
		
// =======================================================		
	/* [ 장바구니 ] */

	// 장바구니의 행을 삭제하기
	void deleteCart(CartRowVO vo);
	
	// 구매하기
	void insertOrder(PayListVO payVo);	

// =======================================================   
	/* [ 관리자 모드 ] */
	
	// 상품 등록 버튼
	Integer insertGoods(GoodsVO vo);
	
	// 재고 관리 정보 가져오기
	List<StockVO> selectStock();

//=======================================================
	/* [ 결제창 ] */
	
	// 카트의 상품 목록을 결제창에 띄우기
	List<CartVO> getPayCart(CartSelectedRowsVO vo);
	
	// 결제할 상품을 바로 결제창에 띄우기
	CartVO getPayOne(String member_id);
	
	// 회원 정보를 결제창에 올리기
	HashMap<String, String> getMember(String member_id);
	
	// 구매하기 (주문 테이블에 정보 입력)
	void insertPayList(PayListVO payVo);
	
	// 구매하기 (주문상세 테이블에 정보 입력)
	void insertPay_Detail(CartRowVO crVO);
	
	// 카트 삭제하기
	void deletePayCart(CartSelectedRowsVO vo);
	
} // end of DAO