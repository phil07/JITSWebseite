<%@page import="org.postgresql.translation.messages_bg"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="jits.beans.Member"%>
<%@page import="java.sql.SQLException"%>
<%@page import="jits.beans.MessageBean"%>
<%@page import="jits.beans.WarenkorbBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="lb" class="jits.beans.LoginBean" scope="session" />
	<jsp:useBean id="message" class="jits.beans.MessageBean" scope="session" />
	<%
	WarenkorbBean warenkorb = (WarenkorbBean) session.getAttribute("warenkorb");
	if(warenkorb == null){
		warenkorb = new WarenkorbBean();
		session.setAttribute("warenkorb", warenkorb); 
	}
	

	String chips = request.getParameter("chips");
	if (chips == null)
		chips = "";
	String mix = request.getParameter("mix");
	if (mix == null)
		mix = "";
	String salzig = request.getParameter("salzig");
	if (salzig == null)
		salzig = "";
	String goldbaeren = request.getParameter("goldbaeren");
	if (goldbaeren == null)
		goldbaeren = "";
	String suess = request.getParameter("suess");
	if(suess == null) 
	suess = "";
	String schluempfe = request.getParameter("schluempfe");
	if(schluempfe == null) 
	schluempfe = "";
	String alpen = request.getParameter("alpen");
	if(alpen == null) 
	alpen = "";
	String hasel = request.getParameter("hasel");
	if(hasel == null) 
	hasel = "";
	String nicnac = request.getParameter("nicnac");
	if(nicnac == null) 
	nicnac = "";
	
	
	if (chips.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(1, lb.getEmail());
		response.sendRedirect("./SnacksView.jsp");
	}
	else if (mix.equals("in den Warenkorb")) {
	 warenkorb.insertArtikel(2, lb.getEmail());
	 response.sendRedirect("./SnacksView.jsp");
	}
	
	else if(salzig.equals("in den Warenkorb")){
		warenkorb.insertArtikel(3, lb.getEmail());
		response.sendRedirect("./SnacksView.jsp");
	}
	
	else if (suess.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(4, lb.getEmail());
		response.sendRedirect("./SnacksView.jsp");
	}
	
	else if (schluempfe.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(6, lb.getEmail());
		response.sendRedirect("./SnacksView.jsp");
	}
	else if (goldbaeren.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(5, lb.getEmail());
		response.sendRedirect("./SnacksView.jsp");
	}
	else if (alpen.equals("in den Warenkorb")) {
			warenkorb.insertArtikel(7, lb.getEmail());
			response.sendRedirect("./SnacksView.jsp");
	}
	else if (hasel.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(8, lb.getEmail());
		response.sendRedirect("./SnacksView.jsp");
	}
	else if (nicnac.equals("in den Warenkorb")) {
			warenkorb.insertArtikel(9, lb.getEmail());
			response.sendRedirect("./SnacksView.jsp");
	
}else{
	response.sendRedirect("./LogInView.jsp");
}
	
	
	
	
	%>
</body>
</html>