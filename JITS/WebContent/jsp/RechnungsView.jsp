<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="jits.beans.Member" %>
      <%@page import ="jits.beans.MessageBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<script type="text/javascript"src="../js/Home.js"></script>
<title>JITS Nachtlieferservice</title>

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
		<jsp:useBean id="warenkorb" class="jits.beans.WarenkorbBean"
		scope="session"></jsp:useBean>
		<jsp:useBean id="lb" class="jits.beans.LoginBean"
		scope="session"></jsp:useBean>
		
<form action="../jsp/HomeAppl.jsp" method="get">
<jsp:useBean id="m" class = "jits.beans.Member"></jsp:useBean>

<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />
<jsp:useBean id="message" class="jits.beans.MessageBean"
		scope="session"></jsp:useBean>
<a href="../jsp/WarenkorbView.jsp"><%=message.getWarenkorbMessage()%></a>
<a href="../jsp/LogInView.jsp"><%=message.getHeaderMessage() %></a>
 </div>
 </div>
 </header>


<!-- CONTENT -->
	
<h4>Vielen Dank für Deine Bestellung.
 Bitte halte Bargeld bei der Lieferung bereit!</h4><br>
 
 <h2>Deine Bestellung</h2>
	<table border="1">

		<tr>
			<th><h1>Produkt</h1></th>
			<th><h1>Preis</h1></th>
			<th><h1>Gesamt</h1></th>
		</tr>
		
		<%=warenkorb.getBestellungAsHTML(lb.getEmail()) %>
		
		
	</table>
 
<a href="../jsp/HomeView.jsp"><input type="button" value="Zurück zur Webseite" /></a>

<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />
</form>
</body>
</html>