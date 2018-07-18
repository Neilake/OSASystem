<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/login.css" />
<script language="JavaScript"
	src="${pageContext.request.contextPath }/js/check.js"></script>
</head>
<body>
<body>
	<div class="all">
		<div class="top">领携办公系统</div>
		<div class="login_box">
			<div class="title">管理员登录</div>
			<form action="${pageContext.request.contextPath }/admin/adminlogin.do" method="post" onsubmit="return checkName()&&checkPass()">
				<div class="input" style="margin-top: 20px;">
					用户：<input type="text" name="admin_name" id="vip"
						placeholder="例如：qwe123" onblur="checkName()" oninput="checkName()">
				</div>
				<div id="name" class="show">3~6个字符，可使用字母、数字</div>
				<div class="input">
					密码：<input type="password" name="admin_password" id="password"
						onblur="checkPass()" oninput="checkPass()">
				</div>
				<div id="pwd" style="margin-left: 15px;" class="show">3~8个字符，可使用字母、数字，区分大小写</div>
				<div class="forgetpass">
					<a href="#" >忘记密码？</a>
				</div>
				<div class="submit">
					<input type="submit"  style="margin-left:85px" value="登录" />
				 <a href="../index.jsp" style="float:right ">员工登录</a>
				</div>
			</form>
				
		</div>
	</div>
</body>
</html>

