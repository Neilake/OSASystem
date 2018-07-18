<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/posit.js"></script>
</head>
<body>
	<table border="1" align="center" cellspacing="0">
		<caption style="font-size: 30px">所有职位</caption>
		<tr align="center">
			<td width="80px">职位编号</td>
			<td width="80px">职位名称</td>
			<td width="80px"><a>操作</a></td>
		</tr>
		<c:forEach items="${posit}" var="posit">

			<tr align="center">
				<td width="80px">${posit.posit_id}</td>
				<td width="120px"><input type="text"
					style="width: 80px; text-align: center; border: 0px; background: none;"
					value="${posit.posit_name }"></td>
				<td width="120px"><a onclick="deletes(${posit.posit_id })">编辑</a>&nbsp|
					<a class="delete">删除</a> <input type="hidden"
					value="${posit.posit_id }"></td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>