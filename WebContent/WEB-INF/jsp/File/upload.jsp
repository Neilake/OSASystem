<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
	<title>kindeditor</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/js/kindeditor-4.1.11/themes/default/default.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath }/js/kindeditor-4.1.11/plugins/code/prettify.css" />
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
	<div style="margin-left:270px;">
		<form name="test" action="${pageContext.request.contextPath }/File/upload.do" method="post" enctype="multipart/form-data">
		<span style="font-size:50px;color:#000;font-weight:bold;font-family:fzshuti">感谢您使用领携办公系统上传文件</span>
		<br/><br/>
			<div  style="margin-padding:100px;width:748px;height:430px; background-image:url(${pageContext.request.contextPath }/images/zcwj.jpg;)">
				<!-- <input  type="textare" style="width:748px;height:430px;"/> -->
			</div>
			<br/>
			<input type="file" name="pfile" value="附件"/><br/>
			
			<div>
				<input style="margin-left:550px; background-image:url(${pageContext.request.contextPath }/images/anniu.jpg;);width:200px;height:50px; font-size:25px; font-family:黑体;font-weight:bold;" type="submit" value="上  传"/>
			</div>
			
    	</form>
	</div>
	

</body>
</html>