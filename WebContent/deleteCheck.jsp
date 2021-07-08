<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javaex.dao.GuestBookDao"%>

<%
GuestBookDao guestBookDao = new GuestBookDao();

//파라미터 꺼내기!
int no = Integer.parseInt(request.getParameter("no"));
String pwd = request.getParameter("pwd");



%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./delete.jsp" method="get">
<input type="hidden" name="no" value="<%=no%>">
<input type="hidden" name="pwd" value="<%=pwd%>">
비밀번호확인:<input type="password" name="pw" value="">
			 <button type="submit">확인</button>
</form>
</body>
</html>