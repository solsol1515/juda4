package middleProject.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import middleProject.domain.GoodsTypeVO;
import middleProject.domain.GoodsVO;
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
		vo.setP_num(vo.getP_num1()+"-"+vo.getP_num2()+"-"+vo.getP_num3());
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
	
}
