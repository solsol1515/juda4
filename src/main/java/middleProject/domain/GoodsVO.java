package middleProject.domain;

import lombok.Data;

@Data
public class GoodsVO {
	
	private Integer 	goods_id;				// 상품코드(번호)
	private String 		goods_name;		// 상품명
	private Integer 	price;					// 가격
	private Integer 	delivery_charge;	// 택배비
	private String 		description;			// 간단 설명
	private String 		img_file;				// 이미지 파일
	private String 		alcohol;					// 도수
	private Integer 	volume;				// 양
	private String 		origin;					// 원산지
	private Integer	  	stock;					// 재고
	private boolean 	sold_out;				// 품절 유무
	private String 		r_date;					// 등록일자
	private String 		goods_type;			// 주종
	private Integer 	like_count;			// 찜하기 수 
	private String 		description_img;	// 상세 설명 이미지
	private String 		keyword;				// 설명 키워드
	
}

