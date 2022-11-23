package middleProject.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import middleProject.domain.BoardVO;
import middleProject.domain.GoodsTypeVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;
import middleProject.service.JudaService;

@Controller
public class JudaController {
	
	@Autowired
	private JudaService judaService;

	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		return url;
	}
	
	// 구경하기
	@RequestMapping("shop.do")
	public void getGoodsList(GoodsTypeVO vo, Model m) {
		m.addAttribute("goodsList", judaService.getGoodsList(vo));
	}
	
	
	// 가입하기
	@RequestMapping("joinSuccess.do")
	public void insertMember(MemberVO vo, Model m) {
		vo.setTel(vo.getP_num1()+"-"+vo.getP_num2()+"-"+vo.getP_num3());
		vo.setBirth(vo.getYy()+"-"+vo.getMm()+"-"+vo.getDd());
		System.out.println(vo);
		m.addAttribute("result", judaService.insertMember(vo));
	}
	
	// 로그인
	 @RequestMapping("login_check.do")
	 public String selectAllLogin(LoginVO vo, HttpSession session) {
		 
		 System.out.println(vo);
		 
		 Integer result = judaService.selectAllLogin(vo);
		 
		 System.out.println(result);		 
		 
		 if(result == 1) {
			 
			 session.setAttribute("id",  vo.getMember_id() );
			 
		return "index";
		
		 }else { // 로그인 실패 시
			 return "loginForm";
		 } // end of else() 
		 
	 } // end of selectAllLogin()
	//***********************************************
	
	 // 상세 페이지 (수량 증감)
	 @RequestMapping("sangse.do")
	   public void getGoods(String goods_id, Model m) {
	      m.addAttribute("vo", judaService.getGoods(goods_id));
	   }
	 
	 // ##### 게시판 #####
	   @RequestMapping("getBoardList.do") // 목록보기
	   public void getBoardList(String searchCondition, String searchKeyword, Model m) {
	      System.out.println("searchCondition: " + searchCondition);
	      System.out.println("searchKeyword: " + searchKeyword);
	      
	      HashMap map = new HashMap();
	      map.put("searchCondition", searchCondition);
	      map.put("searchKeyword", searchKeyword);
	      
		   List<BoardVO> list=judaService.getBoardList(map);
	      m.addAttribute("boardList", list);
	   } // end of getBoardList
	   
	   
	   @RequestMapping("insertBoard.do") // 새글쓰기
	   public void insertBoard() {
	   } // end of insertBoard
	   
	   @RequestMapping("saveBoard.do") // 저장하기
	   public String saveBoard(BoardVO boardVO){
		 //  System.out.println(boardVO.getContent());
		judaService.insertBoard(boardVO);
		return "redirect:getBoardList.do";
	   } // end of saveBoard
	   
	   @RequestMapping("getBoard.do") // 작성한 글 보기
	   public void getBoard(BoardVO boardVO, Model m) { // 데이터 넘겨주기 위해서 Model m 사용
		   m.addAttribute("board", judaService.getBoard(boardVO));
	   } // end of getBoard 
	   
	   // 수정하기
	   @RequestMapping("updateBoard.do")
	   public String updateBoard(BoardVO vo) {
		   judaService.updateBoard(vo);
		   return "redirect:getBoardList.do";
	   }
	   
	   // 삭제하기
	   @RequestMapping("deleteBoard.do")
	   public String deleteBoard(BoardVO vo) {
	      judaService.deleteBoard(vo);
	      return "redirect:getBoardList.do";
	   }
	   
	   // 컨트롤러 테스트 함수
	   @RequestMapping("test.do")
	   public void test() {
		   System.out.println("test.do 요청 확인");
	   }
	 
}
