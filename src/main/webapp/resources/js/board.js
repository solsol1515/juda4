function fn_boardRegi(){
		
		let subject = $("#subject").val();	
		let name = $("#name").val();
		let content = $("#content").val();

		$.ajax({
				type: "post",
				url: "insertBoard.do",
				data: {subject : subject, name : name, content : content},
				success : function(data){
									if(data == "Y"){
										alert("글 등록이 완료되었습니다.");
										location.href = "";
									} // end of if
				},
				error : function(data){
								alert("글 등록에 실패했습니다.");
								console.log(data);
				}
		});
}; // end of fn_boardRegi()
