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
	
	String cola = request.getParameter("cola");
	if (cola == null)
		cola = "";
	String light = request.getParameter("light");
	if (light == null)
		light = "";
	String mezzo = request.getParameter("mezzo");
	if (mezzo == null)
		mezzo = "";
	String sprite = request.getParameter("sprite");
	if (sprite == null)
		sprite = "";
	String fanta = request.getParameter("fanta");
	if(fanta == null) 
	fanta = "";
	String red = request.getParameter("red");
	if(red == null) 
	red = "";
	String black = request.getParameter("black");
	if(black == null) 
	black = "";
	String maracuja = request.getParameter("maracuja");
	if(maracuja == null) 
	maracuja = "";
	String kirsche = request.getParameter("kirsche");
	if(kirsche == null) 
	kirsche = "";
	String orange = request.getParameter("orange");
	if(orange == null) 
	orange = "";
	
	
	if (cola.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(13, lb.getEmail());
		response.sendRedirect("./SoftdrinksView.jsp");
	}
	else if (light.equals("in den Warenkorb")) {
	 warenkorb.insertArtikel(14, lb.getEmail());
	 response.sendRedirect("./SoftdrinksView.jsp");
	}
	
	else if(mezzo.equals("in den Warenkorb")){
		warenkorb.insertArtikel(15, lb.getEmail());
		response.sendRedirect("./SoftdrinksView.jsp");
	}
	
	else if (fanta.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(16, lb.getEmail());
		response.sendRedirect("./SoftdrinksView.jsp");
	}
	else if (sprite.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(17, lb.getEmail());
		response.sendRedirect("./SoftdrinksView.jsp");
	}
	
	else if (red.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(18, lb.getEmail());
		response.sendRedirect("./SoftdrinksView.jsp");
	}
	
	else if (black.equals("in den Warenkorb")) {
			warenkorb.insertArtikel(19, lb.getEmail());
			response.sendRedirect("./SoftdrinksView.jsp");
	
	}
	else if (maracuja.equals("in den Warenkorb")) {
			warenkorb.insertArtikel(20, lb.getEmail());
			response.sendRedirect("./SoftdrinksView.jsp");
	}
	else if (kirsche.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(21, lb.getEmail());
		response.sendRedirect("./SoftdrinksView.jsp");
}
	else if (orange.equals("in den Warenkorb")) {
	warenkorb.insertArtikel(22, lb.getEmail());
	response.sendRedirect("./SoftdrinksView.jsp");
	
}else{
	response.sendRedirect("./LogInView.jsp");
}
	
	
	
	
	%>
</body>
</html>