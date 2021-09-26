<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomeAppl</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>

	<%!
	public String denullify(String s) {
		if (s == null)
			return "";
		else
			return s;
	}%>

	<%
		String home = this.denullify(request.getParameter("home"));
		String preisliste = this.denullify(request.getParameter("preisliste"));
		String kontakt = this.denullify(request.getParameter("kontakt"));
		String logIn = this.denullify(request.getParameter("logIn"));
		String register = this.denullify(request.getParameter("register"));
		String wrenkorb = this.denullify(request.getParameter("warenkorb"));

		String datenschutz = this.denullify(request.getParameter("datenschutz"));
		String impressum = this.denullify(request.getParameter("impressum"));
		String agb = this.denullify(request.getParameter("agb"));
		
		String zstartseite = this.denullify(request.getParameter("zstartseite"));

		if (register.equals("Registrieren")) {
			response.sendRedirect("../jsp/RegView.jsp");
		}

		else if (logIn.equals("Log In")) {
			response.sendRedirect("../jsp/LogInView.jsp");
		}
		
		else if (wrenkorb.equals("Warenkorb")) {
			response.sendRedirect("../jsp/WarenkorbView.jsp");
		}

		else if (home.equals("Home")) {
			response.sendRedirect("../jsp/HomeView.jsp");
		}

		else if (preisliste.equals("Preisliste")) {
			response.sendRedirect("../jsp/PreislisteView.jsp");
		}

		else if (datenschutz.equals("Datenschutz")) {
			response.sendRedirect("../jsp/DatenschutzView.jsp");
		}

		else if (impressum.endsWith("Impressum")) {
			response.sendRedirect("../jsp/ImpressumView.jsp");
		}

		else if (kontakt.equals("Kontakt")) {
			response.sendRedirect("/jsp/KontaktView.jsp");
		}

		else {
			response.sendRedirect("../jsp/HomeView.jsp");
		}
	%>
</body>
</html>