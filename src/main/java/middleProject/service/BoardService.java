package middleProject.service;

import java.util.HashMap;
import java.util.List;

import middleProject.domain.BoardVO;


public interface BoardService {
	// 글 등록
	Integer insertBoard(BoardVO vo);

	// 글 수정
	void updateBoard(BoardVO vo);

	// 조회수 카운팅
	void updateView_count(Integer qId);
	
	// 글 삭제
	void deleteBoard(Integer q_id);

	// 글 상세 조회
	BoardVO getBoard(BoardVO vo);

	// 글 목록 조회
	List<BoardVO> getBoardList(HashMap map);
	
}
