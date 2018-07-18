<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/user.js"></script>

<title>Insert title here</title>
<style type="text/css"></style>
<!-- <meta http-equiv="refresh" content="0">-->
</head> 

<body>

	<table border="1" align="center" height="120px" cellspacing="0">
		<caption style="font-size: 30px">所有用户</caption>
		<tr align="center">
			<td width="80px">用户ID</td>
			<td width="80px">用户名</td>
			<td width="40px">性别</td>
			<td width="100px">邮箱</td>
			<td width="80px">生日</td>
			<td width="100px">电话</td>
			<td width="120px">身份证号</td>
			<td width="160px">住址</td>
			<td width="80px">部门</td>
			<td width="80px">职位</td>
			<td width="80px"><a>操作</a></td>
		</tr>
		<c:forEach items="${users}" var="users">
			
			<tr align="center" >
				<td width="80px">${users.userid }</td>
				<td width="80px"><input type="text" style=" width:80px; text-align:center; border:0px;background:none;"  value="${users.username }"></td>
				<td width="40px"><input type="text" style=" width:40px; text-align:center; border:0px;background:none;"  value="${users.sex }"></td>
				<td width="120px"><input type="text" style="width:140px; text-align:center; border:0px;background:none;"  value="${users.emile }"></td>
				<td width="80px"><input type="text" style="  width:80px;text-align:center; border:0px;background:none;"  value="${users.birth }"></td>
				<td width="100px"><input type="text" style=" width:100px;text-align:center; border:0px;background:none;"  value="${users.tel }"></td>
				<td width="120px"><input type="text" style=" width:160px;text-align:center; border:0px;background:none;"  value="${users.cardid }"></td>
				<td width="160px"><input type="text" style=" width:160px;text-align:center; border:0px;background:none;"  value="${users.address }"></td>
				<td width="40px"><input type="text" style=" width:40px;text-align:center; border:0px;background:none;"  value="${users.dept_id }"></td>
				<td width="40px"><input type="text" style=" width:40px;text-align:center; border:0px;background:none;"  value="${users.posit_id}"></td>
				<td width="80px">
					<a onclick="deletes(${users.userid })">编辑</a><br>
					<a class="delete" >删除</a>
					<input type="hidden" value="${users.userid }">
				</td>
				
			</tr>
			
		</c:forEach>

	</table>

</body>

</html>

