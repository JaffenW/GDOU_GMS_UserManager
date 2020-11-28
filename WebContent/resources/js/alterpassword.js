	function test(){//校验数据
		var password=document.getElementById("password").value;
		var pw=document.getElementById("pw").value;
		var another=document.getElementById("anotherPassword").value;
		
		if(password.length<6||password.length>10){
			alert("旧密码长度为6-10位");
			return false;
		}
		else if(pw.length<6||pw.length>10){
			alert("新密码长度为6-10位");
			return false;
		}
		else if(pw != another){
			alert("新密码和确认密码不一致");
			return false;
		}else
			return true;
	}