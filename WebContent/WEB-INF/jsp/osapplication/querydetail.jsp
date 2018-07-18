<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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

<table border="1" cellpadding="12" cellspacing="0" align="center"  style="text-align:center" >
		<caption style="height:35px;font-weight:bold; font-size:125%">办公用品申请表</caption>
		<tr>
			<td >部门名称</td>
			<td>${requestScope.oSApplication1.departmentName}</td>
			<td>申请时间</td>
			<td>${requestScope.oSApplication1.applicationTime}</td>
		</tr>
		<tr>
			<td>申请人姓名</td>
			<td>${requestScope.oSApplication1.userName}</td>
			<td>申请事由</td>
			<td>${requestScope.oSApplication1.reason}</td>
		</tr>
		<tr>
			<td rowspan="6">申请物品</td>
			<td>名称</td>
			<td>规格</td>
			<td>数量</td>
		</tr>
		<c:forEach items="${ requestScope.oSApplication1.goods}" var="goods">
		<tr>
			<td>${goods.goodsName}</td>
			<td>${goods.goodsSize}</td>
			<td>${goods.goodsNum}</td>
		</tr>
		</c:forEach>
		
		
		<tr>
			<td colspan="2" align="center">申请总金额</td>
			<td colspan="3">${requestScope.oSApplication1.totalmoney}</td>
		</tr>
		
		<tr>
			<td  align="center">主管审批意见</td>
			<td colspan="3">${requestScope.oSApplication1.directorOpnion}</td>
		</tr>
		<tr>
			<td  align="center">经理审批意见</td>
			<td colspan="3">${requestScope.oSApplication1.managerOpnion}</td>
		</tr>
	</table>
</body>
</html>