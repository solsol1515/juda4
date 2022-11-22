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


/*		
		// 아이디 입력 유무 체크
		let member_id = document.form.member_id;

		if(member_id.value ==''){
			window.alert("아이디를 입력하세요!!!");
			document.form.member_id.focus();
			document.getElementById('member_id').select();
			return false; // 아이디 입력이 안되어 있을 경우 submit 이벤트 중지
		}// end of if(아이디 입력 유무 체크)
		
		// 비밀번호 입력 유무 체크
		let password = document.getElementById('password');
		
		if(document.form.password.value == ''){
			alert("비밀번호를 입력하세요!!!");
			password.focus();
			return false;
		} // end of if(비밀번호 입력 유무 체크)		
*/		


/*$("#btn_submit").click(function(){

	alert("로그인 버튼 작동 확인");

});*/


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