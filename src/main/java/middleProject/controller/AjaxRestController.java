package middleProject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import middleProject.domain.LoginVO;
import middleProject.service.JudaService;

@RestController
public class AjaxRestController {
	
	@Autowired
	private JudaService judaService;
	
	/*
	@GetMapping(value="goodsList", produces = "application/text; charset=UTF-8")
	public List<GoodsVO> getGoodsList(GoodsTypeVO vo) {
		List<GoodsVO> goodsList = judaService.getGoodsList(vo);
		System.out.println(goodsList.toString());
		return goodsList;
	}
	*/
	
	@PostMapping(value="checkId.do") //, produces = "application/text; charset=UTF-8")
	public Integer checkId(LoginVO vo) {
		System.out.println(">>>> "+vo);
		return 1;
	}

}
