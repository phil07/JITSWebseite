<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="jits.beans.Member" %>
    <%@page import="jits.beans.LoginBean" %>
     <%@page import="jits.beans.MessageBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript"src="../js/Home.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
Member member = (Member) session.getAttribute("member"); 
if (member == null){
member = new Member();
session.setAttribute("member", member);
}

MessageBean message = (MessageBean) session.getAttribute("message");
if(message == null){
	message = new MessageBean();
	session.setAttribute("message", message);
}
%>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>	
		
<jsp:useBean id="lb" class ="jits.beans.LoginBean"
 scope="session"></jsp:useBean>	
 	
<jsp:useBean id="m" class="jits.beans.Member"
		scope="session"></jsp:useBean>
		
<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />

<!-- CONTENT -->
<form action ="..\jsp\RegAppl.jsp" method="post">
<main>
<h4><%=message.getInfoMessage() %></h4>
<h4><%=message.getActionMessage() %></h4>
<table class="registrieren">
<tr><td><h4>Vorname: </h4></td><td><input Type ="text" name="vorname" value = "<%=member.getVorname()%>"></td>
	<tr><td><h4>Nachname: </h4></td><td><input Type ="text" name="nachname" value = "<%=member.getNachname()%>"></td>
	<tr><td><h4>Stadt: </h4></td><td><input Type ="text" name="stadt" value = "<%=member.getStadt()%>"></td>
	<tr><td><h4>Strasse: </h4></td><td><input Type ="text" name="strasse" value = "<%=member.getStrasse()%>"></td></tr>
	<tr><td><h4>Hausnummer: </h4></td><td><input Type ="text" name="nr" value = "<%=member.getNr()%>"></td></tr>
	<tr><td><h4>Alter: </h4></td><td><input Type ="text" name="alter" value = "<%=member.getAlter()%>"></td></tr>
	<tr><td><h4>Passwort: </h4></td><td><input Type ="password" name="passwort" value = ""></td></tr>
	<tr><td><h4>Email:</h4> </td><td><input Type ="text" name="email" value = "<%=member.getEmail()%>"></td></tr>
	<tr><td><h4>Handynummer:</h4> </td><td><input Type ="text" name="handynummer" value = "<%=member.getHandynummer()%>"></td></tr>
	<tr><td></td><td><input class="anmelden" Type ="submit" name="register" value="Registrieren"></td>
	<tr><td></td><td><input class="anmelden" Type ="submit" name="login" value="Einloggen"></td>
</table>
</form>
<br><br><br><br><br><br>
</main>
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</body>
</html>