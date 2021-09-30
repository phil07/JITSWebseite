<%@page import="java.sql.SQLException"%>
 <%@page import="jits.beans.WarenkorbBean" %>
  <%@page import ="jits.beans.MessageBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="warenkorb" class="jits.beans.WarenkorbBean"
		scope="session" />
		
		<jsp:useBean id="lb" class="jits.beans.LoginBean" scope="session" />
<%
	String weitereinkaufen = request.getParameter("weitereinkaufen");
	if (weitereinkaufen == null) weitereinkaufen = "";
	
	String jetztkaufen = request.getParameter("jetztkaufen");
	if (jetztkaufen == null) jetztkaufen = "";
	
	String loeschen = request.getParameter("loeschen");
	if(loeschen == null) loeschen = "";
		
		
		
		
		
		if (weitereinkaufen.equals("Weiter Einkaufen")) {
			response.sendRedirect("./HomeView.jsp");
		}else if (loeschen.equals("Warenkorb Loeschen")) {  
			warenkorb.deleteWarenkorb(lb.getEmail());
			warenkorb.createWarenkorbTable(lb.getEmail());
			response.sendRedirect("./WarenkorbView.jsp");
		}else if (jetztkaufen.equals("Jetzt Kaufen")) {
			if(lb.isLoggedIn() == true){
					warenkorb.bestellen(lb.getEmail());
					warenkorb.deleteWarenkorb(lb.getEmail());
					warenkorb.createWarenkorbTable(lb.getEmail());
					response.sendRedirect("./RechnungsView.jsp");
			}else{
				response.sendRedirect("./LogInView.jsp");
			}
			}
			
	
 
	
	%>
		
		
		
</body>
</html>