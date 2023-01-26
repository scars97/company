function change_pw() {
		document.getElementById("pwdbefore").disabled = false;
		document.getElementById("pw_button").value = "확정";	
		document.getElementById("pw_button").setAttribute("onclick", "decide_pw()");
	}
	function decide_pw() {
		document.getElementById("submit").disabled = false;
		document.getElementById("pwdafter").value = document.getElementById("pwdbefore").value;
		document.getElementById("pwdbefore").disabled = true;
		document.getElementById("pw_button").disabled = true;
		document.getElementById("pw_button").value = "확정됨";
	}

	function change_phone() {
		document.getElementById("telbefore").disabled = false;
		document.getElementById("phone_button").value = "확정";
		document.getElementById("phone_button").setAttribute("onclick", "decide_phone()");
	}
	function decide_phone() {
		document.getElementById("submit").disabled = false;
		document.getElementById("telafter").value = document.getElementById("telbefore").value;
		document.getElementById("telbefore").disabled = true;
		document.getElementById("phone_button").disabled = true;
		document.getElementById("phone_button").value = "확정됨";
    }

	function change_email() {
		document.getElementById("emailbefore").disabled = false;
		document.getElementById("email_button").value = "확정";
		document.getElementById("email_button").setAttribute("onclick", "decide_email()");
	}
	function decide_email() {
		document.getElementById("submit").disabled = false;
		document.getElementById("emailafter").value = document.getElementById("emailbefore").value;
		document.getElementById("emailbefore").disabled = true;
		document.getElementById("email_button").disabled = true;
		document.getElementById("email_button").value = "확정됨";
	}
	
	function change_nickname() {
		document.getElementById("nicknamebefore").disabled = false;
		document.getElementById("nickname_button").value = "확정";
		document.getElementById("nickname_button").setAttribute("onclick", "decide_nickname()");
	}
	function decide_nickname() {
		document.getElementById("submit").disabled = false;
		document.getElementById("nicknameafter").value = document.getElementById("nicknamebefore").value;
		document.getElementById("nicknamebefore").disabled = true;
		document.getElementById("nickname_button").disabled = true;
		document.getElementById("nickname_button").value = "확정됨";
	}
	
	function update_success(){
		alert("정보가 변경되었습니다.");
	}
	