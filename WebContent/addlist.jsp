<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@page import="com.javaex.dao.GuestBookDao"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="java.util.List"%>

<%

GuestBookDao guestBookDao = new GuestBookDao();
List<GuestBookVo> guestList = guestBookDao.getGuestList();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./add.jsp" method="get">
		<table border="1">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비빌번호</td>
				<td><input type="text" name="password" value=""></td>
			</tr>

			<tr>
				<td colspan="4"><input type="text" name="content" value=""
					style="width: 440px; height: 100px;"></td>
			</tr>

			<tr>
				<td><button type="submit">확인</button></td>
			</tr>

		</table>
	</form>
	<%
	for (int i = 0; i < guestList.size(); i++) {
	%>
	<br>
	<table border="1">
		<colgroup>
			<col style="width: 30px;">
			<col style="width: 90px;">
			<col style="width: 300px;">
			<col style="width: 60px;">
		</colgroup>
		<tr>
			<td><%=guestList.get(i).getNo()%></td>
			<td><%=guestList.get(i).getName()%></td>
			<td><%=guestList.get(i).getReg_date()%></td>
			<td><a href="./deleteCheck.jsp?no=<%= guestList.get(i).getNo() %>&pwd=<%= guestList.get(i).getPassword() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4" height="60"><%=guestList.get(i).getContent()%></td>
		</tr>
	</table>

	<%
	}
	%>


</body>
</html>