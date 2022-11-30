package middleProject.domain;

import lombok.Data;

@Data
public class CartRowVO {
	
	private String 	member_id;		// 회원 아이디
	private Integer goods_id;			// 상품 번호
	private Integer c_amount;		// 개수
	
}
