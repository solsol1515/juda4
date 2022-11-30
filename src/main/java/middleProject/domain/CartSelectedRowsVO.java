package middleProject.domain;

import java.util.List;

import lombok.Data;

@Data
public class CartSelectedRowsVO {
	
	private String member_id;
	private List<Integer> goods_ids;
	
}
