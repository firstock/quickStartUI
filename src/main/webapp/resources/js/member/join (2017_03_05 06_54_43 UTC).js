var count=0;

// 1.이메일 유효성 검사
function chkId() {
	var text = $("#u_email").val();	
	var regexp=/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
//	var regexp=/^([0-9a-z])([-_\.]?[0-9a-z])*@$1$2*\.[a-z]{2,3}$/i;
	
	if(text=='' ||text==null) {
		alert("아이디를 입력하세요");
		$("#u_email").select();
		$("#u_email").focus();
		return false;
	} else if(!regexp.test(text)) {
		alert("이메일 형식이 잘못 되었습니다.\n다시 입력해주세요.");
		$("#u_email").select();
		$("#u_email").focus();
		return false;
	} 
	chkOverlap();
}


// 2.아이디 중복체크
function chkOverlap() {
	var param="u_email" + "=" + $("#u_email").val();	
	$.ajax({
		url:"overlaptest.do",
		type:"POST",
		data:param,
		dataType:"text",		
		success: function(response) {
			if(response=='0') {
				count=1;
				alert("사용가능한 아이디입니다.");
			} else {				
				alert("사용중인 아이디입니다. 다시 입력해주세요.");
				$("#u_email").select();
				$("#u_email").focus();
				return false;
			}
		},
		error: function(request, status, error) {
			if(request.status != '0') {
				alert("code: " + request.status + "\r\nmessage :"
						+ request.responseText + "\r\nerror:" + error);
			}
		}
			
	});
}



// 3.비번일치 확인
function chkPwd() {
	var pw1 = $('#pwd').val();		
	var pw2 = $('#pwd_chk').val();
	
	if(pw1=='') {
		return false;
	} else if(pw1!=pw2) {
		$('#chkPwd').css("color","red");
		$('#chkPwd').text("동일한 암호를 입력하세요.");
		return false;
	} 
	
	$('#chkPwd').css("color","black");
	$('#chkPwd').text("암호가 동일합니다.");
	return true;
}


// 4.폼 체크
function chkForm() {	
	if($("#u_name").val()=='' || $("#u_name").val()==null) {
		alert("사용자 이름을 입력해주세요.");
		$("#u_name").select();
		$("#u_name").focus();
		return false;
	} else if(count==0) {
		alert("이메일 중복 확인을 눌러주세요.");
		return false;
	} else if(!chkPwd()) {
		alert("암호를 확인해주세요.");
		return false;
	} 	
	save();	
}

// 5.submit()
function save() {
	alert("이름=" + $("#u_name").val() + ", 이메일="+$("#u_email").val() 
			+ ", 비번=" + $('#pwd_chk').val());
	
}

