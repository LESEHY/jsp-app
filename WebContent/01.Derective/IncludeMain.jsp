<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 외부 JSP 호출하기 -->
<%@ include file="IncludeTime.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include 지시어</title>
</head>
<body>
	<%
		// 오늘날짜 찍기
		// 내장객체 중 out : 출력객체
		out.println("오늘날짜출력: "+ today );
		out.println("<br>");
		out.println("오늘날짜출력: " + tomorrow);
	%>
</body>
</html>