// 방정보 추가 [s]
function add_Room_info() {
	var room_info1_orig = $("tr", $("#room_info1"));
	var room_info2_orig = $("tr", $("#room_info2"));
	var room_info3_orig = $("tr", $("#room_info3"));
	
	var room_info1_copy = $("#room_info1").clone();
	var room_info2_copy = $("#room_info2").clone();
	var room_info3_copy = $("#room_info3").clone();
	
	var room_img_id = $("#room_info").find("tr").last().find("td").find("span").find("span").find("input:file").attr("id");
	var split_num = room_img_id.split("room_img");
	var num = Number(split_num[1]) + 1;
	
	if(confirm("방 정보를 추가하시겠습니까??") == true) {
		$("tr", room_info1_copy).val(room_info1_orig.val());
		$("tr", room_info2_copy).val(room_info2_orig.val());
		$("tr", room_info3_copy).val(room_info3_orig.val());
		
		room_info1_copy.find("#rooms1").attr("id", "rooms" + num).val("");
		room_info1_copy.find("#price1").attr("id", "price" + num).val("");
		room_info2_copy.find("#room_gender1").attr("id", "room_gender" + num).val("");
		room_info2_copy.find("#personnel1").attr("id", "personnel" + num).val(" ");

		room_info1_copy.find("#warning_rooms1").attr("id", "warning_rooms" + num).text("");
		room_info1_copy.find("#warning_price1").attr("id", "warning_price" + num).text("");
		room_info2_copy.find("#warning_room_gender1").attr("id", "warning_room_gender" + num).text("");
		room_info2_copy.find("#warning_personnel1").attr("id", "warning_personnel" + num).text("");
		
		
		room_info3_copy.find("#room_img1").attr("id", "room_img" + num).val("");
		room_info3_copy.find("label[for = room_img1]").attr("for", "room_img" + num).val("");
		room_info3_copy.find("#room_img_name1").attr("id", "room_img_name" + num).val("");
		
		room_info1_copy.appendTo("#room_info");
		room_info2_copy.appendTo("#room_info");
		room_info3_copy.appendTo("#room_info");
	} else {
		return;
	}
}
// 방정보 추가 [e]

// 방정보 삭제 [s]
function del_Room_info() {
	/*var room_info1 = document.getElementById("room_info1");
	var room_info2 = document.getElementById("room_info2");
	var room_info3 = document.getElementById("room_info3");
	
	var room_info1_parent = room_info1.parentElement.children;
	var room_info2_parent = room_info2.parentElement.children;
	var room_info3_parent = room_info3.parentElement.children;
	
	var length = $("tr[id=room_info1]").length;*/
	
	/*if(length == 1) {
		alert("삭제할 수 없습니다.");
		return;
	} else {
		room_info1_parent.removeChild(room_info1.lastChild);
		room_info2_parent.removeChild(room_info2.lastChild);
		room_info3_parent.removeChild(room_info3.lastChild);
	}*/
	
	var room_info = document.getElementById("room_info");
 	var room_info_child = room_info.children;
	var length = $("tr[id=room_info1]").length;
	var num = (length*3)-1;

	if(length == 1) {
		alert("삭제할 수 없습니다.");
		return;
	} else {
		room_info_child[num].remove();
		room_info_child[num-1].remove();
		room_info_child[num-2].remove();
	}
}
// 방정보 삭제 [e]

// 게시글 폼 검증 [s]
function form_validation() {
	var partner_name = $("#partner_name").val();
	var post_code = $("#post_code").val();
	var addr = $("#addr").val();
	var detail_addr = $("#detail_addr").val();
	var introduce = $("#introduce").val();
	var check_in = $("#check_in").val();
	var check_out = $("#check_out").val();
	var lights_out_time = $("#lights_out_time").val();
	
	var num = $("tr[id=room_info1]").length;
	
	if(partner_name == "") {
		$("#warning_partner_name").text("게스트하우스 이름을 입력해주세요.");
		$("#partner_name").val("");
		$("#partner_name").focus();
		return false;
	} else if(post_code == "" && addr == "") {
		$("#warning_post_code").text("주소 찾기를 진행해주세요.");
		$("#warning_addr").text("주소 찾기를 진행해주세요.");
		$("#post_code").focus();
		return false;
	} else if(detail_addr == "") {
		$("#warning_detail_addr").text("상세주소를 입력해주세요.");
		$("#detail_addr").val("");
		$("#detail_addr").focus();
		return false;
	} else if(introduce == "") {
		$("#warning_introduce").text("숙소 소개글을 입력해주세요.");
		$("#introduce").val("");
		$("#introduce").focus();
		return false;
	} else if(check_in == "") {
		$("#warning_check_in").text("체크인 시간을 입력해주세요");
		$("#check_in").val("");
		$("#check_in").focus();
		return false;
	} else if(check_out == "") {
		$("#warning_check_out").text("체크아웃 시간을 입력해주세요.");
		$("#check_out").val("");
		$("#check_out").focus();
		return false;
	} else if(lights_out_time == "") {
		$("#warning_lights_out_time").text("소등시간을 입력해주세요.");
		$("#lights_out_time").val("");
		$("#lights_out_time").focus();
		return false;
	}
	
	for(var i=1; i<= num; i++) {
		var rooms = $("#rooms" + i).val();
		var price = $("#price" + i).val();
		var room_gender = $("#room_gender" + i).val();
		var personnel = $("#personnel" +i).val();

		if(rooms == "") {
			$("#warning_rooms" + i).text("객실 이름을 입력해주세요.");
			$("#rooms" + i).val("");
			$("#rooms" + i).focus();
			return false;
		} else if(price == "") {
			$("#warning_price" + i).text("1박 단가를 입력해주세요.");
			$("#price" + i).val("");
			$("#price" + i).focus();
			return false;
		} else if(room_gender == "") {
			$("#warning_room_gender" + i).text("객실 성별을 입력해주세요.");
			$("#room_gender" + i).val("");
			$("#room_gender" + i).focus();
			return false;
		} else if(personnel == "") {
			$("#warning_personnel" + i).text("객실 정원을 입력해주세요.");
			$("#personnel" + i).val("");
			$("#personnel" + i).focus();
			return false;
		}
	}
}
// 게시글 폼 검증 [e]

