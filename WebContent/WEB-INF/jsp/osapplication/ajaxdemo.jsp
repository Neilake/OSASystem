<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$("#test").click(function(){
		$.get("${pageContext.request.contextPath}/ajaxdemo.do",function(data){
			var u = eval("(" + data + ")");
			
			
			$("#test1").html(u[0].departmentName);
			$("#test2").html(u[1].departmentName);
			
		});
	});
});





</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body background="${pageContext.request.contextPath }/images/bg1.jpg; 
background-size: 100%;100%">

<header>
	<div class="zerogrid">
		<div class="wrap-header">
			<div class="row">
				<div class="col-1-3">
					<div class="wrap-col">
						<div class="logo"><a href="${pageContext.request.contextPath}/user/turnHome.do">
						<img src="${pageContext.request.contextPath}/images/logo.png"/></a></div>	
					</div>
				</div>
				<div class="col-1-3 offset-1-3">
					<div class="wrap-col">
						<hr>
					</div>
				</div>
			</div>
		</div>
		
	</div>
</header>
<form action="/auto/leaderupdateosapplication.do">
<input type="hidden" name="opnion" value="1"/>
<input type="submit"  value="同意"/>
</form>
<form action="/auto/leaderupdateosapplication.do">
<input type="hidden" name="opnion" value="0"/>
<input type="submit"  value="不同意"/>
</form>
<!--
<button id="test">1111</button><span id="test1"></span><span id="test2"></span><br/>-->
</body>
</html>