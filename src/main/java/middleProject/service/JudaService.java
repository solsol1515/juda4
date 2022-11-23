package middleProject.service;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import middleProject.domain.BoardVO;
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
	Integer selectAllLogin(LoginVO vo, HttpSession session);
	
	// 로그아웃?
	public void logout (HttpSession session);
	
	// 로그인 체크(아이디 비밀번호 일치 여부 확인)
	boolean loginCheck(LoginVO vo, HttpSession session);
	
	// 상세페이지 (수량 증감)
	public GoodsVO getGoods(String goods_id);
	
	
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