// 객실 사진 [s]
function btn_click(e) {
	var room_img_id = $("#room_info").find("tr").find("td").find("span").find("span").find("input:text").attr("id");
	var split_id = room_img_id.split("1");
	var img_id = split_id[0];
	
	var room_img_num = $(e).attr("id");
	var split_num = room_img_num.split("room_img");
	var img_num = split_num[1];

	var room_img_name = img_id+img_num;
	
	$("#" + room_img_num).on("change", function() {
		if(window.FileReader) {
			var fileName = $(this)[0].files[0].name;
		} else {
			var fileName = $(this).val().split("/").pop().split("\\").pop();	
		}
		$("#" + room_img_name).val(fileName);
	});
}
// 객실 사진 [s]

//keyup, keydown 되었을때, 메세지 제거 [s]
function keyevent(e) {
	var r_num = e.split("rooms");
	var p_num = e.split("price");
	var g_num = e.split("room_gender");
	var p_num = e.split("personnel");
	
	$("#rooms" + r_num[1]).on("keyup keydown", function() {
		if($("#rooms" + r_num[1]).val().length > 0) {
			$("#warning_rooms" + r_num[1]).empty();
		}
	});
	$("#price" + p_num[1]).on("keyup keydown", function() {
		if($("#price" + p_num[1]).val().length > 0) {
			$("#warning_price" + p_num[1]).empty();
		}
	});
	$("#room_gender" + g_num[1]).on("keyup keydown", function() {
		if($("#room_gender" + g_num[1]).val().length > 0) {
			$("#warning_room_gender" + g_num[1]).empty();
		}
	});
	$("#personnel" + p_num[1]).on("keyup keydown", function() {
		if($("#personnel" + p_num[1]).val().length > 0) {
			$("#warning_personnel" + p_num[1]).empty();
		}
	});
}
//keyup, keydown 되었을때, 메세지 제거 [e]

$(function() {
	// 체크 박스 체크 [s]
	$(".chk_list").on("click", "input", function() {
		var chk_box = $(this).attr("id");
		var chk_boxSplit = chk_box.split("chk_box");
		var num = chk_boxSplit[1];
		
		if($("input[id=chk_box" + num + "]").is(":checked")) {
			$("input[id=chk" + num + "]").val("Y");
		} else {
			$("input[id=chk" + num + "]").val("N");
		}
	});
	// 체크 박스 체크 [e]
	
	// 썸네일 [s]
	$("#thumbnail").on("change", function() {
		if(window.FileReader) {
			var fileName = $(this)[0].files[0].name;
		} else {
			var fileName = $(this).val().split("/").pop().split("\\").pop();			
		}
		$("#thumbnail_name").val(fileName);
	});
	// 썸네일 [e]
	
	// keyup, keydown 되었을때, 메세지 제거 [s]
	$("#partner_name").on("keyup keydown", function() {
		if($("#partner_name").val().length > 0) {
			$("#warning_partner_name").empty();
		}
	});
	
	$("#detail_addr").on("keyup keydown", function() {
		if($("#detail_addr").val().length > 0) {
			$("#warning_detail_addr").empty();
		}
	});	
	
	$("#introduce").on("keyup keydown", function() {
		if($("#introduce").val().length > 0) {
			$("#warning_introduce").empty();
		}
	});
	
	$("#check_in").on("keyup keydown", function() {
		if($("#check_in").val().length > 0) {
			$("#warning_check_in").empty();
		}
	});
	
	$("#check_out").on("keyup keydown", function() {
		if($("#check_out").val().length > 0) {
			$("#warning_check_out").empty();
		}
	});
	
	$("#lights_out_time").on("keyup keydown", function() {
		if($("#lights_out_time").val().length > 0) {
			$("#warning_lights_out_time").empty();
		}
	});
	// keyup, keydown 되었을때, 메세지 제거 [e]
});