<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.javaex.dao.GuestBookDao"%>

<%
GuestBookDao guestBookDao = new GuestBookDao();

//파라미터 꺼내기!
int no = Integer.parseInt(request.getParameter("no"));
String pw = request.getParameter("pw");
String pwd = request.getParameter("pwd");


if(pw.equals(pwd)){
	int count = guestBookDao.guestDelete(no);
	response.sendRedirect("./addlist.jsp");
}else{
	response.sendRedirect("./addlist.jsp");
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


</body>
</html>