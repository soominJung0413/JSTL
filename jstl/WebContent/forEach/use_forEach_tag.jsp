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
	<%
		HashMap<String,Object> mapData = new HashMap<>();
	mapData.put("name", "최범균");
	mapData.put("todaty", new Date());
	%>
	<c:set var="intArray" value="<%= new int[] {1,2,3,4,5,6} %>" />
	<c:set var="map" value="<%= mapData %>" />
	
	<h4>1부터 100까지의 홀수의 합</h4>
	<c:set var="sum" value="0" />
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum+1}" />	
	</c:forEach>
	결과 = ${sum}
	
	<hr />
	
	<h4>구구단: 4단</h4>
	<ul>
		<c:forEach var="i" begin="1" end="9">
			<li>4*${i} = ${4* i }</li>
		</c:forEach>
	</ul>
	
	<hr />
	
	<h4>int형 배열</h4>
	<c:forEach var="i" items="${intArray}" begin="2" end="4" varStatus="status">
		${status.index } - ${status.count} - [${i}] <br />
	</c:forEach>
	
	<hr />
	
	<h4>Map</h4>
	<c:forEach var="i" items="${map}">
		${i.key} = ${i.value} <br />
	</c:forEach>
</body>
</html>