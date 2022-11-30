$(function(){


function findAddr(){
   new daum.Postcode({
        oncomplete: function(data) {
           
           console.log(data);
           
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('addra').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("addrb").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
} 
// [결제창] 우편번호 클릭했을 때 주소 검색창 
$('#addr_btn').click(function(){
   findAddr();
});


// [결제창] 배송지정보 값 입력
$('#payForm input[name="o_sum"]').val($('._totalPayPrice:eq(0)').text());


/* [결제창] 결제수단 라디오버튼 (계좌이체, 카드결제)
	$("input:radio[name='pay']:radio[value='계좌이체']").prop('checked', true); // 선택하기
	$("input:radio[name='pay']:radio[value='카드결제']").prop('checked', false); // 해제하기
*/

// ===============================================================================

// ==== 금액 계산 =====
	
	function showPay() {
	
		// 변수 설정
		let p 		= $('.prices');
		let d 		= $('.deliveries');
		
		let pAll 	= 0;
		let dAll 	= 0;
		let total = 0;
		
		// 합산
		p.each(function() {pAll += parseInt($(this).val());});
		d.each(function() {dAll += parseInt($(this).val());});
		total = pAll + dAll;
		
		// alert(pAll + ", " + dAll + ", " + total);
		
		// 상품 전체 가격
		$('._totalOrderPrice').text(pAll.toLocaleString() + "원");
		// 전체 배송비
		$('._totalDeliveryFee').text(dAll.toLocaleString() + "원");
		// 전체 결제 금액
		$('._totalPayPrice').text(total.toLocaleString() + "원");
		$('#p_sum').val(total);
		
	}
	
	showPay();

// ===============================================================================

	// ==== 결제하기 버튼 클릭할 때 ===== //
	
	// 컨트롤러에 파라미터를 넘기기
	function sendPayParam() {
		
		// 파라미터 변수 선언
		let param = '';
		
		// 총 결제액
		param += "p_sum=" + $('#p_sum').val();
		
		// 상품&수량 목록
		$('.goods_ids').each(function() {param += "&goods_id=" + $(this).val();});
		$('.c_amount').each(function() {param += "&c_amount=" + $(this).val();});
		
		// 배송지 정보
		param += "&delivery_name=" + $('#delivery_name').val();		// 배송지 이름
		param += "&receiver=" + $('#receiver').val();				// 수령인
		param += "&p_num1=" + $('#p_num1').val();					// p_num1
		param += "&p_num2=" + $('#p_num2').val();					// p_num2
		param += "&p_num3=" + $('#p_num3').val();					// p_num3
		param += "&postcode=" + $('#postcode').val();				// 우편번호
		param += "&addr=" + $('#addr').val();						// 주소
		param += "&addr_detail=" + $('#addr_detail').val();			// 상세주소
		param += "&delivery_memo=" + $('#delivery_memo').val();		// 배송 메모
		
		// alert(param);
		
		location.href = "pay.do?" + param;
		
	}
	
	// [결제창] 결제하기 버튼 클릭 (결제 후)
	$('#payBtn').click(function(){
		// 결제 확인하기
		// setPayParam();
		// alert("결제가 완료되었습니다.");
		setPayModal();
		$('#payModal').modal('show');
	});
	
// ===============================================================================

	// ==== 모달창 ===== //
	
	// 결제 내용 띄우기
	function setPayModal() {
	
		// 변수 설정
		let selectedPayMethod = $('#chargePointScrollArea .bankS:checked');	// 결제방법선택 라디오
		let SPMVal = selectedPayMethod.val();								// 결제방법
		let bank = selectedPayMethod.closest('div').find('select').val();	// 은행 이름
		
		let sum = $('#p_sum').val();		// 총 결제액
		
		// 모달창에 표시하기
		$('#payModal h6:eq(0)').text('결제방법 : [' + SPMVal + ']');
		$('#payModal h6:eq(1)').text('은행 : [' + bank + ']');
		$('#payModal h6:eq(2)').text('총 결제액 : ' + sum.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",") + '원');
		
	}
	
	// 확인(결제하기) 버튼
	$('#payModal button:eq(1)').click(function(){
	
		// 만약 배송지 정보가 누락되었다면 알림창 띄우기
		if($('#delivery_name').val()=="") {
			alert("배송지명을 입력하셔야 합니다.");
			$('#payModal').modal('hide');
		} else if($('#receiver').val()=="") {
			alert("수령인을 명시하셔야 합니다.");
			$('#payModal').modal('hide');
		} else if($('#p_num2').val()=="") {
			alert("연락처를 입력하셔야 합니다.");
			$('#payModal').modal('hide');
		} else if($('#p_num3').val()=="") {
			alert("연락처를 입력하셔야 합니다.");
			$('#payModal').modal('hide');
		} else if($('#postcode').val()=="") {
			alert("우편번호를 입력하셔야 합니다.");
			$('#payModal').modal('hide');
		} else if($('#addr').val()=="") {
			alert("주소를 입력하셔야 합니다.");
			$('#payModal').modal('hide');
		} else if($('#addr_detail').val()=="") {
			alert("상세주소를 입력하셔야 합니다.");
			$('#payModal').modal('hide');
		} else {
			alert("결제가 완료되었습니다.");
			sendPayParam();
		}
		
	});

				
});