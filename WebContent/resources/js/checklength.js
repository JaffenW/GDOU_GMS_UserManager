/**
 * 
 */
function checkLength(){
		var username=document.getElementById("userId").value;
		var password=document.getElementById("password").value;
		if(username.length != 4){
			alert("用户名必须为4位数字");
			return false;
		}else if(password.length < 6||password.length > 10){
			alert("密码应为6-10位字符");
			return false;
		}else
			return true;
	}