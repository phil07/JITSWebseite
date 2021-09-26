<%@page import="java.sql.SQLException"%>
 <%@page import="jits.beans.Warenkorb" %>
 <%@page import="jits.beans.WarenkorbBean" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="kb" class="jits.beans.WarenkorbBean"
		scope="session" />
		
<%
	WarenkorbBean warenkorb = (WarenkorbBean) session.getAttribute("warenkorb");
if(warenkorb == null){
	warenkorb = new WarenkorbBean();
	session.setAttribute("warenkorb", warenkorb);
}



	String weitereinkaufen = request.getParameter("weitereinkaufen");
	if (weitereinkaufen == null) weitereinkaufen = "";
	
	String jetztkaufen = request.getParameter("jetztkaufen");
	if (jetztkaufen == null) jetztkaufen = "";
	
	String loeschen = request.getParameter("loeschen");
	if(loeschen == null) loeschen = "";
		
		
		
		
		

		if (weitereinkaufen.equals("Weiter Einkaufen")) {

			response.sendRedirect("./HomeView.jsp");
		}else if (loeschen.equals("Warenkorb Loeschen")) {
		    
			kb.deleteWarenkorb();
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
