<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	forEach의 varStatus 속성
		(javax.servlet.jsp.jstl.core.LoopTagStatus)
--%>
<%
	String[] arr ={"java","script","css","python","matrix","c++"};
request.setAttribute("arr", arr);
%>

<table class="table" border="1" style="border-collapse: collapse;">
	<tr>
		<th>index</th>
		<th>count</th>
		<th>item</th>
	</tr>
	<c:forEach var="item" items="${arr}" varStatus="status" begin="3">
		<tr>
			<td>${status.index }</td>
			<td>${status.count }</td>
			<td>${item }</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>