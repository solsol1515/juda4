$(function(){



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
	});

    $('.input-group').on('click', '.decrease', function(e) {
        decrementValue(e);
    });
//-----------------------------------------------------------------------------------


//***** 총액 합계 연산 *******
//-----------------------------------------------------------------------------------
	$('.input-group').on('click', '.btn', function() {
		let price = parseInt($('.goods-item > span').text());
		let delivery_charge = parseInt($('.goods-detail > ul > li:eq(3) > a').text());
		let quantity = parseInt($('input.quantity-amount').val());
		
		$('#sum').html((price*quantity) + '원');
	});
//-----------------------------------------------------------------------------------




//***** 장바구니에 동일한 상품 추가하는지 확인하기 *******
//-----------------------------------------------------------------------------------
	function checkCart() {
		let am = $('input.quantity-amount').val();
		let gd = $('#goods_id').val();
		let md = $('#member_id').val();
		
		$.ajax({
			type : 'get',
			url : 'checkCart.do',
			data : {
				c_amount:am,
				goods_id:gd,
				member_id:md
			},
			success : function(result){
				console.log(result);
				qAgain(result);
			},
			error : function(err){
				console.log(err);
			}
		});	// end of ajax
	}
//-----------------------------------------------------------------------------------



//***** 장바구니에 상품 추가하기 *******
//-----------------------------------------------------------------------------------
	function insertCart() {
		let am = $('input.quantity-amount').val();
		let gd = $('#goods_id').val();
		let md = $('#member_id').val();
		
		//window.location.href = 'insertCart.do?goods_id=' + goods_id + '&o_amount=' + amount + '&member_id=' + member_id;
		
		$.ajax({
			type : 'post',
			url : 'insertCart.do',
			data : {
				c_amount:am,
				goods_id:gd,
				member_id:md
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


//***** 장바구니에 상품 바꾸기 *******
//-----------------------------------------------------------------------------------
	function updateCart() {
		let am = $('input.quantity-amount').val();
		let gd = $('#goods_id').val();
		let md = $('#member_id').val();
		
		$.ajax({
			type : 'post',
			url : 'updateCart.do',
			data : {
				c_amount:am,
				goods_id:gd,
				member_id:md
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



//***** 구매하기 버튼의 <a> 태그에 상품을 결제창에 넘기는 파라미터 주기 *******
//-----------------------------------------------------------------------------------
	function payParam() {
		let amount = $('input.quantity-amount').val();
		let goods_id = $('#goods_id').val();
		window.location.href = 'pay.do?goods_id=' + goods_id + '&o_amount=' + amount;
	}
//-----------------------------------------------------------------------------------



//***** 장바구니 버튼을 클릭하면 로그인이 되어 있는지 확인 *******
//-----------------------------------------------------------------------------------
	$('p.goods-pay a:eq(1)').click(function(){
	
		// 로그인 됐는지 확인		
		if($('#member_id').val() == null || $('#member_id').val() =="") {
			alert('들어가야 장바구니를 사용할 수 있습니다 (로그인)');
			return;
		}

		// 다시 눌렀는지 확인
		checkCart();
			
	});
//-----------------------------------------------------------------------------------



//***** 동일한 상품을 장바구니에 넣을 것인지 확인 *******
//-----------------------------------------------------------------------------------
	function qAgain(result) {
		
		if(result!=='0') {			// js에서는 String도 유형 상관없이 비교연산 가능하다?
			if(confirm('동일한 상품을 다시 장바구니에 넣으시겠습니까?')) {
				updateCart();
			} else {
				return;
			}
		} else {
			insertCart();
			$('#cartModal').modal('show');
		}
	}
//-----------------------------------------------------------------------------------



//***** 장바구니로 이동 버튼을 누르면 장바구니로 가게 하기 *******
//-----------------------------------------------------------------------------------
	$('#cartModal button:eq(1)').click(function(){
		window.location.href = 'cart.do';
	});
//-----------------------------------------------------------------------------------


//***** 계속 쇼핑하기 버튼 누르면 구경하기 페이지로 이동 *******
//-----------------------------------------------------------------------------------
	$('#cartModal button:eq(2)').click(function(){
		window.location.href = 'shop.do?goods_type=전체&goods_sort=like_count DESC';
	});
//-----------------------------------------------------------------------------------



});