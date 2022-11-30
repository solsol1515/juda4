package middleProject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import middleProject.domain.CartRowVO;
import middleProject.domain.LoginVO;
import middleProject.service.JudaService;

@RestController
public class AjaxRestController {
	
	@Autowired
	private JudaService judaService;


	
// =======================================================	
	/* [ 장바구니 ] 장바구니 추가/확인 (상품상세 페이지) */
	
		// 같은 상품을 또 넣을지 확인
		@GetMapping("checkCart.do")
		public String checkCart(CartRowVO vo) {
				return judaService.checkCart(vo);
		}
		
		// 장바구니 추가
		@PostMapping("insertCart.do")
		public void insertCart(CartRowVO vo) {
				judaService.insertCart(vo);
		}
		
		// 장바구니의 상품의 수량만 바꾸기	(장바구니창에도 사용)
		@PostMapping("updateCart.do")
		public void updateCart(CartRowVO vo, HttpSession session) {
				String id = (String) session.getAttribute("member_id");
				vo.setMember_id(id);
				judaService.updateCart(vo);
		}
	
}// end of controller

// =======================================================		
/* [로그인] */

// 로그인 중복 체크
//	@PostMapping(value="checkId.do") //, produces = "application/text; charset=UTF-8")
//	public Integer checkId(LoginVO vo) {
//		System.out.println(">>>> "+vo);
//		return 1;
//	}