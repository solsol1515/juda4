$(function(){


	// 값을 테이블에 넣기
	setTotalInfo();


//***** 체크박스를 클릭할 때 *******
// ------------------------------------------------------------------------------
	
	/* 체크여부에 따른 종합 정보 변화 */
	$(".individual_input_check").on("change", function(){
		setTotalInfo($(".cart_info_td"));
	});
	
	// 전체 선택 체크박스
	$(".input-check-all").on("click", function(){
		/* 체크박스 체크/해제 */
		if($(".input-check-all").prop("checked")){
			$(".individual_input_check").prop("checked", true);
		} else{
			$(".individual_input_check").prop("checked", false);
		}
		setTotalInfo();
	});
	
// ------------------------------------------------------------------------------
	

//***** 수량 +/- 버튼 구현 *******
// ------------------------------------------------------------------------------
	
	function incrementValue(e) {
        e.preventDefault();
        var parent = $(e.target).closest('div');
        var currentVal = parseInt(parent.find('input.quantity-amount').val());

        if (!isNaN(currentVal)) {
            parent.find('input.quantity-amount').val(currentVal + 1);
        }
    }

    function decrementValue(e) {
        e.preventDefault();
        var parent = $(e.target).closest('div');
        var currentVal = parseInt(parent.find('input.quantity-amount').val());

        if (!isNaN(currentVal) && currentVal > 1) {
            parent.find('input.quantity-amount').val(currentVal - 1);
        }
    }

    $('.input-group').on('click', '.increase', function(e) {
        incrementValue(e);
        updateCart(e);
        setTotalInfo();
    });

    $('.input-group').on('click', '.decrease', function(e) {
        decrementValue(e);
        
        var currentVal = parseInt(parent.find('input.quantity-amount').val());
        if(currentVal>1)
        	updateCart(e);
        	
        setTotalInfo();
    });
    
//-----------------------------------------------------------------------------------



//***** 수량을 바꾸면 DB에 적용하기 *******
//-----------------------------------------------------------------------------------

	function updateCart(e) {
		e.preventDefault();
		
		let am = parseInt($(e.target).val());
		let gd = $(e.target).closest('tr').find('.individual_goods_id').val();
		
		$.ajax({
			type : 'post',
			url 	: 'updateCart.do',
			data : {
				c_amount:am,
				goods_id:gd,
			},
			success : function(result){
				console.log(result);
			},
			error : function(err){
				console.log(err);
			}
		});	// end of ajax
		
	}

//-----------------------------------------------------------------------------------



//***** 카트의 행을 삭제하기 *******
//-----------------------------------------------------------------------------------
	
	// 삭제 버튼
	$('.delete-btn').on('click', function(e) {
		
		let gd = $(e.target).closest('tr').find('.individual_goods_id').val();
		let md = $('.member_id').val();
		
		location.href = "deleteCart.do?goods_id=" + gd + "&member_id=" + md;
		
	});
	
	
//-----------------------------------------------------------------------------------



//***** 총 금액 테이블에 값을 넣기 *******
//-----------------------------------------------------------------------------------
	
	/* 총 주문 정보 세팅(배송비, 총 가격, 수량, 최종 가격) */
	function setTotalInfo(){
		
		let price = 0;						// 가격
		let amount = 0;				// 수량
		
		let totalPrice = 0;				// 총 가격
		let totalDeliveryPrice = 0;	// 총 배송비
		let finalTotalPrice = 0; 		// 최종 가격(총 가격 + 배송비)
	
		
		$(".cart_info_td").each(function(index, element){
		
			if($(element).find(".individual_input_check").is(":checked") === true) {			// 체크여부
				
				price = parseInt($(element).find(".individual_price_input").val());							// 가격
				amount = parseInt($(element).parent("tr").find(".quantity-amount").val());					// 수량
				
				totalPrice += price * amount;																// 총 가격
				totalDeliveryPrice += parseInt($(element).find(".individual_deliveryPrice_input").val());	// 총 배송비
			
			}
	
		});
		
			finalTotalPrice = totalPrice + totalDeliveryPrice;
		
		/* ※ 세자리 컴마 Javscript Number 객체의 toLocaleString() */
		
		// 총 가격
		$(".totalPrice_span").text(totalPrice.toLocaleString());
		// 배송비
		$(".totalDeliveryPrice").text(totalDeliveryPrice);	
		// 최종 가격(총 가격 + 배송비)
		$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());		
	}
	
	
//-----------------------------------------------------------------------------------
/***** 결제하기를 클릭했을 때 *******/
// ------------------------------------------------------------------------------

	// 결제하기 버튼
	$('#payBtn').click(function(){
	
		// 체크된 것들만 param에 추가하기
		var param = "";
		$(".individual_input_check:checked").each(function() {
			if(param=="") {
				param += "goods_ids=" + $(this).parent().find(".individual_goods_id").val();
			} else {
				param += "&goods_ids=" + $(this).parent().find(".individual_goods_id").val();
			}
		});
		
		
		location.href="payCart.do?" + param;
		
		
	});
});