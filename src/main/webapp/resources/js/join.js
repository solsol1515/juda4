$(function(){
	
	// "가입하기" 버튼을 클릭했을 때
	$('.bg-light button').click(function(){
		
		// 회원가입 폼이 submit되도록 조치
		$('.bg-light form').submit();
		
	});
	
	
	//모든 공백 체크 정규식
	var empJ = /\s/g;
	//아이디 정규식
	var idJ = /^[a-z0-9][a-z0-9_\-]{4,19}$/;
	// 비밀번호 정규식
	var pwJ = /^[A-Za-z0-9]{4,12}$/;
	// 이름 정규식
	var nameJ = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	
	$('.bg-light input[type=password]').focusout(function(){
    	
    	let pass1 = $("#password").val();
        let pass2 = $("#password2").val();
        
        if (pass1 != "" || pass2 != ""){
        	if (pass1 == pass2){
        		$('.bg-light input[type=password]').removeClass("is-invalid");
            	$('.bg-light input[type=password]').addClass("is-valid");
            } else {
            	$('.bg-light input[type=password]').removeClass("is-valid");
                $('.bg-light input[type=password]').addClass("is-invalid");
            }
        }
    
    });
	
});

