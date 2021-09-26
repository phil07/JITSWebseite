<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="jits.beans.Member"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="lb" class="jits.beans.LoginBean" scope="session" />
	<%
	Member member = (Member) session.getAttribute("member");
	if (member == null) {
		member = new Member();
		session.setAttribute("member", member);
	}
	String passwort = request.getParameter("passwort");
	String email = request.getParameter("email");
	String login = request.getParameter("login");
	if (login == null)
		login = "";
	String delete = request.getParameter("delete");
	if (delete == null)
		delete = "";
	
	
	if (login.equals("Einloggen")) {
		lb.setEmail(email);
		lb.setPasswort(passwort);
		session.setAttribute("member", member);
		boolean loginOk = lb.checkEmailPasswort();
		if (loginOk) {
			lb.setLoggedIn(true);
			response.sendRedirect("../jsp/HomeView.jsp");
		} else {
			lb.setLoggedIn(false);
			response.sendRedirect("../jsp/RegView.jsp");
		}
	}
	if (delete.equals("Loeschen")) {
		lb.setEmail(email);
		lb.setPasswort(passwort);
		boolean passwortOK = lb.checkEmailPasswort();
		if (passwortOK) {
			lb.deleteAccount();
			lb.setLoggedIn(false);
			response.sendRedirect("../jsp/RegView.jsp");
		} else {
			response.sendRedirect("../jsp/RegView.jsp");
		}
	}
	%>
</body>
</html>