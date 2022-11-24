package middleProject.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import middleProject.dao.JudaDAO;
import middleProject.domain.BoardVO;
import middleProject.domain.CartInsertVO;
import middleProject.domain.CartVO;
import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;
import middleProject.domain.PayVO;

@Service("judaService")
public class JudaServiceImpl implements JudaService {
	
	@Autowired
	private JudaDAO judaDAO;

// =======================================================		
// =======================================================		
// =======================================================		

	/* [ 로그인 및 회원가입 ] */
	//	아이디 중복 체크 sql + 로그인 기능 sql
	public Integer selectLogin(LoginVO vo) {
		return judaDAO.selectLogin(vo);
	} // end of selectAllLogin()
	
	// 로그인???
	public Integer selectLogin(LoginVO vo, HttpSession session) {
		Integer name = judaDAO.selectLogin(vo);
		if(name != null) { // 세션 변수 저장
			session.setAttribute("id", vo.getMember_id());
			session.setAttribute("name", name);
		}
		return name;
	}
	
	// 가입하기
	public Integer insertMember(MemberVO vo) {
		return judaDAO.insertMember(vo);
	}
	
// =======================================================		
	/* [ 상품 목록 페이지 ] */
	
	// 상품 목록 띄우기
	public List<GoodsVO> getGoodsList(GoodsTypeVO vo) {
		return judaDAO.getGoodsList(vo);
	}
	
	// 상품상세 띄우기
	public GoodsVO getGoods(String goods_id) {
		return judaDAO.getGoods(goods_id);
	}
	
// =======================================================
	/* [상품 상세 페이지] */


	// 같은 상품을 또 넣을지 확인
	public Integer checkCart(CartInsertVO vo) {
		return judaDAO.checkCart(vo);
	}
	
	// 장바구니에 넣기
	public void insertCart(CartInsertVO vo) {
		judaDAO.insertCart(vo);
	}
	// 장바구니를 띄우기
	public List<CartVO> getCart() {
		return judaDAO.getCart();
	}
	
	// 구매하기
	public void insertOrder(PayVO payVo) {
		judaDAO.insertOrder(payVo);
	}

	@Override
	public Integer checkId(LoginVO vo) {
		return null;
	}

	@Override
	public boolean loginCheck(LoginVO vo, HttpSession session) {
		return false;
	}

	@Override
	public void logout(HttpSession session) {
	}

	@Override
	public void insertBoard(BoardVO vo) {
	}

	@Override
	public void updateBoard(BoardVO vo) {
	}

	@Override
	public void deleteBoard(BoardVO vo) {
	}

	@Override
	public BoardVO getBoard(BoardVO vo) {
		return null;
	}

	@Override
	public List<BoardVO> getBoardList(HashMap map) {
		return null;
	}
	
//	@Override
//	public void logout(HttpSession session) {
//	}
//
//	@Override
//	public boolean loginCheck(LoginVO vo, HttpSession session) {
//		return false;
//	}
//
//	@Override
//	public void insertBoard(BoardVO vo) {
//	}
//
//	@Override
//	public void updateBoard(BoardVO vo) {
//	}
//
//	@Override
//	public void deleteBoard(BoardVO vo) {
//	}
//
//	@Override
//	public BoardVO getBoard(BoardVO vo) {
//		return null;
//	}
//
//	@Override
//	public List<BoardVO> getBoardList(HashMap map) {
//		return null;
//	}
	
	
	// ##### 게시판 #####
//	public void insertBoard(BoardVO vo) {
//		judaDAO.insertBoard(vo);
//	}
//
//	public void updateBoard(BoardVO vo) {
//		judaDAO.updateBoard(vo);
//	}
//
//	public void deleteBoard(BoardVO vo) {
//		judaDAO.deleteBoard(vo);
//	}
//
//	public BoardVO getBoard(BoardVO vo) {
//		return judaDAO.getBoard(vo);
//	}
//
//	public List<BoardVO> getBoardList(HashMap map) {
//		return judaDAO.getBoardList(map);
//	}
	
}
