package middleProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import middleProject.domain.CartInsertVO;
import middleProject.domain.LoginVO;
import middleProject.service.JudaService;

@RestController
public class AjaxRestController {
	
	@Autowired
	private JudaService judaService;

// =======================================================		
	/* [로그인] */

	// 로그인 중복 체크
	@PostMapping(value="checkId.do") //, produces = "application/text; charset=UTF-8")
	public Integer checkId(LoginVO vo) {
		System.out.println(">>>> "+vo);
		return 1;
	}

// =======================================================	

	
// =======================================================	
	
	//**** 장바구니 추가/확인 (상품상세 페이지) ****//
	
		// 같은 상품을 또 넣을지 확인
		@GetMapping("checkCart.do")
		public Integer checkCart(CartInsertVO vo) {
			return judaService.checkCart(vo);
		}
		
		// 장바구니 추가
		@PostMapping("insertCart.do")
		public void insertCart(CartInsertVO vo) {
			judaService.insertCart(vo);
		}
	
	
}
