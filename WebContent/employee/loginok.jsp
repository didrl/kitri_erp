<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/common.jsp" %>

<c:if test="${chk} != 0">

	<h3><b>로그인 실패</b></h3>

</c:if>
<center>
id : ${memberInfo.id }<br>
pass : ${memberInfo.password }
</center>
</body>
</html>