package middleProject.domain;

import lombok.Data;

@Data
public class GoodsVO {
	
	private String goods_id;
	private String goods_name;
	private Integer price;
	private Integer delivery_charge;
	private String description;
	private String img_url;
	private String alcohol;
	private Integer volume;
	private String origin;
	private Integer stock;
	private boolean sold_out;
	private String r_date;
	private String goods_type;
	private Integer like_count;

}

