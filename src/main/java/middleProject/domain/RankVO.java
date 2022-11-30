package middleProject.domain;

import lombok.Data;

@Data
public class RankVO {
	
	private Integer 	goods_id;				// 상품코드(번호)
	private String 		goods_name;	    // 상품명
	private Integer 	price;					// 가격
	private String 		img_file;			 	// 이미지 파일

	
}

