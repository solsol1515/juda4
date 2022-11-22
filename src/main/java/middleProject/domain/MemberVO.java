package middleProject.domain;

import lombok.Data;

@Data
public class MemberVO {
	
	private String member_id;
	private String password;
	private String name;
	private String gender;
	private String email;
	private String signin_date;
	private boolean agree_email;
	private boolean agree_sns;
	
	// 전화번호
	private String p_num1;
	private String p_num2;
	private String p_num3;
	
	private String tel;
	
	// 생년월일
	private String yy;
	private String mm;
	private String dd;
	
	private String birth;
	
}
