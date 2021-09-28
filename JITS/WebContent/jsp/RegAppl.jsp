<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="jits.beans.Member" %>
    <%@page import="jits.beans.MessageBean" %>
    <%@page import="java.sql.SQLException" %>
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
 MessageBean message = (MessageBean) session.getAttribute("message");
 if(message == null){
	 message = new MessageBean();
	 session.setAttribute("message", message);
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
String login = request.getParameter("login");
if(login == null) login = "";
String comeFrom = request.getParameter("comeFrom");
if(comeFrom == null) comeFrom = "";
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
	try{
		boolean userAngelegt = member.insertMemberIfNotExist();
		if(userAngelegt) message.setRegistrationSuccessful(email);
		else message.setUserAlreadyExists(email);
	}catch(SQLException se){
		se.printStackTrace();
		message.setAnyError();
	}
	response.sendRedirect("./RegView.jsp");
}else if(login.equals("Einloggen")){
	message.setLoginWelcome();
	response.sendRedirect("./LogInView.jsp");
}else if(!comeFrom.equals("")){
	response.sendRedirect("./RegView.jsp");
}else{
	message.setRegistrierungWelcome();
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