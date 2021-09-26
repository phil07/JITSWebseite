<%@page import="java.sql.SQLException"%>
 <%@page import="jits.beans.Warenkorb" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WarenkorbAppl</title>
</head>
<body>

		<jsp:useBean id="kb" class="jits.beans.WarenkorbBean"
		scope="session" />
	<%!
	
	public String denullify(String s) {
		if (s == null)
			return "";
		else
			return s;
	}
	
	
	
	
	%>
	<%
		
		
		
		String weitereinkaufen = this.denullify(request.getParameter("weitereinkaufen"));
		String jetztkaufen = this.denullify(request.getParameter("jetztkaufen"));
		String warenkorb = this.denullify(request.getParameter("warenkorb"));
		
		

		if (weitereinkaufen.equals("Weiter Einkaufen")) {

			response.sendRedirect("./HomeView.jsp");
		}else if (warenkorb.equals("Warenkorb Loeschen")) {
		    
			kb.deleteWarenkorb();
			//kb.getHTMLFromAusgewaehlteWarenkorbProdukte();
			response.sendRedirect("./WarenkorbView.jsp");

		}
		
		else if (jetztkaufen.equals("Jetzt Kaufen")) {
			kb.bestellen();
			System.out.println(" Bestellung wurde aufgegeben ");
			response.sendRedirect("./RechnungsView.jsp");
			
		} 
 
	
	%>

</body>
</html>