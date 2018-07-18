//验证用户名
 function checkName(){
 	var vip = document.getElementById('vip').value;
 	var name = document.getElementById('name');
 	name.innerHTML="";
 	if (vip==""){
 		name.innerHTML = "用户名不能为空...";
 		name.style.color = "red";
 		return false;
 	}
 	var pevip =/^[A-Za-z0-9]{3,6}$/
    if(!pevip.test(vip)){
        name.innerHTML="用户名输入不合法...";
        name.style.color = "red";
        return false;
    }
    return true;
}

//验证密码
function checkPass(){
	var password = document.getElementById('password').value;
 	var pwd = document.getElementById('pwd');
 	pwd.innerHTML="";
 	if (password==""){
 		pwd.innerHTML = "密码不能为空...";
 		pwd.style.color = "red";
 		return false;
 	}
 	var pwd1 =/^[A-Za-z0-9]{3,8}$/
    if(!pwd1.test(password)){
        pwd.innerHTML="密码输入不合法...";
        pwd.style.color = "red";
        return false;
    }
    return true;
}