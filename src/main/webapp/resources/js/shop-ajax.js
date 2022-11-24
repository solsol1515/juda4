$(function(){

	// 주종 nav-bar를 클릭했을 때
	$('.goods_type-section a').click(function(){
	
		// goods_type에 주종, goods_sort에 정렬 순서를 문자열로 담기
		let goods_type = $(this).attr('name');		
		let goods_sort = $('.goods_sort-section a.active').attr('name');
		
		$.ajax({
			
			type 		 		: 'get',
			url			 		: 'goodsList',
			data 		 		: {goods_type : goods_type, goods_sort : goods_sort},
			dataType		: 'json',
			contentType	: "application/x-www-form-urlencoded;charset=UTF-8",
			success 		: function(result) {
										alert(result);
			},
			error 			: function(err) {
									alert('error');
										console.log(err);
			}
			
		});	// end of ajax
		
		// class active를 바꾸기
		$('.goods_type-section a').removeClass('active');
		$(this).addClass('active');
	
	});	// end of 주종 클릭
	
	// 정렬 순서 nav-bar를 클릭했을 때
	$('.goods_sort-section a').click(function(){
	
		// goods_type에 주종, goods_sort에 정렬 순서를 문자열로 담기
		let goods_sort = $(this).attr('name');
		let goods_type = $('.goods_type-section a.active').attr('name');
		
		$.ajax({
			
			type : 'get',
			url : 'goodsList',
			data : {goods_type : goods_type, goods_sort : goods_sort},
			dataType : 'json',
			contentType: "application/x-www-form-urlencoded;charset=UTF-8",
			success : function(result) {
				alert(result);
			},
			error : function(err) {
				alert('error');
				console.log(err);
			}
			
		});	// end of ajax
		
		// class active를 바꾸기
		$('.goods_sort-section span').removeClass('active');
		$(this).addClass('active');
		
	});	// end of 정렬 순서

});	// end of $(function())