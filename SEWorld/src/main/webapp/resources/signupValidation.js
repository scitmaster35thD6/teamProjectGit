/**
 * 
 */

function register() {
	var memberId = $('#memberId').val();
	var memberPwd = $('#memberPwd').val();
	var memberPwd2 = $('#memberPwd2').val();
	var memberName = $('#memberName').val();

	/* 아이디 검증 */
	if (memberId.length < 6 || memberId.length > 20) {
		alert("아이디는 6자 이상 20자 이하로 입력해 주세요.");
		return;
	}

	/* 비밀번호 검증 */
	if (memberPwd.length < 8 || memberPwd.length > 20) {
		alert("비밀번호는 8자 이상 20자 이하로 입력해 주세요.");
		return;
	}

	if (memberPwd != memberPwd2) {
		alert("비밀번호가 일치하지 않습니다.");
		return;
	}

	/* 이름 검증 */
	if (memberName.length < 2 || memberName.length > 40) {
		alert("이름은 2자 이상 40자 이하로 입력해 주세요.");
		return;
	}

	var member = {
		"memberId" : memberId,
		"memberPwd" : memberPwd,
		"memberName" : memberName
	}

	$.ajax({
		method : 'POST',
		url : 'signup',
		data : JSON.stringify(member),
		contentType : 'application/json; charset=UTF-8',
		dataType : 'JSON',
		success : function(resp) {
			if (resp == 0) {
				alert("실패");
			} else {
				location.href = "/seworld/verifyBefore";
			}
		}
	});
}
