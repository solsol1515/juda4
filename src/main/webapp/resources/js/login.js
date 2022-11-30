/* 로그인 버튼 클릭 메소드*/

	window.onload = function(){
	
		document.getElementById('btn_submit').onclick = check;	
	
	function check(){
	
		if(document.form.member_id.value==""){
			alert("ID를 입력하세요.")
			document.form.member_id.focus();
			return false;
		}
		
		if(document.form.password.value==""){
			alert("패스워드를 입력하세요.")
			document.form.password.focus();
			return false;
		}
		
		document.form.submit();//전송
		
	} // end of check()

} // end of window.onload

	if(member_id=="admin"&&password=="1234"){
		
	}