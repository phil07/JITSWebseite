package jits.beans;

public class StartseiteBean {

	public StartseiteBean() {
	}

	// kopfzeile als Html
	
	public String getHeaderAsHtml() {
		String header = "";
		
		header += "<header class=\"header\">\n"
				+" <div class=\"brand\">\n"
				+"<input type='button' class='button1' value='&#9776' onclick='dropDown()'/>\n"
				+"<a href='../jsp/HomeView.jsp'>JITS</a>\n"
				+"<ul class='leiste' id='dropdown'>\n"
				+"<li>\n"
				+"					<a href=\"../jsp/HomeView.jsp\">Home</a>\n"
				+"				</li>\n"
				+"				<li>\n"
				+"					<a href=\"../jsp/AlkoholView.jsp\">Alkohol</a>\n"
				+"				</li>\n"
				+"				<li>\n" 
				+"					<a href=\"../jsp/BierView.jsp\">Bier </a>\n" 
				+"			</li>\n" 
				+"			<li>\n"
				+"			<a href=\"../jsp/SnacksView.jsp\">Snacks</a>\n"
				+"				</li>\n"
				+"				<li>\n" 
				+"					<a href=\"../jsp/SoftdrinksView.jsp\">Softdrinks</a>\n"
				+"				</li>\n"
				+"				<li>\n"
				+"					<a href=\"../jsp/PaketeView.jsp\">Pakete</a>\n"
				+"				</li>\n"
				+"				</ul>\n"
				+"</ul>\n"
				+"</div>\n"
				+ "<div>\n"
				+"<main class='main'><a href=\"../jsp/HomeView.jsp\"><img class='logo-image' src='../IMG/JITSLOGO.png' alt ='logo'/></a>\n" 
				+"	</div>\n" 
				+" <div class=\"header-links\">\n"
				+" 	<a href=\"../jsp/WarenkorbView.jsp\">Warenkorb</a>\n"
				+" <a href=\"../jsp/LogInView.jsp\">Sign In</a>\n"
				+"	</div>\n" 
				+ "</header>";
		

			
		return header;
	}
	
	//	header += "<header>\n"
	//		 += "<aside class=\"seitenliste\">\n"
	//		 += 	"<button class=\"seitenliste-schlieﬂen-button\" onclick=\"schlieﬂeMenue()\">X</button>\n"	
	//		 += 		"<ul>\n"
	//		 += 			"<li><a href=\"../jsp/HomeView.jsp\">Home</a></li>\n"
	//		 +=				 "<li><a href=\"../jsp/PreislisteView.jsp\">Preisliste</a></li>\n"
	//		 += 			"<li><a href=\"../jsp/KontaktView.jsp\">Kontakt</a></li>\n"
	//		 += 			"<li><a href=\"/jsp/RechtstexteView.jsp\">Rechtstexte</a></li>\n"
	//		 += 		"</ul>\n"
	//		 += "</aside>\n"
	//		 += "<div class=\"container\">\n"
	//		 += 	"<div class=\"navbar\">\n"
	//		 += "<nav>\n"
	//		 += "<ul>\n"
	//		 += "<li><a href=\"../jsp/LogInView.jsp\">Log In</a></li>\n"
	//		 += "<li><a href=\"Warenkorb.jsp\">Warenkorb</a></li>\n"
	//		 += "</ul>\n"
	//		 += "</nav>\n"
	//		 += "</div>\n"
	//		 += "</div>\n";
	//	
	//	return header;
	//}
 public String getLoginAsHtml(String email) {
			String html= "";
			
			html += "<tr><td><h4>Email:</h4> </td><td><input Type ='text' name='email' value = " + email +"></td></tr>"
					+"<tr><td><h4>Passwort: </h4></td><td><input Type ='password' name='passwort'></td></tr>"
					+"<tr><td></td><td><input class='anmelden' Type ='submit' name='login' value='Einloggen'></td>"
					+"<tr><td></td><td><input class='anmelden' Type ='submit' name='delete' value='Loeschen'></td>"
					+"<tr><td></td><td><a class='anmelden' href=''../jsp/RegView.jsp'><input type='button' value='Registrieren' /></a></td>";
 return html;
 }
 
 
 public String getLogoutAsHtml(String email) {
			String html= "";	
			html += "<tr><td><h4>Ihre Email:</h4> </td><td><input Type ='text' name='email' value = " + email +"></td></tr>"
					+"<tr><td></td><td><input class='anmelden' Type ='submit' name='ausloggen' value='ausloggen'></td>";
return html;

 }
	
	// fuﬂzeile als Html
	public String getStartFooterAsHtml() {
		String footer = "";
		
		footer +=" <footer class=\"footer\">\n"
				+ "<div>\n"
				+ " <a href=\"../jsp/ImpressumView.jsp\">Impressum</a>\n"
				+ "<div>\n"
				+ " <a href=\"../jsp/DatenschutzView.jsp\">Datenschutz</a>\n"
				+ "</footer>\n"
				+ "</div>"
				+ "</div>"
				+ "<h5>Copyright © 2021 JITS</h5>";
	return footer; 
		}


}