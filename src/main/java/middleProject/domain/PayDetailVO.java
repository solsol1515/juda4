package middleProject.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class PayDetailVO {
	
	private Integer p_d_id;			// 주문상세번호
	private Integer p_amount;	// 개수
	private Integer p_id;				// 주문번호
	private Integer goods_id;		// 상품번호

	
}

