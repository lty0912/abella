$(function(){
	$( "#join-form" ).submit( function() {
		console.log("폼 체크");
		
		if( $("#name").val() == "" ) {
			alert("이름은 필수 입력 항목입니다.");
			$( "#name" ).focus();
			return false;
		}
		
		//ID 체크
		if( $("#id").val()=="" ) {
			alert("ID는 필수 입력 항목입니다.");
			$( "#id" ).focus();
			return false;
		}
		
		if( $("#image-checked").is(":visible") == false ) {
			alert( "ID 중복 체크를 해주세요." );
			return false;
		} 
		
		//패스워드
		if( $("input[type='password']").val()=="" ) {
			alert("패스워드는 필수 입력 항목입니다.");
			$( "input[type='password']" ).focus();
			return false;
		}
		
		if( $("#password").val()==$("#password-confirm").val() ) {
			alert("패스워드 확인이 일치하지 않습니다.");
			$( "input[type='password']" ).focus();
			return false;
		}
		
		
		
		return true;
	});
	
	$("#id").change( function() {
		$("#btn-checkid").show();
		$("#image-checked").hide();
	});
	
	
	
	$( "#btn-checkid" ).click(function() {
		var id = $( "#id" ).val();
		if(id == "") return;
		$.ajax({
			"url": "/abella/user?a=checkid",
			"type": "get",
			"dataType": "json",
			"data": "",
			"success": function(response) {
				if(response.result == "fail" ) {
					console.error( "error:" + response.message );
					return;
				}
				// 수정 예정
				if( response.data == true ) {
					alert("이미 존재하는 ID입니다. 다른 ID를 사용해 주세요.");
					$("#id").val("").focus();
					return;
				}
				console.log("사용가능");
				$("#image-checked").show();
				$("#btn-checkid").hide();
			},
			"error": function(jsXHR, status, e) {
				console.log("error:" + status + ":" + e);
			}
		});
	});
});