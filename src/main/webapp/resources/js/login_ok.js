/* 로그인 버튼 클릭 메소드*/

$("#btn_submit").click(function(){

	alert("로그인 버튼 작동 확인");

});


/*$(function(){
	$('#btn_submit').click(function(){
	
	function check(){
	
	// id에 입력하지 않았을 때 입력 요청
		if($('#id').val()==""){
			alert("ID를 입력하세요.")
			return false;
		}
	
	// 비밀번호에 입력하지 않았을 때 입력 요청	
		if($('#pw').val()==""){
			alert("패스워드를 입력하세요.")
			document.form.password.focus();
			return false;
		}
		
		document.form.submit();//전송
		
	}
	}); // end of click(btn_submit)
}); // end of function()*/