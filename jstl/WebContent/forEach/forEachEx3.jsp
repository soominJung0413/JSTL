<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*, java.util.Map.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Map<String, String> map = new HashMap<>();
	map.put("key1", "value1");
	map.put("key2", "value2");
	map.put("key3", "value3");
	map.put("key4", "value4");
	request.setAttribute("myMap", map);
	%>
	
	<%
	Set<Entry<String, String>> entrys = map.entrySet();
	for(Entry<String,String> ent : entrys){
		out.println(ent.getKey() +" , " +ent.getValue());
	}
	%>
	<hr />
	
	<c:forEach var="entry" items="${myMap}">
		${entry.key}, ${entry.value} <br />
	</c:forEach>
</body>
</html>