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
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	
	
	$('.bg-light input[name=member_id]').focusout(function(){
		
		if($('.bg-light input[name=member_id]').val()==''){
			$('.bg-light input[name=member_id]').removeClass("is-valid");
            $('.bg-light input[name=member_id]').addClass("is-invalid");
            $('#id_check').text('아이디를 입력하세요.');
            $('#id_check').css('color', 'red');                     
      
        } else if(idJ.test($('.bg-light input[name=member_id]').val())!=true){
        	$('.bg-light input[name=member_id]').removeClass("is-valid");
            $('.bg-light input[name=member_id]').addClass("is-invalid");
            $('#id_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
            $('#id_check').css('color', 'red');
        } else if($('.bg-light input[name=member_id]').val()!=''){
                
           var member_var=$('.bg-light input[name=member_id]').val();
           
           let param = {'member_id':member_var};
           //alert(param);
           //console.log(param);
           
           $.ajax({
           		type : 'POST',
                data : param,
                //url : 'checkId2.do?member_id=' + member_id,
                url : 'checkId.do',
                //dateType: 'json',
                //contentType: "application/text; charset=UTF-8",
                success : function(data) {
                	//alert(data);

         if(data > 0){
         	$('.bg-light input[name=member_id]').removeClass("is-valid");
            $('.bg-light input[name=member_id]').addClass("is-invalid");
            $('#id_check').text('중복된 아이디 입니다.');
            $('#id_check').css('color', 'red');
            $("#usercheck").attr("disabled", true);
         }else{
            if(idJ.test(member_id)){
            	$('.bg-light input[name=member_id]').removeClass("is-valid");
            	$('.bg-light input[name=member_id]').addClass("is-invalid");
                $('#id_check').text('사용가능한 아이디 입니다.');
                $('#id_check').css('color', 'green');
                $("#usercheck").attr("disabled", false);
            }
            else if(member_id==''){
            	$('.bg-light input[name=member_id]').removeClass("is-valid");
            	$('.bg-light input[name=member_id]').addClass("is-invalid");
            	$('#id_check').text('아이디를 입력해주세요.');
                $('#id_check').css('color', 'red');
                $("#usercheck").attr("disabled", true);
            }
            else{
            	$('.bg-light input[name=member_id]').removeClass("is-valid");
            	$('.bg-light input[name=member_id]').addClass("is-invalid");
                $('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
                $('#id_check').css('color', 'red');
                $("#usercheck").attr("disabled", true);
            }
         }

       }

            });//ajax/// 
         }//else if
		
	});
	
	
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