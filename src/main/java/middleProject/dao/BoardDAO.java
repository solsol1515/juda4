package middleProject.dao;

import java.util.HashMap;
import java.util.List;

import middleProject.domain.BoardVO;

public interface BoardDAO {

	public Integer insertBoard(BoardVO vo);

	public void updateBoard(BoardVO vo) ;
	
	// 조회수 카운팅
	void updateView_count(Integer qId);

	public void deleteBoard(Integer q_id);

	public BoardVO getBoard(BoardVO vo) ;

	public List<BoardVO> getBoardList(HashMap map) ;
	
	
}
