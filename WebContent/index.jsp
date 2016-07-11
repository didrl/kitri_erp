<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>

<table width="300" height="300">
	<form action="${root}/employee/login.erp"></form>
	<tr>
	 	<td>아이디 <input type="text" name="id" value=""></td>
	</tr>
	<tr>
		<td>비빌번호 <input type="text" name="password" value=""></td>
	</tr>
	<tr>
		<td><input type="submit" value="로그인"></td> 
	</tr>
</table>
</center>
</body>
</html>