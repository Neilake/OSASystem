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
<div class="wrap-body">


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
<div style="margin-left:200px;">
	<form name="test" action="${pageContext.request.contextPath }/News/addNews.do" method="post" enctype="multipart/form-data">
		<span style="color:#000;">标题：</span><input type="text" name="uname" /><br />
		<span style="color:#000;">图片：	</span><input type="file" name="pfile" /><br />
	
		<span style="color:#000;">内容：</span><textarea  name="content" cols="100" rows="8" style="width:900px;height:500px;visibility:hidden;"/></textarea><br />
		<span style="color:#000;">上传人姓名：</span><input type="text" name="name" /><br />
		<input type="submit" value="上传" />
    </form>
   
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
				afterCreate : function() {
					var self = this;
					K.ctrl(document, 13, function() {
						self.sync();
						document.forms['test'].submit();
					});
					K.ctrl(self.edit.doc, 13, function() {
						self.sync();
						document.forms['test'].submit();
					});
				}
			});
			prettyPrint();
		});
	</script>
	</div>
		
<!--////////////////////////////////////Footer-->
		<footer>
		<div class="zerogrid">
			<div class="wrap-footer">
				<div class="row">
					<div class="col-1-2">
						<div class="wrap-col">
							<div class="copy-right" style=" background:#ddd;text-align: center;"></div>
						</div>
				
					<p style="text-align: center; font-size: 25px;">Copyright
						&copy; 2018来自凌霄一部worldhero组</p>
				</div>
			</div>
		</div>
		</footer>
</body>
</html>