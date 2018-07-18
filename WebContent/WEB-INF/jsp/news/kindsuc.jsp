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

<div style="margin-left:120px;">
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
	
		标题：${entity.fileName }<br />
		图片：<img src="${pageContext.request.contextPath }/${entity.fileUrl }" /><br />
		内容：${entity.content }<br />
			发布时间：${entity.time }<br />
				发布人：${entity.person }<br />
	
		 <form name="test" action="${pageContext.request.contextPath }/News/selectNewscheck.do" method="post" >
    <input type="hidden" value="${entity.uid }" name="nametwo">
    	<input type="submit" value="下一篇" />
    </form>
    </div>
    <script charset="utf-8" src="${pageContext.request.contextPath }/js/kindeditor-4.1.11/kindeditor-all.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath }/js/kindeditor-4.1.11/lang/zh-CN.js"></script>
	<script charset="utf-8" src="${pageContext.request.contextPath }/js/kindeditor-4.1.11/plugins/code/prettify.js"></script>
	<script>
		KindEditor.ready(function(K) {
			var editor1 = K.create('textarea[name="content"]', {
				cssPath : '${pageContext.request.contextPath }/js/kindeditor-4.1.11/plugins/code/prettify.css',
				uploadJson : '${pageContext.request.contextPath }/admin/kindeditor/upload_json.do',
				fileManagerJson : '${pageContext.request.contextPath }/admin/kindeditor/file_manager_json.do',
				allowFileManager : true,
			});
			prettyPrint();
		});
	</script>
		
<!--////////////////////////////////////Footer-->
<footer>
	<div class="zerogrid">
		<div class="wrap-footer">
			<div class="row">
				<div class="col-1-2">
					<div class="wrap-col">
						<div class="copy-right" style="text-align: center;padding-top: 100px;">
							<p>Copyright &copy; 2018来自凌霄一部worldhero组</p>
						</div>
					</div>
				</div>
				<div class="col-1-2">
					<div class="wrap-col">
						<div class="bottom-social t-right">
							<a href="#"><img src="${pageContext.request.contextPath}/images/facebook.png" title="facebook"/></a>
							<a href="#"><img src="${pageContext.request.contextPath}/images/twitter.png" title="twitter"/></a>
							<a href="#"><img src="${pageContext.request.contextPath}/images/google.png" title="google"/></a>
							<a href="#"><img src="${pageContext.request.contextPath}/images/pinterest.png" title="pinterest"/></a>
							<a href="#"><img src="${pageContext.request.contextPath}/images/instagram.png" title="instagram"/></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
</body>
</html>