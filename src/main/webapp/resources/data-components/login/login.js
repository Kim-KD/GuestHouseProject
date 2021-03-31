// 로그인 실패 alert
$(function() {
	var msg = "${msg}";
	
	if(!msg) {
		return 0;
	} else {
		alert(msg);
	}
});