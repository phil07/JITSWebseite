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
	

	String vodka = request.getParameter("vodka");
	if (vodka == null)
		vodka = "";
	String baily = request.getParameter("baily");
	if (baily == null)
		baily = "";
	String bombay = request.getParameter("bombay");
	if (bombay == null)
		bombay = "";
	String captain = request.getParameter("captain");
	if (captain == null)
		captain = "";
	String gorbatschow = request.getParameter("gorbatschow");
	if(gorbatschow == null) 
	gorbatschow = "";
	String gordon = request.getParameter("gordon");
	if(gordon == null) 
	gordon = "";
	String jack = request.getParameter("jack");
	if(jack == null) 
	jack = "";
	String sixty = request.getParameter("sixty");
	if(sixty == null) 
	sixty = "";
	String jaeger = request.getParameter("jaeger");
	if(jaeger == null) 
	jaeger = "";
	String jim = request.getParameter("jim");
	if(jim == null) 
	jim = "";
	String malibu = request.getParameter("malibu");
	if(malibu == null) 
	malibu = "";
	String sierra = request.getParameter("sierra");
	if(sierra == null) 
	sierra = "";
	String skyy = request.getParameter("skyy");
	if(skyy == null) 
	skyy = "";
	String jackcola = request.getParameter("jackcola");
	if(jackcola == null) 
	jackcola = "";
	
	
	if (vodka.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(33, lb.getEmail());
		response.sendRedirect("./AlkoholView.jsp");
	}
	else if (baily.equals("in den Warenkorb")) {
	 warenkorb.insertArtikel(34, lb.getEmail());
	 response.sendRedirect("./AlkoholView.jsp");
	}
	
	else if(bombay.equals("in den Warenkorb")){
		warenkorb.insertArtikel(35, lb.getEmail());
		response.sendRedirect("./AlkoholView.jsp");
	}
	
	else if (gorbatschow.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(29, lb.getEmail());
		response.sendRedirect("./AlkoholView.jsp");
	}
	else if (captain.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(36, lb.getEmail());
		response.sendRedirect("./AlkoholView.jsp");
	}
	
	else if (gordon.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(30, lb.getEmail());
		response.sendRedirect("./AlkoholView.jsp");
	}
	
	else if (jack.equals("in den Warenkorb")) {
			warenkorb.insertArtikel(31, lb.getEmail());
			response.sendRedirect("./AlkoholView.jsp");
	}
	else if (sixty.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(32, lb.getEmail());
		response.sendRedirect("./AlkoholView.jsp");
	}
	else if (jaeger.equals("in den Warenkorb")) {
			warenkorb.insertArtikel(26, lb.getEmail());
			response.sendRedirect("./AlkoholView.jsp");
	}
	else if (jim.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(27, lb.getEmail());
		response.sendRedirect("./AlkoholView.jsp");
}
	else if (malibu.equals("in den Warenkorb")) {
	warenkorb.insertArtikel(28, lb.getEmail());
	response.sendRedirect("./AlkoholView.jsp");
}
	else if (sierra.equals("in den Warenkorb")) {
	warenkorb.insertArtikel(29, lb.getEmail());
	response.sendRedirect("./AlkoholView.jsp");
}
	else if (skyy.equals("in den Warenkorb")) {
	warenkorb.insertArtikel(24, lb.getEmail());
	response.sendRedirect("./AlkoholView.jsp");
}
	else if (jackcola.equals("in den Warenkorb")) {
		warenkorb.insertArtikel(25, lb.getEmail());
		response.sendRedirect("./AlkoholView.jsp");
}else{
	response.sendRedirect("./LogInView.jsp");
}
	
	
	
	
	%>
</body>
</html>