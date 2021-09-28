<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import ="jits.beans.MessageBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="../css/index.css">
<link rel= "stylsheet" type="text/css" href="../css/pakete.css">
<title>Paket3 | Netflix &amp Chill</title>
</head>
<body>
<jsp:useBean id="sb" class="jits.beans.StartseiteBean"
		scope="session"></jsp:useBean>
	
	<!-- HEADER -->
		<!-- HEADER -->
<jsp:getProperty property="headerAsHtml" name="sb" />
<jsp:useBean id="message" class="jits.beans.MessageBean"
		scope="session"></jsp:useBean>

<a href="../jsp/LogInView.jsp"><%=message.getHeaderMessage() %></a>
 </div>
 </div>
 </header>


	<!-- CONTENT -->
		
		<br> <br>
	<main class="main">
			<div class="content">
			<h2>Paket Netflix &amp Chill</h2> <br> <br>
			<ul class="produkte">
				<li>
					<div class="produkt">
						<img class="produkt-image" src="../IMG/Paket3.jpg" alt ="pakete"/>
					<div class="produkt-name">
					<a href="produkt.html">Netflix &amp Chill </a>
					</div>
					<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">15,00 Euro</div>
					<button class="btn btn-primary shop-item-button" type="button">ADD TO CART</button>
					</div>
			</ul>
			</div>
		<h4 class="beschreibung">Beschreibung</h4>
		<p>Inhalt: <br><br>
		1x Coca Cola 1L<br>
		1x Fanta 1L<br>
		1x Popcorn -Süß <br>
		1x Popcorn - Gesalzen<br>
		1x Chipsfrisch - Ungarisch<br>
		1x Haribo - Goldbären<br>
		1x Snack Mix - 8 Sorten
		</p>
		
		<br><br><br><br><br><br>
		<h2>Ähnliche Produkte</h2>
		<div class= line>
			<div><a href="Paket1View.jsp"> <img class="myLine" src="../IMG/Paket1.jpg" height="300x" width="auto"></a>
			<div class="myLine2">
					<a href="Paket1View.jsp">Mäelsabend</a>
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">48,00 Euro</div>
				</div>
				</div>
				
			<div><a href="Paket2View.jsp"> <img class="myLine" src="../IMG/Paket2.jpg" height="300x" width="auto"></a>
			<div class="myLine2">
					<a href="Paket2View.jsp">Männerabend</a>
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">61,00 Euro</div>
				</div>
				</div>
				
			<div><a href="Paket4View.jsp"><img class="myLine" src="../IMG/Paket4.jpg" height="300px" width="auto"></a>
			<div class="myLine2">
					<a href="Paket4View.jsp">Partypaket</a>
			<div class="produkt-marke">Pakete</div>
					<div class="produkt-preis">96,00 Euro</div>
				</div>
				</div>
				
		</div>
	</main>
	
		
		
<!-- FOOTER -->
		<jsp:getProperty property="startFooterAsHtml" name="sb" />

</body>
</html>