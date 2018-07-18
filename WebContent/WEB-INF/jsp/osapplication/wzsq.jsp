<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

  		 
  input {
  	outline:0;border:0;
  }


</style>
<script>
window.onload = function() {  
	var show = document.getElementById("time");  
	setInterval(function() {   
	var time = new Date();   // 程序计时的月从0开始取值后+1   
	var m = time.getMonth() + 1;   
	var t = time.getFullYear() + "-" + m + "-"     
	+ time.getDate() + " " + time.getHours() + ":"     
	+ time.getMinutes() + ":" + time.getSeconds();   
	show.innerHTML = t;  
	}, 1000); 
	};

</script>
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

	<section id="container">
		<div class="zerogrid">
			<div class="wrap-container clearfix">
				<div id="main-content">
					<div class="wrap-content">
						<article>
							
							<div class="art-content">
							<style type="text/css">							
							input {
								outline:0;border:0;
  }</style>
	



<script>
window.onload = function() {  
	var show = document.getElementById("time");  
	setInterval(function() {   
	var time = new Date();   // 程序计时的月从0开始取值后+1   
	var m = time.getMonth() + 1;   
	var t = time.getFullYear() + "-" + m + "-"     
	+ time.getDate() + " " + time.getHours() + ":"     
	+ time.getMinutes() + ":" + time.getSeconds();   
	show.innerHTML = t;  
	}, 1000); 
	};

</script>
</head>
<body >
<form action="${pageContext.request.contextPath }/osa/addosapplication.do" method="post">
	
	<table border="1" cellpadding="12" cellspacing="0" align="center"  style="text-align:center">
		<caption style="height:35px;font-weight:bold; font-size:125%">办公用品申请表</caption>
		<tr>
			<td >部门名称</td>
			<td><input  type="text" name="departmentName"/></td>
			<td>申请时间</td>
			<td id="time"></td>
		</tr>
		<tr>
			<td>申请人姓名</td>
			<td><input type="text" name="userName" /></td>
			<td>申请事由</td>
			<td><input type="text" name="reason" /></td>
		</tr>
		<tr>
			<td rowspan="6">申请物品</td>
			<td>名称</td>
			<td>规格</td>
			<td>数量</td>
		</tr>
		<tr>
			<td><input type="text" name="goodsName"/></td>
			<td><input type="text" name="goodsSize"/></td>
			<td><input type="text" name="goodsNum"/></td>
		</tr>
		<tr>
			<td><input type="text" name="goodsName"/></td>
			<td><input type="text" name="goodsSize"/></td>
			<td><input type="text" name="goodsNum"/></td>
		</tr>
		<tr>
			<td><input type="text" name="goodsName"/></td>
			<td><input type="text" name="goodsSize"/></td>
			<td><input type="text" name="goodsNum"/></td>
		</tr>
		<tr>
			<td><input type="text" name="goodsName"/></td>
			<td><input type="text" name="goodsSize"/></td>
			<td><input type="text" name="goodsNum"/></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">申请总金额</td>
			<td colspan="3"><input type="text" name="totalmoney"/></td>
		</tr>
		
		<tr>
			<td  align="center">主管审批意见</td>
			<td colspan="3" id="director_opinion"></td>
		</tr>
		<tr>
			<td  align="center">经理审批意见</td>
			<td colspan="3" id="manager_opinion"></td>
		</tr>
		

		
		
		
	</table>
	<div style="position: absolute;right: 500px;"><input type="submit" value="提交" /></div>
	
</form>
							</div>
						</article>
					</div>
				</div>
			</div>
		</div>
	</section>
	
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

<script type="text/javascript">
    $(function() {
		if ($.browser.msie && $.browser.version.substr(0,1)<7)
		{
		$('li').has('ul').mouseover(function(){
			$(this).children('ul').css('visibility','visible');
			}).mouseout(function(){
			$(this).children('ul').css('visibility','hidden');
			})
		}

		/* Mobile */
		$("#menu-trigger").on("click", function(){
			$("#menu").slideToggle();
		});

		// iPad
		var isiPad = navigator.userAgent.match(/iPad/i) != null;
		if (isiPad) $('#menu ul').addClass('no-transition');      
    });          
</script>


</div>
</body></html>