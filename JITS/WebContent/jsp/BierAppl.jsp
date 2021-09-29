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
	

	String becks = request.getParameter("becks");
	if (becks == null)
		becks = "";
	String corona = request.getParameter("corona");
	if (corona == null)
		corona = "";
	String ureich = request.getParameter("ureich");
	if (ureich == null)
		ureich = "";
	
	
	if (becks.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(10, lb.getEmail());
		response.sendRedirect("./BierView.jsp");
	}
	else if (corona.equals("in den Warenkorb")) {
	 warenkorb.insertArtikel(11, lb.getEmail());
	 response.sendRedirect("./BierView.jsp");
	}
	
	else if(ureich.equals("in den Warenkorb")){
		warenkorb.insertArtikel(12, lb.getEmail());
		response.sendRedirect("./BierView.jsp");
	
}else{
	response.sendRedirect("./LogInView.jsp");
}
	
	
	
	
	%>
</body>
</html>