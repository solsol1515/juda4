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


// [결제창] 결제수단 라디오버튼 (계좌이체, 카드결제)
$("input:radio[name='pay']:radio[value='계좌이체']").prop('checked', true); // 선택하기
$("input:radio[name='pay']:radio[value='카드결제']").prop('checked', false); // 해제하기


// [결제창] 결제하기 버튼 클릭 (결제 후)
/*function paybtn() {
							alert("결제가 완료되었습니다.");
							$('#payForm').submit();
						}
*/						
});