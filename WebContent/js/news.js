function $(parm){
	return document.getElementById(parm);
}
function checkAll(){
	var userName=$("userName");
	var pwd=$("pwd");
	var validatepwd=$("validatepwd");
	var mess=$("mess");
	mess.innerHTML="";
	if(userName.value==""){
		mess.innerHTML="用户名不能为空！";
		return false;
	}else if(pwd.value==""){
		mess.innerHTML="密码不能为空！";
		return false;
	}else if(validatepwd.value!=pwd.value){
		mess.innerHTML="两次输入 的密码不一致！";
		return false;	
	}
	return true;		
}