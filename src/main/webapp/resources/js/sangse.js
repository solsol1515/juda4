
  //***** 수량 +/- 버튼 구현 *******
$(function(){

   function incrementValue(e) {
        e.preventDefault(); // 고유 동작 중단
        let parent = $(e.target).closest('div');
        let currentVal = parseInt(parent.find('input.quantity-amount').val());

        if (!isNaN(currentVal)) {
            parent.find('input.quantity-amount').val(currentVal + 1);
        } // end of if
    } // end of incrementValue(e)

    function decrementValue(e) {
        e.preventDefault();
        let parent = $(e.target).closest('div');
        let currentVal = parseInt(parent.find('input.quantity-amount').val());

        if (!isNaN(currentVal) && currentVal > 0) {
            parent.find('input.quantity-amount').val(currentVal - 1);
        }  // end of if
    } // end of incrementValue(e)

	// # 수량 증가
    $('.input-group').on('click', '.increase', function(e) {
        incrementValue(e);
    });
	
	// # 수량 감소
    $('.input-group').on('click', '.decrease', function(e) {
        decrementValue(e);
    });
    
    //***** 총액 합계 연산 *******
   $('.input-group').on('click', '.btn', function() {
      
      let price = parseInt($('.goods-item > span').text());
      let delivery_charge = parseInt($('.goods-detail > ul > li:eq(3) > a').text());
      let quantity = parseInt($('input.quantity-amount').val());
      
      $('#sum').html((price*quantity)+'원');
   });
   
  }); 
  
// ==========================================================  
/*function fnCalCount(type, ths){

    var $input = $(ths).parents("td").find("input[name='pop_out']");
    var tCount = Number($input.val());
  //  var tEqCount = Number($(ths).parents("td").find("td.bseq_ea").html());
  //  alert(tEqCount);
  

    if(type=='p'){
      //  if(tCount < tEqCount) 
      	$input.val(Number(tCount)+1);
        
    }else{
        if(tCount > 1) $input.val(Number(tCount)-1);    
        } // end of else
        
} // end of fnCalCount()*/

/*
   function fnCalCount(type, ths){
   
       var $input = $(ths).parents("td").find("input[name='pop_out']");
       var tCount = Number($input.val());
     //  var tEqCount = Number($(ths).parents("td").find("td.bseq_ea").html());
     //  alert(tEqCount);
       if(type=='p'){
         //  if(tCount < tEqCount) 
            $input.val(Number(tCount)+1);
           
       }else{
           if(tCount > 1) $input.val(Number(tCount)-1);    
       } // end of else
           
   }
*/


// ------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------



//-----------------------------------------------------------------------------------
   //let price = parseInt($('.goods-item > span').text());
   //let delivery_charge = parseInt($('.goods-detail > ul > li:eq(3) > a').text());
   
  // let quantity = parseInt($('input.quantity-amount').val());
   
  //  alert(quantity);
   
   // $('#sum').text((price+delivery_charge)*quantity+'원');
   
//-----------------------------------------------------------------------------------
   

