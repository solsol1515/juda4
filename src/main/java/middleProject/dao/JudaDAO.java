package middleProject.dao;

import java.util.HashMap;
import java.util.List;

import middleProject.domain.BoardVO;
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
	int selectAllLogin(LoginVO vo) ;
	LoginVO idCheck(LoginVO vo);

	// 상세페이지 (수량 증감)		
	GoodsVO getGoods(String goods_id);
		
	// 게시판 
	public void insertBoard(BoardVO vo);

	public void updateBoard(BoardVO vo) ;

	public void deleteBoard(BoardVO vo);

	public BoardVO getBoard(BoardVO vo) ;

	public List<BoardVO> getBoardList(HashMap map) ;
}
