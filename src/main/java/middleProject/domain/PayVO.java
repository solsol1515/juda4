package middleProject.domain;

import lombok.Data;

@Data
public class PayVO {
   
   private Integer o_sum;
   private String member_id;
   
   private String delivery_name;
   private String receiver;
   private String delivery_tel;
   private String postcode;
   private String addr;
   private String addr_detail;
   private String delivery_memo;
   
   private String p_num1;
   private String p_num2;
   private String p_num3;
   
}