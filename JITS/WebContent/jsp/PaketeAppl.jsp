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
	
	String paket1 = request.getParameter("paket1");
	if (paket1 == null)
		paket1 = "";
	String paket2 = request.getParameter("paket2");
	if (paket2 == null)
		paket2 = "";
	String paket3 = request.getParameter("paket3");
	if (paket3 == null)
		paket3 = "";
	String paket4 = request.getParameter("paket4");
	if (paket4 == null)
		paket4 = "";
	
	
	if (paket1.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(37, lb.getEmail());
		response.sendRedirect("./PaketeView.jsp");
	}
	else if (paket2.equals("in den Warenkorb")) {
	 warenkorb.insertArtikel(38, lb.getEmail());
	 response.sendRedirect("./PaketeView.jsp");
	}
	
	else if(paket3.equals("in den Warenkorb")){
		warenkorb.insertArtikel(39, lb.getEmail());
		response.sendRedirect("./PaketeView.jsp");
	
}else if(paket4.equals("in den Warenkorb")){
	warenkorb.insertArtikel(40, lb.getEmail());
	response.sendRedirect("./PaketeView.jsp");
}else{
	response.sendRedirect("./LogInView.jsp");
}
	
	
	
	
	%>
</body>
</html>