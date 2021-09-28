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
%>

<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>	
		
<jsp:useBean id="lb" class ="jits.beans.LoginBean"
 scope="session"></jsp:useBean>	
 	
<jsp:useBean id="m" class="jits.beans.Member"
		scope="session"></jsp:useBean>
		
<!-- HEADER -->
	<jsp:getProperty property="headerAsHtml" name="sb" />
	<jsp:useBean id="message" class="jits.beans.MessageBean"
		scope="session"></jsp:useBean>

<a href="../jsp/LogInView.jsp"><%=message.getHeaderMessage() %></a>
 </div>
 </div>
 </header>
	

<!-- CONTENT -->
	<form action ="..\jsp\RegAppl.jsp" method="post">
		<main>
			<h4 class="�berschrift"><%=message.getInfoMessage() %></h4>
			<h4 class="�berschrift"><%=message.getActionMessage() %></h4><br><br>
			<table class="registrieren">
				<tr><td><h4 class="beschreibung1">Vorname: </h4></td><td><input Type ="text" name="vorname" value = "<%=member.getVorname()%>"></td>
				<tr><td><h4 class="beschreibung1">Nachname: </h4></td><td><input Type ="text" name="nachname" value = "<%=member.getNachname()%>"></td>
				<tr><td><h4 class="beschreibung1">Stadt: </h4></td><td><input Type ="text" name="stadt" value = "<%=member.getStadt()%>"></td>
				<tr><td><h4 class="beschreibung1">Strasse: </h4></td><td><input Type ="text" name="strasse" value = "<%=member.getStrasse()%>"></td></tr>
				<tr><td><h4 class="beschreibung1">Hausnummer: </h4></td><td><input Type ="text" name="nr" value = "<%=member.getNr()%>"></td></tr>
				<tr><td><h4 class="beschreibung1">Alter: </h4></td><td><input Type ="text" name="alter" value = "<%=member.getAlter()%>"></td></tr>
				<tr><td><h4 class="beschreibung1">Passwort: </h4></td><td><input Type ="password" name="passwort" value = ""></td></tr>
				<tr><td><h4 class="beschreibung1">Email:</h4> </td><td><input Type ="text" name="email" value = "<%=member.getEmail()%>"></td></tr>
				<tr><td><h4 class="beschreibung1">Handynummer:</h4> </td><td><input Type ="text" name="handynummer" value = "<%=member.getHandynummer()%>"></td></tr>
				<tr><td></td><td><input class="anmelden" Type ="submit" name="register" value="Registrieren"></td>
				<tr><td></td><td><input class="anmelden" Type ="submit" name="login" value="Einloggen"></td>
			</table>
		</main>
	</form>
<br><br>

<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
		
</body>
</html>