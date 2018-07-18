<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/dept.js"></script>

<title>ShowAllDept</title>
</head>
<body>
	<table border="1" align="center" cellspacing="0">
		<caption style="font-size: 30px">所有部门</caption>
		<tr align="center">
			<td width="80px">部门编号</td>
			<td width="80px">部门名称</td>
			<td width="80px"><a>操作</a></td>
		</tr>
		<c:forEach items="${dept}" var="dept">

			<form action="${pageContext.request.contextPath }/admin/dept_update.do" method="post">
				<tr align="center">
					<td width="80px">${dept.dept_id }</td>
					<td width="120px"><input type="text"style="width: 80px; text-align: center; border: 0px; background: none;"
						value="${dept.dept_name }"></td>
					<td width="120px">
					
					<input type="hidden" name=dept_id value="${dept.dept_id}">
					<input type="submit" style="border:none;" value="提交"/>
					
					<a class="delete">删除</a> 
					<input type="hidden"  value="${dept.dept_id }"></td>
				</tr>
			</form>
			
		</c:forEach>

	</table>

</body>
</html>