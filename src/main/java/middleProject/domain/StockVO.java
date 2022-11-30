package middleProject.domain;

import lombok.Data;

@Data
public class StockVO {


	private Integer stock_id;				// 재고기록번호
	private String   stock_in_date;		// 입고날짜
	private Integer expected_release;	// 출고예정
	private Integer expected_stock;	// 입고예정
	private Integer actual_stock;		// 실출고
	private Integer actual_release;		// 실입고
	private Integer goods_id;				// 상품번호


}

