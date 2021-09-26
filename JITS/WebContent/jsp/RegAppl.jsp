<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="jits.beans.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Member member = (Member) session.getAttribute("member");
if(member == null){
member = new Member();
session.setAttribute("member", member);
}
String vorname = request.getParameter("vorname");
String nachname = request.getParameter("nachname");
String stadt = request.getParameter("stadt");
String strasse = request.getParameter("strasse");
String nr = request.getParameter("nr");
String alter = request.getParameter("alter");
String passwort = request.getParameter("passwort");
String email = request.getParameter("email");
String handynummer = request.getParameter("handynummer");
String register = request.getParameter("register");
if(register == null) register = "";
if(register.equals("Registrieren")){
	member.setVorname(vorname);
	member.setNachname(nachname);
	member.setStadt(stadt);
	member.setStrasse(strasse);
	member.setNr(nr);
	member.setAlter(alter);
	member.setPasswort(passwort);
	member.setEmail(email);
	member.setHandynummer(handynummer);
	
	session.setAttribute("member", member);
	member.insertMemberIfNotExist();
	response.sendRedirect("./LogInView.jsp");
}else{
	response.sendRedirect("./RegView.jsp");
}
System.out.println(vorname);
System.out.println(nachname);
System.out.println(stadt);
System.out.println(strasse);		
System.out.println(nr);
System.out.println(alter);
System.out.println(passwort);
System.out.println(email);
System.out.println(handynummer);
%>
</body>
</html>