package middleProject.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import middleProject.domain.CartRowVO;
import middleProject.domain.GoodsTypeVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;
import middleProject.service.JudaService;

@Controller
public class JudaController {
	
	@Autowired
	private JudaService judaService;

	// 페이지 열기
	@RequestMapping("{url}.do")
	public String viewPage(@PathVariable String url) {
		return url;
	}
	
// =======================================================	
	/* [ 함께하기(회원가입) ] */
	
	// 회원 가입
	@RequestMapping("joinSuccess.do")
	public void insertMember(MemberVO vo, Model m) {
		vo.setTel(vo.getP_num1()+"-"+vo.getP_num2()+"-"+vo.getP_num3());
		vo.setBirth(vo.getYy()+"-"+vo.getMm()+"-"+vo.getDd());

		m.addAttribute("result", judaService.insertMember(vo));
		m.addAttribute("member_id", vo.getMember_id()); // ## 한 줄 추가한 거 맞는지 확인 !!! 회원가입 축하할 때 아이디 명시하기 위해서
	}

 // =======================================================	
	/* [ 들어가기(로그인) ] */	
	
	// 로그인
    @RequestMapping("login_check.do")
    public String selectLogin(LoginVO vo, HttpSession session) {
       
       Integer result = judaService.selectLogin(vo);
       
       if(result == 1) {		// 로그인 성공 시
          session.setAttribute("member_id",  vo.getMember_id() );
          return "index";
       }else { 					// 로그인 실패 시
          return "loginForm";
       } // end of else() 
       
    } // end of selectAllLogin()
    
    // 로그아웃
    @RequestMapping("logOut.do")
    public String logOut(HttpSession session, HttpServletRequest request) {
    	session.invalidate();
    	// System.out.println(request.getServletPath());
    	return "index";
    }
// =======================================================   
	/* [ 구경하기(쇼핑) ] */
    
  	// 상품목록
  	@RequestMapping("shop.do")
  	public void getGoodsList(GoodsTypeVO vo, Model m) {
  		m.addAttribute("goodsList", judaService.getGoodsList(vo));
  	}
  	
  	// 상품상세 페이지
  	@RequestMapping("sangse.do")
  	public void getGoods(String goods_id, Model m) {
  		m.addAttribute("vo", judaService.getGoods(goods_id));
  	}
  	
//  	// 구매하기 (상품상세)
//  	@RequestMapping("pay.do")
//  	public void insertOrder(PayVO payVo) {
//  		payVo.setDelivery_tel(payVo.getP_num1()+"-"+payVo.getP_num2()+"-"+payVo.getP_num3());
//  		judaService.insertOrder(payVo);
//  	}
  	
  	// 장바구니 내용을 가져오기 (장바구니창 띄우기용)
  	@RequestMapping("cart.do")
  	public void getCart(Model m, HttpSession session) {
  		m.addAttribute("cartList", judaService.getCart((String)session.getAttribute("member_id")));
  	}
    
// =======================================================	
  	/* [ 장바구니 ] */
  	
  	// 장바구니 행 삭제
  	@RequestMapping("deleteCart.do")
  	public String deleteCart(CartRowVO vo) {
  		judaService.deleteCart(vo);
  		return "redirect:/cart.do";
  	}
  	
  	
  		
} // end of controller
// =======================================================	 
	 

