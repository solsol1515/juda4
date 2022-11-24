package middleProject.domain;

import lombok.Data;

@Data
public class CartVO {
	
	private String img_file;			// 이미지 파일
	private String goods_name;			// 상품명
	private Integer price;				// 가격
	private Integer delivery_charge;	// 택배비
	private Integer o_amount;			// 상품 수량
	
}
