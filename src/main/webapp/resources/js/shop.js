$(function(){
	
	// url 설정하기
	const urlParams = new URLSearchParams(document.location.search);

	// 주종 nav-bar를 클릭했을 때
	$('.goods_type-section a').click(function(){
	
		// 파라미터 값을 설정하기
		let goods_type = $(this).text();
		let goods_sort = urlParams.get('goods_sort');
		
		// controller 로 보내기
		window.location.href="shop.do?goods_type=" + goods_type + "&goods_sort=" + goods_sort;
		
	});	// end of 주종 클릭
	
	// 정렬 순서 nav-bar를 클릭했을 때
	$('.goods_sort-section a').click(function(){
	
		// 파라미터 값을 설정하기
		let goods_sort = $(this).attr('name');
		let goods_type = urlParams.get('goods_type');
		
		// controller 로 보내기
		window.location.href="shop.do?goods_type=" + goods_type + "&goods_sort=" + goods_sort;
		
	});	// end of 정렬 순서

});	// end of $(function())

