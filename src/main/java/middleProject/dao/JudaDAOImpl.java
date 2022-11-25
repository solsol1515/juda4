package middleProject.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import middleProject.domain.BoardVO;
import middleProject.domain.CartInsertVO;
import middleProject.domain.CartVO;
import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;
import middleProject.domain.PayVO;

@Repository("judaDAO")
public class JudaDAOImpl implements JudaDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

// =======================================================		
	
	//**** 로그인/회원가입 ****//
	
		// 로그인
		public Integer selectLogin(LoginVO vo) {
			return mybatis.selectOne("JudaMap.selectLogin", vo);
		}
		
		// 회원가입
		public Integer insertMember(MemberVO vo) {
			return mybatis.insert("JudaMap.insertMember", vo);
		}

		// 아이디 중복 확인
		public Integer checkId(LoginVO vo) {
			return mybatis.selectOne("JudaMap.checkId", vo);
		}
// =======================================================		
		/* [상품 목록 페이지] */
		
	// 상품 목록 띄우기
	public List<GoodsVO> getGoodsList(GoodsTypeVO vo) {
		return mybatis.selectList("JudaMap.getGoodsList", vo);
	}
	
	// 상품 상세 페이지 띄우기
	public GoodsVO getGoods(String goods_id) {
		return mybatis.selectOne("JudaMap.getGoods", goods_id);
	}	

// =======================================================		
	/* [상품 상세 페이지] */
	
	// 같은 상품을 또 넣을지 확인
	public Integer checkCart(CartInsertVO vo) {
		return mybatis.selectOne("JudaMap.checkCart", vo);
	}
	
	// 장바구니에 넣기
	public void insertCart(CartInsertVO vo) {
		mybatis.insert("JudaMap.insertCart", vo);
	}
	// 장바구니를 띄우기
	public List<CartVO> getCart() {
		return mybatis.selectList("JudaMap.getCart");
	}

	// 구매하기
	public void insertOrder(PayVO payVo) {
		mybatis.insert("JudaMap.insertDelivery", payVo);
		mybatis.insert("JudaMap.insertOrderList", payVo);
	}
	
// =======================================================		
	

//	// ##### 게시판 #####
//	public void insertBoard(BoardVO vo) {
//		System.out.println("===> Mybatis insertBoard() 호출");
//		int result = mybatis.insert("JudaMap.insertBoard", vo); // namespace.아이디
//		System.out.println(result);
//	}
//
//	public void updateBoard(BoardVO vo) {
//		System.out.println("===> Mybatis updateBoard() 호출");
//		mybatis.update("BoardDAO.updateBoard", vo);
//	}
//
//	public void deleteBoard(BoardVO vo) {
//		System.out.println("===> Mybatis deleteBoard() 호출");
//		mybatis.delete("BoardDAO.deleteBoard", vo);
//	}
//
//	public BoardVO getBoard(BoardVO vo) {
//		System.out.println("===> Mybatis getBoard() 호출");
//		return mybatis.selectOne("BoardDAO.getBoard", vo);
//	}
//
//	public List<BoardVO> getBoardList(HashMap map) {
//		System.out.println("===> Mybatis getBoardList() 호출");
//		return mybatis.selectList("BoardDAO.getBoardList", map);
//	}
//
//	@Override
//	public Integer idCheck(LoginVO vo) {
//		return null;
//	}
}
