package middleProject.domain;

import lombok.Data;

@Data
public class PayListVO {
   
   private Integer 	p_sum;						// 합계
   private String 	member_id;				// 회원 아이디
   
   private String 	delivery_name;			// 배송지명
   private String 	receiver;					// 수취인
   private String 	delivery_tel;				// 번호 
   private String 	postcode;					// 우편 번호
   private String 	addr;						// 주소
   private String 	addr_detail;				// 상세 주소
   private String 	delivery_memo;		// 배송 메모
   
   private String 	p_num1;					// 전화번호 1_1
   private String 	p_num2;					// 전화번호 1_2
   private String 	p_num3;					// 전화번호 1_3
   
}