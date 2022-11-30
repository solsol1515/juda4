package middleProject.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import middleProject.domain.CartRowVO;
import middleProject.domain.CartSelectedRowsVO;
import middleProject.domain.CartVO;
import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
import middleProject.domain.LoginVO;
import middleProject.domain.MemberVO;
import middleProject.domain.PayListVO;
import middleProject.domain.StockVO;
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
	/* [ 메인 ] */

	// 주간 순위
	@RequestMapping("index.do")
	   public void selectRank(Model m) {
	      m.addAttribute("rankList", judaService.selectRank());
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
	          session.setAttribute("member_id",  vo.getMember_id());
	          if( vo.getMember_id().equals("admin")) { // 관리자 아이디로 로그인 시, 관리자 메인 화면으로 이동
	        	  return "redirect:admin.do";
	          }
	          	  return "index"; // 일반 회원 로그인 시 메인 화면으로 이동
       		}else { // 로그인 실패 시
       			return "loginForm";
       		} // end of else() 
    } // end of selectAllLogin()
    
    // 로그아웃
    @RequestMapping("logOut.do")
    public String logOut(HttpSession session) {
    	session.invalidate();
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
  	public void getGoods(Integer goods_id, Model m) {
  		m.addAttribute("vo", judaService.getGoods(goods_id));
  	}
  	
  	// 장바구니 내용을 가져오기 (장바구니창 띄우기용)
  	@RequestMapping("cart.do")
  	public String getCart(Model m, HttpSession session) {
  		String id = (String)session.getAttribute("member_id"); 
  		if(id==null || id.equals("")) {
  			return "alert";
  		}else {
  			 m.addAttribute("cartList", judaService.getCart((String)session.getAttribute("member_id")));
  			return "cart";
  		}
  	}
    
// =======================================================	
  	/* [ 장바구니 ] */
  	
  	// 장바구니 행 삭제
  	@RequestMapping("deleteCart.do")
  	public String deleteCart(CartRowVO vo) {
  		judaService.deleteCart(vo);
  		return "redirect:/cart.do";
  	}
  	
 // =======================================================   
    /* [ 관리자 모드 ] */

    // 상품 등록 
    @RequestMapping("insertGoods.do")
    public String insertGoods(GoodsVO vo) {
       Integer result = judaService.insertGoods(vo);
       return "redirect:goodsRegistration.do?result="+result;
    }

    // 재고 관리 정보 가져오기
    @RequestMapping("selectStock.do")
    public String selectStock(Model m) {
       List<StockVO> L = judaService.selectStock();
       System.out.println(L);
       m.addAttribute("stockList", L);
       return "goodsStock";
    }
    
 // =======================================================     	
    /* [ 결제창 ] */
    
	// 카트 결제할 때 뜨는 결제창
	@RequestMapping("payCart.do")
	public String getPayCart(CartSelectedRowsVO listVO, HttpSession session, Model m) {  		
		
  		String md = (String)session.getAttribute("member_id");
  		listVO.setMember_id(md);
  		
  		m.addAttribute("payItemList", judaService.getPayCart(listVO));
  		m.addAttribute("member", judaService.getMember(md));
  		
  		return "pay";
  	}
  	
  	// 상세 페이지에서 바로 결제할 때 뜨는 결제창
   	@RequestMapping("payOne.do")
   	public String getPayOne(Integer amount, HttpSession session, Model m) {
   		String md = (String)session.getAttribute("member_id");
   		CartVO vo = judaService.getPayOne(md);
   		vo.setC_amount(amount);
  		m.addAttribute("payItemList", vo);
  		m.addAttribute("member", judaService.getMember(md));
   		return "pay";
   	}
   	
	// 구매하기
	@RequestMapping("pay.do")
	public String insertPay(PayListVO plVO, Integer[] goods_id, Integer[] c_amount, HttpSession session) throws UnsupportedEncodingException {
		
		// 세션 아이디를 변수에 넣기
		String id = (String)session.getAttribute("member_id");
		
		// 주문 테이블에 들어갈 VO에 필요한 값(세션 아이디, 전화번호)을 넣기
		plVO.setDelivery_tel(plVO.getP_num1()+"-"+plVO.getP_num2()+"-"+plVO.getP_num3());
		plVO.setMember_id(id);
		
		// CartRowVO 리스트를 만들고
		List<CartRowVO> list = new ArrayList<CartRowVO>();
		// 리스트에 세션 아이디와 상품번호, 수량을 넣기
		for(int i=0 ; i<goods_id.length ; i++) {
			CartRowVO temp = new CartRowVO();
			temp.setMember_id(id);
			temp.setGoods_id(goods_id[i]);
			temp.setC_amount(c_amount[i]);
			list.add(temp);
		}
		
		// 주문 테이블에 정보 넣기
		judaService.insertPayList(plVO);
		
		// 주문상세 테이블에 정보 넣기
		for (CartRowVO crVO : list) {
			judaService.insertPay_Detail(crVO);
		}
		
		// CartSelectedRowsVO에 값을 넣기
		CartSelectedRowsVO vo = new CartSelectedRowsVO();
		List<Integer> gd = new ArrayList<Integer>();
		for(Integer i : goods_id) {
			gd.add(i);
		}
		vo.setGoods_ids(gd);
		vo.setMember_id(id);
		
		// 해당 아이디의 카트를 비우기 (결제한 것만)
		judaService.deletePayCart(vo);
		
		byte[] name = "전체".getBytes("utf-8");
		String name2 = URLEncoder.encode("전체", "UTF-8");
		
		return "redirect:/shop.do?goods_type=" + name2 + "&goods_sort=like_count DESC";
	}
  	
  	
  	
  	
  	
  	
  	
  	
  	
} // end of controller