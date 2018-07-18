
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>

<!-- Head -->
<head>

	<title>Insert title here</title>

	<!-- Meta-Tags -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Meta-Tags -->

	<!-- Style --> <link rel="stylesheet" href="${pageContext.request.contextPath }/css/add.css" type="text/css" media="all">



</head>
<!-- //Head -->

<!-- Body -->
<body>

	<h1 style="color: #fff;font-family: fzshuti">添加员工</h1>
	<form action="${pageContext.request.contextPath }/user/useradd.do" method="post">
			<div class="container w3layouts agileits">

					<div class="login w3layouts agileits">
			
							
								<input type="text" Name="username" placeholder="用户名" required="">
								<input type="password" Name="password" placeholder="密码" required="">
									
								<input type="text" name="" placeholder="部门编号">
								<input type="text" name="" placeholder="职位编号">
								<span style="color: #fff;font-family: 黑体">权限：</span><select name="permission" style="width: 50px;">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
								<span style="color: #fff;font-family: 黑体">性别：</span><input  type="radio" name="sex"value="男" checked/><span style="color: #fff;font-family: fzshuti">男</span>
									<input  type="radio" name="sex"value="女"/><span style="color: #fff;font-family: fzshuti">女</span><br>
						<div class="clear"></div>
					</div>
		
					<div class="register w3layouts agileits">
			
							
								<input type="text" Name="birth" placeholder="生日" required="">
								<input type="text" Name="emile" placeholder="邮箱" required="">
								<input type="t" Name="cardid" placeholder="身份证号" required="">
								<input type="text" Name="tel" placeholder="手机号码" required="">
								<input type="text" Name="address" placeholder="家庭住址" required="">
			
						<div class="clear"></div>
					</div>

					<div class="clear"></div>

			</div>
			<div class="send-button w3layouts agileits">
				
					<input type="submit" value="提交"/>
				
			</div>
		</form>
	
	</body>
</html>













<%-- 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/user/useradd.do" method="post">
	用户名：<input style="width: 150px; height: 20px;" type="text" name="username"/><br/>
	密码：<input style="width: 150px; height: 20px;" type="password" name="password"/><br/>
	权限：  <select name="permission" >   
        <option value="1">1</option>   
        <option value="2">2</option>   
        <option value="3">3</option>   
      </select><br>   
	邮箱：<input style="width: 150px; height: 20px;" type="text" name="emile"/><br/>
	性别：
	<input  type="radio" name="sex"value="男" checked/>男
	<input  type="radio" name="sex"value="女"/>女<br>
	生日：<input style="width: 150px; height: 20px;" type="text" name="birth"/><br/>
	电话：<input style="width: 150px; height: 20px;" type="text" name="tel"/><br/>
	身份证号：<input style="width: 150px; height: 20px;" type="text" name="cardid"/><br/>
	住址：<input style="width: 150px; height: 20px;" type="text" name="address"/><br/>
	部门编号：<input style="width: 150px; height: 20px;" type="text" name="dept_id"/><br/>
	职位编号：<input style="width: 150px; height: 20px;" type="text" name="posit_id"/><br/>
	<input type="submit"value="提交"/>
	
	</form>
</body>
</html> --%>
