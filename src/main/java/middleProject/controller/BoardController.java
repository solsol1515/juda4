package middleProject.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import middleProject.domain.BoardVO;
import middleProject.service.BoardService;

@Controller
public class BoardController {
   
   @Autowired
   private BoardService boardService;

   // 목록보기
   @RequestMapping("community.do") 
   public void getBoardList(String searchCondition, String searchKeyword, Model m) {
      
      HashMap map = new HashMap();
      map.put("searchCondition", searchCondition);
      map.put("searchKeyword", searchKeyword);
      
	   List<BoardVO> list=boardService.getBoardList(map);
      m.addAttribute("boardList", list);
   } // end of getBoardList
   
   	// 새글쓰기
   @RequestMapping("createBoard.do") 
   public String insertBoard(BoardVO vo, HttpSession session) {
	   Integer result = boardService.insertBoard(vo);
	   return "redirect:community.do?result=" + result;
   } // end of insertBoard
   
   // 저장하기 
   @RequestMapping("saveBoard.do")
   public String saveBoard(BoardVO boardVO){
	 //  System.out.println(boardVO.getContent());
	   boardService.insertBoard(boardVO);
	return "redirect:community.do";
   } // end of saveBoard
   
   // 작성한 글 보기
   @RequestMapping("getBoard.do") 
   public void getBoard(BoardVO boardVO, Model m) { 
	   boardService.updateView_count(boardVO.getQ_id());
	   m.addAttribute("board", boardService.getBoard(boardVO));
   } // end of getBoard 
   
   
   // 수정하기
   @RequestMapping("updateBoard.do")
   public String updateBoard(BoardVO vo) {
	   System.out.println("수정");
	   boardService.updateBoard(vo);
	   return "redirect:community.do";
   } // end of updateBoard
   

   // 삭제하기
   @RequestMapping("deleteBoard.do")
   public String deleteBoard(Integer q_id) {
	   System.out.println("삭제 ");
	   boardService.deleteBoard(q_id);
      return "redirect:community.do";
   }
   
   
   // 컨트롤러 테스트 함수
   @RequestMapping("test.do")
   public void test() {
	   System.out.println("test.do 요청 확인");
   }
   
}