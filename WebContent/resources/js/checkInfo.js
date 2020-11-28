function checkInfo(){
		var tel=document.getElementById("tel").value;
		var idNumber=document.getElementById("idNumber").value;
		if(tel.length != 11){
			alert("电话长度必须为11位");
			return false;
		}else if(idNumber.length !=18){
			alert("身份证号码应为18位");
			return false;
		}else
			return true;
	}