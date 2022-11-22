$(function(){
	/*
	const urlParams = new URL(location.href).searchParams;

	const goods_type = urlParams.get('goods_type');
	const goods_sort = urlParams.get('goods_sort');
	
	// remove active
	$('.goods_type-section a').removeClass('active');
	$('.goods_sort-section a').removeClass('active');
	
	// add class
	$('.goods_type-section a[name=' + goods_type + ']').addClass('active');
	$('.goods_sort-section a[name=' + goods_sort + ']').addClass('active');
	*/
	
	// url 설정하기
	const urlParams = new URLSearchParams(document.location.search);

	// 주종 nav-bar를 클릭했을 때
	$('.goods_type-section a').click(function(){
	
		// goods_type에 주종, goods_sort에 정렬 순서를 문자열로 담기
		// let goods_type = $(this).attr('name');		
		// let goods_type = $(this).text();
		// let goods_sort = $('.goods_sort-section a.active').attr('name');
		
		// 파라미터 값을 설정하기
		let goods_type = $(this).text();
		let goods_sort = urlParams.get('goods_sort');
		
		// controller 로 보내기
		window.location.href="shop.do?goods_type=" + goods_type + "&goods_sort=" + goods_sort;
		
	});	// end of 주종 클릭
	
	// 정렬 순서 nav-bar를 클릭했을 때
	$('.goods_sort-section a').click(function(){
	
		// goods_type에 주종, goods_sort에 정렬 순서를 문자열로 담기
		// let goods_sort = $(this).attr('name');
		// let goods_type = $('.goods_type-section a.active').attr('name');
		// let goods_type = $('.goods_type-section a.active').text();
		
		// 파라미터 값을 설정하기
		let goods_sort = $(this).attr('name');
		let goods_type = urlParams.get('goods_type');
		
		// controller 로 보내기
		window.location.href="shop.do?goods_type=" + goods_type + "&goods_sort=" + goods_sort;
		
	});	// end of 정렬 순서

});	// end of $(function())