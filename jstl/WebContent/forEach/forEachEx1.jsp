<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		c:forEach로 사용

		#attribute 306p
		
		var 
		items
		varStatus
		begin
		end
		step
	 --%>
	 
	 <c:forEach var="i" begin="1" end="3">
	 	${i } <br />
	 </c:forEach>
</body>
</html>