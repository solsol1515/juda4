package middleProject.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import middleProject.domain.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	public Integer insertBoard(BoardVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		return mybatis.insert("Board.insertBoard", vo);
	}

	public void updateBoard(BoardVO vo) {
		System.out.println("===> Mybatis updateBoard() 호출");
		mybatis.update("Board.updateBoard", vo);
	}

	// 조회수 카운팅
	public void updateView_count(Integer q_id) {
		System.out.println("===> Mybatis updateView() 호출");
		mybatis.update("Board.updateView_count", q_id);
	}
	
	public void deleteBoard(Integer q_id) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		System.out.println(q_id);
		mybatis.delete("Board.deleteBoard", q_id);
	}

	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		
		return mybatis.selectOne("Board.getBoard", vo);
	}

	public List<BoardVO> getBoardList(HashMap map) {
		System.out.println("===> Mybatis getBoardList() 호출");
		List<BoardVO> result = mybatis.selectList("Board.getBoardList", map);
		System.out.println(result);
		
		return result;
	}
	
	public int updateView_count(String q_id) {
		System.out.println("조회수 카운트 들어가남? 제발 들어가주세요 :: "+q_id	);
		return 1;
	}

	
}