<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>manage</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/manage.css" />
<script language="JavaScript"
	src="${pageContext.request.contextPath }/js/manager.js"></script>
</head>

<body onload="getdates()" background="${pageContext.request.contextPath }/images/bg1.jpg; 
background-size: 100%;100%">
	<!--头部-->
	<div class="top">
		<div class="title">后台管理</div>
		<div class="date">
			当前用户：${admin.getAdmin_name()}&nbsp; 当前日期：<span id="date"></span>
		</div>

		${admin.getAdmin_name()} 欢迎您！ <a
			href="${pageContext.request.contextPath }/admin/exit.do">注销</a>
	</div>
	<!--中间部分-->
	<div class="middle">
		<div class="left">
			<ul>
				<li><a href="javascript:showMenu1()">员工管理&nbsp;<</a></li>
			</ul>
			<ul id="u1">
				<li><a
					href="${pageContext.request.contextPath }/user/usershow.do"
					target="content">查询所有员工</a></li>
				<li><a
					href="${pageContext.request.contextPath }/user/adduser.do"
					target="content">添加员工</a></li>

			</ul>
			<ul>
				<li><a href="javascript:showMenu2()">部门管理&nbsp;<</a></li>
			</ul>
			<ul id="u2">
				<li><a
					href="${pageContext.request.contextPath }/admin/ShowDept.do"
					target="content">查询所有部门</a></li>
				<li><a
					href="${pageContext.request.contextPath }/admin/returnDept.do"
					target="content">添加部门</a></li>
			</ul>
			<ul>
				<li><a href="javascript:showMenu4()">职位管理&nbsp;<</a></li>
			</ul>
			<ul id="u4">
				<li><a
					href="${pageContext.request.contextPath}/admin/ShowPosit.do"
					target="content">查询所有职位</a></li>
				<li><a
					href="${pageContext.request.contextPath}/admin/returnPosit.do"
					target="content">新增职位</a></li>
			</ul>
			
			<ul>
				<li><a href="javascript:showMenu3()">物资管理&nbsp;<</a></li>
			</ul>
			<ul id="u3">
				<li><a href="${pageContext.request.contextPath}/goods/showGoods.do"
					target="content">查询所有物品</a></li>
				<li><a href="${pageContext.request.contextPath}/goods/addGoods.do"
					target="content">新增物品</a></li>
					<li><a href="${pageContext.request.contextPath}/goods/showCate.do"
					target="content">查询所有类别</a></li>
				<li><a href="${pageContext.request.contextPath}/good/addCate.do"
					target="content">新增类别</a></li>
			</ul>
		</div>
		<div class="right">
			<iframe src="" name="content"> </iframe>
		</div>
	</div>
</body>

</html>
