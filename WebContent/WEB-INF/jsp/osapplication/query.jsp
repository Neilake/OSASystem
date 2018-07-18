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


	
		<table border="1" cellpadding="12" cellspacing="0" align="center"
			style="text-align: center">
			<tr>
				<td>部门名称</td>
				<td>姓名</td>
				<td>申请事由</td>
				<td>申请时间</td>
				<td colspan="2">物资信息</td>
				<td>查看详情</td>
			</tr>
			<c:forEach items="${requestScope.osa}" var="osa">
			<form action="${pageContext.request.contextPath }/osa/querydetail.do">
				<tr>
					<td>${osa.departmentName}</td>
					<td>${osa.userName}</td>
					<td>${osa.reason}</td>
					<td>${osa.applicationTime}</td>
					<c:forEach items="${osa.goods}" var="goods">
						<td>${goods.goodsName}</td>
					</c:forEach>
					<td><input type="hidden" name="OSApplicationId" value="${osa.OSApplicationId}" /> 
						<input type="submit" value="查看" /></td>
				</tr>
			</form>
			</c:forEach>
		</table>
		



</body>
</html>